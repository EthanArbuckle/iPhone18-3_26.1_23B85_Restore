uint64_t sub_69C(uint64_t a1)
{
  v1 = (*(a1 + 16) + 1);
  *(a1 + 16) = v1;
  return v1;
}

uint64_t sub_6C0(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    IOServiceClose(v2);
    *(a1 + 24) = 0;
  }

  *(a1 + 20) = 0;
  return 0;
}

uint64_t sub_700(uint64_t a1)
{
  if (*(a1 + 80))
  {
    return sub_F4C(a1 + 88);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_768(uint64_t result, uint64_t a2, unsigned int a3, int a4)
{
  *(result + 256) = a2;
  *(result + 264) = 0;
  *(result + 272) = a3 >> 6;
  *(result + 280) = a4;
  *(result + 288) = 1;
  if (a3 <= 0x3F)
  {
    *(result + 256) = 0;
  }

  return result;
}

void FastpathDriver::alloc(FastpathDriver *this, const __CFAllocator *a2)
{
  Typed = CFAllocatorAllocateTyped();

  FastpathDriver::FastpathDriver(Typed, this);
}

void FastpathDriver::FastpathDriver(FastpathDriver *this, const __CFAllocator *a2)
{
  *this = &FastpathDriver::vtbl;
  *(this + 1) = a2;
  *(this + 2) = 1;
  *(this + 6) = 0;
  *(this + 4) = 0;
  *(this + 31) = 0;
  *(this + 9) = 0;
  *(this + 10) = 0;
  v3 = CFUUIDGetConstantUUIDWithBytes(kCFAllocatorSystemDefault, 0x97u, 0x55u, 0x20u, 0xE5u, 0x3Fu, 0xEDu, 0x47u, 0xD7u, 0xADu, 0xA3u, 0xC9u, 0xA1u, 0x13u, 0xEBu, 1u, 0x98u);
  CFPlugInAddInstanceForFactory(v3);
  *(this + 4) = os_log_create("AOP", "FastpathDriver");
}

void FastpathDriver::~FastpathDriver(void **this)
{
  v2 = CFUUIDGetConstantUUIDWithBytes(kCFAllocatorSystemDefault, 0x97u, 0x55u, 0x20u, 0xE5u, 0x3Fu, 0xEDu, 0x47u, 0xD7u, 0xADu, 0xA3u, 0xC9u, 0xA1u, 0x13u, 0xEBu, 1u, 0x98u);
  CFPlugInRemoveInstanceForFactory(v2);
  os_release(this[4]);
}

uint64_t FastpathDriver::QueryInterface(FastpathDriver *this, CFUUIDBytes a2, void **a3)
{
  v5 = CFUUIDCreateFromUUIDBytes(0, a2);
  v6 = CFUUIDGetConstantUUIDWithBytes(kCFAllocatorSystemDefault, 0xA6u, 0x7Au, 0x69u, 0x95u, 0x23u, 0x6Bu, 0x44u, 0xDEu, 0x97u, 0xB5u, 0x27u, 0xB9u, 0xB1u, 0xE6u, 0x6Fu, 0x2Fu);
  if (CFEqual(v5, v6) || (v7 = CFUUIDGetConstantUUIDWithBytes(0, 0xC2u, 0x44u, 0xE8u, 0x58u, 0x10u, 0x9Cu, 0x11u, 0xD4u, 0x91u, 0xD4u, 0, 0x50u, 0xE4u, 0xC6u, 0x42u, 0x6Fu), CFEqual(v5, v7)) || (v8 = CFUUIDGetConstantUUIDWithBytes(kCFAllocatorSystemDefault, 0, 0, 0, 0, 0, 0, 0, 0, 0xC0u, 0, 0, 0, 0, 0, 0, 0x46u), CFEqual(v5, v8)))
  {
    v9 = 0;
    ++*(this + 4);
  }

  else
  {
    this = 0;
    v9 = 2147483652;
  }

  *a3 = this;
  CFRelease(v5);
  return v9;
}

uint64_t FastpathDriver::AddRef(FastpathDriver *this)
{
  v1 = (*(this + 4) + 1);
  *(this + 4) = v1;
  return v1;
}

uint64_t FastpathDriver::Release(FastpathDriver *this)
{
  v1 = *(this + 4);
  v2 = (v1 - 1);
  *(this + 4) = v2;
  if (v1 == 1)
  {
    FastpathDriver::~FastpathDriver(this);
    FastpathDriver::operator delete(v3);
  }

  return v2;
}

uint64_t FastpathDriver::Start(FastpathDriver *this, const __CFDictionary *a2, io_service_t service)
{
  *(this + 5) = service;
  v4 = IOServiceOpen(service, mach_task_self_, 0, this + 6);
  if (v4)
  {
    v5 = *(this + 4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7[0] = 67109120;
      v7[1] = v4;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "FastpathDriver::Start -> %x", v7, 8u);
    }
  }

  return v4;
}

uint64_t FastpathDriver::Stop(FastpathDriver *this)
{
  v2 = *(this + 6);
  if (v2)
  {
    IOServiceClose(v2);
    *(this + 6) = 0;
  }

  *(this + 5) = 0;
  return 0;
}

uint64_t FastpathDriver::Open(FastpathDriver *this)
{
  v7 = 32;
  v2 = IOConnectCallMethod(*(this + 6), 0, 0, 0, 0, 0, 0, 0, this + 40, &v7);
  if (v2)
  {
    sub_1CF4(this, v2, &v8);
    return v8;
  }

  v3 = IOConnectMapMemory(*(this + 6), 0, mach_task_self_, this + 10, this + 9, 1u);
  if (v3)
  {
    sub_1DB8(this, v3, &v8);
    return v8;
  }

  *(this + 25) = nullsub_2;
  v4 = this + 200;
  *(v4 + 1) = nullsub_3;
  *(v4 + 2) = nullsub_4;
  *(v4 + 3) = sub_D88;
  *(v4 + 4) = sub_D90;
  *(v4 + 5) = sub_D98;
  sub_DA8((v4 - 112), v4, *(v4 - 15) + *(v4 - 39), *(v4 - 38), *(v4 - 15) + *(v4 - 37), *(v4 - 36), *(v4 - 15) + *(v4 - 35), *(v4 - 34));
  v5 = sub_E74((v4 - 112));
  result = 0;
  *(v4 + 20) = 0;
  *(v4 + 11) = 1;
  *(v4 + 8) = 0;
  *(v4 + 9) = 0;
  *(v4 + 6) = v5;
  *(v4 + 7) = 0;
  return result;
}

uint64_t sub_DA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, int a8)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = a3;
  *a1 = a2;
  *(a1 + 32) = a5;
  *(a1 + 40) = a7;
  *(a1 + 48) = a6;
  *(a1 + 52) = a4;
  *(a1 + 56) = a8;
  *(a1 + 80) = 1;
  *(a1 + 76) = 0;
  sub_193C(a1);
  result = (*a2)(*(a1 + 8), 0, 0, a4);
  v13 = *(a1 + 16);
  v14 = *v13;
  v15 = v13[1];
  v16 = v13[2];
  LODWORD(v13) = v13[3];
  *(a1 + 68) = v15;
  *(a1 + 72) = v16;
  *(a1 + 60) = v13;
  *(a1 + 64) = v14;
  *(a1 + 24) = a3 + (v15 + 15) / v15 * v15;
  v17 = *(a2 + 16);
  if (v17)
  {
    v18 = *(a1 + 8);

    return v17(v18);
  }

  return result;
}

