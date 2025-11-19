void sub_1DE572ADC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void HALS_DeviceManager::CopyBoxList(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = ___ZNK18HALS_DeviceManager11CopyBoxListERNS_12BasicBoxListEP11HALS_Client_block_invoke;
  v4[3] = &__block_descriptor_tmp_11615;
  v4[4] = a1;
  v4[5] = a2;
  v4[6] = a3;
  v3 = (*(*a1 + 64))(a1);
  HALB_CommandGate::ExecuteCommand(v3, v4);
}

void HALS_DeviceManager::CopyClockDeviceList(uint64_t a1, uint64_t a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 0x40000000;
  v3[2] = ___ZNK18HALS_DeviceManager19CopyClockDeviceListERNS_20BasicClockDeviceListEP11HALS_Client_block_invoke;
  v3[3] = &__block_descriptor_tmp_7_11614;
  v3[4] = a1;
  v3[5] = a2;
  v2 = (*(*a1 + 64))(a1);
  HALB_CommandGate::ExecuteCommand(v2, v3);
}

void HALS_DeviceManager::BasicClockDeviceList::~BasicClockDeviceList(HALS_ObjectMap ***this, HALS_Object *a2)
{
  v3 = *this;
  if (*this != this[1])
  {
    do
    {
      HALS_ObjectMap::ReleaseObject(*v3++, a2);
    }

    while (v3 != this[1]);
    v3 = *this;
  }

  if (v3)
  {
    this[1] = v3;
    operator delete(v3);
  }
}

void HALS_DeviceManager::BasicBoxList::~BasicBoxList(HALS_ObjectMap ***this, HALS_Object *a2)
{
  v3 = *this;
  if (*this != this[1])
  {
    do
    {
      HALS_ObjectMap::ReleaseObject(*v3++, a2);
    }

    while (v3 != this[1]);
    v3 = *this;
  }

  if (v3)
  {
    this[1] = v3;
    operator delete(v3);
  }
}

HALS_ObjectMap *HALS_DeviceManager::CopyDeviceByUID(HALS_DeviceManager *this, const __CFString *a2, HALS_Client *a3)
{
  if (!a2)
  {
    return 0;
  }

  v10 = 0;
  v11 = 0;
  v12 = 0;
  HALS_DeviceManager::CopyDeviceList(this, &v10, 1, a3);
  for (i = v10; i != v11; ++i)
  {
    v6 = *i;
    v7 = (*(**i + 208))(*i);
    if (v7 && CFStringCompare(v7, a2, 0) == kCFCompareEqualTo)
    {
      goto LABEL_8;
    }
  }

  v6 = 0;
LABEL_8:
  HALS_ObjectMap::RetainObject(v6, v4);
  HALS_DeviceManager::BasicDeviceList::~BasicDeviceList(&v10, v8);
  return v6;
}

void sub_1DE572E0C(_Unwind_Exception *a1, HALS_Object *a2, uint64_t a3, ...)
{
  va_start(va, a3);
  HALS_DeviceManager::BasicDeviceList::~BasicDeviceList(va, a2);
  _Unwind_Resume(a1);
}

HALS_ObjectMap *HALS_DeviceManager::CopyBoxByUID(HALS_DeviceManager *this, const __CFString *a2, HALS_Client *a3)
{
  if (!a2)
  {
    return 0;
  }

  v11 = 0;
  v12 = 0;
  v13 = 0;
  HALS_DeviceManager::CopyBoxList(this, &v11, a3);
  v6 = v11;
  v5 = v12;
  while (v6 != v5)
  {
    v7 = *v6;
    v8 = *(*v6 + 9);
    if (v8)
    {
      if (CFStringCompare(v8, a2, 0) == kCFCompareEqualTo)
      {
        goto LABEL_9;
      }

      v5 = v12;
    }

    ++v6;
  }

  v7 = 0;
LABEL_9:
  HALS_ObjectMap::RetainObject(v7, v4);
  HALS_DeviceManager::BasicBoxList::~BasicBoxList(&v11, v9);
  return v7;
}

void sub_1DE572EBC(_Unwind_Exception *a1, HALS_Object *a2, uint64_t a3, ...)
{
  va_start(va, a3);
  HALS_DeviceManager::BasicBoxList::~BasicBoxList(va, a2);
  _Unwind_Resume(a1);
}

HALS_ObjectMap *HALS_DeviceManager::CopyClockDeviceByUID(HALS_DeviceManager *this, const __CFString *a2, HALS_Client *a3)
{
  if (!a2)
  {
    return 0;
  }

  v10 = 0;
  v11 = 0;
  v12 = 0;
  HALS_DeviceManager::CopyClockDeviceList(this, &v10);
  for (i = v10; i != v11; ++i)
  {
    v6 = *i;
    v7 = (*(**i + 208))(*i);
    if (v7 && CFStringCompare(v7, a2, 0) == kCFCompareEqualTo)
    {
      goto LABEL_8;
    }
  }

  v6 = 0;
LABEL_8:
  HALS_ObjectMap::RetainObject(v6, v4);
  HALS_DeviceManager::BasicClockDeviceList::~BasicClockDeviceList(&v10, v8);
  return v6;
}

void sub_1DE572F90(_Unwind_Exception *a1, HALS_Object *a2, uint64_t a3, ...)
{
  va_start(va, a3);
  HALS_DeviceManager::BasicClockDeviceList::~BasicClockDeviceList(va, a2);
  _Unwind_Resume(a1);
}

uint64_t HALS_DeviceManager::GetPropertyDataSize(HALS_DeviceManager *this, HALS_Client *a2, AudioObjectPropertyAddress *a3, unsigned int a4, int *a5, HALS_Client *a6)
{
  mSelector = a3->mSelector;
  if (a3->mSelector > 1870098019)
  {
    if (mSelector <= 1969841249)
    {
      if (mSelector == 1870098020)
      {
        v63 = 0;
        v64 = 0;
        v65 = 0;
        HALS_DeviceManager::CopyBoxList(this, &v63, a6);
        v14 = v63;
        v13 = v64;
        v60 = 0;
        v61 = 0;
        v62 = 0;
        HALS_DeviceManager::CopyDeviceList(this, &v60, 0, a6);
        v16 = v60;
        v15 = v61;
        v57 = 0;
        v58 = 0;
        v59 = 0;
        HALS_DeviceManager::CopyClockDeviceList(this, &v57);
        v18 = v57;
        v55 = v58;
        v19 = ((v15 - v16) >> 3) + ((v13 - v14) >> 3) + ((v58 - v57) >> 3);
        if (a4 >= 4 && a5)
        {
          v20 = a4 >> 2;
          v21 = v63;
          v53 = v64;
          for (i = a5; v21 != v53; a5 = i)
          {
            v22 = *(*v21 + 5);
            v23 = *(*v21 + 6);
            v24 = a5;
            v25 = 1;
            do
            {
              v27 = *v24++;
              v26 = v27;
              IsSubClass = HALB_Info::IsSubClass(v22, v27);
              v29 = IsSubClass;
              v30 = IsSubClass || v22 != v23;
              if (v22 != v23 && !v29)
              {
                v30 = HALB_Info::IsSubClass(v23, v26);
              }

              if (v30)
              {
                break;
              }

              v31 = v25++ >= v20;
            }

            while (!v31);
            v19 -= v30 ^ 1;
            ++v21;
          }

          v32 = v60;
          for (j = v61; v32 != j; a5 = i)
          {
            v33 = *(*v32 + 5);
            v34 = *(*v32 + 6);
            v35 = 1;
            do
            {
              v37 = *a5++;
              v36 = v37;
              v38 = HALB_Info::IsSubClass(v33, v37);
              v39 = v38;
              v40 = v38 || v33 != v34;
              if (v33 != v34 && !v39)
              {
                v40 = HALB_Info::IsSubClass(v34, v36);
              }

              if (v40)
              {
                break;
              }

              v31 = v35++ >= v20;
            }

            while (!v31);
            v19 -= v40 ^ 1;
            ++v32;
          }

          while (v18 != v55)
          {
            v41 = *(*v18 + 5);
            v42 = *(*v18 + 6);
            v43 = a5;
            v44 = 1;
            do
            {
              v46 = *v43++;
              v45 = v46;
              v47 = HALB_Info::IsSubClass(v41, v46);
              v48 = v47;
              v49 = v47 || v41 != v42;
              if (v41 != v42 && !v48)
              {
                v49 = HALB_Info::IsSubClass(v42, v45);
              }

              if (v49)
              {
                break;
              }

              v31 = v44++ >= v20;
            }

            while (!v31);
            v19 -= v49 ^ 1;
            ++v18;
          }
        }

        v9 = (4 * v19);
        HALS_DeviceManager::BasicClockDeviceList::~BasicClockDeviceList(&v57, v17);
        HALS_DeviceManager::BasicDeviceList::~BasicDeviceList(&v60, v50);
        HALS_DeviceManager::BasicBoxList::~BasicBoxList(&v63, v51);
        return v9;
      }

      if (mSelector == 1885956452)
      {
        return 8;
      }
    }

    else if (mSelector == 1969841250 || mSelector == 1969841251 || mSelector == 1969841252)
    {
      return 4;
    }

    goto LABEL_52;
  }

  if (mSelector <= 1684370978)
  {
    if (mSelector == 1651472419)
    {
      NumberBoxes = HALS_DeviceManager::GetNumberBoxes(this, a6);
    }

    else
    {
      if (mSelector != 1668049699)
      {
        goto LABEL_52;
      }

      NumberBoxes = HALS_DeviceManager::GetNumberClockDevices(this, a2);
    }

    return (4 * NumberBoxes);
  }

  if (mSelector == 1684370979)
  {
    NumberBoxes = HALS_DeviceManager::GetNumberDevices(this, a6, a3);
    return (4 * NumberBoxes);
  }

  if (mSelector == 1685416292)
  {
    return 32;
  }

LABEL_52:

  return HALS_Object::GetPropertyDataSize(this, a2, a3);
}

void sub_1DE5733C0(_Unwind_Exception *a1, HALS_Object *a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va2, a5);
  va_start(va1, a5);
  va_start(va, a5);
  v8 = va_arg(va1, HALS_ObjectMap **);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  va_copy(va2, va1);
  v12 = va_arg(va2, HALS_ObjectMap **);
  v14 = va_arg(va2, void);
  v15 = va_arg(va2, void);
  HALS_DeviceManager::BasicClockDeviceList::~BasicClockDeviceList(va, a2);
  HALS_DeviceManager::BasicDeviceList::~BasicDeviceList(va1, v6);
  HALS_DeviceManager::BasicBoxList::~BasicBoxList(va2, v7);
  _Unwind_Resume(a1);
}

unint64_t HALS_DeviceManager::GetNumberDevices(HALS_DeviceManager *this, HALS_Client *a2, HALS_Client *a3)
{
  v6 = 0;
  v7 = 0;
  v8 = 0;
  HALS_DeviceManager::CopyDeviceList(this, &v6, 0, a2);
  v3 = (v7 - v6) >> 3;
  HALS_DeviceManager::BasicDeviceList::~BasicDeviceList(&v6, v4);
  return v3;
}

void sub_1DE573448(_Unwind_Exception *a1, HALS_Object *a2, uint64_t a3, ...)
{
  va_start(va, a3);
  HALS_DeviceManager::BasicDeviceList::~BasicDeviceList(va, a2);
  _Unwind_Resume(a1);
}

unint64_t HALS_DeviceManager::GetNumberBoxes(HALS_DeviceManager *this, HALS_Client *a2)
{
  v5 = 0;
  v6 = 0;
  v7 = 0;
  HALS_DeviceManager::CopyBoxList(this, &v5, a2);
  v2 = (v6 - v5) >> 3;
  HALS_DeviceManager::BasicBoxList::~BasicBoxList(&v5, v3);
  return v2;
}

void sub_1DE5734AC(_Unwind_Exception *a1, HALS_Object *a2, uint64_t a3, ...)
{
  va_start(va, a3);
  HALS_DeviceManager::BasicBoxList::~BasicBoxList(va, a2);
  _Unwind_Resume(a1);
}

unint64_t HALS_DeviceManager::GetNumberClockDevices(HALS_DeviceManager *this, HALS_Client *a2)
{
  v5 = 0;
  v6 = 0;
  v7 = 0;
  HALS_DeviceManager::CopyClockDeviceList(this, &v5);
  v2 = (v6 - v5) >> 3;
  HALS_DeviceManager::BasicClockDeviceList::~BasicClockDeviceList(&v5, v3);
  return v2;
}

void sub_1DE57350C(_Unwind_Exception *a1, HALS_Object *a2, uint64_t a3, ...)
{
  va_start(va, a3);
  HALS_DeviceManager::BasicClockDeviceList::~BasicClockDeviceList(va, a2);
  _Unwind_Resume(a1);
}

uint64_t HALS_DeviceManager::IsPropertySettable(uint64_t a1, uint64_t a2, int *a3)
{
  v3 = *a3;
  if (*a3 > 1685416291)
  {
    v4 = (v3 - 1969841250) < 3 || v3 == 1685416292;
    v5 = 1885956452;
  }

  else
  {
    v4 = v3 == 1651472419 || v3 == 1668049699;
    v5 = 1684370979;
  }

  if (v4 || v3 == v5)
  {
    return 0;
  }

  else
  {
    return HALS_Object::IsPropertySettable(a1, a2, a3);
  }
}

BOOL HALS_DeviceManager::HasProperty(HALS_DeviceManager *this, HALS_Client *a2, const AudioObjectPropertyAddress *a3, HALS_Client *a4)
{
  mSelector = a3->mSelector;
  result = 1;
  if (a3->mSelector <= 1869638758)
  {
    if (mSelector > 1668049698)
    {
      if (mSelector <= 1685416291)
      {
        if (mSelector != 1668049699)
        {
          v7 = 1684370979;
          goto LABEL_26;
        }

        goto LABEL_28;
      }

      if (mSelector == 1685416292)
      {
        return result;
      }

      v7 = 1819173229;
      goto LABEL_26;
    }

    if (mSelector == 1650682995)
    {
      return result;
    }

    if (mSelector != 1651472419)
    {
      v7 = 1668047219;
      goto LABEL_26;
    }

    goto LABEL_29;
  }

  if (mSelector > 1937007733)
  {
    if (mSelector > 1969841250)
    {
      if (mSelector == 1969841251)
      {
LABEL_28:
        NumberClockDevices = HALS_DeviceManager::GetNumberClockDevices(this, a2);
        return NumberClockDevices != 0;
      }

      v7 = 1969841252;
LABEL_26:
      if (mSelector == v7)
      {
        return result;
      }

      return 0;
    }

    if (mSelector == 1937007734)
    {
      return result;
    }

    if (mSelector == 1969841250)
    {
LABEL_29:
      NumberClockDevices = HALS_DeviceManager::GetNumberBoxes(this, a4);
      return NumberClockDevices != 0;
    }

    return 0;
  }

  if (mSelector != 1869638759 && mSelector != 1870098020 && mSelector != 1885956452)
  {
    return 0;
  }

  return result;
}

void HALS_DeviceManager::BasicIODeviceList::~BasicIODeviceList(HALS_ObjectMap ***this, HALS_Object *a2)
{
  v3 = *this;
  if (*this != this[1])
  {
    do
    {
      HALS_ObjectMap::ReleaseObject(*v3++, a2);
    }

    while (v3 != this[1]);
    v3 = *this;
  }

  if (v3)
  {
    this[1] = v3;
    operator delete(v3);
  }
}

__CFString *HALS_DeviceManager::HALS_DeviceManager(__CFString *a1, uint64_t a2, const __CFString *a3, int a4, HALS_Object *a5)
{
  v18 = *MEMORY[0x1E69E9840];
  HALS_Object::HALS_Object(a1, 1634757735, 0, a2, a5);
  *v10 = &unk_1F597A098;
  *(v10 + 48) = a3;
  *(v10 + 56) = 1;
  *(v10 + 320) = a2;
  *(v10 + 328) = a4;
  if (!a3)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v14 = 136315394;
      v15 = "HALS_DeviceManager.cpp";
      v16 = 1024;
      v17 = 74;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_DeviceManager::HALS_DeviceManager: all device managers have to have a bundle ID", &v14, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 1852797029;
  }

  v14 = 256;
  CACFString::GetCString(a3, a1 + 2, &v14, v9);
  v11 = *MEMORY[0x1E69E9840];
  return a1;
}

void sub_1DE5738F0(_Unwind_Exception *a1)
{
  CACFString::~CACFString(v2);
  HALS_Object::~HALS_Object(v1);
  _Unwind_Resume(a1);
}

void HALS_DeviceManager::~HALS_DeviceManager(HALS_DeviceManager *this)
{
  *this = &unk_1F597A098;
  CACFString::~CACFString((this + 48));

  HALS_Object::~HALS_Object(this);
}

void HALS_DeviceManager::LogState(uint64_t a1, uint64_t a2)
{
  v181 = *MEMORY[0x1E69E9840];
  v4 = (a2 + 16);
  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>((a2 + 16), "    ", 4);
  v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "Device Manager ", 15);
  v7 = MEMORY[0x1E12C1210](v6, *(a1 + 16));
  std::ios_base::getloc((v7 + *(*v7 - 24)));
  v8 = std::locale::use_facet(&v179, MEMORY[0x1E69E5318]);
  (v8->__vftable[2].~facet_0)(v8, 10);
  std::locale::~locale(&v179);
  std::ostream::put();
  std::ostream::flush();
  *v120 = 128;
  CACFString::GetCString(*(a1 + 48), __s, v120, v9);
  v10 = 2;
  do
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "    ", 4);
    --v10;
  }

  while (v10);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "Bundle ID:               ", 25);
  v11 = strlen(__s);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, __s, v11);
  std::ios_base::getloc((v4 + *(*v4 - 24)));
  v12 = std::locale::use_facet(&v179, MEMORY[0x1E69E5318]);
  (v12->__vftable[2].~facet_0)(v12, 10);
  std::locale::~locale(&v179);
  std::ostream::put();
  std::ostream::flush();
  v117 = 0;
  v118 = 0;
  v119 = 0;
  HALS_DeviceManager::CopyBoxList(a1, &v117, 0);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "    ", 4);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "    ", 4);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "Number of Boxes:         ", 25);
  v13 = MEMORY[0x1E12C1220](v4, v118 - v117);
  std::ios_base::getloc((v13 + *(*v13 - 24)));
  v14 = std::locale::use_facet(&v179, MEMORY[0x1E69E5318]);
  (v14->__vftable[2].~facet_0)(v14, 10);
  std::locale::~locale(&v179);
  std::ostream::put();
  std::ostream::flush();
  v115 = a2;
  v15 = v117;
  v116 = v118;
  if (v117 != v118)
  {
    v16 = MEMORY[0x1E69E5318];
    do
    {
      v17 = *v15;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "    ", 4);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "    ", 4);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "    ", 4);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "Box ", 4);
      v18 = MEMORY[0x1E12C1210](v4, v17[4]);
      std::ios_base::getloc((v18 + *(*v18 - 24)));
      v19 = std::locale::use_facet(&v129, v16);
      (v19->__vftable[2].~facet_0)(v19, 10);
      std::locale::~locale(&v129);
      std::ostream::put();
      std::ostream::flush();
      v20 = v17[4];
      v142 = 0x676C6F626C6E616DLL;
      v143 = 0;
      v144 = 0;
      (*(*v17 + 120))(v17, v20, &v142, 8, &v143 + 4, &v144, 0, 0, 0);
      v162 = &unk_1F5991188;
      v163 = v144;
      OS::CF::String::AsCString(&v162, &v179, 128);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "    ", 4);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "    ", 4);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "    ", 4);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "    ", 4);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "Name:                 ", 22);
      v21 = strlen(&v179);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, &v179, v21);
      std::ios_base::getloc((v4 + *(*v4 - 24)));
      v22 = std::locale::use_facet(&v130, v16);
      (v22->__vftable[2].~facet_0)(v22, 10);
      std::locale::~locale(&v130);
      std::ostream::put();
      std::ostream::flush();
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "    ", 4);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "    ", 4);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "    ", 4);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "    ", 4);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "UID:                  ", 22);
      v23 = strlen(v17 + 88);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, (v17 + 22), v23);
      std::ios_base::getloc((v4 + *(*v4 - 24)));
      v24 = std::locale::use_facet(&v131, v16);
      (v24->__vftable[2].~facet_0)(v24, 10);
      std::locale::~locale(&v131);
      std::ostream::put();
      std::ostream::flush();
      v25 = v17[4];
      strcpy(v145, "nartbolg");
      HIBYTE(v145[4]) = 0;
      v145[5] = 0;
      v146 = 0;
      (*(*v17 + 120))(v17, v25, v145, 4, &v146, &v146 + 4, 0, 0, 0);
      LOBYTE(v145[0]) = HIBYTE(v146);
      HIBYTE(v145[0]) = BYTE6(v146);
      LOBYTE(v145[1]) = BYTE5(v146);
      HIBYTE(v145[1]) = BYTE4(v146);
      LOBYTE(v145[2]) = 0;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "    ", 4);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "    ", 4);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "    ", 4);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "    ", 4);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "Transport Type:       ", 22);
      v26 = strlen(v145);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, v145, v26);
      std::ios_base::getloc((v4 + *(*v4 - 24)));
      v27 = std::locale::use_facet(&v132, v16);
      (v27->__vftable[2].~facet_0)(v27, 10);
      std::locale::~locale(&v132);
      std::ostream::put();
      std::ostream::flush();
      v28 = v17[4];
      v147 = 0x676C6F6262686175;
      v148 = 0;
      v149 = 0;
      (*(*v17 + 120))(v17, v28, &v147, 4, &v149, &v149 + 4, 0, 0, 0);
      v29 = HIDWORD(v149);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "    ", 4);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "    ", 4);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "    ", 4);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "    ", 4);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "Has Audio:            ", 22);
      if (v29)
      {
        v30 = "yes";
      }

      else
      {
        v30 = "no";
      }

      if (v29)
      {
        v31 = 3;
      }

      else
      {
        v31 = 2;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, v30, v31);
      std::ios_base::getloc((v4 + *(*v4 - 24)));
      v32 = std::locale::use_facet(&v133, v16);
      (v32->__vftable[2].~facet_0)(v32, 10);
      std::locale::~locale(&v133);
      std::ostream::put();
      std::ostream::flush();
      v33 = v17[4];
      v150 = 0x676C6F6262687669;
      v151 = 0;
      v152 = 0;
      (*(*v17 + 120))(v17, v33, &v150, 4, &v152, &v152 + 4, 0, 0, 0);
      v34 = HIDWORD(v152);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "    ", 4);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "    ", 4);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "    ", 4);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "    ", 4);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "Has Video:            ", 22);
      if (v34)
      {
        v35 = "yes";
      }

      else
      {
        v35 = "no";
      }

      if (v34)
      {
        v36 = 3;
      }

      else
      {
        v36 = 2;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, v35, v36);
      std::ios_base::getloc((v4 + *(*v4 - 24)));
      v37 = std::locale::use_facet(&v134, v16);
      (v37->__vftable[2].~facet_0)(v37, 10);
      std::locale::~locale(&v134);
      std::ostream::put();
      std::ostream::flush();
      v38 = v17[4];
      v153 = 0x676C6F6262686D69;
      v154 = 0;
      v155 = 0;
      (*(*v17 + 120))(v17, v38, &v153, 4, &v155, &v155 + 4, 0, 0, 0);
      v39 = HIDWORD(v155);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "    ", 4);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "    ", 4);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "    ", 4);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "    ", 4);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "Has MIDI:             ", 22);
      if (v39)
      {
        v40 = "yes";
      }

      else
      {
        v40 = "no";
      }

      if (v39)
      {
        v41 = 3;
      }

      else
      {
        v41 = 2;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, v40, v41);
      std::ios_base::getloc((v4 + *(*v4 - 24)));
      v42 = std::locale::use_facet(&v135, v16);
      (v42->__vftable[2].~facet_0)(v42, 10);
      std::locale::~locale(&v135);
      std::ostream::put();
      std::ostream::flush();
      v43 = v17[4];
      v156 = 0x676C6F626270726FLL;
      v157 = 0;
      v158 = 0;
      (*(*v17 + 120))(v17, v43, &v156, 4, &v158, &v158 + 4, 0, 0, 0);
      v44 = HIDWORD(v158);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "    ", 4);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "    ", 4);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "    ", 4);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "    ", 4);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "Is Protected:         ", 22);
      if (v44)
      {
        v45 = "yes";
      }

      else
      {
        v45 = "no";
      }

      if (v44)
      {
        v46 = 3;
      }

      else
      {
        v46 = 2;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, v45, v46);
      std::ios_base::getloc((v4 + *(*v4 - 24)));
      v47 = std::locale::use_facet(&v136, v16);
      (v47->__vftable[2].~facet_0)(v47, 10);
      std::locale::~locale(&v136);
      std::ostream::put();
      std::ostream::flush();
      v48 = v17[4];
      v159 = 0x676C6F6262786F6ELL;
      v160 = 0;
      v161 = 0;
      (*(*v17 + 120))(v17, v48, &v159, 4, &v161, &v161 + 4, 0, 0, 0);
      v49 = HIDWORD(v161);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "    ", 4);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "    ", 4);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "    ", 4);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "    ", 4);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "Is Acquired:          ", 22);
      if (v49)
      {
        v50 = "yes";
      }

      else
      {
        v50 = "no";
      }

      if (v49)
      {
        v51 = 3;
      }

      else
      {
        v51 = 2;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, v50, v51);
      std::ios_base::getloc((v4 + *(*v4 - 24)));
      v52 = std::locale::use_facet(&v137, v16);
      (v52->__vftable[2].~facet_0)(v52, 10);
      std::locale::~locale(&v137);
      std::ostream::put();
      std::ostream::flush();
      if (v49)
      {
        v53 = v17[4];
        __p = 0x676C6F6262647623;
        LODWORD(v125) = 0;
        v54 = (*(*v17 + 112))(v17, v53, &__p, 0, 0, 0);
        LODWORD(v121) = 0;
        std::vector<unsigned int>::vector[abi:ne200100](&__p, v54 >> 2);
        v55 = v17[4];
        v121 = 0x676C6F6262647623;
        LODWORD(v122) = 0;
        v127 = 0;
        (*(*v17 + 120))(v17, v55, &v121, v54 & 0xFFFFFFFC, &v127, __p, 0, 0, 0);
        v56 = v127;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "    ", 4);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "    ", 4);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "    ", 4);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "    ", 4);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "Number Devices:       ", 22);
        v57 = MEMORY[0x1E12C1210](v4, v56 >> 2);
        std::ios_base::getloc((v57 + *(*v57 - 24)));
        v58 = std::locale::use_facet(&v138, v16);
        (v58->__vftable[2].~facet_0)(v58, 10);
        std::locale::~locale(&v138);
        std::ostream::put();
        std::ostream::flush();
        v60 = __p;
        v59 = v125;
        while (v60 != v59)
        {
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "    ", 4);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "    ", 4);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "    ", 4);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "    ", 4);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "    ", 4);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "Device: ", 8);
          v61 = MEMORY[0x1E12C1210](v4, *v60);
          std::ios_base::getloc((v61 + *(*v61 - 24)));
          v62 = std::locale::use_facet(&v139, v16);
          (v62->__vftable[2].~facet_0)(v62, 10);
          std::locale::~locale(&v139);
          std::ostream::put();
          std::ostream::flush();
          ++v60;
        }

        v63 = v17[4];
        v121 = 0x676C6F6262636C23;
        LODWORD(v122) = 0;
        v64 = (*(*v17 + 112))(v17, v63, &v121, 0, 0, 0);
        LODWORD(v175) = 0;
        std::vector<unsigned int>::vector[abi:ne200100](&v121, v64 >> 2);
        v65 = v17[4];
        v175 = 0x676C6F6262636C23;
        v176 = 0;
        v128 = 0;
        (*(*v17 + 120))(v17, v65, &v175, v64 & 0xFFFFFFFC, &v128, v121, 0, 0, 0);
        v66 = v128;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "    ", 4);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "    ", 4);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "    ", 4);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "    ", 4);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "Number Clock Devices: ", 22);
        v67 = MEMORY[0x1E12C1210](v4, v66 >> 2);
        std::ios_base::getloc((v67 + *(*v67 - 24)));
        v68 = std::locale::use_facet(&v140, v16);
        (v68->__vftable[2].~facet_0)(v68, 10);
        std::locale::~locale(&v140);
        std::ostream::put();
        std::ostream::flush();
        v70 = v121;
        v69 = v122;
        if (v121 != v122)
        {
          do
          {
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "    ", 4);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "    ", 4);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "    ", 4);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "    ", 4);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "    ", 4);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "Device: ", 8);
            v71 = MEMORY[0x1E12C1210](v4, *v70);
            std::ios_base::getloc((v71 + *(*v71 - 24)));
            v72 = std::locale::use_facet(&v141, v16);
            (v72->__vftable[2].~facet_0)(v72, 10);
            std::locale::~locale(&v141);
            std::ostream::put();
            std::ostream::flush();
            ++v70;
          }

          while (v70 != v69);
          v70 = v121;
        }

        if (v70)
        {
          v122 = v70;
          operator delete(v70);
        }

        if (__p)
        {
          v125 = __p;
          operator delete(__p);
        }
      }

      OS::CF::UntypedObject::~UntypedObject(&v162);
      ++v15;
    }

    while (v15 != v116);
  }

  __p = 0;
  v125 = 0;
  v126 = 0;
  HALS_DeviceManager::CopyDeviceList(a1, &__p, 1, 0);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "    ", 4);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "    ", 4);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "Number of Devices:       ", 25);
  v73 = MEMORY[0x1E12C1220](v4, (v125 - __p) >> 3);
  std::ios_base::getloc((v73 + *(*v73 - 24)));
  v74 = std::locale::use_facet(&v179, MEMORY[0x1E69E5318]);
  (v74->__vftable[2].~facet_0)(v74, 10);
  std::locale::~locale(&v179);
  std::ostream::put();
  std::ostream::flush();
  v75 = __p;
  v76 = v125;
  while (v75 != v76)
  {
    HALS_Device::LogState(*v75++, v115);
  }

  v121 = 0;
  v122 = 0;
  v123 = 0;
  HALS_DeviceManager::CopyClockDeviceList(a1, &v121);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "    ", 4);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "    ", 4);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "Number of Clock Devices: ", 25);
  v77 = MEMORY[0x1E12C1220](v4, (v122 - v121) >> 3);
  std::ios_base::getloc((v77 + *(*v77 - 24)));
  v78 = std::locale::use_facet(&v179, MEMORY[0x1E69E5318]);
  (v78->__vftable[2].~facet_0)(v78, 10);
  std::locale::~locale(&v179);
  std::ostream::put();
  std::ostream::flush();
  v80 = v121;
  v81 = v122;
  if (v121 != v122)
  {
    v82 = MEMORY[0x1E69E5318];
    do
    {
      v83 = *v80;
      std::ios_base::getloc((v4 + *(*v4 - 24)));
      v84 = std::locale::use_facet(&v164, v82);
      (v84->__vftable[2].~facet_0)(v84, 10);
      std::locale::~locale(&v164);
      std::ostream::put();
      std::ostream::flush();
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "    ", 4);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "    ", 4);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "    ", 4);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "Clock Device ", 13);
      v85 = MEMORY[0x1E12C1210](v4, v83[4]);
      std::ios_base::getloc((v85 + *(*v85 - 24)));
      v86 = std::locale::use_facet(&v165, v82);
      (v86->__vftable[2].~facet_0)(v86, 10);
      std::locale::~locale(&v165);
      std::ostream::put();
      std::ostream::flush();
      v87 = v83[4];
      v179.__locale_ = 0x676C6F626C6E616DLL;
      v180 = 0;
      *v174 = 0;
      v173 = 0;
      (*(*v83 + 120))(v83, v87, &v179, 8, &v173, v174, 0, 0, 0);
      v162 = &unk_1F5991188;
      v163 = *v174;
      OS::CF::String::AsCString(&v162, &v179, 128);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "    ", 4);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "    ", 4);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "    ", 4);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "    ", 4);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "Name:                ", 21);
      v88 = strlen(&v179);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, &v179, v88);
      std::ios_base::getloc((v4 + *(*v4 - 24)));
      v89 = std::locale::use_facet(&v166, v82);
      (v89->__vftable[2].~facet_0)(v89, 10);
      std::locale::~locale(&v166);
      std::ostream::put();
      std::ostream::flush();
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "    ", 4);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "    ", 4);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "    ", 4);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "    ", 4);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "UID:                 ", 21);
      v90 = strlen(v83 + 120);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, (v83 + 30), v90);
      std::ios_base::getloc((v4 + *(*v4 - 24)));
      v91 = std::locale::use_facet(&v167, v82);
      (v91->__vftable[2].~facet_0)(v91, 10);
      std::locale::~locale(&v167);
      std::ostream::put();
      std::ostream::flush();
      TransportType = HALS_IODevice::GetTransportType(v83);
      v174[0] = HIBYTE(TransportType);
      v174[1] = BYTE2(TransportType);
      v174[2] = BYTE1(TransportType);
      v174[3] = TransportType;
      v174[4] = 0;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "    ", 4);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "    ", 4);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "    ", 4);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "    ", 4);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "Transport Type:      ", 21);
      v93 = strlen(v174);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, v174, v93);
      std::ios_base::getloc((v4 + *(*v4 - 24)));
      v94 = std::locale::use_facet(&v168, v82);
      (v94->__vftable[2].~facet_0)(v94, 10);
      std::locale::~locale(&v168);
      std::ostream::put();
      std::ostream::flush();
      v95 = v83[4];
      v175 = 0x676C6F626869646ELL;
      v176 = 0;
      v177 = 0;
      (*(*v83 + 120))(v83, v95, &v175, 4, &v177, &v177 + 4, 0, 0, 0);
      v96 = HIDWORD(v177);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "    ", 4);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "    ", 4);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "    ", 4);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "    ", 4);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "Is Hidden:           ", 21);
      if (v96)
      {
        v97 = "yes";
      }

      else
      {
        v97 = "no";
      }

      if (v96)
      {
        v98 = 3;
      }

      else
      {
        v98 = 2;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, v97, v98);
      std::ios_base::getloc((v4 + *(*v4 - 24)));
      v99 = std::locale::use_facet(&v169, v82);
      (v99->__vftable[2].~facet_0)(v99, 10);
      std::locale::~locale(&v169);
      std::ostream::put();
      std::ostream::flush();
      v100 = (*(*v83 + 328))(v83);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "    ", 4);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "    ", 4);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "    ", 4);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "    ", 4);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "Clock Domain:        ", 21);
      v101 = MEMORY[0x1E12C1210](v4, v100);
      std::ios_base::getloc((v101 + *(*v101 - 24)));
      v102 = std::locale::use_facet(&v170, v82);
      (v102->__vftable[2].~facet_0)(v102, 10);
      std::locale::~locale(&v170);
      std::ostream::put();
      std::ostream::flush();
      v103 = (*(*v83 + 312))(v83, 1);
      v104 = (*(*v83 + 312))(v83, 0);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "    ", 4);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "    ", 4);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "    ", 4);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "    ", 4);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "Latency              In: ", 25);
      v105 = MEMORY[0x1E12C1210](v4, v103);
      v106 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v105, " Out: ", 6);
      v107 = MEMORY[0x1E12C1210](v106, v104);
      std::ios_base::getloc((v107 + *(*v107 - 24)));
      v108 = std::locale::use_facet(&v171, v82);
      (v108->__vftable[2].~facet_0)(v108, 10);
      std::locale::~locale(&v171);
      std::ostream::put();
      std::ostream::flush();
      v109 = (*(*v83 + 272))(v83);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "    ", 4);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "    ", 4);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "    ", 4);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "    ", 4);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "Nominal Sample Rate: ", 21);
      v110 = MEMORY[0x1E12C11E0](v4, v109);
      std::ios_base::getloc((v110 + *(*v110 - 24)));
      v111 = std::locale::use_facet(&v172, v82);
      (v111->__vftable[2].~facet_0)(v111, 10);
      std::locale::~locale(&v172);
      std::ostream::put();
      std::ostream::flush();
      OS::CF::UntypedObject::~UntypedObject(&v162);
      ++v80;
    }

    while (v80 != v81);
  }

  HALS_DeviceManager::BasicClockDeviceList::~BasicClockDeviceList(&v121, v79);
  HALS_DeviceManager::BasicDeviceList::~BasicDeviceList(&__p, v112);
  HALS_DeviceManager::BasicBoxList::~BasicBoxList(&v117, v113);
  v114 = *MEMORY[0x1E69E9840];
}

