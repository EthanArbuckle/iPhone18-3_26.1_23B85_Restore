uint64_t spu_log_device_time_to_mach_time(uint64_t a1, unint64_t *a2, unint64_t *a3, unint64_t *a4)
{
  v8 = *MEMORY[0x29EDBB110];
  v9 = IOServiceMatching("AppleSPUTimesync");
  MatchingService = IOServiceGetMatchingService(v8, v9);
  if (MatchingService)
  {
    v11 = MatchingService;
    v26 = 0;
    valuePtr = 0;
    v24 = 0;
    v25 = 0;
    CFProperty = IORegistryEntryCreateCFProperty(MatchingService, @"timesync", *MEMORY[0x29EDB8ED8], 0);
    if (CFProperty)
    {
      v13 = CFProperty;
      Value = CFDictionaryGetValue(CFProperty, @"ap");
      v15 = CFNumberGetValue(Value, kCFNumberLongLongType, &valuePtr);
      v16 = CFDictionaryGetValue(v13, @"ap-cont");
      v17 = CFNumberGetValue(v16, kCFNumberLongLongType, &v26) & v15;
      v18 = CFDictionaryGetValue(v13, @"spu");
      v19 = CFNumberGetValue(v18, kCFNumberLongLongType, &v25);
      v20 = CFDictionaryGetValue(v13, @"calendar");
      v21 = v19 & CFNumberGetValue(v20, kCFNumberLongLongType, &v24);
      if (a2)
      {
        *a2 = valuePtr + 1000 * a1 - v25;
      }

      v22 = v17 & v21;
      if (a3)
      {
        *a3 = v26 + 1000 * a1 - v25;
      }

      if (a4)
      {
        *a4 = v24 + 1000 * a1 - v25;
      }

      CFRelease(v13);
    }

    else
    {
      sub_29D41B0A0();
      v22 = 0;
    }

    IOObjectRelease(v11);
  }

  else
  {
    sub_29D41B0F8();
    v22 = 0;
  }

  return v22 & 1;
}

uint64_t spu_log_calendar_time_to_walltime(unint64_t a1, char *a2, size_t a3)
{
  v7 = a1 / 0x3B9ACA00;
  v5 = localtime(&v7);
  strftime(a2, a3, "%b %d %T", v5);
  return 1;
}

unint64_t spu_log_ns_to_mach_time(unint64_t a1)
{
  v2 = *&qword_2A17A28D0;
  if (*&qword_2A17A28D0 == 0.0)
  {
    mach_timebase_info(&info);
    LODWORD(v3) = info.numer;
    LODWORD(v4) = info.denom;
    v2 = v3 / v4;
    qword_2A17A28D0 = *&v2;
  }

  return (a1 / v2);
}

