unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_17_to_32[abi:nn200100](void *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = 0xB492B66FBE98F273 * *a1;
  v4 = __ROR8__(0x9AE16A3B2F90404FLL * *(a1 + a2 - 8), 30) + __ROR8__(v3 - v2, 43);
  v5 = v3 + a2 + __ROR8__(v2 ^ 0xC949D7C7509E6557, 20) - 0x9AE16A3B2F90404FLL * *(a1 + a2 - 8);
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (v4 - 0x3C5A37A36834CED9 * *(a1 + a2 - 16)));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_33_to_64[abi:nn200100](void *a1, uint64_t a2)
{
  v2 = *(a1 + a2 - 16);
  v3 = *a1 - 0x3C5A37A36834CED9 * (v2 + a2);
  v5 = a1[2];
  v4 = a1[3];
  v6 = __ROR8__(v3 + v4, 52);
  v7 = v3 + a1[1];
  v8 = __ROR8__(v7, 7);
  v9 = v7 + v5;
  v10 = *(a1 + a2 - 32) + v5;
  v11 = v8 + __ROR8__(*a1 - 0x3C5A37A36834CED9 * (v2 + a2), 37) + v6 + __ROR8__(v9, 31);
  v12 = *(a1 + a2 - 24) + v10 + v2;
  v13 = 0xC3A5C85C97CB3127 * (v12 + *(a1 + a2 - 8) + v4 + v11) - 0x651E95C4D06FBFB1 * (v9 + v4 + __ROR8__(v10, 37) + __ROR8__(*(a1 + a2 - 24) + v10, 7) + __ROR8__(*(a1 + a2 - 8) + v4 + v10, 52) + __ROR8__(v12, 31));
  return 0x9AE16A3B2F90404FLL * ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) ^ ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) >> 47));
}

BOOL std::equal_to<std::string>::operator()[abi:nn200100](uint64_t a1, const void **a2, const void **a3)
{
  v3 = *(a2 + 23);
  v4 = v3;
  if ((v3 & 0x80u) != 0)
  {
    v3 = a2[1];
  }

  v5 = *(a3 + 23);
  v6 = v5;
  if (v5 < 0)
  {
    v5 = a3[1];
  }

  if (v3 != v5)
  {
    return 0;
  }

  if (v4 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if (v6 >= 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = *a3;
  }

  return memcmp(v7, v8, v3) == 0;
}

void std::__hash_table<std::__hash_value_type<std::string,MMSHeaderEncoding const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MMSHeaderEncoding const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MMSHeaderEncoding const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MMSHeaderEncoding const*>>>::__rehash<true>(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      std::__hash_table<std::__hash_value_type<std::string,MMSHeaderEncoding const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MMSHeaderEncoding const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MMSHeaderEncoding const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MMSHeaderEncoding const*>>>::__do_rehash<true>(a1, prime);
    }
  }
}

void std::__hash_table<std::__hash_value_type<std::string,MMSHeaderEncoding const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MMSHeaderEncoding const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MMSHeaderEncoding const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MMSHeaderEncoding const*>>>::__do_rehash<true>(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

const void **std::__hash_table<std::__hash_value_type<std::string,MMSHeaderEncoding const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MMSHeaderEncoding const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MMSHeaderEncoding const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MMSHeaderEncoding const*>>>::find<std::string>(void *a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  v6 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](&v16, a2, v5);
  v7 = a1[1];
  if (!*&v7)
  {
    return 0;
  }

  v8 = v6;
  v9 = vcnt_s8(v7);
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v9.u32[0];
  if (v9.u32[0] > 1uLL)
  {
    v11 = v6;
    if (v6 >= *&v7)
    {
      v11 = v6 % *&v7;
    }
  }

  else
  {
    v11 = (*&v7 - 1) & v6;
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12)
  {
    return 0;
  }

  for (i = *v12; i; i = *i)
  {
    v14 = i[1];
    if (v8 == v14)
    {
      if (std::equal_to<std::string>::operator()[abi:nn200100](a1, i + 2, v2))
      {
        return i;
      }
    }

    else
    {
      if (v10 > 1)
      {
        if (v14 >= *&v7)
        {
          v14 %= *&v7;
        }
      }

      else
      {
        v14 &= *&v7 - 1;
      }

      if (v14 != v11)
      {
        return 0;
      }
    }
  }

  return i;
}

void sub_182EB87AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  v19 = v18;

  _Unwind_Resume(a1);
}

void sub_182EB88C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  v18 = v17;

  _Unwind_Resume(a1);
}

void sub_182EB8AF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id a21)
{
  _Block_object_dispose(&a16, 8);

  _Block_object_dispose((v24 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_182EB8D54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a19, 8);

  _Unwind_Resume(a1);
}

void sub_182EB9BC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, void *a11, void *a12)
{
  if (v17 != v18)
  {
  }

  if (v13 != v14)
  {
  }

  _Unwind_Resume(a1);
}

void sub_182EBA5C0(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_182EBADF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, void *a11, void *a12)
{
  if (v17 != v18)
  {
  }

  if (v13 != v14)
  {
  }

  _Unwind_Resume(a1);
}

void sub_182EBB574(_Unwind_Exception *a1)
{
  if (v2 != v3)
  {
  }

  _Unwind_Resume(a1);
}

void sub_182EBB8EC(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_182EBC12C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, void *a12, void *a13, void *a14, void *a15, void *a16, void *a17, void *a18, void *a19, void *a20, void *a21, void *a22, void *a23, void *a24, void *a25)
{
  if (a18 != a14)
  {
  }

  if (a22 != a17)
  {
  }

  if (a25 != a21)
  {
  }

  if (*(v34 - 104) != v31)
  {
  }

  if (v29 != v30)
  {
  }

  if (v26 != v27)
  {
  }

  _Unwind_Resume(a1);
}

void sub_182EBCE14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, void *a11, void *a12)
{
  if (v17 != v18)
  {
  }

  if (v13 != v14)
  {
  }

  _Unwind_Resume(a1);
}

void sub_182EBD614(_Unwind_Exception *a1)
{
  if (v2 != v3)
  {
  }

  _Unwind_Resume(a1);
}

void sub_182EBD998(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_182EBDDF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, void *a11, void *a12)
{
  if (v17 != v18)
  {
  }

  if (v13 != v14)
  {
  }

  _Unwind_Resume(a1);
}

void sub_182EBE64C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, void *a11, void *a12)
{
  if (v17 != v18)
  {
  }

  if (v13 != v14)
  {
  }

  _Unwind_Resume(a1);
}

uint64_t CTDTMFPlayStart(int a1)
{
  Default = CTTelephonyCenterGetDefault();

  return _CTServerConnectionStartDTMFTone(Default, a1);
}

uint64_t CTDTMFPlayStop()
{
  Default = CTTelephonyCenterGetDefault();

  return _CTServerConnectionStopDTMFTone(Default);
}

uint64_t CTDTMFSendDigitsNow()
{
  Default = CTTelephonyCenterGetDefault();

  return _CTServerConnectionSendDTMFDigitsNow(Default);
}

xpc_object_t CTDTMFCopyHardPauseDigits(_BYTE *a1)
{
  v4 = 0;
  Default = CTTelephonyCenterGetDefault();
  _CTServerConnectionCopyHardPauseDigits(Default, &v4, a1);
  return v4;
}

uint64_t CTDTMFCancelHardPause()
{
  Default = CTTelephonyCenterGetDefault();

  return _CTServerConnectionCancelHardPause(Default);
}

const __CFArray *_CTCallCopyCurrentCallsWithTypes(const __CFAllocator *a1, unsigned int a2, int a3)
{
  pthread_once(&_kCTCallRegisterClass, _CTCallRegisterClass);
  pthread_mutex_lock(&_GlobalCallsLock);
  if (!a3 || (_CurrentCallsUpToDate & 1) == 0)
  {
    pthread_mutex_unlock(&_GlobalCallsLock);
    Default = CTTelephonyCenterGetDefault();
    cf = 0;
    _CTServerConnectionCopyAllCallsWithTypes(Default, a2, &cf);
    if (cf)
    {
      CFRelease(cf);
    }

    pthread_mutex_lock(&_GlobalCallsLock);
    _CurrentCallsUpToDate = 1;
  }

  MutableCopy = CFArrayCreateMutableCopy(a1, 0, _CurrentCalls);
  pthread_mutex_unlock(&_GlobalCallsLock);
  Count = CFArrayGetCount(MutableCopy);
  if (Count >= 1)
  {
    v9 = Count + 1;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(MutableCopy, v9 - 2);
      if (CTCallGetStatus(ValueAtIndex) == 5 || (ValueAtIndex[18] & a2) == 0)
      {
        CFArrayRemoveValueAtIndex(MutableCopy, v9 - 2);
      }

      --v9;
    }

    while (v9 > 1);
  }

  return MutableCopy;
}

const __CFArray *CTCopyCurrentCallsWithTypes(const __CFAllocator *a1, const __CFArray *a2)
{
  v3 = _ExtractCallTypes(a2);

  return _CTCallCopyCurrentCallsWithTypes(a1, v3, 1);
}

uint64_t _ExtractCallTypes(const __CFArray *a1)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  Count = CFArrayGetCount(a1);
  if (Count < 1)
  {
    return 0;
  }

  v3 = Count;
  v4 = 0;
  for (i = 0; i != v3; ++i)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a1, i);
    if (ValueAtIndex)
    {
      v7 = ValueAtIndex;
      v8 = CFGetTypeID(ValueAtIndex);
      if (v8 == CFStringGetTypeID())
      {
        if (CFEqual(v7, @"kCTCallTypeVoicemail"))
        {
          v9 = 2;
        }

        else if (CFEqual(v7, @"kCTCallTypeVideoConference"))
        {
          v9 = 4;
        }

        else if (CFEqual(v7, @"kCTCallTypeAudioConference"))
        {
          v9 = 16;
        }

        else if (CFEqual(v7, @"kCTCallTypeVOIP"))
        {
          v9 = 8;
        }

        else
        {
          v9 = CFEqual(v7, @"kCTCallTypeNormal") != 0;
        }

        v4 = v9 | v4;
      }
    }
  }

  return v4;
}

CFIndex _CTGetCurrentCallCountWithTypes(unsigned int a1)
{
  pthread_once(&_kCTCallRegisterClass, _CTCallRegisterClass);
  v2 = _CTCallCopyCurrentCallsWithTypes(*MEMORY[0x1E695E480], a1, 1);
  Count = CFArrayGetCount(v2);
  CFRelease(v2);
  return Count;
}

CFIndex CTGetCurrentCallCountWithTypes(const __CFArray *a1)
{
  v1 = _ExtractCallTypes(a1);

  return _CTGetCurrentCallCountWithTypes(v1);
}

void *CTCallDial(const void *a1)
{
  value = 0;
  Default = CTTelephonyCenterGetDefault();
  pthread_once(&_kCTCallRegisterClass, _CTCallRegisterClass);
  _CTServerConnectionCreateCall(Default, a1, 0, 0, 0, &value);
  if (!value)
  {
    return 0;
  }

  pthread_mutex_lock(&_GlobalCallsLock);
  v3 = _CurrentCalls;
  v6.length = CFArrayGetCount(_CurrentCalls);
  v6.location = 0;
  if (CFArrayGetFirstIndexOfValue(v3, v6, value) == -1)
  {
    CFArrayAppendValue(_CurrentCalls, value);
  }

  pthread_mutex_unlock(&_GlobalCallsLock);
  return value;
}

BOOL CTCallAnswer(uint64_t a1)
{
  if (CTCallGetStatus(a1) != 4)
  {
    return 0;
  }

  Default = CTTelephonyCenterGetDefault();
  return _CTServerConnectionAnswerCall(Default, a1, 0, 0) >> 32 == 0;
}

uint64_t CTCallGetStatus(uint64_t a1)
{
  _os_nospin_lock_lock();
  v2 = *(a1 + 68);
  _os_nospin_lock_unlock();
  if (v2 == 196608)
  {
    v3 = 3;
  }

  else
  {
    v3 = v2;
  }

  if (v2 == 0x40000)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

BOOL CTCallDisconnect(uint64_t a1)
{
  Status = CTCallGetStatus(a1);
  _os_nospin_lock_lock();
  v3 = *(a1 + 72);
  _os_nospin_lock_unlock();
  if (Status == 5)
  {
    return 0;
  }

  Default = CTTelephonyCenterGetDefault();
  if (Status == 4 && (v3 & 3) != 0)
  {
    v6 = _CTServerConnectionSendToVoicemail(Default, a1);
  }

  else
  {
    v6 = _CTServerConnectionEndThisCall(Default, a1);
  }

  return HIDWORD(v6) == 0;
}

BOOL CTCallDisconnectWithCauseCode(_BOOL8 result, unsigned int a2)
{
  if (result)
  {
    v3 = result;
    if (CTCallGetStatus(result) == 5)
    {
      return 0;
    }

    else
    {
      Default = CTTelephonyCenterGetDefault();
      return _CTServerConnectionEndCallWithCauseCode(Default, v3, a2) >> 32 == 0;
    }
  }

  return result;
}

BOOL CTCallHold(uint64_t a1)
{
  Status = CTCallGetStatus(a1);
  if ((*(a1 + 72) & 0x1C) != 0 || Status <= 5 && ((1 << Status) & 0x25) != 0)
  {
    return 0;
  }

  Default = CTTelephonyCenterGetDefault();
  return _CTServerConnectionHoldActiveCall(Default, a1) >> 32 == 0;
}

uint64_t CTCallResume(uint64_t a1)
{
  v6 = 0;
  Status = CTCallGetStatus(a1);
  v3 = 0;
  if (Status == 2)
  {
    Default = CTTelephonyCenterGetDefault();
    if (_CTServerConnectionResumeHeldCall(Default, &v6, a1) >> 32)
    {
      return 0;
    }

    else
    {
      return v6;
    }
  }

  return v3;
}

uint64_t CTCallJoinConference(uint64_t a1)
{
  v5 = 0;
  Status = CTCallGetStatus(a1);
  v2 = 0;
  if (Status == 2)
  {
    Default = CTTelephonyCenterGetDefault();
    if (_CTServerConnectionAddHeldToMultiPartyCall(Default, &v5) >> 32)
    {
      return 0;
    }

    else
    {
      return v5;
    }
  }

  return v2;
}

BOOL CTCallLeaveConference(uint64_t a1)
{
  Status = CTCallGetStatus(a1);
  result = 0;
  if (Status)
  {
    if (Status != 5)
    {
      Default = CTTelephonyCenterGetDefault();
      return _CTServerConnectionCreatePrivateConversation(Default, a1) >> 32 == 0;
    }
  }

  return result;
}

__CFString *CTCallGetCallType(uint64_t a1)
{
  _os_nospin_lock_lock();
  HIDWORD(v3) = *(a1 + 72) - 2;
  LODWORD(v3) = HIDWORD(v3);
  v2 = v3 >> 1;
  if (v2 > 7)
  {
    v4 = @"kCTCallTypeNormal";
  }

  else
  {
    v4 = off_1E6A440C8[v2];
  }

  _os_nospin_lock_unlock();
  return v4;
}

__CFString *CTCallGetCallSubType(uint64_t a1)
{
  _os_nospin_lock_lock();
  v2 = *(a1 + 76);
  v3 = @"kCTCallSubTypeTelephony";
  if (v2 == 4)
  {
    v3 = @"kCTCallSubTypeLTE";
  }

  if (v2 == 2)
  {
    v4 = @"kCTCallSubTypeWifi";
  }

  else
  {
    v4 = v3;
  }

  _os_nospin_lock_unlock();
  return v4;
}

CFStringRef CTCallCopyAddress(const __CFAllocator *a1, uint64_t a2)
{
  _os_nospin_lock_lock();
  v4 = *(a2 + 32);
  if (v4)
  {
    Copy = CFStringCreateCopy(a1, v4);
  }

  else
  {
    Copy = 0;
  }

  _os_nospin_lock_unlock();
  return Copy;
}

BOOL CTCallAddressBlocked(uint64_t a1)
{
  _os_nospin_lock_lock();
  v2 = *(a1 + 84) == 1;
  _os_nospin_lock_unlock();
  return v2;
}

BOOL CTCallIsAlerting(uint64_t a1)
{
  _os_nospin_lock_lock();
  v2 = *(a1 + 68) == 196608;
  _os_nospin_lock_unlock();
  return v2;
}

BOOL CTCallIsWaiting(uint64_t a1)
{
  _os_nospin_lock_lock();
  v2 = *(a1 + 68) == 0x40000;
  _os_nospin_lock_unlock();
  return v2;
}

uint64_t CTCallGetDuration(double *a1, double *a2)
{
  _os_nospin_lock_lock();
  v4 = a1[11];
  if (v4 == 2.22507386e-308)
  {
    v7 = 0;
  }

  else
  {
    v5 = a1[12];
    if (v5 == 2.22507386e-308)
    {
      v6 = CFAbsoluteTimeGetCurrent() - a1[13];
    }

    else
    {
      v6 = v5 - v4;
    }

    *a2 = v6;
    v7 = 1;
  }

  _os_nospin_lock_unlock();
  return v7;
}

CFUUIDRef CTCallCopyUUID(const __CFAllocator *a1, uint64_t a2)
{
  _os_nospin_lock_lock();
  v4 = *(a2 + 24);
  if (v4)
  {
    v7 = CFUUIDGetUUIDBytes(v4);
    v5 = CFUUIDCreateFromUUIDBytes(a1, v7);
  }

  else
  {
    v5 = 0;
  }

  _os_nospin_lock_unlock();
  return v5;
}

uint64_t _CTCallGetIdentifier(uint64_t a1)
{
  _os_nospin_lock_lock();
  v2 = *&CFUUIDGetUUIDBytes(*(a1 + 24));
  _os_nospin_lock_unlock();
  return v2;
}

uint64_t _CTCallGetCallStatusFromFlags(char a1, int a2)
{
  v2 = _CTCallGetCallStatusFromFlags_kCTCallStatusTypeMap[a1 & 0xF];
  if (v2 == 196608)
  {
    v3 = 3;
  }

  else
  {
    v3 = _CTCallGetCallStatusFromFlags_kCTCallStatusTypeMap[a1 & 0xF];
  }

  if (v2 == 0x40000)
  {
    v4 = 4;
  }

  else
  {
    v4 = v3;
  }

  if (a2)
  {
    return v2;
  }

  else
  {
    return v4;
  }
}

uint64_t _CTCallCreateFromCallInfo(const void *a1, uint64_t a2, uint64_t a3, const char *a4, const char *a5, const char *a6, int a7, int a8, unsigned int a9, int a10, unsigned int a11, char *cStr, unsigned __int8 a13)
{
  pthread_once(&_kCTCallRegisterClass, _CTCallRegisterClass);
  v20 = CFGetAllocator(a1);
  *&v44.byte0 = a2;
  *&v44.byte8 = a3;
  v21 = CFUUIDCreateFromUUIDBytes(v20, v44);
  IsDefaultConnection = _CTServerConnectionIsDefaultConnection(a1);
  if (IsDefaultConnection)
  {
    pthread_mutex_lock(&_GlobalCallsLock);
    if (!v21)
    {
      v24 = 0;
      goto LABEL_76;
    }

    Value = CFDictionaryGetValue(_UuidToCallMap, v21);
    if (Value)
    {
      v24 = Value;
      CFRetain(Value);
      goto LABEL_8;
    }
  }

  else if (!v21)
  {
    return 0;
  }

  Instance = _CFRuntimeCreateInstance();
  v24 = Instance;
  if (!Instance)
  {
    CFRelease(v21);
    goto LABEL_75;
  }

  *(Instance + 16) = 0;
  *(Instance + 24) = CFRetain(v21);
  *(v24 + 65) = 0;
  *(v24 + 80) = 0;
  *(v24 + 82) = 0;
  *(v24 + 32) = 0u;
  *(v24 + 48) = 0u;
  *(v24 + 112) = 0;
  *(v24 + 120) = 0;
  *(v24 + 104) = 0;
LABEL_8:
  CFRelease(v21);
  if (a4 && !*(v24 + 32) && *a4)
  {
    *(v24 + 32) = CFStringCreateWithCString(v20, a4, 0x8000100u);
  }

  if (a5 && *a5)
  {
    v26 = *(v24 + 40);
    if (v26)
    {
      CFRelease(v26);
    }

    *(v24 + 40) = CFStringCreateWithCString(v20, a5, 0x8000100u);
  }

  if (a11 != 0xFFFF)
  {
    v27 = *(v24 + 48);
    if (v27)
    {
      CFRelease(v27);
    }

    *(v24 + 48) = CFStringCreateWithFormat(v20, 0, @"%03d", a11);
  }

  if (cStr && *cStr)
  {
    v28 = *(v24 + 120);
    if (v28)
    {
      CFRelease(v28);
    }

    *(v24 + 120) = CFStringCreateWithCString(v20, cStr, 0x8000100u);
  }

  if (a6 && *a6)
  {
    v29 = *(v24 + 112);
    if (v29)
    {
      CFRelease(v29);
    }

    *(v24 + 112) = CFStringCreateWithCString(v20, a6, 0x8000100u);
  }

  if ((a9 & 0xF) != 9)
  {
    *(v24 + 68) = _CTCallGetCallStatusFromFlags_kCTCallStatusTypeMap[a9 & 0xF];
  }

  *(v24 + 84) = HIWORD(a9) & 3;
  *(v24 + 64) = (a9 & 0x20000000) != 0;
  v30 = 2;
  if ((a9 & 0x20000000) == 0)
  {
    if ((a9 & 0x10000000) != 0)
    {
      v30 = 4;
    }

    else if ((a9 & 0x1000000) != 0)
    {
      v30 = 16;
    }

    else if ((a9 & 0x8000000) != 0)
    {
      v30 = 8;
    }

    else
    {
      v30 = 1;
    }
  }

  if ((a9 & 0x80000) != 0)
  {
    v31 = 4;
  }

  else
  {
    v31 = 1;
  }

  if ((a9 & 0x40000) != 0)
  {
    v32 = 2;
  }

  else
  {
    v32 = v31;
  }

  *(v24 + 72) = v30;
  *(v24 + 76) = v32;
  if ((a9 & 0x19000000) != 0)
  {
    if (*(v24 + 65))
    {
      goto LABEL_62;
    }

    v33 = a7 - *MEMORY[0x1E695E468];
    *(v24 + 88) = v33;
  }

  else
  {
    v34 = *(v24 + 68);
    v33 = 2.22507386e-308;
    if ((v34 - 3) >= 2 && v34 != 196608 && v34 != 0x40000)
    {
      v33 = a7 - *MEMORY[0x1E695E468];
    }

    *(v24 + 88) = v33;
    if (v34 != 5 && v34)
    {
      v35 = 2.22507386e-308;
      goto LABEL_61;
    }
  }

  v35 = v33 + a8;
LABEL_61:
  *(v24 + 96) = v35;
LABEL_62:
  if (a10)
  {
    *(v24 + 104) = a10 - *MEMORY[0x1E695E468];
  }

  if (IsDefaultConnection)
  {
    v36 = a13;
  }

  else
  {
    v36 = 0;
  }

  if ((a9 & 0xF) != 6)
  {
    if (v36)
    {
      CFDictionaryAddValue(_UuidToCallMap, *(v24 + 24), v24);
      v41 = _CurrentCalls;
      v46.length = CFArrayGetCount(_CurrentCalls);
      v46.location = 0;
      if (CFArrayGetFirstIndexOfValue(v41, v46, v24) == -1)
      {
        CFArrayAppendValue(_CurrentCalls, v24);
      }

      goto LABEL_76;
    }

    goto LABEL_75;
  }

  if (!v36)
  {
LABEL_75:
    if (!IsDefaultConnection)
    {
      return v24;
    }

LABEL_76:
    pthread_mutex_unlock(&_GlobalCallsLock);
    return v24;
  }

  v37 = _CurrentCalls;
  v45.length = CFArrayGetCount(_CurrentCalls);
  v45.location = 0;
  FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v37, v45, v24);
  if (FirstIndexOfValue == -1)
  {
    goto LABEL_76;
  }

  v39 = FirstIndexOfValue;
  ValueAtIndex = CFArrayGetValueAtIndex(_CurrentCalls, FirstIndexOfValue);
  CFRetain(ValueAtIndex);
  CFArrayRemoveValueAtIndex(_CurrentCalls, v39);
  pthread_mutex_unlock(&_GlobalCallsLock);
  if (ValueAtIndex)
  {
    CFRelease(ValueAtIndex);
  }

  return v24;
}

