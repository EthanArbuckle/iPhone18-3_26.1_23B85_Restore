uint64_t io_service_wait_quiet_with_options(unsigned int a1, uint64_t a2, int a3)
{
  v8 = *MEMORY[0x277D85EF8];
  v9 = a2;
  v10 = a3;
  *&v7.msgh_bits = 0x2C00001513;
  *&v7.msgh_remote_port = __PAIR64__(mig_get_reply_port(), a1);
  *&v7.msgh_voucher_port = 0xB4A00000000;
  v3 = mach_msg2_internal();
  v4 = v3;
  if ((v3 - 268435458) > 0xE || ((1 << (v3 - 2)) & 0x4003) == 0)
  {
    if (v3)
    {
      mig_dealloc_reply_port(v7.msgh_local_port);
    }

    else
    {
      v4 = 4294966995;
      mach_msg_destroy(&v7);
    }
  }

  else
  {
    mig_put_reply_port(v7.msgh_local_port);
  }

  return v4;
}

IOReturn IOReporter::configureAllReports(OSCollection *reporters, OSData *channels, IOReportConfigureAction action, uint32_t *outCount)
{
  v7 = channelListWithData(channels);
  v8 = -536870206;
  if (outCount && reporters && v7)
  {
    v20 = 0;
    v21 = &v20;
    v22 = 0x2000000000;
    v23 = 0;
    v16 = 0;
    v17 = &v16;
    v18 = 0x2000000000;
    v19 = -536870212;
    if (action > 2)
    {
      v8 = -536870201;
    }

    else
    {
      v12 = 0;
      v13 = &v12;
      v14 = 0x2000000000;
      v15 = 1;
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 1107296256;
      v10[2] = ___ZN10IOReporter19configureAllReportsEP12OSCollectionP6OSDatajPj_block_invoke;
      v10[3] = &__block_descriptor_tmp_2;
      v11 = action;
      v10[4] = &v20;
      v10[5] = &v16;
      v10[6] = &v12;
      v10[7] = v7;
      (reporters->iterateObjects)(reporters, v10);
      if (v13[3])
      {
        _Block_object_dispose(&v12, 8);
        v8 = 0;
        *outCount = *(v21 + 6);
      }

      else
      {
        v8 = *(v17 + 6);
        _Block_object_dispose(&v12, 8);
      }
    }

    _Block_object_dispose(&v16, 8);
    _Block_object_dispose(&v20, 8);
  }

  return v8;
}

unsigned int *channelListWithData(OSData *a1)
{
  if (OSData::getLength(a1) < 8)
  {
    return 0;
  }

  BytesNoCopy = OSData::getBytesNoCopy(a1);
  v4 = (16 * *BytesNoCopy) | 8;
  if (OSData::getLength(a1) >= v4)
  {
    return BytesNoCopy;
  }

  else
  {
    return 0;
  }
}

BOOL ___ZN10IOReporter19configureAllReportsEP12OSCollectionP6OSDatajPj_block_invoke(uint64_t a1, OSMetaClassBase *anObject)
{
  v3 = OSMetaClassBase::safeMetaCast(anObject, gIOReporterMetaClass);
  if (v3)
  {
    IOReporter::configureReport(v3, *(a1 + 56), *(a1 + 64), (*(*(a1 + 32) + 8) + 24));
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = -536870201;
    *(*(*(a1 + 48) + 8) + 24) = 0;
  }

  return (*(*(*(a1 + 48) + 8) + 24) & 1) == 0;
}

void __copy_helper_block_8_32r40r48r(uint64_t a1, uint64_t a2)
{
  _Block_object_assign((a1 + 32), *(a2 + 32), 8);
  _Block_object_assign((a1 + 40), *(a2 + 40), 8);
  v4 = *(a2 + 48);

  _Block_object_assign((a1 + 48), v4, 8);
}

void __destroy_helper_block_8_32r40r48r(uint64_t a1)
{
  _Block_object_dispose(*(a1 + 48), 8);
  _Block_object_dispose(*(a1 + 40), 8);
  v2 = *(a1 + 32);

  _Block_object_dispose(v2, 8);
}

IOReturn IOReporter::updateAllReports(OSCollection *reporters, OSData *channels, IOReportConfigureAction action, uint32_t *outElementCount, uint64_t offset, uint64_t capacity, IOMemoryDescriptor *buffer)
{
  v13 = channelListWithData(channels);
  v14 = -536870206;
  if (buffer)
  {
    if (reporters)
    {
      if (outElementCount)
      {
        v15 = v13;
        if (v13)
        {
          v35[0] = 0;
          v35[1] = v35;
          v35[2] = 0x2000000000;
          v35[3] = capacity;
          if (__CFADD__(offset, capacity))
          {
            v14 = -536870168;
          }

          else
          {
            map = 0;
            v16 = IOMemoryDescriptor::CreateMapping(buffer, 0, 0, 0, offset + capacity, 0, &map, 0);
            v14 = v16;
            if (!v16)
            {
              v17 = map;
              v33[0] = 0;
              v33[1] = v33;
              v33[2] = 0x2000000000;
              v33[3] = IOMemoryMap::GetAddress(map) + offset;
              v29 = 0;
              v30 = &v29;
              v31 = 0x2000000000;
              v32 = 0;
              v25 = 0;
              v26 = &v25;
              v27 = 0x2000000000;
              v28 = -536870212;
              if (action == 1)
              {
                v21 = 0;
                v22 = &v21;
                v23 = 0x2000000000;
                v24 = 1;
                v19[0] = MEMORY[0x277D85DD0];
                v19[1] = 1107296256;
                v19[2] = ___ZN10IOReporter16updateAllReportsEP12OSCollectionP6OSDatajPjyyP18IOMemoryDescriptor_block_invoke;
                v19[3] = &__block_descriptor_tmp_1;
                v20 = 1;
                v19[4] = &v29;
                v19[5] = v33;
                v19[6] = v35;
                v19[7] = &v25;
                v19[8] = &v21;
                v19[9] = v15;
                (reporters->iterateObjects)(reporters, v19);
                if (v22[3])
                {
                  _Block_object_dispose(&v21, 8);
                  v14 = 0;
                  *outElementCount = *(v30 + 6);
                }

                else
                {
                  v14 = *(v26 + 6);
                  _Block_object_dispose(&v21, 8);
                }
              }

              else
              {
                v14 = -536870201;
              }

              _Block_object_dispose(&v25, 8);
              _Block_object_dispose(&v29, 8);
              _Block_object_dispose(v33, 8);
              if (v17)
              {
                (v17->release)(v17);
              }
            }
          }

          _Block_object_dispose(v35, 8);
        }
      }
    }
  }

  return v14;
}

BOOL ___ZN10IOReporter16updateAllReportsEP12OSCollectionP6OSDatajPjyyP18IOMemoryDescriptor_block_invoke(uint64_t a1, OSMetaClassBase *anObject)
{
  v3 = OSMetaClassBase::safeMetaCast(anObject, gIOReporterMetaClass);
  if (v3)
  {
    IOReporter::updateReport(v3, *(a1 + 72), *(a1 + 80), (*(*(a1 + 32) + 8) + 24), (*(*(a1 + 40) + 8) + 24), (*(*(a1 + 48) + 8) + 24));
  }

  else
  {
    *(*(*(a1 + 56) + 8) + 24) = -536870201;
    *(*(*(a1 + 64) + 8) + 24) = 0;
  }

  return (*(*(*(a1 + 64) + 8) + 24) & 1) == 0;
}

void __copy_helper_block_8_32r40r48r56r64r(uint64_t a1, uint64_t a2)
{
  _Block_object_assign((a1 + 32), *(a2 + 32), 8);
  _Block_object_assign((a1 + 40), *(a2 + 40), 8);
  _Block_object_assign((a1 + 48), *(a2 + 48), 8);
  _Block_object_assign((a1 + 56), *(a2 + 56), 8);
  v4 = *(a2 + 64);

  _Block_object_assign((a1 + 64), v4, 8);
}

void __destroy_helper_block_8_32r40r48r56r64r(uint64_t a1)
{
  _Block_object_dispose(*(a1 + 64), 8);
  _Block_object_dispose(*(a1 + 56), 8);
  _Block_object_dispose(*(a1 + 48), 8);
  _Block_object_dispose(*(a1 + 40), 8);
  v2 = *(a1 + 32);

  _Block_object_dispose(v2, 8);
}

void IOReporter_IVars::IOReporter_IVars(IOReporter_IVars *this, IOService *a2, IOReportChannelType a3, uint64_t a4)
{
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 7) = 0;
  *(this + 32) = 0;
  *this = &unk_284AFB0C0;
  *(this + 1) = 0;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 20) = 0;
  *(this + 10) = 0;
  *(this + 11) = 0;
  *(this + 9) = 0;
  *(this + 24) = 0;
  *(this + 13) = 0;
  *(this + 14) = 0;
  if (a3.report_format && !IOService::GetRegistryEntryID(a2, this + 2, 0) && *(this + 2) && (*&a3 & 0x800000000000) == 0)
  {
    *(this + 20) = a3.nelements;
    *(this + 8) = a3.report_format;
    *(this + 11) = HIBYTE(a3.categories);
    *(this + 9) = *&a3.report_format >> 8;
    *(this + 6) = a3.nelements;
    *(this + 7) = a3.element_idx;
    v7 = 0x100007980000018;
    if (a4 != 0x101000000000000)
    {
      v7 = a4;
    }

    *(this + 11) = v7;
    *(this + 14) = IOLockAlloc();
    *(this + 64) = 0;
    *(this + 13) = IOLockAlloc();
    *(this + 65) = 0;
    *(this + 7) = OSArray::withCapacity(1u);
  }
}

void IOReporter::free(IOReporter *this)
{
  ivars = this->ivars;
  if (ivars)
  {
    (*(*ivars + 8))(ivars);
    this->ivars = 0;
  }

  OSObject::free(this);
}

void IOReporter_IVars::~IOReporter_IVars(IOReporter_IVars *this)
{
  *this = &unk_284AFB0C0;
  v2 = *(this + 13);
  if (v2)
  {
    IOLockFree(v2);
  }

  v3 = *(this + 14);
  if (v3)
  {
    IOLockFree(v3);
  }

  v4 = *(this + 3);
  if (v4)
  {
    v5 = *(this + 11);
    if (v5 <= 0)
    {
      IOReporter_IVars::~IOReporter_IVars();
    }

    if (v5 >> 25)
    {
      IOReporter_IVars::~IOReporter_IVars();
    }

    IOFree(v4, v5 << 6);
  }

  v6 = *(this + 4);
  if (v6)
  {
    v7 = *(this + 12);
    if (v7 <= 0)
    {
      IOReporter_IVars::~IOReporter_IVars();
    }

    if (v7 >> 29)
    {
      IOReporter_IVars::~IOReporter_IVars();
    }

    IOFree(v6, 4 * v7);
  }

  v8 = *(this + 7);
  if (v8)
  {
    (*(*v8 + 16))(v8);
  }
}

{
  IOReporter_IVars::~IOReporter_IVars(this);

  JUMPOUT(0x2383EBD30);
}

IOReturn IOReporter::addChannel(IOReporter *this, uint64_t channelID, const char *channelName)
{
  v6 = -536870211;
  ivars = this->ivars;
  IOLockLock(*(ivars + 13));
  *(ivars + 65) = 1;
  v8 = this->ivars;
  v9 = *(v8 + 12);
  if (v9 > 0x7FFFFFFE)
  {
    v10 = 0;
    v11 = 0;
    v6 = -536870168;
    goto LABEL_17;
  }

  v11 = v9 + 1;
  if ((*(**(v8 + 7) + 88))(*(v8 + 7), v11) <= v9)
  {
    v10 = 0;
    goto LABEL_17;
  }

  if (channelName)
  {
    v10 = OSString::withCString(channelName);
    if (!v10)
    {
      goto LABEL_17;
    }
  }

  else
  {
    if (noChannelName(void)::once != -1)
    {
      IOReporter::addChannel();
    }

    v10 = noChannelName(void)::name;
    if (noChannelName(void)::name)
    {
      (*(*noChannelName(void)::name + 8))(noChannelName(void)::name);
    }
  }

  v12 = (*(*this->ivars + 16))(this->ivars, v9 + 1);
  if (v12)
  {
    v6 = v12;
  }

  else
  {
    v13 = this->ivars;
    IOLockLock(*(v13 + 14));
    *(v13 + 64) = 1;
    v6 = (*(*this->ivars + 24))(this->ivars, channelID, v10);
    v14 = this->ivars;
    *(v14 + 64) = 0;
    IOLockUnlock(*(v14 + 14));
    if (v6)
    {
      v11 = v11;
    }

    else
    {
      v11 = v9;
    }
  }

LABEL_17:
  (*(*this->ivars + 32))(this->ivars, v11);
  v15 = this->ivars;
  *(v15 + 65) = 0;
  IOLockUnlock(*(v15 + 13));
  if (v10)
  {
    (v10->release)(v10);
  }

  return v6;
}

OSPtr<IOReportLegendEntry> IOReporter::createLegend(IOReporter *this)
{
  ivars = this->ivars;
  IOLockLock(*(ivars + 13));
  *(ivars + 65) = 1;
  (*(*this->ivars + 56))(&v6);
  v3 = v6;
  v4 = this->ivars;
  *(v4 + 65) = 0;
  IOLockUnlock(*(v4 + 13));
  return v3;
}

uint64_t IOReporter_IVars::handleSwapPrepare(IOReporter_IVars *this, signed int a2)
{
  if ((*(this + 65) & 1) == 0)
  {
    IOReporter_IVars::handleSwapPrepare();
  }

  if (*(this + 12) > a2)
  {
    IOReporter_IVars::handleSwapPrepare();
  }

  v4 = 3758097128;
  if (a2 < 1 || (v5 = *(this + 20), !*(this + 20)))
  {
    v6 = 0;
    v7 = 0;
    v4 = 3758097127;
    goto LABEL_13;
  }

  if (*(this + 9) || *(this + 10))
  {
    IOReporter_IVars::handleSwapPrepare();
  }

  if (0x7FFFFFFF / v5 >= a2)
  {
    if (!((v5 * a2) >> 25))
    {
      v6 = (v5 * a2) << 6;
      v11 = IOMallocTyped(v6, 0x1000040FA0F61DDuLL);
      *(this + 9) = v11;
      if (v11)
      {
        bzero(v11, v6);
        if (a2 >> 29)
        {
          IOLog("%s - %s > INT_MAX / sizeof(%s)!\n", "handleSwapPrepare", "newNChannels", "int");
          goto LABEL_11;
        }

        v7 = (4 * a2);
        v12 = IOMallocTyped(v7, 0x100004052888210uLL);
        *(this + 10) = v12;
        if (v12)
        {
          bzero(v12, v7);
          return 0;
        }
      }

      else
      {
        v7 = 0;
      }

      v4 = 3758097085;
      goto LABEL_13;
    }

    IOLog("%s - %s > INT_MAX / sizeof(%s)!\n", "handleSwapPrepare", "newNElements", "IOReportElement");
  }

  v6 = 0;
LABEL_11:
  v7 = 0;
LABEL_13:
  v8 = *(this + 9);
  if (v8)
  {
    IOFree(v8, v6);
    *(this + 9) = 0;
  }

  v9 = *(this + 10);
  if (v9)
  {
    IOFree(v9, v7);
    *(this + 10) = 0;
  }

  return v4;
}

uint64_t IOReporter_IVars::handleAddChannelSwap(IOReporter_IVars *this, uint64_t a2, const OSString *a3)
{
  if ((*(this + 65) & 1) == 0)
  {
    IOReporter_IVars::handleAddChannelSwap();
  }

  if ((*(this + 64) & 1) == 0)
  {
    IOReporter_IVars::handleAddChannelSwap();
  }

  v4 = 3758097084;
  v5 = *(this + 9);
  if (v5)
  {
    v6 = *(this + 10);
    if (v6)
    {
      v9 = *(this + 3);
      if (v9)
      {
        v10 = *(this + 11);
        if (v10 <= 0)
        {
          IOReporter_IVars::handleAddChannelSwap();
        }

        if (v10 >> 25)
        {
          IOReporter_IVars::handleAddChannelSwap();
        }

        memcpy(v5, v9, v10 << 6);
        v11 = *(this + 11);
        if (v11 <= 0)
        {
          IOReporter_IVars::handleAddChannelSwap();
        }

        if (v11 >> 29)
        {
          IOReporter_IVars::handleAddChannelSwap();
        }

        memcpy(*(this + 10), *(this + 4), 4 * *(this + 12));
        v12 = *(this + 3);
        v5 = *(this + 9);
        v6 = *(this + 10);
      }

      else
      {
        v12 = 0;
      }

      v13 = *(this + 4);
      *(this + 3) = v5;
      *(this + 4) = v6;
      *(this + 9) = v12;
      *(this + 10) = v13;
      if (*(this + 20))
      {
        v14 = 0;
        LODWORD(v15) = *(this + 11);
        do
        {
          v16 = &v5[64 * (v14 + v15)];
          *v16 = *(this + 2);
          *(v16 + 1) = a2;
          *(v16 + 2) = *(this + 1);
          v5 = *(this + 3);
          v15 = *(this + 11);
          *&v5[64 * v14 + 22 + 64 * v15] = v14;
          ++v14;
        }

        while (v14 < *(this + 20));
      }

      if (OSArray::setObject(*(this + 7), *(this + 12), a3))
      {
        v4 = 0;
        v17.i32[1] = 1;
        v17.i32[0] = *(this + 20);
        *(this + 44) = vadd_s32(*(this + 44), v17);
      }

      else
      {
        v18 = *(this + 24);
        *(this + 24) = *(this + 72);
        *(this + 72) = v18;
        return 3758097085;
      }
    }
  }

  return v4;
}

void IOReporter_IVars::handleSwapCleanup(IOReporter_IVars *this, int a2)
{
  v3 = *(this + 20);
  if (!*(this + 20) || (0x7FFFFFFF / v3) < a2)
  {
    panic("%s - can't free %d channels of dimension %d", "handleSwapCleanup", a2, v3);
  }

  if ((*(this + 65) & 1) == 0)
  {
    IOReporter_IVars::handleSwapCleanup();
  }

  v5 = *(this + 9);
  if (v5)
  {
    v6 = v3 * a2;
    if (v6 <= 0)
    {
      IOReporter_IVars::handleSwapCleanup();
    }

    if (v6 >> 25)
    {
      IOReporter_IVars::handleSwapCleanup();
    }

    IOFree(v5, (v6 << 6));
    *(this + 9) = 0;
  }

  v7 = *(this + 10);
  if (v7)
  {
    if (a2 <= 0)
    {
      IOReporter_IVars::handleSwapCleanup();
    }

    if (a2 >> 29)
    {
      IOReporter_IVars::handleSwapCleanup();
    }

    IOFree(v7, (4 * a2));
    *(this + 10) = 0;
  }
}

uint64_t IOReporter_IVars::handleConfigureReport(IOReporter_IVars *this, IOReportChannelList *a2, int a3, unsigned int *a4)
{
  v15 = 0;
  if (!a2)
  {
    return 3758097084;
  }

  if (a2->nchannels)
  {
    v8 = 0;
    v9 = 2;
    do
    {
      if (!(*(*this + 96))(this, *&a2[v9].nchannels, &v15))
      {
        switch(a3)
        {
          case 0:
            --*(this + 24);
            v10 = *(this + 4);
            v11 = v15;
            v12 = *(v10 + 4 * v15) - 1;
LABEL_11:
            *(v10 + 4 * v11) = v12;
            v13 = 1;
LABEL_12:
            *a4 += v13;
            break;
          case 2:
            v13 = *(this + 20);
            goto LABEL_12;
          case 1:
            ++*(this + 24);
            v10 = *(this + 4);
            v11 = v15;
            v12 = *(v10 + 4 * v15) + 1;
            goto LABEL_11;
        }
      }

      ++v8;
      v9 += 4;
    }

    while (v8 < a2->nchannels);
  }

  return 0;
}

