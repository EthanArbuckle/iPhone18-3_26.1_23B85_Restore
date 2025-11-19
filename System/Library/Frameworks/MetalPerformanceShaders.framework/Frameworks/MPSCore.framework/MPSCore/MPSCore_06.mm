uint64_t sub_22E36D444(void *a1, _DWORD *a2)
{
  if (objc_opt_respondsToSelector())
  {
    a1 = objc_msgSend_performSelector_(a1, v4, sel_originalObject, v5, v6);
    v11 = objc_opt_respondsToSelector();
    if ((v11 & 1) == 0)
    {
      return v11 & 1;
    }
  }

  else
  {
    v11 = objc_opt_respondsToSelector();
    if ((v11 & 1) == 0)
    {
      return v11 & 1;
    }
  }

  *a2 = objc_msgSend_gpuCoreCount(a1, v7, v8, v9, v10);
  return v11 & 1;
}

void MPSDevice::MPSDevice(void *a1, void *a2)
{
  *a1 = &unk_284217530;
  a1[2] = a2;
  a1[184] = 0;
  operator new();
}

void MPSDevice::~MPSDevice(MPSDevice *this)
{
  *this = &unk_284217530;
  for (i = 1504; i != 2736; i += 8)
  {
    explicit = atomic_load_explicit((this + i), memory_order_acquire);
    if (explicit)
    {
      *(this + i) = 0;
      MPSLibrary::~MPSLibrary(explicit);
      MEMORY[0x2318E5730]();
    }
  }

  v4 = atomic_load_explicit(this + 5, memory_order_acquire);
  if (v4)
  {
  }

  v5 = atomic_load_explicit(this + 9, memory_order_acquire);
  if (v5)
  {
  }

  v6 = atomic_load_explicit(this + 7, memory_order_acquire);
  if (v6)
  {
  }

  v7 = atomic_load_explicit(this + 11, memory_order_acquire);
  if (v7)
  {
  }

  v8 = atomic_load_explicit(this + 6, memory_order_acquire);
  if (v8)
  {
  }

  v9 = atomic_load_explicit(this + 10, memory_order_acquire);
  if (v9)
  {
  }

  v10 = atomic_load_explicit(this + 8, memory_order_acquire);
  if (v10)
  {
  }

  v11 = atomic_load_explicit(this + 12, memory_order_acquire);
  if (v11)
  {
  }

  v12 = *(this + 3);
  if (v12)
  {
    v13 = sub_22E3426B0(v12);
    MEMORY[0x2318E5730](v13, 0x10A0C40EBDA7E47);
  }

  *(this + 3) = 0;
  dispatch_release(*(this + 182));

  *(this + 181) = 0;
  os_unfair_lock_lock(this + 358);

  *(this + 178) = 0;
  os_unfair_lock_unlock(this + 358);

  *(this + 2) = 0;
}

unint64_t MPSDevice::GetQueue(MPSDevice *this, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = (this + 1416);
  result = atomic_load_explicit(this + 177, memory_order_acquire);
  if (!result)
  {
    v8 = this;
    v9 = objc_msgSend_newCommandQueue(*(this + 2), a2, a3, a4, a5);
    objc_msgSend_setLabel_(v9, v10, @"MetalPerformanceShaders global queue", v11, v12);
    result = v9;
    v13 = 0;
    atomic_compare_exchange_strong_explicit(v6, &v13, v9, memory_order_release, memory_order_relaxed);
    if (v13)
    {

      return atomic_load_explicit(v8 + 177, memory_order_acquire);
    }
  }

  return result;
}

uint64_t MPSDevice::GetBinaryArchives(MPSDevice *this, unint64_t *a2)
{
  os_unfair_lock_lock(this + 358);
  v4 = *(this + 180);
  v5 = *(this + 178);
  os_unfair_lock_unlock(this + 358);
  if (a2)
  {
    *a2 = v4;
  }

  return v5;
}

uint64_t MPSDevice::DeleteQueue(uint64_t result, uint64_t a2)
{
  v2 = a2;
  atomic_compare_exchange_strong((result + 1416), &v2, 0);
  if (v2 == a2)
  {
    return MEMORY[0x2821F96F8]();
  }

  return result;
}

uint64_t MPSDevice::isDataTypeSupported(MPSDevice *this, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = 0;
  if (a2 <= 285212735)
  {
    if (a2 <= 268435463)
    {
      if ((a2 - 2) > 0x3E || ((1 << (a2 - 2)) & 0x4000000040004045) == 0)
      {
        v7 = -1879048176;
        goto LABEL_20;
      }

      return 1;
    }

    if (a2 <= 268435487)
    {
      if (a2 != 268435464)
      {
        v7 = 268435472;
        goto LABEL_20;
      }

      return objc_msgSend_supportsFamily_(*(this + 2), a2, 1010, a4, a5);
    }

    if (a2 == 268435488)
    {
      return 1;
    }

    v7 = 285212704;
LABEL_20:
    if (a2 != v7)
    {
      return result;
    }

    return 1;
  }

  if (a2 > 536870913)
  {
    if ((a2 - 536870914) <= 0x3E && ((1 << (a2 - 2)) & 0x4000000040004045) != 0 || a2 == 1073741832)
    {
      return 1;
    }

    v7 = 1073741825;
    goto LABEL_20;
  }

  if (a2 == 285212736)
  {
    return 1;
  }

  if (a2 == 301989896 || a2 == 335544328)
  {
    return objc_msgSend_supportsFamily_(*(this + 2), a2, 1010, a4, a5);
  }

  return result;
}

void MPSDevice::AddBinaryArchives(MPSDevice *this, MTLStitchedLibraryDescriptor *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(this + 358);
  v4 = *(this + 180);
  v5 = *(this + 178);
  os_unfair_lock_unlock(this + 358);
  if (v5)
  {
    if ((v4 & 2) != 0)
    {
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v22, v26, 16);
      if (v16)
      {
        v19 = v16;
        v20 = *v23;
        do
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v23 != v20)
            {
              objc_enumerationMutation(v5);
            }

            objc_msgSend_addLibraryWithDescriptor_error_(*(*(&v22 + 1) + 8 * i), v17, a2, 0, v18);
          }

          v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v17, &v22, v26, 16);
        }

        while (v19);
      }
    }

    else if (v4)
    {
      objc_msgSend_setBinaryArchives_(a2, v6, v5, v7, v8);
      if ((v4 & 4) != 0)
      {
        v13 = objc_msgSend_options(a2, v9, v10, v11, v12) | 1;

        MEMORY[0x2821F9670](a2, sel_setOptions_, v13, v14, v15);
      }
    }
  }
}

uint64_t sub_22E36DC80(int a1, const MPSDeviceSpecificInfo *a2, MPSLibrary *this)
{
  MPSLibrary::LoadMPSDeviceSpecificInfo(this, a2 + 1);

  return MPSLibrary::LoadMPSDeviceSpecificInfo(this, a2 + 2);
}

uint64_t sub_22E36DCC8(int a1, const MPSDeviceSpecificInfo *a2, MPSLibrary *this)
{
  MPSLibrary::LoadMPSDeviceSpecificInfo(this, a2 + 1);
  MPSLibrary::LoadMPSDeviceSpecificInfo(this, a2 + 2);

  return MPSLibrary::LoadMPSDeviceSpecificInfo(this, a2 + 6);
}

uint64_t sub_22E36DD1C(int a1, const MPSDeviceSpecificInfo *a2, MPSLibrary *this)
{
  MPSLibrary::LoadMPSDeviceSpecificInfo(this, a2 + 1);
  MPSLibrary::LoadMPSDeviceSpecificInfo(this, a2 + 2);
  MPSLibrary::LoadMPSDeviceSpecificInfo(this, a2 + 6);

  return MPSLibrary::LoadMPSDeviceSpecificInfo(this, a2 + 7);
}

uint64_t sub_22E36DD7C(int a1, const MPSDeviceSpecificInfo *a2, MPSLibrary *this)
{
  MPSLibrary::LoadMPSDeviceSpecificInfo(this, a2 + 1);
  MPSLibrary::LoadMPSDeviceSpecificInfo(this, a2 + 2);
  MPSLibrary::LoadMPSDeviceSpecificInfo(this, a2 + 6);
  MPSLibrary::LoadMPSDeviceSpecificInfo(this, a2 + 7);

  return MPSLibrary::LoadMPSDeviceSpecificInfo(this, a2 + 8);
}

uint64_t sub_22E36DDE8(int a1, const MPSDeviceSpecificInfo *a2, MPSLibrary *this)
{
  MPSLibrary::LoadMPSDeviceSpecificInfo(this, a2 + 1);
  MPSLibrary::LoadMPSDeviceSpecificInfo(this, a2 + 2);
  MPSLibrary::LoadMPSDeviceSpecificInfo(this, a2 + 6);
  MPSLibrary::LoadMPSDeviceSpecificInfo(this, a2 + 7);
  MPSLibrary::LoadMPSDeviceSpecificInfo(this, a2 + 8);

  return MPSLibrary::LoadMPSDeviceSpecificInfo(this, a2 + 9);
}

uint64_t sub_22E36DE60(int a1, const MPSDeviceSpecificInfo *a2, MPSLibrary *this)
{
  MPSLibrary::LoadMPSDeviceSpecificInfo(this, a2 + 1);
  MPSLibrary::LoadMPSDeviceSpecificInfo(this, a2 + 2);
  MPSLibrary::LoadMPSDeviceSpecificInfo(this, a2 + 6);
  MPSLibrary::LoadMPSDeviceSpecificInfo(this, a2 + 7);
  MPSLibrary::LoadMPSDeviceSpecificInfo(this, a2 + 8);
  MPSLibrary::LoadMPSDeviceSpecificInfo(this, a2 + 9);

  return MPSLibrary::LoadMPSDeviceSpecificInfo(this, a2 + 10);
}

uint64_t sub_22E36DEE4(int a1, const MPSDeviceSpecificInfo *a2, MPSLibrary *this)
{
  MPSLibrary::LoadMPSDeviceSpecificInfo(this, a2 + 1);
  MPSLibrary::LoadMPSDeviceSpecificInfo(this, a2 + 2);
  MPSLibrary::LoadMPSDeviceSpecificInfo(this, a2 + 6);
  MPSLibrary::LoadMPSDeviceSpecificInfo(this, a2 + 7);
  MPSLibrary::LoadMPSDeviceSpecificInfo(this, a2 + 8);
  MPSLibrary::LoadMPSDeviceSpecificInfo(this, a2 + 9);
  MPSLibrary::LoadMPSDeviceSpecificInfo(this, a2 + 10);

  return MPSLibrary::LoadMPSDeviceSpecificInfo(this, a2 + 11);
}

uint64_t sub_22E36DF74(int a1, const MPSDeviceSpecificInfo *a2, MPSLibrary *this)
{
  MPSLibrary::LoadMPSDeviceSpecificInfo(this, a2 + 1);
  MPSLibrary::LoadMPSDeviceSpecificInfo(this, a2 + 2);
  MPSLibrary::LoadMPSDeviceSpecificInfo(this, a2 + 6);
  MPSLibrary::LoadMPSDeviceSpecificInfo(this, a2 + 7);
  MPSLibrary::LoadMPSDeviceSpecificInfo(this, a2 + 8);
  MPSLibrary::LoadMPSDeviceSpecificInfo(this, a2 + 9);
  MPSLibrary::LoadMPSDeviceSpecificInfo(this, a2 + 10);
  MPSLibrary::LoadMPSDeviceSpecificInfo(this, a2 + 11);

  return MPSLibrary::LoadMPSDeviceSpecificInfo(this, a2 + 12);
}

uint64_t sub_22E36E010(int a1, const MPSDeviceSpecificInfo *a2, MPSLibrary *this)
{
  MPSLibrary::LoadMPSDeviceSpecificInfo(this, a2 + 1);
  MPSLibrary::LoadMPSDeviceSpecificInfo(this, a2 + 2);
  MPSLibrary::LoadMPSDeviceSpecificInfo(this, a2 + 6);
  MPSLibrary::LoadMPSDeviceSpecificInfo(this, a2 + 7);
  MPSLibrary::LoadMPSDeviceSpecificInfo(this, a2 + 8);
  MPSLibrary::LoadMPSDeviceSpecificInfo(this, a2 + 9);
  MPSLibrary::LoadMPSDeviceSpecificInfo(this, a2 + 10);
  MPSLibrary::LoadMPSDeviceSpecificInfo(this, a2 + 11);
  MPSLibrary::LoadMPSDeviceSpecificInfo(this, a2 + 12);

  return MPSLibrary::LoadMPSDeviceSpecificInfo(this, a2 + 13);
}

uint64_t sub_22E36E0B8(int a1, const MPSDeviceSpecificInfo *a2, MPSLibrary *this)
{
  MPSLibrary::LoadMPSDeviceSpecificInfo(this, a2 + 1);
  MPSLibrary::LoadMPSDeviceSpecificInfo(this, a2 + 2);
  MPSLibrary::LoadMPSDeviceSpecificInfo(this, a2 + 6);
  MPSLibrary::LoadMPSDeviceSpecificInfo(this, a2 + 7);
  MPSLibrary::LoadMPSDeviceSpecificInfo(this, a2 + 8);
  MPSLibrary::LoadMPSDeviceSpecificInfo(this, a2 + 9);
  MPSLibrary::LoadMPSDeviceSpecificInfo(this, a2 + 10);
  MPSLibrary::LoadMPSDeviceSpecificInfo(this, a2 + 11);
  MPSLibrary::LoadMPSDeviceSpecificInfo(this, a2 + 12);
  MPSLibrary::LoadMPSDeviceSpecificInfo(this, a2 + 13);

  return MPSLibrary::LoadMPSDeviceSpecificInfo(this, a2 + 14);
}