void _CTCallHandleChangeNotification(const __CFString *a1, CFDictionaryRef theDict)
{
  if (!theDict)
  {
    return;
  }

  Value = CFDictionaryGetValue(theDict, @"kCTCall");
  if (!Value)
  {
    return;
  }

  v5 = Value;
  Default = CTTelephonyCenterGetDefault();
  v7 = CFGetAllocator(Default);
  v8 = *MEMORY[0x1E695E4D0];
  if (v8 == CFDictionaryGetValue(theDict, @"kCTCallIsTheOnlyCall"))
  {
    v12 = CFGetAllocator(v5);
    pthread_mutex_lock(&_GlobalCallsLock);
    Copy = CFArrayCreateCopy(v12, _CurrentCalls);
    CFArrayRemoveAllValues(_CurrentCalls);
    CFArrayAppendValue(_CurrentCalls, v5);
    _CurrentCallsUpToDate = 1;
    pthread_mutex_unlock(&_GlobalCallsLock);
    v11 = Copy;
  }

  else
  {
    pthread_mutex_lock(&_GlobalCallsLock);
    v9 = CFArrayCreateCopy(v7, _CurrentCalls);
    CFArrayRemoveAllValues(_CurrentCalls);
    _CurrentCallsUpToDate = 0;
    pthread_mutex_unlock(&_GlobalCallsLock);
    CFRelease(v9);
    v10 = CFGetAllocator(v5);
    v11 = _CTCallCopyCurrentCallsWithTypes(v10, 0xFFFFFFFF, 0);
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  CFRelease(v11);
LABEL_9:
  LocalCenter = CFNotificationCenterGetLocalCenter();

  CFNotificationCenterPostNotification(LocalCenter, a1, v5, theDict, 1u);
}

void _CTCallHandleUSSDSessionStringNotification(const __CFString *a1, CFDictionaryRef theDict)
{
  Value = CFDictionaryGetValue(theDict, @"kCTUSSDSessionString");
  if (Value)
  {
    v5 = Value;
    LocalCenter = CFNotificationCenterGetLocalCenter();

    CFNotificationCenterPostNotification(LocalCenter, a1, v5, theDict, 1u);
  }
}

void _CTCallHandleCallControlErrorNotification(const __CFString *a1, const __CFDictionary *a2)
{
  Default = CTTelephonyCenterGetDefault();
  v5 = CFGetAllocator(Default);
  pthread_once(&_kCTCallRegisterClass, _CTCallRegisterClass);
  pthread_mutex_lock(&_GlobalCallsLock);
  Copy = CFArrayCreateCopy(v5, _CurrentCalls);
  CFArrayRemoveAllValues(_CurrentCalls);
  _CurrentCallsUpToDate = 0;
  pthread_mutex_unlock(&_GlobalCallsLock);
  CFRelease(Copy);
  v7 = CTTelephonyCenterGetDefault();
  v8 = CFGetAllocator(v7);
  v9 = _CTCallCopyCurrentCallsWithTypes(v8, 0xFFFFFFFF, 0);
  if (v9)
  {
    CFRelease(v9);
  }

  LocalCenter = CFNotificationCenterGetLocalCenter();

  CFNotificationCenterPostNotification(LocalCenter, a1, 0, a2, 1u);
}

void _CTCallInvalidateCallCache()
{
  pthread_once(&_kCTCallRegisterClass, _CTCallRegisterClass);
  pthread_mutex_lock(&_GlobalCallsLock);
  Copy = CFArrayCreateCopy(*MEMORY[0x1E695E480], _CurrentCalls);
  CFArrayRemoveAllValues(_CurrentCalls);
  _CurrentCallsUpToDate = 0;
  pthread_mutex_unlock(&_GlobalCallsLock);

  CFRelease(Copy);
}

uint64_t CTCallGetEmergencyStatus()
{
  v2 = 0;
  Default = CTTelephonyCenterGetDefault();
  _CTServerConnectionGetEmergencyCallStatus(Default, &v2);
  return v2;
}

uint64_t CTCopyCallManagementState()
{
  v2 = 0;
  Default = CTTelephonyCenterGetDefault();
  _CTServerConnectionCopyCallManagementState(Default, &v2);
  return v2;
}

uint64_t CTStartOTASP()
{
  Default = CTTelephonyCenterGetDefault();

  return _CTServerConnectionStartOTASP(Default, 0);
}

uint64_t CTStartManualOTASP(unsigned int a1)
{
  Default = CTTelephonyCenterGetDefault();

  return _CTServerConnectionStartOTASP(Default, a1);
}

uint64_t CTCallSetAudioToneRelayFlag(uint64_t result, char a2)
{
  if (result)
  {
    v3 = result;
    _os_nospin_lock_lock();
    *(v3 + 80) = a2;

    return _os_nospin_lock_unlock();
  }

  return result;
}

uint64_t CTCallSetSetupAudioInterruptionFlag(uint64_t result, char a2)
{
  if (result)
  {
    v3 = result;
    _os_nospin_lock_lock();
    *(v3 + 81) = a2;

    return _os_nospin_lock_unlock();
  }

  return result;
}

uint64_t CTCallSetDeviceOriginatedEndFlag(uint64_t result, char a2)
{
  if (result)
  {
    v3 = result;
    _os_nospin_lock_lock();
    *(v3 + 82) = a2;

    return _os_nospin_lock_unlock();
  }

  return result;
}

uint64_t CTCallIsCallHandoffPossible()
{
  v3 = 0;
  Default = CTTelephonyCenterGetDefault();
  if (_CTServerConnectionPullCallIsPossible(Default, &v3) >> 32)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

void *_CTCallRegisterClass()
{
  result = malloc_type_calloc(1uLL, 0x60uLL, 0x10D00408820D60FuLL);
  _kCTCallClass = result;
  if (result)
  {
    *result = 0;
    result[1] = "CTCall";
    result[4] = _CallDestroy;
    result[5] = _CallEqual;
    result[6] = _CallHash;
    result[8] = _CallCopyDescription;
    _kCTCallTypeID = _CFRuntimeRegisterClass();
    v1 = *MEMORY[0x1E695E480];
    _UuidToCallMap = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, &_CTCallRegisterClass_kDictionaryNoRetainKeyCallBacks, &_CTCallRegisterClass_kDictionaryNoRetainValueCallBacks);
    result = CFArrayCreateMutable(v1, 0, MEMORY[0x1E695E9C0]);
    _CurrentCalls = result;
  }

  return result;
}

void _CallDestroy(uint64_t a1)
{
  pthread_mutex_lock(&_GlobalCallsLock);
  _os_nospin_lock_lock();
  v2 = *(a1 + 24);
  if (v2)
  {
    if (CFDictionaryGetValue(_UuidToCallMap, v2) == a1)
    {
      CFDictionaryRemoveValue(_UuidToCallMap, *(a1 + 24));
    }

    CFRelease(*(a1 + 24));
  }

  pthread_mutex_unlock(&_GlobalCallsLock);
  v3 = *(a1 + 32);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(a1 + 48);
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = *(a1 + 120);
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = *(a1 + 56);
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = *(a1 + 112);
  if (v8)
  {

    CFRelease(v8);
  }
}

BOOL _CallEqual(unint64_t a1, unint64_t a2)
{
  if (a1 >= a2)
  {
    v2 = a2;
  }

  else
  {
    v2 = a1;
  }

  if (a1 >= a2)
  {
    v3 = a1;
  }

  else
  {
    v3 = a2;
  }

  _os_nospin_lock_lock();
  _os_nospin_lock_lock();
  v4 = *(v2 + 24);
  if (v4 && *(v3 + 24))
  {
    v5 = *MEMORY[0x1E695E480];
    v6 = CFUUIDCreateString(*MEMORY[0x1E695E480], v4);
    v7 = CFUUIDCreateString(v5, *(v3 + 24));
    v8 = v7;
    if (v6)
    {
      v9 = v7 == 0;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      v11 = 0;
      v10 = 0;
      if (!v6)
      {
        if (!v7)
        {
          goto LABEL_20;
        }

        goto LABEL_19;
      }
    }

    else
    {
      v11 = CFStringCompare(v6, v7, 0) == kCFCompareEqualTo;
    }

    CFRelease(v6);
    v10 = v11;
    if (v8)
    {
LABEL_19:
      CFRelease(v8);
    }
  }

  else
  {
    v10 = 0;
  }

LABEL_20:
  _os_nospin_lock_unlock();
  _os_nospin_lock_unlock();
  return v10;
}

CFHashCode _CallHash(uint64_t a1)
{
  _os_nospin_lock_lock();
  v2 = CFHash(*(a1 + 24));
  _os_nospin_lock_unlock();
  return v2;
}

CFStringRef _CallCopyDescription(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  _os_nospin_lock_lock();
  v2 = CFGetAllocator(a1);
  v3 = v2;
  v12 = 0;
  *buffer = 0u;
  v11 = 0u;
  v4 = *(a1 + 24);
  if (v4)
  {
    v5 = CFUUIDCreateString(v2, v4);
    if (v5)
    {
      v6 = v5;
      CFStringGetCString(v5, buffer, 40, 0x8000100u);
      CFRelease(v6);
    }
  }

  v7 = CFStringCreateWithFormat(v3, 0, @"<CTCall %p [%p]>{status = %d, type = 0x%x, subtype = 0x%x, uuid = %p [%s], address = %p, start = %g, session start = %g, end = %g, audioToneRelay = %u, setupAudioInterruption = %u, deviceOriginatedEnd = %u}", a1, v3, *(a1 + 68), *(a1 + 72), *(a1 + 76), *(a1 + 24), buffer, *(a1 + 32), *(a1 + 88), *(a1 + 104), *(a1 + 96), *(a1 + 80), *(a1 + 81), *(a1 + 82));
  _os_nospin_lock_unlock();
  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

uint64_t CTTelephonyCenterGetRunLoop(uint64_t a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0;
  v1 = *(a1 + 16);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = __CTTelephonyCenterGetRunLoop_block_invoke;
  v4[3] = &unk_1E6A44118;
  v4[4] = &v5;
  v4[5] = a1;
  dispatch_sync(v1, v4);
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t sCTTelephonyCenterSetDefaultDispatchQueue(int a1, NSObject *a2)
{
  if (_CTTelephonyCenterDefault)
  {
    goto LABEL_14;
  }

  pthread_mutex_lock(&_CTTelephonyCreateMutex);
  v4 = _CTTelephonyCenterDefault;
  if (!_CTTelephonyCenterDefault)
  {
    v5 = *MEMORY[0x1E695E480];
    v6 = getprogname();
    v7 = CFStringCreateWithFormat(v5, 0, @"%s-CTTelephonyCenter", v6);
    v8 = _CTServerConnectionCreateOnTargetQueue(v5, v7, a2, &__block_literal_global_0);
    if (v7)
    {
      CFRelease(v7);
    }

    if (v8)
    {
      CTTelephonyCenterSetup(v8);
      _CTTelephonyCenterDefault = v8;
      v8[33] = a1;
    }

    else
    {
      _CTTelephonyCenterDefault = 0;
    }
  }

  result = pthread_mutex_unlock(&_CTTelephonyCreateMutex);
  if (v4 && _CTTelephonyCenterDefault != 0)
  {
LABEL_14:
    pthread_mutex_lock(&_CTTelephonyCreateMutex);
    if (!*(_CTTelephonyCenterDefault + 33))
    {
      _CTServerConnectionSetTargetQueue(_CTTelephonyCenterDefault, a2);
      if (a1)
      {
        *(_CTTelephonyCenterDefault + 33) = 1;
      }
    }

    return pthread_mutex_unlock(&_CTTelephonyCreateMutex);
  }

  return result;
}

void _CTTelephonyCenterRegisterTimeChangeNotification(void)
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  v1 = _CTTelephonyCenterDefault;

  CFNotificationCenterAddObserver(DarwinNotifyCenter, v1, _SignificantTimeChange, @"SignificantTimeChangeNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
}

void CTTelephonyCenterRemoveObserver(uint64_t a1, const void *a2, const __CFString *a3, const void *a4)
{
  LocalCenter = CFNotificationCenterGetLocalCenter();

  CFNotificationCenterRemoveObserver(LocalCenter, a2, a3, a4);
}

void CTTelephonyCenterRemoveEveryObserver(uint64_t a1, const void *a2)
{
  LocalCenter = CFNotificationCenterGetLocalCenter();

  CFNotificationCenterRemoveEveryObserver(LocalCenter, a2);
}

void _ServerConnectionCallback(const __CFString *a1, CFDictionaryRef theDict)
{
  if (@"kCTIndicatorsSignalStrengthNotification" == a1)
  {

    _CTIndicatorsHandleSignalStrengthNotification(a1, theDict);
  }

  else if (@"kCTIndicatorsVoiceMailNotification" == a1)
  {

    _CTIndicatorsHandleVoiceMailAvailableNotification(a1, theDict);
  }

  else if (@"kCTUSSDSessionStringNotification" == a1)
  {

    _CTCallHandleUSSDSessionStringNotification(a1, theDict);
  }

  else if (@"kCTIndicatorsUnconditionalCallForwardingNotification" == a1)
  {

    _CTIndicatorsHandleUnconditionalCallForwardingNotification(a1, theDict);
  }

  else if (@"kCTRegistrationDataStatusChangedNotification" == a1 || @"kCTRegistrationDataActivateFailedNotification" == a1)
  {

    _CTRegistrationHandleDataStatusChangedNotification(a1, theDict);
  }

  else if (@"kCTCallStatusChangeNotification" == a1 || @"kCTCallSubTypeChangeNotification" == a1 || @"kCTCallAlternateStatusChangeNotification" == a1)
  {

    _CTCallHandleChangeNotification(a1, theDict);
  }

  else if (@"kCTCallControlFailureNotification" == a1)
  {

    _CTCallHandleCallControlErrorNotification(a1, theDict);
  }

  else if (@"kCTRestrictedForegroundResumeNotification" == a1)
  {

    _CTCallInvalidateCallCache();
  }

  else if (a1)
  {
    if (@"kCTConnectionInvalidatedNotification" == a1)
    {
      _CTCallInvalidateCallCache();
    }

    LocalCenter = CFNotificationCenterGetLocalCenter();

    CFNotificationCenterPostNotification(LocalCenter, a1, 0, theDict, 1u);
  }
}

void _DaemonReady(__CFNotificationCenter *a1, void *a2, const __CFString *a3, const void *a4, const __CFDictionary *a5)
{
  LocalCenter = CFNotificationCenterGetLocalCenter();

  CFNotificationCenterPostNotification(LocalCenter, @"kCTTelephonyCenterDaemonRestartNotification", 0, 0, 1u);
}

void _SignificantTimeChange(__CFNotificationCenter *a1, void *a2, const __CFString *a3, const void *a4, const __CFDictionary *a5)
{
  global_queue = dispatch_get_global_queue(0, 0);

  dispatch_async(global_queue, &__block_literal_global_15);
}

void ___ZL22_SignificantTimeChangeP22__CFNotificationCenterPvPK10__CFStringPKvPK14__CFDictionary_block_invoke()
{
  Default = CTTelephonyCenterGetDefault();
  if (Default)
  {
    v1 = CFGetAllocator(Default);
  }

  else
  {
    v1 = *MEMORY[0x1E695E480];
  }

  v2 = _CTCallCopyCurrentCallsWithTypes(v1, 0xFFFFFFFF, 0);
  if (v2)
  {

    CFRelease(v2);
  }
}

void sub_182EC1B84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v8 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_182EC1EE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v8 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_182EC2104(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  v16 = v15;

  _Unwind_Resume(a1);
}

void sub_182EC2328(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  v16 = v15;

  _Unwind_Resume(a1);
}

void sub_182EC2558(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  v16 = v15;

  _Unwind_Resume(a1);
}

void sub_182EC2850(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id a21)
{
  _Block_object_dispose(&a16, 8);

  _Block_object_dispose((v23 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_182EC29F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  v17 = v16;

  _Unwind_Resume(a1);
}

void sub_182EC2DEC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<-[CoreTelephonyClientDelegateProxy forwardInvocation:]::$_0>::~unique_ptr[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t CTGetSignalStrength()
{
  LODWORD(var4) = 0;
  CTIndicatorsGetSignalStrength(0, &var4, 0);
  return var4;
}

uint64_t CTIndicatorsGetSignalStrength(_DWORD *a1, uint64_t *a2, int *a3)
{
  v12 = 0;
  v11 = 0;
  Default = CTTelephonyCenterGetDefault();
  if (a1)
  {
    v7 = a1;
  }

  else
  {
    v7 = &v12 + 1;
  }

  if (a2)
  {
    v8 = a2;
  }

  else
  {
    v8 = &v12;
  }

  if (a3)
  {
    v9 = a3;
  }

  else
  {
    v9 = &v11;
  }

  *v9 = 0;
  *v8 = 0;
  *v7 = 0;
  return _CTServerConnectionGetSignalStrength(Default, v7, v8, v9);
}

void CTIndicatorsCopyVoicemailStatus(char *a1, int *a2, CFURLRef *a3)
{
  v12 = 0;
  v11 = 0;
  cf = 0;
  v9 = 0;
  if (a1)
  {
    v3 = a1;
  }

  else
  {
    v3 = &v11;
  }

  if (a2)
  {
    v4 = a2;
  }

  else
  {
    v4 = &v12;
  }

  *v3 = 0;
  if (a3)
  {
    p_cf = a3;
  }

  else
  {
    p_cf = &cf;
  }

  *v4 = 0;
  *p_cf = 0;
  v6 = 1;
  Default = CTTelephonyCenterGetDefault();
  do
  {
    VoiceMailAvailable = _CTServerConnectionGetVoiceMailAvailable(Default, v3, &v9, v4, p_cf);
    if ((v6 & 1) == 0)
    {
      break;
    }

    v6 = 0;
  }

  while (VoiceMailAvailable == 0x500000002);
  if (!v9)
  {
    *v4 = -1;
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

void _CTIndicatorsHandleSignalStrengthNotification(const __CFString *a1, CFDictionaryRef theDict)
{
  Value = CFDictionaryGetValue(theDict, @"kCTIndicatorsSignalStrength");
  if (Value)
  {
    v5 = Value;
    valuePtr = 0;
    if (CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr))
    {
      LocalCenter = CFNotificationCenterGetLocalCenter();
      CFNotificationCenterPostNotification(LocalCenter, a1, v5, theDict, 1u);
    }
  }
}

void _CTIndicatorsHandleVoiceMailAvailableNotification(const __CFString *a1, CFDictionaryRef theDict)
{
  Value = CFDictionaryGetValue(theDict, @"kCTIndicatorsVoiceMailAvailable");
  LocalCenter = CFNotificationCenterGetLocalCenter();

  CFNotificationCenterPostNotification(LocalCenter, a1, Value, theDict, 1u);
}

void _CTIndicatorsHandleUnconditionalCallForwardingNotification(const __CFString *a1, CFDictionaryRef theDict)
{
  Value = CFDictionaryGetValue(theDict, @"kCTIndicatorsUnconditionalCallForwarding");
  LocalCenter = CFNotificationCenterGetLocalCenter();

  CFNotificationCenterPostNotification(LocalCenter, a1, Value, theDict, 1u);
}

__CFString *CTSettingRequest(const __CFDictionary *a1)
{
  result = CFDictionaryGetValue(a1, @"kCTSettingType");
  if (result)
  {
    v3 = result;
    result = CTTelephonyCenterGetDefault();
    v4 = result;
    if (v3 == @"kCTSettingTypeCallWaiting")
    {
      Value = CFDictionaryGetValue(a1, @"kCTSettingCallClass");

      return _CTServerConnectionFetchCallWaitingValue(v4, Value);
    }

    else if (v3 == @"kCTSettingTypeCallForwarding")
    {
      v6 = CFDictionaryGetValue(a1, @"kCTSettingCallForwardingReason");
      v7 = CFDictionaryGetValue(a1, @"kCTSettingCallClass");

      return _CTServerConnectionFetchCallForwardingValue(v4, v6, v7);
    }

    else if (v3 == @"kCTSettingTypeCallBarring")
    {
      v8 = CFDictionaryGetValue(a1, @"kCTSettingCallBarringFacility");
      v9 = CFDictionaryGetValue(a1, @"kCTSettingCallClass");
      CFDictionaryGetValue(a1, @"kCTSettingPassword");

      return _CTServerConnectionFetchCallBarringValue(v4, v8, v9);
    }

    else if (v3 == @"kCTSettingTypeConnectedLinePresentation")
    {

      return _CTServerConnectionFetchConnectedLinePresentationValue(result);
    }

    else if (v3 == @"kCTSettingTypeCallingLinePresentation")
    {

      return _CTServerConnectionFetchCallingLinePresentationValue(result);
    }

    else if (v3 == @"kCTSettingTypeConnectedLineIdRestriction")
    {

      return _CTServerConnectionFetchConnectedLineIdRestrictionValue(result);
    }

    else if (v3 == @"kCTSettingTypeCallingLineIdRestriction")
    {

      return _CTServerConnectionFetchCallingLineIdRestrictionValue(result);
    }

    else if (v3 == @"kCTSettingTypeSIMLock")
    {

      return _CTServerConnectionFetchSimLockValue(result);
    }

    else if (v3 == @"kCTSettingTypeServiceCenterAddress")
    {

      return _CTServerConnectionFetchServiceCenterAddressValue(result);
    }
  }

  return result;
}

uint64_t CTSettingSave(const __CFDictionary *a1)
{
  result = CFDictionaryGetValue(a1, @"kCTSettingType");
  if (result)
  {
    v3 = result;
    result = CTTelephonyCenterGetDefault();
    v4 = result;
    if (v3 == @"kCTSettingTypeCallWaiting")
    {
      Value = CFDictionaryGetValue(a1, @"kCTSettingCallClass");
      v6 = CFDictionaryGetValue(a1, @"kCTSettingEnabled") == *MEMORY[0x1E695E4D0];

      return _CTServerConnectionSaveCallWaitingValue(v4, Value, v6);
    }

    else if (v3 == @"kCTSettingTypeCallForwarding")
    {
      valuePtr = 0;
      v7 = CFDictionaryGetValue(a1, @"kCTSettingCallForwardingNoReplyTime");
      if (v7)
      {
        p_valuePtr = &valuePtr;
        if (!CFNumberGetValue(v7, kCFNumberSInt32Type, &valuePtr))
        {
          p_valuePtr = 0;
        }
      }

      else
      {
        p_valuePtr = 0;
      }

      v13 = CFDictionaryGetValue(a1, @"kCTSettingCallForwardingReason");
      v14 = CFDictionaryGetValue(a1, @"kCTSettingCallClass");
      v15 = CFDictionaryGetValue(a1, @"kCTSettingEnabled") == *MEMORY[0x1E695E4D0];
      v16 = CFDictionaryGetValue(a1, @"kCTSettingCallForwardingNumber");
      return _CTServerConnectionSaveCallForwardingValue(v4, v13, v14, v15, v16, p_valuePtr);
    }

    else if (v3 == @"kCTSettingTypeCallBarring")
    {
      v9 = CFDictionaryGetValue(a1, @"kCTSettingCallBarringFacility");
      v10 = CFDictionaryGetValue(a1, @"kCTSettingCallClass");
      v11 = CFDictionaryGetValue(a1, @"kCTSettingEnabled") == *MEMORY[0x1E695E4D0];
      CFDictionaryGetValue(a1, @"kCTSettingPassword");

      return _CTServerConnectionSaveCallBarringValue(v4, v9, v10, v11);
    }

    else if (v3 == @"kCTSettingTypeCallingLineIdRestriction")
    {
      v12 = CFDictionaryGetValue(a1, @"kCTSettingCallingLineIdRestriction");

      return _CTServerConnectionSaveCallingLineIdRestrictionValue(v4, v12);
    }

    else if (v3 == @"kCTSettingTypeSIMLock")
    {
      v17 = CFDictionaryGetValue(a1, @"kCTSettingEnabled") == *MEMORY[0x1E695E4D0];
      CFDictionaryGetValue(a1, @"kCTSettingPassword");

      return _CTServerConnectionSaveSimLockValue(v4, v17);
    }

    else if (v3 == @"kCTSettingTypeServiceCenterAddress")
    {
      CFDictionaryGetValue(a1, @"kCTSettingServiceCenterAddress");

      return _CTServerConnectionSaveServiceCenterAddressValue(v4);
    }

    else if (v3 == @"kCTSettingTypePIN")
    {
      CFDictionaryGetValue(a1, @"kCTSettingPassword");
      CFDictionaryGetValue(a1, @"kCTSettingNewPassword");

      return _CTServerConnectionChangePinPassword(v4);
    }

    else if (v3 == @"kCTSettingTypePIN2")
    {
      CFDictionaryGetValue(a1, @"kCTSettingPassword");
      CFDictionaryGetValue(a1, @"kCTSettingNewPassword");

      return _CTServerConnectionChangePin2Password(v4);
    }
  }

  return result;
}

CFDictionaryRef CTSettingCopyMyPhoneNumberExtended()
{
  keys[3] = *MEMORY[0x1E69E9840];
  Default = CTTelephonyCenterGetDefault();
  v1 = 0;
  v2 = *MEMORY[0x1E695E4C0];
  do
  {
    v11 = 0;
    cf = 0;
    v9 = v2;
    v10 = v2;
    _CTServerConnectionCopyPhoneNumber(Default, v1, &cf, &v11, &v10, &v9);
    if (cf)
    {
      CFRelease(cf);
    }

    if (v1 > 2)
    {
      break;
    }

    ++v1;
  }

  while (!v11);
  v8 = 0;
  if (_CTServerConnectionGetSIMStatus(Default, &v8) >> 32)
  {
    v3 = @"kCTSIMSupportSIMStatusNotReady";
    v8 = @"kCTSIMSupportSIMStatusNotReady";
  }

  else
  {
    v3 = v8;
  }

  if (CFStringCompare(v3, @"kCTSIMSupportSIMStatusReady", 1uLL))
  {
    v9 = v2;
  }

  else
  {
    v2 = v9;
  }

  keys[0] = @"kCTSettingMyPhoneNumberExists";
  keys[1] = @"kCTSettingMyPhoneNumberEditable";
  keys[2] = @"kCTSettingMyPhoneNumber";
  values[0] = v10;
  values[1] = v2;
  values[2] = v11;
  if (v11)
  {
    v4 = 3;
  }

  else
  {
    v4 = 2;
  }

  v5 = CFDictionaryCreate(*MEMORY[0x1E695E480], keys, values, v4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (v11)
  {
    CFRelease(v11);
  }

  v6 = *MEMORY[0x1E69E9840];
  return v5;
}

CFTypeRef CTSettingCopyEffectiveSimInfo()
{
  Default = CTTelephonyCenterGetDefault();
  cf = 0;
  v1 = _CTServerConnectionCopyEffectiveSimInfo(Default, &cf);
  result = cf;
  if (HIDWORD(v1))
  {
    v3 = cf == 0;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    CFRelease(cf);
    return 0;
  }

  return result;
}

uint64_t CTSettingSetIMSIOverride()
{
  Default = CTTelephonyCenterGetDefault();

  return _CTServerConnectionPreferencesSetValue(Default, @"IMSIOverride");
}

uint64_t CTSettingSetFakePrimaryDNSKey()
{
  Default = CTTelephonyCenterGetDefault();

  return _CTServerConnectionPreferencesSetValue(Default, @"FakePrimaryDns");
}

uint64_t CTSettingCopyFakePrimaryDNSKey()
{
  Default = CTTelephonyCenterGetDefault();
  v2 = 0;
  _CTServerConnectionPreferencesCopyValue(Default, @"FakePrimaryDns", &v2);
  return v2;
}

uint64_t CTSettingSetFakeSecondaryDNSKey()
{
  Default = CTTelephonyCenterGetDefault();

  return _CTServerConnectionPreferencesSetValue(Default, @"FakeSecondaryDns");
}

uint64_t CTSettingCopyFakeSecondaryDNSKey()
{
  Default = CTTelephonyCenterGetDefault();
  v2 = 0;
  _CTServerConnectionPreferencesCopyValue(Default, @"FakeSecondaryDns", &v2);
  return v2;
}

uint64_t CTSettingSetVerifyCarrierBundles(int a1)
{
  v1 = MEMORY[0x1E695E4D0];
  if (!a1)
  {
    v1 = MEMORY[0x1E695E4C0];
  }

  v2 = *v1;
  Default = CTTelephonyCenterGetDefault();

  return _CTServerConnectionPreferencesSetValue(Default, @"VerifyBundles");
}

BOOL CTSettingCopyVerifyCarrierBundles()
{
  Default = CTTelephonyCenterGetDefault();
  BOOLean = 0;
  _CTServerConnectionPreferencesCopyValue(Default, @"VerifyBundles", &BOOLean);
  return CFBooleanGetValue(BOOLean) == 1;
}

uint64_t CTSettingSetVerifyAPN(int a1)
{
  v1 = MEMORY[0x1E695E4D0];
  if (!a1)
  {
    v1 = MEMORY[0x1E695E4C0];
  }

  v2 = *v1;
  Default = CTTelephonyCenterGetDefault();

  return _CTServerConnectionPreferencesSetValue(Default, @"VerifyAPN");
}

BOOL CTSettingCopyVerifyAPN()
{
  Default = CTTelephonyCenterGetDefault();
  BOOLean = 0;
  _CTServerConnectionPreferencesCopyValue(Default, @"VerifyAPN", &BOOLean);
  return CFBooleanGetValue(BOOLean) == 1;
}

uint64_t CTSettingSetDualIPBringUp(int a1)
{
  v1 = MEMORY[0x1E695E4D0];
  if (!a1)
  {
    v1 = MEMORY[0x1E695E4C0];
  }

  v2 = *v1;
  Default = CTTelephonyCenterGetDefault();

  return _CTServerConnectionPreferencesSetValue(Default, @"DualIPBringUp");
}

BOOL CTSettingCopyDualIPBringUp()
{
  Default = CTTelephonyCenterGetDefault();
  BOOLean = 0;
  _CTServerConnectionPreferencesCopyValue(Default, @"DualIPBringUp", &BOOLean);
  return CFBooleanGetValue(BOOLean) == 1;
}

uint64_t CTSettingSetWiFiCallingInCallHandover(int a1)
{
  v1 = MEMORY[0x1E695E4D0];
  if (!a1)
  {
    v1 = MEMORY[0x1E695E4C0];
  }

  v2 = *v1;
  Default = CTTelephonyCenterGetDefault();

  return _CTServerConnectionPreferencesSetValue(Default, @"WiFiCallingInCallHandover");
}

BOOL CTSettingCopyWiFiCallingInCallHandover()
{
  Default = CTTelephonyCenterGetDefault();
  v5 = 0;
  _CTServerConnectionPreferencesCopyValue(Default, @"WiFiCallingInCallHandover", &v5);
  v1 = v5;
  if (!v5)
  {
    return 0;
  }

  TypeID = CFBooleanGetTypeID();
  v3 = TypeID == CFGetTypeID(v1) && CFBooleanGetValue(v1) != 0;
  CFRelease(v1);
  return v3;
}

uint64_t CTSettingSetEPDGAddress()
{
  Default = CTTelephonyCenterGetDefault();

  return _CTServerConnectionPreferencesSetValue(Default, @"EPDGAddress");
}

uint64_t CTSettingSetPCSCFAddress()
{
  Default = CTTelephonyCenterGetDefault();

  return _CTServerConnectionPreferencesSetValue(Default, @"PCSCFAddress");
}

uint64_t CTSettingCopyEPDGAddress()
{
  Default = CTTelephonyCenterGetDefault();
  v2 = 0;
  _CTServerConnectionPreferencesCopyValue(Default, @"EPDGAddress", &v2);
  return v2;
}

uint64_t CTSettingCopyPCSCFAddress()
{
  Default = CTTelephonyCenterGetDefault();
  v2 = 0;
  _CTServerConnectionPreferencesCopyValue(Default, @"PCSCFAddress", &v2);
  return v2;
}

uint64_t CTSettingSetShowVoLTEStatusIndicator(int a1)
{
  v1 = MEMORY[0x1E695E4D0];
  if (!a1)
  {
    v1 = MEMORY[0x1E695E4C0];
  }

  v2 = *v1;
  Default = CTTelephonyCenterGetDefault();

  return _CTServerConnectionPreferencesSetValue(Default, @"ShowVoLTEStatusIndicator");
}

BOOL CTSettingCopyShowVoLTEStatusIndicator()
{
  Default = CTTelephonyCenterGetDefault();
  v4 = 0;
  _CTServerConnectionPreferencesCopyValue(Default, @"ShowVoLTEStatusIndicator", &v4);
  v1 = v4;
  if (v4 && (TypeID = CFBooleanGetTypeID(), TypeID == CFGetTypeID(v1)))
  {
    return CFBooleanGetValue(v1) != 0;
  }

  else
  {
    return 0;
  }
}

const void *CTSettingsCopyiWlanGatewayAddress()
{
  Default = CTTelephonyCenterGetDefault();
  v4 = 0;
  _CTServerConnectionPreferencesCopyValue(Default, @"iWlanGatewayAddress", &v4);
  v1 = v4;
  if (!v4)
  {
    return 0;
  }

  TypeID = CFStringGetTypeID();
  if (TypeID != CFGetTypeID(v1))
  {
    return 0;
  }

  return v1;
}

__CFString *CTSIMSupportGetSIMStatus()
{
  v2 = 0;
  Default = CTTelephonyCenterGetDefault();
  _CTServerConnectionGetSIMStatus(Default, &v2);
  return v2;
}

uint64_t CTSIMSupportPINUnlock(uint64_t a1)
{
  Default = CTTelephonyCenterGetDefault();

  return _CTServerConnectionPINUnlock(Default, a1);
}

uint64_t CTSIMSupportPUKUnlock(uint64_t a1, uint64_t a2)
{
  Default = CTTelephonyCenterGetDefault();

  return _CTServerConnectionPUKUnlock(Default, a1, a2);
}

uint64_t CTSIMSupportGetRemainingPINAttempts()
{
  v2 = -1;
  Default = CTTelephonyCenterGetDefault();
  _CTServerConnectionGetRemainingPINAttemptCount(Default, &v2);
  return v2;
}

uint64_t CTSIMSupportGetRemainingPUKAttempts()
{
  v2 = -1;
  Default = CTTelephonyCenterGetDefault();
  _CTServerConnectionGetRemainingPUKAttemptCount(Default, &v2);
  return v2;
}

CFStringRef CTSIMSupportCopyMobileSubscriberIdentity(const __CFAllocator *a1)
{
  theString = 0;
  Default = CTTelephonyCenterGetDefault();
  _CTServerConnectionCopyMobileSubscriberIdentity(Default, &theString);
  if (!theString)
  {
    return 0;
  }

  Copy = CFStringCreateCopy(a1, theString);
  CFRelease(theString);
  return Copy;
}

CFStringRef CTSIMSupportCopyMobileSubscriberCountryCode(const __CFAllocator *a1)
{
  theString = 0;
  Default = CTTelephonyCenterGetDefault();
  _CTServerConnectionCopyMobileSubscriberCountryCode(Default, &theString);
  if (!theString)
  {
    return 0;
  }

  Copy = CFStringCreateCopy(a1, theString);
  CFRelease(theString);
  return Copy;
}

CFStringRef CTSIMSupportCopyMobileSubscriberNetworkCode(const __CFAllocator *a1)
{
  theString = 0;
  Default = CTTelephonyCenterGetDefault();
  _CTServerConnectionCopyMobileSubscriberNetworkCode(Default, &theString);
  if (!theString)
  {
    return 0;
  }

  Copy = CFStringCreateCopy(a1, theString);
  CFRelease(theString);
  return Copy;
}

__CFString *CTRegistrationGetStatus()
{
  v2 = @"kCTRegistrationStatusUnknown";
  Default = CTTelephonyCenterGetDefault();
  _CTServerConnectionGetRegistrationStatus(Default, &v2);
  return v2;
}

CFStringRef CTRegistrationCopyOperatorName(const __CFAllocator *a1)
{
  theString = 0;
  Default = CTTelephonyCenterGetDefault();
  _CTServerConnectionCopyOperatorName(Default, &theString);
  if (!theString)
  {
    return 0;
  }

  Copy = CFStringCreateCopy(a1, theString);
  CFRelease(theString);
  return Copy;
}

uint64_t CTRegistrationCopyLocalizedOperatorName()
{
  v2 = 0;
  Default = CTTelephonyCenterGetDefault();
  _CTServerConnectionCopyLocalizedOperatorName(Default, &v2);
  return v2;
}

CFStringRef CTRegistrationCopyAbbreviatedOperatorName(const __CFAllocator *a1)
{
  theString = 0;
  Default = CTTelephonyCenterGetDefault();
  _CTServerConnectionCopyAbbreviatedOperatorName(Default, &theString);
  if (!theString)
  {
    return 0;
  }

  Copy = CFStringCreateCopy(a1, theString);
  CFRelease(theString);
  return Copy;
}

uint64_t CTRegistrationNetworkSelectionMenuAvailable()
{
  v2 = 0;
  Default = CTTelephonyCenterGetDefault();
  _CTServerConnectionNetworkSelectionMenuAvailable(Default, &v2);
  return v2;
}

unint64_t CTRegistrationAutomaticallySelectNetwork()
{
  Default = CTTelephonyCenterGetDefault();
  result = _CTServerConnectionAutomaticallySelectNetwork(Default);
  if (HIDWORD(result))
  {

    return _CTServerConnectionAutomaticallySelectNetwork(Default);
  }

  return result;
}

unint64_t CTRegistrationRequestNetworkList()
{
  Default = CTTelephonyCenterGetDefault();
  result = _CTServerConnectionFetchNetworkList(Default);
  if (HIDWORD(result))
  {

    return _CTServerConnectionFetchNetworkList(Default);
  }

  return result;
}

unint64_t CTRegistrationManuallySelectNetwork(const __CFDictionary *a1)
{
  Default = CTTelephonyCenterGetDefault();
  result = _CTServerConnectionSelectNetwork(Default, a1);
  if (HIDWORD(result))
  {

    return _CTServerConnectionSelectNetwork(Default, a1);
  }

  return result;
}

uint64_t CTRegistrationCopyManualNetworkSelection()
{
  v2 = 0;
  Default = CTTelephonyCenterGetDefault();
  if (_CTServerConnectionCopyManualNetworkSelection(Default, &v2) >> 32)
  {
    _CTServerConnectionCopyManualNetworkSelection(Default, &v2);
  }

  return v2;
}

uint64_t CTRegistrationGetNetworkSelectionMode()
{
  v2 = 0;
  Default = CTTelephonyCenterGetDefault();
  if (_CTServerConnectionGetNetworkSelectionMode(Default, &v2) >> 32)
  {
    _CTServerConnectionGetNetworkSelectionMode(Default, &v2);
  }

  return v2;
}

uint64_t CTRegistrationGetNetworkSelectionState()
{
  v2 = 0;
  Default = CTTelephonyCenterGetDefault();
  if (_CTServerConnectionGetNetworkSelectionState(Default, &v2) >> 32)
  {
    _CTServerConnectionGetNetworkSelectionState(Default, &v2);
  }

  return v2;
}

uint64_t CTRegistrationGetDataAttached()
{
  v2 = 0;
  Default = CTTelephonyCenterGetDefault();
  _CTServerConnectionIsDataAttached(Default, &v2);
  return v2;
}

__CFString *CTRegistrationGetDataIndicator()
{
  v0 = @"kCTRegistrationDataIndicatorNone";
  v1 = CTRegistrationCopyDataStatus();
  if (v1)
  {
    v2 = v1;
    value = 0;
    if (CFDictionaryGetValueIfPresent(v1, @"kCTRegistrationDataIndicator", &value))
    {
      v3 = value == 0;
    }

    else
    {
      v3 = 1;
    }

    if (!v3)
    {
      v4 = CFGetTypeID(value);
      if (v4 == CFStringGetTypeID())
      {
        v0 = value;
      }
    }

    CFRelease(v2);
  }

  return v0;
}

CFTypeRef CTRegistrationCopyDataStatus()
{
  cf = 0;
  Default = CTTelephonyCenterGetDefault();
  if (_CTServerConnectionCopyDataStatus(Default, 0, &cf) == 0x1000000300000002)
  {
    if (cf)
    {
      CFRelease(cf);
    }

    cf = 0;
    _CTServerConnectionCopyDataStatus(Default, 0, &cf);
  }

  return cf;
}

uint64_t CTRegistrationGetDataContextActive(int a1)
{
  v4 = 0;
  Default = CTTelephonyCenterGetDefault();
  _CTServerConnectionGetPacketContextActive(Default, a1, &v4);
  return v4;
}

uint64_t CTRegistrationSetDataContextActive(int a1, unsigned int a2)
{
  Default = CTTelephonyCenterGetDefault();

  return _CTServerConnectionSetPacketContextActive(Default, a1, a2);
}

void _CTRegistrationHandleDataStatusChangedNotification(const __CFString *a1, CFDictionaryRef theDict)
{
  if (!theDict)
  {
    return;
  }

  Value = CFDictionaryGetValue(theDict, @"kCTRegistrationDataContextID");
  v5 = CFDictionaryGetValue(theDict, @"kCTRegistrationDataActivationWasForMMS");
  v6 = v5;
  if (v5)
  {
    v7 = CFGetTypeID(v5);
    if (v7 != CFBooleanGetTypeID())
    {
      LODWORD(v6) = 0;
      if (!Value)
      {
        return;
      }

      goto LABEL_8;
    }

    LODWORD(v6) = CFBooleanGetValue(v6) == 1;
  }

  if (!Value)
  {
    return;
  }

LABEL_8:
  v8 = CFGetTypeID(Value);
  if (v8 == CFNumberGetTypeID())
  {
    v9 = 1;
  }

  else
  {
    v9 = v6;
  }

  if (v9 == 1)
  {
    v10 = CFGetAllocator(theDict);
    MutableCopy = CFDictionaryCreateMutableCopy(v10, 0, theDict);
    if (MutableCopy)
    {
      v12 = MutableCopy;
      v13 = *MEMORY[0x1E695E4D0];
      if (v13 == CFDictionaryGetValue(theDict, @"kCTRegistrationDataActive"))
      {
        v15 = kCTRegistrationDataStatusAttachedAndActive;
      }

      else
      {
        v14 = CFDictionaryGetValue(theDict, @"kCTRegistrationDataAttached");
        v15 = kCTRegistrationDataStatusUnattached;
        if (v13 == v14)
        {
          v15 = kCTRegistrationDataStatusAttached;
        }
      }

      CFDictionaryAddValue(v12, @"kCTRegistrationDataStatus", *v15);
      LocalCenter = CFNotificationCenterGetLocalCenter();
      CFNotificationCenterPostNotification(LocalCenter, a1, 0, v12, 1u);

      CFRelease(v12);
    }
  }
}

uint64_t CTRegistrationGetEmergencyCallBackMode()
{
  Default = CTTelephonyCenterGetDefault();
  v2 = 0;
  _CTServerConnectionGetEmergencyCallBackMode(Default, &v2);
  return v2;
}

uint64_t CTRegistrationIsCDMAInternationalRoamingSettingAllowed()
{
  Default = CTTelephonyCenterGetDefault();
  v2 = 0;
  if (_CTServerConnectionIsCDMAInternationalRoamingSettingAllowed(Default, &v2) >> 32)
  {
    _CTServerConnectionIsCDMAInternationalRoamingSettingAllowed(Default, &v2);
  }

  return v2;
}

uint64_t CTRegistrationGetCDMAInternationalRoaming()
{
  Default = CTTelephonyCenterGetDefault();
  v2 = 0;
  if (_CTServerConnectionGetCDMAInternationalRoaming(Default, &v2) >> 32)
  {
    _CTServerConnectionGetCDMAInternationalRoaming(Default, &v2);
  }

  return v2;
}

uint64_t CTRegistrationSetCDMAInternationalRoaming(unsigned int a1)
{
  Default = CTTelephonyCenterGetDefault();
  v4 = 0;
  if (_CTServerConnectionSetCDMAInternationalRoaming(Default, a1, &v4) >> 32)
  {
    _CTServerConnectionSetCDMAInternationalRoaming(Default, a1, &v4);
  }

  return v4;
}

__CFArray *CTRegistrationCopySupportedDataRates()
{
  Default = CTTelephonyCenterGetDefault();
  v2 = 0;
  if (_CTServerConnectionCopySupportedDataRates(Default, &v2) >> 32)
  {
    _CTServerConnectionCopySupportedDataRates(Default, &v2);
  }

  return v2;
}

void _CTHandleNotification(void **a1, int a2, int a3, unint64_t a4, const __CFAllocator *a5, int a6, const __CFString **a7, const __CFString **a8, const __CFString **a9)
{
  v34[0] = 0;
  v34[1] = v34;
  v34[2] = 0x4002000000;
  v34[3] = __Block_byref_object_copy__3;
  v34[4] = __Block_byref_object_dispose__3;
  v35 = 0;
  v36 = 0;
  v37 = 0;
  if (a4)
  {
    std::vector<long long>::__vallocate[abi:nn200100](&v35, a4);
  }

  v32[0] = 0;
  v32[1] = v32;
  v32[2] = 0x3002000000;
  v32[3] = __Block_byref_object_copy__136;
  v32[4] = __Block_byref_object_dispose__137;
  v33 = 0;
  v30[0] = 0;
  v12 = *MEMORY[0x1E695E480];
  v13 = ctu::cf::convert_copy(v30, a7, 0x8000100, *MEMORY[0x1E695E480], a5);
  v15 = v30[0];
  if (!v13)
  {
    v15 = 0;
  }

  v33 = v15;
  v30[0] = 0;
  v30[1] = v30;
  v30[2] = 0x3002000000;
  v30[3] = __Block_byref_object_copy__136;
  v30[4] = __Block_byref_object_dispose__137;
  v31 = 0;
  v28[0] = 0;
  v16 = ctu::cf::convert_copy(v28, a8, 0x8000100, v12, v14);
  v18 = v28[0];
  if (!v16)
  {
    v18 = 0;
  }

  v31 = v18;
  v28[0] = 0;
  v28[1] = v28;
  v28[2] = 0x3002000000;
  v28[3] = __Block_byref_object_copy__136;
  v28[4] = __Block_byref_object_dispose__137;
  v29 = 0;
  v38 = 0;
  v19 = ctu::cf::convert_copy(&v38, a9, 0x8000100, v12, v17);
  v20 = v38;
  if (!v19)
  {
    v20 = 0;
  }

  v29 = v20;
  v21 = *a1;
  v22 = v21[2];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 1174405120;
  v23[2] = ___Z21_CTHandleNotificationN3ctu2cf11CFSharedRefI20__CTServerConnectionEE7CTEventPxm11CFUUIDBytesPhS7_S7__block_invoke;
  v23[3] = &unk_1EF012B60;
  cf = v21;
  CFRetain(v21);
  v27 = a2;
  v25 = v21;
  v26 = 0;
  v23[4] = v34;
  v23[5] = v28;
  v23[6] = v32;
  v23[7] = v30;
  dispatch_async(v22, v23);
  if (cf)
  {
    CFRelease(cf);
  }

  _Block_object_dispose(v28, 8);
  if (v29)
  {
    CFRelease(v29);
  }

  _Block_object_dispose(v30, 8);
  if (v31)
  {
    CFRelease(v31);
  }

  _Block_object_dispose(v32, 8);
  if (v33)
  {
    CFRelease(v33);
  }

  _Block_object_dispose(v34, 8);
  if (v35)
  {
    v36 = v35;
    operator delete(v35);
  }
}

uint64_t __Block_byref_object_copy__136(uint64_t result, uint64_t a2)
{
  *(result + 40) = 0;
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __Block_byref_object_dispose__137(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    CFRelease(v1);
  }
}

void ___Z21_CTHandleNotificationN3ctu2cf11CFSharedRefI20__CTServerConnectionEE7CTEventPxm11CFUUIDBytesPhS7_S7__block_invoke(uint64_t a1)
{
  v90[13] = *MEMORY[0x1E69E9840];
  v2 = CFGetAllocator(*(a1 + 72));
  v3 = v2;
  *values = 0u;
  v86 = 0u;
  memset(v87, 0, sizeof(v87));
  *keys = 0u;
  v89 = 0u;
  memset(v90, 0, 96);
  v4 = &values[1];
  v5 = &keys[1];
  v6 = *(a1 + 88);
  if (v6 > 28)
  {
    if (v6 <= 55)
    {
      if (v6 > 44)
      {
        if ((v6 - 51) < 3)
        {
          if (*(a1 + 80))
          {
            keys[0] = @"kCTSIMSupportSIMStatus";
            v7 = _CTServerConnectionSIMStatusToSIMStatusString(**(*(*(a1 + 32) + 8) + 40));
            values[0] = v7;
            v8 = *(a1 + 88);
            if (v8 == 53)
            {
              v9 = @"kCTSIMSupportSIMPUKEntryErrorNotification";
              goto LABEL_95;
            }

            if (v8 == 52)
            {
              v9 = @"kCTSIMSupportSIMPINEntryErrorNotification";
LABEL_101:
              if (*(a1 + 80) >= 2uLL)
              {
                LODWORD(valuePtr[0]) = *(*(*(*(a1 + 32) + 8) + 40) + 8);
                values[1] = CFNumberCreate(v3, kCFNumberSInt32Type, valuePtr);
                if (values[1])
                {
                  v56 = &kCTSIMSupportSIMPINEntryAttemptsRemainingCount;
                  goto LABEL_104;
                }
              }

              goto LABEL_129;
            }

            v9 = @"kCTSIMSupportSIMStatusChangeNotification";
            if (v7 == @"kCTSIMSupportSIMStatusPINLocked")
            {
              goto LABEL_101;
            }

            if (v7 == @"kCTSIMSupportSIMStatusPUKLocked")
            {
LABEL_95:
              if (*(a1 + 80) >= 2uLL)
              {
                LODWORD(valuePtr[0]) = *(*(*(*(a1 + 32) + 8) + 40) + 8);
                values[1] = CFNumberCreate(v3, kCFNumberSInt32Type, valuePtr);
                if (values[1])
                {
                  v56 = &kCTSIMSupportSIMPUKEntryAttemptsRemainingCount;
LABEL_104:
                  keys[1] = *v56;
                  goto LABEL_105;
                }
              }
            }

LABEL_129:
            v19 = 1;
            goto LABEL_130;
          }

LABEL_140:
          v67 = *MEMORY[0x1E69E9840];
          return;
        }

        if (v6 != 45)
        {
          goto LABEL_140;
        }

LABEL_51:
        if (*(a1 + 80) < 3uLL)
        {
          goto LABEL_140;
        }

        LODWORD(valuePtr[0]) = **(*(*(a1 + 32) + 8) + 40);
        values[0] = CFNumberCreate(v2, kCFNumberIntType, valuePtr);
        if (!values[0])
        {
          goto LABEL_140;
        }

        keys[0] = @"kCTRegistrationDataContextID";
        keys[1] = @"kCTRegistrationDataActive";
        v30 = MEMORY[0x1E695E4C0];
        v31 = *MEMORY[0x1E695E4C0];
        v32 = MEMORY[0x1E695E4D0];
        v33 = *MEMORY[0x1E695E4D0];
        if (*(*(*(*(a1 + 32) + 8) + 40) + 8))
        {
          v34 = *MEMORY[0x1E695E4D0];
        }

        else
        {
          v34 = *MEMORY[0x1E695E4C0];
        }

        values[1] = CFRetain(v34);
        *&v89 = @"kCTRegistrationDataAttached";
        if (*(*(*(*(a1 + 32) + 8) + 40) + 16))
        {
          v35 = v33;
        }

        else
        {
          v35 = v31;
        }

        *&v86 = CFRetain(v35);
        v36 = kCTRegistrationDataActivateFailedNotification;
        if (*(a1 + 88) != 45)
        {
          v36 = kCTRegistrationCellularDataPlanActivateFailedNotification;
        }

        v9 = *v36;
        v37 = *(a1 + 80);
        if (v37 < 4)
        {
          v19 = 3;
          goto LABEL_130;
        }

        v38 = *(*(*(*(a1 + 32) + 8) + 40) + 24);
        if (v38 > -3)
        {
          if (v38 == -2)
          {
            v39 = kCTRegistrationDataActivationPreventionReasonIntlRoamingOff;
            goto LABEL_148;
          }

          if (v38 == -1)
          {
            v39 = kCTRegistrationDataActivationPreventionReasonOff;
            goto LABEL_148;
          }
        }

        else
        {
          if (v38 == -4)
          {
            *(&v86 + 1) = @"kCTRegistrationDataActivationPreventionReasonIntlRoamingOff";
            v87[0] = v33;
            *(&v89 + 1) = @"kCTRegistrationDataActivationPreventionReason";
            v90[0] = @"kCTRegistrationDataActivationWasForMMS";
            v19 = 5;
LABEL_154:
            if (v37 >= 5)
            {
              v71 = 0;
              v72 = 0;
              memset(valuePtr, 0, sizeof(valuePtr));
              v73 = *(*(*(*(a1 + 32) + 8) + 40) + 32) & 0x7FFFFFFFFFFFD67FLL;
              do
              {
                if ((v73 >> v72))
                {
                  *(valuePtr + v71++) = kCTDataConnectionServiceTypeFromIndex(v72);
                }

                ++v72;
              }

              while (v72 != 36);
              if (v71)
              {
                values[v19] = CFArrayCreate(v3, valuePtr, v71, MEMORY[0x1E695E9C0]);
                keys[v19++] = @"kCTRegistrationDataConnectionServices";
              }
            }

            v74 = *(a1 + 88);
            if (v74 == 45)
            {
              if (*(a1 + 80) != 6)
              {
LABEL_130:
                v40 = CFDictionaryCreate(v3, keys, values, v19, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                if (!v40 && v9)
                {
                  CFRelease(v9);
                  v9 = 0;
                }

                if (v19 >= 1)
                {
                  v65 = values;
                  do
                  {
                    v66 = *v65++;
                    CFRelease(v66);
                    --v19;
                  }

                  while (v19);
                }

                goto LABEL_136;
              }

              v75 = 0;
              v76 = 0;
              *&valuePtr[0] = @"kCTDataFamilyTypeIPv4";
              *(&valuePtr[0] + 1) = @"kCTDataFamilyTypeIPv6";
              v83[0] = 0;
              v83[1] = 0;
              v77 = *(*(*(*(a1 + 32) + 8) + 40) + 40);
              v78 = 1;
              do
              {
                if ((v78 & v77) != 0)
                {
                  v83[v76++] = *(valuePtr + v75);
                }

                v78 = 1 << ++v75;
              }

              while (v75 != 2);
              if (v76)
              {
                values[v19] = CFArrayCreate(v3, v83, v76, MEMORY[0x1E695E9C0]);
                keys[v19++] = @"kCTRegistrationDataFamilyInactive";
                v74 = *(a1 + 88);
              }

              else
              {
                v74 = 45;
              }
            }

            if (v74 == 84)
            {
              if (*(a1 + 80) >= 6uLL)
              {
                if (*(*(*(*(a1 + 32) + 8) + 40) + 40))
                {
                  v79 = v30;
                }

                else
                {
                  v79 = v32;
                }

                values[v19] = *v79;
                keys[v19++] = @"kCTRegistrationCellularDataPlanNewAccount";
              }

              v80 = *(*(a1 + 40) + 8);
              v81 = *(v80 + 40);
              *(v80 + 40) = 0;
              values[v19] = v81;
              keys[v19++] = @"kCTRegistrationCellularDataPlanAccountURL";
            }

            goto LABEL_120;
          }

          if (v38 == -3)
          {
            v39 = kCTRegistrationDataActivationPreventionNotSupported;
LABEL_148:
            *(&v86 + 1) = *v39;
            *(&v89 + 1) = @"kCTRegistrationDataActivationPreventionReason";
            v19 = 4;
            goto LABEL_154;
          }
        }

        LODWORD(valuePtr[0]) = *(*(*(*(a1 + 32) + 8) + 40) + 24);
        v19 = 3;
        *(&v86 + 1) = CFNumberCreate(v3, kCFNumberSInt32Type, valuePtr);
        if (*(&v86 + 1))
        {
          v68 = v87;
          v69 = v90;
          *(&v89 + 1) = @"kCTRegistrationDataActivateFailure";
          v19 = 4;
        }

        else
        {
          v68 = &v86 + 1;
          v69 = &v89 + 1;
        }

        v70 = _CTErrorString(valuePtr[0]);
        *v68 = v70;
        if (v70 && !CFEqual(v70, @"kCTReturnUnknownError"))
        {
          ++v19;
          *v69 = @"kCTRegistrationDataActivateFailureString";
        }

        v37 = *(a1 + 80);
        goto LABEL_154;
      }

      if (v6 != 29)
      {
        if (v6 != 37 && v6 != 44)
        {
          goto LABEL_140;
        }

        v20 = _FillDictionaryKeysAndValuesForDataStatus(v2, *(a1 + 80), *(*(*(a1 + 32) + 8) + 40), keys, values);
        v19 = v20;
        if (*(a1 + 88) == 37 && v20 >= 1)
        {
          v9 = @"kCTRegistrationNewServingNetworkNotification";
          goto LABEL_130;
        }

        if (v20 <= 0)
        {
          v9 = 0;
        }

        else
        {
          v9 = @"kCTRegistrationDataStatusChangedNotification";
        }

        goto LABEL_120;
      }

      v9 = @"kCTMMSConfigurationChangeNotification";
      keys[0] = @"kCTMMSConfiguredKey";
      v43 = *(*(*(a1 + 32) + 8) + 40);
LABEL_125:
      if (*v43)
      {
        v64 = MEMORY[0x1E695E4D0];
      }

      else
      {
        v64 = MEMORY[0x1E695E4C0];
      }

      values[0] = *v64;
      goto LABEL_129;
    }

    if (v6 > 85)
    {
      if (v6 == 86)
      {
        if (!*(a1 + 80))
        {
          goto LABEL_140;
        }

        v43 = *(*(*(a1 + 32) + 8) + 40);
        v44 = v43[1];
        if (v44 == 2)
        {
          v9 = @"kCTIndicatorRadioTransmitNotification";
          v45 = kCTRadioTransmitUTBFStatus;
        }

        else
        {
          if (v44 != 3)
          {
            goto LABEL_140;
          }

          v9 = @"kCTIndicatorRadioTransmitNotification";
          v45 = kCTRadioTransmitDCHStatus;
        }

        keys[0] = *v45;
        goto LABEL_125;
      }

      if (v6 != 99)
      {
        if (v6 == 105 && *(a1 + 80))
        {
          v9 = @"kCTQualityOfServiceFlowStatusChangeNotification";
          keys[0] = @"kCTQualityOfServiceFlowIdentifier";
          LODWORD(valuePtr[0]) = **(*(*(a1 + 32) + 8) + 40);
          values[0] = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, valuePtr);
          keys[1] = @"kCTQualityOfServiceFlowStatus";
          values[1] = _CTServerConnectionQosFlowStatusToQosFlowStatusString(*(*(*(*(a1 + 32) + 8) + 40) + 8));
LABEL_105:
          v19 = 2;
          goto LABEL_130;
        }

        goto LABEL_140;
      }

      v40 = 0;
      v41 = kCTSPCUnlockSuccessfulNotification;
LABEL_80:
      v9 = *v41;
LABEL_136:
      if (v9)
      {
        CTServerState::sendNotification_sync(*(*(a1 + 72) + 24), *(a1 + 88), v9, v40);
        CFRelease(v9);
      }

      if (v40)
      {
        CFRelease(v40);
      }

      goto LABEL_140;
    }

    if (v6 != 56)
    {
      if (v6 != 84)
      {
        goto LABEL_140;
      }

      goto LABEL_51;
    }

    v9 = @"kCTSIMSupportSIMNewInsertionNotification";
    v46 = *(*(a1 + 48) + 8);
    v47 = *(v46 + 40);
    *(v46 + 40) = 0;
    values[0] = v47;
    if (v47)
    {
      keys[0] = @"kCTSIMSupportMobileSubscriberIdentity";
      v19 = 1;
    }

    else
    {
      v19 = 0;
      v5 = keys;
      v4 = values;
    }

    v57 = *(*(a1 + 56) + 8);
    v58 = *(v57 + 40);
    *(v57 + 40) = 0;
    *v4 = v58;
    if (v58)
    {
      ++v19;
      *v5 = @"kCTSIMSupportIntegratedCircuitCardIdentity";
      goto LABEL_130;
    }

LABEL_120:
    if (v19)
    {
      goto LABEL_130;
    }

    goto LABEL_121;
  }

  if (v6 <= 22)
  {
    if (v6 <= 5)
    {
      if (v6 == 4)
      {
        v40 = 0;
        v41 = kCTUSSDSessionBeginNotification;
        goto LABEL_80;
      }

      if (v6 != 5)
      {
        goto LABEL_140;
      }

      if (*(a1 + 80))
      {
        keys[0] = @"kCTUSSDSessionStringIsOutgoing";
        v23 = *MEMORY[0x1E695E4C0];
        v24 = *MEMORY[0x1E695E4D0];
        if (**(*(*(a1 + 32) + 8) + 40))
        {
          v25 = *MEMORY[0x1E695E4D0];
        }

        else
        {
          v25 = *MEMORY[0x1E695E4C0];
        }

        values[0] = CFRetain(v25);
        keys[1] = @"kCTUSSDSessionResponseRequested";
        if (*(*(*(*(a1 + 32) + 8) + 40) + 8))
        {
          v26 = v24;
        }

        else
        {
          v26 = v23;
        }

        values[1] = CFRetain(v26);
        v27 = *(*(a1 + 40) + 8);
        v28 = *(v27 + 40);
        *(v27 + 40) = 0;
        v29 = &stru_1EF016BD0;
        if (v28)
        {
          v29 = v28;
        }

        *&v86 = v29;
        *&v89 = @"kCTUSSDSessionString";
        v19 = 3;
      }

      else
      {
        v19 = 0;
      }

      v61 = kCTUSSDSessionStringNotification;
    }

    else
    {
      if (v6 == 6)
      {
        v40 = 0;
        v41 = kCTUSSDSessionEndNotification;
        goto LABEL_80;
      }

      if (v6 == 7)
      {
        v9 = @"kCTUSSDSessionErrorNotification";
        if (*(a1 + 80))
        {
          keys[0] = @"kCTUSSDSessionErrorCode";
          LODWORD(valuePtr[0]) = **(*(*(a1 + 32) + 8) + 40);
          v42 = CFNumberCreate(v2, kCFNumberSInt32Type, valuePtr);
          values[0] = v42;
          *(keys | (8 * (v42 != 0))) = @"kCTUSSDSessionErrorString";
          if (v42)
          {
            v19 = 2;
          }

          else
          {
            v19 = 1;
          }

          *(values & 0xFFFFFFFFFFFFFFF7 | (8 * (v42 != 0))) = _CTErrorString(valuePtr[0]);
          goto LABEL_130;
        }

LABEL_121:
        v40 = 0;
        goto LABEL_136;
      }

      if (v6 != 19)
      {
        goto LABEL_140;
      }

      v17 = *(*(a1 + 40) + 8);
      v18 = *(v17 + 40);
      *(v17 + 40) = 0;
      values[0] = v18;
      if (v18)
      {
        keys[0] = @"kCTSMSClass0String";
        v19 = 1;
      }

      else
      {
        v19 = 0;
        v5 = keys;
        v4 = values;
      }

      v59 = *(*(a1 + 48) + 8);
      v60 = *(v59 + 40);
      *(v59 + 40) = 0;
      *v4 = v60;
      if (v60)
      {
        ++v19;
        *v5 = @"kCTSMSClass0AddressString";
      }

      v61 = kCTSMSClass0StringReceivedNotification;
    }

    goto LABEL_119;
  }

  if (v6 <= 25)
  {
    if (v6 != 23)
    {
      v10 = *(a1 + 72);
      v11 = *(*(*(a1 + 32) + 8) + 40);
      v12 = *v11;
      v13 = v11[2];
      v14 = *MEMORY[0x1E69E9840];
      if (v6 == 24)
      {
        v15 = @"kCTMessageReceivedNotification";
        v16 = 24;
      }

      else
      {
        v15 = @"kCTMessageReceiveDeferredNotification";
        v16 = 25;
      }

      goto LABEL_90;
    }

    v52 = *(*(a1 + 48) + 8);
    v53 = *(v52 + 40);
    *(v52 + 40) = 0;
    values[0] = v53;
    if (v53)
    {
      keys[0] = @"kCTSMSTestMessageBody";
      v19 = 1;
    }

    else
    {
      v19 = 0;
      v5 = keys;
      v4 = values;
    }

    v62 = *(*(a1 + 48) + 8);
    v63 = *(v62 + 40);
    *(v62 + 40) = 0;
    *v4 = v63;
    if (v63)
    {
      ++v19;
      *v5 = @"kCTSMSTestMessageAddress";
    }

    v61 = kCTSMSTestMessageReceivedNotification;
LABEL_119:
    v9 = *v61;
    goto LABEL_120;
  }

  if (v6 == 26)
  {
    v10 = *(a1 + 72);
    v54 = *(*(*(a1 + 32) + 8) + 40);
    v12 = *v54;
    v13 = v54[2];
    v55 = *MEMORY[0x1E69E9840];
    v15 = @"kCTMessageSentNotification";
    v16 = 26;
LABEL_90:
    v49 = 0;
    v50 = 0;
    goto LABEL_91;
  }

  if (v6 != 27)
  {
    keys[0] = @"kCTMessageIdKey";
    keys[1] = @"kCTMessageSendBytesKey";
    *&v89 = @"kCTMessageSendTotalBytesKey";
    v21 = *(*(*(a1 + 32) + 8) + 40);
    v22 = v21[1];
    LODWORD(valuePtr[0]) = *v21;
    v9 = @"kCTMessageSendProgressNotification";
    v82 = v21[2];
    LODWORD(v83[0]) = v22;
    v19 = 3;
    values[0] = CFNumberCreate(v2, kCFNumberSInt32Type, valuePtr);
    values[1] = CFNumberCreate(v3, kCFNumberSInt32Type, v83);
    *&v86 = CFNumberCreate(v3, kCFNumberSInt32Type, &v82);
    goto LABEL_130;
  }

  v10 = *(a1 + 72);
  v48 = *(*(*(a1 + 32) + 8) + 40);
  v12 = *v48;
  v13 = v48[2];
  v49 = v48[4];
  v50 = v48[6];
  v51 = *MEMORY[0x1E69E9840];
  v15 = @"kCTMessageSendErrorNotification";
  v16 = 27;
LABEL_91:

  _CTSendMessageNotification(v10, v16, v15, v12, v13, v49, v50);
}

void _CTSendMessageNotification(void **a1, int a2, const void *a3, int a4, int a5, int a6, int a7)
{
  v34[1] = *MEMORY[0x1E69E9840];
  v26 = a5;
  valuePtr = a4;
  v24 = a7;
  v25 = a6;
  v12 = CFGetAllocator(a1);
  v33 = 0;
  v34[0] = 0;
  v30 = 0;
  v31 = 0;
  v13 = CFNumberCreate(v12, kCFNumberSInt32Type, &valuePtr);
  values = v13;
  if (!v13)
  {
    goto LABEL_16;
  }

  v14 = v13;
  keys[0] = @"kCTMessageIdKey";
  if (!CFNumberCreate(v12, kCFNumberSInt32Type, &v26))
  {
    CFRelease(v14);
    goto LABEL_16;
  }

  v15 = &v33;
  v16 = &v30;
  keys[1] = @"kCTMessageTypeKey";
  if (a6)
  {
    v30 = CFNumberCreate(v12, kCFNumberSInt32Type, &v25);
    if (v30)
    {
      v16 = &v31;
      v15 = v34;
      v33 = @"kCTMessageSendErrorKey";
      v17 = 3;
      if (!a7)
      {
        goto LABEL_10;
      }

LABEL_8:
      v18 = CFNumberCreate(v12, kCFNumberSInt32Type, &v24);
      *v16 = v18;
      if (v18)
      {
        *v15 = @"kCTMessageSendModemErrorKey";
        ++v17;
      }

      goto LABEL_10;
    }
  }

  v17 = 2;
  if (a7)
  {
    goto LABEL_8;
  }

LABEL_10:
  v19 = CFDictionaryCreate(v12, keys, &values, v17, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (v19)
  {
    v20 = v19;
    CTServerState::sendNotification_sync(a1[3], a2, a3, v19);
    CFRelease(v20);
  }

  p_values = &values;
  do
  {
    v22 = *p_values++;
    CFRelease(v22);
    --v17;
  }

  while (v17);
LABEL_16:
  v23 = *MEMORY[0x1E69E9840];
}

CFTypeRef __copy_helper_block_8_64c50_ZTSN3ctu2cf11CFSharedRefI20__CTServerConnectionEE(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 64);
  *(a1 + 64) = result;
  if (result)
  {
    return CFRetain(result);
  }

  return result;
}

void __destroy_helper_block_8_64c50_ZTSN3ctu2cf11CFSharedRefI20__CTServerConnectionEE(uint64_t a1)
{
  v1 = *(a1 + 64);
  if (v1)
  {
    CFRelease(v1);
  }
}

void std::vector<long long>::__vallocate[abi:nn200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<long long>>(a1, a2);
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<long long>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

uint64_t _CTServerConnectionPerformMigration(void *a1, BOOL a2, BOOL a3, BOOL a4, BOOL a5)
{
  v41 = *MEMORY[0x1E69E9840];
  v38 = 0;
  memset(v37, 0, sizeof(v37));
  v10 = _CTServerConnectionCreate(*MEMORY[0x1E695E480], _ServerConnectionCallback, v37);
  if (v10)
  {
    xpc::dict_creator::dict_creator(&object);
    xpc::dict_creator::operator()<char const*>("kInternalToolPerformMigration", &object, "kRequest", &v35);
    xpc_release(object);
    v11 = v35;
    v36 = v35;
    v35 = xpc_null_create();
    xpc_release(v35);
    v12 = xpc_BOOL_create(a2);
    if (!v12)
    {
      v12 = xpc_null_create();
    }

    xpc_dictionary_set_value(v11, "kIsEraseInstall", v12);
    v13 = xpc_null_create();
    xpc_release(v12);
    xpc_release(v13);
    v14 = xpc_BOOL_create(a3);
    if (!v14)
    {
      v14 = xpc_null_create();
    }

    xpc_dictionary_set_value(v11, "kIsUpgrade", v14);
    v15 = xpc_null_create();
    xpc_release(v14);
    xpc_release(v15);
    v16 = xpc_BOOL_create(a4);
    if (!v16)
    {
      v16 = xpc_null_create();
    }

    xpc_dictionary_set_value(v11, "kIsRestore", v16);
    v17 = xpc_null_create();
    xpc_release(v16);
    xpc_release(v17);
    v18 = xpc_BOOL_create(a5);
    if (!v18)
    {
      v18 = xpc_null_create();
    }

    xpc_dictionary_set_value(v11, "kIsDifferentDevice", v18);
    v19 = xpc_null_create();
    xpc_release(v18);
    xpc_release(v19);
    if (a1)
    {
      CFRetain(a1);
      ctu::cf_to_xpc(&value, a1, v20);
      xpc_dictionary_set_value(v11, "kLastSystemVersionString", value);
      v21 = value;
      value = xpc_null_create();
      xpc_release(v21);
      xpc_release(value);
      value = 0;
      v22 = [a1 intValue];
      if (v22 >= 1)
      {
        v23 = xpc_int64_create(v22);
        if (!v23)
        {
          v23 = xpc_null_create();
        }

        xpc_dictionary_set_value(v11, "kLastSystemVersion", v23);
        v24 = xpc_null_create();
        xpc_release(v23);
        xpc_release(v24);
      }
    }

    v35 = xpc_null_create();
    v25 = SendXpcMessage(v10, &v36, &v35);
    v26 = HIDWORD(v25);
    if (MEMORY[0x1865E16C0](v35) == MEMORY[0x1E69E9E80])
    {
      object = &v35;
      v40 = "kMigrationResult";
      xpc::dict::object_proxy::operator xpc::object(&object, &v33);
      v27 = xpc::dyn_cast_or_default(&v33, 0);
      xpc_release(v33);
      v26 = v27 ? HIDWORD(v25) : 60;
      if (!v27)
      {
        LODWORD(v25) = 1;
      }
    }

    CFRelease(v10);
    v28 = CTLogMigration();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(object) = 67109376;
      HIDWORD(object) = v26;
      LOWORD(v40) = 1024;
      *(&v40 + 2) = v25;
      _os_log_impl(&dword_182E9B000, v28, OS_LOG_TYPE_DEFAULT, "_CTServerConnectionPerformMigration done: error (%d) with domain (%d)", &object, 0xEu);
    }

    xpc_release(v35);
    if (a1)
    {
      CFRelease(a1);
    }

    xpc_release(v36);
    v29 = v25 | (v26 << 32);
  }

  else
  {
    v30 = CTLogMigration();
    v29 = 0x1600000001;
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      _CTServerConnectionPerformMigration_cold_1(v30);
    }
  }

  v31 = *MEMORY[0x1E69E9840];
  return v29;
}

void sub_182EC801C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, uint64_t a10, xpc_object_t a11, xpc_object_t a12)
{
  xpc_release(object);
  xpc_release(a11);
  if (v12)
  {
    CFRelease(v12);
  }

  xpc_release(a12);
  _Unwind_Resume(a1);
}

uint64_t _CTServerConnectionRegisterSupportedEnhancedLinkQualityMetric(uint64_t a1)
{
  if (!a1)
  {
    return 0x1600000001;
  }

  xpc::dict_creator::dict_creator(object);
  xpc::dict_creator::operator()<char const*>("kRadioEnhancedLQMRegister", object, "kRequest", &v11);
  xpc_release(object[0]);
  v2 = v11;
  v12 = v11;
  v11 = xpc_null_create();
  xpc_release(v11);
  v3 = _CFXPCCreateXPCObjectFromCFObject();
  if (!v3)
  {
    v3 = xpc_null_create();
  }

  xpc_dictionary_set_value(v2, "kRadioEnhancedLQMRegisterSupportedMetrics", v3);
  v4 = xpc_null_create();
  xpc_release(v3);
  xpc_release(v4);
  v11 = xpc_null_create();
  v5 = SendXpcMessage(a1, &v12, &v11);
  v6 = 0x400000000;
  if (MEMORY[0x1865E16C0](v11) == MEMORY[0x1E69E9E80])
  {
    object[0] = &v11;
    object[1] = "kDidSucceed";
    xpc::dict::object_proxy::operator xpc::object(object, &v10);
    v8 = xpc::dyn_cast_or_default(&v10, 0);
    xpc_release(v10);
    if (v8)
    {
      v6 = v5 & 0xFFFFFFFF00000000;
      v5 = v5;
    }

    else
    {
      v5 = 2;
    }
  }

  else
  {
    v5 = 2;
  }

  xpc_release(v11);
  xpc_release(v12);
  return v5 | v6;
}

uint64_t _CTServerConnectionQueryEnhancedLinkQualityMetric(const void *a1, unsigned int a2, CFDataRef *a3)
{
  result = 0x1600000001;
  if (a1 && a3)
  {
    xpc::dict_creator::dict_creator(object);
    xpc::dict_creator::operator()<char const*>("kRadioEnhancedLQMQuery", object, "kRequest", &xdict);
    xpc_release(object[0]);
    v7 = xdict;
    v19 = xdict;
    xdict = xpc_null_create();
    xpc_release(xdict);
    v8 = xpc_int64_create(a2);
    if (!v8)
    {
      v8 = xpc_null_create();
    }

    xpc_dictionary_set_value(v7, "kRadioEnhancedLQMQueryPayload", v8);
    v9 = xpc_null_create();
    xpc_release(v8);
    xpc_release(v9);
    xdict = xpc_null_create();
    v10 = SendXpcMessage(a1, &v19, &xdict);
    if (MEMORY[0x1865E16C0](xdict) == MEMORY[0x1E69E9E80] && (object[0] = &xdict, object[1] = "kDidSucceed", xpc::dict::object_proxy::operator xpc::object(object, &v17), v11 = xpc::dyn_cast_or_default(&v17, 0), xpc_release(v17), v11))
    {
      v12 = v10 & 0xFFFFFFFF00000000;
      object[0] = 0;
      data = xpc_dictionary_get_data(xdict, "kRadioEnhancedLQMResult", object);
      v14 = CFGetAllocator(a1);
      *a3 = CFDataCreate(v14, data, object[0]);
      v15 = v10;
    }

    else
    {
      v12 = 0x500000000;
      v15 = 2;
    }

    xpc_release(xdict);
    xpc_release(v19);
    return v15 | v12;
  }

  return result;
}

uint64_t _CTServerConnectionGetSupportedEnhancedLinkQualityMetric(uint64_t a1, xpc_object_t *a2)
{
  result = 0x1600000001;
  if (a1 && a2)
  {
    xpc::dict_creator::dict_creator(object);
    xpc::dict_creator::operator()<char const*>("kRadioEnhancedLQMGetSupportedMetrics", object, "kRequest", &xdict);
    xpc_release(object[0]);
    v12 = xdict;
    xdict = xpc_null_create();
    xpc_release(xdict);
    xdict = xpc_null_create();
    v5 = SendXpcMessage(a1, &v12, &xdict);
    v6 = 0x400000000;
    if (MEMORY[0x1865E16C0](xdict) == MEMORY[0x1E69E9E80])
    {
      object[0] = &xdict;
      object[1] = "kDidSucceed";
      xpc::dict::object_proxy::operator xpc::object(object, &v10);
      v8 = xpc::dyn_cast_or_default(&v10, 0);
      xpc_release(v10);
      object[0] = 0;
      xpc_dictionary_get_value(xdict, "kRadioEnhancedLQMSupportedMetrics");
      v10 = _CFXPCCreateCFObjectFromXPCObject();
      ctu::cf::CFSharedRef<__CFDictionary const>::CFSharedRef<void const,void>(object, &v10);
      *a2 = object[0];
      if (v8)
      {
        v6 = v5 & 0xFFFFFFFF00000000;
        v7 = v5;
      }

      else
      {
        v7 = 2;
      }
    }

    else
    {
      v7 = 2;
    }

    xpc_release(xdict);
    xpc_release(v12);
    return v7 | v6;
  }

  return result;
}

const char *CTDataRateAsString(unint64_t a1)
{
  if (a1 > 8)
  {
    return "???";
  }

  else
  {
    return off_1E6A44558[a1];
  }
}

uint64_t MMSMessageClassHeader::parseValue(MMSMessageClassHeader *this, std::string::value_type *a2)
{
  if ((MMSEnumerationHeader::parseNamedValue(this, a2) & 1) == 0)
  {
    std::string::__assign_external((this + 32), a2);
  }

  return 1;
}

uint64_t MMSMessageClassHeader::valueAsString(uint64_t a1, std::string *this)
{
  if (*(a1 + 17) < 0)
  {

    return MMSEnumerationHeader::valueAsString(a1, this);
  }

  else
  {
    std::string::operator=(this, (a1 + 32));
    return 1;
  }
}

uint64_t MMSMessageClassHeader::decodeValue(MMSMessageClassHeader *this, MMSPduDecoder *a2)
{
  v6 = 0;
  v4 = MMSPduDecoder::peekByte(a2, &v6);
  result = 0;
  if (v4)
  {
    if (v6 < 0)
    {
      return MMSEnumerationHeader::decodeValue(this, a2);
    }

    else
    {
      return MMSPduDecoder::decodeHttpToken(a2, (this + 32));
    }
  }

  return result;
}

uint64_t MMSMessageClassHeader::encodeValue(MMSMessageClassHeader *this, MMSPduEncoder *a2)
{
  v3 = *(this + 17);
  if (v3 < 0)
  {
    MMSPduEncoder::encodeByte(a2, v3);
  }

  else
  {
    v4 = this + 32;
    if (*(this + 55) < 0)
    {
      v4 = *v4;
    }

    MMSPduEncoder::encodeHttpToken(a2, v4);
  }

  return 1;
}

void MMSMessageClassHeader::~MMSMessageClassHeader(void **this)
{
  *this = &unk_1EF012BA0;
  if (*(this + 55) < 0)
  {
    operator delete(this[4]);
  }

  MMSEnumerationHeader::~MMSEnumerationHeader(this);
}

{
  *this = &unk_1EF012BA0;
  if (*(this + 55) < 0)
  {
    operator delete(this[4]);
  }

  MMSEnumerationHeader::~MMSEnumerationHeader(this);

  JUMPOUT(0x1865E0880);
}

const char *CTBootstrapStatusAsString(unsigned int a1)
{
  if (a1 > 2)
  {
    return "??";
  }

  else
  {
    return off_1E6A44850[a1];
  }
}

uint64_t CTLogSubscriber()
{
  if (CTLogSubscriber_once != -1)
  {
    CTLogSubscriber_cold_1();
  }

  return CTLogSubscriber_logger;
}

os_log_t __CTLogSubscriber_block_invoke()
{
  result = os_log_create(kCTLoggingSubsystem, "Subscriber");
  CTLogSubscriber_logger = result;
  return result;
}

uint64_t CTLogPostponement()
{
  if (CTLogPostponement_once != -1)
  {
    CTLogPostponement_cold_1();
  }

  return CTLogPostponement_logger;
}

os_log_t __CTLogPostponement_block_invoke()
{
  result = os_log_create(kCTLoggingSubsystem, "Postponement");
  CTLogPostponement_logger = result;
  return result;
}

uint64_t CTLogClientXPC()
{
  if (CTLogClientXPC_once != -1)
  {
    CTLogClientXPC_cold_1();
  }

  return CTLogClientXPC_logger;
}

os_log_t __CTLogClientXPC_block_invoke()
{
  result = os_log_create(kCTLoggingSubsystem, "ClientXPC");
  CTLogClientXPC_logger = result;
  return result;
}

uint64_t CTLogRadioModule()
{
  if (CTLogRadioModule_once != -1)
  {
    CTLogRadioModule_cold_1();
  }

  return CTLogRadioModule_logger;
}

os_log_t __CTLogRadioModule_block_invoke()
{
  result = os_log_create(kCTLoggingSubsystem, "RadioModule");
  CTLogRadioModule_logger = result;
  return result;
}

os_log_t __CTLogRegistration_block_invoke()
{
  result = os_log_create(kCTLoggingSubsystem, "Registration");
  CTLogRegistration_logger = result;
  return result;
}

uint64_t CTLogMigration()
{
  if (CTLogMigration_once != -1)
  {
    CTLogMigration_cold_1();
  }

  return CTLogMigration_logger;
}

os_log_t __CTLogMigration_block_invoke()
{
  result = os_log_create(kCTLoggingSubsystem, "Migration");
  CTLogMigration_logger = result;
  return result;
}

uint64_t CTLogStewieMonitor()
{
  if (CTLogStewieMonitor_once != -1)
  {
    CTLogStewieMonitor_cold_1();
  }

  return CTLogStewieMonitor_logger;
}

os_log_t __CTLogStewieMonitor_block_invoke()
{
  result = os_log_create(kCTLoggingSubsystem, "StewieMonitor");
  CTLogStewieMonitor_logger = result;
  return result;
}

uint64_t CTLogStewieDataClient()
{
  if (CTLogStewieDataClient_once != -1)
  {
    CTLogStewieDataClient_cold_1();
  }

  return CTLogStewieDataClient_logger;
}

os_log_t __CTLogStewieDataClient_block_invoke()
{
  result = os_log_create(kCTLoggingSubsystem, "StewieDataClient");
  CTLogStewieDataClient_logger = result;
  return result;
}

uint64_t CTLogConnectionPair()
{
  if (CTLogConnectionPair_once != -1)
  {
    CTLogConnectionPair_cold_1();
  }

  return CTLogConnectionPair_logger;
}

os_log_t __CTLogConnectionPair_block_invoke()
{
  result = os_log_create(kCTLoggingSubsystem, "ConnectionPair");
  CTLogConnectionPair_logger = result;
  return result;
}

uint64_t CTLogCoreAnalytics()
{
  if (CTLogCoreAnalytics_once != -1)
  {
    CTLogCoreAnalytics_cold_1();
  }

  return CTLogCoreAnalytics_logger;
}

os_log_t __CTLogCoreAnalytics_block_invoke()
{
  result = os_log_create(kCTLoggingSubsystem, "CoreAnalytics");
  CTLogCoreAnalytics_logger = result;
  return result;
}

uint64_t CTLogCellMonitor()
{
  if (CTLogCellMonitor_once != -1)
  {
    CTLogCellMonitor_cold_1();
  }

  return CTLogCellMonitor_logger;
}

os_log_t __CTLogCellMonitor_block_invoke()
{
  result = os_log_create(kCTLoggingSubsystem, "CellMonitor");
  CTLogCellMonitor_logger = result;
  return result;
}

void sub_182ECBEA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v8 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_182ECC1DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v8 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_182ECC4E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v8 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_182ECC72C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v8 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_182ECC944(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_182ECCC24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v8 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_182ECD014(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v8 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_182ECD268(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a19, 8);

  _Unwind_Resume(a1);
}

void sub_182ECD45C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a19, 8);

  _Unwind_Resume(a1);
}

void sub_182ECD6C8(_Unwind_Exception *a1)
{
  _Block_object_dispose((v3 - 112), 8);

  _Unwind_Resume(a1);
}

void sub_182ECDA08(_Unwind_Exception *a1)
{
  _Block_object_dispose((v2 - 112), 8);

  _Unwind_Resume(a1);
}

void sub_182ECDD10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a19, 8);

  _Unwind_Resume(a1);
}

void sub_182ECDF28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a19, 8);

  _Unwind_Resume(a1);
}

void sub_182ECE18C(_Unwind_Exception *a1)
{
  _Block_object_dispose((v2 - 112), 8);

  _Unwind_Resume(a1);
}

void sub_182ECE4AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a19, 8);

  _Unwind_Resume(a1);
}