void sub_1DE575B9C(_Unwind_Exception *a1, HALS_Object *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v9 = va_arg(va1, HALS_ObjectMap **);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  HALS_DeviceManager::BasicDeviceList::~BasicDeviceList(va1, a2);
  HALS_DeviceManager::BasicBoxList::~BasicBoxList(va, v8);
  _Unwind_Resume(a1);
}

void HALS_DeviceManager::CopyRawDeviceList(HALS_DeviceManager *this, HALS_DeviceManager::BasicDeviceList *a2)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x4002000000;
  v12 = __Block_byref_object_copy__11571;
  v13 = __Block_byref_object_dispose__11572;
  memset(v14, 0, sizeof(v14));
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 0x40000000;
  v8[2] = ___ZNK18HALS_DeviceManager17CopyRawDeviceListERNS_15BasicDeviceListE_block_invoke;
  v8[3] = &unk_1E8676CA0;
  v8[4] = &v9;
  v8[5] = this;
  v3 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v3, v8);
  v5 = v10[5];
  v6 = v10[6];
  while (v5 != v6)
  {
    HALS_ObjectMap::RetainObject(*v5, v4);
    std::vector<HALS_Device *>::push_back[abi:ne200100](a2, v5++);
  }

  _Block_object_dispose(&v9, 8);
  HALS_DeviceManager::BasicDeviceList::~BasicDeviceList(v14, v7);
}

void sub_1DE575D84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  HALS_DeviceManager::BasicDeviceList::~BasicDeviceList((v7 + 40), v9);
  _Unwind_Resume(a1);
}

void sub_1DE575DF8(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

HALS_ObjectMap *HALS_DeviceManager::CopyDeviceByObjectID(HALS_DeviceManager *this, int a2, HALS_Client *a3)
{
  v11 = 0;
  v12 = 0;
  v13 = 0;
  HALS_DeviceManager::CopyDeviceList(this, &v11, 1, a3);
  v5 = v11;
  while (v5 != v12)
  {
    v7 = *v5++;
    v6 = v7;
    if (*(v7 + 4) == a2 && v6 != 0)
    {
      goto LABEL_9;
    }
  }

  v6 = 0;
LABEL_9:
  HALS_ObjectMap::RetainObject(v6, v4);
  HALS_DeviceManager::BasicDeviceList::~BasicDeviceList(&v11, v9);
  return v6;
}

void sub_1DE575E90(_Unwind_Exception *a1, HALS_Object *a2, uint64_t a3, ...)
{
  va_start(va, a3);
  HALS_DeviceManager::BasicDeviceList::~BasicDeviceList(va, a2);
  _Unwind_Resume(a1);
}

void AMCP::DAL::PCM_Data_Handler::get_data(uint64_t *a1@<X1>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v7 = *a1;
  v8 = AMCP::DAL::Container::get_container_data_ptr<AMCP::DAL::PCM_Data_Handler>(*a1);
  length_in_frames = AMCP::DAL::PCM_Data_Handler::get_length_in_frames(v8);
  v10 = round(length_in_frames);
  if (v10 <= 0.0)
  {
    goto LABEL_38;
  }

  v11 = round(a3);
  v12 = round(a4);
  v13 = v11;
  v14 = v12;
  if (v11 < v12)
  {
    v15 = 0.0;
    if (v11 > 0.0)
    {
      v15 = a3;
    }

    if (v12 >= v10)
    {
      v16 = length_in_frames;
    }

    else
    {
      v16 = a4;
    }

    v14 = round(v16);
    v13 = round(v15);
  }

  if (v13 >= v14)
  {
LABEL_38:
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v17 = *(v7 + 56);
    v18 = *(v7 + 64);
    if (v17 != v18)
    {
      v19 = 0;
      v20 = v11 >= v12;
      v21 = v11 > 0.0 || v11 >= v12;
      v22 = 0.0;
      if (v21)
      {
        v22 = a3;
      }

      if (v12 < v10)
      {
        v20 = 1;
      }

      v23 = vcvtmd_s64_f64(v22);
      if (v20)
      {
        length_in_frames = a4;
      }

      v24 = vcvtmd_s64_f64(length_in_frames - v22);
      do
      {
        if ((*(v7 + 20) & 0x20) != 0)
        {
          v25 = 1;
        }

        else
        {
          v25 = *(v7 + 36);
        }

        v26 = *v17 + (*(v7 + 32) * v23);
        v27 = v25 * v24;
        v28 = *(a2 + 16);
        if (v19 >= v28)
        {
          v29 = (v19 - *a2) >> 4;
          if ((v29 + 1) >> 60)
          {
            std::vector<void *>::__throw_length_error[abi:ne200100]();
          }

          v30 = v28 - *a2;
          v31 = v30 >> 3;
          if (v30 >> 3 <= (v29 + 1))
          {
            v31 = v29 + 1;
          }

          if (v30 >= 0x7FFFFFFFFFFFFFF0)
          {
            v32 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v32 = v31;
          }

          v40[4] = a2;
          if (v32)
          {
            v32 = std::allocator_traits<caulk::rt_allocator<AMCP::DAL::Audio_Samples<unsigned char>>>::allocate_at_least[abi:ne200100]<caulk::rt_allocator<AMCP::DAL::Audio_Samples<unsigned char>>>(v32);
          }

          else
          {
            v33 = 0;
          }

          v34 = (v32 + 16 * v29);
          v35 = v32 + 16 * v33;
          *v34 = v26;
          v34[1] = v27;
          v19 = v34 + 2;
          v36 = *(a2 + 8) - *a2;
          v37 = v34 - v36;
          memcpy(v34 - v36, *a2, v36);
          v38 = *a2;
          *a2 = v37;
          *(a2 + 8) = v19;
          v39 = *(a2 + 16);
          *(a2 + 16) = v35;
          v40[2] = v38;
          v40[3] = v39;
          v40[0] = v38;
          v40[1] = v38;
          std::__split_buffer<AMCP::DAL::Audio_Samples<unsigned char>,caulk::rt_allocator<AMCP::DAL::Audio_Samples<unsigned char>> &>::~__split_buffer(v40);
        }

        else
        {
          *v19 = v26;
          v19[1] = v27;
          v19 += 2;
        }

        *(a2 + 8) = v19;
        v17 += 3;
      }

      while (v17 != v18);
    }
  }
}

uint64_t AMCP::DAL::Container::get_container_data_ptr<AMCP::DAL::PCM_Data_Handler>(uint64_t result)
{
  v25 = *MEMORY[0x1E69E9840];
  if (!result)
  {
    v2 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v2 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(0);
    }

    v4 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v3 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
      v5 = *v4;
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    else
    {
      v5 = *v4;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v17 = "Container.h";
      v18 = 1024;
      v19 = 121;
      v20 = 2080;
      v21 = "not ((m_impl.get()) != nullptr)";
      _os_log_error_impl(&dword_1DE1F9000, v5, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Attempt to call Container::GetContainerData on a null Container", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v15);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("Attempt to call Container::GetContainerData on a null Container", &v7);
    std::logic_error::logic_error(&v8, &v7);
    v8.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v9, &v8);
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = -1;
    v9.__vftable = &unk_1F5991430;
    v10 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v9);
    v22 = "T *AMCP::DAL::Container::get_container_data_ptr() const [T = AMCP::DAL::PCM_Data_Handler]";
    v23 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Container.h";
    v24 = 121;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v6);
  }

  v1 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DE576310(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25, uint64_t a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::~clone_impl(v28 - 112);
  boost::exception_detail::error_info_injector<std::domain_error>::~error_info_injector(&a27);
  MEMORY[0x1E12C0F00](&a25);
  if (a24 < 0)
  {
    operator delete(a19);
  }

  if (a11)
  {
    __cxa_free_exception(v27);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v28 - 113));
  _Unwind_Resume(a1);
}

double AMCP::DAL::PCM_Data_Handler::get_length_in_frames(AMCP::DAL::PCM_Data_Handler *this)
{
  v27 = *MEMORY[0x1E69E9840];
  v1 = *(this + 7);
  if (v1 == *(this + 8))
  {
    v4 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v4 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(this);
    }

    v6 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v5 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      v7 = *v6;
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }

    else
    {
      v7 = *v6;
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v19 = "PCM_Data_Handler.cpp";
      v20 = 1024;
      v21 = 111;
      v22 = 2080;
      v23 = "not (not m_samples.empty())";
      _os_log_error_impl(&dword_1DE1F9000, v7, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Bad format for PCM data", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v17);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("Bad format for PCM data", &v9);
    std::logic_error::logic_error(&v10, &v9);
    v10.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v11, &v10);
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = -1;
    v11.__vftable = &unk_1F5991430;
    v12 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v11);
    v24 = "virtual Sample_Time AMCP::DAL::PCM_Data_Handler::get_length_in_frames() const";
    v25 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/PCM_Data_Handler.cpp";
    v26 = 111;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v8);
  }

  v2 = *MEMORY[0x1E69E9840];
  return (*(v1 + 8) / *(this + 8));
}

void sub_1DE576630(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25, uint64_t a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::~clone_impl(v28 - 112);
  boost::exception_detail::error_info_injector<std::domain_error>::~error_info_injector(&a27);
  MEMORY[0x1E12C0F00](&a25);
  if (a24 < 0)
  {
    operator delete(a19);
  }

  if (a11)
  {
    __cxa_free_exception(v27);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v28 - 113));
  _Unwind_Resume(a1);
}

void *AMCP::DAL::PCM_Data_Handler::dal_operation_get_property(uint64_t a1, uint64_t *a2, void *a3)
{
  v4 = *a2;
  std::string::basic_string[abi:ne200100]<0>(__p, "expected output samples for input samples");
  v5 = std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::find<std::string>(a3, __p);
  v6 = v5;
  if (v20 < 0)
  {
    operator delete(__p[0]);
    if (v6)
    {
      goto LABEL_3;
    }
  }

  else if (v5)
  {
LABEL_3:
    std::string::basic_string[abi:ne200100]<0>(__p, "expected output samples for input samples");
    v7 = std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::find<std::string>(a3, __p);
    if (v7)
    {
      v8 = AMCP::Thing::convert_to<unsigned long long>((v7 + 5));
    }

    else
    {
      v8 = 0;
    }

    if (v20 < 0)
    {
      operator delete(__p[0]);
    }

    __p[0] = 0;
    result = *(v4 + 32);
    if (result)
    {
      return (*(*result + 32))(result, v8, __p);
    }

    return result;
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "actual input samples consumed");
  v9 = std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::find<std::string>(a3, __p);
  v10 = v9;
  if (v20 < 0)
  {
    operator delete(__p[0]);
    if (v10)
    {
      goto LABEL_8;
    }
  }

  else if (v9)
  {
LABEL_8:
    std::string::basic_string[abi:ne200100]<0>(__p, "actual input samples consumed");
    v11 = std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::find<std::string>(a3, __p);
    if (v11)
    {
      v12 = AMCP::Thing::convert_to<unsigned long long>((v11 + 5));
    }

    else
    {
      v12 = 0;
    }

    if (v20 < 0)
    {
      operator delete(__p[0]);
    }

    __p[0] = 0;
    result = *(v4 + 32);
    if (result)
    {
      (*(*result + 32))(result, v12, __p);
      return __p[0];
    }

    return result;
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "required input samples for output samples");
  v14 = std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::find<std::string>(a3, __p);
  v15 = v14;
  if (v20 < 0)
  {
    operator delete(__p[0]);
    if (v15)
    {
      goto LABEL_18;
    }
  }

  else if (v14)
  {
LABEL_18:
    std::string::basic_string[abi:ne200100]<0>(__p, "required input samples for output samples");
    v16 = std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::find<std::string>(a3, __p);
    if (v16)
    {
      v17 = AMCP::Thing::convert_to<unsigned long long>((v16 + 5));
    }

    else
    {
      v17 = 0;
    }

    if (v20 < 0)
    {
      operator delete(__p[0]);
    }

    result = *(v4 + 32);
    if (result)
    {
      return (*(*result + 24))(result, v17);
    }

    return result;
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "get latency");
  v18 = std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::find<std::string>(a3, __p);
  if (v20 < 0)
  {
    operator delete(__p[0]);
  }

  if (!v18)
  {
    return 0;
  }

  result = *(v4 + 32);
  if (result)
  {
    return (*(*result + 40))(result);
  }

  return result;
}

void sub_1DE576980(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double AMCP::DAL::PCM_Data_Handler::dal_operation_apply(AMCP::DAL::PCM_Data_Handler *a1, double *a2, uint64_t *a3, uint64_t a4, uint64_t *a5, double a6, double a7)
{
  v50 = *MEMORY[0x1E69E9840];
  v15 = round(AMCP::DAL::PCM_Data_Handler::get_length_in_frames(a1));
  if (v15 <= 0.0 || (v16 = a2[1], v17 = round(*a2), v18 = round(v16), v17 < v18) && (v17 >= 0.0 ? (v19 = v15 < v18) : (v19 = 1), v19))
  {
    v26 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v26 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v14);
    }

    v28 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v27 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v27)
    {
      atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
      v29 = *v28;
      std::__shared_weak_count::__release_shared[abi:ne200100](v27);
    }

    else
    {
      v29 = *v28;
    }

    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v42 = "PCM_Data_Handler.cpp";
      v43 = 1024;
      v44 = 258;
      v45 = 2080;
      v46 = "not (Sample_Time_Range(0_S, get_length_in_frames()).encompasses(source_range))";
      _os_log_error_impl(&dword_1DE1F9000, v29, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v40);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("", &v32);
    std::logic_error::logic_error(&v33, &v32);
    v33.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v34, &v33);
    v36 = 0;
    v37 = 0;
    v38 = 0;
    v39 = -1;
    v34.__vftable = &unk_1F5991430;
    v35 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v34);
    v47 = "virtual Sample_Time_Range AMCP::DAL::PCM_Data_Handler::dal_operation_apply(const Sample_Time_Range &, Container, Sample_Time_Range, const DAL_Settings &, DAL_Operation_Context_Ref) const";
    v48 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/PCM_Data_Handler.cpp";
    v49 = 258;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v31);
  }

  v20 = *a5;
  AMCP::DAL::PCM_Data_Handler::get_container_data(buf, a1, *a2, v16);
  v21 = *a3;
  v22 = a3[1];
  v30[0] = v21;
  v30[1] = v22;
  if (v22)
  {
    atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v23 = AMCP::DAL::PCM_Operation_Context::apply(v20, buf, a2, v30, a4, a6, a7);
  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }

  std::vector<AMCP::DAL::Audio_Samples<float>,caulk::rt_allocator<AMCP::DAL::Audio_Samples<float>>>::__destroy_vector::operator()[abi:ne200100](buf);
  v24 = *MEMORY[0x1E69E9840];
  return v23;
}

void sub_1DE576CD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24, uint64_t a25, char a26)
{
  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  std::vector<AMCP::DAL::Audio_Samples<float>,caulk::rt_allocator<AMCP::DAL::Audio_Samples<float>>>::__destroy_vector::operator()[abi:ne200100]((v27 - 144));
  _Unwind_Resume(a1);
}

void AMCP::DAL::PCM_Data_Handler::get_container_data(caulk::rt_safe_memory_resource *a1, AMCP::DAL::PCM_Data_Handler *this, double a3, double a4)
{
  length_in_frames = AMCP::DAL::PCM_Data_Handler::get_length_in_frames(this);
  v9 = round(length_in_frames);
  if (v9 <= 0.0)
  {
    goto LABEL_26;
  }

  v10 = round(a3);
  v11 = round(a4);
  v12 = v10;
  v13 = v11;
  if (v10 < v11)
  {
    v14 = 0.0;
    if (v10 > 0.0)
    {
      v14 = a3;
    }

    if (v11 >= v9)
    {
      v15 = length_in_frames;
    }

    else
    {
      v15 = a4;
    }

    v13 = round(v15);
    v12 = round(v14);
  }

  if (v12 >= v13)
  {
LABEL_26:
    *a1 = 0;
    *(a1 + 1) = 0;
    *(a1 + 2) = 0;
  }

  else
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    *(a1 + 2) = 0;
    v16 = *(this + 7);
    v17 = *(this + 8);
    if (v16 != v17)
    {
      v18 = v10 >= v11;
      v19 = v10 > 0.0 || v10 >= v11;
      v20 = 0.0;
      if (v19)
      {
        v20 = a3;
      }

      if (v11 < v9)
      {
        v18 = 1;
      }

      if (v18)
      {
        length_in_frames = a4;
      }

      v21 = vcvtmd_s64_f64(v20);
      v22 = vcvtmd_s64_f64(length_in_frames - v20);
      do
      {
        if ((*(this + 20) & 0x20) != 0)
        {
          v23 = 1;
        }

        else
        {
          v23 = *(this + 9);
        }

        v24 = *v16;
        v16 += 3;
        *&v25 = v24 + (*(this + 8) * v21);
        *(&v25 + 1) = (v23 * v22);
        caulk::rt::vector<AMCP::DAL::Audio_Samples<float>>::emplace_back<AMCP::DAL::Audio_Samples<float>>(a1, &v25);
      }

      while (v16 != v17);
    }
  }
}

caulk::rt_safe_memory_resource *caulk::rt::vector<AMCP::DAL::Audio_Samples<float>>::emplace_back<AMCP::DAL::Audio_Samples<float>>(caulk::rt_safe_memory_resource *result, _OWORD *a2)
{
  v3 = result;
  v5 = *(result + 1);
  v4 = *(result + 2);
  if (v5 >= v4)
  {
    v7 = (v5 - *result) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - *result;
    if (v9 >> 3 > v8)
    {
      v8 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    v18[4] = v3;
    if (v10)
    {
      v10 = std::allocator_traits<caulk::rt_allocator<AMCP::DAL::Audio_Samples<unsigned char>>>::allocate_at_least[abi:ne200100]<caulk::rt_allocator<AMCP::DAL::Audio_Samples<unsigned char>>>(v10);
    }

    else
    {
      v11 = 0;
    }

    v12 = (v10 + 16 * v7);
    v13 = v10 + 16 * v11;
    *v12 = *a2;
    v6 = v12 + 1;
    v14 = *(v3 + 1) - *v3;
    v15 = v12 - v14;
    memcpy(v12 - v14, *v3, v14);
    v16 = *v3;
    *v3 = v15;
    *(v3 + 1) = v6;
    v17 = *(v3 + 2);
    *(v3 + 2) = v13;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    result = std::__split_buffer<AMCP::DAL::Audio_Samples<unsigned char>,caulk::rt_allocator<AMCP::DAL::Audio_Samples<unsigned char>> &>::~__split_buffer(v18);
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(v3 + 1) = v6;
  return result;
}

void sub_1DE577054(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<AMCP::DAL::PCM_Operation_Context>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

AMCP::DAL::PCM_Operation_Context **std::unique_ptr<AMCP::DAL::PCM_Operation_Context>::~unique_ptr[abi:ne200100](AMCP::DAL::PCM_Operation_Context **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    AMCP::DAL::PCM_Operation_Context::~PCM_Operation_Context(v2);
    MEMORY[0x1E12C1730]();
  }

  return a1;
}

uint64_t std::__shared_ptr_pointer<AMCP::DAL::PCM_Operation_Context *,std::shared_ptr<AMCP::DAL::DAL_Operation_Context>::__shared_ptr_default_delete<AMCP::DAL::DAL_Operation_Context,AMCP::DAL::PCM_Operation_Context>,std::allocator<AMCP::DAL::PCM_Operation_Context>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "NSt3__110shared_ptrIN4AMCP3DAL21DAL_Operation_ContextEE27__shared_ptr_default_deleteIS3_NS2_21PCM_Operation_ContextEEE"))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

AMCP::DAL::PCM_Operation_Context *std::__shared_ptr_pointer<AMCP::DAL::PCM_Operation_Context *,std::shared_ptr<AMCP::DAL::DAL_Operation_Context>::__shared_ptr_default_delete<AMCP::DAL::DAL_Operation_Context,AMCP::DAL::PCM_Operation_Context>,std::allocator<AMCP::DAL::PCM_Operation_Context>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    AMCP::DAL::PCM_Operation_Context::~PCM_Operation_Context(result);

    JUMPOUT(0x1E12C1730);
  }

  return result;
}

void std::__shared_ptr_pointer<AMCP::DAL::PCM_Operation_Context *,std::shared_ptr<AMCP::DAL::DAL_Operation_Context>::__shared_ptr_default_delete<AMCP::DAL::DAL_Operation_Context,AMCP::DAL::PCM_Operation_Context>,std::allocator<AMCP::DAL::PCM_Operation_Context>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t *AMCP::DAL::PCM_Data_Handler::get_ring_buffer_time_translator(AMCP::DAL::PCM_Data_Handler *this)
{
  {
    AMCP::DAL::PCM_Data_Handler::get_ring_buffer_time_translator(void)const::s_translator = &unk_1F597A2A0;
  }

  return &AMCP::DAL::PCM_Data_Handler::get_ring_buffer_time_translator(void)const::s_translator;
}

void AMCP::DAL::PCM_Buffer_Time_Translator::translate_range(const AMCP::DAL::DAL_Time_Range *a1@<X1>, const AMCP::DAL::DAL_Time_Range *a2@<X2>, uint64_t *a3@<X8>)
{
  v49 = *MEMORY[0x1E69E9840];
  AMCP::DAL::DAL_Time::operator-(buf, (a2 + 40), a2);
  AMCP::DAL::DAL_Time::operator-(&v35, (a1 + 40), a1);
  v7 = AMCP::DAL::DAL_Time_Delta::operator<(&v35, buf);
  if (*(&v37 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v37 + 1));
  }

  v8 = v42;
  if (v42)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v42);
  }

  if (v7)
  {
    v28 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v28 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v8);
    }

    v30 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v29 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v29)
    {
      atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
      v31 = *v30;
      std::__shared_weak_count::__release_shared[abi:ne200100](v29);
    }

    else
    {
      v31 = *v30;
    }

    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "PCM_Data_Handler.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 445;
      *&buf[18] = 2080;
      *&buf[20] = "not (range.length() <= ref_range.length())";
      _os_log_error_impl(&dword_1DE1F9000, v31, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v40);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("", &v33);
    std::logic_error::logic_error(&v34, &v33);
    v34.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v35, &v34);
    v37 = 0uLL;
    v38 = 0;
    v39 = -1;
    v35.__vftable = &unk_1F5991430;
    v36 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v35);
    v42 = "virtual rt_safe_vector<Buffer_Time_Translator::Translation_Range> AMCP::DAL::PCM_Buffer_Time_Translator::translate_range(const DAL_Time_Range &, const DAL_Time_Range &) const";
    v43 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/PCM_Data_Handler.cpp";
    LODWORD(v44) = 445;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v32);
  }

  sample_time = AMCP::DAL::DAL_Time::get_sample_time(a2);
  AMCP::DAL::DAL_Time::operator-(buf, (a1 + 40), a1);
  if ((buf[0] & 2) == 0)
  {
    AMCP::DAL::DAL_Time_Delta::validate(buf);
  }

  v10 = *&buf[8];
  v11 = fmod(round(sample_time), *&buf[8]);
  if (round(v11) >= 0.0)
  {
    v12 = v11;
  }

  else
  {
    v12 = v10 + v11;
  }

  if (v42)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v42);
  }

  v13 = AMCP::DAL::DAL_Time::get_sample_time((a2 + 40));
  AMCP::DAL::DAL_Time::operator-(buf, (a1 + 40), a1);
  if ((buf[0] & 2) == 0)
  {
    AMCP::DAL::DAL_Time_Delta::validate(buf);
  }

  v14 = *&buf[8];
  v15 = fmod(round(v13), *&buf[8]);
  if (round(v15) >= 0.0)
  {
    v16 = v15;
  }

  else
  {
    v16 = v14 + v15;
  }

  if (v42)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v42);
  }

  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v17 = round(v16);
  if (round(v12) < v17)
  {
    *buf = v12;
    *&buf[8] = v16;
    *&buf[16] = *a2;
    v18 = *(a2 + 3);
    v42 = *(a2 + 2);
    v43 = v18;
    v19 = *(a2 + 4);
    v44 = v19;
    if (v19)
    {
      atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v45 = *(a2 + 40);
    v20 = *(a2 + 8);
    v46 = *(a2 + 7);
    v47 = v20;
    v21 = *(a2 + 9);
    v48 = v21;
    if (v21)
    {
      atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    caulk::rt::vector<AMCP::DAL::Buffer_Time_Translator::Translation_Range>::push_back(a3, buf);
    if (v48)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v48);
    }

    v22 = v44;
    if (!v44)
    {
      goto LABEL_47;
    }

LABEL_46:
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
    goto LABEL_47;
  }

  AMCP::DAL::DAL_Time::operator-(buf, (a1 + 40), a1);
  if ((buf[0] & 2) == 0)
  {
    AMCP::DAL::DAL_Time_Delta::validate(buf);
  }

  v23 = *&buf[8];
  if (v42)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v42);
  }

  v24 = v23 - v12 + round(AMCP::DAL::DAL_Time::get_sample_time(a2));
  v25 = *(a2 + 24);
  v26 = *(a2 + 4);
  if (v26)
  {
    atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  LODWORD(v35.__vftable) = 2;
  *&v35.__imp_.__imp_ = v24;
  v36 = 0;
  v37 = v25;
  *buf = v12;
  *&buf[8] = v23;
  AMCP::DAL::DAL_Time_Range::DAL_Time_Range(&buf[16], a2, &v35);
  caulk::rt::vector<AMCP::DAL::Buffer_Time_Translator::Translation_Range>::push_back(a3, buf);
  if (v48)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v48);
  }

  if (v44)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v44);
  }

  if (v17 > 0.0)
  {
    *buf = 0;
    *&buf[8] = v16;
    AMCP::DAL::DAL_Time_Range::DAL_Time_Range(&buf[16], &v35, (a2 + 40));
    caulk::rt::vector<AMCP::DAL::Buffer_Time_Translator::Translation_Range>::push_back(a3, buf);
    if (v48)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v48);
    }

    if (v44)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v44);
    }
  }

  if (v26)
  {
    v22 = v26;
    goto LABEL_46;
  }