uint64_t sub_22E36E16C(int a1, const MPSDeviceSpecificInfo *a2, MPSLibrary *a3)
{
  sub_22E2ED458(a1, a2, a3);

  return MPSLibrary::LoadMPSDeviceSpecificInfo(a3, a2 + 16);
}

uint64_t sub_22E36E1AC(int a1, const MPSDeviceSpecificInfo *a2, MPSLibrary *a3)
{
  sub_22E2ED458(a1, a2, a3);
  MPSLibrary::LoadMPSDeviceSpecificInfo(a3, a2 + 16);

  return MPSLibrary::LoadMPSDeviceSpecificInfo(a3, a2 + 17);
}

uint64_t sub_22E36E1F8(int a1, const MPSDeviceSpecificInfo *a2, MPSLibrary *a3)
{
  sub_22E2ED458(a1, a2, a3);
  MPSLibrary::LoadMPSDeviceSpecificInfo(a3, a2 + 16);
  MPSLibrary::LoadMPSDeviceSpecificInfo(a3, a2 + 17);

  return MPSLibrary::LoadMPSDeviceSpecificInfo(a3, a2 + 18);
}

uint64_t sub_22E36E250(int a1, const MPSDeviceSpecificInfo *a2, MPSLibrary *a3)
{
  sub_22E2ED458(a1, a2, a3);
  MPSLibrary::LoadMPSDeviceSpecificInfo(a3, a2 + 16);
  MPSLibrary::LoadMPSDeviceSpecificInfo(a3, a2 + 17);
  MPSLibrary::LoadMPSDeviceSpecificInfo(a3, a2 + 18);

  return MPSLibrary::LoadMPSDeviceSpecificInfo(a3, a2 + 19);
}

uint64_t sub_22E36E2B4(int a1, const MPSDeviceSpecificInfo *a2, MPSLibrary *a3)
{
  sub_22E2ED458(a1, a2, a3);
  MPSLibrary::LoadMPSDeviceSpecificInfo(a3, a2 + 16);
  MPSLibrary::LoadMPSDeviceSpecificInfo(a3, a2 + 17);
  MPSLibrary::LoadMPSDeviceSpecificInfo(a3, a2 + 18);
  MPSLibrary::LoadMPSDeviceSpecificInfo(a3, a2 + 19);

  return MPSLibrary::LoadMPSDeviceSpecificInfo(a3, a2 + 20);
}

uint64_t sub_22E36E324(int a1, const MPSDeviceSpecificInfo *a2, MPSLibrary *a3)
{
  sub_22E2ED458(a1, a2, a3);
  MPSLibrary::LoadMPSDeviceSpecificInfo(a3, a2 + 16);
  MPSLibrary::LoadMPSDeviceSpecificInfo(a3, a2 + 17);

  return MPSLibrary::LoadMPSDeviceSpecificInfo(a3, a2 + 21);
}

uint64_t sub_22E36E37C(int a1, const MPSDeviceSpecificInfo *a2, MPSLibrary *a3)
{
  sub_22E2ED458(a1, a2, a3);
  MPSLibrary::LoadMPSDeviceSpecificInfo(a3, a2 + 16);
  MPSLibrary::LoadMPSDeviceSpecificInfo(a3, a2 + 17);
  MPSLibrary::LoadMPSDeviceSpecificInfo(a3, a2 + 21);

  return MPSLibrary::LoadMPSDeviceSpecificInfo(a3, a2 + 22);
}

uint64_t sub_22E36E3E0(int a1, const MPSDeviceSpecificInfo *a2, MPSLibrary *a3)
{
  sub_22E2ED458(a1, a2, a3);
  MPSLibrary::LoadMPSDeviceSpecificInfo(a3, a2 + 16);
  MPSLibrary::LoadMPSDeviceSpecificInfo(a3, a2 + 17);
  MPSLibrary::LoadMPSDeviceSpecificInfo(a3, a2 + 21);
  MPSLibrary::LoadMPSDeviceSpecificInfo(a3, a2 + 22);
  MPSLibrary::LoadMPSDeviceSpecificInfo(a3, a2 + 23);

  return MPSLibrary::LoadMPSDeviceSpecificInfo(a3, a2 + 24);
}

uint64_t sub_22E36E45C(int a1, const MPSDeviceSpecificInfo *a2, MPSLibrary *a3)
{
  sub_22E2ED458(a1, a2, a3);
  MPSLibrary::LoadMPSDeviceSpecificInfo(a3, a2 + 16);
  MPSLibrary::LoadMPSDeviceSpecificInfo(a3, a2 + 17);
  MPSLibrary::LoadMPSDeviceSpecificInfo(a3, a2 + 21);
  MPSLibrary::LoadMPSDeviceSpecificInfo(a3, a2 + 22);
  MPSLibrary::LoadMPSDeviceSpecificInfo(a3, a2 + 23);

  return MPSLibrary::LoadMPSDeviceSpecificInfo(a3, a2 + 25);
}

uint64_t sub_22E36E658(int a1, const MPSDeviceSpecificInfo *a2, MPSLibrary *a3)
{
  sub_22E2ED458(a1, a2, a3);
  MPSLibrary::LoadMPSDeviceSpecificInfo(a3, a2 + 16);
  MPSLibrary::LoadMPSDeviceSpecificInfo(a3, a2 + 17);
  MPSLibrary::LoadMPSDeviceSpecificInfo(a3, a2 + 21);
  MPSLibrary::LoadMPSDeviceSpecificInfo(a3, a2 + 22);
  MPSLibrary::LoadMPSDeviceSpecificInfo(a3, a2 + 23);
  MPSLibrary::LoadMPSDeviceSpecificInfo(a3, a2 + 24);

  return MPSLibrary::LoadMPSDeviceSpecificInfo(a3, a2 + 26);
}

uint64_t sub_22E36E858(int a1, const MPSDeviceSpecificInfo *a2, MPSLibrary *a3)
{
  sub_22E2ED458(a1, a2, a3);
  MPSLibrary::LoadMPSDeviceSpecificInfo(a3, a2 + 16);
  MPSLibrary::LoadMPSDeviceSpecificInfo(a3, a2 + 17);
  MPSLibrary::LoadMPSDeviceSpecificInfo(a3, a2 + 21);
  MPSLibrary::LoadMPSDeviceSpecificInfo(a3, a2 + 22);
  MPSLibrary::LoadMPSDeviceSpecificInfo(a3, a2 + 23);
  MPSLibrary::LoadMPSDeviceSpecificInfo(a3, a2 + 25);

  return MPSLibrary::LoadMPSDeviceSpecificInfo(a3, a2 + 27);
}

void MPSDevice_MacOS::MPSDevice_MacOS(void *a1, void *a2)
{
  MPSDevice_Common::MPSDevice_Common(a1, a2);
}

{
  MPSDevice_Common::MPSDevice_Common(a1, a2);
}

uint64_t MPSDevice_MacOS::AddKernels(MPSDevice_MacOS *this, const MPSLibraryInfo *a2, MPSLibrary *a3)
{
  MPSLibrary::LoadMPSDeviceSpecificInfo(a3, &a2->var4);

  return MPSLibrary::LoadMPSDeviceSpecificInfo(a3, &a2->var6);
}

uint64_t sub_22E36EA58(int a1, const MPSDeviceSpecificInfo *a2, MPSLibrary *this)
{
  MPSLibrary::LoadMPSDeviceSpecificInfo(this, a2 + 1);
  MPSLibrary::LoadMPSDeviceSpecificInfo(this, a2 + 3);

  return MPSLibrary::LoadMPSDeviceSpecificInfo(this, a2 + 31);
}

uint64_t sub_22E36EAAC(int a1, const MPSDeviceSpecificInfo *a2, MPSLibrary *this)
{
  MPSLibrary::LoadMPSDeviceSpecificInfo(this, a2 + 1);
  MPSLibrary::LoadMPSDeviceSpecificInfo(this, a2 + 3);
  MPSLibrary::LoadMPSDeviceSpecificInfo(this, a2 + 31);

  return MPSLibrary::LoadMPSDeviceSpecificInfo(this, a2 + 32);
}

uint64_t sub_22E36EB0C(int a1, const MPSDeviceSpecificInfo *a2, MPSLibrary *this)
{
  MPSLibrary::LoadMPSDeviceSpecificInfo(this, a2 + 1);
  MPSLibrary::LoadMPSDeviceSpecificInfo(this, a2 + 3);
  MPSLibrary::LoadMPSDeviceSpecificInfo(this, a2 + 31);
  MPSLibrary::LoadMPSDeviceSpecificInfo(this, a2 + 32);

  return MPSLibrary::LoadMPSDeviceSpecificInfo(this, a2 + 33);
}

uint64_t sub_22E36EB78(int a1, const MPSDeviceSpecificInfo *a2, MPSLibrary *this)
{
  MPSLibrary::LoadMPSDeviceSpecificInfo(this, a2 + 1);
  MPSLibrary::LoadMPSDeviceSpecificInfo(this, a2 + 3);
  MPSLibrary::LoadMPSDeviceSpecificInfo(this, a2 + 31);
  MPSLibrary::LoadMPSDeviceSpecificInfo(this, a2 + 32);

  return MPSLibrary::LoadMPSDeviceSpecificInfo(this, a2 + 34);
}

uint64_t sub_22E36EBE4(int a1, const MPSDeviceSpecificInfo *a2, MPSLibrary *this)
{
  MPSLibrary::LoadMPSDeviceSpecificInfo(this, a2 + 1);
  MPSLibrary::LoadMPSDeviceSpecificInfo(this, a2 + 3);
  MPSLibrary::LoadMPSDeviceSpecificInfo(this, a2 + 31);
  MPSLibrary::LoadMPSDeviceSpecificInfo(this, a2 + 32);

  return MPSLibrary::LoadMPSDeviceSpecificInfo(this, a2 + 35);
}

uint64_t sub_22E36EC50(int a1, const MPSDeviceSpecificInfo *a2, MPSLibrary *this)
{
  MPSLibrary::LoadMPSDeviceSpecificInfo(this, a2 + 1);
  MPSLibrary::LoadMPSDeviceSpecificInfo(this, a2 + 3);
  MPSLibrary::LoadMPSDeviceSpecificInfo(this, a2 + 31);
  MPSLibrary::LoadMPSDeviceSpecificInfo(this, a2 + 32);

  return MPSLibrary::LoadMPSDeviceSpecificInfo(this, a2 + 36);
}

uint64_t sub_22E36ECBC(int a1, const MPSDeviceSpecificInfo *a2, MPSLibrary *this)
{
  MPSLibrary::LoadMPSDeviceSpecificInfo(this, a2 + 1);
  MPSLibrary::LoadMPSDeviceSpecificInfo(this, a2 + 3);
  MPSLibrary::LoadMPSDeviceSpecificInfo(this, a2 + 31);
  MPSLibrary::LoadMPSDeviceSpecificInfo(this, a2 + 32);

  return MPSLibrary::LoadMPSDeviceSpecificInfo(this, a2 + 37);
}

uint64_t sub_22E36ED28(int a1, const MPSDeviceSpecificInfo *a2, MPSLibrary *this)
{
  MPSLibrary::LoadMPSDeviceSpecificInfo(this, a2 + 1);
  MPSLibrary::LoadMPSDeviceSpecificInfo(this, a2 + 3);
  MPSLibrary::LoadMPSDeviceSpecificInfo(this, a2 + 31);
  MPSLibrary::LoadMPSDeviceSpecificInfo(this, a2 + 38);

  return MPSLibrary::LoadMPSDeviceSpecificInfo(this, a2 + 39);
}

uint64_t sub_22E36ED94(int a1, const MPSDeviceSpecificInfo *a2, MPSLibrary *this)
{
  MPSLibrary::LoadMPSDeviceSpecificInfo(this, a2 + 1);
  MPSLibrary::LoadMPSDeviceSpecificInfo(this, a2 + 3);
  MPSLibrary::LoadMPSDeviceSpecificInfo(this, a2 + 31);
  MPSLibrary::LoadMPSDeviceSpecificInfo(this, a2 + 38);

  return MPSLibrary::LoadMPSDeviceSpecificInfo(this, a2 + 40);
}

uint64_t sub_22E36EE00(int a1, const MPSDeviceSpecificInfo *a2, MPSLibrary *this)
{
  MPSLibrary::LoadMPSDeviceSpecificInfo(this, a2 + 1);
  MPSLibrary::LoadMPSDeviceSpecificInfo(this, a2 + 3);
  MPSLibrary::LoadMPSDeviceSpecificInfo(this, a2 + 31);
  MPSLibrary::LoadMPSDeviceSpecificInfo(this, a2 + 38);

  return MPSLibrary::LoadMPSDeviceSpecificInfo(this, a2 + 41);
}

uint64_t sub_22E36EE6C(int a1, const MPSDeviceSpecificInfo *a2, MPSLibrary *this)
{
  MPSLibrary::LoadMPSDeviceSpecificInfo(this, a2 + 1);
  MPSLibrary::LoadMPSDeviceSpecificInfo(this, a2 + 3);
  MPSLibrary::LoadMPSDeviceSpecificInfo(this, a2 + 31);
  MPSLibrary::LoadMPSDeviceSpecificInfo(this, a2 + 38);

  return MPSLibrary::LoadMPSDeviceSpecificInfo(this, a2 + 42);
}

