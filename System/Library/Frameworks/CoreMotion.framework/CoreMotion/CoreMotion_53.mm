void sub_19B74E3D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x19EAE76F0](v16, v15);
  _Unwind_Resume(a1);
}

uint64_t sub_19B74E400(uint64_t a1, CLConnectionMessage **a2)
{
  v2 = *(a1 + 40);
  if (*a2)
  {
    DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, *(a1 + 32));
  }

  else
  {
    DictionaryOfClasses = 0;
  }

  v4 = *(v2 + 16);

  return v4(v2, DictionaryOfClasses);
}

void sub_19B74E50C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12)
{
  if (a10)
  {
    sub_19B41FFEC(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B74E770(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v16 = *(v14 + 8);
  if (v16)
  {
    sub_19B41FFEC(v16);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B74E858(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x19EAE76F0](v16, v15);
  _Unwind_Resume(a1);
}

uint64_t sub_19B74EC78(uint64_t a1, const char *a2, uint64_t a3)
{
  keys[1] = *MEMORY[0x1E69E9840];
  result = objc_msgSend_isMotionActivityEntitled(CMMotionUtils, a2, a3);
  if ((result & 1) == 0)
  {
    values = *MEMORY[0x1E695E4D0];
    keys[0] = @"_kTCCAccessRequestOptionSyncCallback";
    if ((atomic_load_explicit(&qword_1ED71D738, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED71D738))
    {
      qword_1ED71D730 = CFDictionaryCreate(*MEMORY[0x1E695E480], keys, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      __cxa_guard_release(&qword_1ED71D738);
    }

    v4 = *MEMORY[0x1E69D55A8];
    result = TCCAccessRequest();
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_19B74F06C(uint64_t a1)
{
  keys[1] = *MEMORY[0x1E69E9840];
  values = *MEMORY[0x1E695E4D0];
  keys[0] = @"_kTCCAccessRequestOptionSyncCallback";
  if ((atomic_load_explicit(&qword_1ED71D758, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED71D758))
  {
    qword_1ED71D750 = CFDictionaryCreate(*MEMORY[0x1E695E480], keys, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    __cxa_guard_release(&qword_1ED71D758);
  }

  if ((byte_1ED71D708 & 1) == 0)
  {
    v2 = *MEMORY[0x1E69D55A8];
    TCCAccessRequest();
    byte_1ED71D708 = 1;
  }

  result = (*(*(a1 + 32) + 16))();
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19B74F2DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a13)
  {
    sub_19B41FFEC(a13);
  }

  sub_19B41FFEC(v19);
  _Unwind_Resume(a1);
}

os_log_t sub_19B74FAB8()
{
  result = os_log_create("com.apple.locationd.Motion", "Fall");
  qword_1EAFE29B0 = result;
  return result;
}

void *sub_19B74FAE8(void *a1)
{
  *a1 = &unk_1F0E32908;
  v2 = a1[9];
  if (v2)
  {
    sub_19B41FFEC(v2);
  }

  v3 = a1[5];
  if (v3)
  {
    sub_19B41FFEC(v3);
  }

  return sub_19B674784(a1);
}

__CFString *sub_19B74FB58(int a1)
{
  if ((a1 - 1) > 9)
  {
    return @"unknown";
  }

  else
  {
    return *(&off_1E7535B00 + (a1 - 1));
  }
}

__CFString *sub_19B74FB80(unsigned int a1)
{
  if (a1 > 5)
  {
    return @"?";
  }

  else
  {
    return *(&off_1E7535B50 + a1);
  }
}

__CFString *sub_19B74FBA4(int a1)
{
  v1 = @"?";
  if (a1 == 1)
  {
    v1 = @"Disconnected";
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return @"Connected";
  }
}

__CFString *sub_19B74FBD0(unsigned int a1)
{
  if (a1 > 2)
  {
    return @"?";
  }

  else
  {
    return *(&off_1E7535B80 + a1);
  }
}

uint64_t sub_19B74FC3C()
{
  v6 = 0;
  v5 = 1;
  v0 = sub_19B7851B0();
  sub_19B788280(v0, &v6 + 1, &v6, &v5);
  if (v5 != 1)
  {
    return 5;
  }

  if (v6)
  {
    v1 = 2;
  }

  else
  {
    v1 = 4;
  }

  if (HIDWORD(v6))
  {
    result = 3;
  }

  else
  {
    result = v1;
  }

  if (HIDWORD(v6))
  {
    v4 = HIDWORD(v6) != 3 || v6 != 3;
    if (v6)
    {
      return v4;
    }

    else
    {
      return result;
    }
  }

  return result;
}

BOOL sub_19B74FCD0(uint64_t a1, char *a2)
{
  v38 = *MEMORY[0x1E69E9840];
  Current = CFRunLoopGetCurrent();
  sub_19B420D84();
  if (Current != *qword_1ED71C908)
  {
    if (qword_1ED71C830 != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E2A340);
    }

    v27 = off_1ED71C838;
    p_vtable = "";
    v8 = "CFRunLoopGetCurrent() == CLMotionCore::instance()->getMotionRunLoop()";
    if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_FAULT))
    {
      __p = 68289539;
      v34 = 2082;
      *v35 = "";
      *&v35[8] = 2082;
      *&v35[10] = "assert";
      v36 = 2081;
      v37 = "CFRunLoopGetCurrent() == CLMotionCore::instance()->getMotionRunLoop()";
      _os_log_impl(&dword_19B41C000, v27, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:[CLAccessoryNotifier] getConfig should be running on motion thread, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", &__p, 0x26u);
      if (qword_1ED71C830 != -1)
      {
        dispatch_once(&qword_1ED71C830, &unk_1F0E2A340);
      }
    }

    v28 = off_1ED71C838;
    if (os_signpost_enabled(off_1ED71C838))
    {
      __p = 68289539;
      v34 = 2082;
      *v35 = "";
      *&v35[8] = 2082;
      *&v35[10] = "assert";
      v36 = 2081;
      v37 = "CFRunLoopGetCurrent() == CLMotionCore::instance()->getMotionRunLoop()";
      _os_signpost_emit_with_name_impl(&dword_19B41C000, v28, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "[CLAccessoryNotifier] getConfig should be running on motion thread", "{msg%{public}.0s:[CLAccessoryNotifier] getConfig should be running on motion thread, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", &__p, 0x26u);
      if (qword_1ED71C830 != -1)
      {
        dispatch_once(&qword_1ED71C830, &unk_1F0E2A340);
      }
    }

    a2 = off_1ED71C838;
    if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_INFO))
    {
      __p = 68289539;
      v34 = 2082;
      *v35 = "";
      *&v35[8] = 2082;
      *&v35[10] = "assert";
      v36 = 2081;
      v37 = "CFRunLoopGetCurrent() == CLMotionCore::instance()->getMotionRunLoop()";
      _os_log_impl(&dword_19B41C000, a2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:[CLAccessoryNotifier] getConfig should be running on motion thread, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", &__p, 0x26u);
    }

    abort_report_np();
    goto LABEL_99;
  }

  v5 = *(sub_19B7851B0() + 32);
  if (v5 <= 8216)
  {
    if (v5 > 8210)
    {
      if (v5 == 8211)
      {
        v7 = 3;
        goto LABEL_31;
      }

      if (v5 == 8212)
      {
        goto LABEL_25;
      }

      if (v5 != 8215)
      {
        goto LABEL_72;
      }

      v7 = 6;
LABEL_31:
      *(a1 + 48) = v7;
      goto LABEL_32;
    }

    if (v5 == 8202)
    {
      goto LABEL_24;
    }

    if (v5 == 8206)
    {
      v7 = 1;
      goto LABEL_31;
    }

    v6 = 8210;
LABEL_22:
    if (v5 != v6)
    {
      goto LABEL_72;
    }

    v7 = 4;
    goto LABEL_31;
  }

  if (v5 <= 8222)
  {
    switch(v5)
    {
      case 8217:
        v7 = 7;
        break;
      case 8219:
        v7 = 8;
        break;
      case 8221:
        v7 = 9;
        break;
      default:
        goto LABEL_72;
    }

    goto LABEL_31;
  }

  if (v5 > 8230)
  {
    if (v5 == 8231)
    {
      v7 = 10;
      goto LABEL_31;
    }

    v6 = 8239;
    goto LABEL_22;
  }

  if (v5 == 8223)
  {
LABEL_24:
    v7 = 2;
    goto LABEL_31;
  }

  if (v5 == 8228)
  {
LABEL_25:
    v7 = 5;
    goto LABEL_31;
  }

LABEL_72:
  v23 = sub_19B7851B0();
  if ((sub_19B787CB8(v23) & 1) == 0)
  {
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E3B578);
    }

    v24 = qword_1ED71C7C8;
    if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_ERROR))
    {
      LODWORD(__p) = 67174657;
      HIDWORD(__p) = v5;
      _os_log_impl(&dword_19B41C000, v24, OS_LOG_TYPE_ERROR, "[CLAccessoryNotifier] Warning! The connected device %{private}d might not be supported", &__p, 8u);
    }

    v25 = sub_19B420058();
    if ((*(v25 + 160) & 0x80000000) == 0 || (*(v25 + 164) & 0x80000000) == 0 || (*(v25 + 168) & 0x80000000) == 0 || *(v25 + 152))
    {
      bzero(&__p, 0x65CuLL);
      if (qword_1ED71C7B8 != -1)
      {
        dispatch_once(&qword_1ED71C7B8, &unk_1F0E3B578);
      }

      v26 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "void CLAccessoryNotifier::refreshHardwareModel()", "CoreLocation: %s\n", v26);
      if (v26 != &__p)
      {
        free(v26);
      }
    }
  }

LABEL_32:
  *(a2 + 25) = *(a1 + 48);
  v8 = sub_19B43EE18(*(a1 + 32));
  if (v8)
  {
    if (!sub_19B795824(a2, v8, @"LocationID"))
    {
      sub_19B795824(a2, v8, @"SIDE");
    }

    sub_19B795BA8(v8, @"CFG#", &__p);
    if (v35[14] == 1)
    {
      v9 = v35[13] >= 0 ? &__p : __p;
      snprintf(a2 + 4, 0x40uLL, "%s", v9);
      if ((v35[14] & 1) != 0 && (v35[13] & 0x80000000) != 0)
      {
        operator delete(__p);
      }
    }

    sub_19B795BA8(v8, @"SerialNumber", &__p);
    if (v35[14] == 1)
    {
      v10 = v35[13] >= 0 ? &__p : __p;
      snprintf(a2 + 68, 0x20uLL, "%s", v10);
      if ((v35[14] & 1) != 0 && (v35[13] & 0x80000000) != 0)
      {
        operator delete(__p);
      }
    }

    p_vtable = CMDeviceOrientationManager.vtable;
    if (qword_1ED71C7B8 == -1)
    {
LABEL_50:
      v12 = qword_1ED71C7C8;
      if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_DEFAULT))
      {
        v13 = *(a2 + 25);
        v14 = *a2;
        LODWORD(__p) = 67240707;
        HIDWORD(__p) = v13;
        v34 = 1026;
        *v35 = v14;
        *&v35[4] = 2081;
        *&v35[6] = a2 + 68;
        _os_log_impl(&dword_19B41C000, v12, OS_LOG_TYPE_DEFAULT, "[CLAccessoryNotifier] getConfig,hardwareModel,%{public}d,side,%{public}d,SN,%{private}s", &__p, 0x18u);
      }

      v15 = sub_19B420058();
      if (*(v15 + 160) > 1 || *(v15 + 164) > 1 || *(v15 + 168) > 1 || *(v15 + 152))
      {
        bzero(&__p, 0x65CuLL);
        if (p_vtable[247] != -1)
        {
          dispatch_once(&qword_1ED71C7B8, &unk_1F0E3B578);
        }

        v29 = *(a2 + 25);
        v31 = *a2;
        v16 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "BOOL CLAccessoryNotifier::getConfig(Config *)", "CoreLocation: %s\n");
LABEL_69:
        if (v16 != &__p)
        {
          free(v16);
        }

        goto LABEL_71;
      }

      goto LABEL_71;
    }

LABEL_99:
    dispatch_once(&qword_1ED71C7B8, &unk_1F0E3B578);
    goto LABEL_50;
  }

  if (qword_1ED71C7B8 != -1)
  {
    dispatch_once(&qword_1ED71C7B8, &unk_1F0E3B578);
  }

  v17 = qword_1ED71C7C8;
  if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_ERROR))
  {
    v18 = *(a1 + 52);
    v19 = *(a1 + 56);
    LODWORD(__p) = 67240448;
    HIDWORD(__p) = v18;
    v34 = 1026;
    *v35 = v19;
    _os_log_impl(&dword_19B41C000, v17, OS_LOG_TYPE_ERROR, "[CLAccessoryNotifier] getConfig failed for usage pair (%{public}d, %{public}d). No valid service", &__p, 0xEu);
  }

  v20 = sub_19B420058();
  if ((*(v20 + 160) & 0x80000000) == 0 || (*(v20 + 164) & 0x80000000) == 0 || (*(v20 + 168) & 0x80000000) == 0 || *(v20 + 152))
  {
    bzero(&__p, 0x65CuLL);
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E3B578);
    }

    v30 = *(a1 + 52);
    v32 = *(a1 + 56);
    v16 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 0, "BOOL CLAccessoryNotifier::getConfig(Config *)", "CoreLocation: %s\n");
    goto LABEL_69;
  }

LABEL_71:
  result = v8 != 0;
  v22 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19B750604(uint64_t a1, int a2, unint64_t a3, unint64_t a4)
{
  v18 = *MEMORY[0x1E69E9840];
  if (qword_1ED71C7B8 != -1)
  {
    dispatch_once(&qword_1ED71C7B8, &unk_1F0E3B578);
  }

  v8 = qword_1ED71C7C8;
  if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_INFO))
  {
    *buf = 67240704;
    v13 = a2;
    v14 = 2050;
    v15 = a3;
    v16 = 2050;
    v17 = a4;
    _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_INFO, "[AccessoryNotifier] numberOfClientsChanged notification:%{public}d, from:%{public}zu, to:%{public}zu", buf, 0x1Cu);
  }

  v9 = sub_19B420058();
  if (*(v9 + 160) > 1 || *(v9 + 164) > 1 || *(v9 + 168) > 1 || *(v9 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E3B578);
    }

    v10 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLAccessoryNotifier::numberOfClientsChanged(int, size_t, size_t)", "CoreLocation: %s\n", v10);
    if (v10 != buf)
    {
      free(v10);
    }
  }

  if (a3 < a4)
  {
    *(a1 + 29) = 0;
  }

  v11 = *MEMORY[0x1E69E9840];
}

void sub_19B750848(uint64_t a1, int a2)
{
  v32[1] = *MEMORY[0x1E69E9840];
  if (a2 == 2)
  {
    sub_19B750AC4(a1);
    v3 = sub_19B7851B0();
    v18 = sub_19B786EF8(v3);
    if (v18)
    {
      v5 = objc_msgSend_dataWithBytes_length_(MEMORY[0x1E695DEF0], v4, &v18, 6);
      v6 = *(a1 + 32);
      v31 = @"BT_ADDR";
      v32[0] = v5;
      v8 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v7, v32, &v31, 1);
      sub_19B4438CC(v6, v8);
    }

    else
    {
      v9 = *(a1 + 32);

      *(v9 + 160) = 0;
    }

    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E3B578);
    }

    v10 = qword_1ED71C7C8;
    if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 52);
      v12 = *(a1 + 56);
      *buf = 67240705;
      v26 = v11;
      v27 = 1026;
      v28 = v12;
      v29 = 2049;
      v30 = v18;
      _os_log_impl(&dword_19B41C000, v10, OS_LOG_TYPE_DEFAULT, "[CLAccessoryNotifier] Usage pair (%{public}d, %{public}d) received kActiveDeviceUpdated. Update BT address to %{private}llx", buf, 0x18u);
    }

    v13 = sub_19B420058();
    if (*(v13 + 160) > 1 || *(v13 + 164) > 1 || *(v13 + 168) > 1 || *(v13 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7B8 != -1)
      {
        dispatch_once(&qword_1ED71C7B8, &unk_1F0E3B578);
      }

      v14 = *(a1 + 52);
      v15 = *(a1 + 56);
      v19 = 67240705;
      v20 = v14;
      v21 = 1026;
      v22 = v15;
      v23 = 2049;
      v24 = v18;
      v16 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLAccessoryNotifier::onAudioAccessoryInterfaceCallback(CLAudioAccessoryInterface::Event)", "CoreLocation: %s\n", v16);
      if (v16 != buf)
      {
        free(v16);
      }
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

uint64_t sub_19B750AC4(uint64_t result)
{
  if (!*(result + 32))
  {
    v1 = result;
    sub_19B7851B0();
    v2 = *(v1 + 52);
    v3 = sub_19B42CAAC();
    sub_19B42C428(v3);
  }

  return result;
}

BOOL sub_19B750BBC(uint64_t a1, uint8_t a2, const void *a3, size_t a4)
{
  v29 = *MEMORY[0x1E69E9840];
  if (a4 - 224 <= 0xFFFFFFFFFFFFFF23)
  {
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E3B578);
    }

    v5 = qword_1ED71C7C8;
    if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v28 = a4;
      _os_log_impl(&dword_19B41C000, v5, OS_LOG_TYPE_ERROR, "[AccessoryNotifier] setCustomProperty error. Size %zu not allowed.", buf, 0xCu);
    }

    v6 = sub_19B420058();
    if ((*(v6 + 160) & 0x80000000) != 0 && (*(v6 + 164) & 0x80000000) != 0 && (*(v6 + 168) & 0x80000000) != 0 && !*(v6 + 152))
    {
      goto LABEL_42;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E3B578);
    }

    *report = 134217984;
    v26 = a4;
LABEL_40:
    v19 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 0, "BOOL CLAccessoryNotifier::setCustomProperty(uint8_t, const uint8_t *, size_t)", "CoreLocation: %s\n", v19);
    if (v19 != buf)
    {
      free(v19);
    }

LABEL_42:
    v12 = 0;
    goto LABEL_43;
  }

  if (!sub_19B43EE18(*(a1 + 32)))
  {
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E3B578);
    }

    v17 = qword_1ED71C7C8;
    if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v17, OS_LOG_TYPE_ERROR, "[AccessoryNotifier] setCustomProperty error. No service ref.", buf, 2u);
    }

    v18 = sub_19B420058();
    if ((*(v18 + 160) & 0x80000000) != 0 && (*(v18 + 164) & 0x80000000) != 0 && (*(v18 + 168) & 0x80000000) != 0 && !*(v18 + 152))
    {
      goto LABEL_42;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E3B578);
    }

    *report = 0;
    goto LABEL_40;
  }

  report[0] = -1;
  report[1] = a2;
  memcpy(&report[2], a3, a4);
  v10 = 5;
  while (1)
  {
    v11 = sub_19B782F88(*(a1 + 32), report, a4 + 2);
    v12 = v11 == 0;
    if (!v11)
    {
      break;
    }

    v13 = v11;
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E3B578);
    }

    v14 = qword_1ED71C7C8;
    if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_ERROR))
    {
      *buf = 67240192;
      LODWORD(v28) = v13;
      _os_log_impl(&dword_19B41C000, v14, OS_LOG_TYPE_ERROR, "[AccessoryNotifier] setCustomProperty failed - %{public}x", buf, 8u);
    }

    v15 = sub_19B420058();
    if ((*(v15 + 160) & 0x80000000) == 0 || (*(v15 + 164) & 0x80000000) == 0 || (*(v15 + 168) & 0x80000000) == 0 || *(v15 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7B8 != -1)
      {
        dispatch_once(&qword_1ED71C7B8, &unk_1F0E3B578);
      }

      v16 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "BOOL CLAccessoryNotifier::setCustomProperty(uint8_t, const uint8_t *, size_t)", "CoreLocation: %s\n", v16);
      if (v16 != buf)
      {
        free(v16);
      }
    }

    if (--v10 <= 1)
    {
      goto LABEL_43;
    }
  }

  if (qword_1ED71C7B8 != -1)
  {
    dispatch_once(&qword_1ED71C7B8, &unk_1F0E3B578);
  }

  v22 = qword_1ED71C7C8;
  if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v22, OS_LOG_TYPE_DEFAULT, "[AccessoryNotifier] setCustomProperty succeeded.", buf, 2u);
  }

  v23 = sub_19B420058();
  if (*(v23 + 160) > 1 || *(v23 + 164) > 1 || *(v23 + 168) > 1 || *(v23 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E3B578);
    }

    v24 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "BOOL CLAccessoryNotifier::setCustomProperty(uint8_t, const uint8_t *, size_t)", "CoreLocation: %s\n", v24);
    if (v24 != buf)
    {
      free(v24);
    }
  }

LABEL_43:
  v20 = *MEMORY[0x1E69E9840];
  return v12;
}

void sub_19B7511D4(uint64_t a1)
{
  v40 = *MEMORY[0x1E69E9840];
  v27 = 0;
  v2 = sub_19B7851B0();
  v3 = sub_19B786EF8(v2);
  v26 = v3;
  v4 = sub_19B43EE18(*(a1 + 32));
  if (!v4 || (v5 = v4, !sub_19B7960E8(&v27, v4, @"BT_ADDR", 6uLL)))
  {
LABEL_30:
    *(a1 + 48) = 0;
    *(a1 + 29) = 0;
    goto LABEL_31;
  }

  if (!v3 || v27 == v3)
  {
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E3B578);
    }

    v18 = qword_1ED71C7C8;
    if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_DEFAULT))
    {
      v19 = *(a1 + 52);
      v20 = *(a1 + 56);
      *buf = 134284289;
      *v36 = v5;
      *&v36[8] = 1026;
      *v37 = v19;
      *&v37[4] = 1026;
      *&v37[6] = v20;
      v38 = 2049;
      v39 = v27;
      _os_log_impl(&dword_19B41C000, v18, OS_LOG_TYPE_DEFAULT, "[AccessoryNotifier] onNewHidService. New service %{private}p for usage pair (%{public}d, %{public}d) with BT address %{private}llx", buf, 0x22u);
    }

    v21 = sub_19B420058();
    if (*(v21 + 160) > 1 || *(v21 + 164) > 1 || *(v21 + 168) > 1 || *(v21 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7B8 != -1)
      {
        dispatch_once(&qword_1ED71C7B8, &unk_1F0E3B578);
      }

      v22 = *(a1 + 52);
      v23 = *(a1 + 56);
      v30 = 134284289;
      *v31 = v5;
      *&v31[8] = 1026;
      *v32 = v22;
      *&v32[4] = 1026;
      *&v32[6] = v23;
      v33 = 2049;
      v34 = v27;
      v24 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "static void CLAccessoryNotifier::onNewHidService(void *)", "CoreLocation: %s\n", v24);
      if (v24 != buf)
      {
        free(v24);
      }
    }

    (*(*a1 + 48))(a1);
    (*(*a1 + 56))(a1);
    goto LABEL_30;
  }

  if (qword_1ED71C7B8 != -1)
  {
    dispatch_once(&qword_1ED71C7B8, &unk_1F0E3B578);
  }

  v6 = qword_1ED71C7C8;
  if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_ERROR))
  {
    v7 = *(a1 + 52);
    v8 = *(a1 + 56);
    *buf = 67240961;
    *v36 = v7;
    *&v36[4] = 1026;
    *&v36[6] = v8;
    *v37 = 2049;
    *&v37[2] = v3;
    v38 = 2049;
    v39 = v27;
    _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_ERROR, "[AccessoryNotifier] onNewHidService error! BT Address mismatched for usage pair (%{public}d, %{public}d). Expecting %{private}llx, got %{private}llx", buf, 0x22u);
  }

  v9 = sub_19B420058();
  if ((*(v9 + 160) & 0x80000000) == 0 || (*(v9 + 164) & 0x80000000) == 0 || (*(v9 + 168) & 0x80000000) == 0 || *(v9 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E3B578);
    }

    v11 = *(a1 + 52);
    v12 = *(a1 + 56);
    v30 = 67240961;
    *v31 = v11;
    *&v31[4] = 1026;
    *&v31[6] = v12;
    *v32 = 2049;
    *&v32[2] = v3;
    v33 = 2049;
    v34 = v27;
    v13 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 0, "static void CLAccessoryNotifier::onNewHidService(void *)", "CoreLocation: %s\n", v13);
    if (v13 != buf)
    {
      free(v13);
    }
  }

  v14 = objc_msgSend_dataWithBytes_length_(MEMORY[0x1E695DEF0], v10, &v26, 6);
  v15 = *(a1 + 32);
  v28 = @"BT_ADDR";
  v29 = v14;
  v17 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v16, &v29, &v28, 1);
  sub_19B4438CC(v15, v17);
LABEL_31:
  v25 = *MEMORY[0x1E69E9840];
}

uint64_t sub_19B751680(_DWORD *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (qword_1ED71C7B8 != -1)
  {
    dispatch_once(&qword_1ED71C7B8, &unk_1F0E3B578);
  }

  v2 = qword_1ED71C7C8;
  if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[13];
    v4 = a1[14];
    *buf = 67240448;
    v12 = v3;
    v13 = 1026;
    v14 = v4;
    _os_log_impl(&dword_19B41C000, v2, OS_LOG_TYPE_DEFAULT, "[AccessoryNotifier] Service removed for usage page %{public}d usage %{public}d", buf, 0xEu);
  }

  v5 = sub_19B420058();
  if (*(v5 + 160) > 1 || *(v5 + 164) > 1 || *(v5 + 168) > 1 || *(v5 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E3B578);
    }

    v9 = a1[13];
    v10 = a1[14];
    v6 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "static void CLAccessoryNotifier::onServiceRemoval(void *)", "CoreLocation: %s\n", v6);
    if (v6 != buf)
    {
      free(v6);
    }
  }

  result = (*(*a1 + 48))(a1);
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

os_log_t sub_19B75188C()
{
  result = os_log_create("com.apple.locationd.Motion", "Accessory");
  qword_1ED71C7C8 = result;
  return result;
}

uint64_t sub_19B7518BC(uint64_t a1, unsigned int a2, char a3)
{
  v32 = *MEMORY[0x1E69E9840];
  *a1 = a2;
  *(a1 + 4) = 1092616192;
  *(a1 + 8) = 0x3FD3333340000000;
  *(a1 + 16) = 0;
  *(a1 + 17) = a3;
  *(a1 + 24) = &unk_1F0E32BF8;
  *(a1 + 32) = 0;
  v4 = (a1 + 40);
  *(a1 + 40) = &unk_1F0E32728;
  v21 = (a1 + 112);
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = &unk_1F0E32728;
  v20 = (a1 + 184);
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = &unk_1F0E32728;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 256) = &unk_1F0E32BF8;
  *(a1 + 264) = 0;
  v5 = (a1 + 272);
  *(a1 + 272) = &unk_1F0E32728;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 344) = &unk_1F0E32728;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = &unk_1F0E32728;
  *(a1 + 424) = 0u;
  *(a1 + 440) = 0u;
  *(a1 + 456) = 0u;
  *(a1 + 472) = 0u;
  *(a1 + 488) = &unk_1F0E32BF8;
  *(a1 + 496) = 0;
  *(a1 + 504) = &unk_1F0E32728;
  *(a1 + 544) = 0u;
  *(a1 + 560) = 0u;
  *(a1 + 512) = 0u;
  *(a1 + 528) = 0u;
  *(a1 + 576) = &unk_1F0E32728;
  *(a1 + 616) = 0u;
  *(a1 + 632) = 0u;
  *(a1 + 584) = 0u;
  *(a1 + 600) = 0u;
  *(a1 + 648) = &unk_1F0E32728;
  *(a1 + 688) = 0u;
  *(a1 + 704) = 0u;
  *(a1 + 656) = 0u;
  *(a1 + 672) = 0u;
  *(a1 + 720) = &unk_1F0E32BF8;
  *(a1 + 728) = 0;
  *(a1 + 736) = &unk_1F0E32728;
  *(a1 + 776) = 0u;
  *(a1 + 792) = 0u;
  *(a1 + 744) = 0u;
  *(a1 + 760) = 0u;
  *(a1 + 808) = &unk_1F0E32728;
  *(a1 + 848) = 0u;
  *(a1 + 864) = 0u;
  *(a1 + 816) = 0u;
  *(a1 + 832) = 0u;
  *(a1 + 880) = &unk_1F0E32728;
  *(a1 + 949) = 0u;
  *(a1 + 920) = 0u;
  *(a1 + 936) = 0u;
  *(a1 + 888) = 0u;
  *(a1 + 904) = 0u;
  *(a1 + 965) = 1;
  *(a1 + 968) = 0xBFF0000000000000;
  *(a1 + 976) = 0x3EE6666600000000;
  *(a1 + 984) = 7;
  *(a1 + 992) = 0xBFF0000000000000;
  *(a1 + 1000) = 0;
  __asm { FMOV            V0.2D, #-1.0 }

  *(a1 + 1008) = _Q0;
  *(a1 + 1024) = 0x3D23D70A3C23D70ALL;
  *(a1 + 1032) = 0;
  *(a1 + 1036) = 0;
  *(a1 + 1040) = 0;
  if (a2 >= 2)
  {
    *(a1 + 4) = 1103626240;
    *(a1 + 8) = 0x3FC99999A0000000;
    *(a1 + 16) = 1;
    *(a1 + 264) = 5;
    *(a1 + 280) = 5;
    sub_19B43FA98(v5);
    *(a1 + 352) = 5;
    sub_19B43FA98((a1 + 344));
    *(a1 + 424) = 5;
    sub_19B43FA98((a1 + 416));
    *(a1 + 496) = 3;
    *(a1 + 512) = 3;
    sub_19B43FA98((a1 + 504));
    *(a1 + 584) = 3;
    sub_19B43FA98((a1 + 576));
    *(a1 + 656) = 3;
    sub_19B43FA98((a1 + 648));
    *(a1 + 728) = 5;
    *(a1 + 744) = 5;
    sub_19B43FA98((a1 + 736));
    *(a1 + 816) = 5;
    sub_19B43FA98((a1 + 808));
    *(a1 + 888) = 5;
    sub_19B43FA98((a1 + 880));
    if (qword_1ED71C7B0 != -1)
    {
      dispatch_once(&qword_1ED71C7B0, &unk_1F0E2A360);
    }

    v11 = off_1ED71C7C0;
    if (os_log_type_enabled(off_1ED71C7C0, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134219008;
      v23 = 0x4034000000000000;
      v24 = 1024;
      v25 = 5;
      v26 = 1024;
      v27 = 3;
      v28 = 1024;
      v29 = 5;
      v30 = 1024;
      v31 = 3;
      _os_log_impl(&dword_19B41C000, v11, OS_LOG_TYPE_DEBUG, "gyroFrequency,%.3f,gyroBufferSize,%d,gyroMeanBufferSize,%d,zRotBufferSize,%d,minRequiredZrots,%d", buf, 0x24u);
    }

    v12 = sub_19B420058();
    if (*(v12 + 160) > 1 || *(v12 + 164) > 1 || *(v12 + 168) > 1 || *(v12 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7B0 != -1)
      {
        dispatch_once(&qword_1ED71C7B0, &unk_1F0E2A360);
      }

      v13 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "CLOrientationDetector::CLOrientationDetector(FormFactor, BOOL)", "CoreLocation: %s\n", v13);
      if (v13 != buf)
      {
        free(v13);
      }
    }

    *(a1 + 1024) = *(a1 + 1024) * 0.8;
    *(a1 + 1028) = 1023745720;
  }

  v14 = llround(*(a1 + 8) * *(a1 + 4));
  *(a1 + 32) = v14;
  *(a1 + 48) = v14;
  sub_19B43FA98(v4);
  *(a1 + 120) = v14;
  sub_19B43FA98(v21);
  *(a1 + 192) = v14;
  sub_19B43FA98(v20);
  if (qword_1ED71C7B0 != -1)
  {
    dispatch_once(&qword_1ED71C7B0, &unk_1F0E2A360);
  }

  v15 = off_1ED71C7C0;
  if (os_log_type_enabled(off_1ED71C7C0, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109120;
    LODWORD(v23) = v14;
    _os_log_impl(&dword_19B41C000, v15, OS_LOG_TYPE_DEBUG, "accelBufferSize,%d", buf, 8u);
  }

  v16 = sub_19B420058();
  if (*(v16 + 160) > 1 || *(v16 + 164) > 1 || *(v16 + 168) > 1 || *(v16 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C7B0 != -1)
    {
      dispatch_once(&qword_1ED71C7B0, &unk_1F0E2A360);
    }

    v17 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "CLOrientationDetector::CLOrientationDetector(FormFactor, BOOL)", "CoreLocation: %s\n", v17);
    if (v17 != buf)
    {
      free(v17);
    }
  }

  v18 = *MEMORY[0x1E69E9840];
  return a1;
}

void sub_19B752068(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, void *a15, void *a16)
{
  sub_19B42AC20(a13);
  sub_19B42AC20(a14);
  sub_19B42AC20(a15);
  sub_19B42AC20(a16);
  _Unwind_Resume(a1);
}

void sub_19B7520A0(uint64_t a1, float *a2, void *a3)
{
  v32 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 1008);
  if (v6 < 0.0 || *a3 >= v6 && *a3 - v6 <= 2.0 / *(a1 + 4))
  {
    sub_19B4200DC(a1 + 40, a2);
    sub_19B4200DC(a1 + 112, a2 + 1);
    sub_19B4200DC(a1 + 184, a2 + 2);
    *(a1 + 1008) = *a3;
    if (qword_1ED71C7B0 != -1)
    {
      dispatch_once(&qword_1ED71C7B0, &unk_1F0E2A360);
    }

    v7 = off_1ED71C7C0;
    if (os_log_type_enabled(off_1ED71C7C0, OS_LOG_TYPE_DEBUG))
    {
      v8 = *a2;
      v9 = a2[1];
      v10 = a2[2];
      v11 = *a3;
      *buf = 134218752;
      v25 = v8;
      v26 = 2048;
      v27 = v9;
      v28 = 2048;
      v29 = v10;
      v30 = 2048;
      v31 = v11;
      _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_DEBUG, "accel, %.3f, %.3f, %.3f, timestamp, %.20f", buf, 0x2Au);
    }

    v12 = sub_19B420058();
    if (*(v12 + 160) > 1 || *(v12 + 164) > 1 || *(v12 + 168) > 1 || *(v12 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7B0 != -1)
      {
        dispatch_once(&qword_1ED71C7B0, &unk_1F0E2A360);
      }

      v19 = *a2;
      v21 = a2[1];
      v22 = a2[2];
      v23 = *a3;
      v13 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "void CLOrientationDetector::addAccSample(const CLMotionTypeAcceleration &, const CFAbsoluteTime &)", "CoreLocation: %s\n", v13);
      if (v13 != buf)
      {
        free(v13);
      }
    }

    if (*(a1 + 965) == 1)
    {
      *(a1 + 968) = *a3;
    }
  }

  else
  {
    if (qword_1ED71C7B0 != -1)
    {
      dispatch_once(&qword_1ED71C7B0, &unk_1F0E2A360);
    }

    v14 = off_1ED71C7C0;
    if (os_log_type_enabled(off_1ED71C7C0, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *a3 - *(a1 + 1008);
      *buf = 134349056;
      v25 = v15;
      _os_log_impl(&dword_19B41C000, v14, OS_LOG_TYPE_DEFAULT, "Accelerometer samples data gap or out of order! deltaInterval=%{public}.4f", buf, 0xCu);
    }

    v16 = sub_19B420058();
    if (*(v16 + 160) > 1 || *(v16 + 164) > 1 || *(v16 + 168) > 1 || *(v16 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7B0 != -1)
      {
        dispatch_once(&qword_1ED71C7B0, &unk_1F0E2A360);
      }

      v20 = *a3 - *(a1 + 1008);
      v17 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "void CLOrientationDetector::addAccSample(const CLMotionTypeAcceleration &, const CFAbsoluteTime &)", "CoreLocation: %s\n", v17);
      if (v17 != buf)
      {
        free(v17);
      }
    }

    sub_19B43FA98((a1 + 40));
    sub_19B43FA98((a1 + 112));
    sub_19B43FA98((a1 + 184));
    *(a1 + 1008) = 0xBFF0000000000000;
  }

  v18 = *MEMORY[0x1E69E9840];
}

void sub_19B7524EC(uint64_t a1, float *a2, double *a3)
{
  v263 = *MEMORY[0x1E69E9840];
  if (*(a1 + 16) == 1)
  {
    v6 = *(a1 + 1016);
    if (v6 < 0.0)
    {
      sub_19B4200DC(a1 + 272, a2);
      sub_19B4200DC(a1 + 344, a2 + 1);
      sub_19B4200DC(a1 + 416, a2 + 2);
      goto LABEL_154;
    }

    v7 = *a3 - v6;
    if (v7 >= 0.0 && v7 * 20.0 <= 2.5)
    {
      goto LABEL_23;
    }

    if (qword_1ED71C7B0 != -1)
    {
      dispatch_once(&qword_1ED71C7B0, &unk_1F0E2A360);
    }

    v9 = off_1ED71C7C0;
    if (os_log_type_enabled(off_1ED71C7C0, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *a3 - *(a1 + 1016);
      *buf = 3.9122e-34;
      *v256 = v10;
      _os_log_impl(&dword_19B41C000, v9, OS_LOG_TYPE_DEFAULT, "Gyro samples data gap or out of order! deltaInterval=%{public}.4f", buf, 0xCu);
    }

    v11 = sub_19B420058();
    if (*(v11 + 160) > 1 || *(v11 + 164) > 1 || *(v11 + 168) > 1 || *(v11 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7B0 != -1)
      {
        dispatch_once(&qword_1ED71C7B0, &unk_1F0E2A360);
      }

      v12 = *a3 - *(a1 + 1016);
      *v248 = 134349056;
      *&v248[4] = v12;
      v13 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "void CLOrientationDetector::addGyroSample(const CLMotionTypeRotationRate &, const CFAbsoluteTime &)", "CoreLocation: %s\n", v13);
      if (v13 != buf)
      {
        free(v13);
      }
    }

    if (fabs(v7) * 20.0 > 4.0)
    {
      sub_19B43FA98((a1 + 272));
      sub_19B43FA98((a1 + 344));
      sub_19B43FA98((a1 + 416));
      v14 = -1.0;
LABEL_339:
      *(a1 + 1016) = v14;
      goto LABEL_340;
    }

    if (v7 >= 0.0)
    {
LABEL_23:
      sub_19B4200DC(a1 + 272, a2);
      sub_19B4200DC(a1 + 344, a2 + 1);
      v15 = a2 + 2;
      sub_19B4200DC(a1 + 416, a2 + 2);
      v16 = *(a1 + 336);
      v17 = 0.0;
      v18 = 0.0;
      if (v16)
      {
        v18 = *(a1 + 288) / v16;
      }

      v19 = *(a1 + 408);
      if (v19)
      {
        v17 = *(a1 + 360) / v19;
      }

      v20 = *(a1 + 480);
      if (v20)
      {
        v21 = *(a1 + 432) / v20;
      }

      else
      {
        v21 = 0.0;
      }

      v220 = v18;
      v221 = v17;
      v222 = v21;
      sub_19B4200DC(a1 + 504, &v220);
      sub_19B4200DC(a1 + 576, &v221);
      sub_19B4200DC(a1 + 648, &v222);
      v22 = *(a1 + 960);
      if ((v22 & 1) == 0 && !*(a1 + 1004))
      {
        goto LABEL_142;
      }

      v23 = fabsf(v220);
      v24 = fabsf(v221);
      if (v23 < v24)
      {
        v23 = v24;
      }

      v231 = v23;
      v25 = fabsf(v222);
      if (v22)
      {
        *buf = v25 - v23;
        sub_19B4200DC(a1 + 736, &v222);
        sub_19B4200DC(a1 + 808, buf);
        sub_19B4200DC(a1 + 880, &v231);
        if (*(a1 + 960))
        {
LABEL_36:
          if (qword_1ED71C7B0 != -1)
          {
            dispatch_once(&qword_1ED71C7B0, &unk_1F0E2A360);
          }

          v26 = off_1ED71C7C0;
          if (os_log_type_enabled(off_1ED71C7C0, OS_LOG_TYPE_DEBUG))
          {
            v27 = *(a1 + 800);
            v28 = 0.0;
            v29 = 0.0;
            if (v27)
            {
              v29 = *(a1 + 752) / v27;
            }

            v30 = *(a1 + 872);
            if (v30)
            {
              v28 = *(a1 + 824) / v30;
            }

            v31 = *(a1 + 944);
            v32 = 0.0;
            v33 = 0.0;
            if (v31)
            {
              v33 = *(a1 + 896) / v31;
            }

            v34 = *v15;
            *v248 = &unk_1F0E33E90;
            *&v248[8] = v29;
            *&v248[12] = v28;
            *&v248[16] = v33;
            if (v27)
            {
              v32 = *(a1 + 752) / v27;
            }

            v35 = 0.0;
            v36 = 0.0;
            if (v30)
            {
              v36 = *(a1 + 824) / v30;
            }

            if (v31)
            {
              v35 = *(a1 + 896) / v31;
            }

            v244 = &unk_1F0E33E90;
            v245 = v32;
            v246 = v36;
            v247 = v35;
            v37 = 0.0;
            v38 = 0.0;
            if (v27)
            {
              v38 = *(a1 + 752) / v27;
            }

            if (v30)
            {
              v37 = *(a1 + 824) / v30;
            }

            v39 = 0.0;
            v40 = 0.0;
            if (v31)
            {
              v40 = *(a1 + 896) / v31;
            }

            v240 = &unk_1F0E33E90;
            v241 = v38;
            v242 = v37;
            v243 = v40;
            if (v27 >= 2)
            {
              v41 = (v27 * *(a1 + 756)) - (*(a1 + 752) * *(a1 + 752));
              if (v41 >= 0.0)
              {
                v39 = v41 / ((v27 - 1) * v27);
              }
            }

            v42 = 0.0;
            v43 = 0.0;
            if (v30 >= 2)
            {
              v44 = (v30 * *(a1 + 828)) - (*(a1 + 824) * *(a1 + 824));
              v43 = 0.0;
              if (v44 >= 0.0)
              {
                v43 = v44 / ((v30 - 1) * v30);
              }
            }

            if (v31 >= 2)
            {
              v45 = (v31 * *(a1 + 900)) - (*(a1 + 896) * *(a1 + 896));
              if (v45 >= 0.0)
              {
                v42 = v45 / ((v31 - 1) * v31);
              }
            }

            v236 = &unk_1F0E33E90;
            v237 = v39;
            v238 = v43;
            v239 = v42;
            v46 = 0.0;
            v47 = 0.0;
            if (v27 >= 2)
            {
              v48 = (v27 * *(a1 + 756)) - (*(a1 + 752) * *(a1 + 752));
              v47 = 0.0;
              if (v48 >= 0.0)
              {
                v47 = v48 / ((v27 - 1) * v27);
              }
            }

            if (v30 >= 2)
            {
              v49 = (v30 * *(a1 + 828)) - (*(a1 + 824) * *(a1 + 824));
              if (v49 >= 0.0)
              {
                v46 = v49 / ((v30 - 1) * v30);
              }
            }

            v50 = 0.0;
            v51 = 0.0;
            if (v31 >= 2)
            {
              v52 = (v31 * *(a1 + 900)) - (*(a1 + 896) * *(a1 + 896));
              v51 = 0.0;
              if (v52 >= 0.0)
              {
                v51 = v52 / ((v31 - 1) * v31);
              }
            }

            v232 = &unk_1F0E33E90;
            v233 = v47;
            v234 = v46;
            v235 = v51;
            if (v27 >= 2)
            {
              v53 = (v27 * *(a1 + 756)) - (*(a1 + 752) * *(a1 + 752));
              if (v53 >= 0.0)
              {
                v50 = v53 / ((v27 - 1) * v27);
              }
            }

            v54 = 0.0;
            v55 = 0.0;
            if (v30 >= 2)
            {
              v56 = (v30 * *(a1 + 828)) - (*(a1 + 824) * *(a1 + 824));
              v55 = 0.0;
              if (v56 >= 0.0)
              {
                v55 = v56 / ((v30 - 1) * v30);
              }
            }

            v57 = v34;
            v58 = v36;
            if (v31 >= 2)
            {
              v59 = (v31 * *(a1 + 900)) - (*(a1 + 896) * *(a1 + 896));
              if (v59 >= 0.0)
              {
                v54 = v59 / ((v31 - 1) * v31);
              }
            }

            v227 = &unk_1F0E33E90;
            v228 = v50;
            v229 = v55;
            v230 = v54;
            *buf = 3.8529e-34;
            *v256 = v57;
            *&v256[8] = 2048;
            *&v256[10] = (v25 - v231);
            *&v256[18] = 2048;
            *&v256[20] = v231;
            *&v256[28] = 2048;
            *v257 = v29;
            *&v257[8] = 2048;
            *v258 = v58;
            *&v258[8] = 2048;
            *v259 = v40;
            *&v259[8] = 2048;
            *v260 = v39;
            *&v260[8] = 2048;
            *v261 = v46;
            *&v261[8] = 2048;
            v262 = v54;
            _os_log_impl(&dword_19B41C000, v26, OS_LOG_TYPE_DEBUG, "zRot (%.3f, %.3f, %.3f), mean(%.3f, %.3f, %.3f), var(%.3f, %.3f, %.3f)", buf, 0x5Cu);
          }

          v60 = sub_19B420058();
          if (*(v60 + 160) > 1 || *(v60 + 164) > 1 || *(v60 + 168) > 1 || *(v60 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1ED71C7B0 != -1)
            {
              dispatch_once(&qword_1ED71C7B0, &unk_1F0E2A360);
            }

            v61 = *(a1 + 800);
            v62 = 0.0;
            v63 = 0.0;
            if (v61)
            {
              v63 = *(a1 + 752) / v61;
            }

            v64 = *(a1 + 872);
            if (v64)
            {
              v62 = *(a1 + 824) / v64;
            }

            v65 = *(a1 + 944);
            v66 = 0.0;
            v67 = 0.0;
            if (v65)
            {
              v67 = *(a1 + 896) / v65;
            }

            v68 = *v15;
            v244 = &unk_1F0E33E90;
            v245 = v63;
            v246 = v62;
            v247 = v67;
            if (v61)
            {
              v66 = *(a1 + 752) / v61;
            }

            v69 = 0.0;
            v70 = 0.0;
            if (v64)
            {
              v70 = *(a1 + 824) / v64;
            }

            if (v65)
            {
              v69 = *(a1 + 896) / v65;
            }

            v240 = &unk_1F0E33E90;
            v241 = v66;
            v242 = v70;
            v243 = v69;
            v71 = 0.0;
            v72 = 0.0;
            if (v61)
            {
              v72 = *(a1 + 752) / v61;
            }

            if (v64)
            {
              v71 = *(a1 + 824) / v64;
            }

            v73 = 0.0;
            v74 = 0.0;
            if (v65)
            {
              v74 = *(a1 + 896) / v65;
            }

            v236 = &unk_1F0E33E90;
            v237 = v72;
            v238 = v71;
            v239 = v74;
            if (v61 >= 2)
            {
              v75 = (v61 * *(a1 + 756)) - (*(a1 + 752) * *(a1 + 752));
              if (v75 >= 0.0)
              {
                v73 = v75 / ((v61 - 1) * v61);
              }
            }

            v76 = 0.0;
            v77 = 0.0;
            if (v64 >= 2)
            {
              v78 = (v64 * *(a1 + 828)) - (*(a1 + 824) * *(a1 + 824));
              v77 = 0.0;
              if (v78 >= 0.0)
              {
                v77 = v78 / ((v64 - 1) * v64);
              }
            }

            if (v65 >= 2)
            {
              v79 = (v65 * *(a1 + 900)) - (*(a1 + 896) * *(a1 + 896));
              if (v79 >= 0.0)
              {
                v76 = v79 / ((v65 - 1) * v65);
              }
            }

            v232 = &unk_1F0E33E90;
            v233 = v73;
            v234 = v77;
            v235 = v76;
            v80 = 0.0;
            v81 = 0.0;
            if (v61 >= 2)
            {
              v82 = (v61 * *(a1 + 756)) - (*(a1 + 752) * *(a1 + 752));
              v81 = 0.0;
              if (v82 >= 0.0)
              {
                v81 = v82 / ((v61 - 1) * v61);
              }
            }

            if (v64 >= 2)
            {
              v83 = (v64 * *(a1 + 828)) - (*(a1 + 824) * *(a1 + 824));
              if (v83 >= 0.0)
              {
                v80 = v83 / ((v64 - 1) * v64);
              }
            }

            v84 = 0.0;
            v85 = 0.0;
            if (v65 >= 2)
            {
              v86 = (v65 * *(a1 + 900)) - (*(a1 + 896) * *(a1 + 896));
              v85 = 0.0;
              if (v86 >= 0.0)
              {
                v85 = v86 / ((v65 - 1) * v65);
              }
            }

            v227 = &unk_1F0E33E90;
            v228 = v81;
            v229 = v80;
            v230 = v85;
            if (v61 >= 2)
            {
              v87 = (v61 * *(a1 + 756)) - (*(a1 + 752) * *(a1 + 752));
              if (v87 >= 0.0)
              {
                v84 = v87 / ((v61 - 1) * v61);
              }
            }

            v88 = 0.0;
            v89 = 0.0;
            if (v64 >= 2)
            {
              v90 = (v64 * *(a1 + 828)) - (*(a1 + 824) * *(a1 + 824));
              v89 = 0.0;
              if (v90 >= 0.0)
              {
                v89 = v90 / ((v64 - 1) * v64);
              }
            }

            v91 = v68;
            v92 = v70;
            if (v65 >= 2)
            {
              v93 = (v65 * *(a1 + 900)) - (*(a1 + 896) * *(a1 + 896));
              if (v93 >= 0.0)
              {
                v88 = v93 / ((v65 - 1) * v65);
              }
            }

            v223 = &unk_1F0E33E90;
            v224 = v84;
            v225 = v89;
            v226 = v88;
            *v248 = 134220032;
            *&v248[4] = v91;
            *&v248[12] = 2048;
            *&v248[14] = (v25 - v231);
            *&v248[22] = 2048;
            *&v248[24] = v231;
            *&v248[32] = 2048;
            *v249 = v63;
            *&v249[8] = 2048;
            *v250 = v92;
            *&v250[8] = 2048;
            *v251 = v74;
            *&v251[8] = 2048;
            *v252 = v73;
            *&v252[8] = 2048;
            *v253 = v80;
            *&v253[8] = 2048;
            v254 = v88;
            v94 = _os_log_send_and_compose_impl();
            sub_19B6BB7CC("Generic", 1, 0, 2, "void CLOrientationDetector::fillZRotBuffer(const CLMotionTypeRotationRate &, const CLVector3d<float> &)", "CoreLocation: %s\n", v94);
            if (v94 != buf)
            {
              free(v94);
            }
          }
        }
      }

      else if (v23 < 90.0 && fabsf((v222 + *v15) * 0.5) > ((v23 + 30.0) * 1.25) && (v25 > 45.0 || fabsf(*v15) > 75.0))
      {
        *buf = v25 - v23;
        sub_19B4200DC(a1 + 736, &v222);
        sub_19B4200DC(a1 + 808, buf);
        sub_19B4200DC(a1 + 880, &v231);
        *(a1 + 960) = 1;
        *(a1 + 952) = (*(a1 + 952) + 1);
        *(a1 + 1032) = 0;
        goto LABEL_36;
      }

LABEL_142:
      if (qword_1ED71C7B0 != -1)
      {
        dispatch_once(&qword_1ED71C7B0, &unk_1F0E2A360);
      }

      v95 = off_1ED71C7C0;
      if (os_log_type_enabled(off_1ED71C7C0, OS_LOG_TYPE_DEBUG))
      {
        v96 = *a2;
        v97 = a2[1];
        v98 = a2[2];
        v99 = *(a1 + 1004);
        v100 = *(a1 + 960);
        v101 = *a3;
        *buf = 3.8529e-34;
        *v256 = v96;
        *&v256[8] = 2048;
        *&v256[10] = v97;
        *&v256[18] = 2048;
        *&v256[20] = v98;
        *&v256[28] = 2048;
        *v257 = v220;
        *&v257[8] = 2048;
        *v258 = v221;
        *&v258[8] = 2048;
        *v259 = v222;
        *&v259[8] = 1024;
        *v260 = v99;
        *&v260[4] = 1024;
        *&v260[6] = v100;
        *v261 = 2048;
        *&v261[2] = v101;
        _os_log_impl(&dword_19B41C000, v95, OS_LOG_TYPE_DEBUG, "gyro, %.3f, %.3f, %.3f, gyroMean, %.3f, %.3f, %.3f, fLastDetection,%d,fStartZrot,%d, timestamp, %.10f", buf, 0x54u);
      }

      v102 = sub_19B420058();
      if (*(v102 + 160) > 1 || *(v102 + 164) > 1 || *(v102 + 168) > 1 || *(v102 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED71C7B0 != -1)
        {
          dispatch_once(&qword_1ED71C7B0, &unk_1F0E2A360);
        }

        v103 = *a2;
        v104 = a2[1];
        v105 = a2[2];
        v106 = *(a1 + 1004);
        v107 = *(a1 + 960);
        v108 = *a3;
        *v248 = 134220032;
        *&v248[4] = v103;
        *&v248[12] = 2048;
        *&v248[14] = v104;
        *&v248[22] = 2048;
        *&v248[24] = v105;
        *&v248[32] = 2048;
        *v249 = v220;
        *&v249[8] = 2048;
        *v250 = v221;
        *&v250[8] = 2048;
        *v251 = v222;
        *&v251[8] = 1024;
        *v252 = v106;
        *&v252[4] = 1024;
        *&v252[6] = v107;
        *v253 = 2048;
        *&v253[2] = v108;
        v109 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "void CLOrientationDetector::addGyroSample(const CLMotionTypeRotationRate &, const CFAbsoluteTime &)", "CoreLocation: %s\n", v109);
        if (v109 != buf)
        {
          free(v109);
        }
      }

LABEL_154:
      *(a1 + 963) = 0;
      v110 = *(a1 + 336);
      v111 = 0.0;
      v112 = 0.0;
      if (v110)
      {
        v112 = *(*(*(a1 + 304) + (((v110 + *(a1 + 328) - 1) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v110 + *(a1 + 328) - 1) & 0x3FF));
      }

      v113 = *(a1 + 408);
      if (v113)
      {
        v111 = *(*(*(a1 + 376) + (((v113 + *(a1 + 400) - 1) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v113 + *(a1 + 400) - 1) & 0x3FF));
      }

      v114 = *(a1 + 480);
      if (v114)
      {
        v115 = *(*(*(a1 + 448) + (((v114 + *(a1 + 472) - 1) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v114 + *(a1 + 472) - 1) & 0x3FF));
      }

      else
      {
        v115 = 0.0;
      }

      v236 = &unk_1F0E33E90;
      v237 = v112;
      v238 = v111;
      v239 = v115;
      if (*(a1 + 960) != 1)
      {
        goto LABEL_316;
      }

      v116 = *(a1 + 104);
      v117 = 0.0;
      v118 = 0.0;
      if (v116)
      {
        v118 = *(a1 + 56) / v116;
      }

      v119 = *(a1 + 176);
      if (v119)
      {
        v117 = *(a1 + 128) / v119;
      }

      v120 = *(a1 + 248);
      if (v120)
      {
        v121 = *(a1 + 200) / v120;
      }

      else
      {
        v121 = 0.0;
      }

      v232 = &unk_1F0E33E90;
      v233 = v118;
      v234 = v117;
      v235 = v121;
      v122 = (((v117 * v117) + (v118 * v118)) + (v121 * v121)) + -1.0;
      v123 = fabsf(v122);
      if (v123 < 0.3 && fabsf(v121) > 0.9)
      {
        sub_19B754B68(a1, 1);
        if (qword_1ED71C7B0 != -1)
        {
          dispatch_once(&qword_1ED71C7B0, &unk_1F0E2A360);
        }

        v124 = off_1ED71C7C0;
        if (os_log_type_enabled(off_1ED71C7C0, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&dword_19B41C000, v124, OS_LOG_TYPE_DEBUG, "SCREEN FLAT. NOT FILLING UP ZROT BUFFER.", buf, 2u);
        }

        v125 = sub_19B420058();
        if (*(v125 + 160) > 1 || *(v125 + 164) > 1 || *(v125 + 168) > 1 || *(v125 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1ED71C7B0 != -1)
          {
            dispatch_once(&qword_1ED71C7B0, &unk_1F0E2A360);
          }

          *v248 = 0;
          v126 = _os_log_send_and_compose_impl();
          sub_19B6BB7CC("Generic", 1, 0, 2, "void CLOrientationDetector::checkForRotation()", "CoreLocation: %s\n", v126);
          if (v126 != buf)
          {
            free(v126);
          }
        }

        goto LABEL_315;
      }

      v127 = *(a1 + 800);
      if (v127)
      {
        v128 = *(a1 + 752) / v127;
      }

      else
      {
        v128 = 0.0;
      }

      v129 = (v115 / 20.0) + *(a1 + 956);
      *(a1 + 956) = v129;
      v130 = fabsf(v129);
      v131 = 2.0;
      if (v130 > 75.0)
      {
        v131 = 15.0;
      }

      v132 = v115 >= v131 && v128 < -30.0;
      if (v132 || (v115 <= -v131 ? (v133 = v128 <= 30.0) : (v133 = 1), !v133))
      {
        sub_19B754B68(a1, 1);
        *(a1 + 964) = 1;
        if (qword_1ED71C7B0 != -1)
        {
          dispatch_once(&qword_1ED71C7B0, &unk_1F0E2A360);
        }

        v146 = off_1ED71C7C0;
        if (os_log_type_enabled(off_1ED71C7C0, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&dword_19B41C000, v146, OS_LOG_TYPE_DEBUG, "Transient!", buf, 2u);
        }

        v147 = sub_19B420058();
        if (*(v147 + 160) <= 1 && *(v147 + 164) <= 1 && *(v147 + 168) <= 1 && !*(v147 + 152))
        {
          goto LABEL_338;
        }

        bzero(buf, 0x65CuLL);
        if (qword_1ED71C7B0 != -1)
        {
          dispatch_once(&qword_1ED71C7B0, &unk_1F0E2A360);
        }

        *v248 = 0;
        v148 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "void CLOrientationDetector::checkForRotation()", "CoreLocation: %s\n", v148);
        goto LABEL_336;
      }

      v134 = 0.0;
      v135 = 0.0;
      if (v127)
      {
        v135 = *(*(*(a1 + 768) + (((v127 + *(a1 + 792) - 1) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v127 + *(a1 + 792) - 1) & 0x3FF));
      }

      if (v114)
      {
        v134 = *(*(*(a1 + 448) + (((v114 + *(a1 + 472) - 1) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v114 + *(a1 + 472) - 1) & 0x3FF));
      }

      if (v110 >= 2 && v130 <= 65.0)
      {
        v136 = (v110 - 2);
        v137 = *(a1 + 328) + v136;
        v138 = *(a1 + 400) + v136;
        v139 = *(*(a1 + 376) + ((v138 >> 7) & 0x1FFFFFFFFFFFFF8));
        v140 = *(a1 + 472) + v136;
        v141 = *(*(a1 + 448) + ((v140 >> 7) & 0x1FFFFFFFFFFFFF8));
        *&v256[4] = *(*(*(a1 + 304) + ((v137 >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v137 & 0x3FF));
        *&v256[8] = *(v139 + 4 * (v138 & 0x3FF));
        v142 = *(v141 + 4 * (v140 & 0x3FF));
        if ((v134 * v142) < 0.0)
        {
          sub_19B754B68(a1, 1);
          if (qword_1ED71C7B0 != -1)
          {
            dispatch_once(&qword_1ED71C7B0, &unk_1F0E2A360);
          }

          v143 = off_1ED71C7C0;
          if (os_log_type_enabled(off_1ED71C7C0, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_impl(&dword_19B41C000, v143, OS_LOG_TYPE_DEBUG, "Likely transient.", buf, 2u);
          }

          v144 = sub_19B420058();
          if (*(v144 + 160) <= 1 && *(v144 + 164) <= 1 && *(v144 + 168) <= 1 && !*(v144 + 152))
          {
            goto LABEL_314;
          }

          bzero(buf, 0x65CuLL);
          if (qword_1ED71C7B0 == -1)
          {
LABEL_213:
            *v248 = 0;
            v145 = _os_log_send_and_compose_impl();
            sub_19B6BB7CC("Generic", 1, 0, 2, "BOOL CLOrientationDetector::updateZRotationStatus(float, float, float)", "CoreLocation: %s\n", v145);
            if (v145 != buf)
            {
              free(v145);
            }

LABEL_314:
            *(a1 + 963) = 0;
LABEL_315:
            v112 = v237;
            v111 = v238;
            v115 = v239;
LABEL_316:
            v187 = fabsf(v112);
            v188 = fabsf(v111);
            v189 = fabsf(v115);
            if (v187 >= v188)
            {
              v188 = v187;
            }

            if (v188 >= v189)
            {
              v190 = v188;
            }

            else
            {
              v190 = v189;
            }

            if (v190 <= 60.0)
            {
              goto LABEL_338;
            }

            *(a1 + 964) = 1;
            if (v190 > 195.0)
            {
              v191 = *(a1 + 976);
              v192 = __OFSUB__(v191, 1);
              v193 = v191 - 1;
              if (v193 < 0 == v192)
              {
                *(a1 + 976) = v193;
              }
            }

            if (qword_1ED71C7B0 != -1)
            {
              dispatch_once(&qword_1ED71C7B0, &unk_1F0E2A360);
            }

            v194 = off_1ED71C7C0;
            v195 = v190;
            if (os_log_type_enabled(off_1ED71C7C0, OS_LOG_TYPE_DEBUG))
            {
              *buf = 3.852e-34;
              *v256 = v195;
              _os_log_impl(&dword_19B41C000, v194, OS_LOG_TYPE_DEBUG, "Rotating! Current max gyro rate %.3f", buf, 0xCu);
            }

            v196 = sub_19B420058();
            if (*(v196 + 160) <= 1 && *(v196 + 164) <= 1 && *(v196 + 168) <= 1 && !*(v196 + 152))
            {
              goto LABEL_338;
            }

            bzero(buf, 0x65CuLL);
            if (qword_1ED71C7B0 != -1)
            {
              dispatch_once(&qword_1ED71C7B0, &unk_1F0E2A360);
            }

            *v248 = 134217984;
            *&v248[4] = v195;
            v148 = _os_log_send_and_compose_impl();
            sub_19B6BB7CC("Generic", 1, 0, 2, "void CLOrientationDetector::checkForRotation()", "CoreLocation: %s\n", v148);
LABEL_336:
            if (v148 != buf)
            {
              free(v148);
            }

LABEL_338:
            v14 = *a3;
            goto LABEL_339;
          }

LABEL_388:
          dispatch_once(&qword_1ED71C7B0, &unk_1F0E2A360);
          goto LABEL_213;
        }

        v149 = fabsf(v142) - fabsf(v134);
        v150 = 0.0;
        if (v129 > 45.0)
        {
          v150 = 1.0;
        }

        v151 = v149 + (v150 * -5.0);
        if (v151 > 15.0)
        {
          ++*(a1 + 1032);
          v152 = *(a1 + 952);
          if (v152 >= 1)
          {
            *(a1 + 952) = v152 - 1;
            if (v151 > 30.0 && v152 != 1)
            {
              *(a1 + 952) = v152 - 2;
              *(a1 + 956) = v129 * 0.8;
            }

            if (qword_1ED71C7B0 != -1)
            {
              dispatch_once(&qword_1ED71C7B0, &unk_1F0E2A360);
            }

            v154 = off_1ED71C7C0;
            if (os_log_type_enabled(off_1ED71C7C0, OS_LOG_TYPE_DEBUG))
            {
              v155 = *(a1 + 952);
              *buf = 3.8521e-34;
              *v256 = v151;
              *&v256[8] = 1024;
              *&v256[10] = v155;
              _os_log_impl(&dword_19B41C000, v154, OS_LOG_TYPE_DEBUG, "Slowing. decrement numZRot,delta, %.3f, numZRot, %d", buf, 0x12u);
            }

            v156 = sub_19B420058();
            if (*(v156 + 160) > 1 || *(v156 + 164) > 1 || *(v156 + 168) > 1 || *(v156 + 152))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1ED71C7B0 != -1)
              {
                dispatch_once(&qword_1ED71C7B0, &unk_1F0E2A360);
              }

              v157 = *(a1 + 952);
              *v248 = 134218240;
              *&v248[4] = v151;
              *&v248[12] = 1024;
              *&v248[14] = v157;
              v158 = _os_log_send_and_compose_impl();
              sub_19B6BB7CC("Generic", 1, 0, 2, "BOOL CLOrientationDetector::updateZRotationStatus(float, float, float)", "CoreLocation: %s\n", v158);
              if (v158 != buf)
              {
                free(v158);
              }
            }
          }

          if (v151 > 50.0 || *(a1 + 1032) > 3)
          {
            if (qword_1ED71C7B0 != -1)
            {
              dispatch_once(&qword_1ED71C7B0, &unk_1F0E2A360);
            }

            v160 = off_1ED71C7C0;
            if (os_log_type_enabled(off_1ED71C7C0, OS_LOG_TYPE_DEBUG))
            {
              v161 = *(a1 + 1032);
              *buf = 3.8521e-34;
              *v256 = v151;
              *&v256[8] = 1024;
              *&v256[10] = v161;
              _os_log_impl(&dword_19B41C000, v160, OS_LOG_TYPE_DEBUG, "ZDROP detected. deltaDrop, %.3f, fNumZDrops, %d", buf, 0x12u);
            }

            v162 = sub_19B420058();
            if (*(v162 + 160) > 1 || *(v162 + 164) > 1 || *(v162 + 168) > 1 || *(v162 + 152))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1ED71C7B0 != -1)
              {
                dispatch_once(&qword_1ED71C7B0, &unk_1F0E2A360);
              }

              v163 = *(a1 + 1032);
              *v248 = 134218240;
              *&v248[4] = v151;
              *&v248[12] = 1024;
              *&v248[14] = v163;
              v164 = _os_log_send_and_compose_impl();
              sub_19B6BB7CC("Generic", 1, 0, 2, "BOOL CLOrientationDetector::updateZRotationStatus(float, float, float)", "CoreLocation: %s\n", v164);
              if (v164 != buf)
              {
                free(v164);
              }
            }

            sub_19B754B68(a1, 0);
            goto LABEL_314;
          }

          v127 = *(a1 + 800);
        }
      }

      v165 = 0.0;
      v166 = 0.0;
      if (v127)
      {
        v166 = *(a1 + 752) / v127;
      }

      v167 = *(a1 + 872);
      if (v167)
      {
        v165 = *(a1 + 824) / v167;
      }

      v168 = *(a1 + 944);
      v169 = 0.0;
      v170 = 0.0;
      if (v168)
      {
        v170 = *(a1 + 896) / v168;
      }

      v244 = &unk_1F0E33E90;
      v245 = v166;
      v246 = v165;
      v247 = v170;
      if (v167)
      {
        v169 = *(*(*(a1 + 840) + (((v167 + *(a1 + 864) - 1) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v167 + *(a1 + 864) - 1) & 0x3FF)) * 0.4;
      }

      if (v170 >= 90.0)
      {
        v172 = 0;
      }

      else
      {
        v171 = v169 + (v165 * 0.6);
        if ((v171 - v170) > 60.0 || v167 && *(*(*(a1 + 840) + (((v167 + *(a1 + 864) - 1) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v167 + *(a1 + 864) - 1) & 0x3FF)) > 135.0)
        {
          v172 = 1;
        }

        else
        {
          v174 = v168 < 2 || (v173 = (v168 * *(a1 + 900)) - (*(a1 + 896) * *(a1 + 896)), v173 < 0.0) || (v173 / ((v168 - 1) * v168)) < 400.0;
          v172 = v171 > (v170 * 1.05) && v174;
        }
      }

      v175 = (v115 + v135) * 0.5;
      v176 = fabsf(v166);
      if (qword_1ED71C7B0 != -1)
      {
        dispatch_once(&qword_1ED71C7B0, &unk_1F0E2A360);
      }

      v177 = fabsf(v175);
      v178 = off_1ED71C7C0;
      if (os_log_type_enabled(off_1ED71C7C0, OS_LOG_TYPE_DEBUG))
      {
        v179 = *(a1 + 952);
        *buf = 1.505e-36;
        *v256 = v172;
        *&v256[4] = 2048;
        *&v256[6] = v247;
        *&v256[14] = 2048;
        *&v256[16] = v176;
        *&v256[24] = 1024;
        *&v256[26] = v179;
        *v257 = 2048;
        *&v257[2] = v177;
        *v258 = 2048;
        *&v258[2] = v130;
        *v259 = 2048;
        *&v259[2] = v122;
        _os_log_impl(&dword_19B41C000, v178, OS_LOG_TYPE_DEBUG, "mostlyZ, %d, zRotMean.z, %.3f, zRot, %.3f, numZRots, %d, estCurr, %.3f, totalZ, %.2f, mag2MinusGrav, %.2f", buf, 0x40u);
      }

      v180 = sub_19B420058();
      if (*(v180 + 160) > 1 || *(v180 + 164) > 1 || *(v180 + 168) > 1 || *(v180 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED71C7B0 != -1)
        {
          dispatch_once(&qword_1ED71C7B0, &unk_1F0E2A360);
        }

        v181 = *(a1 + 952);
        *v248 = 67110656;
        *&v248[4] = v172;
        *&v248[8] = 2048;
        *&v248[10] = v247;
        *&v248[18] = 2048;
        *&v248[20] = v176;
        *&v248[28] = 1024;
        *&v248[30] = v181;
        *v249 = 2048;
        *&v249[2] = v177;
        *v250 = 2048;
        *&v250[2] = v130;
        *v251 = 2048;
        *&v251[2] = v122;
        v182 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "BOOL CLOrientationDetector::updateZRotationStatus(float, float, float)", "CoreLocation: %s\n", v182);
        if (v182 != buf)
        {
          free(v182);
        }
      }

      v184 = v122 > -0.85 && v122 < 0.25;
      if ((v184 & v172) != 1)
      {
        goto LABEL_314;
      }

      v185 = v176 <= 45.0 || v127 <= 1;
      v186 = !v185;
      if (v177 <= 150.0 && !v186)
      {
        goto LABEL_314;
      }

      v198 = *(a1 + 952) + 1;
      *(a1 + 952) = v198;
      if (v130 <= 65.0)
      {
        v202 = 0.0;
        if (v123 <= 0.3)
        {
          v203 = 0.0;
        }

        else
        {
          v203 = 1.0;
        }

        if (v123 > 0.1)
        {
          v202 = 1.0;
        }

        v204 = ((v202 * 5.0) + 35.0) + (v203 * 10.0);
        if (v198 >= v127)
        {
          v198 = v127;
        }

        if (v204 >= v130 || v198 <= 3)
        {
          goto LABEL_314;
        }
      }

      else
      {
        v199 = 255.0;
        if (v130 > 100.0)
        {
          v199 = 225.0;
        }

        if (fabsf(v134) > v199)
        {
          if (qword_1ED71C7B0 != -1)
          {
            dispatch_once(&qword_1ED71C7B0, &unk_1F0E2A360);
          }

          v200 = off_1ED71C7C0;
          if (os_log_type_enabled(off_1ED71C7C0, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_impl(&dword_19B41C000, v200, OS_LOG_TYPE_DEBUG, "Going through with 180 turn.", buf, 2u);
          }

          v201 = sub_19B420058();
          if (*(v201 + 160) <= 1 && *(v201 + 164) <= 1 && *(v201 + 168) <= 1 && !*(v201 + 152))
          {
            goto LABEL_314;
          }

          bzero(buf, 0x65CuLL);
          if (qword_1ED71C7B0 == -1)
          {
            goto LABEL_213;
          }

          goto LABEL_388;
        }
      }

      if (qword_1ED71C7B0 != -1)
      {
        dispatch_once(&qword_1ED71C7B0, &unk_1F0E2A360);
      }

      v206 = off_1ED71C7C0;
      if (os_log_type_enabled(off_1ED71C7C0, OS_LOG_TYPE_DEBUG))
      {
        v207 = *(a1 + 800);
        v208 = 0.0;
        v209 = 0.0;
        if (v207 >= 2)
        {
          v210 = (v207 * *(a1 + 756)) - (*(a1 + 752) * *(a1 + 752));
          v209 = 0.0;
          if (v210 >= 0.0)
          {
            v209 = v210 / ((v207 - 1) * v207);
          }
        }

        v211 = *(a1 + 872);
        if (v211 >= 2)
        {
          v212 = (v211 * *(a1 + 828)) - (*(a1 + 824) * *(a1 + 824));
          if (v212 >= 0.0)
          {
            v208 = v212 / ((v211 - 1) * v211);
          }
        }

        v213 = *(a1 + 952);
        v214 = *(a1 + 944);
        v215 = 0.0;
        if (v214 >= 2)
        {
          v216 = (v214 * *(a1 + 900)) - (*(a1 + 896) * *(a1 + 896));
          if (v216 >= 0.0)
          {
            v215 = v216 / ((v214 - 1) * v214);
          }
        }

        *v248 = &unk_1F0E33E90;
        *&v248[8] = v209;
        *&v248[12] = v208;
        *&v248[16] = v215;
        *buf = 1.5048e-36;
        *v256 = v127;
        *&v256[4] = 1024;
        *&v256[6] = v213;
        *&v256[10] = 2048;
        *&v256[12] = v209;
        _os_log_impl(&dword_19B41C000, v206, OS_LOG_TYPE_DEBUG, "Rotating around Z. numSamples: %d, numAccu, %d, zRotVar, %.3f", buf, 0x18u);
      }

      v217 = sub_19B420058();
      if (*(v217 + 160) > 1 || *(v217 + 164) > 1 || *(v217 + 168) > 1 || *(v217 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED71C7B0 != -1)
        {
          dispatch_once(&qword_1ED71C7B0, &unk_1F0E2A360);
        }

        v218 = *(a1 + 952);
        sub_19B754A94(&v240, a1 + 720);
        *v248 = 67109632;
        *&v248[4] = v127;
        *&v248[8] = 1024;
        *&v248[10] = v218;
        *&v248[14] = 2048;
        *&v248[16] = v241;
        v219 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "BOOL CLOrientationDetector::updateZRotationStatus(float, float, float)", "CoreLocation: %s\n", v219);
        if (v219 != buf)
        {
          free(v219);
        }
      }

      *(a1 + 963) = 1;
      goto LABEL_338;
    }
  }

LABEL_340:
  v197 = *MEMORY[0x1E69E9840];
}

uint64_t sub_19B754A20(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 80);
  v3 = 0.0;
  v4 = 0.0;
  if (v2)
  {
    v4 = *(a2 + 32) / v2;
  }

  v5 = *(a2 + 152);
  if (v5)
  {
    v3 = *(a2 + 104) / v5;
  }

  v6 = *(a2 + 224);
  if (v6)
  {
    v7 = *(a2 + 176) / v6;
  }

  else
  {
    v7 = 0.0;
  }

  *result = &unk_1F0E33E90;
  *(result + 8) = v4;
  *(result + 12) = v3;
  *(result + 16) = v7;
  return result;
}

uint64_t sub_19B754A94(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 80);
  v3 = 0.0;
  v4 = 0.0;
  if (v2 >= 2)
  {
    v5 = (v2 * *(a2 + 36)) - (*(a2 + 32) * *(a2 + 32));
    v4 = 0.0;
    if (v5 >= 0.0)
    {
      v4 = v5 / ((v2 - 1) * v2);
    }
  }

  v6 = *(a2 + 152);
  if (v6 >= 2)
  {
    v7 = (v6 * *(a2 + 108)) - (*(a2 + 104) * *(a2 + 104));
    if (v7 >= 0.0)
    {
      v3 = v7 / ((v6 - 1) * v6);
    }
  }

  v8 = *(a2 + 224);
  v9 = 0.0;
  if (v8 >= 2)
  {
    v10 = (v8 * *(a2 + 180)) - (*(a2 + 176) * *(a2 + 176));
    if (v10 >= 0.0)
    {
      v9 = v10 / ((v8 - 1) * v8);
    }
  }

  *result = &unk_1F0E33E90;
  *(result + 8) = v4;
  *(result + 12) = v3;
  *(result + 16) = v9;
  return result;
}

void sub_19B754B68(uint64_t a1, int a2)
{
  if (a2)
  {
    *(a1 + 960) = 0;
  }

  *(a1 + 952) = 0;
  *(a1 + 1032) = 0;
  sub_19B43FA98((a1 + 736));
  sub_19B43FA98((a1 + 808));

  sub_19B43FA98((a1 + 880));
}

uint64_t sub_19B754BBC(uint64_t result, void *a2)
{
  v2 = a2[10];
  v3 = 0;
  v4 = 0;
  if (v2)
  {
    v4 = *(*(a2[6] + (((v2 + a2[9] - 1) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v2 + a2[9] - 1) & 0x3FF));
  }

  v5 = a2[19];
  if (v5)
  {
    v3 = *(*(a2[15] + (((v5 + a2[18] - 1) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v5 + a2[18] - 1) & 0x3FF));
  }

  v6 = a2[28];
  if (v6)
  {
    v7 = *(*(a2[24] + (((v6 + a2[27] - 1) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v6 + a2[27] - 1) & 0x3FF));
  }

  else
  {
    v7 = 0;
  }

  *result = &unk_1F0E33E90;
  *(result + 8) = v4;
  *(result + 12) = v3;
  *(result + 16) = v7;
  return result;
}

BOOL sub_19B754C78(unsigned __int8 *a1, unsigned int *a2, void *a3)
{
  v213 = *MEMORY[0x1E69E9840];
  *(a1 + 250) = 0;
  v5 = *(a1 + 13);
  v6 = 0.0;
  v7 = 0.0;
  if (v5)
  {
    v7 = *(*(*(a1 + 9) + (((v5 + *(a1 + 12) - 1) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v5 + *(a1 + 12) - 1) & 0x3FF));
  }

  v8 = *(a1 + 22);
  if (v8)
  {
    v6 = *(*(*(a1 + 18) + (((v8 + *(a1 + 21) - 1) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v8 + *(a1 + 21) - 1) & 0x3FF));
  }

  v9 = *(a1 + 31);
  if (v9)
  {
    v10 = *(*(*(a1 + 27) + (((v9 + *(a1 + 30) - 1) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v9 + *(a1 + 30) - 1) & 0x3FF));
  }

  else
  {
    v10 = 0.0;
  }

  v172 = v7;
  v173 = v6;
  v174 = v10;
  if (a1[965] == 1 && *(a1 + 126) > 0.0)
  {
    a1[961] = 0;
    if (qword_1ED71C7B0 != -1)
    {
      dispatch_once(&qword_1ED71C7B0, &unk_1F0E2A360);
    }

    v11 = off_1ED71C7C0;
    if (os_log_type_enabled(off_1ED71C7C0, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218496;
      *&buf[4] = v172;
      *&buf[12] = 2048;
      *&buf[14] = v173;
      *&buf[22] = 2048;
      *&buf[24] = v174;
      _os_log_impl(&dword_19B41C000, v11, OS_LOG_TYPE_DEBUG, "onStartup, x, %.3f, y, %.3f, z, %.3f", buf, 0x20u);
    }

    v12 = sub_19B420058();
    if (*(v12 + 160) > 1 || *(v12 + 164) > 1 || *(v12 + 168) > 1 || (v13 = 0.0, *(v12 + 152)))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7B0 != -1)
      {
        dispatch_once(&qword_1ED71C7B0, &unk_1F0E2A360);
      }

      *v179 = 134218496;
      *&v179[4] = v172;
      *&v179[12] = 2048;
      *&v179[14] = v173;
      *&v179[22] = 2048;
      *&v179[24] = v174;
      v14 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "void CLOrientationDetector::calcCurrentOrientation()", "CoreLocation: %s\n", v14);
      if (v14 != buf)
      {
        free(v14);
      }

      v13 = 0.0;
    }

    goto LABEL_199;
  }

  v15 = 0.0;
  v16 = 0.0;
  if (v5)
  {
    v16 = *(a1 + 14) / v5;
  }

  if (v8)
  {
    v15 = *(a1 + 32) / v8;
  }

  if (v9)
  {
    v17 = *(a1 + 50) / v9;
  }

  else
  {
    v17 = 0.0;
  }

  v172 = v16;
  v173 = v15;
  v174 = v17;
  v18 = ((v15 * v15) + (v16 * v16)) + (v17 * v17);
  if (v5 >= *(a1 + 6))
  {
    v19 = 0.0;
    v20 = 0.0;
    if (v5 >= 2)
    {
      v21 = (v5 * *(a1 + 15)) - (*(a1 + 14) * *(a1 + 14));
      v20 = 0.0;
      if (v21 >= 0.0)
      {
        v20 = v21 / ((v5 - 1) * v5);
      }
    }

    if (v8 >= 2)
    {
      v22 = (v8 * *(a1 + 33)) - (*(a1 + 32) * *(a1 + 32));
      if (v22 >= 0.0)
      {
        v19 = v22 / ((v8 - 1) * v8);
      }
    }

    v23 = 0.0;
    if (v9 >= 2)
    {
      v24 = (v9 * *(a1 + 51)) - (*(a1 + 50) * *(a1 + 50));
      if (v24 >= 0.0)
      {
        v23 = v24 / ((v9 - 1) * v9);
      }
    }

    v175 = &unk_1F0E33E90;
    v176 = v20;
    v177 = v19;
    v178 = v23;
    if (v20 >= v19)
    {
      v19 = v20;
    }

    if (v19 >= v23)
    {
      v13 = v19;
    }

    else
    {
      v13 = v23;
    }

    if (qword_1ED71C7B0 != -1)
    {
      dispatch_once(&qword_1ED71C7B0, &unk_1F0E2A360);
    }

    v25 = off_1ED71C7C0;
    if (os_log_type_enabled(off_1ED71C7C0, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134219776;
      *&buf[4] = v176;
      *&buf[12] = 2048;
      *&buf[14] = v177;
      *&buf[22] = 2048;
      *&buf[24] = v178;
      *&buf[32] = 2048;
      *&buf[34] = v172;
      v197 = 2048;
      v198 = v173;
      v199 = 2048;
      v200 = v174;
      v201 = 2048;
      v202 = v13;
      v203 = 2048;
      *v204 = v18;
      _os_log_impl(&dword_19B41C000, v25, OS_LOG_TYPE_DEBUG, "acc variance, %.3f, %.3f, %.3f, acc mean, %.3f, %.3f, %.3f, maxVar, %.3f, mag2,%.3f", buf, 0x52u);
    }

    v26 = sub_19B420058();
    if (*(v26 + 160) > 1 || *(v26 + 164) > 1 || *(v26 + 168) > 1 || *(v26 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7B0 != -1)
      {
        dispatch_once(&qword_1ED71C7B0, &unk_1F0E2A360);
      }

      *v179 = 134219776;
      *&v179[4] = v176;
      *&v179[12] = 2048;
      *&v179[14] = v177;
      *&v179[22] = 2048;
      *&v179[24] = v178;
      *&v179[32] = 2048;
      *&v179[34] = v172;
      v180 = 2048;
      v181 = v173;
      v182 = 2048;
      v183 = v174;
      v184 = 2048;
      v185 = v13;
      v186 = 2048;
      *v187 = v18;
      v27 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "float CLOrientationDetector::getAccStats(CLVector3d<float> &, float &)", "CoreLocation: %s\n", v27);
      if (v27 != buf)
      {
        free(v27);
      }
    }
  }

  else
  {
    v13 = 3.4028e38;
  }

  v28 = fabsf(v18 + -1.0);
  if (a1[16] == 1)
  {
    v29 = fabsf(v174);
    if (a1[963])
    {
      if (v29 > 0.925)
      {
        goto LABEL_67;
      }

      if ((*(a1 + 257) * 3.5) < v13)
      {
        goto LABEL_66;
      }

      v30 = 0.0;
      if (fabsf(*(a1 + 239)) > 80.0)
      {
        v30 = 1.0;
      }

      if (((v30 * 0.1) + 0.3) < v28)
      {
LABEL_66:
        v31 = *(a1 + 109);
        if (!v31 || *(*(*(a1 + 105) + (((v31 + *(a1 + 108) - 1) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v31 + *(a1 + 108) - 1) & 0x3FF)) < 90.0)
        {
LABEL_67:
          *(a1 + 963) = 256;
          v32 = *(a1 + 239) * 0.8;
          *(a1 + 239) = v32;
          --*(a1 + 238);
          if (qword_1ED71C7B0 != -1)
          {
            dispatch_once(&qword_1ED71C7B0, &unk_1F0E2A360);
          }

          v33 = off_1ED71C7C0;
          if (os_log_type_enabled(off_1ED71C7C0, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_impl(&dword_19B41C000, v33, OS_LOG_TYPE_DEBUG, "Nixed rotationAroundZ state.", buf, 2u);
          }

          v34 = sub_19B420058();
          if (*(v34 + 160) > 1 || *(v34 + 164) > 1 || *(v34 + 168) > 1 || *(v34 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1ED71C7B0 != -1)
            {
              dispatch_once(&qword_1ED71C7B0, &unk_1F0E2A360);
            }

            *v179 = 0;
            v35 = _os_log_send_and_compose_impl();
            sub_19B6BB7CC("Generic", 1, 0, 2, "void CLOrientationDetector::nixRotationAroundZIfNecessary(float, float, float)", "CoreLocation: %s\n", v35);
            if (v35 != buf)
            {
              free(v35);
            }
          }
        }
      }

      v36 = *(a1 + 42);
      v37 = 0;
      v38 = 0;
      if (v36)
      {
        v38 = *(*(*(a1 + 38) + (((v36 + *(a1 + 41) - 1) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v36 + *(a1 + 41) - 1) & 0x3FF));
      }

      v39 = *(a1 + 51);
      if (v39)
      {
        v37 = *(*(*(a1 + 47) + (((v39 + *(a1 + 50) - 1) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v39 + *(a1 + 50) - 1) & 0x3FF));
      }

      v40 = *(a1 + 60);
      if (v40)
      {
        v41 = *(*(*(a1 + 56) + (((v40 + *(a1 + 59) - 1) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v40 + *(a1 + 59) - 1) & 0x3FF));
      }

      else
      {
        v41 = 0.0;
      }

      *buf = &unk_1F0E33E90;
      *&buf[8] = v38;
      *&buf[12] = v37;
      *&buf[16] = v41;
      if (fabsf(v41) > 30.0)
      {
        v45 = *(a1 + 31);
        v46 = v45 ? *(*(*(a1 + 27) + (((v45 + *(a1 + 30) - 1) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v45 + *(a1 + 30) - 1) & 0x3FF)) : 0.0;
        if (fabsf(v46) < 0.9)
        {
          v47 = *(a1 + 13);
          v48 = *(a1 + 22);
          v49 = 0.0;
          v50 = 0.0;
          if (v47)
          {
            v50 = *(*(*(a1 + 9) + (((v47 + *(a1 + 12) - 1) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v47 + *(a1 + 12) - 1) & 0x3FF));
          }

          if (v48)
          {
            v49 = *(*(*(a1 + 18) + (((v48 + *(a1 + 21) - 1) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v48 + *(a1 + 21) - 1) & 0x3FF));
          }

          if (v45)
          {
            v51 = *(*(*(a1 + 27) + (((v45 + *(a1 + 30) - 1) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v45 + *(a1 + 30) - 1) & 0x3FF));
          }

          else
          {
            v51 = 0.0;
          }

          v172 = v50;
          v173 = v49;
          v174 = v51;
          a1[962] = 0;
          *(a1 + 245) = 1055286886;
          if (qword_1ED71C7B0 != -1)
          {
            dispatch_once(&qword_1ED71C7B0, &unk_1F0E2A360);
          }

          v52 = off_1ED71C7C0;
          if (os_log_type_enabled(off_1ED71C7C0, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_impl(&dword_19B41C000, v52, OS_LOG_TYPE_DEBUG, "Ready for orientation change via rotation", buf, 2u);
          }

          v53 = sub_19B420058();
          if (*(v53 + 160) > 1 || *(v53 + 164) > 1 || *(v53 + 168) > 1 || *(v53 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1ED71C7B0 != -1)
            {
              dispatch_once(&qword_1ED71C7B0, &unk_1F0E2A360);
            }

            *v179 = 0;
            v44 = _os_log_send_and_compose_impl();
            sub_19B6BB7CC("Generic", 1, 0, 2, "void CLOrientationDetector::setUpForOrienationChangeViaRotation(CLVector3d<float> &)", "CoreLocation: %s\n", v44);
LABEL_125:
            if (v44 != buf)
            {
              free(v44);
            }
          }
        }
      }
    }

    else
    {
      if (*(a1 + 257) <= v13)
      {
        goto LABEL_127;
      }

      if (v29 >= 0.85 || *(a1 + 251))
      {
        if (v29 > 0.9)
        {
          *(a1 + 251) = 0;
        }
      }

      else
      {
        *(a1 + 251) = 1;
        if (qword_1ED71C7B0 != -1)
        {
          dispatch_once(&qword_1ED71C7B0, &unk_1F0E2A360);
        }

        v42 = off_1ED71C7C0;
        if (os_log_type_enabled(off_1ED71C7C0, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&dword_19B41C000, v42, OS_LOG_TYPE_DEBUG, "Setting lastPrimaryOrientation.", buf, 2u);
        }

        v43 = sub_19B420058();
        if (*(v43 + 160) > 1 || *(v43 + 164) > 1 || *(v43 + 168) > 1 || *(v43 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1ED71C7B0 != -1)
          {
            dispatch_once(&qword_1ED71C7B0, &unk_1F0E2A360);
          }

          *v179 = 0;
          v44 = _os_log_send_and_compose_impl();
          sub_19B6BB7CC("Generic", 1, 0, 2, "void CLOrientationDetector::updateLastPrimaryOrientationForZStats(float, float)", "CoreLocation: %s\n", v44);
          goto LABEL_125;
        }
      }
    }
  }

LABEL_127:
  a1[961] = 1;
  v54 = 1.0;
  v55 = 1.5;
  if (*a1)
  {
    v55 = 1.0;
  }

  if ((a1[963] & 1) == 0)
  {
    if (!*a1)
    {
      v54 = 2.25;
    }

    if ((v54 * *(a1 + 256)) <= v13 || (v55 * 0.15) <= v28)
    {
      if ((v55 * 0.3) > v28)
      {
        v58 = v54 * *(a1 + 257);
        if (v58 > v13)
        {
          if (a1[964])
          {
            goto LABEL_135;
          }

          goto LABEL_140;
        }

        if (*(a1 + 13) >= *(a1 + 6) && fabsf(v174) < 0.95 && (fabsf(v172) > 0.45 || fabsf(v173) > 0.45) && v58 * 4.0 > v13)
        {
LABEL_140:
          v56 = 0;
          v57 = 0;
          ++*(a1 + 244);
          goto LABEL_147;
        }
      }

      v56 = 0;
      v57 = 1;
      goto LABEL_147;
    }
  }

  if (a1[964])
  {
LABEL_135:
    v56 = 0;
    v57 = 0;
    goto LABEL_147;
  }

  v57 = 0;
  a1[961] = 0;
  *(a1 + 244) = 0;
  v56 = 1;
LABEL_147:
  if (a1[16] != 1 || *(a1 + 42) < *(a1 + 35))
  {
    goto LABEL_184;
  }

  v59 = *(a1 + 71);
  if (v59 < *(a1 + 64))
  {
    v56 = 1;
  }

  if ((v56 & 1) != 0 || (v60 = *(a1 + 244), v60 >= 4 * (*(a1 + 1) / 10.0)))
  {
LABEL_184:
    if (!v57)
    {
      goto LABEL_197;
    }
  }

  else
  {
    v61 = 0.0;
    v62 = 0.0;
    if (v59 >= 2)
    {
      v63 = (v59 * *(a1 + 131)) - (*(a1 + 130) * *(a1 + 130));
      v62 = 0.0;
      if (v63 >= 0.0)
      {
        v62 = v63 / ((v59 - 1) * v59);
      }
    }

    v64 = *(a1 + 80);
    if (v64 >= 2)
    {
      v65 = (v64 * *(a1 + 149)) - (*(a1 + 148) * *(a1 + 148));
      if (v65 >= 0.0)
      {
        v61 = v65 / ((v64 - 1) * v64);
      }
    }

    v66 = *(a1 + 89);
    v67 = 0.0;
    if (v66 >= 2)
    {
      v68 = (v66 * *(a1 + 167)) - (*(a1 + 166) * *(a1 + 166));
      if (v68 >= 0.0)
      {
        v67 = v68 / ((v66 - 1) * v66);
      }
    }

    *buf = &unk_1F0E33E90;
    *&buf[8] = v62;
    *&buf[12] = v61;
    *&buf[16] = v67;
    if (v62 >= v61)
    {
      v61 = v62;
    }

    if (v61 >= v67)
    {
      v69 = v61;
    }

    else
    {
      v69 = v67;
    }

    if (v28 < 0.45 && (*(a1 + 257) * 4.0) > v13 && v69 < 2000.0)
    {
      sub_19B754A20(v179, (a1 + 488));
      v70 = fabsf(*&v179[8]);
      v71 = fabsf(*&v179[12]);
      v72 = fabsf(*&v179[16]);
      if (v70 < v71)
      {
        v70 = v71;
      }

      if (v70 < v72)
      {
        v70 = v72;
      }

      if (v70 < 30.0 || v69 < 800.0 && v70 < 60.0)
      {
        sub_19B754BBC(&v175, a1 + 32);
        v73 = fabsf(v176);
        v74 = fabsf(v177);
        v75 = fabsf(v178);
        if (v73 < v74)
        {
          v73 = v74;
        }

        if (v73 < v75)
        {
          v73 = v75;
        }

        if (a1[964] != 1 || v73 < 175.0)
        {
          *(a1 + 244) = v60 + 2;
        }

        goto LABEL_197;
      }
    }

    if ((v57 & 1) == 0)
    {
      goto LABEL_197;
    }
  }

  *(a1 + 244) = 0;
  if (qword_1ED71C7B0 != -1)
  {
    dispatch_once(&qword_1ED71C7B0, &unk_1F0E2A360);
  }

  v76 = off_1ED71C7C0;
  if (os_log_type_enabled(off_1ED71C7C0, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v76, OS_LOG_TYPE_DEBUG, "Resetting stable count", buf, 2u);
  }

  v77 = sub_19B420058();
  if (*(v77 + 160) > 1 || *(v77 + 164) > 1 || *(v77 + 168) > 1 || *(v77 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C7B0 != -1)
    {
      dispatch_once(&qword_1ED71C7B0, &unk_1F0E2A360);
    }

    *v179 = 0;
    v78 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "BOOL CLOrientationDetector::deviceIsMoving(const CLVector3d<float> &, float, float)", "CoreLocation: %s\n", v78);
    if (v78 != buf)
    {
      free(v78);
    }
  }

LABEL_197:
  if (a1[961] == 1)
  {
    a1[962] = 1;
    if (*(a1 + 244) < (4 * (*(a1 + 1) / 10.0)))
    {
      goto LABEL_384;
    }
  }

LABEL_199:
  v79 = *a1;
  if (*a1)
  {
    v80 = 0.45;
    if (a1[962])
    {
      v80 = 0.5;
    }

    v81 = *(a1 + 245);
    if (v81 <= v80)
    {
      v82 = v80;
    }

    else
    {
      v82 = (v81 + v80) * 0.5;
    }

    *(a1 + 245) = v82;
    v83 = 0.35;
  }

  else
  {
    v82 = 0.5;
    v83 = 0.4;
  }

  if (v173 < 0.0)
  {
    v84 = 1;
  }

  else
  {
    v84 = 2;
  }

  if (v173 <= 0.0)
  {
    v85 = -v173;
  }

  else
  {
    v85 = v173;
  }

  if (v172 < 0.0)
  {
    v86 = 3;
  }

  else
  {
    v86 = 4;
  }

  if (v172 <= 0.0)
  {
    v87 = -v172;
  }

  else
  {
    v87 = v172;
  }

  if (v85 > v87)
  {
    if (!a1[963] || (v88 = 0.5, v87 >= 0.5) || (a1[961] & 1) != 0 || v174 <= -0.85)
    {
      if (v87 <= 0.15 && v174 >= -0.8)
      {
        v87 = 0.0;
      }

      if (v79 < 2 || v173 < 0.0)
      {
        v88 = v82;
      }

      else
      {
        v83 = v83 + 0.15;
        v88 = v82 + 0.15;
      }
    }

    else
    {
      v87 = 0.0;
      v83 = 0.4;
    }

    if (v85 > v88 && (v85 - v87) > v83)
    {
      *(a1 + 250) = v84;
      v82 = v88;
      goto LABEL_341;
    }

    v82 = v88;
LABEL_303:
    if (*(a1 + 250))
    {
      goto LABEL_341;
    }

    if (a1[16] == 1 && a1[963] == 1)
    {
      v111 = *(a1 + 60);
      v112 = v111 ? *(*(*(a1 + 56) + (((v111 + *(a1 + 59) - 1) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v111 + *(a1 + 59) - 1) & 0x3FF)) : 0.0;
      if (fabsf(v112) > 60.0)
      {
        goto LABEL_341;
      }
    }

    if (v85 >= v87)
    {
      v113 = v85;
    }

    else
    {
      v113 = v87;
    }

    if (v174 <= 0.0)
    {
      if (v174 >= -0.5 || (-v174 - v113) <= 0.4)
      {
        goto LABEL_323;
      }

      v114 = 5;
    }

    else
    {
      if (v174 <= 0.5 || (v174 - v113) <= 0.4)
      {
        goto LABEL_323;
      }

      v114 = 6;
    }

    *(a1 + 250) = v114;
LABEL_323:
    if (qword_1ED71C7B0 != -1)
    {
      dispatch_once(&qword_1ED71C7B0, &unk_1F0E2A360);
    }

    v115 = off_1ED71C7C0;
    v116 = v113;
    if (os_log_type_enabled(off_1ED71C7C0, OS_LOG_TYPE_DEBUG))
    {
      if (v174 <= 0.0)
      {
        v117 = -v174;
      }

      else
      {
        v117 = v174;
      }

      v118 = *(a1 + 250);
      *buf = 134218496;
      *&buf[4] = v117;
      *&buf[12] = 2048;
      *&buf[14] = v116;
      *&buf[22] = 1024;
      *&buf[24] = v118;
      _os_log_impl(&dword_19B41C000, v115, OS_LOG_TYPE_DEBUG, "FaceUp/Down: maxWeight,%.3f, 2ndWeight,%.3f, orientation,%d", buf, 0x1Cu);
    }

    v119 = sub_19B420058();
    if (*(v119 + 160) > 1 || *(v119 + 164) > 1 || *(v119 + 168) > 1 || *(v119 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7B0 != -1)
      {
        dispatch_once(&qword_1ED71C7B0, &unk_1F0E2A360);
      }

      if (v174 <= 0.0)
      {
        v120 = -v174;
      }

      else
      {
        v120 = v174;
      }

      v121 = *(a1 + 250);
      *v179 = 134218496;
      *&v179[4] = v120;
      *&v179[12] = 2048;
      *&v179[14] = v116;
      *&v179[22] = 1024;
      *&v179[24] = v121;
      v122 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "void CLOrientationDetector::calcCurrentOrientation()", "CoreLocation: %s\n", v122);
      if (v122 != buf)
      {
        free(v122);
      }
    }

    goto LABEL_341;
  }

  if (!a1[963] || v85 >= 0.5 || (a1[961] & 1) != 0 || v174 <= -0.85)
  {
    if (v85 <= 0.15 && v174 >= -0.8)
    {
      v85 = 0.0;
    }
  }

  else
  {
    v85 = 0.0;
    v83 = 0.4;
    v82 = 0.5;
  }

  if (v172 >= 0.0 && v79 >= 2 && a1[17] == 1)
  {
    v91 = *(a1 + 126) - *(a1 + 121);
    v92 = 0;
    if (v85 < 0.05 && v174 < -0.9 && v174 > -1.1)
    {
      v170 = v13;
      v93 = &unk_19B7BD608;
      v94 = 320;
      while (1)
      {
        if (*(v93 - 8) == v79 && *(v93 + 5) == a1[1036] && (v91 < 5.0 || (v93[1] & 1) == 0))
        {
          v96 = *(v93 - 1);
          v95 = *v93;
          if (vabds_f32(v87, v96) <= *v93)
          {
            break;
          }
        }

        v93 += 4;
        v94 -= 16;
        if (!v94)
        {
          v92 = 0;
          v13 = v170;
          goto LABEL_257;
        }
      }

      if (qword_1ED71C7B0 != -1)
      {
        dispatch_once(&qword_1ED71C7B0, &unk_1F0E2A360);
      }

      v165 = off_1ED71C7C0;
      v166 = v96;
      v169 = v95;
      if (os_log_type_enabled(off_1ED71C7C0, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134218240;
        *&buf[4] = v166;
        *&buf[12] = 2048;
        *&buf[14] = v95;
        _os_log_impl(&dword_19B41C000, v165, OS_LOG_TYPE_DEBUG, "Within magic angle limits: Threshold %.4f, Delta %.4f", buf, 0x16u);
      }

      v167 = sub_19B420058();
      v13 = v170;
      if (*(v167 + 160) > 1 || *(v167 + 164) > 1 || *(v167 + 168) > 1 || *(v167 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED71C7B0 != -1)
        {
          dispatch_once(&qword_1ED71C7B0, &unk_1F0E2A360);
        }

        *v179 = 134218240;
        *&v179[4] = v166;
        *&v179[12] = 2048;
        *&v179[14] = v169;
        v168 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "static BOOL CLOrientationDetector::withinMagicAngleLimits(FormFactor, BOOL, float, BOOL)", "CoreLocation: %s\n", v168);
        if (v168 != buf)
        {
          free(v168);
        }
      }

      v92 = 1;
    }

LABEL_257:
    if (qword_1ED71C7B0 != -1)
    {
      dispatch_once(&qword_1ED71C7B0, &unk_1F0E2A360);
    }

    v97 = off_1ED71C7C0;
    if (os_log_type_enabled(off_1ED71C7C0, OS_LOG_TYPE_DEBUG))
    {
      v98 = *a1;
      v99 = *(a1 + 126) - *(a1 + 121);
      *buf = 67109632;
      *&buf[4] = v98;
      *&buf[8] = 1024;
      *&buf[10] = v91 < 5.0;
      *&buf[14] = 2048;
      *&buf[16] = v99;
      _os_log_impl(&dword_19B41C000, v97, OS_LOG_TYPE_DEBUG, "Ipad %d: screenJustTurnedOn, %d, deltaTime %.5f", buf, 0x18u);
    }

    v100 = sub_19B420058();
    if (*(v100 + 160) > 1 || *(v100 + 164) > 1 || *(v100 + 168) > 1 || *(v100 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7B0 != -1)
      {
        dispatch_once(&qword_1ED71C7B0, &unk_1F0E2A360);
      }

      v101 = *a1;
      v102 = *(a1 + 126) - *(a1 + 121);
      *v179 = 67109632;
      *&v179[4] = v101;
      *&v179[8] = 1024;
      *&v179[10] = v91 < 5.0;
      *&v179[14] = 2048;
      *&v179[16] = v102;
      v103 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "BOOL CLOrientationDetector::atMagicCoverRestingAngle(const float *, float, float, float)", "CoreLocation: %s\n", v103);
      if (v103 != buf)
      {
        free(v103);
      }
    }

    if (qword_1ED71C7B0 != -1)
    {
      dispatch_once(&qword_1ED71C7B0, &unk_1F0E2A360);
    }

    v104 = off_1ED71C7C0;
    if (os_log_type_enabled(off_1ED71C7C0, OS_LOG_TYPE_DEBUG))
    {
      v105 = a1[962];
      *buf = 67110144;
      *&buf[4] = v91 < 5.0;
      *&buf[8] = 1024;
      *&buf[10] = 0;
      *&buf[14] = 1024;
      *&buf[16] = v92;
      *&buf[20] = 1024;
      *&buf[22] = v105;
      *&buf[26] = 2048;
      *&buf[28] = v13;
      _os_log_impl(&dword_19B41C000, v104, OS_LOG_TYPE_DEBUG, "allowShallow, %d, magicCaseRest, %d, tiltIn, %d, wasMoving, %d, maxVar, %.5f", buf, 0x24u);
    }

    v106 = sub_19B420058();
    if (*(v106 + 160) > 1 || *(v106 + 164) > 1 || *(v106 + 168) > 1 || *(v106 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7B0 != -1)
      {
        dispatch_once(&qword_1ED71C7B0, &unk_1F0E2A360);
      }

      v107 = a1[962];
      *v179 = 67110144;
      *&v179[4] = v91 < 5.0;
      *&v179[8] = 1024;
      *&v179[10] = 0;
      *&v179[14] = 1024;
      *&v179[16] = v92;
      *&v179[20] = 1024;
      *&v179[22] = v107;
      *&v179[26] = 2048;
      *&v179[28] = v13;
      v108 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "BOOL CLOrientationDetector::atMagicCoverRestingAngle(const float *, float, float, float)", "CoreLocation: %s\n", v108);
      if (v108 != buf)
      {
        free(v108);
      }
    }

    if (!v92 || (a1[962] & 1) != 0 || (*(a1 + 256) * 0.025) <= v13)
    {
      if (*(a1 + 124) > 0.0)
      {
        *(a1 + 124) = 0xBFF0000000000000;
      }
    }

    else
    {
      v109 = *(a1 + 124);
      if (v109 < 0.0)
      {
        v109 = *(a1 + 126);
        *(a1 + 124) = v109;
      }

      if ((a1[965] & 1) != 0 || *(a1 + 246) == 4 || *(a1 + 126) - v109 > dbl_19B7BD5F0[*a1 == 2])
      {
        *(a1 + 250) = 4;
        *(a1 + 124) = 0xBFF0000000000000;
        goto LABEL_341;
      }
    }
  }

  if ((v87 - v82) <= 0.0)
  {
    goto LABEL_303;
  }

  if ((v87 - v85) <= v83)
  {
    goto LABEL_303;
  }

  if (*a1 < 2u)
  {
    if ((v87 - v82) <= 0.15)
    {
      goto LABEL_303;
    }

    v110 = *(a1 + 260) + 1;
    *(a1 + 260) = v110;
    if (v110 < (*(a1 + 1) * 0.3))
    {
      goto LABEL_303;
    }
  }

  *(a1 + 250) = v86;
LABEL_341:
  a1[965] = 0;
  if ((a1[961] & 1) == 0)
  {
    a1[962] = 0;
    if (a1[16] == 1 && *a1 >= 2u && *(a1 + 256) > v13)
    {
      v123 = *(a1 + 71);
      v124 = 0.0;
      v125 = 0.0;
      if (v123)
      {
        v125 = *(a1 + 130) / v123;
      }

      v126 = *(a1 + 80);
      if (v126)
      {
        v124 = *(a1 + 148) / v126;
      }

      v127 = *(a1 + 89);
      if (v127)
      {
        v128 = *(a1 + 166) / v127;
      }

      else
      {
        v128 = 0.0;
      }

      *v179 = &unk_1F0E33E90;
      *&v179[8] = v125;
      *&v179[12] = v124;
      *&v179[16] = v128;
      v129 = fabsf(v128);
      v130 = fabsf(v125);
      v131 = fabsf(v124);
      if (v130 >= v131)
      {
        v131 = v130;
      }

      if (v129 >= v131)
      {
        v131 = v129;
      }

      if ((*(a1 + 238) < 2 || *(a1 + 250) == *(a1 + 246)) && (fabsf(v174) > 0.85 || v131 < 30.0))
      {
        sub_19B754B68(a1, 1);
        if (qword_1ED71C7B0 != -1)
        {
          dispatch_once(&qword_1ED71C7B0, &unk_1F0E2A360);
        }

        v132 = off_1ED71C7C0;
        if (os_log_type_enabled(off_1ED71C7C0, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&dword_19B41C000, v132, OS_LOG_TYPE_DEBUG, "Not filling Zrot buffer.", buf, 2u);
        }

        v133 = sub_19B420058();
        if (*(v133 + 160) > 1 || *(v133 + 164) > 1 || *(v133 + 168) > 1 || *(v133 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1ED71C7B0 != -1)
          {
            dispatch_once(&qword_1ED71C7B0, &unk_1F0E2A360);
          }

          LOWORD(v175) = 0;
          v134 = _os_log_send_and_compose_impl();
          sub_19B6BB7CC("Generic", 1, 0, 2, "void CLOrientationDetector::resetZStatsWhenQuiescent(float, float)", "CoreLocation: %s\n", v134);
          if (v134 != buf)
          {
            free(v134);
          }
        }
      }
    }
  }

  if (qword_1ED71C7B0 != -1)
  {
    dispatch_once(&qword_1ED71C7B0, &unk_1F0E2A360);
  }

  v135 = off_1ED71C7C0;
  v136 = v83;
  if (os_log_type_enabled(off_1ED71C7C0, OS_LOG_TYPE_DEBUG))
  {
    v137 = *(a1 + 250);
    v138 = a1[961];
    v139 = a1[962];
    v140 = *(a1 + 246);
    v141 = *(a1 + 244);
    v142 = *(a1 + 126);
    *buf = 134221056;
    *&buf[4] = v136;
    *&buf[12] = 2048;
    *&buf[14] = v82;
    *&buf[22] = 2048;
    *&buf[24] = v172;
    *&buf[32] = 2048;
    *&buf[34] = v173;
    v197 = 2048;
    v198 = v174;
    v199 = 2048;
    v200 = (v85 - v87);
    v201 = 2048;
    v202 = v85;
    v203 = 1024;
    *v204 = v137;
    *&v204[4] = 1024;
    *&v204[6] = v138;
    v205 = 1024;
    v206 = v139;
    v207 = 1024;
    v208 = v140;
    v209 = 1024;
    v210 = v141;
    v211 = 2048;
    v212 = v142;
    _os_log_impl(&dword_19B41C000, v135, OS_LOG_TYPE_DEBUG, "deltaWeightThreshold, %.3f, tiltWeightTheshold, %.3f, currAcc, %.3f, %.3f, %.3f, deltaWeight, %.3f, tilt, %.3f, fCurrentOrientation, %d, isMoving, %d, wasMoving, %d, fLastClearOrientation, %d, fStableCount, %d, DetectionTime, %f", buf, 0x70u);
  }

  v143 = sub_19B420058();
  if (*(v143 + 160) > 1 || *(v143 + 164) > 1 || *(v143 + 168) > 1 || *(v143 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C7B0 != -1)
    {
      dispatch_once(&qword_1ED71C7B0, &unk_1F0E2A360);
    }

    v144 = *(a1 + 250);
    v145 = a1[961];
    v146 = a1[962];
    v147 = *(a1 + 246);
    v148 = *(a1 + 244);
    v149 = *(a1 + 126);
    *v179 = 134221056;
    *&v179[4] = v136;
    *&v179[12] = 2048;
    *&v179[14] = v82;
    *&v179[22] = 2048;
    *&v179[24] = v172;
    *&v179[32] = 2048;
    *&v179[34] = v173;
    v180 = 2048;
    v181 = v174;
    v182 = 2048;
    v183 = (v85 - v87);
    v184 = 2048;
    v185 = v85;
    v186 = 1024;
    *v187 = v144;
    *&v187[4] = 1024;
    *&v187[6] = v145;
    v188 = 1024;
    v189 = v146;
    v190 = 1024;
    v191 = v147;
    v192 = 1024;
    v193 = v148;
    v194 = 2048;
    v195 = v149;
    v150 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CLOrientationDetector::calcCurrentOrientation()", "CoreLocation: %s\n", v150);
    if (v150 != buf)
    {
      free(v150);
    }
  }

LABEL_384:
  v151 = *(a1 + 250);
  *a2 = v151;
  if (v151)
  {
    *(a1 + 260) = 0;
    v152 = a3;
  }

  else
  {
    v164 = *(a1 + 246);
    v152 = a3;
    if (v164 && v164 != 7)
    {
      *a2 = v164;
      v151 = v164;
    }
  }

  v153 = *(a1 + 246);
  *v152 = *(a1 + 126);
  if (v151 != v153)
  {
    if (qword_1ED71C7B0 != -1)
    {
      dispatch_once(&qword_1ED71C7B0, &unk_1F0E2A360);
    }

    v154 = off_1ED71C7C0;
    if (os_log_type_enabled(off_1ED71C7C0, OS_LOG_TYPE_DEFAULT))
    {
      v155 = sub_19B449494(*(a1 + 246));
      v156 = sub_19B449494(*a2);
      *buf = 136446466;
      *&buf[4] = v155;
      *&buf[12] = 2082;
      *&buf[14] = v156;
      _os_log_impl(&dword_19B41C000, v154, OS_LOG_TYPE_DEFAULT, "Notify from, %{public}s -> %{public}s ", buf, 0x16u);
    }

    v157 = sub_19B420058();
    if (*(v157 + 160) > 1 || *(v157 + 164) > 1 || *(v157 + 168) > 1 || *(v157 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7B0 != -1)
      {
        dispatch_once(&qword_1ED71C7B0, &unk_1F0E2A360);
      }

      v158 = sub_19B449494(*(a1 + 246));
      v159 = sub_19B449494(*a2);
      *v179 = 136446466;
      *&v179[4] = v158;
      *&v179[12] = 2082;
      *&v179[14] = v159;
      v160 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "BOOL CLOrientationDetector::calcOrientation(CMDeviceOrientationType &, CLMotionTypeTimestamp &)", "CoreLocation: %s\n", v160);
      if (v160 != buf)
      {
        free(v160);
      }
    }

    *(a1 + 246) = *(a1 + 250);
    *(a1 + 245) = 1055286886;
    a1[962] = 0;
    sub_19B754B68(a1, 1);
    v161 = *(a1 + 250);
    if ((v161 - 5) < 2)
    {
      v161 = 0;
    }

    *(a1 + 251) = v161;
  }

  result = v151 != v153;
  v163 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19B75709C(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  if (qword_1ED71C7B0 != -1)
  {
    dispatch_once(&qword_1ED71C7B0, &unk_1F0E2A360);
  }

  v2 = off_1ED71C7C0;
  if (os_log_type_enabled(off_1ED71C7C0, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v2, OS_LOG_TYPE_INFO, "Disabling gyro.", buf, 2u);
  }

  v3 = sub_19B420058();
  if (*(v3 + 160) > 1 || *(v3 + 164) > 1 || *(v3 + 168) > 1 || *(v3 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C7B0 != -1)
    {
      dispatch_once(&qword_1ED71C7B0, &unk_1F0E2A360);
    }

    v4 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CLOrientationDetector::disableGyro()", "CoreLocation: %s\n", v4);
    if (v4 != buf)
    {
      free(v4);
    }
  }

  if (*(a1 + 16) == 1)
  {
    *(a1 + 16) = 0;
    sub_19B43FA98((a1 + 272));
    sub_19B43FA98((a1 + 344));
    sub_19B43FA98((a1 + 416));
    sub_19B43FA98((a1 + 504));
    sub_19B43FA98((a1 + 576));
    sub_19B43FA98((a1 + 648));
    sub_19B754B68(a1, 1);
  }

  v5 = *MEMORY[0x1E69E9840];
}

void sub_19B757298(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  if (qword_1ED71C7B0 != -1)
  {
    dispatch_once(&qword_1ED71C7B0, &unk_1F0E2A360);
  }

  v2 = off_1ED71C7C0;
  if (os_log_type_enabled(off_1ED71C7C0, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v2, OS_LOG_TYPE_INFO, "Enabling gyro.", buf, 2u);
  }

  v3 = sub_19B420058();
  if (*(v3 + 160) > 1 || *(v3 + 164) > 1 || *(v3 + 168) > 1 || *(v3 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C7B0 != -1)
    {
      dispatch_once(&qword_1ED71C7B0, &unk_1F0E2A360);
    }

    v4 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CLOrientationDetector::enableGyro()", "CoreLocation: %s\n", v4);
    if (v4 != buf)
    {
      free(v4);
    }
  }

  *(a1 + 1016) = 0xBFF0000000000000;
  *(a1 + 16) = 1;
  v5 = *MEMORY[0x1E69E9840];
}

os_log_t sub_19B757458()
{
  result = os_log_create("com.apple.locationd.Motion", "Orientation");
  off_1ED71C7C0 = result;
  return result;
}

void sub_19B757FA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x19EAE76F0](v20, v19);
  _Unwind_Resume(a1);
}

void sub_19B757FD0(uint64_t a1, CLConnectionMessage **a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DFD8];
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v7 = objc_msgSend_setWithObjects_(v3, v6, v4, v5, 0);
  if (*a2)
  {
    DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v7);
    v10 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v9, @"CMErrorMessage");
  }

  else
  {
    DictionaryOfClasses = 0;
    v10 = objc_msgSend_objectForKeyedSubscript_(0, v7, @"CMErrorMessage");
  }

  if (!DictionaryOfClasses || !v10)
  {
    if (qword_1EAFE2988 != -1)
    {
      dispatch_once(&qword_1EAFE2988, &unk_1F0E3B598);
    }

    v17 = qword_1EAFE2990;
    if (os_log_type_enabled(qword_1EAFE2990, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v17, OS_LOG_TYPE_ERROR, "Invalid service response.", buf, 2u);
    }

    v18 = sub_19B420058();
    if ((*(v18 + 160) & 0x80000000) == 0 || (*(v18 + 164) & 0x80000000) == 0 || (*(v18 + 168) & 0x80000000) == 0 || *(v18 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2988 == -1)
      {
        goto LABEL_26;
      }

      goto LABEL_68;
    }

    goto LABEL_28;
  }

  v13 = objc_msgSend_integerValue(v10, v11, v12);
  v14 = v13;
  if (v13 > 108)
  {
    if (v13 == 110)
    {
      if (qword_1EAFE2988 != -1)
      {
        dispatch_once(&qword_1EAFE2988, &unk_1F0E3B598);
      }

      v25 = qword_1EAFE2990;
      if (os_log_type_enabled(qword_1EAFE2990, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v25, OS_LOG_TYPE_ERROR, "Not entitled to manage the AOP service.", buf, 2u);
      }

      v26 = sub_19B420058();
      if ((*(v26 + 160) & 0x80000000) != 0 && (*(v26 + 164) & 0x80000000) != 0 && (*(v26 + 168) & 0x80000000) != 0 && !*(v26 + 152))
      {
        goto LABEL_28;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2988 != -1)
      {
        goto LABEL_68;
      }
    }

    else
    {
      if (v13 != 109)
      {
LABEL_40:
        if (qword_1EAFE2988 != -1)
        {
          dispatch_once(&qword_1EAFE2988, &unk_1F0E3B598);
        }

        v23 = qword_1EAFE2990;
        if (os_log_type_enabled(qword_1EAFE2990, OS_LOG_TYPE_ERROR))
        {
          *buf = 134349056;
          v28 = v14;
          _os_log_impl(&dword_19B41C000, v23, OS_LOG_TYPE_ERROR, "Service request failed! error,%{public}ld", buf, 0xCu);
        }

        v24 = sub_19B420058();
        if ((*(v24 + 160) & 0x80000000) != 0 && (*(v24 + 164) & 0x80000000) != 0 && (*(v24 + 168) & 0x80000000) != 0 && !*(v24 + 152))
        {
          goto LABEL_28;
        }

        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2988 != -1)
        {
          goto LABEL_68;
        }

        goto LABEL_26;
      }

      if (qword_1EAFE2988 != -1)
      {
        dispatch_once(&qword_1EAFE2988, &unk_1F0E3B598);
      }

      v21 = qword_1EAFE2990;
      if (os_log_type_enabled(qword_1EAFE2990, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v21, OS_LOG_TYPE_ERROR, "Service is not available!", buf, 2u);
      }

      v22 = sub_19B420058();
      if ((*(v22 + 160) & 0x80000000) != 0 && (*(v22 + 164) & 0x80000000) != 0 && (*(v22 + 168) & 0x80000000) != 0 && !*(v22 + 152))
      {
        goto LABEL_28;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2988 != -1)
      {
        goto LABEL_68;
      }
    }

LABEL_26:
    v19 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 0, "[CMMagicMountManagerInternal connect]_block_invoke", "CoreLocation: %s\n", v19);
    if (v19 != buf)
    {
      free(v19);
    }

    goto LABEL_28;
  }

  if (v13 == 100)
  {
    goto LABEL_28;
  }

  if (v13 != 108)
  {
    goto LABEL_40;
  }

  if (qword_1EAFE2988 != -1)
  {
    dispatch_once(&qword_1EAFE2988, &unk_1F0E3B598);
  }

  v15 = qword_1EAFE2990;
  if (os_log_type_enabled(qword_1EAFE2990, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v15, OS_LOG_TYPE_ERROR, "Unable to communicate with AOP service!", buf, 2u);
  }

  v16 = sub_19B420058();
  if ((*(v16 + 160) & 0x80000000) == 0 || (*(v16 + 164) & 0x80000000) == 0 || (*(v16 + 168) & 0x80000000) == 0 || *(v16 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2988 == -1)
    {
      goto LABEL_26;
    }

LABEL_68:
    dispatch_once(&qword_1EAFE2988, &unk_1F0E3B598);
    goto LABEL_26;
  }

LABEL_28:
  v20 = *MEMORY[0x1E69E9840];
}

void sub_19B7585D8(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  if (*(*(a1 + 32) + 64) == 1)
  {
    if (qword_1EAFE2988 != -1)
    {
      dispatch_once(&qword_1EAFE2988, &unk_1F0E3B598);
    }

    v2 = qword_1EAFE2990;
    if (os_log_type_enabled(qword_1EAFE2990, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v2, OS_LOG_TYPE_INFO, "Connection interrupted! Resending service request.", buf, 2u);
    }

    v3 = sub_19B420058();
    if (*(v3 + 160) > 1 || *(v3 + 164) > 1 || *(v3 + 168) > 1 || *(v3 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2988 != -1)
      {
        dispatch_once(&qword_1EAFE2988, &unk_1F0E3B598);
      }

      v8 = 0;
      v4 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMagicMountManagerInternal connect]_block_invoke", "CoreLocation: %s\n", v4);
      if (v4 != buf)
      {
        free(v4);
      }
    }

    *(*(a1 + 32) + 64) = 0;
    v5 = sub_19B420D84();
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_19B7587F8;
    v7[3] = &unk_1E7532988;
    v7[4] = *(a1 + 32);
    sub_19B421668(v5, v7);
  }

  v6 = *MEMORY[0x1E69E9840];
}

uint64_t sub_19B7587F8(uint64_t result, const char *a2, uint64_t a3)
{
  v3 = *(result + 32);
  if ((*(v3 + 64) & 1) == 0)
  {
    *(v3 + 64) = 1;
    return objc_msgSend_sendServiceRequestPrivate(*(result + 32), a2, a3);
  }

  return result;
}

void sub_19B758918(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13)
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

void sub_19B758BBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    sub_19B41FFEC(a15);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B758CE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_19B758D00(uint64_t a1, const char *a2, uint64_t a3)
{
  result = objc_msgSend_initPrivate(*(a1 + 32), a2, a3);
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

void sub_19B758E70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19B759E44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__n128 sub_19B759E5C(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[3] = result;
  return result;
}

__n128 sub_19B759E6C(uint64_t a1)
{
  result = *(*(*(a1 + 32) + 8) + 8);
  *(*(*(a1 + 40) + 8) + 48) = result;
  return result;
}

void sub_19B759FA4(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 8);
  if (qword_1EAFE2988 != -1)
  {
    dispatch_once(&qword_1EAFE2988, &unk_1F0E3B598);
  }

  v3 = qword_1EAFE2990;
  if (os_log_type_enabled(qword_1EAFE2990, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    *buf = 134349312;
    v24 = v4;
    v25 = 2050;
    v26 = v5;
    _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_DEFAULT, "Feeding mountStatus=%{public}ld timestamp,%{public}f", buf, 0x16u);
  }

  v6 = sub_19B420058();
  if (*(v6 + 160) > 1 || *(v6 + 164) > 1 || *(v6 + 168) > 1 || *(v6 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2988 != -1)
    {
      dispatch_once(&qword_1EAFE2988, &unk_1F0E3B598);
    }

    v19 = *(a1 + 40);
    v21 = *(a1 + 48);
    v9 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMagicMountManager feedMountStatus:apAwake:simulated:timestamp:]_block_invoke", "CoreLocation: %s\n", v9);
    if (v9 != buf)
    {
      free(v9);
    }
  }

  v10 = *(v2 + 8);
  v11 = *(a1 + 40);
  if (*(v2 + 16) != v11 || *(a1 + 56) != 1 || (*(a1 + 57) & 1) != 0 || v10 == 0.0)
  {
    v12 = *(a1 + 48);
    if (v12 <= v10)
    {
      if (qword_1EAFE2988 != -1)
      {
        dispatch_once(&qword_1EAFE2988, &unk_1F0E3B598);
      }

      v13 = qword_1EAFE2990;
      if (os_log_type_enabled(qword_1EAFE2990, OS_LOG_TYPE_ERROR))
      {
        v14 = *(v2 + 8);
        v15 = *(a1 + 48);
        *buf = 134349312;
        v24 = v14;
        v25 = 2050;
        v26 = v15;
        _os_log_impl(&dword_19B41C000, v13, OS_LOG_TYPE_ERROR, "Invalid magic mount state. Timestamp went backwards! old timestamp,%{public}f, new timestamp %{public}f", buf, 0x16u);
      }

      v16 = sub_19B420058();
      if ((*(v16 + 160) & 0x80000000) == 0 || (*(v16 + 164) & 0x80000000) == 0 || (*(v16 + 168) & 0x80000000) == 0 || *(v16 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2988 != -1)
        {
          dispatch_once(&qword_1EAFE2988, &unk_1F0E3B598);
        }

        v20 = *(v2 + 8);
        v22 = *(a1 + 48);
        v17 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 0, "[CMMagicMountManager feedMountStatus:apAwake:simulated:timestamp:]_block_invoke", "CoreLocation: %s\n", v17);
        if (v17 != buf)
        {
          free(v17);
        }
      }
    }

    else
    {
      *(v2 + 8) = v12;
      *(v2 + 16) = v11;
    }

    objc_msgSend_sendMagicMountStateToClientPrivate(*(a1 + 32), v7, v8);
  }

  v18 = *MEMORY[0x1E69E9840];
}

os_log_t sub_19B75A7FC()
{
  result = os_log_create("com.apple.locationd.Motion", "MagicMount");
  qword_1EAFE2990 = result;
  return result;
}

void sub_19B75A830(uint64_t a1)
{
  sub_19B42A51C(a1);

  JUMPOUT(0x19EAE76F0);
}

void sub_19B75AA50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B75AA98(uint64_t a1, CLConnectionMessage **a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  objc_sync_enter(v4);
  Dictionary = CLConnectionMessage::getDictionary(*a2);
  sub_19B444AA4(v26, Dictionary);
  if ((*(v26[0] + 856))(v26) < 1)
  {
    if (qword_1EAFE2858 != -1)
    {
      dispatch_once(&qword_1EAFE2858, &unk_1F0E3B5B8);
    }

    v15 = qword_1EAFE2878;
    if (os_log_type_enabled(qword_1EAFE2878, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v15, OS_LOG_TYPE_FAULT, "Could not get dictionary for kCLConnectionMessageActivityAlarm", buf, 2u);
    }

    v16 = sub_19B420058();
    if ((*(v16 + 160) & 0x80000000) != 0 && (*(v16 + 164) & 0x80000000) != 0 && (*(v16 + 168) & 0x80000000) != 0 && !*(v16 + 152))
    {
      goto LABEL_28;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2858 != -1)
    {
      dispatch_once(&qword_1EAFE2858, &unk_1F0E3B5B8);
    }

    LOWORD(v23) = 0;
    v17 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 0, "[CMActivityAlarmProxy init]_block_invoke", "CoreLocation: %s\n", v17);
LABEL_26:
    if (v17 != buf)
    {
      free(v17);
    }

    goto LABEL_28;
  }

  v24 = 0;
  v25 = -1;
  v23 = 0xBFF0000000000000;
  if (!sub_19B6E7520(&v25, &v24, &v23, v26))
  {
LABEL_28:
    v11 = 0;
    goto LABEL_29;
  }

  v7 = *(*(a1 + 32) + 32);
  v8 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v6, v25);
  v11 = objc_msgSend_objectForKey_(v7, v9, v8);
  if (!v11)
  {
    if (qword_1EAFE2858 != -1)
    {
      dispatch_once(&qword_1EAFE2858, &unk_1F0E3B5B8);
    }

    v18 = qword_1EAFE2878;
    if (os_log_type_enabled(qword_1EAFE2878, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v18, OS_LOG_TYPE_DEFAULT, "#Warning Did not find the triggered activity alarm in the current set of alarms.", buf, 2u);
    }

    v19 = sub_19B420058();
    if (*(v19 + 160) <= 1 && *(v19 + 164) <= 1 && *(v19 + 168) <= 1 && !*(v19 + 152))
    {
      goto LABEL_28;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2858 != -1)
    {
      dispatch_once(&qword_1EAFE2858, &unk_1F0E3B5B8);
    }

    v17 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMActivityAlarmProxy init]_block_invoke", "CoreLocation: %s\n", v17);
    goto LABEL_26;
  }

  v12 = *(*(a1 + 32) + 32);
  v13 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v10, v25);
  objc_msgSend_removeObjectForKey_(v12, v14, v13);
LABEL_29:
  sub_19B445384(v26);
  objc_sync_exit(v4);
  objc_msgSend_fire(v11, v20, v21);

  v22 = *MEMORY[0x1E69E9840];
}

void sub_19B75AE7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_19B445384(va);
  objc_sync_exit(v7);
  _Unwind_Resume(a1);
}

uint64_t sub_19B75AEB4(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  objc_sync_enter(v2);
  v4 = *(a1 + 32);
  if (*(v4 + 48) == 1)
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    if (objc_msgSend_countByEnumeratingWithState_objects_count_(*(v4 + 32), v3, &v23, v27, 16))
    {
      *v24;
      *v24;
      v5 = **(&v23 + 1);
      sub_19B431640(v22);
      LODWORD(v19) = objc_msgSend_intValue(v5, v6, v7);
      v9 = objc_msgSend_objectForKeyedSubscript_(*(*(a1 + 32) + 32), v8, v5);
      v21 = objc_msgSend_trigger(v9, v10, v11);
      v13 = objc_msgSend_objectForKeyedSubscript_(*(*(a1 + 32) + 32), v12, v5);
      objc_msgSend_duration(v13, v14, v15);
      v20 = v16;
      sub_19B6E74A8(&v19, &v21, &v20, v22);
      LOBYTE(v20) = 1;
      sub_19B5EE5B0(v22, "kCLConnectionMessageSubscribeKey", &v20);
      v19 = v22[1];
      sub_19B6F3270();
    }
  }

  result = objc_sync_exit(v2);
  v18 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19B75B110(uint64_t a1, CLConnectionMessage **a2)
{
  v13 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE2858 != -1)
  {
    dispatch_once(&qword_1EAFE2858, &unk_1F0E3B5B8);
  }

  v3 = qword_1EAFE2878;
  if (os_log_type_enabled(qword_1EAFE2878, OS_LOG_TYPE_DEBUG))
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

    *buf = 136315138;
    v12 = v5;
    _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_DEBUG, "Default handler received message %s", buf, 0xCu);
  }

  v6 = sub_19B420058();
  if (*(v6 + 160) > 1 || *(v6 + 164) > 1 || *(v6 + 168) > 1 || *(v6 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2858 != -1)
    {
      dispatch_once(&qword_1EAFE2858, &unk_1F0E3B5B8);
    }

    v7 = CLConnectionMessage::name(*a2);
    if (*(v7 + 23) < 0)
    {
      v8 = *v7;
    }

    v9 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMActivityAlarmProxy init]_block_invoke", "CoreLocation: %s\n", v9);
    if (v9 != buf)
    {
      free(v9);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

id sub_19B75B438(uint64_t a1)
{
  result = objc_alloc_init(*(a1 + 32));
  qword_1ED71D768 = result;
  return result;
}

void sub_19B75BB40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, std::__shared_weak_count *a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  if (a24)
  {
    sub_19B41FFEC(a24);
  }

  sub_19B445384(&a27);
  objc_sync_exit(v27);
  _Unwind_Resume(a1);
}

os_log_t sub_19B75BBB8()
{
  result = os_log_create("com.apple.locationd.Motion", "ActivityAlarm");
  qword_1EAFE2878 = result;
  return result;
}

void sub_19B75C000(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    sub_19B41FFEC(a15);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B75C884(uint64_t a1)
{
  v2 = *(a1 + 32);
  (*(*(a1 + 40) + 16))();
  v3 = *(a1 + 40);

  _Block_release(v3);
}

void sub_19B75C8D0(uint64_t a1)
{
  v2 = *(a1 + 32);
  (*(*(a1 + 40) + 16))();
  v3 = *(a1 + 40);

  _Block_release(v3);
}

os_log_t sub_19B75C944()
{
  result = os_log_create("com.apple.locationd.Motion", "ActivityAlarm");
  qword_1EAFE2878 = result;
  return result;
}

void sub_19B75CBCC(_Unwind_Exception *a1)
{
  sub_19B674784(v1);
  MEMORY[0x19EAE76F0](v1, v2);
  _Unwind_Resume(a1);
}

void *sub_19B75CBF8(io_object_t *notifier)
{
  *notifier = &unk_1F0E328C8;
  v2 = notifier + 10;
  if (notifier[10])
  {
    IODeregisterForSystemPower(notifier + 10);
    *v2 = 0;
  }

  v3 = *(notifier + 6);
  if (v3)
  {
    IONotificationPortDestroy(v3);
    *(notifier + 6) = 0;
  }

  v4 = notifier[11];
  if (v4)
  {
    IOServiceClose(v4);
    notifier[11] = 0;
  }

  return sub_19B674784(notifier);
}

void sub_19B75CC88(io_object_t *a1)
{
  sub_19B75CBF8(a1);

  JUMPOUT(0x19EAE76F0);
}

void sub_19B75D688(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x19EAE76F0](v16, v15);
  _Unwind_Resume(a1);
}

void sub_19B75D6B8(uint64_t a1, CLConnectionMessage **a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DFD8];
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v7 = objc_msgSend_setWithObjects_(v3, v6, v4, v5, 0);
  if (*a2)
  {
    DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v7);
    if (DictionaryOfClasses)
    {
      v10 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v9, @"CMErrorMessage");
      if (v10)
      {
        v11 = v10;
        if (qword_1EAFE27F0 != -1)
        {
          dispatch_once(&qword_1EAFE27F0, &unk_1F0E27BA0);
        }

        v12 = qword_1EAFE2818;
        if (os_log_type_enabled(qword_1EAFE2818, OS_LOG_TYPE_FAULT))
        {
          *buf = 67240192;
          v21 = objc_msgSend_intValue(v11, v13, v14);
          _os_log_impl(&dword_19B41C000, v12, OS_LOG_TYPE_FAULT, "Failed with CMError code %{public}d", buf, 8u);
        }

        v15 = sub_19B420058();
        if ((*(v15 + 160) & 0x80000000) == 0 || (*(v15 + 164) & 0x80000000) == 0 || (*(v15 + 168) & 0x80000000) == 0 || *(v15 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE27F0 != -1)
          {
            dispatch_once(&qword_1EAFE27F0, &unk_1F0E27BA0);
          }

          objc_msgSend_intValue(v11, v16, v17);
          v18 = _os_log_send_and_compose_impl();
          sub_19B6BB7CC("Generic", 1, 0, 0, "[CMStepCounterProxy init]_block_invoke", "CoreLocation: %s\n", v18);
          if (v18 != buf)
          {
            free(v18);
          }
        }
      }
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}

void sub_19B75DAFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, uint64_t a18, std::__shared_weak_count *a19)
{
  if (a17)
  {
    sub_19B41FFEC(a17);
  }

  if (a19)
  {
    sub_19B41FFEC(a19);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B75DB28(void *a1, const char *a2)
{
  v3 = a1[4];
  v4 = *(a2 + 1);
  v5 = *a2;
  v6 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  objc_msgSend__handleQueryResponse_onQueue_withHandler_(v3, a2, &v5, a1[5], a1[6]);
  if (v6)
  {
    sub_19B41FFEC(v6);
  }
}

void sub_19B75DB84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_19B41FFEC(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B75DD28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, std::__shared_weak_count *a21, int a22, __int16 a23, char a24, char a25)
{
  if (a10)
  {
    sub_19B41FFEC(a10);
  }

  if (a21)
  {
    sub_19B41FFEC(a21);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B75DD6C(void *a1, CLConnectionMessage **a2)
{
  v47 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695DFD8];
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v9 = objc_msgSend_setWithObjects_(v4, v8, v5, v6, v7, 0);
  if (*a2 && (DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v9)) != 0)
  {
    v12 = DictionaryOfClasses;
    v13 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v11, @"CMErrorMessage");
    v15 = objc_msgSend_objectForKeyedSubscript_(v12, v14, @"CMPedometerDataObject");
    if (v13)
    {
      *(a1[4] + 16) = 0;
      v42[0] = MEMORY[0x1E69E9820];
      v42[1] = 3221225472;
      v42[2] = sub_19B75E1F0;
      v42[3] = &unk_1E7532B90;
      v18 = a1[5];
      v19 = a1[6];
      v42[4] = v13;
      v42[5] = v19;
      objc_msgSend_addOperationWithBlock_(v18, v16, v42);
      goto LABEL_17;
    }

    v24 = v15;
    if (v15)
    {
      v25 = objc_msgSend_endDate(v15, v16, v17);
      v28 = objc_msgSend_numberOfSteps(v24, v26, v27);
      v31 = objc_msgSend_intValue(v28, v29, v30);
      v33 = a1[4];
      if (*(v33 + 32) == -1)
      {
        *(v33 + 32) = v31;
        v33 = a1[4];
      }

      if (!v31)
      {
        *(v33 + 32) = 0;
        v33 = a1[4];
      }

      v34 = *(v33 + 40);
      v35 = v31;
      if (v34 == -1 || v31 - v34 >= a1[7])
      {
        v40[0] = MEMORY[0x1E69E9820];
        v40[1] = 3221225472;
        v40[2] = sub_19B75E28C;
        v40[3] = &unk_1E7535C00;
        v41 = v31;
        v36 = a1[5];
        v37 = a1[6];
        v40[5] = v25;
        v40[6] = v37;
        v40[4] = v33;
        objc_msgSend_addOperationWithBlock_(v36, v32, v40);
        *(a1[4] + 40) = v35;
      }

      goto LABEL_17;
    }

    if (qword_1EAFE27F0 != -1)
    {
      dispatch_once(&qword_1EAFE27F0, &unk_1F0E27BA0);
    }

    v38 = qword_1EAFE2818;
    if (os_log_type_enabled(qword_1EAFE2818, OS_LOG_TYPE_FAULT))
    {
      *buf = 138543362;
      v46 = v12;
      _os_log_impl(&dword_19B41C000, v38, OS_LOG_TYPE_FAULT, "Unable to parse mesage (%{public}@) when starting updates to queue", buf, 0xCu);
    }

    v39 = sub_19B420058();
    if ((*(v39 + 160) & 0x80000000) == 0 || (*(v39 + 164) & 0x80000000) == 0 || (*(v39 + 168) & 0x80000000) == 0 || *(v39 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE27F0 != -1)
      {
        dispatch_once(&qword_1EAFE27F0, &unk_1F0E27BA0);
      }

      v43 = 138543362;
      v44 = v12;
LABEL_15:
      v22 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CMStepCounterProxy _startStepCountingUpdatesToQueue:updateOn:withHandler:]_block_invoke", "CoreLocation: %s\n", v22);
      if (v22 != buf)
      {
        free(v22);
      }
    }
  }

  else
  {
    if (qword_1EAFE27F0 != -1)
    {
      dispatch_once(&qword_1EAFE27F0, &unk_1F0E27BA0);
    }

    v20 = qword_1EAFE2818;
    if (os_log_type_enabled(qword_1EAFE2818, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v20, OS_LOG_TYPE_ERROR, "Unable to parse message when starting updates to queue!", buf, 2u);
    }

    v21 = sub_19B420058();
    if ((*(v21 + 160) & 0x80000000) == 0 || (*(v21 + 164) & 0x80000000) == 0 || (*(v21 + 168) & 0x80000000) == 0 || *(v21 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE27F0 != -1)
      {
        dispatch_once(&qword_1EAFE27F0, &unk_1F0E27BA0);
      }

      LOWORD(v43) = 0;
      goto LABEL_15;
    }
  }

LABEL_17:
  v23 = *MEMORY[0x1E69E9840];
}

uint64_t sub_19B75E1F0(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = *(a1 + 40);
  v5 = objc_msgSend_date(MEMORY[0x1E695DF00], a2, a3);
  v6 = MEMORY[0x1E696ABC0];
  v9 = objc_msgSend_integerValue(*(a1 + 32), v7, v8);
  v11 = objc_msgSend_errorWithDomain_code_userInfo_(v6, v10, @"CMErrorDomain", v9, 0);
  v12 = *(v4 + 16);

  return v12(v4, 0, v5, v11);
}

uint64_t sub_19B75E28C(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = (*(a1 + 56) - *(*(a1 + 32) + 32));
  return (*(*(a1 + 48) + 16))();
}

uint64_t sub_19B75E758(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = MEMORY[0x1E696ABC0];
  v4 = *(a1 + 40);
  v5 = objc_msgSend_integerValue(*(a1 + 32), a2, a3);
  v7 = objc_msgSend_errorWithDomain_code_userInfo_(v3, v6, @"CMErrorDomain", v5, 0);
  v8 = *(v4 + 16);

  return v8(v4, 0, v7);
}

uint64_t sub_19B75E7E8(uint64_t a1, const char *a2)
{
  v2 = *(a1 + 32);
  v3 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], a2, @"CMErrorDomain", 103, 0);
  v4 = *(v2 + 16);

  return v4(v2, 0, v3);
}

uint64_t sub_19B75EAE4(uint64_t a1)
{
  v1 = *MEMORY[0x1E69D55A8];
  v3 = *(a1 + 32);
  v4 = *(a1 + 48);
  v5 = *(a1 + 64);
  return TCCAccessRequest();
}

void sub_19B75EB74(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = *(objc_msgSend_stepcounterProxy(*(a1 + 32), a2, a3) + 24);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B75EC08;
  block[3] = &unk_1E7532C58;
  v5 = *(a1 + 48);
  v7 = *(a1 + 32);
  v8 = v5;
  v9 = *(a1 + 64);
  dispatch_async(v4, block);
}

uint64_t sub_19B75EC08(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_stepcounterProxy(*(a1 + 32), a2, a3);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);

  return MEMORY[0x1EEE66B58](v4, sel__queryStepCountStartingFromInternal_to_toQueue_withHandler_, v5);
}

void sub_19B75ED70(uint64_t a1, const char *a2, uint64_t a3)
{
  v13 = *MEMORY[0x1E69E9840];
  if (*(objc_msgSend_stepcounterProxy(*(a1 + 32), a2, a3) + 16) == 1)
  {
    if (qword_1EAFE27F0 != -1)
    {
      dispatch_once(&qword_1EAFE27F0, &unk_1F0E27BA0);
    }

    v4 = qword_1EAFE2818;
    if (os_log_type_enabled(qword_1EAFE2818, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_FAULT, "Unable to start additional step updates while it is already active", buf, 2u);
    }

    v5 = sub_19B420058();
    if ((*(v5 + 160) & 0x80000000) == 0 || (*(v5 + 164) & 0x80000000) == 0 || (*(v5 + 168) & 0x80000000) == 0 || *(v5 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE27F0 != -1)
      {
        dispatch_once(&qword_1EAFE27F0, &unk_1F0E27BA0);
      }

      v6 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CMStepCounter startStepCountingUpdatesToQueue:updateOn:withHandler:]_block_invoke", "CoreLocation: %s\n", v6);
      if (v6 != buf)
      {
        free(v6);
      }
    }
  }

  else
  {
    v7 = *MEMORY[0x1E69D55A8];
    v9 = *(a1 + 32);
    v10 = *(a1 + 48);
    v11 = *(a1 + 56);
    TCCAccessRequest();
  }

  v8 = *MEMORY[0x1E69E9840];
}

void sub_19B75EF94(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = *(objc_msgSend_stepcounterProxy(*(a1 + 32), a2, a3) + 24);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_19B75F024;
  v6[3] = &unk_1E7533780;
  v7 = *(a1 + 32);
  v5 = *(a1 + 56);
  v8 = *(a1 + 48);
  v9 = v5;
  dispatch_async(v4, v6);
}

uint64_t sub_19B75F024(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_stepcounterProxy(*(a1 + 32), a2, a3);
  v6 = *(a1 + 48);
  v5 = *(a1 + 56);
  v7 = *(a1 + 40);

  return MEMORY[0x1EEE66B58](v4, sel__startStepCountingUpdatesToQueue_updateOn_withHandler_, v7);
}

void sub_19B75F0E4(uint64_t a1, const char *a2, uint64_t a3)
{
  __p[205] = *MEMORY[0x1E69E9840];
  if (*(objc_msgSend_stepcounterProxy(*(a1 + 32), a2, a3) + 16))
  {
    v8 = @"kCLConnectionMessageSubscribeKey";
    v9 = MEMORY[0x1E695E110];
    __p[0] = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v3, &v9, &v8, 1);
    sub_19B6CA5DC();
  }

  if (qword_1EAFE27F0 != -1)
  {
    dispatch_once(&qword_1EAFE27F0, &unk_1F0E27BA0);
  }

  v4 = qword_1EAFE2818;
  if (os_log_type_enabled(qword_1EAFE2818, OS_LOG_TYPE_FAULT))
  {
    LOWORD(__p[0]) = 0;
    _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_FAULT, "Unable to stop step updates as we are are not receiving updates", __p, 2u);
  }

  v5 = sub_19B420058();
  if ((*(v5 + 160) & 0x80000000) == 0 || (*(v5 + 164) & 0x80000000) == 0 || (*(v5 + 168) & 0x80000000) == 0 || *(v5 + 152))
  {
    bzero(__p, 0x65CuLL);
    if (qword_1EAFE27F0 != -1)
    {
      dispatch_once(&qword_1EAFE27F0, &unk_1F0E27BA0);
    }

    v6 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 0, "[CMStepCounter stopStepCountingUpdates]_block_invoke", "CoreLocation: %s\n", v6);
    if (v6 != __p)
    {
      free(v6);
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

void sub_19B75F374(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  if (a14)
  {
    sub_19B41FFEC(a14);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B75F540(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13)
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

os_log_t sub_19B75F578()
{
  result = os_log_create("com.apple.locationd.Motion", "Pedometer");
  qword_1EAFE2818 = result;
  return result;
}

void sub_19B76029C(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  if (qword_1ED71C800 != -1)
  {
    dispatch_once(&qword_1ED71C800, &unk_1F0E2A420);
  }

  v2 = off_1ED71C808;
  if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_DEBUG))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v9 = v3;
    _os_log_impl(&dword_19B41C000, v2, OS_LOG_TYPE_DEBUG, "Dumped gyro cal database with id %@", buf, 0xCu);
  }

  v4 = sub_19B420058();
  if (*(v4 + 160) > 1 || *(v4 + 164) > 1 || *(v4 + 168) > 1 || *(v4 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C800 != -1)
    {
      dispatch_once(&qword_1ED71C800, &unk_1F0E2A420);
    }

    v7 = *(a1 + 32);
    v5 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "CLSensorFusionService::CLSensorFusionService(int)_block_invoke", "CoreLocation: %s\n", v5);
    if (v5 != buf)
    {
      free(v5);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

uint64_t sub_19B760468(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  *a1 = &unk_1F0E325E0;
  if (qword_1ED71C800 != -1)
  {
    dispatch_once(&qword_1ED71C800, &unk_1F0E2A420);
  }

  v2 = off_1ED71C808;
  if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_DEBUG))
  {
    v3 = *(a1 + 12);
    *buf = 67240192;
    v10 = v3;
    _os_log_impl(&dword_19B41C000, v2, OS_LOG_TYPE_DEBUG, "Stopping device motion service %{public}#x", buf, 8u);
  }

  v4 = sub_19B420058();
  if (*(v4 + 160) > 1 || *(v4 + 164) > 1 || *(v4 + 168) > 1 || *(v4 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C800 != -1)
    {
      dispatch_once(&qword_1ED71C800, &unk_1F0E2A420);
    }

    v8 = *(a1 + 12);
    v5 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "virtual CLSensorFusionService::~CLSensorFusionService()", "CoreLocation: %s\n", v5);
    if (v5 != buf)
    {
      free(v5);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
  return a1;
}

void sub_19B760654(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_19B45E110(a1);
}

void sub_19B760668(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock((a1 + 88));
  v4 = *(a1 + 96);
  v5 = *(a1 + 128);
  *(a2 + 16) = *(a1 + 112);
  *(a2 + 32) = v5;
  *a2 = v4;
  v6 = *(a1 + 144);
  v7 = *(a1 + 160);
  v8 = *(a1 + 176);
  *(a2 + 96) = *(a1 + 192);
  *(a2 + 64) = v7;
  *(a2 + 80) = v8;
  *(a2 + 48) = v6;

  os_unfair_lock_unlock((a1 + 88));
}

void sub_19B7606D0()
{
  v5 = *MEMORY[0x1E69E9840];
  if (sub_19B4249E4())
  {
    operator new();
  }

  if (qword_1EAFE27A8 != -1)
  {
    dispatch_once(&qword_1EAFE27A8, &unk_1F0E2A440);
  }

  v0 = qword_1EAFE27E0;
  if (os_log_type_enabled(qword_1EAFE27E0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v0, OS_LOG_TYPE_DEFAULT, "#Warning No accelerometer; not starting CMPickupDetector detection!", buf, 2u);
  }

  v1 = sub_19B420058();
  if (*(v1 + 160) > 1 || *(v1 + 164) > 1 || *(v1 + 168) > 1 || *(v1 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE27A8 != -1)
    {
      dispatch_once(&qword_1EAFE27A8, &unk_1F0E2A440);
    }

    v2 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CMPickupServiceAP::startDetection()", "CoreLocation: %s\n", v2);
    if (v2 != buf)
    {
      free(v2);
    }
  }

  v3 = *MEMORY[0x1E69E9840];
}

uint64_t sub_19B760B24(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 16);
  v5 = *a1;
  v12 = *(a1 + 8);
  v13 = v4;
  result = sub_19B76E724(*(a2 + 40), &v12, (v5 * 1000000.0));
  if (result != *(a2 + 32))
  {
    v7 = result;
    if (qword_1EAFE27A8 != -1)
    {
      dispatch_once(&qword_1EAFE27A8, &unk_1F0E2A440);
    }

    v8 = qword_1EAFE27E0;
    if (os_log_type_enabled(qword_1EAFE27E0, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_DEBUG, "Sending CMPickupDetector notification.", buf, 2u);
    }

    v9 = sub_19B420058();
    if (*(v9 + 160) > 1 || *(v9 + 164) > 1 || *(v9 + 168) > 1 || *(v9 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE27A8 != -1)
      {
        dispatch_once(&qword_1EAFE27A8, &unk_1F0E2A440);
      }

      v10 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "static void CMPickupServiceAP::onAccelerometerData(const CLAccelerometer::Sample *, void *)", "CoreLocation: %s\n", v10);
      if (v10 != buf)
      {
        free(v10);
      }
    }

    *buf = v7;
    v15 = *a1;
    result = sub_19B4455DC(a2, 0, buf, 16);
    *(a2 + 32) = v7;
  }

  v11 = *MEMORY[0x1E69E9840];
  return result;
}

void *sub_19B760D44(void *result)
{
  if (result[6])
  {
    v1 = result;
    v2 = sub_19B4249E4();
    sub_19B426A14(v2, 0, v1[6]);
    result = v1[6];
    if (result)
    {
      result = (*(*result + 8))(result);
    }

    v1[6] = 0;
  }

  return result;
}

void *sub_19B760DB0(void *a1)
{
  *a1 = &unk_1F0E32BA8;
  v2 = a1[5];
  a1[5] = 0;
  if (v2)
  {
    MEMORY[0x19EAE76F0](v2, 0x1000C40A15AAAFDLL);
  }

  return sub_19B661DD8(a1);
}

void sub_19B760E20(void *a1)
{
  *a1 = &unk_1F0E32BA8;
  v2 = a1[5];
  a1[5] = 0;
  if (v2)
  {
    MEMORY[0x19EAE76F0](v2, 0x1000C40A15AAAFDLL);
  }

  sub_19B661DD8(a1);

  JUMPOUT(0x19EAE76F0);
}

os_log_t sub_19B760EA4()
{
  result = os_log_create("com.apple.locationd.Motion", "Gesture");
  qword_1EAFE27E0 = result;
  return result;
}

uint64_t sub_19B762D80(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return MEMORY[0x1EEE66B58](a2, sel__feedDeviceMotion_, result);
  }

  return result;
}

uint64_t sub_19B762D94(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return MEMORY[0x1EEE66B58](a2, sel__feedAccel_, result);
  }

  return result;
}

uint64_t sub_19B762DA8(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return MEMORY[0x1EEE66B58](a2, sel__feedGyro_, result);
  }

  return result;
}

uint64_t sub_19B762DBC(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return MEMORY[0x1EEE66B58](a2, sel__feedGyroTemperature_, result);
  }

  return result;
}

uint64_t sub_19B762DD0(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return MEMORY[0x1EEE66B58](*(*(*(result + 32) + 8) + 40), sel__feedHeadAccessoryDeviceMotion_, a2);
  }

  return result;
}

void sub_19B763AC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

os_log_t sub_19B7641E0()
{
  result = os_log_create("com.apple.locationd.Motion", "Workout");
  qword_1EAFE27B8 = result;
  return result;
}

void sub_19B764210(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if (qword_1EAFE2780 != -1)
    {
      dispatch_once(&qword_1EAFE2780, &unk_1F0E2A460);
    }

    v2 = qword_1EAFE27B8;
    if (os_log_type_enabled(qword_1EAFE27B8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v2, OS_LOG_TYPE_DEFAULT, "[camera] Accessory device motion status : Disconnected", buf, 2u);
    }

    v3 = sub_19B420058();
    if (*(v3 + 160) > 1 || *(v3 + 164) > 1 || *(v3 + 168) > 1 || *(v3 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2780 == -1)
      {
LABEL_21:
        v6 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "_ZL22accessoryStatusHandler_block_invoke", "CoreLocation: %s\n", v6);
        if (v6 != buf)
        {
          free(v6);
        }

        goto LABEL_23;
      }

LABEL_24:
      dispatch_once(&qword_1EAFE2780, &unk_1F0E2A460);
      goto LABEL_21;
    }
  }

  else
  {
    if (qword_1EAFE2780 != -1)
    {
      dispatch_once(&qword_1EAFE2780, &unk_1F0E2A460);
    }

    v4 = qword_1EAFE27B8;
    if (os_log_type_enabled(qword_1EAFE27B8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_DEFAULT, "[camera] Accessory device motion status : Connected", buf, 2u);
    }

    v5 = sub_19B420058();
    if (*(v5 + 160) > 1 || *(v5 + 164) > 1 || *(v5 + 168) > 1 || *(v5 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2780 == -1)
      {
        goto LABEL_21;
      }

      goto LABEL_24;
    }
  }

LABEL_23:
  v7 = *MEMORY[0x1E69E9840];
}

uint64_t *sub_19B7644A0(uint64_t **a1, uint64_t *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_19B5C6B1C(result);

    JUMPOUT(0x19EAE76F0);
  }

  return result;
}

uint64_t sub_19B7651A4()
{
  result = sub_19B5E4718(@"BKDigitizerSignpostsEnabled", @"com.apple.backboardd", &byte_1ED71D770);
  byte_1ED71D771 = result;
  return result;
}

void sub_19B76561C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_19B765634(uint64_t a1, const char *a2)
{
  result = objc_msgSend_initPrivateWithClientType_(*(a1 + 32), a2, 0);
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

void sub_19B76574C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_19B765764(uint64_t a1, const char *a2)
{
  result = objc_msgSend_initPrivateWithClientType_(*(a1 + 32), a2, *(a1 + 48));
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

void sub_19B7658E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19B765960(uint64_t a1, CLConnectionMessage **a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DFD8];
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v7 = objc_msgSend_setWithObjects_(v3, v6, v4, v5, 0);
  if (*a2)
  {
    DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v7);
    v10 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v9, @"CMErrorMessage");
  }

  else
  {
    DictionaryOfClasses = 0;
    v10 = objc_msgSend_objectForKeyedSubscript_(0, v7, @"CMErrorMessage");
  }

  if (!DictionaryOfClasses || !v10)
  {
    if (qword_1EAFE2800 != -1)
    {
      dispatch_once(&qword_1EAFE2800, &unk_1F0E3B638);
    }

    v17 = off_1EAFE2828;
    if (os_log_type_enabled(off_1EAFE2828, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v17, OS_LOG_TYPE_ERROR, "Invalid service response.", buf, 2u);
    }

    v18 = sub_19B420058();
    if ((*(v18 + 160) & 0x80000000) == 0 || (*(v18 + 164) & 0x80000000) == 0 || (*(v18 + 168) & 0x80000000) == 0 || *(v18 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2800 == -1)
      {
        goto LABEL_26;
      }

      goto LABEL_68;
    }

    goto LABEL_28;
  }

  v13 = objc_msgSend_integerValue(v10, v11, v12);
  v14 = v13;
  if (v13 > 108)
  {
    if (v13 == 110)
    {
      if (qword_1EAFE2800 != -1)
      {
        dispatch_once(&qword_1EAFE2800, &unk_1F0E3B638);
      }

      v25 = off_1EAFE2828;
      if (os_log_type_enabled(off_1EAFE2828, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v25, OS_LOG_TYPE_ERROR, "Not entitled to manage the AOP service.", buf, 2u);
      }

      v26 = sub_19B420058();
      if ((*(v26 + 160) & 0x80000000) != 0 && (*(v26 + 164) & 0x80000000) != 0 && (*(v26 + 168) & 0x80000000) != 0 && !*(v26 + 152))
      {
        goto LABEL_28;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2800 != -1)
      {
        goto LABEL_68;
      }
    }

    else
    {
      if (v13 != 109)
      {
LABEL_40:
        if (qword_1EAFE2800 != -1)
        {
          dispatch_once(&qword_1EAFE2800, &unk_1F0E3B638);
        }

        v23 = off_1EAFE2828;
        if (os_log_type_enabled(off_1EAFE2828, OS_LOG_TYPE_ERROR))
        {
          *buf = 134349056;
          v28 = v14;
          _os_log_impl(&dword_19B41C000, v23, OS_LOG_TYPE_ERROR, "Service request failed! error,%{public}ld", buf, 0xCu);
        }

        v24 = sub_19B420058();
        if ((*(v24 + 160) & 0x80000000) != 0 && (*(v24 + 164) & 0x80000000) != 0 && (*(v24 + 168) & 0x80000000) != 0 && !*(v24 + 152))
        {
          goto LABEL_28;
        }

        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2800 != -1)
        {
          goto LABEL_68;
        }

        goto LABEL_26;
      }

      if (qword_1EAFE2800 != -1)
      {
        dispatch_once(&qword_1EAFE2800, &unk_1F0E3B638);
      }

      v21 = off_1EAFE2828;
      if (os_log_type_enabled(off_1EAFE2828, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v21, OS_LOG_TYPE_ERROR, "Service is not available!", buf, 2u);
      }

      v22 = sub_19B420058();
      if ((*(v22 + 160) & 0x80000000) != 0 && (*(v22 + 164) & 0x80000000) != 0 && (*(v22 + 168) & 0x80000000) != 0 && !*(v22 + 152))
      {
        goto LABEL_28;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2800 != -1)
      {
        goto LABEL_68;
      }
    }

LABEL_26:
    v19 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 0, "[CMSuppressionManager connect]_block_invoke", "CoreLocation: %s\n", v19);
    if (v19 != buf)
    {
      free(v19);
    }

    goto LABEL_28;
  }

  if (v13 == 100)
  {
    goto LABEL_28;
  }

  if (v13 != 108)
  {
    goto LABEL_40;
  }

  if (qword_1EAFE2800 != -1)
  {
    dispatch_once(&qword_1EAFE2800, &unk_1F0E3B638);
  }

  v15 = off_1EAFE2828;
  if (os_log_type_enabled(off_1EAFE2828, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v15, OS_LOG_TYPE_ERROR, "Unable to communicate with AOP service!", buf, 2u);
  }

  v16 = sub_19B420058();
  if ((*(v16 + 160) & 0x80000000) == 0 || (*(v16 + 164) & 0x80000000) == 0 || (*(v16 + 168) & 0x80000000) == 0 || *(v16 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2800 == -1)
    {
      goto LABEL_26;
    }

LABEL_68:
    dispatch_once(&qword_1EAFE2800, &unk_1F0E3B638);
    goto LABEL_26;
  }

LABEL_28:
  v20 = *MEMORY[0x1E69E9840];
}

void sub_19B765F68(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  Weak = objc_loadWeak((a1 + 40));
  if (Weak)
  {
    v3 = Weak;
    v4 = *(a1 + 32);
    if ((*(v4 + 232) & 1) != 0 || *(v4 + 233) == 1)
    {
      if (qword_1EAFE2800 != -1)
      {
        dispatch_once(&qword_1EAFE2800, &unk_1F0E3B638);
      }

      v5 = off_1EAFE2828;
      if (os_log_type_enabled(off_1EAFE2828, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v5, OS_LOG_TYPE_INFO, "Connection interrupted! Resending service request.", buf, 2u);
      }

      v6 = sub_19B420058();
      if (*(v6 + 160) > 1 || *(v6 + 164) > 1 || *(v6 + 168) > 1 || *(v6 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2800 != -1)
        {
          dispatch_once(&qword_1EAFE2800, &unk_1F0E3B638);
        }

        v11 = 0;
        v7 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "[CMSuppressionManager connect]_block_invoke", "CoreLocation: %s\n", v7);
        if (v7 != buf)
        {
          free(v7);
        }
      }

      v8 = sub_19B420D84();
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = sub_19B766194;
      v10[3] = &unk_1E7532988;
      v10[4] = v3;
      sub_19B421668(v8, v10);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

void sub_19B76632C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, uint64_t a18, std::__shared_weak_count *a19)
{
  if (a17)
  {
    sub_19B41FFEC(a17);
  }

  if (a19)
  {
    sub_19B41FFEC(a19);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B766360(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_objectForKeyedSubscript_(a2, a2, @"CMErrorMessage");
  if (a2 && v4)
  {
    v7 = objc_msgSend_integerValue(v4, v5, v6);
    if (v7 == 100)
    {
      goto LABEL_27;
    }

    v8 = v7;
    if (v7 == 108)
    {
      if (qword_1EAFE2800 != -1)
      {
        dispatch_once(&qword_1EAFE2800, &unk_1F0E3B638);
      }

      v16 = off_1EAFE2828;
      if (os_log_type_enabled(off_1EAFE2828, OS_LOG_TYPE_ERROR))
      {
        v17 = *(a1 + 32);
        *buf = 67240192;
        v26 = v17;
        _os_log_impl(&dword_19B41C000, v16, OS_LOG_TYPE_ERROR, "View Obstructed State Unable to communicate with AOP service! enable,%{public}d", buf, 8u);
      }

      v18 = sub_19B420058();
      if ((*(v18 + 160) & 0x80000000) == 0 || (*(v18 + 164) & 0x80000000) == 0 || (*(v18 + 168) & 0x80000000) == 0 || *(v18 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2800 != -1)
        {
          dispatch_once(&qword_1EAFE2800, &unk_1F0E3B638);
        }

        v23 = *(a1 + 32);
        goto LABEL_25;
      }
    }

    else if (v7 == 109)
    {
      if (qword_1EAFE2800 != -1)
      {
        dispatch_once(&qword_1EAFE2800, &unk_1F0E3B638);
      }

      v9 = off_1EAFE2828;
      if (os_log_type_enabled(off_1EAFE2828, OS_LOG_TYPE_ERROR))
      {
        v10 = *(a1 + 32);
        *buf = 67240192;
        v26 = v10;
        _os_log_impl(&dword_19B41C000, v9, OS_LOG_TYPE_ERROR, "View Obstructed State Service is not available! enable,%{public}d", buf, 8u);
      }

      v11 = sub_19B420058();
      if ((*(v11 + 160) & 0x80000000) == 0 || (*(v11 + 164) & 0x80000000) == 0 || (*(v11 + 168) & 0x80000000) == 0 || *(v11 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2800 != -1)
        {
          dispatch_once(&qword_1EAFE2800, &unk_1F0E3B638);
        }

        v22 = *(a1 + 32);
LABEL_25:
        v14 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 0, "[CMSuppressionManager sendViewObstructedRequestPrivate]_block_invoke", "CoreLocation: %s\n", v14);
        if (v14 != buf)
        {
          free(v14);
        }
      }
    }

    else
    {
      if (qword_1EAFE2800 != -1)
      {
        dispatch_once(&qword_1EAFE2800, &unk_1F0E3B638);
      }

      v19 = off_1EAFE2828;
      if (os_log_type_enabled(off_1EAFE2828, OS_LOG_TYPE_ERROR))
      {
        v20 = *(a1 + 32);
        *buf = 67240448;
        v26 = v20;
        v27 = 2050;
        v28 = v8;
        _os_log_impl(&dword_19B41C000, v19, OS_LOG_TYPE_ERROR, "View Obstructed State Service request failed! enable,%{public}d, error,%{public}ld", buf, 0x12u);
      }

      v21 = sub_19B420058();
      if ((*(v21 + 160) & 0x80000000) == 0 || (*(v21 + 164) & 0x80000000) == 0 || (*(v21 + 168) & 0x80000000) == 0 || *(v21 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2800 != -1)
        {
          dispatch_once(&qword_1EAFE2800, &unk_1F0E3B638);
        }

        v24 = *(a1 + 32);
        goto LABEL_25;
      }
    }
  }

  else
  {
    if (qword_1EAFE2800 != -1)
    {
      dispatch_once(&qword_1EAFE2800, &unk_1F0E3B638);
    }

    v12 = off_1EAFE2828;
    if (os_log_type_enabled(off_1EAFE2828, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v12, OS_LOG_TYPE_ERROR, "View Obstructed State Invalid service response!", buf, 2u);
    }

    v13 = sub_19B420058();
    if ((*(v13 + 160) & 0x80000000) == 0 || (*(v13 + 164) & 0x80000000) == 0 || (*(v13 + 168) & 0x80000000) == 0 || *(v13 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2800 != -1)
      {
        dispatch_once(&qword_1EAFE2800, &unk_1F0E3B638);
      }

      goto LABEL_25;
    }
  }

LABEL_27:
  v15 = *MEMORY[0x1E69E9840];
}

void sub_19B766900(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v1 = *(*(a1 + 32) + 8);
  if (*(v1 + 232))
  {
    if (qword_1EAFE2800 != -1)
    {
      dispatch_once(&qword_1EAFE2800, &unk_1F0E3B638);
    }

    v2 = off_1EAFE2828;
    if (os_log_type_enabled(off_1EAFE2828, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v2, OS_LOG_TYPE_ERROR, "Service already started.", buf, 2u);
    }

    v3 = sub_19B420058();
    if ((*(v3 + 160) & 0x80000000) == 0 || (*(v3 + 164) & 0x80000000) == 0 || (*(v3 + 168) & 0x80000000) == 0 || *(v3 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2800 != -1)
      {
        dispatch_once(&qword_1EAFE2800, &unk_1F0E3B638);
      }

      v4 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CMSuppressionManager startService]_block_invoke", "CoreLocation: %s\n", v4);
      if (v4 != buf)
      {
        free(v4);
      }
    }
  }

  else
  {
    if (qword_1EAFE2800 != -1)
    {
      dispatch_once(&qword_1EAFE2800, &unk_1F0E3B638);
    }

    v6 = off_1EAFE2828;
    if (os_log_type_enabled(off_1EAFE2828, OS_LOG_TYPE_DEFAULT))
    {
      v9 = objc_msgSend_suppressionClientType(*(a1 + 32), v7, v8);
      v10 = *(v1 + 344);
      *buf = 134349314;
      v20 = v9;
      v21 = 2114;
      v22 = v10;
      _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}ld][%{public}@] Start service called.", buf, 0x16u);
    }

    v11 = sub_19B420058();
    if (*(v11 + 160) > 1 || *(v11 + 164) > 1 || *(v11 + 168) > 1 || *(v11 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2800 != -1)
      {
        dispatch_once(&qword_1EAFE2800, &unk_1F0E3B638);
      }

      objc_msgSend_suppressionClientType(*(a1 + 32), v14, v15);
      v18 = *(v1 + 344);
      v16 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMSuppressionManager startService]_block_invoke", "CoreLocation: %s\n", v16);
      if (v16 != buf)
      {
        free(v16);
      }
    }

    *(v1 + 232) = 1;
    objc_msgSend_sendServiceRequestPrivate(*(a1 + 32), v12, v13);
  }

  v17 = *MEMORY[0x1E69E9840];
}

uint64_t sub_19B766D98(uint64_t a1)
{
  v34 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 8);
  if (qword_1EAFE2800 != -1)
  {
    dispatch_once(&qword_1EAFE2800, &unk_1F0E3B638);
  }

  v3 = off_1EAFE2828;
  if (os_log_type_enabled(off_1EAFE2828, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_msgSend_suppressionClientType(*(a1 + 32), v4, v5);
    v7 = *(v2 + 344);
    v8 = *(a1 + 56);
    *buf = 134350594;
    v21 = v6;
    v22 = 2114;
    v23 = v7;
    v24 = 1026;
    v25 = v8 & 1;
    v26 = 1026;
    v27 = (v8 >> 1) & 1;
    v28 = 1026;
    v29 = (v8 >> 2) & 1;
    v30 = 1026;
    v31 = (v8 >> 3) & 1;
    v32 = 1026;
    v33 = (v8 >> 4) & 1;
    _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}ld][%{public}@] Starting suppression updates with useViewObstructed,%{public}u,useSmartPowerNap,%{public}u,useWatchPresence,%{public}u,useAlwaysOnViewObstructed,%{public}u,useFacedown,%{public}u", buf, 0x34u);
  }

  v9 = sub_19B420058();
  if (*(v9 + 160) > 1 || *(v9 + 164) > 1 || *(v9 + 168) > 1 || *(v9 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2800 != -1)
    {
      dispatch_once(&qword_1EAFE2800, &unk_1F0E3B638);
    }

    objc_msgSend_suppressionClientType(*(a1 + 32), v12, v13);
    v14 = *(a1 + 56);
    v19 = *(v2 + 344);
    v15 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMSuppressionManager startSuppressionUpdatesToQueue:withOptions:withHandler:]_block_invoke", "CoreLocation: %s\n", v15);
    if (v15 != buf)
    {
      free(v15);
    }
  }

  *(v2 + 336) = *(a1 + 56);
  *(v2 + 233) = 1;
  objc_msgSend_sendServiceRequestPrivate(*(a1 + 32), v10, v11);
  result = objc_msgSend_startSuppressionUpdatesPrivateToQueue_withHandler_(*(a1 + 32), v16, *(a1 + 40), *(a1 + 48));
  v18 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19B767668()
{
  if (qword_1EAFE3A58 != -1)
  {
    dispatch_once(&qword_1EAFE3A58, &unk_1F0E29B00);
  }

  v1 = qword_1EAFE3A68;

  sub_19B44DDDC(v1, 1);
}

void sub_19B767944(uint64_t a1)
{
  if (qword_1EAFE3A58 != -1)
  {
    dispatch_once(&qword_1EAFE3A58, &unk_1F0E29B00);
  }

  v6 = 0.0;
  v7 = 0;
  v8 = 0;
  sub_19B6DF024(&v6);
  v2 = v6;
  if (v6 != 0.0)
  {
    v3 = [CMSuppressionEvent alloc];
    if (v7)
    {
      v5 = objc_msgSend_initWithEventType_reason_timestamp_(v3, v4, 1, 1, v2);
    }

    else
    {
      v5 = objc_msgSend_initWithEventType_reason_timestamp_(v3, v4, 2, 1, v2);
    }

    *(*(*(a1 + 32) + 8) + 40) = v5;
  }
}

uint64_t sub_19B767C78(uint64_t a1)
{
  if (qword_1EAFE3A58 != -1)
  {
    dispatch_once(&qword_1EAFE3A58, &unk_1F0E29B00);
  }

  memset(v11, 0, 34);
  sub_19B6DF0AC(v11);
  v2 = [CMStaticCameraPose alloc];
  LODWORD(v4) = *(v11 + 14);
  LODWORD(v3) = *(v11 + 10);
  LODWORD(v6) = *(&v11[1] + 6);
  LODWORD(v5) = *(&v11[1] + 2);
  LODWORD(v8) = *(&v11[1] + 14);
  LODWORD(v7) = *(&v11[1] + 10);
  result = objc_msgSend_initWithIsStatic_timeInStaticState_timeInMovingState_portraitAngle_portraitUpsideDownAngle_landscapeLeftAngle_landscapeRightAngle_faceUpAngle_faceDownAngle_(v2, v9, BYTE1(v11[0]), *(v11 + 2), *(v11 + 6), v3, v4, v5, v6, v7, v8);
  *(*(*(a1 + 32) + 8) + 40) = result;
  return result;
}

void sub_19B768090(uint64_t a1)
{
  (*(*(a1 + 40) + 16))(*(a1 + 40), *(a1 + 32), 0);
  if (qword_1EAFE3A58 != -1)
  {
    dispatch_once(&qword_1EAFE3A58, &unk_1F0E29B00);
  }

  v1 = sub_19B420D84();

  sub_19B421668(v1, &unk_1F0E3AFD0);
}

void sub_19B768EB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__n128 sub_19B768ECC(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 48);
  v3 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = result;
  *(a1 + 64) = v3;
  return result;
}

__n128 sub_19B768EE4(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = *(*(a1 + 40) + 8);
  result = *(v1 + 8);
  v4 = *(v1 + 24);
  *(v2 + 80) = *(v1 + 40);
  *(v2 + 48) = result;
  *(v2 + 64) = v4;
  return result;
}

void sub_19B768FB8(uint64_t a1)
{
  v57 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 8);
  if (*(v2 + 14) || (*(a1 + 72) & 1) != 0)
  {
    if (qword_1EAFE2800 != -1)
    {
      dispatch_once(&qword_1EAFE2800, &unk_1F0E3B638);
    }

    v3 = off_1EAFE2828;
    if (os_log_type_enabled(off_1EAFE2828, OS_LOG_TYPE_DEFAULT))
    {
      v6 = objc_msgSend_suppressionClientType(*(a1 + 32), v4, v5);
      v7 = *(v2 + 43);
      v9 = objc_msgSend_stringForEventType_(CMSuppressionEvent, v8, *(a1 + 40));
      v10 = *(a1 + 48);
      *buf = 134349826;
      v50 = v6;
      v51 = 2114;
      v52 = v7;
      v53 = 2114;
      v54 = v9;
      v55 = 2050;
      v56 = v10;
      _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}ld][%{public}@] -> Feeding view obstructed event: %{public}@ @ %{public}f", buf, 0x2Au);
    }

    v11 = sub_19B420058();
    if (*(v11 + 160) > 1 || *(v11 + 164) > 1 || *(v11 + 168) > 1 || *(v11 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2800 != -1)
      {
        dispatch_once(&qword_1EAFE2800, &unk_1F0E3B638);
      }

      objc_msgSend_suppressionClientType(*(a1 + 32), v14, v15);
      v43 = *(v2 + 43);
      objc_msgSend_stringForEventType_(CMSuppressionEvent, v16, *(a1 + 40));
      v47 = *(a1 + 48);
      v17 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMSuppressionManager feedViewObstructedEvent:facedown:timeSinceLastFacedownStatic:timestamp:force:]_block_invoke", "CoreLocation: %s\n", v17);
      if (v17 != buf)
      {
        free(v17);
      }
    }

    v18 = *(a1 + 48);
    if (v18 <= v2[9])
    {
      if (qword_1EAFE2800 != -1)
      {
        dispatch_once(&qword_1EAFE2800, &unk_1F0E3B638);
      }

      v22 = off_1EAFE2828;
      if (os_log_type_enabled(off_1EAFE2828, OS_LOG_TYPE_ERROR))
      {
        v25 = objc_msgSend_suppressionClientType(*(a1 + 32), v23, v24);
        v26 = *(v2 + 43);
        v27 = *(v2 + 9);
        v28 = *(a1 + 48);
        *buf = 134349826;
        v50 = v25;
        v51 = 2114;
        v52 = v26;
        v53 = 2050;
        v54 = v27;
        v55 = 2050;
        v56 = v28;
        _os_log_impl(&dword_19B41C000, v22, OS_LOG_TYPE_ERROR, "[%{public}ld][%{public}@] Invalid view obstructed event. Timestamp went backwards! old timestamp,%{public}f, new timestamp %{public}f", buf, 0x2Au);
      }

      v29 = sub_19B420058();
      if ((*(v29 + 160) & 0x80000000) == 0 || (*(v29 + 164) & 0x80000000) == 0 || (*(v29 + 168) & 0x80000000) == 0 || *(v29 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2800 != -1)
        {
          dispatch_once(&qword_1EAFE2800, &unk_1F0E3B638);
        }

        objc_msgSend_suppressionClientType(*(a1 + 32), v30, v31);
        v44 = *(v2 + 43);
        v46 = *(v2 + 9);
        v48 = *(a1 + 48);
        v32 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 0, "[CMSuppressionManager feedViewObstructedEvent:facedown:timeSinceLastFacedownStatic:timestamp:force:]_block_invoke", "CoreLocation: %s\n", v32);
        if (v32 != buf)
        {
          free(v32);
        }
      }
    }

    else
    {
      v19 = *(a1 + 40);
      v20 = *(a1 + 56);
      v21 = *(a1 + 64);
      v2[9] = v18;
      *(v2 + 10) = v19;
      *(v2 + 11) = 1;
      *(v2 + 12) = v20;
      *(v2 + 13) = v21;
    }

    objc_msgSend_updateSuppressionStateAndSendToClient(*(a1 + 32), v12, v13);
  }

  else
  {
    if (qword_1EAFE2800 != -1)
    {
      dispatch_once(&qword_1EAFE2800, &unk_1F0E3B638);
    }

    v34 = off_1EAFE2828;
    if (os_log_type_enabled(off_1EAFE2828, OS_LOG_TYPE_ERROR))
    {
      v37 = objc_msgSend_suppressionClientType(*(a1 + 32), v35, v36);
      v38 = *(v2 + 43);
      *buf = 134349314;
      v50 = v37;
      v51 = 2114;
      v52 = v38;
      _os_log_impl(&dword_19B41C000, v34, OS_LOG_TYPE_ERROR, "[%{public}ld][%{public}@] Not feeding view obstructed event! Suppression already stopped.", buf, 0x16u);
    }

    v39 = sub_19B420058();
    if ((*(v39 + 160) & 0x80000000) == 0 || (*(v39 + 164) & 0x80000000) == 0 || (*(v39 + 168) & 0x80000000) == 0 || *(v39 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2800 != -1)
      {
        dispatch_once(&qword_1EAFE2800, &unk_1F0E3B638);
      }

      objc_msgSend_suppressionClientType(*(a1 + 32), v40, v41);
      v45 = *(v2 + 43);
      v42 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CMSuppressionManager feedViewObstructedEvent:facedown:timeSinceLastFacedownStatic:timestamp:force:]_block_invoke", "CoreLocation: %s\n", v42);
      if (v42 != buf)
      {
        free(v42);
      }
    }
  }

  v33 = *MEMORY[0x1E69E9840];
}

void sub_19B76964C(uint64_t a1)
{
  v69 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 8);
  if (*(v2 + 25) || (*(a1 + 56) & 1) != 0)
  {
    if (v2[15] == 0.0 && *(a1 + 40) == 2)
    {
      if (qword_1EAFE2800 != -1)
      {
        dispatch_once(&qword_1EAFE2800, &unk_1F0E3B638);
      }

      v3 = off_1EAFE2828;
      if (os_log_type_enabled(off_1EAFE2828, OS_LOG_TYPE_DEFAULT))
      {
        v6 = objc_msgSend_suppressionClientType(*(a1 + 32), v4, v5);
        v7 = *(v2 + 43);
        v9 = objc_msgSend_stringForEventType_(CMSuppressionEvent, v8, *(a1 + 40));
        v10 = *(a1 + 48);
        *buf = 134349826;
        v62 = v6;
        v63 = 2114;
        v64 = v7;
        v65 = 2114;
        v66 = v9;
        v67 = 2050;
        v68 = v10;
        _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}ld][%{public}@] -> Not feeding smart power nap event: %{public}@ @ %{public}f", buf, 0x2Au);
      }

      v11 = sub_19B420058();
      if (*(v11 + 160) > 1 || *(v11 + 164) > 1 || *(v11 + 168) > 1 || *(v11 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2800 != -1)
        {
          dispatch_once(&qword_1EAFE2800, &unk_1F0E3B638);
        }

        objc_msgSend_suppressionClientType(*(a1 + 32), v12, v13);
        v53 = *(v2 + 43);
        objc_msgSend_stringForEventType_(CMSuppressionEvent, v14, *(a1 + 40));
        v58 = *(a1 + 48);
        v15 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "[CMSuppressionManager feedSmartPowerNapEvent:timestamp:force:]_block_invoke", "CoreLocation: %s\n");
LABEL_52:
        if (v15 != buf)
        {
          free(v15);
        }
      }
    }

    else
    {
      if (qword_1EAFE2800 != -1)
      {
        dispatch_once(&qword_1EAFE2800, &unk_1F0E3B638);
      }

      v16 = off_1EAFE2828;
      if (os_log_type_enabled(off_1EAFE2828, OS_LOG_TYPE_DEFAULT))
      {
        v19 = objc_msgSend_suppressionClientType(*(a1 + 32), v17, v18);
        v20 = *(v2 + 43);
        v22 = objc_msgSend_stringForEventType_(CMSuppressionEvent, v21, *(a1 + 40));
        v23 = *(a1 + 48);
        *buf = 134349826;
        v62 = v19;
        v63 = 2114;
        v64 = v20;
        v65 = 2114;
        v66 = v22;
        v67 = 2050;
        v68 = v23;
        _os_log_impl(&dword_19B41C000, v16, OS_LOG_TYPE_DEFAULT, "[%{public}ld][%{public}@] -> Feeding smart power nap event: %{public}@ @ %{public}f", buf, 0x2Au);
      }

      v24 = sub_19B420058();
      if (*(v24 + 160) > 1 || *(v24 + 164) > 1 || *(v24 + 168) > 1 || *(v24 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2800 != -1)
        {
          dispatch_once(&qword_1EAFE2800, &unk_1F0E3B638);
        }

        objc_msgSend_suppressionClientType(*(a1 + 32), v27, v28);
        v54 = *(v2 + 43);
        objc_msgSend_stringForEventType_(CMSuppressionEvent, v29, *(a1 + 40));
        v59 = *(a1 + 48);
        v30 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "[CMSuppressionManager feedSmartPowerNapEvent:timestamp:force:]_block_invoke", "CoreLocation: %s\n", v30);
        if (v30 != buf)
        {
          free(v30);
        }
      }

      v31 = *(a1 + 48);
      if (v31 <= v2[15])
      {
        if (qword_1EAFE2800 != -1)
        {
          dispatch_once(&qword_1EAFE2800, &unk_1F0E3B638);
        }

        v33 = off_1EAFE2828;
        if (os_log_type_enabled(off_1EAFE2828, OS_LOG_TYPE_ERROR))
        {
          v36 = objc_msgSend_suppressionClientType(*(a1 + 32), v34, v35);
          v37 = *(v2 + 43);
          v38 = *(v2 + 15);
          v39 = *(a1 + 48);
          *buf = 134349826;
          v62 = v36;
          v63 = 2114;
          v64 = v37;
          v65 = 2050;
          v66 = v38;
          v67 = 2050;
          v68 = v39;
          _os_log_impl(&dword_19B41C000, v33, OS_LOG_TYPE_ERROR, "[%{public}ld][%{public}@] Invalid smart power nap event. Timestamp went backwards! old timestamp,%{public}f, new timestamp %{public}f", buf, 0x2Au);
        }

        v40 = sub_19B420058();
        if ((*(v40 + 160) & 0x80000000) == 0 || (*(v40 + 164) & 0x80000000) == 0 || (*(v40 + 168) & 0x80000000) == 0 || *(v40 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE2800 != -1)
          {
            dispatch_once(&qword_1EAFE2800, &unk_1F0E3B638);
          }

          objc_msgSend_suppressionClientType(*(a1 + 32), v41, v42);
          v55 = *(v2 + 43);
          v57 = *(v2 + 15);
          v60 = *(a1 + 48);
          v43 = _os_log_send_and_compose_impl();
          sub_19B6BB7CC("Generic", 1, 0, 0, "[CMSuppressionManager feedSmartPowerNapEvent:timestamp:force:]_block_invoke", "CoreLocation: %s\n", v43);
          if (v43 != buf)
          {
            free(v43);
          }
        }
      }

      else
      {
        v32 = *(a1 + 40);
        v2[15] = v31;
        *(v2 + 16) = v32;
        *(v2 + 17) = 2;
        v2[18] = 0.0;
        v2[19] = 0.0;
      }

      objc_msgSend_updateSuppressionStateAndSendToClient(*(a1 + 32), v25, v26);
    }
  }

  else
  {
    if (qword_1EAFE2800 != -1)
    {
      dispatch_once(&qword_1EAFE2800, &unk_1F0E3B638);
    }

    v44 = off_1EAFE2828;
    if (os_log_type_enabled(off_1EAFE2828, OS_LOG_TYPE_ERROR))
    {
      v47 = objc_msgSend_suppressionClientType(*(a1 + 32), v45, v46);
      v48 = *(v2 + 43);
      *buf = 134349314;
      v62 = v47;
      v63 = 2114;
      v64 = v48;
      _os_log_impl(&dword_19B41C000, v44, OS_LOG_TYPE_ERROR, "[%{public}ld][%{public}@] Not feeding smart power nap event! Suppression already stopped.", buf, 0x16u);
    }

    v49 = sub_19B420058();
    if ((*(v49 + 160) & 0x80000000) == 0 || (*(v49 + 164) & 0x80000000) == 0 || (*(v49 + 168) & 0x80000000) == 0 || *(v49 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2800 != -1)
      {
        dispatch_once(&qword_1EAFE2800, &unk_1F0E3B638);
      }

      objc_msgSend_suppressionClientType(*(a1 + 32), v50, v51);
      v56 = *(v2 + 43);
      v15 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CMSuppressionManager feedSmartPowerNapEvent:timestamp:force:]_block_invoke", "CoreLocation: %s\n");
      goto LABEL_52;
    }
  }

  v52 = *MEMORY[0x1E69E9840];
}

void sub_19B769EC8(uint64_t a1)
{
  v69 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 8);
  if (*(v2 + 26) || (*(a1 + 56) & 1) != 0)
  {
    if (v2[20] == 0.0 && *(a1 + 40) == 2)
    {
      if (qword_1EAFE2800 != -1)
      {
        dispatch_once(&qword_1EAFE2800, &unk_1F0E3B638);
      }

      v3 = off_1EAFE2828;
      if (os_log_type_enabled(off_1EAFE2828, OS_LOG_TYPE_DEFAULT))
      {
        v6 = objc_msgSend_suppressionClientType(*(a1 + 32), v4, v5);
        v7 = *(v2 + 43);
        v9 = objc_msgSend_stringForEventType_(CMSuppressionEvent, v8, *(a1 + 40));
        v10 = *(a1 + 48);
        *buf = 134349826;
        v62 = v6;
        v63 = 2114;
        v64 = v7;
        v65 = 2114;
        v66 = v9;
        v67 = 2050;
        v68 = v10;
        _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}ld][%{public}@] -> Not feeding device presence event: %{public}@ @ %{public}f", buf, 0x2Au);
      }

      v11 = sub_19B420058();
      if (*(v11 + 160) > 1 || *(v11 + 164) > 1 || *(v11 + 168) > 1 || *(v11 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2800 != -1)
        {
          dispatch_once(&qword_1EAFE2800, &unk_1F0E3B638);
        }

        objc_msgSend_suppressionClientType(*(a1 + 32), v12, v13);
        v53 = *(v2 + 43);
        objc_msgSend_stringForEventType_(CMSuppressionEvent, v14, *(a1 + 40));
        v58 = *(a1 + 48);
        v15 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "[CMSuppressionManager feedDevicePresenceEvent:timestamp:force:]_block_invoke", "CoreLocation: %s\n");
LABEL_52:
        if (v15 != buf)
        {
          free(v15);
        }
      }
    }

    else
    {
      if (qword_1EAFE2800 != -1)
      {
        dispatch_once(&qword_1EAFE2800, &unk_1F0E3B638);
      }

      v16 = off_1EAFE2828;
      if (os_log_type_enabled(off_1EAFE2828, OS_LOG_TYPE_DEFAULT))
      {
        v19 = objc_msgSend_suppressionClientType(*(a1 + 32), v17, v18);
        v20 = *(v2 + 43);
        v22 = objc_msgSend_stringForEventType_(CMSuppressionEvent, v21, *(a1 + 40));
        v23 = *(a1 + 48);
        *buf = 134349826;
        v62 = v19;
        v63 = 2114;
        v64 = v20;
        v65 = 2114;
        v66 = v22;
        v67 = 2050;
        v68 = v23;
        _os_log_impl(&dword_19B41C000, v16, OS_LOG_TYPE_DEFAULT, "[%{public}ld][%{public}@] -> Feeding device presence event: %{public}@ @ %{public}f", buf, 0x2Au);
      }

      v24 = sub_19B420058();
      if (*(v24 + 160) > 1 || *(v24 + 164) > 1 || *(v24 + 168) > 1 || *(v24 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2800 != -1)
        {
          dispatch_once(&qword_1EAFE2800, &unk_1F0E3B638);
        }

        objc_msgSend_suppressionClientType(*(a1 + 32), v27, v28);
        v54 = *(v2 + 43);
        objc_msgSend_stringForEventType_(CMSuppressionEvent, v29, *(a1 + 40));
        v59 = *(a1 + 48);
        v30 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "[CMSuppressionManager feedDevicePresenceEvent:timestamp:force:]_block_invoke", "CoreLocation: %s\n", v30);
        if (v30 != buf)
        {
          free(v30);
        }
      }

      v31 = *(a1 + 48);
      if (v31 <= v2[20])
      {
        if (qword_1EAFE2800 != -1)
        {
          dispatch_once(&qword_1EAFE2800, &unk_1F0E3B638);
        }

        v33 = off_1EAFE2828;
        if (os_log_type_enabled(off_1EAFE2828, OS_LOG_TYPE_ERROR))
        {
          v36 = objc_msgSend_suppressionClientType(*(a1 + 32), v34, v35);
          v37 = *(v2 + 43);
          v38 = *(v2 + 20);
          v39 = *(a1 + 48);
          *buf = 134349826;
          v62 = v36;
          v63 = 2114;
          v64 = v37;
          v65 = 2050;
          v66 = v38;
          v67 = 2050;
          v68 = v39;
          _os_log_impl(&dword_19B41C000, v33, OS_LOG_TYPE_ERROR, "[%{public}ld][%{public}@] Invalid device presence event. Timestamp went backwards! old timestamp,%{public}f, new timestamp %{public}f", buf, 0x2Au);
        }

        v40 = sub_19B420058();
        if ((*(v40 + 160) & 0x80000000) == 0 || (*(v40 + 164) & 0x80000000) == 0 || (*(v40 + 168) & 0x80000000) == 0 || *(v40 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE2800 != -1)
          {
            dispatch_once(&qword_1EAFE2800, &unk_1F0E3B638);
          }

          objc_msgSend_suppressionClientType(*(a1 + 32), v41, v42);
          v55 = *(v2 + 43);
          v57 = *(v2 + 20);
          v60 = *(a1 + 48);
          v43 = _os_log_send_and_compose_impl();
          sub_19B6BB7CC("Generic", 1, 0, 0, "[CMSuppressionManager feedDevicePresenceEvent:timestamp:force:]_block_invoke", "CoreLocation: %s\n", v43);
          if (v43 != buf)
          {
            free(v43);
          }
        }
      }

      else
      {
        v32 = *(a1 + 40);
        v2[20] = v31;
        *(v2 + 21) = v32;
        *(v2 + 22) = 4;
        v2[23] = 0.0;
        v2[24] = 0.0;
      }

      objc_msgSend_updateSuppressionStateAndSendToClient(*(a1 + 32), v25, v26);
    }
  }

  else
  {
    if (qword_1EAFE2800 != -1)
    {
      dispatch_once(&qword_1EAFE2800, &unk_1F0E3B638);
    }

    v44 = off_1EAFE2828;
    if (os_log_type_enabled(off_1EAFE2828, OS_LOG_TYPE_ERROR))
    {
      v47 = objc_msgSend_suppressionClientType(*(a1 + 32), v45, v46);
      v48 = *(v2 + 43);
      *buf = 134349314;
      v62 = v47;
      v63 = 2114;
      v64 = v48;
      _os_log_impl(&dword_19B41C000, v44, OS_LOG_TYPE_ERROR, "[%{public}ld][%{public}@] Not feeding device presence event! Suppression already stopped.", buf, 0x16u);
    }

    v49 = sub_19B420058();
    if ((*(v49 + 160) & 0x80000000) == 0 || (*(v49 + 164) & 0x80000000) == 0 || (*(v49 + 168) & 0x80000000) == 0 || *(v49 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2800 != -1)
      {
        dispatch_once(&qword_1EAFE2800, &unk_1F0E3B638);
      }

      objc_msgSend_suppressionClientType(*(a1 + 32), v50, v51);
      v56 = *(v2 + 43);
      v15 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CMSuppressionManager feedDevicePresenceEvent:timestamp:force:]_block_invoke", "CoreLocation: %s\n");
      goto LABEL_52;
    }
  }

  v52 = *MEMORY[0x1E69E9840];
}

void sub_19B76ABCC(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  Weak = objc_loadWeak((a1 + 40));
  if (Weak)
  {
    v3 = Weak;
    Current = CFAbsoluteTimeGetCurrent();
    v7 = objc_msgSend_syncState(*(*(a1 + 32) + 200), v5, v6);
    v9 = CFAbsoluteTimeGetCurrent() - Current;
    if (v9 > 10.0)
    {
      if (qword_1EAFE2800 != -1)
      {
        dispatch_once(&qword_1EAFE2800, &unk_1F0E3B638);
      }

      v10 = off_1EAFE2828;
      if (os_log_type_enabled(off_1EAFE2828, OS_LOG_TYPE_FAULT))
      {
        *buf = 134349056;
        v23 = v9;
        _os_log_impl(&dword_19B41C000, v10, OS_LOG_TYPE_FAULT, "SmartPowerNap syncState took longer than 10s to return. Waited: %{public}f", buf, 0xCu);
      }

      v11 = sub_19B420058();
      if ((*(v11 + 160) & 0x80000000) == 0 || (*(v11 + 164) & 0x80000000) == 0 || (*(v11 + 168) & 0x80000000) == 0 || *(v11 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2800 != -1)
        {
          dispatch_once(&qword_1EAFE2800, &unk_1F0E3B638);
        }

        v20 = 134349056;
        v21 = v9;
        v12 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 0, "[CMSuppressionManager startSuppressionUpdatesPrivateToQueue:withHandler:]_block_invoke", "CoreLocation: %s\n", v12);
        if (v12 != buf)
        {
          free(v12);
        }
      }
    }

    objc_msgSend_handleSmartPowerNapState_(v3, v8, v7);
    v13 = *(a1 + 32);
    v14 = *(v13 + 200);
    v15 = *(v13 + 64);
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = sub_19B76AE70;
    v18[3] = &unk_1E7535DB8;
    objc_copyWeak(&v19, (a1 + 40));
    objc_msgSend_registerWithCallback_callback_(v14, v16, v15, v18);
    objc_destroyWeak(&v19);
  }

  v17 = *MEMORY[0x1E69E9840];
}

id sub_19B76AE70(uint64_t a1, uint64_t a2)
{
  result = objc_loadWeak((a1 + 32));
  if (result)
  {

    return objc_msgSend_handleSmartPowerNapState_(result, v4, a2);
  }

  return result;
}

void *sub_19B76B308(uint64_t a1, const char *a2)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 40);
  *(*(a1 + 32) + 16) = v2;
  *(*(a1 + 32) + 24) = v3;
  v4 = *(*(a1 + 32) + 8);
  result = *(v4 + 312);
  if (result)
  {
    v6 = *(v4 + 320);
    if (v6)
    {
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = sub_19B76B3A8;
      v7[3] = &unk_1E7534128;
      v8 = v2;
      v7[4] = v6;
      v7[5] = v3;
      return objc_msgSend_addOperationWithBlock_(result, a2, v7);
    }
  }

  return result;
}

uint64_t sub_19B76B5DC(uint64_t a1, const char *a2, uint64_t a3)
{
  *(*(*(a1 + 32) + 8) + 234) = 1;
  objc_msgSend_sendViewObstructedRequestPrivate(*(a1 + 32), a2, a3);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);

  return MEMORY[0x1EEE66B58](v4, sel_startViewObstructedStateUpdatesPrivateToQueue_withHandler_, v5);
}

uint64_t sub_19B76B830(uint64_t a1, const char *a2, uint64_t a3)
{
  *(*(*(a1 + 32) + 8) + 234) = 0;
  objc_msgSend_sendViewObstructedRequestPrivate(*(a1 + 32), a2, a3);
  v6 = *(a1 + 32);

  return objc_msgSend_stopViewObstructedStateUpdatesPrivate(v6, v4, v5);
}

void sub_19B76BC90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

const char *sub_19B76C480(unint64_t a1)
{
  if (a1 > 5)
  {
    return "Unexpected";
  }

  else
  {
    return off_1E7535DD8[a1];
  }
}

void sub_19B76C69C()
{
  v9 = *MEMORY[0x1E69E9840];
  v0 = sub_19B420D84();
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  buf[0] = 0;
  v3 = sub_19B438CCC(v1, "EnableSuppressionManagerOnUnsupportedHardware", buf);
  byte_1EAFE35F0 = v3 & buf[0];
  if (v2)
  {
    sub_19B41FFEC(v2);
    if ((byte_1EAFE35F0 & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  else if ((v3 & buf[0]) == 0)
  {
    goto LABEL_19;
  }

  if (qword_1EAFE2800 != -1)
  {
    dispatch_once(&qword_1EAFE2800, &unk_1F0E3B638);
  }

  v4 = off_1EAFE2828;
  if (os_log_type_enabled(off_1EAFE2828, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_DEFAULT, "Default to enable suppression manager on unsupported hardware is enabled!", buf, 2u);
  }

  v5 = sub_19B420058();
  if (*(v5 + 160) > 1 || *(v5 + 164) > 1 || *(v5 + 168) > 1 || *(v5 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2800 != -1)
    {
      dispatch_once(&qword_1EAFE2800, &unk_1F0E3B638);
    }

    v6 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "BOOL isSuppressionAvailablePrivate()_block_invoke", "CoreLocation: %s\n", v6);
    if (v6 != buf)
    {
      free(v6);
    }
  }

LABEL_19:
  v7 = *MEMORY[0x1E69E9840];
}

os_log_t sub_19B76C8C4()
{
  result = os_log_create("com.apple.locationd.Motion", "Eclipse");
  off_1EAFE2828 = result;
  return result;
}

Class sub_19B76C8F4()
{
  if (qword_1EAFE3608 != -1)
  {
    dispatch_once(&qword_1EAFE3608, &unk_1F0E3B658);
  }

  result = objc_getClass("_PMSmartPowerNap");
  qword_1EAFE3600 = result;
  off_1ED71C840[0] = sub_19B76C958;
  return result;
}

void *sub_19B76C964()
{
  result = dlopen("/System/Library/PrivateFrameworks/LowPowerMode.framework/LowPowerMode", 2);
  qword_1EAFE35E8 = result;
  return result;
}

Class sub_19B76C990()
{
  if (qword_1EAFE3618 != -1)
  {
    dispatch_once(&qword_1EAFE3618, &unk_1F0E3B678);
  }

  result = objc_getClass("DPCManager");
  qword_1EAFE3610 = result;
  off_1ED71C848[0] = sub_19B76C9F4;
  return result;
}

void *sub_19B76CA00()
{
  result = dlopen("/System/Library/PrivateFrameworks/DevicePresence.framework/DevicePresence", 2);
  qword_1EAFE35E0 = result;
  return result;
}

void sub_19B76CA38(uint64_t a1)
{
  sub_19B42A51C(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B76D15C(uint64_t a1)
{
  v1 = 0;
  v2 = 0;
  v3 = *(a1 + 8);
  do
  {
    if (v3)
    {
      --v3;
      v4 = *(a1 + 12);
    }

    else
    {
      v5 = (*a1)++;
      v4 = *v5;
      *(a1 + 12) = v4;
      v3 = 7;
    }

    *(a1 + 8) = v3;
    v2 |= ((v4 >> v3) & 1) << v1++;
  }

  while (v1 != 64);
  return v2;
}

uint64_t sub_19B76D1B8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = 0;
  LODWORD(v3) = 0;
  v4 = *(a1 + 8);
  do
  {
    if (v4)
    {
      --v4;
      v5 = *(a1 + 12);
    }

    else
    {
      v6 = (*a1)++;
      v5 = *v6;
      *(a1 + 12) = v5;
      v4 = 7;
    }

    *(a1 + 8) = v4;
    v3 = (((v5 >> v4) & 1) << v2++) | v3;
  }

  while (a2 != v2);
  return v3;
}

uint64_t sub_19B76D220(uint64_t a1)
{
  v2 = sub_19B76D1B8(a1, 4);
  v3 = ((v2 << 28 >> 31) & 0xFFFFFFF0) + v2;
  if (v3 == -8)
  {
    result = sub_19B76D15C(a1);
    v5 = *(a1 + 16);
  }

  else
  {
    v5 = *(a1 + 16);
    result = v5 + v3 + *(a1 + 24);
  }

  *(a1 + 16) = result;
  *(a1 + 24) = result - v5;
  return result;
}

float sub_19B76D280@<S0>(int *a1@<X0>, _DWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v12 = *MEMORY[0x1E69E9840];
  v6 = *a1;
  v7 = sub_19B76D220(a1);
  sub_19B76D344(a1, &v10, (a1 + 8));
  *a2 = *a1 - v6;
  *a3 = vmul_f32(vcvt_f32_s32(v10), vdup_n_s32(0x39800000u));
  result = v11 * 0.00024414;
  *(a3 + 8) = result;
  *(a3 + 12) = v7;
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_19B76D344(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = byte_19B7BD969[sub_19B76D1B8(a1, 3)];
  do
  {
    result = sub_19B76D1B8(a1, v7);
    if ((result & (1 << (v7 - 1))) != 0)
    {
      v9 = -1 << v7;
    }

    else
    {
      v9 = 0;
    }

    v10 = *(a3 + v6) + result + v9;
    *(a2 + v6) = v10;
    *(a3 + v6) = v10;
    v6 += 4;
  }

  while (v6 != 12);
  return result;
}

float32x4_t sub_19B76D3E4@<Q0>(int *a1@<X0>, _DWORD *a2@<X1>, float32x4_t *a3@<X8>)
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = *a1;
  v7 = sub_19B76D220(a1);
  sub_19B76D494(a1, &v10, (a1 + 8));
  *a2 = *a1 - v6;
  result = vmulq_f32(vcvtq_f32_s32(v10), vdupq_n_s32(0x3D800000u));
  *a3 = result;
  a3[1].i64[0] = v7;
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_19B76D494(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = byte_19B7BD971[sub_19B76D1B8(a1, 3)];
  do
  {
    result = sub_19B76D1B8(a1, v7);
    if ((result & (1 << (v7 - 1))) != 0)
    {
      v9 = -1 << v7;
    }

    else
    {
      v9 = 0;
    }

    v10 = *(a3 + v6) + result + v9;
    *(a2 + v6) = v10;
    *(a3 + v6) = v10;
    v6 += 4;
  }

  while (v6 != 16);
  return result;
}

float32x2_t sub_19B76D534@<D0>(int *a1@<X0>, _DWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v17[1] = *MEMORY[0x1E69E9840];
  v6 = *a1;
  v7 = sub_19B76D220(a1);
  sub_19B76D600(a1, v17, (a1 + 8));
  *a2 = *a1 - v6;
  v8 = vdup_n_s32(0x39800000u);
  v9 = vmul_f32(vcvt_f32_s32(v17[0]), v8);
  v8.i32[0] = 1119092736;
  v8.i32[0] = vadd_f32(v9, v8).u32[0];
  __asm { FMOV            V2.2S, #10.0 }

  result = vmul_f32(v9, _D2);
  v8.i32[1] = result.i32[1];
  *a3 = v8;
  *(a3 + 8) = 0;
  *(a3 + 12) = v7;
  v16 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_19B76D600(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = byte_19B7BD979[sub_19B76D1B8(a1, 3)];
  v8 = 1;
  do
  {
    v9 = v8;
    result = sub_19B76D1B8(a1, v7);
    v8 = 0;
    if ((result & (1 << (v7 - 1))) != 0)
    {
      v11 = -1 << v7;
    }

    else
    {
      v11 = 0;
    }

    v12 = *(a3 + 4 * v6) + result + v11;
    *(a2 + 4 * v6) = v12;
    *(a3 + 4 * v6) = v12;
    v6 = 1;
  }

  while ((v9 & 1) != 0);
  return result;
}

double sub_19B76D780(uint64_t a1)
{
  *a1 = &unk_1F0E32700;
  *(a1 + 8) = 0x1000000000;
  *(a1 + 232) = 0;
  *(a1 + 237) = 0;
  *(a1 + 248) = 1;
  result = 0.0;
  *(a1 + 260) = 0u;
  *(a1 + 276) = 0x2000000000;
  *(a1 + 416) = 0;
  *(a1 + 424) = 0;
  *(a1 + 428) = 973279855;
  *(a1 + 432) = vdup_n_s32(0x3A03126Fu);
  *(a1 + 472) = 0;
  *(a1 + 440) = 0u;
  *(a1 + 456) = 0u;
  *(a1 + 480) = 1;
  *(a1 + 488) = 32;
  *(a1 + 500) = 0;
  *(a1 + 492) = 0;
  *(a1 + 504) = 1065353216;
  *(a1 + 508) = 0;
  *(a1 + 512) = 0xA00000000;
  *(a1 + 680) = 1065353216;
  *(a1 + 688) = 0x500000000;
  *(a1 + 736) = 0x500000000;
  *(a1 + 208) = 0x3BCD3E0000000000;
  *(a1 + 216) = 0;
  *(a1 + 221) = 0;
  *(a1 + 821) = 0;
  *(a1 + 808) = 0u;
  return result;
}

int32x2_t sub_19B76D864(uint64_t a1)
{
  *(a1 + 8) = 0;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  *(a1 + 221) = 0;
  *(a1 + 416) = 0;
  *(a1 + 424) = 0;
  *(a1 + 460) = 0;
  *(a1 + 452) = 0;
  *(a1 + 232) = 0;
  *(a1 + 237) = 0;
  *(a1 + 824) = 0;
  *(a1 + 808) = 0u;
  *(a1 + 428) = 973279855;
  result = vdup_n_s32(0x3A03126Fu);
  *(a1 + 432) = result;
  *(a1 + 464) = 0;
  *(a1 + 472) = 0;
  *(a1 + 448) = 0;
  *(a1 + 440) = 0;
  *(a1 + 268) = 0;
  *(a1 + 260) = 0;
  *(a1 + 276) = 0;
  *(a1 + 248) = 1;
  *(a1 + 492) = 0;
  *(a1 + 500) = 0x3F80000000000000;
  *(a1 + 512) = 0;
  *(a1 + 508) = 0;
  *(a1 + 680) = 1065353216;
  *(a1 + 688) = 0;
  *(a1 + 736) = 0;
  *(a1 + 828) = 0;
  return result;
}

uint64_t sub_19B76D914(uint64_t a1, float32x2_t *a2, uint64_t a3)
{
  sub_19B5BE720((a1 + 8), a2);
  sub_19B6931F4((a1 + 208), a2);
  *(a1 + 240) = *(a1 + 824);
  *(a1 + 232) = *(a1 + 816);
  result = sub_19B76D990(a1, *(a1 + 808), a1 + 232);
  *(a1 + 244) = result;
  *(a1 + 808) = a3;
  v7 = a2[1].i32[0];
  *(a1 + 816) = *a2;
  *(a1 + 824) = v7;
  return result;
}

uint64_t sub_19B76D990(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v7 = *(a1 + 690);
  if (*(a1 + 692) != v7)
  {
    return 0;
  }

  v38 = v6;
  v39 = v5;
  v40 = v3;
  v41 = v4;
  v8 = a2;
  v10 = *(a1 + 688);
  if (*(a1 + 696 + 8 * v10) > a2)
  {
    return 0;
  }

  v11 = v7 + v10 - 1;
  v12 = v11 >= v7 ? v7 : 0;
  v13 = *(a1 + 696 + 8 * (v11 - v12));
  if (v13 + 10000 < a2)
  {
    return 0;
  }

  v16 = v13 >= a2;
  v17 = v13 - a2;
  if (!v16)
  {
    v18 = 0;
    v19 = *(a1 + 736) + *(a1 + 738) - 1;
    v20 = *(a1 + 740);
    if (v19 < v20)
    {
      v20 = 0;
    }

    v21 = (a1 + 12 * (v19 - v20));
    v22 = v17 * 0.000001;
    v23 = v22 * v21[94].f32[0];
    v36 = vmul_n_f32(v21[93], v22);
    v37 = v23;
    do
    {
      v36.f32[v18] = -v36.f32[v18];
      ++v18;
    }

    while (v18 != 3);
    v34 = v36;
    v35 = v37;
    sub_19B61AC60(&v34, &v36);
    *a3 = sub_19B61AD14(&v36, a3);
    *(a3 + 4) = v24;
    *(a3 + 8) = v25;
    return 1;
  }

  if (v7 == 1)
  {
    return 1;
  }

  v26 = 0;
  do
  {
    v27 = sub_19B607AFC((a1 + 688), v26++);
    if (v8 >= *v27 && v8 < *sub_19B607AFC((a1 + 688), v26))
    {
      v33 = (*sub_19B607AFC((a1 + 688), v26) - v8) * 0.000001;
      v28 = sub_19B5BEC4C((a1 + 736), v26);
      v29 = 0;
      v30 = v33 * v28[1].f32[0];
      v36 = vmul_n_f32(*v28, v33);
      v37 = v30;
      do
      {
        v36.f32[v29] = -v36.f32[v29];
        ++v29;
      }

      while (v29 != 3);
      v34 = v36;
      v35 = v37;
      sub_19B61AC60(&v34, &v36);
      *a3 = sub_19B61AD14(&v36, a3);
      *(a3 + 4) = v31;
      *(a3 + 8) = v32;
      v8 = *sub_19B607AFC((a1 + 688), v26);
    }

    result = 1;
  }

  while (v26 < *(a1 + 690) - 1);
  return result;
}

void sub_19B76DBF0(uint64_t a1, float32x2_t *a2, unint64_t a3)
{
  if (*(a1 + 424) == 1)
  {
    v44 = v6;
    v45 = v5;
    v46 = v3;
    v47 = v4;
    if (*(a1 + 828))
    {
      *(a1 + 276) = 0;
      *(a1 + 268) = 0;
      *(a1 + 260) = 0;
      *(a1 + 248) = 1;
      v10 = *a2;
      *(a1 + 472) = a2[1].i32[0];
      *(a1 + 464) = v10;
      *(a1 + 492) = 0;
      *(a1 + 500) = 0x3F80000000000000;
      *(a1 + 512) = 0;
      *(a1 + 508) = 0;
      *(a1 + 680) = 1065353216;
      *(a1 + 828) = 0;
    }

    v11 = (a1 + 452);
    v12 = ((*(a1 + 472) + a2[1].f32[0]) * 0.5) - *(a1 + 460);
    v42 = vsub_f32(vmul_f32(vadd_f32(*(a1 + 464), *a2), 0x3F0000003F000000), *(a1 + 452));
    v43 = v12;
    v13 = *(a1 + 690);
    v14 = *(a1 + 692);
    v15 = *(a1 + 688);
    if (v15 + v13 >= v14)
    {
      v16 = *(a1 + 692);
    }

    else
    {
      v16 = 0;
    }

    *(a1 + 8 * (v15 + v13 - v16) + 696) = a3;
    if (v14 <= v13)
    {
      if (v15 + 1 < v14)
      {
        LOWORD(v14) = 0;
      }

      *(a1 + 688) = v15 + 1 - v14;
    }

    else
    {
      *(a1 + 690) = v13 + 1;
    }

    sub_19B5BE720((a1 + 736), &v42);
    v17 = a2[1].f32[0] - *(a1 + 460);
    *(a1 + 440) = vsub_f32(*a2, *v11);
    *(a1 + 448) = v17;
    v18 = *a2;
    *(a1 + 472) = a2[1].i32[0];
    *(a1 + 464) = v18;
    v18.i32[0] = *(a1 + 484) + 1;
    *(a1 + 484) = v18.i32[0];
    if (v18.i32[0] == *(a1 + 480))
    {
      v19 = 0;
      v20 = 0.0;
      do
      {
        v20 = v20 + (*(a1 + 440 + v19) * *(a1 + 440 + v19));
        v19 += 4;
      }

      while (v19 != 12);
      v41.i32[0] = sqrtf(v20);
      sub_19B5BC034(a1 + 248, v41.f32);
      *(a1 + 484) = 0;
    }

    v21 = *(a1 + 416);
    if (v21)
    {
      v22 = a3 >= v21;
      v23 = a3 - v21;
      if (v23 != 0 && v22)
      {
        v24 = (*(a1 + 448) * v23) * 0.000001;
        v39 = vmul_f32(vmul_n_f32(*(a1 + 440), v23), vdup_n_s32(0x358637BDu));
        v40 = v24;
        *v25.i64 = sub_19B66C264(&v41, &v39);
        *(a1 + 492) = sub_19B66BF70(&v41, (a1 + 492), v25);
        *(a1 + 496) = v26;
        *(a1 + 500) = v27;
        *(a1 + 504) = v28;
      }
    }

    v29 = *(a1 + 508) + 1;
    *(a1 + 508) = v29;
    if ((*(a1 + 476) * v29) >> 4 >= 0x753)
    {
      sub_19B6932D8((a1 + 512), (a1 + 492));
      *(a1 + 508) = 0;
    }

    if (*(a1 + 516) == *(a1 + 514))
    {
      v30 = 0;
      v31 = 1.0;
      do
      {
        v32 = sub_19B69ADEC((a1 + 512), v30);
        v34.f32[0] = sub_19B66BFF4((a1 + 492), v33);
        v41.i64[0] = __PAIR64__(v35, v34.u32[0]);
        v41.i64[1] = __PAIR64__(v37, v36);
        sub_19B66BF70(v32, v41.f32, v34);
        if (v31 >= v38)
        {
          v31 = v38;
        }

        ++v30;
      }

      while (v30 != 10);
      *(a1 + 680) = v31;
    }

    *(a1 + 416) = a3;
  }
}

BOOL sub_19B76DEC4(uint64_t a1)
{
  v2 = sub_19B5BF0D0((a1 + 8), 0, *(a1 + 10));
  v3 = 0;
  v14 = v2;
  v15 = v4;
  v16 = v5;
  v6 = 0.0;
  do
  {
    v6 = v6 + (*(&v14 + v3) * *(&v14 + v3));
    v3 += 4;
  }

  while (v3 != 12);
  v7 = sqrtf(v6) + -1.0;
  if (v7 <= 0.0)
  {
    v7 = -v7;
  }

  if (v7 >= 0.05)
  {
    return 0;
  }

  sub_19B5E9EFC((a1 + 8), 0, *(a1 + 10));
  v8 = 0;
  v14 = v9;
  v15 = v10;
  v16 = v11;
  v12 = 0.0;
  do
  {
    v12 = v12 + (*(&v14 + v8) * *(&v14 + v8));
    v8 += 4;
  }

  while (v8 != 12);
  return sqrtf(v12) < 0.01;
}

void sub_19B76E270(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v53 = *MEMORY[0x1E69E9840];
  sub_19B5BE720(a1, a2);
  if (a5 != 2)
  {
    v9 = *(a1 + 2);
    if (v9 >= 0x1F)
    {
      v10 = sub_19B5BF0D0(a1, 0, v9);
      v12 = v11;
      v14 = v13;
      *v36 = v10;
      *&v36[1] = v11;
      *&v36[2] = v13;
      sub_19B5E9EFC(a1, 0, *(a1 + 2));
      v17 = 0;
      v34 = v16;
      v35 = v18;
      v19 = 0.0;
      do
      {
        v19 = v19 + (*&v36[v17] * *&v36[v17]);
        ++v17;
      }

      while (v17 != 3);
      v20 = sqrtf(v19) + -1.0;
      if (v15 <= 0.0)
      {
        v21 = -v15;
      }

      else
      {
        v21 = v15;
      }

      for (i = 4; i != 12; i += 4)
      {
        v23 = *&v33[i];
        if (v23 <= 0.0)
        {
          v23 = -v23;
        }

        if (v23 > v21)
        {
          v21 = v23;
        }
      }

      v24 = -v20;
      if (v20 > 0.0)
      {
        v24 = v20;
      }

      if (v21 < 0.000002 && v24 < 0.05)
      {
        v25 = -v14;
        if (v14 > 0.0)
        {
          v25 = v14;
        }

        v26 = v25 + -1.0;
        if (v26 <= 0.0)
        {
          v26 = -v26;
        }

        if (v26 <= 0.05)
        {
          if (qword_1ED71C820 != -1)
          {
            dispatch_once(&qword_1ED71C820, &unk_1F0E2A4C0);
          }

          v27 = off_1ED71C828;
          if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_DEBUG))
          {
            *buf = 134218752;
            v46 = v10;
            v47 = 2048;
            v48 = v12;
            v49 = 2048;
            v50 = v14;
            v51 = 2048;
            v52 = v21;
            _os_log_impl(&dword_19B41C000, v27, OS_LOG_TYPE_DEBUG, "[Gesture] Grabbing reference pose while static, %.3f, %.3f, %.3f, varInfNorm, %.8f", buf, 0x2Au);
          }

          v28 = sub_19B420058();
          if (*(v28 + 160) <= 1 && *(v28 + 164) <= 1 && *(v28 + 168) <= 1 && !*(v28 + 152))
          {
            goto LABEL_56;
          }

          bzero(buf, 0x65CuLL);
          if (qword_1ED71C820 != -1)
          {
            dispatch_once(&qword_1ED71C820, &unk_1F0E2A4C0);
          }

          v37 = 134218752;
          v38 = v10;
          v39 = 2048;
          v40 = v12;
          v41 = 2048;
          v42 = v14;
          v43 = 2048;
          v44 = v21;
          goto LABEL_54;
        }
      }

      if (a5 == 1 && a4 && !*(a1 + 752))
      {
        if (v15 <= v16)
        {
          v15 = v16;
          if (v16 < 0.00008)
          {
LABEL_43:
            if (qword_1ED71C820 != -1)
            {
              dispatch_once(&qword_1ED71C820, &unk_1F0E2A4C0);
            }

            v29 = off_1ED71C828;
            if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_DEBUG))
            {
              *buf = 0;
              _os_log_impl(&dword_19B41C000, v29, OS_LOG_TYPE_DEBUG, "[Gesture] Getting new reference in StableState when no reference is available yet.", buf, 2u);
            }

            v30 = sub_19B420058();
            if (*(v30 + 160) <= 1 && *(v30 + 164) <= 1 && *(v30 + 168) <= 1 && !*(v30 + 152))
            {
              goto LABEL_56;
            }

            bzero(buf, 0x65CuLL);
            if (qword_1ED71C820 != -1)
            {
              dispatch_once(&qword_1ED71C820, &unk_1F0E2A4C0);
            }

            LOWORD(v37) = 0;
LABEL_54:
            v31 = _os_log_send_and_compose_impl();
            sub_19B6BB7CC("Generic", 1, 0, 2, "void CMPickupDetector::StaticReference::feedBufferAndCalcReference(const CMVector3d &, uint64_t, uint64_t, DetectionState)", "CoreLocation: %s\n", v31);
            if (v31 != buf)
            {
              free(v31);
            }

LABEL_56:
            *(a1 + 752) = a3;
            *(a1 + 760) = sqrtf((v12 * v12) + (v10 * v10));
            goto LABEL_57;
          }
        }

        else if (v15 < 0.00008)
        {
          goto LABEL_43;
        }

        if ((a3 - a4) >= 0x1E8481 && v15 < 0.0004)
        {
          goto LABEL_43;
        }
      }
    }
  }

LABEL_57:
  v32 = *MEMORY[0x1E69E9840];
}

uint64_t sub_19B76E724(unsigned __int8 *a1, float32x2_t *a2, unint64_t a3)
{
  sub_19B6931F4(a1 + 1, a2);
  v5 = *(a1 + 5) - 1;
  *(a1 + 5) = v5;
  if (!v5)
  {
    *(a1 + 5) = *(a1 + 4);
    v6 = *(a1 + 6);
    v8 = *(a1 + 2);
    v9 = v6;
    sub_19B76E270((a1 + 48), &v8, a3, *(a1 + 105), *a1);
    *(a1 + 102) = a3;
    sub_19B76E7B0(a1, &v8, a3);
  }

  return *a1;
}

uint64_t sub_19B76E7B0(uint64_t a1, float *a2, unint64_t a3)
{
  v3 = a3;
  if (*a1 == 1)
  {
    result = sub_19B76ED8C(a1, a2, a3);
    if (!result)
    {
      return result;
    }

    v3 = 0;
    *a1 = 2;
    *(a1 + 800) = 0;
    *(a1 + 808) = 0;
    *(a1 + 836) = 0;
  }

  else
  {
    result = sub_19B76E828(a1, a3);
    if (!result)
    {
      return result;
    }

    *a1 = 1;
    *(a1 + 832) = 0;
  }

  *(a1 + 840) = v3;
  return result;
}

uint64_t sub_19B76E828(uint64_t a1, unint64_t a2)
{
  v38 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 50);
  if (v2 < 0x1F)
  {
    goto LABEL_2;
  }

  v6 = *(a1 + 800);
  if (v6 == a2 && v6 - 1 < a2)
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E2A4C0);
    }

    v25 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v25, OS_LOG_TYPE_DEBUG, "[Gesture] Entered Stable state from being static/frozen", buf, 2u);
    }

    v26 = sub_19B420058();
    if (*(v26 + 160) <= 1 && *(v26 + 164) <= 1 && *(v26 + 168) <= 1 && !*(v26 + 152))
    {
      goto LABEL_54;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1ED71C820 == -1)
    {
LABEL_52:
      v27 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "BOOL CMPickupDetector::checkForStable(uint64_t)", "CoreLocation: %s\n", v27);
      if (v27 != buf)
      {
        free(v27);
      }

LABEL_54:
      result = 1;
      goto LABEL_55;
    }

LABEL_58:
    dispatch_once(&qword_1ED71C820, &unk_1F0E2A4C0);
    goto LABEL_52;
  }

  v8 = sub_19B5BF0D0((a1 + 48), 0, v2);
  v10 = v9;
  sub_19B5E9EFC((a1 + 48), 0, *(a1 + 50));
  v13 = sqrtf((v10 * v10) + (v8 * v8));
  if (v11 <= v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = v11;
  }

  v16 = v13 <= 0.35 && v14 < 0.0004;
  if (qword_1ED71C820 != -1)
  {
    dispatch_once(&qword_1ED71C820, &unk_1F0E2A4C0);
  }

  v17 = off_1ED71C828;
  if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_DEBUG))
  {
    v18 = *(a1 + 836);
    v19 = v13 - *(a1 + 808);
    *buf = 67109888;
    if (v19 <= 0.0)
    {
      v19 = -v19;
    }

    *v33 = v18;
    *&v33[4] = 2048;
    *&v33[6] = v14;
    v34 = 2048;
    v35 = v13;
    v36 = 2048;
    v37 = v19;
    _os_log_impl(&dword_19B41C000, v17, OS_LOG_TYPE_DEBUG, "[Gesture] fStableCount, %d, maxXYVar, %.8f, xyMeanNorm, %.3f, deltaTiltMean, %.3f", buf, 0x26u);
  }

  v20 = sub_19B420058();
  if (*(v20 + 160) > 1 || *(v20 + 164) > 1 || *(v20 + 168) > 1 || *(v20 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E2A4C0);
    }

    *(a1 + 808);
    v31 = *(a1 + 836);
    v21 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "BOOL CMPickupDetector::checkForStable(uint64_t)", "CoreLocation: %s\n", v21);
    if (v21 != buf)
    {
      free(v21);
    }
  }

  v22 = *(a1 + 836);
  if (!v16)
  {
    v29 = __OFSUB__(v22, 1);
    v30 = v22 - 1;
    if (v30 < 0 == v29)
    {
      result = 0;
      *(a1 + 836) = v30;
      goto LABEL_55;
    }

    goto LABEL_2;
  }

  *(a1 + 836) = v22 + 1;
  if (v22 >= 62)
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E2A4C0);
    }

    v23 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      *v33 = (a2 * 0.000001);
      _os_log_impl(&dword_19B41C000, v23, OS_LOG_TYPE_DEBUG, "[Gesture] Entered Stable state. timestamp, %.6f", buf, 0xCu);
    }

    v24 = sub_19B420058();
    if (*(v24 + 160) <= 1 && *(v24 + 164) <= 1 && *(v24 + 168) <= 1 && !*(v24 + 152))
    {
      goto LABEL_54;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1ED71C820 == -1)
    {
      goto LABEL_52;
    }

    goto LABEL_58;
  }

LABEL_2:
  result = 0;
LABEL_55:
  v28 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_19B76ED8C(uint64_t a1, float *a2, unint64_t a3)
{
  result = 0;
  v39 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 800);
  if (v5 - 1 >= a3 || ((a3 - v5) & 0x8000000000000000) != 0)
  {
    goto LABEL_52;
  }

  sub_19B5E9EFC((a1 + 48), 0, *(a1 + 50));
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = sqrtf((a2[1] * a2[1]) + (*a2 * *a2)) - *(a1 + 808);
  if (v14 <= 0.0)
  {
    v15 = -v14;
  }

  else
  {
    v15 = v14;
  }

  v16 = *(a1 + 824);
  if (qword_1ED71C820 != -1)
  {
    dispatch_once(&qword_1ED71C820, &unk_1F0E2A4C0);
  }

  v17 = a3 - v16;
  v18 = off_1ED71C828;
  if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_DEBUG))
  {
    v19 = *(a1 + 832);
    if (v9 <= v11)
    {
      v20 = v11;
    }

    else
    {
      v20 = v9;
    }

    *buf = 134218752;
    v32 = v15;
    v33 = 1024;
    v34 = v19;
    v35 = 2048;
    v36 = (v13 / v20);
    v37 = 2048;
    v38 = (v17 * 0.000001);
    _os_log_impl(&dword_19B41C000, v18, OS_LOG_TYPE_DEBUG, "[Gesture] deltaTilt, %.3f, fLiftCount, %d, z2xyRatio, %.3f, dt, %.2f", buf, 0x26u);
  }

  v21 = sub_19B420058();
  if (*(v21 + 160) > 1 || *(v21 + 164) > 1 || *(v21 + 168) > 1 || *(v21 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E2A4C0);
    }

    v30 = *(a1 + 832);
    v22 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "BOOL CMPickupDetector::checkForLift(const CMVector3d &, uint64_t)", "CoreLocation: %s\n", v22);
    if (v22 != buf)
    {
      free(v22);
    }
  }

  v23 = *(a1 + 832);
  if (v15 >= 0.035)
  {
    if (v23 <= 2)
    {
      *(a1 + 824) = a3;
    }

    if (v15 < 0.07)
    {
      v24 = 1;
    }

    else
    {
      v24 = 2;
    }
  }

  else
  {
    if (v23 < 1 || v15 > 0.004)
    {
      goto LABEL_31;
    }

    v24 = -1;
  }

  v23 += v24;
  *(a1 + 832) = v23;
LABEL_31:
  if (v23 < 13)
  {
    goto LABEL_50;
  }

  if (v17 >> 8 > 0xC34)
  {
    result = 0;
    *(a1 + 832) = 0;
    goto LABEL_52;
  }

  v25 = v9 <= v11 ? v11 : v9;
  if (v13 >= (v25 * 16.0))
  {
LABEL_50:
    result = 0;
  }

  else
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E2A4C0);
    }

    v26 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      v32 = (a3 * 0.000001);
      _os_log_impl(&dword_19B41C000, v26, OS_LOG_TYPE_DEBUG, "[Gesture] Entered Lift state. timestamp, %.6f", buf, 0xCu);
    }

    v27 = sub_19B420058();
    if (*(v27 + 160) > 1 || *(v27 + 164) > 1 || *(v27 + 168) > 1 || *(v27 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E2A4C0);
      }

      v28 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "BOOL CMPickupDetector::checkForLift(const CMVector3d &, uint64_t)", "CoreLocation: %s\n", v28);
      if (v28 != buf)
      {
        free(v28);
      }
    }

    result = 1;
  }

LABEL_52:
  v29 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19B76F288(uint64_t a1, char a2, int a3, char a4, char a5)
{
  v9 = sub_19B43CCBC(a1, a3);
  v10 = *(v9 + 8);
  *(v9 + 208) = 0;
  *(v9 + 216) = 0;
  *(v9 + 224) = a5;
  *(v9 + 225) = 0;
  *(v9 + 256) = 0;
  *(v9 + 264) = 0;
  *(v9 + 272) = 0;
  *(v9 + 273) = v10;
  *v9 = &unk_1F0E32090;
  *(v9 + 200) = &unk_1F0E320F8;
  *(v9 + 274) = a4;
  *(v9 + 275) = 0;
  *(v9 + 280) = 0;
  v11 = sub_19B42AD98();
  v12 = sub_19B43D788(v11, (a1 + 24));
  sub_19B43FCD0(a1 + 288, &v12, a1 + 16, a2);
}

void sub_19B76F364(_Unwind_Exception *a1)
{
  sub_19B5D3E20(v2);
  sub_19B760468(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_19B76F380(uint64_t a1)
{
  *a1 = &unk_1F0E32090;
  v2 = (a1 + 200);
  *(a1 + 200) = &unk_1F0E320F8;
  if (*(a1 + 225) == 1)
  {
    v3 = sub_19B442E70();
    sub_19B445814(v3);
    *(a1 + 225) = 0;
  }

  sub_19B427AEC(v2);
  sub_19B423148(v2);
  sub_19B66E548((a1 + 288));
  sub_19B5D3E20(v2);

  return sub_19B760468(a1);
}

void sub_19B76F438(uint64_t a1)
{
  sub_19B76F380(a1);

  JUMPOUT(0x19EAE76F0);
}

void sub_19B76F470(uint64_t a1)
{
  sub_19B76F380(a1 - 200);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B76F4AC(uint64_t a1)
{
  sub_19B43F988(a1 + 288);
  if (*(a1 + 274) == 1)
  {
    v2 = *(a1 + 16);
    sub_19B4431A8(a1 + 200);
  }

  else
  {
    v8 = 0;
    v9 = 0;
    v7 = 0xBFF0000000000000;
    v3 = mach_absolute_time();
    v6 = sub_19B41E070(v3);
    sub_19B440520(a1 + 288, &v9, &v8, &v7, &v6);
  }

  v4 = *(a1 + 24);
  sub_19B442D78(a1 + 200);
  sub_19B442F50(a1 + 200);
  v9 = 2;
  result = sub_19B4453D4(a1, &v9);
  *(a1 + 275) = 0;
  *(a1 + 280) = 0;
  return result;
}

void *sub_19B76F558(uint64_t a1)
{
  if (*(a1 + 225) == 1)
  {
    v2 = sub_19B442E70();
    sub_19B445814(v2);
    *(a1 + 225) = 0;
  }

  sub_19B427AEC((a1 + 200));

  return sub_19B423148((a1 + 200));
}

void sub_19B76F5AC(uint64_t a1, int a2)
{
  v10 = *MEMORY[0x1E69E9840];
  if (qword_1ED71C800 != -1)
  {
    dispatch_once(&qword_1ED71C800, &unk_1F0E2A4E0);
  }

  v4 = off_1ED71C808;
  if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    v9 = a2;
    _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_INFO, "Application state changed, %d", buf, 8u);
  }

  v5 = sub_19B420058();
  if (*(v5 + 160) > 1 || *(v5 + 164) > 1 || *(v5 + 168) > 1 || *(v5 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C800 != -1)
    {
      dispatch_once(&qword_1ED71C800, &unk_1F0E2A4E0);
    }

    v6 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLSensorFusionServiceLegacy::applicationStateChanged(BOOL)", "CoreLocation: %s\n", v6);
    if (v6 != buf)
    {
      free(v6);
    }
  }

  *(a1 + 275) = a2 ^ 1;
  v7 = *MEMORY[0x1E69E9840];
}

void sub_19B76F784(uint64_t a1, uint64_t a2)
{
  v47 = *MEMORY[0x1E69E9840];
  v4 = a1 + 304;
  v5 = *(a2 + 12);
  *buf = *(a2 + 8);
  v32 = v5;
  v45[0] = *(a2 + 16);
  sub_19B4471F4(a1 + 288, buf, &v32, v45, a2);
  v6.i64[0] = *(a1 + 464);
  if (*v6.i64 <= 0.0)
  {
    v16 = 0;
    v17 = 0.0;
  }

  else
  {
    v7.f64[0] = *(a1 + 328);
    _Q3 = *(a1 + 304);
    v9 = vaddq_f64(_Q3, _Q3);
    v7.f64[1] = -v7.f64[0];
    _D2 = v9.i64[1];
    __asm { FMLA            D0, D2, V3.D[1] }

    v16 = vcvt_f32_f64(vsubq_f64(vcvtq_f64_f32(*(a1 + 472)), vmlsq_lane_f64(vmulq_f64(v7, vextq_s8(v9, v9, 8uLL)), _Q3, *(a1 + 320) + *(a1 + 320), 0)));
    *v6.i64 = *(a1 + 480) - _D0;
    v17 = *v6.i64;
  }

  v18 = *(a1 + 452);
  v33 = 0uLL;
  v32 = -1.0;
  sub_19B41E130(&v33, v6);
  v19 = *a2;
  v32 = *a2;
  v20 = *(v4 + 16);
  *buf = vcvt_hight_f32_f64(vcvt_f32_f64(*v4), v20);
  sub_19B41E130(buf, v20);
  v33 = *buf;
  v34 = v16;
  v35 = v17;
  v36 = *(v4 + 140);
  v37 = v18;
  v40 = 511;
  v38 = xmmword_19B7BA310;
  v39 = xmmword_19B7BB860;
  if (*(a1 + 252))
  {
    v21 = 16;
  }

  else
  {
    v21 = 0;
  }

  if (*(a1 + 296))
  {
    v22 = 256;
  }

  else
  {
    v22 = 0;
  }

  v41 = v22 | v21;
  v42 = 3;
  v44 = 0;
  v23 = *(a1 + 280);
  v43 = *(a2 + 22);
  if (v23 != 0.0)
  {
    v24 = v19 - v23;
    if (v19 - v23 > 0.100000001)
    {
      if (qword_1ED71C800 != -1)
      {
        dispatch_once(&qword_1ED71C800, &unk_1F0E2A4E0);
      }

      v25 = off_1ED71C808;
      if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        *&buf[4] = v24;
        _os_log_impl(&dword_19B41C000, v25, OS_LOG_TYPE_INFO, "Large time gap, %lf", buf, 0xCu);
      }

      v26 = sub_19B420058();
      if (*(v26 + 160) > 1 || *(v26 + 164) > 1 || *(v26 + 168) > 1 || *(v26 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED71C800 != -1)
        {
          dispatch_once(&qword_1ED71C800, &unk_1F0E2A4E0);
        }

        LODWORD(v45[0]) = 134217984;
        *(v45 + 4) = v24;
        v27 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLSensorFusionServiceLegacy::feedGyroData(const CLGyro::Sample *)", "CoreLocation: %s\n", v27);
        if (v27 != buf)
        {
          free(v27);
        }
      }

      if (*(a1 + 275) == 1)
      {
        if (qword_1ED71C800 != -1)
        {
          dispatch_once(&qword_1ED71C800, &unk_1F0E2A4E0);
        }

        v28 = off_1ED71C808;
        if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_19B41C000, v28, OS_LOG_TYPE_DEFAULT, "Reset while backgrounded", buf, 2u);
        }

        v29 = sub_19B420058();
        if (*(v29 + 160) > 1 || *(v29 + 164) > 1 || *(v29 + 168) > 1 || *(v29 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1ED71C800 != -1)
          {
            dispatch_once(&qword_1ED71C800, &unk_1F0E2A4E0);
          }

          LOWORD(v45[0]) = 0;
          v30 = _os_log_send_and_compose_impl();
          sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLSensorFusionServiceLegacy::feedGyroData(const CLGyro::Sample *)", "CoreLocation: %s\n", v30);
          if (v30 != buf)
          {
            free(v30);
          }
        }

        sub_19B43F988(a1 + 288);
      }
    }
  }

  *(a1 + 280) = v19;
  sub_19B41FA70(a1, &v32);
  v31 = *MEMORY[0x1E69E9840];
}

void sub_19B76FC58(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 12);
  v5 = *(a2 + 8);
  v3 = *(a2 + 16);
  v4 = v2;
  sub_19B440520(a1 + 288, &v5, &v4, &v3, a2);
}

void sub_19B76FFA0(_Unwind_Exception *exception_object)
{
  if (*(v1 - 89) < 0)
  {
    operator delete(*(v1 - 112));
  }

  _Unwind_Resume(exception_object);
}

void sub_19B76FFF4(uint64_t a1, CLConnectionMessage **a2)
{
  v107 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  if ((*(v4 + 136) || *(v4 + 144)) && (*(v4 + 168) & 1) == 0)
  {
    v5 = _Block_copy(*(v4 + 144));
    v6 = _Block_copy(*(*(a1 + 32) + 136));
    v7 = MEMORY[0x1E695DFD8];
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v12 = objc_msgSend_setWithObjects_(v7, v11, v8, v9, v10, 0);
    if (*a2 && (DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v12)) != 0)
    {
      v15 = DictionaryOfClasses;
      v16 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v14, @"CMErrorMessage");
      v18 = objc_msgSend_objectForKeyedSubscript_(v15, v17, @"CMSignificantElevationKeySample");
      if (v16)
      {
        v21 = *(a1 + 32);
        if (*(v21 + 144))
        {
          v22 = *(v21 + 120);
          v102[0] = MEMORY[0x1E69E9820];
          v102[1] = 3221225472;
          v102[2] = sub_19B770660;
          v102[3] = &unk_1E7532B90;
          v102[4] = v16;
          v102[5] = v5;
          v23 = v102;
LABEL_28:
          dispatch_async(v22, v23);
          goto LABEL_29;
        }

        if (v6)
        {
          v22 = *(v21 + 120);
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = sub_19B7706D8;
          block[3] = &unk_1E7532B90;
          block[4] = v16;
          block[5] = v6;
          v23 = block;
          goto LABEL_28;
        }

LABEL_29:
        _Block_release(v6);
        _Block_release(v5);
        goto LABEL_30;
      }

      v27 = v18;
      if (v18)
      {
        v28 = *(*(a1 + 32) + 152);
        if (v28 == -1.0 || (v29 = objc_msgSend_elevationAscended(v18, v19, v20), objc_msgSend_doubleValue(v29, v30, v31), v28 > v32) || (v33 = *(*(a1 + 32) + 160), v34 = objc_msgSend_elevationDescended(v27, v19, v20), objc_msgSend_doubleValue(v34, v35, v36), v33 > v37))
        {
          v38 = objc_msgSend_elevationAscended(v27, v19, v20);
          objc_msgSend_doubleValue(v38, v39, v40);
          *(*(a1 + 32) + 152) = v41;
          v44 = objc_msgSend_elevationDescended(v27, v42, v43);
          objc_msgSend_doubleValue(v44, v45, v46);
          *(*(a1 + 32) + 160) = v47;
          goto LABEL_29;
        }

        v98 = [CMSignificantElevationSample alloc];
        v97 = objc_msgSend_recordId(v27, v61, v62);
        v65 = objc_msgSend_sourceId(v27, v63, v64);
        started = objc_msgSend_startDate(v27, v66, v67);
        v71 = objc_msgSend_endDate(v27, v69, v70);
        v72 = MEMORY[0x1E696AD98];
        v75 = objc_msgSend_elevationAscended(v27, v73, v74);
        objc_msgSend_doubleValue(v75, v76, v77);
        v81 = objc_msgSend_numberWithDouble_(v72, v79, v80, v78 - *(*(a1 + 32) + 152));
        v82 = MEMORY[0x1E696AD98];
        v85 = objc_msgSend_elevationDescended(v27, v83, v84);
        objc_msgSend_doubleValue(v85, v86, v87);
        v91 = objc_msgSend_numberWithDouble_(v82, v89, v90, v88 - *(*(a1 + 32) + 160));
        v93 = objc_msgSend_initWithRecordId_sourceId_startDate_endDate_elevationAscended_elevationDescended_(v98, v92, v97, v65, started, v71, v81, v91);
        v94 = *(a1 + 32);
        if (*(v94 + 144))
        {
          v95 = *(v94 + 120);
          v100[0] = MEMORY[0x1E69E9820];
          v100[1] = 3221225472;
          v100[2] = sub_19B770750;
          v100[3] = &unk_1E7532B90;
          v100[4] = v93;
          v100[5] = v5;
          v96 = v100;
        }

        else
        {
          if (!v6)
          {
LABEL_48:

            goto LABEL_29;
          }

          v95 = *(v94 + 120);
          v99[0] = MEMORY[0x1E69E9820];
          v99[1] = 3221225472;
          v99[2] = sub_19B770768;
          v99[3] = &unk_1E7532B68;
          v99[4] = v93;
          v99[5] = v6;
          v96 = v99;
        }

        dispatch_async(v95, v96);
        goto LABEL_48;
      }

      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E2A500);
      }

      v49 = off_1ED71C828;
      if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
      {
        v52 = objc_msgSend_description(v15, v50, v51);
        *buf = 136446210;
        v106 = objc_msgSend_UTF8String(v52, v53, v54);
        _os_log_impl(&dword_19B41C000, v49, OS_LOG_TYPE_FAULT, "Unable to parse message (%{public}s) when starting updates to queue", buf, 0xCu);
      }

      v55 = sub_19B420058();
      if ((*(v55 + 160) & 0x80000000) != 0 && (*(v55 + 164) & 0x80000000) != 0 && (*(v55 + 168) & 0x80000000) != 0 && !*(v55 + 152))
      {
        goto LABEL_29;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E2A500);
      }

      v58 = objc_msgSend_description(v15, v56, v57);
      v103 = 136446210;
      v104 = objc_msgSend_UTF8String(v58, v59, v60);
    }

    else
    {
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E2A500);
      }

      v24 = off_1ED71C828;
      if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v24, OS_LOG_TYPE_ERROR, "Unable to parse message when starting updates to queue!", buf, 2u);
      }

      v25 = sub_19B420058();
      if ((*(v25 + 160) & 0x80000000) != 0 && (*(v25 + 164) & 0x80000000) != 0 && (*(v25 + 168) & 0x80000000) != 0 && !*(v25 + 152))
      {
        goto LABEL_29;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E2A500);
      }

      LOWORD(v103) = 0;
    }

    v26 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 0, "[CMAltimeterInternal init]_block_invoke", "CoreLocation: %s\n", v26);
    if (v26 != buf)
    {
      free(v26);
    }

    goto LABEL_29;
  }

LABEL_30:
  v48 = *MEMORY[0x1E69E9840];
}

uint64_t sub_19B770660(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = MEMORY[0x1E696ABC0];
  v4 = *(a1 + 40);
  v5 = objc_msgSend_integerValue(*(a1 + 32), a2, a3);
  v7 = objc_msgSend_errorWithDomain_code_userInfo_(v3, v6, @"CMErrorDomain", v5, 0);
  v8 = *(v4 + 16);

  return v8(v4, 0, v7);
}

uint64_t sub_19B7706D8(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = MEMORY[0x1E696ABC0];
  v4 = *(a1 + 40);
  v5 = objc_msgSend_integerValue(*(a1 + 32), a2, a3);
  v7 = objc_msgSend_errorWithDomain_code_userInfo_(v3, v6, @"CMErrorDomain", v5, 0);
  v8 = *(v4 + 16);

  return v8(v4, 0, v7);
}

void sub_19B770768(uint64_t a1)
{
  v2 = [CMElevationData alloc];
  v4 = objc_msgSend_initWithSignificantElevationSample_(v2, v3, *(a1 + 32));
  (*(*(a1 + 40) + 16))();
}

void sub_19B7707D4(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 120);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3321888768;
  block[2] = sub_19B77086C;
  block[3] = &unk_1F0E2A898;
  v5 = *a2;
  v4 = a2[1];
  block[4] = v2;
  block[5] = v5;
  v7 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  dispatch_async(v3, block);
  if (v7)
  {
    sub_19B41FFEC(v7);
  }
}

uint64_t sub_19B77086C(uint64_t result)
{
  v1 = *(result + 32);
  if (*(v1 + 24) && *(v1 + 16) && (*(v1 + 184) & 1) == 0)
  {
    v2 = result;
    v3 = MEMORY[0x1E695DFD8];
    v4 = objc_opt_class();
    v5 = objc_opt_class();
    v6 = objc_opt_class();
    v8 = objc_msgSend_setWithObjects_(v3, v7, v4, v5, v6, 0);
    DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*(v2 + 40), v8);
    v11 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v10, @"CMErrorMessage");
    v13 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v12, @"CMFilteredElevationKeySample");
    if (v11)
    {
      v16 = *(v2 + 32);
      v17 = *(v16 + 24);
      v51[0] = MEMORY[0x1E69E9820];
      v51[1] = 3221225472;
      v51[2] = sub_19B770B10;
      v51[3] = &unk_1E7532A00;
      v51[4] = v11;
      v51[5] = v16;
      return objc_msgSend_addOperationWithBlock_(v17, v14, v51);
    }

    else
    {
      v18 = v13;
      if (v13)
      {
        v19 = objc_msgSend_elevationAscended(v13, v14, v15);
        objc_msgSend_doubleValue(v19, v20, v21);
        v23 = v22;
        v26 = objc_msgSend_elevationDescended(v18, v24, v25);
        result = objc_msgSend_doubleValue(v26, v27, v28);
        v30 = *(v2 + 32);
        if (*(v30 + 56) <= 150.0)
        {
          v31 = v23 - v29;
          if (*(v30 + 176) == 3.40282347e38)
          {
            *(v30 + 176) = v31;
          }

          else
          {
            v34 = [CMAltitudeData alloc];
            started = objc_msgSend_startDate(v18, v35, v36);
            objc_msgSend_timeIntervalSinceReferenceDate(started, v38, v39);
            v40 = *(v2 + 32);
            v41 = *(v40 + 56) * 1000.0;
            v42 = *(v40 + 176);
            v45 = objc_msgSend_initWithTimestamp_pressure_relativeAltitude_(v34, v43, v44);
            v46 = *(v2 + 32);
            v47 = *(v46 + 24);
            v49[0] = MEMORY[0x1E69E9820];
            v49[1] = 3221225472;
            v49[2] = sub_19B770EE8;
            v49[3] = &unk_1E7532A00;
            v49[4] = v46;
            v49[5] = v45;
            return objc_msgSend_addOperationWithBlock_(v47, v48, v49);
          }
        }
      }

      else
      {
        v32 = *(v2 + 32);
        v33 = *(v32 + 24);
        v50[0] = MEMORY[0x1E69E9820];
        v50[1] = 3221225472;
        v50[2] = sub_19B770CFC;
        v50[3] = &unk_1E7532988;
        v50[4] = v32;
        return objc_msgSend_addOperationWithBlock_(v33, v14, v50);
      }
    }
  }

  return result;
}

void sub_19B770B10(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE2840 != -1)
  {
    dispatch_once(&qword_1EAFE2840, &unk_1F0E3B6E8);
  }

  v2 = qword_1EAFE2860;
  if (os_log_type_enabled(qword_1EAFE2860, OS_LOG_TYPE_ERROR))
  {
    v5 = objc_msgSend_intValue(*(a1 + 32), v3, v4);
    v16 = 68289282;
    v17 = 0;
    v18 = 2082;
    v19 = "";
    v20 = 1026;
    v21 = v5;
    _os_log_impl(&dword_19B41C000, v2, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:Error receiving filtered elevation updates, error:%{public}d}", &v16, 0x18u);
    if (qword_1EAFE2840 != -1)
    {
      dispatch_once(&qword_1EAFE2840, &unk_1F0E3B6E8);
    }
  }

  v6 = qword_1EAFE2860;
  if (os_signpost_enabled(qword_1EAFE2860))
  {
    v9 = objc_msgSend_intValue(*(a1 + 32), v7, v8);
    v16 = 68289282;
    v17 = 0;
    v18 = 2082;
    v19 = "";
    v20 = 1026;
    v21 = v9;
    _os_signpost_emit_with_name_impl(&dword_19B41C000, v6, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Error receiving filtered elevation updates", "{msg%{public}.0s:Error receiving filtered elevation updates, error:%{public}d}", &v16, 0x18u);
  }

  v10 = *(*(a1 + 40) + 16);
  if (v10)
  {
    v11 = MEMORY[0x1E696ABC0];
    v12 = objc_msgSend_intValue(*(a1 + 32), v7, v8);
    v14 = objc_msgSend_errorWithDomain_code_userInfo_(v11, v13, @"CMErrorDomain", v12, 0);
    (*(v10 + 16))(v10, 0, v14);
  }

  v15 = *MEMORY[0x1E69E9840];
}

void sub_19B770CFC(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE2840 != -1)
  {
    dispatch_once(&qword_1EAFE2840, &unk_1F0E3B6E8);
  }

  v2 = qword_1EAFE2860;
  if (os_log_type_enabled(qword_1EAFE2860, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v2, OS_LOG_TYPE_ERROR, "Received empty filtered elevation update", buf, 2u);
  }

  v3 = sub_19B420058();
  if ((*(v3 + 160) & 0x80000000) == 0 || (*(v3 + 164) & 0x80000000) == 0 || (*(v3 + 168) & 0x80000000) == 0 || *(v3 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2840 != -1)
    {
      dispatch_once(&qword_1EAFE2840, &unk_1F0E3B6E8);
    }

    v5 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 0, "[CMAltimeterInternal init]_block_invoke", "CoreLocation: %s\n", v5);
    if (v5 != buf)
    {
      free(v5);
    }
  }

  v6 = *(*(a1 + 32) + 16);
  if (v6)
  {
    v7 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], v4, @"CMErrorDomain", 103, 0);
    (*(v6 + 16))(v6, 0, v7);
  }

  v8 = *MEMORY[0x1E69E9840];
}

void sub_19B770EE8(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  if (v2)
  {
    (*(v2 + 16))(v2, *(a1 + 40), 0);
  }

  v3 = *(a1 + 40);
}

uint64_t sub_19B770F3C(uint64_t result, uint64_t a2)
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

void sub_19B770F58(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    sub_19B41FFEC(v1);
  }
}

void sub_19B770F68(uint64_t a1, const char *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a2 + 1);
  v4 = *a2;
  v5 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  objc_msgSend__handleAbsoluteAltitudeUpdate_(v2, a2, &v4);
  if (v5)
  {
    sub_19B41FFEC(v5);
  }
}

void sub_19B770FBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_19B41FFEC(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B770FD4(uint64_t a1, const char *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a2 + 1);
  v4 = *a2;
  v5 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  objc_msgSend__handleCompanionRelativeElevationUpdate_(v2, a2, &v4);
  if (v5)
  {
    sub_19B41FFEC(v5);
  }
}

void sub_19B771028(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_19B41FFEC(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B771134(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_19B7711C4(void *result, const char *a2)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = result[4];
  if (*(v2 + 128))
  {
    v3 = result;
    v4 = *(v2 + 136);
    if (!v4)
    {
      v6 = @"kCLConnectionMessageSubscribeKey";
      v7[0] = MEMORY[0x1E695E118];
      objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, v7, &v6, 1);
      sub_19B776580();
    }

    _Block_release(v4);
    *(v3[4] + 136) = 0;
    result = _Block_copy(v3[5]);
    *(v3[4] + 136) = result;
    *(v3[4] + 168) = 0;
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19B7712D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_19B41FFEC(a10);
  }

  if (v10)
  {
    sub_19B41FFEC(v10);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B771378(uint64_t a1, const char *a2)
{
  v3[1] = *MEMORY[0x1E69E9840];
  v2 = @"kCLConnectionMessageSubscribeKey";
  v3[0] = MEMORY[0x1E695E110];
  objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, v3, &v2, 1);
  sub_19B776580();
}

void sub_19B771484(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (v10)
  {
    sub_19B41FFEC(v10);
  }

  _Unwind_Resume(exception_object);
}

void *sub_19B77152C(void *result, const char *a2)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = result[4];
  if (*(v2 + 128))
  {
    v3 = result;
    v4 = *(v2 + 144);
    if (!v4)
    {
      v6 = @"kCLConnectionMessageSubscribeKey";
      v7[0] = MEMORY[0x1E695E118];
      objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, v7, &v6, 1);
      sub_19B776580();
    }

    _Block_release(v4);
    *(v3[4] + 144) = 0;
    result = _Block_copy(v3[5]);
    *(v3[4] + 144) = result;
    *(v3[4] + 168) = 0;
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19B771640(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_19B41FFEC(a10);
  }

  if (v10)
  {
    sub_19B41FFEC(v10);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B7716E0(uint64_t a1, const char *a2)
{
  v3[1] = *MEMORY[0x1E69E9840];
  v2 = @"kCLConnectionMessageSubscribeKey";
  v3[0] = MEMORY[0x1E695E110];
  objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, v3, &v2, 1);
  sub_19B776580();
}

void sub_19B7717D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (v10)
  {
    sub_19B41FFEC(v10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B771884(uint64_t result)
{
  v16[1] = *MEMORY[0x1E69E9840];
  if (*(*(result + 32) + 128))
  {
    v1 = result;
    v2 = [CMMotionTimeRange alloc];
    objc_msgSend_timeIntervalSinceReferenceDate(*(v1 + 40), v3, v4);
    v6 = v5;
    objc_msgSend_timeIntervalSinceReferenceDate(*(v1 + 48), v7, v8);
    started = objc_msgSend_initWithStartDate_endDate_(v2, v9, v10, v6, v11);
    v15 = @"CMSignificantElevationKeyQueryTimeRange";
    v16[0] = started;
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v13, v16, &v15, 1);

    sub_19B6ABA98();
  }

  v14 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19B771A00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, uint64_t a18, std::__shared_weak_count *a19)
{
  if (a17)
  {
    sub_19B41FFEC(a17);
  }

  if (a19)
  {
    sub_19B41FFEC(a19);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B771A2C(uint64_t a1, CLConnectionMessage **a2)
{
  v58 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695DFD8];
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v9 = objc_msgSend_setWithObjects_(v4, v8, v5, v6, v7, 0);
  if (!*a2 || (DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v9)) == 0)
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E2A500);
    }

    v21 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v21, OS_LOG_TYPE_ERROR, "Unable to parse message when checking for availability!", buf, 2u);
    }

    v22 = sub_19B420058();
    if ((*(v22 + 160) & 0x80000000) == 0 || (*(v22 + 164) & 0x80000000) == 0 || (*(v22 + 168) & 0x80000000) == 0 || *(v22 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E2A500);
      }

      LOWORD(v54) = 0;
      v23 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CMAltimeterInternal _querySignificantElevationChangeFromDate:toDate:withHandler:]_block_invoke", "CoreLocation: %s\n", v23);
      if (v23 != buf)
      {
        free(v23);
      }
    }

    v18 = *(*(a1 + 32) + 120);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_19B77207C;
    block[3] = &unk_1E7532B40;
    block[4] = *(a1 + 40);
    v20 = block;
    goto LABEL_17;
  }

  v12 = DictionaryOfClasses;
  v13 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v11, @"CMErrorMessage");
  v15 = objc_msgSend_objectForKeyedSubscript_(v12, v14, @"CMSignificantElevationKeySample");
  if (v13)
  {
    v18 = *(*(a1 + 32) + 120);
    v53[0] = MEMORY[0x1E69E9820];
    v53[1] = 3221225472;
    v53[2] = sub_19B771F88;
    v53[3] = &unk_1E7532B90;
    v19 = *(a1 + 40);
    v53[4] = v13;
    v53[5] = v19;
    v20 = v53;
LABEL_17:
    dispatch_async(v18, v20);
    goto LABEL_18;
  }

  v25 = v15;
  if (v15)
  {
    v26 = objc_msgSend_elevationAscended(v15, v16, v17);
    objc_msgSend_doubleValue(v26, v27, v28);
    if (v31 == 0.0 && (v32 = objc_msgSend_elevationDescended(v25, v29, v30), objc_msgSend_doubleValue(v32, v33, v34), v35 == 0.0))
    {
      v18 = *(*(a1 + 32) + 120);
      v52[0] = MEMORY[0x1E69E9820];
      v52[1] = 3221225472;
      v52[2] = sub_19B772000;
      v52[3] = &unk_1E7532B40;
      v52[4] = *(a1 + 40);
      v20 = v52;
    }

    else
    {
      v18 = *(*(a1 + 32) + 120);
      v51[0] = MEMORY[0x1E69E9820];
      v51[1] = 3221225472;
      v51[2] = sub_19B772064;
      v51[3] = &unk_1E7532B90;
      v36 = *(a1 + 40);
      v51[4] = v25;
      v51[5] = v36;
      v20 = v51;
    }

    goto LABEL_17;
  }

  if (qword_1ED71C820 != -1)
  {
    dispatch_once(&qword_1ED71C820, &unk_1F0E2A500);
  }

  v37 = off_1ED71C828;
  if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
  {
    v40 = objc_msgSend_description(v12, v38, v39);
    *buf = 136446210;
    v57 = objc_msgSend_UTF8String(v40, v41, v42);
    _os_log_impl(&dword_19B41C000, v37, OS_LOG_TYPE_FAULT, "Unable to parse message (%{public}s) for query response", buf, 0xCu);
  }

  v43 = sub_19B420058();
  if ((*(v43 + 160) & 0x80000000) == 0 || (*(v43 + 164) & 0x80000000) == 0 || (*(v43 + 168) & 0x80000000) == 0 || *(v43 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E2A500);
    }

    v46 = objc_msgSend_description(v12, v44, v45);
    v54 = 136446210;
    v55 = objc_msgSend_UTF8String(v46, v47, v48);
    v49 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 0, "[CMAltimeterInternal _querySignificantElevationChangeFromDate:toDate:withHandler:]_block_invoke", "CoreLocation: %s\n", v49);
    if (v49 != buf)
    {
      free(v49);
    }
  }

LABEL_18:
  v24 = *MEMORY[0x1E69E9840];
}

uint64_t sub_19B771F88(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = MEMORY[0x1E696ABC0];
  v4 = *(a1 + 40);
  v5 = objc_msgSend_integerValue(*(a1 + 32), a2, a3);
  v7 = objc_msgSend_errorWithDomain_code_userInfo_(v3, v6, @"CMErrorDomain", v5, 0);
  v8 = *(v4 + 16);

  return v8(v4, 0, v7);
}

uint64_t sub_19B772000(uint64_t a1, const char *a2)
{
  v2 = *(a1 + 32);
  v3 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], a2, @"CMErrorDomain", 109, 0);
  v4 = *(v2 + 16);

  return v4(v2, 0, v3);
}

uint64_t sub_19B77207C(uint64_t a1, const char *a2)
{
  v2 = *(a1 + 32);
  v3 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], a2, @"CMErrorDomain", 103, 0);
  v4 = *(v2 + 16);

  return v4(v2, 0, v3);
}

void sub_19B772160(uint64_t a1, const char *a2, uint64_t a3)
{
  v19[4] = *MEMORY[0x1E69E9840];
  v18[0] = @"CMElevationProfileKeyQueryStartTime";
  v4 = MEMORY[0x1E696AD98];
  objc_msgSend_timeIntervalSinceReferenceDate(*(a1 + 32), a2, a3);
  v19[0] = objc_msgSend_numberWithDouble_(v4, v5, v6);
  v18[1] = @"CMElevationProfileKeyQueryEndTime";
  v7 = MEMORY[0x1E696AD98];
  objc_msgSend_timeIntervalSinceReferenceDate(*(a1 + 40), v8, v9);
  v19[1] = objc_msgSend_numberWithDouble_(v7, v10, v11);
  v18[2] = @"CMElevationProfileKeyQueryBatchSize";
  v19[2] = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v12, *(a1 + 64));
  v18[3] = @"CMElevationProfileKeyQueryFromRecordId";
  v19[3] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v13, *(a1 + 72));
  v17 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v14, v19, v18, 4);
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x2020000000;
  v16 = *(a1 + 72);
  sub_19B44BE58();
}

void sub_19B772358(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, std::__shared_weak_count *a16, ...)
{
  va_start(va, a16);
  if (a14)
  {
    sub_19B41FFEC(a14);
  }

  if (a16)
  {
    sub_19B41FFEC(a16);
  }

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19B772398(uint64_t a1, CLConnectionMessage **a2)
{
  v47 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695DFD8];
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v10 = objc_msgSend_setWithObjects_(v4, v9, v5, v6, v7, v8, 0);
  if (*a2 && (DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v10)) != 0)
  {
    v13 = DictionaryOfClasses;
    v14 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v12, @"CMErrorMessage");
    v16 = objc_msgSend_objectForKeyedSubscript_(v13, v15, @"CMElevationProfileKeyAltitudeArray");
    v18 = objc_msgSend_objectForKeyedSubscript_(v13, v17, @"CMElevationProfileKeyLastBatch");
    v21 = objc_msgSend_BOOLValue(v18, v19, v20);
    v23 = objc_msgSend_objectForKeyedSubscript_(v13, v22, @"CMElevationProfileKeyQueryFromRecordId");
    *(*(*(a1 + 64) + 8) + 24) = objc_msgSend_intValue(v23, v24, v25);
    objc_msgSend_description(v13, v26, v27);
    if (v14)
    {
      v28 = *(*(a1 + 32) + 120);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = sub_19B7728B4;
      block[3] = &unk_1E7532B90;
      v29 = *(a1 + 56);
      block[4] = v14;
      block[5] = v29;
      dispatch_async(v28, block);
      if (qword_1EAFE2850 != -1)
      {
        dispatch_once(&qword_1EAFE2850, &unk_1F0E3B708);
      }

      v30 = qword_1EAFE2870;
      if (os_log_type_enabled(qword_1EAFE2870, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v30, OS_LOG_TYPE_FAULT, "Unable to parse message for query response", buf, 2u);
      }

      v31 = sub_19B420058();
      if ((*(v31 + 160) & 0x80000000) == 0 || (*(v31 + 164) & 0x80000000) == 0 || (*(v31 + 168) & 0x80000000) == 0 || *(v31 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2850 != -1)
        {
          dispatch_once(&qword_1EAFE2850, &unk_1F0E3B708);
        }

        v44 = 0;
        v32 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 0, "[CMAltimeterInternal _queryElevationProfileFromDate:toDate:withBatchSize:fromRecordId:withHandler:]_block_invoke", "CoreLocation: %s\n", v32);
        if (v32 != buf)
        {
          free(v32);
        }
      }
    }

    else
    {
      v38 = *(*(a1 + 32) + 120);
      v42[0] = MEMORY[0x1E69E9820];
      v42[1] = 3221225472;
      v42[2] = sub_19B772930;
      v42[3] = &unk_1E7534538;
      v39 = *(a1 + 56);
      v42[4] = v16;
      v42[5] = v39;
      v43 = v21;
      dispatch_async(v38, v42);
      if ((v21 & 1) == 0)
      {
        objc_msgSend__queryElevationProfileFromDate_toDate_withBatchSize_fromRecordId_withHandler_(*(a1 + 32), v40, *(a1 + 40), *(a1 + 48), *(a1 + 72), *(*(*(a1 + 64) + 8) + 24), *(a1 + 56));
      }
    }
  }

  else
  {
    if (qword_1EAFE2850 != -1)
    {
      dispatch_once(&qword_1EAFE2850, &unk_1F0E3B708);
    }

    v33 = qword_1EAFE2870;
    if (os_log_type_enabled(qword_1EAFE2870, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v33, OS_LOG_TYPE_ERROR, "Unable to parse message when checking for availability.", buf, 2u);
    }

    v34 = sub_19B420058();
    if ((*(v34 + 160) & 0x80000000) == 0 || (*(v34 + 164) & 0x80000000) == 0 || (*(v34 + 168) & 0x80000000) == 0 || *(v34 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2850 != -1)
      {
        dispatch_once(&qword_1EAFE2850, &unk_1F0E3B708);
      }

      v44 = 0;
      v35 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CMAltimeterInternal _queryElevationProfileFromDate:toDate:withBatchSize:fromRecordId:withHandler:]_block_invoke", "CoreLocation: %s\n", v35);
      if (v35 != buf)
      {
        free(v35);
      }
    }

    v36 = *(*(a1 + 32) + 120);
    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v41[2] = sub_19B77294C;
    v41[3] = &unk_1E7532B40;
    v41[4] = *(a1 + 56);
    dispatch_async(v36, v41);
  }

  v37 = *MEMORY[0x1E69E9840];
}

uint64_t sub_19B7728B4(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = MEMORY[0x1E696ABC0];
  v4 = *(a1 + 40);
  v5 = objc_msgSend_integerValue(*(a1 + 32), a2, a3);
  v7 = objc_msgSend_errorWithDomain_code_userInfo_(v3, v6, @"CMErrorDomain", v5, 0);
  v8 = *(v4 + 16);

  return v8(v4, 0, 0, v7);
}

uint64_t sub_19B77294C(uint64_t a1, const char *a2)
{
  v2 = *(a1 + 32);
  v3 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], a2, @"CMErrorDomain", 103, 0);
  v4 = *(v2 + 16);

  return v4(v2, 0, 0, v3);
}

void *sub_19B772A30(void *a1, const char *a2)
{
  result = a1[4];
  if (result[16])
  {
    return objc_msgSend__queryElevationProfileFromDate_toDate_withBatchSize_fromRecordId_withHandler_(result, a2, a1[5], a1[6], a1[8], 0, a1[7]);
  }

  return result;
}

void sub_19B772D84(uint64_t a1, const char *a2)
{
  v3[1] = *MEMORY[0x1E69E9840];
  v2 = @"kCLConnectionMessageSubscribeKey";
  v3[0] = MEMORY[0x1E695E118];
  objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, v3, &v2, 1);
  sub_19B627DE4();
}

void sub_19B772E70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
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

void sub_19B772F10(uint64_t a1, const char *a2)
{
  v3[1] = *MEMORY[0x1E69E9840];
  *(*(a1 + 32) + 56) = 2139095039;
  *(*(a1 + 32) + 176) = 0x47EFFFFFE0000000;
  v2 = @"kCLConnectionMessageSubscribeKey";
  v3[0] = MEMORY[0x1E695E110];
  objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, v3, &v2, 1);
  sub_19B627DE4();
}

void sub_19B773020(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
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

void sub_19B773118(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = _Block_copy(*(a1 + 48));
  v4 = *(a1 + 40);
  v5 = *(v4 + 112);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B7731B4;
  block[3] = &unk_1E7532C08;
  v6 = *(a1 + 32);
  block[4] = v4;
  block[5] = v6;
  block[6] = v3;
  dispatch_async(v5, block);
}

void sub_19B7731B4(uint64_t a1, const char *a2, uint64_t a3)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v3 = (a1 + 32);
  objc_msgSend__releaseHandlerObjects(*(a1 + 32), a2, a3);
  *(*v3 + 192) = v3[1];
  *(*v3 + 200) = v3[2];
  v5 = @"kCLConnectionMessageSubscribeKey";
  v6[0] = MEMORY[0x1E695E118];
  objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v4, v6, &v5, 1);
  sub_19B67D7D8();
}

void sub_19B7732B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
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

void sub_19B773358(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 112);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B7733CC;
  block[3] = &unk_1E7532988;
  block[4] = v1;
  dispatch_async(v2, block);
}

void sub_19B7733CC(uint64_t a1, const char *a2)
{
  v3[1] = *MEMORY[0x1E69E9840];
  v2 = @"kCLConnectionMessageSubscribeKey";
  v3[0] = MEMORY[0x1E695E110];
  objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, v3, &v2, 1);
  sub_19B67D7D8();
}

void sub_19B7734B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_19B41FFEC(a14);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B773AD4(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 192) && (v3 = *(v2 + 200)) != 0)
  {
    v4 = _Block_copy(v3);
    v5 = *(*(a1 + 32) + 192);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = sub_19B773B98;
    v8[3] = &unk_1E7532B90;
    v8[4] = *(a1 + 40);
    v8[5] = v4;
    objc_msgSend_addOperationWithBlock_(v5, v6, v8);
  }

  else
  {
    v7 = *(a1 + 40);
  }
}

void sub_19B773B98(uint64_t a1)
{
  v2 = *(a1 + 32);
  (*(*(a1 + 40) + 16))();
  _Block_release(*(a1 + 40));
  v3 = *(a1 + 32);
}

void sub_19B773C68(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = _Block_copy(*(a1 + 48));
  v4 = *(a1 + 40);
  v5 = *(v4 + 112);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B773D04;
  block[3] = &unk_1E7532C08;
  v6 = *(a1 + 32);
  block[4] = v4;
  block[5] = v6;
  block[6] = v3;
  dispatch_async(v5, block);
}

void sub_19B773D04(uint64_t a1, const char *a2, uint64_t a3)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v3 = (a1 + 32);
  objc_msgSend__releaseHandlerObjects(*(a1 + 32), a2, a3);
  *(*v3 + 208) = v3[1];
  *(*v3 + 216) = v3[2];
  v5 = @"kCLConnectionMessageSubscribeKey";
  v6[0] = MEMORY[0x1E695E118];
  objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v4, v6, &v5, 1);
  sub_19B776658();
}

void sub_19B773DF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_19B41FFEC(a10);
  }

  if (v10)
  {
    sub_19B41FFEC(v10);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B773E9C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 112);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B773F10;
  block[3] = &unk_1E7532988;
  block[4] = v1;
  dispatch_async(v2, block);
}

void sub_19B773F10(uint64_t a1, const char *a2)
{
  v3[1] = *MEMORY[0x1E69E9840];
  v2 = @"kCLConnectionMessageSubscribeKey";
  v3[0] = MEMORY[0x1E695E110];
  objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, v3, &v2, 1);
  sub_19B776658();
}

void sub_19B773FF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (v10)
  {
    sub_19B41FFEC(v10);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B774604(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 208) && (v3 = *(v2 + 216)) != 0)
  {
    v4 = _Block_copy(v3);
    v5 = *(*(a1 + 32) + 208);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = sub_19B7746C8;
    v8[3] = &unk_1E7532B90;
    v8[4] = *(a1 + 40);
    v8[5] = v4;
    objc_msgSend_addOperationWithBlock_(v5, v6, v8);
  }

  else
  {
    v7 = *(a1 + 40);
  }
}

void sub_19B7746C8(uint64_t a1)
{
  v2 = *(a1 + 32);
  (*(*(a1 + 40) + 16))();
  _Block_release(*(a1 + 40));
  v3 = *(a1 + 32);
}

void sub_19B7748AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_19B7748C4(uint64_t a1, const char *a2, uint64_t a3)
{
  result = objc_msgSend_initPrivate(*(a1 + 32), a2, a3);
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

void sub_19B774A34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_19B774DB4(uint64_t a1, const char *a2, uint64_t a3)
{
  if (objc_msgSend_authorizationStatus(CMMotionUtils, a2, a3) == 3)
  {
    v5 = sub_19B420D84();
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_19B774EB4;
    v12[3] = &unk_1E7532C08;
    v13 = *(a1 + 32);
    v14 = *(a1 + 48);
    sub_19B421668(v5, v12);
    return objc_msgSend__startRelativeAltitudeUpdates(*(*(a1 + 32) + 8), v6, v7);
  }

  else
  {
    v9 = *(a1 + 48);
    v10 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], v4, @"CMErrorDomain", 105, 0);
    v11 = *(v9 + 16);

    return v11(v9, 0, v10);
  }
}

uint64_t sub_19B775108(uint64_t a1)
{
  v2 = sub_19B420D84();
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_19B775194;
  v6[3] = &unk_1E7532988;
  v6[4] = *(a1 + 32);
  sub_19B420C9C(v2, v6);
  return objc_msgSend__stopRelativeAltitudeUpdates(*(*(a1 + 32) + 8), v3, v4);
}

uint64_t sub_19B775460(void *a1)
{
  v1 = a1[6];
  v2 = a1[7];
  return MEMORY[0x1EEE66B58](*(a1[4] + 8), sel__querySignificantElevationChangeFromDate_toDate_withHandler_, a1[5]);
}

void sub_19B775BF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B776218(void *a1)
{
  v2 = a1[7];
  v1 = a1[8];
  v3 = a1[6];
  return MEMORY[0x1EEE66B58](*(a1[4] + 8), sel__queryElevationProfileFromDate_toDate_withBatchSize_withHandler_, a1[5]);
}

uint64_t sub_19B776438(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend__internal(*(a1 + 32), a2, a3);
  v5 = *(a1 + 40);

  return MEMORY[0x1EEE66B58](v4, sel__startElevationUpdatesWithHandler_, v5);
}

uint64_t sub_19B7764EC(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend__internal(*(a1 + 32), a2, a3);

  return MEMORY[0x1EEE66B58](v3, sel__stopElevationUpdates, v4);
}

os_log_t sub_19B776520()
{
  result = os_log_create("com.apple.locationd.Motion", "Pressure");
  qword_1EAFE2860 = result;
  return result;
}

os_log_t sub_19B776550()
{
  result = os_log_create("com.apple.locationd.Motion", "Altimeter");
  qword_1EAFE2870 = result;
  return result;
}

void sub_19B776628(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::__shared_weak_count::~__shared_weak_count(v15);
  operator delete(v17);
  _Unwind_Resume(a1);
}

void sub_19B776700(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::__shared_weak_count::~__shared_weak_count(v15);
  operator delete(v17);
  _Unwind_Resume(a1);
}

void sub_19B7768B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x19EAE76F0](v25, v26);
  _Unwind_Resume(a1);
}

void sub_19B7768E0(uint64_t a1, CLConnectionMessage **a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695DFD8];
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v8 = objc_msgSend_setWithObjects_(v4, v7, v5, v6, 0);
  if (*a2 && (DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v8)) != 0 && (v11 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v10, @"CMErrorMessage")) != 0)
  {
    v14 = objc_msgSend_intValue(v11, v12, v13);
  }

  else
  {
    v14 = 103;
  }

  if (qword_1EAFE2978 != -1)
  {
    dispatch_once(&qword_1EAFE2978, &unk_1F0E3B728);
  }

  v15 = qword_1EAFE2980;
  if (os_log_type_enabled(qword_1EAFE2980, OS_LOG_TYPE_FAULT))
  {
    v16 = *(a1 + 32);
    *buf = 67240448;
    v22 = v14;
    v23 = 2048;
    v24 = v16;
    _os_log_impl(&dword_19B41C000, v15, OS_LOG_TYPE_FAULT, "Failed with CMError code %{public}d, %p", buf, 0x12u);
  }

  v17 = sub_19B420058();
  if ((*(v17 + 160) & 0x80000000) == 0 || (*(v17 + 164) & 0x80000000) == 0 || (*(v17 + 168) & 0x80000000) == 0 || *(v17 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2978 != -1)
    {
      dispatch_once(&qword_1EAFE2978, &unk_1F0E3B728);
    }

    v20 = *(a1 + 32);
    v18 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 0, "[CMSwimTrackerInternal init]_block_invoke", "CoreLocation: %s\n", v18);
    if (v18 != buf)
    {
      free(v18);
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}

void sub_19B776B34(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = getpid();
  ExecutablePathFromPid = objc_msgSend_getExecutablePathFromPid_(CMMotionUtils, v3, v2);
  if (ExecutablePathFromPid)
  {
    v5 = ExecutablePathFromPid;
    if (qword_1EAFE2978 != -1)
    {
      dispatch_once(&qword_1EAFE2978, &unk_1F0E3B728);
    }

    v6 = qword_1EAFE2980;
    if (os_log_type_enabled(qword_1EAFE2980, OS_LOG_TYPE_INFO))
    {
      v7 = getpid();
      v8 = *(a1 + 32);
      v9 = *(v8 + 24);
      *buf = 138413058;
      v15 = v5;
      v16 = 1024;
      v17 = v7;
      v18 = 1024;
      v19 = v9;
      v20 = 2048;
      v21 = v8;
      _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_INFO, "Client connection interrupt, %@, %d, %d, %p", buf, 0x22u);
    }

    v10 = sub_19B420058();
    if (*(v10 + 160) > 1 || *(v10 + 164) > 1 || *(v10 + 168) > 1 || *(v10 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2978 != -1)
      {
        dispatch_once(&qword_1EAFE2978, &unk_1F0E3B728);
      }

      getpid();
      v13 = *(*(a1 + 32) + 24);
      v11 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMSwimTrackerInternal init]_block_invoke", "CoreLocation: %s\n", v11);
      if (v11 != buf)
      {
        free(v11);
      }
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

uint64_t sub_19B776E90(uint64_t result)
{
  v1 = result;
  v19[1] = *MEMORY[0x1E69E9840];
  v2 = *(result + 32);
  v3 = *(v2 + 32);
  if (v3 != *(result + 48) || (*(v2 + 24) & 1) == 0)
  {

    *(*(v1 + 32) + 32) = *(v1 + 48);
    objc_msgSend__resetOffsets(*(v1 + 32), v4, v5);
    v7 = *(v1 + 40);
    if (v7)
    {
      v18 = @"CMSwimKeyDataRecord";
      v19[0] = v7;
      objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v6, v19, &v18, 1);
    }

    else
    {
      v8 = objc_alloc(MEMORY[0x1E696AFB0]);
      v10 = objc_msgSend_initWithUUIDString_(v8, v9, @"00000000-0000-0000-0000-000000000000");
      v11 = [CMSwimData alloc];
      v13 = objc_msgSend_initWithSessionId_(v11, v12, v10);
      v16 = @"CMSwimKeyDataRecord";
      v17 = v13;
      objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v14, &v17, &v16, 1);
    }

    sub_19B66451C();
  }

  v15 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19B777180(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, std::__shared_weak_count *a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, std::__shared_weak_count *a32)
{
  if (a11)
  {
    sub_19B41FFEC(a11);
  }

  if (a19)
  {
    sub_19B41FFEC(a19);
  }

  if (a32)
  {
    sub_19B41FFEC(a32);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B7771F0(uint64_t result, uint64_t *a2)
{
  if (*(*(result + 32) + 32))
  {
    v3 = result;
    v4 = MEMORY[0x1E695DFD8];
    v5 = objc_opt_class();
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v10 = objc_msgSend_setWithObjects_(v4, v9, v5, v6, v7, v8, 0);
    result = *a2;
    if (*a2)
    {
      result = CLConnectionMessage::getDictionaryOfClasses(result, v10);
      if (result)
      {
        v11 = result;
        v12 = *(v3 + 32);

        return MEMORY[0x1EEE66B58](v12, sel__handleUpdates_, v11);
      }
    }
  }

  return result;
}

void sub_19B7772D4(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = *(*(a1 + 32) + 32);
  if (v4)
  {
    v6 = objc_msgSend_copy(v4, a2, a3);
    v7 = MEMORY[0x1E695DFD8];
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v13 = objc_msgSend_setWithObjects_(v7, v12, v8, v9, v10, v11, 0);
    if (*a2 && (DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v13)) != 0)
    {
      v15 = DictionaryOfClasses;
      v16 = *(a1 + 32);

      MEMORY[0x1EEE66B58](v16, sel__handleUpdates_, v15);
    }

    else
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = sub_19B777428;
      block[3] = &unk_1E7532B40;
      block[4] = v6;
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }
  }
}

uint64_t sub_19B777428(uint64_t a1, const char *a2)
{
  v2 = *(a1 + 32);
  v3 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], a2, @"CMErrorDomain", 103, 0);
  v4 = *(v2 + 16);

  return v4(v2, 0, v3);
}

void sub_19B777500(uint64_t a1, const char *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  if (*(*(a1 + 32) + 24))
  {
    v9 = @"kCLConnectionMessageSubscribeKey";
    v10 = MEMORY[0x1E695E110];
    v11[0] = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, &v10, &v9, 1);
    sub_19B6C0F30();
  }

  if (qword_1EAFE2978 != -1)
  {
    dispatch_once(&qword_1EAFE2978, &unk_1F0E3B728);
  }

  v3 = qword_1EAFE2980;
  if (os_log_type_enabled(qword_1EAFE2980, OS_LOG_TYPE_INFO))
  {
    v4 = *(a1 + 32);
    buf = 134217984;
    *buf_4 = v4;
    _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_INFO, "Unable to stop swim data updates as we are are not receiving updates, %p", &buf, 0xCu);
  }

  v5 = sub_19B420058();
  if (*(v5 + 160) > 1 || *(v5 + 164) > 1 || *(v5 + 168) > 1 || *(v5 + 152))
  {
    bzero(&buf, 0x65CuLL);
    if (qword_1EAFE2978 != -1)
    {
      dispatch_once(&qword_1EAFE2978, &unk_1F0E3B728);
    }

    v6 = *(a1 + 32);
    LODWORD(v11[0]) = 134217984;
    *(v11 + 4) = v6;
    v7 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMSwimTrackerInternal _stopUpdates]_block_invoke", "CoreLocation: %s\n", v7);
    if (v7 != &buf)
    {
      free(v7);
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

void sub_19B77777C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20)
{
  if (a20)
  {
    sub_19B41FFEC(a20);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B777828(uint64_t a1, const char *a2)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (v2)
  {
    v12 = @"CMSwimKeyDataRecord";
    v13[0] = v2;
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, v13, &v12, 1);
  }

  else
  {
    v3 = objc_alloc(MEMORY[0x1E696AFB0]);
    v5 = objc_msgSend_initWithUUIDString_(v3, v4, @"00000000-0000-0000-0000-000000000000");
    v6 = [CMSwimData alloc];
    v8 = objc_msgSend_initWithSessionId_(v6, v7, v5);
    v10 = @"CMSwimKeyDataRecord";
    v11 = v8;
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v9, &v11, &v10, 1);
  }

  sub_19B66451C();
}

void sub_19B7779D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, uint64_t a18, std::__shared_weak_count *a19)
{
  if (a17)
  {
    sub_19B41FFEC(a17);
  }

  if (a19)
  {
    sub_19B41FFEC(a19);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B7779FC(uint64_t a1, const char *a2, uint64_t a3)
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend_copy(*(a1 + 40), a2, a3);
  v6 = MEMORY[0x1E695DFD8];
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v12 = objc_msgSend_setWithObjects_(v6, v11, v7, v8, v9, v10, 0);
  if (*a2 && (DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v12)) != 0)
  {
    v15 = DictionaryOfClasses;
    v16 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v14, @"CMErrorMessage");
    v18 = objc_msgSend_objectForKeyedSubscript_(v15, v17, @"CMSwimKeyDataArray");
    if (v16)
    {
      v19 = v28;
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = sub_19B777E20;
      v28[3] = &unk_1E7532B90;
      v28[5] = v5;
      v5 = v16;
    }

    else if (v18)
    {
      v19 = v27;
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = sub_19B777E98;
      v27[3] = &unk_1E7532B90;
      v27[5] = v5;
      v5 = v18;
    }

    else
    {
      if (qword_1EAFE2978 != -1)
      {
        dispatch_once(&qword_1EAFE2978, &unk_1F0E3B728);
      }

      v21 = qword_1EAFE2980;
      if (os_log_type_enabled(qword_1EAFE2980, OS_LOG_TYPE_FAULT))
      {
        v22 = *(a1 + 32);
        *buf = 134217984;
        v33 = v22;
        _os_log_impl(&dword_19B41C000, v21, OS_LOG_TYPE_FAULT, "Unable to parse query message, %p", buf, 0xCu);
      }

      v23 = sub_19B420058();
      if ((*(v23 + 160) & 0x80000000) == 0 || (*(v23 + 164) & 0x80000000) == 0 || (*(v23 + 168) & 0x80000000) == 0 || *(v23 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2978 != -1)
        {
          dispatch_once(&qword_1EAFE2978, &unk_1F0E3B728);
        }

        v24 = *(a1 + 32);
        v30 = 134217984;
        v31 = v24;
        v25 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 0, "[CMSwimTrackerInternal _querySwimUpdatesFromRecord:handler:]_block_invoke", "CoreLocation: %s\n", v25);
        if (v25 != buf)
        {
          free(v25);
        }
      }

      v19 = v26;
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = sub_19B777EB0;
      v26[3] = &unk_1E7532B40;
    }
  }

  else
  {
    v19 = block;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_19B777DBC;
    block[3] = &unk_1E7532B40;
  }

  v19[4] = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v19);
  v20 = *MEMORY[0x1E69E9840];
}

uint64_t sub_19B777DBC(uint64_t a1, const char *a2)
{
  v2 = *(a1 + 32);
  v3 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], a2, @"CMErrorDomain", 103, 0);
  v4 = *(v2 + 16);

  return v4(v2, 0, v3);
}

uint64_t sub_19B777E20(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = MEMORY[0x1E696ABC0];
  v4 = *(a1 + 40);
  v5 = objc_msgSend_intValue(*(a1 + 32), a2, a3);
  v7 = objc_msgSend_errorWithDomain_code_userInfo_(v3, v6, @"CMErrorDomain", v5, 0);
  v8 = *(v4 + 16);

  return v8(v4, 0, v7);
}

uint64_t sub_19B777EB0(uint64_t a1, const char *a2)
{
  v2 = *(a1 + 32);
  v3 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], a2, @"CMErrorDomain", 103, 0);
  v4 = *(v2 + 16);

  return v4(v2, 0, v3);
}

void sub_19B778154(uint64_t a1, const char *a2, uint64_t a3)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  if (v3)
  {
    v7 = @"CMSwimSWOLFSessionIdKey";
    v8[0] = v3;
    block[5] = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, v8, &v7, 1);
    sub_19B44BE58();
  }

  v4 = objc_msgSend_copy(*(a1 + 48), a2, a3);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B778318;
  block[3] = &unk_1E7532B40;
  block[4] = v4;
  dispatch_async(MEMORY[0x1E69E96A0], block);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_19B7782EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a16)
  {
    sub_19B41FFEC(a16);
  }

  if (a18)
  {
    sub_19B41FFEC(a18);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B778318(uint64_t a1, const char *a2)
{
  v2 = *(a1 + 32);
  v3 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], a2, @"CMErrorDomain", 107, 0);
  v4 = *(v2 + 16);

  return v4(v2, 0, v3);
}

void sub_19B77837C(uint64_t a1, const char *a2, uint64_t a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_copy(*(a1 + 32), a2, a3);
  v5 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v10 = objc_msgSend_setWithObjects_(v5, v9, v6, v7, v8, 0);
  if (*a2 && (DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v10)) != 0)
  {
    v13 = DictionaryOfClasses;
    v14 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v12, @"CMErrorMessage");
    v16 = objc_msgSend_objectForKeyedSubscript_(v13, v15, @"CMSwimSWOLFDataKey");
    if (v14)
    {
      v17 = v25;
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = sub_19B778764;
      v25[3] = &unk_1E7532B90;
      v25[5] = v4;
      v4 = v14;
    }

    else if (v16)
    {
      v17 = v24;
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = sub_19B7787DC;
      v24[3] = &unk_1E7532B90;
      v24[5] = v4;
      v4 = v16;
    }

    else
    {
      if (qword_1EAFE2978 != -1)
      {
        dispatch_once(&qword_1EAFE2978, &unk_1F0E3B728);
      }

      v19 = qword_1EAFE2980;
      if (os_log_type_enabled(qword_1EAFE2980, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v19, OS_LOG_TYPE_FAULT, "Unable to parse kCLConnectionMessageSwimSWOLFSessionQuery message.", buf, 2u);
      }

      v20 = sub_19B420058();
      if ((*(v20 + 160) & 0x80000000) == 0 || (*(v20 + 164) & 0x80000000) == 0 || (*(v20 + 168) & 0x80000000) == 0 || *(v20 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2978 != -1)
        {
          dispatch_once(&qword_1EAFE2978, &unk_1F0E3B728);
        }

        v23 = 0;
        v21 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 0, "[CMSwimTrackerInternal _querySWOLFSummaryWithSessionID:handler:]_block_invoke", "CoreLocation: %s\n", v21);
        if (v21 != buf)
        {
          free(v21);
        }
      }

      v17 = v22;
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = sub_19B7787F4;
      v22[3] = &unk_1E7532B40;
    }
  }

  else
  {
    v17 = block;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_19B778700;
    block[3] = &unk_1E7532B40;
  }

  v17[4] = v4;
  dispatch_async(MEMORY[0x1E69E96A0], v17);
  v18 = *MEMORY[0x1E69E9840];
}

uint64_t sub_19B778700(uint64_t a1, const char *a2)
{
  v2 = *(a1 + 32);
  v3 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], a2, @"CMErrorDomain", 103, 0);
  v4 = *(v2 + 16);

  return v4(v2, 0, v3);
}

uint64_t sub_19B778764(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = MEMORY[0x1E696ABC0];
  v4 = *(a1 + 40);
  v5 = objc_msgSend_intValue(*(a1 + 32), a2, a3);
  v7 = objc_msgSend_errorWithDomain_code_userInfo_(v3, v6, @"CMErrorDomain", v5, 0);
  v8 = *(v4 + 16);

  return v8(v4, 0, v7);
}

uint64_t sub_19B7787F4(uint64_t a1, const char *a2)
{
  v2 = *(a1 + 32);
  v3 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], a2, @"CMErrorDomain", 103, 0);
  v4 = *(v2 + 16);

  return v4(v2, 0, v3);
}

uint64_t sub_19B77967C(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = MEMORY[0x1E696ABC0];
  v4 = *(a1 + 40);
  v5 = objc_msgSend_intValue(*(a1 + 32), a2, a3);
  v7 = objc_msgSend_errorWithDomain_code_userInfo_(v3, v6, @"CMErrorDomain", v5, 0);
  v8 = *(v4 + 16);

  return v8(v4, 0, v7);
}

uint64_t sub_19B7796F4(uint64_t a1, const char *a2)
{
  v2 = *(a1 + 32);
  v3 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], a2, @"CMErrorDomain", 103, 0);
  v4 = *(v2 + 16);

  return v4(v2, 0, v3);
}

uint64_t sub_19B779990(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend__internal(*(a1 + 32), a2, a3);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);

  return objc_msgSend__startUpdatesFromRecord_handler_(v4, v5, v6, v7);
}

uint64_t sub_19B779A44(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend__internal(*(a1 + 32), a2, a3);

  return MEMORY[0x1EEE66B58](v3, sel__stopUpdates, v4);
}

uint64_t sub_19B779B58(uint64_t a1, const char *a2)
{
  result = objc_msgSend_isAuthorizedForEntitlement_(CMMotionUtils, a2, @"com.apple.locationd.activity");
  qword_1ED71D780 = result;
  return result;
}

uint64_t sub_19B779C70(uint64_t a1, const char *a2)
{
  result = objc_msgSend_isAuthorizedForEntitlement_(CMMotionUtils, a2, @"com.apple.locationd.activity");
  qword_1ED71D790 = result;
  return result;
}

os_log_t sub_19B779CA8()
{
  result = os_log_create("com.apple.locationd.Motion", "Swimming");
  qword_1EAFE2980 = result;
  return result;
}

os_log_t sub_19B77A528()
{
  result = os_log_create("com.apple.locationd.Motion", "MotionAlarm");
  qword_1EAFE27D8 = result;
  return result;
}

double sub_19B77B8B4()
{
  v0 = mach_continuous_time();

  return sub_19B41E070(v0);
}

void *sub_19B77C8AC(void *a1)
{
  *a1 = &unk_1F0E3B758;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
  v2 = sub_19B420D84();
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_19B77C964;
  v4[3] = &unk_1E75327D8;
  v4[4] = a1;
  sub_19B420C9C(v2, v4);
  return a1;
}

void sub_19B77C94C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    sub_19B41FFEC(v3);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_19B77C96C(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  sub_19B420D84();
  sub_19B44B9A0();
  v2 = +[CMOdometryManager isAvailable]_0();
  if (v2)
  {
    if (!*(a1 + 8))
    {
      v3 = sub_19B42CAAC();
      sub_19B42C428(v3);
    }
  }

  else
  {
    if (qword_1EAFE2A88 != -1)
    {
      dispatch_once(&qword_1EAFE2A88, &unk_1F0E2A560);
    }

    v4 = qword_1EAFE2A90;
    if (os_log_type_enabled(qword_1EAFE2A90, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_FAULT, "Service unavailable.", buf, 2u);
    }

    v5 = sub_19B420058();
    if ((*(v5 + 160) & 0x80000000) == 0 || (*(v5 + 164) & 0x80000000) == 0 || (*(v5 + 168) & 0x80000000) == 0 || *(v5 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2A88 != -1)
      {
        dispatch_once(&qword_1EAFE2A88, &unk_1F0E2A560);
      }

      v6 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "BOOL CLSPUInertialOdometryInterface::openHidDevice()", "CoreLocation: %s\n", v6);
      if (v6 != buf)
      {
        free(v6);
      }
    }
  }

  v7 = *MEMORY[0x1E69E9840];
  return v2;
}

void *sub_19B77CB9C(void *a1)
{
  *a1 = &unk_1F0E3B758;
  v2 = a1[2];
  if (v2)
  {
    sub_19B41FFEC(v2);
  }

  return a1;
}

void sub_19B77CBE8(void *a1)
{
  *a1 = &unk_1F0E3B758;
  v1 = a1[2];
  if (v1)
  {
    sub_19B41FFEC(v1);
  }

  JUMPOUT(0x19EAE76F0);
}

void sub_19B77CC54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    IOHIDEventGetVendorDefinedData();
    if (qword_1EAFE2A88 != -1)
    {
      dispatch_once(&qword_1EAFE2A88, &unk_1F0E2A560);
    }

    v4 = qword_1EAFE2A90;
    if (os_log_type_enabled(qword_1EAFE2A90, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_INFO, "Empty payload, returning", buf, 2u);
    }

    v5 = sub_19B420058();
    if (*(v5 + 160) > 1 || *(v5 + 164) > 1 || *(v5 + 168) > 1 || *(v5 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2A88 != -1)
      {
        dispatch_once(&qword_1EAFE2A88, &unk_1F0E2A560);
      }

      v6 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "void CLSPUInertialOdometryInterface::onIoHidEvent(IOHIDEventRef)", "CoreLocation: %s\n");
LABEL_23:
      if (v6 != buf)
      {
        free(v6);
      }
    }
  }

  else
  {
    if (qword_1EAFE2A88 != -1)
    {
      dispatch_once(&qword_1EAFE2A88, &unk_1F0E2A560);
    }

    v7 = qword_1EAFE2A90;
    if (os_log_type_enabled(qword_1EAFE2A90, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_FAULT, "Event ref invalid", buf, 2u);
    }

    v8 = sub_19B420058();
    if ((*(v8 + 160) & 0x80000000) == 0 || (*(v8 + 164) & 0x80000000) == 0 || (*(v8 + 168) & 0x80000000) == 0 || *(v8 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2A88 != -1)
      {
        dispatch_once(&qword_1EAFE2A88, &unk_1F0E2A560);
      }

      v6 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "void CLSPUInertialOdometryInterface::onIoHidEvent(IOHIDEventRef)", "CoreLocation: %s\n");
      goto LABEL_23;
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

os_log_t sub_19B77D398()
{
  result = os_log_create("com.apple.locationd.Motion", "InertialOdometry");
  qword_1EAFE2A90 = result;
  return result;
}

uint64_t sub_19B77D3C8(void *a1)
{
  *a1 = &unk_1F0E33900;
  sub_19B4441E8(a1);

  return sub_19B781CDC(a1);
}

void sub_19B77D424(void *a1)
{
  sub_19B77D3C8(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B77D45C(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock((a1 + 176));
  if (*(a1 + 180) == 1)
  {
    if (*(a1 + 24))
    {
      v2 = IOHIDServiceClientFastPathCopyEventWithStatus();
      if (v2)
      {
        v3 = v2;
        if (qword_1ED71C830 != -1)
        {
          dispatch_once(&qword_1ED71C830, &unk_1F0E2A580);
        }

        v4 = off_1ED71C838;
        if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_INFO))
        {
          *buf = 67240192;
          v10 = v3;
          _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_INFO, "[FastPath] copyEventPrivate() Failed (%{public}x)", buf, 8u);
        }

        v5 = sub_19B420058();
        if (*(v5 + 160) > 1 || *(v5 + 164) > 1 || *(v5 + 168) > 1 || *(v5 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1ED71C830 != -1)
          {
            dispatch_once(&qword_1ED71C830, &unk_1F0E2A580);
          }

          v6 = _os_log_send_and_compose_impl();
          sub_19B6BB7CC("Generic", 1, 0, 2, "IOHIDEventRef FastPathDevice::copyEventPrivate()", "CoreLocation: %s\n", v6);
          if (v6 != buf)
          {
            free(v6);
          }
        }
      }
    }
  }

  os_unfair_lock_unlock((a1 + 176));
  result = 0;
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_19B77D66C(_BYTE *a1)
{
  v2 = sub_19B782B40(a1);
  if (v2 && a1[181] == 1)
  {
    sub_19B43E748(a1);
  }

  return v2;
}

void sub_19B77DA40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, std::__shared_weak_count *a24, int a25, __int16 a26, char a27, char a28)
{
  if (a11)
  {
    sub_19B41FFEC(a11);
  }

  if (a24)
  {
    sub_19B41FFEC(a24);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B77DAC0(uint64_t a1, CLConnectionMessage **a2)
{
  v15 = *MEMORY[0x1E69E9840];
  Dictionary = CLConnectionMessage::getDictionary(*a2);
  v5 = objc_msgSend_objectForKeyedSubscript_(Dictionary, v4, @"CMBatchedSensorAvailable");
  v8 = objc_msgSend_BOOLValue(v5, v6, v7);
  if (qword_1EAFE2AB8 != -1)
  {
    dispatch_once(&qword_1EAFE2AB8, &unk_1F0E28AA0);
  }

  v9 = qword_1EAFE2AC0;
  if (os_log_type_enabled(qword_1EAFE2AC0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67240192;
    v14 = v8;
    _os_log_impl(&dword_19B41C000, v9, OS_LOG_TYPE_DEFAULT, "[framework] received availability update %{public}d", buf, 8u);
  }

  v10 = sub_19B420058();
  if (*(v10 + 160) > 1 || *(v10 + 164) > 1 || *(v10 + 168) > 1 || *(v10 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2AB8 != -1)
    {
      dispatch_once(&qword_1EAFE2AB8, &unk_1F0E28AA0);
    }

    v11 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMBatchedSensorManagerInternal _connect]_block_invoke", "CoreLocation: %s\n", v11);
    if (v11 != buf)
    {
      free(v11);
    }
  }

  *(*(a1 + 32) + 32) = v8;
  v12 = *MEMORY[0x1E69E9840];
}

void sub_19B77DCB4(uint64_t a1, CLConnectionMessage **a2)
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695DFD8];
  v5 = objc_opt_class();
  v7 = objc_msgSend_setWithObjects_(v4, v6, v5, 0);
  DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v7);
  v10 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v9, @"CMErrorMessage");
  v13 = objc_msgSend_intValue(v10, v11, v12);
  if (qword_1EAFE2AB8 != -1)
  {
    dispatch_once(&qword_1EAFE2AB8, &unk_1F0E28AA0);
  }

  v14 = qword_1EAFE2AC0;
  if (os_log_type_enabled(qword_1EAFE2AC0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67240192;
    v30 = v13;
    _os_log_impl(&dword_19B41C000, v14, OS_LOG_TYPE_DEFAULT, "[framework] received error %{public}d", buf, 8u);
  }

  v15 = sub_19B420058();
  if (*(v15 + 160) > 1 || *(v15 + 164) > 1 || *(v15 + 168) > 1 || *(v15 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2AB8 != -1)
    {
      dispatch_once(&qword_1EAFE2AB8, &unk_1F0E28AA0);
    }

    v27 = 67240192;
    v28 = v13;
    v16 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMBatchedSensorManagerInternal _connect]_block_invoke", "CoreLocation: %s\n", v16);
    if (v16 != buf)
    {
      free(v16);
    }
  }

  v17 = *(a1 + 32);
  v18 = v17[5];
  if (v18)
  {
    v19 = v17[3];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_19B77DF88;
    block[3] = &unk_1E7532AB0;
    block[4] = v18;
    v26 = v13;
    dispatch_async(v19, block);
    v17 = *(a1 + 32);
  }

  v20 = v17[7];
  if (v20)
  {
    v21 = v17[3];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = sub_19B77DFF0;
    v23[3] = &unk_1E7532AB0;
    v23[4] = v20;
    v24 = v13;
    dispatch_async(v21, v23);
  }

  v22 = *MEMORY[0x1E69E9840];
}

uint64_t sub_19B77DF88(uint64_t a1, const char *a2)
{
  v2 = *(a1 + 32);
  v3 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], a2, @"CMErrorDomain", *(a1 + 40), 0);
  v4 = *(v2 + 16);

  return v4(v2, 0, v3);
}

uint64_t sub_19B77DFF0(uint64_t a1, const char *a2)
{
  v2 = *(a1 + 32);
  v3 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], a2, @"CMErrorDomain", *(a1 + 40), 0);
  v4 = *(v2 + 16);

  return v4(v2, 0, v3);
}

void sub_19B77E18C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B77E7C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, std::__shared_weak_count *a30, int a31, __int16 a32, char a33, char a34)
{
  if (a13)
  {
    sub_19B41FFEC(a13);
  }

  if (a30)
  {
    sub_19B41FFEC(a30);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B77E808(uint64_t a1, const char *a2)
{
  v2 = *(a1 + 32);
  v3 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], a2, @"CMErrorDomain", 109, 0);
  v4 = *(v2 + 16);

  return v4(v2, 0, v3);
}

void sub_19B77E86C(uint64_t a1, uint64_t *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  v5 = objc_opt_class();
  v7 = a2[1];
  v19 = *a2;
  v20 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v9 = objc_msgSend__newArrayByUnpackingAccelerometerBatch_(v5, v6, &v19);
  if (v20)
  {
    sub_19B41FFEC(v20);
  }

  v10 = *(a1 + 32);
  v11 = v10[5];
  if (v11)
  {
    if (qword_1EAFE2AB8 != -1)
    {
      dispatch_once(&qword_1EAFE2AB8, &unk_1F0E28AA0);
    }

    v12 = qword_1EAFE2AC0;
    if (os_log_type_enabled(qword_1EAFE2AC0, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v12, OS_LOG_TYPE_INFO, "[framework-accel] invoking client handler", buf, 2u);
    }

    v13 = sub_19B420058();
    if (*(v13 + 160) > 1 || *(v13 + 164) > 1 || *(v13 + 168) > 1 || *(v13 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2AB8 != -1)
      {
        dispatch_once(&qword_1EAFE2AB8, &unk_1F0E28AA0);
      }

      v18 = 0;
      v14 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMBatchedSensorManagerInternal _startAccelerometerUpdatesWithHandler:]_block_invoke", "CoreLocation: %s\n", v14);
      if (v14 != buf)
      {
        free(v14);
      }
    }

    v15 = *(*(a1 + 32) + 24);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_19B77EAF4;
    block[3] = &unk_1E7532B90;
    block[4] = v9;
    block[5] = v11;
    dispatch_async(v15, block);
    v10 = *(a1 + 32);
  }

  objc_msgSend_setAccelBatch_(v10, v8, v9);

  v16 = *MEMORY[0x1E69E9840];
}

void sub_19B77EAD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20)
{
  if (a20)
  {
    sub_19B41FFEC(a20);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B77EDB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20)
{
  if (a13)
  {
    sub_19B41FFEC(a13);
  }

  if (a20)
  {
    sub_19B41FFEC(a20);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B77FA34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, std::__shared_weak_count *a30, int a31, __int16 a32, char a33, char a34)
{
  if (a13)
  {
    sub_19B41FFEC(a13);
  }

  if (a30)
  {
    sub_19B41FFEC(a30);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B77FA78(uint64_t a1, const char *a2)
{
  v2 = *(a1 + 32);
  v3 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], a2, @"CMErrorDomain", 109, 0);
  v4 = *(v2 + 16);

  return v4(v2, 0, v3);
}

void sub_19B77FADC(uint64_t a1, uint64_t *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  v5 = objc_opt_class();
  v7 = a2[1];
  v19 = *a2;
  v20 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v9 = objc_msgSend__newArrayByUnpackingDeviceMotionBatch_(v5, v6, &v19);
  if (v20)
  {
    sub_19B41FFEC(v20);
  }

  v10 = *(a1 + 32);
  v11 = v10[7];
  if (v11)
  {
    if (qword_1EAFE2AB8 != -1)
    {
      dispatch_once(&qword_1EAFE2AB8, &unk_1F0E28AA0);
    }

    v12 = qword_1EAFE2AC0;
    if (os_log_type_enabled(qword_1EAFE2AC0, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v12, OS_LOG_TYPE_INFO, "[framework-dm] invoking client handler", buf, 2u);
    }

    v13 = sub_19B420058();
    if (*(v13 + 160) > 1 || *(v13 + 164) > 1 || *(v13 + 168) > 1 || *(v13 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2AB8 != -1)
      {
        dispatch_once(&qword_1EAFE2AB8, &unk_1F0E28AA0);
      }

      v18 = 0;
      v14 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMBatchedSensorManagerInternal _startDeviceMotionUpdatesWithHandler:]_block_invoke", "CoreLocation: %s\n", v14);
      if (v14 != buf)
      {
        free(v14);
      }
    }

    v15 = *(*(a1 + 32) + 24);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_19B77FD64;
    block[3] = &unk_1E7532B90;
    block[4] = v9;
    block[5] = v11;
    dispatch_async(v15, block);
    v10 = *(a1 + 32);
  }

  objc_msgSend_setDeviceMotionBatch_(v10, v8, v9);

  v16 = *MEMORY[0x1E69E9840];
}

void sub_19B77FD44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20)
{
  if (a20)
  {
    sub_19B41FFEC(a20);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B780020(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20)
{
  if (a13)
  {
    sub_19B41FFEC(a13);
  }

  if (a20)
  {
    sub_19B41FFEC(a20);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B78091C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(*(v1 + 8) + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B780994;
  block[3] = &unk_1E7532988;
  block[4] = v1;
  dispatch_async(v2, block);
}

void sub_19B780A18(uint64_t a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v1 = *(a1 + 32);
  v2 = *(*(*(a1 + 32) + 8) + 16);
  v3[1] = 3221225472;
  v3[2] = sub_19B780A94;
  v3[3] = &unk_1E7532B68;
  v4 = v1;
  dispatch_async(v2, v3);
}

void sub_19B780BC4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(*(v1 + 8) + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B780C3C;
  block[3] = &unk_1E7532988;
  block[4] = v1;
  dispatch_async(v2, block);
}

void sub_19B780CC0(uint64_t a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v1 = *(a1 + 32);
  v2 = *(*(*(a1 + 32) + 8) + 16);
  v3[1] = 3221225472;
  v3[2] = sub_19B780D3C;
  v3[3] = &unk_1E7532B68;
  v4 = v1;
  dispatch_async(v2, v3);
}

os_log_t sub_19B780DD4()
{
  result = os_log_create("com.apple.locationd.Motion", "BatchedSensor");
  qword_1EAFE2AC0 = result;
  return result;
}

uint64_t sub_19B780E7C(uint64_t a1)
{
  *a1 = &unk_1F0E33030;
  v2 = *(a1 + 56);
  if (v2)
  {
    CFRunLoopTimerInvalidate(v2);
    CFRelease(*(a1 + 56));
  }

  sub_19B780EF4(a1);
  v4 = (a1 + 8);
  sub_19B783808(&v4);
  return a1;
}

void sub_19B780EF4(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  Current = CFRunLoopGetCurrent();
  sub_19B420D84();
  if (Current != *qword_1ED71C908)
  {
    if (qword_1ED71C830 != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
    }

    v13 = off_1ED71C838;
    p_vtable = "CFRunLoopGetCurrent() == CLMotionCore::instance()->getMotionRunLoop()";
    if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v17 = 0;
      v18 = 2082;
      v19 = "";
      v20 = 2082;
      v21 = "assert";
      v22 = 2081;
      v23 = "CFRunLoopGetCurrent() == CLMotionCore::instance()->getMotionRunLoop()";
      _os_log_impl(&dword_19B41C000, v13, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:[CLIoHidInterface] closeHid should be running on motion thread, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED71C830 != -1)
      {
        dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
      }
    }

    v14 = off_1ED71C838;
    if (os_signpost_enabled(off_1ED71C838))
    {
      *buf = 68289539;
      v17 = 0;
      v18 = 2082;
      v19 = "";
      v20 = 2082;
      v21 = "assert";
      v22 = 2081;
      v23 = "CFRunLoopGetCurrent() == CLMotionCore::instance()->getMotionRunLoop()";
      _os_signpost_emit_with_name_impl(&dword_19B41C000, v14, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "[CLIoHidInterface] closeHid should be running on motion thread", "{msg%{public}.0s:[CLIoHidInterface] closeHid should be running on motion thread, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED71C830 != -1)
      {
        dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
      }
    }

    v15 = off_1ED71C838;
    if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v17 = 0;
      v18 = 2082;
      v19 = "";
      v20 = 2082;
      v21 = "assert";
      v22 = 2081;
      v23 = "CFRunLoopGetCurrent() == CLMotionCore::instance()->getMotionRunLoop()";
      _os_log_impl(&dword_19B41C000, v15, OS_LOG_TYPE_INFO, "{msg%{public}.0s:[CLIoHidInterface] closeHid should be running on motion thread, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
    goto LABEL_27;
  }

  if (*(a1 + 40))
  {
    sub_19B420D84();
    v3 = *qword_1ED71C908;
    v4 = *MEMORY[0x1E695E8E0];
    IOHIDEventSystemClientUnscheduleWithRunLoop();
    v5 = *(a1 + 40);
    IOHIDEventSystemClientUnregisterEventCallback();
    v6 = *(a1 + 40);
    IOHIDEventSystemClientUnregisterResetCallback();
    v7 = *(a1 + 40);
    IOHIDEventSystemClientUnregisterDeviceMatchingCallback();
    CFRelease(*(a1 + 40));
    *(a1 + 40) = 0;
  }

  p_vtable = CMDeviceOrientationManager.vtable;
  if (qword_1ED71C830 != -1)
  {
LABEL_27:
    dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
  }

  v9 = off_1ED71C838;
  if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v9, OS_LOG_TYPE_DEFAULT, "[CLIoHidInterface] Hid interface closed", buf, 2u);
  }

  v10 = sub_19B420058();
  if (*(v10 + 160) > 1 || *(v10 + 164) > 1 || *(v10 + 168) > 1 || *(v10 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (p_vtable[262] != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
    }

    v11 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CLIoHidInterface::closeHid()", "CoreLocation: %s\n", v11);
    if (v11 != buf)
    {
      free(v11);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

void sub_19B781358(uint64_t a1)
{
  sub_19B780E7C(a1);

  JUMPOUT(0x19EAE76F0);
}

void sub_19B781390(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  if (qword_1ED71C830 != -1)
  {
    dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
  }

  v2 = off_1ED71C838;
  if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v2, OS_LOG_TYPE_DEFAULT, "[CLIoHidInterface] It looks like our HID event system just become available (again)", buf, 2u);
  }

  v3 = sub_19B420058();
  if (*(v3 + 160) > 1 || *(v3 + 164) > 1 || *(v3 + 168) > 1 || *(v3 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C830 != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
    }

    v4 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CLIoHidInterface::onEventSystemReset(void *)", "CoreLocation: %s\n", v4);
    if (v4 != buf)
    {
      free(v4);
    }
  }

  v5 = sub_19B420D84();
  *buf = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = sub_19B781C20;
  v10 = &unk_1E75327D8;
  v11 = a1;
  sub_19B421668(v5, buf);
  v6 = *MEMORY[0x1E69E9840];
}

void sub_19B781594(uint64_t a1, char *a2, __IOHIDServiceClient *a3)
{
  v42 = *MEMORY[0x1E69E9840];
  if (a2 == "REMOVED")
  {
    context = objc_autoreleasePoolPush();
    v6 = *(a1 + 8);
    v5 = *(a1 + 16);
    if (v6 != v5)
    {
      while (1)
      {
        v7 = v6[1];
        if (v7)
        {
          break;
        }

LABEL_47:
        v6 += 2;
        if (v6 == v5)
        {
          goto LABEL_48;
        }
      }

      v8 = *v6;
      atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      v9 = std::__shared_weak_count::lock(v7);
      if (!v9)
      {
LABEL_46:
        std::__shared_weak_count::__release_weak(v7);
        goto LABEL_47;
      }

      v10 = v9;
      if (v8 && *(v8 + 88) && sub_19B43EE18(v8) == a3)
      {
        v11 = IOHIDServiceClientCopyProperty(a3, @"PrimaryUsagePage");
        v14 = objc_msgSend_intValue(v11, v12, v13);
        v15 = IOHIDServiceClientCopyProperty(a3, @"PrimaryUsage");
        v18 = objc_msgSend_intValue(v15, v16, v17);
        if (qword_1ED71C830 != -1)
        {
          dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
        }

        v19 = off_1ED71C838;
        if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_DEFAULT))
        {
          v20 = *(v8 + 160);
          *buf = 134284291;
          v35 = a3;
          v36 = 1026;
          v37 = v14;
          v38 = 1026;
          v39 = v18;
          v40 = 2113;
          v41 = v20;
          _os_log_impl(&dword_19B41C000, v19, OS_LOG_TYPE_DEFAULT, "[CLIoHidInterface] onServiceRemoval - IOHIDServiceClientRef for service %{private}p with usage pair {%{public}d, %{public}d} and property %{private}@ will be removed.", buf, 0x22u);
        }

        v21 = sub_19B420058();
        if (*(v21 + 160) > 1 || *(v21 + 164) > 1 || *(v21 + 168) > 1 || *(v21 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1ED71C830 != -1)
          {
            dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
          }

          v32 = *(v8 + 160);
          v22 = _os_log_send_and_compose_impl();
          sub_19B6BB7CC("Generic", 1, 0, 2, "void CLIoHidInterface::onServiceRemoval(void *, IOHIDServiceClientRef)", "CoreLocation: %s\n", v22);
          if (v22 != buf)
          {
            free(v22);
          }
        }

        (*(v8 + 88))(*(v8 + 96));
        (*(*v8 + 48))(v8);
        sub_19B42E770(a1, a3);
        if (sub_19B43EE18(v8))
        {
          sub_19B421D14(a1);
          if (qword_1ED71C830 != -1)
          {
            dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
          }

          v23 = off_1ED71C838;
          if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_DEFAULT))
          {
            v24 = sub_19B43EE18(v8);
            v25 = *(v8 + 160);
            *buf = 134284291;
            v35 = v24;
            v36 = 1026;
            v37 = v14;
            v38 = 1026;
            v39 = v18;
            v40 = 2113;
            v41 = v25;
            _os_log_impl(&dword_19B41C000, v23, OS_LOG_TYPE_DEFAULT, "[CLIoHidInterface] onServiceRemoval - successfully switch to service %{private}p with usage pair {%{public}d, %{public}d} and property %{private}@.", buf, 0x22u);
          }

          v26 = sub_19B420058();
          if (*(v26 + 160) <= 1 && *(v26 + 164) <= 1 && *(v26 + 168) <= 1 && !*(v26 + 152))
          {
            goto LABEL_45;
          }

          bzero(buf, 0x65CuLL);
          if (qword_1ED71C830 != -1)
          {
            dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
          }

          sub_19B43EE18(v8);
          v33 = *(v8 + 160);
          v27 = _os_log_send_and_compose_impl();
          sub_19B6BB7CC("Generic", 1, 0, 2, "void CLIoHidInterface::onServiceRemoval(void *, IOHIDServiceClientRef)", "CoreLocation: %s\n", v27);
        }

        else
        {
          if (qword_1ED71C830 != -1)
          {
            dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
          }

          v28 = off_1ED71C838;
          if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_19B41C000, v28, OS_LOG_TYPE_DEFAULT, "[CLIoHidInterface] onServiceRemoval - no available alternatives", buf, 2u);
          }

          v29 = sub_19B420058();
          if (*(v29 + 160) <= 1 && *(v29 + 164) <= 1 && *(v29 + 168) <= 1 && !*(v29 + 152))
          {
            goto LABEL_45;
          }

          bzero(buf, 0x65CuLL);
          if (qword_1ED71C830 != -1)
          {
            dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
          }

          v27 = _os_log_send_and_compose_impl();
          sub_19B6BB7CC("Generic", 1, 0, 2, "void CLIoHidInterface::onServiceRemoval(void *, IOHIDServiceClientRef)", "CoreLocation: %s\n", v27);
        }

        if (v27 != buf)
        {
          free(v27);
        }
      }

LABEL_45:
      sub_19B41FFEC(v10);
      goto LABEL_46;
    }

LABEL_48:
    objc_autoreleasePoolPop(context);
  }

  v30 = *MEMORY[0x1E69E9840];
}

void sub_19B781BE0(_Unwind_Exception *a1)
{
  sub_19B41FFEC(v2);
  std::__shared_weak_count::__release_weak(v1);
  _Unwind_Resume(a1);
}

void sub_19B781C20(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_19B42E770(v1, 0);
  v2 = *(v1 + 8);
  for (i = *(v1 + 16); v2 != i; v2 += 2)
  {
    v4 = v2[1];
    if (v4)
    {
      v5 = *v2;
      atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      v6 = std::__shared_weak_count::lock(v4);
      if (v6)
      {
        v7 = v6;
        if (v5)
        {
          v8 = *(v5 + 104);
          if (v8)
          {
            v8(*(v5 + 112));
          }
        }

        sub_19B41FFEC(v7);
      }

      std::__shared_weak_count::__release_weak(v4);
    }
  }
}

void sub_19B781CC0(_Unwind_Exception *a1)
{
  sub_19B41FFEC(v2);
  std::__shared_weak_count::__release_weak(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_19B781CDC(uint64_t a1)
{
  *a1 = &unk_1F0E31168;

  *(a1 + 168) = 0;
  v2 = *(a1 + 24);
  if (v2)
  {
    CFRelease(v2);
    sub_19B42E734(a1);
  }

  *(a1 + 160) = 0;
  return a1;
}

void sub_19B781D50(uint64_t a1)
{
  sub_19B781CDC(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B781D88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v30 = *MEMORY[0x1E69E9840];
  Current = CFRunLoopGetCurrent();
  result = sub_19B420D84();
  if (Current != *qword_1ED71C908)
  {
    if (qword_1ED71C830 != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
    }

    v9 = off_1ED71C838;
    if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_FAULT))
    {
      v11 = *(a1 + 16);
      v10 = *(a1 + 20);
      *buf = 68290051;
      v19 = 0;
      v20 = 2082;
      v21 = "";
      v22 = 1026;
      v23 = v10;
      v24 = 1026;
      v25 = v11;
      v26 = 2082;
      v27 = "assert";
      v28 = 2081;
      v29 = "CFRunLoopGetCurrent() == CLMotionCore::instance()->getMotionRunLoop()";
      _os_log_impl(&dword_19B41C000, v9, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:[CLIoHidInterface] setIoHidResetCallback should be called from motion thread, usagePage:%{public}d, usage:%{public}d, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x32u);
      if (qword_1ED71C830 != -1)
      {
        dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
      }
    }

    v12 = off_1ED71C838;
    if (os_signpost_enabled(off_1ED71C838))
    {
      v14 = *(a1 + 16);
      v13 = *(a1 + 20);
      *buf = 68290051;
      v19 = 0;
      v20 = 2082;
      v21 = "";
      v22 = 1026;
      v23 = v13;
      v24 = 1026;
      v25 = v14;
      v26 = 2082;
      v27 = "assert";
      v28 = 2081;
      v29 = "CFRunLoopGetCurrent() == CLMotionCore::instance()->getMotionRunLoop()";
      _os_signpost_emit_with_name_impl(&dword_19B41C000, v12, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "[CLIoHidInterface] setIoHidResetCallback should be called from motion thread", "{msg%{public}.0s:[CLIoHidInterface] setIoHidResetCallback should be called from motion thread, usagePage:%{public}d, usage:%{public}d, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x32u);
      if (qword_1ED71C830 != -1)
      {
        dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
      }
    }

    v15 = off_1ED71C838;
    if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_INFO))
    {
      v17 = *(a1 + 16);
      v16 = *(a1 + 20);
      *buf = 68290051;
      v19 = 0;
      v20 = 2082;
      v21 = "";
      v22 = 1026;
      v23 = v16;
      v24 = 1026;
      v25 = v17;
      v26 = 2082;
      v27 = "assert";
      v28 = 2081;
      v29 = "CFRunLoopGetCurrent() == CLMotionCore::instance()->getMotionRunLoop()";
      _os_log_impl(&dword_19B41C000, v15, OS_LOG_TYPE_INFO, "{msg%{public}.0s:[CLIoHidInterface] setIoHidResetCallback should be called from motion thread, usagePage:%{public}d, usage:%{public}d, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x32u);
    }

    abort_report_np();
  }

  *(a1 + 104) = a2;
  *(a1 + 112) = a3;
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

CFTypeRef sub_19B78205C(uint64_t a1, const __CFString *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  Current = CFRunLoopGetCurrent();
  sub_19B420D84();
  if (Current != *qword_1ED71C908)
  {
    if (qword_1ED71C830 != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
    }

    v9 = off_1ED71C838;
    if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_FAULT))
    {
      v11 = *(a1 + 16);
      v10 = *(a1 + 20);
      *buf = 68290051;
      v19 = 0;
      v20 = 2082;
      v21 = "";
      v22 = 1026;
      v23 = v10;
      v24 = 1026;
      v25 = v11;
      v26 = 2082;
      v27 = "assert";
      v28 = 2081;
      v29 = "CFRunLoopGetCurrent() == CLMotionCore::instance()->getMotionRunLoop()";
      _os_log_impl(&dword_19B41C000, v9, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:[CLIoHidInterface] copyProperty should be called from motion thread, usagePage:%{public}d, usage:%{public}d, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x32u);
      if (qword_1ED71C830 != -1)
      {
        dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
      }
    }

    v12 = off_1ED71C838;
    if (os_signpost_enabled(off_1ED71C838))
    {
      v14 = *(a1 + 16);
      v13 = *(a1 + 20);
      *buf = 68290051;
      v19 = 0;
      v20 = 2082;
      v21 = "";
      v22 = 1026;
      v23 = v13;
      v24 = 1026;
      v25 = v14;
      v26 = 2082;
      v27 = "assert";
      v28 = 2081;
      v29 = "CFRunLoopGetCurrent() == CLMotionCore::instance()->getMotionRunLoop()";
      _os_signpost_emit_with_name_impl(&dword_19B41C000, v12, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "[CLIoHidInterface] copyProperty should be called from motion thread", "{msg%{public}.0s:[CLIoHidInterface] copyProperty should be called from motion thread, usagePage:%{public}d, usage:%{public}d, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x32u);
      if (qword_1ED71C830 != -1)
      {
        dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
      }
    }

    v15 = off_1ED71C838;
    if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_INFO))
    {
      v17 = *(a1 + 16);
      v16 = *(a1 + 20);
      *buf = 68290051;
      v19 = 0;
      v20 = 2082;
      v21 = "";
      v22 = 1026;
      v23 = v16;
      v24 = 1026;
      v25 = v17;
      v26 = 2082;
      v27 = "assert";
      v28 = 2081;
      v29 = "CFRunLoopGetCurrent() == CLMotionCore::instance()->getMotionRunLoop()";
      _os_log_impl(&dword_19B41C000, v15, OS_LOG_TYPE_INFO, "{msg%{public}.0s:[CLIoHidInterface] copyProperty should be called from motion thread, usagePage:%{public}d, usage:%{public}d, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x32u);
    }

    abort_report_np();
  }

  if ((*(*a1 + 40))(a1))
  {
    v5 = *(a1 + 24);
    v6 = *MEMORY[0x1E69E9840];

    return IOHIDServiceClientCopyProperty(v5, a2);
  }

  else
  {
    v8 = *MEMORY[0x1E69E9840];
    return 0;
  }
}

uint64_t sub_19B7823A4(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  Current = CFRunLoopGetCurrent();
  sub_19B420D84();
  if (Current != *qword_1ED71C908)
  {
    if (qword_1ED71C830 != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
    }

    v5 = off_1ED71C838;
    if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      v16 = 2082;
      v17 = "assert";
      v18 = 2081;
      v19 = "CFRunLoopGetCurrent() == CLMotionCore::instance()->getMotionRunLoop()";
      _os_log_impl(&dword_19B41C000, v5, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:[CLIoHidInterface] should be running on motion thread, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED71C830 != -1)
      {
        dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
      }
    }

    v6 = off_1ED71C838;
    if (os_signpost_enabled(off_1ED71C838))
    {
      *buf = 68289539;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      v16 = 2082;
      v17 = "assert";
      v18 = 2081;
      v19 = "CFRunLoopGetCurrent() == CLMotionCore::instance()->getMotionRunLoop()";
      _os_signpost_emit_with_name_impl(&dword_19B41C000, v6, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "[CLIoHidInterface] should be running on motion thread", "{msg%{public}.0s:[CLIoHidInterface] should be running on motion thread, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED71C830 != -1)
      {
        dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
      }
    }

    v7 = off_1ED71C838;
    if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      v16 = 2082;
      v17 = "assert";
      v18 = 2081;
      v19 = "CFRunLoopGetCurrent() == CLMotionCore::instance()->getMotionRunLoop()";
      _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_INFO, "{msg%{public}.0s:[CLIoHidInterface] should be running on motion thread, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

LABEL_27:
    abort_report_np();
  }

  sub_19B420FC0(*(a1 + 40));
  if (!*(a1 + 152))
  {
    if (qword_1ED71C830 != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
    }

    v8 = off_1ED71C838;
    if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      v16 = 2082;
      v17 = "assert";
      v18 = 2081;
      v19 = "eventType > 0";
      _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:[CLIoHidInterface] must have event type set, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED71C830 != -1)
      {
        dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
      }
    }

    v9 = off_1ED71C838;
    if (os_signpost_enabled(off_1ED71C838))
    {
      *buf = 68289539;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      v16 = 2082;
      v17 = "assert";
      v18 = 2081;
      v19 = "eventType > 0";
      _os_signpost_emit_with_name_impl(&dword_19B41C000, v9, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "[CLIoHidInterface] must have event type set", "{msg%{public}.0s:[CLIoHidInterface] must have event type set, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED71C830 != -1)
      {
        dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
      }
    }

    v10 = off_1ED71C838;
    if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      v16 = 2082;
      v17 = "assert";
      v18 = 2081;
      v19 = "eventType > 0";
      _os_log_impl(&dword_19B41C000, v10, OS_LOG_TYPE_INFO, "{msg%{public}.0s:[CLIoHidInterface] must have event type set, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    goto LABEL_27;
  }

  v3 = *(a1 + 24);
  v4 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEDC8298](v3);
}

uint64_t sub_19B782870(_DWORD *a1, int a2)
{
  v28 = *MEMORY[0x1E69E9840];
  Current = CFRunLoopGetCurrent();
  result = sub_19B420D84();
  if (Current != *qword_1ED71C908)
  {
    if (qword_1ED71C830 != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
    }

    v7 = off_1ED71C838;
    if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_FAULT))
    {
      v9 = a1[4];
      v8 = a1[5];
      *buf = 68290051;
      v17 = 0;
      v18 = 2082;
      v19 = "";
      v20 = 1026;
      v21 = v8;
      v22 = 1026;
      v23 = v9;
      v24 = 2082;
      v25 = "assert";
      v26 = 2081;
      v27 = "CFRunLoopGetCurrent() == CLMotionCore::instance()->getMotionRunLoop()";
      _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:[CLIoHidInterface] setEventType should be called from motion thread, usagePage:%{public}d, usage:%{public}d, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x32u);
      if (qword_1ED71C830 != -1)
      {
        dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
      }
    }

    v10 = off_1ED71C838;
    if (os_signpost_enabled(off_1ED71C838))
    {
      v12 = a1[4];
      v11 = a1[5];
      *buf = 68290051;
      v17 = 0;
      v18 = 2082;
      v19 = "";
      v20 = 1026;
      v21 = v11;
      v22 = 1026;
      v23 = v12;
      v24 = 2082;
      v25 = "assert";
      v26 = 2081;
      v27 = "CFRunLoopGetCurrent() == CLMotionCore::instance()->getMotionRunLoop()";
      _os_signpost_emit_with_name_impl(&dword_19B41C000, v10, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "[CLIoHidInterface] setEventType should be called from motion thread", "{msg%{public}.0s:[CLIoHidInterface] setEventType should be called from motion thread, usagePage:%{public}d, usage:%{public}d, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x32u);
      if (qword_1ED71C830 != -1)
      {
        dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
      }
    }

    v13 = off_1ED71C838;
    if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_INFO))
    {
      v15 = a1[4];
      v14 = a1[5];
      *buf = 68290051;
      v17 = 0;
      v18 = 2082;
      v19 = "";
      v20 = 1026;
      v21 = v14;
      v22 = 1026;
      v23 = v15;
      v24 = 2082;
      v25 = "assert";
      v26 = 2081;
      v27 = "CFRunLoopGetCurrent() == CLMotionCore::instance()->getMotionRunLoop()";
      _os_log_impl(&dword_19B41C000, v13, OS_LOG_TYPE_INFO, "{msg%{public}.0s:[CLIoHidInterface] setEventType should be called from motion thread, usagePage:%{public}d, usage:%{public}d, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x32u);
    }

    abort_report_np();
  }

  a1[38] = a2;
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_19B782B40(void *a1)
{
  v23 = *MEMORY[0x1E69E9840];
  Current = CFRunLoopGetCurrent();
  sub_19B420D84();
  if (Current != *qword_1ED71C908)
  {
    if (qword_1ED71C830 != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
    }

    v11 = off_1ED71C838;
    p_vtable = "assert";
    if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v16 = 0;
      v17 = 2082;
      v18 = "";
      v19 = 2082;
      v20 = "assert";
      v21 = 2081;
      v22 = "CFRunLoopGetCurrent() == CLMotionCore::instance()->getMotionRunLoop()";
      _os_log_impl(&dword_19B41C000, v11, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:[CLIoHidInterface] Should be running on motion thread, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED71C830 != -1)
      {
        dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
      }
    }

    v12 = off_1ED71C838;
    if (os_signpost_enabled(off_1ED71C838))
    {
      *buf = 68289539;
      v16 = 0;
      v17 = 2082;
      v18 = "";
      v19 = 2082;
      v20 = "assert";
      v21 = 2081;
      v22 = "CFRunLoopGetCurrent() == CLMotionCore::instance()->getMotionRunLoop()";
      _os_signpost_emit_with_name_impl(&dword_19B41C000, v12, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "[CLIoHidInterface] Should be running on motion thread", "{msg%{public}.0s:[CLIoHidInterface] Should be running on motion thread, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED71C830 != -1)
      {
        dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
      }
    }

    a1 = off_1ED71C838;
    if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v16 = 0;
      v17 = 2082;
      v18 = "";
      v19 = 2082;
      v20 = "assert";
      v21 = 2081;
      v22 = "CFRunLoopGetCurrent() == CLMotionCore::instance()->getMotionRunLoop()";
      _os_log_impl(&dword_19B41C000, a1, OS_LOG_TYPE_INFO, "{msg%{public}.0s:[CLIoHidInterface] Should be running on motion thread, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
LABEL_29:
    dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
    goto LABEL_7;
  }

  sub_19B420FC0(*(a1 + 5));
  if (*(a1 + 3) || (sub_19B42E770(*(a1 + 5), 0), *(a1 + 3)))
  {
    result = 1;
    goto LABEL_5;
  }

  p_vtable = CMDeviceOrientationManager.vtable;
  if (qword_1ED71C830 != -1)
  {
    goto LABEL_29;
  }

LABEL_7:
  v6 = off_1ED71C838;
  if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 4);
    v7 = *(a1 + 5);
    *buf = 67240448;
    v16 = v7;
    v17 = 1026;
    LODWORD(v18) = v8;
    _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_DEFAULT, "[CLIoHidInterface] Service for usage pair {%{public}d, %{public}d} is not ready", buf, 0xEu);
  }

  v9 = sub_19B420058();
  if (*(v9 + 160) > 1 || *(v9 + 164) > 1 || *(v9 + 168) > 1 || *(v9 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (p_vtable[262] != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
    }

    v13 = *(a1 + 5);
    v14 = *(a1 + 4);
    v10 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "virtual BOOL CLIoHidInterface::Device::initializeServiceRef()", "CoreLocation: %s\n", v10);
    if (v10 != buf)
    {
      free(v10);
    }
  }

  result = 0;
LABEL_5:
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_19B782F70(uint64_t result)
{
  v1 = *(result + 32);
  v2 = *(v1 + 72);
  if (v2)
  {
    return v2(*(v1 + 80));
  }

  return result;
}

uint64_t sub_19B782F88(uint64_t a1, uint8_t *report, CFIndex reportLength)
{
  v37 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 32);
  if (v6)
  {
LABEL_2:
    v7 = *report;
    v8 = *MEMORY[0x1E69E9840];

    return IOHIDDeviceSetReport(v6, kIOHIDReportTypeFeature, v7, report, reportLength);
  }

  v10 = *(a1 + 24);
  if (!v10)
  {
    if (qword_1ED71C830 != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
    }

    v17 = off_1ED71C838;
    if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v17, OS_LOG_TYPE_ERROR, "[CLIoHidInterface] createIOHIDDevice failed - null service ref", buf, 2u);
    }

    v18 = sub_19B420058();
    if ((*(v18 + 160) & 0x80000000) != 0 && (*(v18 + 164) & 0x80000000) != 0 && (*(v18 + 168) & 0x80000000) != 0 && !*(v18 + 152))
    {
      goto LABEL_48;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1ED71C830 != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
    }

    LOWORD(valuePtr[0]) = 0;
    goto LABEL_46;
  }

  valuePtr[0] = 0;
  RegistryID = IOHIDServiceClientGetRegistryID(v10);
  CFNumberGetValue(RegistryID, kCFNumberSInt64Type, valuePtr);
  v12 = *MEMORY[0x1E696CD60];
  v13 = IORegistryEntryIDMatching(valuePtr[0]);
  MatchingService = IOServiceGetMatchingService(v12, v13);
  if (!MatchingService)
  {
    if (qword_1ED71C830 != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
    }

    v19 = off_1ED71C838;
    if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v19, OS_LOG_TYPE_ERROR, "[CLIoHidInterface] createIOHIDDevice failed - AOP service doesn't exist", buf, 2u);
    }

    v20 = sub_19B420058();
    if ((*(v20 + 160) & 0x80000000) != 0 && (*(v20 + 164) & 0x80000000) != 0 && (*(v20 + 168) & 0x80000000) != 0 && !*(v20 + 152))
    {
      goto LABEL_48;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1ED71C830 != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
    }

    LOWORD(service[0]) = 0;
    goto LABEL_46;
  }

  service[0] = 0;
  parent[0] = 0;
  if (IORegistryEntryGetParentEntry(MatchingService, "IOService", parent))
  {
    if (qword_1ED71C830 != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
    }

    v15 = off_1ED71C838;
    if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v15, OS_LOG_TYPE_ERROR, "[CLIoHidInterface] createIOHIDDevice failed - can't find the parent of the service", buf, 2u);
    }

    v16 = sub_19B420058();
    if ((*(v16 + 160) & 0x80000000) != 0 && (*(v16 + 164) & 0x80000000) != 0 && (*(v16 + 168) & 0x80000000) != 0 && !*(v16 + 152))
    {
      goto LABEL_48;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1ED71C830 == -1)
    {
      goto LABEL_46;
    }

LABEL_98:
    dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
LABEL_46:
    v23 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 0, "BOOL CLIoHidInterface::Device::createIOHIDDevice()", "CoreLocation: %s\n", v23);
    if (v23 != buf)
    {
      free(v23);
    }

    goto LABEL_48;
  }

  if (IORegistryEntryGetParentEntry(parent[0], "IOService", service))
  {
    if (qword_1ED71C830 != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
    }

    v21 = off_1ED71C838;
    if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v21, OS_LOG_TYPE_ERROR, "[CLIoHidInterface] createIOHIDDevice failed - can't find the grandparent of the service", buf, 2u);
    }

    v22 = sub_19B420058();
    if ((*(v22 + 160) & 0x80000000) != 0 && (*(v22 + 164) & 0x80000000) != 0 && (*(v22 + 168) & 0x80000000) != 0 && !*(v22 + 152))
    {
      goto LABEL_48;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1ED71C830 == -1)
    {
      goto LABEL_46;
    }

    goto LABEL_98;
  }

  v28 = IOHIDDeviceCreate(*MEMORY[0x1E695E480], service[0]);
  *(a1 + 32) = v28;
  if (!v28)
  {
    if (qword_1ED71C830 != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
    }

    v31 = off_1ED71C838;
    if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v31, OS_LOG_TYPE_ERROR, "[CLIoHidInterface] createIOHIDDevice failed - can't create HID device", buf, 2u);
    }

    v32 = sub_19B420058();
    if ((*(v32 + 160) & 0x80000000) != 0 && (*(v32 + 164) & 0x80000000) != 0 && (*(v32 + 168) & 0x80000000) != 0 && !*(v32 + 152))
    {
      goto LABEL_48;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1ED71C830 != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
    }

    LOWORD(parent[0]) = 0;
    goto LABEL_46;
  }

  if (IOHIDDeviceOpen(v28, 0))
  {
    CFRelease(*(a1 + 32));
    *(a1 + 32) = 0;
    if (qword_1ED71C830 != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
    }

    v29 = off_1ED71C838;
    if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v29, OS_LOG_TYPE_ERROR, "[CLIoHidInterface] createIOHIDDevice failed - can't open the HID device", buf, 2u);
    }

    v30 = sub_19B420058();
    if ((*(v30 + 160) & 0x80000000) != 0 && (*(v30 + 164) & 0x80000000) != 0 && (*(v30 + 168) & 0x80000000) != 0 && !*(v30 + 152))
    {
      goto LABEL_48;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1ED71C830 != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
    }

    LOWORD(parent[0]) = 0;
    goto LABEL_46;
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    goto LABEL_2;
  }

LABEL_48:
  if (qword_1ED71C830 != -1)
  {
    dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
  }

  v24 = off_1ED71C838;
  if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v24, OS_LOG_TYPE_ERROR, "[CLIoHidInterface] sendIOHIDDeviceReport failed - can't create HID Device", buf, 2u);
  }

  v25 = sub_19B420058();
  if ((*(v25 + 160) & 0x80000000) == 0 || (*(v25 + 164) & 0x80000000) == 0 || (*(v25 + 168) & 0x80000000) == 0 || *(v25 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C830 != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
    }

    LOWORD(valuePtr[0]) = 0;
    v26 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 0, "IOReturn CLIoHidInterface::Device::sendIOHIDDeviceReport(const uint8_t *, size_t)", "CoreLocation: %s\n", v26);
    if (v26 != buf)
    {
      free(v26);
    }
  }

  v27 = *MEMORY[0x1E69E9840];
  return 3758097088;
}

void sub_19B783808(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_19B78385C(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_19B78385C(uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 16)
  {
    v4 = *(i - 8);
    if (v4)
    {
      std::__shared_weak_count::__release_weak(v4);
    }
  }

  a1[1] = v2;
}

void sub_19B784638(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22)
{
  if (a13)
  {
    sub_19B41FFEC(a13);
  }

  if (a22)
  {
    sub_19B41FFEC(a22);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B784DAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    sub_19B41FFEC(a15);
  }

  _Unwind_Resume(exception_object);
}

os_log_t sub_19B784DF0()
{
  result = os_log_create("com.apple.locationd.Motion", "Kappa");
  qword_1EAFE29C0 = result;
  return result;
}

os_log_t sub_19B784E20()
{
  result = os_log_create("com.apple.locationd.Motion", "Fall");
  qword_1EAFE29B0 = result;
  return result;
}

os_log_t sub_19B784E50()
{
  result = os_log_create("com.apple.locationd.Motion", "Igneous");
  qword_1EAFE2AD0 = result;
  return result;
}

uint64_t sub_19B785170()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  qword_1ED71D7B0 = v0;

  return objc_msgSend_setDateFormat_(v0, v1, @"yyyy-MM-dd HH:mm:ss Z");
}

uint64_t sub_19B7851B0()
{
  if (qword_1EAFE3A20 != -1)
  {
    dispatch_once(&qword_1EAFE3A20, &unk_1F0E2A620);
  }

  return qword_1EAFE3A18;
}

void sub_19B7852B4(_Unwind_Exception *a1)
{
  sub_19B78E7F8(v4);
  sub_19B78E7F8(v3);
  sub_19B78E7F8(v5);
  sub_19B78E7F8(v2 + 80);
  if (*(v2 + 79) < 0)
  {
    operator delete(*(v2 + 56));
  }

  MEMORY[0x19EAE76F0](v2, v1);
  _Unwind_Resume(a1);
}

void sub_19B7852FC(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];

  *(a1 + 48) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  if (*(a1 + 8))
  {
    BTAccessoryManagerDeregisterCustomMessageClient();
    v2 = *(a1 + 8);
    BTAccessoryManagerRemoveCallbacks();
    *(a1 + 8) = 0;
  }

  if (*(a1 + 16))
  {
    BTLocalDeviceRemoveCallbacks();
    *(a1 + 16) = 0;
  }

  *a1 = 0;
  v3 = BTSessionAttachWithQueue();
  if (v3)
  {
    v4 = v3;
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E3B7C0);
    }

    v5 = qword_1ED71C7C8;
    if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_ERROR))
    {
      *buf = 67240192;
      v10 = v4;
      _os_log_impl(&dword_19B41C000, v5, OS_LOG_TYPE_ERROR, "[CLAudioAccessoryInterface] Failed to register BT session callback. Error: %{public}d", buf, 8u);
    }

    v6 = sub_19B420058();
    if ((*(v6 + 160) & 0x80000000) == 0 || (*(v6 + 164) & 0x80000000) == 0 || (*(v6 + 168) & 0x80000000) == 0 || *(v6 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7B8 != -1)
      {
        dispatch_once(&qword_1ED71C7B8, &unk_1F0E3B7C0);
      }

      v7 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "void CLAudioAccessoryInterface::attachBTSession()", "CoreLocation: %s\n", v7);
      if (v7 != buf)
      {
        free(v7);
      }
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

uint64_t sub_19B785538(uint64_t a1, void *a2)
{
  v38 = *MEMORY[0x1E69E9840];
  Current = CFRunLoopGetCurrent();
  sub_19B420D84();
  if (Current != *qword_1ED71C908)
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v36 = 0x2020000000;
    v37 = 0;
    v7 = sub_19B420D84();
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = sub_19B785AA4;
    v32[3] = &unk_1E7535D48;
    v32[5] = &buf;
    v32[6] = a1;
    v32[4] = a2;
    sub_19B420C9C(v7, v32);
    v8 = *(*(&buf + 1) + 24);
    _Block_object_dispose(&buf, 8);
    goto LABEL_60;
  }

  v9 = (a1 + 56);
  if (!a2)
  {
    if (*(a1 + 79) < 0)
    {
      *(a1 + 64) = 0;
      v9 = *(a1 + 56);
    }

    else
    {
      *(a1 + 79) = 0;
    }

    *v9 = 0;
    sub_19B785ADC(a1, v5, v6);
LABEL_57:
    v8 = 1;
    goto LABEL_60;
  }

  v10 = objc_msgSend_UTF8String(a2, v5, v6);
  if (*(a1 + 79) < 0)
  {
    *(a1 + 64) = 17;
    v11 = *(a1 + 56);
  }

  else
  {
    *(a1 + 79) = 17;
    v11 = a1 + 56;
  }

  v12 = *v10;
  *(v11 + 16) = *(v10 + 16);
  *v11 = v12;
  *(v11 + 17) = 0;
  v13 = *(a1 + 79);
  if (v13 < 0)
  {
    v14 = *(a1 + 56);
    v15 = *(a1 + 64);
    if (!v15)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v14 = (a1 + 56);
    v15 = *(a1 + 79);
    if (!*(a1 + 79))
    {
      goto LABEL_17;
    }
  }

  do
  {
    if (*v14 == 45)
    {
      *v14 = 58;
    }

    ++v14;
    --v15;
  }

  while (v15);
  LOBYTE(v13) = *(a1 + 79);
LABEL_17:
  v16 = (a1 + 56);
  if ((v13 & 0x80) != 0)
  {
    v16 = *v9;
  }

  *&buf = 0;
  if (sscanf(v16, "%hhx:%hhx:%hhx:%hhx:%hhx:%hhx", &buf, &buf + 1, &buf + 2, &buf + 3, &buf + 4, &buf + 5) == 6 && buf)
  {
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E3B7C0);
    }

    v17 = qword_1ED71C7C8;
    if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_DEFAULT))
    {
      v18 = a1 + 56;
      if (*(a1 + 79) < 0)
      {
        v18 = *v9;
      }

      LODWORD(buf) = 136380675;
      *(&buf + 4) = v18;
      _os_log_impl(&dword_19B41C000, v17, OS_LOG_TYPE_DEFAULT, "[CLAudioAccessoryInterface] Selected device with BT address %{private}s", &buf, 0xCu);
    }

    v19 = sub_19B420058();
    if (*(v19 + 160) > 1 || *(v19 + 164) > 1 || *(v19 + 168) > 1 || *(v19 + 152))
    {
      bzero(&buf, 0x65CuLL);
      if (qword_1ED71C7B8 != -1)
      {
        dispatch_once(&qword_1ED71C7B8, &unk_1F0E3B7C0);
      }

      if (*(a1 + 79) < 0)
      {
        v9 = *v9;
      }

      v33 = 136380675;
      v34 = v9;
      v22 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "BOOL CLAudioAccessoryInterface::selectDeviceWithBTAddress(NSString *)", "CoreLocation: %s\n", v22);
      if (v22 != &buf)
      {
        free(v22);
      }
    }

    sub_19B785ADC(a1, v20, v21);
    goto LABEL_57;
  }

  if (qword_1ED71C7B8 != -1)
  {
    dispatch_once(&qword_1ED71C7B8, &unk_1F0E3B7C0);
  }

  v23 = qword_1ED71C7C8;
  if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_ERROR))
  {
    v24 = a1 + 56;
    if (*(a1 + 79) < 0)
    {
      v24 = *v9;
    }

    LODWORD(buf) = 136380675;
    *(&buf + 4) = v24;
    _os_log_impl(&dword_19B41C000, v23, OS_LOG_TYPE_ERROR, "[CLAudioAccessoryInterface] Warning! Selecting invalid BT address %{private}s", &buf, 0xCu);
  }

  v25 = sub_19B420058();
  if ((*(v25 + 160) & 0x80000000) == 0 || (*(v25 + 164) & 0x80000000) == 0 || (*(v25 + 168) & 0x80000000) == 0 || *(v25 + 152))
  {
    bzero(&buf, 0x65CuLL);
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E3B7C0);
    }

    v28 = a1 + 56;
    if (*(a1 + 79) < 0)
    {
      v28 = *v9;
    }

    v33 = 136380675;
    v34 = v28;
    v29 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 0, "BOOL CLAudioAccessoryInterface::selectDeviceWithBTAddress(NSString *)", "CoreLocation: %s\n", v29);
    if (v29 != &buf)
    {
      free(v29);
    }
  }

  if (*(a1 + 79) < 0)
  {
    *(a1 + 64) = 0;
    v9 = *(a1 + 56);
  }

  else
  {
    *(a1 + 79) = 0;
  }

  *v9 = 0;
  sub_19B785ADC(a1, v26, v27);
  v8 = 0;
LABEL_60:
  v30 = *MEMORY[0x1E69E9840];
  return v8 & 1;
}

uint64_t sub_19B785AA4(void *a1)
{
  result = sub_19B785538(a1[6], a1[4]);
  *(*(a1[5] + 8) + 24) = result;
  return result;
}

void sub_19B785ADC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x1EEE9AC00](a1, a2, a3);
  v134 = *MEMORY[0x1E69E9840];
  Current = CFRunLoopGetCurrent();
  sub_19B420D84();
  if (Current != *qword_1ED71C908)
  {
    v5 = sub_19B420D84();
    v74[0] = MEMORY[0x1E69E9820];
    v74[1] = 3221225472;
    v74[2] = sub_19B78737C;
    v74[3] = &unk_1E75327D8;
    v74[4] = v3;
    sub_19B420C9C(v5, v74);
    goto LABEL_149;
  }

  if (!*v3)
  {
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E3B7C0);
    }

    v20 = qword_1ED71C7C8;
    if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v102[0]) = 0;
      _os_log_impl(&dword_19B41C000, v20, OS_LOG_TYPE_ERROR, "[CLAudioAccessoryInterface] refreshBTDevice failed. Invalid BT Session", v102, 2u);
    }

    v21 = sub_19B420058();
    if ((*(v21 + 160) & 0x80000000) != 0 && (*(v21 + 164) & 0x80000000) != 0 && (*(v21 + 168) & 0x80000000) != 0 && !*(v21 + 152))
    {
      goto LABEL_149;
    }

    bzero(v102, 0x65CuLL);
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E3B7C0);
    }

    *buf = 0;
LABEL_65:
    v26 = v102;
    v27 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 0, "void CLAudioAccessoryInterface::refreshBTDevice()", "CoreLocation: %s\n");
    goto LABEL_66;
  }

  if (!*(v3 + 8))
  {
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E3B7C0);
    }

    v22 = qword_1ED71C7C8;
    if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v102[0]) = 0;
      _os_log_impl(&dword_19B41C000, v22, OS_LOG_TYPE_ERROR, "[CLAudioAccessoryInterface] refreshBTDevice failed. Invalid BT AccessoryManager", v102, 2u);
    }

    v23 = sub_19B420058();
    if ((*(v23 + 160) & 0x80000000) != 0 && (*(v23 + 164) & 0x80000000) != 0 && (*(v23 + 168) & 0x80000000) != 0 && !*(v23 + 152))
    {
      goto LABEL_149;
    }

    bzero(v102, 0x65CuLL);
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E3B7C0);
    }

    *buf = 0;
    goto LABEL_65;
  }

  p_vtable = CMDeviceOrientationManager.vtable;
  if (!*(v3 + 16))
  {
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E3B7C0);
    }

    v24 = qword_1ED71C7C8;
    if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v102[0]) = 0;
      _os_log_impl(&dword_19B41C000, v24, OS_LOG_TYPE_ERROR, "[CLAudioAccessoryInterface] refreshBTDevice failed. Invalid BT Local Device", v102, 2u);
    }

    v25 = sub_19B420058();
    if ((*(v25 + 160) & 0x80000000) != 0 && (*(v25 + 164) & 0x80000000) != 0 && (*(v25 + 168) & 0x80000000) != 0 && !*(v25 + 152))
    {
      goto LABEL_149;
    }

    bzero(v102, 0x65CuLL);
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E3B7C0);
    }

    *buf = 0;
    goto LABEL_65;
  }

  v132 = 0u;
  v133 = 0u;
  v130 = 0u;
  v131 = 0u;
  v128 = 0u;
  v129 = 0u;
  v126 = 0u;
  v127 = 0u;
  v124 = 0u;
  v125 = 0u;
  v122 = 0u;
  v123 = 0u;
  v120 = 0u;
  v121 = 0u;
  v118 = 0u;
  v119 = 0u;
  v116 = 0u;
  v117 = 0u;
  v114 = 0u;
  v115 = 0u;
  v112 = 0u;
  v113 = 0u;
  v110 = 0u;
  v111 = 0u;
  v108 = 0u;
  v109 = 0u;
  v106 = 0u;
  v107 = 0u;
  v104 = 0u;
  v105 = 0u;
  *v102 = 0u;
  v103 = 0u;
  BTLocalDeviceGetConnectedDevices();
  v100 = 0;
  *__s = 0;
  v101 = 0;
  v7 = 0;
  v8 = 0;
  while (1)
  {
    v9 = v102[v8];
    if (BTDeviceGetAddressString())
    {
      goto LABEL_10;
    }

    v10 = v102[v8];
    if (BTDeviceGetName())
    {
      goto LABEL_10;
    }

    v11 = *(v3 + 8);
    v12 = v102[v8];
    if (BTAccessoryManagerGetInEarStatus())
    {
      goto LABEL_10;
    }

    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E3B7C0);
    }

    v13 = p_vtable;
    v14 = p_vtable[249];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 136381443;
      v84 = &v91;
      v85 = 2081;
      v86 = __s;
      v87 = 1026;
      v88 = 0;
      v89 = 1026;
      v90 = 0;
      _os_log_impl(&dword_19B41C000, v14, OS_LOG_TYPE_INFO, "[CLAudioAccessoryInterface] refreshBTDevice. Name,%{private}s, Address,%{private}s, inear,%{public}d,%{public}d", buf, 0x22u);
    }

    v15 = sub_19B420058();
    if (*(v15 + 160) > 1 || *(v15 + 164) > 1 || *(v15 + 168) > 1 || *(v15 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7B8 != -1)
      {
        dispatch_once(&qword_1ED71C7B8, &unk_1F0E3B7C0);
      }

      v16 = v13[249];
      v75 = 136381443;
      v76 = &v91;
      v77 = 2081;
      v78 = __s;
      v79 = 1026;
      v80 = 0;
      v81 = 1026;
      v82 = 0;
      v17 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "void CLAudioAccessoryInterface::refreshBTDevice()", "CoreLocation: %s\n", v17);
      if (v17 != buf)
      {
        free(v17);
      }
    }

    p_vtable = v13;
    if (v102[v8] != *(v3 + 24))
    {
      break;
    }

    v7 = 1;
LABEL_10:
    if (++v8 >= 0x100)
    {
      if (v7)
      {
        if (*(v3 + 24))
        {
          goto LABEL_70;
        }

        goto LABEL_98;
      }

      v32 = 0;
      goto LABEL_83;
    }
  }

  v18 = *(v3 + 79);
  v19 = v18;
  if (*(v3 + 79) < 0)
  {
    v19 = *(v3 + 64);
  }

  if (v19 < 0x11)
  {
LABEL_30:
    if ((v18 & 0x80) != 0)
    {
      v18 = *(v3 + 64);
    }

    if (v18 <= 0x10)
    {
      if (qword_1ED71C7B8 != -1)
      {
        dispatch_once(&qword_1ED71C7B8, &unk_1F0E3B7C0);
      }

      v66 = v13[249];
      if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v66, OS_LOG_TYPE_DEFAULT, "[CLAudioAccessoryInterface] refreshBTDevice. First InEar device selected", buf, 2u);
      }

      v67 = sub_19B420058();
      if (*(v67 + 160) > 1 || *(v67 + 164) > 1 || *(v67 + 168) > 1 || *(v67 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED71C7B8 != -1)
        {
          dispatch_once(&qword_1ED71C7B8, &unk_1F0E3B7C0);
        }

        v68 = v13[249];
        LOWORD(v75) = 0;
        goto LABEL_180;
      }

      goto LABEL_182;
    }

    goto LABEL_10;
  }

  if (std::string::compare((v3 + 56), __s))
  {
    v18 = *(v3 + 79);
    goto LABEL_30;
  }

  if (qword_1ED71C7B8 != -1)
  {
    dispatch_once(&qword_1ED71C7B8, &unk_1F0E3B7C0);
  }

  v69 = v13[249];
  if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v69, OS_LOG_TYPE_DEFAULT, "[CLAudioAccessoryInterface] refreshBTDevice. Matched device found", buf, 2u);
  }

  v70 = sub_19B420058();
  if (*(v70 + 160) > 1 || *(v70 + 164) > 1 || *(v70 + 168) > 1 || *(v70 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E3B7C0);
    }

    v71 = v13[249];
    LOWORD(v75) = 0;
LABEL_180:
    v72 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CLAudioAccessoryInterface::refreshBTDevice()", "CoreLocation: %s\n", v72);
    if (v72 != buf)
    {
      free(v72);
    }
  }

LABEL_182:
  v32 = v102[v8];
  if ((v7 & 1) == 0)
  {
LABEL_83:
    if (*(v3 + 24))
    {
      if (qword_1ED71C7B8 != -1)
      {
        dispatch_once(&qword_1ED71C7B8, &unk_1F0E3B7C0);
      }

      v33 = p_vtable[249];
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        v34 = *(v3 + 24);
        *buf = 134349056;
        v84 = v34;
        _os_log_impl(&dword_19B41C000, v33, OS_LOG_TYPE_DEFAULT, "[CLAudioAccessoryInterface] refreshBTDevice. Current active device %{public}p not available", buf, 0xCu);
      }

      v35 = sub_19B420058();
      if (*(v35 + 160) > 1 || *(v35 + 164) > 1 || *(v35 + 168) > 1 || *(v35 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED71C7B8 != -1)
        {
          dispatch_once(&qword_1ED71C7B8, &unk_1F0E3B7C0);
        }

        v36 = p_vtable[249];
        v37 = *(v3 + 24);
        v91 = 134349056;
        v92 = v37;
        v38 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "void CLAudioAccessoryInterface::refreshBTDevice()", "CoreLocation: %s\n", v38);
        if (v38 != buf)
        {
          free(v38);
        }
      }

      *(v3 + 48) = 0;
      *(v3 + 24) = 0;
      *(v3 + 32) = 0;
    }

LABEL_97:
    if (!v32)
    {
LABEL_98:
      if (qword_1ED71C7B8 != -1)
      {
        dispatch_once(&qword_1ED71C7B8, &unk_1F0E3B7C0);
      }

      v39 = p_vtable[249];
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v39, OS_LOG_TYPE_DEFAULT, "[CLAudioAccessoryInterface] refreshBTDevice. No matched device. Use the first listed device.", buf, 2u);
      }

      v40 = sub_19B420058();
      if (*(v40 + 160) > 1 || *(v40 + 164) > 1 || *(v40 + 168) > 1 || *(v40 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED71C7B8 != -1)
        {
          dispatch_once(&qword_1ED71C7B8, &unk_1F0E3B7C0);
        }

        v41 = p_vtable[249];
        LOWORD(v91) = 0;
        v42 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "void CLAudioAccessoryInterface::refreshBTDevice()", "CoreLocation: %s\n", v42);
        if (v42 != buf)
        {
          free(v42);
        }
      }

      v32 = v102[0];
    }

LABEL_111:
    *(v3 + 24) = v32;
    v43 = *(v3 + 8);
    BTAccessoryManagerGetPrimaryBudSide();
    v75 = 0;
    v44 = *(v3 + 24);
    DeviceId = BTDeviceGetDeviceId();
    if (DeviceId)
    {
      v46 = DeviceId;
      *(v3 + 32) = 0;
      if (qword_1ED71C7B8 != -1)
      {
        dispatch_once(&qword_1ED71C7B8, &unk_1F0E3B7C0);
      }

      v47 = p_vtable[249];
      if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        *buf = 67240192;
        LODWORD(v84) = v46;
        _os_log_impl(&dword_19B41C000, v47, OS_LOG_TYPE_ERROR, "[CLAudioAccessoryInterface] refreshBTDevice - Failed to get the product ID. Error: %{public}d", buf, 8u);
      }

      v48 = sub_19B420058();
      if ((*(v48 + 160) & 0x80000000) == 0 || (*(v48 + 164) & 0x80000000) == 0 || (*(v48 + 168) & 0x80000000) == 0 || *(v48 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED71C7B8 != -1)
        {
          dispatch_once(&qword_1ED71C7B8, &unk_1F0E3B7C0);
        }

        v49 = p_vtable[249];
        v91 = 67240192;
        LODWORD(v92) = v46;
        v50 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 0, "void CLAudioAccessoryInterface::refreshBTDevice()", "CoreLocation: %s\n", v50);
        if (v50 != buf)
        {
          free(v50);
        }
      }
    }

    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E3B7C0);
    }

    v51 = p_vtable[249];
    if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
    {
      v52 = *(v3 + 24);
      v53 = *(v3 + 32);
      v54 = *(v3 + 36);
      *buf = 134349827;
      v84 = v52;
      v85 = 2081;
      v86 = __s;
      v87 = 1026;
      v88 = v53;
      v89 = 1026;
      v90 = v54;
      _os_log_impl(&dword_19B41C000, v51, OS_LOG_TYPE_DEFAULT, "[CLAudioAccessoryInterface] refreshBTDevice. Current active device changed to %{public}p,addr,%{private}s,PID,0x%{public}x,side,%{public}d", buf, 0x22u);
    }

    v55 = sub_19B420058();
    if (*(v55 + 160) > 1 || *(v55 + 164) > 1 || *(v55 + 168) > 1 || *(v55 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7B8 != -1)
      {
        dispatch_once(&qword_1ED71C7B8, &unk_1F0E3B7C0);
      }

      v56 = p_vtable[249];
      v57 = *(v3 + 24);
      v58 = *(v3 + 32);
      v59 = *(v3 + 36);
      v91 = 134349827;
      v92 = v57;
      v93 = 2081;
      v94 = __s;
      v95 = 1026;
      v96 = v58;
      v97 = 1026;
      v98 = v59;
      v60 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "void CLAudioAccessoryInterface::refreshBTDevice()", "CoreLocation: %s\n", v60);
      if (v60 != buf)
      {
        free(v60);
      }
    }

    goto LABEL_148;
  }

  v73 = *(v3 + 24);
  if (!v73)
  {
    goto LABEL_97;
  }

  if (v32 && v73 != v32)
  {
    goto LABEL_111;
  }

LABEL_70:
  v75 = 0;
  v28 = *(v3 + 8);
  BTAccessoryManagerGetPrimaryBudSide();
  if (*(v3 + 36))
  {
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E3B7C0);
    }

    v61 = p_vtable[249];
    if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136380931;
      v84 = __s;
      v85 = 1026;
      LODWORD(v86) = v75;
      _os_log_impl(&dword_19B41C000, v61, OS_LOG_TYPE_DEFAULT, "[CLAudioAccessoryInterface] refreshBTDevice. Active device %{private}s side changed, %{public}d", buf, 0x12u);
    }

    v62 = sub_19B420058();
    if (*(v62 + 160) > 1 || *(v62 + 164) > 1 || *(v62 + 168) > 1 || *(v62 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7B8 != -1)
      {
        dispatch_once(&qword_1ED71C7B8, &unk_1F0E3B7C0);
      }

      v63 = p_vtable[249];
      v91 = 136380931;
      v92 = __s;
      v93 = 1026;
      LODWORD(v94) = v75;
      v64 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "void CLAudioAccessoryInterface::refreshBTDevice()", "CoreLocation: %s\n", v64);
      if (v64 != buf)
      {
        free(v64);
      }
    }

    *(v3 + 36) = v75;
LABEL_148:
    sub_19B7875A8(v3);
    sub_19B787384(*(v3 + 176), 2);
    goto LABEL_149;
  }

  if (qword_1ED71C7B8 != -1)
  {
    dispatch_once(&qword_1ED71C7B8, &unk_1F0E3B7C0);
  }

  v29 = p_vtable[249];
  if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
  {
    *buf = 136380675;
    v84 = __s;
    _os_log_impl(&dword_19B41C000, v29, OS_LOG_TYPE_INFO, "[CLAudioAccessoryInterface] refreshBTDevice. Active device %{private}s unchanged.", buf, 0xCu);
  }

  v30 = sub_19B420058();
  if (*(v30 + 160) > 1 || *(v30 + 164) > 1 || *(v30 + 168) > 1 || *(v30 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E3B7C0);
    }

    v31 = p_vtable[249];
    v91 = 136380675;
    v92 = __s;
    v26 = buf;
    v27 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CLAudioAccessoryInterface::refreshBTDevice()", "CoreLocation: %s\n");
LABEL_66:
    if (v27 != v26)
    {
      free(v27);
    }
  }

LABEL_149:
  v65 = *MEMORY[0x1E69E9840];
}

uint64_t sub_19B786EF8(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  if (!*(a1 + 24))
  {
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E3B7C0);
    }

    v3 = qword_1ED71C7C8;
    if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_ERROR, "[CLAudioAccessoryInterface] getBTAddress failed. Invalid BT Device.", buf, 2u);
    }

    v4 = sub_19B420058();
    if ((*(v4 + 160) & 0x80000000) != 0 && (*(v4 + 164) & 0x80000000) != 0 && (*(v4 + 168) & 0x80000000) != 0 && !*(v4 + 152))
    {
      goto LABEL_22;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1ED71C7B8 == -1)
    {
      goto LABEL_20;
    }

    goto LABEL_43;
  }

  *v12 = 0;
  v13 = 0;
  v14 = 0;
  if (BTDeviceGetAddressString())
  {
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E3B7C0);
    }

    v1 = qword_1ED71C7C8;
    if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v1, OS_LOG_TYPE_ERROR, "[CLAudioAccessoryInterface] getBTAddress failed. Can't get BT address string from BT Device.", buf, 2u);
    }

    v2 = sub_19B420058();
    if ((*(v2 + 160) & 0x80000000) != 0 && (*(v2 + 164) & 0x80000000) != 0 && (*(v2 + 168) & 0x80000000) != 0 && !*(v2 + 152))
    {
      goto LABEL_22;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1ED71C7B8 == -1)
    {
LABEL_20:
      v5 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "uint64_t CLAudioAccessoryInterface::getBTAddress() const", "CoreLocation: %s\n", v5);
      if (v5 != buf)
      {
        free(v5);
      }

LABEL_22:
      v6 = 0;
      goto LABEL_23;
    }

LABEL_43:
    dispatch_once(&qword_1ED71C7B8, &unk_1F0E3B7C0);
    goto LABEL_20;
  }

  *buf = 0;
  if (sscanf(v12, "%hhx:%hhx:%hhx:%hhx:%hhx:%hhx", buf, &buf[1], &buf[2], &buf[3], &buf[4], &buf[5]) == 6)
  {
    v6 = *buf;
  }

  else
  {
    v6 = 0;
  }

  if (qword_1ED71C7B8 != -1)
  {
    dispatch_once(&qword_1ED71C7B8, &unk_1F0E3B7C0);
  }

  v9 = qword_1ED71C7C8;
  if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134283779;
    *&buf[4] = v6;
    v16 = 2081;
    v17 = v12;
    _os_log_impl(&dword_19B41C000, v9, OS_LOG_TYPE_DEFAULT, "[CLAudioAccessoryInterface] getBTAddress returned %{private}llu from address %{private}s", buf, 0x16u);
  }

  v10 = sub_19B420058();
  if (*(v10 + 160) > 1 || *(v10 + 164) > 1 || *(v10 + 168) > 1 || *(v10 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E3B7C0);
    }

    v11 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "uint64_t CLAudioAccessoryInterface::getBTAddress() const", "CoreLocation: %s\n", v11);
    if (v11 != buf)
    {
      free(v11);
    }
  }

LABEL_23:
  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

uint64_t sub_19B787384(uint64_t result, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v3 = result;
    do
    {
      if (qword_1ED71C7B8 != -1)
      {
        dispatch_once(&qword_1ED71C7B8, &unk_1F0E3B7C0);
      }

      v4 = qword_1ED71C7C8;
      if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_DEFAULT))
      {
        v5 = *(v3 + 16);
        *buf = 134218240;
        v11 = v5;
        v12 = 1024;
        v13 = a2;
        _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_DEFAULT, "[CLAudioAccessoryInterface] Notify client %p with event %u", buf, 0x12u);
      }

      v6 = sub_19B420058();
      if (*(v6 + 160) > 1 || *(v6 + 164) > 1 || *(v6 + 168) > 1 || *(v6 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED71C7B8 != -1)
        {
          dispatch_once(&qword_1ED71C7B8, &unk_1F0E3B7C0);
        }

        v9 = *(v3 + 16);
        v7 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "void CLAudioAccessoryInterface::notifyClients(Event)", "CoreLocation: %s\n", v7);
        if (v7 != buf)
        {
          free(v7);
        }
      }

      result = (*(v3 + 24))(a2, *(v3 + 16));
      v3 = *v3;
    }

    while (v3);
  }

  v8 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19B7875A8(uint64_t a1)
{
  v43 = *MEMORY[0x1E69E9840];
  Current = CFRunLoopGetCurrent();
  sub_19B420D84();
  if (Current != *qword_1ED71C908)
  {
    v3 = sub_19B420D84();
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = sub_19B787F7C;
    v30[3] = &unk_1E75327D8;
    v30[4] = a1;
    sub_19B420C9C(v3, v30);
    goto LABEL_3;
  }

  if (*(a1 + 8))
  {
    if (*(a1 + 24))
    {
      v5 = *(a1 + 104);
      v6 = *(a1 + 144);
      v7 = BTAccessoryManagerRemoteTimeSyncEnable();
      if (qword_1ED71C7B8 != -1)
      {
        dispatch_once(&qword_1ED71C7B8, &unk_1F0E3B7C0);
      }

      v8 = qword_1ED71C7C8;
      if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = "disable";
        if (v5)
        {
          v9 = "enable";
        }

        *buf = 136446722;
        v10 = "failed";
        if (!v7)
        {
          v10 = "succeeded";
        }

        v38 = v9;
        v39 = 2082;
        v40 = v10;
        v41 = 1026;
        v42 = v7;
        _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_DEFAULT, "[CLAudioAccessoryInterface] %{public}s high precision TimeSync %{public}s. Status: %{public}d", buf, 0x1Cu);
      }

      v11 = sub_19B420058();
      if (*(v11 + 160) > 1 || *(v11 + 164) > 1 || *(v11 + 168) > 1 || *(v11 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED71C7B8 != -1)
        {
          dispatch_once(&qword_1ED71C7B8, &unk_1F0E3B7C0);
        }

        v12 = "disable";
        if (v5)
        {
          v12 = "enable";
        }

        v13 = "failed";
        if (!v7)
        {
          v13 = "succeeded";
        }

        v31 = 136446722;
        v32 = v12;
        v33 = 2082;
        v34 = v13;
        v35 = 1026;
        v36 = v7;
        v14 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "void CLAudioAccessoryInterface::updateTimeSync()", "CoreLocation: %s\n", v14);
        if (v14 != buf)
        {
          free(v14);
        }
      }

      if (!v5)
      {
        v15 = *(a1 + 8);
        v16 = *(a1 + 24);
        v17 = BTAccessoryManagerSensorStreamTimeSyncEnable();
        if (qword_1ED71C7B8 != -1)
        {
          dispatch_once(&qword_1ED71C7B8, &unk_1F0E3B7C0);
        }

        v18 = qword_1ED71C7C8;
        if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_DEFAULT))
        {
          v19 = "disable";
          if (v6)
          {
            v19 = "enable";
          }

          *buf = 136446722;
          v20 = "failed";
          if (!v17)
          {
            v20 = "succeeded";
          }

          v38 = v19;
          v39 = 2082;
          v40 = v20;
          v41 = 1026;
          v42 = v17;
          _os_log_impl(&dword_19B41C000, v18, OS_LOG_TYPE_DEFAULT, "[CLAudioAccessoryInterface] %{public}s low precision TimeSync %{public}s. Status: %{public}d", buf, 0x1Cu);
        }

        v21 = sub_19B420058();
        if (*(v21 + 160) > 1 || *(v21 + 164) > 1 || *(v21 + 168) > 1 || *(v21 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1ED71C7B8 != -1)
          {
            dispatch_once(&qword_1ED71C7B8, &unk_1F0E3B7C0);
          }

          v22 = "disable";
          if (v6)
          {
            v22 = "enable";
          }

          v23 = "failed";
          if (!v17)
          {
            v23 = "succeeded";
          }

          v31 = 136446722;
          v32 = v22;
          v33 = 2082;
          v34 = v23;
          v35 = 1026;
          v36 = v17;
          v24 = _os_log_send_and_compose_impl();
          sub_19B6BB7CC("Generic", 1, 0, 2, "void CLAudioAccessoryInterface::updateTimeSync()", "CoreLocation: %s\n", v24);
          if (v24 != buf)
          {
            free(v24);
          }
        }

        if (!v6)
        {

          *(a1 + 48) = 0;
        }
      }

      goto LABEL_3;
    }

    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E3B7C0);
    }

    v27 = qword_1ED71C7C8;
    if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v27, OS_LOG_TYPE_ERROR, "[CLAudioAccessoryInterface] update TimeSync failed due to invalid BT device", buf, 2u);
    }

    v28 = sub_19B420058();
    if ((*(v28 + 160) & 0x80000000) == 0 || (*(v28 + 164) & 0x80000000) == 0 || (*(v28 + 168) & 0x80000000) == 0 || *(v28 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7B8 != -1)
      {
        dispatch_once(&qword_1ED71C7B8, &unk_1F0E3B7C0);
      }

      LOWORD(v31) = 0;
LABEL_69:
      v29 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "void CLAudioAccessoryInterface::updateTimeSync()", "CoreLocation: %s\n", v29);
      if (v29 != buf)
      {
        free(v29);
      }
    }
  }

  else
  {
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E3B7C0);
    }

    v25 = qword_1ED71C7C8;
    if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v25, OS_LOG_TYPE_ERROR, "[CLAudioAccessoryInterface] update TimeSync failed due to invalid BT AccessoryManager", buf, 2u);
    }

    v26 = sub_19B420058();
    if ((*(v26 + 160) & 0x80000000) == 0 || (*(v26 + 164) & 0x80000000) == 0 || (*(v26 + 168) & 0x80000000) == 0 || *(v26 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7B8 != -1)
      {
        dispatch_once(&qword_1ED71C7B8, &unk_1F0E3B7C0);
      }

      LOWORD(v31) = 0;
      goto LABEL_69;
    }
  }

LABEL_3:
  v4 = *MEMORY[0x1E69E9840];
}

uint64_t sub_19B787CB8(uint64_t a1)
{
  if (*(a1 + 24))
  {
    v1 = *(a1 + 8);
    BTAccessoryManagerGetSpatialAudioPlatformSupport();
  }

  return 0;
}

void sub_19B787D50(uint64_t a1, uint64_t a2, int a3)
{
  v12 = a2;
  Current = CFRunLoopGetCurrent();
  sub_19B420D84();
  if (Current == *qword_1ED71C908)
  {
    if (a3)
    {
      v8 = 120;
    }

    else
    {
      v8 = 80;
    }

    if (a3)
    {
      v9 = 80;
    }

    else
    {
      v9 = 120;
    }

    sub_19B78E844((a1 + v8), &v12);
    sub_19B78EAE8((a1 + v9), &v12);
    sub_19B7875A8(a1);
  }

  else
  {
    v7 = sub_19B420D84();
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = sub_19B787E40;
    v10[3] = &unk_1E75342D8;
    v10[4] = a1;
    v10[5] = a2;
    v11 = a3;
    sub_19B420C9C(v7, v10);
  }
}

void sub_19B787E50(uint64_t a1, uint64_t a2)
{
  v7 = a2;
  Current = CFRunLoopGetCurrent();
  sub_19B420D84();
  if (Current == *qword_1ED71C908)
  {
    sub_19B78E844((a1 + 80), &v7);
    sub_19B78E844((a1 + 120), &v7);
    sub_19B7875A8(a1);
  }

  else
  {
    v5 = sub_19B420D84();
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = sub_19B787F20;
    v6[3] = &unk_1E7535180;
    v6[4] = a1;
    v6[5] = a2;
    sub_19B420C9C(v5, v6);
  }
}

void sub_19B787F40(uint64_t a1, uint64_t a2, int a3, _BYTE *a4, unint64_t a5, uint64_t a6)
{
  if (a3 == 1024)
  {
    sub_19B78B6F4(a6, a2, a4, a5);
  }
}

uint64_t sub_19B787F84(uint64_t a1, const char *a2, uint64_t a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 48);
  if (!v4 || objc_msgSend_lockState(v4, a2, a3) != 2)
  {
    v8 = mach_continuous_time();
    v9 = sub_19B41E070(v8);
    if (v9 - *&qword_1EAFE3A10 <= 1.0)
    {
      result = 0;
      goto LABEL_27;
    }

    if (*(a1 + 48))
    {
      if (qword_1ED71C7B8 != -1)
      {
        dispatch_once(&qword_1ED71C7B8, &unk_1F0E3B7C0);
      }

      v10 = qword_1ED71C7C8;
      if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v10, OS_LOG_TYPE_ERROR, "[CLAudioAccessoryInterface] TimeSync error! Clock not locked", buf, 2u);
      }

      v11 = sub_19B420058();
      if ((*(v11 + 160) & 0x80000000) != 0 && (*(v11 + 164) & 0x80000000) != 0 && (*(v11 + 168) & 0x80000000) != 0 && !*(v11 + 152))
      {
        goto LABEL_26;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7B8 == -1)
      {
LABEL_24:
        v14 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 0, "uint64_t CLAudioAccessoryInterface::convertTimeSyncTimestamp(uint64_t) const", "CoreLocation: %s\n", v14);
        if (v14 != buf)
        {
          free(v14);
        }

LABEL_26:
        result = 0;
        qword_1EAFE3A10 = *&v9;
        goto LABEL_27;
      }
    }

    else
    {
      if (qword_1ED71C7B8 != -1)
      {
        dispatch_once(&qword_1ED71C7B8, &unk_1F0E3B7C0);
      }

      v12 = qword_1ED71C7C8;
      if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v12, OS_LOG_TYPE_ERROR, "[CLAudioAccessoryInterface] TimeSync error! No TimeSync clock", buf, 2u);
      }

      v13 = sub_19B420058();
      if ((*(v13 + 160) & 0x80000000) != 0 && (*(v13 + 164) & 0x80000000) != 0 && (*(v13 + 168) & 0x80000000) != 0 && !*(v13 + 152))
      {
        goto LABEL_26;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7B8 == -1)
      {
        goto LABEL_24;
      }
    }

    dispatch_once(&qword_1ED71C7B8, &unk_1F0E3B7C0);
    goto LABEL_24;
  }

  *buf = 0;
  result = objc_msgSend_convertFromDomainToMachAbsoluteTime_withFlags_(*(a1 + 48), v6, a2, buf);
LABEL_27:
  v15 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19B788280(uint64_t a1, _DWORD *a2, _DWORD *a3, _BYTE *a4)
{
  v40 = *MEMORY[0x1E69E9840];
  *a3 = 3;
  *a2 = 3;
  *a4 = 1;
  if (*(a1 + 8))
  {
    if (*(a1 + 24))
    {
      v7 = BTAccessoryManagerGetInEarDetectionEnable();
      if (v7)
      {
        v8 = v7;
        if (qword_1ED71C7B8 != -1)
        {
          dispatch_once(&qword_1ED71C7B8, &unk_1F0E3B7C0);
        }

        v9 = qword_1ED71C7C8;
        if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_ERROR))
        {
          *buf = 67240192;
          LODWORD(v37) = v8;
          _os_log_impl(&dword_19B41C000, v9, OS_LOG_TYPE_ERROR, "[CLAudioAccessoryInterface] in ear status - failed to get IED setting. Error: %{public}d", buf, 8u);
        }

        v10 = sub_19B420058();
        if ((*(v10 + 160) & 0x80000000) == 0 || (*(v10 + 164) & 0x80000000) == 0 || (*(v10 + 168) & 0x80000000) == 0 || *(v10 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1ED71C7B8 == -1)
          {
            goto LABEL_30;
          }

          goto LABEL_80;
        }
      }

      else
      {
        v17 = *(a1 + 8);
        v18 = *(a1 + 24);
        v19 = BTAccessoryManagerGetInEarStatus();
        if (v19)
        {
          v20 = v19;
          if (qword_1ED71C7B8 != -1)
          {
            dispatch_once(&qword_1ED71C7B8, &unk_1F0E3B7C0);
          }

          v21 = qword_1ED71C7C8;
          if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_ERROR))
          {
            *buf = 67240192;
            LODWORD(v37) = v20;
            _os_log_impl(&dword_19B41C000, v21, OS_LOG_TYPE_ERROR, "[CLAudioAccessoryInterface] in ear status - failed to get inear status. Error: %{public}d", buf, 8u);
          }

          v22 = sub_19B420058();
          if ((*(v22 + 160) & 0x80000000) == 0 || (*(v22 + 164) & 0x80000000) == 0 || (*(v22 + 168) & 0x80000000) == 0 || *(v22 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1ED71C7B8 != -1)
            {
              dispatch_once(&qword_1ED71C7B8, &unk_1F0E3B7C0);
            }

            v23 = _os_log_send_and_compose_impl();
            sub_19B6BB7CC("Generic", 1, 0, 0, "void CLAudioAccessoryInterface::getInEarStatus(BTAccessoryInEarStatus &, BTAccessoryInEarStatus &, BOOL &) const", "CoreLocation: %s\n", v23);
            if (v23 != buf)
            {
              free(v23);
            }
          }

          *a3 = 3;
          *a2 = 3;
        }

        else
        {
          if (qword_1ED71C7B8 != -1)
          {
            dispatch_once(&qword_1ED71C7B8, &unk_1F0E3B7C0);
          }

          v24 = qword_1ED71C7C8;
          if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_DEFAULT))
          {
            v25 = *a2;
            if (v25 > 3)
            {
              v26 = @"?";
            }

            else
            {
              v26 = off_1E7535FF0[v25];
            }

            v27 = *a3;
            if (v27 > 3)
            {
              v28 = @"?";
            }

            else
            {
              v28 = off_1E7535FF0[v27];
            }

            *buf = 138543618;
            v37 = v26;
            v38 = 2114;
            v39 = v28;
            _os_log_impl(&dword_19B41C000, v24, OS_LOG_TYPE_DEFAULT, "[CLAudioAccessoryInterface] in ear status - Primary:%{public}@, Secondary:%{public}@", buf, 0x16u);
          }

          v29 = sub_19B420058();
          if (*(v29 + 160) > 1 || *(v29 + 164) > 1 || *(v29 + 168) > 1 || *(v29 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1ED71C7B8 != -1)
            {
              dispatch_once(&qword_1ED71C7B8, &unk_1F0E3B7C0);
            }

            v30 = *a2;
            if (v30 <= 3)
            {
              v31 = off_1E7535FF0[v30];
            }

            v32 = *a3;
            if (v32 <= 3)
            {
              v33 = off_1E7535FF0[v32];
            }

            v34 = _os_log_send_and_compose_impl();
            sub_19B6BB7CC("Generic", 1, 0, 2, "void CLAudioAccessoryInterface::getInEarStatus(BTAccessoryInEarStatus &, BTAccessoryInEarStatus &, BOOL &) const", "CoreLocation: %s\n", v34);
            if (v34 != buf)
            {
              free(v34);
            }
          }

          if (!*a2)
          {
            v35 = *(a1 + 32) - 8202;
            if (v35 <= 0x15 && ((1 << v35) & 0x202001) != 0)
            {
              *a3 = 0;
            }
          }
        }
      }
    }

    else
    {
      if (qword_1ED71C7B8 != -1)
      {
        dispatch_once(&qword_1ED71C7B8, &unk_1F0E3B7C0);
      }

      v13 = qword_1ED71C7C8;
      if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v13, OS_LOG_TYPE_ERROR, "[CLAudioAccessoryInterface] in ear status - invalid BT device", buf, 2u);
      }

      v14 = sub_19B420058();
      if ((*(v14 + 160) & 0x80000000) == 0 || (*(v14 + 164) & 0x80000000) == 0 || (*(v14 + 168) & 0x80000000) == 0 || *(v14 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED71C7B8 == -1)
        {
          goto LABEL_30;
        }

        goto LABEL_80;
      }
    }
  }

  else
  {
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E3B7C0);
    }

    v11 = qword_1ED71C7C8;
    if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v11, OS_LOG_TYPE_ERROR, "[CLAudioAccessoryInterface] in ear status - invalid BT AccessoryManager", buf, 2u);
    }

    v12 = sub_19B420058();
    if ((*(v12 + 160) & 0x80000000) == 0 || (*(v12 + 164) & 0x80000000) == 0 || (*(v12 + 168) & 0x80000000) == 0 || *(v12 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7B8 == -1)
      {
LABEL_30:
        v15 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 0, "void CLAudioAccessoryInterface::getInEarStatus(BTAccessoryInEarStatus &, BTAccessoryInEarStatus &, BOOL &) const", "CoreLocation: %s\n", v15);
        if (v15 != buf)
        {
          free(v15);
        }

        goto LABEL_32;
      }

LABEL_80:
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E3B7C0);
      goto LABEL_30;
    }
  }

LABEL_32:
  v16 = *MEMORY[0x1E69E9840];
}

BOOL sub_19B788B7C()
{
  if (qword_1EAFE3A20 != -1)
  {
    dispatch_once(&qword_1EAFE3A20, &unk_1F0E2A620);
  }

  v3 = 0;
  v2 = 0;
  sub_19B788280(qword_1EAFE3A18, &v3, &v2, &v1);
  return v3 == 0;
}

uint64_t sub_19B788BEC(uint64_t a1)
{
  v31 = *MEMORY[0x1E69E9840];
  Current = CFRunLoopGetCurrent();
  sub_19B420D84();
  if (Current != *qword_1ED71C908)
  {
    *buf = 0;
    v28 = buf;
    v29 = 0x2020000000;
    v30 = -1;
    v3 = sub_19B420D84();
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = sub_19B7896D4;
    v24[3] = &unk_1E7535FD0;
    v24[4] = buf;
    v24[5] = a1;
    sub_19B420C9C(v3, v24);
    v4 = *(v28 + 12);
    _Block_object_dispose(buf, 8);
    goto LABEL_67;
  }

  if (!*(a1 + 8))
  {
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E3B7C0);
    }

    v9 = qword_1ED71C7C8;
    if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v9, OS_LOG_TYPE_ERROR, "[CLAudioAccessoryInterface] Failed to get jitter buffer level. Invalid BT AccessoryManager", buf, 2u);
    }

    v10 = sub_19B420058();
    if ((*(v10 + 160) & 0x80000000) != 0 && (*(v10 + 164) & 0x80000000) != 0 && (*(v10 + 168) & 0x80000000) != 0 && !*(v10 + 152))
    {
      goto LABEL_27;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E3B7C0);
    }

    v8 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 0, "uint16_t CLAudioAccessoryInterface::getAdaptiveLatencyJitterBufferLevel()", "CoreLocation: %s\n", v8);
    goto LABEL_25;
  }

  AdaptiveLatencyJitterBufferLevel = BTAccessoryManagerGetAdaptiveLatencyJitterBufferLevel();
  if (AdaptiveLatencyJitterBufferLevel)
  {
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E3B7C0);
    }

    v6 = qword_1ED71C7C8;
    if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_ERROR))
    {
      *buf = 67240192;
      *&buf[4] = AdaptiveLatencyJitterBufferLevel;
      _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_ERROR, "[CLAudioAccessoryInterface] Failed to get jitter buffer level. Error: %{public}d", buf, 8u);
    }

    v7 = sub_19B420058();
    if ((*(v7 + 160) & 0x80000000) != 0 && (*(v7 + 164) & 0x80000000) != 0 && (*(v7 + 168) & 0x80000000) != 0 && !*(v7 + 152))
    {
      goto LABEL_27;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E3B7C0);
    }

    v25 = 67240192;
    v26 = AdaptiveLatencyJitterBufferLevel;
    v8 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 0, "uint16_t CLAudioAccessoryInterface::getAdaptiveLatencyJitterBufferLevel()", "CoreLocation: %s\n", v8);
LABEL_25:
    if (v8 != buf)
    {
      free(v8);
    }

LABEL_27:
    v4 = 0xFFFFLL;
    goto LABEL_67;
  }

  if (qword_1ED71C7B8 != -1)
  {
    dispatch_once(&qword_1ED71C7B8, &unk_1F0E3B7C0);
  }

  v11 = qword_1ED71C7C8;
  if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v11, OS_LOG_TYPE_DEFAULT, "[CLAudioAccessoryInterface] Failed to get jitter buffer level because BT device does not exist", buf, 2u);
  }

  v12 = sub_19B420058();
  if (*(v12 + 160) > 1 || *(v12 + 164) > 1 || *(v12 + 168) > 1 || *(v12 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E3B7C0);
    }

    LOWORD(v25) = 0;
    v13 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "uint16_t CLAudioAccessoryInterface::getAdaptiveLatencyJitterBufferLevel()", "CoreLocation: %s\n", v13);
    if (v13 != buf)
    {
      free(v13);
    }
  }

  *(a1 + 40);
  if (!*(a1 + 40))
  {
    if (*(a1 + 32) == 8223)
    {
      if (qword_1ED71C7B8 != -1)
      {
        dispatch_once(&qword_1ED71C7B8, &unk_1F0E3B7C0);
      }

      v14 = qword_1ED71C7C8;
      if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v14, OS_LOG_TYPE_DEFAULT, "[CLAudioAccessoryInterface] USB connection mode change", buf, 2u);
      }

      v15 = sub_19B420058();
      if (*(v15 + 160) > 1 || *(v15 + 164) > 1 || *(v15 + 168) > 1 || *(v15 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED71C7B8 != -1)
        {
          dispatch_once(&qword_1ED71C7B8, &unk_1F0E3B7C0);
        }

        LOWORD(v25) = 0;
        v16 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "uint16_t CLAudioAccessoryInterface::getAdaptiveLatencyJitterBufferLevel()", "CoreLocation: %s\n", v16);
        if (v16 != buf)
        {
          free(v16);
        }
      }

      sub_19B787384(*(a1 + 176), 3);
    }

    else
    {
      if (qword_1ED71C7B8 != -1)
      {
        dispatch_once(&qword_1ED71C7B8, &unk_1F0E3B7C0);
      }

      v17 = qword_1ED71C7C8;
      if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_ERROR))
      {
        v18 = *(a1 + 32);
        *buf = 67240192;
        *&buf[4] = v18;
        _os_log_impl(&dword_19B41C000, v17, OS_LOG_TYPE_ERROR, "[CLAudioAccessoryInterface] Unexpected JBL change for product 0x%{public}x", buf, 8u);
      }

      v19 = sub_19B420058();
      if ((*(v19 + 160) & 0x80000000) == 0 || (*(v19 + 164) & 0x80000000) == 0 || (*(v19 + 168) & 0x80000000) == 0 || *(v19 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED71C7B8 != -1)
        {
          dispatch_once(&qword_1ED71C7B8, &unk_1F0E3B7C0);
        }

        v20 = *(a1 + 32);
        v25 = 67240192;
        v26 = v20;
        v21 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 0, "uint16_t CLAudioAccessoryInterface::getAdaptiveLatencyJitterBufferLevel()", "CoreLocation: %s\n", v21);
        if (v21 != buf)
        {
          free(v21);
        }
      }
    }
  }

  v4 = 0xFFFFLL;
  *(a1 + 40) = -1;
LABEL_67:
  v22 = *MEMORY[0x1E69E9840];
  return v4;
}

uint64_t sub_19B7896D4(uint64_t a1)
{
  result = sub_19B788BEC(*(a1 + 40));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void sub_19B789708(void *a1, uint64_t a2, unint64_t a3)
{
  v25 = *MEMORY[0x1E69E9840];
  if (qword_1ED71C7B8 != -1)
  {
    dispatch_once(&qword_1ED71C7B8, &unk_1F0E3B7C0);
  }

  v6 = qword_1ED71C7C8;
  if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v24 = a3;
    _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_DEFAULT, "[CLAudioAccessoryInterface] Client %p subscribes", buf, 0xCu);
  }

  v7 = sub_19B420058();
  if (*(v7 + 160) > 1 || *(v7 + 164) > 1 || *(v7 + 168) > 1 || (*(v7 + 152) & 1) != 0)
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E3B7C0);
    }

    v21 = 134217984;
    v22 = a3;
    v8 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CLAudioAccessoryInterface::subscribe(AudioAccessoryInterfaceCallback, void *)", "CoreLocation: %s\n", v8);
    if (v8 != buf)
    {
      free(v8);
    }
  }

  v9 = 0x9DDFEA08EB382D69 * ((8 * (a3 & 0x1FFFFFFF) + 8) ^ HIDWORD(a3));
  v10 = 0x9DDFEA08EB382D69 * (HIDWORD(a3) ^ (v9 >> 47) ^ v9);
  v11 = 0x9DDFEA08EB382D69 * (v10 ^ (v10 >> 47));
  v12 = a1[21];
  if (!*&v12)
  {
    goto LABEL_30;
  }

  v13 = vcnt_s8(v12);
  v13.i16[0] = vaddlv_u8(v13);
  if (v13.u32[0] > 1uLL)
  {
    v14 = 0x9DDFEA08EB382D69 * (v10 ^ (v10 >> 47));
    if (v11 >= *&v12)
    {
      v14 = v11 % *&v12;
    }
  }

  else
  {
    v14 = (*&v12 - 1) & v11;
  }

  v15 = *(a1[20] + 8 * v14);
  if (!v15 || (v16 = *v15) == 0)
  {
LABEL_30:
    operator new();
  }

  while (1)
  {
    v17 = v16[1];
    if (v17 == v11)
    {
      break;
    }

    if (v13.u32[0] > 1uLL)
    {
      if (v17 >= *&v12)
      {
        v17 %= *&v12;
      }
    }

    else
    {
      v17 &= *&v12 - 1;
    }

    if (v17 != v14)
    {
      goto LABEL_30;
    }

LABEL_29:
    v16 = *v16;
    if (!v16)
    {
      goto LABEL_30;
    }
  }

  if (v16[2] != a3)
  {
    goto LABEL_29;
  }

  v16[3] = a2;
  if (a1[3])
  {
    v18 = sub_19B420D84();
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = sub_19B789D54;
    v20[3] = &unk_1E7535180;
    v20[4] = a3;
    v20[5] = a2;
    sub_19B420C9C(v18, v20);
  }

  v19 = *MEMORY[0x1E69E9840];
}

uint64_t sub_19B789D54(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if (qword_1ED71C7B8 != -1)
  {
    dispatch_once(&qword_1ED71C7B8, &unk_1F0E3B7C0);
  }

  v2 = qword_1ED71C7C8;
  if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 134217984;
    v10 = v3;
    _os_log_impl(&dword_19B41C000, v2, OS_LOG_TYPE_DEFAULT, "[CLAudioAccessoryInterface] Sending kActivitDeviceUpdated to client %p", buf, 0xCu);
  }

  v4 = sub_19B420058();
  if (*(v4 + 160) > 1 || *(v4 + 164) > 1 || *(v4 + 168) > 1 || *(v4 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E3B7C0);
    }

    v8 = *(a1 + 32);
    v5 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CLAudioAccessoryInterface::subscribe(AudioAccessoryInterfaceCallback, void *)_block_invoke", "CoreLocation: %s\n", v5);
    if (v5 != buf)
    {
      free(v5);
    }
  }

  result = (*(a1 + 40))(2, *(a1 + 32));
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19B789F2C(uint64_t *a1, uint64_t a2, int a3, int a4)
{
  v55 = *MEMORY[0x1E69E9840];
  Current = CFRunLoopGetCurrent();
  sub_19B420D84();
  if (Current != *qword_1ED71C908)
  {
    v9 = sub_19B420D84();
    v48[0] = MEMORY[0x1E69E9820];
    v48[1] = 3221225472;
    v48[2] = sub_19B78A944;
    v48[3] = &unk_1E7533E58;
    v48[4] = a1;
    v48[5] = a2;
    v49 = a3;
    v50 = a4;
    sub_19B420C9C(v9, v48);
    goto LABEL_26;
  }

  if ((a3 & 0xFFFFFFFD) != 0)
  {
    goto LABEL_26;
  }

  if (a3 == 2 || !a3 && a4)
  {
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E3B7C0);
    }

    v10 = qword_1ED71C7C8;
    if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_DEFAULT))
    {
      if (a4 == 2)
      {
        v11 = "BT session terminated";
      }

      else
      {
        v11 = "attaching BT session failed";
      }

      *buf = 136446210;
      v54 = v11;
      _os_log_impl(&dword_19B41C000, v10, OS_LOG_TYPE_DEFAULT, "[CLAudioAccessoryInterface] %{public}s. Re-attaching......", buf, 0xCu);
    }

    v12 = sub_19B420058();
    if (*(v12 + 160) > 1 || *(v12 + 164) > 1 || *(v12 + 168) > 1 || *(v12 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7B8 != -1)
      {
        dispatch_once(&qword_1ED71C7B8, &unk_1F0E3B7C0);
      }

      if (a4 == 2)
      {
        v13 = "BT session terminated";
      }

      else
      {
        v13 = "attaching BT session failed";
      }

      v51 = 136446210;
      v52 = v13;
      v14 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "void CLAudioAccessoryInterface::btSessionEventHandler(BTSession, BTSessionEvent, BTResult)", "CoreLocation: %s\n", v14);
      if (v14 != buf)
      {
        free(v14);
      }
    }

    sub_19B7852FC(a1);
    goto LABEL_26;
  }

  *a1 = a2;
  if (qword_1ED71C7B8 != -1)
  {
    dispatch_once(&qword_1ED71C7B8, &unk_1F0E3B7C0);
  }

  v16 = qword_1ED71C7C8;
  if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v16, OS_LOG_TYPE_DEFAULT, "[CLAudioAccessoryInterface] BT session attached", buf, 2u);
  }

  v17 = sub_19B420058();
  if (*(v17 + 160) > 1 || *(v17 + 164) > 1 || *(v17 + 168) > 1 || *(v17 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E3B7C0);
    }

    LOWORD(v51) = 0;
    v18 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CLAudioAccessoryInterface::btSessionEventHandler(BTSession, BTSessionEvent, BTResult)", "CoreLocation: %s\n", v18);
    if (v18 != buf)
    {
      free(v18);
    }
  }

  v19 = *a1;
  Default = BTAccessoryManagerGetDefault();
  if (Default)
  {
    v21 = Default;
    a1[1] = 0;
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E3B7C0);
    }

    v22 = qword_1ED71C7C8;
    if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_ERROR))
    {
      *buf = 67240192;
      LODWORD(v54) = v21;
      _os_log_impl(&dword_19B41C000, v22, OS_LOG_TYPE_ERROR, "[CLAudioAccessoryInterface] Accessory Mananger unavailable. Status %{public}d", buf, 8u);
    }

    v23 = sub_19B420058();
    if ((*(v23 + 160) & 0x80000000) == 0 || (*(v23 + 164) & 0x80000000) == 0 || (*(v23 + 168) & 0x80000000) == 0 || *(v23 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7B8 != -1)
      {
        dispatch_once(&qword_1ED71C7B8, &unk_1F0E3B7C0);
      }

      v51 = 67240192;
      LODWORD(v52) = v21;
LABEL_95:
      v47 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "void CLAudioAccessoryInterface::btSessionEventHandler(BTSession, BTSessionEvent, BTResult)", "CoreLocation: %s\n", v47);
      if (v47 != buf)
      {
        free(v47);
      }
    }
  }

  else
  {
    v24 = *a1;
    v25 = BTLocalDeviceGetDefault();
    if (v25)
    {
      v28 = v25;
      a1[2] = 0;
      if (qword_1ED71C7B8 != -1)
      {
        dispatch_once(&qword_1ED71C7B8, &unk_1F0E3B7C0);
      }

      v29 = qword_1ED71C7C8;
      if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_ERROR))
      {
        *buf = 67240192;
        LODWORD(v54) = v28;
        _os_log_impl(&dword_19B41C000, v29, OS_LOG_TYPE_ERROR, "[CLAudioAccessoryInterface] Local device unavailable. Status %{public}d", buf, 8u);
      }

      v30 = sub_19B420058();
      if ((*(v30 + 160) & 0x80000000) == 0 || (*(v30 + 164) & 0x80000000) == 0 || (*(v30 + 168) & 0x80000000) == 0 || *(v30 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED71C7B8 != -1)
        {
          dispatch_once(&qword_1ED71C7B8, &unk_1F0E3B7C0);
        }

        v51 = 67240192;
        LODWORD(v52) = v28;
        goto LABEL_95;
      }
    }

    else
    {
      sub_19B785ADC(a1, v26, v27);
      v31 = a1[1];
      v32 = BTAccessoryManagerAddCallbacks();
      if (v32)
      {
        v33 = v32;
        if (qword_1ED71C7B8 != -1)
        {
          dispatch_once(&qword_1ED71C7B8, &unk_1F0E3B7C0);
        }

        v34 = qword_1ED71C7C8;
        if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_ERROR))
        {
          *buf = 67240192;
          LODWORD(v54) = v33;
          _os_log_impl(&dword_19B41C000, v34, OS_LOG_TYPE_ERROR, "[CLAudioAccessoryInterface] Failed to register BT accessory callback.  Status %{public}d", buf, 8u);
        }

        v35 = sub_19B420058();
        if ((*(v35 + 160) & 0x80000000) == 0 || (*(v35 + 164) & 0x80000000) == 0 || (*(v35 + 168) & 0x80000000) == 0 || *(v35 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1ED71C7B8 != -1)
          {
            dispatch_once(&qword_1ED71C7B8, &unk_1F0E3B7C0);
          }

          v51 = 67240192;
          LODWORD(v52) = v33;
          v36 = _os_log_send_and_compose_impl();
          sub_19B6BB7CC("Generic", 1, 0, 0, "void CLAudioAccessoryInterface::btSessionEventHandler(BTSession, BTSessionEvent, BTResult)", "CoreLocation: %s\n", v36);
          if (v36 != buf)
          {
            free(v36);
          }
        }
      }

      v37 = a1[1];
      v38 = BTAccessoryManagerRegisterCustomMessageClient();
      if (v38)
      {
        v39 = v38;
        if (qword_1ED71C7B8 != -1)
        {
          dispatch_once(&qword_1ED71C7B8, &unk_1F0E3B7C0);
        }

        v40 = qword_1ED71C7C8;
        if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_ERROR))
        {
          *buf = 67240192;
          LODWORD(v54) = v39;
          _os_log_impl(&dword_19B41C000, v40, OS_LOG_TYPE_ERROR, "[CLAudioAccessoryInterface] Failed to register for custom callback. BTResult: %{public}d", buf, 8u);
        }

        v41 = sub_19B420058();
        if ((*(v41 + 160) & 0x80000000) == 0 || (*(v41 + 164) & 0x80000000) == 0 || (*(v41 + 168) & 0x80000000) == 0 || *(v41 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1ED71C7B8 != -1)
          {
            dispatch_once(&qword_1ED71C7B8, &unk_1F0E3B7C0);
          }

          v51 = 67240192;
          LODWORD(v52) = v39;
          goto LABEL_95;
        }
      }

      else
      {
        v42 = a1[2];
        v43 = BTLocalDeviceAddCallbacks();
        if (v43)
        {
          v44 = v43;
          if (qword_1ED71C7B8 != -1)
          {
            dispatch_once(&qword_1ED71C7B8, &unk_1F0E3B7C0);
          }

          v45 = qword_1ED71C7C8;
          if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_ERROR))
          {
            *buf = 67240192;
            LODWORD(v54) = v44;
            _os_log_impl(&dword_19B41C000, v45, OS_LOG_TYPE_ERROR, "[CLAudioAccessoryInterface] Failed to register BT local device event callback.  Status %{public}d", buf, 8u);
          }

          v46 = sub_19B420058();
          if ((*(v46 + 160) & 0x80000000) == 0 || (*(v46 + 164) & 0x80000000) == 0 || (*(v46 + 168) & 0x80000000) == 0 || *(v46 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1ED71C7B8 != -1)
            {
              dispatch_once(&qword_1ED71C7B8, &unk_1F0E3B7C0);
            }

            v51 = 67240192;
            LODWORD(v52) = v44;
            goto LABEL_95;
          }
        }
      }
    }
  }

LABEL_26:
  v15 = *MEMORY[0x1E69E9840];
}

void sub_19B78A954(uint64_t a1, int a2)
{
  v15 = *MEMORY[0x1E69E9840];
  Current = CFRunLoopGetCurrent();
  sub_19B420D84();
  if (Current == *qword_1ED71C908)
  {
    if (a2 == 5)
    {
      if (qword_1ED71C7B8 != -1)
      {
        dispatch_once(&qword_1ED71C7B8, &unk_1F0E3B7C0);
      }

      v6 = qword_1ED71C7C8;
      if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_DEFAULT, "[CLAudioAccessoryInterface] Received BT_LOCAL_DEVICE_CONNECTION_STATUS_CHANGED", buf, 2u);
      }

      v7 = sub_19B420058();
      if (*(v7 + 160) > 1 || *(v7 + 164) > 1 || *(v7 + 168) > 1 || *(v7 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED71C7B8 != -1)
        {
          dispatch_once(&qword_1ED71C7B8, &unk_1F0E3B7C0);
        }

        v10 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "void CLAudioAccessoryInterface::localDeviceEventHandler(BTLocalDeviceEvent)", "CoreLocation: %s\n", v10);
        if (v10 != buf)
        {
          free(v10);
        }
      }

      sub_19B785ADC(a1, v8, v9);
    }
  }

  else
  {
    v5 = sub_19B420D84();
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_19B78AB94;
    v12[3] = &unk_1E7533E38;
    v12[4] = a1;
    v13 = a2;
    sub_19B420C9C(v5, v12);
  }

  v11 = *MEMORY[0x1E69E9840];
}

void sub_19B78ABA4(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v61 = *MEMORY[0x1E69E9840];
  Current = CFRunLoopGetCurrent();
  sub_19B420D84();
  if (Current != *qword_1ED71C908)
  {
    v9 = sub_19B420D84();
    v46[0] = MEMORY[0x1E69E9820];
    v46[1] = 3221225472;
    v46[2] = sub_19B78B6E4;
    v46[3] = &unk_1E7533E58;
    v46[4] = a1;
    v46[5] = a2;
    v47 = a3;
    v48 = a4;
    sub_19B420C9C(v9, v46);
    goto LABEL_3;
  }

  if (!*(a1 + 8))
  {
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E3B7C0);
    }

    v21 = qword_1ED71C7C8;
    if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v21, OS_LOG_TYPE_ERROR, "[CLAudioAccessoryInterface] accessoryEventHandler failed. Invalid BT AccessoryManager", buf, 2u);
    }

    v22 = sub_19B420058();
    if ((*(v22 + 160) & 0x80000000) == 0 || (*(v22 + 164) & 0x80000000) == 0 || (*(v22 + 168) & 0x80000000) == 0 || *(v22 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7B8 != -1)
      {
        dispatch_once(&qword_1ED71C7B8, &unk_1F0E3B7C0);
      }

      LOWORD(v49) = 0;
      goto LABEL_42;
    }

    goto LABEL_3;
  }

  if (a3 > 7)
  {
    if (a3 == 8)
    {
      if (qword_1ED71C7B8 != -1)
      {
        dispatch_once(&qword_1ED71C7B8, &unk_1F0E3B7C0);
      }

      v29 = qword_1ED71C7C8;
      if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_ERROR))
      {
        *buf = 134283521;
        v56 = a2;
        _os_log_impl(&dword_19B41C000, v29, OS_LOG_TYPE_ERROR, "[CLAudioAccessoryInterface] TIMESYNC_NOT_AVAILABLE device:%{private}p", buf, 0xCu);
      }

      v30 = sub_19B420058();
      if ((*(v30 + 160) & 0x80000000) == 0 || (*(v30 + 164) & 0x80000000) == 0 || (*(v30 + 168) & 0x80000000) == 0 || *(v30 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED71C7B8 != -1)
        {
          dispatch_once(&qword_1ED71C7B8, &unk_1F0E3B7C0);
        }

        v49 = 134283521;
        v50 = a2;
        v31 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 0, "void CLAudioAccessoryInterface::accessoryEventHandler(BTDevice, BTAccessoryEvent, BTAccessoryState)", "CoreLocation: %s\n", v31);
        if (v31 != buf)
        {
          free(v31);
        }
      }

      v32 = *(a1 + 48);
      if (v32)
      {

        *(a1 + 48) = 0;
      }

      goto LABEL_3;
    }

    if (a3 != 12)
    {
      goto LABEL_3;
    }

LABEL_47:
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E3B7C0);
    }

    v24 = qword_1ED71C7C8;
    if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134283521;
      v56 = a2;
      _os_log_impl(&dword_19B41C000, v24, OS_LOG_TYPE_DEFAULT, "[CLAudioAccessoryInterface] BT_ACCESSORY_IN_EAR_STATUS_CHANGED device:%{private}p", buf, 0xCu);
    }

    v25 = sub_19B420058();
    if (*(v25 + 160) > 1 || *(v25 + 164) > 1 || *(v25 + 168) > 1 || *(v25 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7B8 != -1)
      {
        dispatch_once(&qword_1ED71C7B8, &unk_1F0E3B7C0);
      }

      v49 = 134283521;
      v50 = a2;
      v28 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "void CLAudioAccessoryInterface::accessoryEventHandler(BTDevice, BTAccessoryEvent, BTAccessoryState)", "CoreLocation: %s\n", v28);
      if (v28 != buf)
      {
        free(v28);
      }
    }

    sub_19B785ADC(a1, v26, v27);
    sub_19B787384(*(a1 + 176), 0);
    goto LABEL_3;
  }

  if ((a3 - 5) < 2)
  {
    goto LABEL_47;
  }

  if (a3 != 7)
  {
    goto LABEL_3;
  }

  if (qword_1ED71C7B8 != -1)
  {
    dispatch_once(&qword_1ED71C7B8, &unk_1F0E3B7C0);
  }

  v11 = qword_1ED71C7C8;
  if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134283521;
    v56 = a2;
    _os_log_impl(&dword_19B41C000, v11, OS_LOG_TYPE_DEFAULT, "[CLAudioAccessoryInterface] TIMESYNC_AVAILABLE device:%{private}p", buf, 0xCu);
  }

  v12 = sub_19B420058();
  if (*(v12 + 160) > 1 || *(v12 + 164) > 1 || *(v12 + 168) > 1 || *(v12 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E3B7C0);
    }

    v49 = 134283521;
    v50 = a2;
    v15 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CLAudioAccessoryInterface::accessoryEventHandler(BTDevice, BTAccessoryEvent, BTAccessoryState)", "CoreLocation: %s\n", v15);
    if (v15 != buf)
    {
      free(v15);
    }
  }

  if (objc_msgSend_sharedClockManager(MEMORY[0x1E69DA0F8], v13, v14))
  {
    v16 = *(a1 + 8);
    TimeSyncId = BTAccessoryManagerGetTimeSyncId();
    if (TimeSyncId)
    {
      v18 = TimeSyncId;
      if (qword_1ED71C7B8 != -1)
      {
        dispatch_once(&qword_1ED71C7B8, &unk_1F0E3B7C0);
      }

      v19 = qword_1ED71C7C8;
      if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_ERROR))
      {
        *buf = 67240192;
        LODWORD(v56) = v18;
        _os_log_impl(&dword_19B41C000, v19, OS_LOG_TYPE_ERROR, "[CLAudioAccessoryInterface] Get TimeSync ID failed result:%{public}d", buf, 8u);
      }

      v20 = sub_19B420058();
      if ((*(v20 + 160) & 0x80000000) == 0 || (*(v20 + 164) & 0x80000000) == 0 || (*(v20 + 168) & 0x80000000) == 0 || *(v20 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED71C7B8 != -1)
        {
          dispatch_once(&qword_1ED71C7B8, &unk_1F0E3B7C0);
        }

        v49 = 67240192;
        LODWORD(v50) = v18;
LABEL_42:
        v23 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 0, "void CLAudioAccessoryInterface::accessoryEventHandler(BTDevice, BTAccessoryEvent, BTAccessoryState)", "CoreLocation: %s\n");
LABEL_43:
        if (v23 != buf)
        {
          free(v23);
        }
      }
    }

    else
    {

      v37 = objc_msgSend_sharedClockManager(MEMORY[0x1E69DA0F8], v35, v36);
      v39 = objc_msgSend_clockWithClockIdentifier_(v37, v38, 0);
      *(a1 + 48) = v39;
      if (v39)
      {
        if (qword_1ED71C7B8 != -1)
        {
          dispatch_once(&qword_1ED71C7B8, &unk_1F0E3B7C0);
        }

        v40 = qword_1ED71C7C8;
        if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_DEFAULT))
        {
          v41 = *(a1 + 48);
          *buf = 134284033;
          v56 = a2;
          v57 = 2049;
          v58 = 0;
          v59 = 2049;
          v60 = v41;
          _os_log_impl(&dword_19B41C000, v40, OS_LOG_TYPE_DEFAULT, "[CLAudioAccessoryInterface] Got TimeSync ID device:%{private}p tsID:0x%{private}llx clock:%{private}p", buf, 0x20u);
        }

        v42 = sub_19B420058();
        if (*(v42 + 160) > 1 || *(v42 + 164) > 1 || *(v42 + 168) > 1 || *(v42 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1ED71C7B8 != -1)
          {
            dispatch_once(&qword_1ED71C7B8, &unk_1F0E3B7C0);
          }

          v43 = *(a1 + 48);
          v49 = 134284033;
          v50 = a2;
          v51 = 2049;
          v52 = 0;
          v53 = 2049;
          v54 = v43;
          v23 = _os_log_send_and_compose_impl();
          sub_19B6BB7CC("Generic", 1, 0, 2, "void CLAudioAccessoryInterface::accessoryEventHandler(BTDevice, BTAccessoryEvent, BTAccessoryState)", "CoreLocation: %s\n");
          goto LABEL_43;
        }
      }

      else
      {
        if (qword_1ED71C7B8 != -1)
        {
          dispatch_once(&qword_1ED71C7B8, &unk_1F0E3B7C0);
        }

        v44 = qword_1ED71C7C8;
        if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_19B41C000, v44, OS_LOG_TYPE_ERROR, "[CLAuDioAccessoryInterface] Failed to get the TimeSync clock", buf, 2u);
        }

        v45 = sub_19B420058();
        if ((*(v45 + 160) & 0x80000000) == 0 || (*(v45 + 164) & 0x80000000) == 0 || (*(v45 + 168) & 0x80000000) == 0 || *(v45 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1ED71C7B8 != -1)
          {
            dispatch_once(&qword_1ED71C7B8, &unk_1F0E3B7C0);
          }

          LOWORD(v49) = 0;
          goto LABEL_42;
        }
      }
    }
  }

  else
  {
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E3B7C0);
    }

    v33 = qword_1ED71C7C8;
    if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v33, OS_LOG_TYPE_ERROR, "[CLAudioAccessoryInterface] Failed to get the TimeSync clock manager", buf, 2u);
    }

    v34 = sub_19B420058();
    if ((*(v34 + 160) & 0x80000000) == 0 || (*(v34 + 164) & 0x80000000) == 0 || (*(v34 + 168) & 0x80000000) == 0 || *(v34 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7B8 != -1)
      {
        dispatch_once(&qword_1ED71C7B8, &unk_1F0E3B7C0);
      }

      LOWORD(v49) = 0;
      goto LABEL_42;
    }
  }

LABEL_3:
  v10 = *MEMORY[0x1E69E9840];
}

void sub_19B78B6F4(uint64_t a1, uint64_t a2, _BYTE *a3, unint64_t a4)
{
  v792 = *MEMORY[0x1E69E9840];
  if (!*(a1 + 8))
  {
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E3B7C0);
    }

    v9 = qword_1ED71C7C8;
    if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v9, OS_LOG_TYPE_ERROR, "[HeadphoneUsage] Invalid BT AccessoryManager", buf, 2u);
    }

    v10 = sub_19B420058();
    if ((*(v10 + 160) & 0x80000000) != 0 && (*(v10 + 164) & 0x80000000) != 0 && (*(v10 + 168) & 0x80000000) != 0 && !*(v10 + 152))
    {
      goto LABEL_92;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E3B7C0);
    }

    *v472 = 0;
    goto LABEL_24;
  }

  v4 = a4;
  if (a4 <= 5)
  {
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E3B7C0);
    }

    v5 = qword_1ED71C7C8;
    if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v5, OS_LOG_TYPE_ERROR, "[HeadphoneUsage] isValidDailyUsageMessage: Invalid header size", buf, 2u);
    }

    v6 = sub_19B420058();
    if ((*(v6 + 160) & 0x80000000) == 0 || (*(v6 + 164) & 0x80000000) == 0 || (*(v6 + 168) & 0x80000000) == 0 || *(v6 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7B8 != -1)
      {
        dispatch_once(&qword_1ED71C7B8, &unk_1F0E3B7C0);
      }

      *v472 = 0;
LABEL_13:
      v7 = _os_log_send_and_compose_impl();
      v8 = "static BOOL BT::CLAudioAccessoryHelper::isValidDailyUsageMessage(BTData _Nonnull, size_t)";
LABEL_25:
      sub_19B6BB7CC("Generic", 1, 0, 0, v8, "CoreLocation: %s\n");
      goto LABEL_90;
    }

    goto LABEL_92;
  }

  if (*a3 != 4)
  {
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E3B7C0);
    }

    v269 = qword_1ED71C7C8;
    if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v269, OS_LOG_TYPE_DEBUG, "[HeadphoneUsage] Ignoring, not an AACP Log Message ", buf, 2u);
    }

    v270 = sub_19B420058();
    if (*(v270 + 160) <= 1 && *(v270 + 164) <= 1 && *(v270 + 168) <= 1 && !*(v270 + 152))
    {
      goto LABEL_92;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E3B7C0);
    }

    *v472 = 0;
LABEL_89:
    v7 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "static BOOL BT::CLAudioAccessoryHelper::isValidDailyUsageMessage(BTData _Nonnull, size_t)", "CoreLocation: %s\n");
LABEL_90:
    if (v7 != buf)
    {
      free(v7);
    }

    goto LABEL_92;
  }

  v12 = a3[3] & 0x3F;
  if (v12 != 1)
  {
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E3B7C0);
    }

    v271 = qword_1ED71C7C8;
    if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109120;
      *&buf[4] = v12;
      _os_log_impl(&dword_19B41C000, v271, OS_LOG_TYPE_DEBUG, "[HeadphoneUsage] isValidDailyUsageMessage: Ignoring message type (%d) that is not DailyUsage", buf, 8u);
    }

    v272 = sub_19B420058();
    if (*(v272 + 160) <= 1 && *(v272 + 164) <= 1 && *(v272 + 168) <= 1 && !*(v272 + 152))
    {
      goto LABEL_92;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E3B7C0);
    }

    *v472 = 67109120;
    *&v472[4] = v12;
    goto LABEL_89;
  }

  v13 = a3[5];
  if ((v13 - 7) > 1)
  {
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E3B7C0);
    }

    v274 = qword_1ED71C7C8;
    if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      *&buf[4] = v13;
      _os_log_impl(&dword_19B41C000, v274, OS_LOG_TYPE_INFO, "[HeadphoneUsage] Unexpected AWD version %d", buf, 8u);
    }

    v275 = sub_19B420058();
    if (*(v275 + 160) <= 1 && *(v275 + 164) <= 1 && *(v275 + 168) <= 1 && !*(v275 + 152))
    {
      goto LABEL_92;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E3B7C0);
    }

    *v472 = 67109120;
    *&v472[4] = v13;
    goto LABEL_89;
  }

  v14 = word_19B7BDAC8[15 * a3[5] + 1];
  v15 = (a4 - 4);
  if (v15 == v14)
  {
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E3B7C0);
    }

    v18 = qword_1ED71C7C8;
    if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v18, OS_LOG_TYPE_DEBUG, "[HeadphoneUsage] Bluetooth message passed sanity checks.", buf, 2u);
    }

    v19 = sub_19B420058();
    if (*(v19 + 160) > 1 || *(v19 + 164) > 1 || *(v19 + 168) > 1 || *(v19 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7B8 != -1)
      {
        dispatch_once(&qword_1ED71C7B8, &unk_1F0E3B7C0);
      }

      *v472 = 0;
      v20 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "static BOOL BT::CLAudioAccessoryHelper::isValidDailyUsageMessage(BTData _Nonnull, size_t)", "CoreLocation: %s\n", v20);
      if (v20 != buf)
      {
        free(v20);
      }
    }

    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E3B7C0);
    }

    v21 = qword_1ED71C7C8;
    if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v21, OS_LOG_TYPE_DEFAULT, "[HeadphoneUsage] Interface: Bluetooth daily usage event received. Parsing data.", buf, 2u);
    }

    v22 = sub_19B420058();
    if (*(v22 + 160) > 1 || *(v22 + 164) > 1 || *(v22 + 168) > 1 || *(v22 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7B8 != -1)
      {
        dispatch_once(&qword_1ED71C7B8, &unk_1F0E3B7C0);
      }

      *v472 = 0;
      v23 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "void CLAudioAccessoryInterface::dailyUsageEventHandler(BTDevice, BTData, size_t)", "CoreLocation: %s\n", v23);
      if (v23 != buf)
      {
        free(v23);
      }
    }

    bzero(__dst, 0x2D5uLL);
    memcpy(__dst, a3 + 4, (v4 - 4));
    v24 = MEMORY[0x1E695DF90];
    *v472 = @"bud_type";
    *buf = objc_msgSend_numberWithUnsignedChar_(MEMORY[0x1E696AD98], v25, __dst[0]);
    *&v472[8] = @"awd_length";
    *&buf[8] = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x1E696AD98], v26, *&__dst[3]);
    *&v472[16] = @"awd_version";
    *&buf[16] = objc_msgSend_numberWithUnsignedChar_(MEMORY[0x1E696AD98], v27, __dst[1]);
    *&v472[24] = @"status";
    *&buf[24] = objc_msgSend_numberWithUnsignedChar_(MEMORY[0x1E696AD98], v28, __dst[2]);
    v473 = @"signature";
    v633 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x1E696AD98], v29, *&__dst[5]);
    v474 = @"product_id";
    v634 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x1E696AD98], v30, *&__dst[7]);
    v475 = @"sw_version";
    v635 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x1E696AD98], v31, v304);
    v476 = @"case_hw_version";
    v636 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x1E696AD98], v32, v305);
    v477 = @"case_sw_version";
    v637 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x1E696AD98], v33, v306);
    v478 = @"a2dp_time_mode_off_l";
    v638 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x1E696AD98], v34, v307);
    v479 = @"a2dp_time_mode_anc_l";
    v639 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x1E696AD98], v35, v308);
    v480 = @"a2dp_time_mode_trcy_l";
    v640 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x1E696AD98], v36, v309);
    v481 = @"a2dp_time_mode_unused_l";
    v641 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x1E696AD98], v37, v310);
    v482 = @"hfp_time_off_l";
    v642 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x1E696AD98], v38, v311);
    v483 = @"hfp_time_anc_l";
    v643 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x1E696AD98], v39, v312);
    v484 = @"hfp_time_trcy_l";
    v644 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x1E696AD98], v40, v313);
    v485 = @"hfp_time_unused_l";
    v645 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x1E696AD98], v41, v314);
    v486 = @"idle_time_off_l";
    v646 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x1E696AD98], v42, v315);
    v487 = @"idle_time_anc_l";
    v647 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x1E696AD98], v43, v316);
    v488 = @"idle_time_trcy_l";
    v648 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x1E696AD98], v44, v317);
    v489 = @"idle_time_unused_l";
    v649 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x1E696AD98], v45, v318);
    v490 = @"a2dp_battery_usage_l";
    v650 = objc_msgSend_numberWithUnsignedChar_(MEMORY[0x1E696AD98], v46, v319);
    v491 = @"hfp_battery_usage_l";
    v651 = objc_msgSend_numberWithUnsignedChar_(MEMORY[0x1E696AD98], v47, v320);
    v492 = @"idle_battery_usage_l";
    v652 = objc_msgSend_numberWithUnsignedChar_(MEMORY[0x1E696AD98], v48, v321);
    v493 = @"a2dp_bud_temp_max_l";
    v653 = objc_msgSend_numberWithChar_(MEMORY[0x1E696AD98], v49, v322);
    v494 = @"hfp_bud_temp_max_l";
    v654 = objc_msgSend_numberWithChar_(MEMORY[0x1E696AD98], v50, v323);
    v495 = @"a2dp_bud_temp_avg_l";
    v655 = objc_msgSend_numberWithChar_(MEMORY[0x1E696AD98], v51, v324);
    v496 = @"hfp_bud_temp_avg_l";
    v656 = objc_msgSend_numberWithChar_(MEMORY[0x1E696AD98], v52, v325);
    v497 = @"time_out_of_ear_idle_l";
    v657 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x1E696AD98], v53, v326);
    v498 = @"time_out_of_ear_incase_l";
    v658 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x1E696AD98], v54, v327);
    v499 = @"ied_activated_count_l";
    v659 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x1E696AD98], v55, v328);
    v500 = @"fw_update_retry_count_l";
    v660 = objc_msgSend_numberWithUnsignedChar_(MEMORY[0x1E696AD98], v56, v329);
    v501 = @"bud_charging_cycle_l";
    v661 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x1E696AD98], v57, v330);
    v502 = @"a2dp_time_mode_off_r";
    v662 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x1E696AD98], v58, v331);
    v503 = @"a2dp_time_mode_anc_r";
    v663 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x1E696AD98], v59, v332);
    v504 = @"a2dp_time_mode_trcy_r";
    v664 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x1E696AD98], v60, v333);
    v505 = @"a2dp_time_mode_unused_r";
    v665 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x1E696AD98], v61, v334);
    v506 = @"hfp_time_off_r";
    v666 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x1E696AD98], v62, v335);
    v507 = @"hfp_time_anc_r";
    v667 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x1E696AD98], v63, v336);
    v508 = @"hfp_time_trcy_r";
    v668 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x1E696AD98], v64, v337);
    v509 = @"hfp_time_unused_r";
    v669 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x1E696AD98], v65, v338);
    v510 = @"idle_time_off_r";
    v670 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x1E696AD98], v66, v339);
    v511 = @"idle_time_anc_r";
    v671 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x1E696AD98], v67, v340);
    v512 = @"idle_time_trcy_r";
    v672 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x1E696AD98], v68, v341);
    v513 = @"idle_time_unused_r";
    v673 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x1E696AD98], v69, v342);
    v514 = @"a2dp_battery_usage_r";
    v674 = objc_msgSend_numberWithUnsignedChar_(MEMORY[0x1E696AD98], v70, v343);
    v515 = @"hfp_battery_usage_r";
    v675 = objc_msgSend_numberWithUnsignedChar_(MEMORY[0x1E696AD98], v71, v344);
    v516 = @"idle_battery_usage_r";
    v676 = objc_msgSend_numberWithUnsignedChar_(MEMORY[0x1E696AD98], v72, v345);
    v517 = @"a2dp_bud_temp_max_r";
    v677 = objc_msgSend_numberWithChar_(MEMORY[0x1E696AD98], v73, v346);
    v518 = @"hfp_bud_temp_max_r";
    v678 = objc_msgSend_numberWithChar_(MEMORY[0x1E696AD98], v74, v347);
    v519 = @"a2dp_bud_temp_avg_r";
    v679 = objc_msgSend_numberWithChar_(MEMORY[0x1E696AD98], v75, v348);
    v520 = @"hfp_bud_temp_avg_r";
    v680 = objc_msgSend_numberWithChar_(MEMORY[0x1E696AD98], v76, v349);
    v521 = @"time_out_of_ear_idle_r";
    v681 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x1E696AD98], v77, v350);
    v522 = @"time_out_of_ear_incase_r";
    v682 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x1E696AD98], v78, v351);
    v523 = @"ied_activated_count_r";
    v683 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x1E696AD98], v79, v352);
    v524 = @"fw_update_retry_count_r";
    v684 = objc_msgSend_numberWithUnsignedChar_(MEMORY[0x1E696AD98], v80, v353);
    v525 = @"bud_charging_cycle_r";
    v685 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x1E696AD98], v81, v354);
    v526 = @"a2dp_time_both_in_ear_off";
    v686 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x1E696AD98], v82, v355);
    v527 = @"a2dp_time_both_in_ear_anc";
    v687 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x1E696AD98], v83, v356);
    v528 = @"a2dp_time_both_in_ear_trcy";
    v688 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x1E696AD98], v84, v357);
    v529 = @"a2dp_time_both_in_ear_unused";
    v689 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x1E696AD98], v85, v358);
    v530 = @"hfp_time_both_in_ear_off";
    v690 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x1E696AD98], v86, v359);
    v531 = @"hfp_time_both_in_ear_anc";
    v691 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x1E696AD98], v87, v360);
    v532 = @"hfp_time_both_in_ear_trcy";
    v692 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x1E696AD98], v88, v361);
    v533 = @"hfp_time_both_in_ear_unused";
    v693 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x1E696AD98], v89, v362);
    v534 = @"idle_time_both_in_ear_off";
    v694 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x1E696AD98], v90, v363);
    v535 = @"idle_time_both_in_ear_anc";
    v695 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x1E696AD98], v91, v364);
    v536 = @"idle_time_both_in_ear_trcy";
    v696 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x1E696AD98], v92, v365);
    v537 = @"idle_time_both_in_ear_unused";
    v697 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x1E696AD98], v93, v366);
    v538 = @"time_both_out_of_ear_idle";
    v698 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x1E696AD98], v94, v367);
    v539 = @"time_out_of_ear_both_incase";
    v699 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x1E696AD98], v95, v368);
    v540 = @"hs_on_acc_cnt";
    v700 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x1E696AD98], v96, v369);
    v541 = @"siri_on_source_cnt";
    v701 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x1E696AD98], v97, v370);
    v542 = @"siri_on_accessory_cnt";
    v702 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x1E696AD98], v98, v371);
    v543 = @"total_time_in_connect_session";
    v703 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x1E696AD98], v99, v372);
    v544 = @"bud_swap_count";
    v704 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x1E696AD98], v100, v373);
    v545 = @"bud_daily_charging_soc_delta_l";
    v705 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x1E696AD98], v101, v375);
    v546 = @"bud_daily_charging_soc_delta_r";
    v706 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x1E696AD98], v102, v376);
    v547 = @"bud_max_daily_temp_during_chr_l";
    v707 = objc_msgSend_numberWithChar_(MEMORY[0x1E696AD98], v103, v377);
    v548 = @"bud_max_daily_temp_during_chr_r";
    v708 = objc_msgSend_numberWithChar_(MEMORY[0x1E696AD98], v104, v378);
    v549 = @"bud_avg_daily_temp_during_chr_l";
    v709 = objc_msgSend_numberWithChar_(MEMORY[0x1E696AD98], v105, v379);
    v550 = @"bud_avg_daily_temp_during_chr_r";
    v710 = objc_msgSend_numberWithChar_(MEMORY[0x1E696AD98], v106, v380);
    v551 = @"case_soc_delta_bud_chr";
    v711 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x1E696AD98], v107, v381);
    v552 = @"case_temp_max_while_discharging";
    v712 = objc_msgSend_numberWithChar_(MEMORY[0x1E696AD98], v108, v382);
    v553 = @"case_temp_avg_daily";
    v713 = objc_msgSend_numberWithChar_(MEMORY[0x1E696AD98], v109, v383);
    v554 = @"case_at_maxchr_time_in_day";
    v714 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x1E696AD98], v110, v384);
    v555 = @"case_charging_cycle";
    v715 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x1E696AD98], v111, v385);
    v556 = @"source_conn_productid_1";
    v716 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x1E696AD98], v112, v386);
    v557 = @"source_conn_productid_2";
    v717 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x1E696AD98], v113, v387);
    v558 = @"source_conn_productid_3";
    v718 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x1E696AD98], v114, v388);
    v559 = @"source_conn_productid_4";
    v719 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x1E696AD98], v115, v389);
    v560 = @"source_conn_productid_5";
    v720 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x1E696AD98], v116, v390);
    v561 = @"source_conn_time_1";
    v721 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x1E696AD98], v117, v391);
    v562 = @"source_conn_time_2";
    v722 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x1E696AD98], v118, v392);
    v563 = @"source_conn_time_3";
    v723 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x1E696AD98], v119, v393);
    v564 = @"source_conn_time_4";
    v724 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x1E696AD98], v120, v394);
    v565 = @"source_conn_time_5";
    v725 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x1E696AD98], v121, v395);
    v566 = @"sw_version_ext";
    v726 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x1E696AD98], v122, v396[5]);
    v567 = @"triangle_conn_time";
    v727 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x1E696AD98], v123, v397);
    v568 = @"hw_version";
    v728 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x1E696AD98], v124, v398);
    v569 = @"double_tap_cnt_l";
    v729 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x1E696AD98], v125, v399);
    v570 = @"single_tap_cnt_l";
    v730 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x1E696AD98], v126, v400);
    v571 = @"press_hold_l";
    v731 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x1E696AD98], v127, v401);
    v572 = @"ied_detect_l";
    v732 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x1E696AD98], v128, v402);
    v573 = @"crash_cnt_l";
    v733 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x1E696AD98], v129, v403[2]);
    v574 = @"bud_mileage_l";
    v734 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x1E696AD98], v130, *&v411[14]);
    v575 = @"first_time_use_l";
    v735 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x1E696AD98], v131, v412);
    v576 = @"double_tap_cnt_r";
    v736 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x1E696AD98], v132, v413);
    v577 = @"single_tap_cnt_r";
    v737 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x1E696AD98], v133, v414);
    v578 = @"press_hold_r";
    v738 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x1E696AD98], v134, v415);
    v579 = @"ied_detect_r";
    v739 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x1E696AD98], v135, v416);
    v580 = @"crash_cnt_r";
    v740 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x1E696AD98], v136, v417[2]);
    v581 = @"bud_mileage_r";
    v741 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x1E696AD98], v137, *&v425[14]);
    v582 = @"first_time_use_r";
    v742 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x1E696AD98], v138, v426);
    v583 = @"scp_active_time";
    v743 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x1E696AD98], v139, v427);
    v584 = @"scp_ohd_time";
    v744 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x1E696AD98], v140, v428);
    v585 = @"scp_fwup_time";
    v745 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x1E696AD98], v141, v429);
    v586 = @"scp_idle_time";
    v746 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x1E696AD98], v142, v430);
    v587 = @"scp_ttop_time";
    v747 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x1E696AD98], v143, v431);
    v588 = @"scp_prioff_time";
    v748 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x1E696AD98], v144, v432);
    v589 = @"scp_up_to_active";
    v749 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x1E696AD98], v145, v433);
    v590 = @"scp_up_to_ohd";
    v750 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x1E696AD98], v146, v434);
    v591 = @"scp_up_to_fwup";
    v751 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x1E696AD98], v147, v435);
    v592 = @"scp_up_to_idle";
    v752 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x1E696AD98], v148, v436);
    v593 = @"scp_up_to_ttop";
    v753 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x1E696AD98], v149, v437);
    v594 = @"scp_down_to_ohd";
    v754 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x1E696AD98], v150, v438);
    v595 = @"scp_down_to_fwup";
    v755 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x1E696AD98], v151, v439);
    v596 = @"scp_down_to_idle";
    v756 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x1E696AD98], v152, v440);
    v597 = @"scp_down_to_ttop";
    v757 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x1E696AD98], v153, v441);
    v598 = @"scp_down_to_prioff";
    v758 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x1E696AD98], v154, v442);
    v599 = @"scp_bt_disc";
    v759 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x1E696AD98], v155, v443);
    v600 = @"scp_bt_conn";
    v760 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x1E696AD98], v156, v444);
    v601 = @"scp_bt_a2dp";
    v761 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x1E696AD98], v157, v445);
    v602 = @"scp_bt_call";
    v762 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x1E696AD98], v158, v446);
    v603 = @"scp_scp_b2p_timeout";
    v763 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x1E696AD98], v159, v447);
    v604 = @"scp_scp_b2p_tx_retry";
    v764 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x1E696AD98], v160, v448);
    v605 = @"scp_scp_b2p_rx_error";
    v765 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x1E696AD98], v161, v449);
    v606 = @"scp_scp_b2p_tx_raw";
    v766 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x1E696AD98], v162, v450);
    v607 = @"scp_scp_b2p_rx_raw";
    v767 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x1E696AD98], v163, v451);
    v608 = @"scp_pri_b2p_timeout";
    v768 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x1E696AD98], v164, v452);
    v609 = @"scp_pri_b2p_tx_retry";
    v769 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x1E696AD98], v165, v453);
    v610 = @"scp_pri_b2p_rx_error";
    v770 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x1E696AD98], v166, v454);
    v611 = @"scp_pri_b2p_tx_raw";
    v771 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x1E696AD98], v167, v455);
    v612 = @"scp_pri_b2p_rx_raw";
    v772 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x1E696AD98], v168, v456);
    v613 = @"scp_chun_tx_error";
    v773 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x1E696AD98], v169, v457);
    v614 = @"scp_chun_rx_error";
    v774 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x1E696AD98], v170, v458);
    v615 = @"scp_chun_unlock";
    v775 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x1E696AD98], v171, v459);
    v616 = @"scp_chun_missed_frame";
    v776 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x1E696AD98], v172, v460);
    v617 = @"appleID_paired_count";
    v777 = objc_msgSend_numberWithUnsignedChar_(MEMORY[0x1E696AD98], v173, v461);
    v618 = @"uvlo_count_l";
    v778 = objc_msgSend_numberWithUnsignedChar_(MEMORY[0x1E696AD98], v174, v462);
    v619 = @"time_since_last_uvlo_l";
    v779 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x1E696AD98], v175, v463);
    v620 = @"low_batt_signal_count_l";
    v780 = objc_msgSend_numberWithUnsignedChar_(MEMORY[0x1E696AD98], v176, v464);
    v621 = @"num_sessions_l";
    v781 = objc_msgSend_numberWithUnsignedChar_(MEMORY[0x1E696AD98], v177, v465);
    v622 = @"flash_pe_count_l";
    v782 = objc_msgSend_numberWithUnsignedChar_(MEMORY[0x1E696AD98], v178, v466);
    v623 = @"bud_color_l";
    v783 = objc_msgSend_numberWithUnsignedChar_(MEMORY[0x1E696AD98], v179, v467);
    v624 = @"uvlo_count_r";
    v784 = objc_msgSend_numberWithUnsignedChar_(MEMORY[0x1E696AD98], v180, v468);
    v625 = @"time_since_last_uvlo_r";
    v785 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x1E696AD98], v181, v469);
    v626 = @"low_batt_signal_count_r";
    v786 = objc_msgSend_numberWithUnsignedChar_(MEMORY[0x1E696AD98], v182, v470);
    v627 = @"num_sessions_r";
    v787 = objc_msgSend_numberWithUnsignedChar_(MEMORY[0x1E696AD98], v183, v471[58]);
    v628 = @"flash_pe_count_r";
    v788 = objc_msgSend_numberWithUnsignedChar_(MEMORY[0x1E696AD98], v184, v471[59]);
    v629 = @"bud_color_r";
    v789 = objc_msgSend_numberWithUnsignedChar_(MEMORY[0x1E696AD98], v185, v471[60]);
    v630 = @"case_charge_event_count";
    v790 = objc_msgSend_numberWithUnsignedChar_(MEMORY[0x1E696AD98], v186, v374);
    v631 = @"system_color";
    v791 = objc_msgSend_numberWithUnsignedChar_(MEMORY[0x1E696AD98], v187, v471[61]);
    v189 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v188, buf, v472, 163);
    v191 = objc_msgSend_dictionaryWithDictionary_(v24, v190, v189);
    sub_19B78E55C(@"array_rfu", 5, 4u, v396, v191);
    sub_19B78E55C(@"ied_histogram_l", 2, 2u, v403, v191);
    sub_19B78E55C(@"a2dp_time_ext_l", 4, 2u, &v404, v191);
    sub_19B78E55C(@"hfp_time_ext_l", 4, 2u, &v405, v191);
    sub_19B78E55C(@"idle_time_ext_l", 4, 2u, &v406, v191);
    sub_19B78E55C(@"a2dp_battery_usage_ext_l", 8, 2u, &v407, v191);
    sub_19B78E55C(@"hfp_battery_usage_ext_l", 8, 2u, &v408, v191);
    sub_19B78E55C(@"idle_battery_usage_ext_l", 8, 2u, &v409, v191);
    sub_19B78E55C(@"array_rfu_l", 5, 4u, &v410, v191);
    sub_19B78E55C(@"volume_his_l", 7, 2u, v411, v191);
    sub_19B78E55C(@"ied_histogram_r", 2, 2u, v417, v191);
    sub_19B78E55C(@"a2dp_time_ext_r", 4, 2u, &v418, v191);
    sub_19B78E55C(@"hfp_time_ext_r", 4, 2u, &v419, v191);
    sub_19B78E55C(@"idle_time_ext_r", 4, 2u, &v420, v191);
    sub_19B78E55C(@"a2dp_battery_usage_ext_r", 8, 2u, &v421, v191);
    sub_19B78E55C(@"hfp_battery_usage_ext_r", 8, 2u, &v422, v191);
    sub_19B78E55C(@"idle_battery_usage_ext_r", 8, 2u, &v423, v191);
    sub_19B78E55C(@"array_rfu_r", 5, 4u, &v424, v191);
    sub_19B78E55C(@"volume_his_r", 7, 2u, v425, v191);
    v193 = 0;
    v194 = v471;
    do
    {
      v195 = objc_msgSend_numberWithUnsignedChar_(MEMORY[0x1E696AD98], v192, *(v194 - 71));
      v197 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v196, @"bud_start_soc_at_undock_l_%u", v193);
      objc_msgSend_setObject_forKeyedSubscript_(v191, v198, v195, v197);
      v200 = objc_msgSend_numberWithUnsignedChar_(MEMORY[0x1E696AD98], v199, *(v194 - 70));
      v202 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v201, @"bud_end_soc_at_dock_l_%u", v193);
      objc_msgSend_setObject_forKeyedSubscript_(v191, v203, v200, v202);
      v205 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x1E696AD98], v204, *(v194 - 69));
      v207 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v206, @"length_of_session_l_%u", v193);
      objc_msgSend_setObject_forKeyedSubscript_(v191, v208, v205, v207);
      v210 = objc_msgSend_numberWithUnsignedChar_(MEMORY[0x1E696AD98], v209, *(v194 - 2));
      v212 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v211, @"bud_start_soc_at_undock_r_%u", v193);
      objc_msgSend_setObject_forKeyedSubscript_(v191, v213, v210, v212);
      v215 = objc_msgSend_numberWithUnsignedChar_(MEMORY[0x1E696AD98], v214, *(v194 - 1));
      v217 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v216, @"bud_end_soc_at_dock_r_%u", v193);
      objc_msgSend_setObject_forKeyedSubscript_(v191, v218, v215, v217);
      v219 = *v194;
      v194 += 2;
      v221 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x1E696AD98], v220, v219);
      v223 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v222, @"length_of_session_r_%u", v193);
      objc_msgSend_setObject_forKeyedSubscript_(v191, v224, v221, v223);
      ++v193;
    }

    while (v193 != 15);
    v225 = objc_msgSend_numberWithUnsignedChar_(MEMORY[0x1E696AD98], v192, v471[62]);
    objc_msgSend_setObject_forKeyedSubscript_(v191, v226, v225, @"case_hw_version_maj");
    v228 = objc_msgSend_numberWithUnsignedChar_(MEMORY[0x1E696AD98], v227, v471[63]);
    objc_msgSend_setObject_forKeyedSubscript_(v191, v229, v228, @"case_hw_version_min");
    v231 = objc_msgSend_numberWithUnsignedChar_(MEMORY[0x1E696AD98], v230, v471[64]);
    objc_msgSend_setObject_forKeyedSubscript_(v191, v232, v231, @"case_hw_version_rev");
    v234 = objc_msgSend_numberWithUnsignedChar_(MEMORY[0x1E696AD98], v233, v471[65]);
    objc_msgSend_setObject_forKeyedSubscript_(v191, v235, v234, @"case_sw_version_maj");
    v237 = objc_msgSend_numberWithUnsignedChar_(MEMORY[0x1E696AD98], v236, v471[66]);
    objc_msgSend_setObject_forKeyedSubscript_(v191, v238, v237, @"case_sw_version_min");
    v240 = objc_msgSend_numberWithUnsignedChar_(MEMORY[0x1E696AD98], v239, v471[67]);
    objc_msgSend_setObject_forKeyedSubscript_(v191, v241, v240, @"case_sw_version_rev");
    v243 = objc_msgSend_numberWithUnsignedChar_(MEMORY[0x1E696AD98], v242, v471[68]);
    objc_msgSend_setObject_forKeyedSubscript_(v191, v244, v243, @"appleID_hijack_cnt");
    if (v191)
    {
      if (*(a1 + 8))
      {
        v245 = objc_alloc(MEMORY[0x1E695DF88]);
        v247 = objc_msgSend_initWithLength_(v245, v246, 1000);
        *__dst = 0;
        objc_msgSend_mutableBytes(v247, v248, v249);
        objc_msgSend_length(v247, v250, v251);
        AccessoryInfo = BTAccessoryManagerGetAccessoryInfo();
        if (AccessoryInfo || !*__dst)
        {

          if (qword_1ED71C7B8 != -1)
          {
            dispatch_once(&qword_1ED71C7B8, &unk_1F0E3B7C0);
          }

          v283 = qword_1ED71C7C8;
          if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109376;
            *&buf[4] = AccessoryInfo;
            *&buf[8] = 2048;
            *&buf[10] = *__dst;
            _os_log_impl(&dword_19B41C000, v283, OS_LOG_TYPE_ERROR, "[HeadphoneUsage] Error: Unable to retrieve data,status:%d,infoLen:%zu", buf, 0x12u);
          }

          v284 = sub_19B420058();
          if ((*(v284 + 160) & 0x80000000) != 0 && (*(v284 + 164) & 0x80000000) != 0 && (*(v284 + 168) & 0x80000000) != 0 && !*(v284 + 152))
          {
            goto LABEL_184;
          }

          bzero(buf, 0x65CuLL);
          if (qword_1ED71C7B8 != -1)
          {
            dispatch_once(&qword_1ED71C7B8, &unk_1F0E3B7C0);
          }

          *v472 = 67109376;
          *&v472[4] = AccessoryInfo;
          *&v472[8] = 2048;
          *&v472[10] = *__dst;
        }

        else
        {
          objc_msgSend_setLength_(v247, v252, *__dst);
          v255 = objc_msgSend_JSONObjectWithData_options_error_(MEMORY[0x1E696ACB0], v254, v247, 0, 0);

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v257 = objc_msgSend_objectForKeyedSubscript_(v255, v256, @"AACPVersionInfo");
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) != 0 && objc_msgSend_count(v257, v258, v259) >= 0xA)
            {
              v261 = objc_msgSend_objectAtIndex_(v257, v260, 3);
              v263 = objc_msgSend_objectAtIndex_(v257, v262, 8);
              v265 = objc_msgSend_objectAtIndex_(v257, v264, 9);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    objc_msgSend_setObject_forKeyedSubscript_(v191, v266, v261, @"serial_number_system");
                    objc_msgSend_setObject_forKeyedSubscript_(v191, v267, v263, @"serial_number_left");
                    objc_msgSend_setObject_forKeyedSubscript_(v191, v268, v265, @"serial_number_right");
LABEL_195:
                    if (qword_1ED71C7B8 != -1)
                    {
                      dispatch_once(&qword_1ED71C7B8, &unk_1F0E3B7C0);
                    }

                    v294 = qword_1ED71C7C8;
                    if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_INFO))
                    {
                      *buf = 138477827;
                      *&buf[4] = v191;
                      _os_log_impl(&dword_19B41C000, v294, OS_LOG_TYPE_INFO, "[HeadphoneUsage] Interface: Parsed metrics: %{private}@", buf, 0xCu);
                    }

                    v295 = sub_19B420058();
                    if (*(v295 + 160) > 1 || *(v295 + 164) > 1 || *(v295 + 168) > 1 || *(v295 + 152))
                    {
                      bzero(buf, 0x65CuLL);
                      if (qword_1ED71C7B8 != -1)
                      {
                        dispatch_once(&qword_1ED71C7B8, &unk_1F0E3B7C0);
                      }

                      *v472 = 138477827;
                      *&v472[4] = v191;
                      v296 = _os_log_send_and_compose_impl();
                      sub_19B6BB7CC("Generic", 1, 0, 2, "void CLAudioAccessoryInterface::dailyUsageEventHandler(BTDevice, BTData, size_t)", "CoreLocation: %s\n", v296);
                      if (v296 != buf)
                      {
                        free(v296);
                      }
                    }

                    for (i = *(a1 + 216); i; i = *i)
                    {
                      if (qword_1ED71C7B8 != -1)
                      {
                        dispatch_once(&qword_1ED71C7B8, &unk_1F0E3B7C0);
                      }

                      v298 = qword_1ED71C7C8;
                      if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_DEBUG))
                      {
                        v299 = i[2];
                        *buf = 67109378;
                        *&buf[4] = 1;
                        *&buf[8] = 2112;
                        *&buf[10] = v299;
                        _os_log_impl(&dword_19B41C000, v298, OS_LOG_TYPE_DEBUG, "[HeadphoneUsage] notifyClientsWithData,event %d,client %@", buf, 0x12u);
                      }

                      v300 = sub_19B420058();
                      if (*(v300 + 160) > 1 || *(v300 + 164) > 1 || *(v300 + 168) > 1 || *(v300 + 152))
                      {
                        bzero(buf, 0x65CuLL);
                        if (qword_1ED71C7B8 != -1)
                        {
                          dispatch_once(&qword_1ED71C7B8, &unk_1F0E3B7C0);
                        }

                        v301 = i[2];
                        *v472 = 0x104000202;
                        *&v472[8] = 2112;
                        *&v472[10] = v301;
                        v302 = _os_log_send_and_compose_impl();
                        sub_19B6BB7CC("Generic", 1, 0, 2, "void CLAudioAccessoryInterface::notifyClientsWithData(Event, NSDictionary *)", "CoreLocation: %s\n", v302);
                        if (v302 != buf)
                        {
                          free(v302);
                        }
                      }

                      (i[3])(1, v191, i[2]);
                    }

                    goto LABEL_92;
                  }
                }
              }

              if (qword_1ED71C7B8 != -1)
              {
                dispatch_once(&qword_1ED71C7B8, &unk_1F0E3B7C0);
              }

              v289 = qword_1ED71C7C8;
              if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_impl(&dword_19B41C000, v289, OS_LOG_TYPE_ERROR, "[HeadphoneUsage] Error: Expected serial number as NSString*, got different type.", buf, 2u);
              }

              v290 = sub_19B420058();
              if ((*(v290 + 160) & 0x80000000) != 0 && (*(v290 + 164) & 0x80000000) != 0 && (*(v290 + 168) & 0x80000000) != 0 && !*(v290 + 152))
              {
LABEL_184:
                if (qword_1ED71C7B8 != -1)
                {
                  dispatch_once(&qword_1ED71C7B8, &unk_1F0E3B7C0);
                }

                v291 = qword_1ED71C7C8;
                if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_ERROR))
                {
                  *buf = 0;
                  _os_log_impl(&dword_19B41C000, v291, OS_LOG_TYPE_ERROR, "[HeadphoneUsage] Error retrieving serial numbers, will omit from message.", buf, 2u);
                }

                v292 = sub_19B420058();
                if ((*(v292 + 160) & 0x80000000) == 0 || (*(v292 + 164) & 0x80000000) == 0 || (*(v292 + 168) & 0x80000000) == 0 || *(v292 + 152))
                {
                  bzero(buf, 0x65CuLL);
                  if (qword_1ED71C7B8 != -1)
                  {
                    dispatch_once(&qword_1ED71C7B8, &unk_1F0E3B7C0);
                  }

                  *v472 = 0;
                  v293 = _os_log_send_and_compose_impl();
                  sub_19B6BB7CC("Generic", 1, 0, 0, "void CLAudioAccessoryInterface::dailyUsageEventHandler(BTDevice, BTData, size_t)", "CoreLocation: %s\n", v293);
                  if (v293 != buf)
                  {
                    free(v293);
                  }
                }

                goto LABEL_195;
              }

              bzero(buf, 0x65CuLL);
              if (qword_1ED71C7B8 != -1)
              {
                dispatch_once(&qword_1ED71C7B8, &unk_1F0E3B7C0);
              }

              *v472 = 0;
            }

            else
            {
              if (qword_1ED71C7B8 != -1)
              {
                dispatch_once(&qword_1ED71C7B8, &unk_1F0E3B7C0);
              }

              v287 = qword_1ED71C7C8;
              if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_impl(&dword_19B41C000, v287, OS_LOG_TYPE_ERROR, "[HeadphoneUsage] Error: AACPVersionInfo array of unexpected type or size.", buf, 2u);
              }

              v288 = sub_19B420058();
              if ((*(v288 + 160) & 0x80000000) != 0 && (*(v288 + 164) & 0x80000000) != 0 && (*(v288 + 168) & 0x80000000) != 0 && !*(v288 + 152))
              {
                goto LABEL_184;
              }

              bzero(buf, 0x65CuLL);
              if (qword_1ED71C7B8 != -1)
              {
                dispatch_once(&qword_1ED71C7B8, &unk_1F0E3B7C0);
              }

              *v472 = 0;
            }
          }

          else
          {
            if (qword_1ED71C7B8 != -1)
            {
              dispatch_once(&qword_1ED71C7B8, &unk_1F0E3B7C0);
            }

            v285 = qword_1ED71C7C8;
            if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_impl(&dword_19B41C000, v285, OS_LOG_TYPE_ERROR, "[HeadphoneUsage] Error: Accessory info dictionary is of unexpected class.", buf, 2u);
            }

            v286 = sub_19B420058();
            if ((*(v286 + 160) & 0x80000000) != 0 && (*(v286 + 164) & 0x80000000) != 0 && (*(v286 + 168) & 0x80000000) != 0 && !*(v286 + 152))
            {
              goto LABEL_184;
            }

            bzero(buf, 0x65CuLL);
            if (qword_1ED71C7B8 != -1)
            {
              dispatch_once(&qword_1ED71C7B8, &unk_1F0E3B7C0);
            }

            *v472 = 0;
          }
        }

        v282 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 0, "static BOOL BT::CLAudioAccessoryHelper::addSerialNumbersToDict(BTAccessoryManager _Nonnull, BTDevice _Nonnull, NSMutableDictionary * _Nonnull)", "CoreLocation: %s\n");
      }

      else
      {
        if (qword_1ED71C7B8 != -1)
        {
          dispatch_once(&qword_1ED71C7B8, &unk_1F0E3B7C0);
        }

        v280 = qword_1ED71C7C8;
        if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          *&buf[4] = a2;
          _os_log_impl(&dword_19B41C000, v280, OS_LOG_TYPE_DEBUG, "[HeadphoneUsage] BT Accessory Manager no longer exists, cannot retrieve serial numbers,device:%@", buf, 0xCu);
        }

        v281 = sub_19B420058();
        if (*(v281 + 160) <= 1 && *(v281 + 164) <= 1 && *(v281 + 168) <= 1 && !*(v281 + 152))
        {
          goto LABEL_184;
        }

        bzero(buf, 0x65CuLL);
        if (qword_1ED71C7B8 != -1)
        {
          dispatch_once(&qword_1ED71C7B8, &unk_1F0E3B7C0);
        }

        *v472 = 138412290;
        *&v472[4] = a2;
        v282 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "static BOOL BT::CLAudioAccessoryHelper::addSerialNumbersToDict(BTAccessoryManager _Nonnull, BTDevice _Nonnull, NSMutableDictionary * _Nonnull)", "CoreLocation: %s\n");
      }

      if (v282 != buf)
      {
        free(v282);
      }

      goto LABEL_184;
    }

    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E3B7C0);
    }

    v278 = qword_1ED71C7C8;
    if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v278, OS_LOG_TYPE_ERROR, "[HeadphoneUsage] Error forming metric dictionary, aborting.", buf, 2u);
    }

    v279 = sub_19B420058();
    if ((*(v279 + 160) & 0x80000000) != 0 && (*(v279 + 164) & 0x80000000) != 0 && (*(v279 + 168) & 0x80000000) != 0 && !*(v279 + 152))
    {
      goto LABEL_92;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E3B7C0);
    }

    *v472 = 0;
LABEL_24:
    v7 = _os_log_send_and_compose_impl();
    v8 = "void CLAudioAccessoryInterface::dailyUsageEventHandler(BTDevice, BTData, size_t)";
    goto LABEL_25;
  }

  if (qword_1ED71C7B8 != -1)
  {
    dispatch_once(&qword_1ED71C7B8, &unk_1F0E3B7C0);
  }

  v276 = qword_1ED71C7C8;
  if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_FAULT))
  {
    *buf = 67109888;
    *&buf[4] = v13;
    *&buf[8] = 1024;
    *&buf[10] = 1;
    *&buf[14] = 1024;
    *&buf[16] = v14;
    *&buf[20] = 1024;
    *&buf[22] = v15;
    _os_log_impl(&dword_19B41C000, v276, OS_LOG_TYPE_FAULT, "[HeadphoneUsage] Unexpected AWD data length for AWDVersion %d: type %d expected len %d actual %d. Header mismatch with Bluetooth likely.", buf, 0x1Au);
  }

  v277 = sub_19B420058();
  if ((*(v277 + 160) & 0x80000000) == 0 || (*(v277 + 164) & 0x80000000) == 0 || (*(v277 + 168) & 0x80000000) == 0 || *(v277 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E3B7C0);
    }

    *v472 = 67109888;
    *&v472[4] = v13;
    *&v472[8] = 1024;
    *&v472[10] = 1;
    *&v472[14] = 1024;
    *&v472[16] = v14;
    *&v472[20] = 1024;
    *&v472[22] = v15;
    goto LABEL_13;
  }

LABEL_92:
  v273 = *MEMORY[0x1E69E9840];
}

os_log_t sub_19B78E52C()
{
  result = os_log_create("com.apple.locationd.Motion", "Accessory");
  qword_1ED71C7C8 = result;
  return result;
}

void sub_19B78E55C(uint64_t a1, const char *a2, unsigned int a3, uint64_t a4, void *a5)
{
  v27 = *MEMORY[0x1E69E9840];
  if (a1 && a4 && a5)
  {
    v9 = 0;
    v10 = a3 * a2;
    do
    {
      v11 = (a4 + v9);
      if (a3 == 4)
      {
        v12 = objc_msgSend_numberWithUnsignedLongLong_(MEMORY[0x1E696AD98], a2, *v11);
      }

      else if (a3 == 3)
      {
        v12 = objc_msgSend_numberWithUnsignedLongLong_(MEMORY[0x1E696AD98], a2, *v11 | (*(v11 + 2) << 16));
      }

      else
      {
        v12 = objc_msgSend_numberWithUnsignedLongLong_(MEMORY[0x1E696AD98], a2, *v11);
      }

      v14 = v12;
      v15 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v13, @"%@_%u", a1, v9 / a3);
      objc_msgSend_setObject_forKey_(a5, v16, v14, v15);
      v9 += a3;
    }

    while (v9 < v10);
  }

  else
  {
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E3B7C0);
    }

    v17 = qword_1ED71C7C8;
    if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v22 = a1;
      v23 = 2048;
      v24 = a4;
      v25 = 2112;
      v26 = a5;
      _os_log_impl(&dword_19B41C000, v17, OS_LOG_TYPE_ERROR, "[HeadphoneUsage] addExpandedArrayToDictionary: Invalid parameters. arrayName: %@, array: %p, dict: %@", buf, 0x20u);
    }

    v18 = sub_19B420058();
    if ((*(v18 + 160) & 0x80000000) == 0 || (*(v18 + 164) & 0x80000000) == 0 || (*(v18 + 168) & 0x80000000) == 0 || *(v18 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7B8 != -1)
      {
        dispatch_once(&qword_1ED71C7B8, &unk_1F0E3B7C0);
      }

      v19 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "static void BT::CLAudioAccessoryHelper::addExpandedArrayToDictionary(NSString * _Nonnull, uint32_t, uint8_t, uint8_t * _Nonnull, NSMutableDictionary * _Nonnull, BOOL)", "CoreLocation: %s\n", v19);
      if (v19 != buf)
      {
        free(v19);
      }
    }
  }

  v20 = *MEMORY[0x1E69E9840];
}

uint64_t sub_19B78E7F8(uint64_t a1)
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

uint64_t *sub_19B78E844(void *a1, void *a2)
{
  result = sub_19B78E87C(a1, a2);
  if (result)
  {
    sub_19B78E968(a1, result);
    return 1;
  }

  return result;
}

void *sub_19B78E87C(void *a1, void *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v3 >> 47) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v6 = vcnt_s8(v2);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v5;
    if (v5 >= *&v2)
    {
      v7 = v5 % *&v2;
    }
  }

  else
  {
    v7 = v5 & (*&v2 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8)
  {
    return 0;
  }

  result = *v8;
  if (*v8)
  {
    do
    {
      v10 = result[1];
      if (v10 == v5)
      {
        if (result[2] == *a2)
        {
          return result;
        }
      }

      else
      {
        if (v6.u32[0] > 1uLL)
        {
          if (v10 >= *&v2)
          {
            v10 %= *&v2;
          }
        }

        else
        {
          v10 &= *&v2 - 1;
        }

        if (v10 != v7)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

uint64_t sub_19B78E968(void *a1, uint64_t *a2)
{
  v2 = *a2;
  sub_19B78E9AC(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return v2;
}

void *sub_19B78E9AC@<X0>(void *result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = result[1];
  v4 = a2[1];
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

  v6 = *(*result + 8 * v4);
  do
  {
    v7 = v6;
    v6 = *v6;
  }

  while (v6 != a2);
  if (v7 == result + 2)
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
    if (!*a2)
    {
      goto LABEL_19;
    }

    v9 = *(*a2 + 8);
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
      *(*result + 8 * v4) = 0;
    }
  }

  v10 = *a2;
  if (*a2)
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
      *(*result + 8 * v11) = v7;
      v10 = *a2;
    }
  }

  *v7 = v10;
  *a2 = 0;
  --result[3];
  *a3 = a2;
  *(a3 + 8) = result;
  *(a3 + 16) = 1;
  *(a3 + 17) = 0;
  *(a3 + 20) = 0;
  return result;
}

void *sub_19B78EAE8(void *a1, void *a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v2 >> 47) ^ v2);
  v4 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = v4 & (*&v5 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != *a2)
  {
    goto LABEL_17;
  }

  return v9;
}

uint64_t sub_19B78EF30(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  *a1 = 0;
  *(a1 + 8) = 0x3F80000000000000;
  *(a1 + 16) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0x4000000000;
  *(a1 + 3648) = 1;
  *(a1 + 3660) = 0u;
  *(a1 + 3676) = 0x800000000;
  *(a1 + 3716) = 0;
  *(a1 + 3724) = 0;
  __asm { FMOV            V0.2S, #1.0 }

  *(a1 + 3728) = -_D0;
  *(a1 + 3736) = 0;
  *(a1 + 3744) = 0x3F80000000000000;
  if (qword_1EAFE2998 != -1)
  {
    dispatch_once(&qword_1EAFE2998, &unk_1F0E2A640);
  }

  v7 = off_1EAFE29A0;
  if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_INFO, "[CMHeadToHeadsetAttitudeEstimator] Created the online H2H estimator.", buf, 2u);
  }

  v8 = sub_19B420058();
  if (*(v8 + 160) > 1 || *(v8 + 164) > 1 || *(v8 + 168) > 1 || *(v8 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E2A640);
    }

    v10 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "CMHeadToHeadsetAttitudeEstimator::CMHeadToHeadsetAttitudeEstimator()", "CoreLocation: %s\n", v10);
    if (v10 != buf)
    {
      free(v10);
    }
  }

  sub_19B78F14C(a1, v9);
  v11 = *MEMORY[0x1E69E9840];
  return a1;
}

void sub_19B78F14C(uint64_t a1, float32x4_t a2)
{
  v19 = *MEMORY[0x1E69E9840];
  *(a1 + 16) = 0;
  v3 = 0;
  *a1 = sub_19B66BFF4((a1 + 3736), a2);
  *(a1 + 4) = v4;
  *(a1 + 8) = v5;
  *(a1 + 12) = v6;
  v17 = 0;
  memset(v16, 0, sizeof(v16));
  do
  {
    *sub_19B5D68B8(v16, v3, v3) = 949990671;
    ++v3;
  }

  while (v3 != 3);
  sub_19B61A35C(a1 + 20, v16);
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 3660) = 0u;
  *(a1 + 3676) = 0;
  *(a1 + 3648) = 1;
  *(a1 + 3716) = 0;
  *(a1 + 3724) = 0;
  __asm { FMOV            V0.2S, #1.0 }

  *(a1 + 3728) = -_D0;
  if (qword_1EAFE2998 != -1)
  {
    dispatch_once(&qword_1EAFE2998, &unk_1F0E2A640);
  }

  v12 = off_1EAFE29A0;
  if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v12, OS_LOG_TYPE_INFO, "[CMHeadToHeadsetAttitudeEstimator]:[reset] Reset.", buf, 2u);
  }

  v13 = sub_19B420058();
  if (*(v13 + 160) > 1 || *(v13 + 164) > 1 || *(v13 + 168) > 1 || *(v13 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E2A640);
    }

    v14 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CMHeadToHeadsetAttitudeEstimator::reset()", "CoreLocation: %s\n", v14);
    if (v14 != buf)
    {
      free(v14);
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

void sub_19B78F384(uint64_t a1, float32x2_t *a2, float32x4_t a3)
{
  v41 = *MEMORY[0x1E69E9840];
  if (*(a1 + 16) != 1)
  {
    goto LABEL_5;
  }

  *buf = sub_19B66C0A4(a2, a1 + 3736, a3);
  v35 = __PAIR64__(v6, v5);
  *v36 = v7;
  v8 = sub_19B66C31C(buf);
  v9 = 0;
  v26 = v8;
  v27 = __PAIR64__(v11, v10);
  v12 = 0.0;
  do
  {
    v12 = v12 + (*(&v26 + v9) * *(&v26 + v9));
    v9 += 4;
  }

  while (v9 != 12);
  if (sqrtf(v12) >= 0.000001)
  {
LABEL_5:
    v13 = *a2->f32;
    *(a1 + 3736) = *a2->f32;
    sub_19B78F14C(a1, v13);
    *(a1 + 16) = 1;
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E2A640);
    }

    v14 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_INFO))
    {
      *&v15 = *a1;
      v16 = *(a1 + 4);
      v17 = *(a1 + 8);
      v18 = *(a1 + 12);
      *buf = 134349824;
      v35 = v15;
      *v36 = 2050;
      *&v36[2] = v16;
      v37 = 2050;
      v38 = v17;
      v39 = 2050;
      v40 = v18;
      _os_log_impl(&dword_19B41C000, v14, OS_LOG_TYPE_INFO, "[CMHeadToHeadsetAttitudeEstimator]:[setDefaultQHeadToHeadset] Default qFB: %{public}.7f %{public}.7f %{public}.7f %{public}.7f", buf, 0x2Au);
    }

    v19 = sub_19B420058();
    if (*(v19 + 160) > 1 || *(v19 + 164) > 1 || *(v19 + 168) > 1 || *(v19 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E2A640);
      }

      *&v20 = *a1;
      v21 = *(a1 + 4);
      v22 = *(a1 + 8);
      v23 = *(a1 + 12);
      v26 = 3.9125e-34;
      v27 = v20;
      v28 = 2050;
      v29 = v21;
      v30 = 2050;
      v31 = v22;
      v32 = 2050;
      v33 = v23;
      v24 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "void CMHeadToHeadsetAttitudeEstimator::setDefaultQHeadToHeadset(const CMOQuaternion &)", "CoreLocation: %s\n", v24);
      if (v24 != buf)
      {
        free(v24);
      }
    }
  }

  v25 = *MEMORY[0x1E69E9840];
}

void sub_19B78F638(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4, double a5)
{
  v90 = *MEMORY[0x1E69E9840];
  if (*(a1 + 16) != 1)
  {
    goto LABEL_77;
  }

  v8 = *(a1 + 58);
  if (*(a1 + 58))
  {
    v9 = a1 + 64;
    v10 = *(a1 + 56);
    v11 = v8 + v10 - 1;
    v12 = *(a1 + 60);
    if (v11 >= v12)
    {
      v13 = *(a1 + 60);
    }

    else
    {
      v13 = 0;
    }

    if (*(v9 + 56 * (v11 - v13)) >= a4)
    {
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E2A640);
      }

      v14 = off_1EAFE29A0;
      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_ERROR))
      {
        v15 = *(a1 + 56) + *(a1 + 58) - 1;
        v16 = *(a1 + 60);
        if (v15 < v16)
        {
          v16 = 0;
        }

        v17 = *(v9 + 56 * (v15 - v16));
        *buf = 134349312;
        *&buf[4] = v17;
        v87 = 2050;
        v88 = a4;
        _os_log_impl(&dword_19B41C000, v14, OS_LOG_TYPE_ERROR, "[CMHeadToHeadsetAttitudeEstimator]:[feedIMUData] Backwards or repeated IMU timestamp. Previous: %{public}llu us, this: %{public}llu us", buf, 0x16u);
      }

      v18 = sub_19B420058();
      if ((*(v18 + 160) & 0x80000000) == 0 || (*(v18 + 164) & 0x80000000) == 0 || (*(v18 + 168) & 0x80000000) == 0 || *(v18 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E2A640);
        }

        v19 = *(a1 + 56) + *(a1 + 58) - 1;
        v20 = *(a1 + 60);
        if (v19 < v20)
        {
          v20 = 0;
        }

        v21 = *(v9 + 56 * (v19 - v20));
        LODWORD(v82[0]) = 134349312;
        *(v82 + 4) = v21;
        WORD6(v82[0]) = 2050;
        *(v82 + 14) = a4;
        v22 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 0, "void CMHeadToHeadsetAttitudeEstimator::feedIMUData(const CMRelDM::IMUData &, const CMRelDM::IMUData &, const double, const uint64_t)", "CoreLocation: %s\n");
LABEL_74:
        if (v22 != buf)
        {
          free(v22);
        }

        goto LABEL_77;
      }

      goto LABEL_77;
    }
  }

  else
  {
    v12 = *(a1 + 60);
    v10 = *(a1 + 56);
  }

  v23 = *(a2 + 56);
  v24 = *(a3 + 7);
  v80 = v24;
  v81 = v23;
  v25 = *a3;
  v78 = *a3;
  v26 = *(a3 + 2);
  v79 = v26;
  v27 = v10 + v8;
  if (v27 >= v12)
  {
    v28 = v12;
  }

  else
  {
    v28 = 0;
  }

  v29 = a1 + 56 * (v27 - v28);
  *(v29 + 64) = a4;
  *(v29 + 72) = v23;
  *(v29 + 88) = v24;
  *(v29 + 112) = v26;
  *(v29 + 104) = v25;
  v30 = *(a1 + 58);
  if (v12 <= v30)
  {
    v31 = *(a1 + 56) + 1;
    if (v31 < v12)
    {
      LOWORD(v12) = 0;
    }

    *(a1 + 56) = v31 - v12;
  }

  else
  {
    *(a1 + 58) = v30 + 1;
  }

  v32 = 0;
  v33 = 0.0;
  do
  {
    v33 = v33 + (*(a2 + v32) * *(a2 + v32));
    v32 += 4;
  }

  while (v32 != 12);
  *buf = sqrtf(v33);
  sub_19B5BC034(a1 + 3648, buf);
  v34 = sub_19B790D5C(a1 + 20, 0, 0);
  for (i = 1; i != 3; ++i)
  {
    v34 = v34 + sub_19B790D5C(a1 + 20, i, i);
  }

  if (v34 < 0.27416)
  {
    v36 = 0;
    v37 = a5;
    v73 = v37;
    v83 = 0;
    memset(v82, 0, sizeof(v82));
    do
    {
      *sub_19B5D68B8(v82, v36, v36) = 1065353216;
      ++v36;
    }

    while (v36 != 3);
    v38 = 0;
    v76[0] = v82[0];
    v76[1] = v82[1];
    v77 = v83;
    do
    {
      *sub_19B5BC0F0(buf, v38++) = 1008981770;
    }

    while (v38 != 3);
    v39 = 0;
    v74 = vmul_n_f32(*buf, v73);
    v75 = *&buf[8] * v73;
    do
    {
      v40 = 2;
      do
      {
        for (j = 0; j != v40; ++j)
        {
          v42 = *sub_19B5D68B8(v82, v39, j);
          v43 = *sub_19B61C034(a1 + 32, j, v40);
          v44 = sub_19B5D68B8(v82, v39, v40);
          *v44 = *v44 + (v42 * v43);
        }

        --v40;
      }

      while (v40);
      ++v39;
    }

    while (v39 != 3);
    for (k = 2; ; --k)
    {
      v46 = 0;
      v89[k] = 0.0;
      v47 = 0.0;
      do
      {
        v48 = *sub_19B5D68B8(v82, k, v46);
        v49 = v48 * *sub_19B5D68B8(v82, k, v46);
        v47 = v47 + (v49 * *sub_19B61C3BC(a1 + 20, v46));
        v89[k] = v47;
        ++v46;
      }

      while (v46 != 3);
      for (m = 0; m != 3; ++m)
      {
        v51 = *sub_19B5D68B8(v76, k, m);
        v52 = v51 * *sub_19B5D68B8(v76, k, m);
        v47 = v47 + (v52 * sub_19B5D6144(&v74, m));
        v89[k] = v47;
      }

      if (v47 <= 0.0)
      {
        break;
      }

      if (!k)
      {
        do
        {
          v71 = v89[k];
          *sub_19B61C3BC(a1 + 20, k++) = v71;
        }

        while (k != 3);
        goto LABEL_77;
      }

      for (n = 0; n != k; ++n)
      {
        v54 = 0;
        v55 = 0.0;
        do
        {
          v56 = *sub_19B5D68B8(v82, n, v54);
          v57 = v56 * *sub_19B61C3BC(a1 + 20, v54);
          v55 = v55 + (v57 * *sub_19B5D68B8(v82, k, v54++));
        }

        while (v54 != 3);
        for (ii = 0; ii != 3; ++ii)
        {
          v59 = *sub_19B5D68B8(v76, n, ii);
          v60 = v59 * sub_19B5D6144(&v74, ii);
          v55 = v55 + (v60 * *sub_19B5D68B8(v76, k, ii));
        }

        v61 = 0;
        *sub_19B61C034(a1 + 32, n, k) = v55 / v47;
        do
        {
          v62 = *sub_19B61C034(a1 + 32, n, k);
          v63 = *sub_19B5D68B8(v82, k, v61);
          v64 = sub_19B5D68B8(v82, n, v61);
          *v64 = *v64 - (v62 * v63);
          ++v61;
        }

        while (v61 != 3);
        for (jj = 0; jj != 3; ++jj)
        {
          v66 = *sub_19B61C034(a1 + 32, n, k);
          v67 = *sub_19B5D68B8(v76, k, jj);
          v68 = sub_19B5D68B8(v76, n, jj);
          *v68 = *v68 - (v66 * v67);
        }
      }
    }

    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E28880);
    }

    v69 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      *&buf[4] = k;
      _os_log_impl(&dword_19B41C000, v69, OS_LOG_TYPE_DEBUG, "D[%zu] <= 0, matrix ! positive definite", buf, 0xCu);
    }

    v70 = sub_19B420058();
    if (*(v70 + 160) > 1 || *(v70 + 164) > 1 || *(v70 + 168) > 1 || *(v70 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E28880);
      }

      v84 = 134217984;
      v85 = k;
      v22 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "void CMFactoredMatrix<float, 3>::thorntonTemporalUpdate(CMMatrix<T, N, N> &, CMMatrix<T, N, M> &, const CMVector<T, M> &) [T = float, N = 3, M = 3UL]", "CoreLocation: %s\n");
      goto LABEL_74;
    }
  }

LABEL_77:
  v72 = *MEMORY[0x1E69E9840];
}

__n128 sub_19B78FE84(uint64_t a1, float32x2_t *a2, unint64_t a3, __n128 result)
{
  v4 = *(a1 + 48);
  if (v4)
  {
    v5 = v4 >= a3;
  }

  else
  {
    v5 = 0;
  }

  if (!v5 && *(a1 + 16) == 1 && *(a1 + 58))
  {
    v8 = a3;
    v9 = a1 + 64;
    v10 = *(a1 + 58) + *(a1 + 56) - 1;
    v11 = *(a1 + 60);
    if (v10 < v11)
    {
      v11 = 0;
    }

    if ((*(v9 + 56 * (v10 - v11)) + 5000.0) >= v8 && (v8 + 5000.0) >= *(v9 + 56 * *(a1 + 56)))
    {
      *(a1 + 3732) = result.n128_u32[0];
      sub_19B78FF64(a1, a3, a2);
      result = *a2->f32;
      *(a1 + 3716) = *a2->f32;
      *(a1 + 48) = a3;
    }
  }

  return result;
}

void sub_19B78FF64(uint64_t a1, unint64_t a2, float32x2_t *a3)
{
  v6 = (a1 + 56);
  v7 = a1 + 64;
  v8 = *(a1 + 58);
  v9 = *(a1 + 56) + v8 - 1;
  v10 = *(a1 + 60);
  if (v9 < v10)
  {
    v10 = 0;
  }

  if (*(v7 + 56 * (v9 - v10)) >= a2)
  {
    if (v8 == 1 || *(v7 + 56 * *(a1 + 56)) > a2)
    {
      goto LABEL_15;
    }

    v13 = 0;
    v14 = 0;
    do
    {
      if (*sub_19B791024(v6, v13) >= a2)
      {
        break;
      }

      v13 = ++v14;
    }

    while (*(a1 + 58) - 1 > v14);
    if (!v14)
    {
LABEL_15:
      v11 = 0;
    }

    else
    {
      v11 = v14 - 1;
      v15 = a2 - *sub_19B791024(v6, v14 - 1);
      if (v15 >= *sub_19B791024(v6, v13) - a2)
      {
        v11 = v14;
      }
    }
  }

  else
  {
    v11 = v8 - 1;
  }

  v16 = sub_19B791024(v6, v11);
  v17 = sub_19B791024(v6, v11);
  sub_19B790330(a1, v18, (v16 + 8), (v17 + 24), a3);
  v19 = (sub_19B791024(v6, v11) + 40);

  sub_19B7907BC(a1, a2, a3, v19, v20);
}

float sub_19B7900DC(float32x2_t *a1, float32x4_t a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v3.f32[0] = sub_19B66BFF4(a1 + 467, a2);
  v23 = v3.i32[0];
  v24 = COERCE_DOUBLE(__PAIR64__(v5, v4));
  v25 = v6;
  buf[0].i32[0] = sub_19B66C0A4(a1, &v23, v3);
  *(buf[0].i64 + 4) = __PAIR64__(v8, v7);
  buf[0].i32[3] = v9;
  v10 = sub_19B66C31C(buf);
  v11 = 0;
  *v21 = v10;
  v21[1] = v12;
  v21[2] = v13;
  v14 = 0.0;
  do
  {
    v14 = v14 + (*&v21[v11] * *&v21[v11]);
    ++v11;
  }

  while (v11 != 3);
  if (qword_1EAFE2998 != -1)
  {
    dispatch_once(&qword_1EAFE2998, &unk_1F0E2A640);
  }

  v15 = off_1EAFE29A0;
  v16 = sqrtf(v14);
  if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
  {
    buf[0].i32[0] = 134217984;
    *(buf[0].i64 + 4) = (v16 * 57.296);
    _os_log_impl(&dword_19B41C000, v15, OS_LOG_TYPE_DEBUG, "[CMHeadToHeadsetAttitudeEstimator] AngleToDefault: %f.", buf, 0xCu);
  }

  v17 = sub_19B420058();
  if (*(v17 + 160) > 1 || *(v17 + 164) > 1 || *(v17 + 168) > 1 || *(v17 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E2A640);
    }

    v23 = 134217984;
    v24 = (v16 * 57.296);
    v18 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "float CMHeadToHeadsetAttitudeEstimator::getAngleBetweenEstimateAndDefault() const", "CoreLocation: %s\n", v18);
    if (v18 != buf)
    {
      free(v18);
    }
  }

  v19 = *MEMORY[0x1E69E9840];
  return v16;
}

void sub_19B790330(uint64_t a1, uint64_t a2, float *a3, float *a4, float *a5)
{
  v8 = sub_19B447000(a4);
  v11 = sub_19B66C1A4(a1, v8, v9, v10);
  v13 = v12;
  v15 = v14;
  v68 = (180.0 - *(a1 + 3732)) * -0.017453;
  v69 = 0;
  *v16.i64 = sub_19B66C264(&v67, &v68);
  v17.f32[0] = sub_19B66BF70(&v67, a5, v16);
  v64 = __PAIR64__(v18, v17.u32[0]);
  v65 = v19;
  v66 = v20;
  LODWORD(v75) = sub_19B66BFF4(&v64, v17);
  *(&v75 + 4) = __PAIR64__(v22, v21);
  HIDWORD(v75) = v23;
  v24 = sub_19B447000(a3);
  v27 = sub_19B66C1A4(&v75, v24, v25, v26);
  v29 = v28;
  v31 = v30;
  v32 = 0;
  v63[0] = v27 - v11;
  v63[1] = v28 - v13;
  v63[2] = v30 - v15;
  LODWORD(v75) = 0;
  *(&v75 + 1) = v15;
  *(&v75 + 2) = -v13;
  *(&v75 + 3) = -v15;
  LODWORD(v76) = 0;
  *(&v76 + 4) = __PAIR64__(LODWORD(v13), LODWORD(v11));
  *(&v76 + 3) = -v11;
  LODWORD(v77) = 0;
  do
  {
    *(&v75 + v32) = *(&v75 + v32) + *(&v75 + v32);
    v32 += 4;
  }

  while (v32 != 36);
  v61[0] = v75;
  v61[1] = v76;
  v62 = v77;
  v57 = *(a1 + 20);
  v58 = *(a1 + 28);
  v59 = *(a1 + 32);
  v60 = *(a1 + 40);
  v79 = 0u;
  memset(v80, 0, sizeof(v80));
  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  LODWORD(v70) = sub_19B66BFF4(&v64, 0);
  *(&v70 + 4) = __PAIR64__(v34, v33);
  HIDWORD(v70) = v35;
  sub_19B66D368(&v70, v73, 1.0);
  sub_19B790C9C(v73, &v75, 0);
  sub_19B66D368(a1, v73, 1.0);
  sub_19B790C9C(v73, &v75, 3);
  v36 = 0;
  LODWORD(v70) = 0;
  *(&v70 + 1) = v31;
  *(&v70 + 2) = -v29;
  *(&v70 + 3) = -v31;
  LODWORD(v71) = 0;
  *(&v71 + 4) = __PAIR64__(LODWORD(v29), LODWORD(v27));
  *(&v71 + 3) = -v27;
  v72 = 0;
  do
  {
    *(&v70 + v36) = *(&v70 + v36) + *(&v70 + v36);
    v36 += 4;
  }

  while (v36 != 36);
  v73[0] = v70;
  v73[1] = v71;
  v74 = v72;
  sub_19B790C9C(v73, &v75, 6);
  if ((atomic_load_explicit(qword_1ED71D7C0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(qword_1ED71D7C0))
  {
    xmmword_1ED71D7D0 = vdupq_n_s32(0x3D20D97Cu);
    unk_1ED71D7E0 = xmmword_19B7BDBF0;
    dword_1ED71D7F0 = 1040583314;
    __cxa_guard_release(qword_1ED71D7C0);
  }

  for (i = 0; i != 3; ++i)
  {
    v38 = sub_19B606FF4(&v75, i, 0) * *&xmmword_1ED71D7D0;
    *sub_19B5BC0F0(v73, i) = v38;
    for (j = 1; j != 9; ++j)
    {
      v40 = sub_19B606FF4(&v75, i, j);
      v41 = sub_19B600A78(&xmmword_1ED71D7D0, j);
      v42 = sub_19B5BC0F0(v73, i);
      *v42 = *v42 + (v40 * v41);
    }
  }

  v43 = 0;
  *&v70 = *&v73[0];
  DWORD2(v70) = DWORD2(v73[0]);
  do
  {
    v44 = sub_19B5D6144(&v70, v43);
    v45 = v44 * sub_19B5D6144(&v70, v43);
    *sub_19B5BC0F0(v73, v43++) = v45;
  }

  while (v43 != 3);
  *&v75 = *&v73[0];
  DWORD2(v75) = DWORD2(v73[0]);
  sub_19B61B9E0((a1 + 20), v61, &v75, v63);
  v49 = 0;
  *&v73[0] = __PAIR64__(LODWORD(v47), v46.u32[0]);
  *(v73 + 2) = v48;
  v50 = 0.0;
  do
  {
    v50 = v50 + (*(v73 + v49) * *(v73 + v49));
    v49 += 4;
  }

  while (v49 != 12);
  if ((sqrtf(v50) * 57.296) > 15.0)
  {
    *(a1 + 20) = v57;
    *(a1 + 28) = v58;
    *(a1 + 32) = v59;
    *(a1 + 40) = v60;
    __asm { FMOV            V2.2S, #16.0 }

    *&v70 = vmul_f32(*&v75, _D2);
    *(&v70 + 2) = *(&v75 + 2) * 16.0;
    sub_19B61B9E0((a1 + 20), v61, &v70, v63);
  }

  v56 = ((v15 * v48) + (v47 * v13)) + (v46.f32[0] * v11);
  *v73 = v46.f32[0] - (v11 * v56);
  *(v73 + 1) = v47 - (v13 * v56);
  v46.f32[0] = v48 - (v15 * v56);
  *(v73 + 2) = v46.f32[0];
  sub_19B790B84(a1, v73, v46);
}

void sub_19B7907BC(uint64_t a1, unint64_t a2, float32x2_t *a3, float *a4, float32x4_t a5)
{
  if (*(a1 + 16) == 1)
  {
    v72 = v10;
    v73 = v9;
    v74 = v8;
    v75 = v7;
    v76 = v5;
    v77 = v6;
    if (*(a1 + 3680) == *(a1 + 3678))
    {
      if (*(a1 + 3648) == 1)
      {
        sub_19B5BE7E0(a1 + 3648);
      }

      if (*(a1 + 3652) <= 0.017453)
      {
        v15 = *(a1 + 48);
        if (v15)
        {
          v16 = (a2 - v15) * 0.000001;
          a5.i32[0] = 0.25;
          if (v16 <= 0.25)
          {
            v17.f32[0] = sub_19B66BFF4(a3, a5);
            *&v67[0] = __PAIR64__(v18, v17.u32[0]);
            *(&v67[0] + 1) = __PAIR64__(v20, v19);
            v71.i32[0] = sub_19B66BF70(v67, (a1 + 3716), v17);
            *(v71.i64 + 4) = __PAIR64__(v22, v21);
            v71.i32[3] = v23;
            v24 = sub_19B66C31C(&v71) / v16;
            v26 = v25 / v16;
            v28 = v27 / v16;
            *v70 = v24;
            *&v70[1] = v26;
            *&v70[2] = v28;
            v29 = a2;
            v30 = a1 + 64;
            v31 = *(a1 + 56) + *(a1 + 58) - 1;
            v32 = *(a1 + 60);
            if (v31 < v32)
            {
              v32 = 0;
            }

            if ((*(v30 + 56 * (v31 - v32)) + 50000.0) >= v29)
            {
              v33 = *(v30 + 56 * *(a1 + 56));
              if (v33 < 0xC351 || (v33 + -50000.0) <= v29)
              {
                v34 = 0;
                v35 = 0.0;
                do
                {
                  v35 = v35 + (a4[v34] * a4[v34]);
                  ++v34;
                }

                while (v34 != 3);
                if (sqrtf(v35) >= 0.17453)
                {
                  v36 = 0;
                  v37 = 0.0;
                  do
                  {
                    v37 = v37 + (a4[v36] * a4[v36]);
                    ++v36;
                  }

                  while (v36 != 3);
                  v38 = 0;
                  v39 = sqrtf(v37) * 0.1;
                  v40 = 0.0;
                  do
                  {
                    v40 = v40 + (a4[v38] * a4[v38]);
                    ++v38;
                  }

                  while (v38 != 3);
                  v41 = 0;
                  v42 = 0.0;
                  do
                  {
                    v42 = v42 + (*&v70[v41] * *&v70[v41]);
                    ++v41;
                  }

                  while (v41 != 3);
                  if (v39 < 0.087266)
                  {
                    v39 = 0.087266;
                  }

                  if (vabds_f32(sqrtf(v40), sqrtf(v42)) <= v39)
                  {
                    v43 = sub_19B66C1A4(a1, *a4, a4[1], a4[2]);
                    v44 = 0;
                    v69[0] = v24 - v43;
                    v69[1] = v26 - v45;
                    v69[2] = v28 - v46;
                    *v65 = 0;
                    *&v65[4] = v46;
                    *&v65[8] = -v45;
                    *&v65[12] = -v46;
                    *&v65[16] = 0;
                    *&v65[20] = v43;
                    *&v65[24] = v45;
                    *&v65[28] = -v43;
                    v66 = 0;
                    do
                    {
                      *&v65[v44] = *&v65[v44] + *&v65[v44];
                      v44 += 4;
                    }

                    while (v44 != 36);
                    v67[0] = *v65;
                    v67[1] = *&v65[16];
                    v68 = v66;
                    v63 = vdup_n_s32(0x3E8C5E23u);
                    v64 = 0.27416;
                    *v65 = *(a1 + 20);
                    *&v65[8] = *(a1 + 28);
                    *&v65[12] = *(a1 + 32);
                    *&v65[20] = *(a1 + 40);
                    sub_19B61B9E0((a1 + 20), v67, &v63, v69);
                    v47 = 0;
                    v60 = v50.i32[0];
                    v61 = v48;
                    v62 = v49;
                    v50.i64[0] = 0;
                    do
                    {
                      v50.f32[0] = v50.f32[0] + (*(&v60 + v47) * *(&v60 + v47));
                      v47 += 4;
                    }

                    while (v47 != 12);
                    v50.f32[0] = sqrtf(v50.f32[0]) * 57.296;
                    if (v50.f32[0] > 15.0)
                    {
                      *(a1 + 20) = *v65;
                      *(a1 + 28) = *&v65[8];
                      *(a1 + 32) = *&v65[12];
                      *(a1 + 40) = *&v65[20];
                      __asm { FMOV            V2.2S, #16.0 }

                      v58 = vmul_f32(v63, _D2);
                      v59 = v64 * 16.0;
                      sub_19B61B9E0((a1 + 20), v67, &v58, v69);
                      v60 = v50.i32[0];
                      v61 = v56;
                      v62 = v57;
                    }

                    sub_19B790B84(a1, &v60, v50);
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

void sub_19B790B84(uint64_t a1, unsigned int *a2, float32x4_t a3)
{
  v4 = 0;
  v5 = *a2;
  v6 = a2[1];
  a3.i32[0] = a2[2];
  v20[0] = *a2;
  v20[1] = v6;
  v20[2] = a3.i32[0];
  v7 = 0.0;
  do
  {
    v7 = v7 + (*&v20[v4] * *&v20[v4]);
    ++v4;
  }

  while (v4 != 3);
  v8 = 0;
  v9 = 0.0;
  do
  {
    v9 = v9 + (*&v20[v8] * *&v20[v8]);
    ++v8;
  }

  while (v8 != 3);
  v10 = 1.0 - (sqrtf(v7) * sqrtf(v9));
  v11 = 0.0;
  if (v10 > 0.0)
  {
    for (i = 0; i != 3; ++i)
    {
      v11 = v11 + (*&v20[i] * *&v20[i]);
    }

    v13 = 0;
    v14 = 0.0;
    do
    {
      v14 = v14 + (*&v20[v13] * *&v20[v13]);
      ++v13;
    }

    while (v13 != 3);
    v11 = 1.0 - (sqrtf(v11) * sqrtf(v14));
  }

  v19.i64[0] = __PAIR64__(v6, v5);
  v19.i64[1] = __PAIR64__(COERCE_UNSIGNED_INT(sqrtf(v11)), a3.u32[0]);
  v15 = sub_19B41E130(&v19, a3);
  *a1 = sub_19B66BF70(&v19, a1, v15);
  *(a1 + 4) = v16;
  *(a1 + 8) = v17;
  *(a1 + 12) = v18;
}

float *sub_19B790C9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  for (i = 0; i != 3; ++i)
  {
    for (j = 0; j != 3; ++j)
    {
      v8 = sub_19B601068(a1, i, j);
      result = sub_19B6013F4(a2, i, a3 + j);
      *result = v8 + *result;
    }
  }

  return result;
}

os_log_t sub_19B790D2C()
{
  result = os_log_create("com.apple.locationd.Motion", "RelativeDeviceMotion");
  off_1EAFE29A0 = result;
  return result;
}

float sub_19B790D5C(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (a2 <= a3)
  {
    v3 = a3;
  }

  else
  {
    v3 = a2;
  }

  v4 = 0.0;
  if (v3 <= 2)
  {
    do
    {
      v8 = 1.0;
      v9 = 1.0;
      if (a3 != v3)
      {
        v9 = 0.0;
        if (v3 > a3)
        {
          v9 = sub_19B790E24(a1 + 12, a3, v3);
        }
      }

      if (a2 != v3)
      {
        v8 = 0.0;
        if (v3 > a2)
        {
          v8 = sub_19B790E24(a1 + 12, a2, v3);
        }
      }

      v4 = v4 + ((v8 * *(a1 + 4 * v3++)) * v9);
    }

    while (v3 != 3);
  }

  return v4;
}

float sub_19B790E24(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a3 <= a2)
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E28880);
    }

    v8 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      *buf = 134218240;
      v12 = a3;
      v13 = 2048;
      v14 = a2;
      _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_FAULT, "Assertion failed: col > row, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/Math/CMFactoredMatrix.h, line 232,invalid element %zu <= %zu.", buf, 0x16u);
    }

    v9 = sub_19B420058();
    if ((*(v9 + 160) & 0x80000000) == 0 || (*(v9 + 164) & 0x80000000) == 0 || (*(v9 + 168) & 0x80000000) == 0 || *(v9 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E28880);
      }

      v10 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "T CMFactoredMatrix<float, 3>::UnitaryUpperTriangularMatrix::operator()(size_t, size_t) const [T = float, N = 3]", "CoreLocation: %s\n", v10);
      if (v10 != buf)
      {
        free(v10);
      }
    }
  }

  result = *(a1 + 4 * (a2 + (((a3 - 1) * a3) >> 1)));
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_19B791024(unsigned __int16 *a1, unint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if (*(a1 + 1) <= a2)
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E28880);
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
        dispatch_once(&qword_1ED71C820, &unk_1F0E28880);
      }

      v12 = *(a1 + 1);
      v11 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "const T &CMQueue<CMHeadToHeadsetAttitudeEstimator::SrcAuxIMUDataPair>::operator[](const size_t) const [T = CMHeadToHeadsetAttitudeEstimator::SrcAuxIMUDataPair]", "CoreLocation: %s\n", v11);
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

uint64_t sub_19B7915DC()
{
  if (qword_1ED71D800 != -1)
  {
    dispatch_once(&qword_1ED71D800, &unk_1F0E2A660);
  }

  return qword_1ED71D7F8;
}

void sub_19B791624()
{
  v5 = *MEMORY[0x1E69E9840];
  if ((sub_19B421620() & 4) != 0)
  {
    operator new();
  }

  if (qword_1ED71C790 != -1)
  {
    dispatch_once(&qword_1ED71C790, &unk_1F0E28380);
  }

  v0 = qword_1ED71C798;
  if (os_log_type_enabled(qword_1ED71C798, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v0, OS_LOG_TYPE_DEFAULT, "#Warning Gesture service is not available on this platform", buf, 2u);
  }

  v1 = sub_19B420058();
  if (*(v1 + 160) > 1 || *(v1 + 164) > 1 || *(v1 + 168) > 1 || *(v1 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C790 != -1)
    {
      dispatch_once(&qword_1ED71C790, &unk_1F0E28380);
    }

    v2 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "static void CLGestureService::create()", "CoreLocation: %s\n", v2);
    if (v2 != buf)
    {
      free(v2);
    }
  }

  v3 = *MEMORY[0x1E69E9840];
}

void sub_19B791B00(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (qword_1ED71C8E0 != -1)
  {
    dispatch_once(&qword_1ED71C8E0, &unk_1F0E29BE0);
  }

  sub_19B42C428(qword_1ED71C8E8);
}

void sub_19B791BF4(uint64_t *a1)
{
  sub_19B792A80(a1);

  sub_19B791CD4(a1);
}

void *sub_19B791C2C(void *a1)
{
  *a1 = &unk_1F0E33050;
  v2 = a1[6];
  a1[5] = 0;
  a1[6] = 0;
  if (v2)
  {
    sub_19B41FFEC(v2);
    v3 = a1[6];
    if (v3)
    {
      sub_19B41FFEC(v3);
    }
  }

  return sub_19B674784(a1);
}

void sub_19B791C9C(void *a1)
{
  sub_19B791C2C(a1);

  JUMPOUT(0x19EAE76F0);
}

void sub_19B791CD4(uint64_t *a1)
{
  v73 = *MEMORY[0x1E69E9840];
  Current = CFRunLoopGetCurrent();
  sub_19B420D84();
  if (Current != *qword_1ED71C908)
  {
    if (qword_1ED71C790 != -1)
    {
      dispatch_once(&qword_1ED71C790, &unk_1F0E28380);
    }

    v3 = qword_1ED71C798;
    if (os_log_type_enabled(qword_1ED71C798, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_FAULT, "openHidDriverInterface should be called from motion thread", buf, 2u);
    }

    v4 = sub_19B420058();
    if ((*(v4 + 160) & 0x80000000) == 0 || (*(v4 + 164) & 0x80000000) == 0 || (*(v4 + 168) & 0x80000000) == 0 || *(v4 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C790 != -1)
      {
        dispatch_once(&qword_1ED71C790, &unk_1F0E28380);
      }

      LOWORD(v57) = 0;
      v5 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "void CLGestureService::openHidDriverInterface()", "CoreLocation: %s\n", v5);
      if (v5 != buf)
      {
        free(v5);
      }
    }

    v6 = sub_19B420D84();
    v52[0] = MEMORY[0x1E69E9820];
    v52[1] = 3221225472;
    v52[2] = sub_19B792A78;
    v52[3] = &unk_1E75327D8;
    v52[4] = a1;
    sub_19B420C9C(v6, v52);
    goto LABEL_14;
  }

  if (!a1[5])
  {
    goto LABEL_14;
  }

  if (qword_1ED71C790 != -1)
  {
    dispatch_once(&qword_1ED71C790, &unk_1F0E28380);
  }

  v8 = qword_1ED71C798;
  if (os_log_type_enabled(qword_1ED71C798, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_INFO, "Open hid driver interface", buf, 2u);
  }

  v9 = sub_19B420058();
  if (*(v9 + 160) > 1 || *(v9 + 164) > 1 || *(v9 + 168) > 1 || *(v9 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C790 != -1)
    {
      dispatch_once(&qword_1ED71C790, &unk_1F0E28380);
    }

    LOWORD(v57) = 0;
    v10 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CLGestureService::openHidDriverInterface()", "CoreLocation: %s\n", v10);
    if (v10 != buf)
    {
      free(v10);
    }
  }

  theInterface = 0;
  valuePtr = 0;
  v54 = 0;
  v11 = sub_19B43EE18(a1[5]);
  if (!v11)
  {
    if (qword_1ED71C790 != -1)
    {
      dispatch_once(&qword_1ED71C790, &unk_1F0E28380);
    }

    v28 = qword_1ED71C798;
    if (os_log_type_enabled(qword_1ED71C798, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v28, OS_LOG_TYPE_INFO, "IoHidDevice is not ready!", buf, 2u);
    }

    v29 = sub_19B420058();
    if (*(v29 + 160) <= 1 && *(v29 + 164) <= 1 && *(v29 + 168) <= 1 && !*(v29 + 152))
    {
      goto LABEL_14;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1ED71C790 != -1)
    {
      dispatch_once(&qword_1ED71C790, &unk_1F0E28380);
    }

    LOWORD(v57) = 0;
    v30 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CLGestureService::openHidDriverInterface()", "CoreLocation: %s\n");
LABEL_64:
    if (v30 != buf)
    {
      free(v30);
    }

    goto LABEL_14;
  }

  v12 = v11;
  RegistryID = IOHIDServiceClientGetRegistryID(v11);
  CFNumberGetValue(RegistryID, kCFNumberSInt64Type, &valuePtr);
  theScore = 0;
  v14 = *MEMORY[0x1E696CD60];
  v15 = IORegistryEntryIDMatching(valuePtr);
  MatchingService = IOServiceGetMatchingService(v14, v15);
  if (!MatchingService)
  {
    if (qword_1ED71C790 != -1)
    {
      dispatch_once(&qword_1ED71C790, &unk_1F0E28380);
    }

    v31 = qword_1ED71C798;
    if (os_log_type_enabled(qword_1ED71C798, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v31, OS_LOG_TYPE_FAULT, "Service doesn't exist", buf, 2u);
    }

    v32 = sub_19B420058();
    if ((*(v32 + 160) & 0x80000000) != 0 && (*(v32 + 164) & 0x80000000) != 0 && (*(v32 + 168) & 0x80000000) != 0 && !*(v32 + 152))
    {
      goto LABEL_14;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1ED71C790 != -1)
    {
      dispatch_once(&qword_1ED71C790, &unk_1F0E28380);
    }

    LOWORD(v57) = 0;
    v30 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 0, "void CLGestureService::openHidDriverInterface()", "CoreLocation: %s\n");
    goto LABEL_64;
  }

  v17 = MatchingService;
  v18 = *MEMORY[0x1E695E4A8];
  v19 = CFUUIDGetConstantUUIDWithBytes(*MEMORY[0x1E695E4A8], 0x3Bu, 0xC5u, 0xCCu, 0x87u, 0x84u, 0x5Eu, 0x48u, 0xABu, 0xA9u, 0xC2u, 0x94u, 0x36u, 0, 0x1Bu, 0xA6u, 0x8Au);
  v20 = CFUUIDGetConstantUUIDWithBytes(0, 0xC2u, 0x44u, 0xE8u, 0x58u, 0x10u, 0x9Cu, 0x11u, 0xD4u, 0x91u, 0xD4u, 0, 0x50u, 0xE4u, 0xC6u, 0x42u, 0x6Fu);
  v21 = IOCreatePlugInInterfaceForService(v17, v19, v20, &theInterface, &theScore);
  if (v21)
  {
    v22 = v21;
    if (qword_1ED71C790 != -1)
    {
      dispatch_once(&qword_1ED71C790, &unk_1F0E28380);
    }

    v23 = qword_1ED71C798;
    if (os_log_type_enabled(qword_1ED71C798, OS_LOG_TYPE_FAULT))
    {
      v24 = mach_error_string(v22);
      *buf = 136315138;
      *v66 = v24;
      _os_log_impl(&dword_19B41C000, v23, OS_LOG_TYPE_FAULT, "Unable to create plugin interface %s", buf, 0xCu);
    }

    v25 = sub_19B420058();
    if ((*(v25 + 160) & 0x80000000) == 0 || (*(v25 + 164) & 0x80000000) == 0 || (*(v25 + 168) & 0x80000000) == 0 || *(v25 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C790 != -1)
      {
        dispatch_once(&qword_1ED71C790, &unk_1F0E28380);
      }

      v26 = mach_error_string(v22);
      v57 = 136315138;
      *v58 = v26;
      v27 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "void CLGestureService::openHidDriverInterface()", "CoreLocation: %s\n", v27);
      if (v27 != buf)
      {
        free(v27);
      }
    }

    IOObjectRelease(v17);
    goto LABEL_14;
  }

  IOObjectRelease(v17);
  v33 = theInterface;
  QueryInterface = (*theInterface)->QueryInterface;
  v35 = CFUUIDGetConstantUUIDWithBytes(v18, 0x6Eu, 0xBEu, 0xBAu, 0x6Eu, 9u, 0x1Eu, 0x45u, 0x2Eu, 0x82u, 0xEAu, 0x29u, 0x79u, 0x81u, 0x6Fu, 0xB1u, 0xB5u);
  v36 = CFUUIDGetUUIDBytes(v35);
  if ((QueryInterface)(v33, *&v36.byte0, *&v36.byte8, &v54))
  {
    if (qword_1ED71C790 != -1)
    {
      dispatch_once(&qword_1ED71C790, &unk_1F0E28380);
    }

    v37 = qword_1ED71C798;
    if (os_log_type_enabled(qword_1ED71C798, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v37, OS_LOG_TYPE_FAULT, "Unable to set up query interface", buf, 2u);
    }

    v38 = sub_19B420058();
    if ((*(v38 + 160) & 0x80000000) == 0 || (*(v38 + 164) & 0x80000000) == 0 || (*(v38 + 168) & 0x80000000) == 0 || *(v38 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C790 != -1)
      {
        dispatch_once(&qword_1ED71C790, &unk_1F0E28380);
      }

      LOWORD(v57) = 0;
      v39 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "void CLGestureService::openHidDriverInterface()", "CoreLocation: %s\n", v39);
      if (v39 != buf)
      {
        free(v39);
      }
    }

LABEL_94:
    if (theInterface)
    {
      ((*theInterface)->Release)(theInterface);
      IODestroyPlugInInterface(theInterface);
    }

    goto LABEL_14;
  }

  if ((*(*v54 + 64))(v54, 0))
  {
    if (qword_1ED71C790 != -1)
    {
      dispatch_once(&qword_1ED71C790, &unk_1F0E28380);
    }

    v40 = qword_1ED71C798;
    if (os_log_type_enabled(qword_1ED71C798, OS_LOG_TYPE_FAULT))
    {
      *buf = 67240450;
      *v66 = 0;
      *&v66[4] = 2114;
      *&v66[6] = v12;
      _os_log_impl(&dword_19B41C000, v40, OS_LOG_TYPE_FAULT, "Unable to create plugin interface: kr:%{public}x service:%{public}@", buf, 0x12u);
    }

    v41 = sub_19B420058();
    if ((*(v41 + 160) & 0x80000000) == 0 || (*(v41 + 164) & 0x80000000) == 0 || (*(v41 + 168) & 0x80000000) == 0 || *(v41 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C790 != -1)
      {
        dispatch_once(&qword_1ED71C790, &unk_1F0E28380);
      }

      v57 = 67240450;
      *v58 = 0;
      *&v58[4] = 2114;
      *&v58[6] = v12;
      v42 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "void CLGestureService::openHidDriverInterface()", "CoreLocation: %s\n", v42);
      if (v42 != buf)
      {
        free(v42);
      }
    }

    if (v54)
    {
      (*(*v54 + 72))(v54, 0);
    }

    goto LABEL_94;
  }

  if (qword_1ED71C790 != -1)
  {
    dispatch_once(&qword_1ED71C790, &unk_1F0E28380);
  }

  v43 = qword_1ED71C798;
  if (os_log_type_enabled(qword_1ED71C798, OS_LOG_TYPE_INFO))
  {
    v44 = a1[7];
    v45 = a1[8];
    *buf = 134219008;
    *v66 = valuePtr;
    *&v66[8] = 2048;
    *&v66[10] = v44;
    v67 = 2048;
    v68 = v45;
    v69 = 2048;
    v70 = theInterface;
    v71 = 2048;
    v72 = v54;
    _os_log_impl(&dword_19B41C000, v43, OS_LOG_TYPE_INFO, "Opened hid driver interface, registryID %llx, {cfPlugInInterface, hidDriverInterface} was then {%p,%p}, is now {%p,%p}", buf, 0x34u);
  }

  v46 = sub_19B420058();
  if (*(v46 + 160) > 1 || *(v46 + 164) > 1 || *(v46 + 168) > 1 || *(v46 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C790 != -1)
    {
      dispatch_once(&qword_1ED71C790, &unk_1F0E28380);
    }

    v47 = a1[7];
    v48 = a1[8];
    v57 = 134219008;
    *v58 = valuePtr;
    *&v58[8] = 2048;
    *&v58[10] = v47;
    v59 = 2048;
    v60 = v48;
    v61 = 2048;
    v62 = theInterface;
    v63 = 2048;
    v64 = v54;
    v49 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CLGestureService::openHidDriverInterface()", "CoreLocation: %s\n", v49);
    if (v49 != buf)
    {
      free(v49);
    }
  }

  v50 = theInterface;
  *(a1[5] + 8) = valuePtr;
  v51 = v54;
  a1[7] = v50;
  a1[8] = v51;
LABEL_14:
  v7 = *MEMORY[0x1E69E9840];
}

void sub_19B792A80(void *a1)
{
  v39 = *MEMORY[0x1E69E9840];
  if (qword_1ED71C790 != -1)
  {
    dispatch_once(&qword_1ED71C790, &unk_1F0E28380);
  }

  v2 = qword_1ED71C798;
  if (os_log_type_enabled(qword_1ED71C798, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v2, OS_LOG_TYPE_INFO, "Close hid driver interface", buf, 2u);
  }

  v3 = sub_19B420058();
  if (*(v3 + 160) > 1 || *(v3 + 164) > 1 || *(v3 + 168) > 1 || *(v3 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C790 != -1)
    {
      dispatch_once(&qword_1ED71C790, &unk_1F0E28380);
    }

    LOWORD(v23) = 0;
    v4 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CLGestureService::closeHidDriverInterface()", "CoreLocation: %s\n", v4);
    if (v4 != buf)
    {
      free(v4);
    }
  }

  Current = CFRunLoopGetCurrent();
  sub_19B420D84();
  if (Current != *qword_1ED71C908)
  {
    if (qword_1ED71C790 != -1)
    {
      dispatch_once(&qword_1ED71C790, &unk_1F0E28380);
    }

    v6 = qword_1ED71C798;
    if (os_log_type_enabled(qword_1ED71C798, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_FAULT, "closeHidDriverInterface should be called from motion thread", buf, 2u);
    }

    v7 = sub_19B420058();
    if ((*(v7 + 160) & 0x80000000) == 0 || (*(v7 + 164) & 0x80000000) == 0 || (*(v7 + 168) & 0x80000000) == 0 || *(v7 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C790 != -1)
      {
        dispatch_once(&qword_1ED71C790, &unk_1F0E28380);
      }

      LOWORD(v23) = 0;
      v8 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "void CLGestureService::closeHidDriverInterface()", "CoreLocation: %s\n", v8);
      if (v8 != buf)
      {
        free(v8);
      }
    }

    v9 = sub_19B420D84();
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = sub_19B792FE8;
    v22[3] = &unk_1E75327D8;
    v22[4] = a1;
    sub_19B420C9C(v9, v22);
    goto LABEL_26;
  }

  v11 = a1[5];
  if (!v11)
  {
    goto LABEL_26;
  }

  v12 = a1[7];
  v13 = a1[8];
  v14 = a1 + 7;
  if (v13)
  {
    (*(*v13 + 72))(a1[8], 0);
    if (!v12)
    {
      goto LABEL_33;
    }
  }

  else if (!v12)
  {
    *(v11 + 8) = 0;
    *v14 = 0;
    a1[8] = 0;
    goto LABEL_26;
  }

  ((*v12)->Release)(v12);
  IODestroyPlugInInterface(v12);
LABEL_33:
  *(a1[5] + 8) = 0;
  *v14 = 0;
  a1[8] = 0;
  if (qword_1ED71C790 != -1)
  {
    dispatch_once(&qword_1ED71C790, &unk_1F0E28380);
  }

  v15 = qword_1ED71C798;
  if (os_log_type_enabled(qword_1ED71C798, OS_LOG_TYPE_INFO))
  {
    v16 = a1[7];
    v17 = a1[8];
    *buf = 134218752;
    v32 = v12;
    v33 = 2048;
    v34 = v13;
    v35 = 2048;
    v36 = v16;
    v37 = 2048;
    v38 = v17;
    _os_log_impl(&dword_19B41C000, v15, OS_LOG_TYPE_INFO, "Closed hid driver interface, {cfPlugInInterface, hidDriverInterface} was then {%p,%p}, is now {%p,%p}", buf, 0x2Au);
  }

  v18 = sub_19B420058();
  if (*(v18 + 160) > 1 || *(v18 + 164) > 1 || *(v18 + 168) > 1 || *(v18 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C790 != -1)
    {
      dispatch_once(&qword_1ED71C790, &unk_1F0E28380);
    }

    v19 = a1[7];
    v20 = a1[8];
    v23 = 134218752;
    v24 = v12;
    v25 = 2048;
    v26 = v13;
    v27 = 2048;
    v28 = v19;
    v29 = 2048;
    v30 = v20;
    v21 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CLGestureService::closeHidDriverInterface()", "CoreLocation: %s\n", v21);
    if (v21 != buf)
    {
      free(v21);
    }
  }

LABEL_26:
  v10 = *MEMORY[0x1E69E9840];
}

void sub_19B792FF0(uint64_t a1)
{
  v2 = sub_19B420D84();
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_19B79306C;
  v3[3] = &unk_1E75327D8;
  v3[4] = a1;
  sub_19B420C9C(v2, v3);
}

void sub_19B79306C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 36);
  *(v1 + 36) = v2 + 1;
  if (!v2)
  {
    if (sub_19B43EE18(*(v1 + 40)))
    {
      sub_19B792A80(v1);
    }

    sub_19B791CD4(v1);
  }
}

void sub_19B7930D0(uint64_t a1)
{
  v2 = sub_19B420D84();
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_19B79314C;
  v3[3] = &unk_1E75327D8;
  v3[4] = a1;
  sub_19B420C9C(v2, v3);
}

void sub_19B79314C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 36) - 1;
  *(v1 + 36) = v2;
  if (!v2 && sub_19B43EE18(*(v1 + 40)))
  {

    sub_19B792A80(v1);
  }
}

BOOL sub_19B7931A8(NSObject *a1, uint64_t a2, uint64_t a3)
{
  v35 = *MEMORY[0x1E69E9840];
  if ((sub_19B421620() & 4) == 0)
  {
    if (qword_1ED71C790 != -1)
    {
      dispatch_once(&qword_1ED71C790, &unk_1F0E28380);
    }

    v21 = qword_1ED71C798;
    p_vtable = "";
    v8 = "isGestureServiceAvailable()";
    if (os_log_type_enabled(qword_1ED71C798, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      *v30 = 0;
      *&v30[4] = 2082;
      *&v30[6] = "";
      v31 = 2082;
      v32 = "assert";
      v33 = 2081;
      v34 = "isGestureServiceAvailable()";
      _os_log_impl(&dword_19B41C000, v21, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Service required to send gesture command, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED71C790 != -1)
      {
        dispatch_once(&qword_1ED71C790, &unk_1F0E28380);
      }
    }

    v22 = qword_1ED71C798;
    if (os_signpost_enabled(qword_1ED71C798))
    {
      *buf = 68289539;
      *v30 = 0;
      *&v30[4] = 2082;
      *&v30[6] = "";
      v31 = 2082;
      v32 = "assert";
      v33 = 2081;
      v34 = "isGestureServiceAvailable()";
      _os_signpost_emit_with_name_impl(&dword_19B41C000, v22, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Service required to send gesture command", "{msg%{public}.0s:Service required to send gesture command, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED71C790 != -1)
      {
        dispatch_once(&qword_1ED71C790, &unk_1F0E28380);
      }
    }

    a1 = qword_1ED71C798;
    if (os_log_type_enabled(qword_1ED71C798, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      *v30 = 0;
      *&v30[4] = 2082;
      *&v30[6] = "";
      v31 = 2082;
      v32 = "assert";
      v33 = 2081;
      v34 = "isGestureServiceAvailable()";
      _os_log_impl(&dword_19B41C000, a1, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Service required to send gesture command, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
LABEL_47:
    dispatch_once(&qword_1ED71C790, &unk_1F0E28380);
LABEL_5:
    v10 = qword_1ED71C798;
    if (os_log_type_enabled(qword_1ED71C798, OS_LOG_TYPE_FAULT))
    {
      v11 = mach_error_string(v8);
      *buf = 136315394;
      *v30 = v11;
      *&v30[8] = 1024;
      *&v30[10] = v8;
      _os_log_impl(&dword_19B41C000, v10, OS_LOG_TYPE_FAULT, "sendGestureServiceCommand() = %s (0x%x)", buf, 0x12u);
    }

    v12 = sub_19B420058();
    if ((*(v12 + 160) & 0x80000000) != 0 && (*(v12 + 164) & 0x80000000) != 0 && (*(v12 + 168) & 0x80000000) != 0 && !*(v12 + 152))
    {
      goto LABEL_26;
    }

    bzero(buf, 0x65CuLL);
    if (p_vtable[242] != -1)
    {
      dispatch_once(&qword_1ED71C790, &unk_1F0E28380);
    }

    v13 = mach_error_string(v8);
    v25 = 136315394;
    v26 = v13;
    v27 = 1024;
    v28 = v8;
    v14 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 0, "BOOL CLGestureService::sendGestureServiceCommand(const void *, size_t)", "CoreLocation: %s\n", v14);
    if (v14 == buf)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  sub_19B792FF0(a1);
  isa = a1[8].isa;
  if (!isa)
  {
    if (qword_1ED71C790 != -1)
    {
      dispatch_once(&qword_1ED71C790, &unk_1F0E28380);
    }

    v15 = qword_1ED71C798;
    if (os_log_type_enabled(qword_1ED71C798, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v15, OS_LOG_TYPE_INFO, "gestureHidDriverInterface NULL", buf, 2u);
    }

    v16 = sub_19B420058();
    if (*(v16 + 160) <= 1 && *(v16 + 164) <= 1 && *(v16 + 168) <= 1 && !*(v16 + 152))
    {
      goto LABEL_26;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1ED71C790 != -1)
    {
      dispatch_once(&qword_1ED71C790, &unk_1F0E28380);
    }

    LOWORD(v25) = 0;
    v14 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "BOOL CLGestureService::sendGestureServiceCommand(const void *, size_t)", "CoreLocation: %s\n", v14);
    if (v14 == buf)
    {
      goto LABEL_26;
    }

LABEL_25:
    free(v14);
LABEL_26:
    v17 = 0;
    goto LABEL_33;
  }

  v24 = 0;
  v23 = 4;
  v7 = (*(*isa + 80))(isa, a2, a3, &v24, &v23);
  if (v7)
  {
    LODWORD(v8) = v7;
    p_vtable = CMDeviceOrientationManager.vtable;
    if (qword_1ED71C790 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_47;
  }

  v17 = v23 == 4 && v24 != 0;
LABEL_33:
  sub_19B7930D0(a1);
  v19 = *MEMORY[0x1E69E9840];
  return v17;
}

BOOL sub_19B79374C(uint64_t a1, int a2, int a3)
{
  v7 = 5;
  BYTE1(v7) = a2;
  BYTE2(v7) = a3;
  result = sub_19B7931A8(a1, &v7, 4);
  if (a2 == 8 && result)
  {
    *(a1 + 32) = a3 != 0;
  }

  return result;
}

void sub_19B7937B8(uint64_t a1, int a2, uint64_t a3)
{
  v16 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if (qword_1ED71C790 != -1)
    {
      dispatch_once(&qword_1ED71C790, &unk_1F0E28380);
    }

    v5 = qword_1ED71C798;
    if (os_log_type_enabled(qword_1ED71C798, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v9 = 0;
      v10 = 2082;
      v11 = "";
      v12 = 2082;
      v13 = "assert";
      v14 = 2081;
      v15 = "notification == kNotificationGestureReport";
      _os_log_impl(&dword_19B41C000, v5, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED71C790 != -1)
      {
        dispatch_once(&qword_1ED71C790, &unk_1F0E28380);
      }
    }

    v6 = qword_1ED71C798;
    if (os_signpost_enabled(qword_1ED71C798))
    {
      *buf = 68289539;
      v9 = 0;
      v10 = 2082;
      v11 = "";
      v12 = 2082;
      v13 = "assert";
      v14 = 2081;
      v15 = "notification == kNotificationGestureReport";
      _os_signpost_emit_with_name_impl(&dword_19B41C000, v6, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Assertion failed", "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED71C790 != -1)
      {
        dispatch_once(&qword_1ED71C790, &unk_1F0E28380);
      }
    }

    v7 = qword_1ED71C798;
    if (os_log_type_enabled(qword_1ED71C798, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v9 = 0;
      v10 = 2082;
      v11 = "";
      v12 = 2082;
      v13 = "assert";
      v14 = 2081;
      v15 = "notification == kNotificationGestureReport";
      _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
  }

  if (a3)
  {
    v3 = *MEMORY[0x1E69E9840];

    sub_19B792FF0(a1);
  }

  else
  {
    v4 = *MEMORY[0x1E69E9840];

    sub_19B7930D0(a1);
  }
}

os_log_t sub_19B793A70()
{
  result = os_log_create("com.apple.locationd.Motion", "WakeGesture");
  qword_1ED71C798 = result;
  return result;
}

os_log_t sub_19B793AA0()
{
  result = os_log_create("com.apple.locationd.Motion", "AOP");
  qword_1EAFE2838 = result;
  return result;
}

os_log_t sub_19B793AD0()
{
  result = os_log_create("com.apple.locationd.Motion", "Oversize");
  qword_1EAFE2A10 = result;
  return result;
}

uint64_t sub_19B793B00()
{
  if (qword_1ED71D810 != -1)
  {
    dispatch_once(&qword_1ED71D810, &unk_1F0E2A680);
  }

  return qword_1ED71D808;
}

void sub_19B793C08(void *a1)
{
  sub_19B74FAE8(a1);

  JUMPOUT(0x19EAE76F0);
}

void sub_19B793C40(uint64_t a1, int a2, double *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E287E0);
    }

    v4 = qword_1ED71C7C8;
    if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_FAULT))
    {
      *buf = 67240192;
      LODWORD(v24) = a2;
      _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_FAULT, "[AccessoryGyro] Unrecognized update interval notification %{public}d", buf, 8u);
    }

    v5 = sub_19B420058();
    if ((*(v5 + 160) & 0x80000000) == 0 || (*(v5 + 164) & 0x80000000) == 0 || (*(v5 + 168) & 0x80000000) == 0 || *(v5 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7B8 != -1)
      {
        dispatch_once(&qword_1ED71C7B8, &unk_1F0E287E0);
      }

      v6 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "virtual CFTimeInterval CLAccessoryGyro::minimumUpdateIntervalChanged(int, const CFTimeInterval &)", "CoreLocation: %s\n", v6);
      if (v6 != buf)
      {
        free(v6);
      }
    }
  }

  else
  {
    sub_19B750AC4(a1);
    v9 = *a3;
    if (*a3 > 0.0)
    {
      v10 = *(**(a1 + 32) + 16);
      if (*(a1 + 28) == 1)
      {
        v10(v9);
        (*(**(a1 + 32) + 16))(*(a1 + 32), @"MaxFIFOEvents", &unk_1F0E6A6F0);
      }

      else
      {
        v10(v9);
        v11 = *(a1 + 32);
        v13 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x1E696AD98], v12, *(a1 + 84));
        (*(*v11 + 16))(v11, @"MaxFIFOEvents", v13);
      }

      *(a1 + 29) = 0;
    }

    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E287E0);
    }

    v14 = qword_1ED71C7C8;
    if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_INFO))
    {
      v15 = *a3;
      *buf = 134349056;
      v24 = v15;
      _os_log_impl(&dword_19B41C000, v14, OS_LOG_TYPE_INFO, "[AccessoryGyro] Setting update interval to %{public}f", buf, 0xCu);
    }

    v16 = sub_19B420058();
    if (*(v16 + 160) > 1 || *(v16 + 164) > 1 || *(v16 + 168) > 1 || *(v16 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7B8 != -1)
      {
        dispatch_once(&qword_1ED71C7B8, &unk_1F0E287E0);
      }

      v22 = *a3;
      v17 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "virtual CFTimeInterval CLAccessoryGyro::minimumUpdateIntervalChanged(int, const CFTimeInterval &)", "CoreLocation: %s\n", v17);
      if (v17 != buf)
      {
        free(v17);
      }
    }

    v18 = rint(*a3 * 1000000.0);
    if (*a3 < 0.0)
    {
      v19 = 0;
    }

    else
    {
      v19 = v18;
    }

    sub_19B4238F4(*(a1 + 32), v19);
    v20 = *a3;
  }

  v21 = *MEMORY[0x1E69E9840];
}

void sub_19B794094(uint64_t a1, int a2, double *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E287E0);
    }

    v4 = qword_1ED71C7C8;
    if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_FAULT))
    {
      *buf = 67240192;
      LODWORD(v17) = a2;
      _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_FAULT, "[AccessoryGyro] Unrecognized batch interval notification %{public}d", buf, 8u);
    }

    v5 = sub_19B420058();
    if ((*(v5 + 160) & 0x80000000) == 0 || (*(v5 + 164) & 0x80000000) == 0 || (*(v5 + 168) & 0x80000000) == 0 || *(v5 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7B8 != -1)
      {
        dispatch_once(&qword_1ED71C7B8, &unk_1F0E287E0);
      }

      v6 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "virtual CFTimeInterval CLAccessoryGyro::minimumBatchIntervalChanged(int, const CFTimeInterval &)", "CoreLocation: %s\n", v6);
      if (v6 != buf)
      {
        free(v6);
      }
    }
  }

  else
  {
    sub_19B750AC4(a1);
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E287E0);
    }

    v9 = qword_1ED71C7C8;
    if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_INFO))
    {
      v10 = *a3;
      *buf = 134349056;
      v17 = v10;
      _os_log_impl(&dword_19B41C000, v9, OS_LOG_TYPE_INFO, "[AccessoryGyro] Setting batch interval to %{public}f", buf, 0xCu);
    }

    v11 = sub_19B420058();
    if (*(v11 + 160) > 1 || *(v11 + 164) > 1 || *(v11 + 168) > 1 || *(v11 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7B8 != -1)
      {
        dispatch_once(&qword_1ED71C7B8, &unk_1F0E287E0);
      }

      v15 = *a3;
      v12 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "virtual CFTimeInterval CLAccessoryGyro::minimumBatchIntervalChanged(int, const CFTimeInterval &)", "CoreLocation: %s\n", v12);
      if (v12 != buf)
      {
        free(v12);
      }
    }

    sub_19B424A2C(*(a1 + 32), *a3);
    v13 = *a3;
  }

  v14 = *MEMORY[0x1E69E9840];
}

void sub_19B7943EC(uint64_t a1)
{
  v56 = *MEMORY[0x1E69E9840];
  if (IOHIDEventGetType() == 20)
  {
    IOHIDEventGetFloatValue();
    v3 = v2;
    v25 = v3;
    IOHIDEventGetFloatValue();
    v5 = v4;
    v26 = v5;
    IOHIDEventGetFloatValue();
    v7 = v6;
    v27 = v7;
    TimeStamp = IOHIDEventGetTimeStamp();
    v9 = sub_19B41E070(TimeStamp);
    v24 = v9;
    IntegerValue = IOHIDEventGetIntegerValue();
    v29 = IntegerValue;
    v11 = sub_19B794CA4();
    v28 = v11;
    v12 = *(a1 + 88);
    v30 = v12;
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E287E0);
    }

    v13 = qword_1ED71C7C8;
    if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67241728;
      v38 = IntegerValue;
      v39 = 2050;
      v40 = v3;
      v41 = 2050;
      v42 = v5;
      v43 = 2050;
      v44 = v7;
      v45 = 2050;
      v46 = v12;
      v47 = 2050;
      v48 = v11;
      v49 = 2050;
      v50 = v9;
      _os_log_impl(&dword_19B41C000, v13, OS_LOG_TYPE_DEBUG, "[AccessoryGyro] seq,%{public}d,x,%{public}20.20f,y,%{public}20.20f,z,%{public}20.20f,temp,%{public}20.20f,sensorTime,%{public}llu,timestamp,%{public}20.20f", buf, 0x44u);
    }

    v14 = sub_19B420058();
    if (*(v14 + 160) > 1 || *(v14 + 164) > 1 || *(v14 + 168) > 1 || *(v14 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7B8 != -1)
      {
        dispatch_once(&qword_1ED71C7B8, &unk_1F0E287E0);
      }

      v51 = 67241728;
      LODWORD(v52[0]) = IntegerValue;
      WORD2(v52[0]) = 2050;
      *(v52 + 6) = v3;
      HIWORD(v52[0]) = 2050;
      *&v52[1] = v5;
      WORD4(v52[1]) = 2050;
      *(&v52[1] + 10) = v7;
      WORD1(v52[2]) = 2050;
      *(&v52[2] + 4) = v12;
      WORD6(v52[2]) = 2050;
      *(&v52[2] + 14) = v11;
      WORD3(v52[3]) = 2050;
      *(&v52[3] + 1) = v9;
      v15 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLAccessoryGyro::onEventData(void *, void *, IOHIDEventRef)", "CoreLocation: %s\n", v15);
      if (v15 != buf)
      {
        free(v15);
      }
    }

    sub_19B41DF08(a1, 0, &v24, 40);
    if ((*(a1 + 29) & 1) == 0)
    {
      v52[0] = xmmword_19B7BDC42;
      memset(&v52[1], 0, 48);
      v53[0] = xmmword_19B7BDC82;
      *(a1 + 29) = 1;
      v53[1] = unk_19B7BDC92;
      v51 = 0;
      v54 = 0;
      v55 = 0;
      if (sub_19B74FCD0(a1, &v51))
      {
        if (qword_1ED71C7B8 != -1)
        {
          dispatch_once(&qword_1ED71C7B8, &unk_1F0E287E0);
        }

        v16 = qword_1ED71C7C8;
        if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_DEBUG))
        {
          *buf = 67240707;
          v38 = v51;
          v39 = 2081;
          v40 = COERCE_DOUBLE(v52);
          v41 = 2081;
          v42 = COERCE_DOUBLE(v53);
          _os_log_impl(&dword_19B41C000, v16, OS_LOG_TYPE_DEBUG, "[AccessoryGyro] config,side,%{public}d,configuration,%{private}s,serialNumber,%{private}s", buf, 0x1Cu);
        }

        v17 = sub_19B420058();
        if (*(v17 + 160) > 1 || *(v17 + 164) > 1 || *(v17 + 168) > 1 || *(v17 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1ED71C7B8 != -1)
          {
            dispatch_once(&qword_1ED71C7B8, &unk_1F0E287E0);
          }

          v31 = 67240707;
          v32 = v51;
          v33 = 2081;
          v34 = v52;
          v35 = 2081;
          v36 = v53;
          v18 = _os_log_send_and_compose_impl();
          sub_19B6BB7CC("Generic", 1, 0, 2, "void CLAccessoryGyro::onGyroData(const Sample &)", "CoreLocation: %s\n", v18);
          if (v18 != buf)
          {
            free(v18);
          }
        }

        sub_19B41DF08(a1, 1, &v51, 108);
      }

      else
      {
        if (qword_1ED71C7B8 != -1)
        {
          dispatch_once(&qword_1ED71C7B8, &unk_1F0E287E0);
        }

        v20 = qword_1ED71C7C8;
        if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_19B41C000, v20, OS_LOG_TYPE_FAULT, "[AccessoryGyro] Service not found!", buf, 2u);
        }

        v21 = sub_19B420058();
        if ((*(v21 + 160) & 0x80000000) == 0 || (*(v21 + 164) & 0x80000000) == 0 || (*(v21 + 168) & 0x80000000) == 0 || *(v21 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1ED71C7B8 != -1)
          {
            dispatch_once(&qword_1ED71C7B8, &unk_1F0E287E0);
          }

          LOWORD(v31) = 0;
          v22 = _os_log_send_and_compose_impl();
          sub_19B6BB7CC("Generic", 1, 0, 0, "void CLAccessoryGyro::onGyroData(const Sample &)", "CoreLocation: %s\n", v22);
          if (v22 != buf)
          {
            free(v22);
          }
        }
      }
    }
  }

  else if (IOHIDEventGetType() == 15)
  {
    IOHIDEventGetFloatValue();
    *&v19 = v19;
    *(a1 + 88) = LODWORD(v19);
  }

  v23 = *MEMORY[0x1E69E9840];
}

os_log_t sub_19B794A80()
{
  result = os_log_create("com.apple.locationd.Motion", "Accessory");
  qword_1ED71C7C8 = result;
  return result;
}

uint64_t sub_19B794CA4()
{
  v26 = *MEMORY[0x1E69E9840];
  Children = IOHIDEventGetChildren();
  if (!Children || (v1 = Children, !CFArrayGetCount(Children)))
  {
    if (qword_1EAFE2890 != -1)
    {
      dispatch_once(&qword_1EAFE2890, &unk_1F0E2A6A0);
    }

    v6 = qword_1EAFE2898;
    if (os_log_type_enabled(qword_1EAFE2898, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_FAULT, "Event has no children", buf, 2u);
    }

    v7 = sub_19B420058();
    if ((*(v7 + 160) & 0x80000000) != 0 && (*(v7 + 164) & 0x80000000) != 0 && (*(v7 + 168) & 0x80000000) != 0 && !*(v7 + 152))
    {
      goto LABEL_27;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2890 == -1)
    {
      goto LABEL_25;
    }

    goto LABEL_56;
  }

  CFArrayGetValueAtIndex(v1, 0);
  IntegerValue = IOHIDEventGetIntegerValue();
  if (IOHIDEventGetIntegerValue() != 65301 || IntegerValue != 2)
  {
    if (qword_1EAFE2890 != -1)
    {
      dispatch_once(&qword_1EAFE2890, &unk_1F0E2A6A0);
    }

    v8 = qword_1EAFE2898;
    if (os_log_type_enabled(qword_1EAFE2898, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_FAULT, "Event has no timestamp", buf, 2u);
    }

    v9 = sub_19B420058();
    if ((*(v9 + 160) & 0x80000000) != 0 && (*(v9 + 164) & 0x80000000) != 0 && (*(v9 + 168) & 0x80000000) != 0 && !*(v9 + 152))
    {
      goto LABEL_27;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2890 == -1)
    {
LABEL_25:
      v10 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "uint64_t sensorTimeFromHidChildEvent(IOHIDEventRef)", "CoreLocation: %s\n", v10);
      if (v10 != buf)
      {
        free(v10);
      }

LABEL_27:
      result = 0;
      goto LABEL_28;
    }

LABEL_56:
    dispatch_once(&qword_1EAFE2890, &unk_1F0E2A6A0);
    goto LABEL_25;
  }

  DataValue = IOHIDEventGetDataValue();
  v4 = IOHIDEventGetIntegerValue();
  if (!DataValue)
  {
    if (qword_1EAFE2890 != -1)
    {
      dispatch_once(&qword_1EAFE2890, &unk_1F0E2A6A0);
    }

    v12 = qword_1EAFE2898;
    if (os_log_type_enabled(qword_1EAFE2898, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v19 = 0;
      v20 = 2082;
      v21 = "";
      v22 = 2082;
      v23 = "assert";
      v24 = 2081;
      v25 = "payload";
      _os_log_impl(&dword_19B41C000, v12, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Invalid child event payload!, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1EAFE2890 != -1)
      {
        dispatch_once(&qword_1EAFE2890, &unk_1F0E2A6A0);
      }
    }

    v13 = qword_1EAFE2898;
    if (os_signpost_enabled(qword_1EAFE2898))
    {
      *buf = 68289539;
      v19 = 0;
      v20 = 2082;
      v21 = "";
      v22 = 2082;
      v23 = "assert";
      v24 = 2081;
      v25 = "payload";
      _os_signpost_emit_with_name_impl(&dword_19B41C000, v13, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Invalid child event payload!", "{msg%{public}.0s:Invalid child event payload!, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1EAFE2890 != -1)
      {
        dispatch_once(&qword_1EAFE2890, &unk_1F0E2A6A0);
      }
    }

    v14 = qword_1EAFE2898;
    if (os_log_type_enabled(qword_1EAFE2898, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v19 = 0;
      v20 = 2082;
      v21 = "";
      v22 = 2082;
      v23 = "assert";
      v24 = 2081;
      v25 = "payload";
      _os_log_impl(&dword_19B41C000, v14, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Invalid child event payload!, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    goto LABEL_55;
  }

  if (v4 != 8)
  {
    if (qword_1EAFE2890 != -1)
    {
      dispatch_once(&qword_1EAFE2890, &unk_1F0E2A6A0);
    }

    v15 = qword_1EAFE2898;
    if (os_log_type_enabled(qword_1EAFE2898, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v19 = 0;
      v20 = 2082;
      v21 = "";
      v22 = 2082;
      v23 = "assert";
      v24 = 2081;
      v25 = "length == sensorTimeSize";
      _os_log_impl(&dword_19B41C000, v15, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Unexpected sensor time length!, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1EAFE2890 != -1)
      {
        dispatch_once(&qword_1EAFE2890, &unk_1F0E2A6A0);
      }
    }

    v16 = qword_1EAFE2898;
    if (os_signpost_enabled(qword_1EAFE2898))
    {
      *buf = 68289539;
      v19 = 0;
      v20 = 2082;
      v21 = "";
      v22 = 2082;
      v23 = "assert";
      v24 = 2081;
      v25 = "length == sensorTimeSize";
      _os_signpost_emit_with_name_impl(&dword_19B41C000, v16, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Unexpected sensor time length!", "{msg%{public}.0s:Unexpected sensor time length!, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1EAFE2890 != -1)
      {
        dispatch_once(&qword_1EAFE2890, &unk_1F0E2A6A0);
      }
    }

    v17 = qword_1EAFE2898;
    if (os_log_type_enabled(qword_1EAFE2898, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v19 = 0;
      v20 = 2082;
      v21 = "";
      v22 = 2082;
      v23 = "assert";
      v24 = 2081;
      v25 = "length == sensorTimeSize";
      _os_log_impl(&dword_19B41C000, v17, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Unexpected sensor time length!, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

LABEL_55:
    abort_report_np();
    goto LABEL_56;
  }

  result = *DataValue;
LABEL_28:
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

const __CFArray *sub_19B7953F8(uint64_t a1, _BYTE *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  Children = IOHIDEventGetChildren();
  v4 = Children;
  *a2 = 0;
  if (Children)
  {
    if (!CFArrayGetCount(Children) || (*a2 = 1, CFArrayGetCount(v4) < 1))
    {
LABEL_35:
      v4 = 0;
      goto LABEL_36;
    }

    v5 = 0;
    while (1)
    {
      CFArrayGetValueAtIndex(v4, v5);
      IntegerValue = IOHIDEventGetIntegerValue();
      v7 = IOHIDEventGetIntegerValue();
      v8 = IOHIDEventGetIntegerValue();
      v9 = v8;
      if (v7 == 65301 && IntegerValue == 4 && v8 == 8)
      {
        break;
      }

      if (qword_1ED71C7B8 != -1)
      {
        dispatch_once(&qword_1ED71C7B8, &unk_1F0E28600);
      }

      v10 = qword_1ED71C7C8;
      if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134284033;
        v21 = v7;
        v22 = 2049;
        v23 = IntegerValue;
        v24 = 2049;
        v25 = v9;
        _os_log_impl(&dword_19B41C000, v10, OS_LOG_TYPE_DEBUG, "[AccessoryDeviceMotion] Invalid child event for BTC timestamp: usage page 0x%{private}lx usage 0x%{private}lx length %{private}zu", buf, 0x20u);
      }

      v11 = sub_19B420058();
      if (*(v11 + 160) > 1 || *(v11 + 164) > 1 || *(v11 + 168) > 1 || *(v11 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED71C7B8 != -1)
        {
          dispatch_once(&qword_1ED71C7B8, &unk_1F0E28600);
        }

        v12 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "uint64_t btcTimeFromHidChildEvent(IOHIDEventRef, BOOL &)", "CoreLocation: %s\n", v12);
        if (v12 != buf)
        {
          free(v12);
        }
      }

      if (++v5 >= CFArrayGetCount(v4))
      {
        goto LABEL_35;
      }
    }

    v4 = *IOHIDEventGetDataValue();
    v13 = mach_continuous_time();
    v14 = sub_19B41E070(v13);
    if (!v4)
    {
      if (v14 - *&qword_1EAFE3A28 > 1.0)
      {
        qword_1EAFE3A28 = *&v14;
        if (qword_1ED71C7B8 != -1)
        {
          dispatch_once(&qword_1ED71C7B8, &unk_1F0E28600);
        }

        v15 = qword_1ED71C7C8;
        if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_19B41C000, v15, OS_LOG_TYPE_ERROR, "[AccessoryDeviceMotion] Invalid child BTC timestamp", buf, 2u);
        }

        v16 = sub_19B420058();
        if ((*(v16 + 160) & 0x80000000) == 0 || (*(v16 + 164) & 0x80000000) == 0 || (*(v16 + 168) & 0x80000000) == 0 || *(v16 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1ED71C7B8 != -1)
          {
            dispatch_once(&qword_1ED71C7B8, &unk_1F0E28600);
          }

          v17 = _os_log_send_and_compose_impl();
          sub_19B6BB7CC("Generic", 1, 0, 0, "uint64_t btcTimeFromHidChildEvent(IOHIDEventRef, BOOL &)", "CoreLocation: %s\n", v17);
          if (v17 != buf)
          {
            free(v17);
          }
        }
      }

      goto LABEL_35;
    }
  }

LABEL_36:
  v18 = *MEMORY[0x1E69E9840];
  return v4;
}

BOOL sub_19B795824(void *a1, IOHIDServiceClientRef service, CFStringRef key)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = IOHIDServiceClientCopyProperty(service, key);
  if (v5)
  {
    v6 = v5;
    TypeID = CFNumberGetTypeID();
    v8 = TypeID == CFGetTypeID(v6);
    v9 = v8;
    if (v8)
    {
      CFNumberGetValue(v6, kCFNumberIntType, a1);
    }

    else
    {
      if (qword_1ED71C830 != -1)
      {
        dispatch_once(&qword_1ED71C830, &unk_1F0E284C0);
      }

      v13 = off_1ED71C838;
      if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v19 = key;
        _os_log_impl(&dword_19B41C000, v13, OS_LOG_TYPE_ERROR, "Invalid type for key %{public}@!", buf, 0xCu);
      }

      v14 = sub_19B420058();
      if ((*(v14 + 160) & 0x80000000) == 0 || (*(v14 + 164) & 0x80000000) == 0 || (*(v14 + 168) & 0x80000000) == 0 || *(v14 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED71C830 != -1)
        {
          dispatch_once(&qword_1ED71C830, &unk_1F0E284C0);
        }

        v15 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 0, "BOOL getIntFromHIDService(int *, IOHIDServiceClientRef, CFStringRef)", "CoreLocation: %s\n", v15);
        if (v15 != buf)
        {
          free(v15);
        }
      }
    }

    CFRelease(v6);
  }

  else
  {
    if (qword_1ED71C830 != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E284C0);
    }

    v10 = off_1ED71C838;
    if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v19 = key;
      _os_log_impl(&dword_19B41C000, v10, OS_LOG_TYPE_DEFAULT, "#Warning Key %{public}@ not found!", buf, 0xCu);
    }

    v11 = sub_19B420058();
    if (*(v11 + 160) > 1 || *(v11 + 164) > 1 || *(v11 + 168) > 1 || *(v11 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C830 != -1)
      {
        dispatch_once(&qword_1ED71C830, &unk_1F0E284C0);
      }

      v12 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "BOOL getIntFromHIDService(int *, IOHIDServiceClientRef, CFStringRef)", "CoreLocation: %s\n", v12);
      if (v12 != buf)
      {
        free(v12);
      }
    }

    v9 = 0;
  }

  v16 = *MEMORY[0x1E69E9840];
  return v9;
}

void sub_19B795BA8(__IOHIDServiceClient *a1@<X0>, const __CFString *a2@<X1>, uint64_t a3@<X8>)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = IOHIDServiceClientCopyProperty(a1, a2);
  if (v5)
  {
    v6 = v5;
    *a3 = 0;
    *(a3 + 24) = 0;
    TypeID = CFDataGetTypeID();
    if (TypeID == CFGetTypeID(v6))
    {
      BytePtr = CFDataGetBytePtr(v6);
      Length = CFDataGetLength(v6);
      v10 = 0;
      if (!Length)
      {
        HIBYTE(v25) = 0;
LABEL_43:
        buf[v10] = 0;
        if (*(a3 + 24) == 1)
        {
          if (*(a3 + 23) < 0)
          {
            operator delete(*a3);
          }

          *a3 = *buf;
          *(a3 + 16) = v25;
          goto LABEL_52;
        }

        *a3 = *buf;
        *(a3 + 16) = v25;
LABEL_51:
        *(a3 + 24) = 1;
LABEL_52:
        CFRelease(v6);
        goto LABEL_53;
      }

      while (BytePtr[v10])
      {
        if (Length == ++v10)
        {
          v10 = Length;
          break;
        }
      }

      if (v10 <= 0x7FFFFFFFFFFFFFF7)
      {
        if (v10 >= 0x17)
        {
          operator new();
        }

        HIBYTE(v25) = v10;
        if (v10)
        {
          memmove(buf, BytePtr, v10);
        }

        goto LABEL_43;
      }
    }

    else
    {
      v14 = CFStringGetTypeID();
      if (v14 != CFGetTypeID(v6))
      {
        if (qword_1ED71C830 != -1)
        {
          dispatch_once(&qword_1ED71C830, &unk_1F0E284C0);
        }

        v20 = off_1ED71C838;
        if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          *&buf[4] = a2;
          _os_log_impl(&dword_19B41C000, v20, OS_LOG_TYPE_ERROR, "Invalid type for key %{public}@!", buf, 0xCu);
        }

        v21 = sub_19B420058();
        if ((*(v21 + 160) & 0x80000000) == 0 || (*(v21 + 164) & 0x80000000) == 0 || (*(v21 + 168) & 0x80000000) == 0 || *(v21 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1ED71C830 != -1)
          {
            dispatch_once(&qword_1ED71C830, &unk_1F0E284C0);
          }

          v22 = _os_log_send_and_compose_impl();
          sub_19B6BB7CC("Generic", 1, 0, 0, "std::optional<std::string> getStringFromHIDService(IOHIDServiceClientRef, CFStringRef)", "CoreLocation: %s\n", v22);
          if (v22 != buf)
          {
            free(v22);
          }
        }

        goto LABEL_52;
      }

      v17 = objc_msgSend_UTF8String(v6, v15, v16);
      v18 = strlen(v17);
      if (v18 <= 0x7FFFFFFFFFFFFFF7)
      {
        v19 = v18;
        if (v18 >= 0x17)
        {
          operator new();
        }

        *(a3 + 23) = v18;
        if (v18)
        {
          memmove(a3, v17, v18);
        }

        *(a3 + v19) = 0;
        goto LABEL_51;
      }
    }

    sub_19B4C51DC();
  }

  if (qword_1ED71C830 != -1)
  {
    dispatch_once(&qword_1ED71C830, &unk_1F0E284C0);
  }

  v11 = off_1ED71C838;
  if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    *&buf[4] = a2;
    _os_log_impl(&dword_19B41C000, v11, OS_LOG_TYPE_DEFAULT, "#Warning Key %{public}@ not found!", buf, 0xCu);
  }

  v12 = sub_19B420058();
  if (*(v12 + 160) > 1 || *(v12 + 164) > 1 || *(v12 + 168) > 1 || *(v12 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C830 != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E284C0);
    }

    v13 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "std::optional<std::string> getStringFromHIDService(IOHIDServiceClientRef, CFStringRef)", "CoreLocation: %s\n", v13);
    if (v13 != buf)
    {
      free(v13);
    }
  }

  *a3 = 0;
  *(a3 + 24) = 0;
LABEL_53:
  v23 = *MEMORY[0x1E69E9840];
}

NSObject *sub_19B7960E8(void *a1, IOHIDServiceClientRef service, __CFString *key, size_t a4)
{
  v5 = key;
  v53 = *MEMORY[0x1E69E9840];
  v7 = IOHIDServiceClientCopyProperty(service, key);
  if (v7)
  {
    v8 = v7;
    TypeID = CFDataGetTypeID();
    v10 = TypeID == CFGetTypeID(v8);
    v13 = v10;
    if (v10)
    {
      if (objc_msgSend_length(v8, v11, v12) == a4)
      {
        v16 = objc_msgSend_bytes(v8, v14, v15);
        memcpy(a1, v16, a4);
LABEL_29:
        CFRelease(v8);
        goto LABEL_30;
      }

      if (qword_1ED71C830 != -1)
      {
        dispatch_once(&qword_1ED71C830, &unk_1F0E284C0);
      }

      v26 = off_1ED71C838;
      p_vtable = "[data length] == expected_length";
      if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_FAULT))
      {
        *buf = 68290051;
        *v44 = 0;
        *&v44[4] = 2082;
        *&v44[6] = "";
        v45 = 2082;
        v46 = objc_msgSend_UTF8String(v5, v27, v28);
        v47 = 2050;
        v48 = objc_msgSend_length(v8, v29, v30);
        v49 = 2082;
        v50 = "assert";
        v51 = 2081;
        v52 = "[data length] == expected_length";
        _os_log_impl(&dword_19B41C000, v26, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Unexpected length!, key:%{public, location:escape_only}s, length:%{public}lu, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x3Au);
        if (qword_1ED71C830 != -1)
        {
          dispatch_once(&qword_1ED71C830, &unk_1F0E284C0);
        }
      }

      v31 = off_1ED71C838;
      if (os_signpost_enabled(off_1ED71C838))
      {
        v34 = objc_msgSend_UTF8String(v5, v32, v33);
        v37 = objc_msgSend_length(v8, v35, v36);
        *buf = 68290051;
        *v44 = 0;
        *&v44[4] = 2082;
        *&v44[6] = "";
        v45 = 2082;
        v46 = v34;
        v47 = 2050;
        v48 = v37;
        v49 = 2082;
        v50 = "assert";
        v51 = 2081;
        v52 = "[data length] == expected_length";
        _os_signpost_emit_with_name_impl(&dword_19B41C000, v31, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Unexpected length!", "{msg%{public}.0s:Unexpected length!, key:%{public, location:escape_only}s, length:%{public}lu, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x3Au);
        if (qword_1ED71C830 != -1)
        {
          dispatch_once(&qword_1ED71C830, &unk_1F0E284C0);
        }
      }

      v13 = off_1ED71C838;
      if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_INFO))
      {
        v5 = objc_msgSend_UTF8String(v5, v38, v39);
        v42 = objc_msgSend_length(v8, v40, v41);
        *buf = 68290051;
        *v44 = 0;
        *&v44[4] = 2082;
        *&v44[6] = "";
        v45 = 2082;
        v46 = v5;
        v47 = 2050;
        v48 = v42;
        v49 = 2082;
        v50 = "assert";
        v51 = 2081;
        v52 = "[data length] == expected_length";
        _os_log_impl(&dword_19B41C000, v13, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Unexpected length!, key:%{public, location:escape_only}s, length:%{public}lu, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x3Au);
      }

      abort_report_np();
    }

    else
    {
      p_vtable = CMDeviceOrientationManager.vtable;
      if (qword_1ED71C830 == -1)
      {
LABEL_20:
        v21 = off_1ED71C838;
        if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          *v44 = v5;
          _os_log_impl(&dword_19B41C000, v21, OS_LOG_TYPE_ERROR, "Invalid type for key %{public}@!", buf, 0xCu);
        }

        v22 = sub_19B420058();
        if ((*(v22 + 160) & 0x80000000) == 0 || (*(v22 + 164) & 0x80000000) == 0 || (*(v22 + 168) & 0x80000000) == 0 || *(v22 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (p_vtable[262] != -1)
          {
            dispatch_once(&qword_1ED71C830, &unk_1F0E284C0);
          }

          v23 = _os_log_send_and_compose_impl();
          sub_19B6BB7CC("Generic", 1, 0, 0, "BOOL getBytesFromHIDService(void *, IOHIDServiceClientRef, CFStringRef, size_t)", "CoreLocation: %s\n", v23);
          if (v23 != buf)
          {
            free(v23);
          }
        }

        goto LABEL_29;
      }
    }

    dispatch_once(&qword_1ED71C830, &unk_1F0E284C0);
    goto LABEL_20;
  }

  if (qword_1ED71C830 != -1)
  {
    dispatch_once(&qword_1ED71C830, &unk_1F0E284C0);
  }

  v17 = off_1ED71C838;
  if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    *v44 = v5;
    _os_log_impl(&dword_19B41C000, v17, OS_LOG_TYPE_DEFAULT, "#Warning Key %{public}@ not found!", buf, 0xCu);
  }

  v18 = sub_19B420058();
  if (*(v18 + 160) > 1 || *(v18 + 164) > 1 || *(v18 + 168) > 1 || *(v18 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C830 != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E284C0);
    }

    v19 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "BOOL getBytesFromHIDService(void *, IOHIDServiceClientRef, CFStringRef, size_t)", "CoreLocation: %s\n", v19);
    if (v19 != buf)
    {
      free(v19);
    }
  }

  v13 = 0;
LABEL_30:
  v24 = *MEMORY[0x1E69E9840];
  return v13;
}

os_log_t sub_19B7966FC()
{
  result = os_log_create("com.apple.locationd.Motion", "Sensors");
  qword_1EAFE2898 = result;
  return result;
}

os_log_t sub_19B79672C()
{
  result = os_log_create("com.apple.locationd.Motion", "Accessory");
  qword_1ED71C7C8 = result;
  return result;
}

uint64_t sub_19B7978BC(uint64_t a1)
{
  *(a1 + 144) = a1 + 152;
  *(a1 + 8) = 256;
  *a1 = 8;
  v2 = 0x100000000;
  v3 = 152;
  v11 = vdupq_n_s64(0x3F80000000000000uLL);
  v12 = vdupq_n_s64(0x400921FB54442D18uLL);
  do
  {
    v4 = vneg_s32(v2);
    v5.i64[0] = v4.i32[0];
    v5.i64[1] = v4.i32[1];
    v6 = vcvt_f32_f64(vmulq_f64(vmulq_f64(vcvtq_f64_s64(v5), v12), v11));
    v13 = v6.f32[0];
    v7 = __sincosf_stret(v6.f32[1]);
    v8 = __sincosf_stret(v13);
    v14.val[1] = __PAIR64__(LODWORD(v7.__sinval), LODWORD(v8.__sinval));
    v14.val[0] = __PAIR64__(LODWORD(v7.__cosval), LODWORD(v8.__cosval));
    v9 = (a1 + v3);
    vst2_f32(v9, v14);
    v2 = vadd_s32(v2, 0x200000002);
    v3 += 16;
  }

  while (v3 != 2200);
  sub_19B7979AC(256, (a1 + 16));
  return a1;
}

uint64_t sub_19B7979AC(uint64_t result, int *a2)
{
  v2 = sqrtf(result);
  v3 = 4;
  do
  {
    while (result % v3)
    {
      v4 = v3 + 2;
      if (v3 == 2)
      {
        v4 = 3;
      }

      if (v3 == 4)
      {
        v3 = 2;
      }

      else
      {
        v3 = v4;
      }

      if (v2 < v3)
      {
        v3 = result;
      }
    }

    result = (result / v3);
    *a2 = v3;
    a2[1] = result;
    a2 += 2;
  }

  while (result > 1);
  return result;
}

void sub_19B797A04(uint64_t a1, _DWORD *a2, unsigned __int16 *a3)
{
  v14[255] = *MEMORY[0x1E69E9840];
  v5 = (a1 + 8);
  bzero(&v13, 8 * *(a1 + 8));
  sub_19B797AE8(&v13, a3, 0, 1, 1u, v5 + 2, v5);
  *a2 = 0;
  v6 = (*v5 >> 1);
  if (v6 >= 2)
  {
    v7 = *v5;
    v8 = v6 - 1;
    v9 = (a2 + 1);
    v10 = v14;
    do
    {
      v11 = *v10++;
      *v9++ = sqrtf(vaddv_f32(vmul_f32(v11, v11)) / v7);
      --v8;
    }

    while (v8);
  }

  v12 = *MEMORY[0x1E69E9840];
}

void sub_19B797AE8(float32x2_t *a1, unsigned __int16 *a2, uint64_t a3, uint64_t a4, unsigned int a5, int *a6, uint64_t a7)
{
  v9 = a1;
  v70 = *MEMORY[0x1E69E9840];
  v10 = a6[1];
  v11 = v10 * *a6;
  v65 = *a6;
  if (v10 == 1)
  {
    v12 = a4 * a5;
    v13 = 8 * v11;
    v14 = a1;
    do
    {
      v14->i32[0] = *sub_19B5BFE1C(a2, a3);
      ++v14;
      LODWORD(a3) = a3 + v12;
      v13 -= 8;
    }

    while (v13);
  }

  else
  {
    v16 = *a6 * a4;
    v17 = a4 * a5;
    v18 = 8 * v11;
    v19 = 8 * v10;
    v20 = a1;
    do
    {
      sub_19B797AE8(v20, a2, a3, v16, a5, a6 + 2, a7);
      a3 = (a3 + v17);
      v20 = (v20 + v19);
      v18 -= v19;
    }

    while (v18);
  }

  if (v65 == 2)
  {
    v56 = *(a7 + 136);
    v57 = &v9[v10];
    do
    {
      v58.i32[0] = v57->i32[1];
      v58.f32[1] = -v58.f32[0];
      v59 = vmla_n_f32(vrev64_s32(vmul_f32(*v56, v58)), *v56, v57->f32[0]);
      *v57++ = vsub_f32(*v9, v59);
      *v9 = vadd_f32(v59, *v9);
      ++v9;
      v56 += a4;
      --v10;
    }

    while (v10);
  }

  else
  {
    v21 = v10;
    if (v65 == 4)
    {
      v22 = &v9[v10];
      v23 = (*(a7 + 136) + 4);
      v24 = &v9[2 * v10];
      v25 = &v9[3 * v10];
      v26 = *(a7 + 4);
      v27 = v9 + 1;
      v28 = v23;
      v29 = v23;
      do
      {
        v30 = *(v23 - 1);
        v31 = v22[1];
        v32 = (*v22 * v30) - (v31 * *v23);
        v33 = (v30 * v31) + (*v22 * *v23);
        v34 = *(v28 - 1);
        v35 = v24[1];
        v36 = (*v24 * v34) - (v35 * *v28);
        v37 = (v34 * v35) + (*v24 * *v28);
        v38 = *(v29 - 1);
        v39 = v25[1];
        v40 = (*v25 * v38) - (v39 * *v29);
        v41 = (v38 * v39) + (*v25 * *v29);
        v42 = *(v27 - 1);
        v43 = v42 - v36;
        v44 = *v27 - v37;
        v45 = v36 + v42;
        v46 = v37 + *v27;
        *(v27 - 1) = v45;
        *v27 = v46;
        v47 = v32 + v40;
        v48 = v33 + v41;
        v49 = v32 - v40;
        v50 = v33 - v41;
        *v24 = v45 - v47;
        v24[1] = v46 - v48;
        v51 = v48 + *v27;
        *(v27 - 1) = v47 + *(v27 - 1);
        *v27 = v51;
        if (v26)
        {
          v52 = v43 + v50;
          v53 = v44 - v49;
          v54 = v43 - v50;
          v55 = v44 + v49;
        }

        else
        {
          v54 = v43 + v50;
          v55 = v44 - v49;
          v52 = v43 - v50;
          v53 = v44 + v49;
        }

        *v22 = v54;
        v22[1] = v55;
        v22 += 2;
        v29 += 6 * a4;
        v24 += 2;
        v28 += 4 * a4;
        *v25 = v52;
        v25[1] = v53;
        v25 += 2;
        v23 += 2 * a4;
        v27 += 2;
        --v21;
      }

      while (v21);
    }

    else
    {
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E2A6E0);
      }

      v60 = off_1ED71C828;
      if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
      {
        *buf = 67109120;
        v69 = v65;
        _os_log_impl(&dword_19B41C000, v60, OS_LOG_TYPE_FAULT, "Error in FFT,p,%d", buf, 8u);
      }

      v61 = sub_19B420058();
      if ((*(v61 + 160) & 0x80000000) == 0 || (*(v61 + 164) & 0x80000000) == 0 || (*(v61 + 168) & 0x80000000) == 0 || *(v61 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED71C820 != -1)
        {
          dispatch_once(&qword_1ED71C820, &unk_1F0E2A6E0);
        }

        v62 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 0, "void kf_work(kiss_fft_cpx *, const CMQueue<scalar_32> &, int, const size_t, int, const int *, const kiss_fft_state *)", "CoreLocation: %s\n", v62);
        if (v62 != buf)
        {
          free(v62);
        }
      }
    }
  }

  v63 = *MEMORY[0x1E69E9840];
}

uint64_t sub_19B797EF4(void *a1)
{
  *a1 = &unk_1F0E31AA0;
  v2 = a1 + 25;
  a1[25] = &unk_1F0E31B08;
  sub_19B422EC8(a1);
  sub_19B66E548(a1 + 37);
  sub_19B5D3E20(v2);

  return sub_19B760468(a1);
}

void sub_19B797F88(void *a1)
{
  sub_19B797EF4(a1);

  JUMPOUT(0x19EAE76F0);
}

void sub_19B797FC0(uint64_t a1)
{
  sub_19B797EF4((a1 - 200));

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B798004(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 24);
  sub_19B442D78(v1 + 200);
  if (!*(v1 + 288))
  {
    operator new();
  }

  sub_19B442F50(v1 + 200);
  v4 = 2;
  return sub_19B4453D4(v1, &v4);
}

os_log_t sub_19B798A6C()
{
  result = os_log_create("com.apple.locationd.Motion", "CyclingPower");
  qword_1EAFE2AA0 = result;
  return result;
}

os_log_t sub_19B7990C8()
{
  result = os_log_create("com.apple.locationd.Core", "Notifier");
  qword_1EAFE2820 = result;
  return result;
}

os_log_t sub_19B799D68()
{
  result = os_log_create("com.apple.locationd.Core", "Notifier");
  qword_1EAFE2820 = result;
  return result;
}

void sub_19B79A0E8(uint64_t a1, int a2, uint64_t a3)
{
  v40 = *MEMORY[0x1E69E9840];
  if (qword_1ED71C820 != -1)
  {
    dispatch_once(&qword_1ED71C820, &unk_1F0E2A780);
  }

  v5 = off_1ED71C828;
  if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_DEBUG))
  {
    v6 = *(a1 + 16);
    *buf = 67109376;
    v33 = v6;
    v34 = 1024;
    v35 = a2;
    _os_log_impl(&dword_19B41C000, v5, OS_LOG_TYPE_DEBUG, "signal,from,%d,event,%d", buf, 0xEu);
  }

  v7 = sub_19B420058();
  if (*(v7 + 160) > 1 || *(v7 + 164) > 1 || *(v7 + 168) > 1 || *(v7 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E2A780);
    }

    v29 = *(a1 + 16);
    v8 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CMFiniteStateMachine::signal(uint8_t, const void *)", "CoreLocation: %s\n", v8);
    if (v8 != buf)
    {
      free(v8);
    }
  }

  v9 = *(a1 + 8);
  if (!v9)
  {
LABEL_32:
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E2A780);
    }

    v18 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v18, OS_LOG_TYPE_DEBUG, "no transition", buf, 2u);
    }

    v19 = sub_19B420058();
    if (*(v19 + 160) > 1 || *(v19 + 164) > 1 || *(v19 + 168) > 1 || *(v19 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E2A780);
      }

      v20 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "void CMFiniteStateMachine::signal(uint8_t, const void *)", "CoreLocation: %s\n", v20);
      if (v20 != buf)
      {
        free(v20);
      }
    }

    goto LABEL_59;
  }

  v10 = 0;
  v11 = 0;
  while (1)
  {
    v12 = (*a1 + v10);
    if (*v12 != *(a1 + 16) || v12[1] != a2)
    {
      goto LABEL_31;
    }

    v13 = v12[2];
    v27 = *(v12 + 2);
    v14 = (*(v12 + 1))(a1, a3);
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E2A780);
    }

    v15 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109376;
      v33 = v11;
      v34 = 1024;
      v35 = v14;
      _os_log_impl(&dword_19B41C000, v15, OS_LOG_TYPE_DEBUG, "guard check,arc,%d,passed,%d", buf, 0xEu);
    }

    v16 = sub_19B420058();
    if (*(v16 + 160) > 1 || *(v16 + 164) > 1 || *(v16 + 168) > 1 || *(v16 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E2A780);
      }

      v17 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "void CMFiniteStateMachine::signal(uint8_t, const void *)", "CoreLocation: %s\n", v17);
      if (v17 != buf)
      {
        free(v17);
      }
    }

    if (v14)
    {
      break;
    }

    v9 = *(a1 + 8);
LABEL_31:
    ++v11;
    v10 += 24;
    if (v9 <= v11)
    {
      goto LABEL_32;
    }
  }

  if (*(a1 + 17) <= 1u && *(a1 + 16) != v13)
  {
    if (qword_1EAFE2A28 != -1)
    {
      dispatch_once(&qword_1EAFE2A28, &unk_1F0E289C0);
    }

    v21 = qword_1EAFE2A30;
    if (os_log_type_enabled(qword_1EAFE2A30, OS_LOG_TYPE_DEFAULT))
    {
      v22 = *(a1 + 17);
      v23 = *(a1 + 16);
      *buf = 67109888;
      v33 = v22;
      v34 = 1024;
      v35 = a2;
      v36 = 1024;
      v37 = v23;
      v38 = 1024;
      v39 = v13;
      _os_log_impl(&dword_19B41C000, v21, OS_LOG_TYPE_DEFAULT, "[FSM] %u,event,%u,transition,from,%u,to,%u", buf, 0x1Au);
    }

    v24 = sub_19B420058();
    if (*(v24 + 160) > 1 || *(v24 + 164) > 1 || *(v24 + 168) > 1 || *(v24 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2A28 != -1)
      {
        dispatch_once(&qword_1EAFE2A28, &unk_1F0E289C0);
      }

      v30 = *(a1 + 17);
      v31 = *(a1 + 16);
      v25 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "void CMFiniteStateMachine::signal(uint8_t, const void *)", "CoreLocation: %s\n", v25);
      if (v25 != buf)
      {
        free(v25);
      }
    }
  }

  *(a1 + 16) = v13;
  v27(a1, a3);
LABEL_59:
  v26 = *MEMORY[0x1E69E9840];
}

os_log_t sub_19B79A7E8()
{
  result = os_log_create("com.apple.locationd.Motion", "FSM");
  qword_1EAFE2A30 = result;
  return result;
}

void sub_19B79A9C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x19EAE76F0](v26, v25);
  _Unwind_Resume(a1);
}

uint64_t sub_19B79A9F4(uint64_t a1, CLConnectionMessage **a2)
{
  v4 = MEMORY[0x1E695DFD8];
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v12 = objc_msgSend_setWithObjects_(v4, v11, v5, v6, v7, v8, v9, v10, 0);
  if (*a2)
  {
    DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v12);
  }

  else
  {
    DictionaryOfClasses = 0;
  }

  v14 = *(a1 + 32);

  return MEMORY[0x1EEE66B58](v14, sel__handleDaemonEvent_, DictionaryOfClasses);
}

void sub_19B79AAE0(uint64_t a1)
{
  v36 = *MEMORY[0x1E69E9840];
  v2 = getpid();
  ExecutablePathFromPid = objc_msgSend_getExecutablePathFromPid_(CMMotionUtils, v3, v2);
  if (ExecutablePathFromPid)
  {
    v7 = ExecutablePathFromPid;
    if (qword_1EAFE2780 != -1)
    {
      dispatch_once(&qword_1EAFE2780, &unk_1F0E2A7A0);
    }

    v8 = qword_1EAFE27B8;
    if (os_log_type_enabled(qword_1EAFE27B8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = getpid();
      v10 = *(a1 + 32);
      v11 = *(v10 + 72);
      *buf = 138413058;
      v29 = v7;
      v30 = 1024;
      v31 = v9;
      v32 = 2048;
      v33 = v11;
      v34 = 2048;
      v35 = v10;
      _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_DEFAULT, "Workout, client connection interrupt, %@, %d, %ld, %p", buf, 0x26u);
    }

    v12 = sub_19B420058();
    if (*(v12 + 160) > 1 || *(v12 + 164) > 1 || *(v12 + 168) > 1 || *(v12 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2780 != -1)
      {
        dispatch_once(&qword_1EAFE2780, &unk_1F0E2A7A0);
      }

      getpid();
      v27 = *(*(a1 + 32) + 72);
      v13 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMWorkoutManagerInternal init]_block_invoke", "CoreLocation: %s\n", v13);
      if (v13 != buf)
      {
        free(v13);
      }
    }
  }

  v14 = objc_msgSend_copy(*(*(a1 + 32) + 40), v5, v6);
  v18 = objc_msgSend_copy(*(*(a1 + 32) + 48), v15, v16);
  v19 = *(a1 + 32);
  v20 = *(v19 + 72);
  if (v20 == 2)
  {
    objc_msgSend__beginWorkoutSession_withWorkout_enableWorkoutChangeDetection_(v19, v17, *(v19 + 56), v14, *(v19 + 64));
    if (v18 && objc_msgSend_type(v18, v24, v25) == 33)
    {
      objc_msgSend__setCurrentWorkoutType_isManualTransition_(*(a1 + 32), v24, v18, 1);
    }

    objc_msgSend__pauseWorkout_(*(a1 + 32), v24, *(*(a1 + 32) + 48));
  }

  else if (v20 == 1)
  {
    objc_msgSend__beginWorkoutSession_withWorkout_enableWorkoutChangeDetection_(v19, v17, *(v19 + 56), v14, *(v19 + 64));
    if (v18)
    {
      if (objc_msgSend_type(v18, v21, v22) == 33)
      {
        objc_msgSend__setCurrentWorkoutType_isManualTransition_(*(a1 + 32), v23, v18, 1);
      }
    }
  }

  v26 = *MEMORY[0x1E69E9840];
}

void sub_19B79AEE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B79B714(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, std::__shared_weak_count *a26)
{
  if (a17)
  {
    sub_19B41FFEC(a17);
  }

  if (a26)
  {
    sub_19B41FFEC(a26);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B79B740(uint64_t a1, CLConnectionMessage **a2)
{
  v4 = MEMORY[0x1E695DFD8];
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v8 = objc_msgSend_setWithObjects_(v4, v7, v5, v6, 0);
  if (*a2)
  {
    DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v8);
  }

  else
  {
    DictionaryOfClasses = 0;
  }

  v10 = *(a1 + 32);

  return MEMORY[0x1EEE66B58](v10, sel__handleDaemonResponse_, DictionaryOfClasses);
}

void sub_19B79BA5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a12)
  {
    sub_19B41FFEC(a12);
  }

  if (a18)
  {
    sub_19B41FFEC(a18);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B79BE0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a18)
  {
    sub_19B41FFEC(a18);
  }

  sub_19B41FFEC(v32);
  _Unwind_Resume(a1);
}

uint64_t sub_19B79BE60(uint64_t a1, CLConnectionMessage **a2)
{
  v4 = MEMORY[0x1E695DFD8];
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v8 = objc_msgSend_setWithObjects_(v4, v7, v5, v6, 0);
  if (*a2)
  {
    DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v8);
  }

  else
  {
    DictionaryOfClasses = 0;
  }

  v10 = *(a1 + 32);

  return MEMORY[0x1EEE66B58](v10, sel__handleDaemonResponse_, DictionaryOfClasses);
}

void sub_19B79EBD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, std::__shared_weak_count *a19, int a20, __int16 a21, char a22, char a23)
{
  if (a11)
  {
    sub_19B41FFEC(a11);
  }

  if (a19)
  {
    sub_19B41FFEC(a19);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B79EC18(uint64_t a1, CLConnectionMessage **a2)
{
  v4 = MEMORY[0x1E695DFD8];
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v12 = objc_msgSend_setWithObjects_(v4, v11, v5, v6, v7, v8, v9, v10, 0);
  DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v12);
  v14 = *(a1 + 32);

  return MEMORY[0x1EEE66B58](v14, sel__handleDaemonEvent_, DictionaryOfClasses);
}

void sub_19B79EE58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, std::__shared_weak_count *a19, int a20, __int16 a21, char a22, char a23)
{
  if (a11)
  {
    sub_19B41FFEC(a11);
  }

  if (a19)
  {
    sub_19B41FFEC(a19);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B79EE9C(uint64_t a1, CLConnectionMessage **a2)
{
  v4 = MEMORY[0x1E695DFD8];
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v12 = objc_msgSend_setWithObjects_(v4, v11, v5, v6, v7, v8, v9, v10, 0);
  DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v12);
  v14 = *(a1 + 32);

  return MEMORY[0x1EEE66B58](v14, sel__handleDaemonEvent_, DictionaryOfClasses);
}

void sub_19B79F0A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    sub_19B41FFEC(a15);
  }

  v17 = *(v15 - 32);
  if (v17)
  {
    sub_19B41FFEC(v17);
  }

  _Unwind_Resume(exception_object);
}

void *sub_19B79F0C8(uint64_t a1, CLConnectionMessage **a2)
{
  v43 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695DFD8];
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v9 = objc_msgSend_setWithObjects_(v4, v8, v5, v6, v7, 0);
  if (!*a2 || (DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v9)) == 0)
  {
    if (qword_1EAFE2808 != -1)
    {
      dispatch_once(&qword_1EAFE2808, &unk_1F0E3B800);
    }

    v32 = qword_1EAFE2830;
    if (os_log_type_enabled(qword_1EAFE2830, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v32, OS_LOG_TYPE_ERROR, "Prompts needed response invalid.", buf, 2u);
    }

    v33 = sub_19B420058();
    if ((*(v33 + 160) & 0x80000000) == 0 || (*(v33 + 164) & 0x80000000) == 0 || (*(v33 + 168) & 0x80000000) == 0 || *(v33 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2808 != -1)
      {
        dispatch_once(&qword_1EAFE2808, &unk_1F0E3B800);
      }

      v35 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CMWorkoutManagerInternal _getPromptsNeededForWorkoutType:handler:]_block_invoke", "CoreLocation: %s\n", v35);
      if (v35 != buf)
      {
        free(v35);
      }
    }

    v27 = *(a1 + 32);
    v31 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], v34, @"CMErrorDomain", 103, 0);
    goto LABEL_28;
  }

  v12 = DictionaryOfClasses;
  v13 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v11, @"CMErrorMessage");
  result = objc_msgSend_objectForKeyedSubscript_(v12, v14, @"CMReturnCode");
  if (v13)
  {
    if (qword_1EAFE2808 != -1)
    {
      dispatch_once(&qword_1EAFE2808, &unk_1F0E3B800);
    }

    v18 = qword_1EAFE2830;
    if (os_log_type_enabled(qword_1EAFE2830, OS_LOG_TYPE_ERROR))
    {
      *buf = 134349056;
      v42 = objc_msgSend_integerValue(v13, v19, v20);
      _os_log_impl(&dword_19B41C000, v18, OS_LOG_TYPE_ERROR, "Querying for calibration prompts encountered an error: %{public}ld.", buf, 0xCu);
    }

    v21 = sub_19B420058();
    if ((*(v21 + 160) & 0x80000000) == 0 || (*(v21 + 164) & 0x80000000) == 0 || (*(v21 + 168) & 0x80000000) == 0 || *(v21 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2808 != -1)
      {
        dispatch_once(&qword_1EAFE2808, &unk_1F0E3B800);
      }

      objc_msgSend_integerValue(v13, v24, v25);
      v26 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CMWorkoutManagerInternal _getPromptsNeededForWorkoutType:handler:]_block_invoke", "CoreLocation: %s\n", v26);
      if (v26 != buf)
      {
        free(v26);
      }
    }

    v27 = *(a1 + 32);
    v28 = MEMORY[0x1E696ABC0];
    v29 = objc_msgSend_integerValue(v13, v22, v23);
    v31 = objc_msgSend_errorWithDomain_code_userInfo_(v28, v30, @"CMErrorDomain", v29, 0);
LABEL_28:
    result = (*(v27 + 16))(v27, 0, v31);
LABEL_29:
    v36 = *MEMORY[0x1E69E9840];
    return result;
  }

  if (!result)
  {
    goto LABEL_29;
  }

  v37 = *(a1 + 32);
  v38 = objc_msgSend_unsignedIntegerValue(result, v16, v17);
  v39 = *(v37 + 16);
  v40 = *MEMORY[0x1E69E9840];

  return v39(v37, v38, 0);
}

void sub_19B79F98C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, std::__shared_weak_count *a60)
{
  if (a18)
  {
    sub_19B41FFEC(a18);
  }

  if (a60)
  {
    sub_19B41FFEC(a60);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B79F9B8(uint64_t a1, CLConnectionMessage **a2)
{
  v4 = MEMORY[0x1E695DFD8];
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v8 = objc_msgSend_setWithObjects_(v4, v7, v5, v6, 0);
  if (*a2)
  {
    DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v8);
  }

  else
  {
    DictionaryOfClasses = 0;
  }

  v10 = *(a1 + 32);

  return MEMORY[0x1EEE66B58](v10, sel__handleDaemonResponse_, DictionaryOfClasses);
}

void sub_19B79FDC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, std::__shared_weak_count *a30)
{
  if (a17)
  {
    sub_19B41FFEC(a17);
  }

  if (a30)
  {
    sub_19B41FFEC(a30);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B79FDF0(uint64_t a1, CLConnectionMessage **a2)
{
  v4 = MEMORY[0x1E695DFD8];
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v8 = objc_msgSend_setWithObjects_(v4, v7, v5, v6, 0);
  if (*a2)
  {
    DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v8);
  }

  else
  {
    DictionaryOfClasses = 0;
  }

  v10 = *(a1 + 32);

  return MEMORY[0x1EEE66B58](v10, sel__handleDaemonResponse_, DictionaryOfClasses);
}

void sub_19B7A0228(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, std::__shared_weak_count *a28)
{
  if (a17)
  {
    sub_19B41FFEC(a17);
  }

  if (a28)
  {
    sub_19B41FFEC(a28);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B7A0254(uint64_t a1, CLConnectionMessage **a2)
{
  v4 = MEMORY[0x1E695DFD8];
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v8 = objc_msgSend_setWithObjects_(v4, v7, v5, v6, 0);
  if (*a2)
  {
    DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v8);
  }

  else
  {
    DictionaryOfClasses = 0;
  }

  v10 = *(a1 + 32);

  return MEMORY[0x1EEE66B58](v10, sel__handleDaemonResponse_, DictionaryOfClasses);
}

void sub_19B7A0618(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, std::__shared_weak_count *a28)
{
  if (a17)
  {
    sub_19B41FFEC(a17);
  }

  if (a28)
  {
    sub_19B41FFEC(a28);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B7A0644(uint64_t a1, CLConnectionMessage **a2)
{
  v4 = MEMORY[0x1E695DFD8];
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v8 = objc_msgSend_setWithObjects_(v4, v7, v5, v6, 0);
  if (*a2)
  {
    DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v8);
  }

  else
  {
    DictionaryOfClasses = 0;
  }

  v10 = *(a1 + 32);

  return MEMORY[0x1EEE66B58](v10, sel__handleDaemonResponse_, DictionaryOfClasses);
}

void sub_19B7A0A08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, std::__shared_weak_count *a28)
{
  if (a17)
  {
    sub_19B41FFEC(a17);
  }

  if (a28)
  {
    sub_19B41FFEC(a28);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B7A0A34(uint64_t a1, CLConnectionMessage **a2)
{
  v4 = MEMORY[0x1E695DFD8];
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v8 = objc_msgSend_setWithObjects_(v4, v7, v5, v6, 0);
  if (*a2)
  {
    DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v8);
  }

  else
  {
    DictionaryOfClasses = 0;
  }

  v10 = *(a1 + 32);

  return MEMORY[0x1EEE66B58](v10, sel__handleDaemonResponse_, DictionaryOfClasses);
}

void sub_19B7A0F68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a18)
  {
    sub_19B41FFEC(a18);
  }

  sub_19B41FFEC(v28);
  _Unwind_Resume(a1);
}

uint64_t sub_19B7A0FBC(uint64_t a1, CLConnectionMessage **a2)
{
  v42 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695DFD8];
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v10 = objc_msgSend_setWithObjects_(v4, v9, v5, v6, v7, v8, 0);
  if (!*a2 || (DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v10)) == 0)
  {
    objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], v10, @"CMErrorDomain", 103, 0);
    if (qword_1EAFE2780 != -1)
    {
      dispatch_once(&qword_1EAFE2780, &unk_1F0E2A7A0);
    }

    v30 = qword_1EAFE27B8;
    if (os_log_type_enabled(qword_1EAFE27B8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v30, OS_LOG_TYPE_ERROR, "[snapshot] error, nil event dictionary", buf, 2u);
    }

    v31 = sub_19B420058();
    if ((*(v31 + 160) & 0x80000000) != 0 && (*(v31 + 164) & 0x80000000) != 0 && (*(v31 + 168) & 0x80000000) != 0 && !*(v31 + 152))
    {
      goto LABEL_25;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2780 != -1)
    {
      dispatch_once(&qword_1EAFE2780, &unk_1F0E2A7A0);
    }

    goto LABEL_23;
  }

  v12 = DictionaryOfClasses;
  if (objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v10, @"CMErrorMessage"))
  {
    v14 = MEMORY[0x1E696ABC0];
    v15 = objc_msgSend_objectForKeyedSubscript_(v12, v13, @"CMErrorMessage");
    v18 = objc_msgSend_integerValue(v15, v16, v17);
    objc_msgSend_errorWithDomain_code_userInfo_(v14, v19, @"CMErrorDomain", v18, 0);
    if (qword_1EAFE2780 != -1)
    {
      dispatch_once(&qword_1EAFE2780, &unk_1F0E2A7A0);
    }

    v20 = qword_1EAFE27B8;
    if (os_log_type_enabled(qword_1EAFE27B8, OS_LOG_TYPE_ERROR))
    {
      v22 = objc_msgSend_objectForKeyedSubscript_(v12, v21, @"CMErrorMessage");
      *buf = 67109120;
      LODWORD(v41) = objc_msgSend_intValue(v22, v23, v24);
      _os_log_impl(&dword_19B41C000, v20, OS_LOG_TYPE_ERROR, "[snapshot] error, %d", buf, 8u);
    }

    v25 = sub_19B420058();
    if ((*(v25 + 160) & 0x80000000) != 0 && (*(v25 + 164) & 0x80000000) != 0 && (*(v25 + 168) & 0x80000000) != 0 && !*(v25 + 152))
    {
      goto LABEL_25;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2780 != -1)
    {
      dispatch_once(&qword_1EAFE2780, &unk_1F0E2A7A0);
    }

    v27 = objc_msgSend_objectForKeyedSubscript_(v12, v26, @"CMErrorMessage");
    objc_msgSend_intValue(v27, v28, v29);
LABEL_23:
    v32 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 0, "[CMWorkoutManagerInternal _snapshotWithCompletion:]_block_invoke", "CoreLocation: %s\n", v32);
    if (v32 != buf)
    {
      free(v32);
    }

LABEL_25:
    v33 = *(*(a1 + 32) + 16);
    goto LABEL_26;
  }

  v36 = objc_msgSend_objectForKeyedSubscript_(v12, v13, @"CMWorkoutSnapshotData");
  if (qword_1EAFE2780 != -1)
  {
    dispatch_once(&qword_1EAFE2780, &unk_1F0E2A7A0);
  }

  v37 = qword_1EAFE27B8;
  if (os_log_type_enabled(qword_1EAFE27B8, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v41 = v36;
    _os_log_impl(&dword_19B41C000, v37, OS_LOG_TYPE_INFO, "[snapshot] reporting workout snapshot %@", buf, 0xCu);
  }

  v38 = sub_19B420058();
  if (*(v38 + 160) > 1 || *(v38 + 164) > 1 || *(v38 + 168) > 1 || *(v38 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2780 != -1)
    {
      dispatch_once(&qword_1EAFE2780, &unk_1F0E2A7A0);
    }

    v39 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMWorkoutManagerInternal _snapshotWithCompletion:]_block_invoke", "CoreLocation: %s\n", v39);
    if (v39 != buf)
    {
      free(v39);
    }
  }

  v33 = *(*(a1 + 32) + 16);
LABEL_26:
  result = v33();
  v35 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19B7A1A08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, std::__shared_weak_count *a30)
{
  if (a17)
  {
    sub_19B41FFEC(a17);
  }

  if (a30)
  {
    sub_19B41FFEC(a30);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B7A1A34(uint64_t a1, CLConnectionMessage **a2)
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695DFD8];
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v8 = objc_msgSend_setWithObjects_(v4, v7, v5, v6, 0);
  if (*a2)
  {
    DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v8);
    v11 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v10, @"CMErrorMessage");
  }

  else
  {
    DictionaryOfClasses = 0;
    v11 = objc_msgSend_objectForKeyedSubscript_(0, v8, @"CMErrorMessage");
  }

  if (v11)
  {
    if (qword_1EAFE2780 != -1)
    {
      dispatch_once(&qword_1EAFE2780, &unk_1F0E2A7A0);
    }

    v12 = qword_1EAFE27B8;
    if (os_log_type_enabled(qword_1EAFE27B8, OS_LOG_TYPE_ERROR))
    {
      v14 = *(a1 + 32);
      v15 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v13, @"CMErrorMessage");
      *buf = 134218240;
      v31 = v14;
      v32 = 1024;
      v33 = objc_msgSend_intValue(v15, v16, v17);
      _os_log_impl(&dword_19B41C000, v12, OS_LOG_TYPE_ERROR, "Workout, reminder mute settings, error muting reminder for type, %ld, error, %d", buf, 0x12u);
    }

    v18 = sub_19B420058();
    if ((*(v18 + 160) & 0x80000000) == 0 || (*(v18 + 164) & 0x80000000) == 0 || (*(v18 + 168) & 0x80000000) == 0 || *(v18 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2780 != -1)
      {
        dispatch_once(&qword_1EAFE2780, &unk_1F0E2A7A0);
      }

      v20 = *(a1 + 32);
      v21 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v19, @"CMErrorMessage");
      objc_msgSend_intValue(v21, v22, v23);
LABEL_25:
      v27 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CMWorkoutManagerInternal _muteReminderType:mute:]_block_invoke", "CoreLocation: %s\n", v27);
      if (v27 != buf)
      {
        free(v27);
      }
    }
  }

  else
  {
    if (qword_1EAFE2780 != -1)
    {
      dispatch_once(&qword_1EAFE2780, &unk_1F0E2A7A0);
    }

    v24 = qword_1EAFE27B8;
    if (os_log_type_enabled(qword_1EAFE27B8, OS_LOG_TYPE_ERROR))
    {
      v25 = *(a1 + 32);
      *buf = 134217984;
      v31 = v25;
      _os_log_impl(&dword_19B41C000, v24, OS_LOG_TYPE_ERROR, "Workout, reminder mute settings, error (unspecified) muting reminder for type %ld", buf, 0xCu);
    }

    v26 = sub_19B420058();
    if ((*(v26 + 160) & 0x80000000) == 0 || (*(v26 + 164) & 0x80000000) == 0 || (*(v26 + 168) & 0x80000000) == 0 || *(v26 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2780 != -1)
      {
        dispatch_once(&qword_1EAFE2780, &unk_1F0E2A7A0);
      }

      v29 = *(a1 + 32);
      goto LABEL_25;
    }
  }

  v28 = *MEMORY[0x1E69E9840];
}

uint64_t sub_19B7A2C34(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend__internal(*(a1 + 32), a2, a3);
  v6 = *(a1 + 40);
  v5 = *(a1 + 48);

  return MEMORY[0x1EEE66B58](v4, sel__getPromptsNeededForWorkoutType_handler_, v5);
}

os_log_t sub_19B7A3518()
{
  result = os_log_create("com.apple.locationd.Motion", "Workout");
  qword_1EAFE27B8 = result;
  return result;
}

os_log_t sub_19B7A3548()
{
  result = os_log_create("com.apple.locationd.Motion", "Calorimetry");
  qword_1EAFE2830 = result;
  return result;
}

os_log_t sub_19B7A3578()
{
  result = os_log_create("com.apple.locationd.Motion", "Swimming");
  qword_1EAFE2980 = result;
  return result;
}

void sub_19B7A3610(uint64_t a1, void *a2, os_log_t log)
{
  v6 = *MEMORY[0x1E69E9840];
  if (*(a1 + 39) < 0)
  {
    a2 = *a2;
  }

  v4 = 136446210;
  v5 = a2;
  _os_log_error_impl(&dword_19B41C000, log, OS_LOG_TYPE_ERROR, "Unable to create directory at path: %{public}s", &v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

void sub_19B7A36C0()
{
  v8 = *MEMORY[0x1E69E9840];
  if (qword_1ED71C950 != -1)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v0 = qword_1ED71C948;
    if (os_log_type_enabled(qword_1ED71C948, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315650;
      v3 = "assert";
      v4 = 2080;
      v5 = "fValid";
      v6 = 2080;
      v7 = "On call to writeItem client should check if the logger was opened";
      _os_log_fault_impl(&dword_19B41C000, v0, OS_LOG_TYPE_FAULT, "Event: %s\n Condition: %s\n Message: %s", buf, 0x20u);
      if (qword_1ED71C950 != -1)
      {
        dispatch_once(&qword_1ED71C950, &unk_1F0E28CC0);
      }
    }

    v1 = qword_1ED71C948;
    if (os_log_type_enabled(qword_1ED71C948, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v3 = "assert";
      v4 = 2080;
      v5 = "fValid";
      v6 = 2080;
      v7 = "On call to writeItem client should check if the logger was opened";
      _os_log_impl(&dword_19B41C000, v1, OS_LOG_TYPE_INFO, "Event: %s\n Condition: %s\n Message: %s", buf, 0x20u);
    }

    abort_report_np();
LABEL_8:
    dispatch_once(&qword_1ED71C950, &unk_1F0E28CC0);
  }
}

CFUUIDBytes CFUUIDGetUUIDBytes(CFUUIDRef uuid)
{
  v1 = MEMORY[0x1EEDB7E70](uuid);
  result.byte8 = v2;
  result.byte9 = BYTE1(v2);
  result.byte10 = BYTE2(v2);
  result.byte11 = BYTE3(v2);
  result.byte12 = BYTE4(v2);
  result.byte13 = BYTE5(v2);
  result.byte14 = BYTE6(v2);
  result.byte15 = HIBYTE(v2);
  result.byte0 = v1;
  result.byte1 = BYTE1(v1);
  result.byte2 = BYTE2(v1);
  result.byte3 = BYTE3(v1);
  result.byte4 = BYTE4(v1);
  result.byte5 = BYTE5(v1);
  result.byte6 = BYTE6(v1);
  result.byte7 = HIBYTE(v1);
  return result;
}

uint64_t CLConnectionClient::sendMessage()
{
  return MEMORY[0x1EEE19100]();
}

{
  return MEMORY[0x1EEE19108]();
}

uint64_t CLConnectionMessage::CLConnectionMessage()
{
  return MEMORY[0x1EEE19158]();
}

{
  return MEMORY[0x1EEE19160]();
}

uint64_t PB::TextFormatter::format()
{
  return MEMORY[0x1EEE30A48]();
}

{
  return MEMORY[0x1EEE30A50]();
}

uint64_t PB::TextFormatter::format(PB::TextFormatter *this, const char *a2)
{
  return MEMORY[0x1EEE30A58](this, a2);
}

{
  return MEMORY[0x1EEE30A70](this, a2);
}

{
  return MEMORY[0x1EEE30A78](this, a2);
}

{
  return MEMORY[0x1EEE30A80](this, a2);
}

{
  return MEMORY[0x1EEE30A88](this, a2);
}

uint64_t PB::Reader::read()
{
  return MEMORY[0x1EEE30AC0]();
}

{
  return MEMORY[0x1EEE30AC8]();
}

uint64_t PB::Writer::writeVarInt(PB::Writer *this)
{
  return MEMORY[0x1EEE30B08](this);
}

{
  return MEMORY[0x1EEE30B10](this);
}

{
  return MEMORY[0x1EEE30B18](this);
}

{
  return MEMORY[0x1EEE30B20](this);
}

uint64_t PB::Writer::write()
{
  return MEMORY[0x1EEE30B30]();
}

{
  return MEMORY[0x1EEE30B38]();
}

uint64_t PB::Writer::writeSInt(PB::Writer *this)
{
  return MEMORY[0x1EEE30B60](this);
}

{
  return MEMORY[0x1EEE30B68](this);
}

uint64_t std::ostream::operator<<()
{
  return MEMORY[0x1EEE63EB8]();
}

{
  return MEMORY[0x1EEE63F08]();
}

void operator delete[]()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void operator new()
{
    ;
  }
}

__double2 __sincos_stret(double a1)
{
  MEMORY[0x1EEE73570](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}

__float2 __sincosf_stret(float a1)
{
  MEMORY[0x1EEE73578](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}