LABEL_47:
  v27 = *MEMORY[0x1E69E9840];
}

void sub_1DE577708(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39)
{
  if (v39)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v39);
  }

  std::vector<AMCP::DAL::Buffer_Time_Translator::Translation_Range,caulk::rt_allocator<AMCP::DAL::Buffer_Time_Translator::Translation_Range>>::__destroy_vector::operator()[abi:ne200100](&a35);
  _Unwind_Resume(a1);
}

uint64_t caulk::rt::vector<AMCP::DAL::Buffer_Time_Translator::Translation_Range>::push_back(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<AMCP::DAL::Buffer_Time_Translator::Translation_Range,caulk::rt_allocator<AMCP::DAL::Buffer_Time_Translator::Translation_Range>>::__emplace_back_slow_path<AMCP::DAL::Buffer_Time_Translator::Translation_Range>(a1, a2);
  }

  else
  {
    *v3 = *a2;
    v4 = *(a2 + 16);
    *(v3 + 32) = *(a2 + 32);
    *(v3 + 16) = v4;
    *(v3 + 40) = *(a2 + 40);
    *(a2 + 40) = 0;
    *(a2 + 48) = 0;
    v5 = *(a2 + 56);
    *(v3 + 72) = *(a2 + 72);
    *(v3 + 56) = v5;
    *(v3 + 80) = *(a2 + 80);
    *(a2 + 80) = 0;
    *(a2 + 88) = 0;
    result = v3 + 96;
  }

  a1[1] = result;
  return result;
}

AMCP::DAL::PCM_Data_Handler *AMCP::DAL::PCM_Data_Handler::erase_range(AMCP::DAL::PCM_Data_Handler *this, double a2, double a3)
{
  v3 = a3 - a2;
  if (round(a3 - a2) > 0.0)
  {
    v4 = this;
    AMCP::DAL::PCM_Data_Handler::get_container_data(&v8, this, a2, a3);
    if (v9 != v8)
    {
      v5 = 0;
      v6 = *(v4 + 8) * vcvtmd_s64_f64(v3);
      if (((v9 - v8) >> 4) <= 1)
      {
        v7 = 1;
      }

      else
      {
        v7 = (v9 - v8) >> 4;
      }

      do
      {
        bzero(*(v8 + v5), v6);
        v5 += 16;
        --v7;
      }

      while (v7);
    }

    return std::vector<AMCP::DAL::Audio_Samples<float>,caulk::rt_allocator<AMCP::DAL::Audio_Samples<float>>>::__destroy_vector::operator()[abi:ne200100](&v8);
  }

  return this;
}

void AMCP::DAL::PCM_Data_Handler::mix(AMCP::Log::AMCP_Scope_Registry *a1, uint64_t ***a2, double a3, double a4, double a5)
{
  v60 = *MEMORY[0x1E69E9840];
  if (*(a1 + 4) != 1819304813 || (v6 = *(a1 + 5), (v6 & 0x40) != 0))
  {
    v27 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v27 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(a1);
    }

    v29 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v28 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v28)
    {
      atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
      v30 = *v29;
      std::__shared_weak_count::__release_shared[abi:ne200100](v28);
    }

    else
    {
      v30 = *v29;
    }

    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v52 = "PCM_Data_Handler.cpp";
      v53 = 1024;
      v54 = 385;
      v55 = 2080;
      v56 = "not (get_format().IsMixable())";
      _os_log_error_impl(&dword_1DE1F9000, v30, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Format is not mixable", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v39);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("Format is not mixable", &v44);
    std::logic_error::logic_error(&v40, &v44);
    v40.__r_.__value_.__r.__words[0] = MEMORY[0x1E69E55A8] + 16;
    std::logic_error::logic_error(&v45, &v40);
    v47 = 0;
    v48 = 0;
    v49 = 0;
    v50 = -1;
    v45.__vftable = &unk_1F5991430;
    v46 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v45);
    v57 = "virtual void AMCP::DAL::PCM_Data_Handler::mix(Sample_Time_Range, Container, Sample_Time, DAL_Operation_Context_Ref) const";
    v58 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/PCM_Data_Handler.cpp";
    v59 = 385;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(v43);
  }

  v8 = *a2;
  if (!*a2 || (*(v8 + 4) == 1819304813 ? (v9 = (*(v8 + 5) & 0x40) == 0) : (v9 = 0), !v9))
  {
    v31 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v31 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v8);
    }

    v33 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v32 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v32)
    {
      atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
      v34 = *v33;
      std::__shared_weak_count::__release_shared[abi:ne200100](v32);
    }

    else
    {
      v34 = *v33;
    }

    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v52 = "PCM_Data_Handler.cpp";
      v53 = 1024;
      v54 = 386;
      v55 = 2080;
      v56 = "not (dest_container.get_format().IsMixable())";
      _os_log_error_impl(&dword_1DE1F9000, v34, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Format is not mixable", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v39);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("Format is not mixable", &v44);
    std::logic_error::logic_error(&v40, &v44);
    v40.__r_.__value_.__r.__words[0] = MEMORY[0x1E69E55A8] + 16;
    std::logic_error::logic_error(&v45, &v40);
    v47 = 0;
    v48 = 0;
    v49 = 0;
    v50 = -1;
    v45.__vftable = &unk_1F5991430;
    v46 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v45);
    v57 = "virtual void AMCP::DAL::PCM_Data_Handler::mix(Sample_Time_Range, Container, Sample_Time, DAL_Operation_Context_Ref) const";
    v58 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/PCM_Data_Handler.cpp";
    v59 = 386;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(v43);
  }

  if ((~v6 & 9) != 0)
  {
    v10 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v10 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v8);
    }

    v12 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v11 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      v13 = *v12;
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }

    else
    {
      v13 = *v12;
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v52 = "PCM_Data_Handler.cpp";
      v53 = 1024;
      v54 = 387;
      v55 = 2080;
      v56 = "not ((get_format().mFormatFlags & kAudioFormatFlagIsFloat) and (get_format().mFormatFlags & kAudioFormatFlagIsPacked))";
      _os_log_error_impl(&dword_1DE1F9000, v13, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s We only support mixing 32bit float format samples", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v39);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("We only support mixing 32bit float format samples", &v44);
    std::logic_error::logic_error(&v40, &v44);
    v40.__r_.__value_.__r.__words[0] = MEMORY[0x1E69E55A8] + 16;
    std::logic_error::logic_error(&v45, &v40);
    v47 = 0;
    v48 = 0;
    v49 = 0;
    v50 = -1;
    v45.__vftable = &unk_1F5991430;
    v46 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v45);
    v57 = "virtual void AMCP::DAL::PCM_Data_Handler::mix(Sample_Time_Range, Container, Sample_Time, DAL_Operation_Context_Ref) const";
    v58 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/PCM_Data_Handler.cpp";
    v59 = 387;
    std::vector<void *>::vector[abi:ne200100](v43);
  }

  v17 = AMCP::DAL::Container::get_container_data_ptr<AMCP::DAL::PCM_Data_Handler>(v8);
  length_in_frames = AMCP::DAL::PCM_Data_Handler::get_length_in_frames(v17);
  if (round(a3 + length_in_frames - a5) < round(a4))
  {
    a4 = a3 + length_in_frames - a5;
  }

  if (round(a3) < round(a4))
  {
    AMCP::DAL::PCM_Data_Handler::get_container_data(&v44, a1, a3, a4);
    v19 = *a2;
    AMCP::DAL::Container::get_container_data_ptr<AMCP::DAL::PCM_Data_Handler>(v19);
    AMCP::DAL::PCM_Data_Handler::get_other_data<float>(v43, v19, a5, length_in_frames);
    if ((*(a1 + 20) & 0x20) != 0)
    {
      v21 = 1;
    }

    else
    {
      v21 = *(a1 + 9);
    }

    v22 = v44.__r_.__value_.__l.__size_ - v44.__r_.__value_.__r.__words[0];
    if (v44.__r_.__value_.__l.__size_ - v44.__r_.__value_.__r.__words[0] != v43[1] - v43[0])
    {
      v35 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v35 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v20);
      }

      v37 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v36 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v36)
      {
        atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
        v38 = *v37;
        std::__shared_weak_count::__release_shared[abi:ne200100](v36);
      }

      else
      {
        v38 = *v37;
      }

      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v52 = "PCM_Data_Handler.cpp";
        v53 = 1024;
        v54 = 399;
        v55 = 2080;
        v56 = "not (source.size() == dest.size())";
        _os_log_error_impl(&dword_1DE1F9000, v38, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
      }

      AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v42);
      __cxa_allocate_exception(0x40uLL);
      caulk::make_string("", &v40);
      std::logic_error::logic_error(&v41, &v40);
      v41.__vftable = (MEMORY[0x1E69E55A8] + 16);
      std::logic_error::logic_error(&v45, &v41);
      v47 = 0;
      v48 = 0;
      v49 = 0;
      v50 = -1;
      v45.__vftable = &unk_1F5991430;
      v46 = &unk_1F5991458;
      boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v45);
      v57 = "virtual void AMCP::DAL::PCM_Data_Handler::mix(Sample_Time_Range, Container, Sample_Time, DAL_Operation_Context_Ref) const";
      v58 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/PCM_Data_Handler.cpp";
      v59 = 399;
      applesauce::backtrace::snapshot_N<64>::snapshot_N(&v39);
    }

    if (v44.__r_.__value_.__l.__size_ != v44.__r_.__value_.__r.__words[0])
    {
      v23 = 0;
      v24 = v21 * vcvtmd_s64_f64(a4 - a3);
      if ((v22 >> 4) <= 1)
      {
        v25 = 1;
      }

      else
      {
        v25 = v22 >> 4;
      }

      do
      {
        MEMORY[0x1E12C2930](*(v43[0] + v23), 1, *(v44.__r_.__value_.__r.__words[0] + v23), 1, *(v43[0] + v23), 1, v24);
        v23 += 16;
        --v25;
      }

      while (v25);
    }

    std::vector<AMCP::DAL::Audio_Samples<float>,caulk::rt_allocator<AMCP::DAL::Audio_Samples<float>>>::__destroy_vector::operator()[abi:ne200100](v43);
    std::vector<AMCP::DAL::Audio_Samples<float>,caulk::rt_allocator<AMCP::DAL::Audio_Samples<float>>>::__destroy_vector::operator()[abi:ne200100](&v44);
  }

  v26 = *MEMORY[0x1E69E9840];
}

void AMCP::DAL::PCM_Data_Handler::get_other_data<float>(caulk::rt_safe_memory_resource *a1, uint64_t **this, double a3, double a4)
{
  length_in_frames = AMCP::DAL::PCM_Data_Handler::get_length_in_frames(this);
  v9 = round(length_in_frames);
  if (v9 <= 0.0)
  {
    goto LABEL_26;
  }

  v10 = round(a3);
  v11 = round(a4);
  v12 = v10;
  v13 = v11;
  if (v10 < v11)
  {
    v14 = 0.0;
    if (v10 > 0.0)
    {
      v14 = a3;
    }

    if (v11 >= v9)
    {
      v15 = length_in_frames;
    }

    else
    {
      v15 = a4;
    }

    v13 = round(v15);
    v12 = round(v14);
  }

  if (v12 >= v13)
  {
LABEL_26:
    *a1 = 0;
    *(a1 + 1) = 0;
    *(a1 + 2) = 0;
  }

  else
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    *(a1 + 2) = 0;
    v16 = this[7];
    v17 = this[8];
    if (v16 != v17)
    {
      v18 = v10 >= v11;
      v19 = v10 > 0.0 || v10 >= v11;
      v20 = 0.0;
      if (v19)
      {
        v20 = a3;
      }

      if (v11 < v9)
      {
        v18 = 1;
      }

      if (v18)
      {
        length_in_frames = a4;
      }

      v21 = vcvtmd_s64_f64(v20);
      v22 = vcvtmd_s64_f64(length_in_frames - v20);
      do
      {
        if ((*(this + 20) & 0x20) != 0)
        {
          v23 = 1;
        }

        else
        {
          v23 = *(this + 9);
        }

        v24 = *v16;
        v16 += 3;
        *&v25 = v24 + (*(this + 8) * v21);
        *(&v25 + 1) = v23 * v22;
        caulk::rt::vector<AMCP::DAL::Audio_Samples<float>>::emplace_back<AMCP::DAL::Audio_Samples<float>>(a1, &v25);
      }

      while (v16 != v17);
    }
  }
}

void AMCP::DAL::PCM_Data_Handler::copy(AMCP::DAL::PCM_Data_Handler *a1, double *a2, uint64_t *a3, uint64_t a4, double a5)
{
  v57 = *MEMORY[0x1E69E9840];
  v9 = *a3;
  AMCP::DAL::Container::get_container_data_ptr<AMCP::DAL::PCM_Data_Handler>(*a3);
  v10 = *(a4 + 8);
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (round(AMCP::DAL::PCM_Data_Handler::get_length_in_frames(v9)) <= 0.0)
  {
    v23 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v23 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v11);
    }

    v25 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v24 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v24)
    {
      atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
      v26 = *v25;
      std::__shared_weak_count::__release_shared[abi:ne200100](v24);
    }

    else
    {
      v26 = *v25;
    }

    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v48 = "PCM_Data_Handler.cpp";
      v49 = 1024;
      v50 = 307;
      v51 = 2080;
      v52 = "not (dest_handler->get_length_in_frames() > 0_S)";
      _os_log_error_impl(&dword_1DE1F9000, v26, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v35);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("", &v38);
    std::logic_error::logic_error(&v36, &v38);
    v36.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v40, &v36);
    v42 = 0;
    v43 = 0;
    v44 = 0;
    v45 = -1;
    v40.__vftable = &unk_1F5991430;
    v41 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v40);
    *&v54[2] = "void AMCP::DAL::PCM_Data_Handler::copy_data(const Sample_Time_Range &, PCM_Data_Handler *, Sample_Time, DAL_Operation_Context_Ref) const";
    v55 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/PCM_Data_Handler.cpp";
    v56[0] = 307;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v37);
  }

  length_in_frames = AMCP::DAL::PCM_Data_Handler::get_length_in_frames(v9);
  AMCP::DAL::PCM_Data_Handler::get_container_data(&v36, a1, *a2, a2[1]);
  if (v36.__vftable == v36.__imp_.__imp_)
  {
    v27 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v27 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v13);
    }

    v29 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v28 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v28)
    {
      atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
      v30 = *v29;
      std::__shared_weak_count::__release_shared[abi:ne200100](v28);
    }

    else
    {
      v30 = *v29;
    }

    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v48 = "PCM_Data_Handler.cpp";
      v49 = 1024;
      v50 = 311;
      v51 = 2080;
      v52 = "not (not source.empty())";
      _os_log_error_impl(&dword_1DE1F9000, v30, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v39);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("", &v38);
    std::logic_error::logic_error(&v35, &v38);
    v35.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v40, &v35);
    v42 = 0;
    v43 = 0;
    v44 = 0;
    v45 = -1;
    v40.__vftable = &unk_1F5991430;
    v41 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v40);
    *&v54[2] = "void AMCP::DAL::PCM_Data_Handler::copy_data(const Sample_Time_Range &, PCM_Data_Handler *, Sample_Time, DAL_Operation_Context_Ref) const";
    v55 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/PCM_Data_Handler.cpp";
    v56[0] = 311;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v37);
  }

  AMCP::DAL::PCM_Data_Handler::get_other_data<float>(&v35, v9, a5, length_in_frames);
  v16 = v36.__vftable;
  imp = v36.__imp_.__imp_;
  v17 = v35.__vftable;
  if (v36.__imp_.__imp_ - v36.__vftable != v35.__imp_.__imp_ - v35.__vftable)
  {
    v31 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v31 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v14);
    }

    v33 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v32 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v32)
    {
      atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
      v34 = *v33;
      std::__shared_weak_count::__release_shared[abi:ne200100](v32);
    }

    else
    {
      v34 = *v33;
    }

    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      v48 = "PCM_Data_Handler.cpp";
      v49 = 1024;
      v50 = 324;
      v51 = 2080;
      v52 = "not (source.size() == destination.size())";
      v53 = 2080;
      *v54 = "static void AMCP::DAL::PCM_Data_Handler::copy_samples(const Sample_Group<T> &, Sample_Group<T> &, const CA::StreamDescription &) [T = float]";
      *&v54[8] = 2048;
      v55 = (v36.__imp_.__imp_ - v36.__vftable) >> 4;
      LOWORD(v56[0]) = 2048;
      *(v56 + 2) = (v35.__imp_.__imp_ - v35.__vftable) >> 4;
      _os_log_error_impl(&dword_1DE1F9000, v34, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s %s: sample layout does not match (source=%zu streams, dest=%zu streams)!", buf, 0x3Au);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v46);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("%s: sample layout does not match (source=%zu streams, dest=%zu streams)!", &v38, "static void AMCP::DAL::PCM_Data_Handler::copy_samples(const Sample_Group<T> &, Sample_Group<T> &, const CA::StreamDescription &) [T = float]", (v36.__imp_.__imp_ - v36.__vftable) >> 4, (v35.__imp_.__imp_ - v35.__vftable) >> 4);
    std::logic_error::logic_error(&v39, &v38);
    v39.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v40, &v39);
    v42 = 0;
    v43 = 0;
    v44 = 0;
    v45 = -1;
    v40.__vftable = &unk_1F5991430;
    v41 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v40);
    *&v54[2] = "static void AMCP::DAL::PCM_Data_Handler::copy_samples(const Sample_Group<T> &, Sample_Group<T> &, const CA::StreamDescription &) [T = float]";
    v55 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/PCM_Data_Handler.cpp";
    v56[0] = 324;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v37);
  }

  while (v16 != imp && v17 != v35.__imp_.__imp_)
  {
    v18 = v17->~logic_error_0;
    if (v18 >= v16->~logic_error_0)
    {
      v18 = v16->~logic_error_0;
    }

    if (v18)
    {
      v19 = *(a1 + 8) * v18;
      if ((*(a1 + 5) & 0x20) != 0)
      {
        v20 = 1;
      }

      else
      {
        v20 = *(a1 + 9);
      }

      memcpy(v17->~logic_error, v16->~logic_error, v19 / v20);
      imp = v36.__imp_.__imp_;
    }

    v16 = (v16 + 16);
    v17 = (v17 + 16);
  }

  std::vector<AMCP::DAL::Audio_Samples<float>,caulk::rt_allocator<AMCP::DAL::Audio_Samples<float>>>::__destroy_vector::operator()[abi:ne200100](&v35);
  std::vector<AMCP::DAL::Audio_Samples<float>,caulk::rt_allocator<AMCP::DAL::Audio_Samples<float>>>::__destroy_vector::operator()[abi:ne200100](&v36);
  if (v10)
  {
    v21 = *MEMORY[0x1E69E9840];

    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  else
  {
    v22 = *MEMORY[0x1E69E9840];
  }
}

void sub_1DE578FEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, char a32, uint64_t a33, char a34)
{
  std::vector<AMCP::DAL::Audio_Samples<float>,caulk::rt_allocator<AMCP::DAL::Audio_Samples<float>>>::__destroy_vector::operator()[abi:ne200100](&a16);
  if (v34)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v34);
  }

  _Unwind_Resume(a1);
}

caulk::rt_safe_memory_resource *AMCP::DAL::PCM_Data_Handler::get_audio_buffer_list@<X0>(uint64_t *a1@<X1>, caulk::rt_safe_memory_resource **a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v8 = *a1;
  AMCP::DAL::Container::get_container_data_ptr<AMCP::DAL::PCM_Data_Handler>(*a1);
  AMCP::DAL::PCM_Data_Handler::get_other_data<float>(v15, v8, a3, a4);
  v9 = *a1;
  if (*a1)
  {
    v10 = *(v9 + 24);
    v12 = *(v9 + 8);
    v13 = v10;
    v14 = *(v9 + 40);
  }

  else
  {
    v14 = 0;
    v12 = 0u;
    v13 = 0u;
  }

  AMCP::DAL::create_abl(a2, v15, &v12);
  return std::vector<AMCP::DAL::Audio_Samples<float>,caulk::rt_allocator<AMCP::DAL::Audio_Samples<float>>>::__destroy_vector::operator()[abi:ne200100](v15);
}

uint64_t AMCP::DAL::create_abl(caulk::rt_safe_memory_resource **a1, void *a2, uint64_t a3)
{
  v17[4] = *MEMORY[0x1E69E9840];
  v6 = AMCP::Utility::AudioBufferList_Create(((a2[1] - *a2) >> 4));
  v17[0] = &unk_1F59915B8;
  v17[3] = v17;
  *a1 = v6;
  std::__function::__value_func<void ()(AudioBufferList *)>::__value_func[abi:ne200100]((a1 + 1), v17);
  result = std::__function::__value_func<void ()(AudioBufferList *)>::~__value_func[abi:ne200100](v17);
  v8 = a2[1] - *a2;
  if (v8)
  {
    v9 = v8 >> 4;
    v10 = *(a3 + 24);
    LODWORD(v11) = *(a3 + 28);
    if (v9 <= 1)
    {
      v9 = 1;
    }

    if ((*(a3 + 12) & 0x20) != 0)
    {
      v11 = 1;
    }

    else
    {
      v11 = v11;
    }

    v12 = (*a1 + 16);
    v13 = (*a2 + 8);
    do
    {
      v14 = *(v13 - 1);
      v15 = v10 * (*v13 / v11);
      *(v12 - 2) = v11;
      *(v12 - 1) = v15;
      *v12 = v14;
      v12 += 2;
      v13 += 2;
      --v9;
    }

    while (v9);
  }

  v16 = *MEMORY[0x1E69E9840];
  return result;
}

caulk::rt_safe_memory_resource *AMCP::DAL::PCM_Data_Handler::get_audio_buffer_list@<X0>(uint64_t *a1@<X1>, caulk::rt_safe_memory_resource **a2@<X8>)
{
  v4 = *a1;
  AMCP::DAL::Container::get_container_data_ptr<AMCP::DAL::PCM_Data_Handler>(*a1);
  AMCP::DAL::sample_group_from_samples<float>(v11, (v4 + 56));
  v5 = *a1;
  if (*a1)
  {
    v6 = *(v5 + 24);
    v8 = *(v5 + 8);
    v9 = v6;
    v10 = *(v5 + 40);
  }

  else
  {
    v10 = 0;
    v8 = 0u;
    v9 = 0u;
  }

  AMCP::DAL::create_abl(a2, v11, &v8);
  return std::vector<AMCP::DAL::Audio_Samples<float>,caulk::rt_allocator<AMCP::DAL::Audio_Samples<float>>>::__destroy_vector::operator()[abi:ne200100](v11);
}

caulk::rt_safe_memory_resource *AMCP::DAL::sample_group_from_samples<float>(caulk::rt_safe_memory_resource *result, uint64_t **a2)
{
  v2 = result;
  *result = 0;
  *(result + 1) = 0;
  *(result + 2) = 0;
  v3 = *a2;
  v4 = a2[1];
  if (v4 != *a2)
  {
    v5 = 0xAAAAAAAAAAAAAAABLL * (v4 - *a2);
    if (v5 >> 60)
    {
      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    v19 = v2;
    v7 = std::allocator_traits<caulk::rt_allocator<AMCP::DAL::Audio_Samples<unsigned char>>>::allocate_at_least[abi:ne200100]<caulk::rt_allocator<AMCP::DAL::Audio_Samples<unsigned char>>>(v5);
    v9 = v7 + 16 * v8;
    v10 = *(v2 + 1) - *v2;
    v11 = v7 - v10;
    memcpy((v7 - v10), *v2, v10);
    v12 = *v2;
    *v2 = v11;
    *(v2 + 1) = v7;
    v13 = *(v2 + 2);
    *(v2 + 2) = v9;
    v17 = v12;
    v18 = v13;
    *&v16 = v12;
    *(&v16 + 1) = v12;
    result = std::__split_buffer<AMCP::DAL::Audio_Samples<unsigned char>,caulk::rt_allocator<AMCP::DAL::Audio_Samples<unsigned char>> &>::~__split_buffer(&v16);
    v3 = *a2;
    v4 = a2[1];
  }

  while (v3 != v4)
  {
    v14 = *v3;
    v15 = v3[1];
    v3 += 3;
    *&v16 = v14;
    *(&v16 + 1) = v15 >> 2;
    result = caulk::rt::vector<AMCP::DAL::Audio_Samples<float>>::emplace_back<AMCP::DAL::Audio_Samples<float>>(v2, &v16);
  }

  return result;
}

void AMCP::DAL::PCM_Data_Handler::adopt(void *a1, uint64_t *a2)
{
  v7 = a1[7];
  v5 = a1[8];
  v6 = a1 + 7;
  while (v5 != v7)
  {
    AMCP::DAL::Audio_Samples_Data::~Audio_Samples_Data((v5 - 24));
  }

  a1[8] = v7;
  v18[0] = a2;
  v18[1] = 0;
  v8 = *a2;
  if (*a2 < 0)
  {
    std::terminate();
  }

  v17[0] = a2;
  v17[1] = v8;
  v9 = a1[9];
  if (v7 >= v9)
  {
    v11 = 0xAAAAAAAAAAAAAAABLL * ((v7 - *v6) >> 3);
    if (v11 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    v12 = 0xAAAAAAAAAAAAAAABLL * ((v9 - *v6) >> 3);
    v13 = 2 * v12;
    if (2 * v12 <= v11 + 1)
    {
      v13 = v11 + 1;
    }

    if (v12 >= 0x555555555555555)
    {
      v14 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v14 = v13;
    }

    v19[4] = v6;
    if (v14)
    {
      v14 = std::allocator_traits<caulk::rt_allocator<AMCP::DAL::Audio_Samples_Data>>::allocate_at_least[abi:ne200100]<caulk::rt_allocator<AMCP::DAL::Audio_Samples_Data>>(v14);
    }

    else
    {
      v15 = 0;
    }

    v16 = v14 + 24 * v11;
    v19[0] = v14;
    v19[1] = v16;
    v19[3] = v14 + 24 * v15;
    AMCP::DAL::Audio_Samples_Data::Audio_Samples_Data<gsl::details::span_iterator<gsl::span<std::byte,-1l>,false>>(v16, v18, v17);
    v19[2] = v16 + 24;
    std::vector<AMCP::DAL::Audio_Samples_Data,caulk::rt_allocator<AMCP::DAL::Audio_Samples_Data>>::__swap_out_circular_buffer(v6, v19);
    v10 = a1[8];
    std::__split_buffer<AMCP::DAL::Audio_Samples_Data,caulk::rt_allocator<AMCP::DAL::Audio_Samples_Data> &>::~__split_buffer(v19);
  }

  else
  {
    AMCP::DAL::Audio_Samples_Data::Audio_Samples_Data<gsl::details::span_iterator<gsl::span<std::byte,-1l>,false>>(v7, v18, v17);
    v10 = v7 + 24;
  }

  a1[8] = v10;
}

BOOL AMCP::DAL::PCM_Data_Handler::dal_operation_is_supported(uint64_t a1, uint64_t *a2)
{
  v2 = *(a2 + 23);
  if (v2 < 0)
  {
    if (a2[1] != 3)
    {
      return 1;
    }

    a2 = *a2;
  }

  else if (v2 != 3)
  {
    return 1;
  }

  if (*a2 != 26989 || *(a2 + 2) != 120)
  {
    return 1;
  }

  return *(a1 + 16) == 1819304813 && (*(a1 + 20) & 0x40) == 0;
}

void AMCP::DAL::PCM_Data_Handler::~PCM_Data_Handler(AMCP::DAL::PCM_Data_Handler *this)
{
  *this = &unk_1F597A1D0;
  v1 = (this + 56);
  std::vector<AMCP::DAL::Audio_Samples_Data,caulk::rt_allocator<AMCP::DAL::Audio_Samples_Data>>::__destroy_vector::operator()[abi:ne200100](&v1);

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F597A1D0;
  v1 = (this + 56);
  std::vector<AMCP::DAL::Audio_Samples_Data,caulk::rt_allocator<AMCP::DAL::Audio_Samples_Data>>::__destroy_vector::operator()[abi:ne200100](&v1);
}

uint64_t AMCP::DAL::PCM_Data_Handler::get_other_data_bytes(AMCP::Log::AMCP_Scope_Registry *a1, double a2, double a3)
{
  v32 = *MEMORY[0x1E69E9840];
  if (round(a2) >= round(a3))
  {
    v10 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v10 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(a1);
    }

    v12 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v11 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      v13 = *v12;
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }

    else
    {
      v13 = *v12;
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "PCM_Data_Handler.cpp";
      v25 = 1024;
      v26 = 178;
      v27 = 2080;
      v28 = "not (range.end() > range.start())";
      _os_log_error_impl(&dword_1DE1F9000, v13, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v23);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("", &v15);
    std::logic_error::logic_error(&v16, &v15);
    v16.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v17, &v16);
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = -1;
    v17.__vftable = &unk_1F5991430;
    v18 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v17);
    v29 = "static gsl::span<std::byte> AMCP::DAL::PCM_Data_Handler::get_other_data_bytes(const Container &, Sample_Time_Range)";
    v30 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/PCM_Data_Handler.cpp";
    v31 = 178;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v14);
  }

  AMCP::DAL::Container::get_container_data_ptr<AMCP::DAL::PCM_Data_Handler>(a1);
  AMCP::DAL::PCM_Data_Handler::get_other_data<float>(buf, a1, a2, a3);
  v6 = *(a1 + 8) * vcvtmd_s64_f64(a3 - a2);
  if (v6)
  {
    v7 = **buf == 0;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    std::terminate();
  }

  std::vector<AMCP::DAL::Audio_Samples<float>,caulk::rt_allocator<AMCP::DAL::Audio_Samples<float>>>::__destroy_vector::operator()[abi:ne200100](buf);
  v8 = *MEMORY[0x1E69E9840];
  return v6;
}