void MPSDevice::ExerciseLibraryList(MPSDevice *this)
{
  v1 = 0;
  v2 = this + 1504;
  do
  {
    explicit = atomic_load_explicit(&v2[8 * v1], memory_order_acquire);
    if (explicit)
    {
      NSLog(&cfstr_TestingLibrary.isa, v1);
      puts("Testing library functions without function constants..");
      v8 = *(explicit + 24);
      if (v8)
      {
        v9 = 0;
        v10 = 1;
        do
        {
          v11 = 16 * v9;
          v12 = *(*(explicit + 280) + 16 * v9);
          if (v12)
          {
            v13 = *v12;
            if (objc_msgSend_length(*v12, v4, v5, v6, v7))
            {
              v14 = objc_autoreleasePoolPush();
              v18 = objc_msgSend_newFunctionWithName_(*explicit, v15, v13, v16, v17);
              if (!objc_msgSend_functionConstantsDictionary(v18, v19, v20, v21, v22) && !MPSLibrary::GetComputeState(explicit, v10 - 1, xmmword_22E37D4A8, 1, 0, 0, 0))
              {
                NSLog(&cfstr_FailedToCreate.isa, **(*(explicit + 280) + v11));
              }

              objc_autoreleasePoolPop(v14);
            }
          }

          v9 = v10++;
        }

        while (v8 > v9);
      }

      NSLog(&cfstr_TestingLibrary_0.isa);
      v23 = *(*(explicit + 288) + 16);
      if (v23)
      {
        v23(explicit);
      }
    }

    else
    {
      NSLog(&cfstr_LibraryIdLuNot.isa, v1);
    }

    ++v1;
  }

  while (v1 != 154);
}

uint64_t MPSForceMatrixUnit()
{
  if (qword_280AFECE8 != -1)
  {
    dispatch_once(&qword_280AFECE8, &unk_28421C138);
  }

  return byte_280AFECC1;
}

char *sub_22E36F0A0()
{
  result = getenv("MPSNDARRAY_FORCE_MXU");
  if (result)
  {
    __endptr = result;
    v1 = result;
    result = strtol(result, &__endptr, 0);
    if (__endptr != v1)
    {
      byte_280AFECC1 = result != 0;
    }
  }

  return result;
}

uint64_t MPSDisableMatrixUnit()
{
  if (qword_280AFECF0 != -1)
  {
    dispatch_once(&qword_280AFECF0, &unk_28421C158);
  }

  return byte_280AFECC2;
}

char *sub_22E36F154()
{
  result = getenv("MPSNDARRAY_DISABLE_MXU");
  if (result)
  {
    __endptr = result;
    v1 = result;
    result = strtol(result, &__endptr, 0);
    if (__endptr != v1)
    {
      byte_280AFECC2 = result != 0;
    }
  }

  return result;
}

uint64_t MPSIsReducedPrecision()
{
  if (qword_280AFECF8 != -1)
  {
    dispatch_once(&qword_280AFECF8, &unk_284216F20);
  }

  return byte_280AFECC3;
}

char *sub_22E36F208()
{
  result = getenv("MPS_ALLOW_REDUCED_PRECISION");
  if (result)
  {
    __endptr = result;
    v1 = result;
    result = strtol(result, &__endptr, 0);
    if (__endptr != v1)
    {
      byte_280AFECC3 = result != 0;
    }
  }

  return result;
}

uint64_t IsPluginDisabled()
{
  if (qword_280AFED00 != -1)
  {
    dispatch_once(&qword_280AFED00, &unk_28421C178);
  }

  return byte_280AFECC4;
}

char *sub_22E36F2BC()
{
  result = getenv("MPS_DISABLE_ALL_PLUGINS");
  if (result)
  {
    __endptr = result;
    v1 = result;
    result = strtol(result, &__endptr, 0);
    if (__endptr != v1)
    {
      byte_280AFECC4 = result != 0;
    }
  }

  return result;
}

uint64_t MPSForcePlugin()
{
  if (qword_280AFED08 != -1)
  {
    dispatch_once(&qword_280AFED08, &unk_28421C198);
  }

  return byte_280AFECC5;
}

char *sub_22E36F370()
{
  result = getenv("MPS_ALLOW_ALL_PLUGINS");
  if (result)
  {
    __endptr = result;
    v1 = result;
    result = strtol(result, &__endptr, 0);
    if (__endptr != v1)
    {
      byte_280AFECC5 = result != 0;
    }
  }

  return result;
}

uint64_t MPSForceGEMMPlugin()
{
  if (qword_280AFED10 != -1)
  {
    dispatch_once(&qword_280AFED10, &unk_28421C1B8);
  }

  return byte_280AFECC6;
}

char *sub_22E36F424()
{
  result = getenv("MPS_ENABLE_GEMM_PLUGIN");
  if (result)
  {
    __endptr = result;
    v1 = result;
    result = strtol(result, &__endptr, 0);
    if (__endptr != v1)
    {
      byte_280AFECC6 = result != 0;
    }
  }

  return result;
}

uint64_t MPSDevice_MacOS::SupportsPlugin(MPSDevice_MacOS *this, objc_class *a2)
{
  if (qword_280AFED18 != -1)
  {
    dispatch_once(&qword_280AFED18, &unk_28421C1D8);
  }

  return byte_280AFECC7;
}

char *sub_22E36F4D8()
{
  result = getenv("MPS_ALLOW_ALL_PLUGINS");
  if (result)
  {
    __endptr = result;
    v1 = result;
    result = strtol(result, &__endptr, 0);
    if (__endptr != v1)
    {
      byte_280AFECC7 = result != 0;
    }
  }

  return result;
}

uint64_t sub_22E36F53C(uint64_t a1, void *a2)
{
  if (qword_280AFED18 == -1)
  {
    if (byte_280AFECC7)
    {
      return 1;
    }
  }

  else
  {
    dispatch_once(&qword_280AFED18, &unk_28421C1D8);
    if (byte_280AFECC7)
    {
      return 1;
    }
  }

  v3 = NSClassFromString(&cfstr_Mpsmatrixmulti.isa);
  if (objc_msgSend_isSubclassOfClass_(a2, v4, v3, v5, v6))
  {
    if (qword_280AFED10 == -1)
    {
      if (byte_280AFECC6)
      {
        return 1;
      }
    }

    else
    {
      dispatch_once(&qword_280AFED10, &unk_28421C1B8);
      if (byte_280AFECC6)
      {
        return 1;
      }
    }
  }

  if (qword_280AFED00 == -1)
  {
    if (byte_280AFECC4)
    {
      return 0;
    }
  }

  else
  {
    dispatch_once(&qword_280AFED00, &unk_28421C178);
    if (byte_280AFECC4)
    {
      return 0;
    }
  }

  if (qword_280AFED40 != -1)
  {
    dispatch_once(&qword_280AFED40, &unk_28421C1F8);
    if ((objc_msgSend_isSubclassOfClass_(a2, v21, qword_280AFED20, v22, v23) & 1) == 0)
    {
      goto LABEL_14;
    }

    return 1;
  }

  if (objc_msgSend_isSubclassOfClass_(a2, v7, qword_280AFED20, v8, v9))
  {
    return 1;
  }

LABEL_14:
  if (objc_msgSend_isSubclassOfClass_(a2, v11, qword_280AFED28, v12, v13) & 1) != 0 || (objc_msgSend_isSubclassOfClass_(a2, v14, qword_280AFED30, v15, v16))
  {
    return 1;
  }

  v20 = qword_280AFED38;

  return objc_msgSend_isSubclassOfClass_(a2, v17, v20, v18, v19);
}

Class sub_22E36F6E8()
{
  qword_280AFED20 = NSClassFromString(&cfstr_Mpsmatrixmulti.isa);
  qword_280AFED28 = NSClassFromString(&cfstr_Mpsndarrayconv.isa);
  qword_280AFED30 = NSClassFromString(&cfstr_Mpsndarrayconv_0.isa);
  result = NSClassFromString(&cfstr_Mpsndarrayconv_1.isa);
  qword_280AFED38 = result;
  return result;
}

void sub_22E36F784(MPSDevice *a1)
{
  MPSDevice::~MPSDevice(a1);
  if (v1)
  {

    free(v1);
  }
}

void sub_22E36F7BC(MPSDevice *a1)
{
  MPSDevice::~MPSDevice(a1);
  if (v1)
  {

    free(v1);
  }
}

void sub_22E36F7F4(MPSDevice *a1)
{
  MPSDevice::~MPSDevice(a1);
  if (v1)
  {

    free(v1);
  }
}

void sub_22E36F834(MPSDevice *a1)
{
  MPSDevice::~MPSDevice(a1);
  if (v1)
  {

    free(v1);
  }
}

void sub_22E36F874(MPSDevice *a1)
{
  MPSDevice::~MPSDevice(a1);
  if (v1)
  {

    free(v1);
  }
}

void sub_22E36F8B4(MPSDevice *a1)
{
  MPSDevice::~MPSDevice(a1);
  if (v1)
  {

    free(v1);
  }
}

void sub_22E36F8EC(MPSDevice *a1)
{
  MPSDevice::~MPSDevice(a1);
  if (v1)
  {

    free(v1);
  }
}

void sub_22E36F924(MPSDevice *a1)
{
  MPSDevice::~MPSDevice(a1);
  if (v1)
  {

    free(v1);
  }
}

void sub_22E36F95C(MPSDevice *a1)
{
  MPSDevice::~MPSDevice(a1);
  if (v1)
  {

    free(v1);
  }
}

void sub_22E36F994(MPSDevice *a1)
{
  MPSDevice::~MPSDevice(a1);
  if (v1)
  {

    free(v1);
  }
}

void sub_22E36F9CC(MPSDevice *a1)
{
  MPSDevice::~MPSDevice(a1);
  if (v1)
  {

    free(v1);
  }
}

void sub_22E36FA04(MPSDevice *a1)
{
  MPSDevice::~MPSDevice(a1);
  if (v1)
  {

    free(v1);
  }
}

void sub_22E36FA3C(MPSDevice *a1)
{
  MPSDevice::~MPSDevice(a1);
  if (v1)
  {

    free(v1);
  }
}

void sub_22E36FA7C(MPSDevice *a1)
{
  MPSDevice::~MPSDevice(a1);
  if (v1)
  {

    free(v1);
  }
}

void sub_22E36FAB4(MPSDevice *a1)
{
  MPSDevice::~MPSDevice(a1);
  if (v1)
  {

    free(v1);
  }
}

void sub_22E36FAEC(MPSDevice *a1)
{
  MPSDevice::~MPSDevice(a1);
  if (v1)
  {

    free(v1);
  }
}

void sub_22E36FB24(MPSDevice *a1)
{
  MPSDevice::~MPSDevice(a1);
  if (v1)
  {

    free(v1);
  }
}

void sub_22E36FB5C(MPSDevice *a1)
{
  MPSDevice::~MPSDevice(a1);
  if (v1)
  {

    free(v1);
  }
}

void sub_22E36FB94(MPSDevice *a1)
{
  MPSDevice::~MPSDevice(a1);
  if (v1)
  {

    free(v1);
  }
}

void sub_22E36FBCC(MPSDevice *a1)
{
  MPSDevice::~MPSDevice(a1);
  if (v1)
  {

    free(v1);
  }
}

void sub_22E36FC04(MPSDevice *a1)
{
  MPSDevice::~MPSDevice(a1);
  if (v1)
  {

    free(v1);
  }
}

void sub_22E36FC3C(MPSDevice *a1)
{
  MPSDevice::~MPSDevice(a1);
  if (v1)
  {

    free(v1);
  }
}

void sub_22E36FC74(MPSDevice *a1)
{
  MPSDevice::~MPSDevice(a1);
  if (v1)
  {

    free(v1);
  }
}

void sub_22E36FCAC(MPSDevice *a1)
{
  MPSDevice::~MPSDevice(a1);
  if (v1)
  {

    free(v1);
  }
}

void sub_22E36FCE4(MPSDevice *a1)
{
  MPSDevice::~MPSDevice(a1);
  if (v1)
  {

    free(v1);
  }
}

void sub_22E36FD1C(MPSDevice *a1)
{
  MPSDevice::~MPSDevice(a1);
  if (v1)
  {

    free(v1);
  }
}

uint64_t sub_22E36FD50(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = atomic_exchange((a1 + 2736), 0);
  if (!v6)
  {
LABEL_4:
    operator new();
  }

  if ((objc_msgSend_isEqual_(*(v6 + 16), a2, a2, a4, a5) & 1) == 0)
  {

    MEMORY[0x2318E5730](v6, 0x1080C4098BBCF0FLL);
    goto LABEL_4;
  }

  v7 = *v6;
  v8 = atomic_exchange((a1 + 2736), v6);
  if (v8)
  {

    MEMORY[0x2318E5730](v8, 0x1080C4098BBCF0FLL);
  }

  return v7;
}

void sub_22E36FE3C(MPSDevice *a1)
{
  MPSDevice::~MPSDevice(a1);
  if (v1)
  {

    free(v1);
  }
}

void sub_22E36FE7C(MPSDevice *a1)
{
  MPSDevice::~MPSDevice(a1);
  if (v1)
  {

    free(v1);
  }
}

void sub_22E36FEBC(MPSDevice *a1)
{
  MPSDevice::~MPSDevice(a1);
  if (v1)
  {

    free(v1);
  }
}

void sub_22E36FEFC(MPSDevice *a1)
{
  MPSDevice::~MPSDevice(a1);
  if (v1)
  {

    free(v1);
  }
}

void sub_22E36FF3C(MPSDevice *a1)
{
  MPSDevice::~MPSDevice(a1);
  if (v1)
  {

    free(v1);
  }
}

void sub_22E36FF7C(MPSDevice *a1)
{
  MPSDevice::~MPSDevice(a1);
  if (v1)
  {

    free(v1);
  }
}