uint64_t FastpathDriver::EnableClientLog(uint64_t this, void *a2, unsigned int a3, int a4)
{
  *(this + 256) = a2;
  *(this + 264) = 0;
  *(this + 272) = a3 >> 6;
  *(this + 280) = a4;
  *(this + 288) = 1;
  if (a3 <= 0x3F)
  {
    *(this + 256) = 0;
  }

  return this;
}

uint64_t FastpathDriver::Close(FastpathDriver *this)
{
  v2 = *(this + 10);
  if (v2)
  {
    IOConnectUnmapMemory(*(this + 6), 0, mach_task_self_, v2);
    *(this + 10) = 0;
  }

  result = *(this + 6);
  if (result)
  {
    return IOConnectCallMethod(result, 1u, 0, 0, 0, 0, 0, 0, 0, 0);
  }

  return result;
}

uint64_t FastpathDriver::GetQueueSize(FastpathDriver *this)
{
  if (*(this + 10))
  {
    return sub_F4C(this + 88);
  }

  else
  {
    return 0;
  }
}

uint64_t FastpathDriver::Read(FastpathDriver *this, unsigned int a2, char *a3, unint64_t a4, unint64_t *a5)
{
  v18 = a4;
  *a3 = 0u;
  *(a3 + 1) = 0u;
  *(a3 + 2) = 0u;
  *(a3 + 3) = 0u;
  *(a3 + 4) = 0u;
  *(a3 + 5) = 0u;
  if (*(this + 10))
  {
    if (sub_1080(this + 88, &v18, a2, a3, a3 + 10))
    {
      if (a5)
      {
        *a5 = v18;
      }

      v14 = 1;
    }

    else
    {
      sub_1E7C(this);
      v14 = v19;
    }
  }

  else
  {
    sub_1F20(this);
    v14 = v20;
  }

  FastpathDriver::AddLogEntry(this, v10, 1, v14, 3u, v11, v12, v13, a2, a4, v18);
  FastpathDriver::AddLogEntryWithData(this, v15, 9, 1, a3, 0x28uLL);
  FastpathDriver::AddLogEntryWithData(this, v16, 10, 1, a3 + 40, 0x28uLL);
  if (v14)
  {
    return 0;
  }

  else
  {
    return 3758097084;
  }
}