uint64_t IOReporter_IVars::handleUpdateReport(IOReporter_IVars *this, IOReportChannelList *a2, int a3, unsigned int *a4, unsigned __int8 **a5, unint64_t *a6)
{
  v17 = 0;
  v6 = 3758097084;
  if (a2 && *a5 && *(this + 24))
  {
    if (a2->nchannels)
    {
      v13 = 0;
      for (i = 2; ; i += 4)
      {
        if (!(*(*this + 96))(this, *&a2[i].nchannels, &v17))
        {
          if (a3 != 1)
          {
            return v6;
          }

          updated = (*(*this + 64))(this, v17);
          if (updated)
          {
            break;
          }

          updated = IOReporter_IVars::updateReportChannel(this, v17, a4, a5, a6);
          if (updated)
          {
            break;
          }
        }

        if (++v13 >= a2->nchannels)
        {
          return 0;
        }
      }

      return updated;
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

uint64_t IOReporter_IVars::updateReportChannel(IOReporter_IVars *this, int a2, unsigned int *a3, unsigned __int8 **a4, unint64_t *a5)
{
  result = 3758097128;
  if (!*a4 || *(this + 12) < a2)
  {
    return 3758097090;
  }

  if ((*(this + 64) & 1) == 0)
  {
    IOReporter_IVars::updateReportChannel();
  }

  v7 = *(this + 20) * a2;
  v8 = *(this + 11);
  if (v7 < v8)
  {
    v9 = (*(this + 3) + (v7 << 6));
    v10 = v9[10];
    if (v7 + v10 <= v8)
    {
      v12 = v9[10] << 6;
      if (v12 <= *a5)
      {
        memcpy(*a4, v9, v9[10] << 6);
        result = 0;
        *a4 += v12;
        *a5 -= v12;
        *a3 += v10;
      }
    }
  }

  return result;
}

OSArrayPtr IOReporter_IVars::handleCreateLegend@<X0>(IOReporter_IVars *this@<X0>, IOReporter_IVars **a2@<X8>)
{
  *a2 = 0;
  result = IOReporter_IVars::copyChannelIDs(this, &v8);
  v5 = v8;
  if (v8)
  {
    v6 = *(this + 11);
    IOReporter_IVars::legendWith(v8, *(this + 7), *(this + 1), v6, &v8);
    *a2 = v8;
    v7 = *(*v5 + 16);

    return v7(v5);
  }

  return result;
}

OSArrayPtr IOReporter_IVars::copyChannelIDs@<X0>(IOReporter_IVars *this@<X0>, OSArrayPtr *a2@<X8>)
{
  result = OSArray::withCapacity(*(this + 12));
  if (result)
  {
    v5 = result;
    if (*(this + 12) <= 0)
    {
      *a2 = result;
    }

    else
    {
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v8 = OSNumber::withNumber(*(*(this + 3) + ((v6 * *(this + 20)) << 6) + 8), 0x40uLL);
        if (v7)
        {
          (v7->release)(v7);
        }

        if (!v8)
        {
          break;
        }

        OSArray::setObject(v5, v6++, v8);
        v7 = v8;
        if (v6 >= *(this + 12))
        {
          *a2 = v5;
          release = v8->release;
          v10 = v8;
          goto LABEL_12;
        }
      }

      *a2 = 0;
      release = v5->release;
      v10 = v5;
LABEL_12:

      return (release)(v10);
    }
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

OSNumberPtr IOReporter_IVars::legendWith@<X0>(OSNumberPtr this@<X0>, OSArray *a2@<X1>, OSArray *a3@<X2>, IOReportChannelType a4@<0:X3>, OSDictionary **a5@<X8>)
{
  *a5 = 0;
  if (!this)
  {
    return this;
  }

  v7 = this;
  v8 = (this->OSContainer::OSObject::OSMetaClassBase::__vftable[1].release)(this);
  v9 = OSArray::withCapacity(v8);
  if (!v8)
  {
LABEL_14:
    if ((v9->getCount)(v9) && (v17 = OSDictionary::withCapacity(1u)) != 0)
    {
      v18 = v17;
      v19 = OSNumber::withNumber(*&a4, 0x40uLL);
      if (v19)
      {
        OSDictionary::setObject(v18, "IOReportChannelUnit", v19);
      }

      v20 = OSDictionary::withCapacity(1u);
      *a5 = v20;
      if (v20)
      {
        v21 = v20;
        OSDictionary::setObject(v20, "IOReportChannels", v9);
        OSDictionary::setObject(v21, "IOReportChannelInfo", v18);
      }

      (v18->release)(v18);
    }

    else
    {
      v19 = 0;
    }

    goto LABEL_26;
  }

  v10 = 0;
  while (1)
  {
    v11 = OSArray::withCapacity(3u);
    Object = OSArray::getObject(v7, v10);
    OSArray::setObject(v11, 0, Object);
    this = OSNumber::withNumber(a3, 0x40uLL);
    if (!this)
    {
      break;
    }

    v13 = this;
    OSArray::setObject(v11, 1u, this);
    (v13->release)(v13);
    if (a2)
    {
      v14 = OSArray::getObject(a2, v10);
      v15 = OSMetaClassBase::safeMetaCast(v14, gOSStringMetaClass);
      if (v15)
      {
        v16 = v15;
        if (noChannelName(void)::once != -1)
        {
          IOReporter_IVars::legendWith();
        }

        if (v16 != noChannelName(void)::name)
        {
          OSArray::setObject(v11, 2u, v16);
        }
      }
    }

    OSArray::setObject(v9, v10, v11);
    if (v11)
    {
      (v11->release)(v11);
    }

    if (v8 == ++v10)
    {
      goto LABEL_14;
    }
  }

  if (v11)
  {
    this = (v11->release)(v11);
  }

  if (v9)
  {
    v19 = 0;
LABEL_26:
    this = (v9->release)(v9);
    if (v19)
    {
      release = v19->release;

      return (release)(v19);
    }
  }

  return this;
}

__n128 IOReporter_IVars::setElementValues(IOReporter_IVars *this, int a2, IOReportElementValues *a3, uint64_t a4)
{
  if ((*(this + 64) & 1) == 0)
  {
    IOReporter_IVars::setElementValues();
  }

  if (!a4)
  {
    a4 = mach_absolute_time();
  }

  if (a3)
  {
    if (*(this + 11) > a2)
    {
      v8 = *(this + 3) + (a2 << 6);
      result = *a3->v;
      v9 = *&a3->v[2];
      *(v8 + 32) = *a3->v;
      *(v8 + 48) = v9;
      *(*(this + 3) + (a2 << 6) + 24) = a4;
    }
  }

  return result;
}

unint64_t IOReporter_IVars::getElementValues(IOReporter_IVars *this, unsigned int a2)
{
  if ((*(this + 64) & 1) == 0)
  {
    IOReporter_IVars::getElementValues();
  }

  if ((a2 & 0x80000000) != 0 || *(this + 11) <= a2)
  {
    return 0;
  }

  else
  {
    return *(this + 3) + (a2 << 6) + 32;
  }
}

uint64_t IOReporter_IVars::copyElementValues(IOReporter_IVars *this, int a2, IOReportElementValues *a3)
{
  result = 3758097084;
  if (a3)
  {
    if ((*(this + 64) & 1) == 0)
    {
      IOReporter_IVars::copyElementValues();
    }

    if (*(this + 11) <= a2)
    {
      return 3758097090;
    }

    else
    {
      result = 0;
      v5 = *(this + 3) + (a2 << 6);
      v6 = *(v5 + 48);
      *a3->v = *(v5 + 32);
      *&a3->v[2] = v6;
    }
  }

  return result;
}

uint64_t IOReporter_IVars::getFirstElementIndex(IOReporter_IVars *this, uint64_t a2, int *a3)
{
  v5 = 0;
  if (!a3)
  {
    return 3758097084;
  }

  result = (*(*this + 104))(this, a2, &v5 + 4, &v5);
  if (!result)
  {
    *a3 = v5;
  }

  return result;
}

uint64_t IOReporter_IVars::getChannelIndex(IOReporter_IVars *this, uint64_t a2, int *a3)
{
  v5 = 0;
  if (!a3)
  {
    return 3758097084;
  }

  result = (*(*this + 104))(this, a2, &v5 + 4, &v5);
  if (!result)
  {
    *a3 = HIDWORD(v5);
  }

  return result;
}

uint64_t IOReporter_IVars::getChannelIndices(IOReporter_IVars *this, uint64_t a2, int *a3, int *a4)
{
  result = 3758097136;
  if (a3)
  {
    if (a4)
    {
      v6 = *(this + 12);
      if (v6 >= 1)
      {
        v7 = 0;
        v8 = 0;
        v9 = *(this + 20);
        v10 = 8;
        while (1)
        {
          if (v7 >= *(this + 11))
          {
            return 3758097128;
          }

          if (*(*(this + 3) + v10) == a2)
          {
            break;
          }

          ++v8;
          v7 += v9;
          v10 += v9 << 6;
          if (v6 == v8)
          {
            return result;
          }
        }

        result = 0;
        *a3 = v8;
        *a4 = v7;
      }
    }
  }

  return result;
}

OSStringPtr ___ZL13noChannelNamev_block_invoke()
{
  result = OSString::withCString("_NO_NAME_4");
  noChannelName(void)::name = result;
  return result;
}

OSPtr<IOSimpleReporter> IOSimpleReporter::with(IOService *reportingService, IOReportCategories categories, IOReportUnit unit)
{
  pObject = 0;
  v6 = OSObjectAllocate(gIOSimpleReporterMetaClass, &pObject);
  result = 0;
  v8 = pObject;
  if (v6)
  {
    v9 = 1;
  }

  else
  {
    v9 = pObject == 0;
  }

  if (!v9)
  {
    if (IOSimpleReporter::initWith(pObject, reportingService, categories, unit))
    {
      return v8;
    }

    else
    {
      (v8->release)(v8);
      return 0;
    }
  }

  return result;
}

IOReturn IOSimpleReporter::setValue(IOSimpleReporter *this, uint64_t channel_id, int64_t value)
{
  v6 = -536870206;
  v8 = 0;
  IOReporter_IVars::lockReporter(this->ivars);
  if (!(*(*this->ivars + 88))(this->ivars, channel_id, &v8) && !(*(*this->ivars + 112))(this->ivars, v8, v9))
  {
    v9[0] = value;
    v6 = (*(*this->ivars + 72))(this->ivars, v8, v9, 0);
  }

  IOReporter_IVars::unlockReporter(this->ivars);
  return v6;
}

IOReturn IOSimpleReporter::incrementValue(IOSimpleReporter *this, uint64_t channel_id, int64_t increment)
{
  v6 = -536870206;
  v8 = 0;
  IOReporter_IVars::lockReporter(this->ivars);
  if (!(*(*this->ivars + 88))(this->ivars, channel_id, &v8) && !(*(*this->ivars + 112))(this->ivars, v8, v9))
  {
    v9[0] += increment;
    v6 = (*(*this->ivars + 72))(this->ivars, v8, v9, 0);
  }

  IOReporter_IVars::unlockReporter(this->ivars);
  return v6;
}

int64_t IOSimpleReporter::getValue(IOSimpleReporter *this, uint64_t channel_id)
{
  v7 = 0;
  IOReporter_IVars::lockReporter(this->ivars);
  if ((*(*this->ivars + 88))(this->ivars, channel_id, &v7) || (v5 = (*(*this->ivars + 80))(this->ivars, v7)) == 0)
  {
    v4 = 0x8000000000000000;
  }

  else
  {
    v4 = *v5;
  }

  IOReporter_IVars::unlockReporter(this->ivars);
  return v4;
}

void IOSimpleReporter_IVars::~IOSimpleReporter_IVars(IOSimpleReporter_IVars *this)
{
  IOReporter_IVars::~IOReporter_IVars(this);

  JUMPOUT(0x2383EBD30);
}

OSPtr<IOHistogramReporter> IOHistogramReporter::with(IOService *reportingService, IOReportCategories categories, uint64_t channelID, const char *channelName, IOReportUnit unit, int nSegments, IOHistogramSegmentConfig *config)
{
  pObject = 0;
  if (OSObjectAllocate(gIOHistogramReporterMetaClass, &pObject))
  {
    IOHistogramReporter::initWith(0, reportingService, categories, channelID, channelName, unit, nSegments, config);
    return 0;
  }

  v14 = pObject;
  if (!IOHistogramReporter::initWith(pObject, reportingService, categories, channelID, channelName, unit, nSegments, config) && v14)
  {
    (v14->release)(v14);
    return 0;
  }

  return v14;
}

BOOL IOHistogramReporter::initWith(IOHistogramReporter *this, IOService *reportingService, IOReportCategories categories, uint64_t channelID, const char *channelName, IOReportUnit unit, int nSegments, IOHistogramSegmentConfig *config)
{
  if (channelName)
  {
    OSString::withCString(channelName);
  }

  operator new();
}

void IOHistogramReporter_IVars::IOHistogramReporter_IVars(IOHistogramReporter_IVars *this, IOService *a2, IOReportChannelType a3, uint64_t a4, const OSString *a5, uint64_t a6, uint64_t a7, int a8, IOHistogramSegmentConfig *__src)
{
  IOHistogramReporter_IVars::IOHistogramReporter_IVars(this, a2, a3, a4, a5, 0, a7, a8, __src);
}

{
  IOReporter_IVars::IOReporter_IVars(this, a2, a3, a4);
  *v13 = &unk_284AFB2D0;
  *(v13 + 120) = 0;
  *(v13 + 128) = 0;
  *(v13 + 136) = 0;
  *(v13 + 144) = 0;
  if (*(v13 + 8))
  {
    *(this + 12) = 1;
    if (a5)
    {
      OSArray::setObject(*(this + 7), a5);
    }

    *(this + 30) = a8;
    if (a8)
    {
      v14 = a8 >= 0 ? a8 : -a8;
      if ((a8 & 0x80000000) == 0)
      {
        v15 = 16 * v14;
        v16 = IOMallocTyped(v15, 0x1000040451B5BE8uLL);
        *(this + 18) = v16;
        if (v16)
        {
          memcpy(v16, __src, v15);
          v17 = *(this + 30);
          if (v17 <= 0)
          {
            v20 = *(this + 20);
            v19 = *(this + 11);
LABEL_18:
            *(this + 6) = v20;
            if (v19 >= 0)
            {
              v22 = v19;
            }

            else
            {
              v22 = -v19;
            }

            if ((v19 & 0x80000000) == 0)
            {
              v23 = v22 << 6;
              v24 = IOMallocTyped(v23, 0x1000040FA0F61DDuLL);
              *(this + 3) = v24;
              if (v24)
              {
                bzero(v24, v23);
                v25 = *(this + 12);
                v26 = v25 >= 0 ? *(this + 12) : -v25;
                if ((v25 & 0x80000000) == 0)
                {
                  v27 = 4 * v26;
                  v28 = IOMallocTyped(v27, 0x100004052888210uLL);
                  *(this + 4) = v28;
                  if (v28)
                  {
                    bzero(v28, v27);
                    IOReporter_IVars::lockReporter(this);
                    if (*(this + 20))
                    {
                      v29 = 0;
                      v30 = 0;
                      v53 = vnegq_f64(0);
                      while (!(*(*this + 112))(this, v30, v54))
                      {
                        v55 = v53;
                        v56 = 0x8000000000000000;
                        if ((*(*this + 72))(this, v30, v54, 0))
                        {
                          break;
                        }

                        v31 = (*(this + 3) + v29);
                        *v31 = *(this + 2);
                        v31[1] = a7;
                        v31[2] = *(this + 1);
                        *(*(this + 3) + v29 + 22) = v30++;
                        v29 += 64;
                        if (v30 >= *(this + 20))
                        {
                          goto LABEL_33;
                        }
                      }
                    }

                    else
                    {
LABEL_33:
                      IOReporter_IVars::unlockReporter(this);
                      v32 = *(this + 11);
                      if (v32 >= 0)
                      {
                        v33 = *(this + 11);
                      }

                      else
                      {
                        v33 = -v32;
                      }

                      if ((v32 & 0x80000000) == 0)
                      {
                        v34 = 8 * v33;
                        v35 = IOMallocTyped(v34, 0x100004000313F17uLL);
                        *(this + 16) = v35;
                        if (v35)
                        {
                          bzero(v35, v34);
                          v36 = *(this + 11);
                          *(this + 34) = v36;
                          v37 = *(this + 30);
                          if (v37 < 1)
                          {
                            return;
                          }

                          v38 = 0;
                          v39 = 0;
                          v40 = 0;
                          v41 = *(this + 18);
                          while (1)
                          {
                            v42 = v41 + 16 * v38;
                            v43 = *(v42 + 12);
                            if ((v43 & 0x80000000) != 0)
                            {
                              break;
                            }

                            v44 = *(v41 + 16 * v38);
                            if ((v44 & 0x80000000) != 0)
                            {
                              goto LABEL_59;
                            }

                            if (v43)
                            {
                              v45 = 0;
                              v46 = v40;
                              if (v40 <= v36)
                              {
                                v47 = v36;
                              }

                              else
                              {
                                v47 = v40;
                              }

                              v48 = (v47 - v40);
                              v49 = -1;
                              while (v45 != v48)
                              {
                                if (*(v42 + 4))
                                {
                                  v50 = v49;
                                  v51 = 1;
                                  do
                                  {
                                    v51 *= v44;
                                  }

                                  while (!__CFADD__(v50++, 1));
                                }

                                else
                                {
                                  v51 = ((v45 + 1) * v44);
                                }

                                if (v39 >= v51)
                                {
                                  break;
                                }

                                *(*(this + 16) + 8 * v46++) = v51;
                                ++v45;
                                --v49;
                                v39 = v51;
                                if (v45 == v43)
                                {
                                  v40 = v46;
                                  v39 = v51;
                                  goto LABEL_57;
                                }
                              }

LABEL_59:
                              if (!this)
                              {
                                return;
                              }

                              break;
                            }

LABEL_57:
                            if (++v38 == v37)
                            {
                              return;
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

          else
          {
            v18 = *(this + 18);
            v19 = *(this + 11);
            v20 = *(this + 20);
            while (1)
            {
              v21 = v18[3];
              v19 += v21;
              v20 += v21;
              if (v18[1] > 1u || !*v18)
              {
                break;
              }

              v18 += 4;
              if (!--v17)
              {
                *(this + 11) = v19;
                *(this + 20) = v20;
                goto LABEL_18;
              }
            }

            *(this + 11) = v19;
            *(this + 20) = v20;
          }
        }
      }
    }

    *(this + 1) = 0;
  }
}

void IOHistogramReporter_IVars::~IOHistogramReporter_IVars(IOHistogramReporter_IVars *this)
{
  *this = &unk_284AFB2D0;
  v2 = *(this + 16);
  if (v2)
  {
    v3 = *(this + 11);
    if (v3 <= 0)
    {
      IOHistogramReporter_IVars::~IOHistogramReporter_IVars();
    }

    if (v3 >> 28)
    {
      IOHistogramReporter_IVars::~IOHistogramReporter_IVars();
    }

    IOFree(v2, 8 * v3);
  }

  v4 = *(this + 18);
  if (v4)
  {
    v5 = *(this + 30);
    if (v5 <= 0)
    {
      IOHistogramReporter_IVars::~IOHistogramReporter_IVars();
    }

    if (v5 >> 27)
    {
      IOHistogramReporter_IVars::~IOHistogramReporter_IVars();
    }

    IOFree(v4, 16 * v5);
  }

  IOReporter_IVars::~IOReporter_IVars(this);
}

{
  IOHistogramReporter_IVars::~IOHistogramReporter_IVars(this);

  JUMPOUT(0x2383EBD30);
}

OSArrayPtr IOHistogramReporter_IVars::handleCreateLegend@<X0>(const void **this@<X0>, const OSDictionary **a2@<X8>)
{
  result = IOReporter_IVars::handleCreateLegend(this, &v12);
  v5 = v12;
  if (!v12)
  {
    *a2 = 0;
    return result;
  }

  v6 = *(this + 30);
  if ((v6 & 0x80000000) != 0)
  {
    IOHistogramReporter_IVars::handleCreateLegend();
  }

  v7 = OSData::withBytes(this[18], 16 * v6);
  if (!v7)
  {
    *a2 = 0;
    return (v5->release)(v5);
  }

  v8 = v7;
  Object = OSDictionary::getObject(v5, "IOReportChannelInfo");
  v10 = OSMetaClassBase::safeMetaCast(Object, gOSDictionaryMetaClass);
  if (v10)
  {
    OSDictionary::setObject(v10, "IOReportChannelConfig", v8);
    v11 = v5;
    v5 = 0;
  }

  else
  {
    v11 = 0;
  }

  *a2 = v11;
  result = (v8->release)(v8);
  if (v5)
  {
    return (v5->release)(v5);
  }

  return result;
}

int IOHistogramReporter::tallyValue(IOHistogramReporter *this, int64_t value)
{
  IOReporter_IVars::lockReporter(this->ivars);
  ivars = this->ivars;
  v5 = *(ivars + 34);
  if (v5 < 2)
  {
    v7 = 0;
  }

  else
  {
    v6 = 0;
    v7 = (v5 - 1);
    while (*(*(ivars + 16) + 8 * v6) < value)
    {
      if (v7 == ++v6)
      {
        goto LABEL_8;
      }
    }

    v7 = v6;
  }

LABEL_8:
  if ((*(*ivars + 112))(ivars, v7, &v11))
  {
    LODWORD(v7) = -1;
    goto LABEL_19;
  }

  v8 = v11;
  if (v11)
  {
    if (v12 > value)
    {
      v9 = &v12;
      goto LABEL_16;
    }
  }

  else
  {
    v12 = value;
    v13 = value;
    v14 = 0;
  }

  if (v13 >= value)
  {
    goto LABEL_17;
  }

  v9 = &v13;
LABEL_16:
  *v9 = value;
LABEL_17:
  v14 += value;
  v11 = v8 + 1;
  if ((*(*this->ivars + 72))(this->ivars, v7, &v11, 0))
  {
    LODWORD(v7) = -1;
  }

LABEL_19:
  IOReporter_IVars::unlockReporter(this->ivars);
  return v7;
}

OSPtr<IOStateReporter> IOStateReporter::with(IOService *reportingService, IOReportCategories categories, int nstates, IOReportUnit unit)
{
  pObject = 0;
  if (OSObjectAllocate(gIOStateReporterMetaClass, &pObject))
  {
    return 0;
  }

  v8 = pObject;
  if (pObject && !IOStateReporter::initWith(pObject, reportingService, categories, nstates, unit))
  {
    (v8->release)(v8);
    return 0;
  }

  return v8;
}

BOOL IOStateReporter::initWith(IOStateReporter *this, IOService *reportingService, IOReportCategories categories, int nstates, IOReportUnit unit)
{
  if (nstates < 0x8000)
  {
    operator new();
  }

  return 0;
}

void IOStateReporter_IVars::IOStateReporter_IVars(IOStateReporter_IVars *this, IOService *a2, IOReportChannelType a3, uint64_t a4)
{
  IOReporter_IVars::IOReporter_IVars(this, a2, a3, a4);
  *v4 = &unk_284AFB370;
  *(v4 + 120) = 0u;
  *(v4 + 136) = 0u;
}

{
  IOReporter_IVars::IOReporter_IVars(this, a2, a3, a4);
  *v4 = &unk_284AFB370;
  *(v4 + 120) = 0u;
  *(v4 + 136) = 0u;
}

void IOStateReporter_IVars::~IOStateReporter_IVars(IOStateReporter_IVars *this)
{
  *this = &unk_284AFB370;
  v2 = *(this + 15);
  if (v2)
  {
    v3 = *(this + 12);
    if (v3 <= 0)
    {
      IOStateReporter_IVars::~IOStateReporter_IVars();
    }

    if (v3 >> 29)
    {
      IOStateReporter_IVars::~IOStateReporter_IVars();
    }

    IOFree(v2, 4 * v3);
  }

  v4 = *(this + 16);
  if (v4)
  {
    v5 = *(this + 12);
    if (v5 <= 0)
    {
      IOStateReporter_IVars::~IOStateReporter_IVars();
    }

    if (v5 >> 28)
    {
      IOStateReporter_IVars::~IOStateReporter_IVars();
    }

    IOFree(v4, 8 * v5);
  }

  IOReporter_IVars::~IOReporter_IVars(this);
}

{
  IOStateReporter_IVars::~IOStateReporter_IVars(this);

  JUMPOUT(0x2383EBD30);
}

uint64_t IOStateReporter_IVars::handleSwapPrepare(IOStateReporter_IVars *this, unsigned int a2)
{
  if ((*(this + 65) & 1) == 0)
  {
    IOStateReporter_IVars::handleSwapPrepare();
  }

  if (*(this + 17) || *(this + 18))
  {
    IOStateReporter_IVars::handleSwapPrepare();
  }

  if (a2 <= 0)
  {
    IOLog("%s - %s <= 0!\n", "handleSwapPrepare", "newNChannels");
    v4 = 0;
    v5 = 0;
    v6 = 3758097127;
LABEL_14:
    v9 = *(this + 17);
    if (v9)
    {
      IOFree(v9, v5);
      *(this + 17) = 0;
    }

    goto LABEL_16;
  }

  if (a2 >> 29)
  {
    IOLog("%s - %s > INT_MAX / sizeof(%s)!\n", "handleSwapPrepare", "newNChannels", "int");
    v4 = 0;
    v5 = 0;
    v6 = 3758097128;
    goto LABEL_14;
  }

  v6 = 3758097085;
  v5 = 4 * a2;
  v7 = IOMallocTyped(v5, 0x100004052888210uLL);
  *(this + 17) = v7;
  if (v7)
  {
    memset(v7, 255, 4 * a2);
    if (a2 >> 28)
    {
      IOLog("%s - %s > INT_MAX / sizeof(%s)!\n", "handleSwapPrepare", "newNChannels", "uint64_t");
      v4 = 0;
      v6 = 3758097128;
    }

    else
    {
      v4 = 8 * a2;
      v8 = IOMallocTyped(v4, 0x100004000313F17uLL);
      *(this + 18) = v8;
      if (v8)
      {
        bzero(v8, 8 * a2);
        v6 = IOReporter_IVars::handleSwapPrepare(this, a2);
        if (!v6)
        {
          return v6;
        }
      }
    }

    goto LABEL_14;
  }

  v4 = 0;
LABEL_16:
  v10 = *(this + 18);
  if (v10)
  {
    IOFree(v10, v4);
    *(this + 18) = 0;
  }

  return v6;
}

uint64_t IOStateReporter_IVars::handleAddChannelSwap(IOStateReporter_IVars *this, uint64_t a2, const OSString *a3)
{
  v4 = 3758097084;
  v5 = *(this + 17);
  if (v5)
  {
    v6 = *(this + 18);
    if (v6)
    {
      if ((*(this + 65) & 1) == 0)
      {
        IOStateReporter_IVars::handleAddChannelSwap();
      }

      if ((*(this + 64) & 1) == 0)
      {
        IOStateReporter_IVars::handleAddChannelSwap();
      }

      v9 = *(this + 15);
      if (v9)
      {
        v10 = *(this + 12);
        if (v10 <= 0)
        {
          goto LABEL_17;
        }

        if (v10 >> 29)
        {
          v11 = "int";
LABEL_16:
          IOLog("%s - %s > INT_MAX / sizeof(%s)!\n", "handleAddChannelSwap", "ivar(nChannels)", v11);
          return 3758097128;
        }

        memcpy(v5, v9, 4 * v10);
        v16 = *(this + 16);
        if (!v16)
        {
          IOStateReporter_IVars::handleAddChannelSwap();
        }

        v17 = *(this + 12);
        if (v17 <= 0)
        {
LABEL_17:
          IOLog("%s - %s <= 0!\n", "handleAddChannelSwap", "ivar(nChannels)");
          return 3758097127;
        }

        if (v17 >> 28)
        {
          v11 = "uint64_t";
          goto LABEL_16;
        }

        memcpy(*(this + 18), v16, 8 * v17);
        v12 = *(this + 15);
        v5 = *(this + 17);
        v6 = *(this + 18);
      }

      else
      {
        v12 = 0;
      }

      v13 = *(this + 16);
      *(this + 15) = v5;
      *(this + 16) = v6;
      *(this + 17) = v12;
      *(this + 18) = v13;
      v14 = IOReporter_IVars::handleAddChannelSwap(this, a2, a3);
      if (v14)
      {
        v4 = v14;
        v15 = *(this + 120);
        *(this + 120) = *(this + 136);
        *(this + 136) = v15;
      }

      else
      {
        if (*(this + 20))
        {
          v18 = 0;
          do
          {
            (*(*this + 128))(this, a2, v18, v18);
            ++v18;
          }

          while (v18 < *(this + 20));
        }

        return 0;
      }
    }
  }

  return v4;
}

void IOStateReporter_IVars::handleSwapCleanup(IOStateReporter_IVars *this, int a2)
{
  if ((*(this + 65) & 1) == 0)
  {
    IOStateReporter_IVars::handleSwapCleanup();
  }

  IOReporter_IVars::handleSwapCleanup(this, a2);
  v4 = *(this + 17);
  if (v4)
  {
    if (a2 <= 0)
    {
      IOStateReporter_IVars::handleSwapCleanup();
    }

    if (a2 >> 29)
    {
      IOStateReporter_IVars::handleSwapCleanup();
    }

    IOFree(v4, (4 * a2));
    *(this + 17) = 0;
  }

  v5 = *(this + 18);
  if (v5)
  {
    if (a2 <= 0)
    {
      IOStateReporter_IVars::handleSwapCleanup();
    }

    if (a2 >> 28)
    {
      IOStateReporter_IVars::handleSwapCleanup();
    }

    IOFree(v5, (8 * a2));
    *(this + 18) = 0;
  }
}

uint64_t IOStateReporter_IVars::_getStateIndices(IOStateReporter_IVars *this, uint64_t a2, uint64_t a3, int *a4, int *a5)
{
  v12 = 0;
  if ((*(this + 64) & 1) == 0)
  {
    IOStateReporter_IVars::_getStateIndices();
  }

  v8 = 3758097090;
  if (!(*(*this + 104))(this, a2, a4, &v12) && *(this + 20))
  {
    v10 = 0;
    while (1)
    {
      v11 = (*(*this + 80))(this, (v10 + v12));
      if (!v11)
      {
        return 3758097084;
      }

      if (*v11 == a3)
      {
        break;
      }

      if (++v10 >= *(this + 20))
      {
        return v8;
      }
    }

    v8 = 0;
    *a5 = v10;
  }

  return v8;
}

IOReturn IOStateReporter::setChannelState(IOStateReporter *this, uint64_t channel_id, uint64_t new_state_id)
{
  *v8 = 0;
  IOReporter_IVars::lockReporter(this->ivars);
  if (IOStateReporter_IVars::_getStateIndices(this->ivars, channel_id, new_state_id, &v8[1], v8))
  {
    v6 = -536870206;
  }

  else
  {
    v6 = (*(*this->ivars + 120))(this->ivars, v8[1], v8[0], 0, 0);
  }

  IOReporter_IVars::unlockReporter(this->ivars);
  return v6;
}

IOReturn IOStateReporter::overrideChannelState(IOStateReporter *this, uint64_t channel_id, uint64_t state_id, uint64_t time_in_state, uint64_t intransitions, uint64_t last_intransition)
{
  *v12 = 0;
  IOReporter_IVars::lockReporter(this->ivars);
  if (IOStateReporter_IVars::_getStateIndices(this->ivars, channel_id, state_id, &v12[1], v12))
  {
    v9 = -536870206;
  }

  else
  {
    ivars = this->ivars;
    if (*(*(ivars + 16) + 8 * v12[1]))
    {
      IOStateReporter::overrideChannelState();
    }

    v9 = (*(*ivars + 136))(ivars);
  }

  IOReporter_IVars::unlockReporter(this->ivars);
  return v9;
}

uint64_t IOStateReporter_IVars::handleOverrideChannelStateByIndices(IOStateReporter_IVars *this, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = 3758097090;
  if ((a2 & 0x80000000) == 0 && *(this + 12) > a2)
  {
    v8 = *(this + 20);
    if ((*(this + 11) - a3) / v8 >= a2)
    {
      v12 = (a3 + v8 * a2);
      result = (*(*this + 112))(this, v12, v13);
      if (!result)
      {
        v13[2] = a4;
        v13[3] = a6;
        v13[1] = a5;
        return (*(*this + 72))(this, v12, v13, 0);
      }
    }

    else
    {
      return 3758097128;
    }
  }

  return result;
}

IOReturn IOStateReporter::incrementChannelState(IOStateReporter *this, uint64_t channel_id, uint64_t state_id, uint64_t time_in_state, uint64_t intransitions, uint64_t last_intransition)
{
  *v12 = 0;
  IOReporter_IVars::lockReporter(this->ivars);
  if (IOStateReporter_IVars::_getStateIndices(this->ivars, channel_id, state_id, &v12[1], v12))
  {
    v9 = -536870206;
  }

  else
  {
    ivars = this->ivars;
    if (*(*(ivars + 16) + 8 * v12[1]))
    {
      IOStateReporter::incrementChannelState();
    }

    v9 = (*(*ivars + 144))(ivars);
  }

  IOReporter_IVars::unlockReporter(this->ivars);
  return v9;
}

uint64_t IOStateReporter_IVars::handleIncrementChannelStateByIndices(IOStateReporter_IVars *this, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = 3758097090;
  if ((a2 & 0x80000000) == 0 && *(this + 12) > a2)
  {
    v8 = *(this + 20);
    if ((*(this + 11) - a3) / v8 >= a2)
    {
      v12 = (a3 + v8 * a2);
      result = (*(*this + 112))(this, v12, &v13);
      if (!result)
      {
        v14 += a5;
        v15 += a4;
        v16 = a6;
        return (*(*this + 72))(this, v12, &v13, 0);
      }
    }

    else
    {
      return 3758097128;
    }
  }

  return result;
}

IOReturn IOStateReporter::setState(IOStateReporter *this, uint64_t new_state_id)
{
  v4 = -536870206;
  IOReporter_IVars::lockReporter(this->ivars);
  ivars = this->ivars;
  if (*(ivars + 12) == 1 && *(ivars + 20))
  {
    v6 = 0;
    while (1)
    {
      v7 = (*(*ivars + 80))(ivars, v6);
      if (!v7)
      {
        v4 = -536870212;
        goto LABEL_10;
      }

      if (*v7 == new_state_id)
      {
        break;
      }

      v6 = (v6 + 1);
      ivars = this->ivars;
      if (v6 >= *(ivars + 20))
      {
        goto LABEL_10;
      }
    }

    v4 = (*(*this->ivars + 120))(this->ivars, 0, v6, 0, 0);
  }

LABEL_10:
  IOReporter_IVars::unlockReporter(this->ivars);
  return v4;
}

uint64_t IOStateReporter_IVars::handleSetStateID(IOStateReporter_IVars *this, uint64_t a2, int a3, uint64_t a4)
{
  v9 = 0;
  if ((*(this + 64) & 1) == 0)
  {
    IOStateReporter_IVars::handleSetStateID();
  }

  v7 = 3758097090;
  if ((*(*this + 88))(this, a2, &v9))
  {
    return 3758097084;
  }

  if (*(this + 20) > a3)
  {
    if (*(this + 11) - a3 <= v9)
    {
      return 3758097128;
    }

    else
    {
      v9 += a3;
      if (!(*(*this + 112))(this))
      {
        v10[0] = a4;
        return (*(*this + 72))(this, v9, v10, 0);
      }
    }
  }

  return v7;
}

uint64_t IOStateReporter_IVars::handleSetStateByIndices(IOStateReporter_IVars *this, unsigned int a2, int a3, uint64_t a4, uint64_t a5)
{
  v10 = mach_absolute_time();
  if ((*(this + 64) & 1) == 0)
  {
    IOStateReporter_IVars::handleSetStateByIndices();
  }

  v11 = 3758097090;
  if ((a2 & 0x80000000) != 0 || *(this + 12) <= a2)
  {
    return v11;
  }

  v12 = v10;
  if (a4)
  {
    v13 = a4;
  }

  else
  {
    v13 = v10;
  }

  v14 = *(*(this + 15) + 4 * a2);
  if (v14 == a3)
  {
    v15 = 3758097084;
  }

  else
  {
    v22 = *(this + 20);
    if ((*(this + 11) - a3) / v22 < a2)
    {
      return 3758097128;
    }

    v23 = a3 + v22 * a2;
    if ((*(*this + 112))(this, v23, &v25))
    {
      return v11;
    }

    ++v26;
    v27 = v13;
    v21 = (*(*this + 72))(this, v23, &v25, v12);
    if (v21)
    {
      return v21;
    }

    v15 = 0;
    *(*(this + 15) + 4 * a2) = a3;
  }

  v16 = *(this + 16);
  v17 = *(v16 + 8 * a2);
  if (!v17)
  {
LABEL_16:
    *(v16 + 8 * a2) = v13;
    return v15;
  }

  v18 = *(this + 20);
  if ((*(this + 11) - v14) / v18 < a2)
  {
    return 3758097128;
  }

  v19 = v14 + v18 * a2;
  if (!(*(*this + 112))(this, v19, v28))
  {
    v20 = v13 - v17;
    if (a5)
    {
      v20 = a5;
    }

    v29 += v20;
    v21 = (*(*this + 72))(this, v19, v28, v12);
    if (!v21)
    {
      v15 = 0;
      v16 = *(this + 16);
      goto LABEL_16;
    }

    return v21;
  }

  return v11;
}

unint64_t IOStateReporter_IVars::_getStateValue(IOLock **this, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v13 = 0;
  IOReporter_IVars::lockReporter(this);
  if ((*(*this + 13))(this, a2, &v13 + 4, &v13) || (*(*this + 8))(this, HIDWORD(v13)) || !*(this + 20))
  {
    goto LABEL_3;
  }

  v10 = 0;
  v11 = v13;
  while (1)
  {
    v12 = (*(*this + 10))(this, v11);
    if (*v12 == a3)
    {
      break;
    }

    v11 = (v13 + 1);
    LODWORD(v13) = v13 + 1;
    if (++v10 >= *(this + 20))
    {
      goto LABEL_3;
    }
  }

  if (a4 >= 3)
  {
LABEL_3:
    v8 = 0x8000000000000000;
  }

  else
  {
    v8 = v12[a4 + 1];
  }

  IOReporter_IVars::unlockReporter(this);
  return v8;
}

uint64_t IOStateReporter::getStateLastChannelUpdateTime(IOStateReporter *this, uint64_t channel_id)
{
  v8 = 0;
  IOReporter_IVars::lockReporter(this->ivars);
  v4 = (*(*this->ivars + 96))(this->ivars, channel_id, &v8);
  ivars = this->ivars;
  if (v4)
  {
    v6 = 0x8000000000000000;
  }

  else
  {
    v6 = *(*(ivars + 16) + 8 * v8);
  }

  IOReporter_IVars::unlockReporter(ivars);
  return v6;
}

uint64_t IOStateReporter_IVars::updateChannelValues(IOStateReporter_IVars *this, unsigned int a2)
{
  if ((*(this + 64) & 1) == 0)
  {
    IOStateReporter_IVars::updateChannelValues();
  }

  result = 3758097090;
  if ((a2 & 0x80000000) == 0 && *(this + 12) > a2)
  {
    v5 = *(*(this + 16) + 8 * a2);
    if (v5)
    {
      v6 = *(*(this + 15) + 4 * a2);
      v7 = *(this + 20);
      if ((*(this + 11) - v6) / v7 >= a2)
      {
        v8 = v6 + v7 * a2;
        result = (*(*this + 112))(this, v8, v10);
        if (!result)
        {
          v9 = mach_absolute_time();
          v11 += v9 - v5;
          result = (*(*this + 72))(this, v8, v10, v9);
          if (!result)
          {
            *(*(this + 16) + 8 * a2) = v9;
          }
        }
      }

      else
      {
        return 3758097128;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

OSPtr<IOReportLegend> IOReportLegend::with(OSArray *legend)
{
  pObject = 0;
  OSObjectAllocate(gIOReportLegendMetaClass, &pObject);
  operator new();
}

OSArray *deepcopy@<X0>(OSArray **__return_ptr a1@<X8>, OSArray *a2@<X0>)
{
  v4 = (a2->getCount)(a2);
  v5 = (a2->getCount)(a2);
  result = OSArray::withCapacity(v5);
  v7 = result;
  if (v4)
  {
    v8 = 0;
    while (1)
    {
      result = OSArray::getObject(a2, v8);
      if (!result || (result = deepcopy(&anObject, result), (v9 = anObject) == 0))
      {
        *a1 = 0;
        if (!v7)
        {
          return result;
        }

        goto LABEL_9;
      }

      if (!OSArray::setObject(v7, anObject))
      {
        break;
      }

      result = (v9->release)(v9);
      if (v4 == ++v8)
      {
        goto LABEL_7;
      }
    }

    *a1 = 0;
    result = (v9->release)(v9);
    if (!v7)
    {
      return result;
    }

LABEL_9:
    release = v7->release;

    return (release)(v7);
  }

  else
  {
LABEL_7:
    *a1 = v7;
  }

  return result;
}

void IOReportLegend::free(IOReportLegend *this)
{
  ivars = this->ivars;
  if (ivars)
  {
    if (*ivars)
    {
      (*(**ivars + 16))(*ivars);
    }

    *ivars = 0;
    MEMORY[0x2383EBD30](ivars, 0x20C4093837F09);
  }

  OSObject::free(this);
}

IOReturn IOReportLegend::addReporterLegend(IOService *reportingService, IOReporter *reporter, const char *groupName, const char *subGroupName)
{
  v4 = -536870212;
  if (reportingService && reporter)
  {
    properties = 0;
    if (IOService::CopyProperties(reportingService, &properties, 0))
    {
      v9 = 0;
    }

    else
    {
      if (!properties)
      {
        return v4;
      }

      Object = OSDictionary::getObject(properties, "IOReportLegend");
      v11 = OSMetaClassBase::safeMetaCast(Object, gOSArrayMetaClass);
      v12 = IOReportLegend::with(v11);
      v9 = v12;
      if (v12)
      {
        v13 = IOReportLegend::addReporterLegend(v12, reporter, groupName, subGroupName);
        if (!v13)
        {
          v13 = IOService::SetLegend(reportingService, *v9[5], 1, 0);
        }

        v4 = v13;
      }
    }

    if (properties)
    {
      (properties->release)(properties);
    }

    if (v9)
    {
      ((*v9)[2])(v9);
    }
  }

  return v4;
}

IOReturn IOReportLegend::addReporterLegend(IOReportLegend *this, IOReporter *reporter, const char *groupName, const char *subGroupName)
{
  if (!reporter)
  {
    return -536870212;
  }

  Legend = IOReporter::createLegend(reporter);
  if (!Legend)
  {
    return -536870212;
  }

  v8 = Legend;
  v9 = IOReportLegend::addLegendEntry(this, Legend, groupName, subGroupName);
  (v8->release)(v8);
  return v9;
}

IOReturn IOReportLegend::addLegendEntry(IOReportLegend *this, IOReportLegendEntry *legendEntry, const char *groupName, const char *subGroupName)
{
  v4 = -536870206;
  if (!legendEntry)
  {
    return v4;
  }

  v5 = subGroupName;
  if (!groupName)
  {
    if (subGroupName)
    {
      return v4;
    }
  }

  if (!groupName)
  {
    v8 = 0;
    if (!subGroupName)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v8 = OSString::withCString(groupName);
  if (v5)
  {
LABEL_6:
    v5 = OSString::withCString(v5);
  }

LABEL_7:
  if (*this->ivars)
  {
    goto LABEL_11;
  }

  v9 = OSArray::withCapacity(1u);
  ivars = this->ivars;
  if (*ivars)
  {
    (*(**ivars + 16))(*ivars);
  }

  *ivars = v9;
  if (*this->ivars)
  {
LABEL_11:
    if (v8)
    {
      OSDictionary::setObject(legendEntry, "IOReportGroupName", v8);
    }

    if (v5)
    {
      OSDictionary::setObject(legendEntry, "IOReportSubGroupName", v5);
    }

    if (OSArray::setObject(*this->ivars, legendEntry))
    {
      v4 = 0;
    }

    else
    {
      v4 = -536870212;
    }

    if (!v5)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  v4 = -536870211;
  if (v5)
  {
LABEL_19:
    (*(*v5 + 16))(v5);
  }

LABEL_20:
  if (v8)
  {
    (v8->release)(v8);
  }

  return v4;
}

uint64_t *deepcopy@<X0>(uint64_t *__return_ptr a1@<X8>, uint64_t *result@<X0>)
{
  if (!result)
  {
LABEL_24:
    *a1 = 0;
    return result;
  }

  v3 = result;
  v4 = OSMetaClassBase::safeMetaCast(result, gOSNumberMetaClass);
  if (v4)
  {
    v5 = v4;
    v6 = OSNumber::unsigned64BitValue(v4);
    v7 = OSNumber::numberOfBits(v5);
    result = OSNumber::withNumber(v6, v7);
LABEL_6:
    *a1 = result;
    return result;
  }

  v8 = OSMetaClassBase::safeMetaCast(v3, gOSStringMetaClass);
  if (v8)
  {
    v9 = v8;
    CStringNoCopy = OSString::getCStringNoCopy(v8);
    Length = OSString::getLength(v9);
    result = OSString::withCString(CStringNoCopy, Length);
    goto LABEL_6;
  }

  v12 = OSMetaClassBase::safeMetaCast(v3, gOSArrayMetaClass);
  if (v12)
  {
    result = deepcopy(block, v12);
    *a1 = block[0];
    return result;
  }

  v13 = OSMetaClassBase::safeMetaCast(v3, gOSDictionaryMetaClass);
  if (!v13)
  {
    result = OSMetaClassBase::safeMetaCast(v3, gOSDataMetaClass);
    if (result)
    {
      result = OSData::withData(result);
      goto LABEL_6;
    }

    goto LABEL_24;
  }

  v14 = v13;
  v15 = OSDictionary::withCapacity(0);
  v16 = v15;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 1174405120;
  block[2] = ___ZL8deepcopyP12OSDictionary_block_invoke;
  block[3] = &__block_descriptor_tmp_3;
  v20 = v15;
  if (v15)
  {
    (v15->retain)(v15);
  }

  v17 = OSDictionary::iterateObjects(v14, block);
  if (v17)
  {
    v18 = 0;
  }

  else
  {
    v18 = v16;
  }

  if (!v17)
  {
    v16 = 0;
  }

  result = v20;
  if (v20)
  {
    result = (*(*v20 + 16))(v20);
  }

  v20 = 0;
  if (v16)
  {
    result = (v16->release)(v16);
  }

  *a1 = v18;
  return result;
}

BOOL ___ZL8deepcopyP12OSDictionary_block_invoke(uint64_t a1, OSObject *a2, OSObject *a3)
{
  deepcopy(&v10, a2);
  deepcopy(&v9, a3);
  if (!a2 || !a3)
  {
    v7 = 1;
    v6 = v9;
    if (!v9)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v6 = v9;
  v7 = !OSDictionary::setObject(*(a1 + 32), v10, v9);
  if (v6)
  {
LABEL_6:
    (v6->release)(v6);
  }

LABEL_7:
  if (v10)
  {
    (v10->release)(v10);
  }

  return v7;
}

uint64_t __copy_helper_block_8_32c33_ZTS11OSSharedPtrI12OSDictionaryE(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  *(a1 + 32) = result;
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t __destroy_helper_block_8_32c33_ZTS11OSSharedPtrI12OSDictionaryE(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    result = (*(*result + 16))(result);
  }

  *(a1 + 32) = 0;
  return result;
}

void *MD5Init(void *a1)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v2 = ccmd5_di();
  v3 = (*(v2 + 8) + *(v2 + 16) + 19) & 0xFFFFFFFFFFFFFFF8;
  MEMORY[0x28223BE20](v2);
  v5 = (v8 - v4);
  ccdigest_init();
  result = DiToMD5(v2, v5, a1);
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void *DiToMD5(uint64_t a1, unint64_t *a2, void *a3)
{
  v6 = a2 + 1;
  v5 = *a2;
  v7 = *(a1 + 16);
  v8 = a2 + *(a1 + 8) + 8;
  a3[2] = __ROR8__(*&v8[v7] + (v5 >> 3), 32);
  memcpy(a3 + 3, v8, v7);
  v9 = *(a1 + 8);

  return memcpy(a3, v6, v9);
}

void *MD5Update(unsigned int *a1)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v2 = ccmd5_di();
  v3 = (*(v2 + 8) + *(v2 + 16) + 19) & 0xFFFFFFFFFFFFFFF8;
  v4 = MEMORY[0x28223BE20](v2);
  v6 = (v9 - v5);
  MD5ToDi(v4, a1, (v9 - v5));
  ccdigest_update();
  result = DiToMD5(v2, v6, a1);
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void *MD5ToDi(uint64_t a1, unsigned int *a2, void *a3)
{
  v6 = a2[5] | (a2[4] << 32);
  v8 = *(a1 + 8);
  v7 = *(a1 + 16);
  *a3 = 8 * (v6 - (v6 % v7));
  v9 = (a3 + 1);
  *&v9[v8 + v7] = v6 % v7;
  memcpy(&v9[v8], a2 + 6, v7);
  v10 = *(a1 + 8);

  return memcpy(v9, a2, v10);
}

uint64_t MD5Final(uint64_t a1, unsigned int *a2)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v4 = ccmd5_di();
  v5 = (*(v4 + 8) + *(v4 + 16) + 19) & 0xFFFFFFFFFFFFFFF8;
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v11 - v7;
  MD5ToDi(v6, a2, (v11 - v7));
  result = (*(v4 + 56))(v4, v8, a1);
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

void *SHA1Init(void *a1)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v2 = ccsha1_di();
  v3 = (*(v2 + 8) + *(v2 + 16) + 19) & 0xFFFFFFFFFFFFFFF8;
  MEMORY[0x28223BE20](v2);
  v5 = (v8 - v4);
  ccdigest_init();
  result = DiToSHA1(v2, v5, a1);
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void *DiToSHA1(uint64_t a1, void *a2, void *a3)
{
  v5 = a2 + 1;
  a3[3] = *(a2 + *(a1 + 8) + *(a1 + 16) + 8) + (*a2 >> 3);
  memcpy(a3 + 4, a2 + *(a1 + 8) + 8, *(a1 + 16));
  v6 = *(a1 + 8);

  return memcpy(a3, v5, v6);
}

void *SHA1Update(void *a1)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v2 = ccsha1_di();
  v3 = (*(v2 + 8) + *(v2 + 16) + 19) & 0xFFFFFFFFFFFFFFF8;
  v4 = MEMORY[0x28223BE20](v2);
  v6 = (v9 - v5);
  SHA1ToDi(v4, a1, (v9 - v5));
  ccdigest_update();
  result = DiToSHA1(v2, v6, a1);
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void *SHA1ToDi(uint64_t a1, void *a2, void *a3)
{
  v6 = a2[3];
  v8 = *(a1 + 8);
  v7 = *(a1 + 16);
  *a3 = 8 * (v6 - (v6 % v7));
  v9 = (a3 + 1);
  *&v9[v8 + v7] = v6 % v7;
  memcpy(&v9[v8], a2 + 4, v7);
  v10 = *(a1 + 8);

  return memcpy(v9, a2, v10);
}

uint64_t SHA1Final(uint64_t a1, void *a2)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v4 = ccsha1_di();
  v5 = (*(v4 + 8) + *(v4 + 16) + 19) & 0xFFFFFFFFFFFFFFF8;
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v11 - v7;
  SHA1ToDi(v6, a2, (v11 - v7));
  result = (*(v4 + 56))(v4, v8, a1);
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t aes_encrypt_key()
{
  if (*ccaes_cbc_encrypt_mode() >= 0x121uLL)
  {
    aes_encrypt_key_cold_1();
  }

  return MEMORY[0x2822013E8]();
}

uint64_t aes_encrypt_cbc()
{
  v4 = *MEMORY[0x277D85DE8];
  v0 = ccaes_cbc_encrypt_mode();
  v1 = (*(v0 + 8) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v0);
  result = cccbc_set_iv();
  if (!result)
  {
    result = cccbc_update();
  }

  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t aes_decrypt_key()
{
  if (*ccaes_cbc_decrypt_mode() >= 0x121uLL)
  {
    aes_decrypt_key_cold_1();
  }

  return MEMORY[0x2822013E8]();
}

uint64_t aes_decrypt_cbc()
{
  v4 = *MEMORY[0x277D85DE8];
  v0 = ccaes_cbc_decrypt_mode();
  v1 = (*(v0 + 8) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v0);
  result = cccbc_set_iv();
  if (!result)
  {
    result = cccbc_update();
  }

  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t aes_encrypt_key_gcm()
{
  if (!ccaes_gcm_encrypt_mode())
  {
    return 0xFFFFFFFFLL;
  }

  return MEMORY[0x282201740]();
}

uint64_t aes_encrypt_key_with_iv_gcm()
{
  if (!ccaes_gcm_encrypt_mode())
  {
    return 0xFFFFFFFFLL;
  }

  return MEMORY[0x282201748]();
}

uint64_t aes_encrypt_set_iv_gcm()
{
  if (!ccaes_gcm_encrypt_mode())
  {
    return 0xFFFFFFFFLL;
  }

  return MEMORY[0x282201760]();
}

uint64_t aes_encrypt_reset_gcm()
{
  if (!ccaes_gcm_encrypt_mode())
  {
    return 0xFFFFFFFFLL;
  }

  return ccgcm_reset();
}

uint64_t aes_encrypt_inc_iv_gcm()
{
  if (!ccaes_gcm_encrypt_mode())
  {
    return 0xFFFFFFFFLL;
  }

  return MEMORY[0x282201738]();
}

uint64_t aes_encrypt_aad_gcm()
{
  if (!ccaes_gcm_encrypt_mode())
  {
    return 0xFFFFFFFFLL;
  }

  return MEMORY[0x282201720]();
}

uint64_t aes_encrypt_gcm()
{
  if (!ccaes_gcm_encrypt_mode())
  {
    return 0xFFFFFFFFLL;
  }

  return MEMORY[0x282201768]();
}

uint64_t aes_encrypt_finalize_gcm()
{
  if (!ccaes_gcm_encrypt_mode())
  {
    return 0xFFFFFFFFLL;
  }

  result = ccgcm_finalize();
  if (!result)
  {

    return ccgcm_reset();
  }

  return result;
}

uint64_t aes_decrypt_key_gcm()
{
  if (!ccaes_gcm_decrypt_mode())
  {
    return 0xFFFFFFFFLL;
  }

  return MEMORY[0x282201740]();
}

uint64_t aes_decrypt_key_with_iv_gcm()
{
  if (!ccaes_gcm_decrypt_mode())
  {
    return 0xFFFFFFFFLL;
  }

  return MEMORY[0x282201748]();
}

uint64_t aes_decrypt_set_iv_gcm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ccaes_gcm_decrypt_mode();
  if (!v6)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = v6;
  result = ccgcm_reset();
  if (!result)
  {

    return MEMORY[0x282201760](v7, a3, a2, a1);
  }

  return result;
}

uint64_t aes_decrypt_reset_gcm()
{
  if (!ccaes_gcm_decrypt_mode())
  {
    return 0xFFFFFFFFLL;
  }

  return ccgcm_reset();
}

uint64_t aes_decrypt_inc_iv_gcm()
{
  if (!ccaes_gcm_decrypt_mode())
  {
    return 0xFFFFFFFFLL;
  }

  return MEMORY[0x282201738]();
}

uint64_t aes_decrypt_aad_gcm()
{
  if (!ccaes_gcm_decrypt_mode())
  {
    return 0xFFFFFFFFLL;
  }

  return MEMORY[0x282201720]();
}

uint64_t aes_decrypt_gcm()
{
  if (!ccaes_gcm_decrypt_mode())
  {
    return 0xFFFFFFFFLL;
  }

  return MEMORY[0x282201768]();
}

uint64_t aes_decrypt_finalize_gcm()
{
  if (!ccaes_gcm_decrypt_mode())
  {
    return 0xFFFFFFFFLL;
  }

  result = ccgcm_finalize();
  if (!result)
  {

    return ccgcm_reset();
  }

  return result;
}

void *aes_encrypt_get_ctx_size_gcm()
{
  result = ccaes_gcm_encrypt_mode();
  if (result)
  {
    return ((*result + 15) & 0xFFFFFFFFFFFFFFF0);
  }

  return result;
}

void *aes_decrypt_get_ctx_size_gcm()
{
  result = ccaes_gcm_decrypt_mode();
  if (result)
  {
    return ((*result + 15) & 0xFFFFFFFFFFFFFFF0);
  }

  return result;
}

int SHA256_Init(SHA256_CTX *c)
{
  v1 = ccsha256_di();
  if ((*(v1 + 8) + *(v1 + 16) - 101) <= 0xFFFFFFFFFFFFFF8ELL)
  {
    SHA256_Init_cold_1();
  }

  return ccdigest_init();
}

int SHA256_Update(SHA256_CTX *c, const void *data, size_t len)
{
  ccsha256_di();

  return ccdigest_update();
}

int SHA256_Final(unsigned __int8 *md, SHA256_CTX *c)
{
  v2 = *(ccsha256_di() + 56);

  return v2();
}

int SHA384_Init(SHA512_CTX *c)
{
  v1 = ccsha384_di();
  if ((*(v1 + 8) + *(v1 + 16) - 197) <= 0xFFFFFFFFFFFFFF2ELL)
  {
    SHA384_Init_cold_1();
  }

  return ccdigest_init();
}

int SHA384_Update(SHA512_CTX *c, const void *data, size_t len)
{
  ccsha384_di();

  return ccdigest_update();
}

int SHA384_Final(unsigned __int8 *md, SHA512_CTX *c)
{
  v2 = *(ccsha384_di() + 56);

  return v2();
}

int SHA512_Init(SHA512_CTX *c)
{
  v1 = ccsha512_di();
  if ((*(v1 + 8) + *(v1 + 16) - 197) <= 0xFFFFFFFFFFFFFF2ELL)
  {
    SHA512_Init_cold_1();
  }

  return ccdigest_init();
}

int SHA512_Update(SHA512_CTX *c, const void *data, size_t len)
{
  ccsha512_di();

  return ccdigest_update();
}

int SHA512_Final(unsigned __int8 *md, SHA512_CTX *c)
{
  v2 = *(ccsha512_di() + 56);

  return v2();
}

double _GLOBAL__sub_I_ObjectIntrospection_mm()
{
  gOSMetaClassBaseRemotePrivateLayout = xmmword_23820CAF0;
  qword_2814EF550 = "OSMetaClassBaseRemotePrivate";
  unk_2814EF558 = xmmword_23820CB00;
  memcpy(&unk_2814EF568, off_278A4A080, 0x168uLL);
  gOSMetaClassBasePrivateLayout = xmmword_23820CB10;
  unk_2814EF738 = xmmword_23820CB20;
  unk_2814EF7A8 = xmmword_278A4A248;
  unk_2814EF7B8 = unk_278A4A258;
  unk_2814EF7C8 = xmmword_278A4A268;
  unk_2814EF7D8 = unk_278A4A278;
  unk_2814EF768 = xmmword_278A4A208;
  unk_2814EF778 = *&off_278A4A218;
  unk_2814EF788 = xmmword_278A4A228;
  unk_2814EF798 = *&off_278A4A238;
  *&result = 0x2382147D1;
  unk_2814EF748 = xmmword_278A4A1E8;
  qword_2814EF730 = "OSMetaClassBasePrivate";
  unk_2814EF758 = unk_278A4A1F8;
  return result;
}

kern_return_t IOBufferMemoryDescriptorMetaClass::New(IOBufferMemoryDescriptorMetaClass *this, OSObject *instance)
{
  return 0;
}

kern_return_t IOBufferMemoryDescriptor::Dispatch(IOBufferMemoryDescriptor *this, const IORPC *rpc)
{
  message = rpc->message;
  *&rpca.reply = *&rpc->reply;
  IORPCMessageFromMach(message, 0);
  rpca.message = message;
  return IOMemoryDescriptor::_Dispatch(this, &rpca);
}

kern_return_t IOBufferMemoryDescriptor::_Dispatch(IOBufferMemoryDescriptor *self, const IORPC *rpc)
{
  IORPCMessageFromMach(rpc->message, 0);
  v5 = *rpc;
  return IOMemoryDescriptor::_Dispatch(self, &v5);
}

kern_return_t IOBufferMemoryDescriptorMetaClass::Dispatch(IOBufferMemoryDescriptorMetaClass *this, const IORPC *rpc)
{
  IORPCMessageFromMach(rpc->message, 0);
  v5 = *rpc;
  return OSMetaClassBase::Dispatch(this, &v5);
}

kern_return_t IOBufferMemoryDescriptor::Create(uint64_t options, uint64_t capacity, uint64_t alignment, IOBufferMemoryDescriptor **memory)
{
  v20 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0;
  DWORD1(v11) = 96;
  v14 = xmmword_23820CB30;
  v15 = 1;
  anObject = gIOBufferMemoryDescriptorMetaClass;
  *(&v12 + 4) = 0x14DA2B68CLL;
  v17 = options;
  v18 = capacity;
  v19 = alignment;
  invoke.message = &v11;
  invoke.reply = &v11;
  *&invoke.sendSize = 0x8C00000060;
  v5 = OSMetaClassBase::Invoke(gIOBufferMemoryDescriptorMetaClass, &invoke);
  if (!v5)
  {
    v5 = -536870209;
    if (DWORD1(v11) == 72 && v14 == 0xB78DE684E17D5A4BLL && DWORD2(v12) == 1 && v15 == 1)
    {
      v6 = OSMetaClassBase::safeMetaCast(anObject, gIOBufferMemoryDescriptorMetaClass);
      *memory = v6;
      if (v6)
      {
        v7 = 1;
      }

      else
      {
        v7 = anObject == 0;
      }

      if (v7)
      {
        v5 = 0;
      }

      else
      {
        v5 = -536870206;
      }
    }
  }

  v8 = *MEMORY[0x277D85DE8];
  return v5;
}

kern_return_t IOBufferMemoryDescriptor::SetLength(IOBufferMemoryDescriptor *this, uint64_t length, OSDispatchMethod supermethod)
{
  v11 = *MEMORY[0x277D85DE8];
  memset(v6, 0, sizeof(v6));
  *&v6[4] = 80;
  v7 = xmmword_23820CB40;
  v8 = 1;
  v9 = this;
  *&v6[20] = 0x14DA2B68CLL;
  v10 = length;
  if (supermethod)
  {
    invoke.message = v6;
    invoke.reply = v6;
    *&invoke.sendSize = 0x7800000050;
    result = (supermethod)(this, &invoke);
    if (result)
    {
      goto LABEL_11;
    }
  }

  else
  {
    invoke.message = v6;
    invoke.reply = v6;
    *&invoke.sendSize = 0x7800000050;
    result = OSMetaClassBase::Invoke(this, &invoke);
    if (result)
    {
      goto LABEL_11;
    }
  }

  result = -536870209;
  if (*&v6[4] == 52 && *&v6[28] == 0xC115230C191A6A9ALL && !*&v6[24])
  {
    if (*(&v7 + 4))
    {
      result = -536870209;
    }

    else
    {
      result = 0;
    }
  }

LABEL_11:
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

kern_return_t IOBufferMemoryDescriptor::Create_Invoke(const IORPC *rpc, IOBufferMemoryDescriptor::Create_Handler func)
{
  result = -536870209;
  message = rpc->message;
  if (rpc->message->msgh_body.msgh_descriptor_count == 1 && *&message[2].msgh.msgh_bits == 1 && rpc->sendSize >= 0x60 && rpc->replySize >= 0x48)
  {
    reply = rpc->reply;
    result = (func)(*&message[2].msgh.msgh_voucher_port, *&message[2].msgh_body.msgh_descriptor_count, *&message[3].msgh.msgh_size, &reply[2].msgh.msgh_remote_port);
    if (!result)
    {
      *&reply[1].msgh.msgh_local_port = xmmword_23820CB50;
      reply->msgh.msgh_size = 72;
      *&reply->msgh.msgh_id = 0x14DA2B68DLL;
      *&reply[2].msgh.msgh_bits = 1;
      reply[1].msgh.msgh_remote_port &= 0xFFFFFFu;
    }
  }

  return result;
}

kern_return_t IOBufferMemoryDescriptor::SetLength_Invoke(const IORPC *rpc, OSMetaClassBase *target, IOBufferMemoryDescriptor::SetLength_Handler func)
{
  result = -536870209;
  message = rpc->message;
  if (rpc->message->msgh_body.msgh_descriptor_count == 1 && *&message[2].msgh.msgh_bits == 1 && rpc->sendSize >= 0x50 && rpc->replySize >= 0x34)
  {
    reply = rpc->reply;
    result = (func)(target, *&message[2].msgh.msgh_voucher_port);
    if (!result)
    {
      *&reply[1].msgh.msgh_bits = xmmword_23820CB60;
      reply->msgh.msgh_size = 52;
      *&reply->msgh.msgh_id = 1302509197;
      *&reply[1].msgh.msgh_voucher_port = 0;
    }
  }

  return result;
}

kern_return_t IOCommandMetaClass::New(IOCommandMetaClass *this, OSObject *instance)
{
  return 0;
}

kern_return_t IOCommandPoolMetaClass::New(IOCommandPoolMetaClass *this, OSObject *instance)
{
  return 0;
}

kern_return_t IODMACommandMetaClass::New(IODMACommandMetaClass *this, OSObject *instance)
{
  return 0;
}

kern_return_t IODMACommand::Dispatch(IODMACommand *this, const IORPC *rpc)
{
  message = rpc->message;
  *&rpca.reply = *&rpc->reply;
  IORPCMessageFromMach(message, 0);
  rpca.message = message;
  return OSObject::_Dispatch(this, &rpca);
}

kern_return_t IODMACommand::_Dispatch(IODMACommand *self, const IORPC *rpc)
{
  IORPCMessageFromMach(rpc->message, 0);
  v5 = *rpc;
  return OSObject::_Dispatch(self, &v5);
}

kern_return_t IODMACommandMetaClass::Dispatch(IODMACommandMetaClass *this, const IORPC *rpc)
{
  IORPCMessageFromMach(rpc->message, 0);
  v5 = *rpc;
  return OSMetaClassBase::Dispatch(this, &v5);
}

kern_return_t IODMACommand::Create(IOService *device, uint64_t options, const IODMACommandSpecification *specification, IODMACommand **command)
{
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  *anObject = xmmword_23820CFF0;
  *(&v15 + 4) = 0x24DA2B68CLL;
  v5 = *&specification->_resv[6];
  v27 = *&specification->_resv[8];
  v6 = *&specification->_resv[12];
  v28 = *&specification->_resv[10];
  v29 = v6;
  v30 = *&specification->_resv[14];
  v7 = *&specification->options;
  v23 = *specification->_resv;
  v8 = *&specification->_resv[4];
  v24 = *&specification->_resv[2];
  v25 = v8;
  v26 = v5;
  DWORD1(v14) = 244;
  v19 = gIODMACommandMetaClass;
  *&anObject[16] = 2;
  v17 = 0;
  v20 = device;
  v21 = options;
  v22 = v7;
  invoke.message = &v14;
  invoke.reply = &v14;
  *&invoke.sendSize = 0x8C000000F4;
  v9 = OSMetaClassBase::Invoke(gIODMACommandMetaClass, &invoke);
  if (!v9)
  {
    v9 = -536870209;
    if (DWORD1(v14) == 72 && *(&v16 + 1) == 0xF296A92BB435AF2ELL && DWORD2(v15) == 1 && *&anObject[4] == 1)
    {
      v10 = OSMetaClassBase::safeMetaCast(*&anObject[12], gIODMACommandMetaClass);
      *command = v10;
      if (v10)
      {
        v11 = 1;
      }

      else
      {
        v11 = *&anObject[12] == 0;
      }

      if (v11)
      {
        return 0;
      }

      else
      {
        return -536870206;
      }
    }
  }

  return v9;
}

kern_return_t IODMACommand::PrepareForDMA(IODMACommand *this, uint64_t options, IOMemoryDescriptor *memory, uint64_t offset, uint64_t length, uint64_t *flags, uint32_t *segmentsCount, IOAddressSegment *segments, OSDispatchMethod supermethod)
{
  memset(v16, 0, sizeof(v16));
  v20 = 0u;
  *&v16[4] = 124;
  v17 = xmmword_23820D000;
  v19[0] = this;
  v18 = 2;
  *&v16[20] = 0x24DA2B68CLL;
  v19[2] = options;
  v19[1] = memory;
  v19[3] = offset;
  *&v20 = length;
  if (*segmentsCount > 0x20)
  {
    return -536870168;
  }

  DWORD2(v20) = *segmentsCount;
  if (supermethod)
  {
    invoke.message = v16;
    invoke.reply = v16;
    *&invoke.sendSize = 0x2900000007CLL;
    result = (supermethod)(this, &invoke);
    if (result)
    {
      return result;
    }
  }

  else
  {
    invoke.message = v16;
    invoke.reply = v16;
    *&invoke.sendSize = 0x2900000007CLL;
    result = OSMetaClassBase::Invoke(this, &invoke);
    if (result)
    {
      return result;
    }
  }

  if (*&v16[4] != 588 || *&v16[28] != 0xF88A8C08B75B1110 || *&v16[24])
  {
    return -536870209;
  }

  result = -536870209;
  if (!*&v16[44])
  {
    if (flags)
    {
      *flags = v17;
    }

    v13 = DWORD2(v17);
    v14 = *segmentsCount;
    if (DWORD2(v17) < *segmentsCount)
    {
      *segmentsCount = DWORD2(v17);
      v14 = v13;
    }

    memcpy(segments, v19, 16 * v14);
    return 0;
  }

  return result;
}

kern_return_t IODMACommand::CompleteDMA(IODMACommand *this, uint64_t options, OSDispatchMethod supermethod)
{
  v11 = *MEMORY[0x277D85DE8];
  memset(v6, 0, sizeof(v6));
  *&v6[4] = 80;
  v7 = xmmword_23820D010;
  v8 = 1;
  v9 = this;
  *&v6[20] = 0x14DA2B68CLL;
  v10 = options;
  if (supermethod)
  {
    invoke.message = v6;
    invoke.reply = v6;
    *&invoke.sendSize = 0x7800000050;
    result = (supermethod)(this, &invoke);
    if (result)
    {
      goto LABEL_11;
    }
  }

  else
  {
    invoke.message = v6;
    invoke.reply = v6;
    *&invoke.sendSize = 0x7800000050;
    result = OSMetaClassBase::Invoke(this, &invoke);
    if (result)
    {
      goto LABEL_11;
    }
  }

  result = -536870209;
  if (*&v6[4] == 52 && *&v6[28] == 0xAE15E446C7041259 && !*&v6[24])
  {
    if (*(&v7 + 4))
    {
      result = -536870209;
    }

    else
    {
      result = 0;
    }
  }

LABEL_11:
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

kern_return_t IODMACommand::GetPreparation(IODMACommand *this, uint64_t *offset, uint64_t *length, IOMemoryDescriptor **memory, OSDispatchMethod supermethod)
{
  v23 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0;
  DWORD1(v15) = 72;
  v18 = xmmword_23820D020;
  v19 = 1;
  anObject = this;
  *(&v16 + 4) = 0x14DA2B68CLL;
  invoke.message = &v15;
  invoke.reply = &v15;
  *&invoke.sendSize = 0x9C00000048;
  if (supermethod)
  {
    v8 = (supermethod)(this, &invoke);
  }

  else
  {
    v8 = OSMetaClassBase::Invoke(this, &invoke);
  }

  v9 = v8;
  if (!v8)
  {
    v9 = -536870209;
    if (DWORD1(v15) == 88 && v18 == 0xCB1908DDF3B73CDELL && DWORD2(v16) == 1 && v19 == 1)
    {
      if (offset)
      {
        *offset = v21;
      }

      if (length)
      {
        *length = v22;
      }

      v10 = OSMetaClassBase::safeMetaCast(anObject, gIOMemoryDescriptorMetaClass);
      *memory = v10;
      if (v10)
      {
        v11 = 1;
      }

      else
      {
        v11 = anObject == 0;
      }

      if (v11)
      {
        v9 = 0;
      }

      else
      {
        v9 = -536870206;
      }
    }
  }

  v12 = *MEMORY[0x277D85DE8];
  return v9;
}

kern_return_t IODMACommand::PerformOperation(IODMACommand *this, uint64_t options, uint64_t dmaOffset, uint64_t length, uint64_t dataOffset, IOMemoryDescriptor *data, OSDispatchMethod supermethod)
{
  memset(v9, 0, 52);
  v9[1] = 124;
  *&v9[13] = xmmword_23820D030;
  v11 = this;
  v10 = 2;
  *&v9[5] = 0x24DA2B68CLL;
  v13 = options;
  v14 = dmaOffset;
  v15 = length;
  v16 = dataOffset;
  v12 = data;
  if (supermethod)
  {
    invoke.message = v9;
    invoke.reply = v9;
    *&invoke.sendSize = 0x780000007CLL;
    result = (supermethod)(this, &invoke);
    if (result)
    {
      return result;
    }
  }

  else
  {
    invoke.message = v9;
    invoke.reply = v9;
    *&invoke.sendSize = 0x780000007CLL;
    result = OSMetaClassBase::Invoke(this, &invoke);
    if (result)
    {
      return result;
    }
  }

  result = -536870209;
  if (v9[1] == 52 && *&v9[7] == 0xC41CD97D9B3042EELL && !v9[6])
  {
    if (*&v9[11])
    {
      return -536870209;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

kern_return_t IODMACommand::Create_Invoke(const IORPC *rpc, IODMACommand::Create_Handler func)
{
  v2 = -536870209;
  message = rpc->message;
  if (rpc->message->msgh_body.msgh_descriptor_count == 2 && *&message[2].msgh.msgh_local_port == 2 && rpc->sendSize >= 0xF4 && rpc->replySize >= 0x48)
  {
    reply = rpc->reply;
    if (OSMetaClassBase::safeMetaCast(*&message[3].msgh.msgh_bits, gIOServiceMetaClass) || !*&message[3].msgh.msgh_bits)
    {
      v6 = *&message[3].msgh.msgh_remote_port;
      v2 = (func)();
      if (!v2)
      {
        *&reply[1].msgh.msgh_local_port = xmmword_23820D040;
        reply->msgh.msgh_size = 72;
        *&reply->msgh.msgh_id = 0x14DA2B68DLL;
        *&reply[2].msgh.msgh_bits = 1;
        reply[1].msgh.msgh_remote_port &= 0xFFFFFFu;
      }
    }

    else
    {
      return -536870206;
    }
  }

  return v2;
}

kern_return_t IODMACommand::PrepareForDMA_Invoke(const IORPC *rpc, OSMetaClassBase *target, IODMACommand::PrepareForDMA_Handler func)
{
  v3 = -536870209;
  message = rpc->message;
  reply = rpc->reply;
  sendSize = rpc->sendSize;
  replySize = rpc->replySize;
  msgh_size = rpc->message[4].msgh.msgh_size;
  if (msgh_size >= 0x20)
  {
    msgh_size = 32;
  }

  v13 = msgh_size;
  if (message->msgh_body.msgh_descriptor_count == 2 && *&message[2].msgh.msgh_local_port == 2 && sendSize >= 0x7C && replySize >= 0x24C)
  {
    v11 = OSMetaClassBase::safeMetaCast(*&message[3].msgh.msgh_bits, gIOMemoryDescriptorMetaClass);
    if (v11 || !*&message[3].msgh.msgh_bits)
    {
      v3 = (func)(target, *&message[3].msgh.msgh_remote_port, v11, *&message[3].msgh.msgh_voucher_port, *&message[3].msgh_body.msgh_descriptor_count, &reply[1].msgh_body, &v13, &reply[2].msgh.msgh_id);
      if (!v3)
      {
        *&reply[1].msgh.msgh_bits = xmmword_23820D050;
        reply->msgh.msgh_size = 588;
        *&reply->msgh.msgh_id = 1302509197;
        *&reply[1].msgh.msgh_voucher_port = 0;
        reply[2].msgh.msgh_size = v13;
      }
    }

    else
    {
      return -536870206;
    }
  }

  return v3;
}

kern_return_t IODMACommand::CompleteDMA_Invoke(const IORPC *rpc, OSMetaClassBase *target, IODMACommand::CompleteDMA_Handler func)
{
  result = -536870209;
  message = rpc->message;
  if (rpc->message->msgh_body.msgh_descriptor_count == 1 && *&message[2].msgh.msgh_bits == 1 && rpc->sendSize >= 0x50 && rpc->replySize >= 0x34)
  {
    reply = rpc->reply;
    result = (func)(target, *&message[2].msgh.msgh_voucher_port);
    if (!result)
    {
      *&reply[1].msgh.msgh_bits = xmmword_23820D060;
      reply->msgh.msgh_size = 52;
      *&reply->msgh.msgh_id = 1302509197;
      *&reply[1].msgh.msgh_voucher_port = 0;
    }
  }

  return result;
}

kern_return_t IODMACommand::GetPreparation_Invoke(const IORPC *rpc, OSMetaClassBase *target, IODMACommand::GetPreparation_Handler func)
{
  result = -536870209;
  if (rpc->message->msgh_body.msgh_descriptor_count == 1 && *&rpc->message[2].msgh.msgh_bits == 1 && rpc->sendSize >= 0x48 && rpc->replySize >= 0x58)
  {
    reply = rpc->reply;
    result = (func)(target, &reply[2].msgh.msgh_voucher_port, &reply[2].msgh_body, &reply[2].msgh.msgh_remote_port);
    if (!result)
    {
      *&reply[1].msgh.msgh_local_port = xmmword_23820D070;
      reply->msgh.msgh_size = 88;
      *&reply->msgh.msgh_id = 0x14DA2B68DLL;
      *&reply[2].msgh.msgh_bits = 1;
      reply[1].msgh.msgh_remote_port &= 0xFFFFFFu;
    }
  }

  return result;
}

kern_return_t IODMACommand::PerformOperation_Invoke(const IORPC *rpc, OSMetaClassBase *target, IODMACommand::PerformOperation_Handler func)
{
  v3 = -536870209;
  message = rpc->message;
  if (rpc->message->msgh_body.msgh_descriptor_count == 2 && *&message[2].msgh.msgh_local_port == 2 && rpc->sendSize >= 0x7C && rpc->replySize >= 0x34)
  {
    reply = rpc->reply;
    v8 = OSMetaClassBase::safeMetaCast(*&message[3].msgh.msgh_bits, gIOMemoryDescriptorMetaClass);
    if (v8 || !*&message[3].msgh.msgh_bits)
    {
      v3 = (func)(target, *&message[3].msgh.msgh_remote_port, *&message[3].msgh.msgh_voucher_port, *&message[3].msgh_body.msgh_descriptor_count, *&message[4].msgh.msgh_size, v8);
      if (!v3)
      {
        *&reply[1].msgh.msgh_bits = xmmword_23820D080;
        reply->msgh.msgh_size = 52;
        *&reply->msgh.msgh_id = 1302509197;
        *&reply[1].msgh.msgh_voucher_port = 0;
      }
    }

    else
    {
      return -536870206;
    }
  }

  return v3;
}

kern_return_t IODataQueueDispatchSourceMetaClass::New(IODataQueueDispatchSourceMetaClass *this, OSObject *instance)
{
  return 0;
}

kern_return_t IODataQueueDispatchSource::_Dispatch(IODataQueueDispatchSource *self, const IORPC *rpc)
{
  msgid = IORPCMessageFromMach(rpc->message, 0)->msgid;
  if (msgid == 0xEF19D38D4F945FD0)
  {
    v6 = *rpc;
    return IODispatchSource::CheckForWork_Invoke(&v6, self, IODataQueueDispatchSource::CheckForWork_Impl);
  }

  else if (msgid == 0xD963BB196F70BB93)
  {
    v6 = *rpc;
    return IODispatchSource::Cancel_Invoke(&v6, self, IODataQueueDispatchSource::Cancel_Impl);
  }

  else
  {
    v6 = *rpc;
    if (msgid == 0xBB42C489FE4DEE8ELL)
    {
      return IODispatchSource::SetEnableWithCompletion_Invoke(&v6, self, IODataQueueDispatchSource::SetEnableWithCompletion_Impl);
    }

    else
    {
      return IODispatchSource::_Dispatch(self, &v6);
    }
  }
}

kern_return_t IODataQueueDispatchSourceMetaClass::Dispatch(IODataQueueDispatchSourceMetaClass *this, const IORPC *rpc)
{
  IORPCMessageFromMach(rpc->message, 0);
  v5 = *rpc;
  return OSMetaClassBase::Dispatch(this, &v5);
}

kern_return_t IODataQueueDispatchSource::Create(uint64_t queueByteCount, IODispatchQueue *queue, IODataQueueDispatchSource **source)
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  DWORD1(v9) = 100;
  *anObject = xmmword_23820D250;
  v14 = gIODataQueueDispatchSourceMetaClass;
  *&anObject[16] = 2;
  *(&v10 + 4) = 0x24DA2B68CLL;
  v16 = queueByteCount;
  v12 = 0;
  v15 = queue;
  invoke.message = &v9;
  invoke.reply = &v9;
  *&invoke.sendSize = 0x8C00000064;
  v4 = OSMetaClassBase::Invoke(gIODataQueueDispatchSourceMetaClass, &invoke);
  if (!v4)
  {
    v4 = -536870209;
    if (DWORD1(v9) == 72 && *(&v11 + 1) == 0xE8544306A54D09E0 && DWORD2(v10) == 1 && *&anObject[4] == 1)
    {
      v5 = OSMetaClassBase::safeMetaCast(*&anObject[12], gIODataQueueDispatchSourceMetaClass);
      *source = v5;
      if (v5)
      {
        v6 = 1;
      }

      else
      {
        v6 = *&anObject[12] == 0;
      }

      if (v6)
      {
        return 0;
      }

      else
      {
        return -536870206;
      }
    }
  }

  return v4;
}

kern_return_t IODataQueueDispatchSource::SetDataAvailableHandler(IODataQueueDispatchSource *this, OSAction *action, OSDispatchMethod supermethod)
{
  memset(v5, 0, 52);
  v5[1] = 92;
  *&v5[13] = xmmword_23820D260;
  v7 = this;
  v6 = 2;
  *&v5[5] = 0x24DA2B68CLL;
  v8 = action;
  if (supermethod)
  {
    invoke.message = v5;
    invoke.reply = v5;
    *&invoke.sendSize = 0x780000005CLL;
    result = (supermethod)(this, &invoke);
    if (result)
    {
      return result;
    }
  }

  else
  {
    invoke.message = v5;
    invoke.reply = v5;
    *&invoke.sendSize = 0x780000005CLL;
    result = OSMetaClassBase::Invoke(this, &invoke);
    if (result)
    {
      return result;
    }
  }

  result = -536870209;
  if (v5[1] == 52 && *&v5[7] == 0xD2C1D8CC6EC3A591 && !v5[6])
  {
    if (*&v5[11])
    {
      return -536870209;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

kern_return_t IODataQueueDispatchSource::SetDataServicedHandler(IODataQueueDispatchSource *this, OSAction *action, OSDispatchMethod supermethod)
{
  memset(v5, 0, 52);
  v5[1] = 92;
  *&v5[13] = xmmword_23820D270;
  v7 = this;
  v6 = 2;
  *&v5[5] = 0x24DA2B68CLL;
  v8 = action;
  if (supermethod)
  {
    invoke.message = v5;
    invoke.reply = v5;
    *&invoke.sendSize = 0x780000005CLL;
    result = (supermethod)(this, &invoke);
    if (result)
    {
      return result;
    }
  }

  else
  {
    invoke.message = v5;
    invoke.reply = v5;
    *&invoke.sendSize = 0x780000005CLL;
    result = OSMetaClassBase::Invoke(this, &invoke);
    if (result)
    {
      return result;
    }
  }

  result = -536870209;
  if (v5[1] == 52 && *&v5[7] == 0xD0AAC29BBA67B644 && !v5[6])
  {
    if (*&v5[11])
    {
      return -536870209;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

kern_return_t IODataQueueDispatchSource::CopyMemory(IODataQueueDispatchSource *this, IOMemoryDescriptor **memory, OSDispatchMethod supermethod)
{
  v17 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0;
  DWORD1(v11) = 72;
  v14 = xmmword_23820D280;
  v15 = 1;
  anObject = this;
  *(&v12 + 4) = 0x14DA2B68CLL;
  invoke.message = &v11;
  invoke.reply = &v11;
  *&invoke.sendSize = 0x8C00000048;
  if (supermethod)
  {
    v4 = (supermethod)(this, &invoke);
  }

  else
  {
    v4 = OSMetaClassBase::Invoke(this, &invoke);
  }

  v5 = v4;
  if (!v4)
  {
    v5 = -536870209;
    if (DWORD1(v11) == 72 && v14 == 0x9BE617EC7D8CD728 && DWORD2(v12) == 1 && v15 == 1)
    {
      v6 = OSMetaClassBase::safeMetaCast(anObject, gIOMemoryDescriptorMetaClass);
      *memory = v6;
      if (v6)
      {
        v7 = 1;
      }

      else
      {
        v7 = anObject == 0;
      }

      if (v7)
      {
        v5 = 0;
      }

      else
      {
        v5 = -536870206;
      }
    }
  }

  v8 = *MEMORY[0x277D85DE8];
  return v5;
}

kern_return_t IODataQueueDispatchSource::CopyDataAvailableHandler(IODataQueueDispatchSource *this, OSAction **action, OSDispatchMethod supermethod)
{
  v17 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0;
  DWORD1(v11) = 72;
  v14 = xmmword_23820D290;
  v15 = 1;
  anObject = this;
  *(&v12 + 4) = 0x14DA2B68CLL;
  invoke.message = &v11;
  invoke.reply = &v11;
  *&invoke.sendSize = 0x8C00000048;
  if (supermethod)
  {
    v4 = (supermethod)(this, &invoke);
  }

  else
  {
    v4 = OSMetaClassBase::Invoke(this, &invoke);
  }

  v5 = v4;
  if (!v4)
  {
    v5 = -536870209;
    if (DWORD1(v11) == 72 && v14 == 0xC856B17471F65D99 && DWORD2(v12) == 1 && v15 == 1)
    {
      v6 = OSMetaClassBase::safeMetaCast(anObject, gOSActionMetaClass);
      *action = v6;
      if (v6)
      {
        v7 = 1;
      }

      else
      {
        v7 = anObject == 0;
      }

      if (v7)
      {
        v5 = 0;
      }

      else
      {
        v5 = -536870206;
      }
    }
  }

  v8 = *MEMORY[0x277D85DE8];
  return v5;
}

kern_return_t IODataQueueDispatchSource::CopyDataServicedHandler(IODataQueueDispatchSource *this, OSAction **action, OSDispatchMethod supermethod)
{
  v17 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0;
  DWORD1(v11) = 72;
  v14 = xmmword_23820D2A0;
  v15 = 1;
  anObject = this;
  *(&v12 + 4) = 0x14DA2B68CLL;
  invoke.message = &v11;
  invoke.reply = &v11;
  *&invoke.sendSize = 0x8C00000048;
  if (supermethod)
  {
    v4 = (supermethod)(this, &invoke);
  }

  else
  {
    v4 = OSMetaClassBase::Invoke(this, &invoke);
  }

  v5 = v4;
  if (!v4)
  {
    v5 = -536870209;
    if (DWORD1(v11) == 72 && v14 == 0xD8759C8DA406B3FCLL && DWORD2(v12) == 1 && v15 == 1)
    {
      v6 = OSMetaClassBase::safeMetaCast(anObject, gOSActionMetaClass);
      *action = v6;
      if (v6)
      {
        v7 = 1;
      }

      else
      {
        v7 = anObject == 0;
      }

      if (v7)
      {
        v5 = 0;
      }

      else
      {
        v5 = -536870206;
      }
    }
  }

  v8 = *MEMORY[0x277D85DE8];
  return v5;
}

void IODataQueueDispatchSource::DataAvailable(IODataQueueDispatchSource *this, OSAction *action, OSDispatchMethod supermethod)
{
  v4 = 0u;
  v5 = 0u;
  v6 = 0u;
  DWORD1(v4) = 92;
  v8 = xmmword_23820D2B0;
  v10 = action;
  v9 = 2;
  *(&v5 + 4) = 0x24DA2B68CLL;
  v7 = 0;
  v11 = action;
  invoke.message = &v4;
  invoke.reply = 0;
  *&invoke.sendSize = 92;
  OSMetaClassBase::Invoke(action, &invoke);
}

void IODataQueueDispatchSource::DataServiced(IODataQueueDispatchSource *this, OSAction *action, OSDispatchMethod supermethod)
{
  v4 = 0u;
  v5 = 0u;
  v6 = 0u;
  DWORD1(v4) = 92;
  v8 = xmmword_23820D2C0;
  v10 = action;
  v9 = 2;
  *(&v5 + 4) = 0x24DA2B68CLL;
  v7 = 0;
  v11 = action;
  invoke.message = &v4;
  invoke.reply = 0;
  *&invoke.sendSize = 92;
  OSMetaClassBase::Invoke(action, &invoke);
}

kern_return_t IODataQueueDispatchSource::Create_Invoke(const IORPC *rpc, IODataQueueDispatchSource::Create_Handler func)
{
  v2 = -536870209;
  message = rpc->message;
  if (rpc->message->msgh_body.msgh_descriptor_count == 2 && *&message[2].msgh.msgh_local_port == 2 && rpc->sendSize >= 0x64 && rpc->replySize >= 0x48)
  {
    reply = rpc->reply;
    v6 = OSMetaClassBase::safeMetaCast(*&message[3].msgh.msgh_bits, gIODispatchQueueMetaClass);
    if (v6 || !*&message[3].msgh.msgh_bits)
    {
      v2 = (func)(*&message[3].msgh.msgh_remote_port, v6, &reply[2].msgh.msgh_remote_port);
      if (!v2)
      {
        *&reply[1].msgh.msgh_local_port = xmmword_23820D2D0;
        reply->msgh.msgh_size = 72;
        *&reply->msgh.msgh_id = 0x14DA2B68DLL;
        *&reply[2].msgh.msgh_bits = 1;
        reply[1].msgh.msgh_remote_port &= 0xFFFFFFu;
      }
    }

    else
    {
      return -536870206;
    }
  }

  return v2;
}

kern_return_t IODataQueueDispatchSource::SetDataAvailableHandler_Invoke(const IORPC *rpc, OSMetaClassBase *target, IODataQueueDispatchSource::SetDataAvailableHandler_Handler func)
{
  v3 = -536870209;
  message = rpc->message;
  if (rpc->message->msgh_body.msgh_descriptor_count == 2 && *&message[2].msgh.msgh_local_port == 2 && rpc->sendSize >= 0x5C && rpc->replySize >= 0x34)
  {
    reply = rpc->reply;
    v8 = OSMetaClassBase::safeMetaCast(*&message[3].msgh.msgh_bits, gOSActionMetaClass);
    if (v8 || !*&message[3].msgh.msgh_bits)
    {
      v3 = (func)(target, v8);
      if (!v3)
      {
        *&reply[1].msgh.msgh_bits = xmmword_23820D2E0;
        reply->msgh.msgh_size = 52;
        *&reply->msgh.msgh_id = 1302509197;
        *&reply[1].msgh.msgh_voucher_port = 0;
      }
    }

    else
    {
      return -536870206;
    }
  }

  return v3;
}

kern_return_t IODataQueueDispatchSource::SetDataServicedHandler_Invoke(const IORPC *rpc, OSMetaClassBase *target, IODataQueueDispatchSource::SetDataServicedHandler_Handler func)
{
  v3 = -536870209;
  message = rpc->message;
  if (rpc->message->msgh_body.msgh_descriptor_count == 2 && *&message[2].msgh.msgh_local_port == 2 && rpc->sendSize >= 0x5C && rpc->replySize >= 0x34)
  {
    reply = rpc->reply;
    v8 = OSMetaClassBase::safeMetaCast(*&message[3].msgh.msgh_bits, gOSActionMetaClass);
    if (v8 || !*&message[3].msgh.msgh_bits)
    {
      v3 = (func)(target, v8);
      if (!v3)
      {
        *&reply[1].msgh.msgh_bits = xmmword_23820D2F0;
        reply->msgh.msgh_size = 52;
        *&reply->msgh.msgh_id = 1302509197;
        *&reply[1].msgh.msgh_voucher_port = 0;
      }
    }

    else
    {
      return -536870206;
    }
  }

  return v3;
}

kern_return_t IODataQueueDispatchSource::CopyMemory_Invoke(const IORPC *rpc, OSMetaClassBase *target, IODataQueueDispatchSource::CopyMemory_Handler func)
{
  result = -536870209;
  if (rpc->message->msgh_body.msgh_descriptor_count == 1 && *&rpc->message[2].msgh.msgh_bits == 1 && rpc->sendSize >= 0x48 && rpc->replySize >= 0x48)
  {
    reply = rpc->reply;
    result = (func)(target, &reply[2].msgh.msgh_remote_port);
    if (!result)
    {
      *&reply[1].msgh.msgh_local_port = xmmword_23820D300;
      reply->msgh.msgh_size = 72;
      *&reply->msgh.msgh_id = 0x14DA2B68DLL;
      *&reply[2].msgh.msgh_bits = 1;
      reply[1].msgh.msgh_remote_port &= 0xFFFFFFu;
    }
  }

  return result;
}

kern_return_t IODataQueueDispatchSource::CopyDataAvailableHandler_Invoke(const IORPC *rpc, OSMetaClassBase *target, IODataQueueDispatchSource::CopyDataAvailableHandler_Handler func)
{
  result = -536870209;
  if (rpc->message->msgh_body.msgh_descriptor_count == 1 && *&rpc->message[2].msgh.msgh_bits == 1 && rpc->sendSize >= 0x48 && rpc->replySize >= 0x48)
  {
    reply = rpc->reply;
    result = (func)(target, &reply[2].msgh.msgh_remote_port);
    if (!result)
    {
      *&reply[1].msgh.msgh_local_port = xmmword_23820D310;
      reply->msgh.msgh_size = 72;
      *&reply->msgh.msgh_id = 0x14DA2B68DLL;
      *&reply[2].msgh.msgh_bits = 1;
      reply[1].msgh.msgh_remote_port &= 0xFFFFFFu;
    }
  }

  return result;
}

kern_return_t IODataQueueDispatchSource::CopyDataServicedHandler_Invoke(const IORPC *rpc, OSMetaClassBase *target, IODataQueueDispatchSource::CopyDataServicedHandler_Handler func)
{
  result = -536870209;
  if (rpc->message->msgh_body.msgh_descriptor_count == 1 && *&rpc->message[2].msgh.msgh_bits == 1 && rpc->sendSize >= 0x48 && rpc->replySize >= 0x48)
  {
    reply = rpc->reply;
    result = (func)(target, &reply[2].msgh.msgh_remote_port);
    if (!result)
    {
      *&reply[1].msgh.msgh_local_port = xmmword_23820D320;
      reply->msgh.msgh_size = 72;
      *&reply->msgh.msgh_id = 0x14DA2B68DLL;
      *&reply[2].msgh.msgh_bits = 1;
      reply[1].msgh.msgh_remote_port &= 0xFFFFFFu;
    }
  }

  return result;
}

kern_return_t IODataQueueDispatchSource::DataAvailable_Invoke(const IORPC *rpc, OSMetaClassBase *target, IODataQueueDispatchSource::DataAvailable_Handler func, const OSMetaClass *targetActionClass)
{
  v4 = -536870209;
  message = rpc->message;
  if (rpc->message->msgh_body.msgh_descriptor_count == 2 && *&message[2].msgh.msgh_local_port == 2 && rpc->sendSize >= 0x5C && (!rpc->reply || rpc->replySize >= 0x34))
  {
    if (targetActionClass)
    {
      v8 = targetActionClass;
    }

    else
    {
      v8 = gOSActionMetaClass;
    }

    v9 = OSMetaClassBase::safeMetaCast(*&message[3].msgh.msgh_bits, v8);
    if (v9 || !*&message[3].msgh.msgh_bits)
    {
      (func)(target, v9);
      return 0;
    }

    else
    {
      return -536870206;
    }
  }

  return v4;
}

kern_return_t IODataQueueDispatchSource::DataServiced_Invoke(const IORPC *rpc, OSMetaClassBase *target, IODataQueueDispatchSource::DataServiced_Handler func, const OSMetaClass *targetActionClass)
{
  v4 = -536870209;
  message = rpc->message;
  if (rpc->message->msgh_body.msgh_descriptor_count == 2 && *&message[2].msgh.msgh_local_port == 2 && rpc->sendSize >= 0x5C && (!rpc->reply || rpc->replySize >= 0x34))
  {
    if (targetActionClass)
    {
      v8 = targetActionClass;
    }

    else
    {
      v8 = gOSActionMetaClass;
    }

    v9 = OSMetaClassBase::safeMetaCast(*&message[3].msgh.msgh_bits, v8);
    if (v9 || !*&message[3].msgh.msgh_bits)
    {
      (func)(target, v9);
      return 0;
    }

    else
    {
      return -536870206;
    }
  }

  return v4;
}

kern_return_t IODispatchQueueMetaClass::New(IODispatchQueueMetaClass *this, OSObject *instance)
{
  return 0;
}

kern_return_t IODispatchQueue::Dispatch(IODispatchQueue *this, const IORPC *rpc)
{
  message = rpc->message;
  *&rpca.reply = *&rpc->reply;
  IORPCMessageFromMach(message, 0);
  rpca.message = message;
  return OSObject::_Dispatch(this, &rpca);
}

kern_return_t IODispatchQueue::_Dispatch(IODispatchQueue *self, const IORPC *rpc)
{
  IORPCMessageFromMach(rpc->message, 0);
  v5 = *rpc;
  return OSObject::_Dispatch(self, &v5);
}

kern_return_t IODispatchQueueMetaClass::Dispatch(IODispatchQueueMetaClass *this, const IORPC *rpc)
{
  IORPCMessageFromMach(rpc->message, 0);
  v5 = *rpc;
  return OSMetaClassBase::Dispatch(this, &v5);
}

kern_return_t IODispatchQueue::SetPort(IODispatchQueue *this, mach_port_t port, OSDispatchMethod supermethod)
{
  memset(v5, 0, 48);
  *&v5[4] = 84;
  v6 = xmmword_23820D500;
  v8 = this;
  v7 = 1;
  *&v5[20] = 0x24DA2B68CLL;
  *&v5[48] = 1310720;
  *&v5[40] = port;
  if (supermethod)
  {
    invoke.message = v5;
    invoke.reply = v5;
    *&invoke.sendSize = 0x7800000054;
    result = (supermethod)(this, &invoke);
    if (result)
    {
      return result;
    }
  }

  else
  {
    invoke.message = v5;
    invoke.reply = v5;
    *&invoke.sendSize = 0x7800000054;
    result = OSMetaClassBase::Invoke(this, &invoke);
    if (result)
    {
      return result;
    }
  }

  result = -536870209;
  if (*&v5[4] == 52 && *&v5[28] == 0xC437E970B5609767 && !*&v5[24])
  {
    if (*&v5[44])
    {
      return -536870209;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

kern_return_t IODispatchQueue::Create_Call(const char *name, uint64_t options, uint64_t priority, IODispatchQueue **queue)
{
  v22 = *MEMORY[0x277D85DE8];
  v21 = 0u;
  memset(v20, 0, sizeof(v20));
  v17 = 0;
  v14 = 0u;
  v15 = 0;
  v13 = 0u;
  DWORD1(v13) = 352;
  v16 = 0xAC000428DF2A91D0;
  v18 = 1;
  *(&v14 + 4) = 0x14DA2B68CLL;
  anObject[0] = gIODispatchQueueMetaClass;
  anObject[1] = 0;
  strlcpy(v20, name, 0x100uLL);
  *&v21 = options;
  *(&v21 + 1) = priority;
  invoke.message = &v13;
  invoke.reply = &v13;
  *&invoke.sendSize = 0x8C00000160;
  v7 = OSMetaClassBase::Invoke(gIODispatchQueueMetaClass, &invoke);
  if (!v7)
  {
    v7 = -536870209;
    if (DWORD1(v13) == 72 && v16 == 0xAC000428DF2A91D0 && DWORD2(v14) == 1 && v18 == 1)
    {
      v8 = OSMetaClassBase::safeMetaCast(anObject[0], gIODispatchQueueMetaClass);
      *queue = v8;
      if (v8)
      {
        v9 = 1;
      }

      else
      {
        v9 = anObject[0] == 0;
      }

      if (v9)
      {
        v7 = 0;
      }

      else
      {
        v7 = -536870206;
      }
    }
  }

  v10 = *MEMORY[0x277D85DE8];
  return v7;
}

kern_return_t IODispatchQueue::SetPort_Invoke(const IORPC *rpc, OSMetaClassBase *target, IODispatchQueue::SetPort_Handler func)
{
  result = -536870209;
  message = rpc->message;
  if (rpc->message->msgh_body.msgh_descriptor_count == 2 && *&message[2].msgh.msgh_local_port == 1 && rpc->sendSize >= 0x54 && rpc->replySize >= 0x34)
  {
    reply = rpc->reply;
    result = (func)(target, message[1].msgh.msgh_local_port);
    if (!result)
    {
      *&reply[1].msgh.msgh_bits = xmmword_23820D510;
      reply->msgh.msgh_size = 52;
      *&reply->msgh.msgh_id = 1302509197;
      *&reply[1].msgh.msgh_voucher_port = 0;
    }
  }

  return result;
}

kern_return_t IODispatchQueue::Create_Invoke(const IORPC *rpc, IODispatchQueue::Create_Handler func)
{
  v2 = -536870209;
  message = rpc->message;
  if (rpc->message->msgh_body.msgh_descriptor_count == 1 && *&message[2].msgh.msgh_bits == 1 && rpc->sendSize >= 0x160 && rpc->replySize >= 0x48)
  {
    reply = rpc->reply;
    if (strnlen(&message[2].msgh_body, 0x100uLL) <= 0xFF)
    {
      v2 = (func)(&message[2].msgh_body, *&message[12].msgh.msgh_bits, *&message[12].msgh.msgh_remote_port, &reply[2].msgh.msgh_remote_port);
      if (!v2)
      {
        *&reply[1].msgh.msgh_local_port = xmmword_23820D520;
        reply->msgh.msgh_size = 72;
        *&reply->msgh.msgh_id = 0x14DA2B68DLL;
        *&reply[2].msgh.msgh_bits = 1;
        reply[1].msgh.msgh_remote_port &= 0xFFFFFFu;
      }
    }

    else
    {
      return -536870206;
    }
  }

  return v2;
}

kern_return_t IODispatchSourceMetaClass::New(IODispatchSourceMetaClass *this, OSObject *instance)
{
  return 0;
}

kern_return_t IODispatchSource::_Dispatch(IODispatchSource *self, const IORPC *rpc)
{
  if (IORPCMessageFromMach(rpc->message, 0)->msgid == 0xBBC036B4C2A26C45)
  {
    v5 = *rpc;
    return IODispatchSource::SetEnable_Invoke(&v5, self, IODispatchSource::SetEnable_Impl);
  }

  else
  {
    v5 = *rpc;
    return OSObject::_Dispatch(self, &v5);
  }
}

kern_return_t IODispatchSource::SetEnable_Invoke(const IORPC *rpc, OSMetaClassBase *target, IODispatchSource::SetEnable_Handler func)
{
  result = -536870209;
  message = rpc->message;
  if (rpc->message->msgh_body.msgh_descriptor_count == 1 && *&message[2].msgh.msgh_bits == 1 && rpc->sendSize >= 0x50 && rpc->replySize >= 0x34)
  {
    reply = rpc->reply;
    result = (func)(target, LOBYTE(message[2].msgh.msgh_voucher_port));
    if (!result)
    {
      *&reply[1].msgh.msgh_bits = xmmword_23820D6D0;
      reply->msgh.msgh_size = 52;
      *&reply->msgh.msgh_id = 1302509197;
      *&reply[1].msgh.msgh_voucher_port = 0;
    }
  }

  return result;
}

kern_return_t IODispatchSourceMetaClass::Dispatch(IODispatchSourceMetaClass *this, const IORPC *rpc)
{
  IORPCMessageFromMach(rpc->message, 0);
  v5 = *rpc;
  return OSMetaClassBase::Dispatch(this, &v5);
}

kern_return_t IODispatchSource::Cancel(IODispatchSource *this, IODispatchSourceCancelHandler handler, OSDispatchMethod supermethod)
{
  v11 = *MEMORY[0x277D85DE8];
  memset(v6, 0, sizeof(v6));
  *&v6[4] = 80;
  v7 = xmmword_23820D6E0;
  v8 = 1;
  v9 = this;
  *&v6[20] = 0x14DA2B68CLL;
  v10 = handler;
  if (supermethod)
  {
    invoke.message = v6;
    invoke.reply = v6;
    *&invoke.sendSize = 0x7800000050;
    result = (supermethod)(this, &invoke);
    if (result)
    {
      goto LABEL_11;
    }
  }

  else
  {
    invoke.message = v6;
    invoke.reply = v6;
    *&invoke.sendSize = 0x7800000050;
    result = OSMetaClassBase::Invoke(this, &invoke);
    if (result)
    {
      goto LABEL_11;
    }
  }

  result = -536870209;
  if (*&v6[4] == 52 && *&v6[28] == 0xD963BB196F70BB93 && !*&v6[24])
  {
    if (*(&v7 + 4))
    {
      result = -536870209;
    }

    else
    {
      result = 0;
    }
  }

LABEL_11:
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

kern_return_t IODispatchSource::SetEnableWithCompletion(IODispatchSource *this, BOOL enable, IODispatchSourceCancelHandler handler, OSDispatchMethod supermethod)
{
  v13 = *MEMORY[0x277D85DE8];
  memset(v7, 0, sizeof(v7));
  *&v7[4] = 88;
  v8 = xmmword_23820D6F0;
  v9 = 1;
  v10 = this;
  *&v7[20] = 0x14DA2B68CLL;
  v11 = enable;
  v12 = handler;
  if (supermethod)
  {
    invoke.message = v7;
    invoke.reply = v7;
    *&invoke.sendSize = 0x7800000058;
    result = (supermethod)(this, &invoke);
    if (result)
    {
      goto LABEL_11;
    }
  }

  else
  {
    invoke.message = v7;
    invoke.reply = v7;
    *&invoke.sendSize = 0x7800000058;
    result = OSMetaClassBase::Invoke(this, &invoke);
    if (result)
    {
      goto LABEL_11;
    }
  }

  result = -536870209;
  if (*&v7[4] == 52 && *&v7[28] == 0xBB42C489FE4DEE8ELL && !*&v7[24])
  {
    if (*(&v8 + 4))
    {
      result = -536870209;
    }

    else
    {
      result = 0;
    }
  }

LABEL_11:
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

kern_return_t IODispatchSource::CheckForWork(IODispatchSource *this, BOOL synchronous, OSDispatchMethod supermethod)
{
  v15 = *MEMORY[0x277D85DE8];
  memset(msg, 0, sizeof(msg));
  *&msg[4] = 80;
  v11 = xmmword_23820D700;
  v12 = 1;
  v13 = this;
  *&msg[20] = 0x14DA2B68CLL;
  v14 = synchronous;
  invoke.message = msg;
  invoke.reply = msg;
  *&invoke.sendSize = 0xB800000050;
  if (supermethod)
  {
    v3 = (supermethod)(this, &invoke);
  }

  else
  {
    v3 = OSMetaClassBase::Invoke(this, &invoke);
  }

  v4 = v3;
  if (!v3)
  {
    v4 = -536870209;
    if (*&msg[4] >= 0x34u)
    {
      if (*&msg[24])
      {
        if (*&msg[4] < 0x40u)
        {
          goto LABEL_16;
        }
      }

      else if (*&msg[4] != 116 || *&msg[28] != 0xEF19D38D4F945FD0 || *(&v11 + 4))
      {
        goto LABEL_16;
      }

      v5 = IORPCMessageFromMach(msg, 0);
      if (*&msg[24])
      {
        if ((v5->flags & 8) != 0)
        {
          msgid = v5[1].msgid;
          if (msgid)
          {
            invoke.message = msg;
            invoke.reply = 0;
            *&invoke.sendSize = 184;
            v4 = OSMetaClassBase::Invoke(msgid, &invoke);
          }
        }
      }
    }
  }

LABEL_16:
  v7 = *MEMORY[0x277D85DE8];
  return v4;
}

kern_return_t IODispatchSource::SetEnable(IODispatchSource *this, BOOL enable, OSDispatchMethod supermethod)
{
  v11 = *MEMORY[0x277D85DE8];
  memset(v6, 0, sizeof(v6));
  *&v6[4] = 80;
  v7 = xmmword_23820D710;
  v8 = 1;
  v9 = this;
  *&v6[20] = 0x14DA2B68CLL;
  v10 = enable;
  if (supermethod)
  {
    invoke.message = v6;
    invoke.reply = v6;
    *&invoke.sendSize = 0x7800000050;
    result = (supermethod)(this, &invoke);
    if (result)
    {
      goto LABEL_11;
    }
  }

  else
  {
    invoke.message = v6;
    invoke.reply = v6;
    *&invoke.sendSize = 0x7800000050;
    result = OSMetaClassBase::Invoke(this, &invoke);
    if (result)
    {
      goto LABEL_11;
    }
  }

  result = -536870209;
  if (*&v6[4] == 52 && *&v6[28] == 0xBBC036B4C2A26C45 && !*&v6[24])
  {
    if (*(&v7 + 4))
    {
      result = -536870209;
    }

    else
    {
      result = 0;
    }
  }

LABEL_11:
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

kern_return_t IODispatchSource::Cancel_Invoke(const IORPC *rpc, OSMetaClassBase *target, IODispatchSource::Cancel_Handler func)
{
  result = -536870209;
  message = rpc->message;
  if (rpc->message->msgh_body.msgh_descriptor_count == 1 && *&message[2].msgh.msgh_bits == 1 && rpc->sendSize >= 0x50 && rpc->replySize >= 0x34)
  {
    reply = rpc->reply;
    result = (func)(target, *&message[2].msgh.msgh_voucher_port);
    if (!result)
    {
      *&reply[1].msgh.msgh_bits = xmmword_23820D720;
      reply->msgh.msgh_size = 52;
      *&reply->msgh.msgh_id = 1302509197;
      *&reply[1].msgh.msgh_voucher_port = 0;
    }
  }

  return result;
}

kern_return_t IODispatchSource::SetEnableWithCompletion_Invoke(const IORPC *rpc, OSMetaClassBase *target, IODispatchSource::SetEnableWithCompletion_Handler func)
{
  result = -536870209;
  message = rpc->message;
  if (rpc->message->msgh_body.msgh_descriptor_count == 1 && *&message[2].msgh.msgh_bits == 1 && rpc->sendSize >= 0x58 && rpc->replySize >= 0x34)
  {
    reply = rpc->reply;
    result = (func)(target, LOBYTE(message[2].msgh.msgh_voucher_port), *&message[2].msgh_body.msgh_descriptor_count);
    if (!result)
    {
      *&reply[1].msgh.msgh_bits = xmmword_23820D730;
      reply->msgh.msgh_size = 52;
      *&reply->msgh.msgh_id = 1302509197;
      *&reply[1].msgh.msgh_voucher_port = 0;
    }
  }

  return result;
}

kern_return_t IODispatchSource::CheckForWork_Invoke(const IORPC *rpc, OSMetaClassBase *target, IODispatchSource::CheckForWork_Handler func)
{
  result = -536870209;
  message = rpc->message;
  if (rpc->message->msgh_body.msgh_descriptor_count == 1 && *&message[2].msgh.msgh_bits == 1)
  {
    sendSize = rpc->sendSize;
    if (sendSize >= 0x50)
    {
      replySize = rpc->replySize;
      if (replySize >= 0x74)
      {
        reply = rpc->reply;
        v10[0] = rpc->message;
        v10[1] = reply;
        v11 = sendSize;
        v12 = replySize;
        result = (func)(target, v10, LOBYTE(message[2].msgh.msgh_voucher_port));
        if (!result)
        {
          v9 = IORPCMessageFromMach(reply, 0);
          if (reply->msgh_body.msgh_descriptor_count && (v9->flags & 8) != 0)
          {
            return 0;
          }

          else
          {
            return -536870209;
          }
        }
      }
    }
  }

  return result;
}

uint64_t IOEventLinkMetaClass::New(IOEventLinkMetaClass *this, OSObject *a2)
{
  a2->OSMetaClassBase::__vftable = &unk_284AFC088;
  a2->OSObjectInterface::__vftable = &unk_284AFC0D0;
  return 0;
}

void IOEventLink::_Dispatch(IORPC *this, IORPCMessageMach **a2, IORPC *a3)
{
  if (IORPCMessageFromMach(*a2, 0)->msgid == 0xAB7C21CF2602E225)
  {
    v6 = *a2;
    IOEventLink::SetEventlinkPort_Invoke(&v6, this, IOEventLink::SetEventlinkPort_Impl, v5);
  }

  else
  {
    v6 = *a2;
    OSObject::_Dispatch(this, &v6);
  }
}

double IOEventLink::SetEventlinkPort_Invoke(IOEventLink *this, IORPC *a2, OSMetaClassBase *a3, int (*a4)(OSMetaClassBase *, unsigned int))
{
  v4 = *this;
  if (*(*this + 24) == 2 && *(v4 + 68) == 1 && *(this + 4) >= 0x54u && *(this + 5) >= 0x34u)
  {
    v5 = *(this + 1);
    if (!(a3)(a2, *(v4 + 40)))
    {
      *(v5 + 28) = xmmword_23820D8F0;
      *(v5 + 4) = 52;
      *&result = 1302509197;
      *(v5 + 20) = 1302509197;
      *(v5 + 44) = 0;
    }
  }

  return result;
}

uint64_t IOEventLinkMetaClass::Dispatch(OSMetaClassBase *this, IORPC *a2)
{
  IORPCMessageFromMach(a2->message, 0);
  v5 = *a2;
  return OSMetaClassBase::Dispatch(this, &v5);
}

uint64_t IOEventLink::Create_Call(const OSMetaClassBase *this, OSString *a2, IOUserClient *a3, IOEventLink **a4)
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0;
  v14 = 0u;
  DWORD1(v10) = 116;
  *(anObject + 4) = xmmword_23820D900;
  *(&anObject[3] + 4) = gIOEventLinkMetaClass;
  *(&anObject[2] + 4) = 3;
  *(&v11 + 4) = 0x34DA2B68CLL;
  v13 = 32;
  *(&anObject[4] + 4) = this;
  LODWORD(v14) = 16777472;
  LODWORD(anObject[0]) = 0;
  *(&anObject[5] + 4) = a2;
  invoke.message = &v10;
  invoke.reply = &v10;
  *&invoke.sendSize = 0x8C00000074;
  v5 = OSMetaClassBase::Invoke(gIOEventLinkMetaClass, &invoke);
  if (!v5)
  {
    v5 = 3758097087;
    if (DWORD1(v10) == 72 && v13 == 0xAAC47FEC2232263FLL && DWORD2(v11) == 1 && *(&v14 + 1) == 1)
    {
      v6 = OSMetaClassBase::safeMetaCast(anObject[0], gIOEventLinkMetaClass);
      a3->IOService::OSObject::OSMetaClassBase::__vftable = v6;
      if (v6)
      {
        v7 = 1;
      }

      else
      {
        v7 = anObject[0] == 0;
      }

      if (v7)
      {
        return 0;
      }

      else
      {
        return 3758097090;
      }
    }
  }

  return v5;
}

uint64_t IOEventLink::SetEventlinkPort(OSMetaClassBase *this, int a2, uint64_t (*a3)(OSMetaClassBase *, IORPC *))
{
  memset(v5, 0, 48);
  *&v5[4] = 84;
  v6 = xmmword_23820D910;
  v8 = this;
  v7 = 1;
  *&v5[20] = 0x24DA2B68CLL;
  *&v5[48] = 1245184;
  *&v5[40] = a2;
  if (a3)
  {
    invoke.message = v5;
    invoke.reply = v5;
    *&invoke.sendSize = 0x7800000054;
    result = a3(this, &invoke);
    if (result)
    {
      return result;
    }
  }

  else
  {
    invoke.message = v5;
    invoke.reply = v5;
    *&invoke.sendSize = 0x7800000054;
    result = OSMetaClassBase::Invoke(this, &invoke);
    if (result)
    {
      return result;
    }
  }

  result = 3758097087;
  if (*&v5[4] == 52 && *&v5[28] == 0xAB7C21CF2602E225 && !*&v5[24])
  {
    if (*&v5[44])
    {
      return 3758097087;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t IOEventLink::InvalidateKernel(OSMetaClassBase *this, IOUserClient *a2, uint64_t (*a3)(OSMetaClassBase *, IORPC *))
{
  memset(v5, 0, 52);
  v5[1] = 92;
  *&v5[13] = xmmword_23820D920;
  v7 = this;
  v6 = 2;
  *&v5[5] = 0x24DA2B68CLL;
  v8 = a2;
  if (a3)
  {
    invoke.message = v5;
    invoke.reply = v5;
    *&invoke.sendSize = 0x780000005CLL;
    result = a3(this, &invoke);
    if (result)
    {
      return result;
    }
  }

  else
  {
    invoke.message = v5;
    invoke.reply = v5;
    *&invoke.sendSize = 0x780000005CLL;
    result = OSMetaClassBase::Invoke(this, &invoke);
    if (result)
    {
      return result;
    }
  }

  result = 3758097087;
  if (v5[1] == 52 && *&v5[7] == 0xE4E11BD235016FD8 && !v5[6])
  {
    if (*&v5[11])
    {
      return 3758097087;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t IOEventLink::Create_Invoke(IOEventLink *this, IORPC *a2, int (*a3)(OSString *, IOUserClient *, IOEventLink **))
{
  v3 = 3758097087;
  v4 = *this;
  if (*(*this + 24) == 3 && *(v4 + 84) == 3 && *(this + 4) >= 0x74u && *(this + 5) >= 0x48u)
  {
    v6 = *(this + 1);
    v7 = *(v4 + 100);
    if ((!v7 || OSMetaClassBase::safeMetaCast(v7, gOSStringMetaClass)) && ((v8 = OSMetaClassBase::safeMetaCast(*(v4 + 108), gIOUserClientMetaClass)) != 0 || !*(v4 + 108)))
    {
      v3 = (a2)(*(v4 + 100), v8, v6 + 64);
      if (!v3)
      {
        *(v6 + 40) = xmmword_23820D930;
        *(v6 + 4) = 72;
        *(v6 + 20) = 0x14DA2B68DLL;
        *(v6 + 56) = 1;
        *(v6 + 36) &= 0xFFFFFFu;
      }
    }

    else
    {
      return 3758097090;
    }
  }

  return v3;
}

uint64_t IOEventLink::InvalidateKernel_Invoke(IOEventLink *this, IORPC *a2, OSMetaClassBase *a3, int (*a4)(OSMetaClassBase *, IOUserClient *))
{
  v4 = 3758097087;
  v5 = *this;
  if (*(*this + 24) == 2 && *(v5 + 68) == 2 && *(this + 4) >= 0x5Cu && *(this + 5) >= 0x34u)
  {
    v8 = *(this + 1);
    v9 = OSMetaClassBase::safeMetaCast(*(v5 + 84), gIOUserClientMetaClass);
    if (v9 || !*(v5 + 84))
    {
      v4 = (a3)(a2, v9);
      if (!v4)
      {
        *(v8 + 28) = xmmword_23820D940;
        *(v8 + 4) = 52;
        *(v8 + 20) = 1302509197;
        *(v8 + 44) = 0;
      }
    }

    else
    {
      return 3758097090;
    }
  }

  return v4;
}

uint64_t IOExtensiblePaniclogMetaClass::New(IOExtensiblePaniclogMetaClass *this, OSObject *a2)
{
  a2->OSMetaClassBase::__vftable = &unk_284AFC238;
  a2->OSObjectInterface::__vftable = &unk_284AFC290;
  a2[1].OSMetaClassBase::__vftable = &unk_284AFC2B0;
  return 0;
}

uint64_t IOExtensiblePaniclog::Dispatch(OSObject *this, IORPC *a2)
{
  message = a2->message;
  *&rpc.reply = *&a2->reply;
  IORPCMessageFromMach(message, 0);
  rpc.message = message;
  return OSObject::_Dispatch(this, &rpc);
}

uint64_t IOExtensiblePaniclog::_Dispatch(OSObject *this, IORPCMessageMach **a2, IORPC *a3)
{
  IORPCMessageFromMach(*a2, 0);
  v6 = *a2;
  return OSObject::_Dispatch(this, &v6);
}

uint64_t IOExtensiblePaniclogMetaClass::Dispatch(OSMetaClassBase *this, IORPC *a2)
{
  IORPCMessageFromMach(a2->message, 0);
  v5 = *a2;
  return OSMetaClassBase::Dispatch(this, &v5);
}

uint64_t IOExtensiblePaniclog::Create(IOExtensiblePaniclog *this, OSData *a2, OSString *a3, int a4, OSMetaClassBase **a5, IOExtensiblePaniclog **a6)
{
  v27 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0;
  DWORD1(v13) = 128;
  v20 = xmmword_23820DAF0;
  v21 = 3;
  v22 = gIOExtensiblePaniclogMetaClass;
  *(&v14 + 4) = 0x34DA2B68CLL;
  v17 = 16777472;
  v16 = 32;
  v18 = 40;
  anObject = 16777472;
  v23 = this;
  v24 = a2;
  v25 = a3;
  v26 = a4;
  invoke.message = &v13;
  invoke.reply = &v13;
  *&invoke.sendSize = 0x8C00000080;
  v7 = OSMetaClassBase::Invoke(gIOExtensiblePaniclogMetaClass, &invoke);
  if (!v7)
  {
    v7 = 3758097087;
    if (DWORD1(v13) == 72 && v16 == 0xA7F6249922E20BD7 && DWORD2(v14) == 1 && v18 == 1)
    {
      v8 = OSMetaClassBase::safeMetaCast(anObject, gIOExtensiblePaniclogMetaClass);
      *a5 = v8;
      if (v8)
      {
        v9 = 1;
      }

      else
      {
        v9 = anObject == 0;
      }

      if (v9)
      {
        v7 = 0;
      }

      else
      {
        v7 = 3758097090;
      }
    }
  }

  v10 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t IOExtensiblePaniclog::SetActive(OSMetaClassBase *this, uint64_t (*a2)(OSMetaClassBase *, IORPC *))
{
  v9 = *MEMORY[0x277D85DE8];
  memset(v5, 0, sizeof(v5));
  *&v5[4] = 72;
  v6 = xmmword_23820DB00;
  v7 = 1;
  v8 = this;
  *&v5[20] = 0x14DA2B68CLL;
  if (a2)
  {
    invoke.message = v5;
    invoke.reply = v5;
    *&invoke.sendSize = 0x7800000048;
    result = a2(this, &invoke);
    if (result)
    {
      goto LABEL_11;
    }
  }

  else
  {
    invoke.message = v5;
    invoke.reply = v5;
    *&invoke.sendSize = 0x7800000048;
    result = OSMetaClassBase::Invoke(this, &invoke);
    if (result)
    {
      goto LABEL_11;
    }
  }

  result = 3758097087;
  if (*&v5[4] == 52 && *&v5[28] == 0xB058F6942CD75C58 && !*&v5[24])
  {
    if (*(&v6 + 4))
    {
      result = 3758097087;
    }

    else
    {
      result = 0;
    }
  }

LABEL_11:
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t IOExtensiblePaniclog::SetInactive(OSMetaClassBase *this, uint64_t (*a2)(OSMetaClassBase *, IORPC *))
{
  v9 = *MEMORY[0x277D85DE8];
  memset(v5, 0, sizeof(v5));
  *&v5[4] = 72;
  v6 = xmmword_23820DB10;
  v7 = 1;
  v8 = this;
  *&v5[20] = 0x14DA2B68CLL;
  if (a2)
  {
    invoke.message = v5;
    invoke.reply = v5;
    *&invoke.sendSize = 0x7800000048;
    result = a2(this, &invoke);
    if (result)
    {
      goto LABEL_11;
    }
  }

  else
  {
    invoke.message = v5;
    invoke.reply = v5;
    *&invoke.sendSize = 0x7800000048;
    result = OSMetaClassBase::Invoke(this, &invoke);
    if (result)
    {
      goto LABEL_11;
    }
  }

  result = 3758097087;
  if (*&v5[4] == 52 && *&v5[28] == 0xF3F3D6994A227E5CLL && !*&v5[24])
  {
    if (*(&v6 + 4))
    {
      result = 3758097087;
    }

    else
    {
      result = 0;
    }
  }

LABEL_11:
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t IOExtensiblePaniclog::InsertData(OSMetaClassBase *this, OSData *a2, uint64_t (*a3)(OSMetaClassBase *, IORPC *))
{
  v12 = *MEMORY[0x277D85DE8];
  memset(v6, 0, sizeof(v6));
  *&v6[4] = 96;
  v8 = xmmword_23820DB20;
  v9 = 2;
  v10 = this;
  *&v7 = 32;
  *(&v7 + 1) = 16777472;
  *&v6[20] = 0x24DA2B68CLL;
  v11 = a2;
  if (a3)
  {
    invoke.message = v6;
    invoke.reply = v6;
    *&invoke.sendSize = 0x7800000060;
    result = a3(this, &invoke);
    if (result)
    {
      goto LABEL_11;
    }
  }

  else
  {
    invoke.message = v6;
    invoke.reply = v6;
    *&invoke.sendSize = 0x7800000060;
    result = OSMetaClassBase::Invoke(this, &invoke);
    if (result)
    {
      goto LABEL_11;
    }
  }

  result = 3758097087;
  if (*&v6[4] == 52 && *&v6[28] == 0xD1F144A17E423D38 && !*&v6[24])
  {
    if (*(&v7 + 4))
    {
      result = 3758097087;
    }

    else
    {
      result = 0;
    }
  }

LABEL_11:
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t IOExtensiblePaniclog::AppendData(OSMetaClassBase *this, OSData *a2, uint64_t (*a3)(OSMetaClassBase *, IORPC *))
{
  v12 = *MEMORY[0x277D85DE8];
  memset(v6, 0, sizeof(v6));
  *&v6[4] = 96;
  v8 = xmmword_23820DB30;
  v9 = 2;
  v10 = this;
  *&v7 = 32;
  *(&v7 + 1) = 16777472;
  *&v6[20] = 0x24DA2B68CLL;
  v11 = a2;
  if (a3)
  {
    invoke.message = v6;
    invoke.reply = v6;
    *&invoke.sendSize = 0x7800000060;
    result = a3(this, &invoke);
    if (result)
    {
      goto LABEL_11;
    }
  }

  else
  {
    invoke.message = v6;
    invoke.reply = v6;
    *&invoke.sendSize = 0x7800000060;
    result = OSMetaClassBase::Invoke(this, &invoke);
    if (result)
    {
      goto LABEL_11;
    }
  }

  result = 3758097087;
  if (*&v6[4] == 52 && *&v6[28] == 0xB4E7EDBA1A448DBFLL && !*&v6[24])
  {
    if (*(&v7 + 4))
    {
      result = 3758097087;
    }

    else
    {
      result = 0;
    }
  }

LABEL_11:
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t IOExtensiblePaniclog::CopyMemoryDescriptor(OSMetaClassBase *this, IOBufferMemoryDescriptor **a2, uint64_t (*a3)(OSMetaClassBase *, IORPC *))
{
  v17 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0;
  DWORD1(v11) = 72;
  v14 = xmmword_23820DB40;
  v15 = 1;
  anObject = this;
  *(&v12 + 4) = 0x14DA2B68CLL;
  invoke.message = &v11;
  invoke.reply = &v11;
  *&invoke.sendSize = 0x8C00000048;
  if (a3)
  {
    v4 = a3(this, &invoke);
  }

  else
  {
    v4 = OSMetaClassBase::Invoke(this, &invoke);
  }

  v5 = v4;
  if (!v4)
  {
    v5 = 3758097087;
    if (DWORD1(v11) == 72 && v14 == 0xE16647D53B415A3BLL && DWORD2(v12) == 1 && v15 == 1)
    {
      v6 = OSMetaClassBase::safeMetaCast(anObject, gIOBufferMemoryDescriptorMetaClass);
      *a2 = v6;
      if (v6)
      {
        v7 = 1;
      }

      else
      {
        v7 = anObject == 0;
      }

      if (v7)
      {
        v5 = 0;
      }

      else
      {
        v5 = 3758097090;
      }
    }
  }

  v8 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t IOExtensiblePaniclog::SetUsedLen(OSMetaClassBase *this, unsigned int a2, uint64_t (*a3)(OSMetaClassBase *, IORPC *))
{
  v11 = *MEMORY[0x277D85DE8];
  memset(v6, 0, sizeof(v6));
  *&v6[4] = 80;
  v7 = xmmword_23820DB50;
  v8 = 1;
  v9 = this;
  *&v6[20] = 0x14DA2B68CLL;
  v10 = a2;
  if (a3)
  {
    invoke.message = v6;
    invoke.reply = v6;
    *&invoke.sendSize = 0x7800000050;
    result = a3(this, &invoke);
    if (result)
    {
      goto LABEL_11;
    }
  }

  else
  {
    invoke.message = v6;
    invoke.reply = v6;
    *&invoke.sendSize = 0x7800000050;
    result = OSMetaClassBase::Invoke(this, &invoke);
    if (result)
    {
      goto LABEL_11;
    }
  }

  result = 3758097087;
  if (*&v6[4] == 52 && *&v6[28] == 0xFD7C6CCBBC4D6C5ELL && !*&v6[24])
  {
    if (*(&v7 + 4))
    {
      result = 3758097087;
    }

    else
    {
      result = 0;
    }
  }

LABEL_11:
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t IOExtensiblePaniclog::Create_Invoke(IOExtensiblePaniclog *this, IORPC *a2, int (*a3)(OSData *, OSString *, unsigned int, unsigned int, IOExtensiblePaniclog **))
{
  v3 = 3758097087;
  v4 = *this;
  if (*(*this + 24) != 3 || *(v4 + 88) != 3 || *(this + 4) < 0x80u || *(this + 5) < 0x48u)
  {
    return v3;
  }

  v6 = *(this + 1);
  v7 = *(v4 + 104);
  if (v7 && !OSMetaClassBase::safeMetaCast(v7, gOSDataMetaClass))
  {
    return 3758097090;
  }

  v8 = *(v4 + 112);
  if (v8)
  {
    if (OSMetaClassBase::safeMetaCast(v8, gOSStringMetaClass))
    {
      v9 = *(v4 + 112);
      goto LABEL_12;
    }

    return 3758097090;
  }

  v9 = 0;
LABEL_12:
  v3 = (a2)(*(v4 + 104), v9, *(v4 + 120), *(v4 + 124), v6 + 64);
  if (!v3)
  {
    *(v6 + 40) = xmmword_23820DB60;
    *(v6 + 4) = 72;
    *(v6 + 20) = 0x14DA2B68DLL;
    *(v6 + 56) = 1;
    *(v6 + 36) &= 0xFFFFFFu;
  }

  return v3;
}

double IOExtensiblePaniclog::SetActive_Invoke(IOExtensiblePaniclog *this, IORPC *a2, OSMetaClassBase *a3, int (*a4)(OSMetaClassBase *))
{
  if (*(*this + 24) == 1 && *(*this + 56) == 1 && *(this + 4) >= 0x48u && *(this + 5) >= 0x34u)
  {
    v4 = *(this + 1);
    if (!(a3)(a2))
    {
      *(v4 + 28) = xmmword_23820DB70;
      *(v4 + 4) = 52;
      *&result = 1302509197;
      *(v4 + 20) = 1302509197;
      *(v4 + 44) = 0;
    }
  }

  return result;
}

double IOExtensiblePaniclog::SetInactive_Invoke(IOExtensiblePaniclog *this, IORPC *a2, OSMetaClassBase *a3, int (*a4)(OSMetaClassBase *))
{
  if (*(*this + 24) == 1 && *(*this + 56) == 1 && *(this + 4) >= 0x48u && *(this + 5) >= 0x34u)
  {
    v4 = *(this + 1);
    if (!(a3)(a2))
    {
      *(v4 + 28) = xmmword_23820DB80;
      *(v4 + 4) = 52;
      *&result = 1302509197;
      *(v4 + 20) = 1302509197;
      *(v4 + 44) = 0;
    }
  }

  return result;
}

uint64_t IOExtensiblePaniclog::InsertData_Invoke(IOExtensiblePaniclog *this, IORPC *a2, OSMetaClassBase *a3, int (*a4)(OSMetaClassBase *, OSData *))
{
  v4 = 3758097087;
  v5 = *this;
  if (*(*this + 24) == 2 && *(v5 + 72) == 2 && *(this + 4) >= 0x60u && *(this + 5) >= 0x34u)
  {
    v8 = *(this + 1);
    v9 = *(v5 + 88);
    if (v9)
    {
      if (!OSMetaClassBase::safeMetaCast(v9, gOSDataMetaClass))
      {
        return 3758097090;
      }

      v10 = *(v5 + 88);
    }

    else
    {
      v10 = 0;
    }

    v4 = (a3)(a2, v10);
    if (!v4)
    {
      *(v8 + 28) = xmmword_23820DB90;
      *(v8 + 4) = 52;
      *(v8 + 20) = 1302509197;
      *(v8 + 44) = 0;
    }
  }

  return v4;
}

uint64_t IOExtensiblePaniclog::AppendData_Invoke(IOExtensiblePaniclog *this, IORPC *a2, OSMetaClassBase *a3, int (*a4)(OSMetaClassBase *, OSData *))
{
  v4 = 3758097087;
  v5 = *this;
  if (*(*this + 24) == 2 && *(v5 + 72) == 2 && *(this + 4) >= 0x60u && *(this + 5) >= 0x34u)
  {
    v8 = *(this + 1);
    v9 = *(v5 + 88);
    if (v9)
    {
      if (!OSMetaClassBase::safeMetaCast(v9, gOSDataMetaClass))
      {
        return 3758097090;
      }

      v10 = *(v5 + 88);
    }

    else
    {
      v10 = 0;
    }

    v4 = (a3)(a2, v10);
    if (!v4)
    {
      *(v8 + 28) = xmmword_23820DBA0;
      *(v8 + 4) = 52;
      *(v8 + 20) = 1302509197;
      *(v8 + 44) = 0;
    }
  }

  return v4;
}

double IOExtensiblePaniclog::CopyMemoryDescriptor_Invoke(IOExtensiblePaniclog *this, IORPC *a2, OSMetaClassBase *a3, int (*a4)(OSMetaClassBase *, IOBufferMemoryDescriptor **))
{
  if (*(*this + 24) == 1 && *(*this + 56) == 1 && *(this + 4) >= 0x48u && *(this + 5) >= 0x48u)
  {
    v4 = *(this + 1);
    if (!(a3)(a2, v4 + 64))
    {
      *(v4 + 40) = xmmword_23820DBB0;
      *(v4 + 4) = 72;
      *&result = 0x14DA2B68DLL;
      *(v4 + 20) = 0x14DA2B68DLL;
      *(v4 + 56) = 1;
      *(v4 + 36) &= 0xFFFFFFu;
    }
  }

  return result;
}

double IOExtensiblePaniclog::SetUsedLen_Invoke(IOExtensiblePaniclog *this, IORPC *a2, OSMetaClassBase *a3, int (*a4)(OSMetaClassBase *, unsigned int))
{
  v4 = *this;
  if (*(*this + 24) == 1 && *(v4 + 56) == 1 && *(this + 4) >= 0x50u && *(this + 5) >= 0x34u)
  {
    v5 = *(this + 1);
    if (!(a3)(a2, *(v4 + 72)))
    {
      *(v5 + 28) = xmmword_23820DBC0;
      *(v5 + 4) = 52;
      *&result = 1302509197;
      *(v5 + 20) = 1302509197;
      *(v5 + 44) = 0;
    }
  }

  return result;
}

kern_return_t IOInterruptDispatchSourceMetaClass::New(IOInterruptDispatchSourceMetaClass *this, OSObject *instance)
{
  return 0;
}

kern_return_t IOInterruptDispatchSource::_Dispatch(IOInterruptDispatchSource *self, const IORPC *rpc)
{
  msgid = IORPCMessageFromMach(rpc->message, 0)->msgid;
  if (msgid <= 0xD963BB196F70BB92)
  {
    if (msgid == 0xBB42C489FE4DEE8ELL)
    {
      v6 = *rpc;
      return IODispatchSource::SetEnableWithCompletion_Invoke(&v6, self, IOInterruptDispatchSource::SetEnableWithCompletion_Impl);
    }

    if (msgid == 0xCE0513291CFA1EE1)
    {
      v6 = *rpc;
      return IOInterruptDispatchSource::InterruptOccurred_Invoke(&v6, self, IOInterruptDispatchSource::InterruptOccurred_Impl, 0);
    }
  }

  else
  {
    switch(msgid)
    {
      case 0xD963BB196F70BB93:
        v6 = *rpc;
        return IODispatchSource::Cancel_Invoke(&v6, self, IOInterruptDispatchSource::Cancel_Impl);
      case 0xEF19D38D4F945FD0:
        v6 = *rpc;
        return IODispatchSource::CheckForWork_Invoke(&v6, self, IOInterruptDispatchSource::CheckForWork_Impl);
      case 0xFCC79B0928501BB1:
        v6 = *rpc;
        return IOInterruptDispatchSource::SetHandler_Invoke(&v6, self, IOInterruptDispatchSource::SetHandler_Impl);
    }
  }

  v6 = *rpc;
  return IODispatchSource::_Dispatch(self, &v6);
}

kern_return_t IOInterruptDispatchSource::SetHandler_Invoke(const IORPC *rpc, OSMetaClassBase *target, IOInterruptDispatchSource::SetHandler_Handler func)
{
  v3 = -536870209;
  message = rpc->message;
  if (rpc->message->msgh_body.msgh_descriptor_count == 2 && *&message[2].msgh.msgh_local_port == 2 && rpc->sendSize >= 0x5C && rpc->replySize >= 0x34)
  {
    reply = rpc->reply;
    v8 = OSMetaClassBase::safeMetaCast(*&message[3].msgh.msgh_bits, gOSActionMetaClass);
    if (v8 || !*&message[3].msgh.msgh_bits)
    {
      v3 = (func)(target, v8);
      if (!v3)
      {
        *&reply[1].msgh.msgh_bits = xmmword_23820DD90;
        reply->msgh.msgh_size = 52;
        *&reply->msgh.msgh_id = 1302509197;
        *&reply[1].msgh.msgh_voucher_port = 0;
      }
    }

    else
    {
      return -536870206;
    }
  }

  return v3;
}

kern_return_t IOInterruptDispatchSourceMetaClass::Dispatch(IOInterruptDispatchSourceMetaClass *this, const IORPC *rpc)
{
  IORPCMessageFromMach(rpc->message, 0);
  v5 = *rpc;
  return OSMetaClassBase::Dispatch(this, &v5);
}

kern_return_t IOInterruptDispatchSource::Create_Call(IOService *provider, uint32_t index, IODispatchQueue *queue, IOInterruptDispatchSource **source)
{
  v21 = *MEMORY[0x277D85DE8];
  anObject[1] = 0;
  v11 = 0u;
  v12 = 0u;
  v19 = queue;
  v13 = 0u;
  v14 = 0u;
  DWORD1(v11) = 120;
  anObject[0] = 0xB6A948B1585FC259;
  v16 = 3;
  v17 = gIOInterruptDispatchSourceMetaClass;
  *(&v12 + 4) = 0x34DA2B68CLL;
  LODWORD(v14) = 0;
  v20 = index;
  v18 = provider;
  invoke.message = &v11;
  invoke.reply = &v11;
  *&invoke.sendSize = 0x8C00000078;
  v5 = OSMetaClassBase::Invoke(gIOInterruptDispatchSourceMetaClass, &invoke);
  if (!v5)
  {
    v5 = -536870209;
    if (DWORD1(v11) == 72 && *(&v13 + 1) == 0xB6A948B1585FC259 && DWORD2(v12) == 1 && *(&v14 + 1) == 1)
    {
      v6 = OSMetaClassBase::safeMetaCast(anObject[0], gIOInterruptDispatchSourceMetaClass);
      *source = v6;
      if (v6)
      {
        v7 = 1;
      }

      else
      {
        v7 = anObject[0] == 0;
      }

      if (v7)
      {
        v5 = 0;
      }

      else
      {
        v5 = -536870206;
      }
    }
  }

  v8 = *MEMORY[0x277D85DE8];
  return v5;
}

kern_return_t IOInterruptDispatchSource::GetInterruptType(IOService *provider, uint32_t index, uint64_t *interruptType)
{
  memset(v6, 0, sizeof(v6));
  *&v6[4] = 100;
  v7 = xmmword_23820DDA0;
  v9 = gIOInterruptDispatchSourceMetaClass;
  v8 = 2;
  *&v6[20] = 0x24DA2B68CLL;
  v10 = provider;
  v11 = index;
  v12 = 0;
  invoke.message = v6;
  invoke.reply = v6;
  *&invoke.sendSize = 0x8000000064;
  result = OSMetaClassBase::Invoke(gIOInterruptDispatchSourceMetaClass, &invoke);
  if (!result)
  {
    result = -536870209;
    if (*&v6[4] == 60 && *&v6[28] == 0x846D2DF6B6BEF33BLL && !*&v6[24])
    {
      if (*&v6[44])
      {
        result = -536870209;
      }

      else
      {
        result = 0;
      }

      if (interruptType)
      {
        if (!*&v6[44])
        {
          result = 0;
          *interruptType = v7;
        }
      }
    }
  }

  return result;
}

kern_return_t IOInterruptDispatchSource::SetHandler(IOInterruptDispatchSource *this, OSAction *action, OSDispatchMethod supermethod)
{
  memset(v5, 0, 52);
  v5[1] = 92;
  *&v5[13] = xmmword_23820DDB0;
  v7 = this;
  v6 = 2;
  *&v5[5] = 0x24DA2B68CLL;
  v8 = action;
  if (supermethod)
  {
    invoke.message = v5;
    invoke.reply = v5;
    *&invoke.sendSize = 0x780000005CLL;
    result = (supermethod)(this, &invoke);
    if (result)
    {
      return result;
    }
  }

  else
  {
    invoke.message = v5;
    invoke.reply = v5;
    *&invoke.sendSize = 0x780000005CLL;
    result = OSMetaClassBase::Invoke(this, &invoke);
    if (result)
    {
      return result;
    }
  }

  result = -536870209;
  if (v5[1] == 52 && *&v5[7] == 0xFCC79B0928501BB1 && !v5[6])
  {
    if (*&v5[11])
    {
      return -536870209;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

kern_return_t IOInterruptDispatchSource::GetLastInterrupt(IOInterruptDispatchSource *this, uint64_t *count, uint64_t *time, OSDispatchMethod supermethod)
{
  v11 = *MEMORY[0x277D85DE8];
  memset(v9, 0, sizeof(v9));
  *&v9[4] = 72;
  *v10 = xmmword_23820DDC0;
  *&v10[16] = 1;
  *&v10[24] = this;
  *&v9[20] = 0x14DA2B68CLL;
  if (supermethod)
  {
    invoke.message = v9;
    invoke.reply = v9;
    *&invoke.sendSize = 0x8800000048;
    result = (supermethod)(this, &invoke);
    if (result)
    {
      goto LABEL_13;
    }
  }

  else
  {
    invoke.message = v9;
    invoke.reply = v9;
    *&invoke.sendSize = 0x8800000048;
    result = OSMetaClassBase::Invoke(this, &invoke);
    if (result)
    {
      goto LABEL_13;
    }
  }

  result = -536870209;
  if (*&v9[4] == 68 && *&v9[28] == 0x9B89E0DEA24A143BLL && !*&v9[24] && !*&v10[4])
  {
    if (count)
    {
      *count = *&v10[12];
    }

    result = 0;
    if (time)
    {
      *time = *&v10[20];
    }
  }

LABEL_13:
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

kern_return_t IOInterruptDispatchSource::InterruptOccurred(IOInterruptDispatchSource *this, IORPC *rpc, OSAction *action, uint64_t count, uint64_t time, OSDispatchMethod supermethod)
{
  reply = rpc->reply;
  *&reply->msgh.msgh_bits = 0u;
  *&reply->msgh.msgh_voucher_port = 0u;
  *&reply[1].msgh.msgh_size = 0u;
  reply->msgh.msgh_size = 108;
  *&reply[1].msgh_body.msgh_descriptor_count = xmmword_23820DDD0;
  *&reply[2].msgh.msgh_id = action;
  *&reply[2].msgh.msgh_local_port = 2;
  *&reply->msgh.msgh_id = 0x24DA2B68CLL;
  reply[1].msgh.msgh_id = 0;
  *&reply[3].msgh.msgh_bits = action;
  *&reply[3].msgh.msgh_remote_port = count;
  *&reply[3].msgh.msgh_voucher_port = time;
  return 0;
}

kern_return_t IOInterruptDispatchSource::Create_Invoke(const IORPC *rpc, IOInterruptDispatchSource::Create_Handler func)
{
  v2 = -536870209;
  message = rpc->message;
  if (rpc->message->msgh_body.msgh_descriptor_count == 3 && *&message[2].msgh_body.msgh_descriptor_count == 3 && rpc->sendSize >= 0x78 && rpc->replySize >= 0x48)
  {
    reply = rpc->reply;
    v6 = OSMetaClassBase::safeMetaCast(*&message[3].msgh.msgh_local_port, gIOServiceMetaClass);
    if ((v6 || !*&message[3].msgh.msgh_local_port) && ((v7 = OSMetaClassBase::safeMetaCast(*&message[3].msgh.msgh_id, gIODispatchQueueMetaClass)) != 0 || !*&message[3].msgh.msgh_id))
    {
      v2 = (func)(v6, message[4].msgh.msgh_bits, v7, &reply[2].msgh.msgh_remote_port);
      if (!v2)
      {
        *&reply[1].msgh.msgh_local_port = xmmword_23820DDE0;
        reply->msgh.msgh_size = 72;
        *&reply->msgh.msgh_id = 0x14DA2B68DLL;
        *&reply[2].msgh.msgh_bits = 1;
        reply[1].msgh.msgh_remote_port &= 0xFFFFFFu;
      }
    }

    else
    {
      return -536870206;
    }
  }

  return v2;
}

kern_return_t IOInterruptDispatchSource::GetInterruptType_Invoke(const IORPC *rpc, IOInterruptDispatchSource::GetInterruptType_Handler func)
{
  v2 = -536870209;
  message = rpc->message;
  if (rpc->message->msgh_body.msgh_descriptor_count == 2 && *&message[2].msgh.msgh_local_port == 2 && rpc->sendSize >= 0x64 && rpc->replySize >= 0x3C)
  {
    reply = rpc->reply;
    if (OSMetaClassBase::safeMetaCast(*&message[3].msgh.msgh_bits, gIOServiceMetaClass) || !*&message[3].msgh.msgh_bits)
    {
      msgh_remote_port = message[3].msgh.msgh_remote_port;
      v2 = (func)();
      if (!v2)
      {
        *&reply[1].msgh.msgh_bits = xmmword_23820DDF0;
        reply->msgh.msgh_size = 60;
        *&reply->msgh.msgh_id = 1302509197;
        *&reply[1].msgh.msgh_voucher_port = 0;
      }
    }

    else
    {
      return -536870206;
    }
  }

  return v2;
}

kern_return_t IOInterruptDispatchSource::GetLastInterrupt_Invoke(const IORPC *rpc, OSMetaClassBase *target, IOInterruptDispatchSource::GetLastInterrupt_Handler func)
{
  result = -536870209;
  if (rpc->message->msgh_body.msgh_descriptor_count == 1 && *&rpc->message[2].msgh.msgh_bits == 1 && rpc->sendSize >= 0x48 && rpc->replySize >= 0x44)
  {
    reply = rpc->reply;
    result = (func)(target, &reply[1].msgh_body, &reply[2].msgh.msgh_size);
    if (!result)
    {
      *&reply[1].msgh.msgh_bits = xmmword_23820DE00;
      reply->msgh.msgh_size = 68;
      *&reply->msgh.msgh_id = 1302509197;
      *&reply[1].msgh.msgh_voucher_port = 0;
    }
  }

  return result;
}

kern_return_t IOInterruptDispatchSource::InterruptOccurred_Invoke(const IORPC *rpc, OSMetaClassBase *target, IOInterruptDispatchSource::InterruptOccurred_Handler func, const OSMetaClass *targetActionClass)
{
  v4 = -536870209;
  message = rpc->message;
  if (rpc->message->msgh_body.msgh_descriptor_count == 2 && *&message[2].msgh.msgh_local_port == 2 && rpc->sendSize >= 0x6C && (!rpc->reply || rpc->replySize >= 0x34))
  {
    if (targetActionClass)
    {
      v8 = targetActionClass;
    }

    else
    {
      v8 = gOSActionMetaClass;
    }

    v9 = OSMetaClassBase::safeMetaCast(*&message[3].msgh.msgh_bits, v8);
    if (v9 || !*&message[3].msgh.msgh_bits)
    {
      (func)(target, v9, *&message[3].msgh.msgh_remote_port, *&message[3].msgh.msgh_voucher_port);
      return 0;
    }

    else
    {
      return -536870206;
    }
  }

  return v4;
}

kern_return_t IOMemoryDescriptorMetaClass::New(IOMemoryDescriptorMetaClass *this, OSObject *instance)
{
  return 0;
}

kern_return_t IOMemoryDescriptor::Dispatch(IOMemoryDescriptor *this, const IORPC *rpc)
{
  message = rpc->message;
  *&rpca.reply = *&rpc->reply;
  IORPCMessageFromMach(message, 0);
  rpca.message = message;
  return OSObject::_Dispatch(this, &rpca);
}

kern_return_t IOMemoryDescriptor::_Dispatch(IOMemoryDescriptor *self, const IORPC *rpc)
{
  IORPCMessageFromMach(rpc->message, 0);
  v5 = *rpc;
  return OSObject::_Dispatch(self, &v5);
}

kern_return_t IOMemoryDescriptorMetaClass::Dispatch(IOMemoryDescriptorMetaClass *this, const IORPC *rpc)
{
  IORPCMessageFromMach(rpc->message, 0);
  v5 = *rpc;
  return OSMetaClassBase::Dispatch(this, &v5);
}

kern_return_t IOMemoryDescriptor::_CopyState(IOMemoryDescriptor *this, _IOMDPrivateState *state, OSDispatchMethod supermethod)
{
  v9 = *MEMORY[0x277D85DE8];
  memset(v7, 0, sizeof(v7));
  *&v7[4] = 72;
  *v8 = xmmword_23820DFE0;
  *&v8[16] = 1;
  *&v8[24] = this;
  *&v7[20] = 0x14DA2B68CLL;
  if (supermethod)
  {
    invoke.message = v7;
    invoke.reply = v7;
    *&invoke.sendSize = 0x8800000048;
    result = (supermethod)(this, &invoke);
    if (result)
    {
      goto LABEL_14;
    }
  }

  else
  {
    invoke.message = v7;
    invoke.reply = v7;
    *&invoke.sendSize = 0x8800000048;
    result = OSMetaClassBase::Invoke(this, &invoke);
    if (result)
    {
      goto LABEL_14;
    }
  }

  result = -536870209;
  if (*&v7[4] == 68 && *&v7[28] == 0xA2C0861D4118CE5ELL && !*&v7[24])
  {
    if (*&v8[4])
    {
      result = -536870209;
    }

    else
    {
      result = 0;
    }

    if (state && !*&v8[4])
    {
      result = 0;
      *state = *&v8[12];
    }
  }

LABEL_14:
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

kern_return_t IOMemoryDescriptor::CreateMapping(IOMemoryDescriptor *this, uint64_t options, uint64_t address, uint64_t offset, uint64_t length, uint64_t alignment, IOMemoryMap **map, OSDispatchMethod supermethod)
{
  v27 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0;
  DWORD1(v16) = 112;
  v19 = xmmword_23820DFF0;
  v20 = 1;
  anObject = this;
  *(&v17 + 4) = 0x14DA2B68CLL;
  v22 = options;
  v23 = address;
  v24 = offset;
  v25 = length;
  v26 = alignment;
  invoke.message = &v16;
  invoke.reply = &v16;
  *&invoke.sendSize = 0x8C00000070;
  if (supermethod)
  {
    v9 = (supermethod)(this, &invoke);
  }

  else
  {
    v9 = OSMetaClassBase::Invoke(this, &invoke);
  }

  v10 = v9;
  if (!v9)
  {
    v10 = -536870209;
    if (DWORD1(v16) == 72 && v19 == 0xC5E69B0414FF6EE5 && DWORD2(v17) == 1 && v20 == 1)
    {
      v11 = OSMetaClassBase::safeMetaCast(anObject, gIOMemoryMapMetaClass);
      *map = v11;
      if (v11)
      {
        v12 = 1;
      }

      else
      {
        v12 = anObject == 0;
      }

      if (v12)
      {
        v10 = 0;
      }

      else
      {
        v10 = -536870206;
      }
    }
  }

  v13 = *MEMORY[0x277D85DE8];
  return v10;
}

kern_return_t IOMemoryDescriptor::CreateSubMemoryDescriptor(uint64_t memoryDescriptorCreateOptions, uint64_t offset, uint64_t length, IOMemoryDescriptor *ofDescriptor, IOMemoryDescriptor **memory)
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  DWORD1(v11) = 116;
  *anObject = xmmword_23820E000;
  v16 = gIOMemoryDescriptorMetaClass;
  *&anObject[16] = 2;
  *(&v12 + 4) = 0x24DA2B68CLL;
  v18 = memoryDescriptorCreateOptions;
  v19 = offset;
  v20 = length;
  v14 = 0;
  v17 = ofDescriptor;
  invoke.message = &v11;
  invoke.reply = &v11;
  *&invoke.sendSize = 0x8C00000074;
  v6 = OSMetaClassBase::Invoke(gIOMemoryDescriptorMetaClass, &invoke);
  if (!v6)
  {
    v6 = -536870209;
    if (DWORD1(v11) == 72 && *(&v13 + 1) == 0xB085B5EE60AC732FLL && DWORD2(v12) == 1 && *&anObject[4] == 1)
    {
      v7 = OSMetaClassBase::safeMetaCast(*&anObject[12], gIOMemoryDescriptorMetaClass);
      *memory = v7;
      if (v7)
      {
        v8 = 1;
      }

      else
      {
        v8 = *&anObject[12] == 0;
      }

      if (v8)
      {
        return 0;
      }

      else
      {
        return -536870206;
      }
    }
  }

  return v6;
}

kern_return_t IOMemoryDescriptor::CreateWithMemoryDescriptors(uint64_t memoryDescriptorCreateOptions, uint32_t withDescriptorsCount, IOMemoryDescriptor **const withDescriptors, IOMemoryDescriptor **memory)
{
  bzero(v14, 0x2D8uLL);
  v15 = 728;
  v8 = gIOMemoryDescriptorMetaClass;
  v20 = 0xBA1530C996C4FEBCLL;
  v21 = 33;
  v22 = gIOMemoryDescriptorMetaClass;
  v16 = 0x214DA2B68CLL;
  v23[32] = memoryDescriptorCreateOptions;
  v24 = withDescriptorsCount;
  for (i = 48; i != 432; i += 12)
  {
    *&v14[i] &= 0xFFFFFFu;
  }

  if (withDescriptorsCount > 0x20)
  {
    return -536870168;
  }

  memcpy(v23, withDescriptors, 8 * withDescriptorsCount);
  v13.message = v14;
  v13.reply = v14;
  *&v13.sendSize = 0x8C000002D8;
  result = OSMetaClassBase::Invoke(v8, &v13);
  if (!result)
  {
    if (v15 == 72 && v17 == 0xBA1530C996C4FEBCLL && HIDWORD(v16) == 1)
    {
      result = -536870209;
      if (v18 == 1)
      {
        v11 = OSMetaClassBase::safeMetaCast(anObject, gIOMemoryDescriptorMetaClass);
        *memory = v11;
        if (v11)
        {
          v12 = 1;
        }

        else
        {
          v12 = anObject == 0;
        }

        if (v12)
        {
          return 0;
        }

        else
        {
          return -536870206;
        }
      }
    }

    else
    {
      return -536870209;
    }
  }

  return result;
}

kern_return_t IOMemoryDescriptor::_CopyState_Invoke(const IORPC *rpc, OSMetaClassBase *target, IOMemoryDescriptor::_CopyState_Handler func)
{
  result = -536870209;
  if (rpc->message->msgh_body.msgh_descriptor_count == 1 && *&rpc->message[2].msgh.msgh_bits == 1 && rpc->sendSize >= 0x48 && rpc->replySize >= 0x44)
  {
    reply = rpc->reply;
    result = (func)(target, &reply[1].msgh_body);
    if (!result)
    {
      *&reply[1].msgh.msgh_bits = xmmword_23820E010;
      reply->msgh.msgh_size = 68;
      *&reply->msgh.msgh_id = 1302509197;
      *&reply[1].msgh.msgh_voucher_port = 0;
    }
  }

  return result;
}

kern_return_t IOMemoryDescriptor::CreateMapping_Invoke(const IORPC *rpc, OSMetaClassBase *target, IOMemoryDescriptor::CreateMapping_Handler func)
{
  result = -536870209;
  message = rpc->message;
  if (rpc->message->msgh_body.msgh_descriptor_count == 1 && *&message[2].msgh.msgh_bits == 1 && rpc->sendSize >= 0x70 && rpc->replySize >= 0x48)
  {
    reply = rpc->reply;
    result = (func)(target, *&message[2].msgh.msgh_voucher_port, *&message[2].msgh_body.msgh_descriptor_count, *&message[3].msgh.msgh_size, *&message[3].msgh.msgh_local_port, *&message[3].msgh.msgh_id, &reply[2].msgh.msgh_remote_port);
    if (!result)
    {
      *&reply[1].msgh.msgh_local_port = xmmword_23820E020;
      reply->msgh.msgh_size = 72;
      *&reply->msgh.msgh_id = 0x14DA2B68DLL;
      *&reply[2].msgh.msgh_bits = 1;
      reply[1].msgh.msgh_remote_port &= 0xFFFFFFu;
    }
  }

  return result;
}

kern_return_t IOMemoryDescriptor::CreateSubMemoryDescriptor_Invoke(const IORPC *rpc, IOMemoryDescriptor::CreateSubMemoryDescriptor_Handler func)
{
  v2 = -536870209;
  message = rpc->message;
  if (rpc->message->msgh_body.msgh_descriptor_count == 2 && *&message[2].msgh.msgh_local_port == 2 && rpc->sendSize >= 0x74 && rpc->replySize >= 0x48)
  {
    reply = rpc->reply;
    v6 = OSMetaClassBase::safeMetaCast(*&message[3].msgh.msgh_bits, gIOMemoryDescriptorMetaClass);
    if (v6 || !*&message[3].msgh.msgh_bits)
    {
      v2 = (func)(*&message[3].msgh.msgh_remote_port, *&message[3].msgh.msgh_voucher_port, *&message[3].msgh_body.msgh_descriptor_count, v6, &reply[2].msgh.msgh_remote_port);
      if (!v2)
      {
        *&reply[1].msgh.msgh_local_port = xmmword_23820E030;
        reply->msgh.msgh_size = 72;
        *&reply->msgh.msgh_id = 0x14DA2B68DLL;
        *&reply[2].msgh.msgh_bits = 1;
        reply[1].msgh.msgh_remote_port &= 0xFFFFFFu;
      }
    }

    else
    {
      return -536870206;
    }
  }

  return v2;
}

kern_return_t IOMemoryDescriptor::CreateWithMemoryDescriptors_Invoke(const IORPC *rpc, IOMemoryDescriptor::CreateWithMemoryDescriptors_Handler func)
{
  v2 = -536870209;
  message = rpc->message;
  msgh_id = rpc->message[25].msgh.msgh_id;
  if (msgh_id >= 0x20)
  {
    v5 = 32;
  }

  else
  {
    v5 = msgh_id;
  }

  if (message->msgh_body.msgh_descriptor_count == 33 && *&message[15].msgh.msgh_id == 33 && rpc->sendSize >= 0x2D8 && rpc->replySize >= 0x48)
  {
    reply = rpc->reply;
    if (msgh_id)
    {
      v8 = v5;
      p_msgh_remote_port = &message[16].msgh.msgh_remote_port;
      while (!*p_msgh_remote_port || OSMetaClassBase::safeMetaCast(*p_msgh_remote_port, gIOMemoryDescriptorMetaClass))
      {
        ++p_msgh_remote_port;
        if (!--v8)
        {
          goto LABEL_13;
        }
      }

      return -536870206;
    }

    else
    {
LABEL_13:
      v2 = (func)(*&message[25].msgh.msgh_local_port, v5, &message[16].msgh.msgh_remote_port, &reply[2].msgh.msgh_remote_port);
      if (!v2)
      {
        *&reply[1].msgh.msgh_local_port = xmmword_23820E040;
        reply->msgh.msgh_size = 72;
        *&reply->msgh.msgh_id = 0x14DA2B68DLL;
        *&reply[2].msgh.msgh_bits = 1;
        reply[1].msgh.msgh_remote_port &= 0xFFFFFFu;
      }
    }
  }

  return v2;
}

kern_return_t IOMemoryMapMetaClass::New(IOMemoryMapMetaClass *this, OSObject *instance)
{
  return 0;
}

kern_return_t IOMemoryMap::Dispatch(IOMemoryMap *this, const IORPC *rpc)
{
  message = rpc->message;
  *&rpca.reply = *&rpc->reply;
  IORPCMessageFromMach(message, 0);
  rpca.message = message;
  return OSObject::_Dispatch(this, &rpca);
}

kern_return_t IOMemoryMap::_Dispatch(IOMemoryMap *self, const IORPC *rpc)
{
  IORPCMessageFromMach(rpc->message, 0);
  v5 = *rpc;
  return OSObject::_Dispatch(self, &v5);
}

kern_return_t IOMemoryMapMetaClass::Dispatch(IOMemoryMapMetaClass *this, const IORPC *rpc)
{
  IORPCMessageFromMach(rpc->message, 0);
  v5 = *rpc;
  return OSMetaClassBase::Dispatch(this, &v5);
}

kern_return_t IOMemoryMap::_CopyState(IOMemoryMap *this, _IOMemoryMapPrivateState *state, OSDispatchMethod supermethod)
{
  v10 = *MEMORY[0x277D85DE8];
  memset(v8, 0, sizeof(v8));
  *&v8[4] = 72;
  *v9 = xmmword_23820E200;
  *&v9[16] = 1;
  *&v9[24] = this;
  *&v8[20] = 0x14DA2B68CLL;
  if (supermethod)
  {
    invoke.message = v8;
    invoke.reply = v8;
    *&invoke.sendSize = 0x9800000048;
    result = (supermethod)(this, &invoke);
    if (result)
    {
      goto LABEL_14;
    }
  }

  else
  {
    invoke.message = v8;
    invoke.reply = v8;
    *&invoke.sendSize = 0x9800000048;
    result = OSMetaClassBase::Invoke(this, &invoke);
    if (result)
    {
      goto LABEL_14;
    }
  }

  result = -536870209;
  if (*&v8[4] == 84 && *&v8[28] == 0xFC92B3D7F2D48EC7 && !*&v8[24])
  {
    if (*&v9[4])
    {
      result = -536870209;
    }

    else
    {
      result = 0;
    }

    if (state && !*&v9[4])
    {
      result = 0;
      v5 = *&v9[28];
      *&state->length = *&v9[12];
      *&state->options = v5;
    }
  }

LABEL_14:
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

kern_return_t IOMemoryMap::_CopyState_Invoke(const IORPC *rpc, OSMetaClassBase *target, IOMemoryMap::_CopyState_Handler func)
{
  result = -536870209;
  if (rpc->message->msgh_body.msgh_descriptor_count == 1 && *&rpc->message[2].msgh.msgh_bits == 1 && rpc->sendSize >= 0x48 && rpc->replySize >= 0x54)
  {
    reply = rpc->reply;
    result = (func)(target, &reply[1].msgh_body);
    if (!result)
    {
      *&reply[1].msgh.msgh_bits = xmmword_23820E210;
      reply->msgh.msgh_size = 84;
      *&reply->msgh.msgh_id = 1302509197;
      *&reply[1].msgh.msgh_voucher_port = 0;
    }
  }

  return result;
}

kern_return_t IOReporterMetaClass::New(IOReporterMetaClass *this, OSObject *instance)
{
  return 0;
}

kern_return_t IOSimpleReporterMetaClass::New(IOSimpleReporterMetaClass *this, OSObject *instance)
{
  return 0;
}

kern_return_t IOStateReporterMetaClass::New(IOStateReporterMetaClass *this, OSObject *instance)
{
  return 0;
}

kern_return_t IOHistogramReporterMetaClass::New(IOHistogramReporterMetaClass *this, OSObject *instance)
{
  return 0;
}

kern_return_t IOReportLegendMetaClass::New(IOReportLegendMetaClass *this, OSObject *instance)
{
  return 0;
}

kern_return_t IOServiceMetaClass::New(IOServiceMetaClass *this, OSObject *instance)
{
  return 0;
}

kern_return_t IOService::_Dispatch(IOService *self, const IORPC *rpc)
{
  msgid = IORPCMessageFromMach(rpc->message, 0)->msgid;
  if (msgid > 0xAB6F76DDE6D693F1)
  {
    if (msgid <= 0xD200FDE7D57ECCA5)
    {
      if (msgid == 0xAB6F76DDE6D693F2)
      {
        v6 = *rpc;
        return IOService::Start_Invoke(&v6, self, IOService::Start_Impl);
      }

      if (msgid == 0xAD8461D6BB5E656DLL)
      {
        v6 = *rpc;
        return IOService::UserSetProperties_Invoke(&v6, self, IOService::UserSetProperties_Impl);
      }
    }

    else
    {
      switch(msgid)
      {
        case 0xD200FDE7D57ECCA6:
          v6 = *rpc;
          return IOService::SetPowerState_Invoke(&v6, self, IOService::SetPowerState_Impl);
        case 0xE1A46DBD68BBE09CLL:
          v6 = *rpc;
          return IOService::Create_Invoke(&v6, self, IOService::Create_Impl);
        case 0xE608AE8273DAE1BCLL:
          v6 = *rpc;
          return OSObject::SetDispatchQueue_Invoke(&v6, self, IOService::SetDispatchQueue_Impl);
      }
    }
  }

  else if (msgid <= 0x8A6F522F3894A0D6)
  {
    if (msgid == 0x805BB452F0B44EF7)
    {
      v6 = *rpc;
      return IOService::CreateDefaultDispatchQueue_Invoke(&v6, self, IOService::CreateDefaultDispatchQueue_Impl);
    }

    if (msgid == 0x80B22DD60EE3ABB6)
    {
      v6 = *rpc;
      return IOService::_NewUserClient_Invoke(&v6, self, IOService::_NewUserClient_Impl);
    }
  }

  else
  {
    switch(msgid)
    {
      case 0x8A6F522F3894A0D7:
        v6 = *rpc;
        return IOService::GetRegistryEntryID_Invoke(&v6, self, IOService::GetRegistryEntryID_Impl);
      case 0x98E715041C459FA5:
        v6 = *rpc;
        return IOService::Stop_Invoke(&v6, self, IOService::Stop_Impl);
      case 0xA8C93137712A16A2:
        v6 = *rpc;
        return IOService::Stop_async_Invoke(&v6, self, IOService::Stop_async_Impl);
    }
  }

  v6 = *rpc;
  return OSObject::_Dispatch(self, &v6);
}

kern_return_t IOService::Start_Invoke(const IORPC *rpc, OSMetaClassBase *target, IOService::Start_Handler func)
{
  v3 = -536870209;
  message = rpc->message;
  if (rpc->message->msgh_body.msgh_descriptor_count == 2 && *&message[2].msgh.msgh_local_port == 2 && rpc->sendSize >= 0x5C && rpc->replySize >= 0x34)
  {
    reply = rpc->reply;
    v8 = OSMetaClassBase::safeMetaCast(*&message[3].msgh.msgh_bits, gIOServiceMetaClass);
    if (v8 || !*&message[3].msgh.msgh_bits)
    {
      v3 = (func)(target, v8);
      if (!v3)
      {
        *&reply[1].msgh.msgh_bits = xmmword_23820EB20;
        reply->msgh.msgh_size = 52;
        *&reply->msgh.msgh_id = 1302509197;
        *&reply[1].msgh.msgh_voucher_port = 0;
      }
    }

    else
    {
      return -536870206;
    }
  }

  return v3;
}

kern_return_t IOService::Stop_Invoke(const IORPC *rpc, OSMetaClassBase *target, IOService::Stop_Handler func)
{
  v3 = -536870209;
  message = rpc->message;
  if (rpc->message->msgh_body.msgh_descriptor_count == 2 && *&message[2].msgh.msgh_local_port == 2 && rpc->sendSize >= 0x5C && rpc->replySize >= 0x34)
  {
    reply = rpc->reply;
    v8 = OSMetaClassBase::safeMetaCast(*&message[3].msgh.msgh_bits, gIOServiceMetaClass);
    if (v8 || !*&message[3].msgh.msgh_bits)
    {
      v3 = (func)(target, v8);
      if (!v3)
      {
        *&reply[1].msgh.msgh_bits = xmmword_23820EB30;
        reply->msgh.msgh_size = 52;
        *&reply->msgh.msgh_id = 1302509197;
        *&reply[1].msgh.msgh_voucher_port = 0;
      }
    }

    else
    {
      return -536870206;
    }
  }

  return v3;
}

kern_return_t IOService::GetRegistryEntryID_Invoke(const IORPC *rpc, OSMetaClassBase *target, IOService::GetRegistryEntryID_Handler func)
{
  result = -536870209;
  if (rpc->message->msgh_body.msgh_descriptor_count == 1 && *&rpc->message[2].msgh.msgh_bits == 1 && rpc->sendSize >= 0x48 && rpc->replySize >= 0x3C)
  {
    reply = rpc->reply;
    result = (func)(target, &reply[1].msgh_body);
    if (!result)
    {
      *&reply[1].msgh.msgh_bits = xmmword_23820EB40;
      reply->msgh.msgh_size = 60;
      *&reply->msgh.msgh_id = 1302509197;
      *&reply[1].msgh.msgh_voucher_port = 0;
    }
  }

  return result;
}

kern_return_t IOService::CreateDefaultDispatchQueue_Invoke(const IORPC *rpc, OSMetaClassBase *target, IOService::CreateDefaultDispatchQueue_Handler func)
{
  result = -536870209;
  if (rpc->message->msgh_body.msgh_descriptor_count == 1 && *&rpc->message[2].msgh.msgh_bits == 1 && rpc->sendSize >= 0x48 && rpc->replySize >= 0x48)
  {
    reply = rpc->reply;
    result = (func)(target, &reply[2].msgh.msgh_remote_port);
    if (!result)
    {
      *&reply[1].msgh.msgh_local_port = xmmword_23820EB50;
      reply->msgh.msgh_size = 72;
      *&reply->msgh.msgh_id = 0x14DA2B68DLL;
      *&reply[2].msgh.msgh_bits = 1;
      reply[1].msgh.msgh_remote_port &= 0xFFFFFFu;
    }
  }

  return result;
}

kern_return_t IOService::SetPowerState_Invoke(const IORPC *rpc, OSMetaClassBase *target, IOService::SetPowerState_Handler func)
{
  result = -536870209;
  message = rpc->message;
  if (rpc->message->msgh_body.msgh_descriptor_count == 1 && *&message[2].msgh.msgh_bits == 1 && rpc->sendSize >= 0x50 && rpc->replySize >= 0x34)
  {
    reply = rpc->reply;
    result = (func)(target, message[2].msgh.msgh_voucher_port);
    if (!result)
    {
      *&reply[1].msgh.msgh_bits = xmmword_23820EB60;
      reply->msgh.msgh_size = 52;
      *&reply->msgh.msgh_id = 1302509197;
      *&reply[1].msgh.msgh_voucher_port = 0;
    }
  }

  return result;
}

kern_return_t IOService::Create_Invoke(const IORPC *rpc, OSMetaClassBase *target, IOService::Create_Handler func)
{
  v3 = -536870209;
  message = rpc->message;
  if (rpc->message->msgh_body.msgh_descriptor_count == 2 && *&message[2].msgh.msgh_local_port == 2 && rpc->sendSize >= 0xE4 && rpc->replySize >= 0x48)
  {
    reply = rpc->reply;
    v8 = OSMetaClassBase::safeMetaCast(*&message[3].msgh.msgh_bits, gIOServiceMetaClass);
    if (!v8 && *&message[3].msgh.msgh_bits || strnlen(&message[3].msgh.msgh_voucher_port, 0x80uLL) > 0x7F)
    {
      return -536870206;
    }

    else
    {
      v3 = (func)(target, v8, &message[3].msgh.msgh_voucher_port, &reply[2].msgh.msgh_remote_port);
      if (!v3)
      {
        *&reply[1].msgh.msgh_local_port = xmmword_23820EB70;
        reply->msgh.msgh_size = 72;
        *&reply->msgh.msgh_id = 0x14DA2B68DLL;
        *&reply[2].msgh.msgh_bits = 1;
        reply[1].msgh.msgh_remote_port &= 0xFFFFFFu;
      }
    }
  }

  return v3;
}

kern_return_t IOService::UserSetProperties_Invoke(const IORPC *rpc, OSMetaClassBase *target, IOService::UserSetProperties_Handler func)
{
  v3 = -536870209;
  message = rpc->message;
  if (rpc->message->msgh_body.msgh_descriptor_count == 2 && *&message[2].msgh.msgh_voucher_port == 2 && rpc->sendSize >= 0x60 && rpc->replySize >= 0x34)
  {
    reply = rpc->reply;
    v8 = *&message[3].msgh.msgh_size;
    if (v8)
    {
      if (!OSMetaClassBase::safeMetaCast(v8, gOSContainerMetaClass))
      {
        return -536870206;
      }

      v9 = *&message[3].msgh.msgh_size;
    }

    else
    {
      v9 = 0;
    }

    v3 = (func)(target, v9);
    if (!v3)
    {
      *&reply[1].msgh.msgh_bits = xmmword_23820EB80;
      reply->msgh.msgh_size = 52;
      *&reply->msgh.msgh_id = 1302509197;
      *&reply[1].msgh.msgh_voucher_port = 0;
    }
  }

  return v3;
}

kern_return_t IOService::Stop_async_Invoke(const IORPC *rpc, OSMetaClassBase *target, IOService::Stop_async_Handler func)
{
  v3 = -536870209;
  message = rpc->message;
  if (rpc->message->msgh_body.msgh_descriptor_count == 2 && *&message[2].msgh.msgh_local_port == 2 && rpc->sendSize >= 0x5C && (!rpc->reply || rpc->replySize >= 0x34))
  {
    v7 = OSMetaClassBase::safeMetaCast(*&message[3].msgh.msgh_bits, gIOServiceMetaClass);
    if (v7 || !*&message[3].msgh.msgh_bits)
    {
      (func)(target, v7);
      return 0;
    }

    else
    {
      return -536870206;
    }
  }

  return v3;
}

kern_return_t IOService::_NewUserClient_Invoke(const IORPC *rpc, OSMetaClassBase *target, IOService::_NewUserClient_Handler func)
{
  v3 = -536870209;
  message = rpc->message;
  if (rpc->message->msgh_body.msgh_descriptor_count == 2 && *&message[2].msgh.msgh_voucher_port == 2 && rpc->sendSize >= 0x68 && rpc->replySize >= 0x48)
  {
    reply = rpc->reply;
    v8 = *&message[3].msgh.msgh_size;
    if (v8)
    {
      if (!OSMetaClassBase::safeMetaCast(v8, gOSDictionaryMetaClass))
      {
        return -536870206;
      }

      v9 = *&message[3].msgh.msgh_size;
    }

    else
    {
      v9 = 0;
    }

    v3 = (func)(target, message[3].msgh.msgh_local_port, v9, &reply[2].msgh.msgh_remote_port);
    if (!v3)
    {
      *&reply[1].msgh.msgh_local_port = xmmword_23820EB90;
      reply->msgh.msgh_size = 72;
      *&reply->msgh.msgh_id = 0x14DA2B68DLL;
      *&reply[2].msgh.msgh_bits = 1;
      reply[1].msgh.msgh_remote_port &= 0xFFFFFFu;
    }
  }

  return v3;
}

kern_return_t IOServiceMetaClass::Dispatch(IOServiceMetaClass *this, const IORPC *rpc)
{
  IORPCMessageFromMach(rpc->message, 0);
  v5 = *rpc;
  return OSMetaClassBase::Dispatch(this, &v5);
}

kern_return_t IOService::Start(IOService *this, IOService *provider, OSDispatchMethod supermethod)
{
  memset(v5, 0, 52);
  v5[1] = 92;
  *&v5[13] = xmmword_23820EBA0;
  v7 = this;
  v6 = 2;
  *&v5[5] = 0x24DA2B68CLL;
  v8 = provider;
  if (supermethod)
  {
    invoke.message = v5;
    invoke.reply = v5;
    *&invoke.sendSize = 0x780000005CLL;
    result = (supermethod)(this, &invoke);
    if (result)
    {
      return result;
    }
  }

  else
  {
    invoke.message = v5;
    invoke.reply = v5;
    *&invoke.sendSize = 0x780000005CLL;
    result = OSMetaClassBase::Invoke(this, &invoke);
    if (result)
    {
      return result;
    }
  }

  result = -536870209;
  if (v5[1] == 52 && *&v5[7] == 0xAB6F76DDE6D693F2 && !v5[6])
  {
    if (*&v5[11])
    {
      return -536870209;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

kern_return_t IOService::Stop(IOService *this, IOService *provider, OSDispatchMethod supermethod)
{
  memset(v5, 0, 52);
  v5[1] = 92;
  *&v5[13] = xmmword_23820EBB0;
  v7 = this;
  v6 = 2;
  *&v5[5] = 0x24DA2B68CLL;
  v8 = provider;
  if (supermethod)
  {
    invoke.message = v5;
    invoke.reply = v5;
    *&invoke.sendSize = 0x780000005CLL;
    result = (supermethod)(this, &invoke);
    if (result)
    {
      return result;
    }
  }

  else
  {
    invoke.message = v5;
    invoke.reply = v5;
    *&invoke.sendSize = 0x780000005CLL;
    result = OSMetaClassBase::Invoke(this, &invoke);
    if (result)
    {
      return result;
    }
  }

  result = -536870209;
  if (v5[1] == 52 && *&v5[7] == 0x98E715041C459FA5 && !v5[6])
  {
    if (*&v5[11])
    {
      return -536870209;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

kern_return_t IOService::ClientCrashed(IOService *this, IOService *client, uint64_t options, OSDispatchMethod supermethod)
{
  memset(v6, 0, 52);
  v6[1] = 100;
  *&v6[13] = xmmword_23820EBC0;
  v8 = this;
  v7 = 2;
  *&v6[5] = 0x24DA2B68CLL;
  v9 = client;
  v10 = options;
  if (supermethod)
  {
    invoke.message = v6;
    invoke.reply = v6;
    *&invoke.sendSize = 0x7800000064;
    result = (supermethod)(this, &invoke);
    if (result)
    {
      return result;
    }
  }

  else
  {
    invoke.message = v6;
    invoke.reply = v6;
    *&invoke.sendSize = 0x7800000064;
    result = OSMetaClassBase::Invoke(this, &invoke);
    if (result)
    {
      return result;
    }
  }

  result = -536870209;
  if (v6[1] == 52 && *&v6[7] == 0xF608D8D479C824A3 && !v6[6])
  {
    if (*&v6[11])
    {
      return -536870209;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

kern_return_t IOService::GetRegistryEntryID(IOService *this, uint64_t *registryEntryID, OSDispatchMethod supermethod)
{
  v10 = *MEMORY[0x277D85DE8];
  memset(v7, 0, sizeof(v7));
  *&v7[4] = 72;
  *v8 = xmmword_23820EBD0;
  *&v8[16] = 1;
  v9 = this;
  *&v7[20] = 0x14DA2B68CLL;
  if (supermethod)
  {
    invoke.message = v7;
    invoke.reply = v7;
    *&invoke.sendSize = 0x8000000048;
    result = (supermethod)(this, &invoke);
    if (result)
    {
      goto LABEL_14;
    }
  }

  else
  {
    invoke.message = v7;
    invoke.reply = v7;
    *&invoke.sendSize = 0x8000000048;
    result = OSMetaClassBase::Invoke(this, &invoke);
    if (result)
    {
      goto LABEL_14;
    }
  }

  result = -536870209;
  if (*&v7[4] == 60 && *&v7[28] == 0x8A6F522F3894A0D7 && !*&v7[24])
  {
    if (*&v8[4])
    {
      result = -536870209;
    }

    else
    {
      result = 0;
    }

    if (registryEntryID && !*&v8[4])
    {
      result = 0;
      *registryEntryID = *&v8[12];
    }
  }

LABEL_14:
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

kern_return_t IOService::SetName(IOService *this, const char *name, OSDispatchMethod supermethod)
{
  v13 = *MEMORY[0x277D85DE8];
  memset(v8, 0, sizeof(v8));
  memset(v12, 0, sizeof(v12));
  *&v8[4] = 208;
  v9 = xmmword_23820EBE0;
  v10 = 1;
  v11 = this;
  *&v8[20] = 0x14DA2B68CLL;
  strlcpy(v12, name, 0x80uLL);
  if (supermethod)
  {
    invoke.message = v8;
    invoke.reply = v8;
    *&invoke.sendSize = 0x78000000D0;
    result = (supermethod)(this, &invoke);
    if (result)
    {
      goto LABEL_11;
    }
  }

  else
  {
    invoke.message = v8;
    invoke.reply = v8;
    *&invoke.sendSize = 0x78000000D0;
    result = OSMetaClassBase::Invoke(this, &invoke);
    if (result)
    {
      goto LABEL_11;
    }
  }

  result = -536870209;
  if (*&v8[4] == 52 && *&v8[28] == 0xFF378DD57615EB9FLL && !*&v8[24])
  {
    if (*(&v9 + 4))
    {
      result = -536870209;
    }

    else
    {
      result = 0;
    }
  }

LABEL_11:
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

kern_return_t IOService::RegisterService(IOService *this, OSDispatchMethod supermethod)
{
  v9 = *MEMORY[0x277D85DE8];
  memset(v5, 0, sizeof(v5));
  *&v5[4] = 72;
  v6 = xmmword_23820EBF0;
  v7 = 1;
  v8 = this;
  *&v5[20] = 0x14DA2B68CLL;
  if (supermethod)
  {
    invoke.message = v5;
    invoke.reply = v5;
    *&invoke.sendSize = 0x7800000048;
    result = (supermethod)(this, &invoke);
    if (result)
    {
      goto LABEL_11;
    }
  }

  else
  {
    invoke.message = v5;
    invoke.reply = v5;
    *&invoke.sendSize = 0x7800000048;
    result = OSMetaClassBase::Invoke(this, &invoke);
    if (result)
    {
      goto LABEL_11;
    }
  }

  result = -536870209;
  if (*&v5[4] == 52 && *&v5[28] == 0xE9722C2BB1347C28 && !*&v5[24])
  {
    if (*(&v6 + 4))
    {
      result = -536870209;
    }

    else
    {
      result = 0;
    }
  }

LABEL_11:
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

kern_return_t IOService::CreateDefaultDispatchQueue(IOService *this, IODispatchQueue **queue, OSDispatchMethod supermethod)
{
  v17 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0;
  DWORD1(v11) = 72;
  v14 = xmmword_23820EC00;
  v15 = 1;
  anObject = this;
  *(&v12 + 4) = 0x14DA2B68CLL;
  invoke.message = &v11;
  invoke.reply = &v11;
  *&invoke.sendSize = 0x8C00000048;
  if (supermethod)
  {
    v4 = (supermethod)(this, &invoke);
  }

  else
  {
    v4 = OSMetaClassBase::Invoke(this, &invoke);
  }

  v5 = v4;
  if (!v4)
  {
    v5 = -536870209;
    if (DWORD1(v11) == 72 && v14 == 0x805BB452F0B44EF7 && DWORD2(v12) == 1 && v15 == 1)
    {
      v6 = OSMetaClassBase::safeMetaCast(anObject, gIODispatchQueueMetaClass);
      *queue = v6;
      if (v6)
      {
        v7 = 1;
      }

      else
      {
        v7 = anObject == 0;
      }

      if (v7)
      {
        v5 = 0;
      }

      else
      {
        v5 = -536870206;
      }
    }
  }

  v8 = *MEMORY[0x277D85DE8];
  return v5;
}

kern_return_t IOService::CopyProperties(IOService *this, OSDictionary **properties, OSDispatchMethod supermethod)
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0;
  DWORD1(v11) = 72;
  v14 = xmmword_23820EC10;
  *v15 = 1;
  *&v15[8] = this;
  *(&v12 + 4) = 0x14DA2B68CLL;
  invoke.message = &v11;
  invoke.reply = &v11;
  *&invoke.sendSize = 0x9000000048;
  if (supermethod)
  {
    v4 = (supermethod)(this, &invoke);
  }

  else
  {
    v4 = OSMetaClassBase::Invoke(this, &invoke);
  }

  v5 = v4;
  if (!v4)
  {
    v5 = -536870209;
    if (DWORD1(v11) == 76 && *(&v14 + 4) == 0x833EC8F92F8B5362 && DWORD2(v12) == 1 && *&v15[4] == 1)
    {
      v6 = OSMetaClassBase::safeMetaCast(*&v15[12], gOSDictionaryMetaClass);
      *properties = v6;
      if (v6)
      {
        v7 = 1;
      }

      else
      {
        v7 = *&v15[12] == 0;
      }

      if (v7)
      {
        v5 = 0;
      }

      else
      {
        v5 = -536870206;
      }
    }
  }

  v8 = *MEMORY[0x277D85DE8];
  return v5;
}

kern_return_t IOService::SearchProperty(IOService *this, const char *name, const char *plane, uint64_t options, OSContainer **property, OSDispatchMethod supermethod)
{
  v25 = *MEMORY[0x277D85DE8];
  v24 = 0u;
  memset(v23, 0, sizeof(v23));
  v19 = 0u;
  v20 = 0;
  v18 = 0u;
  DWORD1(v18) = 352;
  v21 = 0xAD751CDB94C8DCC8;
  *v22 = 1;
  *&v22[8] = this;
  *(&v19 + 4) = 0x14DA2B68CLL;
  strlcpy(v23, name, 0x80uLL);
  *&v23[8] = 0;
  strlcpy(&v23[8] + 8, plane, 0x80uLL);
  *(&v24 + 1) = options;
  invoke.message = &v18;
  invoke.reply = &v18;
  *&invoke.sendSize = 0x9000000160;
  if (supermethod)
  {
    v11 = (supermethod)(this, &invoke);
  }

  else
  {
    v11 = OSMetaClassBase::Invoke(this, &invoke);
  }

  v12 = v11;
  if (!v11)
  {
    v12 = -536870209;
    if (DWORD1(v18) == 76 && *(&v21 + 4) == 0xAD751CDB94C8DCC8 && DWORD2(v19) == 1 && *&v22[4] == 1)
    {
      v13 = OSMetaClassBase::safeMetaCast(*&v22[12], gOSContainerMetaClass);
      *property = v13;
      if (v13)
      {
        v14 = 1;
      }

      else
      {
        v14 = *&v22[12] == 0;
      }

      if (v14)
      {
        v12 = 0;
      }

      else
      {
        v12 = -536870206;
      }
    }
  }

  v15 = *MEMORY[0x277D85DE8];
  return v12;
}

kern_return_t IOService::SetProperties(IOService *this, OSDictionary *properties, OSDispatchMethod supermethod)
{
  v12 = *MEMORY[0x277D85DE8];
  memset(v6, 0, sizeof(v6));
  *&v6[4] = 96;
  v8 = xmmword_23820EC20;
  v9 = 2;
  v10 = this;
  *&v7 = 32;
  *(&v7 + 1) = 16777472;
  *&v6[20] = 0x24DA2B68CLL;
  v11 = properties;
  if (supermethod)
  {
    invoke.message = v6;
    invoke.reply = v6;
    *&invoke.sendSize = 0x7800000060;
    result = (supermethod)(this, &invoke);
    if (result)
    {
      goto LABEL_11;
    }
  }

  else
  {
    invoke.message = v6;
    invoke.reply = v6;
    *&invoke.sendSize = 0x7800000060;
    result = OSMetaClassBase::Invoke(this, &invoke);
    if (result)
    {
      goto LABEL_11;
    }
  }

  result = -536870209;
  if (*&v6[4] == 52 && *&v6[28] == 0xD8A753EA156F9162 && !*&v6[24])
  {
    if (*(&v7 + 4))
    {
      result = -536870209;
    }

    else
    {
      result = 0;
    }
  }

LABEL_11:
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

kern_return_t IOService::JoinPMTree(IOService *this, OSDispatchMethod supermethod)
{
  v9 = *MEMORY[0x277D85DE8];
  memset(v5, 0, sizeof(v5));
  *&v5[4] = 72;
  v6 = xmmword_23820EC30;
  v7 = 1;
  v8 = this;
  *&v5[20] = 0x14DA2B68CLL;
  if (supermethod)
  {
    invoke.message = v5;
    invoke.reply = v5;
    *&invoke.sendSize = 0x7800000048;
    result = (supermethod)(this, &invoke);
    if (result)
    {
      goto LABEL_11;
    }
  }

  else
  {
    invoke.message = v5;
    invoke.reply = v5;
    *&invoke.sendSize = 0x7800000048;
    result = OSMetaClassBase::Invoke(this, &invoke);
    if (result)
    {
      goto LABEL_11;
    }
  }

  result = -536870209;
  if (*&v5[4] == 52 && *&v5[28] == 0xF26C46526735EFFFLL && !*&v5[24])
  {
    if (*(&v6 + 4))
    {
      result = -536870209;
    }

    else
    {
      result = 0;
    }
  }

LABEL_11:
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

kern_return_t IOService::SetPowerState(IOService *this, uint32_t powerFlags, OSDispatchMethod supermethod)
{
  v11 = *MEMORY[0x277D85DE8];
  memset(v6, 0, sizeof(v6));
  *&v6[4] = 80;
  v7 = xmmword_23820EC40;
  v8 = 1;
  v9 = this;
  *&v6[20] = 0x14DA2B68CLL;
  v10 = powerFlags;
  if (supermethod)
  {
    invoke.message = v6;
    invoke.reply = v6;
    *&invoke.sendSize = 0x7800000050;
    result = (supermethod)(this, &invoke);
    if (result)
    {
      goto LABEL_11;
    }
  }

  else
  {
    invoke.message = v6;
    invoke.reply = v6;
    *&invoke.sendSize = 0x7800000050;
    result = OSMetaClassBase::Invoke(this, &invoke);
    if (result)
    {
      goto LABEL_11;
    }
  }

  result = -536870209;
  if (*&v6[4] == 52 && *&v6[28] == 0xD200FDE7D57ECCA6 && !*&v6[24])
  {
    if (*(&v7 + 4))
    {
      result = -536870209;
    }

    else
    {
      result = 0;
    }
  }

LABEL_11:
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

kern_return_t IOService::ChangePowerState(IOService *this, uint32_t powerFlags, OSDispatchMethod supermethod)
{
  v11 = *MEMORY[0x277D85DE8];
  memset(v6, 0, sizeof(v6));
  *&v6[4] = 80;
  v7 = xmmword_23820EC50;
  v8 = 1;
  v9 = this;
  *&v6[20] = 0x14DA2B68CLL;
  v10 = powerFlags;
  if (supermethod)
  {
    invoke.message = v6;
    invoke.reply = v6;
    *&invoke.sendSize = 0x7800000050;
    result = (supermethod)(this, &invoke);
    if (result)
    {
      goto LABEL_11;
    }
  }

  else
  {
    invoke.message = v6;
    invoke.reply = v6;
    *&invoke.sendSize = 0x7800000050;
    result = OSMetaClassBase::Invoke(this, &invoke);
    if (result)
    {
      goto LABEL_11;
    }
  }

  result = -536870209;
  if (*&v6[4] == 52 && *&v6[28] == 0xDB75CFC3395484A0 && !*&v6[24])
  {
    if (*(&v7 + 4))
    {
      result = -536870209;
    }

    else
    {
      result = 0;
    }
  }

LABEL_11:
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t IOService::SetPowerOverride(IOService *this, unsigned __int8 a2, uint64_t (*a3)(IOService *, IORPC *))
{
  v11 = *MEMORY[0x277D85DE8];
  memset(v6, 0, sizeof(v6));
  *&v6[4] = 80;
  v7 = xmmword_23820EC60;
  v8 = 1;
  v9 = this;
  *&v6[20] = 0x14DA2B68CLL;
  v10 = a2;
  if (a3)
  {
    invoke.message = v6;
    invoke.reply = v6;
    *&invoke.sendSize = 0x7800000050;
    result = a3(this, &invoke);
    if (result)
    {
      goto LABEL_11;
    }
  }

  else
  {
    invoke.message = v6;
    invoke.reply = v6;
    *&invoke.sendSize = 0x7800000050;
    result = OSMetaClassBase::Invoke(this, &invoke);
    if (result)
    {
      goto LABEL_11;
    }
  }

  result = 3758097087;
  if (*&v6[4] == 52 && *&v6[28] == 0xDCA775718F07AE4FLL && !*&v6[24])
  {
    if (*(&v7 + 4))
    {
      result = 3758097087;
    }

    else
    {
      result = 0;
    }
  }

LABEL_11:
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

kern_return_t IOService::NewUserClient(IOService *this, uint32_t type, IOUserClient **userClient, OSDispatchMethod supermethod)
{
  v19 = *MEMORY[0x277D85DE8];
  v16 = 0;
  v13 = 0u;
  v14 = 0;
  v12 = 0u;
  DWORD1(v12) = 80;
  v15 = 0xF669EFFFCB89ED9CLL;
  v17 = 1;
  anObject[0] = this;
  *(&v13 + 4) = 0x14DA2B68CLL;
  anObject[1] = type;
  invoke.message = &v12;
  invoke.reply = &v12;
  *&invoke.sendSize = 0x8C00000050;
  if (supermethod)
  {
    v5 = (supermethod)(this, &invoke);
  }

  else
  {
    v5 = OSMetaClassBase::Invoke(this, &invoke);
  }

  v6 = v5;
  if (!v5)
  {
    v6 = -536870209;
    if (DWORD1(v12) == 72 && v15 == 0xF669EFFFCB89ED9CLL && DWORD2(v13) == 1 && v17 == 1)
    {
      v7 = OSMetaClassBase::safeMetaCast(anObject[0], gIOUserClientMetaClass);
      *userClient = v7;
      if (v7)
      {
        v8 = 1;
      }

      else
      {
        v8 = anObject[0] == 0;
      }

      if (v8)
      {
        v6 = 0;
      }

      else
      {
        v6 = -536870206;
      }
    }
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

kern_return_t IOService::Create(IOService *this, IOService *provider, const char *propertiesKey, IOService **result, OSDispatchMethod supermethod)
{
  v26 = *MEMORY[0x277D85DE8];
  *anObject = 0;
  v23 = 0;
  v15 = 0u;
  v16 = 0u;
  v25 = 0;
  memset(v24, 0, sizeof(v24));
  v17 = 0u;
  *&v19[8] = 0;
  DWORD1(v15) = 228;
  *v19 = 0xE1A46DBD68BBE09CLL;
  anObject_12 = this;
  *&anObject[4] = 2;
  *(&v16 + 4) = 0x24DA2B68CLL;
  v18 = 0;
  v22 = provider;
  strlcpy(&v24[4], propertiesKey, 0x80uLL);
  invoke.message = &v15;
  invoke.reply = &v15;
  *&invoke.sendSize = 0x8C000000E4;
  if (supermethod)
  {
    v8 = (supermethod)(this, &invoke);
  }

  else
  {
    v8 = OSMetaClassBase::Invoke(this, &invoke);
  }

  v9 = v8;
  if (!v8)
  {
    v9 = -536870209;
    if (DWORD1(v15) == 72 && *(&v17 + 1) == 0xE1A46DBD68BBE09CLL && DWORD2(v16) == 1 && *&v19[4] == 1)
    {
      v10 = OSMetaClassBase::safeMetaCast(*anObject, gIOServiceMetaClass);
      *result = v10;
      if (v10)
      {
        v11 = 1;
      }

      else
      {
        v11 = *anObject == 0;
      }

      if (v11)
      {
        v9 = 0;
      }

      else
      {
        v9 = -536870206;
      }
    }
  }

  v12 = *MEMORY[0x277D85DE8];
  return v9;
}

kern_return_t IOService::Terminate(IOService *this, uint64_t options, OSDispatchMethod supermethod)
{
  v11 = *MEMORY[0x277D85DE8];
  memset(v6, 0, sizeof(v6));
  *&v6[4] = 80;
  v7 = xmmword_23820EC70;
  v8 = 1;
  v9 = this;
  *&v6[20] = 0x14DA2B68CLL;
  v10 = options;
  if (supermethod)
  {
    invoke.message = v6;
    invoke.reply = v6;
    *&invoke.sendSize = 0x7800000050;
    result = (supermethod)(this, &invoke);
    if (result)
    {
      goto LABEL_11;
    }
  }

  else
  {
    invoke.message = v6;
    invoke.reply = v6;
    *&invoke.sendSize = 0x7800000050;
    result = OSMetaClassBase::Invoke(this, &invoke);
    if (result)
    {
      goto LABEL_11;
    }
  }

  result = -536870209;
  if (*&v6[4] == 52 && *&v6[28] == 0xF7A595D9927810C8 && !*&v6[24])
  {
    if (*(&v7 + 4))
    {
      result = -536870209;
    }

    else
    {
      result = 0;
    }
  }

LABEL_11:
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

kern_return_t IOService::CopyProviderProperties(IOService *this, OSArray *propertyKeys, OSArray **properties, OSDispatchMethod supermethod)
{
  v19 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0;
  DWORD1(v12) = 96;
  *v16 = xmmword_23820EC80;
  *&v16[16] = 2;
  v17 = this;
  *&v15 = 32;
  *(&v15 + 1) = 16777472;
  *(&v13 + 4) = 0x24DA2B68CLL;
  v18 = propertyKeys;
  invoke.message = &v12;
  invoke.reply = &v12;
  *&invoke.sendSize = 0x9000000060;
  if (supermethod)
  {
    v5 = (supermethod)(this, &invoke);
  }

  else
  {
    v5 = OSMetaClassBase::Invoke(this, &invoke);
  }

  v6 = v5;
  if (!v5)
  {
    v6 = -536870209;
    if (DWORD1(v12) == 76 && *(&v15 + 4) == 0xC2A554959002C8E7 && DWORD2(v13) == 1 && *&v16[4] == 1)
    {
      v7 = OSMetaClassBase::safeMetaCast(*&v16[12], gOSArrayMetaClass);
      *properties = v7;
      if (v7)
      {
        v8 = 1;
      }

      else
      {
        v8 = *&v16[12] == 0;
      }

      if (v8)
      {
        v6 = 0;
      }

      else
      {
        v6 = -536870206;
      }
    }
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

kern_return_t IOService::RequireMaxBusStall(IOService *this, uint64_t maxBusStall, OSDispatchMethod supermethod)
{
  v11 = *MEMORY[0x277D85DE8];
  memset(v6, 0, sizeof(v6));
  *&v6[4] = 80;
  v7 = xmmword_23820EC90;
  v8 = 1;
  v9 = this;
  *&v6[20] = 0x14DA2B68CLL;
  v10 = maxBusStall;
  if (supermethod)
  {
    invoke.message = v6;
    invoke.reply = v6;
    *&invoke.sendSize = 0x7800000050;
    result = (supermethod)(this, &invoke);
    if (result)
    {
      goto LABEL_11;
    }
  }

  else
  {
    invoke.message = v6;
    invoke.reply = v6;
    *&invoke.sendSize = 0x7800000050;
    result = OSMetaClassBase::Invoke(this, &invoke);
    if (result)
    {
      goto LABEL_11;
    }
  }

  result = -536870209;
  if (*&v6[4] == 52 && *&v6[28] == 0xC21228652FF536AFLL && !*&v6[24])
  {
    if (*(&v7 + 4))
    {
      result = -536870209;
    }

    else
    {
      result = 0;
    }
  }

LABEL_11:
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

kern_return_t IOService::AdjustBusy(IOService *this, int32_t delta, OSDispatchMethod supermethod)
{
  v11 = *MEMORY[0x277D85DE8];
  memset(v6, 0, sizeof(v6));
  *&v6[4] = 80;
  v7 = xmmword_23820ECA0;
  v8 = 1;
  v9 = this;
  *&v6[20] = 0x14DA2B68CLL;
  v10 = delta;
  if (supermethod)
  {
    invoke.message = v6;
    invoke.reply = v6;
    *&invoke.sendSize = 0x7800000050;
    result = (supermethod)(this, &invoke);
    if (result)
    {
      goto LABEL_11;
    }
  }

  else
  {
    invoke.message = v6;
    invoke.reply = v6;
    *&invoke.sendSize = 0x7800000050;
    result = OSMetaClassBase::Invoke(this, &invoke);
    if (result)
    {
      goto LABEL_11;
    }
  }

  result = -536870209;
  if (*&v6[4] == 52 && *&v6[28] == 0xDE9F5AB8CC9758EBLL && !*&v6[24])
  {
    if (*(&v7 + 4))
    {
      result = -536870209;
    }

    else
    {
      result = 0;
    }
  }

LABEL_11:
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

kern_return_t IOService::GetBusyState(IOService *this, uint32_t *busyState, OSDispatchMethod supermethod)
{
  v11 = *MEMORY[0x277D85DE8];
  memset(v7, 0, sizeof(v7));
  *&v7[4] = 72;
  v8 = xmmword_23820ECB0;
  v9 = 1;
  v10 = this;
  *&v7[20] = 0x14DA2B68CLL;
  if (supermethod)
  {
    invoke.message = v7;
    invoke.reply = v7;
    *&invoke.sendSize = 0x7C00000048;
    result = (supermethod)(this, &invoke);
    if (result)
    {
      goto LABEL_14;
    }
  }

  else
  {
    invoke.message = v7;
    invoke.reply = v7;
    *&invoke.sendSize = 0x7C00000048;
    result = OSMetaClassBase::Invoke(this, &invoke);
    if (result)
    {
      goto LABEL_14;
    }
  }

  result = -536870209;
  if (*&v7[4] == 56 && *&v7[28] == 0xF5E47B685861DEE5 && !*&v7[24])
  {
    if (*(&v8 + 4))
    {
      result = -536870209;
    }

    else
    {
      result = 0;
    }

    if (busyState && !*(&v8 + 4))
    {
      result = 0;
      *busyState = HIDWORD(v8);
    }
  }

LABEL_14:
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

kern_return_t IOService::CoreAnalyticsSendEvent(IOService *this, uint64_t options, OSString *eventName, OSDictionary *eventPayload, OSDispatchMethod supermethod)
{
  memset(v7, 0, sizeof(v7));
  *&v7[4] = 128;
  v11 = xmmword_23820ECC0;
  v12 = 3;
  v13 = this;
  *&v7[20] = 0x34DA2B68CLL;
  v15 = eventPayload;
  v16 = options;
  *(&v8 + 1) = 16777472;
  *&v8 = 32;
  v9 = 40;
  v10 = 16777472;
  v14 = eventName;
  if (supermethod)
  {
    invoke.message = v7;
    invoke.reply = v7;
    *&invoke.sendSize = 0x7800000080;
    result = (supermethod)(this, &invoke);
    if (result)
    {
      return result;
    }
  }

  else
  {
    invoke.message = v7;
    invoke.reply = v7;
    *&invoke.sendSize = 0x7800000080;
    result = OSMetaClassBase::Invoke(this, &invoke);
    if (result)
    {
      return result;
    }
  }

  result = -536870209;
  if (*&v7[4] == 52 && *&v7[28] == 0xEDF64411B90D31CALL && !*&v7[24])
  {
    if (*(&v8 + 4))
    {
      return -536870209;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

IOReturn IOService::UpdateReport(IOService *this, OSData *channels, uint32_t action, uint32_t *outElementCount, uint64_t offset, uint64_t capacity, IOMemoryDescriptor *buffer, OSDispatchMethod supermethod)
{
  v22 = *MEMORY[0x277D85DE8];
  v15 = 0;
  *&v13[8] = 0u;
  v14 = 0u;
  memset(v12, 0, sizeof(v12));
  v19 = 0u;
  *&v12[4] = 140;
  *(&v14 + 4) = 0x8509EED786C7FF1ALL;
  v17 = this;
  v16 = 3;
  *&v12[20] = 0x34DA2B68CLL;
  *&v13[8] = 16777472;
  *v13 = 32;
  v18 = channels;
  DWORD2(v19) = action;
  v20 = offset;
  v21 = capacity;
  *&v19 = buffer;
  if (supermethod)
  {
    invoke.message = v12;
    invoke.reply = v12;
    *&invoke.sendSize = 0x7C0000008CLL;
    result = (supermethod)(this, &invoke);
    if (result)
    {
      goto LABEL_14;
    }
  }

  else
  {
    invoke.message = v12;
    invoke.reply = v12;
    *&invoke.sendSize = 0x7C0000008CLL;
    result = OSMetaClassBase::Invoke(this, &invoke);
    if (result)
    {
      goto LABEL_14;
    }
  }

  result = -536870209;
  if (*&v12[4] == 56 && *&v12[28] == 0x8509EED786C7FF1ALL && !*&v12[24])
  {
    if (*&v13[4])
    {
      result = -536870209;
    }

    else
    {
      result = 0;
    }

    if (outElementCount && !*&v13[4])
    {
      result = 0;
      *outElementCount = *&v13[12];
    }
  }

LABEL_14:
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

IOReturn IOService::ConfigureReport(IOService *this, OSData *channels, uint32_t action, uint32_t *outCount, OSDispatchMethod supermethod)
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0;
  memset(v9, 0, sizeof(v9));
  *(&v10 + 1) = 16777472;
  *&v9[4] = 104;
  v11 = 0x85D9DEF59E3F02BELL;
  v13 = 2;
  v14 = this;
  *&v9[20] = 0x24DA2B68CLL;
  *&v10 = 32;
  v15 = channels;
  v16 = action;
  if (supermethod)
  {
    invoke.message = v9;
    invoke.reply = v9;
    *&invoke.sendSize = 0x7C00000068;
    result = (supermethod)(this, &invoke);
    if (result)
    {
      goto LABEL_14;
    }
  }

  else
  {
    invoke.message = v9;
    invoke.reply = v9;
    *&invoke.sendSize = 0x7C00000068;
    result = OSMetaClassBase::Invoke(this, &invoke);
    if (result)
    {
      goto LABEL_14;
    }
  }

  result = -536870209;
  if (*&v9[4] == 56 && *&v9[28] == 0x85D9DEF59E3F02BELL && !*&v9[24])
  {
    if (*(&v10 + 4))
    {
      result = -536870209;
    }

    else
    {
      result = 0;
    }

    if (outCount && !*(&v10 + 4))
    {
      result = 0;
      *outCount = HIDWORD(v10);
    }
  }

LABEL_14:
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

IOReturn IOService::SetLegend(IOService *this, OSArray *legend, BOOL is_public, OSDispatchMethod supermethod)
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0;
  memset(v7, 0, sizeof(v7));
  *(&v8 + 1) = 16777472;
  *&v7[4] = 104;
  v9 = 0xA32EE5222548AFA2;
  v11 = 2;
  v12 = this;
  *&v7[20] = 0x24DA2B68CLL;
  *&v8 = 32;
  v13 = legend;
  v14 = is_public;
  if (supermethod)
  {
    invoke.message = v7;
    invoke.reply = v7;
    *&invoke.sendSize = 0x7800000068;
    result = (supermethod)(this, &invoke);
    if (result)
    {
      goto LABEL_11;
    }
  }

  else
  {
    invoke.message = v7;
    invoke.reply = v7;
    *&invoke.sendSize = 0x7800000068;
    result = OSMetaClassBase::Invoke(this, &invoke);
    if (result)
    {
      goto LABEL_11;
    }
  }

  result = -536870209;
  if (*&v7[4] == 52 && *&v7[28] == 0xA32EE5222548AFA2 && !*&v7[24])
  {
    if (*(&v8 + 4))
    {
      result = -536870209;
    }

    else
    {
      result = 0;
    }
  }

LABEL_11:
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

kern_return_t IOService::CopyName(IOService *this, OSString **name, OSDispatchMethod supermethod)
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0;
  DWORD1(v11) = 72;
  v14 = xmmword_23820ECD0;
  *v15 = 1;
  *&v15[8] = this;
  *(&v12 + 4) = 0x14DA2B68CLL;
  invoke.message = &v11;
  invoke.reply = &v11;
  *&invoke.sendSize = 0x9000000048;
  if (supermethod)
  {
    v4 = (supermethod)(this, &invoke);
  }

  else
  {
    v4 = OSMetaClassBase::Invoke(this, &invoke);
  }

  v5 = v4;
  if (!v4)
  {
    v5 = -536870209;
    if (DWORD1(v11) == 76 && *(&v14 + 4) == 0xFE0617FEBC5B2CC4 && DWORD2(v12) == 1 && *&v15[4] == 1)
    {
      v6 = OSMetaClassBase::safeMetaCast(*&v15[12], gOSStringMetaClass);
      *name = v6;
      if (v6)
      {
        v7 = 1;
      }

      else
      {
        v7 = *&v15[12] == 0;
      }

      if (v7)
      {
        v5 = 0;
      }

      else
      {
        v5 = -536870206;
      }
    }
  }

  v8 = *MEMORY[0x277D85DE8];
  return v5;
}

kern_return_t IOService::StringFromReturn(IOService *this, IOReturn retval, OSString **str, OSDispatchMethod supermethod)
{
  v17 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0;
  v12 = 0u;
  DWORD1(v12) = 80;
  v15 = 0xF62CEC3DF59DB769;
  *v16 = 1;
  *&v16[8] = this;
  *(&v13 + 4) = 0x14DA2B68CLL;
  *&v16[16] = retval;
  invoke.message = &v12;
  invoke.reply = &v12;
  *&invoke.sendSize = 0x9000000050;
  if (supermethod)
  {
    v5 = (supermethod)(this, &invoke);
  }

  else
  {
    v5 = OSMetaClassBase::Invoke(this, &invoke);
  }

  v6 = v5;
  if (!v5)
  {
    v6 = -536870209;
    if (DWORD1(v12) == 76 && *(&v15 + 4) == 0xF62CEC3DF59DB769 && DWORD2(v13) == 1 && *&v16[4] == 1)
    {
      v7 = OSMetaClassBase::safeMetaCast(*&v16[12], gOSStringMetaClass);
      *str = v7;
      if (v7)
      {
        v8 = 1;
      }

      else
      {
        v8 = *&v16[12] == 0;
      }

      if (v8)
      {
        v6 = 0;
      }

      else
      {
        v6 = -536870206;
      }
    }
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

kern_return_t IOService::_ClaimSystemWakeEvent(IOService *this, IOService *device, uint64_t flags, const char *reason, OSContainer *details, OSDispatchMethod supermethod)
{
  v22 = *MEMORY[0x277D85DE8];
  v21 = 0;
  memset(v20, 0, sizeof(v20));
  *&v19[4] = 0u;
  v16 = 0;
  v15 = 0u;
  memset(v12, 0, sizeof(v12));
  *&v12[4] = 260;
  *(&v15 + 4) = 0x845C18DFE6F75305;
  v18[0] = this;
  v17 = 3;
  *&v12[20] = 0x34DA2B68CLL;
  v18[1] = device;
  *&v19[8] = flags;
  strlcpy(&v20[4], reason, 0x80uLL);
  v14 = 16777472;
  v13 = 40;
  *v19 = details;
  if (supermethod)
  {
    invoke.message = v12;
    invoke.reply = v12;
    *&invoke.sendSize = 0x7800000104;
    result = (supermethod)(this, &invoke);
    if (result)
    {
      goto LABEL_11;
    }
  }

  else
  {
    invoke.message = v12;
    invoke.reply = v12;
    *&invoke.sendSize = 0x7800000104;
    result = OSMetaClassBase::Invoke(this, &invoke);
    if (result)
    {
      goto LABEL_11;
    }
  }

  result = -536870209;
  if (*&v12[4] == 52 && *&v12[28] == 0x845C18DFE6F75305 && !*&v12[24])
  {
    if (*&v12[44])
    {
      result = -536870209;
    }

    else
    {
      result = 0;
    }
  }

LABEL_11:
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

kern_return_t IOService::UserSetProperties(IOService *this, OSContainer *properties, OSDispatchMethod supermethod)
{
  v12 = *MEMORY[0x277D85DE8];
  memset(v6, 0, sizeof(v6));
  *&v6[4] = 96;
  v8 = xmmword_23820ECE0;
  v9 = 2;
  v10 = this;
  *&v7 = 32;
  *(&v7 + 1) = 16777472;
  *&v6[20] = 0x24DA2B68CLL;
  v11 = properties;
  if (supermethod)
  {
    invoke.message = v6;
    invoke.reply = v6;
    *&invoke.sendSize = 0x7800000060;
    result = (supermethod)(this, &invoke);
    if (result)
    {
      goto LABEL_11;
    }
  }

  else
  {
    invoke.message = v6;
    invoke.reply = v6;
    *&invoke.sendSize = 0x7800000060;
    result = OSMetaClassBase::Invoke(this, &invoke);
    if (result)
    {
      goto LABEL_11;
    }
  }

  result = -536870209;
  if (*&v6[4] == 52 && *&v6[28] == 0xAD8461D6BB5E656DLL && !*&v6[24])
  {
    if (*(&v7 + 4))
    {
      result = -536870209;
    }

    else
    {
      result = 0;
    }
  }

LABEL_11:
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

kern_return_t IOService::SendIOMessageServicePropertyChange(IOService *this, OSDispatchMethod supermethod)
{
  v9 = *MEMORY[0x277D85DE8];
  memset(v5, 0, sizeof(v5));
  *&v5[4] = 72;
  v6 = xmmword_23820ECF0;
  v7 = 1;
  v8 = this;
  *&v5[20] = 0x14DA2B68CLL;
  if (supermethod)
  {
    invoke.message = v5;
    invoke.reply = v5;
    *&invoke.sendSize = 0x7800000048;
    result = (supermethod)(this, &invoke);
    if (result)
    {
      goto LABEL_11;
    }
  }

  else
  {
    invoke.message = v5;
    invoke.reply = v5;
    *&invoke.sendSize = 0x7800000048;
    result = OSMetaClassBase::Invoke(this, &invoke);
    if (result)
    {
      goto LABEL_11;
    }
  }

  result = -536870209;
  if (*&v5[4] == 52 && *&v5[28] == 0xF26F1C63C935E672 && !*&v5[24])
  {
    if (*(&v6 + 4))
    {
      result = -536870209;
    }

    else
    {
      result = 0;
    }
  }

LABEL_11:
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

kern_return_t IOService::RemoveProperty(IOService *this, OSString *propertyName, OSDispatchMethod supermethod)
{
  v12 = *MEMORY[0x277D85DE8];
  memset(v6, 0, sizeof(v6));
  *&v6[4] = 96;
  v8 = xmmword_23820ED00;
  v9 = 2;
  v10 = this;
  *&v7 = 32;
  *(&v7 + 1) = 16777472;
  *&v6[20] = 0x24DA2B68CLL;
  v11 = propertyName;
  if (supermethod)
  {
    invoke.message = v6;
    invoke.reply = v6;
    *&invoke.sendSize = 0x7800000060;
    result = (supermethod)(this, &invoke);
    if (result)
    {
      goto LABEL_11;
    }
  }

  else
  {
    invoke.message = v6;
    invoke.reply = v6;
    *&invoke.sendSize = 0x7800000060;
    result = OSMetaClassBase::Invoke(this, &invoke);
    if (result)
    {
      goto LABEL_11;
    }
  }

  result = -536870209;
  if (*&v6[4] == 52 && *&v6[28] == 0xDADEB06419D321B0 && !*&v6[24])
  {
    if (*(&v7 + 4))
    {
      result = -536870209;
    }

    else
    {
      result = 0;
    }
  }

LABEL_11:
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

kern_return_t IOService::CopySystemStateNotificationService(IOService *this, IOService **service, OSDispatchMethod supermethod)
{
  v17 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0;
  DWORD1(v11) = 72;
  v14 = xmmword_23820ED10;
  v15 = 1;
  anObject = this;
  *(&v12 + 4) = 0x14DA2B68CLL;
  invoke.message = &v11;
  invoke.reply = &v11;
  *&invoke.sendSize = 0x8C00000048;
  if (supermethod)
  {
    v4 = (supermethod)(this, &invoke);
  }

  else
  {
    v4 = OSMetaClassBase::Invoke(this, &invoke);
  }

  v5 = v4;
  if (!v4)
  {
    v5 = -536870209;
    if (DWORD1(v11) == 72 && v14 == 0x9165D1FCE9B2CA5ALL && DWORD2(v12) == 1 && v15 == 1)
    {
      v6 = OSMetaClassBase::safeMetaCast(anObject, gIOServiceMetaClass);
      *service = v6;
      if (v6)
      {
        v7 = 1;
      }

      else
      {
        v7 = anObject == 0;
      }

      if (v7)
      {
        v5 = 0;
      }

      else
      {
        v5 = -536870206;
      }
    }
  }

  v8 = *MEMORY[0x277D85DE8];
  return v5;
}

kern_return_t IOService::StateNotificationItemCreate(IOService *this, OSString *itemName, OSDictionary *schema, OSDispatchMethod supermethod)
{
  memset(v6, 0, sizeof(v6));
  *&v6[4] = 120;
  v10 = xmmword_23820ED20;
  v11 = 3;
  v12 = this;
  *&v6[20] = 0x34DA2B68CLL;
  *(&v7 + 1) = 16777472;
  *&v7 = 32;
  v8 = 40;
  v9 = 16777472;
  v13 = itemName;
  v14 = schema;
  if (supermethod)
  {
    invoke.message = v6;
    invoke.reply = v6;
    *&invoke.sendSize = 0x7800000078;
    result = (supermethod)(this, &invoke);
    if (result)
    {
      return result;
    }
  }

  else
  {
    invoke.message = v6;
    invoke.reply = v6;
    *&invoke.sendSize = 0x7800000078;
    result = OSMetaClassBase::Invoke(this, &invoke);
    if (result)
    {
      return result;
    }
  }

  result = -536870209;
  if (*&v6[4] == 52 && *&v6[28] == 0xB35947BDAB354E9ELL && !*&v6[24])
  {
    if (*(&v7 + 4))
    {
      return -536870209;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

kern_return_t IOService::StateNotificationItemSet(IOService *this, OSString *itemName, OSDictionary *value, OSDispatchMethod supermethod)
{
  memset(v6, 0, sizeof(v6));
  *&v6[4] = 120;
  v10 = xmmword_23820ED30;
  v11 = 3;
  v12 = this;
  *&v6[20] = 0x34DA2B68CLL;
  *(&v7 + 1) = 16777472;
  *&v7 = 32;
  v8 = 40;
  v9 = 16777472;
  v13 = itemName;
  v14 = value;
  if (supermethod)
  {
    invoke.message = v6;
    invoke.reply = v6;
    *&invoke.sendSize = 0x7800000078;
    result = (supermethod)(this, &invoke);
    if (result)
    {
      return result;
    }
  }

  else
  {
    invoke.message = v6;
    invoke.reply = v6;
    *&invoke.sendSize = 0x7800000078;
    result = OSMetaClassBase::Invoke(this, &invoke);
    if (result)
    {
      return result;
    }
  }

  result = -536870209;
  if (*&v6[4] == 52 && *&v6[28] == 0xB318C8FA26B5B891 && !*&v6[24])
  {
    if (*(&v7 + 4))
    {
      return -536870209;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

kern_return_t IOService::StateNotificationItemCopy(IOService *this, OSString *itemName, OSDictionary **value, OSDispatchMethod supermethod)
{
  v19 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0;
  DWORD1(v12) = 96;
  *v16 = xmmword_23820ED40;
  *&v16[16] = 2;
  v17 = this;
  *&v15 = 32;
  *(&v15 + 1) = 16777472;
  *(&v13 + 4) = 0x24DA2B68CLL;
  v18 = itemName;
  invoke.message = &v12;
  invoke.reply = &v12;
  *&invoke.sendSize = 0x9000000060;
  if (supermethod)
  {
    v5 = (supermethod)(this, &invoke);
  }

  else
  {
    v5 = OSMetaClassBase::Invoke(this, &invoke);
  }

  v6 = v5;
  if (!v5)
  {
    v6 = -536870209;
    if (DWORD1(v12) == 76 && *(&v15 + 4) == 0xAD2E6404FDE4B615 && DWORD2(v13) == 1 && *&v16[4] == 1)
    {
      v7 = OSMetaClassBase::safeMetaCast(*&v16[12], gOSDictionaryMetaClass);
      *value = v7;
      if (v7)
      {
        v8 = 1;
      }

      else
      {
        v8 = *&v16[12] == 0;
      }

      if (v8)
      {
        v6 = 0;
      }

      else
      {
        v6 = -536870206;
      }
    }
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t IOService::CreatePMAssertion(IOService *this, int a2, unint64_t *a3, unsigned __int8 a4, uint64_t (*a5)(IOService *, IORPC *))
{
  v14 = *MEMORY[0x277D85DE8];
  memset(v9, 0, sizeof(v9));
  *&v9[4] = 80;
  *v10 = xmmword_23820ED50;
  *&v10[16] = 1;
  v11 = this;
  *&v9[20] = 0x14DA2B68CLL;
  v12 = a2;
  v13 = a4;
  if (a5)
  {
    invoke.message = v9;
    invoke.reply = v9;
    *&invoke.sendSize = 0x8000000050;
    result = a5(this, &invoke);
    if (result)
    {
      goto LABEL_14;
    }
  }

  else
  {
    invoke.message = v9;
    invoke.reply = v9;
    *&invoke.sendSize = 0x8000000050;
    result = OSMetaClassBase::Invoke(this, &invoke);
    if (result)
    {
      goto LABEL_14;
    }
  }

  result = 3758097087;
  if (*&v9[4] == 60 && *&v9[28] == 0xABC814D03B619A1CLL && !*&v9[24])
  {
    if (*&v10[4])
    {
      result = 3758097087;
    }

    else
    {
      result = 0;
    }

    if (a3 && !*&v10[4])
    {
      result = 0;
      *a3 = *&v10[12];
    }
  }

LABEL_14:
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t IOService::ReleasePMAssertion(IOService *this, uint64_t a2, uint64_t (*a3)(IOService *, IORPC *))
{
  v11 = *MEMORY[0x277D85DE8];
  memset(v6, 0, sizeof(v6));
  *&v6[4] = 80;
  v7 = xmmword_23820ED60;
  v8 = 1;
  v9 = this;
  *&v6[20] = 0x14DA2B68CLL;
  v10 = a2;
  if (a3)
  {
    invoke.message = v6;
    invoke.reply = v6;
    *&invoke.sendSize = 0x7800000050;
    result = a3(this, &invoke);
    if (result)
    {
      goto LABEL_11;
    }
  }

  else
  {
    invoke.message = v6;
    invoke.reply = v6;
    *&invoke.sendSize = 0x7800000050;
    result = OSMetaClassBase::Invoke(this, &invoke);
    if (result)
    {
      goto LABEL_11;
    }
  }

  result = 3758097087;
  if (*&v6[4] == 52 && *&v6[28] == 0xB2C356503BBC13DCLL && !*&v6[24])
  {
    if (*(&v7 + 4))
    {
      result = 3758097087;
    }

    else
    {
      result = 0;
    }
  }

LABEL_11:
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

void IOService::Stop_async(IOService *this, IOService *provider, OSDispatchMethod supermethod)
{
  v4 = 0u;
  v5 = 0u;
  v6 = 0u;
  DWORD1(v4) = 92;
  v8 = xmmword_23820ED70;
  v10 = this;
  v9 = 2;
  *(&v5 + 4) = 0x24DA2B68CLL;
  v7 = 0;
  v11 = provider;
  invoke.message = &v4;
  invoke.reply = 0;
  *&invoke.sendSize = 92;
  if (supermethod)
  {
    (supermethod)(this, &invoke);
  }

  else
  {
    OSMetaClassBase::Invoke(this, &invoke);
  }
}

kern_return_t IOService::_NewUserClient(IOService *this, uint32_t type, OSDictionary *entitlements, IOUserClient **userClient, OSDispatchMethod supermethod)
{
  v23 = *MEMORY[0x277D85DE8];
  anObject[0] = 0;
  v13 = 0u;
  v14 = 0u;
  v15 = 0;
  v17 = 16777472;
  DWORD1(v13) = 104;
  v18 = 0x80B22DD60EE3ABB6;
  anObject[1] = 2;
  v20 = this;
  *(&v14 + 4) = 0x24DA2B68CLL;
  v21 = entitlements;
  v22 = type;
  v16 = 32;
  invoke.message = &v13;
  invoke.reply = &v13;
  *&invoke.sendSize = 0x8C00000068;
  if (supermethod)
  {
    v6 = (supermethod)(this, &invoke);
  }

  else
  {
    v6 = OSMetaClassBase::Invoke(this, &invoke);
  }

  v7 = v6;
  if (!v6)
  {
    v7 = -536870209;
    if (DWORD1(v13) == 72 && v16 == 0x80B22DD60EE3ABB6 && DWORD2(v14) == 1 && v18 == 1)
    {
      v8 = OSMetaClassBase::safeMetaCast(anObject[0], gIOUserClientMetaClass);
      *userClient = v8;
      if (v8)
      {
        v9 = 1;
      }

      else
      {
        v9 = anObject[0] == 0;
      }

      if (v9)
      {
        v7 = 0;
      }

      else
      {
        v7 = -536870206;
      }
    }
  }

  v10 = *MEMORY[0x277D85DE8];
  return v7;
}

kern_return_t IOService::ClientCrashed_Invoke(const IORPC *rpc, OSMetaClassBase *target, IOService::ClientCrashed_Handler func)
{
  v3 = -536870209;
  message = rpc->message;
  if (rpc->message->msgh_body.msgh_descriptor_count == 2 && *&message[2].msgh.msgh_local_port == 2 && rpc->sendSize >= 0x64 && rpc->replySize >= 0x34)
  {
    reply = rpc->reply;
    v8 = OSMetaClassBase::safeMetaCast(*&message[3].msgh.msgh_bits, gIOServiceMetaClass);
    if (v8 || !*&message[3].msgh.msgh_bits)
    {
      v3 = (func)(target, v8, *&message[3].msgh.msgh_remote_port);
      if (!v3)
      {
        *&reply[1].msgh.msgh_bits = xmmword_23820ED80;
        reply->msgh.msgh_size = 52;
        *&reply->msgh.msgh_id = 1302509197;
        *&reply[1].msgh.msgh_voucher_port = 0;
      }
    }

    else
    {
      return -536870206;
    }
  }

  return v3;
}

kern_return_t IOService::SetName_Invoke(const IORPC *rpc, OSMetaClassBase *target, IOService::SetName_Handler func)
{
  v3 = -536870209;
  message = rpc->message;
  if (rpc->message->msgh_body.msgh_descriptor_count == 1 && *&message[2].msgh.msgh_bits == 1 && rpc->sendSize >= 0xD0 && rpc->replySize >= 0x34)
  {
    reply = rpc->reply;
    if (strnlen(&message[2].msgh_body, 0x80uLL) <= 0x7F)
    {
      v3 = (func)(target, &message[2].msgh_body);
      if (!v3)
      {
        *&reply[1].msgh.msgh_bits = xmmword_23820ED90;
        reply->msgh.msgh_size = 52;
        *&reply->msgh.msgh_id = 1302509197;
        *&reply[1].msgh.msgh_voucher_port = 0;
      }
    }

    else
    {
      return -536870206;
    }
  }

  return v3;
}

kern_return_t IOService::RegisterService_Invoke(const IORPC *rpc, OSMetaClassBase *target, IOService::RegisterService_Handler func)
{
  result = -536870209;
  if (rpc->message->msgh_body.msgh_descriptor_count == 1 && *&rpc->message[2].msgh.msgh_bits == 1 && rpc->sendSize >= 0x48 && rpc->replySize >= 0x34)
  {
    reply = rpc->reply;
    result = (func)(target);
    if (!result)
    {
      *&reply[1].msgh.msgh_bits = xmmword_23820EDA0;
      reply->msgh.msgh_size = 52;
      *&reply->msgh.msgh_id = 1302509197;
      *&reply[1].msgh.msgh_voucher_port = 0;
    }
  }

  return result;
}

kern_return_t IOService::CopyProperties_Invoke(const IORPC *rpc, OSMetaClassBase *target, IOService::CopyProperties_Handler func)
{
  result = -536870209;
  if (rpc->message->msgh_body.msgh_descriptor_count == 1 && *&rpc->message[2].msgh.msgh_bits == 1 && rpc->sendSize >= 0x48 && rpc->replySize >= 0x4C)
  {
    reply = rpc->reply;
    result = (func)(target, &reply[2].msgh.msgh_local_port);
    if (!result)
    {
      *&reply[1].msgh.msgh_voucher_port = xmmword_23820EDB0;
      reply->msgh.msgh_size = 76;
      *&reply->msgh.msgh_id = 0x14DA2B68DLL;
      *&reply[2].msgh.msgh_size = 1;
      *&reply[1].msgh.msgh_bits = 24;
      *&reply[1].msgh.msgh_remote_port = reply[1].msgh.msgh_remote_port & 0xFF00FF | 0x1000100;
    }
  }

  return result;
}

kern_return_t IOService::SearchProperty_Invoke(const IORPC *rpc, OSMetaClassBase *target, IOService::SearchProperty_Handler func)
{
  v3 = -536870209;
  message = rpc->message;
  if (rpc->message->msgh_body.msgh_descriptor_count == 1 && *&message[2].msgh.msgh_bits == 1 && rpc->sendSize >= 0x160 && rpc->replySize >= 0x4C)
  {
    reply = rpc->reply;
    v3 = -536870206;
    if (strnlen(&message[2].msgh_body, 0x80uLL) <= 0x7F && strnlen(&message[7].msgh.msgh_id, 0x80uLL) <= 0x7F)
    {
      v3 = (func)(target, &message[2].msgh_body, &message[7].msgh.msgh_id, *&message[12].msgh.msgh_remote_port, &reply[2].msgh.msgh_local_port);
      if (!v3)
      {
        *&reply[1].msgh.msgh_voucher_port = xmmword_23820EDC0;
        reply->msgh.msgh_size = 76;
        *&reply->msgh.msgh_id = 0x14DA2B68DLL;
        *&reply[2].msgh.msgh_size = 1;
        *&reply[1].msgh.msgh_bits = 24;
        *&reply[1].msgh.msgh_remote_port = reply[1].msgh.msgh_remote_port & 0xFF00FF | 0x1000100;
      }
    }
  }

  return v3;
}

kern_return_t IOService::SetProperties_Invoke(const IORPC *rpc, OSMetaClassBase *target, IOService::SetProperties_Handler func)
{
  v3 = -536870209;
  message = rpc->message;
  if (rpc->message->msgh_body.msgh_descriptor_count == 2 && *&message[2].msgh.msgh_voucher_port == 2 && rpc->sendSize >= 0x60 && rpc->replySize >= 0x34)
  {
    reply = rpc->reply;
    v8 = *&message[3].msgh.msgh_size;
    if (v8)
    {
      if (!OSMetaClassBase::safeMetaCast(v8, gOSDictionaryMetaClass))
      {
        return -536870206;
      }

      v9 = *&message[3].msgh.msgh_size;
    }

    else
    {
      v9 = 0;
    }

    v3 = (func)(target, v9);
    if (!v3)
    {
      *&reply[1].msgh.msgh_bits = xmmword_23820EDD0;
      reply->msgh.msgh_size = 52;
      *&reply->msgh.msgh_id = 1302509197;
      *&reply[1].msgh.msgh_voucher_port = 0;
    }
  }

  return v3;
}