void sub_1DE579A64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25, uint64_t a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::~clone_impl(v28 - 128);
  boost::exception_detail::error_info_injector<std::domain_error>::~error_info_injector(&a27);
  MEMORY[0x1E12C0F00](&a25);
  if (a24 < 0)
  {
    operator delete(a19);
  }

  if (a11)
  {
    __cxa_free_exception(v27);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v28 - 129));
  _Unwind_Resume(a1);
}

void non-virtual thunk toAMCP::ASP::Driver::~Driver(AMCP::ASP::Driver *this)
{
  AMCP::ASP::Driver::~Driver((this - 24));

  JUMPOUT(0x1E12C1730);
}

{
  AMCP::ASP::Driver::~Driver((this - 24));
}

void AMCP::ASP::Driver::~Driver(AMCP::ASP::Driver *this)
{
  *this = &unk_1F597A340;
  *(this + 3) = &unk_1F597A368;
  v2 = *(this + 34);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(this + 32);
  *(this + 32) = 0;
  if (v3)
  {
    MEMORY[0x1E12C1730](v3, 0xA0C40CE99C112);
  }

  std::condition_variable::~condition_variable((this + 200));
  std::condition_variable::~condition_variable((this + 152));
  std::mutex::~mutex((this + 88));
  boost::container::vector<boost::container::dtl::pair<unsigned int,std::shared_ptr<AMCP::ASP::PlugIn_Object>>,boost::container::new_allocator<boost::container::dtl::pair<unsigned int,std::shared_ptr<AMCP::ASP::PlugIn_Object>>>,void>::~vector(this + 8);
  v4 = *(this + 7);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  *(this + 3) = &unk_1F59748E8;
  v5 = *(this + 5);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = *(this + 2);
  if (v6)
  {
    std::__shared_weak_count::__release_weak(v6);
  }
}

{
  AMCP::ASP::Driver::~Driver(this);

  JUMPOUT(0x1E12C1730);
}

void *boost::container::vector<boost::container::dtl::pair<unsigned int,std::shared_ptr<AMCP::ASP::PlugIn_Object>>,boost::container::new_allocator<boost::container::dtl::pair<unsigned int,std::shared_ptr<AMCP::ASP::PlugIn_Object>>>,void>::~vector(void *a1)
{
  v2 = a1[1];
  if (v2)
  {
    v3 = (*a1 + 16);
    do
    {
      if (*v3)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*v3);
      }

      v3 += 3;
      --v2;
    }

    while (v2);
  }

  if (a1[2])
  {
    operator delete(*a1);
  }

  return a1;
}

void AMCP::ASP::Driver::shutdown(AMCP::ASP::Driver *this)
{
  v1 = this;
  v33 = *MEMORY[0x1E69E9840];
  v2 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v2 & 1) == 0)
  {
    this = AMCP::Log::AMCP_Scope_Registry::initialize(this);
  }

  v3 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v4 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = *(v3 + 16);
  if (v5 == 3)
  {
    v14 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v14 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(this);
    }

    v16 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v15 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      v17 = *v16;
      std::__shared_weak_count::__release_shared[abi:ne200100](v15);
    }

    else
    {
      v17 = *v16;
    }

    if (!os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      goto LABEL_52;
    }

    mcp_applesauce::CF::PlugInRef_proxy::get_bundle(&v24, **(v1 + 6));
    mcp_applesauce::CF::BundleRef_proxy::get_bundle_id(&cf, v24);
    if (cf)
    {
      applesauce::CF::convert_to<std::string,0>(__p, cf);
      if (v27 >= 0)
      {
        v19 = __p;
      }

      else
      {
        v19 = __p[0];
      }

      *buf = 136315650;
      *&buf[4] = "ASP_Driver.cpp";
      v29 = 1024;
      v30 = 128;
      v31 = 2080;
      v32 = v19;
      _os_log_impl(&dword_1DE1F9000, v17, OS_LOG_TYPE_INFO, "%32s:%-5d Tearing down plug-in %s", buf, 0x1Cu);
      if (v27 < 0)
      {
        operator delete(__p[0]);
      }

      if (cf)
      {
        CFRelease(cf);
      }

      v20 = v24;
      if (v24)
      {
        goto LABEL_51;
      }

      goto LABEL_52;
    }

LABEL_55:
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  if (v5 == 2)
  {
    v10 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v10 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(this);
    }

    v12 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v11 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      v13 = *v12;
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }

    else
    {
      v13 = *v12;
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      mcp_applesauce::CF::PlugInRef_proxy::get_bundle(&v24, **(v1 + 6));
      mcp_applesauce::CF::BundleRef_proxy::get_bundle_id(&cf, v24);
      applesauce::CF::StringRef_proxy::StringRef_proxy(buf, &cf);
      applesauce::CF::convert_to<std::string,0>(__p, **buf);
      if (v27 >= 0)
      {
        v18 = __p;
      }

      else
      {
        v18 = __p[0];
      }

      *buf = 136315650;
      *&buf[4] = "ASP_Driver.cpp";
      v29 = 1024;
      v30 = 128;
      v31 = 2080;
      v32 = v18;
      _os_log_debug_impl(&dword_1DE1F9000, v13, OS_LOG_TYPE_DEBUG, "%32s:%-5d Tearing down plug-in %s", buf, 0x1Cu);
      if (v27 < 0)
      {
        operator delete(__p[0]);
      }

      applesauce::CF::StringRef::~StringRef(&cf);
      mcp_applesauce::CF::BasicRef<mcp_applesauce::CF::BundleRef_Traits>::~BasicRef(&v24);
    }

    goto LABEL_52;
  }

  if (v5 != 1)
  {
    goto LABEL_52;
  }

  v6 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v6 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(this);
  }

  v8 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v7 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    v9 = *v8;
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  else
  {
    v9 = *v8;
  }

  if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_52;
  }

  mcp_applesauce::CF::PlugInRef_proxy::get_bundle(&v24, **(v1 + 6));
  mcp_applesauce::CF::BundleRef_proxy::get_bundle_id(&cf, v24);
  if (!cf)
  {
    goto LABEL_55;
  }

  applesauce::CF::convert_to<std::string,0>(__p, cf);
  if (v27 >= 0)
  {
    v21 = __p;
  }

  else
  {
    v21 = __p[0];
  }

  *buf = 136315650;
  *&buf[4] = "ASP_Driver.cpp";
  v29 = 1024;
  v30 = 128;
  v31 = 2080;
  v32 = v21;
  _os_log_impl(&dword_1DE1F9000, v9, OS_LOG_TYPE_DEFAULT, "%32s:%-5d Tearing down plug-in %s", buf, 0x1Cu);
  if (v27 < 0)
  {
    operator delete(__p[0]);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  v20 = v24;
  if (v24)
  {
LABEL_51:
    CFRelease(v20);
  }

LABEL_52:
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v22 = *MEMORY[0x1E69E9840];
}

void sub_1DE57A0C0(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __cxa_free_exception(v2);
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *applesauce::CF::StringRef_proxy::StringRef_proxy(void *this, const applesauce::CF::StringRef *a2)
{
  *this = a2;
  if (!*a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  return this;
}

uint64_t AMCP::ASP::Host_Interface::request_device_configuration_change(AMCP::ASP::Host_Interface *this, const AudioServerPlugInHostInterface *a2, unsigned int a3, unint64_t a4, void *a5)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = *(this + 5);
  AMCP::ASP::Driver::get_plugin_object_for_driver_id(&v18, v5, a2);
  v6 = v18;
  if (v18 && AMCP::is_base_of(0x61636C6B, *(v18 + 68)))
  {
    AMCP::Core::Broker::fetch_core(&v16, *(*(v5 + 32) + 16), *(v6 + 60));
    if (v16)
    {
      std::shared_ptr<AMCP::IO_Core::IOContext_Core>::shared_ptr[abi:ne200100]<AMCP::IO_Core::IOContext_Core,0>(&lpsrc, *(v5 + 8), *(v5 + 16));
      {
        v14 = v8;
        v15 = v21;
        p_lpsrc = &lpsrc;
      }

      else
      {
        p_lpsrc = &v14;
      }

      *p_lpsrc = 0;
      p_lpsrc[1] = 0;
      if (v21)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v21);
      }

      v10 = *(*(v5 + 32) + 32);
      v11 = *(v5 + 280);
      if (v15)
      {
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v22 = 0;
      operator new();
    }

    if (v17)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v17);
    }
  }

  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  v12 = *MEMORY[0x1E69E9840];
  return 560227702;
}

void sub_1DE57A3A4(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void AMCP::ASP::Driver::get_plugin_object_for_driver_id(AMCP::ASP::Driver *this, uint64_t a2, unsigned int a3)
{
  v10 = a3;
  std::__shared_mutex_base::lock_shared((a2 + 88));
  boost::container::dtl::flat_tree<boost::container::dtl::pair<unsigned int,std::shared_ptr<AMCP::ASP::PlugIn_Object>>,boost::container::dtl::select1st<unsigned int>,std::less<unsigned int>,boost::container::new_allocator<boost::container::dtl::pair<unsigned int,std::shared_ptr<AMCP::ASP::PlugIn_Object>>>>::find(&v9, (a2 + 64), &v10);
  v5 = *(a2 + 64);
  v6 = *(a2 + 72);
  if (v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = v6 == 0;
  }

  if (!v7)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  if (v9 == v5 + 24 * v6)
  {
    *this = 0;
    *(this + 1) = 0;
  }

  else
  {
    v8 = *(v9 + 16);
    *this = *(v9 + 8);
    *(this + 1) = v8;
    if (v8)
    {
      atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
    }
  }

  std::__shared_mutex_base::unlock_shared((a2 + 88));
}

uint64_t std::__function::__func<AMCP::ASP::Driver::request_device_configuration_change(unsigned int,unsigned long long,void *)::$_0,std::allocator<AMCP::ASP::Driver::request_device_configuration_change(unsigned int,unsigned long long,void *)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3ASP6Driver35request_device_configuration_changeEjyPvE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::ASP::Driver::request_device_configuration_change(unsigned int,unsigned long long,void *)::$_0,std::allocator<AMCP::ASP::Driver::request_device_configuration_change(unsigned int,unsigned long long,void *)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  AMCP::ASP::Driver::get_plugin_object_for_driver_id(&v6, *(a1 + 8), *(a1 + 24));
  v2 = v6;
  if (v6 && AMCP::is_base_of(0x61636C6B, v6[17]))
  {
    kdebug_trace();
    v3 = *(v2 + 3);
    v4 = *(v2 + 4);
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
      AMCP::ASP::PlugIn::PerformDeviceConfigChange(v3, *(a1 + 24), *(a1 + 32), *(a1 + 40));
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    else
    {
      AMCP::ASP::PlugIn::PerformDeviceConfigChange(v3, *(a1 + 24), *(a1 + 32), *(a1 + 40));
    }

    kdebug_trace();
    AMCP::ASP::PlugIn_Object::update_core(v2);
    AMCP::ASP::Driver::update_owned_objects(*(a1 + 8), &v6);
  }

  v5 = v7;
  if (v7)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

void sub_1DE57A5C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::ASP::Driver::update_owned_objects(uint64_t a1, uint64_t a2)
{
  if (AMCP::is_base_of(0x61646576, *(*a2 + 68)))
  {
    AMCP::ASP::Driver::compute_new_dead_objects_kind(v7, a1, a2, 0x61737472, 0x73746D23u);
    AMCP::ASP::Driver::update_owned_object_kind(a1, a2, 1634956402, v7);
    if (__p)
    {
      operator delete(__p);
    }

    if (v7[0])
    {
      operator delete(v7[0]);
    }

    goto LABEL_8;
  }

  if (AMCP::is_base_of(0x61636C6B, *(*a2 + 68)) || AMCP::is_base_of(0x61626F78, *(*a2 + 68)))
  {
LABEL_8:
    AMCP::ASP::Driver::compute_new_dead_objects_kind(v7, a1, a2, 0x6163746C, 0x6374726Cu);
    v4 = a1;
    v5 = a2;
    v6 = 1633907820;
    goto LABEL_9;
  }

  if (!AMCP::is_base_of(0x61706C67, *(*a2 + 68)))
  {
    return;
  }

  AMCP::ASP::Driver::compute_new_dead_objects_kind(v7, a1, a2, 0x61626F78, 0x626F7823u);
  AMCP::ASP::Driver::update_owned_object_kind(a1, a2, 1633841016, v7);
  if (__p)
  {
    operator delete(__p);
  }

  if (v7[0])
  {
    operator delete(v7[0]);
  }

  AMCP::ASP::Driver::compute_new_dead_objects_kind(v7, a1, a2, 0x61636C6B, 0x636C6B23u);
  AMCP::ASP::Driver::update_owned_object_kind(a1, a2, 1633905771, v7);
  if (__p)
  {
    operator delete(__p);
  }

  if (v7[0])
  {
    operator delete(v7[0]);
  }

  AMCP::ASP::Driver::compute_new_dead_objects_kind(v7, a1, a2, 0x61646576, 0x64657623u);
  v4 = a1;
  v5 = a2;
  v6 = 1633969526;
LABEL_9:
  AMCP::ASP::Driver::update_owned_object_kind(v4, v5, v6, v7);
  if (__p)
  {
    operator delete(__p);
  }

  if (v7[0])
  {
    operator delete(v7[0]);
  }
}

void AMCP::ASP::Driver::compute_new_dead_objects_kind(uint64_t a1, uint64_t a2, uint64_t a3, AMCP *a4, AudioObjectPropertySelector a5)
{
  v10 = *(*a3 + 60);
  v33 = 0;
  v34 = 0;
  v32 = 0;
  std::__shared_mutex_base::lock_shared((a2 + 88));
  v12 = *(a2 + 64);
  v11 = *(a2 + 72);
  if (v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = v11 == 0;
  }

  if (!v13)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  if (v11)
  {
    v14 = 24 * v11;
    do
    {
      if (!v12)
      {
        __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
      }

      v15 = *(v12 + 8);
      if (*(v15 + 56) == v10 && AMCP::is_base_of(a4, *(v15 + 68)))
      {
        std::vector<unsigned int>::push_back[abi:ne200100](&v32, v12);
      }

      v12 += 24;
      v14 -= 24;
    }

    while (v14);
  }

  std::__shared_mutex_base::unlock_shared((a2 + 88));
  __dst[0] = 0;
  __dst[1] = 0;
  v31 = 0;
  if (a5 == 1937009955)
  {
    *&v29.mSelector = 0x696E707473746D23;
    v29.mElement = 0;
    AMCP::ASP::PlugIn::object_get_property_data<unsigned int [],unsigned int>(__p, *(a2 + 48), *(*a3 + 44), &v29);
    v16 = *&__p[1];
    v17 = *(*a3 + 44);
    v18 = *(a2 + 48);
    v29.mScope = 1869968496;
    AMCP::ASP::PlugIn::object_get_property_data<unsigned int [],unsigned int>(__p, v18, v17, &v29);
    v19 = *&__p[1];
    std::vector<unsigned int>::__insert_with_size[abi:ne200100]<std::__wrap_iter<unsigned int *>,std::__wrap_iter<unsigned int *>>(__dst, 0, v16, *(&v16 + 1), (*(&v16 + 1) - v16) >> 2);
    std::vector<unsigned int>::__insert_with_size[abi:ne200100]<std::__wrap_iter<unsigned int *>,std::__wrap_iter<unsigned int *>>(__dst, __dst[1], v19, *(&v19 + 1), (*(&v19 + 1) - v19) >> 2);
    if (v19)
    {
      operator delete(v19);
    }

    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    v29.mSelector = a5;
    *&v29.mScope = 1735159650;
    AMCP::ASP::PlugIn::object_get_property_data<unsigned int [],unsigned int>(__p, *(a2 + 48), *(*a3 + 44), &v29);
    *__dst = *&__p[1];
    v31 = __p[3];
  }

  v20 = v32;
  v21 = v33;
  std::__sort<std::__less<unsigned int,unsigned int> &,unsigned int *>();
  v22 = __dst[0];
  v23 = __dst[1];
  std::__sort<std::__less<unsigned int,unsigned int> &,unsigned int *>();
  v28 = 0;
  v27 = 0u;
  memset(__p, 0, sizeof(__p));
  v24 = v22;
  if (v20 != v21)
  {
    v25 = v20;
    v24 = v22;
    if (v22 != v23)
    {
      v24 = v22;
      v25 = v20;
      while (*v25 != *v24)
      {
        if (*v25 >= *v24)
        {
          std::vector<unsigned int>::push_back[abi:ne200100](&v27, v24);
          goto LABEL_27;
        }

        std::vector<unsigned int>::push_back[abi:ne200100](&__p[3], v25++);
LABEL_28:
        if (v25 == v21)
        {
          goto LABEL_31;
        }

        if (v24 == v23)
        {
          goto LABEL_30;
        }
      }

      std::vector<unsigned int>::push_back[abi:ne200100](__p, v25++);
LABEL_27:
      ++v24;
      goto LABEL_28;
    }

    do
    {
LABEL_30:
      std::vector<unsigned int>::push_back[abi:ne200100](&__p[3], v25++);
    }

    while (v25 != v21);
  }

LABEL_31:
  while (v24 != v23)
  {
    std::vector<unsigned int>::push_back[abi:ne200100](&v27, v24++);
  }

  *a1 = v27;
  *(a1 + 16) = v28;
  *(a1 + 24) = *&__p[3];
  *(a1 + 40) = __p[5];
  if (__p[0])
  {
    operator delete(__p[0]);
  }

  if (v22)
  {
    operator delete(v22);
  }

  if (v20)
  {
    operator delete(v20);
  }
}

void AMCP::ASP::Driver::update_owned_object_kind(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v46 = *MEMORY[0x1E69E9840];
  v7 = a4[3];
  v39 = a4[4];
  if (v7 != v39)
  {
    v8 = 0uLL;
    do
    {
      LODWORD(v42) = *v7;
      v43 = v8;
      v44 = v8;
      v45 = 1065353216;
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int const&>(&v43, v42);
      std::__shared_mutex_base::lock_shared((a1 + 88));
      do
      {
        v10 = *(a1 + 64);
        v9 = *(a1 + 72);
        if (v10)
        {
          v11 = 1;
        }

        else
        {
          v11 = v9 == 0;
        }

        if (!v11)
        {
          __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
        }

        if (!v9)
        {
          break;
        }

        v12 = 0;
        v13 = 24 * v9;
        do
        {
          if (!v10)
          {
            __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
          }

          v14 = *v10;
          if (!std::__hash_table<std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>>>::find<unsigned int>(&v43, *v10) && std::__hash_table<std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>>>::find<unsigned int>(&v43, *(*(v10 + 8) + 40)))
          {
            std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int const&>(&v43, v14);
            v12 = 1;
          }

          v10 += 24;
          v13 -= 24;
        }

        while (v13);
      }

      while ((v12 & 1) != 0);
      v41 = 0;
      v40 = 0uLL;
      v15 = 0;
      if (v44)
      {
        v16 = v44;
        do
        {
          ++v15;
          v16 = *v16;
        }

        while (v16);
      }

      std::vector<unsigned int>::__init_with_size[abi:ne200100]<std::__hash_const_iterator<std::__hash_node<unsigned int,void *> *>,std::__hash_const_iterator<std::__hash_node<unsigned int,void *> *>>(&v40, v44, v15);
      std::__shared_mutex_base::unlock_shared((a1 + 88));
      std::__hash_table<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>>>::~__hash_table(&v43);
      std::__shared_mutex_base::lock((a1 + 88));
      v17 = v40;
      if (v40 != *(&v40 + 1))
      {
        v18 = *(a1 + 72);
        v19 = v40;
        do
        {
          v20 = *(a1 + 64);
          if (v20)
          {
            v21 = 1;
          }

          else
          {
            v21 = v18 == 0;
          }

          if (!v21)
          {
            __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
          }

          if (v18)
          {
            v22 = *(a1 + 64);
            v23 = v18;
            do
            {
              if (v23 != 1 && !v22)
              {
                __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
              }

              if (!v22)
              {
                __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
              }

              v24 = v23 >> 1;
              v25 = &v22[6 * (v23 >> 1)];
              v27 = *v25;
              v26 = v25 + 6;
              v23 += ~(v23 >> 1);
              if (v27 >= *v19)
              {
                v23 = v24;
              }

              else
              {
                v22 = v26;
              }
            }

            while (v23);
          }

          else
          {
            v22 = *(a1 + 64);
          }

          v28 = (v20 + 24 * v18);
          if (v22 != v28)
          {
            if (!v22)
            {
              __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
            }

            if (*v19 < *v22)
            {
              v22 = (v20 + 24 * v18);
            }

            if (v22 != v28)
            {
              if (v20 > v22 || v22 >= v28)
              {
                __assert_rtn("erase", "vector.hpp", 2092, "this->priv_in_range(position)");
              }

              if (v22 + 6 != v28)
              {
                v30 = v22 + 8;
                do
                {
                  *(v30 - 8) = *(v30 - 2);
                  v31 = *v30;
                  *v30 = 0;
                  *(v30 + 1) = 0;
                  v32 = *(v30 - 2);
                  *(v30 - 6) = v31;
                  if (v32)
                  {
                    std::__shared_weak_count::__release_shared[abi:ne200100](v32);
                  }

                  v33 = v30 + 4;
                  v30 += 6;
                }

                while (v33 != v28);
              }

              v34 = *(v28 - 1);
              if (v34)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v34);
              }

              v18 = *(a1 + 72) - 1;
              *(a1 + 72) = v18;
            }
          }

          ++v19;
        }

        while (v19 != *(&v17 + 1));
      }

      std::__shared_mutex_base::unlock((a1 + 88));
      if (v17)
      {
        operator delete(v17);
      }

      ++v7;
      v8 = 0uLL;
    }

    while (v7 != v39);
  }

  if (*a4 != a4[1])
  {
    v35 = *(a1 + 32);
    if (*(&v35 + 1))
    {
      atomic_fetch_add_explicit((*(&v35 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v36 = *(*a2 + 60);
    v37 = *(*a2 + 44);
    operator new();
  }

  v38 = *MEMORY[0x1E69E9840];
}

void sub_1DE57B0C8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void boost::container::dtl::flat_tree<boost::container::dtl::pair<unsigned int,std::shared_ptr<AMCP::ASP::PlugIn_Object>>,boost::container::dtl::select1st<unsigned int>,std::less<unsigned int>,boost::container::new_allocator<boost::container::dtl::pair<unsigned int,std::shared_ptr<AMCP::ASP::PlugIn_Object>>>>::insert_unique(uint64_t a1, char *a2, uint64_t a3)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  v3 = *(a2 + 1);
  if (*a2)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3 == 0;
  }

  if (!v4)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  v8 = *a2 + 24 * v3;
  v22 = *a2;
  boost::container::dtl::flat_tree<boost::container::dtl::pair<unsigned int,std::shared_ptr<AMCP::ASP::PlugIn_Object>>,boost::container::dtl::select1st<unsigned int>,std::less<unsigned int>,boost::container::new_allocator<boost::container::dtl::pair<unsigned int,std::shared_ptr<AMCP::ASP::PlugIn_Object>>>>::priv_lower_bound<boost::container::vec_iterator<boost::container::dtl::pair<unsigned int,std::shared_ptr<AMCP::ASP::PlugIn_Object>>*,true>,unsigned int>(&v23, &v22, v8, *a3);
  v9 = v23;
  if (v23 == v8)
  {
    *(a1 + 8) = 1;
LABEL_13:
    v11 = *a2;
    if (*a2 > v9)
    {
      goto LABEL_29;
    }

    v12 = *(a2 + 1);
    if (!v11 && v12)
    {
      __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
    }

    v13 = v11 + 24 * v12;
    if (v9 > v13)
    {
LABEL_29:
      __assert_rtn("emplace", "vector.hpp", 1862, "this->priv_in_range_or_end(position)");
    }

    v14 = *(a2 + 2);
    if (v14 < v12)
    {
      __assert_rtn("priv_insert_forward_range", "vector.hpp", 2821, "this->m_holder.capacity() >= this->m_holder.m_size");
    }

    if (v14 == v12)
    {
      boost::container::vector<boost::container::dtl::pair<unsigned int,std::shared_ptr<AMCP::ASP::PlugIn_Object>>,boost::container::new_allocator<boost::container::dtl::pair<unsigned int,std::shared_ptr<AMCP::ASP::PlugIn_Object>>>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<boost::container::new_allocator<boost::container::dtl::pair<unsigned int,std::shared_ptr<AMCP::ASP::PlugIn_Object>>>,boost::container::dtl::pair<unsigned int,std::shared_ptr<AMCP::ASP::PlugIn_Object>>*,boost::container::dtl::pair<unsigned int,std::shared_ptr<AMCP::ASP::PlugIn_Object>>>>(&v23, a2, v9, a3);
      v9 = v23;
    }

    else if (v13 == v9)
    {
      *v13 = *a3;
      *(v13 + 8) = *(a3 + 8);
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
      ++*(a2 + 1);
    }

    else
    {
      v15 = (v13 - 24);
      *v13 = *(v13 - 24);
      *(v13 + 8) = *(v13 - 16);
      *(v13 - 16) = 0;
      *(v13 - 8) = 0;
      ++*(a2 + 1);
      if ((v13 - 24) != v9)
      {
        v16 = (v13 - 24);
        do
        {
          v17 = *(v16 - 6);
          v16 -= 6;
          *v15 = v17;
          v18 = *(v15 - 1);
          *(v15 - 2) = 0;
          *(v15 - 1) = 0;
          v19 = *(v15 + 2);
          *(v15 + 2) = v18;
          if (v19)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v19);
          }

          v15 = v16;
        }

        while (v16 != v9);
      }

      *v9 = *a3;
      v20 = *(a3 + 8);
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
      v21 = *(v9 + 2);
      *(v9 + 2) = v20;
      if (v21)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v21);
      }
    }

    goto LABEL_28;
  }

  if (!v23)
  {
    __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
  }

  v10 = *a3 >= *v23;
  *(a1 + 8) = *a3 < *v23;
  if (!v10)
  {
    goto LABEL_13;
  }

  if (!*a2)
  {
    __assert_rtn("operator+", "vector.hpp", 188, "x.m_ptr || !off");
  }

LABEL_28:
  *a1 = v9;
}

void boost::container::vector<boost::container::dtl::pair<unsigned int,std::shared_ptr<AMCP::ASP::PlugIn_Object>>,boost::container::new_allocator<boost::container::dtl::pair<unsigned int,std::shared_ptr<AMCP::ASP::PlugIn_Object>>>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<boost::container::new_allocator<boost::container::dtl::pair<unsigned int,std::shared_ptr<AMCP::ASP::PlugIn_Object>>>,boost::container::dtl::pair<unsigned int,std::shared_ptr<AMCP::ASP::PlugIn_Object>>*,boost::container::dtl::pair<unsigned int,std::shared_ptr<AMCP::ASP::PlugIn_Object>>>>(void *a1, char *a2, char *a3, uint64_t a4)
{
  v4 = *(a2 + 2);
  if (v4 != *(a2 + 1))
  {
    __assert_rtn("next_capacity", "vector.hpp", 473, "additional_objects > size_type(this->m_capacity - this->m_size)");
  }

  if (v4 == 0x555555555555555)
  {
    goto LABEL_30;
  }

  if (v4 >> 61 > 4)
  {
    v5 = -1;
  }

  else
  {
    v5 = 8 * v4;
  }

  if (v4 >> 61)
  {
    v6 = v5;
  }

  else
  {
    v6 = 8 * v4 / 5;
  }

  v7 = v4 + 1;
  if (v6 >= 0x555555555555555)
  {
    v6 = 0x555555555555555;
  }

  v8 = v7 > v6 ? v4 + 1 : v6;
  if (v7 > 0x555555555555555)
  {
LABEL_30:
    boost::container::throw_length_error("get_next_capacity, allocator's max size reached", a2);
  }

  v13 = *a2;
  v14 = operator new(24 * v8);
  v15 = v14;
  v16 = *a2;
  v17 = *a2 + 24 * *(a2 + 1);
  v18 = v14;
  if (*a2 != a3)
  {
    v19 = *a2;
    v18 = v14;
    do
    {
      *v18 = *v19;
      *(v18 + 8) = *(v19 + 8);
      *(v19 + 1) = 0;
      *(v19 + 2) = 0;
      v19 += 24;
      v18 += 24;
    }

    while (v19 != a3);
  }

  *v18 = *a4;
  *(v18 + 8) = *(a4 + 8);
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  if (v17 != a3)
  {
    v20 = v18 + 32;
    v21 = a3;
    do
    {
      *(v20 - 2) = *v21;
      *v20 = *(v21 + 8);
      v20 = (v20 + 24);
      *(v21 + 1) = 0;
      *(v21 + 2) = 0;
      v21 += 24;
    }

    while (v21 != v17);
  }

  if (v16)
  {
    v22 = *(a2 + 1);
    if (v22)
    {
      v23 = (v16 + 16);
      do
      {
        if (*v23)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*v23);
        }

        v23 += 3;
        --v22;
      }

      while (v22);
    }

    operator delete(*a2);
  }

  v24 = *(a2 + 1) + 1;
  *a2 = v15;
  *(a2 + 1) = v24;
  *(a2 + 2) = v8;
  *a1 = &v15[a3 - v13];
}

void *boost::container::dtl::flat_tree<boost::container::dtl::pair<unsigned int,std::shared_ptr<AMCP::ASP::PlugIn_Object>>,boost::container::dtl::select1st<unsigned int>,std::less<unsigned int>,boost::container::new_allocator<boost::container::dtl::pair<unsigned int,std::shared_ptr<AMCP::ASP::PlugIn_Object>>>>::priv_lower_bound<boost::container::vec_iterator<boost::container::dtl::pair<unsigned int,std::shared_ptr<AMCP::ASP::PlugIn_Object>>*,true>,unsigned int>(void *result, void *a2, uint64_t a3, unsigned int a4)
{
  v4 = *a2;
  if (*a2 != a3)
  {
    v5 = 0xAAAAAAAAAAAAAAABLL * ((a3 - v4) >> 3);
    do
    {
      if (v5 != 1 && !v4)
      {
        __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
      }

      if (!v4)
      {
        __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
      }

      v6 = v5 >> 1;
      v7 = &v4[6 * (v5 >> 1)];
      if (*v7 < a4)
      {
        v4 = v7 + 6;
        *a2 = v7 + 6;
        v6 = v5 + ~v6;
      }

      v5 = v6;
    }

    while (v6);
  }

  *result = v4;
  return result;
}

void std::__shared_ptr_emplace<AMCP::ASP::PlugIn_Object>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F597A410;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t std::vector<unsigned int>::__init_with_size[abi:ne200100]<std::__hash_const_iterator<std::__hash_node<unsigned int,void *> *>,std::__hash_const_iterator<std::__hash_node<unsigned int,void *> *>>(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (a3)
  {
    std::vector<unsigned int>::__vallocate[abi:ne200100](result, a3);
  }

  return result;
}