uint64_t sub_1080(uint64_t a1, unint64_t *a2, unint64_t a3, unint64_t *a4, uint64_t *a5)
{
  v9 = *a2;
  v10 = sub_1948(a1, *a2, a3, a4, 2, a5);
  if (v10)
  {
    v11 = *a5;
    v12 = *a2;
    if (*a5)
    {
      v13 = (a4 + 1);
      do
      {
        v14 = *v13;
        v13 += 5;
        v12 += v14;
        --v11;
      }

      while (v11);
      *a2 = v12;
    }
  }

  else
  {
    v12 = *a2;
  }

  sub_1AE0(a1, 0, v10, v9, v12);
  return v10;
}

__n128 FastpathDriver::AddLogEntry(FastpathDriver *this, uint64_t a2, __int16 a3, __int16 a4, unsigned int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  if (*(this + 32))
  {
    v20 = &a6;
    FastpathDriver::InitLogEntry(this, &v18, a3, a4);
    if (a5)
    {
      v11 = v19 + 1;
      v12 = a5;
      do
      {
        v13 = v20++;
        *v11++ = *v13;
        --v12;
      }

      while (v12);
    }

    v14 = *(this + 32) + (*(this + 33) << 6);
    result = v18;
    v16 = v19[0];
    v17 = v19[2];
    *(v14 + 32) = v19[1];
    *(v14 + 48) = v17;
    *v14 = result;
    *(v14 + 16) = v16;
    *(this + 33) = (*(this + 33) + 1) % *(this + 34);
  }

  return result;
}

__n128 FastpathDriver::AddLogEntryWithData(FastpathDriver *this, unsigned int a2, __int16 a3, __int16 a4, void *a5, size_t a6)
{
  if (*(this + 32))
  {
    FastpathDriver::InitLogEntry(this, &v13, a3, a4);
    memcpy(v14 + 8, a5, a6);
    v9 = *(this + 32) + (*(this + 33) << 6);
    result = v13;
    v11 = v14[0];
    v12 = v14[2];
    *(v9 + 32) = v14[1];
    *(v9 + 48) = v12;
    *v9 = result;
    *(v9 + 16) = v11;
    *(this + 33) = (*(this + 33) + 1) % *(this + 34);
  }

  return result;
}

