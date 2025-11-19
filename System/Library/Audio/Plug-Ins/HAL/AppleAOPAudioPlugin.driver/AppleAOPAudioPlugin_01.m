uint64_t CAVolumeCurve::ConvertScalarToDB(CAVolumeCurve *this, float a2)
{
  v3 = CAVolumeCurve::ConvertScalarToRaw(this, a2);

  return CAVolumeCurve::ConvertRawToDB(this, v3);
}

void **sub_1339C(void **result, uint64_t a2)
{
  if (a2 < 0)
  {
    v7 = *result;
    do
    {
      v8 = *v7;
      if (*v7)
      {
        do
        {
          v4 = v8;
          v8 = v8[1];
        }

        while (v8);
      }

      else
      {
        do
        {
          v4 = v7[2];
          v5 = *v4 == v7;
          v7 = v4;
        }

        while (v5);
      }

      v7 = v4;
    }

    while (!__CFADD__(a2++, 1));
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = *result;
    do
    {
      v3 = v2[1];
      if (v3)
      {
        do
        {
          v4 = v3;
          v3 = *v3;
        }

        while (v3);
      }

      else
      {
        do
        {
          v4 = v2[2];
          v5 = *v4 == v2;
          v2 = v4;
        }

        while (!v5);
      }

      v2 = v4;
    }

    while (a2-- > 1);
  }

  *result = v4;
  return result;
}

uint64_t *sub_13428(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 28);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t *sub_134F8(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = sub_13550(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

uint64_t *sub_13550(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (v2[3])
      {
        break;
      }

      v3 = v2[2];
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = v2[1];
            v12 = *v11;
            v2[1] = *v11;
            v13 = v2;
            if (v12)
            {
              v12[2] = v2;
              v3 = v2[2];
              v13 = *v3;
            }

            v11[2] = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            v2[2] = v11;
            v3 = v11[2];
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = v2[2];
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            v2[2] = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

void sub_136EC(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_136EC(a1, *a2);
    sub_136EC(a1, a2[1]);

    operator delete(a2);
  }
}

uint64_t BorealisOwlLog::SetLevel(uint64_t this)
{
  if (this <= 5)
  {
    BorealisOwlLog::mLogLevel = this;
  }

  return this;
}

void sub_13754(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_alloc_init(objc_opt_class());
  v3 = _sharedPlugin;
  _sharedPlugin = v2;
}

void sub_13D74(void *a1)
{
  __cxa_begin_catch(a1);
  v4 = *(v1 + v3);
  if (v4)
  {
    IOObjectRelease(v4);
    *(v1 + v3) = 0;
  }

  v5 = *(v1 + 52);
  if (v5)
  {
    IOObjectRelease(v5);
    *(v1 + 52) = 0;
  }

  v6 = *(v1 + v2);
  if (v6)
  {
    IONotificationPortDestroy(v6);
    *(v1 + v2) = 0;
  }

  __cxa_rethrow();
}

void sub_13DE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a2;
  sub_1224("+-IOAudioServiceMatchingHandler()\n", a2, a3, a4, a5, a6, a7, a8, v20);
  v24 = &qword_28A18;
  v21 = (*(qword_28A18 + 16))();
  v25 = v21;
  BorealisOwl_IOKitIterator::BorealisOwl_IOKitIterator(v23, v8, 0);
  v9 = BorealisOwl_IOKitIterator::Next(v23);
  BorealisOwl_IOKitObject::BorealisOwl_IOKitObject(&v22, v9);
  while (BorealisOwl_IOKitObject::IsValid(&v22))
  {
    if (BorealisOwl_IOKitObject::ConformsTo(&v22, "AppleAOPAudioController"))
    {
      v10 = +[AppleAOPAudioPlugin sharedPlugin];
      v11 = [[AppleAOPAudioDevice alloc] initWithDeviceUID:*(v10 + 80) withDeviceName:*(v10 + 88) withModelName:*(v10 + 96) withPlugin:v10 withIOObject:BorealisOwl_IOKitObject::CopyObject(&v22)];
      if (v11)
      {
        [v10 addIODevice:v11];
        [(AppleAOPAudioDevice *)v11 activate];
        sub_1224("  Added device %d\n", v12, v13, v14, v15, v16, v17, v18, *(v10 + 8));
      }
    }

    v19 = BorealisOwl_IOKitIterator::Next(v23);
    BorealisOwl_IOKitObject::operator=(&v22, v19);
  }

  BorealisOwl_IOKitObject::~BorealisOwl_IOKitObject(&v22);
  BorealisOwl_IOKitIterator::~BorealisOwl_IOKitIterator(v23);
  if (v21)
  {
    (*(qword_28A18 + 24))();
  }
}

void sub_13FDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, BorealisOwl_IOKitObject *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_B96C(va);
  _Unwind_Resume(a1);
}

void sub_140A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a2;
  sub_1224("+-IOVoiceTriggerServiceMatchingHandler()\n", a2, a3, a4, a5, a6, a7, a8, v13);
  v16 = &qword_28A18;
  v9 = (*(qword_28A18 + 16))(&qword_28A18);
  v17 = v9;
  BorealisOwl_IOKitIterator::BorealisOwl_IOKitIterator(v15, v8, 0);
  v10 = BorealisOwl_IOKitIterator::Next(v15);
  BorealisOwl_IOKitObject::BorealisOwl_IOKitObject(&v14, v10);
  while (BorealisOwl_IOKitObject::IsValid(&v14))
  {
    if (BorealisOwl_IOKitObject::ConformsTo(&v14, "AppleAOPVoiceTriggerController"))
    {
      v11 = +[AppleAOPAudioPlugin sharedPlugin];
      [v11 addVoiceTriggerService:&v14];
    }

    v12 = BorealisOwl_IOKitIterator::Next(v15);
    BorealisOwl_IOKitObject::operator=(&v14, v12);
  }

  BorealisOwl_IOKitObject::~BorealisOwl_IOKitObject(&v14);
  BorealisOwl_IOKitIterator::~BorealisOwl_IOKitIterator(v15);
  if (v9)
  {
    (*(qword_28A18 + 24))(&qword_28A18);
  }
}