void sub_182ECE708(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a19, 8);

  _Unwind_Resume(a1);
}

void sub_182ECE99C(_Unwind_Exception *a1)
{
  _Block_object_dispose((v3 - 112), 8);

  _Unwind_Resume(a1);
}

void sub_182ECECA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a19, 8);

  _Unwind_Resume(a1);
}

void sub_182ECEF04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a19, 8);

  _Unwind_Resume(a1);
}

void sub_182ECF174(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a19, 8);

  _Unwind_Resume(a1);
}

void sub_182ECF3E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a19, 8);

  _Unwind_Resume(a1);
}

void sub_182ECF65C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a19, 8);

  _Unwind_Resume(a1);
}

void sub_182ECF8D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a19, 8);

  _Unwind_Resume(a1);
}

void sub_182ECFB20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a19, 8);

  _Unwind_Resume(a1);
}

void sub_182ECFD6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a19, 8);

  _Unwind_Resume(a1);
}

void sub_182ECFFB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a19, 8);

  _Unwind_Resume(a1);
}

void sub_182ED0204(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a19, 8);

  _Unwind_Resume(a1);
}

void sub_182ED0450(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a19, 8);

  _Unwind_Resume(a1);
}

void sub_182ED06B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a19, 8);

  _Unwind_Resume(a1);
}