uint64_t FastpathDriver::ReadLast(FastpathDriver *this, unsigned int a2, unint64_t *a3, unint64_t *a4)
{
  v17 = 0;
  *a3 = 0u;
  *(a3 + 1) = 0u;
  *(a3 + 2) = 0u;
  *(a3 + 3) = 0u;
  *(a3 + 4) = 0u;
  *(a3 + 5) = 0u;
  if (*(this + 10))
  {
    if (sub_1374(this + 88, a2, a3, 2, a3 + 10, &v17))
    {
      if (a4)
      {
        *a4 = v17;
      }

      v12 = 1;
    }

    else
    {
      sub_1FC4(this);
      v12 = v18;
    }
  }

  else
  {
    sub_2068(this);
    v12 = v19;
  }

  v13 = v17 - a2;
  if (v17 < a2)
  {
    v13 = 0;
  }

  FastpathDriver::AddLogEntry(this, v8, 2, v12, 3u, v9, v10, v11, a2, v13, v17);
  FastpathDriver::AddLogEntryWithData(this, v14, 9, 1, a3, 0x28uLL);
  FastpathDriver::AddLogEntryWithData(this, v15, 10, 1, a3 + 5, 0x28uLL);
  if (v12)
  {
    return 0;
  }

  else
  {
    return 3758097084;
  }
}

uint64_t sub_1374(uint64_t a1, unint64_t a2, unint64_t *a3, uint64_t a4, void *a5, uint64_t *a6)
{
  v12 = *(a1 + 24);
  v13 = *(a1 + 68);
  (**a1)(*(a1 + 8), 0, (v13 + 15) / v13 * v13, (v13 + 31) / v13 * v13);
  v14 = *(v12 + 8);
  v15 = v14 >= a2;
  v16 = v14 - a2;
  if (v15)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  if (a2)
  {
    v18 = sub_1948(a1, v17, a2, a3, a4, a5);
    if (*a5)
    {
      v19 = a3[5 * *a5 - 4] + a3[5 * *a5 - 2];
      if (!a6)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v19 = 0;
      if (!a6)
      {
        goto LABEL_13;
      }
    }
  }

  else
  {
    v18 = 1;
    v19 = v17;
    if (!a6)
    {
      goto LABEL_13;
    }
  }

  if (v18)
  {
    *a6 = v19;
    goto LABEL_16;
  }

LABEL_13:
  if (a6)
  {
    v19 = *a6;
  }

  else
  {
    v19 = -1;
  }

LABEL_16:
  sub_1AE0(a1, 1, v18, v17, v19);
  return v18;
}

unint64_t FastpathDriver::GetCount(FastpathDriver *this, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a2[10];
  if (v9)
  {
    v10 = 0;
    v11 = a2 + 1;
    do
    {
      v12 = *v11;
      v11 += 5;
      v10 += v12;
      --v9;
    }

    while (v9);
  }

  else
  {
    v10 = 0;
  }

  FastpathDriver::AddLogEntry(this, a2, 3, 1, 1u, a6, a7, a8, v10 / *(this + 31));
  return v10 / *(this + 31);
}

unint64_t FastpathDriver::FindEntry(FastpathDriver *this, void *a2, unint64_t a3, void **a4, unsigned int *a5, unsigned int *a6)
{
  v6 = a2[10];
  if (v6)
  {
    v7 = a2[1];
    if (v7 <= a3)
    {
      v11 = 0;
      do
      {
        if (v6 - 1 == v11)
        {
          return 0;
        }

        a3 -= v7;
        v7 = a2[6];
        a2 += 5;
        ++v11;
      }

      while (a3 >= v7);
      v6 = v11 < v6;
      if (a4)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v6 = 1;
      if (a4)
      {
LABEL_4:
        *a4 = (a3 + *a2);
      }
    }

    if (a5)
    {
      *a5 = *(this + 31);
    }

    if (a6)
    {
      v8 = a2[2];
      v9 = v8 >= a3;
      v10 = v8 - a3;
      if (v9)
      {
        if (*(this + 31) < v10)
        {
          v10 = *(this + 31);
        }
      }

      else
      {
        LODWORD(v10) = 0;
      }

      *a6 = v10;
    }
  }

  return v6;
}