void sub_14468(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  sub_B96C(va);
  _Unwind_Resume(a1);
}

void sub_14494(const void **a1, _DWORD *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 2) + 1;
    if (v9 >> 62)
    {
      sub_837C();
    }

    v10 = v4 - v7;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFFCLL;
    v12 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      sub_14C10(a1, v12);
    }

    v13 = (4 * (v8 >> 2));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

void sub_147B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_B96C(&a19);

  _Unwind_Resume(a1);
}

void *sub_14AA8(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 2)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 62))
    {
      v9 = v7 >> 1;
      if (v7 >> 1 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v10 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      sub_14BD4(v6, v10);
    }

    sub_837C();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 2)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

void sub_14BD4(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    sub_14C10(a1, a2);
  }

  sub_837C();
}

void sub_14C10(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  sub_846C();
}

void sub_14C58()
{
  v0 = objc_autoreleasePoolPush();
  CADeprecated::CAMutex::CAMutex(qword_28A18, "IOServiceMutex");
  __cxa_atexit(CADeprecated::CAMutex::~CAMutex, qword_28A18, &dword_0);

  objc_autoreleasePoolPop(v0);
}

void AOPAudioDeviceHWManager::AOPAudioDeviceHWManager(AOPAudioDeviceHWManager *this, unsigned int a2)
{
  *this = off_24C08;
  BorealisOwl_IOKitObject::BorealisOwl_IOKitObject((this + 8), a2);
  *(this + 6) = 0;
  *(this + 88) = 0;
  *(this + 12) = 0;
  *(this + 23) = 0;
  *(this + 56) = 0u;
  *(this + 18) = 0;
  *(this + 136) = xmmword_1CF50;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 184) = xmmword_1CF60;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 200) = xmmword_1CF70;
  *(this + 232) = xmmword_1CF60;
  *(this + 216) = 0u;
  v14[0] = off_24C28;
  v14[3] = v14;
  *(this + 248) = 0u;
  sub_175EC(this + 264, v14);
  sub_1771C(v14);
  v13[0] = off_24C70;
  v13[3] = v13;
  *(this + 37) = 0;
  *(this + 38) = 0;
  sub_17684(this + 312, v13);
  sub_1779C(v13);
  v12[0] = off_24CB8;
  v12[3] = v12;
  *(this + 43) = 0;
  *(this + 44) = 0;
  sub_17684(this + 360, v12);
  sub_1779C(v12);
  AOPAudioDeviceHWManager::_HW_Open(this, v3, v4, v5, v6, v7, v8, v9);
  v10 = 0;
  v11 = 0;
  AOPAudioDeviceHWManager::_HW_VoiceTriggerGetControlValue(this, &v10, &v11);
  *(this + 88) = v11 != 0;
  v10 = 0;
  v11 = 0;
  if (AOPAudioDeviceHWManager::_HW_AudioGetControlValue(this, &v10, &v11))
  {
    *(this + 23) = v11;
  }

  v10 = 1;
  v11 = 0;
  if (AOPAudioDeviceHWManager::_HW_AudioGetControlValue(this, &v10, &v11))
  {
    *(this + 24) = v11;
  }

  v10 = 2;
  v11 = 0;
  if (AOPAudioDeviceHWManager::_HW_AudioGetControlValue(this, &v10, &v11))
  {
    *(this + 25) = v11;
  }
}

void sub_14F08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1779C(va);
  sub_1779C(v6);
  sub_1771C(v5);
  v9 = *v7;
  *v7 = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  BorealisOwl_IOKitObject::~BorealisOwl_IOKitObject(v4);
  _Unwind_Resume(a1);
}

BorealisOwl_IOKitObject *AOPAudioDeviceHWManager::_HW_Open(AOPAudioDeviceHWManager *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_1224("+-DeviceHWManager::_HW_Open()\n", a2, a3, a4, a5, a6, a7, a8, outputStruct);
  BorealisOwl_IOKitObject::OpenConnection((this + 8), 0, v9, v10, v11, v12, v13, v14);
  if (BorealisOwl_IOKitObject::CallMethod((this + 8), 0, 0, 0, 0, 0, 0, 0, 0, 0))
  {
    sub_8C70("exception thrown in BorealisOwlDevice::%s:%d : %s\n\n\n", v15, v16, v17, v18, v19, v20, v21, "_HW_Open");
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_18DEC();
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_24B48;
    exception[2] = 1852797029;
  }

  AOPAudioDeviceHWManager::HW_AcquireRingBuffer(this);
  AOPAudioDeviceHWManager::HW_UpdateRingBufferDescription(this, v22, v23, v24, v25, v26, v27, v28);
  v34 = 0;
  v33 = 1;
  if (AOPAudioDeviceHWManager::_HW_AudioGetControlValue(this, &v33, &v34))
  {
    v29 = v34;
    *(this + 23) = v34;
    *(this + 24) = v29;
  }

  v34 = 0;
  v33 = 0;
  result = AOPAudioDeviceHWManager::_HW_VoiceTriggerGetControlValue(this, &v33, &v34);
  *(this + 88) = v34 != 0;
  return result;
}

BOOL AOPAudioDeviceHWManager::HW_AudioGetControlValue(AOPAudioDeviceHWManager *this, int a2, int *a3)
{
  v7 = a2;
  v8 = 0;
  switch(a2)
  {
    case 2:
      result = AOPAudioDeviceHWManager::_HW_AudioGetControlValue(this, &v7, &v8);
      if (result)
      {
        v6 = v8;
        *(this + 25) = v8;
        if (!a3)
        {
          return 1;
        }

        goto LABEL_9;
      }

      break;
    case 1:
      result = AOPAudioDeviceHWManager::_HW_AudioGetControlValue(this, &v7, &v8);
      if (!result)
      {
        return result;
      }

      v6 = v8;
      *(this + 24) = v8;
      if (!a3)
      {
        return 1;
      }

LABEL_9:
      *a3 = v6;
      return 1;
    case 0:
      result = AOPAudioDeviceHWManager::_HW_AudioGetControlValue(this, &v7, &v8);
      if (!result)
      {
        return result;
      }

      v6 = v8;
      *(this + 23) = v8;
      if (!a3)
      {
        return 1;
      }

      goto LABEL_9;
    default:
      return 0;
  }

  return result;
}