void sub_182ED0924(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a19, 8);

  _Unwind_Resume(a1);
}

void sub_182ED0B94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a19, 8);

  _Unwind_Resume(a1);
}

void sub_182ED0E04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a19, 8);

  _Unwind_Resume(a1);
}

void sub_182ED1074(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a19, 8);

  _Unwind_Resume(a1);
}

void sub_182ED12B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a19, 8);

  _Unwind_Resume(a1);
}

void sub_182ED14E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a19, 8);

  _Unwind_Resume(a1);
}

void sub_182ED173C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a19, 8);

  _Unwind_Resume(a1);
}

void sub_182ED19AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a19, 8);

  _Unwind_Resume(a1);
}

void sub_182ED1C1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a19, 8);

  _Unwind_Resume(a1);
}

void sub_182ED1EA4(_Unwind_Exception *a1)
{
  _Block_object_dispose((v3 - 112), 8);

  _Unwind_Resume(a1);
}

void sub_182ED2198(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a19, 8);

  _Unwind_Resume(a1);
}

void sub_182ED2414(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id a26)
{
  _Block_object_dispose(&a21, 8);

  _Unwind_Resume(a1);
}

void sub_182ED2654(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a19, 8);

  _Unwind_Resume(a1);
}

void sub_182ED2900(_Unwind_Exception *a1)
{
  _Block_object_dispose((v2 - 112), 8);

  _Unwind_Resume(a1);
}