BOOL spu_log_get_aop_logs(int a1, uint64_t a2, void (*a3)(void *, const char *, const void *, unint64_t, BOOL), void *a4)
{
  input[1] = *MEMORY[0x29EDCA608];
  inputStruct = a1;
  v66[23] = 7;
  strcpy(v66, "AOP_log");
  v67 = 0;
  input[0] = 35;
  v64 = a2 << 8;
  v65 = &unk_2A241D910;
  outputStruct = malloc_type_malloc(a2 << 8, 0x1000040104B78CFuLL);
  if (outputStruct)
  {
    v39 = AOPServiceConnect::connect(&v65);
    if (v39)
    {
      v5 = IOConnectCallMethod(v67, 3u, input, 1u, &inputStruct, 4uLL, 0, 0, outputStruct, &v64);
      if (v5)
      {
        sub_29D41B1A8(v5);
      }

      else if (v64 >= 0x100)
      {
        v6 = 0;
        v7 = v64 >> 8;
        do
        {
          v8 = 0;
          v62 = 0u;
          memset(v63, 0, 176);
          v60 = 0u;
          v61 = 0u;
          v58 = 0u;
          v59 = 0u;
          v56 = 0u;
          v57 = 0u;
          v54 = 0u;
          v55 = 0u;
          v52 = 0u;
          v53 = 0u;
          v50 = 0u;
          v51 = 0u;
          v48 = 0u;
          v49 = 0u;
          v46 = 0u;
          v47 = 0u;
          v45 = 0u;
          v43 = 0;
          v44 = 0;
          v42 = 0;
          v9 = &outputStruct[256 * v6];
          v10 = *(v9 + 3);
          v12 = *v9;
          v11 = *(v9 + 1);
          v48 = *(v9 + 2);
          v49 = v10;
          v46 = v12;
          v47 = v11;
          v13 = *(v9 + 7);
          v15 = *(v9 + 4);
          v14 = *(v9 + 5);
          v52 = *(v9 + 6);
          v53 = v13;
          v50 = v15;
          v51 = v14;
          v16 = *(v9 + 11);
          v18 = *(v9 + 8);
          v17 = *(v9 + 9);
          v56 = *(v9 + 10);
          v57 = v16;
          v54 = v18;
          v55 = v17;
          v19 = *(v9 + 15);
          v21 = *(v9 + 12);
          v20 = *(v9 + 13);
          v60 = *(v9 + 14);
          v61 = v19;
          v58 = v21;
          v59 = v20;
          v22 = v9 + 256;
          v23 = v9;
          v24 = *v9;
          do
          {
            if (!v24)
            {
              break;
            }

            ++v8;
            v25 = &v23[(*(v23 + 1) >> 2) & 0xF0];
            v26 = *(v25 + 4);
            v23 = v25 + 16;
            v24 = v26;
            v27 = v26 ? v23 : 0;
          }

          while (v27 && v27 != v22);
          BYTE3(v45) = v8;
          LOWORD(v45) = 24 * v8 + 272;
          v29 = v63;
          do
          {
            spu_log_device_time_to_mach_time(*(v9 + 1) >> 10, &v44, &v43, &v42);
            *(v29 - 4) = *(v9 + 1);
            v30 = spu_log_ns_to_mach_time(v43);
            v31 = v42;
            *(v29 - 1) = v30;
            *v29 = v31;
            v32 = &v9[(*(v9 + 1) >> 2) & 0xF0];
            v33 = *(v32 + 4);
            v9 = v32 + 16;
            if (v33)
            {
              v34 = v9;
            }

            else
            {
              v34 = 0;
            }

            v29 += 3;
            if (v34)
            {
              v35 = v34 == v22;
            }

            else
            {
              v35 = 1;
            }
          }

          while (!v35);
          a3(a4, "AOPLOG", &v45, v45, 0);
          ++v6;
        }

        while (v6 != v7);
      }
    }

    else
    {
      sub_29D41B150();
    }

    free(outputStruct);
    v36 = v39;
  }

  else
  {
    sub_29D41B208();
    v36 = 0;
  }

  AOPServiceConnect::~AOPServiceConnect(&v65);
  v37 = *MEMORY[0x29EDCA608];
  return v36;
}

void AOPServiceConnect::~AOPServiceConnect(void **this)
{
  *this = &unk_2A241D910;
  AOPServiceConnect::disconnect(this);
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  AOPServiceConnect::~AOPServiceConnect(this);

  JUMPOUT(0x29ED56B60);
}

BOOL AOPServiceConnect::connect(AOPServiceConnect *this)
{
  v2 = *MEMORY[0x29EDBB110];
  v3 = this + 8;
  if (*(this + 31) < 0)
  {
    v3 = *v3;
  }

  v4 = IOServiceNameMatching(v3);
  MatchingService = IOServiceGetMatchingService(v2, v4);
  *(this + 9) = MatchingService;
  return MatchingService && !IOServiceOpen(MatchingService, *MEMORY[0x29EDCA6B0], 0, this + 8);
}

uint64_t AOPServiceConnect::disconnect(AOPServiceConnect *this)
{
  v2 = *(this + 8);
  if (v2)
  {
    IOServiceClose(v2);
    *(this + 8) = 0;
  }

  result = *(this + 9);
  if (result)
  {
    result = IOObjectRelease(result);
    *(this + 9) = 0;
  }

  return result;
}