void AOPAudioDeviceHWManager::~AOPAudioDeviceHWManager(AOPAudioDeviceHWManager *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *this = off_24C08;
  AOPAudioDeviceHWManager::_HW_Close(this, a2, a3, a4, a5, a6, a7, a8);
  sub_1779C(this + 360);
  sub_1779C(this + 312);
  sub_1771C(this + 264);
  v9 = *(this + 6);
  *(this + 6) = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  BorealisOwl_IOKitObject::~BorealisOwl_IOKitObject((this + 8));
}

{
  AOPAudioDeviceHWManager::~AOPAudioDeviceHWManager(this, a2, a3, a4, a5, a6, a7, a8);

  operator delete();
}

AOPAudioDeviceHWManager *AOPAudioDeviceHWManager::_HW_Close(AOPAudioDeviceHWManager *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = *(this + 7);
  sub_1224("+-DeviceHWManager::_HW_Close() {%p, %p}\n", a2, a3, a4, a5, a6, a7, a8, *(this + 10));
  AOPAudioDeviceHWManager::HW_ReleaseRingBuffer(this);
  BorealisOwl_IOKitObject::CallMethod((this + 8), 1u, 0, 0, 0, 0, 0, 0, 0, 0);
  BorealisOwl_IOKitObject::CloseConnection((this + 8));

  return AOPAudioDeviceHWManager::_CloseVTService(this, v9, v10, v11, v12, v13, v14, v15);
}

void AOPAudioDeviceHWManager::HW_AddVoiceTriggerSupport(AOPAudioDeviceHWManager *this, BorealisOwl_IOKitObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(this + 6))
  {
    AOPAudioDeviceHWManager::_CloseVTService(this, a2, a3, a4, a5, a6, a7, a8);
  }

  operator new();
}

AOPAudioDeviceHWManager *AOPAudioDeviceHWManager::_CloseVTService(AOPAudioDeviceHWManager *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = this;
  if (*(this + 6) && (sub_1224("+-DeviceHWManager::_CloseVTService()\n", a2, a3, a4, a5, a6, a7, a8, outputStruct), (this = *(v8 + 6)) != 0))
  {
    BorealisOwl_IOKitObject::CallMethod(this, 1u, 0, 0, 0, 0, 0, 0, 0, 0);
    BorealisOwl_IOKitObject::CloseConnection(*(v8 + 6));
    this = *(v8 + 6);
    *(v8 + 6) = 0;
    if (this)
    {
      v9 = *(*this + 8);

      return v9();
    }
  }

  else
  {
    *(v8 + 6) = 0;
  }

  return this;
}

uint64_t AOPAudioDeviceHWManager::HW_CopyDeviceUID(AOPAudioDeviceHWManager *this, unsigned int a2, uint64_t a3, const __CFString **a4)
{
  v5 = 0;
  BorealisOwl_IOKitObject::CopyProperty_CFString(this, @"device UID", &v5, a4);
  return v5;
}

mach_vm_address_t AOPAudioDeviceHWManager::HW_AcquireRingBuffer(AOPAudioDeviceHWManager *this)
{
  v5 = 0;
  v2 = BorealisOwl_IOKitObject::MapMemory((this + 8), 0, 1u, &v5);
  *(this + 10) = v2;
  if (!v2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_18F10();
    }

LABEL_8:
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_24B48;
    exception[2] = 560947818;
  }

  result = BorealisOwl_IOKitObject::MapMemory((this + 8), 1u, 1u, this + 16);
  *(this + 7) = result;
  if (!result)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_18ECC();
    }

    goto LABEL_8;
  }

  return result;
}

void AOPAudioDeviceHWManager::HW_ReleaseRingBuffer(AOPAudioDeviceHWManager *this)
{
  v2 = *(this + 10);
  if (v2)
  {
    BorealisOwl_IOKitObject::ReleaseMemory((this + 8), v2, 0);
    *(this + 10) = 0;
  }

  v3 = *(this + 7);
  if (v3)
  {
    BorealisOwl_IOKitObject::ReleaseMemory((this + 8), v3, 1u);
    *(this + 7) = 0;
  }
}

uint64_t AOPAudioDeviceHWManager::HW_EnableListening(AOPAudioDeviceHWManager *this)
{
  *v11 = xmmword_1CF80;
  result = BorealisOwl_IOKitObject::CallMethod((this + 8), 5u, v11, 2u, 0, 0, 0, 0, 0, 0);
  if (result)
  {
    sub_8C70("AOPAudioDeviceHWManager::HW_EnableListening: user client method failed", v2, v3, v4, v5, v6, v7, v8, outputStruct);
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_24B48;
    exception[2] = 1852797029;
  }

  return result;
}

BOOL AOPAudioDeviceHWManager::HW_AudioSetControlValue(AOPAudioDeviceHWManager *this, int a2, unsigned int a3)
{
  v5 = 0;
  if (a2 > 1)
  {
    if (a2 != 2)
    {
      if (a2 == 3 || a2 == 5)
      {
        v7 = a2;
        v8 = a3;
        return BorealisOwl_IOKitObject::CallMethod((this + 8), 5u, &v7, 2u, 0, 0, 0, 0, 0, 0) == 0;
      }

      return v5;
    }

    v7 = 2;
    v8 = a3;
    if (!BorealisOwl_IOKitObject::CallMethod((this + 8), 5u, &v7, 2u, 0, 0, 0, 0, 0, 0))
    {
      *(this + 25) = a3;
      return 1;
    }

    return 0;
  }

  if (!a2)
  {
    v7 = 0;
    v8 = a3;
    if (!BorealisOwl_IOKitObject::CallMethod((this + 8), 5u, &v7, 2u, 0, 0, 0, 0, 0, 0))
    {
      *(this + 23) = a3;
      return 1;
    }

    return 0;
  }

  if (a2 == 1)
  {
    v5 = 1;
    v7 = 1;
    v8 = a3;
    if (BorealisOwl_IOKitObject::CallMethod((this + 8), 5u, &v7, 2u, 0, 0, 0, 0, 0, 0))
    {
      v5 = 0;
      *(this + 24) = a3;
    }
  }

  return v5;
}