__n128 FastpathDriver::VerifyEntry(FastpathDriver *this, void *a2, unint64_t a3, unsigned int *a4)
{
  v6 = a2;
  sub_16B0(this + 88, a2, a2[10]);
  v12 = v6[10];
  if (!v12)
  {
    goto LABEL_18;
  }

  v13 = v6[1];
  if (v13 <= a3)
  {
    v16 = 0;
    v15 = a3;
    while (v12 - 1 != v16)
    {
      v15 -= v13;
      v13 = v6[6];
      v6 += 5;
      ++v16;
      if (v15 < v13)
      {
        v14 = v16 < v12;
        if (a4)
        {
          goto LABEL_9;
        }

        if (v16 >= v12)
        {
          goto LABEL_18;
        }

        goto LABEL_17;
      }
    }

    goto LABEL_18;
  }

  if (a4)
  {
    v14 = 1;
    v15 = a3;
LABEL_9:
    v17 = v6[2];
    v18 = v17 >= v15;
    v19 = v17 - v15;
    if (v18)
    {
      if (*(this + 31) < v19)
      {
        v19 = *(this + 31);
      }

      if (v14)
      {
        goto LABEL_19;
      }
    }

    else
    {
      LODWORD(v19) = 0;
      if (v14)
      {
        goto LABEL_19;
      }
    }

LABEL_18:
    LODWORD(v19) = 0;
LABEL_19:
    *a4 = v19;
    v19 = v19;
    return FastpathDriver::AddLogEntry(this, v8, 5, 1, 2u, v9, v10, v11, a3, v19);
  }

LABEL_17:
  v19 = -1;
  return FastpathDriver::AddLogEntry(this, v8, 5, 1, 2u, v9, v10, v11, a3, v19);
}

uint64_t sub_16B0(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = **(result + 24);
  v4 = *(result + 48);
  v5 = v3 >= v4;
  v6 = v3 - v4;
  if (!v5)
  {
    v6 = 0;
  }

  if (a3)
  {
    v7 = (a2 + 16);
    v8 = 1;
    do
    {
      v7[2] = v3;
      v9 = v7[1];
      v5 = v6 >= v9;
      v10 = v6 - v9;
      if (v10 != 0 && v5)
      {
        if (*(v7 - 1) < v10)
        {
          v10 = *(v7 - 1);
        }

        v8 &= v10 == *v7;
        *v7 = v10;
      }

      v7 += 5;
      --a3;
    }

    while (a3);
  }

  return result;
}

uint64_t FastpathDriver::GetEndOffset(FastpathDriver *this, unint64_t *a2)
{
  if (*(this + 10))
  {
    if (sub_1374(this + 88, 0, 0, 0, 0, a2))
    {
      FastpathDriver::AddLogEntry(this, v4, 7, 1, 1u, v5, v6, v7, *a2);
      return 0;
    }

    sub_210C(this);
  }

  else
  {
    sub_21B4(this);
  }

  FastpathDriver::AddLogEntry(this, v9, 7, 0, 1u, v10, v11, v12, *a2);
  return 3758097084;
}

void FastpathLibFactory(const __CFAllocator *a1, const void *a2)
{
  v4 = CFUUIDGetConstantUUIDWithBytes(kCFAllocatorSystemDefault, 0x53u, 0xEAu, 0x67u, 0x34u, 0xC7u, 0xEu, 0x46u, 0x35u, 0x9Cu, 0xF5u, 0x4Fu, 0xAFu, 5u, 0xB4u, 0xF2u, 0x30u);
  if (CFEqual(a2, v4))
  {
    Typed = CFAllocatorAllocateTyped();
    FastpathDriver::FastpathDriver(Typed, a1);
  }
}

uint64_t FastpathDriver::InitLogEntry(void *a1, uint64_t a2, __int16 a3, __int16 a4)
{
  *a2 = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 16) = 0u;
  v4 = (a2 + 16);
  *a2 = 1;
  v5 = a1[36];
  *(a2 + 2) = v5;
  *(a2 + 4) = a3;
  *(a2 + 6) = a4;
  v6 = a1[31];
  *(a2 + 8) = a1[9];
  *(a2 + 12) = v6;
  a1[36] = v5 + 1;
  result = sub_1374((a1 + 11), 0, 0, 0, 0, (a2 + 16));
  if ((result & 1) == 0)
  {
    *v4 = -1;
  }

  return result;
}