void sub_1DE57B758(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::ASP::PlugIn::object_get_property_data<unsigned int [],unsigned int>(uint64_t a1, AMCP::ASP::PlugIn *this, uint64_t a3, const AudioObjectPropertyAddress *a4)
{
  PropertyDataSize = AMCP::ASP::PlugIn::ObjectGetPropertyDataSize(this, a3, 0, a4, 0, 0);
  if (!(PropertyDataSize >> 34) || PropertyDataSize)
  {
    *a1 = PropertyDataSize;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 8) = 0;
  }

  else
  {
    std::vector<unsigned int>::vector[abi:ne200100](&__p, PropertyDataSize >> 34);
    *a1 = AMCP::ASP::PlugIn::ObjectGetPropertyData(this, a3, 0, a4, 0, 0, (v10 - __p) & 0xFFFFFFFC, __p);
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 8) = 0;
    std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(a1 + 8, __p, v10, (v10 - __p) >> 2);
    if (__p)
    {
      v10 = __p;
      operator delete(__p);
    }
  }
}

void std::__function::__func<AMCP::ASP::Driver::request_device_configuration_change(unsigned int,unsigned long long,void *)::$_0,std::allocator<AMCP::ASP::Driver::request_device_configuration_change(unsigned int,unsigned long long,void *)::$_0>,void ()(void)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<AMCP::ASP::Driver::request_device_configuration_change(unsigned int,unsigned long long,void *)::$_0,std::allocator<AMCP::ASP::Driver::request_device_configuration_change(unsigned int,unsigned long long,void *)::$_0>,void ()(void)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

__n128 std::__function::__func<AMCP::ASP::Driver::request_device_configuration_change(unsigned int,unsigned long long,void *)::$_0,std::allocator<AMCP::ASP::Driver::request_device_configuration_change(unsigned int,unsigned long long,void *)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_1F597A660;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  result = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = result;
  return result;
}

void std::__function::__func<AMCP::ASP::Driver::request_device_configuration_change(unsigned int,unsigned long long,void *)::$_0,std::allocator<AMCP::ASP::Driver::request_device_configuration_change(unsigned int,unsigned long long,void *)::$_0>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F597A660;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<AMCP::ASP::Driver::request_device_configuration_change(unsigned int,unsigned long long,void *)::$_0,std::allocator<AMCP::ASP::Driver::request_device_configuration_change(unsigned int,unsigned long long,void *)::$_0>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F597A660;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void *boost::container::dtl::flat_tree<boost::container::dtl::pair<unsigned int,std::shared_ptr<AMCP::ASP::PlugIn_Object>>,boost::container::dtl::select1st<unsigned int>,std::less<unsigned int>,boost::container::new_allocator<boost::container::dtl::pair<unsigned int,std::shared_ptr<AMCP::ASP::PlugIn_Object>>>>::find(uint64_t *a1, uint64_t *a2, unsigned int *a3)
{
  v3 = *a2;
  v4 = a2[1];
  v14 = v3;
  if (v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = v4 == 0;
  }

  if (!v5)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  result = boost::container::dtl::flat_tree<boost::container::dtl::pair<unsigned int,std::shared_ptr<AMCP::ASP::PlugIn_Object>>,boost::container::dtl::select1st<unsigned int>,std::less<unsigned int>,boost::container::new_allocator<boost::container::dtl::pair<unsigned int,std::shared_ptr<AMCP::ASP::PlugIn_Object>>>>::priv_lower_bound<boost::container::vec_iterator<boost::container::dtl::pair<unsigned int,std::shared_ptr<AMCP::ASP::PlugIn_Object>>*,true>,unsigned int>(a1, &v14, v3 + 24 * v4, *a3);
  v10 = a2[1];
  if (*a2)
  {
    v11 = 1;
  }

  else
  {
    v11 = v10 == 0;
  }

  if (!v11)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  v12 = *a2 + 24 * v10;
  v13 = *a1;
  if (*a1 != v12)
  {
    if (!v13)
    {
      __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
    }

    if (*a3 < *v13)
    {
      *a1 = v12;
    }
  }

  return result;
}

uint64_t AMCP::ASP::Host_Interface::delete_from_storage(AMCP::ASP::Host_Interface *this, const AudioServerPlugInHostInterface *a2, const __CFString *a3)
{
  v3 = *(this + 5);
  applesauce::CF::StringRef::from_get(&cf, a2);
  os_unfair_lock_lock((v3 + 264));
  MutableCopy = CFDictionaryCreateMutableCopy(0, 0, *(v3 + 272));
  mcp_applesauce::CF::Dictionary_Builder::remove_value<applesauce::CF::StringRef>(MutableCopy, cf);
  mcp_applesauce::CF::Dictionary_Builder::copy_dictionary(&v8, MutableCopy);
  v5 = *(v3 + 272);
  *(v3 + 272) = v8;
  v8 = v5;
  if (v5)
  {
    CFRelease(v5);
  }

  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  os_unfair_lock_unlock((v3 + 264));
  if (cf)
  {
    CFRelease(cf);
  }

  return 0;
}

void mcp_applesauce::CF::Dictionary_Builder::remove_value<applesauce::CF::StringRef>(__CFDictionary *a1, const void *a2)
{
  if (a1)
  {
    CFDictionaryRemoveValue(a1, a2);
  }
}

uint64_t AMCP::ASP::Host_Interface::write_to_storage(AMCP::ASP::Host_Interface *this, const AudioServerPlugInHostInterface *a2, const __CFString *a3, const void *a4)
{
  v5 = *(this + 5);
  applesauce::CF::StringRef::from_get(&cf, a2);
  if (a3)
  {
    CFRetain(a3);
  }

  os_unfair_lock_lock((v5 + 264));
  MutableCopy = CFDictionaryCreateMutableCopy(0, 0, *(v5 + 272));
  mcp_applesauce::CF::Dictionary_Builder::set_value<applesauce::CF::StringRef,applesauce::CF::TypeRef>(MutableCopy, cf, a3);
  mcp_applesauce::CF::Dictionary_Builder::copy_dictionary(&v10, MutableCopy);
  v7 = *(v5 + 272);
  *(v5 + 272) = v10;
  v10 = v7;
  if (v7)
  {
    CFRelease(v7);
  }

  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  os_unfair_lock_unlock((v5 + 264));
  if (a3)
  {
    CFRelease(a3);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return 0;
}

uint64_t AMCP::ASP::Host_Interface::copy_from_storage(AMCP::ASP::Host_Interface *this, const AudioServerPlugInHostInterface *a2, const __CFString *a3, const void **a4)
{
  v5 = *(this + 5);
  applesauce::CF::StringRef::from_get(&cf, a2);
  os_unfair_lock_lock((v5 + 264));
  v6 = *(v5 + 272);
  if (!v6)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v7 = applesauce::CF::details::at_key<applesauce::CF::StringRef const&>(v6, cf);
  v8 = v7;
  if (v7)
  {
    CFRetain(v7);
    CFRetain(v8);
    CFRelease(v8);
  }

  os_unfair_lock_unlock((v5 + 264));
  if (cf)
  {
    CFRelease(cf);
  }

  if (a3)
  {
    a3->isa = v8;
  }

  else if (v8)
  {
    CFRelease(v8);
  }

  return 0;
}

uint64_t AMCP::ASP::Host_Interface::properties_changed(AMCP::ASP::Host_Interface *this, const AudioServerPlugInHostInterface *a2, unsigned int a3, uint64_t a4, const AudioObjectPropertyAddress *a5)
{
  v74 = *MEMORY[0x1E69E9840];
  v5 = *(this + 5);
  if (a3 && !a4)
  {
    goto LABEL_96;
  }

  v6 = 560947818;
  v60[0] = a3;
  v60[1] = a4;
  AMCP::ASP::Driver::get_plugin_object_for_driver_id(&v67, v5, a2);
  v7 = v67;
  if (v67)
  {
    v8 = v67[15];
    v65 = v67[17];
    v66 = v8;
    AMCP::Core::Broker::fetch_core(&v63, *(*(v5 + 32) + 16), v8);
    if (!v63)
    {
      goto LABEL_64;
    }

    kdebug_trace();
    v62[0] = v5;
    v62[1] = &v66;
    v62[2] = &v65;
    v62[3] = &v63;
    if (AMCP::is_base_of(0x61706C67, v65))
    {
      memset(__p, 0, sizeof(__p));
      v9 = v60[0];
      if (v60[0])
      {
        v10 = 0;
        v59 = 0;
        v58 = 0;
        while (1)
        {
          v11 = gsl::details::span_iterator<gsl::span<AudioObjectPropertyAddress,-1l>,false>::operator*(v60, v10);
          v12 = *v11;
          if (*v11 == 1684370979)
          {
            AMCP::ASP::Driver::compute_new_dead_objects_kind(&v69, v5, &v67, 0x61646576, 0x64657623u);
            v23 = v72;
            v24 = v73;
            v25 = v69;
            v26 = v70;
            if (v72)
            {
              operator delete(v72);
            }

            if (v25)
            {
              operator delete(v25);
            }

            v27 = v25 != v26;
            if (v23 != v24)
            {
              v27 = 2;
            }

            LODWORD(v58) = v27;
          }

          else if (v12 == 1668049699)
          {
            AMCP::ASP::Driver::compute_new_dead_objects_kind(&v69, v5, &v67, 0x61636C6B, 0x636C6B23u);
            v18 = v72;
            v19 = v73;
            v20 = v69;
            v21 = v70;
            if (v72)
            {
              operator delete(v72);
            }

            if (v20)
            {
              operator delete(v20);
            }

            v22 = v18 == v19 ? v20 != v21 : 2;
            HIDWORD(v58) = v22;
          }

          else if (v12 == 1651472419)
          {
            AMCP::ASP::Driver::compute_new_dead_objects_kind(&v69, v5, &v67, 0x61626F78, 0x626F7823u);
            v13 = v72;
            v14 = v73;
            v15 = v69;
            v16 = v70;
            if (v72)
            {
              operator delete(v72);
            }

            if (v15)
            {
              operator delete(v15);
            }

            v17 = v15 != v16;
            if (v13 != v14)
            {
              v17 = 2;
            }

            v59 = v17;
          }

          else
          {
            std::vector<AudioObjectPropertyAddress>::push_back[abi:ne200100](__p, v11);
          }

          if (v10 >= v60[0])
          {
            goto LABEL_96;
          }

          if (v9 == ++v10)
          {
            goto LABEL_49;
          }
        }
      }

      v58 = 0;
      v59 = 0;
LABEL_49:
      if (v58)
      {
        v36 = *(*(v5 + 32) + 32);
        v37 = *(v5 + 280);
        v39 = *(v5 + 8);
        v38 = *(v5 + 16);
        if (v38)
        {
          atomic_fetch_add_explicit((v38 + 16), 1uLL, memory_order_relaxed);
        }

        if (v68)
        {
          atomic_fetch_add_explicit(&v68->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v72 = 0;
        operator new();
      }

      if (v59)
      {
        v40 = *(*(v5 + 32) + 32);
        v41 = *(v5 + 280);
        v43 = *(v5 + 8);
        v42 = *(v5 + 16);
        if (v42)
        {
          atomic_fetch_add_explicit((v42 + 16), 1uLL, memory_order_relaxed);
        }

        if (v68)
        {
          atomic_fetch_add_explicit(&v68->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v72 = 0;
        operator new();
      }

      AMCP::ASP::Driver::driver_properties_changed(unsigned int,gsl::span<AudioObjectPropertyAddress,-1l> const&)::$_2::operator()<std::vector<AudioObjectPropertyAddress>>(v62, __p);
      v35 = __p[0];
      if (!__p[0])
      {
        goto LABEL_63;
      }
    }

    else
    {
      if (AMCP::is_base_of(0x6163746C, v65))
      {
        v28 = v65;
        if (AMCP::is_base_of(0x736C6472, v65))
        {
          v29 = 0;
          v30 = 0;
          v31 = 1935962742;
        }

        else if (AMCP::is_base_of(0x6C65766C, v28))
        {
          v30 = 1818453110;
          v31 = 1818456950;
          v29 = 1;
        }

        else if (AMCP::is_base_of(0x746F676C, v28))
        {
          v29 = 0;
          v30 = 0;
          v31 = 1650685548;
        }

        else if (AMCP::is_base_of(0x736C6374, v28))
        {
          v29 = 0;
          v30 = 0;
          v31 = 1935893353;
        }

        else
        {
          v29 = 0;
          v30 = 0;
          if (AMCP::is_base_of(0x7370616E, v28))
          {
            v31 = 1936745334;
          }

          else
          {
            v31 = 0;
          }
        }

        v46 = v60[0];
        if (v60[0])
        {
          v47 = 0;
          v48 = 0;
          v49 = 0;
          do
          {
            v50 = *gsl::details::span_iterator<gsl::span<AudioObjectPropertyAddress,-1l>,false>::operator*(v60, v47);
            if (v50 == v30)
            {
              v51 = v29;
            }

            else
            {
              v51 = 0;
            }

            v52 = v51 | v49;
            v53 = v51 ^ 1 | v48;
            if (v50 == v31)
            {
              v49 = 1;
            }

            else
            {
              v49 = v52;
            }

            if (v50 != v31)
            {
              v48 = v53;
            }

            if (v47 >= v60[0])
            {
              goto LABEL_96;
            }

            ++v47;
          }

          while (v46 != v47);
          if (v49)
          {
            AMCP::Core::Conductor::notify_control_value_observers(*(*(v5 + 32) + 32), v66);
          }

          if (v48)
          {
            v54 = *(*(v5 + 32) + 32);
            v55 = *(v5 + 280);
            v56 = v66;
            v57 = v68;
            if (v68)
            {
              atomic_fetch_add_explicit(&v68->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v69 = &unk_1F597A5E0;
            v70 = v7;
            v71 = v57;
            v72 = &v69;
            AMCP::Core::Conductor::enqueue_config_change(v54, v55, v56, 0);
            std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](&v69);
          }
        }

        goto LABEL_63;
      }

      v69 = 0;
      v70 = 0;
      v71 = 0;
      v32 = v60[0];
      if (v60[0])
      {
        v33 = 0;
        while (1)
        {
          v34 = gsl::details::span_iterator<gsl::span<AudioObjectPropertyAddress,-1l>,false>::operator*(v60, v33);
          if ((AMCP::HAL::is_config_change_property(*v34) & 1) == 0)
          {
            std::vector<AudioObjectPropertyAddress>::push_back[abi:ne200100](&v69, v34);
          }

          if (v33 >= v60[0])
          {
            break;
          }

          if (v32 == ++v33)
          {
            goto LABEL_46;
          }
        }

LABEL_96:
        std::terminate();
      }

LABEL_46:
      AMCP::ASP::Driver::driver_properties_changed(unsigned int,gsl::span<AudioObjectPropertyAddress,-1l> const&)::$_2::operator()<std::vector<AudioObjectPropertyAddress>>(v62, &v69);
      v35 = v69;
      if (!v69)
      {
        goto LABEL_63;
      }
    }

    operator delete(v35);
LABEL_63:
    kdebug_trace();
    v6 = 0;
LABEL_64:
    if (v64)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v64);
    }
  }

  if (v68)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v68);
  }

  v44 = *MEMORY[0x1E69E9840];
  return v6;
}

void sub_1DE57C498(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t gsl::details::span_iterator<gsl::span<AudioObjectPropertyAddress,-1l>,false>::operator*(void *a1, uint64_t a2)
{
  if (!a1 || a2 < 0 || *a1 <= a2)
  {
    std::terminate();
  }

  return a1[1] + 12 * a2;
}

uint64_t *AMCP::ASP::Driver::driver_properties_changed(unsigned int,gsl::span<AudioObjectPropertyAddress,-1l> const&)::$_2::operator()<std::vector<AudioObjectPropertyAddress>>(uint64_t *result, uint64_t *a2)
{
  v19[42] = *MEMORY[0x1E69E9840];
  if (*a2 != a2[1])
  {
    v3 = result;
    v4 = *result;
    v5 = *(*result + 32);
    v6 = *(*result + 40);
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    AMCP::Utility::Dispatch_Queue::Dispatch_Queue(v19, (*(v5 + 32) + 368));
    v7 = *(v4 + 40);
    v13 = *(v4 + 32);
    if (v7)
    {
      atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    }

    memset(v14, 0, sizeof(v14));
    std::vector<AudioObjectPropertyAddress>::__init_with_size[abi:ne200100]<AudioObjectPropertyAddress*,AudioObjectPropertyAddress*>(v14, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 2));
    v8 = *v3[2];
    v15 = *v3[1];
    v16 = v8;
    v9 = v3[3];
    v11 = *v9;
    v10 = v9[1];
    v17 = v11;
    v18 = v10;
    if (v10)
    {
      atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
    }

    operator new();
  }

  v12 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DE57C6B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  if (a2)
  {
    v20 = *(v18 + 8);
    if (v20)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v20);
    }

    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AMCP::HAL::is_config_change_property(AMCP::HAL *this)
{
  v1 = this;
  result = 1;
  if (v1 > 1870030193)
  {
    if (v1 > 1936092478)
    {
      if (v1 > 1937010787)
      {
        if (v1 <= 1952542819)
        {
          if (v1 == 1937010788)
          {
            return result;
          }

          v3 = 1937077093;
          goto LABEL_57;
        }

        if (v1 == 1952542820 || v1 == 1986425722)
        {
          return result;
        }

        v3 = 2003136116;
      }

      else
      {
        if ((v1 - 1936092479) <= 0x35 && ((1 << (v1 - 63)) & 0x20400400000001) != 0 || v1 == 1936482681)
        {
          return result;
        }

        v3 = 1937009955;
      }
    }

    else if (v1 <= 1885762668)
    {
      if ((v1 - 1885762592) <= 0x1F && ((1 << (v1 - 32)) & 0x80000009) != 0 || v1 == 1870030194)
      {
        return result;
      }

      v3 = 1885762657;
    }

    else if (v1 > 1935763059)
    {
      if (v1 == 1935763060 || v1 == 1935894638)
      {
        return result;
      }

      v3 = 1936092451;
    }

    else
    {
      if (v1 == 1885762669 || v1 == 1902539642)
      {
        return result;
      }

      v3 = 1919055206;
    }

    goto LABEL_57;
  }

  if (v1 <= 1684629093)
  {
    if (v1 <= 1651730809)
    {
      if (v1 <= 1634562931)
      {
        if (v1 == 1633906541)
        {
          return result;
        }

        v3 = 1634169456;
        goto LABEL_57;
      }

      if (v1 == 1634562932 || v1 == 1634755428)
      {
        return result;
      }

      v3 = 1634955892;
    }

    else if (v1 > 1668049763)
    {
      if (v1 == 1668049764 || v1 == 1668575852)
      {
        return result;
      }

      v3 = 1684108387;
    }

    else
    {
      if (v1 == 1651730810 || v1 == 1651735075)
      {
        return result;
      }

      v3 = 1667658618;
    }

LABEL_57:
    if (v1 != v3)
    {
      return 0;
    }

    return result;
  }

  if (v1 > 1819569762)
  {
    if (v1 > 1853059618)
    {
      if (v1 == 1853059619 || v1 == 1853059700)
      {
        return result;
      }

      v3 = 1869180523;
    }

    else
    {
      if (v1 == 1819569763 || v1 == 1835628607)
      {
        return result;
      }

      v3 = 1852012899;
    }

    goto LABEL_57;
  }

  if (v1 > 1735354733)
  {
    if (v1 == 1735354734 || v1 == 1735356005)
    {
      return result;
    }

    v3 = 1735554416;
    goto LABEL_57;
  }

  if (v1 != 1684629094 && v1 != 1718839674)
  {
    v3 = 1718843939;
    goto LABEL_57;
  }

  return result;
}

uint64_t std::__function::__func<AMCP::ASP::Driver::driver_properties_changed(unsigned int,gsl::span<AudioObjectPropertyAddress,-1l> const&)::$_3,std::allocator<AMCP::ASP::Driver::driver_properties_changed(unsigned int,gsl::span<AudioObjectPropertyAddress,-1l> const&)::$_3>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3ASP6Driver25driver_properties_changedEjRKN3gsl4spanI26AudioObjectPropertyAddressLln1EEEE3$_3"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::ASP::Driver::driver_properties_changed(unsigned int,gsl::span<AudioObjectPropertyAddress,-1l> const&)::$_3,std::allocator<AMCP::ASP::Driver::driver_properties_changed(unsigned int,gsl::span<AudioObjectPropertyAddress,-1l> const&)::$_3>,void ()(void)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<AMCP::ASP::Driver::driver_properties_changed(unsigned int,gsl::span<AudioObjectPropertyAddress,-1l> const&)::$_3,std::allocator<AMCP::ASP::Driver::driver_properties_changed(unsigned int,gsl::span<AudioObjectPropertyAddress,-1l> const&)::$_3>,void ()(void)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t std::__function::__func<AMCP::ASP::Driver::driver_properties_changed(unsigned int,gsl::span<AudioObjectPropertyAddress,-1l> const&)::$_3,std::allocator<AMCP::ASP::Driver::driver_properties_changed(unsigned int,gsl::span<AudioObjectPropertyAddress,-1l> const&)::$_3>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_1F597A5E0;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<AMCP::ASP::Driver::driver_properties_changed(unsigned int,gsl::span<AudioObjectPropertyAddress,-1l> const&)::$_3,std::allocator<AMCP::ASP::Driver::driver_properties_changed(unsigned int,gsl::span<AudioObjectPropertyAddress,-1l> const&)::$_3>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F597A5E0;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<AMCP::ASP::Driver::driver_properties_changed(unsigned int,gsl::span<AudioObjectPropertyAddress,-1l> const&)::$_3,std::allocator<AMCP::ASP::Driver::driver_properties_changed(unsigned int,gsl::span<AudioObjectPropertyAddress,-1l> const&)::$_3>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F597A5E0;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void *_ZNSt3__110unique_ptrIZZN4AMCP3ASP6Driver25driver_properties_changedEjRKN3gsl4spanI26AudioObjectPropertyAddressLln1EEEENK3__2clINS_6vectorIS6_NS_9allocatorIS6_EEEEEEDaRKT_EUlvE_NS_14default_deleteISK_EEED1B8ne200100Ev(void *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = v2[7];
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    v4 = v2[2];
    if (v4)
    {
      v2[3] = v4;
      operator delete(v4);
    }

    v5 = v2[1];
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }

    MEMORY[0x1E12C1730](v2, 0x1020C407BC62F60);
  }

  return a1;
}

void _ZZN10applesauce8dispatch2v15asyncIZZN4AMCP3ASP6Driver25driver_properties_changedEjRKN3gsl4spanI26AudioObjectPropertyAddressLln1EEEENK3__2clINSt3__16vectorIS8_NSE_9allocatorIS8_EEEEEEDaRKT_EUlvE_EEvP16dispatch_queue_sOSK_ENUlPvE_8__invokeESR_(uint64_t a1)
{
  *__p = 0u;
  *v20 = 0u;
  v21 = 1065353216;
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  if (v2 == v3)
  {
    goto LABEL_35;
  }

  while (1)
  {
    LODWORD(v4) = *v2;
    if (*v2 == 1870098020)
    {
      goto LABEL_34;
    }

    if (v4 == 1819569763)
    {
      if (AMCP::is_base_of(0x61737472, *(a1 + 44)))
      {
        v4 = 1936487523;
      }

      else
      {
        v4 = 1819569763;
      }
    }

    else
    {
      AMCP::get_property_traits_for_hal_selector(*v2, &v22);
      v5 = HIDWORD(v24);
      v6 = v22;
      if (v23)
      {
        operator delete(v23);
      }

      if (v5)
      {
        v4 = v6;
      }

      else
      {
        v4 = v4;
      }
    }

    v18[0] = v4;
    v15 = *(v2 + 1);
    *&v18[1] = v15;
    v7 = *(a1 + 48);
    v17 = 0;
    memset(v16, 0, sizeof(v16));
    AMCP::Core::Core::get_property_value(&v22, v7, v18, v16);
    if (v17)
    {
      v17(0, v16, 0, 0);
    }

    v9 = v15 & 0xFF000000 | (v4 << 32) | HIDWORD(v15) & 0xFFFFFF;
    if (!__p[1])
    {
      goto LABEL_31;
    }

    v10 = vcnt_s8(__p[1]);
    v10.i16[0] = vaddlv_u8(v10);
    if (v10.u32[0] > 1uLL)
    {
      v11 = v15 & 0xFF000000 | (v4 << 32) | HIDWORD(v15) & 0xFFFFFF;
      if (v9 >= __p[1])
      {
        v11 = v9 % __p[1];
      }
    }

    else
    {
      v11 = v9 & (__p[1] - 1);
    }

    v12 = *(__p[0] + v11);
    if (!v12 || (v13 = *v12) == 0)
    {
LABEL_31:
      operator new();
    }

    while (1)
    {
      v14 = v13[1];
      if (v14 == v9)
      {
        break;
      }

      if (v10.u32[0] > 1uLL)
      {
        if (v14 >= __p[1])
        {
          v14 %= __p[1];
        }
      }

      else
      {
        v14 &= __p[1] - 1;
      }

      if (v14 != v11)
      {
        goto LABEL_31;
      }

LABEL_30:
      v13 = *v13;
      if (!v13)
      {
        goto LABEL_31;
      }
    }

    if (*(v13 + 4) != v4 || *(v13 + 20) != v15)
    {
      goto LABEL_30;
    }

    AMCP::Thing::operator=((v13 + 4), &v22, v8);
    if (v24)
    {
      v24(0, &v22, 0, 0);
    }

LABEL_34:
    v2 += 3;
    if (v2 == v3)
    {
LABEL_35:
      AMCP::Core::Conductor::properties_changed_async(*(*a1 + 32), *(a1 + 40), __p);
    }
  }
}

void sub_1DE57D0AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<AMCP::Address,AMCP::Thing>,void *>>>::operator()[abi:ne200100](1, v23);
  AMCP::Thing::~Thing((v24 - 136));
  std::__hash_table<std::__hash_value_type<AMCP::Address,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Address,std::__hash_value_type<AMCP::Address,AMCP::Thing>,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,true>,std::__unordered_map_equal<AMCP::Address,std::__hash_value_type<AMCP::Address,AMCP::Thing>,AMCP::Address::Is_Exact_Match,AMCP::Address::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Address,AMCP::Thing>>>::~__hash_table(&a23);
  _ZNSt3__110unique_ptrIZZN4AMCP3ASP6Driver25driver_properties_changedEjRKN3gsl4spanI26AudioObjectPropertyAddressLln1EEEENK3__2clINS_6vectorIS6_NS_9allocatorIS6_EEEEEEDaRKT_EUlvE_NS_14default_deleteISK_EEED1B8ne200100Ev(&a14);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<AMCP::ASP::Driver::driver_properties_changed(unsigned int,gsl::span<AudioObjectPropertyAddress,-1l> const&)::$_1,std::allocator<AMCP::ASP::Driver::driver_properties_changed(unsigned int,gsl::span<AudioObjectPropertyAddress,-1l> const&)::$_1>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3ASP6Driver25driver_properties_changedEjRKN3gsl4spanI26AudioObjectPropertyAddressLln1EEEE3$_1"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::ASP::Driver::driver_properties_changed(unsigned int,gsl::span<AudioObjectPropertyAddress,-1l> const&)::$_1,std::allocator<AMCP::ASP::Driver::driver_properties_changed(unsigned int,gsl::span<AudioObjectPropertyAddress,-1l> const&)::$_1>,void ()(void)>::operator()(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = a1[1];
      if (v5)
      {
        v7 = a1[3];
        v6 = (a1 + 3);
        AMCP::ASP::PlugIn_Object::update_core(v7);
        AMCP::ASP::Driver::compute_new_dead_objects_kind(v8, v5, v6, 0x61626F78, 0x626F7823u);
        AMCP::ASP::Driver::update_owned_object_kind(v5, v6, 1633841016, v8);
        if (__p)
        {
          operator delete(__p);
        }

        if (v8[0])
        {
          operator delete(v8[0]);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }
}

void std::__function::__func<AMCP::ASP::Driver::driver_properties_changed(unsigned int,gsl::span<AudioObjectPropertyAddress,-1l> const&)::$_1,std::allocator<AMCP::ASP::Driver::driver_properties_changed(unsigned int,gsl::span<AudioObjectPropertyAddress,-1l> const&)::$_1>,void ()(void)>::destroy_deallocate(void *a1)
{
  std::__function::__alloc_func<AMCP::ASP::Driver::start(applesauce::CF::URLRef const&)::$_0,std::allocator<AMCP::ASP::Driver::start(applesauce::CF::URLRef const&)::$_0>,void ()(void)>::destroy[abi:ne200100](a1 + 8);

  operator delete(a1);
}

void *std::__function::__func<AMCP::ASP::Driver::driver_properties_changed(unsigned int,gsl::span<AudioObjectPropertyAddress,-1l> const&)::$_1,std::allocator<AMCP::ASP::Driver::driver_properties_changed(unsigned int,gsl::span<AudioObjectPropertyAddress,-1l> const&)::$_1>,void ()(void)>::__clone(void *result, void *a2)
{
  v3 = result[1];
  v2 = result[2];
  *a2 = &unk_1F597A560;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  v4 = result[4];
  a2[3] = result[3];
  a2[4] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<AMCP::ASP::Driver::driver_properties_changed(unsigned int,gsl::span<AudioObjectPropertyAddress,-1l> const&)::$_1,std::allocator<AMCP::ASP::Driver::driver_properties_changed(unsigned int,gsl::span<AudioObjectPropertyAddress,-1l> const&)::$_1>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F597A560;
  v2 = a1[4];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = a1[2];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<AMCP::ASP::Driver::driver_properties_changed(unsigned int,gsl::span<AudioObjectPropertyAddress,-1l> const&)::$_1,std::allocator<AMCP::ASP::Driver::driver_properties_changed(unsigned int,gsl::span<AudioObjectPropertyAddress,-1l> const&)::$_1>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F597A560;
  v2 = a1[4];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = a1[2];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  return a1;
}