void sub_182ED2C9C(_Unwind_Exception *a1)
{
  _Block_object_dispose((v3 - 112), 8);

  _Unwind_Resume(a1);
}

void sub_182ED2FC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a19, 8);

  _Unwind_Resume(a1);
}

void sub_182ED3210(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a19, 8);

  _Unwind_Resume(a1);
}

void sub_182ED345C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a19, 8);

  _Unwind_Resume(a1);
}

void sub_182ED365C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a19, 8);

  _Unwind_Resume(a1);
}

void sub_182ED3850(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a19, 8);

  _Unwind_Resume(a1);
}

void sub_182ED4F2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t a9, uint64_t a10, xpc_object_t object, xpc_object_t a12)
{
  xpc_release(object);
  xpc_release(a12);
  _Unwind_Resume(a1);
}

void sub_182ED5344(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, uint64_t a10, xpc_object_t a11, xpc_object_t a12)
{
  xpc_release(object);
  xpc_release(a11);
  xpc_release(a12);
  _Unwind_Resume(a1);
}

void sub_182ED5E18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t a10, xpc_object_t object, xpc_object_t a12)
{
  xpc_release(object);
  xpc_release(a12);
  if (v13)
  {
    CFRelease(v13);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  _Unwind_Resume(a1);
}

void sub_182ED604C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, xpc_object_t object, xpc_object_t a13)
{
  xpc_release(object);
  xpc_release(a13);
  xpc_release(*(v13 - 24));
  _Unwind_Resume(a1);
}

void sub_182ED63C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, CFTypeRef a10, uint64_t a11, CFTypeRef cf, xpc_object_t object)
{
  if (cf)
  {
    CFRelease(cf);
  }

  xpc_release(*(v13 - 24));
  xpc_release(object);
  _Unwind_Resume(a1);
}

void acknowledgeMessageWithId(unsigned int a1, int a2)
{
  if (_messageCenterServerConnection)
  {
    xpc::dict_creator::dict_creator(object);
    xpc::dict_creator::operator()<char const*>("kSmsAcknowledgeMessage", object, "kRequest", &v13);
    xpc_release(object[0]);
    v4 = v13;
    v14 = v13;
    v13 = xpc_null_create();
    xpc_release(v13);
    v5 = xpc_int64_create(a1);
    if (!v5)
    {
      v5 = xpc_null_create();
    }

    xpc_dictionary_set_value(v4, "kSmsMessageID", v5);
    v6 = xpc_null_create();
    xpc_release(v5);
    xpc_release(v6);
    v7 = xpc_BOOL_create(a2 != 0);
    if (!v7)
    {
      v7 = xpc_null_create();
    }

    xpc_dictionary_set_value(v4, "kSmsMessageIsMobileOriginated", v7);
    v8 = xpc_null_create();
    xpc_release(v7);
    xpc_release(v8);
    v13 = xpc_null_create();
    if (SendXpcMessage(_messageCenterServerConnection, &v14, &v13) >> 32)
    {
      v10 = CTLogMessageCenter();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        acknowledgeMessageWithId();
      }
    }

    else if (MEMORY[0x1865E16C0](v13) == MEMORY[0x1E69E9E80])
    {
      object[0] = &v13;
      object[1] = "kSmsMessageWasAcknowledged";
      xpc::dict::object_proxy::operator xpc::object(object, &v12);
      xpc::dyn_cast_or_default(&v12, 0);
      xpc_release(v12);
    }

    xpc_release(v13);
    xpc_release(v14);
  }

  else
  {
    v9 = CTLogMessageCenter();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      acknowledgeMessageWithId();
    }
  }
}

void sub_182ED661C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, xpc_object_t object, xpc_object_t a13, xpc_object_t a14)
{
  xpc_release(object);
  xpc_release(a13);
  xpc_release(a14);
  _Unwind_Resume(a1);
}

void sub_182ED6AB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, xpc_object_t a12, xpc_object_t object, xpc_object_t a14)
{
  xpc_release(object);
  xpc_release(a14);
  _Unwind_Resume(a1);
}

void sub_182ED6C18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }

  _Unwind_Resume(exception_object);
}