void sub_22E36FFC4(MPSDevice *a1)
{
  MPSDevice::~MPSDevice(a1);
  if (v1)
  {

    free(v1);
  }
}

void sub_22E36FFFC(MPSDevice *a1)
{
  MPSDevice::~MPSDevice(a1);
  if (v1)
  {

    free(v1);
  }
}

void sub_22E370034(MPSDevice *a1)
{
  MPSDevice::~MPSDevice(a1);
  if (v1)
  {

    free(v1);
  }
}

void sub_22E37006C(MPSDevice *a1)
{
  MPSDevice::~MPSDevice(a1);
  if (v1)
  {

    free(v1);
  }
}

uint64_t sub_22E3700A0()
{
  result = getenv("MPS_ENABLE_TEXTURE_WRITE_COMPRESSION");
  if (result)
  {
    __endptr = 0;
    v1 = result;
    result = strtol(result, &__endptr, 10);
    if (__endptr != v1 && result >= 1)
    {
      byte_280AFECC8 = 1;
    }
  }

  return result;
}

uint64_t sub_22E370104()
{
  result = getenv("MPS_DISABLE_TEXTURE_COMPRESSION");
  if (result)
  {
    __endptr = 0;
    v1 = result;
    result = strtol(result, &__endptr, 10);
    if (__endptr != v1 && result >= 1)
    {
      byte_280AFECC9 = 1;
    }
  }

  return result;
}

unint64_t MPSGetLinearTextureSize2D(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v5 = (*a1 >> 16) & 0xF;
  if (v5 == 1)
  {
    v6 = *a2;
  }

  else
  {
    v6 = (*a2 + v5 - 1) / v5;
  }

  v7 = (v3 >> 20) & 0xF;
  if (v7 == 1)
  {
    v8 = a2[1];
  }

  else
  {
    v8 = (v7 + a2[1] - 1) / v7;
  }

  v4 = 1 << ((*a1 >> 55) & 0xF);
  v9 = (v4 + v6 * (v3 >> 10) - 1) & -v4;
  if (a3)
  {
    *a3 = v9;
  }

  return v8 * v9;
}

const char *MPSReturnGetName(uint64_t a1)
{
  result = "<invalid MPSReturn code>";
  v3 = a1 <= 0;
  if (a1 < 0)
  {
    a1 = -a1;
  }

  if (v3 && a1 <= 0x1F)
  {
    return off_2787BFF10[a1];
  }

  return result;
}

void *MPSIsTextureTwiddled(void *result, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (result)
  {
    v5 = result;
    if (objc_msgSend_iosurface(result, a2, a3, a4, a5))
    {
      return 0;
    }

    else
    {
      return (objc_msgSend_buffer(v5, v6, v7, v8, v9) == 0);
    }
  }

  return result;
}

void *MPSSeparatePassDimensions(void *result, void *a2, void *a3, unint64_t a4, unint64_t a5, unint64_t a6, uint64_t a7, void *a8, void *a9, void *a10)
{
  v10 = result[1] - (a5 >> 1);
  v11 = a5 + (a2[4] - 1) * a7;
  v12 = ((a5 >> 1) - result[1]) & ~(((a5 >> 1) - result[1]) >> 63);
  v13 = (v10 - a3[1] + v11) & ~((v10 - a3[1] + v11) >> 63);
  if (v11 <= v13 + v12)
  {
    v13 = 0;
    v12 = 0;
  }

  v14 = (-((a4 - 1) >> 1) - *result) & ~((-((a4 - 1) >> 1) - *result) >> 63);
  v15 = a2[3];
  v16 = *result - ((a4 >> 1) + a6) + v15 * a6 - *a3 + 1;
  v17 = v16 & ~(v16 >> 63);
  if (a6 >= 2)
  {
    v14 = v14 / a6 * a6;
  }

  if (v15 * a6 <= v14 + v17)
  {
    v17 = 0;
    v14 = 0;
  }

  *a9 = v14 + *result;
  a9[1] = v12 + v10;
  a9[2] = result[2];
  if (a6 >= 2)
  {
    v14 /= a6;
    v17 /= a6;
  }

  *a10 = -v14;
  a10[1] = (a5 >> 1) - v12;
  a10[2] = 0;
  *a8 = v15 - v14 - v17;
  a8[1] = v11 - v12 - v13;
  a8[2] = a2[5];
  return result;
}

__n128 MPSGetEffectiveClipRegion@<Q0>(MTLSize *a1@<X0>, MTLRegion *a2@<X1>, uint64_t a3@<X8>)
{
  width = a1->width - a2->origin.x;
  if (a1->width < a2->origin.x)
  {
    a2->size.width = 0;
    height = a1->height;
    y = a2->origin.y;
    v6 = height >= y;
    v7 = height - y;
    if (!v6)
    {
      goto LABEL_14;
    }

LABEL_4:
    if (a2->size.height < v7)
    {
      v7 = a2->size.height;
    }

    a2->size.height = v7;
    depth = a1->depth;
    z = a2->origin.z;
    v6 = depth >= z;
    v10 = depth - z;
    if (!v6)
    {
      goto LABEL_15;
    }

    goto LABEL_8;
  }

  if (a2->size.width < width)
  {
    width = a2->size.width;
  }

  a2->size.width = width;
  v13 = a1->height;
  v14 = a2->origin.y;
  v6 = v13 >= v14;
  v7 = v13 - v14;
  if (v6)
  {
    goto LABEL_4;
  }

LABEL_14:
  a2->size.height = 0;
  v15 = a1->depth;
  v16 = a2->origin.z;
  v6 = v15 >= v16;
  v10 = v15 - v16;
  if (!v6)
  {
LABEL_15:
    a2->size.depth = 0;
    v17 = *&a2->origin.z;
    *a3 = *&a2->origin.x;
    *(a3 + 16) = v17;
    result = *&a2->size.height;
    *(a3 + 32) = result;
    return result;
  }

LABEL_8:
  if (a2->size.depth < v10)
  {
    v10 = a2->size.depth;
  }

  a2->size.depth = v10;
  v11 = *&a2->origin.z;
  *a3 = *&a2->origin.x;
  *(a3 + 16) = v11;
  result = *&a2->size.height;
  *(a3 + 32) = result;
  return result;
}

__n128 MPSGetEffectiveClipRegion@<Q0>(MTLSize *a1@<X0>, MPSRegion *a2@<X1>, uint64_t a3@<X8>)
{
  x = a2->origin.x;
  if (a2->origin.x < 0.0)
  {
    a2->size.width = x + a2->size.width;
    a2->origin.x = 0.0;
    x = 0.0;
    y = a2->origin.y;
    if (y >= 0.0)
    {
LABEL_3:
      z = a2->origin.z;
      if (z >= 0.0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else
  {
    y = a2->origin.y;
    if (y >= 0.0)
    {
      goto LABEL_3;
    }
  }

  a2->size.height = y + a2->size.height;
  a2->origin.y = 0.0;
  y = 0.0;
  z = a2->origin.z;
  if (z >= 0.0)
  {
LABEL_4:
    width = a1->width;
    if (x > width)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  a2->size.depth = z + a2->size.depth;
  a2->origin.z = 0.0;
  z = 0.0;
  width = a1->width;
  if (x > width)
  {
LABEL_5:
    a2->size.width = 0.0;
    height = a1->height;
    if (y > height)
    {
      goto LABEL_6;
    }

LABEL_14:
    v13 = a2->size.height;
    v14 = height - y;
    if (v13 >= v14)
    {
      v13 = v14;
    }

    a2->size.height = v13;
    depth = a1->depth;
    if (z > depth)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_11:
  v11 = a2->size.width;
  v12 = width - x;
  if (v11 >= v12)
  {
    v11 = v12;
  }

  a2->size.width = v11;
  height = a1->height;
  if (y <= height)
  {
    goto LABEL_14;
  }

LABEL_6:
  a2->size.height = 0.0;
  depth = a1->depth;
  if (z > depth)
  {
LABEL_7:
    a2->size.depth = 0.0;
    v9 = *&a2->origin.z;
    *a3 = *&a2->origin.x;
    *(a3 + 16) = v9;
    result = *&a2->size.height;
    *(a3 + 32) = result;
    return result;
  }

LABEL_17:
  v15 = a2->size.depth;
  v16 = depth - z;
  if (v15 >= v16)
  {
    v15 = v16;
  }

  a2->size.depth = v15;
  v17 = *&a2->origin.z;
  *a3 = *&a2->origin.x;
  *(a3 + 16) = v17;
  result = *&a2->size.height;
  *(a3 + 32) = result;
  return result;
}

unint64_t MPSGetEffectiveFeatureChannelsCount(unint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = a3 - a1;
  if (a3 - a1 >= a2)
  {
    v3 = a2;
  }

  if (a3 <= a1)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

uint64_t MPSAutoTexture::GetCommandBuffer(MPSAutoTexture *this, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type = this->_type;
  if ((type & 1) == 0)
  {
    return 0;
  }

  while (type == 3)
  {
    this = this->var0._subTex.parent;
    type = this->_type;
    if ((type & 1) == 0)
    {
      return 0;
    }
  }

  if (type == 1)
  {
    return objc_msgSend_commandBuffer(this->var0.var0.var0._tex.device, a2, a3, a4, a5);
  }

  else
  {
    return 0;
  }
}

unint64_t MPSLibrary::getComputePipelineStateInfo@<X0>(unint64_t result@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  if (qword_280AFED70 != -1)
  {
    v15 = result;
    v16 = a2;
    dispatch_once(&qword_280AFED70, &unk_284217500);
    result = v15;
    a2 = v16;
    v2 = qword_280AFED68;
    if (qword_280AFED68)
    {
      goto LABEL_3;
    }

LABEL_26:
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    return result;
  }

  v2 = qword_280AFED68;
  if (!qword_280AFED68)
  {
    goto LABEL_26;
  }

LABEL_3:
  v3 = v2[1];
  if (v3)
  {
    v4 = 0x9DDFEA08EB382D69 * ((8 * (result & 0x1FFFFFFF) + 8) ^ HIDWORD(result));
    v5 = 0x9DDFEA08EB382D69 * (HIDWORD(result) ^ (v4 >> 47) ^ v4);
    v6 = 0x9DDFEA08EB382D69 * (v5 ^ (v5 >> 47));
    v7 = vcnt_s8(v3);
    v7.i16[0] = vaddlv_u8(v7);
    if (v7.u32[0] > 1uLL)
    {
      v8 = v6;
      if (v6 >= *&v3)
      {
        v8 = v6 % *&v3;
      }
    }

    else
    {
      v8 = (*&v3 - 1) & v6;
    }

    v9 = *(*v2 + 8 * v8);
    if (v9)
    {
      v10 = *v9;
      if (*v9)
      {
        if (v7.u32[0] < 2uLL)
        {
          v11 = *&v3 - 1;
          while (1)
          {
            v12 = v10[1];
            if (v12 == v6)
            {
              if (v10[2] == result)
              {
                goto LABEL_16;
              }
            }

            else if ((v12 & v11) != v8)
            {
              return result;
            }

            v10 = *v10;
            if (!v10)
            {
              return result;
            }
          }
        }

        do
        {
          v14 = v10[1];
          if (v14 == v6)
          {
            if (v10[2] == result)
            {
LABEL_16:
              v13 = a2;
              *a2 = v10[3];
              v13[1] = v10[4];
              result = v10[5];
              v13[2] = result;
              return result;
            }
          }

          else
          {
            if (v14 >= *&v3)
            {
              v14 %= *&v3;
            }

            if (v14 != v8)
            {
              return result;
            }
          }

          v10 = *v10;
        }

        while (v10);
      }
    }
  }

  return result;
}

unint64_t MPSLibrary::MPSKey_GetComputeInfo(void *a1, atomic_ullong *a2, int a3)
{
  result = atomic_load_explicit(a2, memory_order_acquire);
  if (!result)
  {
    if (a3 == 1)
    {
      return 0;
    }

    else
    {
      result = MPSLibrary::MPSKey_Compile(a1, a2);
      if (a3 && !result)
      {
        if (MTLReportFailureTypeEnabled())
        {
          MTLReportFailure();
        }

        return 0;
      }
    }
  }

  return result;
}

unint64_t MPSLibrary::GetComputeStateAsync(void *a1, unsigned int a2, int64x2_t *a3, int a4, void *a5, uint64_t a6)
{
  v8 = a2;
  if (a1[3] <= a2)
  {
    v11 = a1;
    v12 = a3;
    v13 = a6;
    v14 = MTLReportFailureTypeEnabled();
    a6 = v13;
    a3 = v12;
    v15 = v14;
    a1 = v11;
    if (v15)
    {
      MTLReportFailure();
      a1 = v11;
      a6 = v13;
      a3 = v12;
    }
  }

  if (!**(a1[35] + 16 * v8))
  {
    v16 = a1;
    v17 = a3;
    v18 = a6;
    v19 = MTLReportFailureTypeEnabled();
    a6 = v18;
    a3 = v17;
    v20 = v19;
    a1 = v16;
    if (v20)
    {
      MTLReportFailure();
      a1 = v16;
      a6 = v18;
      a3 = v17;
    }
  }

  MPSLibrary::GetCacheKeyAtomic(a1, a1[35] + 16 * v8, a3, 1, (a1[2] + 8 * v8), a4, 0, a5, a6);
  return atomic_load_explicit(v9, memory_order_acquire);
}

void MPSLibrary::~MPSLibrary(MPSLibrary *this)
{
  dispatch_release(*(this + 5));
  free(*(this + 35));
  if (*(this + 3))
  {
    v2 = 0;
    v3 = 1;
    do
    {
      v4 = atomic_load((*(this + 2) + 8 * v2));
      sub_22E2F0214(v4);
      v2 = v3++;
    }

    while (*(this + 3) > v2);
  }

  free(*(this + 2));
  v5 = *(this + 4);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  if (!pthread_rwlock_wrlock((this + 64)))
  {
    v6 = *(this + 7);
    if (*(this + 33))
    {
      v7 = 0;
      do
      {
        sub_22E2F0214(v6[v7]);
        v6 = *(this + 7);
        v6[v7++] = 0;
      }

      while (v7 < *(this + 33));
    }

    free(v6);
    pthread_rwlock_unlock((this + 64));
  }

  pthread_rwlock_destroy((this + 64));
}

uint64_t sub_22E370A64(void *a1, const char *a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v10.i64[0] = -1;
  v10.i64[1] = -1;
  if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_s64(vandq_s8(*a3, *(a3 + 32)), v10), vceqq_s64(vandq_s8(*(a3 + 16), *(a3 + 64)), v10))))) & 1) == 0 && (*(a3 + 48) == -1 ? (v11 = *(a3 + 56) == -1) : (v11 = 0), v11))
  {
    v12 = objc_autoreleasePoolPush();
    v17 = MPSCreateFunctionConstantValues(a1, v13, v14, v15, v16);
    v18 = *a2;
    v23 = objc_msgSend_functionDescriptor(MEMORY[0x277CD6D78], v19, v20, v21, v22);
    objc_msgSend_setName_(v23, v24, v18, v25, v26);
    if (*a4)
    {
      objc_msgSend_setSpecializedName_(v23, v27, *a4, v28, v29);
    }

    objc_msgSend_setConstantValues_(v23, v27, v17, v28, v29);
    v34 = objc_msgSend_device(a1, v30, v31, v32, v33);
    MPSDevice = MPSDevice::GetMPSDevice(v34);
    MPSDevice::AddBinaryArchives(MPSDevice, v23, a1);
    v38 = objc_msgSend_newFunctionWithDescriptor_error_(a1, v36, v23, a5, v37);
    objc_autoreleasePoolPop(v12);
  }

  else
  {
    v39 = MPSCreateFunctionConstantValues(a1, a2, a3, a4, a5);
    v44 = v39;
    v45 = *a3;
    v46 = *(a3 + 8);
    if (*a3 != -1 || ((v47.i64[0] = -1, v47.i64[1] = -1, v48 = vaddvq_s32(vbicq_s8(xmmword_22E37D510, vuzp1q_s32(vceqq_s64(*(a3 + 48), v47), vceqq_s64(*(a3 + 64), v47)))) & 0xF, (~vaddvq_s32(vandq_s8(vuzp1q_s32(vceqq_s64(v46, v47), vceqq_s64(*(a3 + 24), v47)), xmmword_22E37D510)) & 0xF) == 0) ? (v49 = v48 == 0) : (v49 = 0), v49 ? (v50 = *(a3 + 40) == -1) : (v50 = 0), !v50))
    {
      v51.i64[0] = -1;
      v51.i64[1] = -1;
      if ((vuzp1_s16(vmovn_s64(vceqq_s64(v46, v51)), *v46.i8).u8[0] & 1) == 0)
      {
        v69 = *(a3 + 8);
        objc_msgSend_setConstantValue_type_atIndex_(v39, v40, &v69, 33, 126);
        v45 = *a3;
      }

      if (v45 != -1)
      {
        v69 = v45;
        objc_msgSend_setConstantValue_type_atIndex_(v44, v40, &v69, 33, 125);
      }

      if (*(a3 + 16) != -1)
      {
        v69 = *(a3 + 16);
        objc_msgSend_setConstantValue_type_atIndex_(v44, v40, &v69, 33, 124);
      }

      if (*(a3 + 24) != -1)
      {
        v69 = *(a3 + 24);
        objc_msgSend_setConstantValue_type_atIndex_(v44, v40, &v69, 33, 123);
      }

      if (*(a3 + 32) != -1)
      {
        v69 = *(a3 + 32);
        objc_msgSend_setConstantValue_type_atIndex_(v44, v40, &v69, 33, 119);
      }

      if (*(a3 + 40) != -1)
      {
        v69 = *(a3 + 40);
        objc_msgSend_setConstantValue_type_atIndex_(v44, v40, &v69, 33, 118);
      }

      if (*(a3 + 64) != -1)
      {
        v69 = *(a3 + 64);
        objc_msgSend_setConstantValue_type_atIndex_(v44, v40, &v69, 33, 122);
      }

      if (*(a3 + 72) != -1)
      {
        v69 = *(a3 + 72);
        objc_msgSend_setConstantValue_type_atIndex_(v44, v40, &v69, 33, 121);
      }

      if (*(a3 + 48) != -1)
      {
        v69 = *(a3 + 48);
        objc_msgSend_setConstantValue_type_atIndex_(v44, v40, &v69, 33, 117);
      }

      if (*(a3 + 56) != -1)
      {
        v69 = *(a3 + 56);
        objc_msgSend_setConstantValue_type_atIndex_(v44, v40, &v69, 33, 116);
      }
    }

    v52 = *a2;
    v53 = objc_msgSend_functionDescriptor(MEMORY[0x277CD6D78], v40, v41, v42, v43);
    objc_msgSend_setName_(v53, v54, v52, v55, v56);
    if (*a4)
    {
      objc_msgSend_setSpecializedName_(v53, v57, *a4, v58, v59);
    }

    objc_msgSend_setConstantValues_(v53, v57, v44, v58, v59);
    v64 = objc_msgSend_device(a1, v60, v61, v62, v63);
    v65 = MPSDevice::GetMPSDevice(v64);
    MPSDevice::AddBinaryArchives(v65, v53, a1);
    v38 = objc_msgSend_newFunctionWithDescriptor_error_(a1, v66, v53, a5, v67);
  }

  return v38;
}