__n128 FastpathDriver::SaveLogEntry(void *a1, uint64_t a2)
{
  v2 = a1[32] + (a1[33] << 6);
  result = *a2;
  v4 = *(a2 + 16);
  v5 = *(a2 + 48);
  *(v2 + 32) = *(a2 + 32);
  *(v2 + 48) = v5;
  *v2 = result;
  *(v2 + 16) = v4;
  a1[33] = (a1[33] + 1) % a1[34];
  return result;
}

uint64_t sub_193C(uint64_t result)
{
  *(result + 88) = 0;
  *(result + 96) = 0;
  *(result + 104) = 0;
  return result;
}

uint64_t sub_1948(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t *a4, uint64_t a5, void *a6)
{
  v11 = *(a1 + 24);
  v12 = *(a1 + 48);
  v13 = *a1;
  v14 = *(a1 + 68);
  (**a1)(*(a1 + 8), 0, (v14 + 15) / v14 * v14, (v14 + 31) / v14 * v14);
  v17 = v11;
  v15 = *v11;
  v16 = v17[1];
  if (v15 >= v12)
  {
    v18 = v15 - v12;
  }

  else
  {
    v18 = 0;
  }

  v19 = v13[2];
  if (v19)
  {
    v19(*(a1 + 8));
  }

  if (v15 <= a2)
  {
    goto LABEL_24;
  }

  if (v16 - a2 < a3)
  {
    a3 = v16 - a2;
  }

  bzero(a4, 40 * a5);
  *a6 = 0;
  if (a3)
  {
    v20 = 0;
    v21 = a4 + 2;
    while (a5 != v20)
    {
      v22 = v12 - a2 % v12;
      if (a3 < v22)
      {
        v22 = a3;
      }

      v23 = v18 - a2;
      if (v22 < v18 - a2)
      {
        v23 = v22;
      }

      *(v21 - 2) = *(a1 + 32) + a2 % v12;
      *(v21 - 1) = v22;
      v21[1] = a2;
      v21[2] = v15;
      if (v18 <= a2)
      {
        v24 = 0;
      }

      else
      {
        v24 = v23;
      }

      *v21 = v24;
      v25 = *(a1 + 96);
      if (v25)
      {
        if (*(a1 + 100))
        {
          v26 = *(a1 + 104);
          v27 = *(a1 + 88) + 32 * (v26 % v25);
          *v27 = 258;
          *(v27 + 4) = v26;
          *(v27 + 8) = v22 | (a2 << 32);
          *(v27 + 16) = v15;
          *(v27 + 24) = a2;
          *(a1 + 104) = v26 + 1;
        }
      }

      a2 += v22;
      ++v20;
      v21 += 5;
      a3 -= v22;
      if (!a3)
      {
        goto LABEL_25;
      }
    }

    return 0;
  }

  else
  {
LABEL_24:
    v20 = 0;
LABEL_25:
    *a6 = v20;
    return 1;
  }
}

uint64_t sub_1AE0(uint64_t a1, char a2, char a3, uint64_t a4, uint64_t a5)
{
  result = (*(*a1 + 24))(*(a1 + 8));
  v11 = *(a1 + 96);
  if (v11)
  {
    if (*(a1 + 100))
    {
      v12 = *(a1 + 104);
      v13 = *(a1 + 88) + 32 * (v12 % v11);
      *v13 = a2;
      *(v13 + 1) = a3;
      *(v13 + 4) = v12;
      *(v13 + 8) = result;
      *(v13 + 16) = a4;
      *(v13 + 24) = a5;
      *(a1 + 104) = v12 + 1;
    }
  }

  return result;
}

BOOL sub_1BB0@<W0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 24) = a2;
  v4 = *(a1 + 32);

  return os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
}

void sub_1BD0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_DEFAULT, a4, &a9, 0x36u);
}

void sub_1BF0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_impl(a1, a2, OS_LOG_TYPE_DEFAULT, a4, a5, 0x36u);
}

BOOL sub_1C14@<W0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 24) = a2;
  v4 = *(a1 + 32);

  return os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
}

BOOL sub_1C34@<W0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 40) = a2;
  v4 = *(a1 + 32);

  return os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
}