void sub_182ED6DFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, xpc_object_t object, xpc_object_t a13, xpc_object_t a14)
{
  xpc_release(object);
  xpc_release(a13);
  xpc_release(a14);
  _Unwind_Resume(a1);
}

void sub_182ED77A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, uint64_t a10, xpc_object_t a11, xpc_object_t a12)
{
  xpc_release(object);
  xpc_release(a11);
  xpc_release(a12);
  _Unwind_Resume(a1);
}

void sub_182ED79D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object, uint64_t a12, xpc_object_t a13, xpc_object_t a14)
{
  xpc_release(object);
  xpc_release(a13);
  xpc_release(a14);
  _Unwind_Resume(a1);
}

void sub_182ED7B10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, xpc_object_t object, xpc_object_t a13)
{
  xpc_release(object);
  xpc_release(a13);
  xpc_release(*(v13 - 24));
  _Unwind_Resume(a1);
}

void sub_182ED80DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, xpc_object_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, xpc_object_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  xpc_release(object);
  xpc_release(a11);
  xpc_release(a16);
  _Unwind_Resume(a1);
}

void sub_182ED8328(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, xpc_object_t a12, xpc_object_t object, xpc_object_t a14)
{
  xpc_release(object);
  xpc_release(a14);
  _Unwind_Resume(a1);
}

void sub_182ED8530(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t a9, uint64_t a10, uint64_t a11, uint64_t a12, xpc_object_t object)
{
  xpc_release(object);
  xpc_release(*(v13 - 24));
  _Unwind_Resume(a1);
}

void *ctu::cf::CFSharedRef<__CFData const>::CFSharedRef<void const,void>(void *a1, CFTypeRef *a2)
{
  v3 = *a2;
  if (*a2 && (v4 = CFGetTypeID(*a2), v4 == CFDataGetTypeID()))
  {
    *a1 = v3;
    CFRetain(v3);
  }

  else
  {
    *a1 = 0;
  }

  return a1;
}

void sub_182ED91FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, void *a11, void *a12)
{
  if (v17 != v18)
  {
  }

  if (v13 != v14)
  {
  }

  _Unwind_Resume(a1);
}

void sub_182ED9CE0(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_182EDA514(_Unwind_Exception *a1)
{
  if (v2 != v3)
  {
  }

  _Unwind_Resume(a1);
}

void sub_182EDB450(_Unwind_Exception *a1)
{
  if (v2 != v3)
  {
  }

  _Unwind_Resume(a1);
}

void sub_182EDBE3C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_182EDCD24(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_182EDD538(_Unwind_Exception *a1)
{
  if (v2 != v3)
  {
  }

  _Unwind_Resume(a1);
}

void sub_182EDE570(_Unwind_Exception *a1)
{
  if (v2 != v3)
  {
  }

  _Unwind_Resume(a1);
}

void sub_182EDF868(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, void *a11, void *a12, void *a13, void *a14, void *a15, void *a16, void *a17, void *a18, void *a19, void *a20, void *a21, void *a22)
{
  if (a16 != a12)
  {
  }

  if (a20 != a15)
  {
  }

  if (*(v31 - 96) != a19)
  {
  }

  if (v26 != v27)
  {
  }

  if (v23 != v24)
  {
  }

  _Unwind_Resume(a1);
}

void sub_182EE03BC(_Unwind_Exception *a1)
{
  if (v2 != v3)
  {
  }

  _Unwind_Resume(a1);
}

void sub_182EE0FA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, void *a11, void *a12, void *a13, void *a14, void *a15, void *a16, void *a17, void *a18, void *a19, void *a20, void *a21, void *a22, void *a23, void *a24, void *a25, void *a26, void *a27, void *a28, void *a29)
{
  if (a18 != a14)
  {
  }

  if (a22 != a17)
  {
  }

  if (a26 != a21)
  {
  }

  if (*(v37 - 144) != a25)
  {
  }

  if (*(v37 - 120) != a29)
  {
  }

  if (*(v37 - 152) != v36)
  {
  }

  if (v34 != v35)
  {
  }

  if (v30 != v31)
  {
  }

  _Unwind_Resume(a1);
}

void sub_182EE1F58(_Unwind_Exception *a1)
{
  if (v2 != v3)
  {
  }

  _Unwind_Resume(a1);
}

void sub_182EE2BDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, void *a11, void *a12, void *a13, void *a14, void *a15, void *a16)
{
  if (v24 != v23)
  {
  }

  if (a16 != a14)
  {
  }

  if (v17 != v18)
  {
  }

  _Unwind_Resume(a1);
}

void sub_182EE3594(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, void *a11, void *a12)
{
  if (v17 != v18)
  {
  }

  if (v13 != v14)
  {
  }

  _Unwind_Resume(a1);
}

void sub_182EE39DC(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_182EE4064(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_182EE45B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  v17 = v16;

  _Unwind_Resume(a1);
}

void sub_182EE47C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id a21)
{
  _Block_object_dispose(&a16, 8);

  _Block_object_dispose((v23 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_182EE4978(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  v17 = v16;

  _Unwind_Resume(a1);
}

void sub_182EE4B88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id a21)
{
  _Block_object_dispose(&a16, 8);

  _Block_object_dispose((v23 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_182EE4D44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  v17 = v16;

  _Unwind_Resume(a1);
}

void sub_182EE4F54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id a21)
{
  _Block_object_dispose(&a16, 8);

  _Block_object_dispose((v23 - 112), 8);
  _Unwind_Resume(a1);
}

__CFString *_CTErrorString(unsigned int a1)
{
  v1 = &kCTErrorStrings[a1];
  if (a1 >= 0x43)
  {
    v1 = &kCTReturnUnknownError;
  }

  return *v1;
}

void sub_182EE5E68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id a21)
{
  _Block_object_dispose(&a16, 8);

  _Block_object_dispose((v22 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_182EE5FE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  v16 = v15;

  _Unwind_Resume(a1);
}

void sub_182EE61CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id a21)
{
  _Block_object_dispose(&a16, 8);

  _Block_object_dispose((v22 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_182EE644C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  v17 = v16;

  _Unwind_Resume(a1);
}

void sub_182EE665C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id a21)
{
  _Block_object_dispose(&a16, 8);

  _Block_object_dispose((v23 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_182EE6808(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  v18 = v17;

  _Unwind_Resume(a1);
}

void sub_182EE69B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a19, 8);

  _Unwind_Resume(a1);
}

void sub_182EE6ACC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  v17 = v16;

  _Unwind_Resume(a1);
}

void sub_182EE6C60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a19, 8);

  _Unwind_Resume(a1);
}

void sub_182EE6D74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  v17 = v16;

  _Unwind_Resume(a1);
}

void sub_182EE6F84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id a21)
{
  _Block_object_dispose(&a16, 8);

  _Block_object_dispose((v23 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_182EE7130(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  v18 = v17;

  _Unwind_Resume(a1);
}

void sub_182EE72DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a19, 8);

  _Unwind_Resume(a1);
}

void sub_182EE73F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  v17 = v16;

  _Unwind_Resume(a1);
}

void sub_182EE7588(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a19, 8);

  _Unwind_Resume(a1);
}

void sub_182EE769C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  v17 = v16;

  _Unwind_Resume(a1);
}

void sub_182EE78AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id a21)
{
  _Block_object_dispose(&a16, 8);

  _Block_object_dispose((v23 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_182EE7A58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  v18 = v17;

  _Unwind_Resume(a1);
}

void sub_182EE7C04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a19, 8);

  _Unwind_Resume(a1);
}

void sub_182EE7D1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  v17 = v16;

  _Unwind_Resume(a1);
}

void sub_182EE7EB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a19, 8);

  _Unwind_Resume(a1);
}

void sub_182EE80AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id a21)
{
  _Block_object_dispose(&a16, 8);

  _Block_object_dispose((v22 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t MMSContentType::nameForEncodedContentType(_anonymous_namespace_ *a1, std::string *a2)
{
  if ((a1 & 0x80) == 0)
  {
    return 0;
  }

  v5 = a1;
  v9 = *(ContentTypes + 8);
  v7 = ContentTypes + 8;
  v8 = v9;
  if (!v9)
  {
    return 0;
  }

  v10 = v5 & 0x7F;
  v11 = v7;
  do
  {
    v12 = *(v8 + 32);
    v13 = v12 >= v10;
    v14 = v12 < v10;
    if (v13)
    {
      v11 = v8;
    }

    v8 = *(v8 + 8 * v14);
  }

  while (v8);
  if (v11 == v7 || *(v11 + 32) > v10)
  {
    return 0;
  }

  std::string::__assign_external(a2, *(v11 + 40));
  v2 = 1;
  std::string::append(a2, "/", 1uLL);
  v15 = *(v11 + 48);
  v16 = strlen(v15);
  std::string::append(a2, v15, v16);
  return v2;
}

uint64_t anonymous namespace::getContentTypes(_anonymous_namespace_ *this)
{
  if (byte_1ED5157BA != 1)
  {
  }

  return qword_1ED5157D0;
}

uint64_t MMSContentType::encodedContentTypeForName(MMSContentType *this, const char *a2)
{
  if (!this)
  {
    return 0;
  }

  {
    operator new();
  }

  if (!*(MMSContentType::encodedContentTypeForName(char const*)::sNameToEncodingMap + 24))
  {
    v4 = ContentTypes + 1;
    v5 = *ContentTypes;
    if (*ContentTypes != ContentTypes + 1)
    {
      do
      {
        memset(&v18, 0, sizeof(v18));
        std::string::basic_string[abi:nn200100]<0>(&v18, v5[5]);
        std::string::push_back(&v18, 47);
        v6 = strlen(v5[6]);
        std::string::append(&v18, v5[6], v6);
        v7 = MMSContentType::encodedContentTypeForName(char const*)::sNameToEncodingMap;
        if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&__p, v18.__r_.__value_.__l.__data_, v18.__r_.__value_.__l.__size_);
        }

        else
        {
          __p = v18;
        }

        v17 = *(v5 + 8);
        std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,unsigned int>>(v7, &__p);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v18.__r_.__value_.__l.__data_);
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

      while (v9 != v4);
    }
  }

  v11 = MMSContentType::encodedContentTypeForName(char const*)::sNameToEncodingMap;
  std::string::basic_string[abi:nn200100]<0>(&__p, this);
  v12 = std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::find<std::string>(v11, &__p);
  v13 = v12;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (v13)
    {
      return (*(v13 + 40) | 0x80);
    }

    return 0;
  }

  if (!v12)
  {
    return 0;
  }

  return (*(v13 + 40) | 0x80);
}

void MMSContentType::contentTypeForName(MMSContentType *this, const char *a2)
{
  if (this)
  {
    v2 = this;
  }

  else
  {
    v2 = "";
  }

  v3 = strchr(v2, 59);
  memset(&v12, 0, sizeof(v12));
  memset(__s1, 0, sizeof(__s1));
  if (v3)
  {
    v4 = v3;
    std::string::__assign_external(&v12, v2, (v3 - v2));
    v5 = __s1;
    v6 = v4 + 1;
  }

  else
  {
    v5 = &v12;
    v6 = v2;
  }

  std::string::__assign_external(v5, v6);
  if ((v12.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v8 = &v12;
  }

  else
  {
    v8 = v12.__r_.__value_.__r.__words[0];
  }

  if (MMSContentType::encodedContentTypeForName(v8, v7))
  {
    operator new();
  }

  v9 = strchr(v2, 47);
  if (v9)
  {
    memset(__p, 0, sizeof(__p));
    std::string::basic_string[abi:nn200100](__p, v2, (v9 - v2));
    operator new();
  }

  operator new();
}

_BYTE *std::string::basic_string[abi:nn200100](_BYTE *__dst, void *__src, size_t __len)
{
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  __dst[23] = __len;
  if (__len)
  {
    memmove(__dst, __src, __len);
  }

  __dst[__len] = 0;
  return __dst;
}

uint64_t MMSContentType::multipartMixedContentType(MMSContentType *this)
{
  if (_MergedGlobals_0 != 1)
  {
    MMSContentType::multipartMixedContentType();
  }

  return *qword_1ED5157C0;
}

uint64_t MMSContentType::multipartRelatedContentType(MMSContentType *this)
{
  if (byte_1ED5157B9 != 1)
  {
    MMSContentType::multipartRelatedContentType();
  }

  return *qword_1ED5157C8;
}

uint64_t MMSContentType::toString(uint64_t a1, uint64_t a2)
{
  v24 = 0;
  memset(v23, 0, sizeof(v23));
  v21 = 0u;
  v22 = 0u;
  *__src = 0u;
  *__p = 0u;
  v17 = 0u;
  v18 = 0u;
  v16 = 0u;
  std::ostringstream::basic_ostringstream[abi:nn200100](&v16);
  v4 = (*(*a1 + 16))(a1);
  v5 = strlen(v4);
  v6 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v16, v4, v5);
  v7 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v6, "/", 1);
  v8 = (*(*a1 + 24))(a1);
  v9 = strlen(v8);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v7, v8, v9);
  if ((BYTE8(v22) & 0x10) != 0)
  {
    v11 = v22;
    if (v22 < __src[1])
    {
      *&v22 = __src[1];
      v11 = __src[1];
    }

    v12 = __src[0];
  }

  else
  {
    if ((BYTE8(v22) & 8) == 0)
    {
      v10 = 0;
      HIBYTE(v15) = 0;
      goto LABEL_14;
    }

    v12 = *(&v17 + 1);
    v11 = *(&v18 + 1);
  }

  v10 = v11 - v12;
  if ((v11 - v12) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  if (v10 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v11 - v12;
  if (v10)
  {
    memmove(&__dst, v12, v10);
  }

LABEL_14:
  *(&__dst + v10) = 0;
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }

  *a2 = __dst;
  *(a2 + 16) = v15;
  MMSParameterContainer::toString((a1 + 8), a2);
  *&v16 = *MEMORY[0x1E69E54E8];
  *(&v16 + *(v16 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  *(&v16 + 1) = MEMORY[0x1E69E5548] + 16;
  if (SHIBYTE(v21) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v16 + 1) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&v17);
  std::ostream::~ostream();
  MEMORY[0x1865E0820](v23);
  return 1;
}

uint64_t std::ostringstream::basic_ostringstream[abi:nn200100](uint64_t a1)
{
  *(a1 + 160) = 0;
  v2 = MEMORY[0x1E69E5570] + 24;
  v3 = MEMORY[0x1E69E5570] + 64;
  *(a1 + 112) = MEMORY[0x1E69E5570] + 64;
  v4 = a1 + 8;
  v5 = *(MEMORY[0x1E69E54E8] + 16);
  v6 = *(MEMORY[0x1E69E54E8] + 8);
  *a1 = v6;
  *(a1 + *(v6 - 24)) = v5;
  v7 = (a1 + *(*a1 - 24));
  std::ios_base::init(v7, (a1 + 8));
  v7[1].__vftable = 0;
  v7[1].__fmtflags_ = -1;
  *(a1 + 112) = v3;
  v8 = MEMORY[0x1E69E5538] + 16;
  *a1 = v2;
  *(a1 + 8) = v8;
  MEMORY[0x1865E07E0](a1 + 16);
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 8) = MEMORY[0x1E69E5548] + 16;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 16;
  std::stringbuf::__init_buf_ptrs[abi:nn200100](v4);
  return a1;
}

BOOL MMSContentType::compare(MMSContentType *this, const char *a2, const char *a3)
{
  v6 = (*(*this + 16))(this);
  if (strcasecmp(v6, a2))
  {
    return 0;
  }

  v8 = (*(*this + 24))(this);
  return strcasecmp(v8, a3) == 0;
}

BOOL MMSContentType::isMultipart(MMSContentType *this)
{
  if (MMSContentType::compare(this, "application", "vnd.wap.multipart.mixed") || MMSContentType::compare(this, "application", "vnd.wap.multipart.related"))
  {
    return 1;
  }

  return MMSContentType::compare(this, "application", "vnd.wap.multipart.alternative");
}

void MMSEncodedContentType::MMSEncodedContentType(MMSEncodedContentType *this, unsigned int a2)
{
  *this = &unk_1EF012E70;
  MMSParameterContainer::MMSParameterContainer((this + 8));
  *this = &unk_1EF012EB0;
  v8 = *(ContentTypes + 8);
  v6 = (ContentTypes + 8);
  v7 = v8;
  if (!v8)
  {
    goto LABEL_9;
  }

  v9 = v6;
  do
  {
    v10 = *(v7 + 8);
    v11 = v10 >= a2;
    v12 = v10 < a2;
    if (v11)
    {
      v9 = v7;
    }

    v7 = *(v7 + v12);
  }

  while (v7);
  if (v9 == v6 || *(v9 + 8) > a2)
  {
LABEL_9:
    v9 = v6;
  }

  {
    v13 = 0;
  }

  else
  {
    v13 = a2;
  }

  *(this + 20) = v13;
}

uint64_t MMSEncodedContentType::type(MMSEncodedContentType *this)
{
  v5 = *(ContentTypes + 8);
  v3 = ContentTypes + 8;
  v4 = v5;
  if (!v5)
  {
    return 0;
  }

  v6 = *(this + 20);
  v7 = v3;
  do
  {
    v8 = *(v4 + 32);
    v9 = v8 >= v6;
    v10 = v8 < v6;
    if (v9)
    {
      v7 = v4;
    }

    v4 = *(v4 + 8 * v10);
  }

  while (v4);
  if (v7 != v3 && v6 >= *(v7 + 32))
  {
    return *(v7 + 40);
  }

  else
  {
    return 0;
  }
}

uint64_t MMSEncodedContentType::subtype(MMSEncodedContentType *this)
{
  v5 = *(ContentTypes + 8);
  v3 = ContentTypes + 8;
  v4 = v5;
  if (!v5)
  {
    return 0;
  }

  v6 = *(this + 20);
  v7 = v3;
  do
  {
    v8 = *(v4 + 32);
    v9 = v8 >= v6;
    v10 = v8 < v6;
    if (v9)
    {
      v7 = v4;
    }

    v4 = *(v4 + 8 * v10);
  }

  while (v4);
  if (v7 != v3 && v6 >= *(v7 + 32))
  {
    return *(v7 + 48);
  }

  else
  {
    return 0;
  }
}

uint64_t MMSEncodedContentType::encode(MMSEncodedContentType *this, MMSPduEncoder *a2)
{
  if (MMSHeaderContainer::headerCount((this + 8)))
  {
    v8 = 0;
    *__p = 0u;
    v7 = 0u;
    MMSPduEncoder::MMSPduEncoder(__p, *a2);
    MMSPduEncoder::encodeWspWellKnownMedia(__p, *(this + 20));
    MMSParameterContainer::encode((this + 8), __p);
    if (v7 >= 0)
    {
      v4 = HIBYTE(v7);
    }

    else
    {
      v4 = v7;
    }

    MMSPduEncoder::encodeWspValueLength(a2, v4);
    MMSPduEncoder::append(a2, __p);
    if (SHIBYTE(v7) < 0)
    {
      operator delete(__p[1]);
    }
  }

  else
  {
    MMSPduEncoder::encodeWspShortInteger(a2, *(this + 80));
  }

  return 1;
}

uint64_t MMSGeneralContentType::fromString(MMSGeneralContentType *this, const char *a2)
{
  v3 = strchr(this, 47);
  if (v3)
  {
    memset(__p, 0, sizeof(__p));
    std::string::basic_string[abi:nn200100](__p, this, (v3 - this));
    operator new();
  }

  return 0;
}

void MMSGeneralContentType::MMSGeneralContentType(MMSGeneralContentType *this, char *a2, char *a3)
{
  *this = &unk_1EF012E70;
  MMSParameterContainer::MMSParameterContainer((this + 8));
  *this = &unk_1EF012EF0;
  v6 = this + 80;
  if (a2)
  {
    v7 = a2;
  }

  else
  {
    v7 = "";
  }

  std::string::basic_string[abi:nn200100]<0>(this + 80, v7);
  v8 = this + 104;
  if (a3)
  {
    v9 = a3;
  }

  else
  {
    v9 = "";
  }

  std::string::basic_string[abi:nn200100]<0>(this + 104, v9);
  v10 = *(this + 103);
  if (v10 < 0)
  {
    v6 = *(this + 10);
    v10 = *(this + 11);
  }

  v11 = &v6[v10];
  while (v6 != v11)
  {
    *v6 = __tolower(*v6);
    ++v6;
  }

  v12 = *(this + 127);
  if (v12 < 0)
  {
    v8 = *(this + 13);
    v12 = *(this + 14);
  }

  v13 = &v8[v12];
  while (v8 != v13)
  {
    *v8 = __tolower(*v8);
    ++v8;
  }
}

uint64_t MMSGeneralContentType::type(MMSGeneralContentType *this)
{
  result = this + 80;
  if (*(this + 103) < 0)
  {
    return *result;
  }

  return result;
}

uint64_t MMSGeneralContentType::subtype(MMSGeneralContentType *this)
{
  result = this + 104;
  if (*(this + 127) < 0)
  {
    return *result;
  }

  return result;
}

uint64_t MMSGeneralContentType::encode(MMSGeneralContentType *this, MMSPduEncoder *a2)
{
  v22[0] = 0;
  v22[1] = 0;
  v23 = 0;
  MMSContentType::toString(this, v22);
  if (MMSHeaderContainer::headerCount((this + 8)))
  {
    v21 = 0;
    *v19 = 0u;
    v20 = 0u;
    MMSPduEncoder::MMSPduEncoder(v19, *a2);
    if (*(this + 103) >= 0)
    {
      v4 = *(this + 103);
    }

    else
    {
      v4 = *(this + 11);
    }

    memset(&v16, 0, sizeof(v16));
    v5 = &v16;
    std::string::basic_string[abi:nn200100](&v16, v4 + 1);
    if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v5 = v16.__r_.__value_.__r.__words[0];
    }

    if (v4)
    {
      if (*(this + 103) >= 0)
      {
        v6 = this + 80;
      }

      else
      {
        v6 = *(this + 10);
      }

      memmove(v5, v6, v4);
    }

    *(&v5->__r_.__value_.__l.__data_ + v4) = 47;
    v7 = *(this + 127);
    if (v7 >= 0)
    {
      v8 = this + 104;
    }

    else
    {
      v8 = *(this + 13);
    }

    if (v7 >= 0)
    {
      v9 = *(this + 127);
    }

    else
    {
      v9 = *(this + 14);
    }

    v10 = std::string::append(&v16, v8, v9);
    v11 = v10->__r_.__value_.__r.__words[2];
    *__p = *&v10->__r_.__value_.__l.__data_;
    v18 = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v16.__r_.__value_.__l.__data_);
    }

    if (v18 >= 0)
    {
      v12 = __p;
    }

    else
    {
      v12 = __p[0];
    }

    MMSPduEncoder::encodeHttpToken(v19, v12);
    MMSParameterContainer::encode((this + 8), v19);
    if (v20 >= 0)
    {
      v13 = HIBYTE(v20);
    }

    else
    {
      v13 = v20;
    }

    MMSPduEncoder::encodeWspValueLength(a2, v13);
    MMSPduEncoder::append(a2, v19);
    if (SHIBYTE(v18) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v20) < 0)
    {
      operator delete(v19[1]);
    }
  }

  else
  {
    if (v23 >= 0)
    {
      v14 = v22;
    }

    else
    {
      v14 = v22[0];
    }

    MMSPduEncoder::encodeHttpToken(a2, v14);
  }

  if (SHIBYTE(v23) < 0)
  {
    operator delete(v22[0]);
  }

  return 1;
}