uint64_t MPSLibrary::NewComputePipelineState(void **a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a4;
  v42 = 0;
  v8 = *a1;
  if (a3)
  {
    v13 = objc_msgSend_newFunctionWithName_constantValues_error_(v8, a2, a2, a3, &v42);
    if (v42 && MTLReportFailureTypeEnabled())
    {
      v41 = a2;
      MTLReportFailure();
    }
  }

  else
  {
    v13 = objc_msgSend_newFunctionWithName_(v8, a2, a2, a4, a5);
  }

  v14 = objc_msgSend_device(*a1, v9, v10, v11, v12, v41);
  v17 = v14;
  if (!v5)
  {
    v31 = objc_msgSend_newComputePipelineStateWithFunction_error_(v14, v15, v13, &v42, v16);

    if (!v42)
    {
      return v31;
    }

    goto LABEL_13;
  }

  v18 = objc_alloc_init(MEMORY[0x277CD6D30]);
  objc_msgSend_setComputeFunction_(v18, v19, v13, v20, v21);
  objc_msgSend_setThreadGroupSizeIsMultipleOfThreadExecutionWidth_(v18, v22, 1, v23, v24);
  if (objc_msgSend_supportsTextureWriteRoundingMode_(v17, v25, 2, v26, v27))
  {
    objc_msgSend_setTextureWriteRoundingMode_(v18, v28, 2, v29, v30);
  }

  v31 = objc_msgSend_newComputePipelineStateWithDescriptor_error_(v17, v28, v18, &v42, v30);

  if (v42)
  {
LABEL_13:
    if (MTLReportFailureTypeEnabled())
    {
      objc_msgSend_localizedDescription(v42, v33, v34, v35, v36);
      objc_msgSend_localizedFailureReason(v42, v37, v38, v39, v40);
      MTLReportFailure();
    }
  }

  return v31;
}

uint64_t MPSLibrary::getKernelDAGLibrary(MPSLibrary *this)
{
  v1 = *(this + 34);
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = sub_22E342518;
  v10 = sub_22E342528;
  v11 = 0;
  v2 = *(v1 + 1456);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_22E342534;
  v5[3] = &unk_2787BECB8;
  v5[4] = &v6;
  v5[5] = v1;
  dispatch_sync(v2, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

char *MPSLibrary::CreateUberShaderKey(uint64_t a1, uint64_t a2, int64x2_t *a3, uint64_t a4, uint64_t (*a5)(void *a1, const char *a2, uint64_t a3, uint64_t *a4, uint64_t a5), uint64_t a6, int a7, int a8, unint64_t a9, void *a10, uint64_t a11, void *a12, uint64_t a13)
{
  v21 = *(a1 + 272);
  if (qword_280AFED78 == -1)
  {
    if (byte_280AFED58)
    {
      goto LABEL_3;
    }
  }

  else
  {
    dispatch_once(&qword_280AFED78, &unk_28421C258);
    if (byte_280AFED58)
    {
LABEL_3:
      v22 = 1;
      if (pthread_rwlock_rdlock((a1 + 64)))
      {
        goto LABEL_4;
      }

LABEL_8:
      *md = 0u;
      v83 = 0u;
      if (a9)
      {
        objc_msgSend_dynamicFCs(a9, v23, v24, v25, v26);
        CC_SHA256(v85, (v86 - v85) & 0xFFFFFFFC, md);
        if (v85)
        {
          v86 = v85;
          operator delete(v85);
        }
      }

      v76 = a6;
      v77 = a7;
      v27 = 0;
      v28 = *(a1 + 48);
      do
      {
        v28 = (*(a1 + 264) - 1) & (v28 - 1);
        v29 = *(*(a1 + 56) + 8 * v28);
        if (v29 && *(v29 + 9) == a4 && (vmaxv_u16(vmovn_s32(vornq_s8(vmvnq_s8(vuzp1q_s32(vceqq_s64(*a3, *(v29 + 120)), vceqq_s64(a3[1], *(v29 + 136)))), vuzp1q_s32(vceqq_s64(a3[2], *(v29 + 152)), vceqq_s64(a3[4], *(v29 + 184)))))) & 1) == 0 && a3[3].i64[0] == *(v29 + 21) && a3[3].i64[1] == *(v29 + 22))
        {
          if (!v22 || *(v29 + 8) == a11)
          {
            if (!a9 || (objc_msgSend_hash(a9, v23, v24, v25, v26), (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_s64(v80, *(v29 + 5)), vceqq_s64(v81, *(v29 + 6)))))) & 1) == 0) && (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_s64(*(v29 + 14), *md), vceqq_s64(*(v29 + 15), v83))))) & 1) == 0)
            {
              if (!a12 || objc_msgSend_hash(a12, v23, v24, v25, v26) == *(v29 + 14))
              {
                DefaultOptions = GetDefaultOptions();
                sub_22E2EF6F4(DefaultOptions, v31, v32, "Compute pipelinestate found in MPSComputePipelineStateCache\n");
LABEL_53:
                atomic_fetch_add(v29 + 1, 1uLL);
                pthread_rwlock_unlock((a1 + 64));
                return v29;
              }
            }
          }

          v27 = 1;
        }
      }

      while (v28 != *(a1 + 48));
      pthread_rwlock_unlock((a1 + 64));
      v33 = malloc_type_malloc(0x90uLL, 0x10E004026888FEDuLL);
      v34 = v33;
      v33[2] = a2;
      *v33 = v33 + 2;
      if (a5)
      {
        v35 = a5;
      }

      else
      {
        v35 = sub_22E370A64;
      }

      v33[1] = v35;
      v33[10] = v76;
      v33[3] = a5;
      v36 = *(a1 + 272);
      v85 = 0;
      v86 = &v85;
      v87 = 0x3052000000;
      v88 = sub_22E342518;
      v89 = sub_22E342528;
      v90 = 0;
      v37 = *(v36 + 1456);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = sub_22E342534;
      block[3] = &unk_2787BECB8;
      block[4] = &v85;
      block[5] = v36;
      dispatch_sync(v37, block);
      v38 = *(v86 + 40);
      _Block_object_dispose(&v85, 8);
      if (a9 | a13)
      {
        v42 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v43 = a10;
        if (a9)
        {
          StitchedFunctions = objc_msgSend_getStitchedFunctions_(a9, v39, v38, v40, v41);
          objc_msgSend_addObjectsFromArray_(v42, v45, StitchedFunctions, v46, v47);
        }

        v48 = a13;
        if (a13)
        {
          objc_msgSend_addObjectsFromArray_(v42, v39, a13, v40, v41);
        }

        v34[5] = v42;
        if (a9)
        {
          objc_msgSend_hash(a9, v39, v48, v40, v41);
          *(v34 + 3) = v78;
          *(v34 + 4) = v79;
          if (!a12)
          {
LABEL_37:
            v49 = 0;
            v34[11] = 0;
LABEL_40:
            v34[12] = v49;
            v56 = v83;
            *(v34 + 7) = *md;
            *(v34 + 8) = v56;
            v29 = malloc_type_calloc(1uLL, 0x100uLL, 0x10E0040EDA73DD6uLL);
            *(v29 + 5) = v77;
            *(v29 + 6) = a8;
            *(v29 + 4) = v34;
            *(v29 + 5) = sub_22E3716BC;
            *(v29 + 120) = *a3;
            v57 = a3[3];
            v58 = a3[4];
            v59 = a3[2];
            *(v29 + 136) = a3[1];
            *(v29 + 184) = v58;
            *(v29 + 168) = v57;
            *(v29 + 152) = v59;
            atomic_store(1uLL, v29 + 1);
            *(v29 + 4) = 0;
            *(v29 + 7) = v43;
            *(v29 + 8) = a11;
            *(v29 + 9) = a4;
            v64 = objc_msgSend_device(*a1, v60, v61, v62, v63);
            atomic_fetch_add(v29 + 1, 1uLL);
            v65 = *(a1 + 40);
            v85 = MEMORY[0x277D85DD0];
            v86 = 3221225472;
            v87 = sub_22E2EE4E8;
            v88 = &unk_2787BFEA0;
            v89 = a1;
            v90 = v29;
            dispatch_async(v65, &v85);
            if (!pthread_rwlock_wrlock((a1 + 64)))
            {
              v66 = *(a1 + 56);
              if (v66[*(a1 + 48)])
              {
                v67 = *(a1 + 264);
                if (v67 > 0x7FF)
                {
                  sub_22E2F0214(v66[*(a1 + 48)]);
                }

                else
                {
                  *(a1 + 48) = v67;
                  *(a1 + 264) = 2 * v67;
                  v68 = malloc_type_realloc(v66, 16 * v67, 0x2004093837F09uLL);
                  *(a1 + 56) = v68;
                  bzero(&v68[(4 * *(a1 + 264)) & 0xFFFFFFFFFFFFFFF8], (4 * *(a1 + 264)) & 0xFFFFFFFFFFFFFFF8);
                }
              }

              v71 = *(a1 + 48);
              *(*(a1 + 56) + 8 * v71) = v29;
              *(a1 + 48) = (*(a1 + 264) - 1) & (v71 + 1);
              v72 = GetDefaultOptions();
              if (v27)
              {
                sub_22E2EF6F4(v72, v73, v74, "Compute pipelinestate not found in MPSComputePipelineStateCache. Hash hit DAG miss\n");
              }

              else
              {
                sub_22E2EF6F4(v72, v73, v74, "Compute pipelinestate not found in MPSComputePipelineStateCache. Hash miss\n");
              }

              goto LABEL_53;
            }

            if (!MTLReportFailureTypeEnabled())
            {
              return 0;
            }

            goto LABEL_42;
          }
        }

        else
        {
          *&v69 = -1;
          *(&v69 + 1) = -1;
          *&v70 = -1;
          *(&v70 + 1) = -1;
          *(v34 + 3) = v69;
          *(v34 + 4) = v70;
          if (!a12)
          {
            goto LABEL_37;
          }
        }
      }

      else
      {
        v34[5] = 0;
        *&v50 = -1;
        *(&v50 + 1) = -1;
        *&v51 = -1;
        *(&v51 + 1) = -1;
        v43 = a10;
        *(v34 + 3) = v50;
        *(v34 + 4) = v51;
        if (!a12)
        {
          goto LABEL_37;
        }
      }

      v34[11] = objc_msgSend_getStitchedFunctions_(a12, v39, v38, v40, v41);
      v49 = objc_msgSend_hash(a12, v52, v53, v54, v55);
      goto LABEL_40;
    }
  }

  v22 = (*(v21 + 1468) >> 1) & 1;
  if (!pthread_rwlock_rdlock((a1 + 64)))
  {
    goto LABEL_8;
  }