BOOL AOPAudioDeviceHWManager::_HW_AudioGetControlValue(AOPAudioDeviceHWManager *this, unint64_t *a2, unint64_t *a3)
{
  *a3 = 0;
  v13 = 1;
  v11 = BorealisOwl_IOKitObject::CallMethod((this + 8), 4u, a2, 1u, 0, 0, a3, &v13, 0, 0);
  if (v11)
  {
    sub_8C70("DeviceHWManager::_HW_AudioGetControlValue(inControlID: %llu) failing\n", v4, v5, v6, v7, v8, v9, v10, *a2);
  }

  return v11 == 0;
}

BOOL AOPAudioDeviceHWManager::_HW_AudioSetControlValue(AOPAudioDeviceHWManager *this, unsigned int a2, unsigned int a3)
{
  v4[0] = a2;
  v4[1] = a3;
  return BorealisOwl_IOKitObject::CallMethod((this + 8), 5u, v4, 2u, 0, 0, 0, 0, 0, 0) == 0;
}

uint64_t AOPAudioDeviceHWManager::HW_GetVoiceTriggerData(uint64_t a1, void *outputStruct)
{
  v2 = *(a1 + 48);
  if (!v2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_191C8();
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_24B48;
    v12 = 1937010544;
LABEL_10:
    exception[2] = v12;
  }

  v13 = 160;
  result = BorealisOwl_IOKitObject::CallMethod(v2, 4u, 0, 0, 0, 0, 0, 0, outputStruct, &v13);
  if (result)
  {
    sub_8C70("exception thrown in BorealisOwlDevice::%s:%d : %s\n\n\n", v4, v5, v6, v7, v8, v9, v10, "HW_GetVoiceTriggerData");
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_19158();
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_24B48;
    v12 = 1852797029;
    goto LABEL_10;
  }

  return result;
}