uint64_t std::__function::__func<AMCP::ASP::Driver::driver_properties_changed(unsigned int,gsl::span<AudioObjectPropertyAddress,-1l> const&)::$_0,std::allocator<AMCP::ASP::Driver::driver_properties_changed(unsigned int,gsl::span<AudioObjectPropertyAddress,-1l> const&)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3ASP6Driver25driver_properties_changedEjRKN3gsl4spanI26AudioObjectPropertyAddressLln1EEEE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::ASP::Driver::driver_properties_changed(unsigned int,gsl::span<AudioObjectPropertyAddress,-1l> const&)::$_0,std::allocator<AMCP::ASP::Driver::driver_properties_changed(unsigned int,gsl::span<AudioObjectPropertyAddress,-1l> const&)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 8);
      if (v5)
      {
        AMCP::ASP::PlugIn_Object::update_core(*(a1 + 32));
        if (*(a1 + 24))
        {
          AMCP::ASP::Driver::compute_new_dead_objects_kind(v6, v5, a1 + 32, 0x61646576, 0x64657623u);
          AMCP::ASP::Driver::update_owned_object_kind(v5, a1 + 32, 1633969526, v6);
          if (__p)
          {
            operator delete(__p);
          }

          if (v6[0])
          {
            operator delete(v6[0]);
          }
        }

        if (*(a1 + 28))
        {
          AMCP::ASP::Driver::compute_new_dead_objects_kind(v6, v5, a1 + 32, 0x61636C6B, 0x636C6B23u);
          AMCP::ASP::Driver::update_owned_object_kind(v5, a1 + 32, 1633905771, v6);
          if (__p)
          {
            operator delete(__p);
          }

          if (v6[0])
          {
            operator delete(v6[0]);
          }
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }
}

void std::__function::__func<AMCP::ASP::Driver::driver_properties_changed(unsigned int,gsl::span<AudioObjectPropertyAddress,-1l> const&)::$_0,std::allocator<AMCP::ASP::Driver::driver_properties_changed(unsigned int,gsl::span<AudioObjectPropertyAddress,-1l> const&)::$_0>,void ()(void)>::destroy_deallocate(void *a1)
{
  std::__function::__alloc_func<AMCP::ASP::Driver::driver_properties_changed(unsigned int,gsl::span<AudioObjectPropertyAddress,-1l> const&)::$_0,std::allocator<AMCP::ASP::Driver::driver_properties_changed(unsigned int,gsl::span<AudioObjectPropertyAddress,-1l> const&)::$_0>,void ()(void)>::destroy[abi:ne200100](a1 + 8);

  operator delete(a1);
}

void std::__function::__alloc_func<AMCP::ASP::Driver::driver_properties_changed(unsigned int,gsl::span<AudioObjectPropertyAddress,-1l> const&)::$_0,std::allocator<AMCP::ASP::Driver::driver_properties_changed(unsigned int,gsl::span<AudioObjectPropertyAddress,-1l> const&)::$_0>,void ()(void)>::destroy[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {

    std::__shared_weak_count::__release_weak(v3);
  }
}

void *std::__function::__func<AMCP::ASP::Driver::driver_properties_changed(unsigned int,gsl::span<AudioObjectPropertyAddress,-1l> const&)::$_0,std::allocator<AMCP::ASP::Driver::driver_properties_changed(unsigned int,gsl::span<AudioObjectPropertyAddress,-1l> const&)::$_0>,void ()(void)>::__clone(void *result, void *a2)
{
  v3 = result[1];
  v2 = result[2];
  *a2 = &unk_1F597A4E0;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  a2[3] = result[3];
  v4 = result[5];
  a2[4] = result[4];
  a2[5] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<AMCP::ASP::Driver::driver_properties_changed(unsigned int,gsl::span<AudioObjectPropertyAddress,-1l> const&)::$_0,std::allocator<AMCP::ASP::Driver::driver_properties_changed(unsigned int,gsl::span<AudioObjectPropertyAddress,-1l> const&)::$_0>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F597A4E0;
  v2 = a1[5];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = a1[2];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<AMCP::ASP::Driver::driver_properties_changed(unsigned int,gsl::span<AudioObjectPropertyAddress,-1l> const&)::$_0,std::allocator<AMCP::ASP::Driver::driver_properties_changed(unsigned int,gsl::span<AudioObjectPropertyAddress,-1l> const&)::$_0>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F597A4E0;
  v2 = a1[5];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = a1[2];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  return a1;
}

uint64_t AMCP::ASP::Driver::start(applesauce::CF::URLRef const&)::$_0::~$_0(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  return a1;
}

uint64_t std::__function::__func<AMCP::ASP::Driver::start(applesauce::CF::URLRef const&)::$_0,std::allocator<AMCP::ASP::Driver::start(applesauce::CF::URLRef const&)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3ASP6Driver5startERKN10applesauce2CF6URLRefEE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::ASP::Driver::start(applesauce::CF::URLRef const&)::$_0,std::allocator<AMCP::ASP::Driver::start(applesauce::CF::URLRef const&)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 8);
      if (v5)
      {
        AMCP::ASP::Driver::update_owned_objects(v5, a1 + 24);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }
}

void std::__function::__func<AMCP::ASP::Driver::start(applesauce::CF::URLRef const&)::$_0,std::allocator<AMCP::ASP::Driver::start(applesauce::CF::URLRef const&)::$_0>,void ()(void)>::destroy_deallocate(void *a1)
{
  std::__function::__alloc_func<AMCP::ASP::Driver::start(applesauce::CF::URLRef const&)::$_0,std::allocator<AMCP::ASP::Driver::start(applesauce::CF::URLRef const&)::$_0>,void ()(void)>::destroy[abi:ne200100](a1 + 8);

  operator delete(a1);
}

void std::__function::__alloc_func<AMCP::ASP::Driver::start(applesauce::CF::URLRef const&)::$_0,std::allocator<AMCP::ASP::Driver::start(applesauce::CF::URLRef const&)::$_0>,void ()(void)>::destroy[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {

    std::__shared_weak_count::__release_weak(v3);
  }
}

void *std::__function::__func<AMCP::ASP::Driver::start(applesauce::CF::URLRef const&)::$_0,std::allocator<AMCP::ASP::Driver::start(applesauce::CF::URLRef const&)::$_0>,void ()(void)>::__clone(void *result, void *a2)
{
  v3 = result[1];
  v2 = result[2];
  *a2 = &unk_1F597A460;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  v4 = result[4];
  a2[3] = result[3];
  a2[4] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<AMCP::ASP::Driver::start(applesauce::CF::URLRef const&)::$_0,std::allocator<AMCP::ASP::Driver::start(applesauce::CF::URLRef const&)::$_0>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F597A460;
  v2 = a1[4];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = a1[2];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<AMCP::ASP::Driver::start(applesauce::CF::URLRef const&)::$_0,std::allocator<AMCP::ASP::Driver::start(applesauce::CF::URLRef const&)::$_0>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F597A460;
  v2 = a1[4];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = a1[2];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  return a1;
}

void std::__shared_ptr_emplace<AMCP::ASP::PlugIn>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    CFRelease(v3);
  }
}

void sub_1DE57DB4C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  __cxa_begin_catch(a1);
  std::string::basic_string[abi:ne200100]<0>(&__p, "Release");
  AMCP::ASP::PlugIn::log_plugin_exception((v15 + 24), &__p);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  __cxa_end_catch();
  JUMPOUT(0x1DE57DB2CLL);
}

void std::__shared_ptr_emplace<AMCP::ASP::PlugIn>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F597A3C0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t AMCP::ASP::Driver::get_core_id_for_driver_id(AMCP::ASP::Driver *this, unsigned int a2)
{
  v9 = a2;
  std::__shared_mutex_base::lock_shared((this + 88));
  boost::container::dtl::flat_tree<boost::container::dtl::pair<unsigned int,std::shared_ptr<AMCP::ASP::PlugIn_Object>>,boost::container::dtl::select1st<unsigned int>,std::less<unsigned int>,boost::container::new_allocator<boost::container::dtl::pair<unsigned int,std::shared_ptr<AMCP::ASP::PlugIn_Object>>>>::find(&v8, this + 8, &v9);
  v3 = *(this + 8);
  v4 = *(this + 9);
  if (v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = v4 == 0;
  }

  if (!v5)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  if (v8 == v3 + 24 * v4)
  {
    v6 = 0;
  }

  else
  {
    v6 = *(*(v8 + 8) + 60);
  }

  std::__shared_mutex_base::unlock_shared((this + 88));
  return v6;
}

unint64_t ca::mach::error_category::message@<X0>(mach_error_t error_value@<W1>, _BYTE *a2@<X8>)
{
  v4 = mach_error_string(error_value);
  result = strlen(v4);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v6 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  a2[23] = result;
  if (result)
  {
    result = memmove(a2, v4, result);
  }

  a2[v6] = 0;
  return result;
}

void ca::mach::error_category::~error_category(std::error_category *this)
{
  std::error_category::~error_category(this);

  JUMPOUT(0x1E12C1730);
}

uint64_t ca::mach::semaphore::wait(ca::mach::semaphore *this)
{
  do
  {
    v2 = MEMORY[0x1E12C2790](*this);
  }

  while (v2 == 14);

  return ca::mach::throw_if_mach_error("semaphore_wait failed", v2);
}

void AMCP::ASP::PlugIn_Object::~PlugIn_Object(AMCP::ASP::PlugIn_Object *this)
{
  AMCP::ASP::PlugIn_Object::~PlugIn_Object(this);

  JUMPOUT(0x1E12C1730);
}

{
  v45 = *MEMORY[0x1E69E9840];
  *this = &unk_1F597A6E0;
  is_base_of = AMCP::is_base_of(0x61636C6B, *(this + 17));
  if (!is_base_of)
  {
    goto LABEL_44;
  }

  v3 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v3 & 1) == 0)
  {
    is_base_of = AMCP::Log::AMCP_Scope_Registry::initialize(is_base_of);
  }

  v4 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v5 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = *(v4 + 16);
  switch(v6)
  {
    case 3:
      v15 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v15 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(is_base_of);
      }

      v17 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v16 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v16)
      {
        atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
        v18 = *v17;
        std::__shared_weak_count::__release_shared[abi:ne200100](v16);
      }

      else
      {
        v18 = *v17;
      }

      if (!os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        goto LABEL_42;
      }

      AMCP::make_string_for_class_id(*(this + 16), __p);
      if (v34 >= 0)
      {
        v22 = __p;
      }

      else
      {
        v22 = __p[0];
      }

      v23 = *(this + 15);
      v24 = *(this + 11);
      *buf = 136316162;
      v36 = "ASP_Object.cpp";
      v37 = 1024;
      v38 = 1421;
      v39 = 2080;
      v40 = v22;
      v41 = 1024;
      v42 = v23;
      v43 = 1024;
      v44 = v24;
      v25 = v18;
      v26 = OS_LOG_TYPE_INFO;
      break;
    case 2:
      v11 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v11 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(is_base_of);
      }

      v13 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v12 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v12)
      {
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
        v14 = *v13;
        std::__shared_weak_count::__release_shared[abi:ne200100](v12);
      }

      else
      {
        v14 = *v13;
      }

      if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_42;
      }

      AMCP::make_string_for_class_id(*(this + 16), __p);
      if (v34 >= 0)
      {
        v19 = __p;
      }

      else
      {
        v19 = __p[0];
      }

      v20 = *(this + 15);
      v21 = *(this + 11);
      *buf = 136316162;
      v36 = "ASP_Object.cpp";
      v37 = 1024;
      v38 = 1421;
      v39 = 2080;
      v40 = v19;
      v41 = 1024;
      v42 = v20;
      v43 = 1024;
      v44 = v21;
      _os_log_debug_impl(&dword_1DE1F9000, v14, OS_LOG_TYPE_DEBUG, "%32s:%-5d Tearing down %s with object id %u driver id: %u", buf, 0x28u);
      goto LABEL_40;
    case 1:
      v7 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v7 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(is_base_of);
      }

      v9 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v8 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
        v10 = *v9;
        std::__shared_weak_count::__release_shared[abi:ne200100](v8);
      }

      else
      {
        v10 = *v9;
      }

      if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_42;
      }

      AMCP::make_string_for_class_id(*(this + 16), __p);
      if (v34 >= 0)
      {
        v27 = __p;
      }

      else
      {
        v27 = __p[0];
      }

      v28 = *(this + 15);
      v29 = *(this + 11);
      *buf = 136316162;
      v36 = "ASP_Object.cpp";
      v37 = 1024;
      v38 = 1421;
      v39 = 2080;
      v40 = v27;
      v41 = 1024;
      v42 = v28;
      v43 = 1024;
      v44 = v29;
      v25 = v10;
      v26 = OS_LOG_TYPE_DEFAULT;
      break;
    default:
      goto LABEL_42;
  }

  _os_log_impl(&dword_1DE1F9000, v25, v26, "%32s:%-5d Tearing down %s with object id %u driver id: %u", buf, 0x28u);
LABEL_40:
  if (v34 < 0)
  {
    operator delete(__p[0]);
  }

LABEL_42:
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

LABEL_44:
  AMCP::Core::Broker::destroy_core(*(*(this + 1) + 16), *(this + 15));
  *(this + 15) = 0;
  AMCP::Utility::Dispatch_Queue::~Dispatch_Queue((this + 72));
  v30 = *(this + 4);
  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  *this = &unk_1F59748E8;
  v31 = *(this + 2);
  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }

  v32 = *MEMORY[0x1E69E9840];
}

void sub_1DE57E1FC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t AMCP::HAL::is_stock_hal_class(AMCP::HAL *this)
{
  v1 = this;
  result = 1;
  if (v1 <= 1751740517)
  {
    if (v1 > 1651273578)
    {
      if (v1 > 1685287522)
      {
        if (v1 > 1701734253)
        {
          if (v1 != 1701734254 && v1 != 1702259059)
          {
            v3 = 1718432370;
            goto LABEL_66;
          }
        }

        else if (v1 != 1685287523 && v1 != 1701078390)
        {
          v3 = 1701733488;
          goto LABEL_66;
        }
      }

      else if (v1 > 1668050547)
      {
        if (v1 != 1668050548 && v1 != 1684370292)
        {
          v3 = 1684895092;
          goto LABEL_66;
        }
      }

      else if (v1 != 1651273579 && v1 != 1668047723)
      {
        v3 = 1668049264;
        goto LABEL_66;
      }
    }

    else if (v1 > 1634757734)
    {
      if (v1 > 1634957682)
      {
        if (v1 != 1634957683 && v1 != 1635017576)
        {
          v3 = 1650602615;
          goto LABEL_66;
        }
      }

      else if (v1 != 1634757735 && v1 != 1634956402)
      {
        v3 = 1634956642;
        goto LABEL_66;
      }
    }

    else if (v1 > 1633907819)
    {
      if (v1 != 1633907820 && v1 != 1633969526)
      {
        v3 = 1634689642;
        goto LABEL_66;
      }
    }

    else if (v1 != 1633773415 && v1 != 1633841016)
    {
      v3 = 1633905771;
      goto LABEL_66;
    }

    return result;
  }

  if (v1 <= 1936028001)
  {
    if (v1 > 1836414052)
    {
      if (v1 <= 1885893480)
      {
        if (v1 != 1836414053 && v1 != 1852601964)
        {
          v3 = 1885888878;
          goto LABEL_66;
        }

        return result;
      }

      if (v1 == 1885893481 || v1 == 1886544237)
      {
        return result;
      }

      v3 = 1919182198;
    }

    else
    {
      if (v1 <= 1815241313)
      {
        if (v1 != 1751740518 && v1 != 1768907636)
        {
          v3 = 1784767339;
          goto LABEL_66;
        }

        return result;
      }

      if (v1 == 1815241314 || v1 == 1818588780)
      {
        return result;
      }

      v3 = 1819504226;
    }

LABEL_66:
    if (v1 != v3)
    {
      return 0;
    }

    return result;
  }

  if (v1 <= 1937072748)
  {
    if (v1 <= 1936483441)
    {
      if (v1 != 1936028002 && v1 != 1936028007)
      {
        v3 = 1936483188;
        goto LABEL_66;
      }

      return result;
    }

    if (v1 == 1936483442 || v1 == 1936682095)
    {
      return result;
    }

    v3 = 1936744814;
    goto LABEL_66;
  }

  if (v1 > 1953458027)
  {
    if (v1 > 1986817380)
    {
      if (v1 == 1986817381)
      {
        return result;
      }

      v3 = 1999790690;
    }

    else
    {
      if (v1 == 1953458028)
      {
        return result;
      }

      v3 = 1953656941;
    }

    goto LABEL_66;
  }

  if (v1 != 1937072749 && v1 != 1937072758)
  {
    v3 = 1952541794;
    goto LABEL_66;
  }

  return result;
}

uint64_t AMCP::ASP::PlugIn_Object::PlugIn_Object(uint64_t a1, __int128 *a2, uint64_t a3, int a4, int a5, uint64_t a6, uint64_t a7)
{
  v87 = *MEMORY[0x1E69E9840];
  v10 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  *(a1 + 8) = v10;
  *a1 = &unk_1F597A6E0;
  *(a1 + 24) = *a3;
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a1 + 232) = 0u;
  v11 = a1 + 232;
  *(a1 + 40) = a5;
  *(a1 + 44) = a6;
  *(a1 + 48) = 0;
  *(a1 + 56) = a4;
  v12 = (a1 + 72);
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 60) = 0u;
  *(a1 + 76) = 0u;
  *(a1 + 90) = 0u;
  *(a1 + 128) = 0;
  *(a1 + 136) = 850045863;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 850045863;
  *(a1 + 248) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 850045863;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = dispatch_semaphore_create(0);
  *(v11 + 160) = 0;
  *(v11 + 168) = 0;
  v13 = *(a1 + 24);
  strcpy(&buf, "salcbolg");
  BYTE1(buf.mElement) = 0;
  HIWORD(buf.mElement) = 0;
  LODWORD(v74.__vftable) = 0;
  PropertyData = AMCP::ASP::PlugIn::ObjectGetPropertyData(v13, a6, 0, &buf, 0, 0, 4, &v74);
  *(v11 - 184) = v74.__vftable;
  if (PropertyData)
  {
    v30 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v30 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(PropertyData);
    }

    v32 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v31 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v31)
    {
      atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
      v33 = *v32;
      std::__shared_weak_count::__release_shared[abi:ne200100](v31);
    }

    else
    {
      v33 = *v32;
    }

    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      buf.mSelector = 136315650;
      *&buf.mScope = "ASP_Object.cpp";
      v82 = 1024;
      *v83 = 1249;
      *&v83[4] = 2080;
      *&v83[6] = "error != 0";
      _os_log_error_impl(&dword_1DE1F9000, v33, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s all driver objects are supposed to have a class", &buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v80);
    __cxa_allocate_exception(0x40uLL);
    std::runtime_error::runtime_error(&v73, "all driver objects are supposed to have a class");
    std::runtime_error::runtime_error(&v74, &v73);
    v76 = 0;
    v77 = 0;
    v78 = 0;
    v79 = -1;
    v74.__vftable = &unk_1F5992170;
    v75 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(&buf, &v74);
    *&v83[18] = "AMCP::ASP::PlugIn_Object::PlugIn_Object(Core::System_Core_Ptr, PlugIn_Ptr, Object_ID, AudioObjectID, AudioObjectID, AudioClassID)";
    v84 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/ASP/ASP_Object.cpp";
    LODWORD(__p) = 1249;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v70);
  }

  v15 = *(a1 + 24);
  strcpy(&buf, "slcbbolg");
  BYTE1(buf.mElement) = 0;
  HIWORD(buf.mElement) = 0;
  LODWORD(v74.__vftable) = 0;
  v16 = AMCP::ASP::PlugIn::ObjectGetPropertyData(v15, a6, 0, &buf, 0, 0, 4, &v74);
  LODWORD(v17) = v74.__vftable;
  *(a1 + 52) = v74.__vftable;
  v18 = *(a1 + 48);
  if (v16)
  {
    is_stock_hal_class = AMCP::HAL::is_stock_hal_class(*(a1 + 48));
    if (!is_stock_hal_class)
    {
      v56 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v56 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(is_stock_hal_class);
      }

      v58 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v57 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v57)
      {
        atomic_fetch_add_explicit(&v57->__shared_owners_, 1uLL, memory_order_relaxed);
        v59 = *v58;
        std::__shared_weak_count::__release_shared[abi:ne200100](v57);
      }

      else
      {
        v59 = *v58;
      }

      if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
      {
        buf.mSelector = 136315650;
        *&buf.mScope = "ASP_Object.cpp";
        v82 = 1024;
        *v83 = 1256;
        *&v83[4] = 2080;
        *&v83[6] = "error != 0";
        _os_log_error_impl(&dword_1DE1F9000, v59, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s all driver objects are supposed to have a base class", &buf, 0x1Cu);
      }

      AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v80);
      __cxa_allocate_exception(0x40uLL);
      std::runtime_error::runtime_error(&v73, "all driver objects are supposed to have a base class");
      std::runtime_error::runtime_error(&v74, &v73);
      v76 = 0;
      v77 = 0;
      v78 = 0;
      v79 = -1;
      v74.__vftable = &unk_1F5992170;
      v75 = &unk_1F5992198;
      boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(&buf, &v74);
      *&v83[18] = "AMCP::ASP::PlugIn_Object::PlugIn_Object(Core::System_Core_Ptr, PlugIn_Ptr, Object_ID, AudioObjectID, AudioObjectID, AudioClassID)";
      v84 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/ASP/ASP_Object.cpp";
      LODWORD(__p) = 1256;
      applesauce::backtrace::snapshot_N<64>::snapshot_N(&v70);
    }

    *(a1 + 52) = v18;
    LODWORD(v17) = v18;
  }

  if (v18 == 1634689642)
  {
    v18 = 1634689642;
    if (v17 != 1634689642)
    {
      goto LABEL_11;
    }

    *(a1 + 48) = a7;
    *(a1 + 52) = a7;
    LODWORD(v17) = a7;
    v18 = a7;
  }

  if (a7 == 1633905771 && v18 == 1633969526)
  {
    *(a1 + 48) = 1633905771;
    v18 = 1633905771;
  }

LABEL_11:
  if (AMCP::HAL::is_stock_hal_class(v18))
  {
    v17 = v18;
  }

  else
  {
    v17 = v17;
  }

  v20 = AMCP::HAL::is_stock_hal_class(v17);
  if ((v20 & 1) == 0)
  {
    *(a1 + 64) = 0;
    goto LABEL_116;
  }

  v21 = 0;
  if (v17 <= 1815241313)
  {
    if (v17 > 1668047722)
    {
      if (v17 <= 1685287522)
      {
        if (v17 > 1684370291)
        {
          if (v17 == 1684370292)
          {
            goto LABEL_68;
          }

          v22 = 1684895092;
        }

        else
        {
          if (v17 == 1668047723)
          {
            goto LABEL_68;
          }

          v22 = 1668049264;
        }
      }

      else if (v17 <= 1718432369)
      {
        if (v17 == 1685287523)
        {
          goto LABEL_68;
        }

        v22 = 1702259059;
      }

      else
      {
        if (v17 == 1718432370 || v17 == 1751740518)
        {
          goto LABEL_68;
        }

        v22 = 1784767339;
      }
    }

    else if (v17 <= 1634689641)
    {
      if (v17 > 1633907819)
      {
        if (v17 == 1633907820)
        {
          goto LABEL_68;
        }

        v22 = 1633969526;
      }

      else
      {
        if (v17 == 1633841016)
        {
          goto LABEL_68;
        }

        v22 = 1633905771;
      }
    }

    else if (v17 <= 1634956401)
    {
      if (v17 == 1634689642)
      {
        goto LABEL_68;
      }

      v22 = 1634757735;
    }

    else
    {
      if (v17 == 1634956402 || v17 == 1650602615)
      {
        goto LABEL_68;
      }

      v22 = 1651273579;
    }

    goto LABEL_67;
  }

  if (v17 <= 1936483187)
  {
    if (v17 <= 1852601963)
    {
      if (v17 > 1819504225)
      {
        if (v17 == 1819504226)
        {
          goto LABEL_68;
        }

        v22 = 1836414053;
      }

      else
      {
        if (v17 == 1815241314)
        {
          goto LABEL_68;
        }

        v22 = 1818588780;
      }
    }

    else if (v17 <= 1885893480)
    {
      if (v17 == 1852601964)
      {
        goto LABEL_68;
      }

      v22 = 1885888878;
    }

    else
    {
      if (v17 == 1885893481 || v17 == 1936028002)
      {
        goto LABEL_68;
      }

      v22 = 1936028007;
    }

LABEL_67:
    if (v17 != v22)
    {
      goto LABEL_69;
    }

    goto LABEL_68;
  }

  if (v17 > 1937072757)
  {
    if (v17 <= 1953458027)
    {
      if (v17 == 1937072758)
      {
        goto LABEL_68;
      }

      v22 = 1952541794;
    }

    else
    {
      if (v17 == 1953458028 || v17 == 1999790690)
      {
        goto LABEL_68;
      }

      v22 = 1986817381;
    }

    goto LABEL_67;
  }

  if (v17 <= 1936682094)
  {
    if (v17 == 1936483188)
    {
      goto LABEL_68;
    }

    v22 = 1936483442;
    goto LABEL_67;
  }

  if (v17 != 1936682095 && v17 != 1936744814)
  {
    v22 = 1937072749;
    goto LABEL_67;
  }

LABEL_68:
  v21 = v17;
LABEL_69:
  AMCP::get_class_traits(&buf, v18);
  mElement_low = LOBYTE(buf.mElement);
  if (v86 < 0)
  {
    operator delete(__p);
  }

  v20 = *&v83[2];
  if (*&v83[2])
  {
    *&v83[10] = *&v83[2];
    operator delete(*&v83[2]);
  }

  if (mElement_low)
  {
    v24 = v21;
  }

  else
  {
    v24 = v18;
  }

  *(a1 + 64) = v24;
  *(a1 + 68) = v21;
  if (!v24)
  {
LABEL_116:
    v52 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v52 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v20);
    }

    v54 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v53 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v53)
    {
      atomic_fetch_add_explicit(&v53->__shared_owners_, 1uLL, memory_order_relaxed);
      v55 = *v54;
      std::__shared_weak_count::__release_shared[abi:ne200100](v53);
    }

    else
    {
      v55 = *v54;
    }

    if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
    {
      v61 = *(a1 + 52);
      v60.i32[0] = bswap32(*(a1 + 48));
      v62 = vzip1_s8(v60, v60);
      v63.i64[0] = 0x1F0000001FLL;
      v63.i64[1] = 0x1F0000001FLL;
      v64.i64[0] = 0x1F0000001FLL;
      v64.i64[1] = 0x1F0000001FLL;
      v65.i64[0] = 0x5F0000005FLL;
      v65.i64[1] = 0x5F0000005FLL;
      v66 = vbsl_s8(vmovn_s32(vcgtq_u32(v65, vsraq_n_s32(v64, vshlq_n_s32(vmovl_u16(v62), 0x18uLL), 0x18uLL))), v62, 0x2E002E002E002ELL);
      HIBYTE(v75) = 4;
      v67 = vuzp1_s8(v66, v66);
      LODWORD(v74.__vftable) = v67.i32[0];
      BYTE4(v74.__vftable) = 0;
      v67.i32[0] = bswap32(v61);
      v68 = vzip1_s8(v67, v67);
      HIBYTE(v72) = 4;
      v69 = vbsl_s8(vmovn_s32(vcgtq_u32(v65, vsraq_n_s32(v63, vshlq_n_s32(vmovl_u16(v68), 0x18uLL), 0x18uLL))), v68, 0x2E002E002E002ELL);
      LODWORD(v71) = vuzp1_s8(v69, v69).u32[0];
      BYTE4(v71) = 0;
      buf.mSelector = 136316162;
      *&buf.mScope = "ASP_Object.cpp";
      v82 = 1024;
      *v83 = 1271;
      *&v83[4] = 2080;
      *&v83[6] = "m_core_class_id == 0";
      *&v83[14] = 2080;
      *&v83[16] = &v74;
      *&v83[24] = 2080;
      v84 = &v71;
      _os_log_error_impl(&dword_1DE1F9000, v55, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s There has to be a core class for %s / %s", &buf, 0x30u);
      if (SHIBYTE(v72) < 0)
      {
        operator delete(v71);
      }

      if (SHIBYTE(v75) < 0)
      {
        operator delete(v74.__vftable);
      }
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v80);
    __cxa_allocate_exception(0x40uLL);
    std::runtime_error::runtime_error(&v73, "There has to be a core class");
    std::runtime_error::runtime_error(&v74, &v73);
    v76 = 0;
    v77 = 0;
    v78 = 0;
    v79 = -1;
    v74.__vftable = &unk_1F5992170;
    v75 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(&buf, &v74);
    *&v83[18] = "AMCP::ASP::PlugIn_Object::PlugIn_Object(Core::System_Core_Ptr, PlugIn_Ptr, Object_ID, AudioObjectID, AudioObjectID, AudioClassID)";
    v84 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/ASP/ASP_Object.cpp";
    LODWORD(__p) = 1271;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v70);
  }

  if (!v21)
  {
    v34 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v34 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v20);
    }

    v36 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v35 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v35)
    {
      atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
      v37 = *v36;
      std::__shared_weak_count::__release_shared[abi:ne200100](v35);
    }

    else
    {
      v37 = *v36;
    }

    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      v43 = *(a1 + 52);
      v42.i32[0] = bswap32(*(a1 + 48));
      v44 = vzip1_s8(v42, v42);
      v45.i64[0] = 0x1F0000001FLL;
      v45.i64[1] = 0x1F0000001FLL;
      v46.i64[0] = 0x1F0000001FLL;
      v46.i64[1] = 0x1F0000001FLL;
      v47.i64[0] = 0x5F0000005FLL;
      v47.i64[1] = 0x5F0000005FLL;
      v48 = vbsl_s8(vmovn_s32(vcgtq_u32(v47, vsraq_n_s32(v46, vshlq_n_s32(vmovl_u16(v44), 0x18uLL), 0x18uLL))), v44, 0x2E002E002E002ELL);
      HIBYTE(v75) = 4;
      v49 = vuzp1_s8(v48, v48);
      LODWORD(v74.__vftable) = v49.i32[0];
      BYTE4(v74.__vftable) = 0;
      v49.i32[0] = bswap32(v43);
      v50 = vzip1_s8(v49, v49);
      HIBYTE(v72) = 4;
      v51 = vbsl_s8(vmovn_s32(vcgtq_u32(v47, vsraq_n_s32(v45, vshlq_n_s32(vmovl_u16(v50), 0x18uLL), 0x18uLL))), v50, 0x2E002E002E002ELL);
      LODWORD(v71) = vuzp1_s8(v51, v51).u32[0];
      BYTE4(v71) = 0;
      buf.mSelector = 136316162;
      *&buf.mScope = "ASP_Object.cpp";
      v82 = 1024;
      *v83 = 1272;
      *&v83[4] = 2080;
      *&v83[6] = "m_core_stock_class_id == 0";
      *&v83[14] = 2080;
      *&v83[16] = &v74;
      *&v83[24] = 2080;
      v84 = &v71;
      _os_log_error_impl(&dword_1DE1F9000, v37, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s There has to be a core stock class for %s / %s", &buf, 0x30u);
      if (SHIBYTE(v72) < 0)
      {
        operator delete(v71);
      }

      if (SHIBYTE(v75) < 0)
      {
        operator delete(v74.__vftable);
      }
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v80);
    __cxa_allocate_exception(0x40uLL);
    std::runtime_error::runtime_error(&v73, "There has to be a core stock class");
    std::runtime_error::runtime_error(&v74, &v73);
    v76 = 0;
    v77 = 0;
    v78 = 0;
    v79 = -1;
    v74.__vftable = &unk_1F5992170;
    v75 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(&buf, &v74);
    *&v83[18] = "AMCP::ASP::PlugIn_Object::PlugIn_Object(Core::System_Core_Ptr, PlugIn_Ptr, Object_ID, AudioObjectID, AudioObjectID, AudioClassID)";
    v84 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/ASP/ASP_Object.cpp";
    LODWORD(__p) = 1272;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v70);
  }

  if (AMCP::is_base_of(0x61636C6B, v21))
  {
    caulk::make_string("Object Work Queue: %u", &buf, a6);
    if (v83[9] >= 0)
    {
      p_buf = &buf;
    }

    else
    {
      p_buf = *&buf.mSelector;
    }

    v26 = dispatch_queue_create(p_buf, 0);
    v27 = AMCP::Utility::Dispatch_Queue::operator=(v12, v26);
    if (v26)
    {
      dispatch_release(v26);
    }

    if ((v83[9] & 0x80000000) != 0)
    {
      operator delete(*&buf.mSelector);
    }

    if (!*v12)
    {
      v38 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v38 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v27);
      }

      v40 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v39 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v39)
      {
        atomic_fetch_add_explicit(&v39->__shared_owners_, 1uLL, memory_order_relaxed);
        v41 = *v40;
        std::__shared_weak_count::__release_shared[abi:ne200100](v39);
      }

      else
      {
        v41 = *v40;
      }

      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        buf.mSelector = 136315906;
        *&buf.mScope = "ASP_Object.cpp";
        v82 = 1024;
        *v83 = 1277;
        *&v83[4] = 2080;
        *&v83[6] = "m_work_queue.operator BOOL() == true";
        *&v83[14] = 1024;
        *&v83[16] = a6;
        _os_log_error_impl(&dword_1DE1F9000, v41, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s Failed to create work queue for object %u", &buf, 0x22u);
      }

      abort();
    }
  }

  v28 = *MEMORY[0x1E69E9840];
  return a1;
}