LABEL_4:
  if (!MTLReportFailureTypeEnabled())
  {
    return 0;
  }

LABEL_42:
  MTLReportFailure();
  return 0;
}

void sub_22E3716A0(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 152);
  if (v3)
  {
    *(v1 - 144) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_22E3716BC(id *a1)
{

  free(a1);
}

void MPSLibrary::RetainMPSKey(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    atomic_fetch_add((a2 + 8), 1uLL);
  }
}

void *MPSLibrary::GetPipelineStateForMPSKey(void *a1, atomic_ullong *a2, void *a3, uint64_t a4, uint64_t a5)
{
  explicit = atomic_load_explicit(a2, memory_order_acquire);
  if (!explicit)
  {
    explicit = MPSLibrary::MPSKey_Compile(a1, a2);
  }

  if (a3 && explicit && (objc_msgSend_retainedReferences(a3, a2, a3, a4, a5) & 1) == 0)
  {
    v7 = explicit;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = sub_22E3717C4;
    v12[3] = &unk_2787BE7E8;
    v12[4] = explicit;
    objc_msgSend_addCompletedHandler_(a3, v8, v12, v9, v10);
  }

  return explicit;
}

const char *sub_22E37180C()
{
  result = getenv("MPS_SHADER_PROFILING");
  if (result)
  {
    __endptr = 0;
    v1 = result;
    result = strtol(result, &__endptr, 10);
    if (v1 != __endptr)
    {
      byte_280AFED58 = result > 0;
    }
  }

  return result;
}

uint64_t sub_22E371870(uint64_t result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    if (*(result + 16) == 1)
    {
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

float32x4_t *sub_22E372B98(float32x4_t *result, float16x4_t *a2, unint64_t a3)
{
  v3 = a2;
  if (a2)
  {
    __break(1u);
  }

  else
  {
    v4 = a3;
    v5 = result;
    if ((a2 & 6) != 0)
    {
      v10 = 0uLL;
      if (((-a2 >> 1) & 3) >= a3)
      {
        v6 = a3;
      }

      else
      {
        v6 = (-a2 >> 1) & 3;
      }

      __memcpy_chk();
      __src = vcvt_f16_f32(v10);
      result = memcpy(v3, &__src, 2 * v6);
      v3 = (v3 + 2 * v6);
      v5 = (v5 + 4 * v6);
      v4 -= v6;
    }

    if ((v5 & 0xF) != 0)
    {
      if (v4 >= 4)
      {
        do
        {
          v7 = *v5++;
          *v3++ = vcvt_f16_f32(v7);
          v4 -= 4;
        }

        while (v4 > 3);
      }
    }

    else if (v4 >= 4)
    {
      do
      {
        v8 = *v5++;
        *v3++ = vcvt_f16_f32(v8);
        v4 -= 4;
      }

      while (v4 > 3);
    }

    if (v4)
    {
      v10 = 0uLL;
      __memcpy_chk();
      __src = vcvt_f16_f32(v10);
      return memcpy(v3, &__src, 2 * v4);
    }
  }

  return result;
}

__n128 MPSGetUShortDivisorMagicNumber(unsigned int a1)
{
  v1 = a1 - 1;
  if (a1 == 1 || ((v2 = __clz(a1), (a1 & v1) == 0) ? (v3 = 15) : (v3 = 16), LOWORD(v1) = v3 - v2 + 16, !a1))
  {
    LODWORD(v4) = a1;
    WORD2(v4) = v1;
  }

  else
  {
    LOWORD(v4) = a1;
    WORD1(v4) = ((a1 | (0x10000 << v1)) - 1) / a1;
    WORD2(v4) = v1;
  }

  result.n128_u32[0] = v4;
  result.n128_u16[2] = WORD2(v4);
  return result;
}

__n64 MPSGetUIntDivisorMagicNumber(unsigned int a1)
{
  if (a1 == 1)
  {
    return a1;
  }

  v1 = __clz(a1);
  v2 = (a1 & (a1 - 1)) != 0 ? 32 : 31;
  v3 = v2 - v1;
  if (!a1)
  {
    return a1;
  }

  else
  {
    result.n64_u32[0] = a1;
    result.n64_u32[1] = (a1 + (1 << (v3 + 32)) - 1) / a1;
  }

  return result;
}

uint64_t MPSGetOSLogHandle(uint64_t a1, uint64_t a2)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 0x40000000;
  v3[2] = sub_22E2EE648;
  v3[3] = &unk_2787C0840;
  v3[4] = a1;
  v3[5] = a2;
  if (qword_280AFED90 != -1)
  {
    dispatch_once(&qword_280AFED90, v3);
  }

  return qword_280AFED98;
}

void sub_22E373968(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (!v11)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(v11);
  _Unwind_Resume(exception_object);
}

void MPSKernelUserDAGOp::getMTLStitchingNodes(MPSKernelUserDAGOp *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = *(this + 9);
  if (v2)
  {
    v3 = *v2;
    v4 = v2[1];
    if (*v2 != v4)
    {
      v5 = 0;
      do
      {
        v6 = v5;
        v7 = v5 >> 3;
        if (((v5 >> 3) + 1) >> 61)
        {
          a2[1] = v5;
          a2[2] = 0;
          *a2 = 0;
          sub_22E33ECC8();
        }

        if (v5 >> 3 != -1)
        {
          if (!(((v5 >> 3) + 1) >> 61))
          {
            operator new();
          }

          a2[1] = v5;
          a2[2] = 0;
          *a2 = 0;
          sub_22E33DD58();
        }

        *(8 * v7) = *(*v3 + 8);
        v5 = 8 * v7 + 8;
        memcpy(0, 0, v6);
        v3 += 8;
      }

      while (v3 != v4);
      a2[1] = v5;
      a2[2] = 0;
      *a2 = 0;
    }
  }
}

void sub_22E373B5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  a10[1] = v11;
  a10[2] = v12;
  *a10 = v10;
  if (v10)
  {
    a10[1] = v10;
    operator delete(v10);
  }

  _Unwind_Resume(exception_object);
}