void MMSEncodedContentType::~MMSEncodedContentType(MMSEncodedContentType *this)
{
  *this = &unk_1EF012E70;
  MMSParameterContainer::~MMSParameterContainer((this + 8));
}

{
  *this = &unk_1EF012E70;
  MMSParameterContainer::~MMSParameterContainer((this + 8));

  JUMPOUT(0x1865E0880);
}

void MMSGeneralContentType::~MMSGeneralContentType(void **this)
{
  *this = &unk_1EF012EF0;
  if (*(this + 127) < 0)
  {
    operator delete(this[13]);
  }

  if (*(this + 103) < 0)
  {
    operator delete(this[10]);
  }

  *this = &unk_1EF012E70;
  MMSParameterContainer::~MMSParameterContainer((this + 1));
}

{
  *this = &unk_1EF012EF0;
  if (*(this + 127) < 0)
  {
    operator delete(this[13]);
  }

  if (*(this + 103) < 0)
  {
    operator delete(this[10]);
  }

  *this = &unk_1EF012E70;
  MMSParameterContainer::~MMSParameterContainer((this + 1));

  JUMPOUT(0x1865E0880);
}

void *std::map<unsigned int,anonymous namespace::ContentType>::map[abi:nn200100](void *result, unsigned int *a2, uint64_t a3)
{
  result[1] = 0;
  result[2] = 0;
  *result = result + 1;
  if (a3)
  {
    v3 = a2;
    do
    {
      v4 = result[1];
      v5 = result + 1;
      if (*result == result + 1)
      {
        goto LABEL_9;
      }

      v6 = result[1];
      v7 = result + 1;
      if (v4)
      {
        do
        {
          v5 = v6;
          v6 = v6[1];
        }

        while (v6);
      }

      else
      {
        do
        {
          v5 = v7[2];
          v8 = *v5 == v7;
          v7 = v5;
        }

        while (v8);
      }

      v9 = *v3;
      if (*(v5 + 8) < *v3)
      {
LABEL_9:
        if (v4)
        {
          v10 = v5 + 1;
        }

        else
        {
          v10 = result + 1;
        }

        if (!*v10)
        {
LABEL_20:
          operator new();
        }
      }

      else
      {
        if (!v4)
        {
          goto LABEL_20;
        }

        while (1)
        {
          while (1)
          {
            v11 = v4;
            v12 = *(v4 + 32);
            if (v9 >= v12)
            {
              break;
            }

            v4 = *v11;
            if (!*v11)
            {
              goto LABEL_20;
            }
          }

          if (v12 >= v9)
          {
            break;
          }

          v4 = v11[1];
          if (!v4)
          {
            goto LABEL_20;
          }
        }
      }

      v3 += 6;
    }

    while (v3 != &a2[6 * a3]);
  }

  return result;
}

uint64_t std::string::basic_string[abi:nn200100](uint64_t result, unint64_t a2)
{
  if (a2 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  if (a2 > 0x16)
  {
    operator new();
  }

  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = 0;
  *(result + 23) = a2;
  return result;
}

const void **std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,unsigned int>>(void *a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  v6 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](v16, a2, v5);
  v7 = v6;
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_21;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v9.u32[0];
  if (v9.u32[0] > 1uLL)
  {
    v11 = v6;
    if (v6 >= *&v8)
    {
      v11 = v6 % *&v8;
    }
  }

  else
  {
    v11 = (*&v8 - 1) & v6;
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12 || (v13 = *v12) == 0)
  {
LABEL_21:
    memset(v16, 0, sizeof(v16));
    std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::__construct_node_hash<std::pair<std::string const,unsigned int>>();
  }

  while (1)
  {
    v14 = v13[1];
    if (v14 == v7)
    {
      break;
    }

    if (v10 > 1)
    {
      if (v14 >= *&v8)
      {
        v14 %= *&v8;
      }
    }

    else
    {
      v14 &= *&v8 - 1;
    }

    if (v14 != v11)
    {
      goto LABEL_21;
    }

LABEL_20:
    v13 = *v13;
    if (!v13)
    {
      goto LABEL_21;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:nn200100](a1, v13 + 2, v2))
  {
    goto LABEL_20;
  }

  return v13;
}

const void **std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::find<std::string>(void *a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  v6 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](&v16, a2, v5);
  v7 = a1[1];
  if (!*&v7)
  {
    return 0;
  }

  v8 = v6;
  v9 = vcnt_s8(v7);
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v9.u32[0];
  if (v9.u32[0] > 1uLL)
  {
    v11 = v6;
    if (v6 >= *&v7)
    {
      v11 = v6 % *&v7;
    }
  }

  else
  {
    v11 = (*&v7 - 1) & v6;
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12)
  {
    return 0;
  }

  for (i = *v12; i; i = *i)
  {
    v14 = i[1];
    if (v14 == v8)
    {
      if (std::equal_to<std::string>::operator()[abi:nn200100](a1, i + 2, v2))
      {
        return i;
      }
    }

    else
    {
      if (v10 > 1)
      {
        if (v14 >= *&v7)
        {
          v14 %= *&v7;
        }
      }

      else
      {
        v14 &= *&v7 - 1;
      }

      if (v14 != v11)
      {
        return 0;
      }
    }
  }

  return i;
}

void *std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(void *a1, uint64_t a2, uint64_t a3)
{
  v13[0] = 0;
  v13[1] = 0;
  MEMORY[0x1865E0740](v13, a1);
  if (LOBYTE(v13[0]) == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 40);
    v8 = a2 + a3;
    if ((*(v6 + 8) & 0xB0) == 0x20)
    {
      v9 = v8;
    }

    else
    {
      v9 = a2;
    }

    v10 = *(v6 + 144);
    if (v10 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v11 = std::locale::use_facet(&v14, MEMORY[0x1E69E5318]);
      v10 = (v11->__vftable[2].~facet_0)(v11, 32);
      std::locale::~locale(&v14);
      *(v6 + 144) = v10;
    }

    if (!std::__pad_and_output[abi:nn200100]<char,std::char_traits<char>>(v7, a2, v9, v8, v6, v10))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x1865E0750](v13);
  return a1;
}