void sub_1DE57F5C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, std::runtime_error a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, char a31)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a11)
  {
    operator delete(a11);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::~clone_impl(&a31);
  boost::exception_detail::error_info_injector<std::runtime_error>::~error_info_injector(&a20);
  std::runtime_error::~runtime_error(&a19);
  if (v34)
  {
    __cxa_free_exception(v33);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled(&a30);
  AMCP::Utility::Dispatch_Queue::~Dispatch_Queue(v32);
  v36 = v31[4];
  if (v36)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v36);
  }

  *v31 = &unk_1F59748E8;
  v37 = v31[2];
  if (v37)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v37);
  }

  _Unwind_Resume(a1);
}

void AMCP::ASP::PlugIn_Object::build_core(AMCP::ASP::PlugIn_Object *this)
{
  v45 = *MEMORY[0x1E69E9840];
  *(this + 15) = AMCP::Core::Broker::reserve_id(*(*(this + 1) + 16));
  *__p = 0u;
  *v35 = 0u;
  v36 = 1065353216;
  AMCP::ASP::calculate_max_element(this + 3, *(this + 11), *(this + 17));
  is_base_of = AMCP::is_base_of(0x61636C6B, *(this + 17));
  if (!is_base_of)
  {
    goto LABEL_44;
  }

  v3 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v3 & 1) == 0)
  {
    is_base_of = AMCP::Log::AMCP_Scope_Registry::initialize(is_base_of);
  }

  v4 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v5 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = *(v4 + 16);
  switch(v6)
  {
    case 1:
      v15 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v15 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(is_base_of);
      }

      v17 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v16 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v16)
      {
        atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
        v18 = *v17;
        std::__shared_weak_count::__release_shared[abi:ne200100](v16);
      }

      else
      {
        v18 = *v17;
      }

      if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_42;
      }

      v22 = *(this + 15);
      AMCP::make_string_for_class_id(*(this + 16), &v43);
      if (v44 >= 0)
      {
        v23 = &v43;
      }

      else
      {
        v23 = v43;
      }

      v24 = *(this + 11);
      *buf = 136316162;
      *&buf[4] = "ASP_Object.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 1294;
      v38 = 1024;
      v39 = v22;
      v40[0] = 2080;
      *&v40[1] = v23;
      v41 = 1024;
      v42 = v24;
      v25 = v18;
      v26 = OS_LOG_TYPE_DEFAULT;
      break;
    case 2:
      v11 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v11 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(is_base_of);
      }

      v13 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v12 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v12)
      {
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
        v14 = *v13;
        std::__shared_weak_count::__release_shared[abi:ne200100](v12);
      }

      else
      {
        v14 = *v13;
      }

      if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_42;
      }

      v19 = *(this + 15);
      AMCP::make_string_for_class_id(*(this + 16), &v43);
      if (v44 >= 0)
      {
        v20 = &v43;
      }

      else
      {
        v20 = v43;
      }

      v21 = *(this + 11);
      *buf = 136316162;
      *&buf[4] = "ASP_Object.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 1294;
      v38 = 1024;
      v39 = v19;
      v40[0] = 2080;
      *&v40[1] = v20;
      v41 = 1024;
      v42 = v21;
      _os_log_debug_impl(&dword_1DE1F9000, v14, OS_LOG_TYPE_DEBUG, "%32s:%-5d Building Core %u for %s driver id: %u", buf, 0x28u);
      goto LABEL_40;
    case 3:
      v7 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v7 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(is_base_of);
      }

      v9 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v8 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
        v10 = *v9;
        std::__shared_weak_count::__release_shared[abi:ne200100](v8);
      }

      else
      {
        v10 = *v9;
      }

      if (!os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        goto LABEL_42;
      }

      v27 = *(this + 15);
      AMCP::make_string_for_class_id(*(this + 16), &v43);
      if (v44 >= 0)
      {
        v28 = &v43;
      }

      else
      {
        v28 = v43;
      }

      v29 = *(this + 11);
      *buf = 136316162;
      *&buf[4] = "ASP_Object.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 1294;
      v38 = 1024;
      v39 = v27;
      v40[0] = 2080;
      *&v40[1] = v28;
      v41 = 1024;
      v42 = v29;
      v25 = v10;
      v26 = OS_LOG_TYPE_INFO;
      break;
    default:
      goto LABEL_42;
  }

  _os_log_impl(&dword_1DE1F9000, v25, v26, "%32s:%-5d Building Core %u for %s driver id: %u", buf, 0x28u);
LABEL_40:
  if (v44 < 0)
  {
    operator delete(v43);
  }

LABEL_42:
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

LABEL_44:
  if (AMCP::is_base_of(0x61706C67, *(this + 17)))
  {
    AMCP::ASP::PlugIn_Object::populate_object_core(this);
  }

  if (AMCP::is_base_of(0x61626F78, *(this + 17)))
  {
    AMCP::ASP::PlugIn_Object::populate_object_core(this);
  }

  if (AMCP::is_base_of(0x61646576, *(this + 17)))
  {
    AMCP::ASP::PlugIn_Object::populate_clock_core(this);
  }

  if (AMCP::is_base_of(0x61737472, *(this + 17)))
  {
    AMCP::ASP::PlugIn_Object::populate_object_core(this);
  }

  if (AMCP::is_base_of(0x736C6472, *(this + 17)))
  {
    AMCP::ASP::PlugIn_Object::populate_control_core(this);
  }

  if (AMCP::is_base_of(0x6C65766C, *(this + 17)))
  {
    AMCP::ASP::PlugIn_Object::populate_volume_control_core(this);
  }

  if (AMCP::is_base_of(0x746F676C, *(this + 17)))
  {
    AMCP::ASP::PlugIn_Object::populate_BOOLean_control_core(this);
  }

  if (AMCP::is_base_of(0x736C6374, *(this + 17)))
  {
    AMCP::ASP::PlugIn_Object::populate_selector_control_core(this);
  }

  if (AMCP::is_base_of(0x7370616E, *(this + 17)))
  {
    AMCP::ASP::PlugIn_Object::populate_stereo_pan_control_core(this);
  }

  if (AMCP::is_base_of(0x6163746C, *(this + 17)))
  {
    AMCP::ASP::PlugIn_Object::populate_control_core(this);
  }

  if (AMCP::is_base_of(0x61636C6B, *(this + 17)))
  {
    AMCP::ASP::PlugIn_Object::populate_clock_core(this);
  }

  if (AMCP::is_base_of(0x616F626A, *(this + 17)))
  {
    AMCP::ASP::PlugIn_Object::populate_object_core(this);
  }

  AMCP::Core::Broker::make_core(&v32, *(*(this + 1) + 16), __p, *(this + 15));
  if (v33)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v33);
  }

  std::__hash_table<std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,std::__unordered_map_hasher<AMCP::Address,std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,true>,std::__unordered_map_equal<AMCP::Address,std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,AMCP::Address::Is_Exact_Match,AMCP::Address::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>>>::__deallocate_node(v35[0]);
  v30 = __p[0];
  __p[0] = 0;
  if (v30)
  {
    operator delete(v30);
  }

  v31 = *MEMORY[0x1E69E9840];
}

void sub_1DE583B40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t AMCP::ASP::calculate_max_element(AMCP::ASP::PlugIn **a1, uint64_t a2, unsigned int a3)
{
  result = AMCP::is_base_of(0x61646576, a3);
  if (result)
  {
    max_number_channels_for_scope = AMCP::ASP::get_max_number_channels_for_scope(1768845428, a1, a2);
    v7 = AMCP::ASP::get_max_number_channels_for_scope(1869968496, a1, a2);
    v8 = *a1;
    if (max_number_channels_for_scope <= v7)
    {
      max_number_channels_for_scope = v7;
    }

    *&v17.mSelector = 0x676C6F626374726CLL;
    v17.mElement = 0;
    AMCP::ASP::PlugIn::object_get_property_data<unsigned int [],unsigned int>(&v18, v8, a2, &v17);
    v9 = __p;
    if (v18 || (v11 = v20, __p == v20))
    {
      v10 = 0;
    }

    else
    {
      v10 = 0;
      v12 = __p;
      do
      {
        v13 = *a1;
        v14 = *v12++;
        *&v17.mSelector = 0x676C6F6263656C6DLL;
        v17.mElement = 0;
        v21 = 0;
        PropertyData = AMCP::ASP::PlugIn::ObjectGetPropertyData(v13, v14, 0, &v17, 0, 0, 4, &v21);
        v16 = v21;
        if (v10 > v21)
        {
          v16 = v10;
        }

        if (!PropertyData)
        {
          v10 = v16;
        }
      }

      while (v12 != v11);
    }

    if (v9)
    {
      operator delete(v9);
    }

    if (max_number_channels_for_scope <= v10)
    {
      return v10;
    }

    else
    {
      return max_number_channels_for_scope;
    }
  }

  return result;
}