uint64_t AOPAudioDeviceHWManager::HW_IsVoiceTriggerEnabled(AOPAudioDeviceHWManager *this)
{
  v1 = *(this + 6);
  if (v1)
  {
    Object = BorealisOwl_IOKitObject::GetObject(v1);
    v14 = 0;
    if ((BorealisOwl_IOKitObject::CopyProperty_BOOL(Object, @"voice trigger enabled", &v14, v3) & 1) == 0)
    {
      sub_8C70("exception thrown in BorealisOwlDevice::%s:%d : %s\n\n\n", v4, v5, v6, v7, v8, v9, v10, "HW_IsVoiceTriggerEnabled");
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_1927C();
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = off_24B48;
      exception[2] = 1852797029;
    }

    v11 = v14;
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

uint64_t AOPAudioDeviceHWManager::HW_GetIsIORunning(AOPAudioDeviceHWManager *this)
{
  Object = BorealisOwl_IOKitObject::GetObject((this + 8));
  v12 = 0;
  if ((BorealisOwl_IOKitObject::CopyProperty_BOOL(Object, @"listening enabled", &v12, v2) & 1) == 0)
  {
    sub_8C70("exception thrown in BorealisOwlDevice::%s:%d : %s\n\n\n", v3, v4, v5, v6, v7, v8, v9, "HW_GetIsIORunning");
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_192EC();
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_24B48;
    exception[2] = 1852797029;
  }

  return v12;
}

uint64_t AOPAudioDeviceHWManager::HW_HasPropertyEnableListeningOnGesture(AOPAudioDeviceHWManager *this)
{
  Object = BorealisOwl_IOKitObject::GetObject((this + 8));
  if (BorealisOwl_IOKitObject::HasProperty(Object, @"listening on gesture supported", v3))
  {
    v4 = BorealisOwl_IOKitObject::GetObject((this + 8));
    var11[0] = 0;
    if ((BorealisOwl_IOKitObject::CopyProperty_BOOL(v4, @"listening on gesture supported", var11, v5) & 1) == 0)
    {
      sub_8C70("exception thrown in BorealisOwlDevice::%s:%d : %s\n\n\n", v6, v7, v8, v9, v10, v11, v12, "HW_HasPropertyEnableListeningOnGesture");
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_1966C();
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = off_24B48;
      exception[2] = 1852797029;
    }

    v13 = var11[0];
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

uint64_t AOPAudioDeviceHWManager::HW_IsListeningOnGestureEnabled(AOPAudioDeviceHWManager *this)
{
  Object = BorealisOwl_IOKitObject::GetObject((this + 8));
  v12 = 0;
  if ((BorealisOwl_IOKitObject::CopyProperty_BOOL(Object, @"listening on gesture enabled", &v12, v2) & 1) == 0)
  {
    sub_8C70("exception thrown in BorealisOwlDevice::%s:%d : %s\n\n\n", v3, v4, v5, v6, v7, v8, v9, "HW_IsListeningOnGestureEnabled");
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_196DC();
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_24B48;
    exception[2] = 1852797029;
  }

  return v12;
}

uint64_t AOPAudioDeviceHWManager::_GetHWDescription(AOPAudioDeviceHWManager *this)
{
  sub_B67C(&v18);
  v2 = *(this + 6);
  if (v2)
  {
    IsConnectionOpen = BorealisOwl_IOKitObject::IsConnectionOpen(v2);
    if (!IsConnectionOpen)
    {
      BorealisOwl_IOKitObject::OpenConnection(*(this + 6), 0, v3, v4, v5, v6, v7, v8);
    }

    sub_C0F4(&v18, "  VoiceTriggerEnable:  ", 23);
    v22 = 0;
    v23 = 0;
    AOPAudioDeviceHWManager::_HW_VoiceTriggerGetControlValue(this, &v22, &v23);
    *(this + 88) = v23 != 0;
    v10 = std::ostream::operator<<();
    sub_C0F4(v10, "\n", 1);
    if (!IsConnectionOpen)
    {
      BorealisOwl_IOKitObject::CloseConnection(*(this + 6));
    }
  }

  v24 = 0;
  v25 = 0;
  if (AOPAudioDeviceHWManager::_HW_AudioGetControlValue(this, &v24, &v25))
  {
    *(this + 23) = v25;
    sub_C0F4(&v18, "  kControlEnabledChannelMask:  ", 31);
    v11 = std::ostream::operator<<();
    sub_C0F4(v11, "\n", 1);
  }

  v24 = 1;
  v25 = 0;
  if (AOPAudioDeviceHWManager::_HW_AudioGetControlValue(this, &v24, &v25))
  {
    *(this + 24) = v25;
    sub_C0F4(&v18, "  kControlActiveChannelMask:   ", 31);
    v12 = std::ostream::operator<<();
    sub_C0F4(v12, "\n", 1);
  }

  sub_C0F4(&v18, "  listening enabled:                          ", 46);
  AOPAudioDeviceHWManager::HW_GetIsIORunning(this);
  v13 = std::ostream::operator<<();
  sub_C0F4(v13, "\n", 1);
  HasPropertyEnableListeningOnGesture = AOPAudioDeviceHWManager::HW_HasPropertyEnableListeningOnGesture(this);
  sub_C0F4(&v18, "  has listening on gesture:                   ", 46);
  v15 = std::ostream::operator<<();
  sub_C0F4(v15, "\n", 1);
  if (HasPropertyEnableListeningOnGesture)
  {
    sub_C0F4(&v18, "  listening on gesture enabled:               ", 46);
    AOPAudioDeviceHWManager::HW_IsListeningOnGestureEnabled(this);
    v16 = std::ostream::operator<<();
    sub_C0F4(v16, "\n", 1);
  }

  std::stringbuf::str();
  if (v21 < 0)
  {
    operator delete(v20[7].__locale_);
  }

  std::locale::~locale(v20);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_1626C(void *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __cxa_begin_catch(a1);
  v2 = sub_C0F4(va, "  <exception thrown in HW_VoiceTriggerGetControlValue", 53);
  sub_C0F4(v2, "\n", 1);
  __cxa_end_catch();
  JUMPOUT(0x15FF0);
}

void sub_1629C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __cxa_end_catch();
  sub_16304(va);
  _Unwind_Resume(a1);
}

uint64_t sub_16304(uint64_t a1)
{
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  std::locale::~locale((a1 + 16));
  std::ostream::~ostream();
  std::ios::~ios();
  return a1;
}

uint64_t AOPAudioDeviceHWManager::RingBufferDescription::DumpToString(AOPAudioDeviceHWManager::RingBufferDescription *this)
{
  sub_B67C(&v11);
  sub_C0F4(&v11, "  mBuffer:                  ", 28);
  v2 = *this;
  v3 = std::ostream::operator<<();
  sub_C0F4(v3, "\n", 1);
  sub_C0F4(&v11, "  mSizeBytes:               ", 28);
  v4 = *(this + 2);
  v5 = std::ostream::operator<<();
  sub_C0F4(v5, "\n", 1);
  sub_C0F4(&v11, "  mSafetyOffsetFrames:      ", 28);
  v6 = *(this + 3);
  v7 = std::ostream::operator<<();
  sub_C0F4(v7, "\n", 1);
  sub_C0F4(&v11, "  mZeroTimeStampWrapFrames: ", 28);
  v8 = *(this + 4);
  v9 = std::ostream::operator<<();
  sub_C0F4(v9, "\n", 1);
  std::stringbuf::str();
  if (v14 < 0)
  {
    operator delete(v13[7].__locale_);
  }

  std::locale::~locale(v13);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_16618(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_16304(va);
  _Unwind_Resume(a1);
}

void *operator<<(void *a1, uint64_t *a2)
{
  sub_C0F4(a1, "  mInitialSampleTime: ", 22);
  v4 = *a2;
  v5 = std::ostream::operator<<();
  sub_C0F4(v5, "\n", 1);
  sub_C0F4(a1, "  mFrameTimeDelta:    ", 22);
  v6 = a2[1];
  v7 = std::ostream::operator<<();
  sub_C0F4(v7, "\n", 1);
  sub_C0F4(a1, "  mSampleTime:        ", 22);
  v8 = a2[2];
  v9 = std::ostream::operator<<();
  sub_C0F4(v9, "\n", 1);
  sub_C0F4(a1, "  mHostTime:          ", 22);
  v10 = a2[3];
  v11 = std::ostream::operator<<();
  sub_C0F4(v11, "\n", 1);
  return a1;
}

uint64_t AOPAudioDeviceHWManager::_DumpDebugSnapshots(AOPAudioDeviceHWManager *this)
{
  sub_B67C(&v39);
  v2 = sub_C0F4(&v39, "DriverStatusInitial                     ", 40);
  v3 = sub_C0F4(v2, "\n", 1);
  v4 = *(this + 120);
  *v34 = *(this + 104);
  v35 = v4;
  v36 = *(this + 136);
  sub_16B8C(v34);
  if (v38 >= 0)
  {
    v5 = __p;
  }

  else
  {
    v5 = __p[0];
  }

  if (v38 >= 0)
  {
    v6 = HIBYTE(v38);
  }

  else
  {
    v6 = __p[1];
  }

  sub_C0F4(v3, v5, v6);
  if (SHIBYTE(v38) < 0)
  {
    operator delete(__p[0]);
  }

  v7 = sub_C0F4(&v39, "DriverStatusCurrent                     ", 40);
  v8 = sub_C0F4(v7, "\n", 1);
  v9 = *(this + 168);
  *v34 = *(this + 152);
  v35 = v9;
  v36 = *(this + 184);
  sub_16B8C(v34);
  if (v38 >= 0)
  {
    v10 = __p;
  }

  else
  {
    v10 = __p[0];
  }

  if (v38 >= 0)
  {
    v11 = HIBYTE(v38);
  }

  else
  {
    v11 = __p[1];
  }

  sub_C0F4(v8, v10, v11);
  if (SHIBYTE(v38) < 0)
  {
    operator delete(__p[0]);
  }

  v12 = sub_C0F4(&v39, "SampleTimeInitial                       ", 40);
  *__p = *(this + 200);
  v38 = *(this + 27);
  sub_16D30(__p);
  if ((SBYTE7(v35) & 0x80u) == 0)
  {
    v13 = v34;
  }

  else
  {
    v13 = v34[0];
  }

  if ((SBYTE7(v35) & 0x80u) == 0)
  {
    v14 = BYTE7(v35);
  }

  else
  {
    v14 = v34[1];
  }

  sub_C0F4(v12, v13, v14);
  if (SBYTE7(v35) < 0)
  {
    operator delete(v34[0]);
  }

  v15 = sub_C0F4(&v39, "SampleTimeCurrent                       ", 40);
  *__p = *(this + 14);
  v38 = *(this + 30);
  sub_16D30(__p);
  if ((SBYTE7(v35) & 0x80u) == 0)
  {
    v16 = v34;
  }

  else
  {
    v16 = v34[0];
  }

  if ((SBYTE7(v35) & 0x80u) == 0)
  {
    v17 = BYTE7(v35);
  }

  else
  {
    v17 = v34[1];
  }

  sub_C0F4(v15, v16, v17);
  if (SBYTE7(v35) < 0)
  {
    operator delete(v34[0]);
  }

  v18 = sub_C0F4(&v39, "ChecksumVerifier                        ", 40);
  v19 = *(this + 31);
  v20 = *(this + 32);
  sub_16EE4();
  if ((SBYTE7(v35) & 0x80u) == 0)
  {
    v21 = v34;
  }

  else
  {
    v21 = v34[0];
  }

  if ((SBYTE7(v35) & 0x80u) == 0)
  {
    v22 = BYTE7(v35);
  }

  else
  {
    v22 = v34[1];
  }

  sub_C0F4(v18, v21, v22);
  if (SBYTE7(v35) < 0)
  {
    operator delete(v34[0]);
  }

  v23 = sub_C0F4(&v39, "OOBOver                                 ", 40);
  v24 = *(this + 37);
  v25 = *(this + 38);
  sub_16EE4();
  if ((SBYTE7(v35) & 0x80u) == 0)
  {
    v26 = v34;
  }

  else
  {
    v26 = v34[0];
  }

  if ((SBYTE7(v35) & 0x80u) == 0)
  {
    v27 = BYTE7(v35);
  }

  else
  {
    v27 = v34[1];
  }

  sub_C0F4(v23, v26, v27);
  if (SBYTE7(v35) < 0)
  {
    operator delete(v34[0]);
  }

  v28 = sub_C0F4(&v39, "OOBUnder                                ", 40);
  v29 = *(this + 43);
  v30 = *(this + 44);
  sub_16EE4();
  if ((SBYTE7(v35) & 0x80u) == 0)
  {
    v31 = v34;
  }

  else
  {
    v31 = v34[0];
  }

  if ((SBYTE7(v35) & 0x80u) == 0)
  {
    v32 = BYTE7(v35);
  }

  else
  {
    v32 = v34[1];
  }

  sub_C0F4(v28, v31, v32);
  if (SBYTE7(v35) < 0)
  {
    operator delete(v34[0]);
  }

  std::stringbuf::str();
  if (v42 < 0)
  {
    operator delete(v41[7].__locale_);
  }

  std::locale::~locale(v41);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_16B1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_16304(&a24);
  _Unwind_Resume(a1);
}

uint64_t sub_16B8C(__int128 *a1)
{
  sub_B67C(&v7);
  v2 = *a1;
  v6[1] = a1[1];
  v6[0] = v2;
  v3 = *(a1 + 5);
  operator<<(&v7, v6);
  sub_C0F4(&v7, "  updates:            ", 22);
  v4 = std::ostream::operator<<();
  sub_C0F4(v4, "\n", 1);
  std::stringbuf::str();
  if (v10 < 0)
  {
    operator delete(v9[7].__locale_);
  }

  std::locale::~locale(v9);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_16D1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_16304(va);
  _Unwind_Resume(a1);
}

uint64_t sub_16D30(uint64_t *a1)
{
  sub_B67C(&v6);
  v2 = *a1;
  v3 = a1[2];
  sub_C0F4(&v6, "[", 1);
  v4 = std::ostream::operator<<();
  sub_C0F4(v4, ", updates: ", 11);
  std::ostream::operator<<();
  sub_C0F4(&v6, "]\n", 2);
  std::stringbuf::str();
  if (v9 < 0)
  {
    operator delete(v8[7].__locale_);
  }

  std::locale::~locale(v8);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_16ED0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_16304(va);
  _Unwind_Resume(a1);
}

uint64_t sub_16EE4()
{
  sub_B67C(&v3);
  sub_C0F4(&v3, "[passes: ", 9);
  v0 = std::ostream::operator<<();
  sub_C0F4(v0, "/", 1);
  v1 = std::ostream::operator<<();
  sub_C0F4(v1, "]\n", 2);
  std::stringbuf::str();
  if (v6 < 0)
  {
    operator delete(v5[7].__locale_);
  }

  std::locale::~locale(v5);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_17070(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_16304(va);
  _Unwind_Resume(a1);
}

uint64_t AOPAudioDeviceHWManager::_DumpDriverStatus(AOPAudioDeviceHWManager *this)
{
  sub_B67C(&v8);
  if (*(this + 10))
  {
    v2 = sub_C0F4(&v8, "DriverStatus:                           ", 40);
    v3 = sub_C0F4(v2, "\n", 1);
    v4 = operator<<(v3, *(this + 10));
  }

  else
  {
    v5 = sub_C0F4(&v8, "DriverStatus:                           ", 40);
    v6 = sub_C0F4(v5, "\n", 1);
    v4 = sub_C0F4(v6, "<null>", 6);
  }

  sub_C0F4(v4, "\n", 1);
  std::stringbuf::str();
  if (v11 < 0)
  {
    operator delete(v10[7].__locale_);
  }

  std::locale::~locale(v10);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_17244(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_16304(va);
  _Unwind_Resume(a1);
}

uint64_t AOPAudioDeviceHWManager::HW_DumpDriverState(AOPAudioDeviceHWManager *this)
{
  sub_B67C(&v26);
  v2 = sub_C0F4(&v26, "InputRingBuffer:                      \n", 39);
  AOPAudioDeviceHWManager::RingBufferDescription::DumpToString(&__p, (this + 56));
  if ((v25 & 0x80u) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if ((v25 & 0x80u) == 0)
  {
    v4 = v25;
  }

  else
  {
    v4 = v24;
  }

  v5 = sub_C0F4(v2, p_p, v4);
  sub_C0F4(v5, "\n", 1);
  if (v25 < 0)
  {
    operator delete(__p);
  }

  AOPAudioDeviceHWManager::_DumpDriverStatus(&__p, this);
  if ((v25 & 0x80u) == 0)
  {
    v6 = &__p;
  }

  else
  {
    v6 = __p;
  }

  if ((v25 & 0x80u) == 0)
  {
    v7 = v25;
  }

  else
  {
    v7 = v24;
  }

  sub_C0F4(&v26, v6, v7);
  if (v25 < 0)
  {
    operator delete(__p);
  }

  sub_C0F4(&v26, "mVoiceTriggerEnabled:                   ", 40);
  v8 = *(this + 88);
  v9 = std::ostream::operator<<();
  sub_C0F4(v9, "\n", 1);
  sub_C0F4(&v26, "mEnabledChannelMask:                    ", 40);
  v10 = *(this + 23);
  v11 = std::ostream::operator<<();
  sub_C0F4(v11, "\n", 1);
  sub_C0F4(&v26, "mActiveChannelMask:                     ", 40);
  v12 = *(this + 24);
  v13 = std::ostream::operator<<();
  sub_C0F4(v13, "\n", 1);
  sub_C0F4(&v26, "mInputSampleRate:                       ", 40);
  v14 = *(this + 25);
  v15 = std::ostream::operator<<();
  sub_C0F4(v15, "\n", 1);
  v16 = sub_C0F4(&v26, "_HW_ description:                     \n", 39);
  AOPAudioDeviceHWManager::_GetHWDescription(&__p, this);
  if ((v25 & 0x80u) == 0)
  {
    v17 = &__p;
  }

  else
  {
    v17 = __p;
  }

  if ((v25 & 0x80u) == 0)
  {
    v18 = v25;
  }

  else
  {
    v18 = v24;
  }

  v19 = sub_C0F4(v16, v17, v18);
  sub_C0F4(v19, "\n", 1);
  if (v25 < 0)
  {
    operator delete(__p);
  }

  AOPAudioDeviceHWManager::_DumpDebugSnapshots(&__p, this);
  if ((v25 & 0x80u) == 0)
  {
    v20 = &__p;
  }

  else
  {
    v20 = __p;
  }

  if ((v25 & 0x80u) == 0)
  {
    v21 = v25;
  }

  else
  {
    v21 = v24;
  }

  sub_C0F4(&v26, v20, v21);
  if (v25 < 0)
  {
    operator delete(__p);
  }

  std::stringbuf::str();
  if (v29 < 0)
  {
    operator delete(v28[7].__locale_);
  }

  std::locale::~locale(v28);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_175A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_16304(&a15);
  _Unwind_Resume(a1);
}

uint64_t sub_175EC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t sub_17684(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t sub_1771C(uint64_t a1)
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

uint64_t sub_1779C(uint64_t a1)
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

BOOL VoiceTriggerFileLoggingIsEnabled(void)
{
  v0 = MGCopyAnswer();
  Value = CFBooleanGetValue(v0);
  CFRelease(v0);
  if (!Value)
  {
    return 0;
  }

  keyExistsAndHasValidFormat = 0;
  AppIntegerValue = CFPreferencesGetAppIntegerValue(@"Second Pass Audio Logging Enabled", @"com.apple.voicetrigger", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    v3 = AppIntegerValue <= 0;
  }

  else
  {
    v3 = 1;
  }

  return !v3;
}

BOOL PowerWakeFileLoggingIsEnabled(void)
{
  v0 = MGCopyAnswer();
  Value = CFBooleanGetValue(v0);
  CFRelease(v0);
  if (!Value)
  {
    return 0;
  }

  keyExistsAndHasValidFormat = 0;
  AppIntegerValue = CFPreferencesGetAppIntegerValue(@"Log AOP Audio On Wake", @"com.apple.voicetrigger", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    v3 = AppIntegerValue <= 0;
  }

  else
  {
    v3 = 1;
  }

  return !v3;
}

unint64_t GetOrCreateAudioLogDirectory@<X0>(_BYTE *a1@<X8>)
{
  if ((atomic_load_explicit(&qword_28A88, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28A88))
  {
    qword_28A80 = sub_17BD0();
    __cxa_guard_release(&qword_28A88);
  }

  v2 = qword_28A80;
  result = strlen(qword_28A80);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_C484();
  }

  v4 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  a1[23] = result;
  if (result)
  {
    result = memmove(a1, v2, result);
  }

  a1[v4] = 0;
  return result;
}

const char *sub_17BD0()
{
  v0 = +[NSFileManager defaultManager];
  v1 = [v0 fileExistsAtPath:@"/var/mobile/Library/Logs/CrashReporter/VoiceTrigger/audio/" isDirectory:0];

  if (v1)
  {
    v2 = 0;
  }

  else
  {
    syslog(3, "dir doesn't exist }\n");
    v3 = +[NSFileManager defaultManager];
    v7 = 0;
    v4 = [v3 createDirectoryAtPath:@"/var/mobile/Library/Logs/CrashReporter/VoiceTrigger/audio/" withIntermediateDirectories:1 attributes:0 error:&v7];
    v2 = v7;

    if ((v4 & 1) == 0)
    {
      syslog(3, "could not create }\n");
      v5 = "/tmp";
      goto LABEL_6;
    }
  }

  v5 = "/var/mobile/Library/Logs/CrashReporter/VoiceTrigger/audio/";
LABEL_6:

  return v5;
}

void CACFMachPort::CACFMachPort(CACFMachPort *this, void (__cdecl *a2)(CFMachPortRef, void *, CFIndex, void *), void *a3)
{
  *this = &off_24D00;
  *(this + 1) = 0;
  v4 = (this + 8);
  *(this + 2) = 0;
  *(this + 24) = 1;
  context.version = 1;
  context.info = a3;
  memset(&context.retain, 0, 24);
  v5 = CFMachPortCreate(0, a2, &context, 0);
  *v4 = v5;
  if (!v5)
  {
    v7 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v7)
    {
      sub_198CC(v7, v8, v9, v10, v11, v12, v13, v14);
    }

LABEL_8:
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_24B48;
    exception[2] = 2003329396;
  }

  RunLoopSource = CFMachPortCreateRunLoopSource(0, v5, 0);
  *(this + 2) = RunLoopSource;
  if (!RunLoopSource)
  {
    CFMachPortInvalidate(*v4);
    CFRelease(*v4);
    *v4 = 0;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *v16 = 0;
      _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, " CACFMachPort::CACFMachPort(s): couldn't create the CFRunLoopSource", v16, 2u);
    }

    goto LABEL_8;
  }
}

void CACFMachPort::CACFMachPort(CACFMachPort *this, mach_port_t a2, CFMachPortCallBack callout, void (__cdecl *a4)(CFMachPortRef, void *), void *a5)
{
  *this = &off_24D00;
  *(this + 1) = 0;
  v7 = (this + 8);
  *(this + 2) = 0;
  *(this + 24) = 0;
  context.version = 1;
  context.info = a5;
  memset(&context.retain, 0, 24);
  if (a2)
  {
    v8 = CFMachPortCreateWithPort(0, a2, callout, &context, 0);
    *v7 = v8;
    if (v8)
    {
      v9 = v8;
      v10 = 0;
      goto LABEL_6;
    }

    v13 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v13)
    {
      sub_19908(v13, v14, v15, v16, v17, v18, v19, v20);
    }

LABEL_18:
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_24B48;
    exception[2] = 2003329396;
  }

  v11 = CFMachPortCreate(0, callout, &context, 0);
  *v7 = v11;
  if (!v11)
  {
    v21 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v21)
    {
      sub_19944(v21, v22, v23, v24, v25, v26, v27, v28);
    }

    goto LABEL_18;
  }

  v9 = v11;
  v10 = 1;
LABEL_6:
  *(this + 24) = v10;
  RunLoopSource = CFMachPortCreateRunLoopSource(0, v9, 0);
  *(this + 2) = RunLoopSource;
  if (!RunLoopSource)
  {
    if (*(this + 24) == 1)
    {
      CFMachPortInvalidate(*v7);
    }

    CFRelease(*v7);
    *v7 = 0;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *v30 = 0;
      _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, " CACFMachPort::CACFMachPort: couldn't create the CFRunLoopSource", v30, 2u);
    }

    goto LABEL_18;
  }

  if (a4)
  {
    CFMachPortSetInvalidationCallBack(*v7, a4);
  }
}

void CACFMachPort::~CACFMachPort(CACFMachPort *this)
{
  *this = &off_24D00;
  v2 = *(this + 2);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(this + 1);
  if (v3)
  {
    if (*(this + 24) == 1)
    {
      CFMachPortInvalidate(v3);
      v3 = *(this + 1);
    }

    CFRelease(v3);
  }
}

{
  CACFMachPort::~CACFMachPort(this);

  operator delete();
}

uint64_t CACFMachPort::ReceiveMessage(CFMachPortRef *this, mach_msg_size_t a2, mach_msg_header_t *a3, mach_msg_timeout_t a4)
{
  Port = CFMachPortGetPort(this[1]);
  *&a3->msgh_bits = 0;
  a3->msgh_remote_port = 0;
  a3->msgh_local_port = Port;
  *&a3->msgh_voucher_port = 0;
  if (a4)
  {
    v8 = 258;
  }

  else
  {
    v8 = 2;
  }

  return mach_msg(a3, v8, 0, a2, Port, a4, 0);
}

id AppleAOPAudioPluginFactory(uint64_t a1, const void *a2)
{
  v3 = CFUUIDGetConstantUUIDWithBytes(0, 0x44u, 0x3Au, 0xBAu, 0xB8u, 0xE7u, 0xB3u, 0x49u, 0x1Au, 0xB9u, 0x85u, 0xBEu, 0xB9u, 0x18u, 0x70u, 0x30u, 0xDBu);
  if (!CFEqual(a2, v3))
  {
    return 0;
  }

  v4 = +[AppleAOPAudioPlugin sharedPlugin];
  v5 = [v4 driverRef];

  return v5;
}

void sub_18710(uint64_t a1, int a2)
{
  v2[0] = 67109378;
  v2[1] = a2;
  v3 = 2080;
  v4 = a1;
  _os_log_error_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, " CAMutex::Try: call to pthread_mutex_trylock failed, Error: %d (%s)", v2, 0x12u);
}

void sub_189D0(int a1)
{
  v1[0] = 67109120;
  v1[1] = a1;
  _os_log_error_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, " CADispatchQueue::RemoveMachPortReceiver: deallocating the send right failed, Error: 0x%X", v1, 8u);
}

void sub_18A50(int a1)
{
  v1[0] = 67109120;
  v1[1] = a1;
  _os_log_error_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, " CADispatchQueue::RemoveMachPortReceiver: deallocating the receive right failed, Error: 0x%X", v1, 8u);
}

uint64_t std::ostream::operator<<()
{
  return std::ostream::operator<<();
}

{
  return std::ostream::operator<<();
}

{
  return std::ostream::operator<<();
}

{
  return std::ostream::operator<<();
}

{
  return std::ostream::operator<<();
}

{
  return std::ostream::operator<<();
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

void operator new()
{
    ;
  }
}