void MPSKernelUserDAG::~MPSKernelUserDAG(MPSKernelUserDAG *this)
{
  *this = &unk_284217270;
  v2 = *(this + 5);
  if (v2)
  {
    v3 = *v2;
    v4 = *(v2 + 8);
    if (*v2 == v4)
    {
      if (!v3)
      {
LABEL_5:
        MEMORY[0x2318E5730](v2, 0x80C40D6874129);
        goto LABEL_12;
      }

LABEL_4:
      *(v2 + 8) = v3;
      operator delete(v3);
      goto LABEL_5;
    }

    do
    {
      if (*v3)
      {
        (*(**v3 + 8))(*v3);
      }

      ++v3;
    }

    while (v3 != v4);
    v2 = *(this + 5);
    if (v2)
    {
      v3 = *v2;
      if (!*v2)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

LABEL_12:
  v5 = *(this + 4);
  if (!v5)
  {
    goto LABEL_23;
  }

  v6 = *v5;
  v7 = *(v5 + 8);
  if (*v5 == v7)
  {
    if (!v6)
    {
LABEL_16:
      MEMORY[0x2318E5730](v5, 0x80C40D6874129);
      goto LABEL_23;
    }

LABEL_15:
    *(v5 + 8) = v6;
    operator delete(v6);
    goto LABEL_16;
  }

  do
  {
    if (*v6)
    {
      (*(**v6 + 8))(*v6);
    }

    ++v6;
  }

  while (v6 != v7);
  v5 = *(this + 4);
  if (v5)
  {
    v6 = *v5;
    if (!*v5)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_23:
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

{
  MPSKernelUserDAG::~MPSKernelUserDAG(this);

  JUMPOUT(0x2318E5730);
}

void MPSKernelUserDAG::addOpToDAG(MPSKernelUserDAG *this, MPSKernelUserDAGOp *a2)
{
  v3 = a2;
  v2 = *(this + 5);
  if (!v2)
  {
    operator new();
  }

  sub_22E2F8CC8(v2, &v3);
}

void MPSKernelUserDAG::getMTLStitchingInputNodes(MPSKernelUserDAG *this@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = objc_autoreleasePoolPush();
  v7 = *(this + 4);
  if (!v7)
  {
    operator new();
  }

  v8 = *v7;
  v9 = (v7[1] - *v7) >> 3;
  v28 = a2;
  if (v9 < a2)
  {
    v10 = objc_alloc(MEMORY[0x277CD6E00]);
    v14 = objc_msgSend_initWithArgumentIndex_(v10, v11, v9, v12, v13);
    operator new();
  }

  if (v9 > a2)
  {
    v15 = v6;
    do
    {
      v18 = *(v8 + 8 * a2);
      if (v18)
      {
        (*(*v18 + 8))(v18);
        v7 = *(this + 4);
        v8 = *v7;
      }

      ++a2;
      v16 = v7[1];
      v17 = (v16 - v8) >> 3;
    }

    while (a2 < v17);
    v19 = v28 - v17;
    if (v28 <= v17)
    {
      v6 = v15;
      if (v28 < v17)
      {
        v7[1] = v8 + 8 * v28;
      }
    }

    else
    {
      v20 = v7[2];
      if (v19 > (v20 - v16) >> 3)
      {
        if (!(v28 >> 61))
        {
          v21 = v20 - v8;
          v22 = v21 >> 2;
          if (v21 >> 2 <= v28)
          {
            v22 = v28;
          }

          v23 = v21 >= 0x7FFFFFFFFFFFFFF8;
          v24 = 0x1FFFFFFFFFFFFFFFLL;
          if (!v23)
          {
            v24 = v22;
          }

          if (!(v24 >> 61))
          {
            operator new();
          }

          sub_22E33DD58();
        }

LABEL_27:
        sub_22E33ECC8();
      }

      bzero(v7[1], 8 * v19);
      v7[1] = v16 + 8 * v19;
      v6 = v15;
    }
  }

  objc_autoreleasePoolPop(v6);
  v25 = *(this + 4);
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  v27 = *v25;
  v26 = v25[1];
  if (v26 != v27)
  {
    if (((v26 - v27) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    goto LABEL_27;
  }
}

void *MPSKernelUserDAGNode::MPSKernelUserDAGNode(void *a1, void *a2)
{
  *a1 = &unk_284217158;
  a1[1] = a2;
  return a1;
}

{
  *a1 = &unk_284217158;
  a1[1] = a2;
  return a1;
}

void MPSKernelUserDAGNode::~MPSKernelUserDAGNode(id *this)
{
  *this = &unk_284217158;
}

{
  *this = &unk_284217158;
}

{
  *this = &unk_284217158;

  JUMPOUT(0x2318E5730);
}

void MPSKernelUserDAGOp::MPSKernelUserDAGOp(uint64_t a1)
{
  *a1 = &unk_2842171E0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  operator new();
}

void sub_22E374C04(_Unwind_Exception *a1)
{
  v6 = *v4;
  if (*v4)
  {
    *(v4 + 8) = v6;
    operator delete(v6);
  }

  MEMORY[0x2318E5730](v4, 0x80C40D6874129);
  if (*(v1 + 55) < 0)
  {
    operator delete(*v3);
    if ((*(v1 + 31) & 0x80000000) == 0)
    {
LABEL_5:
      _Unwind_Resume(a1);
    }
  }

  else if ((*(v1 + 31) & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(*v2);
  _Unwind_Resume(a1);
}

void MPSKernelUserDAGOp::~MPSKernelUserDAGOp(MPSKernelUserDAGOp *this)
{
  *this = &unk_2842171E0;
  v2 = *(this + 8);
  if (v2)
  {
    v3 = *v2;
    if (*v2)
    {
      *(v2 + 8) = v3;
      operator delete(v3);
    }

    MEMORY[0x2318E5730](v2, 0x80C40D6874129);
  }

  *(this + 8) = 0;
  v4 = *(this + 9);
  v5 = *v4;
  if (*(v4 + 8) != *v4)
  {
    v6 = 0;
    do
    {
      v7 = v5[v6];
      if (v7)
      {
        (*(*v7 + 8))(v5[v6]);
        v4 = *(this + 9);
        v5 = *v4;
      }

      ++v6;
    }

    while (v6 < (*(v4 + 8) - v5) >> 3);
  }

  if (v5)
  {
    *(v4 + 8) = v5;
    operator delete(v5);
  }

  MEMORY[0x2318E5730](v4, 0x80C40D6874129);
  *(this + 9) = 0;
  if ((*(this + 55) & 0x80000000) == 0)
  {
    if ((*(this + 31) & 0x80000000) == 0)
    {
      return;
    }

LABEL_16:
    operator delete(*(this + 1));
    return;
  }

  operator delete(*(this + 4));
  if (*(this + 31) < 0)
  {
    goto LABEL_16;
  }
}

{
  MPSKernelUserDAGOp::~MPSKernelUserDAGOp(this);

  JUMPOUT(0x2318E5730);
}

void sub_22E374E60(std::string *a1, char *__s, int a3)
{
  v6 = strlen(__s);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_22E33DEAC();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = v6;
  if (!v6)
  {
    __dst.__r_.__value_.__s.__data_[0] = 0;
    if (a3 <= 285212735)
    {
      goto LABEL_5;
    }

LABEL_11:
    if (a3 <= 536870927)
    {
      if (a3 == 285212736)
      {
        v8 = "_cf";
      }

      else
      {
        if (a3 != 536870920)
        {
          goto LABEL_8;
        }

        v8 = "_i8";
      }
    }

    else
    {
      switch(a3)
      {
        case 536870928:
          v8 = "_i16";
          break;
        case 536870944:
          v8 = "_i";
          break;
        case 536870976:
          v8 = "_i64";
          break;
        default:
          goto LABEL_8;
      }
    }

    goto LABEL_28;
  }

  memcpy(&__dst, __s, v6);
  __dst.__r_.__value_.__s.__data_[v7] = 0;
  if (a3 > 285212735)
  {
    goto LABEL_11;
  }

LABEL_5:
  if (a3 <= 31)
  {
    if (a3 == 8)
    {
      v8 = "_u8";
    }

    else
    {
      if (a3 != 16)
      {
        goto LABEL_8;
      }

      v8 = "_u16";
    }
  }

  else if (a3 == 32)
  {
    v8 = "_u";
  }

  else
  {
    if (a3 != 64)
    {
LABEL_8:
      v8 = "_f";
      goto LABEL_28;
    }

    v8 = "_u64";
  }

LABEL_28:
  v9 = std::string::append(&__dst, v8);
  *a1 = *v9;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }
}

void sub_22E375090(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

id sub_22E3750AC(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = *(a1 + 88);
  v8 = v3;
  objc_msgSend_setConstantValue_type_atIndex_(v2, v4, &v8, 3, 0, *(a1 + 96));
  objc_msgSend_setConstantValue_type_atIndex_(v2, v5, &v7, 81, 1);
  return v2;
}

void sub_22E3753CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (a37 < 0)
  {
    operator delete(__p);
    if ((a16 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a22 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((a16 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a11);
  if ((a22 & 0x80000000) == 0)
  {
LABEL_4:
    if ((a28 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

LABEL_9:
  operator delete(a17);
  if ((a28 & 0x80000000) == 0)
  {
LABEL_5:
    v40 = a29;
    if (!a29)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

LABEL_10:
  operator delete(a23);
  v40 = a29;
  if (!a29)
  {
LABEL_6:
    MEMORY[0x2318E5730](v37, v38);
    _Unwind_Resume(a1);
  }

LABEL_11:
  operator delete(v40);
  MEMORY[0x2318E5730](v37, v38);
  _Unwind_Resume(a1);
}

void sub_22E37574C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29)
{
  if (*(v31 - 73) < 0)
  {
    operator delete(*(v31 - 96));
    if ((a16 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a22 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((a16 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p);
  if ((a22 & 0x80000000) == 0)
  {
LABEL_4:
    if ((a28 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

LABEL_9:
  operator delete(a17);
  if ((a28 & 0x80000000) == 0)
  {
LABEL_5:
    v33 = a29;
    if (!a29)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

LABEL_10:
  operator delete(a23);
  v33 = a29;
  if (!a29)
  {
LABEL_6:
    MEMORY[0x2318E5730](v29, v30);
    _Unwind_Resume(a1);
  }

LABEL_11:
  operator delete(v33);
  MEMORY[0x2318E5730](v29, v30);
  _Unwind_Resume(a1);
}

void sub_22E375918(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    operator delete(v14);
    _Unwind_Resume(a1);
  }

  operator delete(v14);
  _Unwind_Resume(a1);
}

void sub_22E375950(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 23) < 0)
  {
    sub_22E3404E0(v7, *a3, *(a3 + 8));
    if (*(a3 + 23) < 0)
    {
      sub_22E3404E0(__p, *a3, *(a3 + 8));
LABEL_5:
      MPSKernelUserDAGOp::MPSKernelUserDAGOp(a1);
    }
  }

  else
  {
    *v7 = *a3;
    v8 = *(a3 + 16);
  }

  *__p = *a3;
  v6 = *(a3 + 16);
  goto LABEL_5;
}

void sub_22E375A38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if ((a21 & 0x80000000) == 0)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

void sub_22E375D40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    operator delete(v14);
    _Unwind_Resume(a1);
  }

  operator delete(v14);
  _Unwind_Resume(a1);
}

void sub_22E376090(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  operator delete(v16);
  MEMORY[0x2318E5730](v14, v15);
  _Unwind_Resume(a1);
}

void sub_22E376218(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  operator delete(v16);
  MEMORY[0x2318E5730](v14, v15);
  _Unwind_Resume(a1);
}

void sub_22E3763A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  operator delete(v16);
  MEMORY[0x2318E5730](v14, v15);
  _Unwind_Resume(a1);
}

void sub_22E376528(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  operator delete(v16);
  MEMORY[0x2318E5730](v14, v15);
  _Unwind_Resume(a1);
}

void sub_22E3766B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  operator delete(v16);
  MEMORY[0x2318E5730](v14, v15);
  _Unwind_Resume(a1);
}

void sub_22E376844(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  operator delete(v16);
  MEMORY[0x2318E5730](v14, v15);
  _Unwind_Resume(a1);
}

void sub_22E3769D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  operator delete(v16);
  MEMORY[0x2318E5730](v14, v15);
  _Unwind_Resume(a1);
}

void sub_22E376B6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  operator delete(v16);
  MEMORY[0x2318E5730](v14, v15);
  _Unwind_Resume(a1);
}

void sub_22E376D00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  operator delete(v16);
  MEMORY[0x2318E5730](v14, v15);
  _Unwind_Resume(a1);
}

void sub_22E376E94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  operator delete(v16);
  MEMORY[0x2318E5730](v14, v15);
  _Unwind_Resume(a1);
}

void sub_22E377030(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  operator delete(v16);
  MEMORY[0x2318E5730](v14, v15);
  _Unwind_Resume(a1);
}

void sub_22E377084(MPSKernelUserDAGOp *a1)
{
  MPSKernelUserDAGOp::~MPSKernelUserDAGOp(a1);

  JUMPOUT(0x2318E5730);
}

void sub_22E3770C0(MPSKernelUserDAGOp *a1)
{
  MPSKernelUserDAGOp::~MPSKernelUserDAGOp(a1);

  JUMPOUT(0x2318E5730);
}

void sub_22E3770FC(MPSKernelUserDAGOp *a1)
{
  MPSKernelUserDAGOp::~MPSKernelUserDAGOp(a1);

  JUMPOUT(0x2318E5730);
}

void sub_22E377138(MPSKernelUserDAGOp *a1)
{
  MPSKernelUserDAGOp::~MPSKernelUserDAGOp(a1);

  JUMPOUT(0x2318E5730);
}

void sub_22E377174(MPSKernelUserDAGOp *a1)
{
  MPSKernelUserDAGOp::~MPSKernelUserDAGOp(a1);

  JUMPOUT(0x2318E5730);
}

void sub_22E3771B0(MPSKernelUserDAGOp *a1)
{
  MPSKernelUserDAGOp::~MPSKernelUserDAGOp(a1);

  JUMPOUT(0x2318E5730);
}

void sub_22E3771EC(MPSKernelUserDAGOp *a1)
{
  MPSKernelUserDAGOp::~MPSKernelUserDAGOp(a1);

  JUMPOUT(0x2318E5730);
}

void sub_22E377228(MPSKernelUserDAGOp *a1)
{
  MPSKernelUserDAGOp::~MPSKernelUserDAGOp(a1);

  JUMPOUT(0x2318E5730);
}

void sub_22E377264(MPSKernelUserDAGOp *a1)
{
  MPSKernelUserDAGOp::~MPSKernelUserDAGOp(a1);

  JUMPOUT(0x2318E5730);
}

void sub_22E3772A0(MPSKernelUserDAGOp *a1)
{
  MPSKernelUserDAGOp::~MPSKernelUserDAGOp(a1);

  JUMPOUT(0x2318E5730);
}

void sub_22E3772DC(MPSKernelUserDAGOp *a1)
{
  MPSKernelUserDAGOp::~MPSKernelUserDAGOp(a1);

  JUMPOUT(0x2318E5730);
}

void sub_22E377318(MPSKernelUserDAGOp *a1)
{
  MPSKernelUserDAGOp::~MPSKernelUserDAGOp(a1);

  JUMPOUT(0x2318E5730);
}

void sub_22E377354(MPSKernelUserDAGOp *a1)
{
  MPSKernelUserDAGOp::~MPSKernelUserDAGOp(a1);

  JUMPOUT(0x2318E5730);
}

void sub_22E377390(MPSKernelUserDAGOp *a1)
{
  MPSKernelUserDAGOp::~MPSKernelUserDAGOp(a1);

  JUMPOUT(0x2318E5730);
}

uint64_t MPSEncodeCopyTexture(MPSDevice *this, const char *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, int64x2_t *a7)
{
  v7 = a7;
  v8 = a4;
  v9 = a2;
  v10 = this;
  v11 = a7[1];
  v12 = a7[2].i64[0];
  v13 = a7[2].i64[1];
  v14 = a7[3].i64[0];
  v15 = a7[3].i64[1];
  v16 = a7->i64[0];
  v17 = a7->i64[1];
  if (a7->i64[0] == v17)
  {
    if (a4 == a5)
    {
      return -18;
    }

    v204 = a7[3].i64[1];
    v21 = a7[2].i64[1];
    v22 = a7[3].i64[0];
    v24 = a6;
    v25 = a7->i64[1];
    v26 = a7->i64[0];
    v29 = a5;
    v208 = a7[1];
    v30 = a7[2].i64[0];
    isEqual = objc_msgSend_isEqual_(a4, a2, a5, a4, a5);
    LOWORD(v12) = v30;
    v11 = v208;
    a5 = v29;
    v10 = this;
    v8 = a4;
    v16 = v26;
    v17 = v25;
    a6 = v24;
    v9 = a2;
    v14 = v22;
    v13 = v21;
    v15 = v204;
    v7 = a7;
    if (isEqual)
    {
      return -18;
    }
  }

  if (v14)
  {
    v18 = v13 == 0;
  }

  else
  {
    v18 = 1;
  }

  if (v18)
  {
    return 0;
  }

  v19 = *v17;
  if ((*v16 & 0x40000000000) == 0)
  {
    if ((v19 & 0x40000000000) != 0)
    {
      return -20;
    }

LABEL_14:
    v203 = v12;
    v205 = a6;
    v209 = v11;
    v207 = a5;
    MPSLibrary_DoNotUse = MPSDevice::GetMPSLibrary_DoNotUse(v10, &stru_2787C0860, a3, a4, a5);
    v37 = MPSLibrary_DoNotUse;
    v38 = *v16;
    v39 = *v17;
    if ((*v16 & 0x3800000000000000) != 0x2800000000000000 && (*v17 & 0x3800000000000000) != 0x2800000000000000)
    {
      if ((v38 & 0x10000000000) != 0)
      {
        v49 = 4;
      }

      else
      {
        v49 = 2;
      }

      if ((v38 & 0x40000000000) != 0)
      {
        v50 = v49;
      }

      else
      {
        v50 = 0;
      }

      if (objc_msgSend_textureType(v8, v33, v34, v35, v36) == 3)
      {
        v51 = v50 + 1;
      }

      else
      {
        v51 = v50;
      }

      ComputeState = MPSLibrary::GetComputeState(v37, v51, xmmword_22E37D5F0, 1, 0, 0, 0);
      if (ComputeState)
      {
        objc_msgSend_setComputePipelineState_(v9, v53, ComputeState, v54, v55);
        v56 = vmovn_s64(v7[4]);
        v56.i16[1] = v56.i16[2];
        v56.i16[2] = v7[5].i16[0];
        v57 = vmovn_s64(v209);
        v57.i16[1] = v57.i16[2];
        v57.i16[2] = v203;
        *v220.i8 = v56;
        v220.u64[1] = v57;
        v56.i16[0] = v13;
        v56.i16[1] = v14;
        v56.i16[2] = v15;
        *&v221 = v56;
        objc_msgSend_setTexture_atIndex_(v9, v58, v8, 0, v59);
        objc_msgSend_setTexture_atIndex_(v9, v60, v207, 1, v61);
        objc_msgSend_setBytes_length_atIndex_(v9, v62, &v220, 24, 0);
        Sampler = MPSDevice::GetSampler(v10, v205, 0, 0, 2);
        objc_msgSend_setSamplerState_atIndex_(v9, v64, Sampler, 0, v65);
        v217 = (v13 + 15) >> 4;
        v218 = (v14 + 15) >> 4;
        *v219 = v15;
        v212 = vdupq_n_s64(0x10uLL);
        v213 = 1;
        objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v9, v66, &v217, &v212, v67);
        return 0;
      }

      return -1;
    }

    v201 = MPSLibrary_DoNotUse;
    v41 = (*(v10 + 185) >> 53) & 0x1FFLL;
    v224 = 0u;
    v223 = 0u;
    v222 = 0u;
    v221 = 0u;
    v198 = v41;
    v220.i64[0] = v41;
    v42 = (v39 >> 59) & 7;
    v43 = objc_msgSend_textureType(v207, v33, v34, v35, v36);
    v200 = v9;
    if (v42 - 1 > 4)
    {
      v48 = 0;
    }

    else
    {
      v48 = dword_22E37D640[v42 - 1];
    }

    if (v43 == 3)
    {
      v68 = v48 + 1;
    }

    else
    {
      v68 = v48;
    }

    v69 = objc_msgSend_device(v207, v44, v45, v46, v47);
    MPSDevice = MPSDevice::GetMPSDevice(v69);
    v75 = objc_msgSend_pixelFormat(v207, v71, v72, v73, v74);
    if ((MPSDevice::GetPixelInfo(MPSDevice, v75, v42) & 0x3000000) != 0)
    {
      v68 |= 4u;
    }

    v80 = (*v16 >> 59) & 7;
    v81 = objc_msgSend_textureType(v8, v76, v77, v78, v79);
    v199 = v17;
    if (v80 - 1 > 4)
    {
      LOWORD(v86) = 0;
    }

    else
    {
      v86 = dword_22E37D640[v80 - 1];
    }

    if (v81 == 3)
    {
      v87 = v86 + 1;
    }

    else
    {
      v87 = v86;
    }

    v88 = objc_msgSend_device(v8, v82, v83, v84, v85);
    v89 = MPSDevice::GetMPSDevice(v88);
    v94 = objc_msgSend_pixelFormat(v8, v90, v91, v92, v93);
    PixelInfo = MPSDevice::GetPixelInfo(v89, v94, v80);
    v96 = v87 << 6;
    if ((PixelInfo & 0x3000000) != 0)
    {
      v96 = (v87 << 6) | 0x100;
    }

    v220.i64[1] = v96 & 0xFC0 | v68;
    v97 = MPSLibrary::GetComputeState(v201, 6u, &v220, 0, 0, 0, 0);
    if (!v97)
    {
      return -1;
    }

    v102 = v97;
    v103 = objc_msgSend_arrayLength(v8, v98, v99, v100, v101);
    v108 = objc_msgSend_arrayLength(v207, v104, v105, v106, v107);
    if (v103 >= v108)
    {
      v113 = v108;
    }

    else
    {
      v113 = v103;
    }

    v114.i16[3] = 1;
    v114.i16[0] = v13;
    v114.i16[1] = v14;
    v114.i16[2] = v113;
    v202 = v114;
    v119 = objc_msgSend_maxTotalThreadsPerThreadgroup(v102, v109, v110, v111, v112, v113);
    v120 = *(v10 + 2);
    v121 = vmax_u16(v202, 0x1000100010001);
    v212 = 0uLL;
    v213 = 0;
    v197 = v121;
    if (v120)
    {
      objc_msgSend_maxThreadsPerThreadgroup(v120, v115, v116, v117, v118);
      v121 = v197;
      v122 = v212.u64[1];
      v123 = v212.i64[0];
      v124 = v213;
    }

    else
    {
      v124 = 0;
      v122 = 0;
      v123 = 0;
    }

    v125 = v121.i16[0];
    v126 = v121.u16[1];
    v127 = v121.u16[2];
    if (v121.u16[0] * v121.u16[1] * v121.u16[2] <= v119 && v123 >= v121.u16[0] && v122 >= v121.u16[1] && v124 >= v121.u16[2])
    {
      v131 = v121;
      v132 = v121.u16[0];
      v133 = v121.u16[1];
      v134 = v121.u16[2];
    }

    else
    {
      if (v120)
      {
        v217 = 0;
        v218 = 0;
        *v219 = 0;
        objc_msgSend_maxThreadsPerThreadgroup(v120, v115, v116, v117, v118);
        v122 = v212.u64[1];
        v123 = v212.i64[0];
        v124 = v213;
      }

      v135 = (64 - __clz(v119)) >> 1;
      if (v135 >= 0x8000000000000000)
      {
        v136 = 0x8000000000000000;
      }

      else
      {
        v136 = v135;
      }

      if (v119 >> v136)
      {
        LOWORD(v137) = 0;
      }

      else
      {
        v137 = v119 >> v136;
      }

      if (v123 >= v125)
      {
        v138 = v125;
      }

      else
      {
        v138 = v123;
      }

      if (v122 >= v126)
      {
        v139 = v126;
      }

      else
      {
        v139 = v122;
      }

      if (v124 >= v127)
      {
        v140 = v127;
      }

      else
      {
        v140 = v124;
      }

      v141 = v137;
      if (v137)
      {
        v141 = (v137 + v125 - 1) / v137;
      }

      v121.i16[3] = v197.i16[3];
      v131.i16[2] = 1;
      v142 = 1 << v136;
      if (v136 <= 0xF)
      {
        v143 = (v142 + v126 - 1) / v142;
      }

      else
      {
        v143 = 0;
      }

      if (v141)
      {
        v144 = (v141 + v125 - 1) / v141;
      }

      else
      {
        v144 = 0;
      }

      v131.i16[0] = v137;
      if (v143)
      {
        v145 = (v143 + v126 - 1) / v143;
      }

      else
      {
        v145 = 0;
      }

      if (v144 >= v138)
      {
        v132 = v138;
      }

      else
      {
        v132 = v144;
      }

      if (v145 >= v139)
      {
        v133 = v139;
      }

      else
      {
        v133 = v145;
      }

      if (v119 / (v133 * v132) >= v140)
      {
        v146 = v140;
      }

      else
      {
        v146 = v119 / (v133 * v132);
      }

      if (v197.u16[3] < 2u || v146 < 2)
      {
        v134 = v146;
      }

      else
      {
        do
        {
          v134 = v146;
          v147 = v127 / v146 * v146;
          --v146;
        }

        while (v127 != v147);
      }

      v148 = v119 - v134 * v133 * v132;
      if (v145 < v139)
      {
        v149 = v134 * v132;
        if (v148 > v134 * v132)
        {
          v133 += v148 / v149;
          if (v133 >= v139)
          {
            v133 = v139;
          }

          v148 = v119 - v133 * v149;
        }
      }

      v131.i16[1] = v142;
      if (v144 < v138)
      {
        v150 = v133 * v134;
        if (v148 > v133 * v134)
        {
          v132 += v148 / v150;
          if (v132 >= v138)
          {
            v132 = v138;
          }

          v148 = v119 - v132 * v150;
        }
      }

      if (v134 < v140 && v148 > v132 * v133)
      {
        v134 += v148 / (v132 * v133);
        if (v134 >= v140)
        {
          v134 = v140;
        }

        if (v197.u16[3] >= 2u && v134 >= 2)
        {
          do
          {
            v151 = v134;
            v152 = v127 / v134 * v134;
            --v134;
          }

          while (v127 != v152);
          v134 = v151;
        }
      }
    }

    v153 = v131.i16[0];
    if (v131.i16[0])
    {
      v154 = (v131.u16[0] + v125 - 1) / v131.u16[0];
      LOWORD(v155) = v154;
      v156 = v131.u16[1];
      if (v131.i16[1])
      {
        goto LABEL_127;
      }
    }

    else
    {
      LOWORD(v154) = 0;
      LOWORD(v155) = 0;
      v156 = v131.u16[1];
      if (v131.i16[1])
      {
LABEL_127:
        v157 = (v156 + v126 - 1) / v156;
        WORD1(v155) = v157;
        v158 = v131.u16[2];
        if (v131.i16[2])
        {
          goto LABEL_128;
        }

        goto LABEL_134;
      }
    }

    LOWORD(v157) = 0;
    WORD1(v155) = 0;
    v158 = v131.u16[2];
    if (v131.i16[2])
    {
LABEL_128:
      v159 = (v127 + v158 - 1) / v158;
      WORD2(v155) = v159;
      if (v132)
      {
        goto LABEL_129;
      }

      goto LABEL_135;
    }

LABEL_134:
    LOWORD(v159) = 0;
    WORD2(v155) = 0;
    if (v132)
    {
LABEL_129:
      v160 = (v132 + v125 - 1) / v132;
      HIWORD(v155) = v121.i16[3];
      if (v133)
      {
        goto LABEL_130;
      }

      goto LABEL_136;
    }

LABEL_135:
    LOWORD(v160) = 0;
    HIWORD(v155) = v121.i16[3];
    if (v133)
    {
LABEL_130:
      v161 = (v133 + v126 - 1) / v133;
      if (v134)
      {
LABEL_131:
        v162 = v198;
        v163 = v8;
        v164 = (v127 + v134 - 1) / v134;
LABEL_138:
        LOWORD(v165) = v160;
        WORD1(v165) = v161;
        WORD2(v165) = v164;
        HIWORD(v165) = v121.i16[3];
        if (v161 * v160 * v164 < v157 * v154 * v159)
        {
          v153 = v132;
        }

        else
        {
          LOWORD(v134) = v158;
          LOWORD(v133) = v156;
          v165 = v155;
        }

        v166 = v153;
        v167 = v133;
        v168 = v134;
        if ((*(v199 + 3) & 0xE) != 0)
        {
          v169 = *(v199 + 3) & 0xF;
        }

        else
        {
          v169 = 1;
        }

        *&v219[14] = 0;
        *&v219[16] = 0;
        v170 = vmovn_s64(v209);
        LOWORD(v171) = v170.i16[0];
        HIWORD(v171) = v170.i16[2];
        v217 = v171;
        v218 = v202;
        *v219 = v169;
        v172 = 65537;
        *&v219[2] = 65537;
        *&v219[6] = (v133 * v134 * v153);
        *&v219[10] = 1;
        if ((*(v16 + 3) & 0xE) != 0)
        {
          v173 = *(v16 + 3) & 0xF;
        }

        else
        {
          v173 = 1;
        }

        v174 = vmovn_s64(v7[4]);
        v212.i16[1] = v174.i16[2];
        v212.i16[0] = v174.i16[0];
        *(v212.i64 + 4) = 0x1000100000000;
        v212.i16[7] = v174.i16[2];
        v212.i16[6] = v174.i16[0];
        v213 = 0x1000100010001;
        v214 = v7[2].i32[0] * v173;
        v215 = v7[3].i32[2] * v173;
        v175 = v165;
        v176 = WORD1(v165);
        v216 = 0x10000;
        v177 = (WORD2(v165) * HIWORD(v165));
        v178 = 0x80000000 / v196;
        v179 = __clz(v178);
        v180 = v178 >> (16 - v179);
        v181 = v179 + 15;
        v182 = -65536 * v196 * v180 / v196;
        if (v182 <= v180)
        {
          v183 = v180;
        }

        else
        {
          v183 = v180 + 1;
        }

        if (v182 <= v180)
        {
          LOWORD(v180) = 0;
        }

        v184 = (v181 << 48) | ((v182 - v180) << 32) | (v183 << 16) | v196;
        if (v196 >= 2u)
        {
          v172 = v184;
        }

        *&v219[12] = v172;
        objc_msgSend_setComputePipelineState_(v200, v164, v102, v164, v118);
        objc_msgSend_setTexture_atIndex_(v200, v185, v163, v162, v186);
        objc_msgSend_setBytes_length_atIndex_(v200, v187, &v212, 32, 1);
        v188 = MPSDevice::GetSampler(v10, v205, 0, 0, 2);
        objc_msgSend_setSamplerState_atIndex_(v200, v189, v188, 1, v190);
        objc_msgSend_setTexture_atIndex_(v200, v191, v207, 0, v192);
        objc_msgSend_setBytes_length_atIndex_(v200, v193, &v217, 40, 0);
        v211[0] = v175;
        v211[1] = v176;
        v211[2] = v177;
        v210[0] = v166;
        v210[1] = v167;
        v210[2] = v168;
        objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v200, v194, v211, v210, v195);
        return 0;
      }

LABEL_137:
      v162 = v198;
      v163 = v8;
      v164 = 0;
      goto LABEL_138;
    }

LABEL_136:
    LOWORD(v161) = 0;
    if (v134)
    {
      goto LABEL_131;
    }

    goto LABEL_137;
  }

  result = -20;
  if ((v19 & 0x40000000000) != 0 && ((v19 ^ *v16) & 0x10000000000) == 0)
  {
    goto LABEL_14;
  }

  return result;
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