unint64_t FastpathDriver::GetNextEntry(FastpathDriver *this, void *a2, unint64_t *a3, void **a4, unsigned int *a5, unsigned int *a6)
{
  v10 = a2[11];
  Entry = FastpathDriver::FindEntry(this, a2, v10, a4, a5, a6);
  v16 = a2[11];
  if (Entry)
  {
    if (a3)
    {
      *a3 = v16;
    }

    v16 += *(this + 31);
    a2[11] = v16;
  }

  if (a6)
  {
    v17 = *a6;
  }

  else
  {
    v17 = -1;
  }

  FastpathDriver::AddLogEntry(this, v11, 4, Entry, 3u, v12, v13, v14, v10, v16, v17);
  return Entry;
}

void sub_1CF4(uint64_t a1, int a2, _DWORD *a3)
{
  if (sub_1C34(a1, __stack_chk_guard))
  {
    v8[0] = 136316418;
    sub_1B80();
    sub_1B6C();
    sub_1B90();
    v8[11] = 385;
    v9 = v6;
    v10 = a2;
    sub_1BF0(&dword_0, v3, v7, "%s: AssertMacros: %s, %s file: %s, line: %d value:%x\n", v8);
  }

  *a3 = a2;
}

void sub_1DB8(uint64_t a1, int a2, _DWORD *a3)
{
  if (sub_1C34(a1, __stack_chk_guard))
  {
    v8[0] = 136316418;
    sub_1B80();
    sub_1B6C();
    sub_1B90();
    v8[11] = 388;
    v9 = v6;
    v10 = a2;
    sub_1BF0(&dword_0, v3, v7, "%s: AssertMacros: %s, %s file: %s, line: %d value:%x\n", v8);
  }

  *a3 = a2;
}

void sub_1E7C(uint64_t a1)
{
  if (sub_1BB0(a1, __stack_chk_guard))
  {
    sub_1B80();
    sub_1B6C();
    sub_1B90();
    sub_1BA0();
    sub_1BD0(&dword_0, v1, v2, "%s: AssertMacros: %s, %s file: %s, line: %d value:%x\n", v3, v4, v5, v6, 2u);
  }

  sub_1C08();
}

void sub_1F20(uint64_t a1)
{
  if (sub_1BB0(a1, __stack_chk_guard))
  {
    sub_1B80();
    sub_1B6C();
    sub_1B90();
    sub_1BA0();
    sub_1BD0(&dword_0, v1, v2, "%s: AssertMacros: %s, %s file: %s, line: %d value:%x\n", v3, v4, v5, v6, 2u);
  }

  sub_1C08();
}

void sub_1FC4(uint64_t a1)
{
  if (sub_1BB0(a1, __stack_chk_guard))
  {
    sub_1B80();
    sub_1B6C();
    sub_1B90();
    sub_1BA0();
    sub_1BD0(&dword_0, v1, v2, "%s: AssertMacros: %s, %s file: %s, line: %d value:%x\n", v3, v4, v5, v6, 2u);
  }

  sub_1C08();
}

void sub_2068(uint64_t a1)
{
  if (sub_1BB0(a1, __stack_chk_guard))
  {
    sub_1B80();
    sub_1B6C();
    sub_1B90();
    sub_1BA0();
    sub_1BD0(&dword_0, v1, v2, "%s: AssertMacros: %s, %s file: %s, line: %d value:%x\n", v3, v4, v5, v6, 2u);
  }

  sub_1C08();
}

void sub_210C(uint64_t a1)
{
  if (sub_1C14(a1, __stack_chk_guard))
  {
    v3[0] = 136316418;
    sub_1B80();
    sub_1B6C();
    sub_1B90();
    sub_1BA0();
    sub_1BF0(&dword_0, v1, v2, "%s: AssertMacros: %s, %s file: %s, line: %d value:%x\n", v3);
  }
}

void sub_21B4(uint64_t a1)
{
  if (sub_1C14(a1, __stack_chk_guard))
  {
    v3[0] = 136316418;
    sub_1B80();
    sub_1B6C();
    sub_1B90();
    sub_1BA0();
    sub_1BF0(&dword_0, v1, v2, "%s: AssertMacros: %s, %s file: %s, line: %d value:%x\n", v3);
  }
}