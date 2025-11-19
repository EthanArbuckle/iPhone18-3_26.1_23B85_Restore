uint64_t AppleSPUHIDStatistics::registerService()
{
  v8 = *MEMORY[0x29EDCA608];
  v0 = IOHIDServiceCopyProperty();
  if (v0)
  {
    v1 = v0;
    v2 = CFGetTypeID(v0);
    if (v2 == CFStringGetTypeID() && CFEqual(v1, @"SPU") && AppleSPUHIDStatistics::IOHIDServiceSupportsAggregateDictionary())
    {
      IOHIDServiceRegistryID = AppleSPUHIDStatistics::getIOHIDServiceRegistryID();
      v4 = *MEMORY[0x29EDBB110];
      v5 = IORegistryEntryIDMatching(IOHIDServiceRegistryID);
      IOServiceGetMatchingService(v4, v5);
      operator new();
    }

    CFRelease(v1);
  }

  result = 0;
  v7 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_29D40D1C4(uint64_t a1)
{
  v1 = (*(a1 + 16) + 1);
  *(a1 + 16) = v1;
  return v1;
}

uint64_t sub_29D40D1FC(uint64_t a1, dispatch_queue_t queue)
{
  *(a1 + 624) = queue;
  out_token = 0;
  return notify_register_dispatch("com.apple.applespuhidstatistics.fault", &out_token, queue, &unk_2A241D528);
}

void AppleSPUHIDStatistics::alloc(AppleSPUHIDStatistics *this, const __CFAllocator *a2)
{
  v3 = MEMORY[0x29ED56790](this, 632, 0x10600402039076ALL, 0);

  AppleSPUHIDStatistics::AppleSPUHIDStatistics(v3, this);
}

void AppleSPUHIDStatistics::AppleSPUHIDStatistics(AppleSPUHIDStatistics *this, const __CFAllocator *a2)
{
  *this = &AppleSPUHIDStatistics::vtbl;
  *(this + 1) = a2;
  *(this + 4) = 1;
  v3 = CFUUIDGetConstantUUIDWithBytes(*MEMORY[0x29EDB8EF0], 0x75u, 0xF0u, 0x71u, 0x27u, 0xBBu, 6u, 0x49u, 0xAu, 0xB1u, 0xB9u, 0x81u, 0xAEu, 0x65u, 0xDFu, 6u, 0x46u);
  CFPlugInAddInstanceForFactory(v3);
  *(this + 3) = CFArrayCreateMutable(*(this + 1), 0, 0);
}

void AppleSPUHIDStatistics::~AppleSPUHIDStatistics(AppleSPUHIDStatistics *this)
{
  v1 = CFUUIDGetConstantUUIDWithBytes(*MEMORY[0x29EDB8EF0], 0x75u, 0xF0u, 0x71u, 0x27u, 0xBBu, 6u, 0x49u, 0xAu, 0xB1u, 0xB9u, 0x81u, 0xAEu, 0x65u, 0xDFu, 6u, 0x46u);
  CFPlugInRemoveInstanceForFactory(v1);
  os_release(qword_2A1A130B8);
}

uint64_t AppleSPUHIDStatistics::QueryInterface(AppleSPUHIDStatistics *this, CFUUIDBytes a2, void **a3)
{
  v5 = CFUUIDCreateFromUUIDBytes(0, a2);
  v6 = *MEMORY[0x29EDB8EF0];
  v7 = CFUUIDGetConstantUUIDWithBytes(*MEMORY[0x29EDB8EF0], 0x19u, 0xD7u, 0x74u, 0x41u, 0xBBu, 0xC4u, 0x45u, 0x11u, 0x91u, 0x49u, 0x60u, 0x57u, 0x2Au, 0xBu, 1u, 0x5Cu);
  if (CFEqual(v5, v7) || (v8 = CFUUIDGetConstantUUIDWithBytes(v6, 0x3Du, 0xC3u, 0x5Au, 0xA6u, 0xD3u, 0x5Cu, 0x44u, 0x5Bu, 0x9Au, 0x59u, 0xCAu, 3u, 0xDAu, 0x40u, 0x8Bu, 0x97u), CFEqual(v5, v8)) || (v9 = CFUUIDGetConstantUUIDWithBytes(v6, 0, 0, 0, 0, 0, 0, 0, 0, 0xC0u, 0, 0, 0, 0, 0, 0, 0x46u), CFEqual(v5, v9)))
  {
    v10 = 0;
    ++*(this + 4);
  }

  else
  {
    this = 0;
    v10 = 2147483652;
  }

  *a3 = this;
  CFRelease(v5);
  return v10;
}

uint64_t AppleSPUHIDStatistics::AddRef(AppleSPUHIDStatistics *this)
{
  v1 = (*(this + 4) + 1);
  *(this + 4) = v1;
  return v1;
}

uint64_t AppleSPUHIDStatistics::Release(AppleSPUHIDStatistics *this)
{
  v1 = *(this + 4);
  v2 = (v1 - 1);
  *(this + 4) = v2;
  if (v1 == 1)
  {
    AppleSPUHIDStatistics::~AppleSPUHIDStatistics(this);
    AppleSPUHIDStatistics::operator delete(v3);
  }

  return v2;
}

uint64_t AppleSPUHIDStatistics::open(uint64_t a1)
{
  if (qword_2A1A130C0 != -1)
  {
    sub_29D41AEC8();
  }

  v2 = 0;
  v3 = *MEMORY[0x29EDB8ED8];
  v4 = a1 + 32;
  do
  {
    if (off_29F34D968[v2])
    {
      v5 = off_29F34D968[v2];
    }

    else
    {
      v5 = "com.apple.aop.unknown";
    }

    *(v4 + v2 * 8) = CFStringCreateWithCString(v3, v5, 0);
    ++v2;
  }

  while (v2 != 74);
  return 1;
}

os_log_t sub_29D40D640()
{
  result = os_log_create("AOP", "AppleSPUHIDStatistics");
  qword_2A1A130B8 = result;
  return result;
}

uint64_t AppleSPUHIDStatistics::scheduleWithDispatchQueue(AppleSPUHIDStatistics *this, dispatch_queue_t queue)
{
  *(this + 78) = queue;
  out_token = 0;
  return notify_register_dispatch("com.apple.applespuhidstatistics.fault", &out_token, queue, &unk_2A241D528);
}

void sub_29D40D6B8()
{
  v0 = qword_2A1A130B8;
  if (os_log_type_enabled(qword_2A1A130B8, OS_LOG_TYPE_FAULT))
  {
    sub_29D41AEDC(v0);
  }
}

void AppleSPUHIDStatistics::publishADData(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v29 = *MEMORY[0x29EDCA608];
  if (a3)
  {
    v5 = 0;
    v6 = 0;
    v7 = a1 + 32;
    do
    {
      v8 = (a2 - v5 + 8 * v5);
      v9 = *v8;
      if (v9 != 74)
      {
        v14 = qword_2A1A130B8;
        if (os_log_type_enabled(qword_2A1A130B8, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          v22 = "publishADData";
          v23 = 1024;
          v24 = v9;
          v25 = 1024;
          LODWORD(v26) = 74;
          _os_log_error_impl(&dword_29D40C000, v14, OS_LOG_TYPE_ERROR, "%s spuaggdkeys version mismatch (%#x/%#x)", buf, 0x18u);
        }

        goto LABEL_15;
      }

      v10 = *(v8 + 1);
      if (v10 >> 9 > 0x24)
      {
        v11 = @"com.apple.aop.unknown";
      }

      else
      {
        v11 = *(v7 + 8 * (v10 >> 8));
      }

      v12 = qword_2A1A130B8;
      if (os_log_type_enabled(qword_2A1A130B8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315906;
        v22 = "publishADData";
        v23 = 1024;
        v24 = v10;
        v25 = 2112;
        v26 = v11;
        v27 = 1024;
        v28 = v10 >> 8;
        _os_log_debug_impl(&dword_29D40C000, v12, OS_LOG_TYPE_DEBUG, "%s op=%#x '%@' (%#x)", buf, 0x22u);
        LOWORD(v10) = *(v8 + 1);
      }

      if (v10 > 2u)
      {
        switch(v10)
        {
          case 3u:
            v16 = *(v8 + 3);
            ADClientAddValueForScalarKey();
            break;
          case 4u:
            ADClientClearDistributionKey();
            break;
          case 5u:
            v15 = (*(v8 + 3) * 0.000015259);
            ADClientSetValueForDistributionKey();
            break;
          default:
LABEL_22:
            if (v10 != 5)
            {
              v17 = (*(v8 + 3) * 0.000015259);
              v18 = 1;
              do
              {
                ADClientPushValueForDistributionKey();
              }

              while (v10 - 5 > v18++);
            }

            break;
        }
      }

      else if (v10)
      {
        if (v10 == 1)
        {
          ADClientClearScalarKey();
        }

        else
        {
          if (v10 != 2)
          {
            goto LABEL_22;
          }

          v13 = *(v8 + 3);
          ADClientSetValueForScalarKey();
        }
      }

LABEL_15:
      v5 = ++v6;
    }

    while (v6 < a3);
  }

  v20 = *MEMORY[0x29EDCA608];
}

void AppleSPUHIDStatisticsFactory(const __CFAllocator *a1, const void *a2)
{
  v4 = CFUUIDGetConstantUUIDWithBytes(*MEMORY[0x29EDB8EF0], 0x7Fu, 0x1Au, 0x3Au, 0xE6u, 0x3Eu, 0x3Du, 0x47u, 0xAu, 0xBDu, 0x15u, 0xA2u, 0xDDu, 0x7Eu, 0x1Bu, 0xB7u, 0x19u);
  if (CFEqual(a2, v4))
  {
    v5 = MEMORY[0x29ED56790](a1, 632, 0x10600402039076ALL, 0);
    AppleSPUHIDStatistics::AppleSPUHIDStatistics(v5, a1);
  }
}

CFUUIDRef sub_29D40DA84(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, UInt8 byte7, int a10, UInt8 a11)
{

  return CFUUIDGetConstantUUIDWithBytes(0, 0xC2u, 0x44u, 0xE8u, 0x58u, 0x10u, 0x9Cu, 0x11u, v11, BYTE1(v11), BYTE2(v11), BYTE3(v11), BYTE4(v11), BYTE5(v11), BYTE6(v11), HIBYTE(v11), a11);
}

BOOL sub_29D40DAE0()
{
  v2 = *(v0 + 184);

  return os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);
}

void sub_29D40DB1C(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint8_t buf)
{

  _os_log_impl(a1, v13, OS_LOG_TYPE_DEFAULT, a4, &buf, 0x36u);
}

void spu_profile_print(int *a1)
{
  v1 = CopyProfileDescription(a1);
  if (v1)
  {
    v2 = v1;
    CStringPtr = CFStringGetCStringPtr(v1, 0);
    puts(CStringPtr);

    CFRelease(v2);
  }
}

CFStringRef CopyProfileDescription(int *a1)
{
  AOPLogDecoder::to_string(a1);
  *__p = v4;
  v7 = v5;
  if (v5 >= 0)
  {
    v1 = __p;
  }

  else
  {
    v1 = __p[0];
  }

  v2 = CFStringCreateWithCString(*MEMORY[0x29EDB8ED8], v1, 0x8000100u);
  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_29D40DC18(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x29D40DBC4);
}

void sub_29D40DC24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::string *profile_decoder::find_in_table@<X0>(const entry *a1@<X1>, unsigned int __val@<W3>, unsigned int a3@<W2>, std::string *a4@<X8>)
{
  if (!a3)
  {
    return std::to_string(a4, __val);
  }

  v5 = a3;
  for (i = &a1->data; *(i - 2) != __val; i += 2)
  {
    if (!--v5)
    {
      return std::to_string(a4, __val);
    }
  }

  return sub_29D40DC78(a4, *i);
}

_BYTE *sub_29D40DC78(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_29D41A004();
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

uint64_t profile_decoder::dump(profile_decoder *this, unsigned __int8 *a2, int a3)
{
  sub_29D40DF40(v8);
  sub_29D41A270(&v9, "[", 1);
  if (a3)
  {
    v5 = 0;
    do
    {
      if (v5)
      {
        sub_29D41A270(&v9, ",", 1);
      }

      MEMORY[0x29ED56A70](&v9, a2[v5++]);
    }

    while (a3 != v5);
  }

  sub_29D41A270(&v9, "]", 1);
  std::stringbuf::str();
  v8[0] = *MEMORY[0x29EDC9528];
  v6 = *(MEMORY[0x29EDC9528] + 72);
  *(v8 + *(v8[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v9 = v6;
  v10 = MEMORY[0x29EDC9570] + 16;
  if (v12 < 0)
  {
    operator delete(v11[7].__locale_);
  }

  v10 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v11);
  std::iostream::~basic_iostream();
  return MEMORY[0x29ED56B10](&v13);
}

void sub_29D40DF28(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29D40E1E4(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_29D40DF40(uint64_t *a1)
{
  a1[22] = 0;
  v2 = MEMORY[0x29EDC9590] + 104;
  a1[16] = MEMORY[0x29EDC9590] + 104;
  v3 = a1 + 2;
  v4 = MEMORY[0x29EDC9590] + 64;
  a1[2] = MEMORY[0x29EDC9590] + 64;
  v5 = MEMORY[0x29EDC9528];
  v6 = *(MEMORY[0x29EDC9528] + 24);
  v7 = *(MEMORY[0x29EDC9528] + 16);
  *a1 = v7;
  *(a1 + *(v7 - 24)) = v6;
  a1[1] = 0;
  v8 = (a1 + *(*a1 - 24));
  std::ios_base::init(v8, a1 + 3);
  v9 = MEMORY[0x29EDC9590] + 24;
  v8[1].__vftable = 0;
  v8[1].__fmtflags_ = -1;
  v10 = v5[5];
  v11 = v5[4];
  a1[2] = v11;
  *(v3 + *(v11 - 24)) = v10;
  v12 = v5[1];
  *a1 = v12;
  *(a1 + *(v12 - 24)) = v5[6];
  *a1 = v9;
  a1[16] = v2;
  a1[2] = v4;
  sub_29D41A0AC((a1 + 3), 24);
  return a1;
}

void sub_29D40E1BC(_Unwind_Exception *a1)
{
  std::iostream::~basic_iostream();
  MEMORY[0x29ED56B10](v1);
  _Unwind_Resume(a1);
}

uint64_t sub_29D40E1E4(uint64_t a1)
{
  v2 = MEMORY[0x29EDC9528];
  v3 = *MEMORY[0x29EDC9528];
  *a1 = *MEMORY[0x29EDC9528];
  v4 = *(v2 + 72);
  *(a1 + *(v3 - 24)) = *(v2 + 64);
  *(a1 + 16) = v4;
  *(a1 + 24) = MEMORY[0x29EDC9570] + 16;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale((a1 + 32));
  std::iostream::~basic_iostream();
  MEMORY[0x29ED56B10](a1 + 128);
  return a1;
}

void profile_decoder::parse_datatype(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v456 = *MEMORY[0x29EDCA608];
  v5 = *a3;
  if (v5 <= 4)
  {
    if (*a3 > 2u)
    {
      if (v5 == 3)
      {
        sub_29D40DC78(&v451, "arg1");
        profile_decoder::key(&v453);
        if ((v453.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v160 = &v453;
        }

        else
        {
          v160 = v453.__r_.__value_.__r.__words[0];
        }

        if ((v453.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v453.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v453.__r_.__value_.__l.__size_;
        }

        v162 = sub_29D41A270((a2 + 16), v160, size);
        *(v162 + *(*v162 - 24) + 24) = 10;
        v163 = *(a3 + 4);
        v164 = MEMORY[0x29ED56A70]();
        v165 = sub_29D41A270(v164, ",", 1);
        sub_29D40DC78(&v448, "arg2");
        profile_decoder::key(&v450);
        if ((v450.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v166 = &v450;
        }

        else
        {
          v166 = v450.__r_.__value_.__r.__words[0];
        }

        if ((v450.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v167 = HIBYTE(v450.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v167 = v450.__r_.__value_.__l.__size_;
        }

        v168 = sub_29D41A270(v165, v166, v167);
        *(v168 + *(*v168 - 24) + 24) = 10;
        v169 = *(a3 + 5);
        v170 = MEMORY[0x29ED56A70]();
        v171 = sub_29D41A270(v170, ",", 1);
        sub_29D40DC78(&v445, "arg3");
        profile_decoder::key(&v447);
        if ((v447.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v172 = &v447;
        }

        else
        {
          v172 = v447.__r_.__value_.__r.__words[0];
        }

        if ((v447.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v173 = HIBYTE(v447.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v173 = v447.__r_.__value_.__l.__size_;
        }

        v174 = sub_29D41A270(v171, v172, v173);
        *(v174 + *(*v174 - 24) + 24) = 10;
        v175 = *(a3 + 6);
        v176 = MEMORY[0x29ED56A70]();
        v177 = sub_29D41A270(v176, ",", 1);
        sub_29D40DC78(&v442, "arg4");
        profile_decoder::key(&v444);
        if ((v444.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v178 = &v444;
        }

        else
        {
          v178 = v444.__r_.__value_.__r.__words[0];
        }

        if ((v444.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v179 = HIBYTE(v444.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v179 = v444.__r_.__value_.__l.__size_;
        }

        v180 = sub_29D41A270(v177, v178, v179);
        *(v180 + *(*v180 - 24) + 24) = 10;
        v181 = *(a3 + 7);
        v182 = MEMORY[0x29ED56A70]();
        v183 = sub_29D41A270(v182, ",", 1);
        sub_29D40DC78(&v439, "arg5");
        profile_decoder::key(&v441);
        if ((v441.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v184 = &v441;
        }

        else
        {
          v184 = v441.__r_.__value_.__r.__words[0];
        }

        if ((v441.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v185 = HIBYTE(v441.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v185 = v441.__r_.__value_.__l.__size_;
        }

        v186 = sub_29D41A270(v183, v184, v185);
        *(v186 + *(*v186 - 24) + 24) = 10;
        v187 = *(a3 + 8);
        v188 = MEMORY[0x29ED56A70]();
        v189 = sub_29D41A270(v188, ",", 1);
        sub_29D40DC78(&v436, "arg6");
        profile_decoder::key(&__p);
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
          v191 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v191 = __p.__r_.__value_.__l.__size_;
        }

        v192 = sub_29D41A270(v189, p_p, v191);
        *(v192 + *(*v192 - 24) + 24) = 10;
        v193 = *(a3 + 9);
        v194 = MEMORY[0x29ED56A70]();
        v195 = sub_29D41A270(v194, ",", 1);
        *(v195 + *(*v195 - 24) + 8) = *(v195 + *(*v195 - 24) + 8) & 0xFFFFFFB5 | 8;
        sub_29D40DC78(&v434, "xarg1");
        profile_decoder::key(&__s);
        if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_s = &__s;
        }

        else
        {
          p_s = __s.__r_.__value_.__r.__words[0];
        }

        if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v197 = HIBYTE(__s.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v197 = __s.__r_.__value_.__l.__size_;
        }

        v198 = sub_29D41A270(v195, p_s, v197);
        *(v198 + *(*v198 - 24) + 24) = 10;
        v199 = sub_29D41A270(v198, "'", 1);
        v200 = MEMORY[0x29ED56A70](v199, *(a3 + 4));
        v201 = sub_29D41A270(v200, "',", 2);
        sub_29D40DC78(&v431, "xarg2");
        profile_decoder::key(&v433);
        if ((v433.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v202 = &v433;
        }

        else
        {
          v202 = v433.__r_.__value_.__r.__words[0];
        }

        if ((v433.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v203 = HIBYTE(v433.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v203 = v433.__r_.__value_.__l.__size_;
        }

        v204 = sub_29D41A270(v201, v202, v203);
        *(v204 + *(*v204 - 24) + 24) = 10;
        v205 = sub_29D41A270(v204, "'", 1);
        v206 = MEMORY[0x29ED56A70](v205, *(a3 + 5));
        v207 = sub_29D41A270(v206, "',", 2);
        sub_29D40DC78(&v428, "xarg3");
        profile_decoder::key(&v430);
        if ((v430.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v208 = &v430;
        }

        else
        {
          v208 = v430.__r_.__value_.__r.__words[0];
        }

        if ((v430.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v209 = HIBYTE(v430.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v209 = v430.__r_.__value_.__l.__size_;
        }

        v210 = sub_29D41A270(v207, v208, v209);
        *(v210 + *(*v210 - 24) + 24) = 10;
        v211 = sub_29D41A270(v210, "'", 1);
        v212 = MEMORY[0x29ED56A70](v211, *(a3 + 6));
        v213 = sub_29D41A270(v212, "',", 2);
        sub_29D40DC78(&v426, "xarg4");
        profile_decoder::key(&v454);
        if ((v454.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v214 = &v454;
        }

        else
        {
          v214 = v454.__r_.__value_.__r.__words[0];
        }

        if ((v454.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v215 = HIBYTE(v454.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v215 = v454.__r_.__value_.__l.__size_;
        }

        v216 = sub_29D41A270(v213, v214, v215);
        *(v216 + *(*v216 - 24) + 24) = 10;
        v217 = sub_29D41A270(v216, "'", 1);
        v218 = MEMORY[0x29ED56A70](v217, *(a3 + 7));
        v219 = sub_29D41A270(v218, "',", 2);
        sub_29D40DC78(&v423, "xarg5");
        profile_decoder::key(&v425);
        if ((v425.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v220 = &v425;
        }

        else
        {
          v220 = v425.__r_.__value_.__r.__words[0];
        }

        if ((v425.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v221 = HIBYTE(v425.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v221 = v425.__r_.__value_.__l.__size_;
        }

        v222 = sub_29D41A270(v219, v220, v221);
        *(v222 + *(*v222 - 24) + 24) = 10;
        v223 = sub_29D41A270(v222, "'", 1);
        v224 = MEMORY[0x29ED56A70](v223, *(a3 + 8));
        v225 = sub_29D41A270(v224, "',", 2);
        sub_29D40DC78(&v420, "xarg6");
        profile_decoder::key(&v422);
        if ((v422.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v226 = &v422;
        }

        else
        {
          v226 = v422.__r_.__value_.__r.__words[0];
        }

        if ((v422.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v227 = HIBYTE(v422.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v227 = v422.__r_.__value_.__l.__size_;
        }

        v228 = sub_29D41A270(v225, v226, v227);
        *(v228 + *(*v228 - 24) + 24) = 10;
        v229 = sub_29D41A270(v228, "'", 1);
        v230 = MEMORY[0x29ED56A70](v229, *(a3 + 9));
        v231 = sub_29D41A270(v230, "',", 2);
        *(v231 + *(*v231 - 24) + 8) = *(v231 + *(*v231 - 24) + 8) & 0xFFFFFFB5 | 2;
        if (SHIBYTE(v422.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v422.__r_.__value_.__l.__data_);
        }

        if (v421 < 0)
        {
          operator delete(v420);
        }

        if (SHIBYTE(v425.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v425.__r_.__value_.__l.__data_);
        }

        if (v424 < 0)
        {
          operator delete(v423);
        }

        if (SHIBYTE(v454.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v454.__r_.__value_.__l.__data_);
        }

        if (v427 < 0)
        {
          operator delete(v426);
        }

        if (SHIBYTE(v430.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v430.__r_.__value_.__l.__data_);
        }

        if (v429 < 0)
        {
          operator delete(v428);
        }

        if (SHIBYTE(v433.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v433.__r_.__value_.__l.__data_);
        }

        if (v432 < 0)
        {
          operator delete(v431);
        }

        if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__s.__r_.__value_.__l.__data_);
        }

        if (v435 < 0)
        {
          operator delete(v434);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (v437 < 0)
        {
          operator delete(v436);
        }

        if (SHIBYTE(v441.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v441.__r_.__value_.__l.__data_);
        }

        if (v440 < 0)
        {
          operator delete(v439);
        }

        if (SHIBYTE(v444.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v444.__r_.__value_.__l.__data_);
        }

        if (v443 < 0)
        {
          operator delete(v442);
        }

        if (SHIBYTE(v447.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v447.__r_.__value_.__l.__data_);
        }

        if (v446 < 0)
        {
          operator delete(v445);
        }

        if (SHIBYTE(v450.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v450.__r_.__value_.__l.__data_);
        }

        if (v449 < 0)
        {
          operator delete(v448);
        }

        if (SHIBYTE(v453.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v453.__r_.__value_.__l.__data_);
        }

        if (v452 < 0)
        {
          v36 = v451;
          goto LABEL_612;
        }
      }

      else if (v5 == 4)
      {
        sub_29D40DC78(&v418, "trigger");
        profile_decoder::key(&v453);
        if ((v453.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v64 = &v453;
        }

        else
        {
          v64 = v453.__r_.__value_.__r.__words[0];
        }

        if ((v453.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v65 = HIBYTE(v453.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v65 = v453.__r_.__value_.__l.__size_;
        }

        v66 = sub_29D41A270((a2 + 16), v64, v65);
        v67 = MEMORY[0x29ED56A60](v66, 1);
        v68 = sub_29D41A270(v67, ",", 1);
        sub_29D40DC78(&v416, "thread-id");
        profile_decoder::key(&v450);
        if ((v450.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v69 = &v450;
        }

        else
        {
          v69 = v450.__r_.__value_.__r.__words[0];
        }

        if ((v450.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v70 = HIBYTE(v450.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v70 = v450.__r_.__value_.__l.__size_;
        }

        v71 = sub_29D41A270(v68, v69, v70);
        *(v71 + *(*v71 - 24) + 24) = 10;
        v72 = *(a3 + 5);
        v73 = MEMORY[0x29ED56A70]();
        v74 = sub_29D41A270(v73, ",", 1);
        sub_29D40DC78(&v414, "arg");
        profile_decoder::key(&v447);
        if ((v447.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v75 = &v447;
        }

        else
        {
          v75 = v447.__r_.__value_.__r.__words[0];
        }

        if ((v447.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v76 = HIBYTE(v447.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v76 = v447.__r_.__value_.__l.__size_;
        }

        v77 = sub_29D41A270(v74, v75, v76);
        *(v77 + *(*v77 - 24) + 24) = 10;
        v78 = *(a3 + 5);
        v79 = MEMORY[0x29ED56A70]();
        sub_29D41A270(v79, ",", 1);
        if (SHIBYTE(v447.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v447.__r_.__value_.__l.__data_);
        }

        if (v415 < 0)
        {
          operator delete(v414);
        }

        if (SHIBYTE(v450.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v450.__r_.__value_.__l.__data_);
        }

        if (v417 < 0)
        {
          operator delete(v416);
        }

        if (SHIBYTE(v453.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v453.__r_.__value_.__l.__data_);
        }

        if (v419 < 0)
        {
          v36 = v418;
          goto LABEL_612;
        }
      }
    }

    else if (v5 == 1)
    {
      sub_29D40DC78(&v370, "subtype");
      profile_decoder::key(&v453);
      if ((v453.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v128 = &v453;
      }

      else
      {
        v128 = v453.__r_.__value_.__r.__words[0];
      }

      if ((v453.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v129 = HIBYTE(v453.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v129 = v453.__r_.__value_.__l.__size_;
      }

      v130 = sub_29D41A270((a2 + 16), v128, v129);
      *(v130 + *(*v130 - 24) + 24) = 10;
      v131 = *(a3 + 8);
      v132 = MEMORY[0x29ED56A90]();
      v133 = sub_29D41A270(v132, ",", 1);
      sub_29D40DC78(&v368, "packet-size");
      profile_decoder::key(&v450);
      if ((v450.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v134 = &v450;
      }

      else
      {
        v134 = v450.__r_.__value_.__r.__words[0];
      }

      if ((v450.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v135 = HIBYTE(v450.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v135 = v450.__r_.__value_.__l.__size_;
      }

      v136 = sub_29D41A270(v133, v134, v135);
      *(v136 + *(*v136 - 24) + 24) = 10;
      v137 = *(a3 + 9);
      v138 = MEMORY[0x29ED56A90]();
      v139 = sub_29D41A270(v138, ",", 1);
      sub_29D40DC78(&v366, "data-length");
      profile_decoder::key(&v447);
      if ((v447.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v140 = &v447;
      }

      else
      {
        v140 = v447.__r_.__value_.__r.__words[0];
      }

      if ((v447.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v141 = HIBYTE(v447.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v141 = v447.__r_.__value_.__l.__size_;
      }

      v142 = sub_29D41A270(v139, v140, v141);
      *(v142 + *(*v142 - 24) + 24) = 10;
      v143 = *(a3 + 10);
      v144 = MEMORY[0x29ED56A90]();
      v145 = sub_29D41A270(v144, ",", 1);
      sub_29D40DC78(&v364, "data-offset");
      profile_decoder::key(&v444);
      if ((v444.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v146 = &v444;
      }

      else
      {
        v146 = v444.__r_.__value_.__r.__words[0];
      }

      if ((v444.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v147 = HIBYTE(v444.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v147 = v444.__r_.__value_.__l.__size_;
      }

      v148 = sub_29D41A270(v145, v146, v147);
      *(v148 + *(*v148 - 24) + 24) = 10;
      v149 = *(a3 + 11);
      v150 = MEMORY[0x29ED56A90]();
      v151 = sub_29D41A270(v150, ",", 1);
      sub_29D40DC78(&v362, "raw-data");
      profile_decoder::key(&v441);
      if ((v441.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v152 = &v441;
      }

      else
      {
        v152 = v441.__r_.__value_.__r.__words[0];
      }

      if ((v441.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v153 = HIBYTE(v441.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v153 = v441.__r_.__value_.__l.__size_;
      }

      v154 = sub_29D41A270(v151, v152, v153);
      v155 = v154;
      *(v154 + *(*v154 - 24) + 24) = 10;
      if (*(a3 + 10) >= 0x18u)
      {
        v156 = 24;
      }

      else
      {
        v156 = *(a3 + 10);
      }

      profile_decoder::dump(v154, a3 + 24, v156);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v157 = &__p;
      }

      else
      {
        v157 = __p.__r_.__value_.__r.__words[0];
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v158 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v158 = __p.__r_.__value_.__l.__size_;
      }

      v159 = sub_29D41A270(v155, v157, v158);
      sub_29D41A270(v159, ",", 1);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v441.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v441.__r_.__value_.__l.__data_);
      }

      if (v363 < 0)
      {
        operator delete(v362);
      }

      if (SHIBYTE(v444.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v444.__r_.__value_.__l.__data_);
      }

      if (v365 < 0)
      {
        operator delete(v364);
      }

      if (SHIBYTE(v447.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v447.__r_.__value_.__l.__data_);
      }

      if (v367 < 0)
      {
        operator delete(v366);
      }

      if (SHIBYTE(v450.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v450.__r_.__value_.__l.__data_);
      }

      if (v369 < 0)
      {
        operator delete(v368);
      }

      if (SHIBYTE(v453.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v453.__r_.__value_.__l.__data_);
      }

      if (v371 < 0)
      {
        v36 = v370;
        goto LABEL_612;
      }
    }

    else if (v5 == 2)
    {
      sub_29D40DC78(&v360, "subtype");
      profile_decoder::key(&v453);
      if ((v453.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v37 = &v453;
      }

      else
      {
        v37 = v453.__r_.__value_.__r.__words[0];
      }

      if ((v453.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v38 = HIBYTE(v453.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v38 = v453.__r_.__value_.__l.__size_;
      }

      v39 = sub_29D41A270((a2 + 16), v37, v38);
      *(v39 + *(*v39 - 24) + 24) = 10;
      v40 = *(a3 + 8);
      v41 = MEMORY[0x29ED56A90]();
      v42 = sub_29D41A270(v41, ",", 1);
      sub_29D40DC78(&v358, "packet-size");
      profile_decoder::key(&v450);
      if ((v450.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v43 = &v450;
      }

      else
      {
        v43 = v450.__r_.__value_.__r.__words[0];
      }

      if ((v450.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v44 = HIBYTE(v450.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v44 = v450.__r_.__value_.__l.__size_;
      }

      v45 = sub_29D41A270(v42, v43, v44);
      *(v45 + *(*v45 - 24) + 24) = 10;
      v46 = MEMORY[0x29ED56A80]();
      v47 = sub_29D41A270(v46, ",", 1);
      sub_29D40DC78(&v356, "data-length");
      profile_decoder::key(&v447);
      if ((v447.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v48 = &v447;
      }

      else
      {
        v48 = v447.__r_.__value_.__r.__words[0];
      }

      if ((v447.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v49 = HIBYTE(v447.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v49 = v447.__r_.__value_.__l.__size_;
      }

      v50 = sub_29D41A270(v47, v48, v49);
      *(v50 + *(*v50 - 24) + 24) = 10;
      v51 = MEMORY[0x29ED56A80]();
      v52 = sub_29D41A270(v51, ",", 1);
      sub_29D40DC78(&v354, "data-offset");
      profile_decoder::key(&v444);
      if ((v444.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v53 = &v444;
      }

      else
      {
        v53 = v444.__r_.__value_.__r.__words[0];
      }

      if ((v444.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v54 = HIBYTE(v444.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v54 = v444.__r_.__value_.__l.__size_;
      }

      v55 = sub_29D41A270(v52, v53, v54);
      *(v55 + *(*v55 - 24) + 24) = 10;
      v56 = MEMORY[0x29ED56A60]();
      v57 = sub_29D41A270(v56, ",", 1);
      sub_29D40DC78(&v352, "raw-data");
      profile_decoder::key(&v441);
      if ((v441.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v58 = &v441;
      }

      else
      {
        v58 = v441.__r_.__value_.__r.__words[0];
      }

      if ((v441.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v59 = HIBYTE(v441.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v59 = v441.__r_.__value_.__l.__size_;
      }

      v60 = sub_29D41A270(v57, v58, v59);
      *(v60 + *(*v60 - 24) + 24) = 10;
      profile_decoder::dump(v60, a3 + 18, 30);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v61 = &__p;
      }

      else
      {
        v61 = __p.__r_.__value_.__r.__words[0];
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v62 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v62 = __p.__r_.__value_.__l.__size_;
      }

      v63 = sub_29D41A270(v60, v61, v62);
      sub_29D41A270(v63, ",", 1);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v441.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v441.__r_.__value_.__l.__data_);
      }

      if (v353 < 0)
      {
        operator delete(v352);
      }

      if (SHIBYTE(v444.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v444.__r_.__value_.__l.__data_);
      }

      if (v355 < 0)
      {
        operator delete(v354);
      }

      if (SHIBYTE(v447.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v447.__r_.__value_.__l.__data_);
      }

      if (v357 < 0)
      {
        operator delete(v356);
      }

      if (SHIBYTE(v450.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v450.__r_.__value_.__l.__data_);
      }

      if (v359 < 0)
      {
        operator delete(v358);
      }

      if (SHIBYTE(v453.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v453.__r_.__value_.__l.__data_);
      }

      if (v361 < 0)
      {
        v36 = v360;
        goto LABEL_612;
      }
    }
  }

  else if (*a3 <= 8u)
  {
    if (v5 == 5)
    {
      sub_29D40DC78(&v382, "function-id");
      profile_decoder::key(&v453);
      if ((v453.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v262 = &v453;
      }

      else
      {
        v262 = v453.__r_.__value_.__r.__words[0];
      }

      if ((v453.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v263 = HIBYTE(v453.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v263 = v453.__r_.__value_.__l.__size_;
      }

      v264 = sub_29D41A270((a2 + 16), v262, v263);
      *(v264 + *(*v264 - 24) + 24) = 10;
      v265 = *(a3 + 4);
      v266 = MEMORY[0x29ED56A70]();
      v267 = sub_29D41A270(v266, ",", 1);
      sub_29D40DC78(&v380, "extra-id");
      profile_decoder::key(&v450);
      if ((v450.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v268 = &v450;
      }

      else
      {
        v268 = v450.__r_.__value_.__r.__words[0];
      }

      if ((v450.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v269 = HIBYTE(v450.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v269 = v450.__r_.__value_.__l.__size_;
      }

      v270 = sub_29D41A270(v267, v268, v269);
      *(v270 + *(*v270 - 24) + 24) = 10;
      v271 = *(a3 + 5);
      v272 = MEMORY[0x29ED56A70]();
      v273 = sub_29D41A270(v272, ",", 1);
      sub_29D40DC78(&v378, "thread-id");
      profile_decoder::key(&v447);
      if ((v447.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v274 = &v447;
      }

      else
      {
        v274 = v447.__r_.__value_.__r.__words[0];
      }

      if ((v447.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v275 = HIBYTE(v447.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v275 = v447.__r_.__value_.__l.__size_;
      }

      v276 = sub_29D41A270(v273, v274, v275);
      *(v276 + *(*v276 - 24) + 24) = 10;
      v277 = *(a3 + 6);
      v278 = MEMORY[0x29ED56A70]();
      v279 = sub_29D41A270(v278, ",", 1);
      sub_29D40DC78(&v376, "duration");
      profile_decoder::key(&v444);
      if ((v444.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v280 = &v444;
      }

      else
      {
        v280 = v444.__r_.__value_.__r.__words[0];
      }

      if ((v444.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v281 = HIBYTE(v444.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v281 = v444.__r_.__value_.__l.__size_;
      }

      v282 = sub_29D41A270(v279, v280, v281);
      *(v282 + *(*v282 - 24) + 24) = 10;
      v283 = *(a3 + 7);
      v284 = MEMORY[0x29ED56A70]();
      v285 = sub_29D41A270(v284, ",", 1);
      sub_29D40DC78(&v374, "depth");
      profile_decoder::key(&v441);
      if ((v441.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v286 = &v441;
      }

      else
      {
        v286 = v441.__r_.__value_.__r.__words[0];
      }

      if ((v441.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v287 = HIBYTE(v441.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v287 = v441.__r_.__value_.__l.__size_;
      }

      v288 = sub_29D41A270(v285, v286, v287);
      *(v288 + *(*v288 - 24) + 24) = 10;
      v289 = *(a3 + 8);
      v290 = MEMORY[0x29ED56A70]();
      v291 = sub_29D41A270(v290, ",", 1);
      sub_29D40DC78(&v372, "thread_duration");
      profile_decoder::key(&__p);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v292 = &__p;
      }

      else
      {
        v292 = __p.__r_.__value_.__r.__words[0];
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v293 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v293 = __p.__r_.__value_.__l.__size_;
      }

      v294 = sub_29D41A270(v291, v292, v293);
      *(v294 + *(*v294 - 24) + 24) = 10;
      v295 = *(a3 + 9);
      v296 = MEMORY[0x29ED56A70]();
      sub_29D41A270(v296, ",", 1);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (v373 < 0)
      {
        operator delete(v372);
      }

      if (SHIBYTE(v441.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v441.__r_.__value_.__l.__data_);
      }

      if (v375 < 0)
      {
        operator delete(v374);
      }

      if (SHIBYTE(v444.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v444.__r_.__value_.__l.__data_);
      }

      if (v377 < 0)
      {
        operator delete(v376);
      }

      if (SHIBYTE(v447.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v447.__r_.__value_.__l.__data_);
      }

      if (v379 < 0)
      {
        operator delete(v378);
      }

      if (SHIBYTE(v450.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v450.__r_.__value_.__l.__data_);
      }

      if (v381 < 0)
      {
        operator delete(v380);
      }

      if (SHIBYTE(v453.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v453.__r_.__value_.__l.__data_);
      }

      if (v383 < 0)
      {
        v36 = v382;
        goto LABEL_612;
      }
    }

    else if (v5 == 8)
    {
      v454.__r_.__value_.__s.__data_[12] = 0;
      v454.__r_.__value_.__r.__words[0] = *(a3 + 35);
      LODWORD(v454.__r_.__value_.__r.__words[1]) = *(a3 + 43);
      sub_29D40DC78(&v412, "name");
      profile_decoder::key(&v453);
      if ((v453.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v80 = &v453;
      }

      else
      {
        v80 = v453.__r_.__value_.__r.__words[0];
      }

      if ((v453.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v81 = HIBYTE(v453.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v81 = v453.__r_.__value_.__l.__size_;
      }

      v82 = sub_29D41A270((a2 + 16), v80, v81);
      *(v82 + *(*v82 - 24) + 24) = 16;
      sub_29D40DC78(&v410, &v454);
      profile_decoder::str(&v450);
      if ((v450.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v83 = &v450;
      }

      else
      {
        v83 = v450.__r_.__value_.__r.__words[0];
      }

      if ((v450.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v84 = HIBYTE(v450.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v84 = v450.__r_.__value_.__l.__size_;
      }

      v85 = sub_29D41A270(v82, v83, v84);
      v86 = sub_29D41A270(v85, ",", 1);
      sub_29D40DC78(&v408, "report-interval");
      profile_decoder::key(&v447);
      if ((v447.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v87 = &v447;
      }

      else
      {
        v87 = v447.__r_.__value_.__r.__words[0];
      }

      if ((v447.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v88 = HIBYTE(v447.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v88 = v447.__r_.__value_.__l.__size_;
      }

      v89 = sub_29D41A270(v86, v87, v88);
      *(v89 + *(*v89 - 24) + 24) = 10;
      v90 = *(a3 + 4);
      v91 = MEMORY[0x29ED56A70]();
      v92 = sub_29D41A270(v91, ",", 1);
      sub_29D40DC78(&v406, "batch-interval");
      profile_decoder::key(&v444);
      if ((v444.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v93 = &v444;
      }

      else
      {
        v93 = v444.__r_.__value_.__r.__words[0];
      }

      if ((v444.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v94 = HIBYTE(v444.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v94 = v444.__r_.__value_.__l.__size_;
      }

      v95 = sub_29D41A270(v92, v93, v94);
      *(v95 + *(*v95 - 24) + 24) = 10;
      v96 = *(a3 + 5);
      v97 = MEMORY[0x29ED56A70]();
      v98 = sub_29D41A270(v97, ",", 1);
      sub_29D40DC78(&v404, "threshold");
      profile_decoder::key(&v441);
      if ((v441.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v99 = &v441;
      }

      else
      {
        v99 = v441.__r_.__value_.__r.__words[0];
      }

      if ((v441.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v100 = HIBYTE(v441.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v100 = v441.__r_.__value_.__l.__size_;
      }

      v101 = sub_29D41A270(v98, v99, v100);
      *(v101 + *(*v101 - 24) + 24) = 10;
      v102 = *(a3 + 6);
      v103 = MEMORY[0x29ED56A70]();
      v104 = sub_29D41A270(v103, ",", 1);
      sub_29D40DC78(&v402, "time-limit");
      profile_decoder::key(&__p);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v105 = &__p;
      }

      else
      {
        v105 = __p.__r_.__value_.__r.__words[0];
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v106 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v106 = __p.__r_.__value_.__l.__size_;
      }

      v107 = sub_29D41A270(v104, v105, v106);
      *(v107 + *(*v107 - 24) + 24) = 10;
      v108 = *(a3 + 7);
      v109 = MEMORY[0x29ED56A70]();
      v110 = sub_29D41A270(v109, ",", 1);
      sub_29D40DC78(&v400, "connected");
      profile_decoder::key(&__s);
      if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v111 = &__s;
      }

      else
      {
        v111 = __s.__r_.__value_.__r.__words[0];
      }

      if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v112 = HIBYTE(__s.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v112 = __s.__r_.__value_.__l.__size_;
      }

      v113 = sub_29D41A270(v110, v111, v112);
      *(v113 + *(*v113 - 24) + 24) = 10;
      v114 = a3[32];
      v115 = MEMORY[0x29ED56A70]();
      v116 = sub_29D41A270(v115, ",", 1);
      sub_29D40DC78(&v398, "decimation");
      profile_decoder::key(&v433);
      if ((v433.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v117 = &v433;
      }

      else
      {
        v117 = v433.__r_.__value_.__r.__words[0];
      }

      if ((v433.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v118 = HIBYTE(v433.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v118 = v433.__r_.__value_.__l.__size_;
      }

      v119 = sub_29D41A270(v116, v117, v118);
      *(v119 + *(*v119 - 24) + 24) = 10;
      v120 = a3[33];
      v121 = MEMORY[0x29ED56A70]();
      v122 = sub_29D41A270(v121, ",", 1);
      sub_29D40DC78(&v396, "gyroPowerMode");
      profile_decoder::key(&v430);
      if ((v430.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v123 = &v430;
      }

      else
      {
        v123 = v430.__r_.__value_.__r.__words[0];
      }

      if ((v430.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v124 = HIBYTE(v430.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v124 = v430.__r_.__value_.__l.__size_;
      }

      v125 = sub_29D41A270(v122, v123, v124);
      *(v125 + *(*v125 - 24) + 24) = 10;
      v126 = a3[34];
      v127 = MEMORY[0x29ED56A70]();
      sub_29D41A270(v127, ",", 1);
      if (SHIBYTE(v430.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v430.__r_.__value_.__l.__data_);
      }

      if (v397 < 0)
      {
        operator delete(v396);
      }

      if (SHIBYTE(v433.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v433.__r_.__value_.__l.__data_);
      }

      if (v399 < 0)
      {
        operator delete(v398);
      }

      if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__s.__r_.__value_.__l.__data_);
      }

      if (v401 < 0)
      {
        operator delete(v400);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (v403 < 0)
      {
        operator delete(v402);
      }

      if (SHIBYTE(v441.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v441.__r_.__value_.__l.__data_);
      }

      if (v405 < 0)
      {
        operator delete(v404);
      }

      if (SHIBYTE(v444.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v444.__r_.__value_.__l.__data_);
      }

      if (v407 < 0)
      {
        operator delete(v406);
      }

      if (SHIBYTE(v447.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v447.__r_.__value_.__l.__data_);
      }

      if (v409 < 0)
      {
        operator delete(v408);
      }

      if (SHIBYTE(v450.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v450.__r_.__value_.__l.__data_);
      }

      if (v411 < 0)
      {
        operator delete(v410);
      }

      if (SHIBYTE(v453.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v453.__r_.__value_.__l.__data_);
      }

      if (v413 < 0)
      {
        v36 = v412;
        goto LABEL_612;
      }
    }
  }

  else
  {
    switch(v5)
    {
      case 9u:
        __s.__r_.__value_.__s.__data_[16] = 0;
        *&__s.__r_.__value_.__l.__data_ = *(a3 + 2);
        sub_29D40DC78(&v350, "function");
        profile_decoder::key(&v453);
        if ((v453.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v232 = &v453;
        }

        else
        {
          v232 = v453.__r_.__value_.__r.__words[0];
        }

        if ((v453.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v233 = HIBYTE(v453.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v233 = v453.__r_.__value_.__l.__size_;
        }

        v234 = sub_29D41A270((a2 + 16), v232, v233);
        *(v234 + *(*v234 - 24) + 24) = 10;
        sub_29D40DC78(&v348, &__s);
        profile_decoder::str(&v450);
        if ((v450.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v235 = &v450;
        }

        else
        {
          v235 = v450.__r_.__value_.__r.__words[0];
        }

        if ((v450.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v236 = HIBYTE(v450.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v236 = v450.__r_.__value_.__l.__size_;
        }

        v237 = sub_29D41A270(v234, v235, v236);
        v238 = sub_29D41A270(v237, ",", 1);
        sub_29D40DC78(&v346, "arg");
        profile_decoder::key(&v447);
        if ((v447.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v239 = &v447;
        }

        else
        {
          v239 = v447.__r_.__value_.__r.__words[0];
        }

        if ((v447.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v240 = HIBYTE(v447.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v240 = v447.__r_.__value_.__l.__size_;
        }

        v241 = sub_29D41A270(v238, v239, v240);
        *(v241 + *(*v241 - 24) + 24) = 10;
        v242 = *(a3 + 7);
        v243 = MEMORY[0x29ED56A70]();
        v244 = sub_29D41A270(v243, ",", 1);
        sub_29D40DC78(&v344, "task");
        profile_decoder::key(&v444);
        if ((v444.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v245 = &v444;
        }

        else
        {
          v245 = v444.__r_.__value_.__r.__words[0];
        }

        if ((v444.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v246 = HIBYTE(v444.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v246 = v444.__r_.__value_.__l.__size_;
        }

        v247 = sub_29D41A270(v244, v245, v246);
        *(v247 + *(*v247 - 24) + 24) = 10;
        v248 = *(a3 + 4);
        v249 = MEMORY[0x29ED56A70]();
        v250 = sub_29D41A270(v249, ",", 1);
        sub_29D40DC78(&v342, "thread");
        profile_decoder::key(&v441);
        if ((v441.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v251 = &v441;
        }

        else
        {
          v251 = v441.__r_.__value_.__r.__words[0];
        }

        if ((v441.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v252 = HIBYTE(v441.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v252 = v441.__r_.__value_.__l.__size_;
        }

        v253 = sub_29D41A270(v250, v251, v252);
        *(v253 + *(*v253 - 24) + 24) = 10;
        v254 = *(a3 + 5);
        v255 = MEMORY[0x29ED56A70]();
        v256 = sub_29D41A270(v255, ",", 1);
        sub_29D40DC78(&v340, "duration");
        profile_decoder::key(&__p);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v257 = &__p;
        }

        else
        {
          v257 = __p.__r_.__value_.__r.__words[0];
        }

        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v258 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v258 = __p.__r_.__value_.__l.__size_;
        }

        v259 = sub_29D41A270(v256, v257, v258);
        *(v259 + *(*v259 - 24) + 24) = 10;
        v260 = *(a3 + 6);
        v261 = MEMORY[0x29ED56A70]();
        sub_29D41A270(v261, ",", 1);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (v341 < 0)
        {
          operator delete(v340);
        }

        if (SHIBYTE(v441.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v441.__r_.__value_.__l.__data_);
        }

        if (v343 < 0)
        {
          operator delete(v342);
        }

        if (SHIBYTE(v444.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v444.__r_.__value_.__l.__data_);
        }

        if (v345 < 0)
        {
          operator delete(v344);
        }

        if (SHIBYTE(v447.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v447.__r_.__value_.__l.__data_);
        }

        if (v347 < 0)
        {
          operator delete(v346);
        }

        if (SHIBYTE(v450.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v450.__r_.__value_.__l.__data_);
        }

        if (v349 < 0)
        {
          operator delete(v348);
        }

        if (SHIBYTE(v453.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v453.__r_.__value_.__l.__data_);
        }

        if (v351 < 0)
        {
          v36 = v350;
          goto LABEL_612;
        }

        break;
      case 0xBu:
        v453.__r_.__value_.__r.__words[0] = *(a3 + 3);
        sub_29D40DC78(&v338, "global-id");
        profile_decoder::key(&v450);
        if ((v450.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v297 = &v450;
        }

        else
        {
          v297 = v450.__r_.__value_.__r.__words[0];
        }

        if ((v450.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v298 = HIBYTE(v450.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v298 = v450.__r_.__value_.__l.__size_;
        }

        v299 = sub_29D41A270((a2 + 16), v297, v298);
        *(v299 + *(*v299 - 24) + 24) = 10;
        v300 = *(a3 + 2);
        v301 = MEMORY[0x29ED56AA0]();
        v302 = sub_29D41A270(v301, ",", 1);
        sub_29D40DC78(&v336, "entry-id");
        profile_decoder::key(&v447);
        if ((v447.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v303 = &v447;
        }

        else
        {
          v303 = v447.__r_.__value_.__r.__words[0];
        }

        if ((v447.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v304 = HIBYTE(v447.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v304 = v447.__r_.__value_.__l.__size_;
        }

        v305 = sub_29D41A270(v302, v303, v304);
        *(v305 + *(*v305 - 24) + 24) = 10;
        v306 = *(a3 + 3);
        v307 = MEMORY[0x29ED56AA0]();
        v308 = sub_29D41A270(v307, ",", 1);
        sub_29D40DC78(&v334, "entry");
        profile_decoder::key(&v444);
        if ((v444.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v309 = &v444;
        }

        else
        {
          v309 = v444.__r_.__value_.__r.__words[0];
        }

        if ((v444.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v310 = HIBYTE(v444.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v310 = v444.__r_.__value_.__l.__size_;
        }

        v311 = sub_29D41A270(v308, v309, v310);
        *(v311 + *(*v311 - 24) + 24) = 10;
        sub_29D40DC78(&v332, &v453);
        profile_decoder::str(&v441);
        if ((v441.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v312 = &v441;
        }

        else
        {
          v312 = v441.__r_.__value_.__r.__words[0];
        }

        if ((v441.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v313 = HIBYTE(v441.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v313 = v441.__r_.__value_.__l.__size_;
        }

        v314 = sub_29D41A270(v311, v312, v313);
        v315 = sub_29D41A270(v314, ",", 1);
        sub_29D40DC78(&v330, "arg1");
        profile_decoder::key(&__p);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v316 = &__p;
        }

        else
        {
          v316 = __p.__r_.__value_.__r.__words[0];
        }

        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v317 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v317 = __p.__r_.__value_.__l.__size_;
        }

        v318 = sub_29D41A270(v315, v316, v317);
        *(v318 + *(*v318 - 24) + 24) = 10;
        v319 = *(a3 + 8);
        v320 = MEMORY[0x29ED56A70]();
        v321 = sub_29D41A270(v320, ",", 1);
        sub_29D40DC78(&v328, "arg2");
        profile_decoder::key(&__s);
        if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v322 = &__s;
        }

        else
        {
          v322 = __s.__r_.__value_.__r.__words[0];
        }

        if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v323 = HIBYTE(__s.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v323 = __s.__r_.__value_.__l.__size_;
        }

        v324 = sub_29D41A270(v321, v322, v323);
        *(v324 + *(*v324 - 24) + 24) = 10;
        v325 = *(a3 + 9);
        v326 = MEMORY[0x29ED56A70]();
        sub_29D41A270(v326, ",", 1);
        if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__s.__r_.__value_.__l.__data_);
        }

        if (v329 < 0)
        {
          operator delete(v328);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (v331 < 0)
        {
          operator delete(v330);
        }

        if (SHIBYTE(v441.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v441.__r_.__value_.__l.__data_);
        }

        if (v333 < 0)
        {
          operator delete(v332);
        }

        if (SHIBYTE(v444.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v444.__r_.__value_.__l.__data_);
        }

        if (v335 < 0)
        {
          operator delete(v334);
        }

        if (SHIBYTE(v447.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v447.__r_.__value_.__l.__data_);
        }

        if (v337 < 0)
        {
          operator delete(v336);
        }

        if (SHIBYTE(v450.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v450.__r_.__value_.__l.__data_);
        }

        if (v339 < 0)
        {
          v36 = v338;
          goto LABEL_612;
        }

        break;
      case 0xCu:
        __s.__r_.__value_.__s.__data_[12] = 0;
        __s.__r_.__value_.__r.__words[0] = *(a3 + 36);
        LODWORD(__s.__r_.__value_.__r.__words[1]) = *(a3 + 11);
        sub_29D40DC78(&v394, "name");
        profile_decoder::key(&v453);
        if ((v453.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v6 = &v453;
        }

        else
        {
          v6 = v453.__r_.__value_.__r.__words[0];
        }

        if ((v453.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v7 = HIBYTE(v453.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v7 = v453.__r_.__value_.__l.__size_;
        }

        v8 = sub_29D41A270((a2 + 16), v6, v7);
        *(v8 + *(*v8 - 24) + 24) = 16;
        sub_29D40DC78(&v392, &__s);
        profile_decoder::str(&v450);
        if ((v450.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v9 = &v450;
        }

        else
        {
          v9 = v450.__r_.__value_.__r.__words[0];
        }

        if ((v450.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v10 = HIBYTE(v450.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v10 = v450.__r_.__value_.__l.__size_;
        }

        v11 = sub_29D41A270(v8, v9, v10);
        v12 = sub_29D41A270(v11, ",", 1);
        sub_29D40DC78(&v390, "sample-interval");
        profile_decoder::key(&v447);
        if ((v447.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v13 = &v447;
        }

        else
        {
          v13 = v447.__r_.__value_.__r.__words[0];
        }

        if ((v447.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v14 = HIBYTE(v447.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v14 = v447.__r_.__value_.__l.__size_;
        }

        v15 = sub_29D41A270(v12, v13, v14);
        *(v15 + *(*v15 - 24) + 24) = 10;
        v16 = *(a3 + 6);
        v17 = MEMORY[0x29ED56A70]();
        v18 = sub_29D41A270(v17, ",", 1);
        sub_29D40DC78(&v388, "report-interval");
        profile_decoder::key(&v444);
        if ((v444.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v19 = &v444;
        }

        else
        {
          v19 = v444.__r_.__value_.__r.__words[0];
        }

        if ((v444.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v20 = HIBYTE(v444.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v20 = v444.__r_.__value_.__l.__size_;
        }

        v21 = sub_29D41A270(v18, v19, v20);
        *(v21 + *(*v21 - 24) + 24) = 10;
        v22 = *(a3 + 7);
        v23 = MEMORY[0x29ED56A70]();
        v24 = sub_29D41A270(v23, ",", 1);
        sub_29D40DC78(&v386, "batch-interval");
        profile_decoder::key(&v441);
        if ((v441.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v25 = &v441;
        }

        else
        {
          v25 = v441.__r_.__value_.__r.__words[0];
        }

        if ((v441.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v26 = HIBYTE(v441.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v26 = v441.__r_.__value_.__l.__size_;
        }

        v27 = sub_29D41A270(v24, v25, v26);
        *(v27 + *(*v27 - 24) + 24) = 10;
        v28 = *(a3 + 8);
        v29 = MEMORY[0x29ED56A70]();
        v30 = sub_29D41A270(v29, ",", 1);
        sub_29D40DC78(&v384, "next-dispatch");
        profile_decoder::key(&__p);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v31 = &__p;
        }

        else
        {
          v31 = __p.__r_.__value_.__r.__words[0];
        }

        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v32 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v32 = __p.__r_.__value_.__l.__size_;
        }

        v33 = sub_29D41A270(v30, v31, v32);
        *(v33 + *(*v33 - 24) + 24) = 10;
        v34 = *(a3 + 2);
        v35 = MEMORY[0x29ED56AA0]();
        sub_29D41A270(v35, ",", 1);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (v385 < 0)
        {
          operator delete(v384);
        }

        if (SHIBYTE(v441.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v441.__r_.__value_.__l.__data_);
        }

        if (v387 < 0)
        {
          operator delete(v386);
        }

        if (SHIBYTE(v444.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v444.__r_.__value_.__l.__data_);
        }

        if (v389 < 0)
        {
          operator delete(v388);
        }

        if (SHIBYTE(v447.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v447.__r_.__value_.__l.__data_);
        }

        if (v391 < 0)
        {
          operator delete(v390);
        }

        if (SHIBYTE(v450.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v450.__r_.__value_.__l.__data_);
        }

        if (v393 < 0)
        {
          operator delete(v392);
        }

        if (SHIBYTE(v453.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v453.__r_.__value_.__l.__data_);
        }

        if (v395 < 0)
        {
          v36 = v394;
LABEL_612:
          operator delete(v36);
        }

        break;
    }
  }

  v327 = *MEMORY[0x29EDCA608];
}

void sub_29D41081C(_Unwind_Exception *a1)
{
  if (SLOBYTE(STACK[0x47F]) < 0)
  {
    operator delete(STACK[0x468]);
  }

  if (SLOBYTE(STACK[0x467]) < 0)
  {
    operator delete(STACK[0x450]);
  }

  if (SLOBYTE(STACK[0x4AF]) < 0)
  {
    operator delete(STACK[0x498]);
  }

  if (SLOBYTE(STACK[0x497]) < 0)
  {
    operator delete(STACK[0x480]);
  }

  if (*(v1 - 65) < 0)
  {
    operator delete(*(v1 - 88));
  }

  if (SLOBYTE(STACK[0x4C7]) < 0)
  {
    operator delete(STACK[0x4B0]);
  }

  if (SLOBYTE(STACK[0x4F7]) < 0)
  {
    operator delete(STACK[0x4E0]);
  }

  if (SLOBYTE(STACK[0x4DF]) < 0)
  {
    operator delete(STACK[0x4C8]);
  }

  if (SLOBYTE(STACK[0x527]) < 0)
  {
    operator delete(STACK[0x510]);
  }

  if (SLOBYTE(STACK[0x50F]) < 0)
  {
    operator delete(STACK[0x4F8]);
  }

  if (*(v1 - 41) < 0)
  {
    operator delete(*(v1 - 64));
  }

  if (SLOBYTE(STACK[0x53F]) < 0)
  {
    operator delete(STACK[0x528]);
  }

  if (SLOBYTE(STACK[0x56F]) < 0)
  {
    operator delete(STACK[0x558]);
  }

  if (SLOBYTE(STACK[0x557]) < 0)
  {
    operator delete(STACK[0x540]);
  }

  if (SLOBYTE(STACK[0x59F]) < 0)
  {
    operator delete(STACK[0x588]);
  }

  if (SLOBYTE(STACK[0x587]) < 0)
  {
    operator delete(STACK[0x570]);
  }

  if (SLOBYTE(STACK[0x5CF]) < 0)
  {
    operator delete(STACK[0x5B8]);
  }

  if (SLOBYTE(STACK[0x5B7]) < 0)
  {
    operator delete(STACK[0x5A0]);
  }

  if (*(v1 - 193) < 0)
  {
    operator delete(*(v1 - 216));
  }

  if (*(v1 - 217) < 0)
  {
    operator delete(*(v1 - 240));
  }

  if (*(v1 - 145) < 0)
  {
    operator delete(*(v1 - 168));
  }

  if (*(v1 - 169) < 0)
  {
    operator delete(*(v1 - 192));
  }

  if (*(v1 - 97) < 0)
  {
    operator delete(*(v1 - 120));
  }

  if (*(v1 - 121) < 0)
  {
    operator delete(*(v1 - 144));
  }

  _Unwind_Resume(a1);
}

void profile_decoder::key(std::string *a1@<X8>)
{
  std::operator+<char>();
  v2 = std::string::append(&v3, "':");
  *a1 = *v2;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v3.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v3.__r_.__value_.__l.__data_);
  }
}

void sub_29D411510(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void profile_decoder::str(std::string *a1@<X8>)
{
  std::operator+<char>();
  v2 = std::string::append(&v3, "'");
  *a1 = *v2;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v3.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v3.__r_.__value_.__l.__data_);
  }
}

void sub_29D41159C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t profile_decoder::spu_time_to_wall_time(uint64_t a1, uint64_t a2, uint64_t a3)
{
  valuePtr[4] = *MEMORY[0x29EDCA608];
  v5 = *MEMORY[0x29EDBB110];
  v6 = IOServiceMatching("AppleSPUTimesync");
  result = IOServiceGetMatchingService(v5, v6);
  if (result)
  {
    v8 = result;
    valuePtr[0] = 0;
    *__str = 0;
    CFProperty = IORegistryEntryCreateCFProperty(result, @"timesync", *MEMORY[0x29EDB8ED8], 0);
    if (CFProperty)
    {
      v10 = CFProperty;
      Value = CFDictionaryGetValue(CFProperty, @"spu");
      CFNumberGetValue(Value, kCFNumberLongLongType, valuePtr);
      v12 = CFDictionaryGetValue(v10, @"calendar");
      CFNumberGetValue(v12, kCFNumberLongLongType, __str);
      v13 = *__str + 1000 * a2 - valuePtr[0];
      CFRelease(v10);
      IOObjectRelease(v8);
      v16 = v13 / 0x3B9ACA00;
      v14 = localtime(&v16);
      strftime(valuePtr, 0x1EuLL, "%b %d %T", v14);
      snprintf(__str, 0x1EuLL, "%s.%06lld", valuePtr, v13 / 0x3E8 - 1000000 * (((v13 / 0x3E8 * 0x431BDE82D7B635uLL) >> 64) >> 10));
      MEMORY[0x29ED56A10](a3, __str);
      result = 1;
    }

    else
    {
      IOObjectRelease(v8);
      result = 0;
    }
  }

  v15 = *MEMORY[0x29EDCA608];
  return result;
}

BOOL profile_decoder::get_boot_time(profile_decoder *this, unint64_t *a2)
{
  v10 = *MEMORY[0x29EDCA608];
  v6 = 16;
  *v9 = 0x1500000001;
  v3 = sysctl(v9, 2u, &v7, &v6, 0, 0);
  if ((v3 & 0x80000000) == 0)
  {
    *a2 = v8 + 1000000 * v7;
  }

  v4 = *MEMORY[0x29EDCA608];
  return v3 >= 0;
}

void profile_decoder::to_string(uint64_t a1, int *a2)
{
  v4 = *a2;
  v5 = HIBYTE(*a2);
  v6 = BYTE2(*a2);
  (*(*a1 + 8))(&v146);
  (*(*a1 + 16))(&v144, a1, BYTE2(v4));
  (*(*a1 + 24))(&v142, a1, BYTE2(v4), BYTE1(v4));
  v7 = profile_decoder::find_in_table(&unk_29F34DCB8, v4, 0xDu, &v141);
  v139 = 0uLL;
  v140 = 0;
  v8 = profile_decoder::spu_time_to_wall_time(v7, *(a2 + 1), &v139);
  v86 = v8;
  v138 = 0;
  boot_time = profile_decoder::get_boot_time(v8, &v138);
  sub_29D40DF40(v132);
  v9 = sub_29D41A270(&v133, "{ ", 2);
  sub_29D40DC78(&v129, "category");
  profile_decoder::key(&v131);
  if ((v131.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v10 = &v131;
  }

  else
  {
    v10 = v131.__r_.__value_.__r.__words[0];
  }

  if ((v131.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v131.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v131.__r_.__value_.__l.__size_;
  }

  v12 = sub_29D41A270(v9, v10, size);
  *(v12 + *(*v12 - 24) + 24) = 8;
  if (SHIBYTE(v147) < 0)
  {
    sub_29D41A600(&__dst, v146, *(&v146 + 1));
  }

  else
  {
    __dst = v146;
    v127 = v147;
  }

  profile_decoder::str(&v128);
  if ((v128.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v13 = &v128;
  }

  else
  {
    v13 = v128.__r_.__value_.__r.__words[0];
  }

  if ((v128.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v14 = HIBYTE(v128.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v14 = v128.__r_.__value_.__l.__size_;
  }

  v15 = sub_29D41A270(v12, v13, v14);
  v16 = sub_29D41A270(v15, ",", 1);
  sub_29D40DC78(&v123, "component");
  profile_decoder::key(&v125);
  if ((v125.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v17 = &v125;
  }

  else
  {
    v17 = v125.__r_.__value_.__r.__words[0];
  }

  if ((v125.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v18 = HIBYTE(v125.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v18 = v125.__r_.__value_.__l.__size_;
  }

  v19 = sub_29D41A270(v16, v17, v18);
  *(v19 + *(*v19 - 24) + 24) = 8;
  if (SHIBYTE(v145) < 0)
  {
    sub_29D41A600(&v120, v144, *(&v144 + 1));
  }

  else
  {
    v120 = v144;
    v121 = v145;
  }

  profile_decoder::str(&v122);
  if ((v122.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v20 = &v122;
  }

  else
  {
    v20 = v122.__r_.__value_.__r.__words[0];
  }

  if ((v122.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v21 = HIBYTE(v122.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v21 = v122.__r_.__value_.__l.__size_;
  }

  v22 = sub_29D41A270(v19, v20, v21);
  v23 = sub_29D41A270(v22, ",", 1);
  sub_29D40DC78(&v117, "event");
  profile_decoder::key(&v119);
  if ((v119.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v24 = &v119;
  }

  else
  {
    v24 = v119.__r_.__value_.__r.__words[0];
  }

  if ((v119.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v25 = HIBYTE(v119.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v25 = v119.__r_.__value_.__l.__size_;
  }

  v26 = sub_29D41A270(v23, v24, v25);
  *(v26 + *(*v26 - 24) + 24) = 12;
  if (SHIBYTE(v143) < 0)
  {
    sub_29D41A600(&v114, v142, *(&v142 + 1));
  }

  else
  {
    v114 = v142;
    v115 = v143;
  }

  profile_decoder::str(&v116);
  if ((v116.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v27 = &v116;
  }

  else
  {
    v27 = v116.__r_.__value_.__r.__words[0];
  }

  if ((v116.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v28 = HIBYTE(v116.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v28 = v116.__r_.__value_.__l.__size_;
  }

  v29 = sub_29D41A270(v26, v27, v28);
  v30 = sub_29D41A270(v29, ",", 1);
  sub_29D40DC78(&v111, "type");
  profile_decoder::key(&v113);
  if ((v113.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v31 = &v113;
  }

  else
  {
    v31 = v113.__r_.__value_.__r.__words[0];
  }

  if ((v113.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v32 = HIBYTE(v113.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v32 = v113.__r_.__value_.__l.__size_;
  }

  v33 = sub_29D41A270(v30, v31, v32);
  *(v33 + *(*v33 - 24) + 24) = 12;
  if (SHIBYTE(v141.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_29D41A600(&v109, v141.__r_.__value_.__l.__data_, v141.__r_.__value_.__l.__size_);
  }

  else
  {
    v109 = v141;
  }

  profile_decoder::str(&v110);
  if ((v110.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v34 = &v110;
  }

  else
  {
    v34 = v110.__r_.__value_.__r.__words[0];
  }

  if ((v110.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v35 = HIBYTE(v110.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v35 = v110.__r_.__value_.__l.__size_;
  }

  v36 = sub_29D41A270(v33, v34, v35);
  v37 = sub_29D41A270(v36, ",", 1);
  sub_29D40DC78(&v106, "timestamp");
  profile_decoder::key(&v108);
  if ((v108.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v38 = &v108;
  }

  else
  {
    v38 = v108.__r_.__value_.__r.__words[0];
  }

  if ((v108.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v39 = HIBYTE(v108.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v39 = v108.__r_.__value_.__l.__size_;
  }

  v40 = sub_29D41A270(v37, v38, v39);
  *(v40 + *(*v40 - 24) + 24) = 10;
  v41 = *(a2 + 1);
  v42 = MEMORY[0x29ED56AA0]();
  v43 = sub_29D41A270(v42, ",", 1);
  sub_29D40DC78(&v103, "sequence_num");
  profile_decoder::key(&__p);
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
    v45 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v45 = __p.__r_.__value_.__l.__size_;
  }

  v46 = sub_29D41A270(v43, p_p, v45);
  *(v46 + *(*v46 - 24) + 24) = 10;
  v47 = a2[1];
  v48 = MEMORY[0x29ED56A70]();
  sub_29D41A270(v48, ",", 1);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v104 < 0)
  {
    operator delete(v103);
  }

  if (SHIBYTE(v108.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v108.__r_.__value_.__l.__data_);
  }

  if (v107 < 0)
  {
    operator delete(v106);
  }

  if (SHIBYTE(v110.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v110.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v109.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v109.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v113.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v113.__r_.__value_.__l.__data_);
  }

  if (v112 < 0)
  {
    operator delete(v111);
  }

  if (SHIBYTE(v116.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v116.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v115) < 0)
  {
    operator delete(v114);
  }

  if (SHIBYTE(v119.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v119.__r_.__value_.__l.__data_);
  }

  if (v118 < 0)
  {
    operator delete(v117);
  }

  if (SHIBYTE(v122.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v122.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v121) < 0)
  {
    operator delete(v120);
  }

  if (SHIBYTE(v125.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v125.__r_.__value_.__l.__data_);
  }

  if (v124 < 0)
  {
    operator delete(v123);
  }

  if (SHIBYTE(v128.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v128.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v127) < 0)
  {
    operator delete(__dst);
  }

  if (SHIBYTE(v131.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v131.__r_.__value_.__l.__data_);
  }

  if (v130 < 0)
  {
    operator delete(v129);
  }

  (*(*a1 + 32))(a1, v132, a2);
  sub_29D40DC78(&v101, "type-id");
  profile_decoder::key(&v131);
  if ((v131.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v49 = &v131;
  }

  else
  {
    v49 = v131.__r_.__value_.__r.__words[0];
  }

  if ((v131.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v50 = HIBYTE(v131.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v50 = v131.__r_.__value_.__l.__size_;
  }

  v51 = sub_29D41A270(&v133, v49, v50);
  v52 = MEMORY[0x29ED56A70](v51, v4);
  v53 = sub_29D41A270(v52, ",", 1);
  sub_29D40DC78(&v99, "category-id");
  profile_decoder::key(&v128);
  if ((v128.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v54 = &v128;
  }

  else
  {
    v54 = v128.__r_.__value_.__r.__words[0];
  }

  if ((v128.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v55 = HIBYTE(v128.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v55 = v128.__r_.__value_.__l.__size_;
  }

  v56 = sub_29D41A270(v53, v54, v55);
  v57 = MEMORY[0x29ED56A70](v56, v5);
  v58 = sub_29D41A270(v57, ",", 1);
  sub_29D40DC78(&v97, "component-id");
  profile_decoder::key(&v125);
  if ((v125.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v59 = &v125;
  }

  else
  {
    v59 = v125.__r_.__value_.__r.__words[0];
  }

  if ((v125.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v60 = HIBYTE(v125.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v60 = v125.__r_.__value_.__l.__size_;
  }

  v61 = sub_29D41A270(v58, v59, v60);
  v62 = MEMORY[0x29ED56A70](v61, v6);
  v63 = sub_29D41A270(v62, ",", 1);
  sub_29D40DC78(&v95, "event-id");
  profile_decoder::key(&v122);
  if ((v122.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v64 = &v122;
  }

  else
  {
    v64 = v122.__r_.__value_.__r.__words[0];
  }

  if ((v122.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v65 = HIBYTE(v122.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v65 = v122.__r_.__value_.__l.__size_;
  }

  v66 = sub_29D41A270(v63, v64, v65);
  v67 = MEMORY[0x29ED56A70](v66, BYTE1(v4));
  v68 = sub_29D41A270(v67, ",", 1);
  sub_29D40DC78(&v93, "binary-data");
  profile_decoder::key(&v119);
  if ((v119.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v69 = &v119;
  }

  else
  {
    v69 = v119.__r_.__value_.__r.__words[0];
  }

  if ((v119.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v70 = HIBYTE(v119.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v70 = v119.__r_.__value_.__l.__size_;
  }

  v71 = sub_29D41A270(v68, v69, v70);
  profile_decoder::dump(v71, a2, 48);
  if ((v116.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v72 = &v116;
  }

  else
  {
    v72 = v116.__r_.__value_.__r.__words[0];
  }

  if ((v116.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v73 = HIBYTE(v116.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v73 = v116.__r_.__value_.__l.__size_;
  }

  sub_29D41A270(v71, v72, v73);
  if (SHIBYTE(v116.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v116.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v119.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v119.__r_.__value_.__l.__data_);
  }

  if (v94 < 0)
  {
    operator delete(v93);
  }

  if (SHIBYTE(v122.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v122.__r_.__value_.__l.__data_);
  }

  if (v96 < 0)
  {
    operator delete(v95);
  }

  if (SHIBYTE(v125.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v125.__r_.__value_.__l.__data_);
  }

  if (v98 < 0)
  {
    operator delete(v97);
  }

  if (SHIBYTE(v128.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v128.__r_.__value_.__l.__data_);
  }

  if (v100 < 0)
  {
    operator delete(v99);
  }

  if (SHIBYTE(v131.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v131.__r_.__value_.__l.__data_);
  }

  if (v102 < 0)
  {
    operator delete(v101);
  }

  if (v86)
  {
    v74 = sub_29D41A270(&v133, ",", 1);
    sub_29D40DC78(&v91, "calendar-time");
    profile_decoder::key(&v131);
    if ((v131.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v75 = &v131;
    }

    else
    {
      v75 = v131.__r_.__value_.__r.__words[0];
    }

    if ((v131.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v76 = HIBYTE(v131.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v76 = v131.__r_.__value_.__l.__size_;
    }

    v77 = sub_29D41A270(v74, v75, v76);
    if (SHIBYTE(v140) < 0)
    {
      sub_29D41A600(v89, v139, *(&v139 + 1));
    }

    else
    {
      *v89 = v139;
      v90 = v140;
    }

    profile_decoder::str(&v128);
    if ((v128.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v78 = &v128;
    }

    else
    {
      v78 = v128.__r_.__value_.__r.__words[0];
    }

    if ((v128.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v79 = HIBYTE(v128.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v79 = v128.__r_.__value_.__l.__size_;
    }

    sub_29D41A270(v77, v78, v79);
    if (SHIBYTE(v128.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v128.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v90) < 0)
    {
      operator delete(v89[0]);
    }

    if (SHIBYTE(v131.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v131.__r_.__value_.__l.__data_);
    }

    if (v92 < 0)
    {
      operator delete(v91);
    }
  }

  if (boot_time)
  {
    v80 = sub_29D41A270(&v133, ",", 1);
    sub_29D40DC78(&v87, "boot-timestamp");
    profile_decoder::key(&v131);
    if ((v131.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v81 = &v131;
    }

    else
    {
      v81 = v131.__r_.__value_.__r.__words[0];
    }

    if ((v131.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v82 = HIBYTE(v131.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v82 = v131.__r_.__value_.__l.__size_;
    }

    v83 = sub_29D41A270(v80, v81, v82);
    MEMORY[0x29ED56AA0](v83, v138);
    if (SHIBYTE(v131.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v131.__r_.__value_.__l.__data_);
    }

    if (v88 < 0)
    {
      operator delete(v87);
    }
  }

  sub_29D41A270(&v133, "}", 1);
  std::stringbuf::str();
  v132[0] = *MEMORY[0x29EDC9528];
  v84 = *(MEMORY[0x29EDC9528] + 72);
  *(v132 + *(v132[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v133 = v84;
  v134 = MEMORY[0x29EDC9570] + 16;
  if (v136 < 0)
  {
    operator delete(v135[7].__locale_);
  }

  v134 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v135);
  std::iostream::~basic_iostream();
  MEMORY[0x29ED56B10](&v137);
  if (SHIBYTE(v140) < 0)
  {
    operator delete(v139);
  }

  if (SHIBYTE(v141.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v141.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v143) < 0)
  {
    operator delete(v142);
  }

  if (SHIBYTE(v145) < 0)
  {
    operator delete(v144);
  }

  if (SHIBYTE(v147) < 0)
  {
    operator delete(v146);
  }
}

void sub_29D412530(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (SLOBYTE(STACK[0x2C7]) < 0)
  {
    operator delete(STACK[0x2B0]);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  sub_29D40E1E4(&STACK[0x2C8]);
  if (*(v24 - 193) < 0)
  {
    operator delete(*(v24 - 216));
  }

  if (*(v24 - 169) < 0)
  {
    operator delete(*(v24 - 192));
  }

  if (*(v24 - 145) < 0)
  {
    operator delete(*(v24 - 168));
  }

  if (*(v24 - 121) < 0)
  {
    operator delete(*(v24 - 144));
  }

  if (*(v24 - 97) < 0)
  {
    operator delete(*(v24 - 120));
  }

  _Unwind_Resume(a1);
}

std::string *execution_decoder::event_name@<X0>(unsigned int __val@<W2>, int a2@<W1>, std::string *a3@<X8>)
{
  if (a2 <= 1)
  {
    if (!a2)
    {
      v5 = &unk_29F34DDE8;
      v6 = 3;
      return profile_decoder::find_in_table(v5, __val, v6, a3);
    }

    if (a2 == 1)
    {
      v5 = &unk_29F34DE18;
      goto LABEL_9;
    }
  }

  else
  {
    switch(a2)
    {
      case 2:
        v5 = &unk_29F34DE28;
        v6 = 2;
        return profile_decoder::find_in_table(v5, __val, v6, a3);
      case 3:
        v5 = &unk_29F34DE48;
        v6 = 8;
        return profile_decoder::find_in_table(v5, __val, v6, a3);
      case 4:
        v5 = &unk_29F34DEC8;
LABEL_9:
        v6 = 1;
        return profile_decoder::find_in_table(v5, __val, v6, a3);
    }
  }

  return std::to_string(a3, __val);
}

void cumulus_decoder::parse_datatype(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v6 = *a3;
  if (*a3 == 67108867)
  {
    sub_29D40DC78(&v149, "arg1");
    profile_decoder::key(&v151);
    if ((v151.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v7 = &v151;
    }

    else
    {
      v7 = v151.__r_.__value_.__r.__words[0];
    }

    if ((v151.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v151.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v151.__r_.__value_.__l.__size_;
    }

    v9 = sub_29D41A270((a2 + 16), v7, size);
    *(v9 + *(*v9 - 24) + 24) = 10;
    v10 = *(a3 + 4);
    v11 = MEMORY[0x29ED56A70]();
    v12 = sub_29D41A270(v11, ",", 1);
    sub_29D40DC78(&v146, "arg2");
    profile_decoder::key(&v148);
    if ((v148.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v13 = &v148;
    }

    else
    {
      v13 = v148.__r_.__value_.__r.__words[0];
    }

    if ((v148.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v14 = HIBYTE(v148.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v14 = v148.__r_.__value_.__l.__size_;
    }

    v15 = sub_29D41A270(v12, v13, v14);
    *(v15 + *(*v15 - 24) + 24) = 10;
    v16 = *(a3 + 5);
    v17 = MEMORY[0x29ED56A70]();
    v18 = sub_29D41A270(v17, ",", 1);
    sub_29D40DC78(&v143, "arg3");
    profile_decoder::key(&v145);
    if ((v145.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v19 = &v145;
    }

    else
    {
      v19 = v145.__r_.__value_.__r.__words[0];
    }

    if ((v145.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v20 = HIBYTE(v145.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v20 = v145.__r_.__value_.__l.__size_;
    }

    v21 = sub_29D41A270(v18, v19, v20);
    *(v21 + *(*v21 - 24) + 24) = 10;
    v22 = *(a3 + 6);
    v23 = MEMORY[0x29ED56A70]();
    v24 = sub_29D41A270(v23, ",", 1);
    sub_29D40DC78(&v140, "arg4");
    profile_decoder::key(&v142);
    if ((v142.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v25 = &v142;
    }

    else
    {
      v25 = v142.__r_.__value_.__r.__words[0];
    }

    if ((v142.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v26 = HIBYTE(v142.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v26 = v142.__r_.__value_.__l.__size_;
    }

    v27 = sub_29D41A270(v24, v25, v26);
    *(v27 + *(*v27 - 24) + 24) = 10;
    v28 = *(a3 + 7);
    v29 = MEMORY[0x29ED56A70]();
    v30 = sub_29D41A270(v29, ",", 1);
    sub_29D40DC78(&v137, "arg5");
    profile_decoder::key(&v139);
    if ((v139.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v31 = &v139;
    }

    else
    {
      v31 = v139.__r_.__value_.__r.__words[0];
    }

    if ((v139.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v32 = HIBYTE(v139.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v32 = v139.__r_.__value_.__l.__size_;
    }

    v33 = sub_29D41A270(v30, v31, v32);
    *(v33 + *(*v33 - 24) + 24) = 10;
    v34 = *(a3 + 8);
    v35 = MEMORY[0x29ED56A70]();
    v36 = sub_29D41A270(v35, ",", 1);
    sub_29D40DC78(&v134, "arg6");
    profile_decoder::key(&v136);
    if ((v136.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v37 = &v136;
    }

    else
    {
      v37 = v136.__r_.__value_.__r.__words[0];
    }

    if ((v136.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v38 = HIBYTE(v136.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v38 = v136.__r_.__value_.__l.__size_;
    }

    v39 = sub_29D41A270(v36, v37, v38);
    *(v39 + *(*v39 - 24) + 24) = 10;
    v40 = *(a3 + 9);
    v41 = MEMORY[0x29ED56A70]();
    v42 = sub_29D41A270(v41, ",", 1);
    sub_29D40DC78(&v131, "x");
    profile_decoder::key(&v133);
    if ((v133.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v43 = &v133;
    }

    else
    {
      v43 = v133.__r_.__value_.__r.__words[0];
    }

    if ((v133.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v44 = HIBYTE(v133.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v44 = v133.__r_.__value_.__l.__size_;
    }

    v45 = sub_29D41A270(v42, v43, v44);
    *(v45 + *(*v45 - 24) + 24) = 10;
    v46 = MEMORY[0x29ED56A50](vcvtd_n_f64_s32(*(a3 + 4), 0x10uLL));
    v47 = sub_29D41A270(v46, ",", 1);
    sub_29D40DC78(&v128, "y");
    profile_decoder::key(&v130);
    if ((v130.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v48 = &v130;
    }

    else
    {
      v48 = v130.__r_.__value_.__r.__words[0];
    }

    if ((v130.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v49 = HIBYTE(v130.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v49 = v130.__r_.__value_.__l.__size_;
    }

    v50 = sub_29D41A270(v47, v48, v49);
    *(v50 + *(*v50 - 24) + 24) = 10;
    v51 = MEMORY[0x29ED56A50](vcvtd_n_f64_s32(*(a3 + 5), 0x10uLL));
    v52 = sub_29D41A270(v51, ",", 1);
    sub_29D40DC78(&v125, "z");
    profile_decoder::key(&__p);
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
      v54 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v54 = __p.__r_.__value_.__l.__size_;
    }

    v55 = sub_29D41A270(v52, p_p, v54);
    *(v55 + *(*v55 - 24) + 24) = 10;
    v56 = MEMORY[0x29ED56A50](vcvtd_n_f64_s32(*(a3 + 6), 0x10uLL));
    sub_29D41A270(v56, ",", 1);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (v126 < 0)
    {
      operator delete(v125);
    }

    if (SHIBYTE(v130.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v130.__r_.__value_.__l.__data_);
    }

    if (v129 < 0)
    {
      operator delete(v128);
    }

    if (SHIBYTE(v133.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v133.__r_.__value_.__l.__data_);
    }

    if (v132 < 0)
    {
      operator delete(v131);
    }

    if (SHIBYTE(v136.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v136.__r_.__value_.__l.__data_);
    }

    if (v135 < 0)
    {
      operator delete(v134);
    }

    if (SHIBYTE(v139.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v139.__r_.__value_.__l.__data_);
    }

    if (v138 < 0)
    {
      operator delete(v137);
    }

    if (SHIBYTE(v142.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v142.__r_.__value_.__l.__data_);
    }

    if (v141 < 0)
    {
      operator delete(v140);
    }

    if (SHIBYTE(v145.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v145.__r_.__value_.__l.__data_);
    }

    if (v144 < 0)
    {
      operator delete(v143);
    }

    if (SHIBYTE(v148.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v148.__r_.__value_.__l.__data_);
    }

    if (v147 < 0)
    {
      operator delete(v146);
    }

    if (SHIBYTE(v151.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v151.__r_.__value_.__l.__data_);
    }

    if (v150 < 0)
    {
      operator delete(v149);
    }

    v6 = *a3;
  }

  if (v6 == 67109123)
  {
    sub_29D40DC78(&v123, "arg1");
    profile_decoder::key(&v151);
    if ((v151.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v57 = &v151;
    }

    else
    {
      v57 = v151.__r_.__value_.__r.__words[0];
    }

    if ((v151.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v58 = HIBYTE(v151.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v58 = v151.__r_.__value_.__l.__size_;
    }

    v59 = sub_29D41A270((a2 + 16), v57, v58);
    *(v59 + *(*v59 - 24) + 24) = 10;
    v60 = *(a3 + 4);
    v61 = MEMORY[0x29ED56A70]();
    v62 = sub_29D41A270(v61, ",", 1);
    sub_29D40DC78(&v121, "arg2");
    profile_decoder::key(&v148);
    if ((v148.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v63 = &v148;
    }

    else
    {
      v63 = v148.__r_.__value_.__r.__words[0];
    }

    if ((v148.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v64 = HIBYTE(v148.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v64 = v148.__r_.__value_.__l.__size_;
    }

    v65 = sub_29D41A270(v62, v63, v64);
    *(v65 + *(*v65 - 24) + 24) = 10;
    v66 = *(a3 + 5);
    v67 = MEMORY[0x29ED56A70]();
    v68 = sub_29D41A270(v67, ",", 1);
    sub_29D40DC78(&v119, "arg3");
    profile_decoder::key(&v145);
    if ((v145.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v69 = &v145;
    }

    else
    {
      v69 = v145.__r_.__value_.__r.__words[0];
    }

    if ((v145.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v70 = HIBYTE(v145.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v70 = v145.__r_.__value_.__l.__size_;
    }

    v71 = sub_29D41A270(v68, v69, v70);
    *(v71 + *(*v71 - 24) + 24) = 10;
    v72 = *(a3 + 6);
    v73 = MEMORY[0x29ED56A70]();
    v74 = sub_29D41A270(v73, ",", 1);
    sub_29D40DC78(&v117, "arg4");
    profile_decoder::key(&v142);
    if ((v142.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v75 = &v142;
    }

    else
    {
      v75 = v142.__r_.__value_.__r.__words[0];
    }

    if ((v142.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v76 = HIBYTE(v142.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v76 = v142.__r_.__value_.__l.__size_;
    }

    v77 = sub_29D41A270(v74, v75, v76);
    *(v77 + *(*v77 - 24) + 24) = 10;
    v78 = *(a3 + 7);
    v79 = MEMORY[0x29ED56A70]();
    v80 = sub_29D41A270(v79, ",", 1);
    sub_29D40DC78(&v115, "arg5");
    profile_decoder::key(&v139);
    if ((v139.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v81 = &v139;
    }

    else
    {
      v81 = v139.__r_.__value_.__r.__words[0];
    }

    if ((v139.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v82 = HIBYTE(v139.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v82 = v139.__r_.__value_.__l.__size_;
    }

    v83 = sub_29D41A270(v80, v81, v82);
    *(v83 + *(*v83 - 24) + 24) = 10;
    v84 = *(a3 + 8);
    v85 = MEMORY[0x29ED56A70]();
    v86 = sub_29D41A270(v85, ",", 1);
    sub_29D40DC78(&v113, "arg6");
    profile_decoder::key(&v136);
    if ((v136.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v87 = &v136;
    }

    else
    {
      v87 = v136.__r_.__value_.__r.__words[0];
    }

    if ((v136.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v88 = HIBYTE(v136.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v88 = v136.__r_.__value_.__l.__size_;
    }

    v89 = sub_29D41A270(v86, v87, v88);
    *(v89 + *(*v89 - 24) + 24) = 10;
    v90 = *(a3 + 9);
    v91 = MEMORY[0x29ED56A70]();
    v92 = sub_29D41A270(v91, ",", 1);
    sub_29D40DC78(&v111, "x");
    profile_decoder::key(&v133);
    if ((v133.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v93 = &v133;
    }

    else
    {
      v93 = v133.__r_.__value_.__r.__words[0];
    }

    if ((v133.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v94 = HIBYTE(v133.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v94 = v133.__r_.__value_.__l.__size_;
    }

    v95 = sub_29D41A270(v92, v93, v94);
    *(v95 + *(*v95 - 24) + 24) = 10;
    v96 = MEMORY[0x29ED56A50](vcvtd_n_f64_s32(*(a3 + 4), 0xCuLL));
    v97 = sub_29D41A270(v96, ",", 1);
    sub_29D40DC78(&v109, "y");
    profile_decoder::key(&v130);
    if ((v130.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v98 = &v130;
    }

    else
    {
      v98 = v130.__r_.__value_.__r.__words[0];
    }

    if ((v130.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v99 = HIBYTE(v130.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v99 = v130.__r_.__value_.__l.__size_;
    }

    v100 = sub_29D41A270(v97, v98, v99);
    *(v100 + *(*v100 - 24) + 24) = 10;
    v101 = MEMORY[0x29ED56A50](vcvtd_n_f64_s32(*(a3 + 5), 0xCuLL));
    v102 = sub_29D41A270(v101, ",", 1);
    sub_29D40DC78(&v107, "z");
    profile_decoder::key(&__p);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v103 = &__p;
    }

    else
    {
      v103 = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v104 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v104 = __p.__r_.__value_.__l.__size_;
    }

    v105 = sub_29D41A270(v102, v103, v104);
    *(v105 + *(*v105 - 24) + 24) = 10;
    v106 = MEMORY[0x29ED56A50](vcvtd_n_f64_s32(*(a3 + 6), 0xCuLL));
    sub_29D41A270(v106, ",", 1);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (v108 < 0)
    {
      operator delete(v107);
    }

    if (SHIBYTE(v130.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v130.__r_.__value_.__l.__data_);
    }

    if (v110 < 0)
    {
      operator delete(v109);
    }

    if (SHIBYTE(v133.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v133.__r_.__value_.__l.__data_);
    }

    if (v112 < 0)
    {
      operator delete(v111);
    }

    if (SHIBYTE(v136.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v136.__r_.__value_.__l.__data_);
    }

    if (v114 < 0)
    {
      operator delete(v113);
    }

    if (SHIBYTE(v139.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v139.__r_.__value_.__l.__data_);
    }

    if (v116 < 0)
    {
      operator delete(v115);
    }

    if (SHIBYTE(v142.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v142.__r_.__value_.__l.__data_);
    }

    if (v118 < 0)
    {
      operator delete(v117);
    }

    if (SHIBYTE(v145.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v145.__r_.__value_.__l.__data_);
    }

    if (v120 < 0)
    {
      operator delete(v119);
    }

    if (SHIBYTE(v148.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v148.__r_.__value_.__l.__data_);
    }

    if (v122 < 0)
    {
      operator delete(v121);
    }

    if (SHIBYTE(v151.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v151.__r_.__value_.__l.__data_);
    }

    if (v124 < 0)
    {
      operator delete(v123);
    }
  }

  else
  {
    profile_decoder::parse_datatype(a1, a2, a3);
  }
}

void sub_29D413630(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, void *a46, uint64_t a47, int a48, __int16 a49, char a50, char a51, void *a52, uint64_t a53, int a54, __int16 a55, char a56, char a57, void *a58, uint64_t a59, int a60, __int16 a61, char a62, char a63)
{
  if (a72 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  if (a74 < 0)
  {
    operator delete(a73);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a76 < 0)
  {
    operator delete(a75);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (a78 < 0)
  {
    operator delete(a77);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a80 < 0)
  {
    operator delete(a79);
  }

  if (a39 < 0)
  {
    operator delete(a34);
  }

  if (*(v80 - 209) < 0)
  {
    operator delete(*(v80 - 232));
  }

  if (a45 < 0)
  {
    operator delete(a40);
  }

  if (*(v80 - 161) < 0)
  {
    operator delete(*(v80 - 184));
  }

  if (a51 < 0)
  {
    operator delete(a46);
  }

  if (*(v80 - 113) < 0)
  {
    operator delete(*(v80 - 136));
  }

  if (a57 < 0)
  {
    operator delete(a52);
  }

  if (*(v80 - 65) < 0)
  {
    operator delete(*(v80 - 88));
  }

  if (a63 < 0)
  {
    operator delete(a58);
  }

  _Unwind_Resume(a1);
}

std::string *sshb_decoder::event_name@<X0>(unsigned int __val@<W2>, int a2@<W1>, std::string *a3@<X8>)
{
  if (a2 == 3)
  {
    v4 = &unk_29F34E218;
  }

  else
  {
    v4 = &unk_29F34E298;
  }

  return profile_decoder::find_in_table(v4, __val, 8u, a3);
}

std::string *sshb_decoder::subtype_name@<X0>(sshb_decoder *this@<X0>, uint64_t __val@<X2>, uint64_t a3@<X1>, std::string *a4@<X8>)
{
  v4 = __val;
  if (a3 <= 3)
  {
    if (a3 >= 3)
    {
      if (a3 == 3)
      {
        return (*(*this + 24))(this, a3, __val);
      }

      return std::to_string(a4, __val);
    }

    goto LABEL_7;
  }

  if (a3 > 5)
  {
    if (a3 == 7)
    {
      v6 = &unk_29F34EA28;
      v7 = 17;
      return profile_decoder::find_in_table(v6, v4, v7, a4);
    }
  }

  else if (a3 == 4)
  {
LABEL_7:
    v6 = &unk_29F34E318;
    v7 = 113;
    return profile_decoder::find_in_table(v6, v4, v7, a4);
  }

  return std::to_string(a4, __val);
}

void sshb_decoder::parse_datatype(sshb_decoder *a1, uint64_t a2, unsigned int *a3)
{
  v6 = *a3;
  v7 = BYTE2(*a3);
  v8 = *a3;
  if (v8 == 3)
  {
    sub_29D40DC78(&v847, "trace");
    profile_decoder::key(&v849);
    if ((v849.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v9 = &v849;
    }

    else
    {
      v9 = v849.__r_.__value_.__r.__words[0];
    }

    if ((v849.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v849.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v849.__r_.__value_.__l.__size_;
    }

    v11 = sub_29D41A270((a2 + 16), v9, size);
    *(v11 + *(*v11 - 24) + 24) = 25;
    sshb_decoder::subtype_name(a1, a3[4], v7, &v845);
    profile_decoder::str(&v846);
    if ((v846.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v12 = &v846;
    }

    else
    {
      v12 = v846.__r_.__value_.__r.__words[0];
    }

    if ((v846.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v13 = HIBYTE(v846.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v13 = v846.__r_.__value_.__l.__size_;
    }

    v14 = sub_29D41A270(v11, v12, v13);
    v15 = sub_29D41A270(v14, ",", 1);
    sub_29D40DC78(&v842, "thread");
    profile_decoder::key(&v844);
    if ((v844.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v16 = &v844;
    }

    else
    {
      v16 = v844.__r_.__value_.__r.__words[0];
    }

    if ((v844.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v17 = HIBYTE(v844.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v17 = v844.__r_.__value_.__l.__size_;
    }

    v18 = sub_29D41A270(v15, v16, v17);
    *(v18 + *(*v18 - 24) + 24) = 10;
    v19 = a3[5];
    v20 = MEMORY[0x29ED56A70]();
    v21 = sub_29D41A270(v20, ",", 1);
    sub_29D40DC78(&v839, "arg1");
    profile_decoder::key(&v841);
    if ((v841.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v22 = &v841;
    }

    else
    {
      v22 = v841.__r_.__value_.__r.__words[0];
    }

    if ((v841.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v23 = HIBYTE(v841.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v23 = v841.__r_.__value_.__l.__size_;
    }

    v24 = sub_29D41A270(v21, v22, v23);
    *(v24 + *(*v24 - 24) + 24) = 10;
    v25 = a3[6];
    v26 = MEMORY[0x29ED56A70]();
    v27 = sub_29D41A270(v26, ",", 1);
    sub_29D40DC78(&v836, "arg2");
    profile_decoder::key(&v838);
    if ((v838.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v28 = &v838;
    }

    else
    {
      v28 = v838.__r_.__value_.__r.__words[0];
    }

    if ((v838.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v29 = HIBYTE(v838.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v29 = v838.__r_.__value_.__l.__size_;
    }

    v30 = sub_29D41A270(v27, v28, v29);
    *(v30 + *(*v30 - 24) + 24) = 10;
    v31 = a3[7];
    v32 = MEMORY[0x29ED56A70]();
    v33 = sub_29D41A270(v32, ",", 1);
    sub_29D40DC78(&v833, "arg3");
    profile_decoder::key(&v835);
    if ((v835.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v34 = &v835;
    }

    else
    {
      v34 = v835.__r_.__value_.__r.__words[0];
    }

    if ((v835.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v35 = HIBYTE(v835.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v35 = v835.__r_.__value_.__l.__size_;
    }

    v36 = sub_29D41A270(v33, v34, v35);
    *(v36 + *(*v36 - 24) + 24) = 10;
    v37 = a3[8];
    v38 = MEMORY[0x29ED56A70]();
    v39 = sub_29D41A270(v38, ",", 1);
    sub_29D40DC78(&v830, "arg4");
    profile_decoder::key(&__p);
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
      v41 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v41 = __p.__r_.__value_.__l.__size_;
    }

    v42 = sub_29D41A270(v39, p_p, v41);
    *(v42 + *(*v42 - 24) + 24) = 10;
    v43 = a3[9];
    v44 = MEMORY[0x29ED56A70]();
    sub_29D41A270(v44, ",", 1);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (v831 < 0)
    {
      operator delete(v830);
    }

    if (SHIBYTE(v835.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v835.__r_.__value_.__l.__data_);
    }

    if (v834 < 0)
    {
      operator delete(v833);
    }

    if (SHIBYTE(v838.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v838.__r_.__value_.__l.__data_);
    }

    if (v837 < 0)
    {
      operator delete(v836);
    }

    if (SHIBYTE(v841.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v841.__r_.__value_.__l.__data_);
    }

    if (v840 < 0)
    {
      operator delete(v839);
    }

    if (SHIBYTE(v844.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v844.__r_.__value_.__l.__data_);
    }

    if (v843 < 0)
    {
      operator delete(v842);
    }

    if (SHIBYTE(v846.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v846.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v845.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v845.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v849.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v849.__r_.__value_.__l.__data_);
    }

    if (v848 < 0)
    {
      operator delete(v847);
    }

    if (v7 == 7)
    {
      sub_29D40DC78(&v620, "trace");
      profile_decoder::key(&v849);
      if ((v849.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v45 = &v849;
      }

      else
      {
        v45 = v849.__r_.__value_.__r.__words[0];
      }

      if ((v849.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v46 = HIBYTE(v849.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v46 = v849.__r_.__value_.__l.__size_;
      }

      v47 = sub_29D41A270((a2 + 16), v45, v46);
      *(v47 + *(*v47 - 24) + 24) = 25;
      profile_decoder::find_in_table(&unk_29F34EA28, a3[4], 0x11u, &v619);
      profile_decoder::str(&v846);
      if ((v846.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v48 = &v846;
      }

      else
      {
        v48 = v846.__r_.__value_.__r.__words[0];
      }

      if ((v846.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v49 = HIBYTE(v846.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v49 = v846.__r_.__value_.__l.__size_;
      }

      v50 = sub_29D41A270(v47, v48, v49);
      v51 = sub_29D41A270(v50, ",", 1);
      sub_29D40DC78(&v617, "thread");
      profile_decoder::key(&v844);
      if ((v844.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v52 = &v844;
      }

      else
      {
        v52 = v844.__r_.__value_.__r.__words[0];
      }

      if ((v844.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v53 = HIBYTE(v844.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v53 = v844.__r_.__value_.__l.__size_;
      }

      v54 = sub_29D41A270(v51, v52, v53);
      *(v54 + *(*v54 - 24) + 24) = 10;
      v55 = a3[5];
      v56 = MEMORY[0x29ED56A70]();
      v57 = sub_29D41A270(v56, ",", 1);
      sub_29D40DC78(&v615, "arg1");
      profile_decoder::key(&v841);
      if ((v841.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v58 = &v841;
      }

      else
      {
        v58 = v841.__r_.__value_.__r.__words[0];
      }

      if ((v841.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v59 = HIBYTE(v841.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v59 = v841.__r_.__value_.__l.__size_;
      }

      v60 = sub_29D41A270(v57, v58, v59);
      *(v60 + *(*v60 - 24) + 24) = 10;
      v61 = a3[6];
      v62 = MEMORY[0x29ED56A70]();
      v63 = sub_29D41A270(v62, ",", 1);
      sub_29D40DC78(&v613, "arg2");
      profile_decoder::key(&v838);
      if ((v838.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v64 = &v838;
      }

      else
      {
        v64 = v838.__r_.__value_.__r.__words[0];
      }

      if ((v838.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v65 = HIBYTE(v838.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v65 = v838.__r_.__value_.__l.__size_;
      }

      v66 = sub_29D41A270(v63, v64, v65);
      *(v66 + *(*v66 - 24) + 24) = 10;
      v67 = a3[7];
      v68 = MEMORY[0x29ED56A70]();
      v69 = sub_29D41A270(v68, ",", 1);
      sub_29D40DC78(&v611, "arg3");
      profile_decoder::key(&v835);
      if ((v835.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v70 = &v835;
      }

      else
      {
        v70 = v835.__r_.__value_.__r.__words[0];
      }

      if ((v835.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v71 = HIBYTE(v835.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v71 = v835.__r_.__value_.__l.__size_;
      }

      v72 = sub_29D41A270(v69, v70, v71);
      *(v72 + *(*v72 - 24) + 24) = 10;
      v73 = a3[8];
      v74 = MEMORY[0x29ED56A70]();
      v75 = sub_29D41A270(v74, ",", 1);
      sub_29D40DC78(&v609, "arg4");
      profile_decoder::key(&__p);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v76 = &__p;
      }

      else
      {
        v76 = __p.__r_.__value_.__r.__words[0];
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v77 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v77 = __p.__r_.__value_.__l.__size_;
      }

      v78 = sub_29D41A270(v75, v76, v77);
      *(v78 + *(*v78 - 24) + 24) = 10;
      v79 = a3[9];
      v80 = MEMORY[0x29ED56A70]();
      sub_29D41A270(v80, ",", 1);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (v610 < 0)
      {
        operator delete(v609);
      }

      if (SHIBYTE(v835.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v835.__r_.__value_.__l.__data_);
      }

      if (v612 < 0)
      {
        operator delete(v611);
      }

      if (SHIBYTE(v838.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v838.__r_.__value_.__l.__data_);
      }

      if (v614 < 0)
      {
        operator delete(v613);
      }

      if (SHIBYTE(v841.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v841.__r_.__value_.__l.__data_);
      }

      if (v616 < 0)
      {
        operator delete(v615);
      }

      if (SHIBYTE(v844.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v844.__r_.__value_.__l.__data_);
      }

      if (v618 < 0)
      {
        operator delete(v617);
      }

      if (SHIBYTE(v846.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v846.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v619.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v619.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v849.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v849.__r_.__value_.__l.__data_);
      }

      if (v621 < 0)
      {
        v81 = v620;
LABEL_1162:
        operator delete(v81);
        return;
      }

      return;
    }

LABEL_1163:
    profile_decoder::parse_datatype(a1, a2, a3);
    return;
  }

  v82 = BYTE1(v6);
  if (v8 == 2 && BYTE1(v6) != 2)
  {
    if (BYTE1(v6) == 3)
    {
      sub_29D40DC78(&v828, "status-timestamp");
      profile_decoder::key(&v849);
      if ((v849.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v165 = &v849;
      }

      else
      {
        v165 = v849.__r_.__value_.__r.__words[0];
      }

      if ((v849.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v166 = HIBYTE(v849.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v166 = v849.__r_.__value_.__l.__size_;
      }

      v167 = sub_29D41A270((a2 + 16), v165, v166);
      *(v167 + *(*v167 - 24) + 24) = 10;
      v168 = *(a3 + 18);
      v169 = MEMORY[0x29ED56A70]();
      v170 = sub_29D41A270(v169, ",", 1);
      sub_29D40DC78(&v826, "fingerState");
      profile_decoder::key(&v846);
      if ((v846.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v171 = &v846;
      }

      else
      {
        v171 = v846.__r_.__value_.__r.__words[0];
      }

      if ((v846.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v172 = HIBYTE(v846.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v172 = v846.__r_.__value_.__l.__size_;
      }

      v173 = sub_29D41A270(v170, v171, v172);
      *(v173 + *(*v173 - 24) + 24) = 10;
      v174 = *(a3 + 26);
      v175 = MEMORY[0x29ED56A70]();
      v176 = sub_29D41A270(v175, ",", 1);
      sub_29D40DC78(&v824, "buttonState");
      profile_decoder::key(&v844);
      if ((v844.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v177 = &v844;
      }

      else
      {
        v177 = v844.__r_.__value_.__r.__words[0];
      }

      if ((v844.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v178 = HIBYTE(v844.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v178 = v844.__r_.__value_.__l.__size_;
      }

      v179 = sub_29D41A270(v176, v177, v178);
      *(v179 + *(*v179 - 24) + 24) = 10;
      v180 = *(a3 + 27);
      v181 = MEMORY[0x29ED56A70]();
      v182 = sub_29D41A270(v181, ",", 1);
      sub_29D40DC78(&v822, "buttonProgress");
      profile_decoder::key(&v841);
      if ((v841.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v183 = &v841;
      }

      else
      {
        v183 = v841.__r_.__value_.__r.__words[0];
      }

      if ((v841.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v184 = HIBYTE(v841.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v184 = v841.__r_.__value_.__l.__size_;
      }

      v185 = sub_29D41A270(v182, v183, v184);
      *(v185 + *(*v185 - 24) + 24) = 10;
      v186 = a3[7];
      v187 = MEMORY[0x29ED56A70]();
      v188 = sub_29D41A270(v187, ",", 1);
      sub_29D40DC78(&v820, "clickCount");
      profile_decoder::key(&v838);
      if ((v838.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v189 = &v838;
      }

      else
      {
        v189 = v838.__r_.__value_.__r.__words[0];
      }

      if ((v838.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v190 = HIBYTE(v838.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v190 = v838.__r_.__value_.__l.__size_;
      }

      v191 = sub_29D41A270(v188, v189, v190);
      *(v191 + *(*v191 - 24) + 24) = 10;
      v192 = *(a3 + 33);
      v193 = MEMORY[0x29ED56A70]();
      v194 = sub_29D41A270(v193, ",", 1);
      sub_29D40DC78(&v818, "clickCountIsTerminal");
      profile_decoder::key(&v835);
      if ((v835.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v195 = &v835;
      }

      else
      {
        v195 = v835.__r_.__value_.__r.__words[0];
      }

      if ((v835.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v196 = HIBYTE(v835.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v196 = v835.__r_.__value_.__l.__size_;
      }

      v197 = sub_29D41A270(v194, v195, v196);
      *(v197 + *(*v197 - 24) + 24) = 10;
      v198 = *(a3 + 34);
      v199 = MEMORY[0x29ED56A70]();
      v200 = sub_29D41A270(v199, ",", 1);
      sub_29D40DC78(&v816, "clickIsLong");
      profile_decoder::key(&__p);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v201 = &__p;
      }

      else
      {
        v201 = __p.__r_.__value_.__r.__words[0];
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v202 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v202 = __p.__r_.__value_.__l.__size_;
      }

      v203 = sub_29D41A270(v200, v201, v202);
      *(v203 + *(*v203 - 24) + 24) = 10;
      v204 = *(a3 + 35);
      v205 = MEMORY[0x29ED56A70]();
      v206 = sub_29D41A270(v205, ",", 1);
      sub_29D40DC78(&v813, "clickSpeed");
      profile_decoder::key(&v815);
      if ((v815.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v207 = &v815;
      }

      else
      {
        v207 = v815.__r_.__value_.__r.__words[0];
      }

      if ((v815.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v208 = HIBYTE(v815.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v208 = v815.__r_.__value_.__l.__size_;
      }

      v209 = sub_29D41A270(v206, v207, v208);
      *(v209 + *(*v209 - 24) + 24) = 10;
      v210 = *(a3 + 36);
      v211 = MEMORY[0x29ED56A70]();
      sub_29D41A270(v211, ",", 1);
      if (SHIBYTE(v815.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v815.__r_.__value_.__l.__data_);
      }

      if (v814 < 0)
      {
        operator delete(v813);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (v817 < 0)
      {
        operator delete(v816);
      }

      if (SHIBYTE(v835.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v835.__r_.__value_.__l.__data_);
      }

      if (v819 < 0)
      {
        operator delete(v818);
      }

      if (SHIBYTE(v838.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v838.__r_.__value_.__l.__data_);
      }

      if (v821 < 0)
      {
        operator delete(v820);
      }

      if (SHIBYTE(v841.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v841.__r_.__value_.__l.__data_);
      }

      if (v823 < 0)
      {
        operator delete(v822);
      }

      if (SHIBYTE(v844.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v844.__r_.__value_.__l.__data_);
      }

      if (v825 < 0)
      {
        operator delete(v824);
      }

      if (SHIBYTE(v846.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v846.__r_.__value_.__l.__data_);
      }

      if (v827 < 0)
      {
        operator delete(v826);
      }

      if (SHIBYTE(v849.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v849.__r_.__value_.__l.__data_);
      }

      if (v829 < 0)
      {
        v212 = v828;
LABEL_1087:
        operator delete(v212);
        goto LABEL_1088;
      }

      goto LABEL_1088;
    }

LABEL_826:
    profile_decoder::parse_datatype(a1, a2, a3);
    goto LABEL_1088;
  }

  if (v8 != 10)
  {
    goto LABEL_1088;
  }

  v84 = *(a3 + 8);
  if (v84 == 4)
  {
    sub_29D40DC78(&v771, "context-version");
    profile_decoder::key(&v849);
    if ((v849.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v213 = &v849;
    }

    else
    {
      v213 = v849.__r_.__value_.__r.__words[0];
    }

    if ((v849.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v214 = HIBYTE(v849.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v214 = v849.__r_.__value_.__l.__size_;
    }

    v215 = sub_29D41A270((a2 + 16), v213, v214);
    v216 = MEMORY[0x29ED56A70](v215, *(a3 + 8));
    v217 = sub_29D41A270(v216, ",", 1);
    sub_29D40DC78(&v769, "mclk_aop_enabled");
    profile_decoder::key(&v846);
    if ((v846.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v218 = &v846;
    }

    else
    {
      v218 = v846.__r_.__value_.__r.__words[0];
    }

    if ((v846.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v219 = HIBYTE(v846.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v219 = v846.__r_.__value_.__l.__size_;
    }

    v220 = sub_29D41A270(v217, v218, v219);
    v221 = MEMORY[0x29ED56A70](v220, *(a3 + 18));
    v222 = sub_29D41A270(v221, ",", 1);
    sub_29D40DC78(&v767, "mclk_ap_enabled");
    profile_decoder::key(&v844);
    if ((v844.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v223 = &v844;
    }

    else
    {
      v223 = v844.__r_.__value_.__r.__words[0];
    }

    if ((v844.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v224 = HIBYTE(v844.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v224 = v844.__r_.__value_.__l.__size_;
    }

    v225 = sub_29D41A270(v222, v223, v224);
    v226 = MEMORY[0x29ED56A70](v225, *(a3 + 19));
    v227 = sub_29D41A270(v226, ",", 1);
    sub_29D40DC78(&v765, "maggie_aop_enabled");
    profile_decoder::key(&v841);
    if ((v841.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v228 = &v841;
    }

    else
    {
      v228 = v841.__r_.__value_.__r.__words[0];
    }

    if ((v841.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v229 = HIBYTE(v841.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v229 = v841.__r_.__value_.__l.__size_;
    }

    v230 = sub_29D41A270(v227, v228, v229);
    v231 = MEMORY[0x29ED56A70](v230, *(a3 + 20));
    v232 = sub_29D41A270(v231, ",", 1);
    sub_29D40DC78(&v763, "maggie_ap_enabled");
    profile_decoder::key(&v838);
    if ((v838.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v233 = &v838;
    }

    else
    {
      v233 = v838.__r_.__value_.__r.__words[0];
    }

    if ((v838.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v234 = HIBYTE(v838.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v234 = v838.__r_.__value_.__l.__size_;
    }

    v235 = sub_29D41A270(v232, v233, v234);
    v236 = MEMORY[0x29ED56A70](v235, *(a3 + 21));
    v237 = sub_29D41A270(v236, ",", 1);
    sub_29D40DC78(&v761, "maggieBusy");
    profile_decoder::key(&v835);
    if ((v835.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v238 = &v835;
    }

    else
    {
      v238 = v835.__r_.__value_.__r.__words[0];
    }

    if ((v835.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v239 = HIBYTE(v835.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v239 = v835.__r_.__value_.__l.__size_;
    }

    v240 = sub_29D41A270(v237, v238, v239);
    v241 = MEMORY[0x29ED56A70](v240, *(a3 + 22));
    v242 = sub_29D41A270(v241, ",", 1);
    sub_29D40DC78(&v759, "enableARC");
    profile_decoder::key(&__p);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v243 = &__p;
    }

    else
    {
      v243 = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v244 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v244 = __p.__r_.__value_.__l.__size_;
    }

    v245 = sub_29D41A270(v242, v243, v244);
    v246 = MEMORY[0x29ED56A70](v245, *(a3 + 23));
    v247 = sub_29D41A270(v246, ",", 1);
    sub_29D40DC78(&v757, "enableSpkr");
    profile_decoder::key(&v815);
    if ((v815.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v248 = &v815;
    }

    else
    {
      v248 = v815.__r_.__value_.__r.__words[0];
    }

    if ((v815.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v249 = HIBYTE(v815.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v249 = v815.__r_.__value_.__l.__size_;
    }

    v250 = sub_29D41A270(v247, v248, v249);
    v251 = MEMORY[0x29ED56A70](v250, *(a3 + 24));
    v252 = sub_29D41A270(v251, ",", 1);
    sub_29D40DC78(&v755, "mclk_on");
    profile_decoder::key(&v796);
    if ((v796.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v253 = &v796;
    }

    else
    {
      v253 = v796.__r_.__value_.__r.__words[0];
    }

    if ((v796.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v254 = HIBYTE(v796.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v254 = v796.__r_.__value_.__l.__size_;
    }

    v255 = sub_29D41A270(v252, v253, v254);
    v256 = MEMORY[0x29ED56A70](v255, *(a3 + 25));
    v257 = sub_29D41A270(v256, ",", 1);
    sub_29D40DC78(&v753, "maggie_on");
    profile_decoder::key(&v793);
    if ((v793.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v258 = &v793;
    }

    else
    {
      v258 = v793.__r_.__value_.__r.__words[0];
    }

    if ((v793.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v259 = HIBYTE(v793.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v259 = v793.__r_.__value_.__l.__size_;
    }

    v260 = sub_29D41A270(v257, v258, v259);
    v261 = MEMORY[0x29ED56A70](v260, *(a3 + 26));
    v262 = sub_29D41A270(v261, ",", 1);
    sub_29D40DC78(&v751, "maggiePending");
    profile_decoder::key(&v790);
    if ((v790.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v263 = &v790;
    }

    else
    {
      v263 = v790.__r_.__value_.__r.__words[0];
    }

    if ((v790.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v264 = HIBYTE(v790.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v264 = v790.__r_.__value_.__l.__size_;
    }

    v265 = sub_29D41A270(v262, v263, v264);
    v266 = MEMORY[0x29ED56A70](v265, *(a3 + 27));
    v267 = sub_29D41A270(v266, ",", 1);
    sub_29D40DC78(&v749, "ampsEnabling");
    profile_decoder::key(&v787);
    if ((v787.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v268 = &v787;
    }

    else
    {
      v268 = v787.__r_.__value_.__r.__words[0];
    }

    if ((v787.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v269 = HIBYTE(v787.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v269 = v787.__r_.__value_.__l.__size_;
    }

    v270 = sub_29D41A270(v267, v268, v269);
    v271 = MEMORY[0x29ED56A70](v270, *(a3 + 28));
    v272 = sub_29D41A270(v271, ",", 1);
    sub_29D40DC78(&v747, "mesa_ready");
    profile_decoder::key(&v784);
    if ((v784.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v273 = &v784;
    }

    else
    {
      v273 = v784.__r_.__value_.__r.__words[0];
    }

    if ((v784.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v274 = HIBYTE(v784.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v274 = v784.__r_.__value_.__l.__size_;
    }

    v275 = sub_29D41A270(v272, v273, v274);
    v276 = MEMORY[0x29ED56A70](v275, *(a3 + 29));
    v277 = sub_29D41A270(v276, ",", 1);
    sub_29D40DC78(&v745, "ampsPrewarming");
    profile_decoder::key(&v781);
    if ((v781.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v278 = &v781;
    }

    else
    {
      v278 = v781.__r_.__value_.__r.__words[0];
    }

    if ((v781.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v279 = HIBYTE(v781.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v279 = v781.__r_.__value_.__l.__size_;
    }

    v280 = sub_29D41A270(v277, v278, v279);
    v281 = MEMORY[0x29ED56A70](v280, *(a3 + 30));
    v282 = sub_29D41A270(v281, ",", 1);
    sub_29D40DC78(&v743, "ampsDisabling");
    profile_decoder::key(&v778);
    if ((v778.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v283 = &v778;
    }

    else
    {
      v283 = v778.__r_.__value_.__r.__words[0];
    }

    if ((v778.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v284 = HIBYTE(v778.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v284 = v778.__r_.__value_.__l.__size_;
    }

    v285 = sub_29D41A270(v282, v283, v284);
    v286 = MEMORY[0x29ED56A70](v285, *(a3 + 31));
    v287 = sub_29D41A270(v286, ",", 1);
    sub_29D40DC78(&v741, "ampsPending");
    profile_decoder::key(&v775);
    if ((v775.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v288 = &v775;
    }

    else
    {
      v288 = v775.__r_.__value_.__r.__words[0];
    }

    if ((v775.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v289 = HIBYTE(v775.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v289 = v775.__r_.__value_.__l.__size_;
    }

    v290 = sub_29D41A270(v287, v288, v289);
    v291 = MEMORY[0x29ED56A70](v290, *(a3 + 32));
    v292 = sub_29D41A270(v291, ",", 1);
    sub_29D40DC78(&v738, "clickState");
    profile_decoder::key(&v740);
    if ((v740.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v293 = &v740;
    }

    else
    {
      v293 = v740.__r_.__value_.__r.__words[0];
    }

    if ((v740.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v294 = HIBYTE(v740.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v294 = v740.__r_.__value_.__l.__size_;
    }

    v295 = sub_29D41A270(v292, v293, v294);
    v296 = MEMORY[0x29ED56A70](v295, *(a3 + 33));
    v297 = sub_29D41A270(v296, ",", 1);
    sub_29D40DC78(&v735, "clickSpeed");
    profile_decoder::key(&v737);
    if ((v737.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v298 = &v737;
    }

    else
    {
      v298 = v737.__r_.__value_.__r.__words[0];
    }

    if ((v737.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v299 = HIBYTE(v737.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v299 = v737.__r_.__value_.__l.__size_;
    }

    v300 = sub_29D41A270(v297, v298, v299);
    v301 = MEMORY[0x29ED56A70](v300, *(a3 + 34));
    v302 = sub_29D41A270(v301, ",", 1);
    sub_29D40DC78(&v732, "test_mode");
    profile_decoder::key(&v734);
    if ((v734.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v303 = &v734;
    }

    else
    {
      v303 = v734.__r_.__value_.__r.__words[0];
    }

    if ((v734.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v304 = HIBYTE(v734.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v304 = v734.__r_.__value_.__l.__size_;
    }

    v305 = sub_29D41A270(v302, v303, v304);
    v306 = MEMORY[0x29ED56A70](v305, *(a3 + 35));
    v307 = sub_29D41A270(v306, ",", 1);
    sub_29D40DC78(&v729, "cl_enable");
    profile_decoder::key(&v731);
    if ((v731.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v308 = &v731;
    }

    else
    {
      v308 = v731.__r_.__value_.__r.__words[0];
    }

    if ((v731.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v309 = HIBYTE(v731.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v309 = v731.__r_.__value_.__l.__size_;
    }

    v310 = sub_29D41A270(v307, v308, v309);
    v311 = MEMORY[0x29ED56A70](v310, *(a3 + 36));
    v312 = sub_29D41A270(v311, ",", 1);
    sub_29D40DC78(&v726, "cl_aop_enable");
    profile_decoder::key(&v728);
    if ((v728.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v313 = &v728;
    }

    else
    {
      v313 = v728.__r_.__value_.__r.__words[0];
    }

    if ((v728.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v314 = HIBYTE(v728.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v314 = v728.__r_.__value_.__l.__size_;
    }

    v315 = sub_29D41A270(v312, v313, v314);
    v316 = MEMORY[0x29ED56A70](v315, *(a3 + 37));
    v317 = sub_29D41A270(v316, ",", 1);
    sub_29D40DC78(&v723, "cl_ap_enable");
    profile_decoder::key(&v725);
    if ((v725.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v318 = &v725;
    }

    else
    {
      v318 = v725.__r_.__value_.__r.__words[0];
    }

    if ((v725.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v319 = HIBYTE(v725.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v319 = v725.__r_.__value_.__l.__size_;
    }

    v320 = sub_29D41A270(v317, v318, v319);
    v321 = MEMORY[0x29ED56A70](v320, *(a3 + 38));
    v322 = sub_29D41A270(v321, ",", 1);
    sub_29D40DC78(&v720, "maggie_ready");
    profile_decoder::key(&v722);
    if ((v722.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v323 = &v722;
    }

    else
    {
      v323 = v722.__r_.__value_.__r.__words[0];
    }

    if ((v722.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v324 = HIBYTE(v722.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v324 = v722.__r_.__value_.__l.__size_;
    }

    v325 = sub_29D41A270(v322, v323, v324);
    v326 = MEMORY[0x29ED56A70](v325, *(a3 + 39));
    v327 = sub_29D41A270(v326, ",", 1);
    sub_29D40DC78(&v717, "apState0");
    profile_decoder::key(&v719);
    if ((v719.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v328 = &v719;
    }

    else
    {
      v328 = v719.__r_.__value_.__r.__words[0];
    }

    if ((v719.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v329 = HIBYTE(v719.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v329 = v719.__r_.__value_.__l.__size_;
    }

    v330 = sub_29D41A270(v327, v328, v329);
    v331 = MEMORY[0x29ED56A70](v330, *(a3 + 40));
    v332 = sub_29D41A270(v331, ",", 1);
    sub_29D40DC78(&v714, "apState1");
    profile_decoder::key(&v716);
    if ((v716.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v333 = &v716;
    }

    else
    {
      v333 = v716.__r_.__value_.__r.__words[0];
    }

    if ((v716.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v334 = HIBYTE(v716.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v334 = v716.__r_.__value_.__l.__size_;
    }

    v335 = sub_29D41A270(v332, v333, v334);
    v336 = MEMORY[0x29ED56A70](v335, *(a3 + 41));
    v337 = sub_29D41A270(v336, ",", 1);
    sub_29D40DC78(&v711, "aopState0");
    profile_decoder::key(&v713);
    if ((v713.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v338 = &v713;
    }

    else
    {
      v338 = v713.__r_.__value_.__r.__words[0];
    }

    if ((v713.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v339 = HIBYTE(v713.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v339 = v713.__r_.__value_.__l.__size_;
    }

    v340 = sub_29D41A270(v337, v338, v339);
    v341 = MEMORY[0x29ED56A70](v340, *(a3 + 42));
    v342 = sub_29D41A270(v341, ",", 1);
    sub_29D40DC78(&v708, "aopState1");
    profile_decoder::key(&v710);
    if ((v710.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v343 = &v710;
    }

    else
    {
      v343 = v710.__r_.__value_.__r.__words[0];
    }

    if ((v710.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v344 = HIBYTE(v710.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v344 = v710.__r_.__value_.__l.__size_;
    }

    v345 = sub_29D41A270(v342, v343, v344);
    v346 = MEMORY[0x29ED56A70](v345, *(a3 + 43));
    v347 = sub_29D41A270(v346, ",", 1);
    sub_29D40DC78(&v705, "state0");
    profile_decoder::key(&v707);
    if ((v707.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v348 = &v707;
    }

    else
    {
      v348 = v707.__r_.__value_.__r.__words[0];
    }

    if ((v707.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v349 = HIBYTE(v707.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v349 = v707.__r_.__value_.__l.__size_;
    }

    v350 = sub_29D41A270(v347, v348, v349);
    v351 = MEMORY[0x29ED56A70](v350, *(a3 + 44));
    v352 = sub_29D41A270(v351, ",", 1);
    sub_29D40DC78(&v702, "state1");
    profile_decoder::key(&v704);
    if ((v704.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v353 = &v704;
    }

    else
    {
      v353 = v704.__r_.__value_.__r.__words[0];
    }

    if ((v704.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v354 = HIBYTE(v704.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v354 = v704.__r_.__value_.__l.__size_;
    }

    v355 = sub_29D41A270(v352, v353, v354);
    v356 = MEMORY[0x29ED56A70](v355, *(a3 + 45));
    sub_29D41A270(v356, ",", 1);
    if (SHIBYTE(v704.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v704.__r_.__value_.__l.__data_);
    }

    if (v703 < 0)
    {
      operator delete(v702);
    }

    if (SHIBYTE(v707.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v707.__r_.__value_.__l.__data_);
    }

    if (v706 < 0)
    {
      operator delete(v705);
    }

    if (SHIBYTE(v710.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v710.__r_.__value_.__l.__data_);
    }

    if (v709 < 0)
    {
      operator delete(v708);
    }

    if (SHIBYTE(v713.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v713.__r_.__value_.__l.__data_);
    }

    if (v712 < 0)
    {
      operator delete(v711);
    }

    if (SHIBYTE(v716.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v716.__r_.__value_.__l.__data_);
    }

    if (v715 < 0)
    {
      operator delete(v714);
    }

    if (SHIBYTE(v719.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v719.__r_.__value_.__l.__data_);
    }

    if (v718 < 0)
    {
      operator delete(v717);
    }

    if (SHIBYTE(v722.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v722.__r_.__value_.__l.__data_);
    }

    if (v721 < 0)
    {
      operator delete(v720);
    }

    if (SHIBYTE(v725.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v725.__r_.__value_.__l.__data_);
    }

    if (v724 < 0)
    {
      operator delete(v723);
    }

    if (SHIBYTE(v728.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v728.__r_.__value_.__l.__data_);
    }

    if (v727 < 0)
    {
      operator delete(v726);
    }

    if (SHIBYTE(v731.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v731.__r_.__value_.__l.__data_);
    }

    if (v730 < 0)
    {
      operator delete(v729);
    }

    if (SHIBYTE(v734.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v734.__r_.__value_.__l.__data_);
    }

    if (v733 < 0)
    {
      operator delete(v732);
    }

    if (SHIBYTE(v737.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v737.__r_.__value_.__l.__data_);
    }

    if (v736 < 0)
    {
      operator delete(v735);
    }

    if (SHIBYTE(v740.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v740.__r_.__value_.__l.__data_);
    }

    if (v739 < 0)
    {
      operator delete(v738);
    }

    if (SHIBYTE(v775.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v775.__r_.__value_.__l.__data_);
    }

    if (v742 < 0)
    {
      operator delete(v741);
    }

    if (SHIBYTE(v778.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v778.__r_.__value_.__l.__data_);
    }

    if (v744 < 0)
    {
      operator delete(v743);
    }

    if (SHIBYTE(v781.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v781.__r_.__value_.__l.__data_);
    }

    if (v746 < 0)
    {
      operator delete(v745);
    }

    if (SHIBYTE(v784.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v784.__r_.__value_.__l.__data_);
    }

    if (v748 < 0)
    {
      operator delete(v747);
    }

    if (SHIBYTE(v787.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v787.__r_.__value_.__l.__data_);
    }

    if (v750 < 0)
    {
      operator delete(v749);
    }

    if (SHIBYTE(v790.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v790.__r_.__value_.__l.__data_);
    }

    if (v752 < 0)
    {
      operator delete(v751);
    }

    if (SHIBYTE(v793.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v793.__r_.__value_.__l.__data_);
    }

    if (v754 < 0)
    {
      operator delete(v753);
    }

    if (SHIBYTE(v796.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v796.__r_.__value_.__l.__data_);
    }

    if (v756 < 0)
    {
      operator delete(v755);
    }

    if (SHIBYTE(v815.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v815.__r_.__value_.__l.__data_);
    }

    if (v758 < 0)
    {
      operator delete(v757);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (v760 < 0)
    {
      operator delete(v759);
    }

    if (SHIBYTE(v835.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v835.__r_.__value_.__l.__data_);
    }

    if (v762 < 0)
    {
      operator delete(v761);
    }

    if (SHIBYTE(v838.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v838.__r_.__value_.__l.__data_);
    }

    if (v764 < 0)
    {
      operator delete(v763);
    }

    if (SHIBYTE(v841.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v841.__r_.__value_.__l.__data_);
    }

    if (v766 < 0)
    {
      operator delete(v765);
    }

    if (SHIBYTE(v844.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v844.__r_.__value_.__l.__data_);
    }

    if (v768 < 0)
    {
      operator delete(v767);
    }

    if (SHIBYTE(v846.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v846.__r_.__value_.__l.__data_);
    }

    if (v770 < 0)
    {
      operator delete(v769);
    }

    if (SHIBYTE(v849.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v849.__r_.__value_.__l.__data_);
    }

    if ((v772 & 0x80000000) == 0)
    {
      goto LABEL_683;
    }

    v164 = v771;
    goto LABEL_682;
  }

  if (v84 != 3)
  {
    goto LABEL_684;
  }

  sub_29D40DC78(&v811, "context-version");
  profile_decoder::key(&v849);
  if ((v849.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v85 = &v849;
  }

  else
  {
    v85 = v849.__r_.__value_.__r.__words[0];
  }

  if ((v849.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v86 = HIBYTE(v849.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v86 = v849.__r_.__value_.__l.__size_;
  }

  v87 = sub_29D41A270((a2 + 16), v85, v86);
  v88 = MEMORY[0x29ED56A70](v87, *(a3 + 8));
  v89 = sub_29D41A270(v88, ",", 1);
  sub_29D40DC78(&v809, "currentContext0");
  profile_decoder::key(&v846);
  if ((v846.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v90 = &v846;
  }

  else
  {
    v90 = v846.__r_.__value_.__r.__words[0];
  }

  if ((v846.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v91 = HIBYTE(v846.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v91 = v846.__r_.__value_.__l.__size_;
  }

  v92 = sub_29D41A270(v89, v90, v91);
  v93 = MEMORY[0x29ED56A70](v92, *(a3 + 18));
  v94 = sub_29D41A270(v93, ",", 1);
  sub_29D40DC78(&v807, "currentContext1");
  profile_decoder::key(&v844);
  if ((v844.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v95 = &v844;
  }

  else
  {
    v95 = v844.__r_.__value_.__r.__words[0];
  }

  if ((v844.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v96 = HIBYTE(v844.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v96 = v844.__r_.__value_.__l.__size_;
  }

  v97 = sub_29D41A270(v94, v95, v96);
  v98 = MEMORY[0x29ED56A70](v97, *(a3 + 19));
  v99 = sub_29D41A270(v98, ",", 1);
  sub_29D40DC78(&v805, "ampsEnabled");
  profile_decoder::key(&v841);
  if ((v841.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v100 = &v841;
  }

  else
  {
    v100 = v841.__r_.__value_.__r.__words[0];
  }

  if ((v841.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v101 = HIBYTE(v841.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v101 = v841.__r_.__value_.__l.__size_;
  }

  v102 = sub_29D41A270(v99, v100, v101);
  v103 = MEMORY[0x29ED56A70](v102, *(a3 + 20));
  v104 = sub_29D41A270(v103, ",", 1);
  sub_29D40DC78(&v803, "enabled");
  profile_decoder::key(&v838);
  if ((v838.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v105 = &v838;
  }

  else
  {
    v105 = v838.__r_.__value_.__r.__words[0];
  }

  if ((v838.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v106 = HIBYTE(v838.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v106 = v838.__r_.__value_.__l.__size_;
  }

  v107 = sub_29D41A270(v104, v105, v106);
  v108 = MEMORY[0x29ED56A70](v107, *(a3 + 21));
  v109 = sub_29D41A270(v108, ",", 1);
  sub_29D40DC78(&v801, "mode");
  profile_decoder::key(&v835);
  if ((v835.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v110 = &v835;
  }

  else
  {
    v110 = v835.__r_.__value_.__r.__words[0];
  }

  if ((v835.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v111 = HIBYTE(v835.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v111 = v835.__r_.__value_.__l.__size_;
  }

  v112 = sub_29D41A270(v109, v110, v111);
  v113 = MEMORY[0x29ED56A70](v112, *(a3 + 22));
  v114 = sub_29D41A270(v113, ",", 1);
  sub_29D40DC78(&v799, "scan_time");
  profile_decoder::key(&__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v115 = &__p;
  }

  else
  {
    v115 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v116 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v116 = __p.__r_.__value_.__l.__size_;
  }

  v117 = sub_29D41A270(v114, v115, v116);
  v118 = MEMORY[0x29ED56A70](v117, *(a3 + 26));
  v119 = sub_29D41A270(v118, ",", 1);
  sub_29D40DC78(&v797, "active_scan_interval");
  profile_decoder::key(&v815);
  if ((v815.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v120 = &v815;
  }

  else
  {
    v120 = v815.__r_.__value_.__r.__words[0];
  }

  if ((v815.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v121 = HIBYTE(v815.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v121 = v815.__r_.__value_.__l.__size_;
  }

  v122 = sub_29D41A270(v119, v120, v121);
  v123 = MEMORY[0x29ED56A70](v122, *(a3 + 30));
  v124 = sub_29D41A270(v123, ",", 1);
  sub_29D40DC78(&v794, "background_scan_interval");
  profile_decoder::key(&v796);
  if ((v796.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v125 = &v796;
  }

  else
  {
    v125 = v796.__r_.__value_.__r.__words[0];
  }

  if ((v796.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v126 = HIBYTE(v796.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v126 = v796.__r_.__value_.__l.__size_;
  }

  v127 = sub_29D41A270(v124, v125, v126);
  v128 = MEMORY[0x29ED56A70](v127, *(a3 + 34));
  v129 = sub_29D41A270(v128, ",", 1);
  sub_29D40DC78(&v791, "fingerDetect");
  profile_decoder::key(&v793);
  if ((v793.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v130 = &v793;
  }

  else
  {
    v130 = v793.__r_.__value_.__r.__words[0];
  }

  if ((v793.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v131 = HIBYTE(v793.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v131 = v793.__r_.__value_.__l.__size_;
  }

  v132 = sub_29D41A270(v129, v130, v131);
  v133 = MEMORY[0x29ED56A70](v132, *(a3 + 38));
  v134 = sub_29D41A270(v133, ",", 1);
  sub_29D40DC78(&v788, "buttonState");
  profile_decoder::key(&v790);
  if ((v790.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v135 = &v790;
  }

  else
  {
    v135 = v790.__r_.__value_.__r.__words[0];
  }

  if ((v790.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v136 = HIBYTE(v790.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v136 = v790.__r_.__value_.__l.__size_;
  }

  v137 = sub_29D41A270(v134, v135, v136);
  v138 = MEMORY[0x29ED56A70](v137, *(a3 + 39));
  v139 = sub_29D41A270(v138, ",", 1);
  sub_29D40DC78(&v785, "pressCount");
  profile_decoder::key(&v787);
  if ((v787.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v140 = &v787;
  }

  else
  {
    v140 = v787.__r_.__value_.__r.__words[0];
  }

  if ((v787.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v141 = HIBYTE(v787.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v141 = v787.__r_.__value_.__l.__size_;
  }

  v142 = sub_29D41A270(v139, v140, v141);
  v143 = MEMORY[0x29ED56A70](v142, *(a3 + 40));
  v144 = sub_29D41A270(v143, ",", 1);
  sub_29D40DC78(&v782, "longPress");
  profile_decoder::key(&v784);
  if ((v784.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v145 = &v784;
  }

  else
  {
    v145 = v784.__r_.__value_.__r.__words[0];
  }

  if ((v784.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v146 = HIBYTE(v784.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v146 = v784.__r_.__value_.__l.__size_;
  }

  v147 = sub_29D41A270(v144, v145, v146);
  v148 = MEMORY[0x29ED56A70](v147, *(a3 + 41));
  v149 = sub_29D41A270(v148, ",", 1);
  sub_29D40DC78(&v779, "terminalEvent");
  profile_decoder::key(&v781);
  if ((v781.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v150 = &v781;
  }

  else
  {
    v150 = v781.__r_.__value_.__r.__words[0];
  }

  if ((v781.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v151 = HIBYTE(v781.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v151 = v781.__r_.__value_.__l.__size_;
  }

  v152 = sub_29D41A270(v149, v150, v151);
  v153 = MEMORY[0x29ED56A70](v152, *(a3 + 42));
  v154 = sub_29D41A270(v153, ",", 1);
  sub_29D40DC78(&v776, "speed");
  profile_decoder::key(&v778);
  if ((v778.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v155 = &v778;
  }

  else
  {
    v155 = v778.__r_.__value_.__r.__words[0];
  }

  if ((v778.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v156 = HIBYTE(v778.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v156 = v778.__r_.__value_.__l.__size_;
  }

  v157 = sub_29D41A270(v154, v155, v156);
  v158 = MEMORY[0x29ED56A70](v157, *(a3 + 43));
  v159 = sub_29D41A270(v158, ",", 1);
  sub_29D40DC78(&v773, "stage");
  profile_decoder::key(&v775);
  if ((v775.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v160 = &v775;
  }

  else
  {
    v160 = v775.__r_.__value_.__r.__words[0];
  }

  if ((v775.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v161 = HIBYTE(v775.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v161 = v775.__r_.__value_.__l.__size_;
  }

  v162 = sub_29D41A270(v159, v160, v161);
  v163 = MEMORY[0x29ED56A70](v162, *(a3 + 44));
  sub_29D41A270(v163, ",", 1);
  if (SHIBYTE(v775.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v775.__r_.__value_.__l.__data_);
  }

  if (v774 < 0)
  {
    operator delete(v773);
  }

  if (SHIBYTE(v778.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v778.__r_.__value_.__l.__data_);
  }

  if (v777 < 0)
  {
    operator delete(v776);
  }

  if (SHIBYTE(v781.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v781.__r_.__value_.__l.__data_);
  }

  if (v780 < 0)
  {
    operator delete(v779);
  }

  if (SHIBYTE(v784.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v784.__r_.__value_.__l.__data_);
  }

  if (v783 < 0)
  {
    operator delete(v782);
  }

  if (SHIBYTE(v787.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v787.__r_.__value_.__l.__data_);
  }

  if (v786 < 0)
  {
    operator delete(v785);
  }

  if (SHIBYTE(v790.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v790.__r_.__value_.__l.__data_);
  }

  if (v789 < 0)
  {
    operator delete(v788);
  }

  if (SHIBYTE(v793.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v793.__r_.__value_.__l.__data_);
  }

  if (v792 < 0)
  {
    operator delete(v791);
  }

  if (SHIBYTE(v796.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v796.__r_.__value_.__l.__data_);
  }

  if (v795 < 0)
  {
    operator delete(v794);
  }

  if (SHIBYTE(v815.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v815.__r_.__value_.__l.__data_);
  }

  if (v798 < 0)
  {
    operator delete(v797);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v800 < 0)
  {
    operator delete(v799);
  }

  if (SHIBYTE(v835.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v835.__r_.__value_.__l.__data_);
  }

  if (v802 < 0)
  {
    operator delete(v801);
  }

  if (SHIBYTE(v838.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v838.__r_.__value_.__l.__data_);
  }

  if (v804 < 0)
  {
    operator delete(v803);
  }

  if (SHIBYTE(v841.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v841.__r_.__value_.__l.__data_);
  }

  if (v806 < 0)
  {
    operator delete(v805);
  }

  if (SHIBYTE(v844.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v844.__r_.__value_.__l.__data_);
  }

  if (v808 < 0)
  {
    operator delete(v807);
  }

  if (SHIBYTE(v846.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v846.__r_.__value_.__l.__data_);
  }

  if (v810 < 0)
  {
    operator delete(v809);
  }

  if (SHIBYTE(v849.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v849.__r_.__value_.__l.__data_);
  }

  if (v812 < 0)
  {
    v164 = v811;
LABEL_682:
    operator delete(v164);
  }

LABEL_683:
  v84 = *(a3 + 8);
LABEL_684:
  if (v84 == 7)
  {
    sub_29D40DC78(&v672, "context-version");
    profile_decoder::key(&v849);
    if ((v849.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v426 = &v849;
    }

    else
    {
      v426 = v849.__r_.__value_.__r.__words[0];
    }

    if ((v849.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v427 = HIBYTE(v849.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v427 = v849.__r_.__value_.__l.__size_;
    }

    v428 = sub_29D41A270((a2 + 16), v426, v427);
    v429 = MEMORY[0x29ED56A70](v428, *(a3 + 8));
    v430 = sub_29D41A270(v429, ",", 1);
    sub_29D40DC78(&v670, "mclk_aop_enabled");
    profile_decoder::key(&v846);
    if ((v846.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v431 = &v846;
    }

    else
    {
      v431 = v846.__r_.__value_.__r.__words[0];
    }

    if ((v846.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v432 = HIBYTE(v846.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v432 = v846.__r_.__value_.__l.__size_;
    }

    v433 = sub_29D41A270(v430, v431, v432);
    v434 = MEMORY[0x29ED56A70](v433, *(a3 + 18));
    v435 = sub_29D41A270(v434, ",", 1);
    sub_29D40DC78(&v668, "mclk_ap_enabled");
    profile_decoder::key(&v844);
    if ((v844.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v436 = &v844;
    }

    else
    {
      v436 = v844.__r_.__value_.__r.__words[0];
    }

    if ((v844.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v437 = HIBYTE(v844.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v437 = v844.__r_.__value_.__l.__size_;
    }

    v438 = sub_29D41A270(v435, v436, v437);
    v439 = MEMORY[0x29ED56A70](v438, *(a3 + 19));
    v440 = sub_29D41A270(v439, ",", 1);
    sub_29D40DC78(&v666, "maggie_aop_enabled");
    profile_decoder::key(&v841);
    if ((v841.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v441 = &v841;
    }

    else
    {
      v441 = v841.__r_.__value_.__r.__words[0];
    }

    if ((v841.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v442 = HIBYTE(v841.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v442 = v841.__r_.__value_.__l.__size_;
    }

    v443 = sub_29D41A270(v440, v441, v442);
    v444 = MEMORY[0x29ED56A70](v443, *(a3 + 20));
    v445 = sub_29D41A270(v444, ",", 1);
    sub_29D40DC78(&v664, "maggie_ap_enabled");
    profile_decoder::key(&v838);
    if ((v838.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v446 = &v838;
    }

    else
    {
      v446 = v838.__r_.__value_.__r.__words[0];
    }

    if ((v838.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v447 = HIBYTE(v838.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v447 = v838.__r_.__value_.__l.__size_;
    }

    v448 = sub_29D41A270(v445, v446, v447);
    v449 = MEMORY[0x29ED56A70](v448, *(a3 + 21));
    v450 = sub_29D41A270(v449, ",", 1);
    sub_29D40DC78(&v662, "maggieBusy");
    profile_decoder::key(&v835);
    if ((v835.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v451 = &v835;
    }

    else
    {
      v451 = v835.__r_.__value_.__r.__words[0];
    }

    if ((v835.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v452 = HIBYTE(v835.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v452 = v835.__r_.__value_.__l.__size_;
    }

    v453 = sub_29D41A270(v450, v451, v452);
    v454 = MEMORY[0x29ED56A70](v453, *(a3 + 22));
    v455 = sub_29D41A270(v454, ",", 1);
    sub_29D40DC78(&v660, "enableARC");
    profile_decoder::key(&__p);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v456 = &__p;
    }

    else
    {
      v456 = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v457 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v457 = __p.__r_.__value_.__l.__size_;
    }

    v458 = sub_29D41A270(v455, v456, v457);
    v459 = MEMORY[0x29ED56A70](v458, *(a3 + 23));
    v460 = sub_29D41A270(v459, ",", 1);
    sub_29D40DC78(&v658, "enableSpkr");
    profile_decoder::key(&v815);
    if ((v815.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v461 = &v815;
    }

    else
    {
      v461 = v815.__r_.__value_.__r.__words[0];
    }

    if ((v815.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v462 = HIBYTE(v815.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v462 = v815.__r_.__value_.__l.__size_;
    }

    v463 = sub_29D41A270(v460, v461, v462);
    v464 = MEMORY[0x29ED56A70](v463, *(a3 + 24));
    v465 = sub_29D41A270(v464, ",", 1);
    sub_29D40DC78(&v656, "mclk_on");
    profile_decoder::key(&v796);
    if ((v796.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v466 = &v796;
    }

    else
    {
      v466 = v796.__r_.__value_.__r.__words[0];
    }

    if ((v796.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v467 = HIBYTE(v796.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v467 = v796.__r_.__value_.__l.__size_;
    }

    v468 = sub_29D41A270(v465, v466, v467);
    v469 = MEMORY[0x29ED56A70](v468, *(a3 + 25));
    v470 = sub_29D41A270(v469, ",", 1);
    sub_29D40DC78(&v654, "maggie_on");
    profile_decoder::key(&v793);
    if ((v793.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v471 = &v793;
    }

    else
    {
      v471 = v793.__r_.__value_.__r.__words[0];
    }

    if ((v793.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v472 = HIBYTE(v793.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v472 = v793.__r_.__value_.__l.__size_;
    }

    v473 = sub_29D41A270(v470, v471, v472);
    v474 = MEMORY[0x29ED56A70](v473, *(a3 + 26));
    v475 = sub_29D41A270(v474, ",", 1);
    sub_29D40DC78(&v652, "maggiePending");
    profile_decoder::key(&v790);
    if ((v790.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v476 = &v790;
    }

    else
    {
      v476 = v790.__r_.__value_.__r.__words[0];
    }

    if ((v790.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v477 = HIBYTE(v790.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v477 = v790.__r_.__value_.__l.__size_;
    }

    v478 = sub_29D41A270(v475, v476, v477);
    v479 = MEMORY[0x29ED56A70](v478, *(a3 + 27));
    v480 = sub_29D41A270(v479, ",", 1);
    sub_29D40DC78(&v650, "mesa_ready");
    profile_decoder::key(&v787);
    if ((v787.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v481 = &v787;
    }

    else
    {
      v481 = v787.__r_.__value_.__r.__words[0];
    }

    if ((v787.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v482 = HIBYTE(v787.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v482 = v787.__r_.__value_.__l.__size_;
    }

    v483 = sub_29D41A270(v480, v481, v482);
    v484 = MEMORY[0x29ED56A70](v483, *(a3 + 28));
    v485 = sub_29D41A270(v484, ",", 1);
    sub_29D40DC78(&v648, "ampsState");
    profile_decoder::key(&v784);
    if ((v784.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v486 = &v784;
    }

    else
    {
      v486 = v784.__r_.__value_.__r.__words[0];
    }

    if ((v784.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v487 = HIBYTE(v784.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v487 = v784.__r_.__value_.__l.__size_;
    }

    v488 = sub_29D41A270(v485, v486, v487);
    v489 = MEMORY[0x29ED56A70](v488, *(a3 + 29));
    v490 = sub_29D41A270(v489, ",", 1);
    sub_29D40DC78(&v646, "clickState");
    profile_decoder::key(&v781);
    if ((v781.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v491 = &v781;
    }

    else
    {
      v491 = v781.__r_.__value_.__r.__words[0];
    }

    if ((v781.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v492 = HIBYTE(v781.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v492 = v781.__r_.__value_.__l.__size_;
    }

    v493 = sub_29D41A270(v490, v491, v492);
    v494 = MEMORY[0x29ED56A70](v493, *(a3 + 30));
    v495 = sub_29D41A270(v494, ",", 1);
    sub_29D40DC78(&v644, "clickSpeed");
    profile_decoder::key(&v778);
    if ((v778.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v496 = &v778;
    }

    else
    {
      v496 = v778.__r_.__value_.__r.__words[0];
    }

    if ((v778.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v497 = HIBYTE(v778.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v497 = v778.__r_.__value_.__l.__size_;
    }

    v498 = sub_29D41A270(v495, v496, v497);
    v499 = MEMORY[0x29ED56A70](v498, *(a3 + 31));
    v500 = sub_29D41A270(v499, ",", 1);
    sub_29D40DC78(&v642, "test_mode");
    profile_decoder::key(&v775);
    if ((v775.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v501 = &v775;
    }

    else
    {
      v501 = v775.__r_.__value_.__r.__words[0];
    }

    if ((v775.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v502 = HIBYTE(v775.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v502 = v775.__r_.__value_.__l.__size_;
    }

    v503 = sub_29D41A270(v500, v501, v502);
    v504 = MEMORY[0x29ED56A70](v503, *(a3 + 32));
    v505 = sub_29D41A270(v504, ",", 1);
    sub_29D40DC78(&v640, "cl_enable");
    profile_decoder::key(&v740);
    if ((v740.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v506 = &v740;
    }

    else
    {
      v506 = v740.__r_.__value_.__r.__words[0];
    }

    if ((v740.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v507 = HIBYTE(v740.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v507 = v740.__r_.__value_.__l.__size_;
    }

    v508 = sub_29D41A270(v505, v506, v507);
    v509 = MEMORY[0x29ED56A70](v508, *(a3 + 33));
    v510 = sub_29D41A270(v509, ",", 1);
    sub_29D40DC78(&v638, "cl_aop_enable");
    profile_decoder::key(&v737);
    if ((v737.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v511 = &v737;
    }

    else
    {
      v511 = v737.__r_.__value_.__r.__words[0];
    }

    if ((v737.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v512 = HIBYTE(v737.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v512 = v737.__r_.__value_.__l.__size_;
    }

    v513 = sub_29D41A270(v510, v511, v512);
    v514 = MEMORY[0x29ED56A70](v513, *(a3 + 34));
    v515 = sub_29D41A270(v514, ",", 1);
    sub_29D40DC78(&v636, "cl_ap_enable");
    profile_decoder::key(&v734);
    if ((v734.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v516 = &v734;
    }

    else
    {
      v516 = v734.__r_.__value_.__r.__words[0];
    }

    if ((v734.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v517 = HIBYTE(v734.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v517 = v734.__r_.__value_.__l.__size_;
    }

    v518 = sub_29D41A270(v515, v516, v517);
    v519 = MEMORY[0x29ED56A70](v518, *(a3 + 35));
    v520 = sub_29D41A270(v519, ",", 1);
    sub_29D40DC78(&v634, "maggie_ready");
    profile_decoder::key(&v731);
    if ((v731.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v521 = &v731;
    }

    else
    {
      v521 = v731.__r_.__value_.__r.__words[0];
    }

    if ((v731.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v522 = HIBYTE(v731.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v522 = v731.__r_.__value_.__l.__size_;
    }

    v523 = sub_29D41A270(v520, v521, v522);
    v524 = MEMORY[0x29ED56A70](v523, *(a3 + 36));
    v525 = sub_29D41A270(v524, ",", 1);
    sub_29D40DC78(&v632, "apState0");
    profile_decoder::key(&v728);
    if ((v728.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v526 = &v728;
    }

    else
    {
      v526 = v728.__r_.__value_.__r.__words[0];
    }

    if ((v728.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v527 = HIBYTE(v728.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v527 = v728.__r_.__value_.__l.__size_;
    }

    v528 = sub_29D41A270(v525, v526, v527);
    v529 = MEMORY[0x29ED56A70](v528, *(a3 + 37));
    v530 = sub_29D41A270(v529, ",", 1);
    sub_29D40DC78(&v630, "apState1");
    profile_decoder::key(&v725);
    if ((v725.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v531 = &v725;
    }

    else
    {
      v531 = v725.__r_.__value_.__r.__words[0];
    }

    if ((v725.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v532 = HIBYTE(v725.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v532 = v725.__r_.__value_.__l.__size_;
    }

    v533 = sub_29D41A270(v530, v531, v532);
    v534 = MEMORY[0x29ED56A70](v533, *(a3 + 38));
    v535 = sub_29D41A270(v534, ",", 1);
    sub_29D40DC78(&v628, "aopState0");
    profile_decoder::key(&v722);
    if ((v722.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v536 = &v722;
    }

    else
    {
      v536 = v722.__r_.__value_.__r.__words[0];
    }

    if ((v722.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v537 = HIBYTE(v722.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v537 = v722.__r_.__value_.__l.__size_;
    }

    v538 = sub_29D41A270(v535, v536, v537);
    v539 = MEMORY[0x29ED56A70](v538, *(a3 + 39));
    v540 = sub_29D41A270(v539, ",", 1);
    sub_29D40DC78(&v626, "aopState1");
    profile_decoder::key(&v719);
    if ((v719.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v541 = &v719;
    }

    else
    {
      v541 = v719.__r_.__value_.__r.__words[0];
    }

    if ((v719.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v542 = HIBYTE(v719.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v542 = v719.__r_.__value_.__l.__size_;
    }

    v543 = sub_29D41A270(v540, v541, v542);
    v544 = MEMORY[0x29ED56A70](v543, *(a3 + 40));
    v545 = sub_29D41A270(v544, ",", 1);
    sub_29D40DC78(&v624, "state0");
    profile_decoder::key(&v716);
    if ((v716.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v546 = &v716;
    }

    else
    {
      v546 = v716.__r_.__value_.__r.__words[0];
    }

    if ((v716.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v547 = HIBYTE(v716.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v547 = v716.__r_.__value_.__l.__size_;
    }

    v548 = sub_29D41A270(v545, v546, v547);
    v549 = MEMORY[0x29ED56A70](v548, *(a3 + 41));
    v550 = sub_29D41A270(v549, ",", 1);
    sub_29D40DC78(&v622, "state1");
    profile_decoder::key(&v713);
    if ((v713.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v551 = &v713;
    }

    else
    {
      v551 = v713.__r_.__value_.__r.__words[0];
    }

    if ((v713.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v552 = HIBYTE(v713.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v552 = v713.__r_.__value_.__l.__size_;
    }

    v553 = sub_29D41A270(v550, v551, v552);
    v554 = MEMORY[0x29ED56A70](v553, *(a3 + 42));
    sub_29D41A270(v554, ",", 1);
    if (SHIBYTE(v713.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v713.__r_.__value_.__l.__data_);
    }

    if (v623 < 0)
    {
      operator delete(v622);
    }

    if (SHIBYTE(v716.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v716.__r_.__value_.__l.__data_);
    }

    if (v625 < 0)
    {
      operator delete(v624);
    }

    if (SHIBYTE(v719.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v719.__r_.__value_.__l.__data_);
    }

    if (v627 < 0)
    {
      operator delete(v626);
    }

    if (SHIBYTE(v722.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v722.__r_.__value_.__l.__data_);
    }

    if (v629 < 0)
    {
      operator delete(v628);
    }

    if (SHIBYTE(v725.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v725.__r_.__value_.__l.__data_);
    }

    if (v631 < 0)
    {
      operator delete(v630);
    }

    if (SHIBYTE(v728.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v728.__r_.__value_.__l.__data_);
    }

    if (v633 < 0)
    {
      operator delete(v632);
    }

    if (SHIBYTE(v731.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v731.__r_.__value_.__l.__data_);
    }

    if (v635 < 0)
    {
      operator delete(v634);
    }

    if (SHIBYTE(v734.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v734.__r_.__value_.__l.__data_);
    }

    if (v637 < 0)
    {
      operator delete(v636);
    }

    if (SHIBYTE(v737.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v737.__r_.__value_.__l.__data_);
    }

    if (v639 < 0)
    {
      operator delete(v638);
    }

    if (SHIBYTE(v740.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v740.__r_.__value_.__l.__data_);
    }

    if (v641 < 0)
    {
      operator delete(v640);
    }

    if (SHIBYTE(v775.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v775.__r_.__value_.__l.__data_);
    }

    if (v643 < 0)
    {
      operator delete(v642);
    }

    if (SHIBYTE(v778.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v778.__r_.__value_.__l.__data_);
    }

    if (v645 < 0)
    {
      operator delete(v644);
    }

    if (SHIBYTE(v781.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v781.__r_.__value_.__l.__data_);
    }

    if (v647 < 0)
    {
      operator delete(v646);
    }

    if (SHIBYTE(v784.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v784.__r_.__value_.__l.__data_);
    }

    if (v649 < 0)
    {
      operator delete(v648);
    }

    if (SHIBYTE(v787.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v787.__r_.__value_.__l.__data_);
    }

    if (v651 < 0)
    {
      operator delete(v650);
    }

    if (SHIBYTE(v790.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v790.__r_.__value_.__l.__data_);
    }

    if (v653 < 0)
    {
      operator delete(v652);
    }

    if (SHIBYTE(v793.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v793.__r_.__value_.__l.__data_);
    }

    if (v655 < 0)
    {
      operator delete(v654);
    }

    if (SHIBYTE(v796.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v796.__r_.__value_.__l.__data_);
    }

    if (v657 < 0)
    {
      operator delete(v656);
    }

    if (SHIBYTE(v815.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v815.__r_.__value_.__l.__data_);
    }

    if (v659 < 0)
    {
      operator delete(v658);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (v661 < 0)
    {
      operator delete(v660);
    }

    if (SHIBYTE(v835.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v835.__r_.__value_.__l.__data_);
    }

    if (v663 < 0)
    {
      operator delete(v662);
    }

    if (SHIBYTE(v838.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v838.__r_.__value_.__l.__data_);
    }

    if (v665 < 0)
    {
      operator delete(v664);
    }

    if (SHIBYTE(v841.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v841.__r_.__value_.__l.__data_);
    }

    if (v667 < 0)
    {
      operator delete(v666);
    }

    if (SHIBYTE(v844.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v844.__r_.__value_.__l.__data_);
    }

    if (v669 < 0)
    {
      operator delete(v668);
    }

    if (SHIBYTE(v846.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v846.__r_.__value_.__l.__data_);
    }

    if (v671 < 0)
    {
      operator delete(v670);
    }

    if (SHIBYTE(v849.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v849.__r_.__value_.__l.__data_);
    }

    if (v673 < 0)
    {
      v212 = v672;
      goto LABEL_1087;
    }

    goto LABEL_1088;
  }

  if (v84 != 5)
  {
    goto LABEL_826;
  }

  sub_29D40DC78(&v700, "context-version");
  profile_decoder::key(&v849);
  if ((v849.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v357 = &v849;
  }

  else
  {
    v357 = v849.__r_.__value_.__r.__words[0];
  }

  if ((v849.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v358 = HIBYTE(v849.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v358 = v849.__r_.__value_.__l.__size_;
  }

  v359 = sub_29D41A270((a2 + 16), v357, v358);
  v360 = MEMORY[0x29ED56A70](v359, *(a3 + 8));
  v361 = sub_29D41A270(v360, ",", 1);
  sub_29D40DC78(&v698, "currentContext0");
  profile_decoder::key(&v846);
  if ((v846.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v362 = &v846;
  }

  else
  {
    v362 = v846.__r_.__value_.__r.__words[0];
  }

  if ((v846.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v363 = HIBYTE(v846.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v363 = v846.__r_.__value_.__l.__size_;
  }

  v364 = sub_29D41A270(v361, v362, v363);
  v365 = MEMORY[0x29ED56A70](v364, *(a3 + 18));
  v366 = sub_29D41A270(v365, ",", 1);
  sub_29D40DC78(&v696, "currentContext1");
  profile_decoder::key(&v844);
  if ((v844.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v367 = &v844;
  }

  else
  {
    v367 = v844.__r_.__value_.__r.__words[0];
  }

  if ((v844.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v368 = HIBYTE(v844.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v368 = v844.__r_.__value_.__l.__size_;
  }

  v369 = sub_29D41A270(v366, v367, v368);
  v370 = MEMORY[0x29ED56A70](v369, *(a3 + 19));
  v371 = sub_29D41A270(v370, ",", 1);
  sub_29D40DC78(&v694, "ampsEnabled");
  profile_decoder::key(&v841);
  if ((v841.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v372 = &v841;
  }

  else
  {
    v372 = v841.__r_.__value_.__r.__words[0];
  }

  if ((v841.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v373 = HIBYTE(v841.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v373 = v841.__r_.__value_.__l.__size_;
  }

  v374 = sub_29D41A270(v371, v372, v373);
  v375 = MEMORY[0x29ED56A70](v374, *(a3 + 20));
  v376 = sub_29D41A270(v375, ",", 1);
  sub_29D40DC78(&v692, "enabled");
  profile_decoder::key(&v838);
  if ((v838.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v377 = &v838;
  }

  else
  {
    v377 = v838.__r_.__value_.__r.__words[0];
  }

  if ((v838.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v378 = HIBYTE(v838.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v378 = v838.__r_.__value_.__l.__size_;
  }

  v379 = sub_29D41A270(v376, v377, v378);
  v380 = MEMORY[0x29ED56A70](v379, *(a3 + 21));
  v381 = sub_29D41A270(v380, ",", 1);
  sub_29D40DC78(&v690, "scan_period");
  profile_decoder::key(&v835);
  if ((v835.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v382 = &v835;
  }

  else
  {
    v382 = v835.__r_.__value_.__r.__words[0];
  }

  if ((v835.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v383 = HIBYTE(v835.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v383 = v835.__r_.__value_.__l.__size_;
  }

  v384 = sub_29D41A270(v381, v382, v383);
  v385 = MEMORY[0x29ED56A70](v384, *(a3 + 22));
  v386 = sub_29D41A270(v385, ",", 1);
  sub_29D40DC78(&v688, "scan_time");
  profile_decoder::key(&__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v387 = &__p;
  }

  else
  {
    v387 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v388 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v388 = __p.__r_.__value_.__l.__size_;
  }

  v389 = sub_29D41A270(v386, v387, v388);
  v390 = MEMORY[0x29ED56A70](v389, *(a3 + 26));
  v391 = sub_29D41A270(v390, ",", 1);
  sub_29D40DC78(&v686, "fingerDetect");
  profile_decoder::key(&v815);
  if ((v815.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v392 = &v815;
  }

  else
  {
    v392 = v815.__r_.__value_.__r.__words[0];
  }

  if ((v815.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v393 = HIBYTE(v815.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v393 = v815.__r_.__value_.__l.__size_;
  }

  v394 = sub_29D41A270(v391, v392, v393);
  v395 = MEMORY[0x29ED56A70](v394, *(a3 + 30));
  v396 = sub_29D41A270(v395, ",", 1);
  sub_29D40DC78(&v684, "buttonState");
  profile_decoder::key(&v796);
  if ((v796.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v397 = &v796;
  }

  else
  {
    v397 = v796.__r_.__value_.__r.__words[0];
  }

  if ((v796.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v398 = HIBYTE(v796.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v398 = v796.__r_.__value_.__l.__size_;
  }

  v399 = sub_29D41A270(v396, v397, v398);
  v400 = MEMORY[0x29ED56A70](v399, *(a3 + 31));
  v401 = sub_29D41A270(v400, ",", 1);
  sub_29D40DC78(&v682, "pressCount");
  profile_decoder::key(&v793);
  if ((v793.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v402 = &v793;
  }

  else
  {
    v402 = v793.__r_.__value_.__r.__words[0];
  }

  if ((v793.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v403 = HIBYTE(v793.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v403 = v793.__r_.__value_.__l.__size_;
  }

  v404 = sub_29D41A270(v401, v402, v403);
  v405 = MEMORY[0x29ED56A70](v404, *(a3 + 32));
  v406 = sub_29D41A270(v405, ",", 1);
  sub_29D40DC78(&v680, "longPress");
  profile_decoder::key(&v790);
  if ((v790.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v407 = &v790;
  }

  else
  {
    v407 = v790.__r_.__value_.__r.__words[0];
  }

  if ((v790.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v408 = HIBYTE(v790.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v408 = v790.__r_.__value_.__l.__size_;
  }

  v409 = sub_29D41A270(v406, v407, v408);
  v410 = MEMORY[0x29ED56A70](v409, *(a3 + 33));
  v411 = sub_29D41A270(v410, ",", 1);
  sub_29D40DC78(&v678, "terminalEvent");
  profile_decoder::key(&v787);
  if ((v787.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v412 = &v787;
  }

  else
  {
    v412 = v787.__r_.__value_.__r.__words[0];
  }

  if ((v787.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v413 = HIBYTE(v787.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v413 = v787.__r_.__value_.__l.__size_;
  }

  v414 = sub_29D41A270(v411, v412, v413);
  v415 = MEMORY[0x29ED56A70](v414, *(a3 + 34));
  v416 = sub_29D41A270(v415, ",", 1);
  sub_29D40DC78(&v676, "speed");
  profile_decoder::key(&v784);
  if ((v784.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v417 = &v784;
  }

  else
  {
    v417 = v784.__r_.__value_.__r.__words[0];
  }

  if ((v784.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v418 = HIBYTE(v784.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v418 = v784.__r_.__value_.__l.__size_;
  }

  v419 = sub_29D41A270(v416, v417, v418);
  v420 = MEMORY[0x29ED56A70](v419, *(a3 + 35));
  v421 = sub_29D41A270(v420, ",", 1);
  sub_29D40DC78(&v674, "stage");
  profile_decoder::key(&v781);
  if ((v781.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v422 = &v781;
  }

  else
  {
    v422 = v781.__r_.__value_.__r.__words[0];
  }

  if ((v781.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v423 = HIBYTE(v781.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v423 = v781.__r_.__value_.__l.__size_;
  }

  v424 = sub_29D41A270(v421, v422, v423);
  v425 = MEMORY[0x29ED56A70](v424, *(a3 + 36));
  sub_29D41A270(v425, ",", 1);
  if (SHIBYTE(v781.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v781.__r_.__value_.__l.__data_);
  }

  if (v675 < 0)
  {
    operator delete(v674);
  }

  if (SHIBYTE(v784.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v784.__r_.__value_.__l.__data_);
  }

  if (v677 < 0)
  {
    operator delete(v676);
  }

  if (SHIBYTE(v787.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v787.__r_.__value_.__l.__data_);
  }

  if (v679 < 0)
  {
    operator delete(v678);
  }

  if (SHIBYTE(v790.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v790.__r_.__value_.__l.__data_);
  }

  if (v681 < 0)
  {
    operator delete(v680);
  }

  if (SHIBYTE(v793.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v793.__r_.__value_.__l.__data_);
  }

  if (v683 < 0)
  {
    operator delete(v682);
  }

  if (SHIBYTE(v796.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v796.__r_.__value_.__l.__data_);
  }

  if (v685 < 0)
  {
    operator delete(v684);
  }

  if (SHIBYTE(v815.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v815.__r_.__value_.__l.__data_);
  }

  if (v687 < 0)
  {
    operator delete(v686);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v689 < 0)
  {
    operator delete(v688);
  }

  if (SHIBYTE(v835.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v835.__r_.__value_.__l.__data_);
  }

  if (v691 < 0)
  {
    operator delete(v690);
  }

  if (SHIBYTE(v838.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v838.__r_.__value_.__l.__data_);
  }

  if (v693 < 0)
  {
    operator delete(v692);
  }

  if (SHIBYTE(v841.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v841.__r_.__value_.__l.__data_);
  }

  if (v695 < 0)
  {
    operator delete(v694);
  }

  if (SHIBYTE(v844.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v844.__r_.__value_.__l.__data_);
  }

  if (v697 < 0)
  {
    operator delete(v696);
  }

  if (SHIBYTE(v846.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v846.__r_.__value_.__l.__data_);
  }

  if (v699 < 0)
  {
    operator delete(v698);
  }

  if (SHIBYTE(v849.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v849.__r_.__value_.__l.__data_);
  }

  if (v701 < 0)
  {
    v212 = v700;
    goto LABEL_1087;
  }

LABEL_1088:
  if (v7 != 7)
  {
    goto LABEL_1163;
  }

  if (v8 != 2)
  {
    return;
  }

  if (v82 != 1)
  {
    if (v82 == 2)
    {
      sub_29D40DC78(&v601, "ampType");
      profile_decoder::key(&v849);
      if ((v849.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v572 = &v849;
      }

      else
      {
        v572 = v849.__r_.__value_.__r.__words[0];
      }

      if ((v849.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v573 = HIBYTE(v849.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v573 = v849.__r_.__value_.__l.__size_;
      }

      v574 = sub_29D41A270((a2 + 16), v572, v573);
      *(v574 + *(*v574 - 24) + 24) = 10;
      v575 = *(a3 + 18);
      v576 = MEMORY[0x29ED56A70]();
      v577 = sub_29D41A270(v576, ",", 1);
      sub_29D40DC78(&v599, "index");
      profile_decoder::key(&v846);
      if ((v846.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v578 = &v846;
      }

      else
      {
        v578 = v846.__r_.__value_.__r.__words[0];
      }

      if ((v846.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v579 = HIBYTE(v846.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v579 = v846.__r_.__value_.__l.__size_;
      }

      v580 = sub_29D41A270(v577, v578, v579);
      *(v580 + *(*v580 - 24) + 24) = 10;
      v581 = *(a3 + 26);
      v582 = MEMORY[0x29ED56A70]();
      v583 = sub_29D41A270(v582, ",", 1);
      sub_29D40DC78(&v597, "presilence");
      profile_decoder::key(&v844);
      if ((v844.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v584 = &v844;
      }

      else
      {
        v584 = v844.__r_.__value_.__r.__words[0];
      }

      if ((v844.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v585 = HIBYTE(v844.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v585 = v844.__r_.__value_.__l.__size_;
      }

      v586 = sub_29D41A270(v583, v584, v585);
      *(v586 + *(*v586 - 24) + 24) = 10;
      v587 = *(a3 + 34);
      v588 = MEMORY[0x29ED56A70]();
      v589 = sub_29D41A270(v588, ",", 1);
      sub_29D40DC78(&v595, "gain");
      profile_decoder::key(&v841);
      if ((v841.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v590 = &v841;
      }

      else
      {
        v590 = v841.__r_.__value_.__r.__words[0];
      }

      if ((v841.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v591 = HIBYTE(v841.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v591 = v841.__r_.__value_.__l.__size_;
      }

      v592 = sub_29D41A270(v589, v590, v591);
      *(v592 + *(*v592 - 24) + 24) = 10;
      v593 = *(a3 + 42);
      v594 = MEMORY[0x29ED56A70]();
      sub_29D41A270(v594, ",", 1);
      if (SHIBYTE(v841.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v841.__r_.__value_.__l.__data_);
      }

      if (v596 < 0)
      {
        operator delete(v595);
      }

      if (SHIBYTE(v844.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v844.__r_.__value_.__l.__data_);
      }

      if (v598 < 0)
      {
        operator delete(v597);
      }

      if (SHIBYTE(v846.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v846.__r_.__value_.__l.__data_);
      }

      if (v600 < 0)
      {
        operator delete(v599);
      }

      if (SHIBYTE(v849.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v849.__r_.__value_.__l.__data_);
      }

      if (v602 < 0)
      {
        v81 = v601;
        goto LABEL_1162;
      }

      return;
    }

    goto LABEL_1163;
  }

  sub_29D40DC78(&v607, "ampType");
  profile_decoder::key(&v849);
  if ((v849.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v555 = &v849;
  }

  else
  {
    v555 = v849.__r_.__value_.__r.__words[0];
  }

  if ((v849.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v556 = HIBYTE(v849.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v556 = v849.__r_.__value_.__l.__size_;
  }

  v557 = sub_29D41A270((a2 + 16), v555, v556);
  *(v557 + *(*v557 - 24) + 24) = 10;
  v558 = *(a3 + 26);
  v559 = MEMORY[0x29ED56A70]();
  v560 = sub_29D41A270(v559, ",", 1);
  sub_29D40DC78(&v605, "state");
  profile_decoder::key(&v846);
  if ((v846.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v561 = &v846;
  }

  else
  {
    v561 = v846.__r_.__value_.__r.__words[0];
  }

  if ((v846.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v562 = HIBYTE(v846.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v562 = v846.__r_.__value_.__l.__size_;
  }

  v563 = sub_29D41A270(v560, v561, v562);
  *(v563 + *(*v563 - 24) + 24) = 10;
  v564 = *(a3 + 18);
  v565 = MEMORY[0x29ED56A70]();
  v566 = sub_29D41A270(v565, ",", 1);
  sub_29D40DC78(&v603, "refCount");
  profile_decoder::key(&v844);
  if ((v844.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v567 = &v844;
  }

  else
  {
    v567 = v844.__r_.__value_.__r.__words[0];
  }

  if ((v844.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v568 = HIBYTE(v844.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v568 = v844.__r_.__value_.__l.__size_;
  }

  v569 = sub_29D41A270(v566, v567, v568);
  *(v569 + *(*v569 - 24) + 24) = 10;
  v570 = *(a3 + 22);
  v571 = MEMORY[0x29ED56A70]();
  sub_29D41A270(v571, ",", 1);
  if (SHIBYTE(v844.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v844.__r_.__value_.__l.__data_);
  }

  if (v604 < 0)
  {
    operator delete(v603);
  }

  if (SHIBYTE(v846.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v846.__r_.__value_.__l.__data_);
  }

  if (v606 < 0)
  {
    operator delete(v605);
  }

  if (SHIBYTE(v849.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v849.__r_.__value_.__l.__data_);
  }

  if (v608 < 0)
  {
    v81 = v607;
    goto LABEL_1162;
  }
}

void sub_29D4177A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (*(v33 - 225) < 0)
  {
    operator delete(*(v33 - 248));
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v33 - 177) < 0)
  {
    operator delete(*(v33 - 200));
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (*(v33 - 129) < 0)
  {
    operator delete(*(v33 - 152));
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (*(v33 - 81) < 0)
  {
    operator delete(*(v33 - 104));
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  _Unwind_Resume(a1);
}

void haptics_decoder::parse_datatype(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = BYTE2(*a3);
  if ((v5 - 5) <= 1)
  {
    goto LABEL_106;
  }

  if (*a3 != 2)
  {
    if (*a3 == 3)
    {
      sub_29D40DC78(&v115, "trace");
      profile_decoder::key(&v117);
      if ((v117.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v6 = &v117;
      }

      else
      {
        v6 = v117.__r_.__value_.__r.__words[0];
      }

      if ((v117.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v117.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v117.__r_.__value_.__l.__size_;
      }

      v8 = sub_29D41A270((a2 + 16), v6, size);
      *(v8 + *(*v8 - 24) + 24) = 25;
      haptics_decoder::subtype_name(*(a3 + 16), v5, &v113);
      profile_decoder::str(&v114);
      if ((v114.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v9 = &v114;
      }

      else
      {
        v9 = v114.__r_.__value_.__r.__words[0];
      }

      if ((v114.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v10 = HIBYTE(v114.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v10 = v114.__r_.__value_.__l.__size_;
      }

      v11 = sub_29D41A270(v8, v9, v10);
      v12 = sub_29D41A270(v11, ",", 1);
      sub_29D40DC78(&v110, "thread");
      profile_decoder::key(&v112);
      if ((v112.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v13 = &v112;
      }

      else
      {
        v13 = v112.__r_.__value_.__r.__words[0];
      }

      if ((v112.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v14 = HIBYTE(v112.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v14 = v112.__r_.__value_.__l.__size_;
      }

      v15 = sub_29D41A270(v12, v13, v14);
      *(v15 + *(*v15 - 24) + 24) = 10;
      v16 = *(a3 + 20);
      v17 = MEMORY[0x29ED56A70]();
      v18 = sub_29D41A270(v17, ",", 1);
      sub_29D40DC78(&v107, "arg1");
      profile_decoder::key(&v109);
      if ((v109.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v19 = &v109;
      }

      else
      {
        v19 = v109.__r_.__value_.__r.__words[0];
      }

      if ((v109.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v20 = HIBYTE(v109.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v20 = v109.__r_.__value_.__l.__size_;
      }

      v21 = sub_29D41A270(v18, v19, v20);
      *(v21 + *(*v21 - 24) + 24) = 10;
      v22 = *(a3 + 24);
      v23 = MEMORY[0x29ED56A70]();
      v24 = sub_29D41A270(v23, ",", 1);
      sub_29D40DC78(&v104, "arg2");
      profile_decoder::key(&v106);
      if ((v106.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v25 = &v106;
      }

      else
      {
        v25 = v106.__r_.__value_.__r.__words[0];
      }

      if ((v106.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v26 = HIBYTE(v106.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v26 = v106.__r_.__value_.__l.__size_;
      }

      v27 = sub_29D41A270(v24, v25, v26);
      *(v27 + *(*v27 - 24) + 24) = 10;
      v28 = *(a3 + 28);
      v29 = MEMORY[0x29ED56A70]();
      v30 = sub_29D41A270(v29, ",", 1);
      sub_29D40DC78(&v101, "arg3");
      profile_decoder::key(&v103);
      if ((v103.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v31 = &v103;
      }

      else
      {
        v31 = v103.__r_.__value_.__r.__words[0];
      }

      if ((v103.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v32 = HIBYTE(v103.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v32 = v103.__r_.__value_.__l.__size_;
      }

      v33 = sub_29D41A270(v30, v31, v32);
      *(v33 + *(*v33 - 24) + 24) = 10;
      v34 = *(a3 + 32);
      v35 = MEMORY[0x29ED56A70]();
      v36 = sub_29D41A270(v35, ",", 1);
      sub_29D40DC78(&v98, "arg4");
      profile_decoder::key(&__p);
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
        v38 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v38 = __p.__r_.__value_.__l.__size_;
      }

      v39 = sub_29D41A270(v36, p_p, v38);
      *(v39 + *(*v39 - 24) + 24) = 10;
      v40 = *(a3 + 36);
      v41 = MEMORY[0x29ED56A70]();
      sub_29D41A270(v41, ",", 1);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (v99 < 0)
      {
        operator delete(v98);
      }

      if (SHIBYTE(v103.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v103.__r_.__value_.__l.__data_);
      }

      if (v102 < 0)
      {
        operator delete(v101);
      }

      if (SHIBYTE(v106.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v106.__r_.__value_.__l.__data_);
      }

      if (v105 < 0)
      {
        operator delete(v104);
      }

      if (SHIBYTE(v109.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v109.__r_.__value_.__l.__data_);
      }

      if (v108 < 0)
      {
        operator delete(v107);
      }

      if (SHIBYTE(v112.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v112.__r_.__value_.__l.__data_);
      }

      if (v111 < 0)
      {
        operator delete(v110);
      }

      if (SHIBYTE(v114.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v114.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v113.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v113.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v117.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v117.__r_.__value_.__l.__data_);
      }

      if (v116 < 0)
      {
        v42 = v115;
LABEL_149:
        operator delete(v42);
        return;
      }

      return;
    }

LABEL_106:

    profile_decoder::parse_datatype(a1, a2, a3);
    return;
  }

  v43 = BYTE1(*a3);
  if (v43 == 2)
  {
    sub_29D40DC78(&v90, "ampType");
    profile_decoder::key(&v117);
    if ((v117.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v61 = &v117;
    }

    else
    {
      v61 = v117.__r_.__value_.__r.__words[0];
    }

    if ((v117.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v62 = HIBYTE(v117.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v62 = v117.__r_.__value_.__l.__size_;
    }

    v63 = sub_29D41A270((a2 + 16), v61, v62);
    *(v63 + *(*v63 - 24) + 24) = 10;
    v64 = *(a3 + 18);
    v65 = MEMORY[0x29ED56A70]();
    v66 = sub_29D41A270(v65, ",", 1);
    sub_29D40DC78(&v88, "index");
    profile_decoder::key(&v114);
    if ((v114.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v67 = &v114;
    }

    else
    {
      v67 = v114.__r_.__value_.__r.__words[0];
    }

    if ((v114.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v68 = HIBYTE(v114.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v68 = v114.__r_.__value_.__l.__size_;
    }

    v69 = sub_29D41A270(v66, v67, v68);
    *(v69 + *(*v69 - 24) + 24) = 10;
    v70 = *(a3 + 22);
    v71 = MEMORY[0x29ED56A70]();
    v72 = sub_29D41A270(v71, ",", 1);
    sub_29D40DC78(&v86, "presilence");
    profile_decoder::key(&v112);
    if ((v112.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v73 = &v112;
    }

    else
    {
      v73 = v112.__r_.__value_.__r.__words[0];
    }

    if ((v112.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v74 = HIBYTE(v112.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v74 = v112.__r_.__value_.__l.__size_;
    }

    v75 = sub_29D41A270(v72, v73, v74);
    *(v75 + *(*v75 - 24) + 24) = 10;
    v76 = *(a3 + 26);
    v77 = MEMORY[0x29ED56A70]();
    v78 = sub_29D41A270(v77, ",", 1);
    sub_29D40DC78(&v84, "gain");
    profile_decoder::key(&v109);
    if ((v109.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v79 = &v109;
    }

    else
    {
      v79 = v109.__r_.__value_.__r.__words[0];
    }

    if ((v109.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v80 = HIBYTE(v109.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v80 = v109.__r_.__value_.__l.__size_;
    }

    v81 = sub_29D41A270(v78, v79, v80);
    *(v81 + *(*v81 - 24) + 24) = 10;
    v82 = *(a3 + 30);
    v83 = MEMORY[0x29ED56A70]();
    sub_29D41A270(v83, ",", 1);
    if (SHIBYTE(v109.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v109.__r_.__value_.__l.__data_);
    }

    if (v85 < 0)
    {
      operator delete(v84);
    }

    if (SHIBYTE(v112.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v112.__r_.__value_.__l.__data_);
    }

    if (v87 < 0)
    {
      operator delete(v86);
    }

    if (SHIBYTE(v114.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v114.__r_.__value_.__l.__data_);
    }

    if (v89 < 0)
    {
      operator delete(v88);
    }

    if (SHIBYTE(v117.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v117.__r_.__value_.__l.__data_);
    }

    if (v91 < 0)
    {
      v42 = v90;
      goto LABEL_149;
    }

    return;
  }

  if (v43 != 1)
  {
    goto LABEL_106;
  }

  sub_29D40DC78(&v96, "ampType");
  profile_decoder::key(&v117);
  if ((v117.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v44 = &v117;
  }

  else
  {
    v44 = v117.__r_.__value_.__r.__words[0];
  }

  if ((v117.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v45 = HIBYTE(v117.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v45 = v117.__r_.__value_.__l.__size_;
  }

  v46 = sub_29D41A270((a2 + 16), v44, v45);
  *(v46 + *(*v46 - 24) + 24) = 10;
  v47 = *(a3 + 26);
  v48 = MEMORY[0x29ED56A70]();
  v49 = sub_29D41A270(v48, ",", 1);
  sub_29D40DC78(&v94, "state");
  profile_decoder::key(&v114);
  if ((v114.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v50 = &v114;
  }

  else
  {
    v50 = v114.__r_.__value_.__r.__words[0];
  }

  if ((v114.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v51 = HIBYTE(v114.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v51 = v114.__r_.__value_.__l.__size_;
  }

  v52 = sub_29D41A270(v49, v50, v51);
  *(v52 + *(*v52 - 24) + 24) = 10;
  v53 = *(a3 + 18);
  v54 = MEMORY[0x29ED56A70]();
  v55 = sub_29D41A270(v54, ",", 1);
  sub_29D40DC78(&v92, "refCount");
  profile_decoder::key(&v112);
  if ((v112.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v56 = &v112;
  }

  else
  {
    v56 = v112.__r_.__value_.__r.__words[0];
  }

  if ((v112.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v57 = HIBYTE(v112.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v57 = v112.__r_.__value_.__l.__size_;
  }

  v58 = sub_29D41A270(v55, v56, v57);
  *(v58 + *(*v58 - 24) + 24) = 10;
  v59 = *(a3 + 22);
  v60 = MEMORY[0x29ED56A70]();
  sub_29D41A270(v60, ",", 1);
  if (SHIBYTE(v112.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v112.__r_.__value_.__l.__data_);
  }

  if (v93 < 0)
  {
    operator delete(v92);
  }

  if (SHIBYTE(v114.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v114.__r_.__value_.__l.__data_);
  }

  if (v95 < 0)
  {
    operator delete(v94);
  }

  if (SHIBYTE(v117.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v117.__r_.__value_.__l.__data_);
  }

  if (v97 < 0)
  {
    v42 = v96;
    goto LABEL_149;
  }
}

void sub_29D419800(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (*(v33 - 193) < 0)
  {
    operator delete(*(v33 - 216));
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v33 - 145) < 0)
  {
    operator delete(*(v33 - 168));
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (*(v33 - 97) < 0)
  {
    operator delete(*(v33 - 120));
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (*(v33 - 49) < 0)
  {
    operator delete(*(v33 - 72));
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  _Unwind_Resume(a1);
}

std::string *haptics_decoder::subtype_name@<X0>(profile_decoder *a1@<X2>, int a2@<W1>, std::string *a3@<X8>)
{
  if ((a2 - 7) > 2)
  {
    return std::to_string(a3, a1);
  }

  else
  {
    return profile_decoder::find_in_table(&unk_29F34EBA8, a1, 0x18u, a3);
  }
}

void wake_decoder::parse_datatype(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = *a3;
  if (*a3 == 167772429)
  {
    sub_29D40DC78(&v36, "wake_reason");
    profile_decoder::key(&v38);
    if ((v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v7 = &v38;
    }

    else
    {
      v7 = v38.__r_.__value_.__r.__words[0];
    }

    if ((v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v38.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v38.__r_.__value_.__l.__size_;
    }

    v9 = sub_29D41A270((a2 + 16), v7, size);
    *(v9 + *(*v9 - 24) + 24) = 10;
    v10 = a3[4];
    v11 = MEMORY[0x29ED56A70]();
    v12 = sub_29D41A270(v11, ",", 1);
    sub_29D40DC78(&v33, "endpoint_ref");
    profile_decoder::key(&__p);
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
      v14 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v14 = __p.__r_.__value_.__l.__size_;
    }

    v15 = sub_29D41A270(v12, p_p, v14);
    *(v15 + *(*v15 - 24) + 24) = 10;
    v16 = *(a3 + 5);
    v17 = MEMORY[0x29ED56AA0]();
    sub_29D41A270(v17, ",", 1);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (v34 < 0)
    {
      operator delete(v33);
    }

    if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v38.__r_.__value_.__l.__data_);
    }

    if (v37 < 0)
    {
      operator delete(v36);
    }

    v6 = *a3;
  }

  if (v6 == 167772675)
  {
    sub_29D40DC78(&v31, "wake_reason");
    profile_decoder::key(&v38);
    if ((v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v18 = &v38;
    }

    else
    {
      v18 = v38.__r_.__value_.__r.__words[0];
    }

    if ((v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v19 = HIBYTE(v38.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v19 = v38.__r_.__value_.__l.__size_;
    }

    v20 = sub_29D41A270((a2 + 16), v18, v19);
    *(v20 + *(*v20 - 24) + 24) = 10;
    v21 = a3[4];
    v22 = MEMORY[0x29ED56A70]();
    v23 = sub_29D41A270(v22, ",", 1);
    sub_29D40DC78(&v29, "service_id");
    profile_decoder::key(&__p);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v24 = &__p;
    }

    else
    {
      v24 = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v25 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v25 = __p.__r_.__value_.__l.__size_;
    }

    v26 = sub_29D41A270(v23, v24, v25);
    *(v26 + *(*v26 - 24) + 24) = 10;
    v27 = a3[5];
    v28 = MEMORY[0x29ED56A70]();
    sub_29D41A270(v28, ",", 1);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (v30 < 0)
    {
      operator delete(v29);
    }

    if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v38.__r_.__value_.__l.__data_);
    }

    if (v32 < 0)
    {
      operator delete(v31);
    }
  }

  else
  {
    profile_decoder::parse_datatype(a1, a2, a3);
  }
}

void sub_29D419E44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (*(v38 - 49) < 0)
  {
    operator delete(*(v38 - 72));
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void AOPLogDecoder::to_string(int *a1)
{
  v2 = *a1;
  if (v2 >> 25 <= 6 && (v3 = *(&AOPLogDecoder::_decoders + ((v2 >> 21) & 0x7F8))) != 0)
  {
    (**v3)(v3, a1);
  }

  else
  {
    profile_decoder::to_string(&AOPLogDecoder::_default, a1);
  }
}

std::string *AOPLogDecoder::category_to_string@<X0>(AOPLogDecoder *this@<X0>, std::string *a2@<X8>)
{
  if (this <= 0xD && (v3 = (&AOPLogDecoder::_decoders)[this]) != 0)
  {
    return ((*v3)[1])(v3, this);
  }

  else
  {
    return std::to_string(a2, this);
  }
}

std::string *AOPLogDecoder::component_to_string@<X0>(AOPLogDecoder *this@<X0>, uint64_t __val@<X1>, std::string *a3@<X8>)
{
  if (this <= 0xD && (v3 = (&AOPLogDecoder::_decoders)[this]) != 0)
  {
    return ((*v3)[2])(v3, __val);
  }

  else
  {
    return std::to_string(a3, __val);
  }
}

void sub_29D41A01C(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_29D41A078(exception, a1);
  __cxa_throw(exception, off_29F34D940, MEMORY[0x29EDC9348]);
}

std::logic_error *sub_29D41A078(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x29EDC95D8] + 16);
  return result;
}

uint64_t sub_29D41A0AC(uint64_t a1, int a2)
{
  *a1 = MEMORY[0x29EDC9568] + 16;
  MEMORY[0x29ED56AC0](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x29EDC9570] + 16;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a2;
  sub_29D41A168(a1);
  return a1;
}

void sub_29D41A140(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

void sub_29D41A168(uint64_t a1)
{
  *(a1 + 88) = 0;
  v2 = (a1 + 64);
  v3 = *(a1 + 87);
  if (v3 < 0)
  {
    v4 = *(a1 + 64);
    v5 = *(a1 + 72);
  }

  else
  {
    v4 = v2;
    v5 = *(a1 + 87);
  }

  v6 = *(a1 + 96);
  if ((v6 & 8) != 0)
  {
    *(a1 + 88) = v4 + v5;
    *(a1 + 16) = v4;
    *(a1 + 24) = v4;
    *(a1 + 32) = v4 + v5;
  }

  if ((v6 & 0x10) != 0)
  {
    *(a1 + 88) = v4 + v5;
    if ((v3 & 0x80000000) != 0)
    {
      v7 = (*(a1 + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    else
    {
      v7 = 22;
    }

    std::string::resize(v2, v7, 0);
    v8 = *(a1 + 87);
    if (v8 < 0)
    {
      v8 = *(a1 + 72);
    }

    *(a1 + 40) = v4;
    *(a1 + 48) = v4;
    *(a1 + 56) = v4 + v8;
    if ((*(a1 + 96) & 3) != 0)
    {
      if (v5 >> 31)
      {
        v9 = ((v5 - 0x80000000) * 0x200000005uLL) >> 64;
        v10 = 0x7FFFFFFF * ((v9 + ((v5 - 0x80000000 - v9) >> 1)) >> 30);
        v4 = (v4 + v10 + 0x7FFFFFFF);
        v5 = v5 - v10 - 0x7FFFFFFF;
        *(a1 + 48) = v4;
      }

      if (v5)
      {
        *(a1 + 48) = v4 + v5;
      }
    }
  }
}

void *sub_29D41A270(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x29ED56A30](v13, a1);
  if (v13[0] == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 40);
    v8 = *(v6 + 8);
    v9 = *(v6 + 144);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&v14, MEMORY[0x29EDC93D0]);
      v9 = (v10->__vftable[2].~facet_0)(v10, 32);
      std::locale::~locale(&v14);
      *(v6 + 144) = v9;
    }

    if ((v8 & 0xB0) == 0x20)
    {
      v11 = a2 + a3;
    }

    else
    {
      v11 = a2;
    }

    if (!sub_29D41A418(v7, a2, v11, a2 + a3, v6, v9))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x29ED56A40](v13);
  return a1;
}

void sub_29D41A3B0(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::locale a12)
{
  MEMORY[0x29ED56A40](&a10);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x29D41A390);
}

uint64_t sub_29D41A418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
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
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_29D41A004();
      }

      if (v12 >= 0x17)
      {
        operator new();
      }

      v18 = v12;
      memset(&__b, __c, v12);
      *(&__b + v12) = 0;
      if (v18 >= 0)
      {
        p_b = &__b;
      }

      else
      {
        p_b = __b;
      }

      v14 = (*(*v6 + 96))(v6, p_b, v12);
      if (v18 < 0)
      {
        operator delete(__b);
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

void sub_29D41A5E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29D41A600(_BYTE *__dst, void *__src, unint64_t a3)
{
  if (a3 > 0x16)
  {
    if (a3 < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    sub_29D41A004();
  }

  __dst[23] = a3;
  v3 = a3 + 1;

  return memmove(__dst, __src, v3);
}

uint64_t SPU_log_next_report(uint64_t a1)
{
  v1 = a1 + ((*(a1 + 8) >> 2) & 0xF0);
  v3 = *(v1 + 16);
  v2 = v1 + 16;
  if (v3)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t SPU_log_get_num_reports(uint64_t result)
{
  if (result)
  {
    v1 = result;
    result = 0;
    v2 = v1 + 256;
    do
    {
      if (!*v1)
      {
        break;
      }

      ++result;
      v3 = v1 + ((*(v1 + 8) >> 2) & 0xF0);
      v4 = *(v3 + 16);
      v1 = v3 + 16;
      v5 = v4 ? v1 : 0;
    }

    while (v5 && v5 != v2);
  }

  return result;
}