void sub_1DE584DA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void sub_1DE58537C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void sub_1DE585A8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void sub_1DE586298(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void sub_1DE586A68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void sub_1DE588108(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  if (a2)
  {
    __cxa_free_exception(v22);
    applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef((v23 - 192));
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::ASP::PlugIn_Object::populate_object_core(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 0x676C6F6269646E74;
  LODWORD(v3) = 0;
  LODWORD(cf[0]) = *(a1 + 60);
  AMCP::Core::Operation_Utilities::make_typed_property<unsigned int,std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<unsigned int>(AMCP::Address const&,unsigned int const&)::{lambda(void)#1}>();
}

void sub_1DE589BFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, const void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24)
{
  if (a2)
  {
    __cxa_free_exception(v24);
    applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(&a17);
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::ASP::PlugIn_Object::update_object_core(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v4 = *(a1 + 24);
  if (v1)
  {
    atomic_fetch_add_explicit((v1 + 8), 1uLL, memory_order_relaxed);
  }

  v2 = *(a1 + 44);
  v3 = 0;
  v6 = 0;
  v7 = 0;
  while (AMCP::Property_Traits<1818454126u>::k_valid_scopes[v3] != 1735159650)
  {
    if (++v3 == 4)
    {
      if (!v1)
      {
LABEL_10:
        strcpy(v5, "nhclbolg");
        HIBYTE(v5[4]) = 0;
        v5[5] = 0;
        std::allocate_shared[abi:ne200100]<AMCP::Core::Operation,std::allocator<AMCP::Core::Operation>,AMCP::Address const&,0>();
      }

LABEL_9:
      atomic_fetch_add_explicit((v1 + 8), 1uLL, memory_order_relaxed);
      goto LABEL_10;
    }
  }

  if (!v1)
  {
    goto LABEL_10;
  }

  goto LABEL_9;
}

void sub_1DE58BBE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  if (v30)
  {
    operator delete(v30);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AMCP::Implementation::get_type_marker<std::function<AMCP::Bag_O_Bytes ()(void)>>()
{
  v0 = HALB_MlockFailHandling::hasReportingCooledDown(void)::sLazyMarshall;
  {
    v0 = HALB_MlockFailHandling::hasReportingCooledDown(void)::sLazyMarshall;
    if (v2)
    {
      v0 = HALB_MlockFailHandling::hasReportingCooledDown(void)::sLazyMarshall;
    }
  }

  return *(v0 + 30);
}

uint64_t std::__function::__value_func<AMCP::Bag_O_Bytes ()(void)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

uint64_t std::__function::__value_func<AMCP::Bag_O_Bytes ()(void)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t AMCP::Implementation::get_type_marker<std::function<void ()(AMCP::Bag_O_Bytes const&)>>()
{
  v0 = HALB_MlockFailHandling::hasReportingCooledDown(void)::sLazyMarshall;
  {
    v0 = HALB_MlockFailHandling::hasReportingCooledDown(void)::sLazyMarshall;
    if (v2)
    {
      v0 = HALB_MlockFailHandling::hasReportingCooledDown(void)::sLazyMarshall;
    }
  }

  return *(v0 + 32);
}

uint64_t std::__function::__value_func<void ()(AMCP::Bag_O_Bytes const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

uint64_t std::__function::__value_func<void ()(AMCP::Bag_O_Bytes const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<BOOL ()(AMCP::Core::Is_Property_Settable_Function)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

uint64_t std::__function::__value_func<BOOL ()(AMCP::Core::Is_Property_Settable_Function)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<BOOL ()(AMCP::Core::Has_Property_Function)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

uint64_t std::__function::__value_func<BOOL ()(AMCP::Core::Has_Property_Function)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<AMCP::Property_Type_Hint ()(AMCP::Core::Get_Property_Type_Hint_Function)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

uint64_t std::__function::__value_func<AMCP::Property_Type_Hint ()(AMCP::Core::Get_Property_Type_Hint_Function)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t AMCP::Implementation::get_type_marker<std::function<mcp_applesauce::CF::PropertyListRef ()(void)>>()
{
  v0 = HALB_MlockFailHandling::hasReportingCooledDown(void)::sLazyMarshall;
  {
    v0 = HALB_MlockFailHandling::hasReportingCooledDown(void)::sLazyMarshall;
    if (v2)
    {
      v0 = HALB_MlockFailHandling::hasReportingCooledDown(void)::sLazyMarshall;
    }
  }

  return *(v0 + 36);
}

uint64_t std::__function::__value_func<mcp_applesauce::CF::PropertyListRef ()(void)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

uint64_t std::__function::__value_func<mcp_applesauce::CF::PropertyListRef ()(void)>::~__value_func[abi:ne200100](uint64_t a1)
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

void AMCP::Core::Operation_Utilities::add_generic_property_getter<mcp_applesauce::CF::PropertyListRef>(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  std::unordered_map<AMCP::Type_ID,AMCP::Thing,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,std::allocator<std::pair<AMCP::Type_ID const,AMCP::Thing>>>::unordered_map(&v5, a1);
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  v18 = AMCP::Implementation::get_type_marker<std::function<AMCP::Thing ()(void)>>();
  v2 = v5;
  v3 = v6;
  v5 = 0;
  v6 = 0;
  v12 = v2;
  v13 = v3;
  v14[0] = v7;
  v14[1] = v8;
  v15 = v9;
  if (v8)
  {
    v4 = *(v7 + 8);
    if ((v3 & (v3 - 1)) != 0)
    {
      if (v4 >= v3)
      {
        v4 %= v3;
      }
    }

    else
    {
      v4 &= v3 - 1;
    }

    *(v2 + 8 * v4) = v14;
    v7 = 0;
    v8 = 0;
  }

  v16 = v10;
  v17 = v11;
  v19 = 0;
  operator new();
}

void sub_1DE58C66C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t AMCP::Implementation::get_type_marker<std::function<void ()(mcp_applesauce::CF::PropertyListRef const&)>>()
{
  v0 = HALB_MlockFailHandling::hasReportingCooledDown(void)::sLazyMarshall;
  {
    v0 = HALB_MlockFailHandling::hasReportingCooledDown(void)::sLazyMarshall;
    if (v2)
    {
      v0 = HALB_MlockFailHandling::hasReportingCooledDown(void)::sLazyMarshall;
    }
  }

  return *(v0 + 38);
}

uint64_t std::__function::__value_func<void ()(mcp_applesauce::CF::PropertyListRef const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

uint64_t std::__function::__value_func<void ()(mcp_applesauce::CF::PropertyListRef const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<AMCP::ASP::make_custom_property_N_CF(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int,AMCP::Property_Type_Code)::$_3,std::allocator<AMCP::ASP::make_custom_property_N_CF(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int,AMCP::Property_Type_Code)::$_3>,AMCP::Property_Type_Hint ()(AMCP::Core::Get_Property_Type_Hint_Function)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3ASPL25make_custom_property_N_CFERKNS_7AddressERKNSt3__110shared_ptrINS0_6PlugInEEEjNS_18Property_Type_CodeEE3$_3"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<AMCP::ASP::make_custom_property_N_CF(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int,AMCP::Property_Type_Code)::$_3,std::allocator<AMCP::ASP::make_custom_property_N_CF(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int,AMCP::Property_Type_Code)::$_3>,AMCP::Property_Type_Hint ()(AMCP::Core::Get_Property_Type_Hint_Function)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F597B288;
  *(a2 + 8) = *(result + 8);
  return result;
}

uint64_t std::__function::__func<AMCP::ASP::make_custom_property_N_CF(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int,AMCP::Property_Type_Code)::$_2,std::allocator<AMCP::ASP::make_custom_property_N_CF(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int,AMCP::Property_Type_Code)::$_2>,BOOL ()(AMCP::Core::Has_Property_Function)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3ASPL25make_custom_property_N_CFERKNS_7AddressERKNSt3__110shared_ptrINS0_6PlugInEEEjNS_18Property_Type_CodeEE3$_2"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::ASP::make_custom_property_N_CF(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int,AMCP::Property_Type_Code)::$_2,std::allocator<AMCP::ASP::make_custom_property_N_CF(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int,AMCP::Property_Type_Code)::$_2>,BOOL ()(AMCP::Core::Has_Property_Function)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<AMCP::ASP::make_custom_property_N_CF(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int,AMCP::Property_Type_Code)::$_2,std::allocator<AMCP::ASP::make_custom_property_N_CF(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int,AMCP::Property_Type_Code)::$_2>,BOOL ()(AMCP::Core::Has_Property_Function)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

__n128 std::__function::__func<AMCP::ASP::make_custom_property_N_CF(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int,AMCP::Property_Type_Code)::$_2,std::allocator<AMCP::ASP::make_custom_property_N_CF(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int,AMCP::Property_Type_Code)::$_2>,BOOL ()(AMCP::Core::Has_Property_Function)>::__clone(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_1F597B208;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  result = *(a1 + 24);
  *(a2 + 24) = result;
  return result;
}

void std::__function::__func<AMCP::ASP::make_custom_property_N_CF(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int,AMCP::Property_Type_Code)::$_2,std::allocator<AMCP::ASP::make_custom_property_N_CF(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int,AMCP::Property_Type_Code)::$_2>,BOOL ()(AMCP::Core::Has_Property_Function)>::~__func(void *a1)
{
  *a1 = &unk_1F597B208;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<AMCP::ASP::make_custom_property_N_CF(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int,AMCP::Property_Type_Code)::$_2,std::allocator<AMCP::ASP::make_custom_property_N_CF(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int,AMCP::Property_Type_Code)::$_2>,BOOL ()(AMCP::Core::Has_Property_Function)>::~__func(void *a1)
{
  *a1 = &unk_1F597B208;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t std::__function::__func<AMCP::ASP::make_custom_property_N_CF(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int,AMCP::Property_Type_Code)::$_1,std::allocator<AMCP::ASP::make_custom_property_N_CF(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int,AMCP::Property_Type_Code)::$_1>,BOOL ()(AMCP::Core::Is_Property_Settable_Function)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3ASPL25make_custom_property_N_CFERKNS_7AddressERKNSt3__110shared_ptrINS0_6PlugInEEEjNS_18Property_Type_CodeEE3$_1"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::ASP::make_custom_property_N_CF(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int,AMCP::Property_Type_Code)::$_1,std::allocator<AMCP::ASP::make_custom_property_N_CF(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int,AMCP::Property_Type_Code)::$_1>,BOOL ()(AMCP::Core::Is_Property_Settable_Function)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<AMCP::ASP::make_custom_property_N_CF(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int,AMCP::Property_Type_Code)::$_1,std::allocator<AMCP::ASP::make_custom_property_N_CF(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int,AMCP::Property_Type_Code)::$_1>,BOOL ()(AMCP::Core::Is_Property_Settable_Function)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

__n128 std::__function::__func<AMCP::ASP::make_custom_property_N_CF(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int,AMCP::Property_Type_Code)::$_1,std::allocator<AMCP::ASP::make_custom_property_N_CF(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int,AMCP::Property_Type_Code)::$_1>,BOOL ()(AMCP::Core::Is_Property_Settable_Function)>::__clone(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_1F597B188;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  result = *(a1 + 24);
  *(a2 + 24) = result;
  return result;
}

void std::__function::__func<AMCP::ASP::make_custom_property_N_CF(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int,AMCP::Property_Type_Code)::$_1,std::allocator<AMCP::ASP::make_custom_property_N_CF(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int,AMCP::Property_Type_Code)::$_1>,BOOL ()(AMCP::Core::Is_Property_Settable_Function)>::~__func(void *a1)
{
  *a1 = &unk_1F597B188;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<AMCP::ASP::make_custom_property_N_CF(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int,AMCP::Property_Type_Code)::$_1,std::allocator<AMCP::ASP::make_custom_property_N_CF(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int,AMCP::Property_Type_Code)::$_1>,BOOL ()(AMCP::Core::Is_Property_Settable_Function)>::~__func(void *a1)
{
  *a1 = &unk_1F597B188;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t std::__function::__func<AMCP::ASP::make_custom_property_N_CF(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int,AMCP::Property_Type_Code)::$_0::operator() const(void)::{lambda(AMCP::Thing const&)#2},std::allocator<AMCP::ASP::make_custom_property_N_CF(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int,AMCP::Property_Type_Code)::$_0::operator() const(void)::{lambda(AMCP::Thing const&)#2}>,void ()(applesauce::CF::StringRef const&)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZZN4AMCP3ASPL25make_custom_property_N_CFERKNS_7AddressERKNSt3__110shared_ptrINS0_6PlugInEEEjNS_18Property_Type_CodeEENK3$_0clEvEUlRKNS_5ThingEE0_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::ASP::make_custom_property_N_CF(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int,AMCP::Property_Type_Code)::$_0::operator() const(void)::{lambda(AMCP::Thing const&)#2},std::allocator<AMCP::ASP::make_custom_property_N_CF(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int,AMCP::Property_Type_Code)::$_0::operator() const(void)::{lambda(AMCP::Thing const&)#2}>,void ()(applesauce::CF::StringRef const&)>::operator()(uint64_t a1, CFTypeRef *a2)
{
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  AMCP::Implementation::In_Place_Storage<applesauce::CF::StringRef>::construct<applesauce::CF::StringRef const&>(v10, a2);
  if (!v11)
  {
    goto LABEL_12;
  }

  v3 = AMCP::Implementation::get_type_marker<applesauce::CF::StringRef>();
  v4 = v11;
  *&v13[0] = 0;
  if (v11)
  {
    v11(3, v10, 0, v13);
    v4 = *&v13[0];
  }

  if (v4 == v3)
  {
    *&v13[0] = v3;
    v5 = (v11)(4, v10, 0, v13);
    if (v5)
    {
      v6 = *v5;
      if (*v5)
      {
        CFRetain(*v5);
      }

      goto LABEL_13;
    }

LABEL_12:
    v6 = 0;
    goto LABEL_13;
  }

  v12 = AMCP::Implementation::get_type_marker<applesauce::CF::StringRef>();
  memset(v13, 0, sizeof(v13));
  v14 = 0;
  v11(6, v10, v13, &v12);
  if (!v14)
  {
    goto LABEL_12;
  }

  v12 = v3;
  v7 = v14(4, v13, 0, &v12);
  if (v7)
  {
    v6 = *v7;
    if (*v7)
    {
      CFRetain(*v7);
    }
  }

  else
  {
    v6 = 0;
  }

  if (v14)
  {
    v14(0, v13, 0, 0);
  }

LABEL_13:
  v8 = *(a1 + 8);
  v9 = *(a1 + 24);
  *&v13[0] = v6;
  AMCP::ASP::PlugIn::ObjectSetPropertyData(v8, v9, 0, (a1 + 28), 0, 0, 8, v13);
  if (v6)
  {
    CFRelease(v6);
  }

  if (v11)
  {
    v11(0, v10, 0, 0);
  }
}

void sub_1DE58CF18(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  AMCP::Thing::~Thing(va);
  __clang_call_terminate(a1);
}

void std::__function::__func<AMCP::ASP::make_custom_property_N_CF(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int,AMCP::Property_Type_Code)::$_0::operator() const(void)::{lambda(AMCP::Thing const&)#2},std::allocator<AMCP::ASP::make_custom_property_N_CF(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int,AMCP::Property_Type_Code)::$_0::operator() const(void)::{lambda(AMCP::Thing const&)#2}>,void ()(applesauce::CF::StringRef const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<AMCP::ASP::make_custom_property_N_CF(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int,AMCP::Property_Type_Code)::$_0::operator() const(void)::{lambda(AMCP::Thing const&)#2},std::allocator<AMCP::ASP::make_custom_property_N_CF(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int,AMCP::Property_Type_Code)::$_0::operator() const(void)::{lambda(AMCP::Thing const&)#2}>,void ()(applesauce::CF::StringRef const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

__n128 std::__function::__func<AMCP::ASP::make_custom_property_N_CF(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int,AMCP::Property_Type_Code)::$_0::operator() const(void)::{lambda(AMCP::Thing const&)#2},std::allocator<AMCP::ASP::make_custom_property_N_CF(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int,AMCP::Property_Type_Code)::$_0::operator() const(void)::{lambda(AMCP::Thing const&)#2}>,void ()(applesauce::CF::StringRef const&)>::__clone(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_1F597B078;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  result = *(a1 + 24);
  *(a2 + 24) = result;
  return result;
}

void std::__function::__func<AMCP::ASP::make_custom_property_N_CF(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int,AMCP::Property_Type_Code)::$_0::operator() const(void)::{lambda(AMCP::Thing const&)#2},std::allocator<AMCP::ASP::make_custom_property_N_CF(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int,AMCP::Property_Type_Code)::$_0::operator() const(void)::{lambda(AMCP::Thing const&)#2}>,void ()(applesauce::CF::StringRef const&)>::~__func(void *a1)
{
  *a1 = &unk_1F597B078;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<AMCP::ASP::make_custom_property_N_CF(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int,AMCP::Property_Type_Code)::$_0::operator() const(void)::{lambda(AMCP::Thing const&)#2},std::allocator<AMCP::ASP::make_custom_property_N_CF(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int,AMCP::Property_Type_Code)::$_0::operator() const(void)::{lambda(AMCP::Thing const&)#2}>,void ()(applesauce::CF::StringRef const&)>::~__func(void *a1)
{
  *a1 = &unk_1F597B078;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t std::__function::__func<AMCP::ASP::make_custom_property_N_CF(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int,AMCP::Property_Type_Code)::$_0::operator() const(void)::{lambda(void)#2},std::allocator<AMCP::ASP::make_custom_property_N_CF(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int,AMCP::Property_Type_Code)::$_0::operator() const(void)::{lambda(void)#2}>,applesauce::CF::StringRef ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZZN4AMCP3ASPL25make_custom_property_N_CFERKNS_7AddressERKNSt3__110shared_ptrINS0_6PlugInEEEjNS_18Property_Type_CodeEENK3$_0clEvEUlvE0_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<AMCP::ASP::make_custom_property_N_CF(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int,AMCP::Property_Type_Code)::$_0::operator() const(void)::{lambda(void)#2},std::allocator<AMCP::ASP::make_custom_property_N_CF(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int,AMCP::Property_Type_Code)::$_0::operator() const(void)::{lambda(void)#2}>,applesauce::CF::StringRef ()(void)>::operator()@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = AMCP::ASP::PlugIn::ObjectGetPropertyDataSize(*(a1 + 8), *(a1 + 24), 0, (a1 + 28), 0, 0);
  if (result == 0x800000000)
  {
    cf = 0;
    result = AMCP::ASP::PlugIn::ObjectGetPropertyData(*(a1 + 8), *(a1 + 24), 0, (a1 + 28), 0, 0, 8, &cf);
    if (!result)
    {
      return applesauce::CF::StringRef::from_get(a2, cf);
    }
  }

  *a2 = 0;
  return result;
}

void std::__function::__func<AMCP::ASP::make_custom_property_N_CF(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int,AMCP::Property_Type_Code)::$_0::operator() const(void)::{lambda(void)#2},std::allocator<AMCP::ASP::make_custom_property_N_CF(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int,AMCP::Property_Type_Code)::$_0::operator() const(void)::{lambda(void)#2}>,applesauce::CF::StringRef ()(void)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<AMCP::ASP::make_custom_property_N_CF(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int,AMCP::Property_Type_Code)::$_0::operator() const(void)::{lambda(void)#2},std::allocator<AMCP::ASP::make_custom_property_N_CF(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int,AMCP::Property_Type_Code)::$_0::operator() const(void)::{lambda(void)#2}>,applesauce::CF::StringRef ()(void)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

__n128 std::__function::__func<AMCP::ASP::make_custom_property_N_CF(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int,AMCP::Property_Type_Code)::$_0::operator() const(void)::{lambda(void)#2},std::allocator<AMCP::ASP::make_custom_property_N_CF(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int,AMCP::Property_Type_Code)::$_0::operator() const(void)::{lambda(void)#2}>,applesauce::CF::StringRef ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_1F597AF88;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  result = *(a1 + 24);
  *(a2 + 24) = result;
  return result;
}

void std::__function::__func<AMCP::ASP::make_custom_property_N_CF(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int,AMCP::Property_Type_Code)::$_0::operator() const(void)::{lambda(void)#2},std::allocator<AMCP::ASP::make_custom_property_N_CF(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int,AMCP::Property_Type_Code)::$_0::operator() const(void)::{lambda(void)#2}>,applesauce::CF::StringRef ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F597AF88;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<AMCP::ASP::make_custom_property_N_CF(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int,AMCP::Property_Type_Code)::$_0::operator() const(void)::{lambda(void)#2},std::allocator<AMCP::ASP::make_custom_property_N_CF(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int,AMCP::Property_Type_Code)::$_0::operator() const(void)::{lambda(void)#2}>,applesauce::CF::StringRef ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F597AF88;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_setter<mcp_applesauce::CF::PropertyListRef>(AMCP::Core::Operation &)::{lambda(AMCP::Thing const&)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_setter<mcp_applesauce::CF::PropertyListRef>(AMCP::Core::Operation &)::{lambda(AMCP::Thing const&)#1}>,void ()(AMCP::Thing const&)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Core19Operation_Utilities27add_generic_property_setterIN14mcp_applesauce2CF15PropertyListRefEEEvRNS0_9OperationEEUlRKNS_5ThingEE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_setter<mcp_applesauce::CF::PropertyListRef>(AMCP::Core::Operation &)::{lambda(AMCP::Thing const&)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_setter<mcp_applesauce::CF::PropertyListRef>(AMCP::Core::Operation &)::{lambda(AMCP::Thing const&)#1}>,void ()(AMCP::Thing const&)>::operator()(uint64_t a1, uint64_t a2)
{
  v33 = *MEMORY[0x1E69E9840];
  AMCP::Thing::convert_to<mcp_applesauce::CF::PropertyListRef>(&cf, a2);
  v3 = AMCP::Implementation::get_type_marker<std::function<void ()(mcp_applesauce::CF::PropertyListRef const&)>>();
  v4 = std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>((a1 + 8), v3);
  if (!v4)
  {
    v12 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v12 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(0);
    }

    v14 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v13 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      v15 = *v14;
      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    }

    else
    {
      v15 = *v14;
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "Operation.h";
      v28 = 1024;
      v29 = 154;
      _os_log_error_impl(&dword_1DE1F9000, v15, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Operation does not have requested function", buf, 0x12u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v26);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("Operation does not have requested function", &v18);
    std::runtime_error::runtime_error(&v19, &v18);
    std::runtime_error::runtime_error(&v20, &v19);
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = -1;
    v20.__vftable = &unk_1F5992170;
    v21 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v20);
    v30 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = void, Argument_Types = <const mcp_applesauce::CF::PropertyListRef &>]";
    v31 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
    v32 = 154;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v17);
  }

  v5 = v4;
  if (!*(v4 + 7) || (*buf = AMCP::Implementation::get_type_marker<std::function<void ()(mcp_applesauce::CF::PropertyListRef const&)>>(), (v4 = (*(v5 + 7))(4, v5 + 24, 0, buf)) == 0))
  {
    v8 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v8 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v4);
    }

    v10 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v9 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      v11 = *v10;
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }

    else
    {
      v11 = *v10;
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "Operation.h";
      v28 = 1024;
      v29 = 161;
      _os_log_error_impl(&dword_1DE1F9000, v11, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Invalid cast", buf, 0x12u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v26);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("Invalid cast", &v18);
    std::runtime_error::runtime_error(&v19, &v18);
    std::runtime_error::runtime_error(&v20, &v19);
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = -1;
    v20.__vftable = &unk_1F5992170;
    v21 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v20);
    v30 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = void, Argument_Types = <const mcp_applesauce::CF::PropertyListRef &>]";
    v31 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
    v32 = 161;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v17);
  }

  v6 = *(v4 + 3);
  if (!v6)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v6 + 48))(v6, &cf);
  if (cf)
  {
    CFRelease(cf);
  }

  v7 = *MEMORY[0x1E69E9840];
}

void sub_1DE58D888(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, std::runtime_error a24, char a25)
{
  if (__p)
  {
    a16 = __p;
    operator delete(__p);
  }

  if (a11)
  {
    a12 = a11;
    operator delete(a11);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::~clone_impl(v27 - 128);
  boost::exception_detail::error_info_injector<std::runtime_error>::~error_info_injector(&a25);
  std::runtime_error::~runtime_error(&a24);
  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (v26)
  {
    __cxa_free_exception(v25);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v27 - 129));
  mcp_applesauce::CF::PropertyListRef::~PropertyListRef(&a10);
  _Unwind_Resume(a1);
}

void std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_setter<mcp_applesauce::CF::PropertyListRef>(AMCP::Core::Operation &)::{lambda(AMCP::Thing const&)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_setter<mcp_applesauce::CF::PropertyListRef>(AMCP::Core::Operation &)::{lambda(AMCP::Thing const&)#1}>,void ()(AMCP::Thing const&)>::destroy_deallocate(void *a1)
{
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table(a1 + 8);

  operator delete(a1);
}

double std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_setter<mcp_applesauce::CF::PropertyListRef>(AMCP::Core::Operation &)::{lambda(AMCP::Thing const&)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_setter<mcp_applesauce::CF::PropertyListRef>(AMCP::Core::Operation &)::{lambda(AMCP::Thing const&)#1}>,void ()(AMCP::Thing const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F597AF08;
  std::unordered_map<AMCP::Type_ID,AMCP::Thing,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,std::allocator<std::pair<AMCP::Type_ID const,AMCP::Thing>>>::unordered_map(a2 + 8, a1 + 8);
  result = *(a1 + 48);
  *(a2 + 48) = result;
  *(a2 + 56) = *(a1 + 56);
  return result;
}

void std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_setter<mcp_applesauce::CF::PropertyListRef>(AMCP::Core::Operation &)::{lambda(AMCP::Thing const&)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_setter<mcp_applesauce::CF::PropertyListRef>(AMCP::Core::Operation &)::{lambda(AMCP::Thing const&)#1}>,void ()(AMCP::Thing const&)>::~__func(void *a1)
{
  *a1 = &unk_1F597AF08;
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table((a1 + 1));

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_setter<mcp_applesauce::CF::PropertyListRef>(AMCP::Core::Operation &)::{lambda(AMCP::Thing const&)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_setter<mcp_applesauce::CF::PropertyListRef>(AMCP::Core::Operation &)::{lambda(AMCP::Thing const&)#1}>,void ()(AMCP::Thing const&)>::~__func(void *a1)
{
  *a1 = &unk_1F597AF08;
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table((a1 + 1));
  return a1;
}

uint64_t AMCP::Implementation::In_Place_Storage<std::function<void ()(mcp_applesauce::CF::PropertyListRef const&)>>::dispatch(int a1, uint64_t a2, AMCP::Thing *a3, uint64_t *a4)
{
  result = 0;
  if (a1 > 2)
  {
    switch(a1)
    {
      case 3:
        v9 = AMCP::Implementation::get_type_marker<std::function<void ()(mcp_applesauce::CF::PropertyListRef const&)>>();
        result = 0;
        *a4 = v9;
        break;
      case 4:
        if (*a4 == AMCP::Implementation::get_type_marker<std::function<void ()(mcp_applesauce::CF::PropertyListRef const&)>>())
        {
          return a2;
        }

        else
        {
          return 0;
        }

      case 6:
        v12 = 0;
        memset(v11, 0, sizeof(v11));
        AMCP::swap(v11, a3, a3);
        if (v12)
        {
          v12(0, v11, 0, 0);
        }

        return 0;
    }
  }

  else
  {
    if (!a1)
    {
LABEL_6:
      std::__function::__value_func<void ()(mcp_applesauce::CF::PropertyListRef const&)>::~__value_func[abi:ne200100](a2);
      result = 0;
      *(a2 + 32) = 0;
      *a2 = 0u;
      *(a2 + 16) = 0u;
      return result;
    }

    if (a1 != 1)
    {
      if (a1 != 2)
      {
        return result;
      }

      *a3 = 0u;
      *(a3 + 1) = 0u;
      std::__function::__value_func<void ()(mcp_applesauce::CF::PropertyListRef const&)>::__value_func[abi:ne200100](a3, a2);
      *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<void ()(mcp_applesauce::CF::PropertyListRef const&)>>::dispatch;
      goto LABEL_6;
    }

    *a3 = 0u;
    *(a3 + 1) = 0u;
    v10 = *(a2 + 24);
    if (v10)
    {
      if (v10 == a2)
      {
        *(a3 + 3) = a3;
        (*(**(a2 + 24) + 24))(*(a2 + 24), a3);
      }

      else
      {
        *(a3 + 3) = (*(*v10 + 16))(v10);
      }
    }

    result = 0;
    *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<void ()(mcp_applesauce::CF::PropertyListRef const&)>>::dispatch;
  }

  return result;
}

uint64_t std::__function::__func<AMCP::ASP::make_custom_property_N_CF(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int,AMCP::Property_Type_Code)::$_0::operator() const(void)::{lambda(AMCP::Thing const&)#1},std::allocator<AMCP::ASP::make_custom_property_N_CF(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int,AMCP::Property_Type_Code)::$_0::operator() const(void)::{lambda(AMCP::Thing const&)#1}>,void ()(mcp_applesauce::CF::PropertyListRef const&)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZZN4AMCP3ASPL25make_custom_property_N_CFERKNS_7AddressERKNSt3__110shared_ptrINS0_6PlugInEEEjNS_18Property_Type_CodeEENK3$_0clEvEUlRKNS_5ThingEE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::ASP::make_custom_property_N_CF(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int,AMCP::Property_Type_Code)::$_0::operator() const(void)::{lambda(AMCP::Thing const&)#1},std::allocator<AMCP::ASP::make_custom_property_N_CF(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int,AMCP::Property_Type_Code)::$_0::operator() const(void)::{lambda(AMCP::Thing const&)#1}>,void ()(mcp_applesauce::CF::PropertyListRef const&)>::operator()(uint64_t a1, CFTypeRef *a2)
{
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  AMCP::Implementation::In_Place_Storage<mcp_applesauce::CF::PropertyListRef>::construct<mcp_applesauce::CF::PropertyListRef const&>(v10, a2);
  if (!v11)
  {
    goto LABEL_12;
  }

  v3 = AMCP::Implementation::get_type_marker<mcp_applesauce::CF::PropertyListRef>();
  v4 = v11;
  *&v13[0] = 0;
  if (v11)
  {
    v11(3, v10, 0, v13);
    v4 = *&v13[0];
  }

  if (v4 == v3)
  {
    *&v13[0] = v3;
    v5 = (v11)(4, v10, 0, v13);
    if (v5)
    {
      v6 = *v5;
      if (*v5)
      {
        CFRetain(*v5);
      }

      goto LABEL_13;
    }

LABEL_12:
    v6 = 0;
    goto LABEL_13;
  }

  v12 = AMCP::Implementation::get_type_marker<mcp_applesauce::CF::PropertyListRef>();
  memset(v13, 0, sizeof(v13));
  v14 = 0;
  v11(6, v10, v13, &v12);
  if (!v14)
  {
    goto LABEL_12;
  }

  v12 = v3;
  v7 = v14(4, v13, 0, &v12);
  if (v7)
  {
    v6 = *v7;
    if (*v7)
    {
      CFRetain(*v7);
    }
  }

  else
  {
    v6 = 0;
  }

  if (v14)
  {
    v14(0, v13, 0, 0);
  }

LABEL_13:
  v8 = *(a1 + 8);
  v9 = *(a1 + 24);
  *&v13[0] = v6;
  AMCP::ASP::PlugIn::ObjectSetPropertyData(v8, v9, 0, (a1 + 28), 0, 0, 8, v13);
  if (v6)
  {
    CFRelease(v6);
  }

  if (v11)
  {
    v11(0, v10, 0, 0);
  }
}

void sub_1DE58DE94(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  AMCP::Thing::~Thing(va);
  __clang_call_terminate(a1);
}

void std::__function::__func<AMCP::ASP::make_custom_property_N_CF(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int,AMCP::Property_Type_Code)::$_0::operator() const(void)::{lambda(AMCP::Thing const&)#1},std::allocator<AMCP::ASP::make_custom_property_N_CF(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int,AMCP::Property_Type_Code)::$_0::operator() const(void)::{lambda(AMCP::Thing const&)#1}>,void ()(mcp_applesauce::CF::PropertyListRef const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<AMCP::ASP::make_custom_property_N_CF(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int,AMCP::Property_Type_Code)::$_0::operator() const(void)::{lambda(AMCP::Thing const&)#1},std::allocator<AMCP::ASP::make_custom_property_N_CF(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int,AMCP::Property_Type_Code)::$_0::operator() const(void)::{lambda(AMCP::Thing const&)#1}>,void ()(mcp_applesauce::CF::PropertyListRef const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

__n128 std::__function::__func<AMCP::ASP::make_custom_property_N_CF(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int,AMCP::Property_Type_Code)::$_0::operator() const(void)::{lambda(AMCP::Thing const&)#1},std::allocator<AMCP::ASP::make_custom_property_N_CF(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int,AMCP::Property_Type_Code)::$_0::operator() const(void)::{lambda(AMCP::Thing const&)#1}>,void ()(mcp_applesauce::CF::PropertyListRef const&)>::__clone(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_1F597AE78;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  result = *(a1 + 24);
  *(a2 + 24) = result;
  return result;
}

void std::__function::__func<AMCP::ASP::make_custom_property_N_CF(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int,AMCP::Property_Type_Code)::$_0::operator() const(void)::{lambda(AMCP::Thing const&)#1},std::allocator<AMCP::ASP::make_custom_property_N_CF(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int,AMCP::Property_Type_Code)::$_0::operator() const(void)::{lambda(AMCP::Thing const&)#1}>,void ()(mcp_applesauce::CF::PropertyListRef const&)>::~__func(void *a1)
{
  *a1 = &unk_1F597AE78;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<AMCP::ASP::make_custom_property_N_CF(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int,AMCP::Property_Type_Code)::$_0::operator() const(void)::{lambda(AMCP::Thing const&)#1},std::allocator<AMCP::ASP::make_custom_property_N_CF(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int,AMCP::Property_Type_Code)::$_0::operator() const(void)::{lambda(AMCP::Thing const&)#1}>,void ()(mcp_applesauce::CF::PropertyListRef const&)>::~__func(void *a1)
{
  *a1 = &unk_1F597AE78;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t std::__function::__func<AMCP::ASP::make_custom_property_N_CF(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int,AMCP::Property_Type_Code)::$_0::operator() const(void)::{lambda(void)#1},std::allocator<AMCP::ASP::make_custom_property_N_CF(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int,AMCP::Property_Type_Code)::$_0::operator() const(void)::{lambda(void)#1}>,mcp_applesauce::CF::PropertyListRef ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZZN4AMCP3ASPL25make_custom_property_N_CFERKNS_7AddressERKNSt3__110shared_ptrINS0_6PlugInEEEjNS_18Property_Type_CodeEENK3$_0clEvEUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

mcp_applesauce::CF::PropertyListRef *std::__function::__func<AMCP::ASP::make_custom_property_N_CF(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int,AMCP::Property_Type_Code)::$_0::operator() const(void)::{lambda(void)#1},std::allocator<AMCP::ASP::make_custom_property_N_CF(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int,AMCP::Property_Type_Code)::$_0::operator() const(void)::{lambda(void)#1}>,mcp_applesauce::CF::PropertyListRef ()(void)>::operator()@<X0>(uint64_t a1@<X0>, mcp_applesauce::CF::PropertyListRef *a2@<X8>)
{
  result = AMCP::ASP::PlugIn::ObjectGetPropertyDataSize(*(a1 + 8), *(a1 + 24), 0, (a1 + 28), 0, 0);
  if (result == 0x800000000)
  {
    cf = 0;
    result = AMCP::ASP::PlugIn::ObjectGetPropertyData(*(a1 + 8), *(a1 + 24), 0, (a1 + 28), 0, 0, 8, &cf);
    if (!result)
    {
      return mcp_applesauce::CF::PropertyListRef::from_get(a2, cf);
    }
  }

  *a2 = 0;
  return result;
}

void std::__function::__func<AMCP::ASP::make_custom_property_N_CF(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int,AMCP::Property_Type_Code)::$_0::operator() const(void)::{lambda(void)#1},std::allocator<AMCP::ASP::make_custom_property_N_CF(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int,AMCP::Property_Type_Code)::$_0::operator() const(void)::{lambda(void)#1}>,mcp_applesauce::CF::PropertyListRef ()(void)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<AMCP::ASP::make_custom_property_N_CF(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int,AMCP::Property_Type_Code)::$_0::operator() const(void)::{lambda(void)#1},std::allocator<AMCP::ASP::make_custom_property_N_CF(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int,AMCP::Property_Type_Code)::$_0::operator() const(void)::{lambda(void)#1}>,mcp_applesauce::CF::PropertyListRef ()(void)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

__n128 std::__function::__func<AMCP::ASP::make_custom_property_N_CF(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int,AMCP::Property_Type_Code)::$_0::operator() const(void)::{lambda(void)#1},std::allocator<AMCP::ASP::make_custom_property_N_CF(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int,AMCP::Property_Type_Code)::$_0::operator() const(void)::{lambda(void)#1}>,mcp_applesauce::CF::PropertyListRef ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_1F597AD88;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  result = *(a1 + 24);
  *(a2 + 24) = result;
  return result;
}

void std::__function::__func<AMCP::ASP::make_custom_property_N_CF(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int,AMCP::Property_Type_Code)::$_0::operator() const(void)::{lambda(void)#1},std::allocator<AMCP::ASP::make_custom_property_N_CF(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int,AMCP::Property_Type_Code)::$_0::operator() const(void)::{lambda(void)#1}>,mcp_applesauce::CF::PropertyListRef ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F597AD88;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<AMCP::ASP::make_custom_property_N_CF(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int,AMCP::Property_Type_Code)::$_0::operator() const(void)::{lambda(void)#1},std::allocator<AMCP::ASP::make_custom_property_N_CF(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int,AMCP::Property_Type_Code)::$_0::operator() const(void)::{lambda(void)#1}>,mcp_applesauce::CF::PropertyListRef ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F597AD88;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_getter<mcp_applesauce::CF::PropertyListRef>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_getter<mcp_applesauce::CF::PropertyListRef>(AMCP::Core::Operation &)::{lambda(void)#1}>,AMCP::Thing ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Core19Operation_Utilities27add_generic_property_getterIN14mcp_applesauce2CF15PropertyListRefEEEvRNS0_9OperationEEUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_getter<mcp_applesauce::CF::PropertyListRef>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_getter<mcp_applesauce::CF::PropertyListRef>(AMCP::Core::Operation &)::{lambda(void)#1}>,AMCP::Thing ()(void)>::operator()(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = AMCP::Implementation::get_type_marker<std::function<mcp_applesauce::CF::PropertyListRef ()(void)>>();
  v5 = std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>((a1 + 8), v4);
  if (!v5)
  {
    v13 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v13 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(0);
    }

    v15 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v14 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      v16 = *v15;
      std::__shared_weak_count::__release_shared[abi:ne200100](v14);
    }

    else
    {
      v16 = *v15;
    }

    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "Operation.h";
      v28 = 1024;
      v29 = 154;
      _os_log_error_impl(&dword_1DE1F9000, v16, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Operation does not have requested function", buf, 0x12u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v26);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("Operation does not have requested function", &v18);
    std::runtime_error::runtime_error(&v19, &v18);
    std::runtime_error::runtime_error(&v20, &v19);
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = -1;
    v20.__vftable = &unk_1F5992170;
    v21 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v20);
    v30 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = mcp_applesauce::CF::PropertyListRef, Argument_Types = <>]";
    v31 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
    v32 = 154;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v17);
  }

  v6 = v5;
  if (!*(v5 + 7) || (*buf = AMCP::Implementation::get_type_marker<std::function<mcp_applesauce::CF::PropertyListRef ()(void)>>(), (v5 = (*(v6 + 7))(4, v6 + 24, 0, buf)) == 0))
  {
    v9 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v9 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v5);
    }

    v11 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v10 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      v12 = *v11;
      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    }

    else
    {
      v12 = *v11;
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "Operation.h";
      v28 = 1024;
      v29 = 161;
      _os_log_error_impl(&dword_1DE1F9000, v12, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Invalid cast", buf, 0x12u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v26);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("Invalid cast", &v18);
    std::runtime_error::runtime_error(&v19, &v18);
    std::runtime_error::runtime_error(&v20, &v19);
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = -1;
    v20.__vftable = &unk_1F5992170;
    v21 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v20);
    v30 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = mcp_applesauce::CF::PropertyListRef, Argument_Types = <>]";
    v31 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
    v32 = 161;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v17);
  }

  v7 = *(v5 + 3);
  if (!v7)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v7 + 48))(buf);
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  AMCP::Implementation::In_Place_Storage<mcp_applesauce::CF::PropertyListRef>::construct<mcp_applesauce::CF::PropertyListRef&>(a2, buf);
  if (*buf)
  {
    CFRelease(*buf);
  }

  v8 = *MEMORY[0x1E69E9840];
}

void sub_1DE58E818(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, std::runtime_error a22, char a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a9)
  {
    operator delete(a9);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::~clone_impl(v25 - 128);
  boost::exception_detail::error_info_injector<std::runtime_error>::~error_info_injector(&a23);
  std::runtime_error::~runtime_error(&a22);
  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (v24)
  {
    __cxa_free_exception(v23);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v25 - 129));
  _Unwind_Resume(a1);
}

void std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_getter<mcp_applesauce::CF::PropertyListRef>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_getter<mcp_applesauce::CF::PropertyListRef>(AMCP::Core::Operation &)::{lambda(void)#1}>,AMCP::Thing ()(void)>::destroy_deallocate(void *a1)
{
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table(a1 + 8);

  operator delete(a1);
}

double std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_getter<mcp_applesauce::CF::PropertyListRef>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_getter<mcp_applesauce::CF::PropertyListRef>(AMCP::Core::Operation &)::{lambda(void)#1}>,AMCP::Thing ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F597AD08;
  std::unordered_map<AMCP::Type_ID,AMCP::Thing,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,std::allocator<std::pair<AMCP::Type_ID const,AMCP::Thing>>>::unordered_map(a2 + 8, a1 + 8);
  result = *(a1 + 48);
  *(a2 + 48) = result;
  *(a2 + 56) = *(a1 + 56);
  return result;
}

void std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_getter<mcp_applesauce::CF::PropertyListRef>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_getter<mcp_applesauce::CF::PropertyListRef>(AMCP::Core::Operation &)::{lambda(void)#1}>,AMCP::Thing ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F597AD08;
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table((a1 + 1));

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_getter<mcp_applesauce::CF::PropertyListRef>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_getter<mcp_applesauce::CF::PropertyListRef>(AMCP::Core::Operation &)::{lambda(void)#1}>,AMCP::Thing ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F597AD08;
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table((a1 + 1));
  return a1;
}

uint64_t AMCP::Implementation::In_Place_Storage<std::function<mcp_applesauce::CF::PropertyListRef ()(void)>>::dispatch(int a1, uint64_t a2, AMCP::Thing *a3, uint64_t *a4)
{
  result = 0;
  if (a1 > 2)
  {
    switch(a1)
    {
      case 3:
        v9 = AMCP::Implementation::get_type_marker<std::function<mcp_applesauce::CF::PropertyListRef ()(void)>>();
        result = 0;
        *a4 = v9;
        break;
      case 4:
        if (*a4 == AMCP::Implementation::get_type_marker<std::function<mcp_applesauce::CF::PropertyListRef ()(void)>>())
        {
          return a2;
        }

        else
        {
          return 0;
        }

      case 6:
        v12 = 0;
        memset(v11, 0, sizeof(v11));
        AMCP::swap(v11, a3, a3);
        if (v12)
        {
          v12(0, v11, 0, 0);
        }

        return 0;
    }
  }

  else
  {
    if (!a1)
    {
LABEL_6:
      std::__function::__value_func<mcp_applesauce::CF::PropertyListRef ()(void)>::~__value_func[abi:ne200100](a2);
      result = 0;
      *(a2 + 32) = 0;
      *a2 = 0u;
      *(a2 + 16) = 0u;
      return result;
    }

    if (a1 != 1)
    {
      if (a1 != 2)
      {
        return result;
      }

      *a3 = 0u;
      *(a3 + 1) = 0u;
      std::__function::__value_func<mcp_applesauce::CF::PropertyListRef ()(void)>::__value_func[abi:ne200100](a3, a2);
      *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<mcp_applesauce::CF::PropertyListRef ()(void)>>::dispatch;
      goto LABEL_6;
    }

    *a3 = 0u;
    *(a3 + 1) = 0u;
    v10 = *(a2 + 24);
    if (v10)
    {
      if (v10 == a2)
      {
        *(a3 + 3) = a3;
        (*(**(a2 + 24) + 24))(*(a2 + 24), a3);
      }

      else
      {
        *(a3 + 3) = (*(*v10 + 16))(v10);
      }
    }

    result = 0;
    *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<mcp_applesauce::CF::PropertyListRef ()(void)>>::dispatch;
  }

  return result;
}

uint64_t std::__function::__func<AMCP::ASP::make_custom_property_getter_dcat(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int)::$_0,std::allocator<AMCP::ASP::make_custom_property_getter_dcat(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int)::$_0>,mcp_applesauce::CF::PropertyListRef ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3ASPL32make_custom_property_getter_dcatERKNS_7AddressERKNSt3__110shared_ptrINS0_6PlugInEEEjE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

mcp_applesauce::CF::PropertyListRef *std::__function::__func<AMCP::ASP::make_custom_property_getter_dcat(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int)::$_0,std::allocator<AMCP::ASP::make_custom_property_getter_dcat(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int)::$_0>,mcp_applesauce::CF::PropertyListRef ()(void)>::operator()@<X0>(uint64_t a1@<X0>, mcp_applesauce::CF::PropertyListRef *a2@<X8>)
{
  v4 = 0x676C6F6200000000;
  cf = 0;
  v5 = *(a1 + 8);
  v6 = *(a1 + 24);
  AMCP::get_property_traits(*(a1 + 28), &v15);
  if (v16 != v17)
  {
    v7 = *(a1 + 32);
    v8 = v16;
    while (v7 != *v8)
    {
      if (++v8 == v17)
      {
        goto LABEL_7;
      }
    }

    v4 = v7 << 32;
  }

LABEL_7:
  v9 = v18;
  v10 = *(a1 + 28);
  v11 = *(a1 + 36);
  if (v16)
  {
    operator delete(v16);
  }

  if (v9)
  {
    v12 = v9;
  }

  else
  {
    v12 = v10;
  }

  v15 = v4 | v12;
  LODWORD(v16) = v11;
  result = AMCP::ASP::PlugIn::ObjectGetPropertyData(v5, v6, 0, &v15, 0, 0, 8, &cf);
  if (!result)
  {
    return mcp_applesauce::CF::PropertyListRef::from_get(a2, cf);
  }

  *a2 = 0;
  return result;
}

void std::__function::__func<AMCP::ASP::make_custom_property_getter_dcat(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int)::$_0,std::allocator<AMCP::ASP::make_custom_property_getter_dcat(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int)::$_0>,mcp_applesauce::CF::PropertyListRef ()(void)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<AMCP::ASP::make_custom_property_getter_dcat(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int)::$_0,std::allocator<AMCP::ASP::make_custom_property_getter_dcat(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int)::$_0>,mcp_applesauce::CF::PropertyListRef ()(void)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

__n128 std::__function::__func<AMCP::ASP::make_custom_property_getter_dcat(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int)::$_0,std::allocator<AMCP::ASP::make_custom_property_getter_dcat(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int)::$_0>,mcp_applesauce::CF::PropertyListRef ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_1F597AC78;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  result = *(a1 + 24);
  *(a2 + 24) = result;
  return result;
}

void std::__function::__func<AMCP::ASP::make_custom_property_getter_dcat(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int)::$_0,std::allocator<AMCP::ASP::make_custom_property_getter_dcat(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int)::$_0>,mcp_applesauce::CF::PropertyListRef ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F597AC78;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<AMCP::ASP::make_custom_property_getter_dcat(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int)::$_0,std::allocator<AMCP::ASP::make_custom_property_getter_dcat(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int)::$_0>,mcp_applesauce::CF::PropertyListRef ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F597AC78;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t AMCP::Implementation::In_Place_Storage<std::function<AMCP::Property_Type_Hint ()(AMCP::Core::Get_Property_Type_Hint_Function)>>::dispatch(int a1, uint64_t a2, AMCP::Thing *a3, uint64_t *a4)
{
  result = 0;
  if (a1 > 2)
  {
    switch(a1)
    {
      case 3:
        Property_Type_Hint = AMCP::Implementation::get_type_marker<std::function<AMCP::Property_Type_Hint ()(AMCP::Core::Get_Property_Type_Hint_Function)>>();
        result = 0;
        *a4 = Property_Type_Hint;
        break;
      case 4:
        if (*a4 == AMCP::Implementation::get_type_marker<std::function<AMCP::Property_Type_Hint ()(AMCP::Core::Get_Property_Type_Hint_Function)>>())
        {
          return a2;
        }

        else
        {
          return 0;
        }

      case 6:
        v12 = 0;
        memset(v11, 0, sizeof(v11));
        AMCP::swap(v11, a3, a3);
        if (v12)
        {
          v12(0, v11, 0, 0);
        }

        return 0;
    }
  }

  else
  {
    if (!a1)
    {
LABEL_6:
      std::__function::__value_func<AMCP::Property_Type_Hint ()(AMCP::Core::Get_Property_Type_Hint_Function)>::~__value_func[abi:ne200100](a2);
      result = 0;
      *(a2 + 32) = 0;
      *a2 = 0u;
      *(a2 + 16) = 0u;
      return result;
    }

    if (a1 != 1)
    {
      if (a1 != 2)
      {
        return result;
      }

      *a3 = 0u;
      *(a3 + 1) = 0u;
      std::__function::__value_func<AMCP::Property_Type_Hint ()(AMCP::Core::Get_Property_Type_Hint_Function)>::__value_func[abi:ne200100](a3, a2);
      *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<AMCP::Property_Type_Hint ()(AMCP::Core::Get_Property_Type_Hint_Function)>>::dispatch;
      goto LABEL_6;
    }

    *a3 = 0u;
    *(a3 + 1) = 0u;
    v10 = *(a2 + 24);
    if (v10)
    {
      if (v10 == a2)
      {
        *(a3 + 3) = a3;
        (*(**(a2 + 24) + 24))(*(a2 + 24), a3);
      }

      else
      {
        *(a3 + 3) = (*(*v10 + 16))(v10);
      }
    }

    result = 0;
    *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<AMCP::Property_Type_Hint ()(AMCP::Core::Get_Property_Type_Hint_Function)>>::dispatch;
  }

  return result;
}