const __CFBoolean *AppleSPUHIDStatistics::IOHIDServiceSupportsAggregateDictionary()
{
  result = IOHIDServiceGetProperty();
  if (result)
  {
    v1 = result;
    v2 = CFGetTypeID(result);
    if (v2 == CFBooleanGetTypeID())
    {
      return (CFBooleanGetValue(v1) != 0);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

const __CFNumber *AppleSPUHIDStatistics::getIOHIDServiceRegistryID()
{
  result = IOHIDServiceGetRegistryID();
  if (result)
  {
    valuePtr = 0;
    if (CFNumberGetValue(result, kCFNumberSInt64Type, &valuePtr))
    {
      return valuePtr;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

__CFString *AppleSPUHIDStatistics::keyForIndex(uint64_t a1, int a2)
{
  if (a2 > 73)
  {
    return @"com.apple.aop.unknown";
  }

  else
  {
    return *(a1 + 8 * a2 + 32);
  }
}

uint64_t spu_log_report_to_string(uint64_t result, unsigned __int8 *a2, unint64_t a3, int a4, char *a5, size_t a6)
{
  if (result)
  {
    v11 = result;
    v12 = strlen(result);
    v13 = 2;
    if (a4)
    {
      v13 = 3;
    }

    if (v12 + v13 * a3 + 2 >= a6)
    {
      return 0;
    }

    else
    {
      strlcpy(a5, v11, a6);
      strlcat(a5, " ", a6);
      v14 = &a5[strlen(a5)];
      if (a3)
      {
        v15 = 1;
        do
        {
          *v14 = a0123456789abcd[*a2 >> 4];
          v16 = *a2++;
          v14[1] = a0123456789abcd[v16 & 0xF];
          if (a4)
          {
            v14[2] = 32;
            v14 += 3;
          }

          else
          {
            v14 += 2;
          }

          v17 = v15++;
        }

        while (v17 < a3);
      }

      *v14 = 0;
      return 1;
    }
  }

  return result;
}

uint64_t spu_log_print_report(void *a1, const char *a2, unsigned __int8 *a3, unint64_t a4, int a5)
{
  v8 = *MEMORY[0x29EDCA608];
  result = spu_log_report_to_string(a2, a3, a4, a5, v7, 0x800uLL);
  if (result)
  {
    result = puts(v7);
  }

  v6 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_29D41B0A0()
{
  v0 = *MEMORY[0x29EDCA610];
  sub_29D41ACA8();
  return fprintf(v1, "AssertMacros: %s, %s file: %s, line: %d, value: %lld\n", v3, v4, v5, 32, 0);
}

uint64_t sub_29D41B0F8()
{
  v0 = *MEMORY[0x29EDCA610];
  sub_29D41ACA8();
  return fprintf(v1, "AssertMacros: %s, %s file: %s, line: %d, value: %lld\n", v3, v4, v5, 29, 0);
}

uint64_t sub_29D41B150()
{
  v0 = *MEMORY[0x29EDCA610];
  sub_29D41ACA8();
  return fprintf(v1, "AssertMacros: %s, %s file: %s, line: %d, value: %lld\n", v3, v4, v5, 135, 0);
}

uint64_t sub_29D41B208()
{
  v0 = *MEMORY[0x29EDCA610];
  sub_29D41ACA8();
  return fprintf(v1, "AssertMacros: %s, %s file: %s, line: %d, value: %lld\n", v3, v4, v5, 132, 0);
}

CFUUIDBytes CFUUIDGetUUIDBytes(CFUUIDRef uuid)
{
  v1 = MEMORY[0x2A1C59700](uuid);
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

uint64_t std::ostream::operator<<()
{
  return MEMORY[0x2A1C6FE08]();
}

{
  return MEMORY[0x2A1C6FE18]();
}

{
  return MEMORY[0x2A1C6FE20]();
}

{
  return MEMORY[0x2A1C6FE30]();
}

{
  return MEMORY[0x2A1C6FE40]();
}

{
  return MEMORY[0x2A1C6FE50]();
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