uint64_t std::__pad_and_output[abi:nn200100]<char,std::char_traits<char>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
{
  v6 = a1;
  if (a1)
  {
    v11 = *(a5 + 24);
    if (v11 <= a4 - a2)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11 - (a4 - a2);
    }

    if (a3 - a2 >= 1 && (*(*a1 + 96))(a1) != a3 - a2)
    {
      return 0;
    }

    if (v12 >= 1)
    {
      __b[0] = 0;
      __b[1] = 0;
      v18 = 0;
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:nn200100]();
      }

      if (v12 >= 0x17)
      {
        operator new();
      }

      HIBYTE(v18) = v12;
      memset(__b, __c, v12);
      *(__b + v12) = 0;
      if (v18 >= 0)
      {
        v13 = __b;
      }

      else
      {
        v13 = __b[0];
      }

      v14 = (*(*v6 + 96))(v6, v13, v12);
      if (SHIBYTE(v18) < 0)
      {
        operator delete(__b[0]);
      }

      if (v14 != v12)
      {
        return 0;
      }
    }

    v15 = a4 - a3;
    if (v15 < 1 || (*(*v6 + 96))(v6, a3, v15) == v15)
    {
      *(a5 + 24) = 0;
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

void sub_182EEA164(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  v19 = v18;

  _Unwind_Resume(a1);
}

void sub_182EEA400(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id a21)
{
  _Block_object_dispose(&a16, 8);

  _Block_object_dispose((v25 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_182EEA68C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  v19 = v18;

  _Unwind_Resume(a1);
}

void sub_182EEA928(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id a21)
{
  _Block_object_dispose(&a16, 8);

  _Block_object_dispose((v25 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_182EEABD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  v20 = v19;

  _Unwind_Resume(a1);
}

void sub_182EEAE9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, id a32)
{
  _Block_object_dispose(&a16, 8);

  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

void sub_182EEB150(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  v20 = v19;

  _Unwind_Resume(a1);
}

void sub_182EEB414(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, id a32)
{
  _Block_object_dispose(&a16, 8);

  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

void sub_182EEB6A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  v19 = v18;

  _Unwind_Resume(a1);
}

void sub_182EEB940(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id a21)
{
  _Block_object_dispose(&a16, 8);

  _Block_object_dispose((v25 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_182EEBBCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  v19 = v18;

  _Unwind_Resume(a1);
}

void sub_182EEBE68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id a21)
{
  _Block_object_dispose(&a16, 8);

  _Block_object_dispose((v25 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_182EEC15C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id a21)
{
  _Block_object_dispose(&a16, 8);

  _Block_object_dispose((v25 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_182EEC53C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  v17 = v16;

  _Unwind_Resume(a1);
}

void sub_182EEC7A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id a21)
{
  _Block_object_dispose(&a16, 8);

  _Block_object_dispose((v23 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_182EEC9F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  v17 = v16;

  _Unwind_Resume(a1);
}

void sub_182EECBF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  v17 = v16;

  _Unwind_Resume(a1);
}

void sub_182EECE54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id a21)
{
  _Block_object_dispose(&a16, 8);

  _Block_object_dispose((v23 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_182EECFF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  v17 = v16;

  _Unwind_Resume(a1);
}

void sub_182EED1C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);

  _Block_object_dispose((v10 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_182EED3E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a19, 8);

  _Unwind_Resume(a1);
}

void sub_182EED514(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  v18 = v17;

  _Unwind_Resume(a1);
}

void sub_182EED720(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id a21)
{
  _Block_object_dispose(&a16, 8);

  _Block_object_dispose((v23 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_182EED988(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  v18 = v17;

  _Unwind_Resume(a1);
}

void sub_182EEDC04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id a21)
{
  _Block_object_dispose(&a16, 8);

  _Block_object_dispose((v24 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_182EEDE78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  v18 = v17;

  _Unwind_Resume(a1);
}

void sub_182EEE0F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id a21)
{
  _Block_object_dispose(&a16, 8);

  _Block_object_dispose((v24 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_182EEE344(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);

  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_182EEE5BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id a21)
{
  _Block_object_dispose(&a16, 8);

  _Block_object_dispose((v23 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_182EEE85C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id a21)
{
  _Block_object_dispose(&a16, 8);

  _Block_object_dispose((v23 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_182EEEAFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id a21)
{
  _Block_object_dispose(&a16, 8);

  _Block_object_dispose((v23 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_182EEED64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  v18 = v17;

  _Unwind_Resume(a1);
}

void sub_182EEEFE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id a21)
{
  _Block_object_dispose(&a16, 8);

  _Block_object_dispose((v24 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_182EEF378(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id a21)
{
  _Block_object_dispose(&a16, 8);

  _Block_object_dispose((v23 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_182EF4E48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a19, 8);

  _Block_object_dispose((v25 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_182EF5048(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a19, 8);

  _Block_object_dispose((v25 - 112), 8);
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__2(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[3] = result;
  return result;
}

void sub_182EF5450(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id a21)
{
  _Block_object_dispose(&a16, 8);

  _Block_object_dispose((v22 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_182EF55C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  v16 = v15;

  _Unwind_Resume(a1);
}

void sub_182EF57B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id a21)
{
  _Block_object_dispose(&a16, 8);

  _Block_object_dispose((v22 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_182EF5A58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id a26)
{
  _Block_object_dispose(&a21, 8);

  _Block_object_dispose((v28 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_182EF5D04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id a26)
{
  _Block_object_dispose(&a21, 8);

  _Block_object_dispose((v28 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_182EF5F4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a19, 8);

  _Unwind_Resume(a1);
}

const char *radioStateAsString(unsigned int a1)
{
  if (a1 > 6)
  {
    return "Unknown";
  }

  else
  {
    return off_1E6A45B08[a1];
  }
}

const char *cellularDiagnosticsStateAsString(int a1)
{
  v1 = "Internal error";
  v2 = "Anomaly event reported";
  v3 = "Other issue";
  if (a1 != 255)
  {
    v3 = "Internal error";
  }

  if (a1 != 4)
  {
    v2 = v3;
  }

  v4 = "Baseband RFFE failed";
  if (a1 != 3)
  {
    v4 = "Internal error";
  }

  if (a1 == 2)
  {
    v4 = "eUICC FW failed";
  }

  if (a1 <= 3)
  {
    v2 = v4;
  }

  v5 = "No issue";
  v6 = "Baseband dead";
  if (a1 != 1)
  {
    v6 = "Internal error";
  }

  if (a1)
  {
    v5 = v6;
  }

  if (a1 == -1)
  {
    v1 = "Not available";
  }

  if (a1 == -2)
  {
    v1 = "Not supported";
  }

  if (a1 >= 0)
  {
    v1 = v5;
  }

  if (a1 <= 1)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

void sub_182EF72C4(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

const char *CTDeviceTypeAsString(uint64_t a1)
{
  v1 = "CTDeviceTypeUnknown";
  if (a1 == 1)
  {
    v1 = "CTDeviceTypePairedWatch";
  }

  if (a1 == 2)
  {
    return "CTDeviceTypeThisDevice";
  }

  else
  {
    return v1;
  }
}

const char *CTPlanTransferEndpointAsString(uint64_t a1)
{
  v1 = "CTPlanTransferEndpointUnknown";
  if (a1 == 1)
  {
    v1 = "CTPlanTransferEndpointSource";
  }

  if (a1 == 2)
  {
    return "CTPlanTransferEndpointTarget";
  }

  else
  {
    return v1;
  }
}

const char *CTPlanTransferFlowTypeAsString(uint64_t a1)
{
  if ((a1 - 1) > 5)
  {
    return "CTPlanTransferFlowTypeUnknown";
  }

  else
  {
    return off_1E6A45B40[a1 - 1];
  }
}

const char *CTPlanTransferCapabilityAsString(uint64_t a1)
{
  if ((a1 - 1) > 0x13)
  {
    return "CTPlanTransferCapabilityUnknown";
  }

  else
  {
    return off_1E6A45B70[a1 - 1];
  }
}

const char *CTPlanTransferStatusAsString(uint64_t a1)
{
  if ((a1 - 1) > 0xD)
  {
    return "CTPlanTransferStatusUnknown";
  }

  else
  {
    return off_1E6A45C10[a1 - 1];
  }
}

const char *CTPlanInstallStatusAsString(uint64_t a1)
{
  if ((a1 - 1) > 0xD)
  {
    return "CTPlanInstallStatusUnknown";
  }

  else
  {
    return off_1E6A45C80[a1 - 1];
  }
}

const char *CTPlanInstallRestrictionAsString(uint64_t a1)
{
  if ((a1 - 1) > 4)
  {
    return "CTPlanInstallRestrictionUnknown";
  }

  else
  {
    return off_1E6A45CF0[a1 - 1];
  }
}

const char *CTPlanStatusAsString(uint64_t a1)
{
  if ((a1 - 1) > 0xA)
  {
    return "CTPlanStatusUnknown";
  }

  else
  {
    return off_1E6A45D18[a1 - 1];
  }
}

const char *CTPlanPurchaseTypeAsString(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return "CTPlanPurchaseTypeUnknown";
  }

  else
  {
    return off_1E6A45D70[a1 - 1];
  }
}

const char *CTPlanDataMeasureUnitAsString(uint64_t a1)
{
  if ((a1 - 1) > 3)
  {
    return "CTPlanDataMeasureUnitUnknown";
  }

  else
  {
    return off_1E6A45D88[a1 - 1];
  }
}

const char *CTPlanTypeAsString(uint64_t a1)
{
  v1 = "CTPlanTypeUnknown";
  if (a1 == 2)
  {
    v1 = "CTPlanTypePrepaid";
  }

  if (a1 == 1)
  {
    return "CTPlanTypePostpaid";
  }

  else
  {
    return v1;
  }
}

id CTPlanAttributeSetAsString(uint64_t a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = [MEMORY[0x1E696AD60] string];
    for (i = 0; i != 3; ++i)
    {
      if (((1 << i) & v1) != 0)
      {
        v4 = objc_alloc(MEMORY[0x1E696AEC0]);
        v5 = "CTPlanAttributeNone";
        if (i <= 2)
        {
          v5 = off_1E6A45DA8[(1 << i) - 1];
        }

        v6 = [v4 initWithFormat:@"[%s]", v5];
        [v2 appendString:v6];
      }
    }
  }

  else
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:"CTPlanAttributeNone"];
  }

  return v2;
}

const char *CTPlanAddOnPurchaseTypeAsString(uint64_t a1)
{
  v1 = "CTPlanAddOnPurchaseTypeUnknown";
  if (a1 == 1)
  {
    v1 = "CTPlanAddOnPurchaseTypeNotAllowed";
  }

  if (a1 == 2)
  {
    return "CTPlanAddOnPurchaseTypeWebsheet";
  }

  else
  {
    return v1;
  }
}

const char *CTPlanAddOnCarrierFlowTypeAsString(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return "CTPlanAddOnCarrierFlowTypeUnknown";
  }

  else
  {
    return off_1E6A45DC8[a1 - 1];
  }
}

const char *CTPlanSetupResultTypeAsString(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return "CTPlanSetupResultTypeUnknown";
  }

  else
  {
    return off_1E6A45DE0[a1 - 1];
  }
}

const char *CTPlanSetupTypeAsString(uint64_t a1)
{
  if ((a1 - 1) > 6)
  {
    return "CTPlanSetupTypeUnknown";
  }

  else
  {
    return off_1E6A45DF8[a1 - 1];
  }
}

const char *CTCellularPlanDeviceIdentifierAsString(uint64_t a1)
{
  v1 = "EID";
  if (a1 == 2)
  {
    v1 = "IMEI";
  }

  if (a1 == 3)
  {
    return "All";
  }

  else
  {
    return v1;
  }
}

const char *CTPlanPurchaseOptionAsString(uint64_t a1)
{
  v1 = "CTPlanPurchaseOptionDefault";
  if (a1 == 1)
  {
    v1 = "CTPlanAllowPurchaseOverBootstrap";
  }

  if (a1 == 2)
  {
    return "CTPlanDisallowPurchaseOverBootstrap";
  }

  else
  {
    return v1;
  }
}

const char *CTCellularPlanStateAsString(uint64_t a1)
{
  v1 = "CTPlanEnabled";
  if (!a1)
  {
    v1 = "CTPlanDisabled";
  }

  if (a1 == 1)
  {
    return "CTPlanLimitedServices";
  }

  else
  {
    return v1;
  }
}

void sub_182EF82FC(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

id CTThrowingCastIfClass<CTCellularPlanProvisioningRequest>(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v3 = MEMORY[0x1E696AEC0];
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = [v3 stringWithFormat:@"Type mismatch when casting object, expected %@", v5];

    v7 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:v6 userInfo:0];
    objc_exception_throw(v7);
  }

  return v1;
}

void sub_182EF88A4(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_182EF89AC(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_182EF8C48(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void sub_182EF912C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_182EF932C(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

id CTThrowingCastIfClass<CTCellularPlanProperties>(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v3 = MEMORY[0x1E696AEC0];
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = [v3 stringWithFormat:@"Type mismatch when casting object, expected %@", v5];

    v7 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:v6 userInfo:0];
    objc_exception_throw(v7);
  }

  return v1;
}

void sub_182EF9850(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_182EF9948(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

id CTThrowingCastIfClass<CTCellularPlanProvisioningOnDeviceActivationRequest>(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v3 = MEMORY[0x1E696AEC0];
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = [v3 stringWithFormat:@"Type mismatch when casting object, expected %@", v5];

    v7 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:v6 userInfo:0];
    objc_exception_throw(v7);
  }

  return v1;
}

void sub_182EF9DF0(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_182EFAA80(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_182EFAF2C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_182EFB034(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_182EFB484(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_182EFB5FC(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_182EFB81C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

id CTThrowingCastIfClass<CTPlan>(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v3 = MEMORY[0x1E696AEC0];
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = [v3 stringWithFormat:@"Type mismatch when casting object, expected %@", v5];

    v7 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:v6 userInfo:0];
    objc_exception_throw(v7);
  }

  return v1;
}

id CTThrowingCastIfClass<CTDeviceIdentifier>(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v3 = MEMORY[0x1E696AEC0];
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = [v3 stringWithFormat:@"Type mismatch when casting object, expected %@", v5];

    v7 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:v6 userInfo:0];
    objc_exception_throw(v7);
  }

  return v1;
}

void sub_182EFBE7C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

id CTThrowingCastIfClass<CTPlanList>(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v3 = MEMORY[0x1E696AEC0];
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = [v3 stringWithFormat:@"Type mismatch when casting object, expected %@", v5];

    v7 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:v6 userInfo:0];
    objc_exception_throw(v7);
  }

  return v1;
}

void sub_182EFC3C4(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_182EFC79C(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_182EFCBC4(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_182EFCCBC(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_182EFD004(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_182EFD36C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_182EFD95C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_182EFDD60(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_182EFE0E4(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_182EFE5AC(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_182EFE7D8(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_182EFEB5C(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_182EFF2C4(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_182EFF5DC(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_182EFFE50(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_182F002B0(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

id CTThrowingCastIfClass<CTSimSetupUsage>(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v3 = MEMORY[0x1E696AEC0];
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = [v3 stringWithFormat:@"Type mismatch when casting object, expected %@", v5];

    v7 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:v6 userInfo:0];
    objc_exception_throw(v7);
  }

  return v1;
}

void sub_182F006C4(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

id CTThrowingCastIfClass<CTAutoReconnectionDetails>(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v3 = MEMORY[0x1E696AEC0];
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = [v3 stringWithFormat:@"Type mismatch when casting object, expected %@", v5];

    v7 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:v6 userInfo:0];
    objc_exception_throw(v7);
  }

  return v1;
}

void sub_182F00EC0(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_182F018AC(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_182F01DE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  v21 = v20;

  _Unwind_Resume(a1);
}

void sub_182F028C4(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

id CTThrowingCastIfClass<CTPlanSetupDetails>(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v3 = MEMORY[0x1E696AEC0];
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = [v3 stringWithFormat:@"Type mismatch when casting object, expected %@", v5];

    v7 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:v6 userInfo:0];
    objc_exception_throw(v7);
  }

  return v1;
}

void sub_182F02D08(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_182F03070(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_182F03168(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_182F037EC(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

id CTThrowingCastIfClass<NSObject>(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v3 = MEMORY[0x1E696AEC0];
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = [v3 stringWithFormat:@"Type mismatch when casting object, expected %@", v5];

    v7 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:v6 userInfo:0];
    objc_exception_throw(v7);
  }

  return v1;
}

void sub_182F03D50(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_182F04A14(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_182F04DE4(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

id CTThrowingCastIfClass<NSDictionary>(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v3 = MEMORY[0x1E696AEC0];
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = [v3 stringWithFormat:@"Type mismatch when casting object, expected %@", v5];

    v7 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:v6 userInfo:0];
    objc_exception_throw(v7);
  }

  return v1;
}

void sub_182F05280(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_182F05668(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_182F057A4(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_182F05838(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_182F05930(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_182F05FD8(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_182F0664C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_182F06B30(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_182F06BD0(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_182F06D88(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_182F0716C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_182F0815C(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_182F08484(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_182F0858C(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_182F08848(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_182F08950(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_182F08B84(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_182F08D24(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_182F090D8(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_182F095B8(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_182F09970(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

id CTThrowingCastIfClass<CTRemotePlanIdentifier>(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v3 = MEMORY[0x1E696AEC0];
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = [v3 stringWithFormat:@"Type mismatch when casting object, expected %@", v5];

    v7 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:v6 userInfo:0];
    objc_exception_throw(v7);
  }

  return v1;
}

void sub_182F0A194(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_182F0A580(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_182F0AA54(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_182F0B204(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_182F0B520(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_182F0B618(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_182F0B9F8(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_182F0BC2C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_182F0BD5C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_182F0BFB4(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_182F0C048(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_182F0C170(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_182F0C448(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_182F0C6A0(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

id CTThrowingCastIfClass<CTCellularPlanTransferCrossPlatformRequest>(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v3 = MEMORY[0x1E696AEC0];
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = [v3 stringWithFormat:@"Type mismatch when casting object, expected %@", v5];

    v7 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:v6 userInfo:0];
    objc_exception_throw(v7);
  }

  return v1;
}

void sub_182F0CBBC(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_182F0CF34(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_182F0D318(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

id CTThrowingCastIfClass<NSArray<CTCellularPlanCrossPlatformLabel *>>(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v3 = MEMORY[0x1E696AEC0];
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = [v3 stringWithFormat:@"Type mismatch when casting object, expected %@", v5];

    v7 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:v6 userInfo:0];
    objc_exception_throw(v7);
  }

  return v1;
}

void sub_182F0DAC4(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_182F0DF38(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_182F0E77C(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_182F0EAC4(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_182F0ED20(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_182F0EF38(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_182F0F2AC(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_182F0F5F0(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_182F0FC30(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_182F1024C(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

id CTThrowingCastIfClass<CTLazuliSystemConfiguration>(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v3 = MEMORY[0x1E696AEC0];
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = [v3 stringWithFormat:@"Type mismatch when casting object, expected %@", v5];

    v7 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:v6 userInfo:0];
    objc_exception_throw(v7);
  }

  return v1;
}

void sub_182F10578(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_182F10998(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_182F10DA4(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

id CTThrowingCastIfClass<CTLazuliMessageID>(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v3 = MEMORY[0x1E696AEC0];
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = [v3 stringWithFormat:@"Type mismatch when casting object, expected %@", v5];

    v7 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:v6 userInfo:0];
    objc_exception_throw(v7);
  }

  return v1;
}

void sub_182F11294(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

id CTThrowingCastIfClass<CTLazuliMessageEnvelope>(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v3 = MEMORY[0x1E696AEC0];
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = [v3 stringWithFormat:@"Type mismatch when casting object, expected %@", v5];

    v7 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:v6 userInfo:0];
    objc_exception_throw(v7);
  }

  return v1;
}

void sub_182F11768(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

id CTThrowingCastIfClass<CTLazuliMessageIDList>(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v3 = MEMORY[0x1E696AEC0];
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = [v3 stringWithFormat:@"Type mismatch when casting object, expected %@", v5];

    v7 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:v6 userInfo:0];
    objc_exception_throw(v7);
  }

  return v1;
}

void sub_182F11AAC(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

id CTThrowingCastIfClass<CTLazuliMessageRevokeData>(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v3 = MEMORY[0x1E696AEC0];
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = [v3 stringWithFormat:@"Type mismatch when casting object, expected %@", v5];

    v7 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:v6 userInfo:0];
    objc_exception_throw(v7);
  }

  return v1;
}

void sub_182F12030(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_182F123F8(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

id CTThrowingCastIfClass<CTLazuliDestination>(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v3 = MEMORY[0x1E696AEC0];
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = [v3 stringWithFormat:@"Type mismatch when casting object, expected %@", v5];

    v7 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:v6 userInfo:0];
    objc_exception_throw(v7);
  }

  return v1;
}

void sub_182F128E0(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

id CTThrowingCastIfClass<CTLazuliOperationID>(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v3 = MEMORY[0x1E696AEC0];
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = [v3 stringWithFormat:@"Type mismatch when casting object, expected %@", v5];

    v7 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:v6 userInfo:0];
    objc_exception_throw(v7);
  }

  return v1;
}

void sub_182F12EA8(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

id CTThrowingCastIfClass<CTLazuliFetchRemoteCapabilitiesOptions>(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v3 = MEMORY[0x1E696AEC0];
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = [v3 stringWithFormat:@"Type mismatch when casting object, expected %@", v5];

    v7 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:v6 userInfo:0];
    objc_exception_throw(v7);
  }

  return v1;
}

void sub_182F134F4(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_182F13954(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

id CTThrowingCastIfClass<CTLazuliCapabilitiesInformation>(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v3 = MEMORY[0x1E696AEC0];
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = [v3 stringWithFormat:@"Type mismatch when casting object, expected %@", v5];

    v7 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:v6 userInfo:0];
    objc_exception_throw(v7);
  }

  return v1;
}

void sub_182F13CDC(_Unwind_Exception *a1)
{
  v8 = v6;

  _Unwind_Resume(a1);
}

_anonymous_namespace_ *anonymous namespace::sAddSecurity(_anonymous_namespace_ *this, NSDictionary *a2, CTLazuliSecurity *a3)
{
  v4 = this;
  v5 = a2;
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:v4];
    [(_anonymous_namespace_ *)v6 setValue:v5 forKey:@"security"];
  }

  else
  {
    v6 = v4;
  }

  return v6;
}

void sub_182F13F18(_Unwind_Exception *a1)
{
  v8 = v6;

  _Unwind_Resume(a1);
}

id CTThrowingCastIfClass<CTLazuliMessageComposingIndicator>(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v3 = MEMORY[0x1E696AEC0];
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = [v3 stringWithFormat:@"Type mismatch when casting object, expected %@", v5];

    v7 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:v6 userInfo:0];
    objc_exception_throw(v7);
  }

  return v1;
}

void sub_182F1457C(_Unwind_Exception *a1)
{
  v10 = v9;

  _Unwind_Resume(a1);
}

void sub_182F148D8(_Unwind_Exception *a1)
{
  v9 = v7;

  _Unwind_Resume(a1);
}

void sub_182F153F8(_Unwind_Exception *a1)
{
  v8 = v6;

  _Unwind_Resume(a1);
}

void sub_182F15588(_Unwind_Exception *a1)
{
  v8 = v6;

  _Unwind_Resume(a1);
}

id CTThrowingCastIfClass<CTLazuliMessageText>(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v3 = MEMORY[0x1E696AEC0];
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = [v3 stringWithFormat:@"Type mismatch when casting object, expected %@", v5];

    v7 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:v6 userInfo:0];
    objc_exception_throw(v7);
  }

  return v1;
}

void sub_182F15C10(_Unwind_Exception *a1)
{
  v10 = v9;

  _Unwind_Resume(a1);
}

void sub_182F15F64(_Unwind_Exception *a1)
{
  v8 = v6;

  _Unwind_Resume(a1);
}

void sub_182F160F4(_Unwind_Exception *a1)
{
  v8 = v6;

  _Unwind_Resume(a1);
}

id CTThrowingCastIfClass<CTLazuliMessageGeoLocationPush>(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v3 = MEMORY[0x1E696AEC0];
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = [v3 stringWithFormat:@"Type mismatch when casting object, expected %@", v5];

    v7 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:v6 userInfo:0];
    objc_exception_throw(v7);
  }

  return v1;
}

void sub_182F1677C(_Unwind_Exception *a1)
{
  v10 = v9;

  _Unwind_Resume(a1);
}

void sub_182F16AD0(_Unwind_Exception *a1)
{
  v8 = v6;

  _Unwind_Resume(a1);
}

void sub_182F16C60(_Unwind_Exception *a1)
{
  v8 = v6;

  _Unwind_Resume(a1);
}

id CTThrowingCastIfClass<CTLazuliFileTransferDescriptor>(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v3 = MEMORY[0x1E696AEC0];
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = [v3 stringWithFormat:@"Type mismatch when casting object, expected %@", v5];

    v7 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:v6 userInfo:0];
    objc_exception_throw(v7);
  }

  return v1;
}

void sub_182F172E8(_Unwind_Exception *a1)
{
  v10 = v9;

  _Unwind_Resume(a1);
}

void sub_182F175CC(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_182F176EC(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_182F17C30(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_182F18090(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

id CTThrowingCastIfClass<CTLazuliChatBotRenderInformationData>(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v3 = MEMORY[0x1E696AEC0];
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = [v3 stringWithFormat:@"Type mismatch when casting object, expected %@", v5];

    v7 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:v6 userInfo:0];
    objc_exception_throw(v7);
  }

  return v1;
}

void sub_182F183A8(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

id CTThrowingCastIfClass<CTLazuliDeepLinkBase64String>(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v3 = MEMORY[0x1E696AEC0];
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = [v3 stringWithFormat:@"Type mismatch when casting object, expected %@", v5];

    v7 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:v6 userInfo:0];
    objc_exception_throw(v7);
  }

  return v1;
}

void sub_182F18900(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

id CTThrowingCastIfClass<CTLazuliDeepLinkBase64StringDecoded>(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v3 = MEMORY[0x1E696AEC0];
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = [v3 stringWithFormat:@"Type mismatch when casting object, expected %@", v5];

    v7 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:v6 userInfo:0];
    objc_exception_throw(v7);
  }

  return v1;
}

void sub_182F18C5C(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

id CTThrowingCastIfClass<CTLazuliChatBotSpamReportInformation>(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v3 = MEMORY[0x1E696AEC0];
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = [v3 stringWithFormat:@"Type mismatch when casting object, expected %@", v5];

    v7 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:v6 userInfo:0];
    objc_exception_throw(v7);
  }

  return v1;
}

void sub_182F192EC(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

id CTThrowingCastIfClass<CTLazuliSpamReportInformation>(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v3 = MEMORY[0x1E696AEC0];
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = [v3 stringWithFormat:@"Type mismatch when casting object, expected %@", v5];

    v7 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:v6 userInfo:0];
    objc_exception_throw(v7);
  }

  return v1;
}

void sub_182F19984(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

id CTThrowingCastIfClass<CTLazuliChatBotResponseForSuggestedReply>(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v3 = MEMORY[0x1E696AEC0];
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = [v3 stringWithFormat:@"Type mismatch when casting object, expected %@", v5];

    v7 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:v6 userInfo:0];
    objc_exception_throw(v7);
  }

  return v1;
}

void sub_182F1A014(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

id CTThrowingCastIfClass<CTLazuliChatBotResponseForSuggestedAction>(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v3 = MEMORY[0x1E696AEC0];
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = [v3 stringWithFormat:@"Type mismatch when casting object, expected %@", v5];

    v7 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:v6 userInfo:0];
    objc_exception_throw(v7);
  }

  return v1;
}

void sub_182F1A6A4(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

id CTThrowingCastIfClass<CTLazuliSuggestedActionDevice>(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v3 = MEMORY[0x1E696AEC0];
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = [v3 stringWithFormat:@"Type mismatch when casting object, expected %@", v5];

    v7 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:v6 userInfo:0];
    objc_exception_throw(v7);
  }

  return v1;
}

void sub_182F1AD34(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

id CTThrowingCastIfClass<CTLazuliSuggestedActionSettings>(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v3 = MEMORY[0x1E696AEC0];
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = [v3 stringWithFormat:@"Type mismatch when casting object, expected %@", v5];

    v7 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:v6 userInfo:0];
    objc_exception_throw(v7);
  }

  return v1;
}

void sub_182F1B3A4(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

id CTThrowingCastIfClass<CTLazuliGroupChatInformation>(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v3 = MEMORY[0x1E696AEC0];
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = [v3 stringWithFormat:@"Type mismatch when casting object, expected %@", v5];

    v7 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:v6 userInfo:0];
    objc_exception_throw(v7);
  }

  return v1;
}

void sub_182F1B998(_Unwind_Exception *a1)
{
  v8 = v6;

  _Unwind_Resume(a1);
}

id CTThrowingCastIfClass<CTLazuliGroupChatUri>(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v3 = MEMORY[0x1E696AEC0];
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = [v3 stringWithFormat:@"Type mismatch when casting object, expected %@", v5];

    v7 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:v6 userInfo:0];
    objc_exception_throw(v7);
  }

  return v1;
}

id CTThrowingCastIfClass<CTLazuliGroupChatParticipantList>(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v3 = MEMORY[0x1E696AEC0];
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = [v3 stringWithFormat:@"Type mismatch when casting object, expected %@", v5];

    v7 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:v6 userInfo:0];
    objc_exception_throw(v7);
  }

  return v1;
}

void sub_182F1BF60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  v21 = v20;

  _Unwind_Resume(a1);
}

void sub_182F1C258(_Unwind_Exception *a1)
{
  v8 = v6;

  _Unwind_Resume(a1);
}

void sub_182F1C628(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  v21 = v20;

  _Unwind_Resume(a1);
}

void sub_182F1C940(_Unwind_Exception *a1)
{
  v8 = v6;

  _Unwind_Resume(a1);
}

void sub_182F1CD4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  v21 = v20;

  _Unwind_Resume(a1);
}

void sub_182F1D044(_Unwind_Exception *a1)
{
  v8 = v6;

  _Unwind_Resume(a1);
}

void sub_182F1D440(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  v21 = v20;

  _Unwind_Resume(a1);
}

void sub_182F1D6EC(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_182F1DB74(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_182F1DF3C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_182F1E4AC(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_182F1E67C(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void sub_182F1E9D8(_Unwind_Exception *a1)
{
  v8 = v7;

  _Unwind_Resume(a1);
}

void sub_182F1ECA0(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void sub_182F1EFFC(_Unwind_Exception *a1)
{
  v8 = v7;

  _Unwind_Resume(a1);
}

void sub_182F1F2C4(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void sub_182F1F620(_Unwind_Exception *a1)
{
  v8 = v7;

  _Unwind_Resume(a1);
}

uint64_t _CTServerConnectionGetThumperName(uint64_t a1, __CFString **a2)
{
  v2 = 0x1600000001;
  if (a1 && a2)
  {
    xpc::dict_creator::dict_creator(&object);
    xpc::dict_creator::operator()<char const*>("kThumperGetCarrierName", &object, "kRequest", &xdict);
    xpc_release(object);
    object = xdict;
    xdict = xpc_null_create();
    xpc_release(xdict);
    xdict = xpc_null_create();
    v2 = SendXpcMessage(a1, &object, &xdict);
    v5 = MEMORY[0x1865E16C0](xdict);
    v6 = MEMORY[0x1E69E9E80];
    if (v5 == MEMORY[0x1E69E9E80])
    {
      *a2 = 0;
      if (MEMORY[0x1865E16C0](xdict) != v6 || !xpc_dictionary_get_value(xdict, "kThumperCarrierName"))
      {
        goto LABEL_7;
      }

      v10 = 0;
      xpc_dictionary_get_value(xdict, "kThumperCarrierName");
      v9 = _CFXPCCreateCFObjectFromXPCObject();
      ctu::cf::CFSharedRef<__CFString const>::CFSharedRef<void const,void>(&v10, &v9);
      v7 = v10;
    }

    else
    {
      v7 = &stru_1EF016BD0;
    }

    *a2 = v7;
LABEL_7:
    xpc_release(xdict);
    xpc_release(object);
  }

  return v2;
}

void sub_182F1F9E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  v18 = v17;

  _Unwind_Resume(a1);
}

void sub_182F20D54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id a21)
{
  _Block_object_dispose(&a16, 8);

  _Block_object_dispose((v23 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_182F20FA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a19, 8);

  _Unwind_Resume(a1);
}

void sub_182F211BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id a21)
{
  _Block_object_dispose(&a16, 8);

  _Block_object_dispose((v23 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_182F21438(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a19, 8);

  _Unwind_Resume(a1);
}

void sub_182F21620(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a19, 8);

  _Unwind_Resume(a1);
}

void sub_182F21820(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a19, 8);

  _Unwind_Resume(a1);
}

void sub_182F21A18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a19, 8);

  _Unwind_Resume(a1);
}

void sub_182F21BCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a19, 8);

  _Unwind_Resume(a1);
}

void sub_182F21D78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a19, 8);

  _Unwind_Resume(a1);
}

void sub_182F21FC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id a25)
{
  _Block_object_dispose(&a16, 8);
  _Block_object_dispose(&a20, 8);

  _Block_object_dispose((v27 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_182F22244(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a19, 8);

  _Unwind_Resume(a1);
}

void sub_182F223F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a19, 8);

  _Unwind_Resume(a1);
}

const char *CTEnhancedLQMIndicationTypeAsString(uint64_t a1)
{
  if ((a1 - 1) > 8)
  {
    return "CTEnhancedLQMIndicationTypeUnknown";
  }

  else
  {
    return off_1E6A46368[a1 - 1];
  }
}

void sub_182F244D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_182F246E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id a26)
{
  _Block_object_dispose(&a21, 8);

  _Block_object_dispose((v28 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_182F24A44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id a26)
{
  _Block_object_dispose(&a21, 8);

  _Block_object_dispose((v29 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_182F24F50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_182F25408(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_182F259CC(_Unwind_Exception *a1)
{
  _Block_object_dispose((v3 - 96), 8);

  _Unwind_Resume(a1);
}

void sub_182F25E44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_182F25F74(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_182F26350(_Unwind_Exception *a1)
{
  _Block_object_dispose((v3 - 112), 8);

  _Unwind_Resume(a1);
}

void sub_182F26E10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id a26)
{
  _Block_object_dispose(&a21, 8);

  _Block_object_dispose((v29 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_182F27B9C(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_182F287CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_182F289FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id a26)
{
  _Block_object_dispose(&a21, 8);

  _Block_object_dispose((v29 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_182F29014(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_182F296E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_182F297F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  v18 = v17;

  _Unwind_Resume(a1);
}

void sub_182F29A38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id a21)
{
  _Block_object_dispose(&a16, 8);

  _Block_object_dispose((v24 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_182F29E04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id a26)
{
  _Block_object_dispose(&a21, 8);

  _Block_object_dispose((v28 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_182F2A154(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id a26)
{
  _Block_object_dispose(&a21, 8);

  _Block_object_dispose((v29 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_182F2A950(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a19, 8);

  _Unwind_Resume(a1);
}

void sub_182F2AB74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id a26)
{
  _Block_object_dispose(&a21, 8);

  _Block_object_dispose((v28 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_182F2AE94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id a26)
{
  _Block_object_dispose(&a21, 8);

  _Block_object_dispose((v28 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_182F2B1B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id a26)
{
  _Block_object_dispose(&a21, 8);

  _Block_object_dispose((v28 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_182F2B770(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_182F2B9E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_182F2BC58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_182F2BD54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  v17 = v16;

  _Unwind_Resume(a1);
}

void sub_182F2BE5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  v17 = v16;

  _Unwind_Resume(a1);
}

void sub_182F2C010(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  v17 = v16;

  _Unwind_Resume(a1);
}

void sub_182F2C1BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  v17 = v16;

  _Unwind_Resume(a1);
}

void sub_182F2C368(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  v17 = v16;

  _Unwind_Resume(a1);
}

void sub_182F2C5B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  v17 = v16;

  _Unwind_Resume(a1);
}

void sub_182F2C764(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  v17 = v16;

  _Unwind_Resume(a1);
}

void sub_182F2C974(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id a21)
{
  _Block_object_dispose(&a16, 8);

  _Block_object_dispose((v23 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_182F2CB0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  v17 = v16;

  _Unwind_Resume(a1);
}

void sub_182F2CD1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id a21)
{
  _Block_object_dispose(&a16, 8);

  _Block_object_dispose((v23 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_182F2CEB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  v17 = v16;

  _Unwind_Resume(a1);
}

void sub_182F2D080(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);

  _Block_object_dispose((v10 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_182F2D2A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);

  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_182F2D410(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  v17 = v16;

  _Unwind_Resume(a1);
}

void sub_182F2D574(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_182F2D7B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  v16 = v15;

  _Unwind_Resume(a1);
}

void sub_182F2D944(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a19, 8);

  _Unwind_Resume(a1);
}

void sub_182F2DB40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a19, 8);

  _Unwind_Resume(a1);
}

void sub_182F2DD4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a19, 8);

  _Unwind_Resume(a1);
}

void sub_182F2DFB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id a21)
{
  _Block_object_dispose(&a16, 8);

  _Block_object_dispose((v23 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t MMSExpiryHeader::MMSExpiryHeader(uint64_t a1, uint64_t a2, int a3)
{
  ctu::OsLogLogger::OsLogLogger((a1 + 24), "com.apple.telephony", "msg.mms.pdu.hdr.expiry");
  result = MMSBinaryHeader::MMSBinaryHeader(a1, a2);
  *a1 = &unk_1EF013000;
  *(a1 + 32) = a3;
  *(a1 + 36) = 0;
  return result;
}

uint64_t MMSExpiryHeader::decodeValue(MMSExpiryHeader *this, MMSPduDecoder *a2)
{
  v7 = 0;
  result = MMSPduDecoder::decodeWspValueLength(a2, &v7);
  if (result)
  {
    if (*(a2 + 4) - *(a2 + 5) < v7)
    {
      return 0;
    }

    MMSPduDecoder::decodeByte(a2, this + 36);
    v5 = *(this + 36);
    if (v5 >= -126)
    {
      v6 = *(this + 3);
      result = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
      if (result)
      {
        MMSExpiryHeader::decodeValue(v5, this, v6);
        return 0;
      }
    }

    else
    {
      return MMSPduDecoder::decodeWspLongInteger(a2, this + 8);
    }
  }

  return result;
}

uint64_t MMSExpiryHeader::encodeValue(MMSExpiryHeader *this, MMSPduEncoder *a2)
{
  v8 = 0;
  *__p = 0u;
  v7 = 0u;
  MMSPduEncoder::MMSPduEncoder(__p, *a2);
  MMSPduEncoder::encodeByte(__p, *(this + 36));
  MMSPduEncoder::encodeWspLongInteger(__p, *(this + 8));
  if (v7 >= 0)
  {
    v4 = HIBYTE(v7);
  }

  else
  {
    v4 = v7;
  }

  MMSPduEncoder::encodeWspValueLength(a2, v4);
  MMSPduEncoder::append(a2, __p);
  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p[1]);
  }

  return 1;
}

uint64_t MMSExpiryHeader::valueAsString(uint64_t a1, uint64_t a2)
{
  v21 = 0;
  memset(v20, 0, sizeof(v20));
  v18 = 0u;
  v19 = 0u;
  *__src = 0u;
  *__p = 0u;
  v14 = 0u;
  v15 = 0u;
  v13 = 0u;
  std::ostringstream::basic_ostringstream[abi:nn200100](&v13);
  v4 = MEMORY[0x1865E0770](&v13, *(a1 + 32));
  v5 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v4, ", ", 2);
  if (*(a1 + 36) == 128)
  {
    v6 = "Absolute";
  }

  else
  {
    v6 = "Relative";
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v5, v6, 8);
  if ((BYTE8(v19) & 0x10) != 0)
  {
    v8 = v19;
    if (v19 < __src[1])
    {
      *&v19 = __src[1];
      v8 = __src[1];
    }

    v9 = __src[0];
  }

  else
  {
    if ((BYTE8(v19) & 8) == 0)
    {
      v7 = 0;
      HIBYTE(v12) = 0;
      goto LABEL_17;
    }

    v9 = *(&v14 + 1);
    v8 = *(&v15 + 1);
  }

  v7 = v8 - v9;
  if ((v8 - v9) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  if (v7 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v12) = v8 - v9;
  if (v7)
  {
    memmove(&__dst, v9, v7);
  }

LABEL_17:
  *(&__dst + v7) = 0;
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }

  *a2 = __dst;
  *(a2 + 16) = v12;
  *&v13 = *MEMORY[0x1E69E54E8];
  *(&v13 + *(v13 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  *(&v13 + 1) = MEMORY[0x1E69E5548] + 16;
  if (SHIBYTE(v18) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v13 + 1) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&v14);
  std::ostream::~ostream();
  MEMORY[0x1865E0820](v20);
  return 1;
}