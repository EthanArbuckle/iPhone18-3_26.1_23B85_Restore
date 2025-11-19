uint64_t DriverKit_AppleEthernetMLX5_IVars::allocPD(AppleEthernetMLX5Cmd **this, unsigned int *a2)
{
  v8 = 0;
  v7 = 0;
  v6 = 8;
  result = AppleEthernetMLX5Cmd::exec(this[38], &v6, 16, v4, 16);
  if (!result)
  {
    result = AppleEthernetMLX5Cmd::statusToErr(v4);
    if (!result)
    {
      *a2 = bswap32(v5 & 0xFFFFFF00);
    }
  }

  return result;
}

uint64_t DriverKit_AppleEthernetMLX5_IVars::deallocPD(AppleEthernetMLX5Cmd **this, int a2)
{
  v4[1] = 0;
  v4[0] = 264;
  v4[2] = bswap32(a2 & 0xFFFFFF);
  v4[3] = 0;
  result = AppleEthernetMLX5Cmd::exec(this[38], v4, 16, v3, 16);
  if (!result)
  {
    return AppleEthernetMLX5Cmd::statusToErr(v3);
  }

  return result;
}

uint64_t DriverKit_AppleEthernetMLX5::init(IOService *this)
{
  IOParseBootArgNumber("mlx5_debug", &gMLX5DebugFlags, 4);
  result = IOMallocZeroTyped();
  if (result)
  {
    this[1].OSObject::OSMetaClassBase::__vftable = result;
    if (IOService::init(this))
    {
      return 1;
    }

    else
    {
      result = this[1].OSObject::OSMetaClassBase::__vftable;
      if (result)
      {
        IOFree(result, 0x27A00uLL);
        result = 0;
        this[1].OSObject::OSMetaClassBase::__vftable = 0;
      }
    }
  }

  return result;
}

void DriverKit_AppleEthernetMLX5::free(IOService *this)
{
  v2 = this[1].OSObject::OSMetaClassBase::__vftable;
  if (v2)
  {
    IOFree(v2, 0x27A00uLL);
    this[1].OSObject::OSMetaClassBase::__vftable = 0;
  }

  IOService::free(this);
}

uint64_t DriverKit_AppleEthernetMLX5::Start_Impl(DriverKit_AppleEthernetMLX5 *this, IOService *anObject)
{
  if (gMLX5DebugFlags)
  {
    IOLog("mlx5:%s:%d %p\n", "Start_Impl", 29, this);
  }

  v4 = OSMetaClassBase::safeMetaCast(anObject, gIOPCIDeviceMetaClass);
  if (!v4)
  {
    return 3758097084;
  }

  v5 = v4;
  MLX5_dev = this;
  **(this + 6) = this;
  MLX5_pciDev = v4;
  result = DriverKit_AppleEthernetMLX5_IVars::probe(*(this + 6), v4);
  if (!result)
  {
    if (!IOService::Start(this, anObject, &IOService::_Dispatch))
    {
      finalize = DriverKit_AppleEthernetMLX5::Start_Impl(IOService *)::$_0::__invoke;
      if (!OSObject::CopyDispatchQueue(this, "Default", (*(this + 6) + 8), 0))
      {
        if (!IODispatchQueue::Create("cmd_queue", 1uLL, 0, (*(this + 6) + 16)))
        {
          action[0] = 0;
          action[1] = 0;
          if (!IOTimerDispatchSource::Create(*(*(this + 6) + 8), (*(this + 6) + 144)))
          {
            if (!DriverKit_AppleEthernetMLX5::CreateActionHealthTimerOccurred(this, 8uLL, action))
            {
              if (!IOTimerDispatchSource::SetHandler(*(*(this + 6) + 144), action[0], 0))
              {
                IOPCIDevice::ConfigureInterrupts(v5, 0x20000u, 4u, 9u, 0, 0);
                operator new[]();
              }

              DriverKit_AppleEthernetMLX5::Start_Impl();
            }

            DriverKit_AppleEthernetMLX5::Start_Impl();
          }

          DriverKit_AppleEthernetMLX5::Start_Impl();
        }

        DriverKit_AppleEthernetMLX5::Start_Impl();
      }

      DriverKit_AppleEthernetMLX5::Start_Impl();
    }

    DriverKit_AppleEthernetMLX5::Start_Impl();
  }

  return result;
}

uint64_t DriverKit_AppleEthernetMLX5::Stop_Impl(DriverKit_AppleEthernetMLX5 *this, IOService *a2)
{
  if (gMLX5DebugFlags)
  {
    IOLog("mlx5:%s:%d %p\n", "Stop_Impl", 151, this);
  }

  v3 = *(this + 6);
  if (*(v3 + 160) != 3)
  {
    *(v3 + 160) = 3;
    v4 = *(*(this + 6) + 123648);
    if (v4)
    {
      IOService::Terminate(v4, 0, 0);
    }

    else
    {
      if (atomic_load(&cancelCount))
      {
        v6 = 1;
      }

      else
      {
        v6 = finalize == 0;
      }

      if (!v6)
      {
        DriverKit_AppleEthernetMLX5::Start_Impl(IOService *)::$_0::__invoke();
      }
    }

    for (i = 72; i != 144; i += 8)
    {
      v8 = *(*(this + 6) + i);
      if (v8)
      {
        IODispatchSource::Cancel(v8, &__block_literal_global, 0);
      }
    }
  }

  return 0;
}

uint64_t DriverKit_AppleEthernetMLX5::SetPowerState_Impl(IOService *this, uint32_t powerFlags)
{
  if (gMLX5DebugFlags)
  {
    IOLog("mlx5:%s:%d %p powerState=%x\n", "SetPowerState_Impl", 172, this, powerFlags);
  }

  readData = 0;
  action = 0;
  if (powerFlags)
  {
    v4 = this[1].OSObject::OSMetaClassBase::__vftable;
    if (LODWORD(v4[2].free) == 1)
    {
      return IOService::SetPowerState(this, powerFlags, &IOService::_Dispatch);
    }

    if (IOTimerDispatchSource::Create(v4->release, &v4[2].init) || DriverKit_AppleEthernetMLX5::CreateActionCmdTimerOccurred(this, 8uLL, &action) || IOTimerDispatchSource::SetHandler(this[1].OSObject::OSMetaClassBase::__vftable[2].init, action, 0))
    {
      goto LABEL_10;
    }

    IOPCIDevice::ConfigurationRead8(MLX5_pciDev, 4uLL, &readData);
    IOPCIDevice::ConfigurationWrite8(MLX5_pciDev, 4uLL, readData | 4);
    v5 = this[1].OSObject::OSMetaClassBase::__vftable;
    free_low = LODWORD(v5[2].free);
    LODWORD(v5[2].free) = 1;
    if (!DriverKit_AppleEthernetMLX5_IVars::load(this[1].OSObject::OSMetaClassBase::__vftable))
    {
      Dispatch = this[1].OSObject::OSMetaClassBase::__vftable[2].Dispatch;
      v11 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
      IOTimerDispatchSource::WakeAtTime(Dispatch, 0x88uLL, v11, 0, 0);
      return IOService::SetPowerState(this, powerFlags, &IOService::_Dispatch);
    }
  }

  LODWORD(this[1].OSObject::OSMetaClassBase::__vftable[2].free) = 2;
  v7 = this[1].OSObject::OSMetaClassBase::__vftable[2].Dispatch;
  v8 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
  IOTimerDispatchSource::WakeAtTime(v7, 0x88uLL, v8, 0, 0);
  DriverKit_AppleEthernetMLX5_IVars::unload(this[1].OSObject::OSMetaClassBase::__vftable);
  IOPCIDevice::ConfigurationRead8(MLX5_pciDev, 4uLL, &readData);
  IOPCIDevice::ConfigurationWrite8(MLX5_pciDev, 4uLL, readData & 0xFB);
  if (powerFlags)
  {
LABEL_10:
    IOLog("mlx5: %p failed on powering up, terminating\n", this);
    IOService::Terminate(this, 0, 0);
  }

  return IOService::SetPowerState(this, powerFlags, &IOService::_Dispatch);
}

uint64_t DriverKit_AppleEthernetMLX5_NetIf::SetPowerState_Impl(IOService *this, uint32_t powerFlags)
{
  if (gMLX5DebugFlags)
  {
    IOLog("mlx5:%s:%d %p powerState=%x\n", "SetPowerState_Impl", 214, this, powerFlags);
  }

  return IOService::SetPowerState(this, powerFlags, &IOUserNetworkEthernet::_Dispatch);
}

uint64_t DriverKit_AppleEthernetMLX5_NetIf::Stop_Impl(IOService *this, IOService *a2)
{
  if (gMLX5DebugFlags)
  {
    IOLog("mlx5:%s:%d %p\n", "Stop_Impl", 222, this);
  }

  DriverKit_AppleEthernetMLX5::Start_Impl(IOService *)::$_0::__invoke();

  return IOService::Stop(this, a2, &IOUserNetworkEthernet::_Dispatch);
}

void DriverKit_AppleEthernetMLX5::QueueInterrupt_Impl(DriverKit_AppleEthernetMLX5 *this, OSAction *a2)
{
  Reference = OSAction::GetReference(a2);
  v4 = *(this + 6);
  if (*(v4 + 160) != 3)
  {
    v5 = *Reference;
    v6 = *(*(v4 + 124200) + (v5 << 10) + 904);

    AppleEthernetMLX5EQ::queue_interrupt(v6, v5);
  }
}

DriverKit_AppleEthernetMLX5_IVars *DriverKit_AppleEthernetMLX5::HealthTimerOccurred_Impl(DriverKit_AppleEthernetMLX5 *this, OSAction *a2)
{
  result = *(this + 6);
  if (*(result + 40) == 1)
  {
    DriverKit_AppleEthernetMLX5_IVars::pollHealth(result);
    v4 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW) + 500000000;
    v5 = *(*(this + 6) + 144);

    return IOTimerDispatchSource::WakeAtTime(v5, 0x88uLL, v4, 0x1F4uLL, 0);
  }

  return result;
}

uint64_t DriverKit_AppleEthernetMLX5::CmdTimerOccurred_Impl(DriverKit_AppleEthernetMLX5 *this, OSAction *a2)
{
  result = AppleEthernetMLX5Cmd::poll(*(*(this + 6) + 304));
  if (result)
  {
    v4 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW) + 10000000;
    v5 = *(*(this + 6) + 152);

    return IOTimerDispatchSource::WakeAtTime(v5, 0x88uLL, v4, 0, 0);
  }

  return result;
}

uint64_t DriverKit_AppleEthernetMLX5_NetIf::SetInterfaceEnable_Impl(DriverKit_AppleEthernetMLX5_NetIf *this, int a2)
{
  v2 = a2;
  if (gMLX5DebugFlags)
  {
    v7 = "disable";
    if (a2)
    {
      v7 = "enable";
    }

    IOLog("mlx5:%s:%d <==(%s)\n", "SetInterfaceEnable_Impl", 283, v7);
  }

  v4 = 3758097111;
  v5 = *(this + 8);
  if (*(v5 - 123488) == 1)
  {
    v9 = 0;
    context[0] = DriverKit_AppleEthernetMLX5_NetIf::SetInterfaceEnable_Impl(BOOL)::$_0::__invoke;
    context[1] = v5 - 123648;
    BYTE4(v9) = v2;
    v10 = 3758097111;
    IODispatchQueue::DispatchSync_f(*(v5 - 123624), context, DriverKit_AppleEthernetMLX5_NetIf::SetInterfaceEnable_Impl(BOOL)::$_0::__invoke);
    v4 = v10;
  }

  if (gMLX5DebugFlags)
  {
    IOLog("mlx5:%s:%d ==>0x%08x\n", "SetInterfaceEnable_Impl", 308, v4);
  }

  return v4;
}

uint64_t DriverKit_AppleEthernetMLX5_NetIf::SetAllMulticastModeEnable_Impl(DriverKit_AppleEthernetMLX5_NetIf *this, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, mlx5::FlowDestination *a8)
{
  if (gMLX5DebugFlags)
  {
    v12 = "disable";
    if (a2)
    {
      v12 = "enable";
    }

    IOLog("mlx5:%s:%d - %s\n", "SetAllMulticastModeEnable_Impl", 321, v12);
  }

  v10 = *(this + 8);

  return DriverKit_AppleEthernetMLX5_NetIf_IVars::setAllMulticastModeEnable(v10, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t DriverKit_AppleEthernetMLX5_NetIf::SelectMediaType_Impl(DriverKit_AppleEthernetMLX5_NetIf *this, int a2)
{
  if (gMLX5DebugFlags)
  {
    IOLog("mlx5:%s:%d type=0x%08x\n", "SelectMediaType_Impl", 334, a2);
  }

  v9 = 0;
  v4 = *(this + 8);
  context[0] = DriverKit_AppleEthernetMLX5_NetIf::SelectMediaType_Impl::$_0::__invoke;
  context[1] = v4 - 123648;
  v7 = 0;
  v8 = a2;
  LODWORD(v9) = -536870185;
  IODispatchQueue::DispatchSync_f(*(v4 - 123624), context, DriverKit_AppleEthernetMLX5_NetIf::SelectMediaType_Impl::$_0::__invoke);
  return 0;
}

uint64_t DriverKit_AppleEthernetMLX5_NetIf::SetWakeOnMagicPacketEnable_Impl(DriverKit_AppleEthernetMLX5_NetIf *this, int a2)
{
  if (gMLX5DebugFlags)
  {
    v3 = "disable";
    if (a2)
    {
      v3 = "enable";
    }

    IOLog("mlx5:%s:%d - %s\n", "SetWakeOnMagicPacketEnable_Impl", 379, v3);
  }

  return 0;
}

void DriverKit_AppleEthernetMLX5::Start_Impl(IOService *)::$_0::__invoke()
{
  if (atomic_fetch_add_explicit(&cancelCount, 0xFFFFFFFF, memory_order_relaxed) <= 1)
  {
    v7 = v0;
    v8 = v1;
    v2 = MLX5_dev;
    for (i = 72; i != 144; i += 8)
    {
      v4 = *(*(v2 + 48) + i);
      if (v4)
      {
        (*(*v4 + 16))(v4);
        v2 = MLX5_dev;
        *(*(MLX5_dev + 48) + i) = 0;
      }
    }

    v5 = *(*(v2 + 48) + 123648);
    if (v5)
    {
      (*(*v5 + 16))(v5);
      *(*(MLX5_dev + 48) + 123648) = 0;
    }

    readData = 0;
    IOPCIDevice::ConfigurationRead8(MLX5_pciDev, 4uLL, &readData);
    IOPCIDevice::ConfigurationWrite8(MLX5_pciDev, 4uLL, readData & 0xFB);
    IOPCIDevice::Close(MLX5_pciDev, MLX5_dev, 0);
    IOService::Stop(MLX5_dev, MLX5_pciDev, &IOService::_Dispatch);
  }
}

void DriverKit_AppleEthernetMLX5_NetIf::SetInterfaceEnable_Impl(BOOL)::$_0::__invoke(int *context, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, mlx5::FlowDestination *a8)
{
  v9 = context[4] + 1;
  context[4] = v9;
  v10 = *(context + 1);
  if (v9 >= *(v10 + 272))
  {
    context[6] = DriverKit_AppleEthernetMLX5_NetIf_IVars::setInterfaceEnable((v10 + 123648), *(context + 20), a3, a4, a5, a6, a7, a8);
  }

  else
  {
    v11 = *(v10 + 8 * v9 + 24);
    v12 = *context;

    IODispatchQueue::DispatchSync_f(v11, context, v12);
  }
}

void DriverKit_AppleEthernetMLX5_NetIf::SelectMediaType_Impl(unsigned int)::$_0::__invoke(int *context)
{
  v2 = context[4] + 1;
  context[4] = v2;
  v3 = *(context + 1);
  if (v2 >= *(v3 + 272))
  {
    context[6] = DriverKit_AppleEthernetMLX5_NetIf_IVars::handleChosenMedia((v3 + 123648), context[5]);
  }

  else
  {
    v4 = *(v3 + 8 * v2 + 24);
    v5 = *context;

    IODispatchQueue::DispatchSync_f(v4, context, v5);
  }
}

uint64_t DriverKit_AppleEthernetMLX5_NetIf_IVars::enqueueRxPackets(uint64_t a1, uint64_t a2)
{
  *(a2 + 64) = 0;
  if (!*(a2 + 24))
  {
    v65 = *(a2 + 196);
    v66 = *(a2 + 176) + ((*(a2 + 192) & v65) << *(a2 + 201));
    if (((v65 >> *(a2 + 200)) ^ *(v66 + 63)))
    {
      return 0;
    }

    while (1)
    {
      __dmb(1u);
      v67 = *(v66 + 63);
      if ((~v67 & 0xC) == 0)
      {
        v68 = 0;
        v69 = *(a2 + 192);
        v70 = *(a2 + 196);
        v71 = *(a2 + 176);
        v72 = *(a2 + 201);
        v73 = v71 + ((v69 & v70) << v72);
        *sendDataAvailable = *v73;
        *&sendDataAvailable[16] = *(v73 + 16);
        *callback = *(v73 + 22);
        *&callback[14] = *(v73 + 36);
        v74 = *(v73 + 44);
        v75 = *(v73 + 48);
        DWORD2(v127) = *(v73 + 56);
        *&v127 = v75;
        v76 = (v71 + ((v69 & (v70 + 1)) << v72));
        v77 = *v76;
        v78 = v76[1];
        v79 = v76[2];
        v80 = v76[3];
        v81 = *(v73 + 62);
        v82 = *(v73 + 63);
        v83 = bswap32(*(v73 + 60)) >> 16;
        v84 = bswap32(v74);
        v119 = v79;
        v120 = v80;
        v117 = v77;
        v118 = v78;
        v85 = v82 & 0xFFFFFFF0;
        v86 = v84 - 1;
        while (1)
        {
          v87 = &v117 + 8 * (v68 & 7);
          v88 = *(v87 + 1);
          v89 = bswap32((v83 + v68) & v69) >> 16;
          LOWORD(v87) = *v87;
          v90 = v70 + v68;
          v91 = (v90 >> *(a2 + 200)) & 1 | v85;
          v92 = v71 + ((v90 & v69) << v72);
          *v92 = *sendDataAvailable;
          *(v92 + 16) = *&sendDataAvailable[16];
          *(v92 + 20) = v87;
          *(v92 + 22) = *callback;
          *(v92 + 36) = *&callback[14];
          *(v92 + 44) = v88;
          *(v92 + 48) = v127;
          *(v92 + 56) = DWORD2(v127);
          *(v92 + 60) = v89;
          *(v92 + 62) = v81;
          *(v92 + 63) = v91;
          if (v86 == v68)
          {
            break;
          }

          v69 = *(a2 + 192);
          v70 = *(a2 + 196);
          v71 = *(a2 + 176);
          v72 = *(a2 + 201);
          if (((v68 + 1) & 7) == 0)
          {
            v93 = (v71 + (((v68 + v70 + 1) & v69) << v72));
            v117 = *v93;
            v118 = v93[1];
            v119 = v93[2];
            v120 = v93[3];
          }

          ++v68;
        }

        v67 = *(v66 + 63);
      }

      ++*(a2 + 196);
      v94 = *(a2 + 32);
      v95 = *(a2 + 20);
      v96 = *(a2 + 16);
      v97 = *(v94 + 8 * (v96 & v95++));
      *(a2 + 20) = v95;
      _X10 = *(v94 + 8 * (v96 & v95));
      __asm { PRFM            #0x10, [X10] }

      v104 = v67 >> 4;
      if (v104 != 2)
      {
        if (gMLX5DebugFlags)
        {
          IOLog("mlx5:%s:%d cqe OPCODE %d\n", "enqueueRxPackets", 294, v104);
        }

        *(v97 + 64) = 0;
        goto LABEL_69;
      }

      v105 = bswap32(*(v66 + 44));
      *(v97 + 73) = 14;
      *(v97 + 64) = v105;
      v106 = *(v66 + 32);
      *(v97 + 98) = v106;
      if ((v106 & 0xFE) != 0)
      {
        v107 = *(v97 + 8);
        v108 = *(v107 + 12);
        if (v108 == 56710)
        {
          v110 = 0;
          v109 = v107 + 14;
          v111 = 54;
          goto LABEL_59;
        }

        if (v108 == 8)
        {
          v109 = 0;
          v110 = v107 + 14;
          v111 = 34;
LABEL_59:
          v112 = v107 + v111;
          if ((*(v66 + 4) & 0x40) != 0)
          {
            *(v112 + 13) |= 8u;
          }

          if (((*(v66 + 29) >> 4) & 7u) - 3 <= 1)
          {
            *(v112 + 13) |= 0x10u;
            *(v112 + 8) = *(v66 + 8);
            *(v112 + 14) = *(v66 + 6);
          }

          if (v110)
          {
            *(v110 + 8) = *(v66 + 5);
            *(v110 + 2) = bswap32(v105 - 14) >> 16;
          }

          else
          {
            *(v109 + 7) = *(v66 + 5);
            *(v109 + 4) = bswap32(v105 - 54) >> 16;
          }
        }
      }

      *(v97 + 90) = 0;
      *(v97 + 88) = 0;
      v113 = *(v66 + 28);
      if ((~v113 & 3) == 0)
      {
        *(v97 + 90) = 768;
        if ((v113 & 4) != 0)
        {
          *(v97 + 90) = 3840;
          *(v97 + 88) = -1;
        }
      }

LABEL_69:
      v114 = *(a2 + 40);
      *&v117 = _NSConcreteStackBlock;
      *(&v117 + 1) = 0x40000000;
      *&v118 = ___ZL15enqueueRxPacketP25IODataQueueDispatchSourceP24IOUserNetworkPacketStateRj_block_invoke;
      *(&v118 + 1) = &__block_descriptor_tmp_0;
      *&v119 = v97;
      callback[0] = 0;
      *(v97 + 72) = 0;
      v115 = IODataQueueDispatchSource::EnqueueWithCoalesce(v114, 0x68u, callback, &v117);
      if (v115)
      {
        if (gMLX5DebugFlags)
        {
          IOLog("mlx5:%s:%d EnqueueWithCoalesce returned %x\n", "enqueuePacket", 49, v115);
        }

        result = 1;
      }

      else
      {
        result = 0x10000;
      }

      v116 = *(a2 + 196);
      v66 = *(a2 + 176) + ((*(a2 + 192) & v116) << *(a2 + 201));
      if (((v116 >> *(a2 + 200)) ^ *(v66 + 63)))
      {
LABEL_81:
        __dmb(0xEu);
        **(a2 + 184) = bswap32(*(a2 + 196) & 0xFFFFFF);
        return result;
      }
    }
  }

  v3 = *(*(*(*(a2 + 56) + 48) + 8) + 64);
  if (!v3)
  {
    DriverKit_AppleEthernetMLX5_NetIf_IVars::enqueueRxPackets();
  }

  v4 = *(a2 + 196);
  v5 = *(a2 + 176) + ((*(a2 + 192) & v4) << *(a2 + 201));
  if (((v4 >> *(a2 + 200)) ^ *(v5 + 63)))
  {
    return 0;
  }

  result = 0;
  v7 = v3 + 36864;
  v8 = -1;
  do
  {
    __dmb(1u);
    if ((~*(v5 + 63) & 0xC) == 0)
    {
      v9 = 0;
      v10 = *(a2 + 192);
      v11 = *(a2 + 196);
      v12 = *(a2 + 176);
      v13 = *(a2 + 201);
      v14 = (v12 + ((v10 & v11) << v13));
      v127 = *v14;
      v128 = *(v14 + 4);
      *sendDataAvailable = *(v14 + 22);
      *&sendDataAvailable[14] = *(v14 + 36);
      v15 = *(v14 + 11);
      v16 = *(v14 + 6);
      v125 = *(v14 + 14);
      v124 = v16;
      v17 = (v12 + ((v10 & (v11 + 1)) << v13));
      v18 = *v17;
      v19 = v17[1];
      v20 = v17[2];
      v21 = v17[3];
      v22 = *(v14 + 62);
      v23 = *(v14 + 63);
      v24 = bswap32(*(v14 + 30)) >> 16;
      v25 = bswap32(v15);
      v130 = v20;
      v131 = v21;
      *callback = v18;
      *&callback[16] = v19;
      v26 = v23 & 0xFFFFFFF0;
      v27 = v25 - 1;
      while (1)
      {
        v28 = &callback[8 * (v9 & 7)];
        v29 = *(v28 + 1);
        v30 = bswap32((v24 + v9) & v10);
        LOWORD(v28) = *v28;
        v31 = v11 + v9;
        v32 = (v31 >> *(a2 + 200)) & 1 | v26;
        v33 = v12 + ((v31 & v10) << v13);
        *v33 = v127;
        *(v33 + 16) = v128;
        *(v33 + 20) = v28;
        *(v33 + 22) = *sendDataAvailable;
        *(v33 + 36) = *&sendDataAvailable[14];
        *(v33 + 44) = v29;
        *(v33 + 48) = v124;
        *(v33 + 56) = v125;
        *(v33 + 60) = HIWORD(v30);
        *(v33 + 62) = v22;
        *(v33 + 63) = v32;
        if (v27 == v9)
        {
          break;
        }

        v10 = *(a2 + 192);
        v11 = *(a2 + 196);
        v12 = *(a2 + 176);
        v13 = *(a2 + 201);
        if (((v9 + 1) & 7) == 0)
        {
          v34 = (v12 + (((v9 + v11 + 1) & v10) << v13));
          *callback = *v34;
          *&callback[16] = v34[1];
          v130 = v34[2];
          v131 = v34[3];
        }

        ++v9;
      }
    }

    ++*(a2 + 196);
    v35 = *(v5 + 44);
    v36 = bswap32(*(v5 + 2));
    v37 = HIWORD(v36);
    v38 = *(v5 + 60);
    if (v8 != HIWORD(v36))
    {
      v59 = *(*(a2 + 32) + 8 * v37);
      v61 = v59[1];
      v60 = v59[2];
      v117 = *v59;
      v118 = v61;
      v119 = v60;
      v63 = v59[4];
      v62 = v59[5];
      v64 = v59[3];
      v123 = *(v59 + 12);
      v121 = v63;
      v122 = v62;
      v120 = v64;
      v8 = v37;
    }

    v39 = bswap32(v35 & 0xFFFFFF7F) >> 16;
    v40 = *(a2 + 24);
    v41 = *(v40 + 2 * v37) + v39;
    *(v40 + 2 * v37) = v41;
    v42 = *(v7 + 1578);
    *(&v123 + 5) = *(&v123 + 5) & 0xFDFF | ((v42 > v41) << 9);
    if ((*(v5 + 63) & 0xF0) != 0x20 || (*(v5 + 44) & 0x80) != 0)
    {
      if (v42 > v41)
      {
        goto LABEL_36;
      }

      LODWORD(v121) = 0;
      v57 = *(a2 + 40);
      WORD4(v121) = 0;
      *callback = _NSConcreteStackBlock;
      *&callback[8] = 0x40000000;
      *&callback[16] = ___ZL15enqueueRxPacketP25IODataQueueDispatchSourceP24IOUserNetworkPacketStateRj_block_invoke;
      *&callback[24] = &__block_descriptor_tmp_0;
      *&v130 = &v117;
      sendDataAvailable[0] = 0;
      v58 = IODataQueueDispatchSource::EnqueueWithCoalesce(v57, 0x68u, sendDataAvailable, callback);
      if (v58)
      {
        if (gMLX5DebugFlags)
        {
          IOLog("mlx5:%s:%d EnqueueWithCoalesce returned %x\n", "enqueuePacket", 49, v58);
        }

        result = 1;
      }

      else
      {
        result = 0x10000;
      }

LABEL_44:
      *(*(a2 + 24) + 2 * v37) = 0;
      ++*(a2 + 20);
      goto LABEL_36;
    }

    v43 = *(v7 + 1580);
    v44 = bswap32(v38) >> 16 << v43;
    DWORD2(v120) = v44;
    HIDWORD(v120) = v39 << v43;
    v45 = bswap32(*(v5 + 46)) >> 16;
    BYTE9(v121) = 14;
    LODWORD(v121) = v45;
    v46 = *(v5 + 32);
    BYTE2(v123) = v46;
    if ((v46 & 0xFE) != 0)
    {
      v47 = *(&v117 + 1) + v44;
      v48 = *(v47 + 12);
      if (v48 == 56710)
      {
        v50 = 0;
        v49 = v47 + 14;
        v51 = 54;
      }

      else
      {
        if (v48 != 8)
        {
          goto LABEL_27;
        }

        v49 = 0;
        v50 = v47 + 14;
        v51 = 34;
      }

      v52 = v47 + v51;
      if ((*(v5 + 4) & 0x40) != 0)
      {
        *(v52 + 13) |= 8u;
      }

      if (((*(v5 + 29) >> 4) & 7u) - 3 <= 1)
      {
        *(v52 + 13) |= 0x10u;
        *(v52 + 8) = *(v5 + 8);
        *(v52 + 14) = *(v5 + 6);
      }

      if (v50)
      {
        *(v50 + 8) = *(v5 + 5);
        *(v50 + 2) = bswap32(v45 - 14) >> 16;
      }

      else
      {
        *(v49 + 7) = *(v5 + 5);
        *(v49 + 4) = bswap32(v45 - 54) >> 16;
      }
    }

LABEL_27:
    *(&v122 + 10) = 0;
    WORD4(v122) = 0;
    v53 = *(v5 + 28);
    if ((~v53 & 3) == 0)
    {
      *(&v122 + 10) = 768;
      if ((v53 & 4) != 0)
      {
        *(&v122 + 10) = 3840;
        WORD4(v122) = -1;
      }
    }

    v54 = *(a2 + 40);
    *callback = _NSConcreteStackBlock;
    *&callback[8] = 0x40000000;
    *&callback[16] = ___ZL15enqueueRxPacketP25IODataQueueDispatchSourceP24IOUserNetworkPacketStateRj_block_invoke;
    *&callback[24] = &__block_descriptor_tmp_0;
    *&v130 = &v117;
    sendDataAvailable[0] = 0;
    BYTE8(v121) = 0;
    v55 = IODataQueueDispatchSource::EnqueueWithCoalesce(v54, 0x68u, sendDataAvailable, callback);
    if (v55)
    {
      if (gMLX5DebugFlags)
      {
        IOLog("mlx5:%s:%d EnqueueWithCoalesce returned %x\n", "enqueuePacket", 49, v55);
      }

      result = 1;
    }

    else
    {
      result = 0x10000;
    }

    if ((*(&v123 + 5) & 0x200) == 0)
    {
      goto LABEL_44;
    }

LABEL_36:
    v56 = *(a2 + 196);
    v5 = *(a2 + 176) + ((*(a2 + 192) & v56) << *(a2 + 201));
  }

  while ((((v56 >> *(a2 + 200)) ^ *(v5 + 63)) & 1) == 0);
  if (result)
  {
    goto LABEL_81;
  }

  return result;
}

uint64_t DriverKit_AppleEthernetMLX5_NetIf_IVars::dequeueRxPackets(uint64_t a1, uint64_t *a2)
{
  v4 = *(a2 + 8) - *(a2 + 9) + *(a2 + 10);
  if (!v4)
  {
    return 0;
  }

  v25 = v2;
  v26 = v3;
  memset(v24, 0, 512);
  result = (*(*a2[6] + 104))(a2[6], v24, v4);
  if (result)
  {
    v7 = *(a2 + 8);
    v8 = a2[4];
    v9 = *a2;
    v10 = *(a2 + 22);
    v11 = *a2 + 24;
    v12 = *(a2 + 9);
    v13 = v24;
    v14 = result;
    do
    {
      v15 = *v13++;
      v16 = *(v15 + 48);
      *(v8 + 8 * (v7 & v12)) = v16 + 8;
      v17 = (v7 & v12++) << v10;
      *(a2 + 9) = v12;
      _X1 = v9 + ((v7 & v12) << v10);
      __asm { PRFM            #0x10, [X1] }

      *(v11 + v17) = bswap64(*(v16 + 24));
      --v14;
    }

    while (v14);
    __dmb(2u);
    *a2[1] = bswap32(*(a2 + 9));
  }

  return result;
}

void DriverKit_AppleEthernetMLX5_NetIf_IVars::drainRQ(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 20);
  if (v3 == *(a2 + 18))
  {
    v4 = *(a2 + 20);
  }

  else
  {
    v5 = 0;
    while (1)
    {
      readData[0] = 0;
      IOPCIDevice::MemoryRead32(MLX5_pciDev, 0, 0, readData);
      if (readData[0] == -1)
      {
        break;
      }

      if ((gMLX5DebugFlags & 4) != 0)
      {
        IOLog("mlx5: drainRQ phase 1: rq.wq.cc %d, rq.wq.pc %d\n", *(a2 + 20), *(a2 + 18));
      }

      IOSleep(1uLL);
      (*(a2 + 152))(a2 + 128);
      v4 = *(a2 + 20);
      if (v4 == v3)
      {
        if (v5 > 0xFE)
        {
          goto LABEL_14;
        }

        ++v5;
      }

      else
      {
        v5 = 0;
        LOWORD(v3) = *(a2 + 20);
      }

      if (v4 == *(a2 + 18))
      {
        goto LABEL_14;
      }
    }

    v4 = *(a2 + 20);
LABEL_14:
    v3 = *(a2 + 18);
  }

  if ((gMLX5DebugFlags & 4) != 0)
  {
    IOLog("mlx5: drainRQ phase 2: rq.wq.cc %d, rq.wq.pc %d\n", v4, v3);
    v4 = *(a2 + 20);
    v3 = *(a2 + 18);
  }

  if (v4 != v3)
  {
    do
    {
      v6 = *(*(a2 + 32) + 8 * (*(a2 + 16) & v4));
      if ((gMLX5DebugFlags & 4) != 0)
      {
        IOLog("mlx5: drainRQ rq.wq.cc=%d dma=0x%llx\n", v4, *(v6 + 8) + *(v6 + 68));
      }

      v8.ivars = (v6 - 8);
      *readData = 0;
      IOUserNetworkPacket::GetPacketBufferPool(&v8, readData);
      (*(**readData + 64))(*readData, &v8);
      LOWORD(v4) = *(a2 + 20) + 1;
      *(a2 + 20) = v4;
    }

    while (*(a2 + 18) != v4);
  }
}

double ___ZL15enqueueRxPacketP25IODataQueueDispatchSourceP24IOUserNetworkPacketStateRj_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  *(a2 + 40) = *(v2 + 40);
  *(a2 + 73) = *(v2 + 73);
  *(a2 + 64) = *(v2 + 64);
  result = *(v2 + 56);
  *(a2 + 56) = result;
  *(a2 + 90) = *(v2 + 90);
  *(a2 + 88) = *(v2 + 88);
  *(a2 + 98) = *(v2 + 98);
  *(a2 + 101) = *(a2 + 101) & 0xFDFF | *(v2 + 101) & 0x200;
  return result;
}

uint64_t mlx5::FSBase::findRoot(uint64_t a1)
{
  do
  {
    result = a1;
    a1 = *(a1 + 16);
  }

  while (a1);
  if (*(result + 8))
  {
    IOLog("mlx5: flow steering node %s is not in tree\n", *(result + 48));
    return 0;
  }

  return result;
}

uint64_t mlx5::FSBase::init(uint64_t this, int a2)
{
  *(this + 44) = a2;
  *(this + 24) = this + 24;
  *(this + 32) = this + 24;
  return this;
}

void mlx5::FSBase::addNode(mlx5::FSBase *this, const char *__s, mlx5::FSBase *a3)
{
  if (a3)
  {
    ++*(a3 + 11);
  }

  strlen(__s);
  operator new[]();
}

void mlx5::FSBase::addNode(mlx5::FSBase *this, mlx5::FSBase *a2, const char *__s, int a4)
{
  *(this + 11) = a4;
  *(this + 3) = this + 24;
  *(this + 4) = this + 24;
  mlx5::FSBase::addNode(this, __s, a2);
}

void mlx5::FSBase::~FSBase(mlx5::FSBase *this)
{
  *this = off_1000243F8;
  if (*(this + 6))
  {
    operator delete();
  }
}

{
  *this = off_1000243F8;
  if (*(this + 6))
  {
    operator delete();
  }
}

{
  *this = off_1000243F8;
  if (*(this + 6))
  {
    operator delete();
  }

  operator delete();
}

mlx5::FSBase *mlx5::FSBase::release(mlx5::FSBase *this)
{
  v1 = this;
  v3 = (this + 44);
  v2 = *(this + 11);
  if (v2 <= 0)
  {
    mlx5::FSBase::release(this, v2, v3);
  }

  *v3 = v2 - 1;
  if (v2 == 1)
  {
    if (*(this + 2))
    {
      v4 = *(this + 3);
      v5 = *(this + 4);
      *(v4 + 8) = v5;
      *v5 = v4;
      *(this + 3) = this + 24;
      *(this + 4) = this + 24;
    }

    (*(*this + 16))(this);
    *(v1 + 40) = 1;
    v6 = *(v1 + 2);
    if (v6)
    {
      mlx5::FSBase::release(v6, 0);
    }

    if (*(v1 + 2) == 4)
    {
      if (gMLX5DebugFlags)
      {
        v8 = *(v1 + 2);
        if (v8)
        {
          v9 = *(v8 + 48);
        }

        else
        {
          v9 = "(ROOT)";
        }

        IOLog("mlx5:%s:%d FSBase::release(%p = %s, %s, %d) %s\n", "release", 188, v1, *(v1 + 6), v9, *(v1 + 11), "FS_TYPE_FLOW_ENTRY");
      }

      (*(*v1 + 8))(v1);
      return 0;
    }
  }

  return v1;
}

mlx5::FSBase *mlx5::FSBase::removeNode(mlx5::FSBase *this)
{
  if (gMLX5DebugFlags)
  {
    mlx5::FSBase::removeNode(this);
  }

  v3 = (this + 44);
  v2 = *(this + 11);
  if (v2 != 1)
  {
    mlx5::FSBase::removeNode(this, v2, this + 11);
  }

  result = mlx5::FSBase::release(this);
  if (result)
  {
    if (*v3)
    {
      mlx5::FSBase::removeNode(this, *v3, this + 11);
    }

    v5 = *(*result + 8);

    return v5();
  }

  return result;
}

uint64_t mlx5::FTEntry::allocStarEntry(uint64_t a1)
{
  if (*(a1 + 596) != *(a1 + 592))
  {
    operator new();
  }

  return 0;
}

uint64_t mlx5::FTEntry::freeStarEntry(mlx5::FTEntry *this)
{
  v3 = this + 72;
  v2 = *(this + 9);
  if (v2 != v3)
  {
    do
    {
      --*(this + 14);
      v5 = *v2;
      v4 = *(v2 + 1);
      *(v5 + 1) = v4;
      *v4 = v5;
      (*(*(v2 - 3) + 8))();
      v2 = v5;
    }

    while (v5 != v3);
  }

  v7 = *(this + 3);
  v6 = *(this + 4);
  *(v7 + 8) = v6;
  *v6 = v7;
  --*(*(this + 2) + 596);
  v8 = *(*this + 8);

  return v8(this);
}

uint64_t mlx5::FlowTable::setStarRule(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a1 + 112) + 72);
  v6 = *(v5 - 8);
  *(v5 + 40) = a3;
  if (a3)
  {
    memset(v13, 0, sizeof(v13));
    result = DriverKit_AppleEthernetMLX5_IVars::setFte(a2, *(a1 + 96), (v6 + 601), v13, *(a1 + 100), *(a1 + 92), *(v6 + 64), *(*(a1 + 104) + 600), *(v6 + 60), *(v6 + 600), *(v6 + 56), (v6 + 72));
    if (!result)
    {
      ++*(a3 + 44);
    }
  }

  else
  {
    v9 = *(a1 + 96);
    v10 = *(a1 + 100);
    v11 = *(a1 + 92);
    v12 = *(v6 + 64);

    return DriverKit_AppleEthernetMLX5_IVars::deleteFte(a2, v9, (v6 + 601), v10, v11, v12);
  }

  return result;
}

uint64_t mlx5::FlowTable::connectPrevFTs(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  do
  {
    v6 = v5;
    v5 = *(v5 + 16);
  }

  while (v5);
  v7 = 3758097088;
  if (*(v6 + 8))
  {
    IOLog("mlx5: flow steering node %s is not in tree\n", *(v6 + 48));
  }

  else
  {
    v8 = *(v6 + 88);
    if (v8)
    {
      v9 = (a3 + 56);
      for (i = *(a3 + 56); i != v9; i = *i)
      {
        if (*(i - 4) == 2)
        {
          v11 = *(*(i[11] + 72) + 40);
          if (v11 != a4)
          {
            if (mlx5::FlowTable::setStarRule((i - 3), v8, a4))
            {
              IOLog("mlx5: flow steering can't connect prev and next\n");
              return 0;
            }

            if (v11)
            {
              mlx5::FSBase::release(v11);
            }
          }
        }
      }

      return 0;
    }
  }

  return v7;
}

void mlx5::FlowTable::createStarRule(mlx5::FlowTable *this, mlx5::FSPrio *a2)
{
  bzero(v4, 0x400uLL);
  v5 = bswap32(*(this + 21));
  v6 = v5;
  mlx5::FlowGroup::alloc(v4, v3);
}

const char **mlx5::FlowTable::findNext(const char **this, mlx5::FSPrio *a2)
{
  if (this)
  {
    v2 = this;
    do
    {
      v3 = *(v2 + 16);
      this = mlx5::FlowTable::findFirst(v3, (v2 + 24));
      v2 = *(v3 + 16);
      if (this)
      {
        v4 = 1;
      }

      else
      {
        v4 = v2 == 0;
      }

      if (!v4)
      {
        this = mlx5::FlowTable::_findFirst(*(v3 + 16), (v3 + 24));
      }

      if (this)
      {
        v5 = 1;
      }

      else
      {
        v5 = v2 == 0;
      }
    }

    while (!v5);
  }

  return this;
}

const char **mlx5::FlowTable::findPrev(const char **this, mlx5::FlowTable *a2, mlx5::FSPrio *a3)
{
  if (this)
  {
    v3 = a2;
    v4 = *(a2 + 7);
    if ((v4 - 24) != this && v4 != a2 + 56 || a2 == 0)
    {
      return 0;
    }

    else
    {
      do
      {
        v7 = *(v3 + 2);
        this = mlx5::FlowTable::findFirstReverse(v7, v3 + 3);
        v3 = *(v7 + 16);
        if (this)
        {
          v8 = 1;
        }

        else
        {
          v8 = v3 == 0;
        }

        if (!v8)
        {
          this = mlx5::FlowTable::_findFirstReverse(*(v7 + 16), (v7 + 24));
        }

        if (this)
        {
          v9 = 1;
        }

        else
        {
          v9 = v3 == 0;
        }
      }

      while (!v9);
    }
  }

  return this;
}

uint64_t mlx5::FlowTable::destroyStarRule(mlx5::FlowTable *this, mlx5::FSPrio *a2, mlx5::FSPrio *a3)
{
  v3 = a2;
  v5 = a2;
  do
  {
    v6 = v5;
    v5 = *(v5 + 2);
  }

  while (v5);
  if (*(v6 + 8))
  {
    mlx5::FlowTable::destroyStarRule(v6);
  }

  Prev = mlx5::FlowTable::findPrev(this, a2, a3);
  Next = mlx5::FlowTable::findNext(v3, v8);
  v10 = Next;
  if (Prev)
  {
    if (mlx5::FlowTable::connectPrevFTs(Next, v3, Prev[2], Next))
    {
      IOLog("mlx5: flow steering can't connect prev and next of flow table\n");
    }

    mlx5::FSBase::release(Prev);
  }

  v11 = *(v6 + 88);
  v12 = *(*(this + 14) + 72);
  v13 = *(v12 - 8);
  *(v12 + 40) = 0;
  v14 = DriverKit_AppleEthernetMLX5_IVars::deleteFte(v11, *(this + 48), (v13 + 601), *(this + 25), *(this + 23), *(v13 + 64));
  if (v10)
  {
    v15 = v14;
    mlx5::FSBase::release(v10);
    if (!v15)
    {
      mlx5::FSBase::release(v10);
    }
  }

  do
  {
    v16 = v3;
    v3 = *(v3 + 2);
  }

  while (v3);
  if (*(v16 + 2))
  {
    IOLog("mlx5: flow steering node %s is not in tree\n", *(v16 + 6));
    v17 = 0;
  }

  else
  {
    v17 = *(v16 + 11);
  }

  v18 = DriverKit_AppleEthernetMLX5_IVars::destroyFG(v17, *(this + 48), *(this + 25), *(this + 23), *(*(this + 13) + 600));
  if (v18 != -536870185 && v18 != 0)
  {
    IOLog("mlx5: flow steering can't destroy star entry group(index:%d) of ft:%s\n", *(*(this + 13) + 588), *(this + 6));
  }

  mlx5::FTEntry::freeStarEntry(*(this + 14));
  *(this + 14) = 0;
  result = *(this + 13);
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  *(this + 13) = 0;
  return result;
}

uint64_t *mlx5::FlowNamespace::findPrio(mlx5::FlowNamespace *this, int a2)
{
  v4 = *(this + 7);
  v2 = this + 56;
  for (i = v4; ; i = *i)
  {
    if (i == v2)
    {
      return 0;
    }

    if (*(i - 4) == 1 && *(i + 15) == a2)
    {
      break;
    }
  }

  return (i - 24);
}

uint64_t mlx5::FlowNamespace::allocNewLevel(uint64_t this, mlx5::FlowNamespace *a2, mlx5::FSPrio *a3)
{
  if (this)
  {
    v3 = this;
    v4 = *(this + 56);
    if (v4 == (this + 56))
    {
      v5 = 0;
    }

    else
    {
      v5 = 0;
      do
      {
        if (*(v4 - 4) == 1)
        {
          if (v4 - 3 == a2)
          {
            break;
          }

          v5 += *(v4 + 12);
        }

        v4 = *v4;
      }

      while (v4 != (this + 56));
    }

    v6 = *(this + 16);
    if (v6)
    {
      if (gMLX5DebugFlags)
      {
        mlx5::FlowNamespace::allocNewLevel(*(this + 16));
      }
    }

    return mlx5::FlowNamespace::allocNewLevel(v6, v3, a3) + v5;
  }

  return this;
}

uint64_t *mlx5::FlowNamespace::allocNewLevel(uint64_t *this, mlx5::FSPrio *a2, mlx5::FlowNamespace *a3)
{
  if (this)
  {
    v3 = this[8];
    if (v3 != this + 7)
    {
      v4 = 0;
      while (1)
      {
        v5 = *(v3 - 16);
        if (v5)
        {
          if (v5 == 2)
          {
            return (v4 + *(v3 + 64) + 1);
          }
        }

        else
        {
          if ((v3 - 24) == a2)
          {
            return (mlx5::FlowNamespace::allocNewLevel(this[2], this, a3) + v4);
          }

          for (i = *(v3 + 32); i != (v3 + 32); i = *i)
          {
            if (*(i - 4) == 1)
            {
              v4 += *(i + 12);
            }
          }
        }

        v3 = *(v3 + 8);
        if (v3 == this + 7)
        {
          return (mlx5::FlowNamespace::allocNewLevel(this[2], this, a3) + v4);
        }
      }
    }

    v4 = 0;
    return (mlx5::FlowNamespace::allocNewLevel(this[2], this, a3) + v4);
  }

  return this;
}

uint64_t mlx5::FlowRootNamespace::updateRootFTCreate(uint64_t a1, _DWORD *a2)
{
  v4 = *(a1 + 96);
  if (v4)
  {
    v5 = *(v4 + 88);
  }

  else
  {
    v5 = 0x7FFFFFFF;
  }

  if (a2[22] >= v5)
  {
    return 0;
  }

  updated = DriverKit_AppleEthernetMLX5_IVars::updateRootFT(*(a1 + 88), a2[25], a2[23]);
  if (updated)
  {
    IOLog("mlx5: Update root flow table of id=%u failed\n", a2[23]);
  }

  else
  {
    *(a1 + 96) = a2;
  }

  return updated;
}

uint64_t mlx5::FlowNamespace::createFlowTable(mlx5::FlowNamespace *this, int a2, unsigned int a3, const char *a4)
{
  v4 = *(this + 7);
  if (v4 != (this + 56))
  {
    while (*(v4 - 4) != 1 || v4[15] != a2)
    {
      v4 = *v4;
      if (v4 == (this + 56))
      {
        return 0;
      }
    }

    do
    {
      v5 = this;
      this = *(this + 2);
    }

    while (this);
    if (*(v5 + 2))
    {
      mlx5::FlowNamespace::createFlowTable(v5);
    }

    if (v4[13] != v4[12])
    {
      operator new();
    }
  }

  return 0;
}

uint64_t mlx5::FlowTable::cmdRemoveNode(mlx5::FlowTable *this)
{
  v2 = this;
  do
  {
    v3 = v2;
    v2 = *(v2 + 2);
  }

  while (v2);
  if (*(v3 + 2))
  {
    IOLog("mlx5: flow steering node %s is not in tree\n", *(v3 + 6));
    v4 = 0;
  }

  else
  {
    v4 = *(v3 + 11);
  }

  result = DriverKit_AppleEthernetMLX5_IVars::destroyFT(v4, *(this + 48), *(this + 25), *(this + 23));
  if (result != -536870185 && result != 0)
  {
    result = IOLog("mlx5: flow steering can't destroy ft %s\n", *(this + 6));
  }

  --*(*(this + 2) + 76);
  return result;
}

uint64_t mlx5::FlowRootNamespace::updateRootFTDestroy(mlx5::FlowRootNamespace *this, mlx5::FlowTable *a2)
{
  if (*(this + 12) != a2)
  {
    return 0;
  }

  v5 = *(a2 + 2);
  v6 = *(a2 + 3);
  if (v6 == v5 + 7)
  {
    Next = mlx5::FlowTable::findNext(v5, a2);
    v7 = Next;
    if (!Next)
    {
      v2 = 0;
      goto LABEL_11;
    }
  }

  else
  {
    v7 = 0;
    Next = v6 - 3;
  }

  updated = DriverKit_AppleEthernetMLX5_IVars::updateRootFT(*(this + 11), *(Next + 25), *(Next + 23));
  v2 = updated;
  if (updated == -536870185 || updated == 0)
  {
LABEL_11:
    *(this + 12) = Next;
    if (!v7)
    {
      return v2;
    }

LABEL_12:
    mlx5::FSBase::release(v7);
    return v2;
  }

  IOLog("mlx5: Update root flow table of id=%u failed\n", *(a2 + 23));
  if (v7)
  {
    goto LABEL_12;
  }

  return v2;
}

uint64_t mlx5::FlowTable::destroy(mlx5::FlowTable *this)
{
  v2 = *(this + 2);
  v3 = v2;
  do
  {
    v4 = v3;
    v3 = *(v3 + 2);
  }

  while (v3);
  if (*(v4 + 2))
  {
    mlx5::FlowTable::destroy(v4);
  }

  if ((*(v2 + 88) & 1) != 0 && (v5 = *(this + 30), v5 >= 2))
  {
    *(this + 30) = v5 - 1;
    mlx5::FSBase::release(this);
  }

  else
  {
    result = mlx5::FlowRootNamespace::updateRootFTDestroy(v4, this);
    if (result)
    {
      return result;
    }

    mlx5::FlowTable::destroyStarRule(this, v2, v7);
    mlx5::FSBase::removeNode(this);
  }

  return 0;
}

uint64_t mlx5::FlowTable::createFlowGroup(mlx5::FlowTable *this, mlx5::FlowGroup *a2)
{
  if ((*(this + 72) & 1) == 0)
  {
    v5 = this;
    do
    {
      v6 = v5;
      v5 = *(v5 + 2);
    }

    while (v5);
    if (*(v6 + 2))
    {
      IOLog("mlx5: flow steering node %s is not in tree\n", *(v6 + 6));
      LODWORD(v7) = 0;
    }

    else
    {
      v7 = *(v6 + 11);
    }

    v8 = *(this + 8);

    mlx5::FlowGroup::create(v7, this, v8, a2);
  }

  if (gMLX5DebugFlags)
  {
    IOLog("mlx5:%s:%d FlowTable::createFlowGroup(): autogroup.active\n", "createFlowGroup", 742);
  }

  return 0;
}

uint64_t mlx5::FlowGroup::cmdRemoveNode(mlx5::FlowGroup *this)
{
  v2 = *(this + 2);
  if (*(v2 + 72) == 1)
  {
    --*(v2 + 80);
  }

  v3 = this;
  do
  {
    v4 = v3;
    v3 = *(v3 + 2);
  }

  while (v3);
  if (*(v4 + 2))
  {
    IOLog("mlx5: flow steering node %s is not in tree\n", *(v4 + 6));
    v5 = 0;
  }

  else
  {
    v5 = *(v4 + 11);
  }

  result = DriverKit_AppleEthernetMLX5_IVars::destroyFG(v5, *(v2 + 96), *(v2 + 100), *(v2 + 92), *(this + 150));
  if (result != -536870185 && result != 0)
  {

    return IOLog("mlx5: flow steering can't destroy fg\n");
  }

  return result;
}

const char **mlx5::FlowTable::_findFirstReverse(uint64_t a1, void *a2)
{
  if (a1)
  {
    if (gMLX5DebugFlags)
    {
      IOLog("mlx5:%s:%d FlowTable::_findFirstReverse(%p = %s, %p), prio->type ==  %d\n", "_findFirstReverse", 839, a1, *(a1 + 48), a2, *(a1 + 8));
    }

    for (i = a2[1]; i != a1 + 56; i = *(i + 8))
    {
      v5 = i - 24;
      v6 = *(i - 16);
      if (v6)
      {
        if (v6 == 2)
        {
          ++*(i + 20);
          return v5;
        }
      }

      else
      {
        if (gMLX5DebugFlags)
        {
          IOLog("mlx5:%s:%d FlowTable::_findFirstReverse(), (ns->type == FS_TYPE_NAMESPACE) is %d\n", "_findFirstReverse", 850, 1);
        }

        FirstReverse = mlx5::FlowTable::findFirstReverse((i - 24), (i + 32));
        if (FirstReverse)
        {
          return FirstReverse;
        }
      }
    }
  }

  return 0;
}

const char **mlx5::FlowTable::findFirstReverse(const char **result, void *a2)
{
  if (result)
  {
    v3 = result;
    if (gMLX5DebugFlags)
    {
      IOLog("mlx5:%s:%d FlowTable::findFirstReverse(%p = %s, %p)\n", "findFirstReverse", 874, result, result[6], a2);
    }

    v4 = a2[1];
    if (v4 == v3 + 7)
    {
      return 0;
    }

    else
    {
      while (1)
      {
        if (*(v4 - 16) == 1)
        {
          if (gMLX5DebugFlags)
          {
            IOLog("mlx5:%s:%d FlowTable::findFirstReverse(iterator) prio is %p = %s, %d\n", "findFirstReverse", 882, (v4 - 24), *(v4 + 24), 1);
          }

          result = mlx5::FlowTable::_findFirstReverse(v4 - 24, v4 + 32);
          if (result)
          {
            break;
          }
        }

        v4 = *(v4 + 8);
        if (v4 == v3 + 7)
        {
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t mlx5::FlowTable::findFirstReverse(uint64_t a1, void *a2)
{
  if (a1)
  {
    return mlx5::FlowTable::_findFirstReverse(a1, a2);
  }

  return a1;
}

const char **mlx5::FlowTable::_findFirst(uint64_t a1, uint64_t **a2)
{
  if (a1)
  {
    if (gMLX5DebugFlags)
    {
      IOLog("mlx5:%s:%d FlowTable::_findFirst(%p = %s, %p), prio->type ==  %d\n", "_findFirst", 926, a1, *(a1 + 48), a2, *(a1 + 8));
    }

    for (i = *a2; i != (a1 + 56); i = *i)
    {
      v5 = i - 3;
      v6 = *(i - 4);
      if (v6)
      {
        if (v6 == 2)
        {
          ++*(i + 5);
          return v5;
        }
      }

      else
      {
        if (gMLX5DebugFlags)
        {
          IOLog("mlx5:%s:%d FlowTable::_findFirst(), (ns->type == FS_TYPE_NAMESPACE) is %d\n", "_findFirst", 937, 1);
        }

        First = mlx5::FlowTable::findFirst(i - 3, i + 4);
        if (First)
        {
          return First;
        }
      }
    }
  }

  return 0;
}

const char **mlx5::FlowTable::findFirst(const char **result, const char ***a2)
{
  if (result)
  {
    v3 = result;
    if (gMLX5DebugFlags)
    {
      IOLog("mlx5:%s:%d FlowTable::findFirst(%p = %s, %p)\n", "findFirst", 961, result, result[6], a2);
    }

    v4 = *a2;
    if (*a2 == v3 + 7)
    {
      return 0;
    }

    else
    {
      while (1)
      {
        if (*(v4 - 4) == 1)
        {
          if (gMLX5DebugFlags)
          {
            IOLog("mlx5:%s:%d FlowTable::findFirst(iterator) prio is %p = %s, %d\n", "findFirst", 968, v4 - 3, v4[3], 1);
          }

          result = mlx5::FlowTable::_findFirst(v4 - 3, v4 + 4);
          if (result)
          {
            break;
          }
        }

        v4 = *v4;
        if (v4 == v3 + 7)
        {
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t mlx5::FlowTable::findFirst(uint64_t a1, uint64_t **a2)
{
  if (a1)
  {
    return mlx5::FlowTable::_findFirst(a1, a2);
  }

  return a1;
}

uint64_t mlx5::FlowTable::createAutogroup(mlx5::FlowTable *this, int a2, unsigned __int8 *a3)
{
  if (gMLX5DebugFlags)
  {
    IOLog("mlx5:%s:%d FlowTable::createAutogroup()\n", "createAutogroup", 1004);
  }

  if (*(this + 72))
  {
    bzero(v21, 0x400uLL);
    v6 = *(this + 19);
    if (*(this + 20) >= v6)
    {
      v9 = 1;
    }

    else
    {
      v7 = *(this + 21);
      v8 = v6 + 1;
      if (v8 > v7)
      {
        IOLog("mlx5: flow steering can't create group size of 0\n", v19, v20);
        return 0;
      }

      v9 = v7 / v8;
    }

    v10 = *(this + 7);
    if (v10 == (this + 56))
    {
      v11 = 0;
      v12 = this + 56;
    }

    else
    {
      v11 = 0;
      v12 = this + 56;
      do
      {
        if (*(v10 - 4) == 3)
        {
          v13 = v10[141];
          if (v11 + v9 <= v13)
          {
            break;
          }

          v11 = v10[142] + v13;
          v12 = v10;
        }

        v10 = *v10;
      }

      while (v10 != (this + 56));
    }

    v14 = v11 + v9;
    if (v14 <= *(this + 21))
    {
      v24 = a2 << 24;
      v22 = bswap32(v11);
      v23 = bswap32(v14 - 1);
      memcpy(v25, a3, sizeof(v25));
      v16 = this;
      do
      {
        v17 = v16;
        v16 = *(v16 + 2);
      }

      while (v16);
      if (*(v17 + 2))
      {
        IOLog("mlx5: flow steering node %s is not in tree\n", *(v17 + 6));
        LODWORD(v18) = 0;
      }

      else
      {
        v18 = *(v17 + 11);
      }

      mlx5::FlowGroup::create(v18, this, v12, v21);
    }

    IOLog("mlx5: FlowTable::createAutogroup() exceeding max_fte: %d > %d\n");
  }

  else if (gMLX5DebugFlags)
  {
    IOLog("mlx5:%s:%d FlowTable::createAutogroup(): !autogroup.active\n");
  }

  return 0;
}

uint64_t mlx5::FlowGroup::getFreeIndex(uint64_t a1, uint64_t **a2)
{
  result = *(a1 + 588);
  if (a2)
  {
    *a2 = (a1 + 56);
  }

  v6 = *(a1 + 56);
  v4 = (a1 + 56);
  for (i = v6; i != v4; i = *i)
  {
    if (*(i - 4) == 4)
    {
      if (*(i + 10) != result)
      {
        return result;
      }

      result = (result + 1);
      if (a2)
      {
        *a2 = i;
      }
    }
  }

  return result;
}

uint64_t mlx5::FlowRule::cmdRemoveNode(mlx5::FlowRule *this)
{
  v2 = this;
  do
  {
    v3 = v2;
    v2 = *(v2 + 2);
  }

  while (v2);
  if (*(v3 + 2))
  {
    IOLog("mlx5: flow steering node %s is not in tree\n", *(v3 + 6));
    v4 = 0;
  }

  else
  {
    v4 = *(v3 + 11);
  }

  v5 = *(this + 2);
  v6 = *(v5 + 16);
  result = memcpy(__dst, (v5 + 88), sizeof(__dst));
  v8 = *(v6 + 16);
  v10 = *(this + 3);
  v9 = *(this + 4);
  *(v10 + 8) = v9;
  *v9 = v10;
  v11 = *(v5 + 56) - 1;
  *(v5 + 56) = v11;
  if (v11)
  {
    result = DriverKit_AppleEthernetMLX5_IVars::setFte(v4, *(v8 + 96), (v5 + 601), __dst, *(v8 + 100), *(v8 + 92), *(v5 + 64), *(v6 + 600), *(v5 + 60), *(v5 + 600), v11, (v5 + 72));
    if (result)
    {
      return IOLog("mlx5: %s can't delete dst %s\n", "cmdRemoveNode", *(this + 6));
    }
  }

  return result;
}

uint64_t mlx5::FTEntry::cmdRemoveNode(mlx5::FTEntry *this)
{
  v2 = *(this + 2);
  v3 = *(v2 + 16);
  v4 = this;
  do
  {
    v5 = v4;
    v4 = *(v4 + 2);
  }

  while (v4);
  if (*(v5 + 2))
  {
    IOLog("mlx5: flow steering node %s is not in tree\n", *(v5 + 6));
    v6 = 0;
  }

  else
  {
    v6 = *(v5 + 11);
  }

  result = DriverKit_AppleEthernetMLX5_IVars::deleteFte(v6, *(v3 + 96), this + 601, *(v3 + 100), *(v3 + 92), *(this + 16));
  if (result != -536870185 && result != 0)
  {
    result = IOLog("mlx5: flow steering can't delete fte %s\n", *(this + 6));
  }

  --*(v2 + 596);
  return result;
}

uint64_t mlx5::FlowGroup::addDest(mlx5::FlowGroup *this, unsigned __int8 *a2, uint64_t a3, uint64_t a4, mlx5::FlowDestination *a5)
{
  v10 = 0;
  for (i = *(this + 7); i != (this + 56); i = *i)
  {
    if (*(i - 4) == 4)
    {
      if (*(this + 72))
      {
        v6 = 0;
        while (((*(i + v6 + 64) ^ a2[v6]) & *(this + v6 + 73)) == 0)
        {
          if (++v6 == 64)
          {
            goto LABEL_7;
          }
        }
      }

      else
      {
LABEL_7:
        if ((*(this + 72) & 2) != 0)
        {
          v7 = 0;
          while (((*(i + v7 + 128) ^ a2[v7 + 64]) & *(this + v7 + 137)) == 0)
          {
            if (++v7 == 64)
            {
              goto LABEL_11;
            }
          }
        }

        else
        {
LABEL_11:
          if ((*(this + 72) & 4) != 0)
          {
            v8 = 0;
            while (((*(i + v8 + 192) ^ a2[v8 + 128]) & *(this + v8 + 201)) == 0)
            {
              if (++v8 == 64)
              {
                goto LABEL_15;
              }
            }
          }

          else
          {
LABEL_15:
            if (*(i + 576) == a3 && *(i + 9) == a4)
            {
              mlx5::FTEntry::addDest();
            }
          }
        }
      }
    }
  }

  if (*(this + 149) != *(this + 148))
  {
    mlx5::FTEntry::create(this, a2, a3, a4, &v10);
  }

  return 0;
}

uint64_t mlx5::FlowTable::addDest(mlx5::FlowTable *this, int a2, unsigned __int8 *a3, unsigned __int8 *a4, uint64_t a5, uint64_t a6, mlx5::FlowDestination *a7)
{
  v15 = this + 56;
  v14 = *(this + 7);
  ++*(this + 11);
  while (v14 != v15)
  {
    if (*(v14 - 4) == 3 && v14[48] == a2 && !memcmp(v14 + 49, a3, 0x200uLL))
    {
      v18 = mlx5::FlowGroup::addDest((v14 - 24), a4, a5, a6, a7);
      mlx5::FSBase::release(this);
      return v18;
    }

    v14 = *v14;
  }

  Autogroup = mlx5::FlowTable::createAutogroup(this, a2, a3);
  if (Autogroup)
  {
    v17 = Autogroup;
    v18 = mlx5::FlowGroup::addDest(Autogroup, a4, a5, a6, a7);
    mlx5::FSBase::release(this);
    if (!v18)
    {
      ++*(v17 + 11);
      mlx5::FSBase::removeNode(v17);
    }
  }

  else
  {
    mlx5::FSBase::release(this);
    return 0;
  }

  return v18;
}

mlx5::FSBase *mlx5::FlowRule::del(mlx5::FlowRule *this)
{
  if (gMLX5DebugFlags)
  {
    IOLog("mlx5:%s:%d FlowRule::del(%p parent=%s)\n", "del", 1276, this, *(*(this + 2) + 48));
  }

  return mlx5::FSBase::removeNode(this);
}

uint64_t mlx5::FlowNamespace::init(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 56) = this + 56;
  *(this + 64) = this + 56;
  return this;
}

void mlx5::FlowRootNamespace::create(uint64_t a1, int a2, const char *a3)
{
  if (gMLX5DebugFlags)
  {
    IOLog("mlx5:%s:%d FlowRootNamespace::create(%x, %s)\n", "create", 1311, a2, a3);
  }

  operator new();
}

uint64_t mlx5::FlowRootNamespace::initRootTree(uint64_t a1, int a2, uint64_t a3, mlx5::FlowNamespace *a4, uint64_t a5)
{
  if (!*a3)
  {
    v16 = *(a3 + 8);
    mlx5::FlowNamespace::create();
  }

  if (*a3 != 1)
  {
    return 3758096385;
  }

  if (*(a3 + 52) <= a2)
  {
    v5 = *(a3 + 32);
    if (!v5)
    {
      goto LABEL_14;
    }

    v6 = a1 + 28984;
    v7 = *(a3 + 40);
    v8 = *v7 + 31;
    if (*v7 >= 0)
    {
      v8 = *v7;
    }

    if ((bswap32(*(v6 + 4 * (v8 >> 5))) >> ~*v7))
    {
      v9 = 1;
      do
      {
        v10 = v9;
        if (v5 == v9)
        {
          break;
        }

        v11 = v7[v9];
        v12 = v11 + 31;
        if (v11 >= 0)
        {
          v12 = v7[v10];
        }

        v13 = ~v11;
        v9 = v10 + 1;
      }

      while (((bswap32(*(v6 + 4 * (v12 >> 5))) >> v13) & 1) != 0);
      if (v5 <= v10)
      {
LABEL_14:
        v14 = (a3 - *(a5 + 16)) >> 6;
        v15 = *(a3 + 48);
        mlx5::FlowNamespace::createPrio(a4, v14, *(a3 + 60), *(a3 + 8));
      }
    }
  }

  return 0;
}

uint64_t mlx5::FlowRootNamespace::initRootTree(uint64_t a1, int a2, uint64_t a3, mlx5::FlowNamespace *a4)
{
  if (*(a3 + 24) < 1)
  {
    return 0;
  }

  v8 = 0;
  v9 = 0;
  while (1)
  {
    result = mlx5::FlowRootNamespace::initRootTree(a1, a2, *(a3 + 16) + v8, a4, a3);
    if (result)
    {
      break;
    }

    ++v9;
    v8 += 64;
    if (v9 >= *(a3 + 24))
    {
      return 0;
    }
  }

  return result;
}

uint64_t mlx5::FlowRootNamespace::sumMaxFT(mlx5::FlowRootNamespace *this, mlx5::FlowNamespace *a2)
{
  v2 = (this + 56);
  v3 = *(this + 7);
  if (v3 == (this + 56))
  {
    return 0;
  }

  v4 = 0;
  do
  {
    if (*(v3 - 4) == 1)
    {
      v4 = mlx5::FlowRootNamespace::sumMaxFT(v3 - 24, a2) + v4;
    }

    v3 = *v3;
  }

  while (v3 != v2);
  return v4;
}

uint64_t mlx5::FlowRootNamespace::sumMaxFT(uint64_t a1, mlx5::FSPrio *a2)
{
  v2 = *(a1 + 72);
  if (!v2)
  {
    v4 = (a1 + 56);
    v5 = *(a1 + 56);
    if (v5 == (a1 + 56))
    {
      v2 = 0;
    }

    else
    {
      v2 = 0;
      do
      {
        if (!*(v5 - 4))
        {
          v6 = v5[4];
          if (v6 == v5 + 4)
          {
            v7 = 0;
          }

          else
          {
            v7 = 0;
            do
            {
              if (*(v6 - 4) == 1)
              {
                v7 += mlx5::FlowRootNamespace::sumMaxFT((v6 - 3), a2);
              }

              v6 = *v6;
            }

            while (v6 != v5 + 4);
          }

          v2 = (v7 + v2);
        }

        v5 = *v5;
      }

      while (v5 != v4);
    }

    *(a1 + 72) = v2;
  }

  return v2;
}

mlx5::FSBase *DriverKit_AppleEthernetMLX5_IVars::cleanupRootNS(DriverKit_AppleEthernetMLX5_IVars *this)
{
  result = *(this + 14404);
  if (result)
  {
    v3 = *(result + 7);
    if (v3 != (result + 56))
    {
      do
      {
        if (*(v3 - 4) == 1)
        {
          v4 = v3[4];
          if (v4 != v3 + 4)
          {
            do
            {
              if (!*(v4 - 4))
              {
                v6 = v4 + 4;
                for (i = v4[4]; i != v6; i = *v6)
                {
                  mlx5::FSBase::removeNode((i - 3));
                }
              }

              v4 = *v4;
            }

            while (v4 != v3 + 4);
            result = *(this + 14404);
          }
        }

        v3 = *v3;
      }

      while (v3 != (result + 56));
      v3 = *(result + 7);
    }

    if (v3 != (result + 56))
    {
      do
      {
        if (*(v3 - 4) == 1)
        {
          v8 = v3 + 4;
          v7 = v3[4];
          if (v7 != v3 + 4)
          {
            do
            {
              mlx5::FSBase::removeNode((v7 - 3));
              v7 = *v8;
            }

            while (*v8 != v8);
            result = *(this + 14404);
          }
        }

        v3 = *v3;
      }

      while (v3 != (result + 56));
      v3 = *(result + 7);
    }

    v9 = (result + 56);
    while (v3 != v9)
    {
      mlx5::FSBase::removeNode((v3 - 3));
      result = *(this + 14404);
      v9 = (result + 56);
      v3 = *(result + 7);
    }

    result = mlx5::FSBase::removeNode(result);
    *(this + 14404) = 0;
  }

  return result;
}

mlx5::FSBase *DriverKit_AppleEthernetMLX5_IVars::cleanupFS(DriverKit_AppleEthernetMLX5_IVars *this)
{
  result = DriverKit_AppleEthernetMLX5_IVars::cleanupRootNS(this);
  *(this + 14405) = 0;
  return result;
}

uint64_t DriverKit_AppleEthernetMLX5_IVars::initFS(DriverKit_AppleEthernetMLX5_IVars *this)
{
  if ((*(this + 364) & 2) != 0)
  {
    DriverKit_AppleEthernetMLX5_IVars::initRootNS(this);
  }

  v2 = *(this + 14404);
  if (v2)
  {
    v5 = *(v2 + 56);
    v3 = v2 + 56;
    for (i = v5; ; i = *i)
    {
      if (i == v3)
      {
        v2 = 0;
        goto LABEL_11;
      }

      if (*(i - 4) == 1 && *(i + 15) == 1)
      {
        break;
      }
    }

    v2 = i[4] - 24;
  }

LABEL_11:
  result = 0;
  *(this + 14405) = v2;
  return result;
}

uint64_t DriverKit_AppleEthernetMLX5_IVars::getFlowNamespace(uint64_t a1, int a2)
{
  if (a2 == 1)
  {
    v2 = *(a1 + 115232);
    if (v2)
    {
      v5 = *(v2 + 56);
      v3 = (v2 + 56);
      for (i = v5; i != v3; i = *i)
      {
        if (*(i - 4) == 1 && *(i + 15) == 1)
        {
          return i[4] - 24;
        }
      }
    }
  }

  return 0;
}

void mlx5::FlowRule::~FlowRule(mlx5::FlowRule *this)
{
  *this = off_1000243F8;
  if (*(this + 6))
  {
    operator delete();
  }
}

{
  *this = off_1000243F8;
  if (*(this + 6))
  {
    operator delete();
  }

  operator delete();
}

void mlx5::FTEntry::~FTEntry(mlx5::FTEntry *this)
{
  *this = off_1000243F8;
  if (*(this + 6))
  {
    operator delete();
  }
}

{
  *this = off_1000243F8;
  if (*(this + 6))
  {
    operator delete();
  }

  operator delete();
}

void mlx5::FlowTable::~FlowTable(mlx5::FlowTable *this)
{
  *this = off_1000243F8;
  if (*(this + 6))
  {
    operator delete();
  }
}

{
  *this = off_1000243F8;
  if (*(this + 6))
  {
    operator delete();
  }

  operator delete();
}

void mlx5::FlowGroup::~FlowGroup(mlx5::FlowGroup *this)
{
  *this = off_1000243F8;
  if (*(this + 6))
  {
    operator delete();
  }
}

{
  *this = off_1000243F8;
  if (*(this + 6))
  {
    operator delete();
  }

  operator delete();
}

void mlx5::FSPrio::~FSPrio(mlx5::FSPrio *this)
{
  *this = off_1000243F8;
  if (*(this + 6))
  {
    operator delete();
  }
}

{
  *this = off_1000243F8;
  if (*(this + 6))
  {
    operator delete();
  }

  operator delete();
}

void mlx5::FlowRootNamespace::~FlowRootNamespace(mlx5::FlowRootNamespace *this)
{
  *this = off_1000243F8;
  if (*(this + 6))
  {
    operator delete();
  }
}

{
  *this = off_1000243F8;
  if (*(this + 6))
  {
    operator delete();
  }

  operator delete();
}

void mlx5::FlowNamespace::~FlowNamespace(mlx5::FlowNamespace *this)
{
  *this = off_1000243F8;
  if (*(this + 6))
  {
    operator delete();
  }
}

{
  *this = off_1000243F8;
  if (*(this + 6))
  {
    operator delete();
  }

  operator delete();
}

void OUTLINED_FUNCTION_0()
{
  v3 = *(v0 + 1304);
  v4 = *(v1 - 17) & 0xFB;

  IOPCIDevice::ConfigurationWrite8(v3, 4uLL, v4);
}

void OUTLINED_FUNCTION_1(IOPCIDevice *a1)
{
  *(v1 - 17) = 0;

  IOPCIDevice::ConfigurationRead8(a1, 4uLL, (v1 - 17));
}

uint64_t DriverKit_AppleEthernetMLX5_IVars::allocUAR(AppleEthernetMLX5Cmd **this, unsigned int *a2)
{
  v8 = 0;
  v7 = 0;
  v6 = 520;
  result = AppleEthernetMLX5Cmd::exec(this[38], &v6, 16, v4, 16);
  if (!result)
  {
    result = AppleEthernetMLX5Cmd::statusToErr(v4);
    if (!result)
    {
      *a2 = bswap32(v5 & 0xFFFFFF00);
    }
  }

  return result;
}

uint64_t DriverKit_AppleEthernetMLX5_IVars::freeUnmapUAR(uint64_t a1, _DWORD *a2)
{
  v5 = 0;
  v4 = 776;
  HIDWORD(v5) = bswap32(*a2 & 0xFFFFFF);
  v6 = 0;
  result = AppleEthernetMLX5Cmd::exec(*(a1 + 304), &v4, 16, v3, 16);
  if (!result)
  {
    return AppleEthernetMLX5Cmd::statusToErr(v3);
  }

  return result;
}

uint64_t DriverKit_AppleEthernetMLX5_IVars::allocMapUAR(AppleEthernetMLX5Cmd **a1, unsigned int *a2)
{
  v3 = DriverKit_AppleEthernetMLX5_IVars::allocUAR(a1, a2);
  v4 = v3;
  if (v3)
  {
    IOLog("mlx5: allocMapUAR() failed, %d\n", v3);
  }

  else
  {
    *(a2 + 1) = *a2 << 14;
  }

  return v4;
}

uint64_t DriverKit_AppleEthernetMLX5_IVars::reclaimPages(AppleEthernetMLX5Cmd **this, unsigned int a2, unsigned int a3, int *a4)
{
  v15 = 0;
  v16 = 0;
  if (a4)
  {
    *a4 = 0;
  }

  v8 = (8 * a3 + 16);
  v9 = (&v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  bzero(v9, v8);
  LOWORD(v15) = 2049;
  HIWORD(v15) = 512;
  WORD1(v16) = bswap32(a2) >> 16;
  HIDWORD(v16) = bswap32(a3);
  if (gMLX5DebugFlags)
  {
    IOLog("mlx5:%s:%d npages %d, outlen %d\n", "reclaimPages", 216, a3, 8 * a3 + 16);
  }

  v10 = AppleEthernetMLX5Cmd::exec(this[38], &v15, 16, v9, 8 * a3 + 16);
  if (v10)
  {
    v11 = v10;
    IOLog("mlx5: failed to %s in %s:%d\n", "reclaim pages", "reclaimPages", 219);
  }

  else if (*v9)
  {
    return AppleEthernetMLX5Cmd::statusToErr(v9);
  }

  else
  {
    v11 = bswap32(v9[2]);
    if (a4)
    {
      *a4 = v11;
    }

    if (v11 < 1)
    {
      return 0;
    }

    else
    {
      v12 = (v9 + 4);
      do
      {
        v13 = *v12++;
        DriverKit_AppleEthernetMLX5_IVars::free4k(this, bswap64(v13));
        --v11;
      }

      while (v11);
    }
  }

  return v11;
}

uint64_t DriverKit_AppleEthernetMLX5_IVars::free4k(uint64_t this, unint64_t a2)
{
  v2 = *(this + 115304);
  if (!v2)
  {
LABEL_7:
    DriverKit_AppleEthernetMLX5_IVars::free4k();
  }

  v3 = (this + 115304);
  while (1)
  {
    v4 = *(v2 - 32);
    if (a2 >= v4)
    {
      break;
    }

    v2 += 8;
LABEL_6:
    v2 = *v2;
    if (!v2)
    {
      goto LABEL_7;
    }
  }

  if (v4 + 0x1FFFF < a2)
  {
    goto LABEL_6;
  }

  v5 = *(v2 + 40);
  if (v5 == -1)
  {
    v6 = *(this + 115312);
    *(v2 + 24) = v6;
    *(v6 + 8) = v2 + 24;
    *(v2 + 32) = this + 115312;
    *(this + 115312) = v2 + 24;
  }

  v7 = v5 & ~(1 << ((a2 - v4) >> 12));
  *(v2 + 40) = v7;
  if (!v7)
  {
    v8 = (v2 - 64);
    v10 = *(v2 + 24);
    v9 = *(v2 + 32);
    *(v10 + 8) = v9;
    *v9 = v10;
    v11 = *(v2 + 8);
    if (*v2)
    {
      if (v11)
      {
        do
        {
          v12 = v11;
          v11 = *v11;
        }

        while (v11);
        v11 = *(v12 + 8);
        v13 = *(v12 + 16);
        v14 = (v13 & 0xFFFFFFFFFFFFFFFELL);
        if (v11)
        {
          if (*(v11 + 16))
          {
            v15 = v13 | 1;
          }

          else
          {
            v15 = v13 & 0xFFFFFFFFFFFFFFFELL;
          }

          *(v11 + 16) = v15;
        }

        v16 = v3;
        if (v14)
        {
          v16 = &v14[8 * (*v14 != v12)];
        }

        v17 = v13 & 1;
        *v16 = v11;
        if (v2 == (*(v12 + 16) & 0xFFFFFFFFFFFFFFFELL))
        {
          v14 = v12;
        }

        v18 = *(v2 + 16);
        *v12 = *v2;
        *(v12 + 16) = v18;
        v19 = v3;
        if ((*(v2 + 16) & 0xFFFFFFFFFFFFFFFELL) != 0)
        {
          v19 = ((*(v2 + 16) & 0xFFFFFFFFFFFFFFFELL) + 8 * (*(*(v2 + 16) & 0xFFFFFFFFFFFFFFFELL) != v2));
        }

        *v19 = v12;
        v21 = *v2;
        v20 = *(v2 + 8);
        if (*(v21 + 16))
        {
          v22 = v12 | 1;
        }

        else
        {
          v22 = v12;
        }

        *(v21 + 16) = v22;
        if (v20)
        {
          if (*(v20 + 16))
          {
            v12 |= 1uLL;
          }

          *(v20 + 16) = v12;
        }

        if (!v17)
        {
          goto LABEL_84;
        }

        goto LABEL_155;
      }

      v14 = (*(v2 + 16) & 0xFFFFFFFFFFFFFFFELL);
      v23 = *(v2 + 16) & 1;
      v11 = *v2;
LABEL_37:
      if (*(v11 + 16))
      {
        v24 = v14 + 1;
      }

      else
      {
        v24 = v14;
      }

      *(v11 + 16) = v24;
    }

    else
    {
      v14 = (*(v2 + 16) & 0xFFFFFFFFFFFFFFFELL);
      v23 = *(v2 + 16) & 1;
      if (v11)
      {
        goto LABEL_37;
      }
    }

    v25 = v3;
    if (v14)
    {
      v25 = &v14[8 * (*v14 != v2)];
    }

    *v25 = v11;
    if (v23)
    {
      goto LABEL_155;
    }

    while (1)
    {
LABEL_84:
      v47 = v11;
      v11 = v14;
      if (v47)
      {
        v48 = *(v47 + 16);
        if (v48)
        {
          goto LABEL_154;
        }
      }

      v39 = *v3;
      if (v47 == *v3)
      {
        goto LABEL_152;
      }

      v26 = *v11;
      if (*v11 == v47)
      {
        v26 = *(v11 + 8);
        v33 = *(v26 + 16);
        if (v33)
        {
          *(v26 + 16) = v33 & 0xFFFFFFFFFFFFFFFELL;
          v34 = *(v11 + 16) | 1;
          v35 = *v26;
          *(v11 + 8) = *v26;
          *(v11 + 16) = v34;
          if (v35)
          {
            if (v35[2])
            {
              v36 = v11 | 1;
            }

            else
            {
              v36 = v11;
            }

            v35[2] = v36;
            v34 = *(v11 + 16);
          }

          *(v26 + 16) = v34 & 0xFFFFFFFFFFFFFFFELL | *(v26 + 16) & 1;
          if ((v34 & 0xFFFFFFFFFFFFFFFELL) != 0)
          {
            v37 = *(v11 + 16);
            v38 = (v37 & 0xFFFFFFFFFFFFFFFELL);
            if (v11 == *(v37 & 0xFFFFFFFFFFFFFFFELL))
            {
              *v38 = v26;
            }

            else
            {
              v38[1] = v26;
              v35 = *(v11 + 8);
            }
          }

          else
          {
            *v3 = v26;
            v37 = *(v11 + 16);
            v39 = v26;
          }

          *v26 = v11;
          if (v37)
          {
            v26 |= 1uLL;
          }

          *(v11 + 16) = v26;
          v26 = v35;
        }

        v44 = *v26;
        if (*v26)
        {
          v45 = *(v44 + 16);
          if (v45)
          {
            v46 = *(v26 + 8);
            if (!v46 || (*(v46 + 16) & 1) == 0)
            {
              *(v44 + 16) = v45 & 0xFFFFFFFFFFFFFFFELL;
              v55 = *(v26 + 16) | 1;
              *(v26 + 16) = v55;
              v56 = *(v44 + 8);
              *v26 = v56;
              if (v56)
              {
                if (*(v56 + 16))
                {
                  v57 = v26 | 1;
                }

                else
                {
                  v57 = v26;
                }

                *(v56 + 16) = v57;
                v55 = *(v26 + 16);
              }

              *(v44 + 16) = v55 & 0xFFFFFFFFFFFFFFFELL | *(v44 + 16) & 1;
              if ((v55 & 0xFFFFFFFFFFFFFFFELL) != 0)
              {
                v58 = *(v26 + 16);
                v59 = (v58 & 0xFFFFFFFFFFFFFFFELL);
                if (v26 == *(v58 & 0xFFFFFFFFFFFFFFFELL))
                {
                  *v59 = v44;
                }

                else
                {
                  v59[1] = v44;
                }
              }

              else
              {
                *v3 = v44;
                v58 = *(v26 + 16);
                v39 = v44;
              }

              *(v44 + 8) = v26;
              if (v58)
              {
                v44 |= 1uLL;
              }

              *(v26 + 16) = v44;
              v26 = *(v11 + 8);
              v46 = *(v26 + 8);
            }

LABEL_135:
            *(v26 + 16) = *(v26 + 16) & 0xFFFFFFFFFFFFFFFELL | *(v11 + 16) & 1;
            *(v11 + 16) &= ~1uLL;
            if (v46)
            {
              *(v46 + 16) &= ~1uLL;
            }

            v65 = *v26;
            *(v11 + 8) = *v26;
            if (v65)
            {
              if (v65[2])
              {
                v66 = v11 | 1;
              }

              else
              {
                v66 = v11;
              }

              v65[2] = v66;
            }

            v67 = *(v11 + 16);
            *(v26 + 16) = v67 & 0xFFFFFFFFFFFFFFFELL | *(v26 + 16) & 1;
            if ((v67 & 0xFFFFFFFFFFFFFFFELL) != 0)
            {
              v63 = *(v11 + 16);
              v68 = (v63 & 0xFFFFFFFFFFFFFFFELL);
              if (v11 == *(v63 & 0xFFFFFFFFFFFFFFFELL))
              {
                *v68 = v26;
              }

              else
              {
                v68[1] = v26;
              }

              v54 = v26;
            }

            else
            {
              *v3 = v26;
              v63 = *(v11 + 16);
              v54 = v26;
              v39 = v26;
            }

            goto LABEL_148;
          }
        }

        v46 = *(v26 + 8);
        if (v46 && (*(v46 + 16) & 1) != 0)
        {
          goto LABEL_135;
        }
      }

      else
      {
        v27 = *(v26 + 16);
        if (v27)
        {
          *(v26 + 16) = v27 & 0xFFFFFFFFFFFFFFFELL;
          v28 = *(v11 + 16) | 1;
          *(v11 + 16) = v28;
          v29 = *(v26 + 8);
          *v11 = v29;
          if (v29)
          {
            if (v29[2])
            {
              v30 = v11 | 1;
            }

            else
            {
              v30 = v11;
            }

            v29[2] = v30;
            v28 = *(v11 + 16);
          }

          *(v26 + 16) = v28 & 0xFFFFFFFFFFFFFFFELL | *(v26 + 16) & 1;
          if ((v28 & 0xFFFFFFFFFFFFFFFELL) != 0)
          {
            v31 = *(v11 + 16);
            v32 = (v31 & 0xFFFFFFFFFFFFFFFELL);
            if (v11 == *(v31 & 0xFFFFFFFFFFFFFFFELL))
            {
              *v32 = v26;
              v29 = *v11;
            }

            else
            {
              v32[1] = v26;
            }
          }

          else
          {
            *v3 = v26;
            v31 = *(v11 + 16);
            v39 = v26;
          }

          *(v26 + 8) = v11;
          if (v31)
          {
            v26 |= 1uLL;
          }

          *(v11 + 16) = v26;
          v26 = v29;
        }

        v40 = *v26;
        if (*v26)
        {
          v41 = v40[2];
          if (v41)
          {
            goto LABEL_90;
          }
        }

        v42 = *(v26 + 8);
        if (v42)
        {
          v43 = *(v42 + 16);
          if (v43)
          {
            if (!v40)
            {
              goto LABEL_93;
            }

            v41 = v40[2];
LABEL_90:
            if (v41)
            {
              v54 = v26;
            }

            else
            {
              v42 = *(v26 + 8);
              if (v42)
              {
                v43 = *(v42 + 16);
LABEL_93:
                *(v42 + 16) = v43 & 0xFFFFFFFFFFFFFFFELL;
              }

              v49 = *(v26 + 16) | 1;
              v50 = *v42;
              *(v26 + 8) = *v42;
              *(v26 + 16) = v49;
              if (v50)
              {
                if (*(v50 + 16))
                {
                  v51 = v26 | 1;
                }

                else
                {
                  v51 = v26;
                }

                *(v50 + 16) = v51;
                v49 = *(v26 + 16);
              }

              *(v42 + 16) = v49 & 0xFFFFFFFFFFFFFFFELL | *(v42 + 16) & 1;
              if ((v49 & 0xFFFFFFFFFFFFFFFELL) != 0)
              {
                v52 = *(v26 + 16);
                v53 = (v52 & 0xFFFFFFFFFFFFFFFELL);
                if (v26 == *(v52 & 0xFFFFFFFFFFFFFFFELL))
                {
                  *v53 = v42;
                }

                else
                {
                  v53[1] = v42;
                }
              }

              else
              {
                *v3 = v42;
                v52 = *(v26 + 16);
                v39 = v42;
              }

              *v42 = v26;
              if (v52)
              {
                v42 |= 1uLL;
              }

              *(v26 + 16) = v42;
              v54 = *v11;
              v40 = **v11;
            }

            *(v54 + 16) = *(v54 + 16) & 0xFFFFFFFFFFFFFFFELL | *(v11 + 16) & 1;
            *(v11 + 16) &= ~1uLL;
            if (v40)
            {
              v40[2] &= ~1uLL;
            }

            v26 = v54 + 8;
            v60 = *(v54 + 8);
            *v11 = v60;
            if (v60)
            {
              if (*(v60 + 16))
              {
                v61 = v11 | 1;
              }

              else
              {
                v61 = v11;
              }

              *(v60 + 16) = v61;
            }

            v62 = *(v11 + 16);
            *(v54 + 16) = v62 & 0xFFFFFFFFFFFFFFFELL | *(v54 + 16) & 1;
            if ((v62 & 0xFFFFFFFFFFFFFFFELL) != 0)
            {
              v63 = *(v11 + 16);
              v64 = (v63 & 0xFFFFFFFFFFFFFFFELL);
              if (v11 == *(v63 & 0xFFFFFFFFFFFFFFFELL))
              {
                *v64 = v54;
              }

              else
              {
                v64[1] = v54;
              }
            }

            else
            {
              *v3 = v54;
              v63 = *(v11 + 16);
              v39 = v54;
            }

LABEL_148:
            *v26 = v11;
            if (v63)
            {
              v69 = v54 | 1;
            }

            else
            {
              v69 = v54;
            }

            *(v11 + 16) = v69;
            v47 = v39;
LABEL_152:
            if (v47)
            {
              v48 = *(v47 + 16);
LABEL_154:
              *(v47 + 16) = v48 & 0xFFFFFFFFFFFFFFFELL;
            }

LABEL_155:
            AppleEthernetMLX5DMABuf::~AppleEthernetMLX5DMABuf(v8);

            operator delete();
          }
        }
      }

      *(v26 + 16) |= 1uLL;
      v14 = (*(v11 + 16) & 0xFFFFFFFFFFFFFFFELL);
    }
  }

  return this;
}

AppleEthernetMLX5Cmd **DriverKit_AppleEthernetMLX5_IVars::pageRequestHandler(AppleEthernetMLX5Cmd **this, uint64_t a2, signed int a3)
{
  if (a3 < 0)
  {
    this = DriverKit_AppleEthernetMLX5_IVars::reclaimPages(this, a2, -a3, 0);
    if (!this)
    {
      return this;
    }
  }

  else
  {
    if (!a3)
    {
      return this;
    }

    this = DriverKit_AppleEthernetMLX5_IVars::givePages(this, a2, a3, 1);
    if (!this)
    {
      return this;
    }
  }

  v4 = "give";
  if (a3 < 0)
  {
    v4 = "reclaim";
  }

  return IOLog("mlx5: failed to %s %d page(s)\n", v4, a3);
}

uint64_t DriverKit_AppleEthernetMLX5_IVars::givePages(AppleEthernetMLX5Cmd **this, uint64_t a2, signed int a3, int a4)
{
  v8 = 8 * a3 + 16;
  v9 = (v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21[0] = 0;
  v21[1] = 0;
  bzero(v9, v8);
  v10 = __rev16(a2);
  if (a3 >= 1)
  {
    v17[1] = a2;
    v11 = 0;
    while (1)
    {
      v19 = 0;
      v12 = DriverKit_AppleEthernetMLX5_IVars::alloc4k(this, &v19);
      if (v12)
      {
        break;
      }

      *&v9[4 * v11++ + 8] = bswap64(v19);
      if (a3 == v11)
      {
        LODWORD(v11) = a3;
        goto LABEL_7;
      }
    }

    v14 = v12;
    if (!a4)
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  LODWORD(v11) = 0;
LABEL_7:
  *v9 = 2049;
  v9[3] = 256;
  v9[5] = v10;
  *(v9 + 3) = bswap32(a3);
  v13 = AppleEthernetMLX5Cmd::exec(this[38], v9, v8, v21, 16);
  if (v13)
  {
    v14 = v13;
    IOLog("mlx5: func_id 0x%x, npages %d, err %x\n");
    goto LABEL_9;
  }

  if (!LOBYTE(v21[0]))
  {
    return 0;
  }

  v14 = AppleEthernetMLX5Cmd::statusToErr(v21);
  if (v14)
  {
    IOLog("mlx5: func_id 0x%x, npages %d, status %x\n");
LABEL_9:
    if (!a4)
    {
LABEL_14:
      if (v11 >= 1)
      {
        v15 = v11 + 1;
        do
        {
          DriverKit_AppleEthernetMLX5_IVars::free4k(this, bswap64(*&v9[4 * v15--]));
        }

        while (v15 > 1);
      }

      return v14;
    }

LABEL_12:
    v19 = 2049;
    v20 = 0;
    WORD1(v20) = v10;
    if (AppleEthernetMLX5Cmd::exec(this[38], &v19, 16, v18, 16))
    {
      IOLog("mlx5: failed to %s in %s:%d\n", "page notify", "givePages", 194);
    }

    goto LABEL_14;
  }

  return v14;
}

uint64_t DriverKit_AppleEthernetMLX5_IVars::satisfyStartupPages(AppleEthernetMLX5Cmd **this, int a2)
{
  v15 = 0;
  if (a2)
  {
    v4 = 0x1000000;
  }

  else
  {
    v4 = 0x2000000;
  }

  v14[0] = 1793;
  v14[1] = v4;
  result = AppleEthernetMLX5Cmd::exec(this[38], v14, 16, v11, 16);
  if (!result)
  {
    result = AppleEthernetMLX5Cmd::statusToErr(v11);
    if (!result)
    {
      v6 = bswap32(v13);
      v7 = bswap32(v12);
      if (gMLX5DebugFlags)
      {
        v8 = "init";
        if (a2)
        {
          v8 = "boot";
        }

        v10 = v6;
        v9 = v7;
        IOLog("mlx5:%s:%d requested %d %s pages for func_id 0x%x\n", "satisfyStartupPages", 252, v6, v8, v7);
        v7 = v9;
        v6 = v10;
      }

      return DriverKit_AppleEthernetMLX5_IVars::givePages(this, v7, v6, 0);
    }
  }

  return result;
}

uint64_t DriverKit_AppleEthernetMLX5_IVars::reclaimStartupPages(AppleEthernetMLX5Cmd **this)
{
  v2 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW) + 5000000000;
  while (1)
  {
    v3 = 1;
    v4 = this + 14413;
    do
    {
      v5 = v3;
      v4 = *v4;
      v3 = 0;
    }

    while (v4);
    if (v5)
    {
      return 0;
    }

    v11 = 0;
    v6 = DriverKit_AppleEthernetMLX5_IVars::reclaimPages(this, 0, 0x300u, &v11);
    if (v6)
    {
      break;
    }

    v7 = v11;
    v8 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
    if (v7)
    {
      v2 = v8 + 5000000000;
    }

    else if (v8 > v2)
    {
      IOLog("mlx5: FW did not return all pages.\n");
      return 0;
    }
  }

  v9 = v6;
  if (gMLX5DebugFlags)
  {
    IOLog("mlx5:%s:%d failed reclaiming pages\n", "reclaimStartupPages", 268);
  }

  return v9;
}

uint64_t DriverKit_AppleEthernetMLX5_IVars::alloc4k(DriverKit_AppleEthernetMLX5_IVars *this, unint64_t *a2)
{
  v2 = *(this + 14414);
  if (v2 == (this + 115312))
  {
    operator new();
  }

  v3 = 0;
  v4 = *(v2 + 4);
  v5 = -4096;
  do
  {
    v6 = 1 << v3++;
    v5 += 4096;
  }

  while ((v4 & v6) != 0);
  *(v2 + 4) = v4 | v6;
  if ((v4 | v6) == 0xFFFFFFFF)
  {
    v8 = *v2;
    v7 = v2[1];
    *(v8 + 8) = v7;
    *v7 = v8;
  }

  *a2 = *(v2 - 7) + v5;
  return 0;
}

uint64_t DriverKit_AppleEthernetMLX5_IVars::insertFwPage(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 115304;
  v3 = *(a1 + 115304);
  if (v3)
  {
    v4 = *(a2 + 32);
    do
    {
      v5 = v3;
      v6 = *(v3 - 4);
      v7 = v5;
      if (v6 >= v4)
      {
        if (v6 <= v4)
        {
          DriverKit_AppleEthernetMLX5_IVars::insertFwPage();
        }

        v7 = v5 + 1;
      }

      v3 = *v7;
    }

    while (*v7);
    v8 = v5 | 1;
  }

  else
  {
    v8 = 1;
    v7 = (a1 + 115304);
  }

  *(a2 + 64) = 0;
  v9 = a2 + 64;
  *(v9 + 8) = 0;
  *(v9 + 16) = v8;
  *v7 = v9;
  v10 = *(v9 + 16);
  while (1)
  {
    v11 = (v10 & 0xFFFFFFFFFFFFFFFELL);
    if ((v10 & 0xFFFFFFFFFFFFFFFELL) == 0)
    {
      break;
    }

    v12 = v11[2];
    if ((v12 & 1) == 0)
    {
      break;
    }

    v13 = (v12 & 0xFFFFFFFFFFFFFFFELL);
    v14 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
    if (v14 == v11)
    {
      v19 = v13[1];
      if (v19)
      {
        v20 = *(v19 + 16);
        if (v20)
        {
          *(v19 + 16) = v20 & 0xFFFFFFFFFFFFFFFELL;
          goto LABEL_28;
        }
      }

      v21 = v11[1];
      if (v21 == v9)
      {
        v26 = *v21;
        v11[1] = *v21;
        if (v26)
        {
          v27 = v10 | 1;
          if ((*(v26 + 16) & 1) == 0)
          {
            v27 = v11;
          }

          *(v26 + 16) = v27;
          v28 = v11[2];
        }

        else
        {
          v28 = v12;
        }

        v21[2] = v28 & 0xFFFFFFFFFFFFFFFELL | v21[2] & 1;
        if ((v28 & 0xFFFFFFFFFFFFFFFELL) != 0)
        {
          v37 = v11[2];
          v38 = (v37 & 0xFFFFFFFFFFFFFFFELL);
          if (*(v37 & 0xFFFFFFFFFFFFFFFELL) == v11)
          {
            *v38 = v21;
          }

          else
          {
            v38[1] = v21;
          }
        }

        else
        {
          *v2 = v21;
          v37 = v11[2];
        }

        *v21 = v11;
        if (v37)
        {
          v21 = (v9 | 1);
        }

        v11[2] = v21;
        v14 = *v13;
        v22 = *(v9 + 16) & 0xFFFFFFFFFFFFFFFELL;
        v18 = v11;
      }

      else
      {
        v22 = v12 & 0xFFFFFFFFFFFFFFFELL;
        v18 = v9;
        v9 = v11;
      }

      *(v9 + 16) = v22;
      v39 = v13[2] | 1;
      v13[2] = v39;
      v40 = *(v14 + 8);
      *v13 = v40;
      if (v40)
      {
        if ((*(v40 + 16) & 1) == 0)
        {
          v12 &= ~1uLL;
        }

        *(v40 + 16) = v12;
        v39 = v13[2];
      }

      *(v14 + 16) = v39 & 0xFFFFFFFFFFFFFFFELL | *(v14 + 16) & 1;
      if ((v39 & 0xFFFFFFFFFFFFFFFELL) != 0)
      {
        v41 = v13[2];
        v42 = (v41 & 0xFFFFFFFFFFFFFFFELL);
        if (*(v41 & 0xFFFFFFFFFFFFFFFELL) == v13)
        {
          *v42 = v14;
        }

        else
        {
          v42[1] = v14;
        }
      }

      else
      {
        *v2 = v14;
        v41 = v13[2];
      }

      *(v14 + 8) = v13;
      if (v41)
      {
        v36 = v14 | 1;
      }

      else
      {
        v36 = v14;
      }
    }

    else
    {
      if (v14)
      {
        v15 = *(v14 + 16);
        if (v15)
        {
          *(v14 + 16) = v15 & 0xFFFFFFFFFFFFFFFELL;
LABEL_28:
          v11[2] &= ~1uLL;
          v13[2] |= 1uLL;
          v18 = v12 & 0xFFFFFFFFFFFFFFFELL;
          goto LABEL_76;
        }
      }

      v16 = *v11;
      if (*v11 == v9)
      {
        v23 = *(v16 + 8);
        *v11 = v23;
        if (v23)
        {
          v24 = v10 | 1;
          if ((*(v23 + 16) & 1) == 0)
          {
            v24 = v11;
          }

          *(v23 + 16) = v24;
          v25 = v11[2];
        }

        else
        {
          v25 = v12;
        }

        *(v16 + 16) = v25 & 0xFFFFFFFFFFFFFFFELL | *(v16 + 16) & 1;
        if ((v25 & 0xFFFFFFFFFFFFFFFELL) != 0)
        {
          v29 = v11[2];
          v30 = (v29 & 0xFFFFFFFFFFFFFFFELL);
          if (*(v29 & 0xFFFFFFFFFFFFFFFELL) == v11)
          {
            *v30 = v16;
          }

          else
          {
            v30[1] = v16;
          }
        }

        else
        {
          *v2 = v16;
          v29 = v11[2];
        }

        *(v16 + 8) = v11;
        if (v29)
        {
          v16 = v9 | 1;
        }

        v11[2] = v16;
        v17 = *(v9 + 16) & 0xFFFFFFFFFFFFFFFELL;
        v18 = v11;
      }

      else
      {
        v17 = v12 & 0xFFFFFFFFFFFFFFFELL;
        v18 = v9;
        v9 = v10 & 0xFFFFFFFFFFFFFFFELL;
      }

      *(v9 + 16) = v17;
      v31 = v13[1];
      v32 = v13[2] | 1;
      v33 = *v31;
      v13[1] = *v31;
      v13[2] = v32;
      if (v33)
      {
        if ((*(v33 + 16) & 1) == 0)
        {
          v12 &= ~1uLL;
        }

        *(v33 + 16) = v12;
        v32 = v13[2];
      }

      *(v31 + 16) = v32 & 0xFFFFFFFFFFFFFFFELL | *(v31 + 16) & 1;
      if ((v32 & 0xFFFFFFFFFFFFFFFELL) != 0)
      {
        v34 = v13[2];
        v35 = (v34 & 0xFFFFFFFFFFFFFFFELL);
        if (*(v34 & 0xFFFFFFFFFFFFFFFELL) == v13)
        {
          *v35 = v31;
        }

        else
        {
          v35[1] = v31;
        }
      }

      else
      {
        *v2 = v31;
        v34 = v13[2];
      }

      *v31 = v13;
      if (v34)
      {
        v36 = v31 | 1;
      }

      else
      {
        v36 = v31;
      }
    }

    v13[2] = v36;
LABEL_76:
    v10 = *(v18 + 16);
    v9 = v18;
  }

  *(*v2 + 16) &= ~1uLL;
  return 0;
}

void AppleEthernetMLX5FwPage::~AppleEthernetMLX5FwPage(IODMACommand **this)
{
  AppleEthernetMLX5DMABuf::~AppleEthernetMLX5DMABuf(this);

  operator delete();
}

uint64_t DriverKit_AppleEthernetMLX5_IVars::handleCQCompletion(DriverKit_AppleEthernetMLX5_IVars *this, unsigned int a2)
{
  if (a2 > 0x3FF)
  {
    v3 = radix_tree_lookup(this + 14417, a2);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_7:
    IOLog("mlx5: Completion event for bogus CQ 0x%x\n", a2);
    return 0;
  }

  v3 = *(this + a2 + 14419);
  if (!v3)
  {
    goto LABEL_7;
  }

LABEL_3:
  ++*(v3 + 44);
  v4 = *(v3 + 24);

  return v4();
}

uint64_t DriverKit_AppleEthernetMLX5_IVars::createCQ(uint64_t a1, unsigned int *a2, _WORD *a3, int a4)
{
  *a3 = 4;
  v10 = 0;
  v11 = 0;
  result = AppleEthernetMLX5Cmd::exec(*(a1 + 304), a3, a4, &v10, 16);
  if (!result)
  {
    if (v10)
    {
      return AppleEthernetMLX5Cmd::statusToErr(&v10);
    }

    else
    {
      v7 = bswap32(v11 & 0xFFFFFF00);
      *a2 = v7;
      *(a2 + 5) = 0;
      v8 = radix_tree_insert((a1 + 115336), v7, a2);
      v9 = *a2;
      if (v8 || v9 > 0x3FF)
      {
        DriverKit_AppleEthernetMLX5_IVars::createCQ(v8 == 0, v9, a2);
        return 0;
      }

      else
      {
        result = 0;
        *(a1 + 8 * v9 + 115352) = a2;
      }
    }
  }

  return result;
}

uint64_t DriverKit_AppleEthernetMLX5_IVars::destroyCQ(uint64_t a1, unsigned int *a2)
{
  v4 = *a2;
  if (v4 < 0x400)
  {
    *(a1 + 8 * v4 + 115352) = 0;
  }

  v5 = radix_tree_delete(a1 + 115336, v4);
  if (!v5)
  {
    v7 = *a2;
    IOLog("mlx5: cq 0x%x not found in tree\n");
    return 3758096385;
  }

  if (v5 != a2)
  {
    v6 = *a2;
    IOLog("mlx5: corruption on srqn 0x%x\n");
    return 3758096385;
  }

  v11[0] = 0;
  v11[1] = 0;
  v10 = 0;
  v9 = 260;
  LODWORD(v10) = bswap32(*a2);
  result = AppleEthernetMLX5Cmd::exec(*(a1 + 304), &v9, 16, v11, 16);
  if (!result)
  {
    if (LOBYTE(v11[0]))
    {
      return AppleEthernetMLX5Cmd::statusToErr(v11);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t DriverKit_AppleEthernetMLX5_IVars::queryCQ(uint64_t a1, unsigned int *a2, _OWORD *a3)
{
  a3[4] = 0u;
  a3[5] = 0u;
  a3[2] = 0u;
  a3[3] = 0u;
  *a3 = 0u;
  a3[1] = 0u;
  v7 = 0;
  v6 = 516;
  LODWORD(v7) = bswap32(*a2);
  v4 = AppleEthernetMLX5Cmd::exec(*(a1 + 304), &v6, 16, a3, 96);
  if (!v4 && *a3)
  {
    AppleEthernetMLX5Cmd::statusToErr(a3);
  }

  return v4;
}

uint64_t DriverKit_AppleEthernetMLX5_IVars::modifyCQ(uint64_t a1, _WORD *a2, int a3)
{
  v4[0] = 0;
  v4[1] = 0;
  *a2 = 772;
  result = AppleEthernetMLX5Cmd::exec(*(a1 + 304), a2, a3, v4, 16);
  if (!result)
  {
    if (LOBYTE(v4[0]))
    {
      return AppleEthernetMLX5Cmd::statusToErr(v4);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t DriverKit_AppleEthernetMLX5_IVars::modifyCQModeration(uint64_t a1, unsigned int *a2, unsigned int a3, unsigned int a4)
{
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v7 = 0u;
  memset(v6, 0, sizeof(v6));
  v4 = bswap32(*a2);
  LOWORD(v7) = __rev16(a3);
  WORD1(v7) = __rev16(a4);
  *(&v6[0] + 1) = v4 | 0x300000000000000;
  return DriverKit_AppleEthernetMLX5_IVars::modifyCQ(a1, v6, 272);
}

uint64_t DriverKit_AppleEthernetMLX5_IVars::modifyCQModerationMode(uint64_t a1, unsigned int *a2, unsigned int a3, unsigned int a4, char a5)
{
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v7 = 0u;
  v5 = bswap32(*a2);
  LOWORD(v9) = __rev16(a3);
  WORD1(v9) = __rev16(a4);
  BYTE1(v8) = (a5 & 2) != 0;
  BYTE2(v8) = a5 << 7;
  *(&v7 + 1) = v5 | 0x130000000000;
  return DriverKit_AppleEthernetMLX5_IVars::modifyCQ(a1, &v7, 272);
}

uint64_t DriverKit_AppleEthernetMLX5_IVars::createWQCyc(DriverKit_AppleEthernetMLX5_IVars *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a2 + 32);
  *(a3 + 18) = BYTE1(v4) & 0xF;
  *(a3 + 16) = ~(-1 << SHIBYTE(v4));
  v5 = DriverKit_AppleEthernetMLX5_IVars::allocDB(a1, (a4 + 8));
  if (!v5)
  {
    operator new();
  }

  return v5;
}

uint64_t DriverKit_AppleEthernetMLX5_IVars::createCQWQ(DriverKit_AppleEthernetMLX5_IVars *a1, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  *(a3 + 25) = (*a2 >> 13) + 6;
  v4 = a2[3];
  *(a3 + 24) = v4 & 0x1F;
  *(a3 + 16) = ~(-1 << v4);
  v5 = DriverKit_AppleEthernetMLX5_IVars::allocDB(a1, (a4 + 8));
  if (!v5)
  {
    operator new();
  }

  return v5;
}

uint64_t DriverKit_AppleEthernetMLX5_IVars::createWQLL(DriverKit_AppleEthernetMLX5_IVars *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a2 + 32);
  *(a3 + 22) = BYTE1(v4) & 0xF;
  *(a3 + 16) = ~(-1 << SHIBYTE(v4));
  result = DriverKit_AppleEthernetMLX5_IVars::allocDB(a1, (a4 + 8));
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t DriverKit_AppleEthernetMLX5_IVars::destroyWQ(DriverKit_AppleEthernetMLX5_IVars *a1, uint64_t a2)
{
  DriverKit_AppleEthernetMLX5_IVars::freeDB(a1, (a2 + 8));
  result = *a2;
  if (*a2)
  {
    result = (*(*result + 8))(result);
  }

  *a2 = 0;
  return result;
}

void AppleEthernetMLX5DMABuf::AppleEthernetMLX5DMABuf(AppleEthernetMLX5DMABuf *this, uint64_t a2, const char *a3, void *a4)
{
  *this = off_100024558;
  *(this + 3) = a2;
  *(this + 6) = a3;
  *(this + 7) = a4;
  v7 = IOBufferMemoryDescriptor::Create(3uLL, (a2 + 0x3FFF) & 0xFFFFFFFFFFFFC000, 0x4000uLL, this + 1);
  if (v7)
  {
    AppleEthernetMLX5DMABuf::AppleEthernetMLX5DMABuf(a2, v7);
  }

  if (IOBufferMemoryDescriptor::GetAddressRange(*(this + 1), &range))
  {
    AppleEthernetMLX5DMABuf::AppleEthernetMLX5DMABuf();
  }

  *(this + 5) = range.address;
  memset(specification._resv, 0, sizeof(specification._resv));
  specification.options = 0;
  specification.maxAddressBits = 64;
  if (IODMACommand::Create(MLX5_pciDev, 0, &specification, this + 2))
  {
    AppleEthernetMLX5DMABuf::AppleEthernetMLX5DMABuf();
  }

  segmentsCount = 1;
  flags = 0;
  if (IODMACommand::PrepareForDMA(*(this + 2), 0, *(this + 1), 0, 0, &flags, &segmentsCount, &range, 0))
  {
    AppleEthernetMLX5DMABuf::AppleEthernetMLX5DMABuf();
  }

  address = range.address;
  *(this + 4) = range.address;
  if ((gMLX5DebugFlags & 4) != 0)
  {
    IOLog("mlx5: DMABuf(%s) (%p) at (va=0x%llx, dma=0x%llx) size=0x%llx\n", a3, this, *(this + 5), address, a2);
  }
}

void AppleEthernetMLX5DMABuf::~AppleEthernetMLX5DMABuf(IODMACommand **this)
{
  *this = off_100024558;
  if ((gMLX5DebugFlags & 4) != 0)
  {
    AppleEthernetMLX5DMABuf::~AppleEthernetMLX5DMABuf(this);
  }

  IODMACommand::CompleteDMA(this[2], 0, 0);
  v2 = this[2];
  if (v2)
  {
    (v2->release)(v2);
    this[2] = 0;
  }

  v3 = this[1];
  if (v3)
  {
    (v3->release)(v3);
    this[1] = 0;
  }
}

{
  AppleEthernetMLX5DMABuf::~AppleEthernetMLX5DMABuf(this);

  operator delete();
}

uint64_t AppleEthernetMLX5DMABuf::fillPageArray(uint64_t this, unint64_t *a2)
{
  v2 = *(this + 24) + 0x3FFFLL;
  if ((v2 >> 14) >= 1)
  {
    v3 = 0;
    v4 = (v2 >> 14) & 0x7FFFFFFF;
    do
    {
      *a2++ = bswap64(v3 + *(this + 32));
      v3 += 0x4000;
      --v4;
    }

    while (v4);
  }

  return this;
}

BOOL DriverKit_AppleEthernetMLX5_IVars::allocDBFromPgDir(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = a2[10];
  v4 = __clz(__rbit64(v3));
  if (v4 <= 0x3F)
  {
    a2[10] = v3 & ~(1 << v4);
    *(a3 + 24) = v4;
    v5 = a2[4];
    v6 = (a2[5] + (v4 << 6));
    *a3 = v6;
    *(a3 + 8) = a2;
    *(a3 + 16) = v5 + (v4 << 6);
    *v6 = 0;
  }

  return v4 < 0x40;
}

uint64_t DriverKit_AppleEthernetMLX5_IVars::allocDB(DriverKit_AppleEthernetMLX5_IVars *this, DB *a2)
{
  v2 = (this + 123568);
  do
  {
    v2 = *v2;
    if (v2 == (this + 123568))
    {
      DriverKit_AppleEthernetMLX5_IVars::allocDBPgDir(this);
    }

    v3 = v2[2];
    v4 = __clz(__rbit64(v3));
  }

  while (v4 > 0x3F);
  v2[2] = v3 & ~(1 << v4);
  LODWORD(a2->get) = v4;
  v5 = v4 << 6;
  v6 = (*(v2 - 3) + (v4 << 6));
  *&a2->type = v6;
  a2->close = (v2 - 8);
  a2->del = (*(v2 - 4) + v5);
  *v6 = 0;
  return 0;
}

void DriverKit_AppleEthernetMLX5_IVars::freeDB(DriverKit_AppleEthernetMLX5_IVars *this, DB *a2)
{
  close = a2->close;
  if (close)
  {
    *(close + SLODWORD(a2->get) / 64 + 10) |= 1 << LODWORD(a2->get);
    if (!*(close + 10))
    {
      v5 = close + 64;
      v3 = *(close + 8);
      v4 = *(v5 + 1);
      *(v3 + 8) = v4;
      *v4 = v3;
      v6 = a2->close;
      if (v6)
      {
        AppleEthernetMLX5DMABuf::~AppleEthernetMLX5DMABuf(v6);
        operator delete();
      }

      a2->close = 0;
    }
  }
}

void AppleEthernetMLX5DBPgDir::~AppleEthernetMLX5DBPgDir(IODMACommand **this)
{
  AppleEthernetMLX5DMABuf::~AppleEthernetMLX5DMABuf(this);

  operator delete();
}

uint64_t DriverKit_AppleEthernetMLX5_IVars::queryBoardId(DriverKit_AppleEthernetMLX5_IVars *this)
{
  v7 = 0;
  v6 = 0;
  v5 = 257;
  result = AppleEthernetMLX5Cmd::exec(*(this + 38), &v5, 16, v3, 272);
  if (!result)
  {
    result = AppleEthernetMLX5Cmd::statusToErr(v3);
    if (!result)
    {
      *(this + 164) = v4;
      IOLog("Mellanox board id: %s\n", this + 164);
      return 0;
    }
  }

  return result;
}

uint64_t DriverKit_AppleEthernetMLX5_IVars::queryHCACaps(DriverKit_AppleEthernetMLX5_IVars *this)
{
  result = DriverKit_AppleEthernetMLX5_IVars::getCaps(this, 0);
  if (!result)
  {
    if ((*(this + 379) & 8) == 0 || (result = DriverKit_AppleEthernetMLX5_IVars::getCaps(this, 1u), !result))
    {
      if ((*(this + 380) & 1) == 0 || (result = DriverKit_AppleEthernetMLX5_IVars::getCaps(this, 2u), !result))
      {
        v3 = *(this + 94);
        if ((v3 & 0x2000000) != 0)
        {
          result = DriverKit_AppleEthernetMLX5_IVars::getCaps(this, 3u);
          if (result)
          {
            return result;
          }

          v3 = *(this + 94);
        }

        if ((v3 & 0x4000000) == 0 || (result = DriverKit_AppleEthernetMLX5_IVars::getCaps(this, 4u), !result))
        {
          v4 = *(this + 91);
          if ((v4 & 0x30002) == 0x10002)
          {
            result = DriverKit_AppleEthernetMLX5_IVars::getCaps(this, 7u);
            if (result)
            {
              return result;
            }

            v4 = *(this + 91);
          }

          if (v4)
          {
            result = DriverKit_AppleEthernetMLX5_IVars::getCaps(this, 8u);
            if (result)
            {
              return result;
            }

            v4 = *(this + 91);
          }

          if ((v4 & 0x80) == 0 || (result = DriverKit_AppleEthernetMLX5_IVars::getCaps(this, 9u), !result))
          {
            if ((*(this + 368) & 0x80) == 0 || (result = DriverKit_AppleEthernetMLX5_IVars::getCaps(this, 0xAu), !result))
            {
              if ((*(this + 360) & 0x10) == 0 || (result = DriverKit_AppleEthernetMLX5_IVars::getCaps(this, 0xDu), !result))
              {
                if ((*(this + 379) & 0x10) == 0 || (result = DriverKit_AppleEthernetMLX5_IVars::getCaps(this, 0xCu), !result))
                {
                  if ((*(this + 357) & 1) == 0 || (result = DriverKit_AppleEthernetMLX5_IVars::queryQCAMReg(this, this + 28788, 0, 0), !result))
                  {
                    v5 = *(this + 91);
                    if ((v5 & 0x4000) != 0)
                    {
                      result = DriverKit_AppleEthernetMLX5_IVars::queryMCAMReg(this, this + 28770, 0, 0);
                      if (result)
                      {
                        return result;
                      }

                      v5 = *(this + 91);
                    }

                    if ((v5 & 0x2000) == 0 || (result = DriverKit_AppleEthernetMLX5_IVars::queryPCAMReg(this, this + 28750, 0, 0), !result))
                    {
                      v10 = 0;
                      v9 = 0;
                      v8 = 770;
                      result = AppleEthernetMLX5Cmd::exec(*(this + 38), &v8, 16, v6, 16);
                      if (!result)
                      {
                        result = AppleEthernetMLX5Cmd::statusToErr(v6);
                        if (!result)
                        {
                          *(this + 28807) = bswap32(v7);
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
    }
  }

  return result;
}

uint64_t DriverKit_AppleEthernetMLX5_IVars::initHCA(AppleEthernetMLX5Cmd **this)
{
  v5 = 0;
  v4 = 0;
  v3 = 513;
  result = AppleEthernetMLX5Cmd::exec(this[38], &v3, 16, v2, 16);
  if (!result)
  {
    return AppleEthernetMLX5Cmd::statusToErr(v2);
  }

  return result;
}

uint64_t DriverKit_AppleEthernetMLX5_IVars::teardownHCA(AppleEthernetMLX5Cmd **this)
{
  v5 = 0;
  v4 = 0;
  v3 = 769;
  return AppleEthernetMLX5Cmd::exec(this[38], &v3, 16, &v2, 16);
}

void DriverKit_AppleEthernetMLX5_IVars::pollHealth(DriverKit_AppleEthernetMLX5_IVars *this)
{
  if (*(this + 40) == 1)
  {
    v9 = v1;
    v10 = v2;
    readData = 0;
    IOPCIDevice::MemoryRead32(MLX5_pciDev, 0, 0x1010uLL, &readData);
    v4 = readData;
    if (readData == -1 && (v7 = 0, IOPCIDevice::MemoryRead32(MLX5_pciDev, 0, 0, &v7), v7 == -1))
    {
      IOLog("mlx5: device removed!!!\n");
    }

    else
    {
      v5 = bswap32(v4);
      if (v5 == *(this + 28833))
      {
        v6 = *(this + 28832) + 1;
        *(this + 28832) = v6;
        if (v6 == 3)
        {
          IOLog("mlx5: device's health compromised\n");
          IOService::Terminate(*this, 0, 0);
        }
      }

      else
      {
        *(this + 28832) = 0;
        *(this + 28833) = v5;
      }
    }
  }
}

void DriverKit_AppleEthernetMLX5_NetIf_IVars::sendNOP(uint64_t a1, uint64_t a2, int a3)
{
  v3 = (*(a2 + 440) & *(a2 + 128));
  v4 = *(a2 + 424) + (v3 << *(a2 + 442));
  *v4 = 0;
  *(v4 + 8) = 0;
  v5 = *(a2 + 128);
  v6 = bswap32(a3 | (*(a2 + 464) << 8));
  *v4 = (bswap32(v5) >> 8) & 0xFFFF00;
  *(v4 + 4) = v6;
  v7 = *(a2 + 384) + 16 * v3;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 12) = (a3 + 3) >> 2;
  *(a2 + 128) = v5 + ((a3 + 3) >> 2);
}

uint64_t DriverKit_AppleEthernetMLX5_NetIf_IVars::enqueueTxPackets(uint64_t a1, unsigned __int16 *a2)
{
  *(a2 + 416) = 0;
  if (!a2[220])
  {
    return 0;
  }

  v3 = 0;
  v4 = 0;
  result = 0;
  v6 = *a2;
  do
  {
    v7 = *(a2 + 81);
    v8 = *(a2 + 38) + ((*(a2 + 80) & v7) << *(a2 + 329));
    if (((v7 >> *(a2 + 328)) ^ *(v8 + 63)))
    {
      break;
    }

    __dmb(1u);
    ++*(a2 + 81);
    v9 = bswap32(*(v8 + 60)) >> 16;
    v10 = *(a2 + 48);
    v11 = v6;
    do
    {
      v12 = (a2[220] & v11);
      v13 = *(v10 + 16 * v12);
      *(v10 + 16 * v12) = 0;
      if (v13)
      {
        v14 = *(a2 + 49);
        callback[0] = _NSConcreteStackBlock;
        callback[1] = 0x40000000;
        callback[2] = ___ZL15enqueueTxPacketP25IODataQueueDispatchSourceP24IOUserNetworkPacketStateRj_block_invoke;
        callback[3] = &__block_descriptor_tmp_1;
        callback[4] = v13;
        sendDataAvailable = 0;
        *(v13 + 72) = 0;
        v15 = IODataQueueDispatchSource::EnqueueWithCoalesce(v14, 0x68u, &sendDataAvailable, callback);
        if (v15)
        {
          if (gMLX5DebugFlags)
          {
            IOLog("mlx5:%s:%d EnqueueWithCoalesce returned %x\n", "enqueuePacket", 49, v15);
          }

          result = 1;
        }

        else
        {
          result = 0x10000;
        }

        ++v4;
        v10 = *(a2 + 48);
      }

      ++v3;
      v6 = v11 + *(v10 + 16 * v12 + 12);
      v16 = v9 == v11;
      v11 = v6;
    }

    while (!v16);
  }

  while (v4 < a2[220]);
  if (v3)
  {
    **(a2 + 39) = bswap32(*(a2 + 81) & 0xFFFFFF);
    __dmb(2u);
    *a2 = v6;
  }

  return result;
}

uint64_t DriverKit_AppleEthernetMLX5_NetIf_IVars::dequeueTxPackets(uint64_t a1, unsigned __int16 *a2)
{
  memset(v38, 0, 512);
  v2 = -1 << (*(a1 + 38392) - 2);
  __dmb(9u);
  v3 = *a2 - a2[64];
  if (!v3)
  {
    LOWORD(v3) = -4;
  }

  v4 = (v3 & a2[220]) >> 2;
  if ((v4 & ~v2) == 0)
  {
    return 0;
  }

  v6 = (*(**(a2 + 50) + 104))(*(a2 + 50), v38, v4 & ~v2);
  if (!v6)
  {
    return 0;
  }

  v37 = ~v2;
  do
  {
    v7 = 0;
    v8 = v6;
    v9 = a2[64];
    do
    {
      v10 = a2[220];
      v11 = *a2;
      if (v11 != v9 && ((v11 - v9) & v10) <= 0x1F)
      {
        DriverKit_AppleEthernetMLX5_NetIf_IVars::dequeueTxPackets();
      }

      v13 = v10 & ~v9;
      if (v13 <= 0xE)
      {
        DriverKit_AppleEthernetMLX5_NetIf_IVars::sendNOP(v6, a2, (4 * v13 + 4) & 0xFFFC);
        v9 = a2[64];
        v10 = a2[220];
      }

      v14 = v10 & v9;
      v15 = *(a2 + 53) + (v14 << *(a2 + 442));
      *v15 = 0u;
      *(v15 + 16) = 0u;
      v16 = *(*(v38 + v7) + 48);
      v17 = *(a2 + 48);
      *(v17 + 16 * v14) = v16 + 8;
      v18 = *(v16 + 72);
      v19 = *(v16 + 76);
      v20 = *(v16 + 16) + v19;
      v21 = *(v16 + 82);
      v22 = v17 + 16 * v14;
      if ((v21 & 0x300000) != 0)
      {
        *(v15 + 20) = -64;
        v23 = *(v16 + 94);
        *(v15 + 22) = __rev16(v23);
        v24 = *(v20 + 12);
        if (v24 == 56710)
        {
          if (*(v20 + 20) == 6)
          {
            v25 = 54;
            goto LABEL_23;
          }
        }

        else if (v24 == 8 && *(v20 + 23) == 6)
        {
          v25 = 4 * (*(v20 + 14) & 0xF) + 14;
LABEL_23:
          v27 = v25 + ((*(v20 + v25 + 12) >> 2) & 0x3C);
          goto LABEL_25;
        }

        v27 = 0;
LABEL_25:
        v28 = v18 - v27;
        *(v22 + 8) = v18 - v27 + (v23 + v18 - v27 - 1) / v23 * v27;
        if (v27)
        {
          v29 = 14;
        }

        else
        {
          v29 = 16777230;
        }

        goto LABEL_35;
      }

      if ((v21 & 4) != 0)
      {
        *(v15 + 20) = 64;
        v26 = -64;
      }

      else
      {
        v26 = 0x80;
      }

      if ((v21 & 0x78) != 0)
      {
        *(v15 + 20) = v26;
      }

      if (v18 <= 0x3C)
      {
        v30 = 60;
      }

      else
      {
        v30 = v18;
      }

      *(v22 + 8) = v30;
      v28 = v18 - 16;
      v29 = 10;
      v27 = 16;
LABEL_35:
      *v15 = bswap32(v29 | (a2[64] << 8));
      v6 = memcpy((v15 + 30), v20, v27);
      *(v15 + 28) = bswap32(v27) >> 16;
      v31 = ((v27 + 13) >> 4) + 2;
      if (v27 <= 2u)
      {
        v31 = 2;
      }

      v32 = v15 + 16 * v31;
      *(v32 + 8) = bswap64(v19 + v27 + *(v16 + 24));
      v33 = *(a2 + 117);
      *v32 = bswap32(v28);
      *(v32 + 4) = v33;
      LODWORD(v32) = ((v32 - v15 + 16) >> 4);
      *(v15 + 4) = bswap32(v32 | (*(a2 + 116) << 8));
      LODWORD(v32) = v32 + 3;
      *(*(a2 + 48) + 16 * v14 + 12) = v32 >> 2;
      v9 = a2[64] + (v32 >> 2);
      a2[64] = v9;
      ++v7;
    }

    while (v8 != v7);
    __dmb(9u);
    v34 = *a2 - a2[64];
    if (!v34)
    {
      LOWORD(v34) = -4;
    }

    v35 = (v34 & a2[220]);
    if ((v37 & (v35 >> 2)) == 0)
    {
LABEL_43:
      *(v15 + 11) = 8;
      __dmb(0xEu);
      __dmb(2u);
      **(a2 + 54) = bswap32(a2[64]);
      __dmb(0xEu);
      __dmb(2u);
      IOPCIDevice::MemoryWrite64(MLX5_pciDev, 0, *(a2 + 57) + 2048, *v15);
      return 1;
    }

    v6 = (*(**(a2 + 50) + 104))(*(a2 + 50), v38, v37 & (v35 >> 2));
  }

  while (v6);
  if (v15)
  {
    goto LABEL_43;
  }

  return 0;
}

void DriverKit_AppleEthernetMLX5_NetIf_IVars::drainSQ(uint64_t a1, unsigned __int16 *a2)
{
  v3 = *a2;
  v4 = v3;
  if (v3 != a2[64])
  {
    while (1)
    {
      readData[0] = 0;
      IOPCIDevice::MemoryRead32(MLX5_pciDev, 0, 0, readData);
      if (readData[0] == -1)
      {
        break;
      }

      if ((gMLX5DebugFlags & 4) != 0)
      {
        IOLog("mlx5: drainSQ phase 1: sq.pc %d, sq.pc %d\n", *a2, a2[64]);
      }

      IOSleep(1uLL);
      (*(a2 + 35))(a2 + 128);
      v3 = *a2;
      if (v3 == a2[64])
      {
        v4 = *a2;
        goto LABEL_8;
      }
    }

    v4 = *a2;
    v3 = a2[64];
  }

LABEL_8:
  if ((gMLX5DebugFlags & 4) != 0)
  {
    IOLog("mlx5: drainSQ phase 2: sq.pc %d, sq.pc %d\n", v4, v3);
    v4 = *a2;
    v3 = a2[64];
  }

  if (v4 != v3)
  {
    do
    {
      v5 = *(a2 + 48) + 16 * (a2[220] & v4);
      LOWORD(v4) = v4 + *(v5 + 12);
      *a2 = v4;
      v6 = *v5;
      if (*v5)
      {
        if ((gMLX5DebugFlags & 4) != 0)
        {
          IOLog("mlx5: drainSQ sq.cc=%d dma=0x%llx\n", v4, *(v6 + 8) + *(v6 + 68));
          v6 = *v5;
        }

        v8.ivars = (v6 - 8);
        *readData = 0;
        IOUserNetworkPacket::GetPacketBufferPool(&v8, readData);
        (*(**readData + 64))(*readData, &v8);
        LOWORD(v4) = *a2;
        LOWORD(v3) = a2[64];
      }
    }

    while (v4 != v3);
  }
}

mlx5::FSBase *DriverKit_AppleEthernetMLX5_NetIf_IVars::delEthAddrFromFlowTable(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  if ((v3 & 0x80) != 0)
  {
    result = mlx5::FlowRule::del(*(a2 + 72));
    v3 = *(a2 + 8);
    if ((v3 & 0x40) == 0)
    {
LABEL_3:
      if ((v3 & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((v3 & 0x40) == 0)
  {
    goto LABEL_3;
  }

  result = mlx5::FlowRule::del(*(a2 + 64));
  v3 = *(a2 + 8);
  if ((v3 & 0x20) == 0)
  {
LABEL_4:
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  result = mlx5::FlowRule::del(*(a2 + 56));
  v3 = *(a2 + 8);
  if ((v3 & 0x10) == 0)
  {
LABEL_5:
    if ((v3 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  result = mlx5::FlowRule::del(*(a2 + 48));
  v3 = *(a2 + 8);
  if ((v3 & 2) == 0)
  {
LABEL_6:
    if ((v3 & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  result = mlx5::FlowRule::del(*(a2 + 24));
  v3 = *(a2 + 8);
  if ((v3 & 1) == 0)
  {
LABEL_7:
    if ((v3 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  result = mlx5::FlowRule::del(*(a2 + 16));
  v3 = *(a2 + 8);
  if ((v3 & 8) == 0)
  {
LABEL_8:
    if ((v3 & 4) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  result = mlx5::FlowRule::del(*(a2 + 40));
  v3 = *(a2 + 8);
  if ((v3 & 4) == 0)
  {
LABEL_9:
    if ((v3 & 0x200) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_22;
  }

LABEL_21:
  result = mlx5::FlowRule::del(*(a2 + 32));
  v3 = *(a2 + 8);
  if ((v3 & 0x200) == 0)
  {
LABEL_10:
    if ((v3 & 0x100) == 0)
    {
      goto LABEL_11;
    }

LABEL_23:
    result = mlx5::FlowRule::del(*(a2 + 80));
    if ((*(a2 + 8) & 0x400) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_22:
  result = mlx5::FlowRule::del(*(a2 + 88));
  v3 = *(a2 + 8);
  if ((v3 & 0x100) != 0)
  {
    goto LABEL_23;
  }

LABEL_11:
  if ((v3 & 0x400) != 0)
  {
LABEL_12:
    result = mlx5::FlowRule::del(*(a2 + 96));
  }

LABEL_13:
  *(a2 + 8) = 0;
  return result;
}

void DriverKit_AppleEthernetMLX5_NetIf_IVars::addEthAddrRuleSub(uint64_t a1, unsigned __int8 *a2, int a3, uint64_t a4, unsigned __int8 *a5, uint64_t a6, uint64_t a7, mlx5::FlowDestination *a8)
{
  v9 = *(*(a1 + 16) + 115280);
  v14 = 2;
  if (a3 == 1)
  {
    v12 = 1;
    *(a4 + 8) = 1;
    a5[8] = 1;
    goto LABEL_7;
  }

  if (a3)
  {
    v12 = 0;
    goto LABEL_7;
  }

  *(a4 + 12) = -1;
  *(a4 + 8) = -1;
  v10 = *a2;
  *(a5 + 6) = *(a2 + 2);
  *(a5 + 2) = v10;
  v11 = *a2;
  if ((v11 & 1) == 0)
  {
    v12 = 1;
    goto LABEL_7;
  }

  if (v11 == 51)
  {
    if (a2[1] == 51)
    {
      *(a4 + 4) |= 0xFFFF0000;
      v15 = *(a1 + 604);
      *(a5 + 3) = -8826;
      mlx5::FlowRule::add(v9, 1, a4, a5, 4, 16777214, &v14, a8);
    }
  }

  else if (v11 == 1)
  {
    v13 = a2[1];
    v12 = 1;
    if (!a2[1] && a2[2] == 94 && (a2[3] & 0x80000000) == 0)
    {
      *(a4 + 4) |= 0xFFFF0000;
      v15 = *(a1 + 600);
      *(a5 + 3) = 8;
      mlx5::FlowRule::add(v9, 1, a4, a5, 4, 16777214, &v14, a8);
    }

LABEL_7:
    v15 = *(a1 + 608);
    mlx5::FlowRule::add(v9, v12, a4, a5, 4, 16777214, &v14, a8);
  }

  v12 = 1;
  goto LABEL_7;
}

void DriverKit_AppleEthernetMLX5_NetIf_IVars::addEthAddrRule(uint64_t a1, unsigned __int8 *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, mlx5::FlowDestination *a8)
{
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  *v9 = 0u;
  v10 = 0u;
  memset(v8, 0, sizeof(v8));
  DriverKit_AppleEthernetMLX5_NetIf_IVars::addEthAddrRuleSub(a1, a2, a3, v8, v9, a6, a7, a8);
}

uint64_t DriverKit_AppleEthernetMLX5_NetIf_IVars::vportContextUpdateVlans(DriverKit_AppleEthernetMLX5_NetIf_IVars *this)
{
  v2 = 0;
  v3 = this + 5080;
  v4 = (this + 5080);
  v5 = (this + 5080);
  while (!*v5)
  {
    ++v5;
    v2 -= 64;
    if (v2 == -4096)
    {
      goto LABEL_22;
    }
  }

  if (-v2 <= 0xFFF)
  {
    v6 = 0;
    v7 = __clz(__rbit64(*v5)) - v2;
    while (1)
    {
      ++v6;
      if (v7 == 4095)
      {
        goto LABEL_23;
      }

      v8 = (v7 + 1) >> 6;
      v9 = v8 << 6;
      v10 = &v3[8 * v8];
      if (((v7 + 1) & 0x3F) == 0)
      {
        break;
      }

      v11 = *v10 & ~(0xFFFFFFFFFFFFFFFFLL >> -((v7 + 1) & 0x3F));
      if (!v11)
      {
        if (v7 > 0xFBE)
        {
          goto LABEL_23;
        }

        v13 = v9 + 64;
        ++v10;
        v12 = 4032;
        goto LABEL_14;
      }

      v7 = v9 | __clz(__rbit64(v11));
LABEL_20:
      if (v7 >= 0x1000)
      {
        goto LABEL_23;
      }
    }

    v12 = 4096;
    v13 = v9;
LABEL_14:
    v14 = -v13;
    v15 = -(v12 - v9);
    while (!*v10)
    {
      ++v10;
      v14 -= 64;
      v15 += 64;
      if (!v15)
      {
        v16 = -v14;
        goto LABEL_19;
      }
    }

    v16 = __clz(__rbit64(*v10)) - v14;
LABEL_19:
    v7 = v16;
    goto LABEL_20;
  }

LABEL_22:
  v6 = 0;
LABEL_23:
  v17 = 1 << BYTE1(*(*(this + 2) + 436));
  if (v6 > v17)
  {
    v18 = v17;
    IOLog("mlx5: ifnet vlans list size (%lu) > (%lu) max vport list size, some vlans will be dropped\n", v6, v17);
    v6 = v18;
  }

  bzero(&v33 - ((2 * v6 + 15) & 0xFFFFFFFFFFFFFFF0), 2 * v6);
  v19 = 0;
  while (!*v4)
  {
    ++v4;
    v19 -= 64;
    if (v19 == -4096)
    {
      return DriverKit_AppleEthernetMLX5_IVars::modifyNicVPortVlans(*(this + 2), (&v33 - ((2 * v6 + 15) & 0xFFFFFFFFFFFFFFF0)), v6);
    }
  }

  if (-v19 <= 0xFFF && v6)
  {
    v20 = 0;
    v21 = __clz(__rbit64(*v4)) - v19;
    while (1)
    {
      *(&v33 + 2 * v20 - ((2 * v6 + 15) & 0xFFFFFFFFFFFFFFF0)) = v21;
      if (v21 > 0xFFE)
      {
        return DriverKit_AppleEthernetMLX5_IVars::modifyNicVPortVlans(*(this + 2), (&v33 - ((2 * v6 + 15) & 0xFFFFFFFFFFFFFFF0)), v6);
      }

      v22 = (v21 + 1) >> 6;
      v23 = v22 << 6;
      v24 = &v3[8 * v22];
      if (((v21 + 1) & 0x3F) == 0)
      {
        break;
      }

      v25 = *v24 & ~(0xFFFFFFFFFFFFFFFFLL >> -((v21 + 1) & 0x3F));
      if (!v25)
      {
        if (v21 > 0xFBE)
        {
          return DriverKit_AppleEthernetMLX5_IVars::modifyNicVPortVlans(*(this + 2), (&v33 - ((2 * v6 + 15) & 0xFFFFFFFFFFFFFFF0)), v6);
        }

        v27 = v23 + 64;
        ++v24;
        v26 = 4032;
        goto LABEL_39;
      }

      v21 = v23 | __clz(__rbit64(v25));
LABEL_45:
      ++v20;
      if (v21 > 0xFFF || v20 >= v6)
      {
        return DriverKit_AppleEthernetMLX5_IVars::modifyNicVPortVlans(*(this + 2), (&v33 - ((2 * v6 + 15) & 0xFFFFFFFFFFFFFFF0)), v6);
      }
    }

    v26 = 4096;
    v27 = v23;
LABEL_39:
    v28 = -v27;
    v29 = -(v26 - v23);
    while (!*v24)
    {
      ++v24;
      v28 -= 64;
      v29 += 64;
      if (!v29)
      {
        v30 = -v28;
        goto LABEL_44;
      }
    }

    v30 = __clz(__rbit64(*v24)) - v28;
LABEL_44:
    v21 = v30;
    goto LABEL_45;
  }

  return DriverKit_AppleEthernetMLX5_IVars::modifyNicVPortVlans(*(this + 2), (&v33 - ((2 * v6 + 15) & 0xFFFFFFFFFFFFFFF0)), v6);
}

void DriverKit_AppleEthernetMLX5_NetIf_IVars::addVlanRuleSub(DriverKit_AppleEthernetMLX5_NetIf_IVars *a1, int a2, __int16 a3, uint64_t a4, unsigned __int8 *a5, uint64_t a6, uint64_t a7, mlx5::FlowDestination *a8)
{
  v10 = *(a1 + 2) + 114688;
  v11 = *(*(a1 + 2) + 115256);
  v13 = 1;
  v14 = *(v10 + 592);
  if (a2 == 2)
  {
    *(a4 + 16) |= 0x400000u;
    v12 = *(a5 + 4) | 0x400000;
  }

  else
  {
    if (a2 != 1)
    {
      *(a4 + 16) |= 0x800000u;
      if (a2)
      {
        *(a5 + 4) |= 0x800000u;
        *(a4 + 12) |= 0xFF0F0000;
        *(a5 + 3) = *(a5 + 3) & 0xF0FFFF | bswap32(a3 & 0xFFF);
        DriverKit_AppleEthernetMLX5_NetIf_IVars::vportContextUpdateVlans(a1);
      }

LABEL_9:
      mlx5::FlowRule::add(v11, 1, a4, a5, 4, 16777214, &v13, a8);
    }

    *(a4 + 16) |= 0x800000u;
    v12 = *(a5 + 4) | 0x800000;
  }

  *(a5 + 4) = v12;
  goto LABEL_9;
}

void DriverKit_AppleEthernetMLX5_NetIf_IVars::addVlanRule(DriverKit_AppleEthernetMLX5_NetIf_IVars *a1, int a2, __int16 a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, mlx5::FlowDestination *a8)
{
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  *v9 = 0u;
  v10 = 0u;
  memset(v8, 0, sizeof(v8));
  DriverKit_AppleEthernetMLX5_NetIf_IVars::addVlanRuleSub(a1, a2, a3, v8, v9, a6, a7, a8);
}

mlx5::FSBase *DriverKit_AppleEthernetMLX5_NetIf_IVars::delVlanRule(mlx5::FSBase *this, int a2, unsigned int a3)
{
  v3 = (this + 36864);
  if (a2 > 1)
  {
    if (a2 == 2)
    {
      this = *(this + 4797);
      if (this)
      {
        this = mlx5::FlowRule::del(this);
        v3[189] = 0;
      }
    }

    else if (a2 == 3)
    {
      v5 = this;
      v6 = this + 5592;
      v7 = *(this + a3 + 699);
      if (v7)
      {
        mlx5::FlowRule::del(v7);
        *&v6[8 * a3] = 0;
      }

      return DriverKit_AppleEthernetMLX5_NetIf_IVars::vportContextUpdateVlans(v5);
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      this = *(this + 4796);
      if (this)
      {
        this = mlx5::FlowRule::del(this);
        v3[188] = 0;
      }
    }
  }

  else
  {
    this = *(this + 4795);
    if (this)
    {
      this = mlx5::FlowRule::del(this);
      v3[187] = 0;
    }
  }

  return this;
}

mlx5::FSBase *DriverKit_AppleEthernetMLX5_NetIf_IVars::delAnyVidRules(DriverKit_AppleEthernetMLX5_NetIf_IVars *this)
{
  v1 = this + 36864;
  v2 = *(this + 4796);
  if (v2)
  {
    mlx5::FlowRule::del(v2);
    *(v1 + 188) = 0;
  }

  result = *(v1 + 189);
  if (result)
  {
    result = mlx5::FlowRule::del(result);
    *(v1 + 189) = 0;
  }

  return result;
}

void DriverKit_AppleEthernetMLX5_NetIf_IVars::addAnyVidRules(DriverKit_AppleEthernetMLX5_NetIf_IVars *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, mlx5::FlowDestination *a8)
{
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  *v9 = 0u;
  v10 = 0u;
  memset(v8, 0, sizeof(v8));
  DriverKit_AppleEthernetMLX5_NetIf_IVars::addVlanRuleSub(this, 1, 0, v8, v9, a6, a7, a8);
}

void DriverKit_AppleEthernetMLX5_NetIf_IVars::addAllVlanRules(DriverKit_AppleEthernetMLX5_NetIf_IVars *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, mlx5::FlowDestination *a8)
{
  v8 = 0;
  v9 = 5080;
  while (1)
  {
    v10 = *(this + v9);
    if (v10)
    {
      break;
    }

    v8 -= 64;
    v9 += 8;
    if (v8 == -4096)
    {
      goto LABEL_7;
    }
  }

  if (-v8 <= 0xFFF)
  {
    v75 = 0u;
    v76 = 0u;
    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    *v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    DriverKit_AppleEthernetMLX5_NetIf_IVars::addVlanRuleSub(this, 3, __clz(__rbit64(v10)) - v8, &v13, v45, a6, a7, a8);
  }

LABEL_7:
  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  *v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = *(this + 2) + 114688;
  v12 = *(*(this + 2) + 115256);
  v77 = 1;
  v78 = *(v11 + 592);
  LODWORD(v14) = 0x800000;
  mlx5::FlowRule::add(v12, 1, &v13, v45, 4, 16777214, &v77, a8);
}

mlx5::FSBase *DriverKit_AppleEthernetMLX5_NetIf_IVars::delAllVlanRules(DriverKit_AppleEthernetMLX5_NetIf_IVars *this)
{
  v2 = this + 36864;
  if (*(this + 38384) == 1)
  {
    DriverKit_AppleEthernetMLX5_NetIf_IVars::delAnyVidRules(this);
  }

  result = *(v2 + 187);
  if (result)
  {
    result = mlx5::FlowRule::del(result);
    *(v2 + 187) = 0;
  }

  v4 = 0;
  for (i = 5080; ; i += 8)
  {
    v6 = *(this + i);
    if (v6)
    {
      break;
    }

    v4 -= 64;
    if (v4 == -4096)
    {
      return result;
    }
  }

  if (-v4 <= 0xFFF)
  {
    v7 = __clz(__rbit64(v6)) - v4;
    v8 = this + 5592;
    while (1)
    {
      v9 = *&v8[8 * v7];
      if (v9)
      {
        mlx5::FlowRule::del(v9);
        *&v8[8 * v7] = 0;
      }

      result = DriverKit_AppleEthernetMLX5_NetIf_IVars::vportContextUpdateVlans(this);
      if (v7 == 4095)
      {
        return result;
      }

      v10 = (v7 + 1) >> 6;
      v11 = v10 << 6;
      v12 = (this + 8 * v10 + 5080);
      if (((v7 + 1) & 0x3F) == 0)
      {
        break;
      }

      v13 = *v12 & ~(0xFFFFFFFFFFFFFFFFLL >> -((v7 + 1) & 0x3F));
      if (!v13)
      {
        if (v7 > 0xFBE)
        {
          return result;
        }

        v15 = v11 + 64;
        ++v12;
        v14 = 4032;
        goto LABEL_20;
      }

      v7 = v11 | __clz(__rbit64(v13));
LABEL_26:
      if (v7 >= 0x1000)
      {
        return result;
      }
    }

    v14 = 4096;
    v15 = v11;
LABEL_20:
    v16 = (v14 - v11);
    v17 = -v15;
    v18 = -v16;
    while (!*v12)
    {
      ++v12;
      v17 -= 64;
      v18 += 64;
      if (!v18)
      {
        v19 = -v17;
        goto LABEL_25;
      }
    }

    v19 = __clz(__rbit64(*v12)) - v17;
LABEL_25:
    v7 = v19;
    goto LABEL_26;
  }

  return result;
}

uint64_t DriverKit_AppleEthernetMLX5_NetIf_IVars::executeAction(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, mlx5::FlowDestination *a8)
{
  v9 = *(a2 + 16);
  if (v9 == 2)
  {
    v10 = *(a2 + 32);
    DriverKit_AppleEthernetMLX5_NetIf_IVars::delEthAddrFromFlowTable(result, (a2 + 3));
    v11 = *(a2 + 24);
    if ((v11 & 1) == 0)
    {
      if (gMLX5DebugFlags)
      {
        IOLog("mlx5:%s:%d removing HW mac %02x:%02x:%02x:%02x:%02x:%02x at ix %d\n", "executeAction", 534, v11, *(a2 + 25), *(a2 + 26), *(a2 + 27), *(a2 + 28), *(a2 + 29), v10);
      }

      v12 = *a2;
      v13 = a2[1];
      if (*a2)
      {
        *(v12 + 8) = v13;
      }

      *v13 = v12;
      operator delete();
    }

    v14 = *a2;
    v15 = a2[1];
    if (*a2)
    {
      *(v14 + 8) = v15;
    }

    *v15 = v14;

    operator delete();
  }

  if (v9 == 1)
  {
    *(a2 + 32) = -1;
    v48 = 0u;
    v47 = 0u;
    v46 = 0u;
    v45 = 0u;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    *v17 = 0u;
    v18 = 0u;
    memset(v16, 0, sizeof(v16));
    DriverKit_AppleEthernetMLX5_NetIf_IVars::addEthAddrRuleSub(result, a2 + 24, 0, v16, v17, a6, a7, a8);
  }

  return result;
}

uint64_t DriverKit_AppleEthernetMLX5_NetIf_IVars::syncIfAddr(DriverKit_AppleEthernetMLX5_NetIf_IVars *this)
{
  v2 = this + 36864;
  result = addEthAddrToHash(this + 664, this + 544);
  if (*(v2 + 398))
  {
    v4 = 0;
    v5 = 0;
    do
    {
      if (gMLX5DebugFlags)
      {
        DriverKit_AppleEthernetMLX5_NetIf_IVars::syncIfAddr(v2 + 198, v4);
      }

      result = addEthAddrToHash(this + 2712, *(v2 + 198) + v4);
      ++v5;
      v4 += 6;
    }

    while (v5 < *(v2 + 398));
  }

  return result;
}

uint64_t addEthAddrToHash(uint64_t result, uint64_t a2)
{
  v2 = (result + 8 * *(a2 + 5));
  do
  {
    v2 = *v2;
    if (!v2)
    {
      operator new();
    }
  }

  while (*(v2 + 6) != *a2 || *(v2 + 14) != *(a2 + 4));
  if (*(v2 + 16) == 2)
  {
    *(v2 + 16) = 0;
  }

  return result;
}

uint64_t DriverKit_AppleEthernetMLX5_NetIf_IVars::fillAddrArray(uint64_t result, int a2, uint64_t a3, int a4)
{
  v4 = 2712;
  if (!a2)
  {
    v4 = 664;
  }

  v5 = result + v4;
  if (a2)
  {
    if (*(result + 5072) != 1)
    {
      v7 = 0;
      goto LABEL_9;
    }

    v6 = -1;
    *(a3 + 4) = -1;
  }

  else
  {
    v6 = *(result + 544);
    *(a3 + 4) = *(result + 548);
  }

  *a3 = v6;
  v7 = 1;
LABEL_9:
  for (i = 0; i != 256; ++i)
  {
    v9 = *(v5 + 8 * i);
    while (v9)
    {
      v10 = v9;
      v11 = *(v9 + 14);
      v9 = *v9;
      v13 = *(v10 + 6);
      v12 = (v10 + 3);
      if (*(result + 544) != v13 || *(result + 548) != v11)
      {
        if (v7 >= a4)
        {
          break;
        }

        v15 = a3 + 6 * v7;
        v16 = *v12;
        ++v7;
        *(v15 + 4) = *(v12 + 2);
        *v15 = v16;
      }
    }
  }

  return result;
}

uint64_t DriverKit_AppleEthernetMLX5_NetIf_IVars::vPortContextUpdateAddrList(uint64_t a1, int a2)
{
  if (a2)
  {
    v4 = *(a1 + 5072);
    v5 = 16;
    v6 = 2712;
  }

  else
  {
    v4 = 0;
    v5 = 24;
    v6 = 664;
  }

  v7 = 0;
  v8 = *(a1 + 16);
  v9 = (*(v8 + 436) >> v5) & 0x1F;
  v10 = a1 + v6;
  do
  {
    v11 = (v10 + 8 * v7);
    --v4;
    do
    {
      v11 = *v11;
      ++v4;
    }

    while (v11);
    ++v7;
  }

  while (v7 != 256);
  v12 = 1 << v9;
  if (v4 <= 1 << v9)
  {
    if (!v4)
    {
      result = DriverKit_AppleEthernetMLX5_IVars::modifyNicVPortMacList(v8, a2, 0, 0);
      goto LABEL_14;
    }
  }

  else
  {
    v13 = "MC";
    if (!a2)
    {
      v13 = "UC";
    }

    IOLog("mlx5: ifp %s list size (%d) > (%d) max vport list size, some addresses will be dropped\n", v13, v4, v12);
    v4 = v12;
  }

  bzero(&v16 - ((6 * v4 + 15) & 0xFFFFFFFF0), (6 * v4));
  DriverKit_AppleEthernetMLX5_NetIf_IVars::fillAddrArray(a1, a2, &v16 - ((6 * v4 + 15) & 0xFFFFFFFF0), v4);
  result = DriverKit_AppleEthernetMLX5_IVars::modifyNicVPortMacList(*(a1 + 16), a2, &v16 - ((6 * v4 + 15) & 0xFFFFFFFF0), v4);
LABEL_14:
  if (result != -536870185 && result)
  {
    v15 = "MC";
    if (!a2)
    {
      v15 = "UC";
    }

    return IOLog("mlx5: failed to modify vport %s list err(%x)\n", v15, result);
  }

  return result;
}

uint64_t DriverKit_AppleEthernetMLX5_NetIf_IVars::vPortContextUpdate(DriverKit_AppleEthernetMLX5_NetIf_IVars *this)
{
  v2 = this + 4096;
  DriverKit_AppleEthernetMLX5_NetIf_IVars::vPortContextUpdateAddrList(this, 0);
  DriverKit_AppleEthernetMLX5_NetIf_IVars::vPortContextUpdateAddrList(this, 1);
  v3 = *(this + 2);
  v4 = v2[977];
  v5 = v2[978];

  return DriverKit_AppleEthernetMLX5_IVars::modifyNicVPortPromisc(v3, 0, v4, v5);
}

uint64_t DriverKit_AppleEthernetMLX5_NetIf_IVars::applyIfAddr(uint64_t this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, mlx5::FlowDestination *a8)
{
  v8 = this;
  v9 = 0;
  v10 = this + 664;
  do
  {
    v11 = *(v10 + 8 * v9);
    if (v11)
    {
      do
      {
        v12 = *v11;
        this = DriverKit_AppleEthernetMLX5_NetIf_IVars::executeAction(v8, v11, a3, a4, a5, a6, a7, a8);
        v11 = v12;
      }

      while (v12);
    }

    ++v9;
  }

  while (v9 != 256);
  for (i = 0; i != 256; ++i)
  {
    v14 = *(v8 + 2712 + 8 * i);
    if (v14)
    {
      do
      {
        v15 = *v14;
        this = DriverKit_AppleEthernetMLX5_NetIf_IVars::executeAction(v8, v14, a3, a4, a5, a6, a7, a8);
        v14 = v15;
      }

      while (v15);
    }
  }

  return this;
}

uint64_t DriverKit_AppleEthernetMLX5_NetIf_IVars::handleIfAddr(DriverKit_AppleEthernetMLX5_NetIf_IVars *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, mlx5::FlowDestination *a8)
{
  for (i = 0; i != 256; ++i)
  {
    v10 = *(this + i + 83);
    if (v10)
    {
      do
      {
        v11 = *v10;
        *(v10 + 16) = 2;
        v10 = v11;
      }

      while (v11);
    }
  }

  for (j = 0; j != 256; ++j)
  {
    v13 = *(this + j + 339);
    if (v13)
    {
      do
      {
        v14 = *v13;
        *(v13 + 16) = 2;
        v13 = v14;
      }

      while (v14);
    }
  }

  if (a2)
  {
    DriverKit_AppleEthernetMLX5_NetIf_IVars::syncIfAddr(this);
  }

  return DriverKit_AppleEthernetMLX5_NetIf_IVars::applyIfAddr(this, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t DriverKit_AppleEthernetMLX5_NetIf_IVars::setRxMode(DriverKit_AppleEthernetMLX5_NetIf_IVars *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, mlx5::FlowDestination *a8)
{
  v8 = a2;
  v10 = 0;
  v11 = this + 38384;
  v12 = this + 5072;
  v13 = *(this + 5074);
  v14 = a2 ^ 1;
  if (((a2 ^ 1) & 1) == 0 && (v13 & 1) == 0)
  {
    v10 = HIBYTE(*(this + 19223)) & 1;
  }

  if (*(this + 5074))
  {
    v15 = a2 == 0;
  }

  else
  {
    v15 = 1;
  }

  if (!v15)
  {
    v13 = (*(this + 19223) & 0x100) == 0;
  }

  v16 = *(this + 5073);
  if ((v14 | v16))
  {
    v17 = 0;
  }

  else
  {
    v17 = (*(this + 19223) >> 9) & 1;
  }

  if (*(this + 5073))
  {
    v18 = a2 == 0;
  }

  else
  {
    v18 = 1;
  }

  if (!v18)
  {
    v16 = (*(this + 19223) & 0x200) == 0;
  }

  v19 = *v12;
  *(this + 1190) = -1;
  *(this + 2382) = -1;
  if (v10)
  {
    v85 = 0u;
    v86 = 0u;
    v83 = 0u;
    v84 = 0u;
    v81 = 0u;
    v82 = 0u;
    v79 = 0u;
    v80 = 0u;
    v77 = 0u;
    v78 = 0u;
    v75 = 0u;
    v76 = 0u;
    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    *v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    DriverKit_AppleEthernetMLX5_NetIf_IVars::addEthAddrRuleSub(this, this + 4968, 2, &v23, v55, a6, a7, a8);
  }

  if (v17)
  {
    v85 = 0u;
    v86 = 0u;
    v83 = 0u;
    v84 = 0u;
    v81 = 0u;
    v82 = 0u;
    v79 = 0u;
    v80 = 0u;
    v77 = 0u;
    v78 = 0u;
    v75 = 0u;
    v76 = 0u;
    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    *v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    DriverKit_AppleEthernetMLX5_NetIf_IVars::addEthAddrRuleSub(this, this + 4864, 1, &v23, v55, a6, a7, a8);
  }

  v20 = v14 & v19;
  if ((a2 & ~v19) != 0)
  {
    v85 = 0u;
    v86 = 0u;
    v83 = 0u;
    v84 = 0u;
    v81 = 0u;
    v82 = 0u;
    v79 = 0u;
    v80 = 0u;
    v77 = 0u;
    v78 = 0u;
    v75 = 0u;
    v76 = 0u;
    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    *v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    DriverKit_AppleEthernetMLX5_NetIf_IVars::addEthAddrRuleSub(this, this + 4760, 0, &v23, v55, a6, a7, a8);
  }

  v21 = DriverKit_AppleEthernetMLX5_NetIf_IVars::handleIfAddr(this, a2, a3, a4, a5, a6, a7, a8);
  if (!v20)
  {
    if (!v16)
    {
      goto LABEL_25;
    }

LABEL_28:
    v21 = DriverKit_AppleEthernetMLX5_NetIf_IVars::delEthAddrFromFlowTable(v21, this + 4864);
    if (!v13)
    {
      goto LABEL_32;
    }

    goto LABEL_29;
  }

  v21 = DriverKit_AppleEthernetMLX5_NetIf_IVars::delEthAddrFromFlowTable(v21, this + 4760);
  if (v16)
  {
    goto LABEL_28;
  }

LABEL_25:
  if (!v13)
  {
    goto LABEL_32;
  }

LABEL_29:
  if ((*v11 & 1) == 0)
  {
    v21 = DriverKit_AppleEthernetMLX5_NetIf_IVars::delAnyVidRules(this);
  }

  DriverKit_AppleEthernetMLX5_NetIf_IVars::delEthAddrFromFlowTable(v21, this + 4968);
LABEL_32:
  v12[2] = v8;
  v12[1] = v8;
  *v12 = v8;
  return DriverKit_AppleEthernetMLX5_NetIf_IVars::vPortContextUpdate(this);
}

void DriverKit_AppleEthernetMLX5_IVars::destroyGroups(uint64_t a1, unsigned int *a2)
{
  v3 = *a2;
  if (v3 >= 1)
  {
    v4 = v3 - 1;
    do
    {
      v5 = *(*(a2 + 2) + 8 * v4);
      if (v5)
      {
        mlx5::FlowGroup::destroy(v5);
        *(*(a2 + 2) + 8 * v4) = 0;
      }

      v6 = v4-- + 1;
    }

    while (v6 > 1);
  }

  *a2 = 0;
}

mlx5::FlowTable *DriverKit_AppleEthernetMLX5_IVars::destroyFlowTable(uint64_t a1, uint64_t a2)
{
  DriverKit_AppleEthernetMLX5_IVars::destroyGroups(a1, a2);
  if (*(a2 + 16))
  {
    operator delete[]();
  }

  *(a2 + 16) = 0;
  result = *(a2 + 8);
  if (result)
  {
    result = mlx5::FlowTable::destroy(result);
  }

  *(a2 + 8) = 0;
  return result;
}

uint64_t DriverKit_AppleEthernetMLX5_NetIf_IVars::createTtcFlowTable(DriverKit_AppleEthernetMLX5_NetIf_IVars *this)
{
  FlowTable = mlx5::FlowNamespace::createFlowTable(*(*(this + 2) + 115240), 0, 0xBu, "ttc");
  *(this + 78) = FlowTable;
  if (FlowTable)
  {
    return 0;
  }

  else
  {
    return 3758097084;
  }
}

uint64_t DriverKit_AppleEthernetMLX5_IVars::createL2Groups(uint64_t a1, mlx5::FlowTable **a2)
{
  v3 = 3758097084;
  bzero(v25, 0x400uLL);
  v29 = -65536;
  v32 = 255;
  v33 = -65536;
  v28 = 0x1000000;
  v27 = 251658240;
  FlowGroup = mlx5::FlowTable::createFlowGroup(a2[1], v25);
  v5 = *a2;
  *(a2[2] + v5) = FlowGroup;
  if (*(a2[2] + v5))
  {
    *a2 = v5 + 1;
    bzero(v25, 0x400uLL);
    v28 = 0x1000000;
    v29 = -65536;
    v32 = 255;
    v26 = 0x10000000;
    v27 = 385875968;
    v6 = mlx5::FlowTable::createFlowGroup(a2[1], v25);
    v7 = *a2;
    *(a2[2] + v7) = v6;
    if (*(a2[2] + v7))
    {
      *a2 = v7 + 1;
      bzero(v25, 0x400uLL);
      v28 = 0x1000000;
      v29 = -65536;
      v26 = 402653184;
      v27 = 419430400;
      v8 = mlx5::FlowTable::createFlowGroup(a2[1], v25);
      v9 = *a2;
      *(a2[2] + v9) = v8;
      if (*(a2[2] + v9))
      {
        *a2 = v9 + 1;
        bzero(v25, 0x400uLL);
        v26 = 436207616;
        v27 = 436207616;
        v10 = mlx5::FlowTable::createFlowGroup(a2[1], v25);
        v11 = *a2;
        *(a2[2] + v11) = v10;
        if (*(a2[2] + v11))
        {
          *a2 = v11 + 1;
          bzero(v25, 0x400uLL);
          v28 = 0x1000000;
          v29 = -65536;
          v32 = 255;
          v30 = -1;
          v31 = -1;
          v26 = 452984832;
          v27 = 440401920;
          v12 = mlx5::FlowTable::createFlowGroup(a2[1], v25);
          v13 = *a2;
          *(a2[2] + v13) = v12;
          if (*(a2[2] + v13))
          {
            *a2 = v13 + 1;
            bzero(v25, 0x400uLL);
            v28 = 0x1000000;
            v29 = -65536;
            v30 = -1;
            v31 = -1;
            v26 = 457179136;
            v27 = 442499072;
            v14 = mlx5::FlowTable::createFlowGroup(a2[1], v25);
            v15 = *a2;
            *(a2[2] + v15) = v14;
            if (*(a2[2] + v15))
            {
              *a2 = v15 + 1;
              bzero(v25, 0x400uLL);
              v28 = 0x1000000;
              v30 = -1;
              v31 = -1;
              v26 = 459276288;
              v27 = 443023360;
              v16 = mlx5::FlowTable::createFlowGroup(a2[1], v25);
              v17 = *a2;
              *(a2[2] + v17) = v16;
              if (*(a2[2] + v17))
              {
                *a2 = v17 + 1;
                bzero(v25, 0x400uLL);
                v28 = 0x1000000;
                v29 = -65536;
                v32 = 255;
                LOBYTE(v30) = 1;
                v26 = 459800576;
                v27 = 510132224;
                v18 = mlx5::FlowTable::createFlowGroup(a2[1], v25);
                v19 = *a2;
                *(a2[2] + v19) = v18;
                if (*(a2[2] + v19))
                {
                  *a2 = v19 + 1;
                  bzero(v25, 0x400uLL);
                  v28 = 0x1000000;
                  v29 = -65536;
                  LOBYTE(v30) = 1;
                  v26 = 526909440;
                  v27 = 543686656;
                  v20 = mlx5::FlowTable::createFlowGroup(a2[1], v25);
                  v21 = *a2;
                  *(a2[2] + v21) = v20;
                  if (*(a2[2] + v21))
                  {
                    *a2 = v21 + 1;
                    bzero(v25, 0x400uLL);
                    v28 = 0x1000000;
                    LOBYTE(v30) = 1;
                    v26 = 560463872;
                    v27 = 560463872;
                    v22 = mlx5::FlowTable::createFlowGroup(a2[1], v25);
                    v23 = *a2;
                    *(a2[2] + v23) = v22;
                    if (*(a2[2] + v23))
                    {
                      v3 = 0;
                      *a2 = v23 + 1;
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

  return v3;
}

uint64_t DriverKit_AppleEthernetMLX5_IVars::createL2FlowTable(DriverKit_AppleEthernetMLX5_IVars *this)
{
  v1 = this + 114688;
  *(this + 28818) = 0;
  FlowTable = mlx5::FlowNamespace::createFlowTable(*(this + 14405), 0, 0x6822u, "main");
  *(v1 + 74) = FlowTable;
  if (FlowTable)
  {
    operator new[]();
  }

  return 3758097084;
}

uint64_t DriverKit_AppleEthernetMLX5_IVars::createVlanGroups(uint64_t a1, mlx5::FlowTable **a2)
{
  v3 = 3758097084;
  bzero(v11, 0x400uLL);
  v15 = 0x800000FF0F0000;
  v14 = 0x1000000;
  v13 = -15794176;
  FlowGroup = mlx5::FlowTable::createFlowGroup(a2[1], v11);
  v5 = *a2;
  *(a2[2] + v5) = FlowGroup;
  if (*(a2[2] + v5))
  {
    *a2 = v5 + 1;
    bzero(v11, 0x400uLL);
    v14 = 0x1000000;
    HIDWORD(v15) = 0x800000;
    v12 = 0x100000;
    v13 = 17825792;
    v6 = mlx5::FlowTable::createFlowGroup(a2[1], v11);
    v7 = *a2;
    *(a2[2] + v7) = v6;
    if (*(a2[2] + v7))
    {
      *a2 = v7 + 1;
      bzero(v11, 0x400uLL);
      v14 = 0x1000000;
      HIDWORD(v15) = 0x400000;
      v12 = 34603008;
      v13 = 34603008;
      v8 = mlx5::FlowTable::createFlowGroup(a2[1], v11);
      v9 = *a2;
      *(a2[2] + v9) = v8;
      if (*(a2[2] + v9))
      {
        v3 = 0;
        *a2 = v9 + 1;
      }
    }
  }

  return v3;
}

uint64_t DriverKit_AppleEthernetMLX5_IVars::createVlanFlowTable(DriverKit_AppleEthernetMLX5_IVars *this)
{
  v1 = this + 114688;
  *(this + 28812) = 0;
  FlowTable = mlx5::FlowNamespace::createFlowTable(*(this + 14405), 0, 0x1003u, "vlan");
  *(v1 + 71) = FlowTable;
  if (FlowTable)
  {
    operator new[]();
  }

  return 3758097084;
}

uint64_t DriverKit_AppleEthernetMLX5_NetIf_IVars::createInnerRssGroups(uint64_t a1, mlx5::FlowTable **a2)
{
  v3 = 3758097084;
  bzero(v11, 0x400uLL);
  v15 = -65536;
  v16 = 255;
  v14 = 0x4000000;
  v13 = 117440512;
  FlowGroup = mlx5::FlowTable::createFlowGroup(a2[1], v11);
  v5 = *a2;
  *(a2[2] + v5) = FlowGroup;
  if (*(a2[2] + v5))
  {
    *a2 = v5 + 1;
    bzero(v11, 0x400uLL);
    v14 = 0x4000000;
    v15 = -65536;
    v12 = 0x8000000;
    v13 = 150994944;
    v6 = mlx5::FlowTable::createFlowGroup(a2[1], v11);
    v7 = *a2;
    *(a2[2] + v7) = v6;
    if (*(a2[2] + v7))
    {
      *a2 = v7 + 1;
      bzero(v11, 0x400uLL);
      v12 = 167772160;
      v13 = 167772160;
      v8 = mlx5::FlowTable::createFlowGroup(a2[1], v11);
      v9 = *a2;
      *(a2[2] + v9) = v8;
      if (*(a2[2] + v9))
      {
        v3 = 0;
        *a2 = v9 + 1;
      }
    }
  }

  return v3;
}

uint64_t DriverKit_AppleEthernetMLX5_NetIf_IVars::createInnerRssFlowTable(DriverKit_AppleEthernetMLX5_NetIf_IVars *this)
{
  *(this + 160) = 0;
  FlowTable = mlx5::FlowNamespace::createFlowTable(*(*(this + 2) + 115240), 0, 0xBu, "inner_rss");
  *(this + 81) = FlowTable;
  if (FlowTable)
  {
    operator new[]();
  }

  return 3758097084;
}

uint64_t DriverKit_AppleEthernetMLX5_IVars::createFlowSteering(DriverKit_AppleEthernetMLX5_IVars *this)
{
  result = DriverKit_AppleEthernetMLX5_IVars::createVlanFlowTable(this);
  if (!result)
  {

    return DriverKit_AppleEthernetMLX5_IVars::createL2FlowTable(this);
  }

  return result;
}

mlx5::FlowTable *DriverKit_AppleEthernetMLX5_IVars::destroyFlowSteering(DriverKit_AppleEthernetMLX5_IVars *this)
{
  v2 = DriverKit_AppleEthernetMLX5_IVars::destroyFlowTable(this, this + 115272);

  return DriverKit_AppleEthernetMLX5_IVars::destroyFlowTable(v2, this + 115248);
}

uint64_t DriverKit_AppleEthernetMLX5_NetIf_IVars::createFlowSteering(DriverKit_AppleEthernetMLX5_NetIf_IVars *this)
{
  v1 = *(this + 2);
  result = DriverKit_AppleEthernetMLX5_IVars::createVlanFlowTable(v1);
  if (!result)
  {

    return DriverKit_AppleEthernetMLX5_IVars::createL2FlowTable(v1);
  }

  return result;
}

mlx5::FlowTable *DriverKit_AppleEthernetMLX5_NetIf_IVars::destroyFlowSteering(DriverKit_AppleEthernetMLX5_NetIf_IVars *this)
{
  v1 = *(this + 2);
  v2 = DriverKit_AppleEthernetMLX5_IVars::destroyFlowTable(this, v1 + 115272);

  return DriverKit_AppleEthernetMLX5_IVars::destroyFlowTable(v2, v1 + 115248);
}

uint64_t DriverKit_AppleEthernetMLX5_IVars::allocTransportDomain(AppleEthernetMLX5Cmd **this, unsigned int *a2)
{
  v8 = 0;
  v7 = 0;
  v6 = 5640;
  result = AppleEthernetMLX5Cmd::exec(this[38], &v6, 16, v4, 16);
  if (!result)
  {
    result = AppleEthernetMLX5Cmd::statusToErr(v4);
    if (!result)
    {
      *a2 = bswap32(v5 & 0xFFFFFF00);
    }
  }

  return result;
}

uint64_t DriverKit_AppleEthernetMLX5_IVars::deallocTransportDomain(AppleEthernetMLX5Cmd **this, int a2)
{
  v4[1] = 0;
  v4[0] = 5896;
  v4[2] = bswap32(a2 & 0xFFFFFF);
  v4[3] = 0;
  result = AppleEthernetMLX5Cmd::exec(this[38], v4, 16, v3, 16);
  if (!result)
  {
    return AppleEthernetMLX5Cmd::statusToErr(v3);
  }

  return result;
}

uint64_t DriverKit_AppleEthernetMLX5_IVars::createRQ(AppleEthernetMLX5Cmd **this, unsigned __int8 *a2, int a3, unsigned int *a4)
{
  *a2 = 2057;
  result = AppleEthernetMLX5Cmd::exec(this[38], a2, a3, v6, 16);
  if (!result)
  {
    result = AppleEthernetMLX5Cmd::statusToErr(v6);
    if (!result)
    {
      *a4 = bswap32(v7 & 0xFFFFFF00);
    }
  }

  return result;
}

uint64_t DriverKit_AppleEthernetMLX5_IVars::modifyRQ(AppleEthernetMLX5Cmd **this, unsigned __int8 *a2, int a3)
{
  *a2 = 2313;
  result = AppleEthernetMLX5Cmd::exec(this[38], a2, a3, v4, 16);
  if (!result)
  {
    return AppleEthernetMLX5Cmd::statusToErr(v4);
  }

  return result;
}

uint64_t DriverKit_AppleEthernetMLX5_IVars::destroyRQ(AppleEthernetMLX5Cmd **this, int a2)
{
  v4[1] = 0;
  v4[0] = 2569;
  v4[2] = bswap32(a2 & 0xFFFFFF);
  v4[3] = 0;
  result = AppleEthernetMLX5Cmd::exec(this[38], v4, 16, v3, 16);
  if (!result)
  {
    return AppleEthernetMLX5Cmd::statusToErr(v3);
  }

  return result;
}

uint64_t DriverKit_AppleEthernetMLX5_IVars::queryRQ(AppleEthernetMLX5Cmd **this, int a2, unsigned __int8 *a3)
{
  v5[1] = 0;
  v5[0] = 2825;
  v5[2] = bswap32(a2 & 0xFFFFFF);
  v5[3] = 0;
  result = AppleEthernetMLX5Cmd::exec(this[38], v5, 16, a3, 272);
  if (!result)
  {
    return AppleEthernetMLX5Cmd::statusToErr(a3);
  }

  return result;
}

uint64_t DriverKit_AppleEthernetMLX5_IVars::createSQ(AppleEthernetMLX5Cmd **this, unsigned __int8 *a2, int a3, unsigned int *a4)
{
  *a2 = 1033;
  result = AppleEthernetMLX5Cmd::exec(this[38], a2, a3, v6, 16);
  if (!result)
  {
    result = AppleEthernetMLX5Cmd::statusToErr(v6);
    if (!result)
    {
      *a4 = bswap32(v7 & 0xFFFFFF00);
    }
  }

  return result;
}

uint64_t DriverKit_AppleEthernetMLX5_IVars::modifySQ(AppleEthernetMLX5Cmd **this, unsigned __int8 *a2, int a3)
{
  *a2 = 1289;
  result = AppleEthernetMLX5Cmd::exec(this[38], a2, a3, v4, 16);
  if (!result)
  {
    return AppleEthernetMLX5Cmd::statusToErr(v4);
  }

  return result;
}

uint64_t DriverKit_AppleEthernetMLX5_IVars::destroySQ(AppleEthernetMLX5Cmd **this, int a2)
{
  v4[1] = 0;
  v4[0] = 1545;
  v4[2] = bswap32(a2 & 0xFFFFFF);
  v4[3] = 0;
  result = AppleEthernetMLX5Cmd::exec(this[38], v4, 16, v3, 16);
  if (!result)
  {
    return AppleEthernetMLX5Cmd::statusToErr(v3);
  }

  return result;
}

uint64_t DriverKit_AppleEthernetMLX5_IVars::querySQ(AppleEthernetMLX5Cmd **this, int a2, unsigned __int8 *a3)
{
  v5[1] = 0;
  v5[0] = 1801;
  v5[2] = bswap32(a2 & 0xFFFFFF);
  v5[3] = 0;
  result = AppleEthernetMLX5Cmd::exec(this[38], v5, 16, a3, 272);
  if (!result)
  {
    return AppleEthernetMLX5Cmd::statusToErr(a3);
  }

  return result;
}

uint64_t DriverKit_AppleEthernetMLX5_IVars::createTIR(AppleEthernetMLX5Cmd **this, unsigned __int8 *a2, int a3, unsigned int *a4)
{
  *a2 = 9;
  result = AppleEthernetMLX5Cmd::exec(this[38], a2, a3, v6, 16);
  if (!result)
  {
    result = AppleEthernetMLX5Cmd::statusToErr(v6);
    if (!result)
    {
      *a4 = bswap32(v7 & 0xFFFFFF00);
    }
  }

  return result;
}

uint64_t DriverKit_AppleEthernetMLX5_IVars::modifyTIR(AppleEthernetMLX5Cmd **this, unsigned __int8 *a2, int a3, int a4)
{
  *a2 = 265;
  *(a2 + 2) = bswap32(a4 & 0xFFFFFF | (*(a2 + 2) << 24));
  result = AppleEthernetMLX5Cmd::exec(this[38], a2, a3, v5, 16);
  if (!result)
  {
    return AppleEthernetMLX5Cmd::statusToErr(v5);
  }

  return result;
}

uint64_t DriverKit_AppleEthernetMLX5_IVars::destroyTIR(AppleEthernetMLX5Cmd **this, int a2)
{
  v4[1] = 0;
  v4[0] = 521;
  v4[2] = bswap32(a2 & 0xFFFFFF);
  v4[3] = 0;
  result = AppleEthernetMLX5Cmd::exec(this[38], v4, 16, v3, 16);
  if (!result)
  {
    return AppleEthernetMLX5Cmd::statusToErr(v3);
  }

  return result;
}

uint64_t DriverKit_AppleEthernetMLX5_IVars::createTIS(AppleEthernetMLX5Cmd **this, unsigned __int8 *a2, int a3, unsigned int *a4)
{
  *a2 = 4617;
  result = AppleEthernetMLX5Cmd::exec(this[38], a2, a3, v6, 16);
  if (!result)
  {
    result = AppleEthernetMLX5Cmd::statusToErr(v6);
    if (!result)
    {
      *a4 = bswap32(v7 & 0xFFFFFF00);
    }
  }

  return result;
}

uint64_t DriverKit_AppleEthernetMLX5_IVars::modifyTIS(AppleEthernetMLX5Cmd **this, int a2, unsigned __int8 *a3, int a4)
{
  *(a3 + 2) = bswap32(a2 & 0xFFFFFF | (*(a3 + 2) << 24));
  *a3 = 4873;
  result = AppleEthernetMLX5Cmd::exec(this[38], a3, a4, v5, 16);
  if (!result)
  {
    return AppleEthernetMLX5Cmd::statusToErr(v5);
  }

  return result;
}

uint64_t DriverKit_AppleEthernetMLX5_IVars::destroyTIS(AppleEthernetMLX5Cmd **this, int a2)
{
  v4[1] = 0;
  v4[0] = 5129;
  v4[2] = bswap32(a2 & 0xFFFFFF);
  v4[3] = 0;
  result = AppleEthernetMLX5Cmd::exec(this[38], v4, 16, v3, 16);
  if (!result)
  {
    return AppleEthernetMLX5Cmd::statusToErr(v3);
  }

  return result;
}

uint64_t DriverKit_AppleEthernetMLX5_IVars::createRQT(AppleEthernetMLX5Cmd **this, unsigned __int8 *a2, int a3, unsigned int *a4)
{
  *a2 = 5641;
  result = AppleEthernetMLX5Cmd::exec(this[38], a2, a3, v6, 64);
  if (!result)
  {
    result = AppleEthernetMLX5Cmd::statusToErr(v6);
    if (!result)
    {
      *a4 = bswap32(v7 & 0xFFFFFF00);
    }
  }

  return result;
}

uint64_t DriverKit_AppleEthernetMLX5_IVars::modifyRQT(AppleEthernetMLX5Cmd **this, int a2, unsigned __int8 *a3, int a4)
{
  *(a3 + 2) = bswap32(a2 & 0xFFFFFF | (*(a3 + 2) << 24));
  *a3 = 5897;
  result = AppleEthernetMLX5Cmd::exec(this[38], a3, a4, v5, 16);
  if (!result)
  {
    return AppleEthernetMLX5Cmd::statusToErr(v5);
  }

  return result;
}

uint64_t DriverKit_AppleEthernetMLX5_IVars::destroyRQT(AppleEthernetMLX5Cmd **this, int a2)
{
  v4[1] = 0;
  v4[0] = 6153;
  v4[2] = bswap32(a2 & 0xFFFFFF);
  v4[3] = 0;
  result = AppleEthernetMLX5Cmd::exec(this[38], v4, 16, v3, 16);
  if (!result)
  {
    return AppleEthernetMLX5Cmd::statusToErr(v3);
  }

  return result;
}

void AppleEthernetMLX5EQ::cmd_interrupt(AppleEthernetMLX5EQ *this)
{
  v2 = *(this + 5);
  v3 = *(this + 18);
  v4 = *(this + 20);
  if (v2)
  {
    v5 = v2 + (((v4 - 1) & v3) << 6);
    if (((((v4 & v3) != 0) ^ *(v5 + 63)) & 1) == 0)
    {
      v6 = 0;
      do
      {
        __dmb(1u);
        v7 = *(v5 + 1);
        if (v7 == 10)
        {
          v8 = bswap32(*(v5 + 32));
          if (gMLX5DebugFlags)
          {
            IOLog("mlx5:%s:%d EQ::interrupt: cmd completion %x\n", "cmd_interrupt", 137, v8);
          }

          AppleEthernetMLX5Cmd::compHandler(*(*(this + 7) + 304), v8);
        }

        else
        {
          IOLog("mlx5: EQ::interrupt: Unhandled event 0x%x on EQ 0x%x\n", v7, *(this + 77));
        }

        v3 = *(this + 18) + 1;
        *(this + 18) = v3;
        if (v6 >= 127)
        {
          AppleEthernetMLX5EQ::updateCI(this, 0);
          v6 = 0;
          v3 = *(this + 18);
        }

        else
        {
          ++v6;
        }

        v9 = *(this + 5);
        v10 = *(this + 20);
        if (!v9)
        {
          break;
        }

        v5 = v9 + (((v10 - 1) & v3) << 6);
      }

      while (((((v10 & v3) != 0) ^ *(v5 + 63)) & 1) == 0);
    }
  }

  IOPCIDevice::MemoryWrite32(MLX5_pciDev, 0, *(this + 8), bswap32(v3 & 0xFFFFFF | (*(this + 77) << 24)));
  __dmb(0xFu);
}

void AppleEthernetMLX5EQ::updateCI(AppleEthernetMLX5EQ *this, int a2)
{
  v2 = 8;
  if (a2)
  {
    v2 = 0;
  }

  IOPCIDevice::MemoryWrite32(MLX5_pciDev, 0, *(this + 8) + v2, bswap32(*(this + 18) & 0xFFFFFF | (*(this + 77) << 24)));
  __dmb(0xFu);
}

void AppleEthernetMLX5EQ::pages_interrupt(AppleEthernetMLX5EQ *this)
{
  v2 = *(this + 5);
  v3 = *(this + 18);
  v4 = *(this + 20);
  if (v2)
  {
    v5 = v2 + (((v4 - 1) & v3) << 6);
    if (((((v4 & v3) != 0) ^ *(v5 + 63)) & 1) == 0)
    {
      v6 = 0;
      do
      {
        __dmb(1u);
        v7 = *(v5 + 1);
        if (v7 == 11)
        {
          v8 = bswap32(*(v5 + 34)) >> 16;
          v9 = bswap32(*(v5 + 36));
          if (gMLX5DebugFlags)
          {
            IOLog("mlx5:%s:%d EQ::interrupt: page request for func 0x%x, npages %d\n", "pages_interrupt", 171, v8, v9);
          }

          DriverKit_AppleEthernetMLX5_IVars::pageRequestHandler(*(this + 7), v8, v9);
        }

        else
        {
          IOLog("mlx5: EQ::interrupt: Unhandled event 0x%x on EQ 0x%x\n", v7, *(this + 77));
        }

        v3 = *(this + 18) + 1;
        *(this + 18) = v3;
        if (v6 >= 127)
        {
          AppleEthernetMLX5EQ::updateCI(this, 0);
          v6 = 0;
          v3 = *(this + 18);
        }

        else
        {
          ++v6;
        }

        v10 = *(this + 5);
        v11 = *(this + 20);
        if (!v10)
        {
          break;
        }

        v5 = v10 + (((v11 - 1) & v3) << 6);
      }

      while (((((v11 & v3) != 0) ^ *(v5 + 63)) & 1) == 0);
    }
  }

  IOPCIDevice::MemoryWrite32(MLX5_pciDev, 0, *(this + 8), bswap32(v3 & 0xFFFFFF | (*(this + 77) << 24)));
  __dmb(0xFu);
}

void AppleEthernetMLX5EQ::async_interrupt(uint64_t this)
{
  v1 = this;
  v2 = *(this + 40);
  v3 = *(this + 72);
  v4 = *(this + 80);
  if (v2)
  {
    v5 = v2 + (((v4 - 1) & v3) << 6);
    if (((((v4 & v3) != 0) ^ *(v5 + 63)) & 1) == 0)
    {
      v6 = 0;
      do
      {
        __dmb(1u);
        v7 = *(v5 + 1);
        switch(*(v5 + 1))
        {
          case 1:
          case 2:
          case 3:
          case 5:
          case 7:
          case 0x10:
          case 0x11:
          case 0x13:
            v8 = bswap32(*(v5 + 56) & 0xFFFFFF00);
            eqe_type_str(v7);
            this = IOLog("mlx5: EQ::interrupt: event %s(%d) arrived on resource 0x%x\n");
            break;
          case 4:
            v18 = bswap32(*(v5 + 32) & 0xFFFFFF00);
            v22 = *(v5 + 43);
            this = IOLog("mlx5: EQ::interrupt: CQ error on CQN 0x%x, syndrom 0x%x\n");
            break;
          case 9:
            v12 = *(v5 + 40) >> 4;
            v13 = *(v5 + 3);
            if ((v13 - 4) < 6 || v13 == 1)
            {
              if (gMLX5DebugFlags)
              {
                IOLog("mlx5:%s:%d EQ::interrupt: Port change event: %d\n", "async_interrupt", 235, *(v5 + 3));
                v13 = *(v5 + 3);
              }

              v15 = v13 - 4;
              if (v15 > 5)
              {
                v16 = 2;
              }

              else
              {
                v16 = dword_10001EA00[v15];
              }

              this = DriverKit_AppleEthernetMLX5_IVars::event(*(v1 + 56), v16);
            }

            else
            {
              v21 = *(v5 + 40) >> 4;
              this = IOLog("mlx5: EQ::interrupt: Port event with unrecognized subtype: port %d, sub_type %d\n");
            }

            break;
          case 0xD:
          case 0x22:
            break;
          case 0x12:
          case 0x14:
            v11 = bswap32(*(v5 + 56) & 0xFFFFFF00);
            eqe_type_str(v7);
            this = IOLog("mlx5: EQ::interrupt: SRQ event %s(%d): srqn 0x%x\n");
            break;
          case 0x16:
            DriverKit_AppleEthernetMLX5_IVars::portModuleEvent(this, v5);
            break;
          case 0x1E:
            if (*(v5 + 3) - 1 >= 4)
            {
              v19 = *(v5 + 40) >> 4;
              this = IOLog("mlx5: EQ::interrupt: dcbx event with unrecognized subtype: port %d, sub_type %d\n");
            }

            break;
          default:
            v17 = *(v1 + 77);
            v20 = *(v5 + 1);
            this = IOLog("mlx5: EQ::interrupt: Unhandled event 0x%x on EQ 0x%x\n");
            break;
        }

        v3 = *(v1 + 72) + 1;
        *(v1 + 72) = v3;
        if (v6 >= 127)
        {
          AppleEthernetMLX5EQ::updateCI(v1, 0);
          v6 = 0;
          v3 = *(v1 + 72);
        }

        else
        {
          ++v6;
        }

        v9 = *(v1 + 40);
        v10 = *(v1 + 80);
        if (!v9)
        {
          break;
        }

        v5 = v9 + (((v10 - 1) & v3) << 6);
      }

      while (((((v10 & v3) != 0) ^ *(v5 + 63)) & 1) == 0);
    }
  }

  IOPCIDevice::MemoryWrite32(MLX5_pciDev, 0, *(v1 + 64), bswap32(v3 & 0xFFFFFF | (*(v1 + 77) << 24)));
  __dmb(0xFu);
}

const char *eqe_type_str(unsigned int a1)
{
  if (a1 > 0x22)
  {
    return "Unrecognized event";
  }

  else
  {
    return off_1000245C8[a1];
  }
}

void DriverKit_AppleEthernetMLX5_IVars::portModuleEvent(uint64_t a1, unsigned __int8 *a2)
{
  v2 = a2[33];
  v3 = a2[35] & 0xF;
  switch(v3)
  {
    case 3:
      v4 = a2[38] & 0xF;
      if (v4 <= 7)
      {
        v5 = off_1000246E0[v4];
      }

      v7 = a2[33];
      IOLog("mlx5: Module %u, error: %s\n");
      break;
    case 2:
      if (gMLX5DebugFlags)
      {
        v9 = a2[33];
        IOLog("mlx5:%s:%d Module %u, status: unplugged\n");
      }

      break;
    case 1:
      if (gMLX5DebugFlags)
      {
        v8 = a2[33];
        IOLog("mlx5:%s:%d Module %u, status: plugged\n");
      }

      break;
    default:
      v6 = a2[33];
      IOLog("mlx5: Module %u, unknown status\n");
      break;
  }
}

void AppleEthernetMLX5EQ::queue_interrupt(AppleEthernetMLX5EQ *this, unsigned int a2)
{
  v3 = *(this + 7);
  if (*(v3 + 123672) != 2)
  {
    AppleEthernetMLX5EQ::queue_interrupt(this);
    return;
  }

  v4 = 0;
  v5 = *(v3 + 124200) + (a2 << 10);
  v6 = *(v5 + 172);
  v7 = *(v5 + 684);
  while (2)
  {
    v41 = (v6 & 3) << 28;
    v42 = (v7 & 3) << 28;
LABEL_4:
    v8 = *(this + 18);
    v9 = *(this + 5);
    v10 = *(this + 20);
    v43 = v8;
    if (v9)
    {
      v11 = v9 + (((v10 - 1) & v8) << 6);
      if (((((v10 & v8) != 0) ^ *(v11 + 63)) & 1) == 0)
      {
        do
        {
          __dmb(1u);
          DriverKit_AppleEthernetMLX5_IVars::handleCQCompletion(*(this + 7), bswap32(*(v11 + 56) & 0xFFFFFF00));
          v12 = *(this + 18) + 1;
          *(this + 18) = v12;
          if (v4 >= 127)
          {
            IOPCIDevice::MemoryWrite32(MLX5_pciDev, 0, *(this + 8) + 8, bswap32(v12 & 0xFFFFFF | (*(this + 77) << 24)));
            v4 = 0;
            __dmb(0xFu);
            v12 = *(this + 18);
          }

          else
          {
            ++v4;
          }

          v13 = *(this + 5);
          v14 = *(this + 20);
          v15 = (v14 & v12) != 0;
          if (!v13)
          {
            break;
          }

          v11 = v13 + (((v14 - 1) & v12) << 6);
        }

        while (((v15 ^ *(v11 + 63)) & 1) == 0);
      }
    }

    LOBYTE(v16) = 0;
    v17 = 0;
    v18 = *(v5 + 64);
    do
    {
      v19 = v16;
      v20 = v3 + 123648;
      if (v18)
      {
        v21 = DriverKit_AppleEthernetMLX5_NetIf_IVars::enqueueRxPackets(v20, v5);
        v22 = (v21 & 0xFFFF0000) != 0;
        v16 = (DriverKit_AppleEthernetMLX5_NetIf_IVars::dequeueRxPackets(v3 + 123648, v5) | ((v21 | v19) != 0)) != 0;
        if ((*(v5 + 800) & 1) == 0)
        {
          goto LABEL_24;
        }
      }

      else
      {
        v22 = 0;
        v25 = DriverKit_AppleEthernetMLX5_NetIf_IVars::dequeueRxPackets(v20, v5) | v19;
        v26 = *(v5 + 688);
        v28 = (((*(v5 + 708) >> *(v5 + 712)) ^ *(v26 + ((*(v5 + 704) & *(v5 + 708)) << *(v5 + 713)) + 63)) & 1) == 0 && v26 != 0;
        *(v5 + 800) = v28;
        v16 = v25 != 0;
        if (!v28)
        {
LABEL_24:
          v24 = DriverKit_AppleEthernetMLX5_NetIf_IVars::dequeueTxPackets(v3 + 123648, (v5 + 384)) | v17;
          v29 = *(v5 + 176);
          v31 = (((*(v5 + 196) >> *(v5 + 200)) ^ *(v29 + ((*(v5 + 192) & *(v5 + 196)) << *(v5 + 201)) + 63)) & 1) == 0 && v29 != 0;
          *(v5 + 64) = v31;
          goto LABEL_31;
        }
      }

      v23 = DriverKit_AppleEthernetMLX5_NetIf_IVars::enqueueTxPackets(v3 + 123648, (v5 + 384));
      v24 = DriverKit_AppleEthernetMLX5_NetIf_IVars::dequeueTxPackets(v3 + 123648, (v5 + 384)) | ((v23 | v17) != 0);
      if ((v23 & 0xFFFF0000) != 0)
      {
        v22 = 1;
      }

LABEL_31:
      v17 = v24 != 0;
      if (v22)
      {
        IODataQueueDispatchSource::SendDataAvailable(*(v5 + 40));
      }

      v18 = *(v5 + 64);
    }

    while ((v18 & 1) != 0 || (*(v5 + 800) & 1) != 0);
    __dmb(2u);
    if (*(v5 + 384) == *(v5 + 512))
    {
      v36 = *(*(v5 + 160) + 8);
      v37 = *(v5 + 196) & 0xFFFFFF | ((*(v5 + 172) & 3u) << 28);
      **(v5 + 144) = bswap32(v37);
      __dmb(0xEu);
      IOPCIDevice::MemoryWrite64(MLX5_pciDev, 0, v36 + 32, bswap64(*(v5 + 128) | (v37 << 32)));
      v38 = *(*(v5 + 672) + 8);
      v39 = *(v5 + 708) & 0xFFFFFF | ((*(v5 + 684) & 3u) << 28);
      **(v5 + 656) = bswap32(v39);
      __dmb(0xEu);
      IOPCIDevice::MemoryWrite64(MLX5_pciDev, 0, v38 + 32, bswap64(*(v5 + 640) | (v39 << 32)));
      v40 = *(this + 18);
      if (v43 != v40)
      {
        v7 = *(v5 + 684);
        v6 = *(v5 + 172);
        IOPCIDevice::MemoryWrite32(MLX5_pciDev, 0, *(this + 8) + 8, bswap32(v40 & 0xFFFFFF | (*(this + 77) << 24)));
        __dmb(0xFu);
        continue;
      }

      IOPCIDevice::MemoryWrite32(MLX5_pciDev, 0, *(this + 8), bswap32(v43 & 0xFFFFFF | (*(this + 77) << 24)));
      __dmb(0xFu);
    }

    else if (*(*(this + 7) + 160) != 3)
    {
      if (v16)
      {
        v32 = *(*(v5 + 160) + 8);
        v33 = *(v5 + 196) & 0xFFFFFF | v41;
        **(v5 + 144) = bswap32(v33);
        __dmb(0xEu);
        IOPCIDevice::MemoryWrite64(MLX5_pciDev, 0, v32 + 32, bswap64(*(v5 + 128) | (v33 << 32)));
        if (!v24)
        {
LABEL_42:
          IOPCIDevice::MemoryWrite32(MLX5_pciDev, 0, *(this + 8) + 8, bswap32(*(this + 18) & 0xFFFFFF | (*(this + 77) << 24)));
          __dmb(0xFu);
          goto LABEL_43;
        }
      }

      else if (!v24)
      {
LABEL_43:
        *(v5 + 800) = 1;
        *(v5 + 64) = 1;
        __yield();
        goto LABEL_4;
      }

      v34 = *(*(v5 + 672) + 8);
      v35 = *(v5 + 708) & 0xFFFFFF | v42;
      **(v5 + 656) = bswap32(v35);
      __dmb(0xEu);
      IOPCIDevice::MemoryWrite64(MLX5_pciDev, 0, v34 + 32, bswap64(*(v5 + 640) | (v35 << 32)));
      goto LABEL_42;
    }

    break;
  }
}

uint64_t AppleEthernetMLX5EQ::AppleEthernetMLX5EQ(uint64_t a1, void *a2, char a3, int a4, unint64_t a5, uint64_t a6)
{
  v10 = 1 << -__clz((a4 + 128) - 1);
  if (a4 == -127)
  {
    v11 = 1;
  }

  else
  {
    v11 = v10;
  }

  AppleEthernetMLX5DMABuf::AppleEthernetMLX5DMABuf(a1, v11 << 6, "EQ", a2);
  *v12 = off_1000245B8;
  *(v12 + 72) = 0;
  *(v12 + 76) = a3;
  *(v12 + 104) = 0;
  *(v12 + 64) = *(a6 + 8) + 64;
  *(v12 + 80) = v11;
  if (v11)
  {
    v13 = *(a1 + 40);
    v14 = (v11 + 15) & 0x1FFFFFFF0;
    v15 = xmmword_10001E980;
    v16 = xmmword_10001E990;
    v17 = xmmword_10001E9A0;
    v18 = xmmword_10001E9B0;
    v19 = xmmword_10001E9C0;
    v20 = xmmword_10001E9D0;
    v21 = xmmword_10001E9E0;
    v22 = xmmword_10001E9F0;
    v23 = vdupq_n_s64(v11 - 1);
    v24 = vdupq_n_s64(0x10uLL);
    do
    {
      v25 = vmovn_s64(vcgeq_u64(v23, v22));
      if (vuzp1_s8(vuzp1_s16(v25, *v15.i8), *v15.i8).u8[0])
      {
        v13[63] = 1;
      }

      if (vuzp1_s8(vuzp1_s16(v25, *&v15), *&v15).i8[1])
      {
        v13[127] = 1;
      }

      if (vuzp1_s8(vuzp1_s16(*&v15, vmovn_s64(vcgeq_u64(v23, *&v21))), *&v15).i8[2])
      {
        v13[191] = 1;
        v13[255] = 1;
      }

      v26 = vmovn_s64(vcgeq_u64(v23, v20));
      if (vuzp1_s8(*&v15, vuzp1_s16(v26, *&v15)).i32[1])
      {
        v13[319] = 1;
      }

      if (vuzp1_s8(*&v15, vuzp1_s16(v26, *&v15)).i8[5])
      {
        v13[383] = 1;
      }

      if (vuzp1_s8(*&v15, vuzp1_s16(*&v15, vmovn_s64(vcgeq_u64(v23, *&v19)))).i8[6])
      {
        v13[447] = 1;
        v13[511] = 1;
      }

      v27 = vmovn_s64(vcgeq_u64(v23, v18));
      if (vuzp1_s8(vuzp1_s16(v27, *v15.i8), *v15.i8).u8[0])
      {
        v13[575] = 1;
      }

      if (vuzp1_s8(vuzp1_s16(v27, *&v15), *&v15).i8[1])
      {
        v13[639] = 1;
      }

      if (vuzp1_s8(vuzp1_s16(*&v15, vmovn_s64(vcgeq_u64(v23, *&v17))), *&v15).i8[2])
      {
        v13[703] = 1;
        v13[767] = 1;
      }

      v28 = vmovn_s64(vcgeq_u64(v23, v16));
      if (vuzp1_s8(*&v15, vuzp1_s16(v28, *&v15)).i32[1])
      {
        v13[831] = 1;
      }

      if (vuzp1_s8(*&v15, vuzp1_s16(v28, *&v15)).i8[5])
      {
        v13[895] = 1;
      }

      if (vuzp1_s8(*&v15, vuzp1_s16(*&v15, vmovn_s64(vcgeq_u64(v23, *&v15)))).i8[6])
      {
        v13[959] = 1;
        v13[1023] = 1;
      }

      v20 = vaddq_s64(v20, v24);
      v21 = vaddq_s64(v21, v24);
      v22 = vaddq_s64(v22, v24);
      v19 = vaddq_s64(v19, v24);
      v18 = vaddq_s64(v18, v24);
      v17 = vaddq_s64(v17, v24);
      v16 = vaddq_s64(v16, v24);
      v13 += 1024;
      v15 = vaddq_s64(v15, v24);
      v14 -= 16;
    }

    while (v14);
  }

  v29 = (((*(a1 + 24) + 0x3FFFLL) >> 11) & 0xFFFFFFF8) + 272;
  v30 = &v36[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
  bzero(v30, v29);
  AppleEthernetMLX5DMABuf::fillPageArray(a1, v30 + 34);
  *v30 = 259;
  v31 = *(a1 + 80);
  v32 = 520093696 - (__clz(v31) << 24);
  if (v31)
  {
    v33 = v32;
  }

  else
  {
    v33 = -16777216;
  }

  *(v30 + 7) = bswap32(*a6 | v33);
  *(v30 + 39) = *(a1 + 76);
  *(v30 + 40) = 2;
  v30[11] = bswap64(a5);
  if (AppleEthernetMLX5Cmd::exec(*(*(a1 + 56) + 304), v30, v29, v36, 16))
  {
    AppleEthernetMLX5EQ::AppleEthernetMLX5EQ();
  }

  v34 = v37;
  *(a1 + 77) = v37;
  if (gMLX5DebugFlags)
  {
    IOLog("mlx5:%s:%d EQ::init() uar=0x%02x eqn=0x%02x irqn=%d irqLine=%d\n", "AppleEthernetMLX5EQ", 415, *a6, v34, *(a1 + 76), *(*(*(a1 + 56) + 280) + *(a1 + 76)));
    LOBYTE(v34) = *(a1 + 77);
  }

  IOPCIDevice::MemoryWrite32(MLX5_pciDev, 0, *(a1 + 64), bswap32(*(a1 + 72) & 0xFFFFFF | (v34 << 24)));
  __dmb(0xFu);
  return a1;
}

void AppleEthernetMLX5EQ::~AppleEthernetMLX5EQ(AppleEthernetMLX5EQ *this)
{
  v4 = 0;
  v3 = 515;
  HIDWORD(v4) = *(this + 77) << 24;
  v5 = 0;
  AppleEthernetMLX5Cmd::exec(*(*(this + 7) + 304), &v3, 16, &v2, 16);
  AppleEthernetMLX5DMABuf::~AppleEthernetMLX5DMABuf(this);
}

{
  AppleEthernetMLX5EQ::~AppleEthernetMLX5EQ(this);

  operator delete();
}

AppleEthernetMLX5EQ *DriverKit_AppleEthernetMLX5_IVars::stopEQs(DriverKit_AppleEthernetMLX5_IVars *this)
{
  v3 = (this + 248);
  v2 = *(this + 31);
  if (v2)
  {
    AppleEthernetMLX5EQ::~AppleEthernetMLX5EQ(v2);
    operator delete();
  }

  v4 = *(this + 32);
  if (v4)
  {
    AppleEthernetMLX5EQ::~AppleEthernetMLX5EQ(v4);
    operator delete();
  }

  AppleEthernetMLX5Cmd::setCommandMode(*(this + 38), 0);
  result = *(this + 33);
  if (result)
  {
    AppleEthernetMLX5EQ::~AppleEthernetMLX5EQ(result);
    operator delete();
  }

  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  return result;
}

OSDictionary *DriverKit_AppleEthernetMLX5_IVars::probe(IOService **this, IOPCIDevice *a2)
{
  v4 = 3758097084;
  v11 = 1;
  IOParseBootArgNumber("dk.mlx5", &v11, 4);
  if (v11)
  {
    *returnDeviceNumber = 0;
    returnFunctionNumber = 0;
    if (IOPCIDevice::GetBusDeviceFunction(a2, &returnDeviceNumber[1], returnDeviceNumber, &returnFunctionNumber, 0))
    {
      DriverKit_AppleEthernetMLX5_IVars::probe();
    }

    if (!returnFunctionNumber || (gMLX5DebugFlags & 0x2000) == 0)
    {
      if (IOPCIDevice::Open(a2, *this, 0))
      {
        DriverKit_AppleEthernetMLX5_IVars::probe();
      }

      readData = 0;
      IOPCIDevice::ConfigurationRead8(a2, 4uLL, &readData);
      IOPCIDevice::ConfigurationWrite8(a2, 4uLL, readData | 2);
      v7 = 0;
      IOPCIDevice::MemoryRead32(MLX5_pciDev, 0, 4uLL, &v7);
      v5 = bswap32(v7) >> 16;
      IOPCIDevice::Close(a2, *this, 0);
      if (v5 == 5)
      {
        v4 = OSDictionaryCreate();
        OSDictionarySetStringValue(v4, "IOVendor", "Mellanox");
        OSDictionarySetStringValue(v4, "IOModel", "mlx5");
        IOService::SetProperties(*this, v4, 0);
        if (v4)
        {
          (v4->release)(v4);
          return 0;
        }
      }

      else
      {
        IOLog("Driver cmdif rev(%d) differs from firmware's(%d)\n", 5, v5);
      }
    }
  }

  return v4;
}

uint64_t DriverKit_AppleEthernetMLX5_IVars::start(DriverKit_AppleEthernetMLX5_IVars *this)
{
  *(this + 14414) = this + 115312;
  *(this + 14415) = this + 115312;
  *(this + 15446) = this + 123568;
  *(this + 15447) = this + 123568;
  *(this + 29) = this + 232;
  *(this + 30) = this + 232;
  IOLog("mlx5: mlx5_debug=%x\n", gMLX5DebugFlags);
  readData = 0;
  IOPCIDevice::MemoryRead32(MLX5_pciDev, 0, 0, &readData);
  v1 = __rev16(HIWORD(readData));
  v5 = 0;
  IOPCIDevice::MemoryRead32(MLX5_pciDev, 0, 0, &v5);
  v2 = bswap32(v5) >> 16;
  v6 = 0;
  IOPCIDevice::MemoryRead32(MLX5_pciDev, 0, 4uLL, &v6);
  IOLog("mlx5: firmware version: %d.%d.%d\n", v1, v2, __rev16(HIWORD(v6)));
  return 0;
}

uint64_t DriverKit_AppleEthernetMLX5_IVars::load(DriverKit_AppleEthernetMLX5_IVars *this)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2000000000;
  v9 = 0;
  v2 = *(this + 2);
  block[0] = _NSConcreteStackBlock;
  block[1] = 1107296256;
  block[2] = ___ZN33DriverKit_AppleEthernetMLX5_IVars4loadEb_block_invoke;
  block[4] = &v6;
  block[5] = this;
  block[3] = &__block_descriptor_tmp_2;
  IODispatchQueue::DispatchSync(v2, block);
  v3 = v7[3];
  if (!v3)
  {
LABEL_7:
    IOLog("mlx5: failed to %s in %s:%d\n");
    goto LABEL_8;
  }

  *(this + 38) = v3;
  if (!DriverKit_AppleEthernetMLX5_IVars::waitFwInit(this))
  {
    v13 = 0;
    v12 = 0;
    v11 = 1025;
    if (!AppleEthernetMLX5Cmd::exec(*(this + 38), &v11, 16, v10, 12) && !AppleEthernetMLX5Cmd::statusToErr(v10) && !DriverKit_AppleEthernetMLX5_IVars::setISSI(this) && !DriverKit_AppleEthernetMLX5_IVars::satisfyStartupPages(this, 1) && !DriverKit_AppleEthernetMLX5_IVars::setHCACtrl(this) && !DriverKit_AppleEthernetMLX5_IVars::handleHCACap(this) && !DriverKit_AppleEthernetMLX5_IVars::satisfyStartupPages(this, 0) && !DriverKit_AppleEthernetMLX5_IVars::initHCA(this) && !DriverKit_AppleEthernetMLX5_IVars::queryHCACaps(this) && !DriverKit_AppleEthernetMLX5_IVars::queryBoardId(this) && !DriverKit_AppleEthernetMLX5_IVars::detectMSI(this) && !DriverKit_AppleEthernetMLX5_IVars::allocMapUAR(this, this + 72))
    {
      DriverKit_AppleEthernetMLX5_IVars::startEQs(this);
    }

    goto LABEL_7;
  }

  IOLog("mlx5: firmware initialization timeout\n");
LABEL_8:
  _Block_object_dispose(&v6, 8);
  return 3758097084;
}

uint64_t DriverKit_AppleEthernetMLX5_IVars::waitFwInit(DriverKit_AppleEthernetMLX5_IVars *this)
{
  IOSleep(0x7D0uLL);
  v1 = -1;
  v2 = -2;
  while (1)
  {
    readData = 0;
    IOPCIDevice::MemoryRead32(MLX5_pciDev, 0, 0x1FCuLL, &readData);
    v3 = bswap32(readData);
    if (v1 != v3)
    {
      v1 = v3;
      if (gMLX5DebugFlags)
      {
        IOLog("mlx5:%s:%d OSReadBigInt32(iseg, offsetof(init_seg, initializing)) ==> %x\n", "waitFwInit", 244, v3);
        v1 = v3;
      }
    }

    v6 = 0;
    IOPCIDevice::MemoryRead32(MLX5_pciDev, 0, 0x1FCuLL, &v6);
    v4 = 0;
    if ((v3 & 0x80000000) == 0 || (v6 & 0x80) == 0)
    {
      break;
    }

    IOSleep(2uLL);
    v2 += 2;
    if (v2 >= 0x7CE)
    {
      v4 = 3758097109;
      if (gMLX5DebugFlags)
      {
        IOLog("mlx5:%s:%d waitFwInit() timed out.\n", "waitFwInit", 251);
      }

      return v4;
    }
  }

  return v4;
}

uint64_t DriverKit_AppleEthernetMLX5_IVars::setISSI(AppleEthernetMLX5Cmd **this)
{
  v17 = 0;
  v16 = 0;
  v15 = 2561;
  v2 = AppleEthernetMLX5Cmd::exec(this[38], &v15, 16, v13, 112);
  if (v2 || (v2 = AppleEthernetMLX5Cmd::statusToErr(v13), v2))
  {
    v3 = v2;
    if (v13[0] == 2)
    {
      IOLog("mlx5: Only ISSI 0 is supported\n");
      return 0;
    }

    v4 = 287;
    v5 = "query ISSI";
LABEL_6:
    IOLog("mlx5: failed to %s in %s:%d\n", v5, "setISSI", v4);
    return v3;
  }

  v7 = bswap32(v14);
  if ((v7 & 2) != 0)
  {
    v11 = 0x100000000000000;
    v10 = 2817;
    v12 = 0;
    v8 = AppleEthernetMLX5Cmd::exec(this[38], &v10, 16, v9, 16);
    if (v8)
    {
      v3 = v8;
    }

    else
    {
      v3 = AppleEthernetMLX5Cmd::statusToErr(v9);
      if (!v3)
      {
        *(this + 28806) = 1;
        return v3;
      }
    }

    v4 = 302;
    v5 = "set ISSI=1";
    goto LABEL_6;
  }

  if (v7)
  {
    return 0;
  }

  else
  {
    return 3758097095;
  }
}

uint64_t DriverKit_AppleEthernetMLX5_IVars::handleHCACap(DriverKit_AppleEthernetMLX5_IVars *this)
{
  result = DriverKit_AppleEthernetMLX5_IVars::getCaps(this, 0);
  if (!result)
  {
    bzero(v12, 0x1010uLL);
    v3 = *(this + 520);
    v25 = *(this + 504);
    v26 = v3;
    v4 = *(this + 552);
    v27 = *(this + 536);
    v28 = v4;
    v5 = *(this + 456);
    v21 = *(this + 440);
    v22 = v5;
    v6 = *(this + 488);
    v23 = *(this + 472);
    v24 = v6;
    v7 = *(this + 392);
    v17 = *(this + 376);
    v18 = v7;
    v8 = *(this + 424);
    v19 = *(this + 408);
    v20 = v8;
    v9 = *(this + 328);
    v13 = *(this + 312);
    v14 = v9;
    v10 = *(this + 360);
    v15 = *(this + 344);
    v16 = v10;
    if (gMLX5DebugFlags)
    {
      DriverKit_AppleEthernetMLX5_IVars::handleHCACap(this);
    }

    LODWORD(v16) = v16;
    LODWORD(v17) = v17 & 0xFF3FFFFF;
    WORD1(v22) = 512;
    if ((*(this + 57700) & 8) != 0)
    {
      HIDWORD(v15) |= 8u;
    }

    v12[0] = 2305;
    result = AppleEthernetMLX5Cmd::exec(*(this + 38), v12, 4112, v29, 16);
    if (!result)
    {
      return AppleEthernetMLX5Cmd::statusToErr(v29, v11);
    }
  }

  return result;
}

uint64_t DriverKit_AppleEthernetMLX5_IVars::detectMSI(DriverKit_AppleEthernetMLX5_IVars *this)
{
  if (gMLX5DebugFlags)
  {
    DriverKit_AppleEthernetMLX5_IVars::detectMSI(this);
  }

  return 0;
}

uint64_t DriverKit_AppleEthernetMLX5_IVars::allocCompEQs(DriverKit_AppleEthernetMLX5_IVars *this)
{
  if (*(this + 68) >= 1)
  {
    operator new();
  }

  return 0;
}

uint64_t DriverKit_AppleEthernetMLX5_IVars::startInterface(DriverKit_AppleEthernetMLX5_IVars *this, int a2)
{
  if (a2)
  {
    DriverKit_AppleEthernetMLX5_NetIf_IVars::startInterface((this + 123648));
  }

  return 0;
}

uint64_t DriverKit_AppleEthernetMLX5_IVars::unload(AppleEthernetMLX5Cmd **this)
{
  DriverKit_AppleEthernetMLX5_IVars::cleanupFS(this);
  result = DriverKit_AppleEthernetMLX5_IVars::freeCompEQs(this);
  if (this[38])
  {
    DriverKit_AppleEthernetMLX5_IVars::stopEQs(this);
    DriverKit_AppleEthernetMLX5_IVars::freeUnmapUAR(this, this + 72);
    DriverKit_AppleEthernetMLX5_IVars::teardownHCA(this);
    DriverKit_AppleEthernetMLX5_IVars::reclaimStartupPages(this);
    v8 = 0;
    v7 = 0;
    v6 = 1281;
    AppleEthernetMLX5Cmd::exec(this[38], &v6, 16, v5, 12);
    *(this[38] + 20) = 0;
    v3 = this[19];
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 0x40000000;
    handler[2] = ___ZN33DriverKit_AppleEthernetMLX5_IVars6unloadEv_block_invoke;
    handler[3] = &__block_descriptor_tmp_31;
    handler[4] = this;
    return IODispatchSource::Cancel(v3, handler, 0);
  }

  return result;
}

uint64_t DriverKit_AppleEthernetMLX5_IVars::freeCompEQs(uint64_t this)
{
  v1 = *(this + 232);
  if (v1 != (this + 232))
  {
    v2 = (v1 - 11);
    v4 = *v1;
    v3 = v1[1];
    *(v4 + 8) = v3;
    *v3 = v4;
    AppleEthernetMLX5EQ::~AppleEthernetMLX5EQ(v2);
    operator delete();
  }

  return this;
}

uint64_t ___ZN33DriverKit_AppleEthernetMLX5_IVars6unloadEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 304);
  if (v2)
  {
    AppleEthernetMLX5Cmd::~AppleEthernetMLX5Cmd(v2);
    operator delete();
  }

  *(v1 + 304) = 0;
  result = *(v1 + 152);
  if (result)
  {
    result = (*(*result + 16))(result);
    *(v1 + 152) = 0;
  }

  return result;
}

_DWORD *DriverKit_AppleEthernetMLX5_IVars::vectorToEQ(DriverKit_AppleEthernetMLX5_IVars *this, int a2)
{
  v2 = (this + 232);
  while (1)
  {
    v2 = *v2;
    if (v2 == (this + 232))
    {
      break;
    }

    if (v2[4] == a2)
    {
      return v2 - 22;
    }
  }

  return 0;
}

uint64_t DriverKit_AppleEthernetMLX5_IVars::getCapsMode(uint64_t a1, unsigned int a2, int a3)
{
  v12 = 0;
  v11[0] = 1;
  v11[1] = bswap32(a3 & 1 | (2 * (a2 & 0x7FFF)));
  v6 = AppleEthernetMLX5Cmd::exec(*(a1 + 304), v11, 16, v13, 4112);
  if (v6 || (v6 = AppleEthernetMLX5Cmd::statusToErr(v13, v7), v6))
  {
    v8 = v6;
    IOLog("mlx5: QUERY_HCA_CAP : type(%x) opmode(%x) Failed(%d)\n", a2, a3, v6);
  }

  else
  {
    if (a3 == 1)
    {
      v9 = (a1 + (a2 << 12) + 312);
    }

    else
    {
      if (a3)
      {
        IOLog("mlx5: Tried to query dev cap type(%x) with wrong opmode(%x)\n", a2, a3);
        return 3758096385;
      }

      v9 = (a1 + (a2 << 12) + 57656);
    }

    memcpy(v9, v14, 0x1000uLL);
    return 0;
  }

  return v8;
}

uint64_t DriverKit_AppleEthernetMLX5_IVars::getCaps(uint64_t a1, unsigned int a2)
{
  result = DriverKit_AppleEthernetMLX5_IVars::getCapsMode(a1, a2, 1);
  if (!result)
  {

    return DriverKit_AppleEthernetMLX5_IVars::getCapsMode(a1, a2, 0);
  }

  return result;
}

uint64_t DriverKit_AppleEthernetMLX5_IVars::event(uint64_t result, int a2)
{
  if ((a2 - 1) > 1)
  {
    return IOLog("mlx5::event %x - unsupported\n", a2);
  }

  if (*(result + 123672) == 2)
  {
    v3 = (result + 123648);

    return DriverKit_AppleEthernetMLX5_NetIf_IVars::updateCarrier(v3);
  }

  return result;
}

uint64_t DriverKit_AppleEthernetMLX5_IVars::addHwMacAddress(DriverKit_AppleEthernetMLX5_IVars *this, const unsigned __int8 *a2, int a3)
{
  if ((*(this + 364) & 1) == 0)
  {
    return 0;
  }

  v10 = v3;
  v11 = v4;
  memset(&v9[16], 0, 28);
  *v9 = 0u;
  v8 = 0u;
  v7 = 10504;
  *v9 = bswap32(a3 & 0xFFFFFF);
  *&v9[14] = *a2;
  *&v9[18] = *(a2 + 2);
  result = AppleEthernetMLX5Cmd::exec(*(this + 38), &v7, 64, v6, 16);
  if (!result)
  {
    return AppleEthernetMLX5Cmd::statusToErr(v6);
  }

  return result;
}

uint64_t DriverKit_AppleEthernetMLX5_IVars::removeHwMacAddress(DriverKit_AppleEthernetMLX5_IVars *this, int a2)
{
  if ((*(this + 364) & 1) == 0)
  {
    return 0;
  }

  v10 = v2;
  v11 = v3;
  memset(v9, 0, sizeof(v9));
  v8 = 0u;
  v7 = 0u;
  v6 = 11016;
  LODWORD(v8) = bswap32(a2 & 0xFFFFFF);
  result = AppleEthernetMLX5Cmd::exec(*(this + 38), &v6, 64, v5, 16);
  if (!result)
  {
    return AppleEthernetMLX5Cmd::statusToErr(v5);
  }

  return result;
}

void AppleEthernetMLX5CmdMsg::AppleEthernetMLX5CmdMsg(AppleEthernetMLX5CmdMsg *this, unsigned int a2, const char *a3)
{
  *(this + 24) = 0u;
  v3 = a2 - 16;
  if (a2 < 0x10)
  {
    v3 = 0;
  }

  v4 = v3 + 511;
  *(this + 40) = 0uLL;
  *this = a2;
  *(this + 1) = v4 >> 9;
  if (v4 >= 0x200)
  {
    operator new();
  }
}

void AppleEthernetMLX5CmdMsg::~AppleEthernetMLX5CmdMsg(AppleEthernetMLX5CmdMsg *this)
{
  v2 = *(this + 3);
  if (v2)
  {
    v3 = *(v2 + 16);
    operator delete();
  }

  v4 = *(this + 4);
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }
}

uint64_t AppleEthernetMLX5CmdWorkEnt::dump(AppleEthernetMLX5CmdWorkEnt *this, int a2)
{
  v4 = bswap32(*(*(this + 4) + 16)) >> 16;
  v5 = 8;
  if (a2)
  {
    v5 = 0;
  }

  v6 = *(this + v5);
  v7 = gMLX5DebugFlags;
  if (a2)
  {
    v8 = "INPUT";
  }

  else
  {
    v8 = "OUTPUT";
  }

  v9 = mlx5_command_str(v4);
  v10 = *v6;
  if ((v7 & 2) != 0)
  {
    IOLog("mlx5: dump command data %s(0x%x) %s, len = %d\n", v9, v4, v8, v10);
    v15 = *(this + 4);
    v12 = 16;
    if (a2)
    {
      v11 = v15 + 16;
    }

    else
    {
      v11 = v15 + 32;
    }

    v13 = 16;
    v14 = 1;
  }

  else
  {
    IOLog("mlx5: dump command %s(0x%x) %s, len = %d\n", v9, v4, v8, v10);
    v11 = *(this + 4);
    v12 = 64;
    v13 = 64;
    v14 = 0;
  }

  result = dump_buf(v11, v13, v14, 0);
  for (i = *(v6 + 3); i; i = i[2])
  {
    if (*v6 <= v12)
    {
      break;
    }

    if ((v7 & 2) != 0)
    {
      v19 = 512;
      v20 = (*v6 - v12) >= 512 ? 512 : *v6 - v12;
      v18 = *i;
      v21 = 1;
    }

    else
    {
      IOLog("mlx5: command block:\n");
      v18 = *i;
      v19 = 576;
      v20 = 576;
      v21 = 0;
    }

    result = dump_buf(v18, v20, v21, v12);
    v12 += v19;
  }

  if ((v7 & 2) != 0)
  {

    return IOLog("\n");
  }

  return result;
}

const char *mlx5_command_str(int a1)
{
  if (a1 > 2047)
  {
    switch(a1)
    {
      case 2304:
        result = "CREATE_TIR";
        break;
      case 2305:
        result = "MODIFY_TIR";
        break;
      case 2306:
        result = "DESTROY_TIR";
        break;
      case 2307:
        result = "QUERY_TIR";
        break;
      case 2308:
        result = "CREATE_SQ";
        break;
      case 2309:
        result = "MODIFY_SQ";
        break;
      case 2310:
        result = "DESTROY_SQ";
        break;
      case 2311:
        result = "QUERY_SQ";
        break;
      case 2312:
        result = "CREATE_RQ";
        break;
      case 2313:
        result = "MODIFY_RQ";
        break;
      case 2314:
        result = "DESTROY_RQ";
        break;
      case 2315:
        result = "QUERY_RQ";
        break;
      case 2316:
        result = "CREATE_RMP";
        break;
      case 2317:
        result = "MODIFY_RMP";
        break;
      case 2318:
        result = "DESTROY_RMP";
        break;
      case 2319:
        result = "QUERY_RMP";
        break;
      case 2320:
      case 2321:
      case 2330:
      case 2331:
      case 2332:
      case 2333:
      case 2334:
      case 2335:
      case 2336:
      case 2337:
      case 2338:
      case 2339:
      case 2340:
      case 2341:
      case 2342:
      case 2343:
      case 2344:
      case 2345:
      case 2346:
      case 2347:
      case 2348:
      case 2349:
      case 2350:
        return "unknown command opcode";
      case 2322:
        result = "CREATE_TIS";
        break;
      case 2323:
        result = "MODIFY_TIS";
        break;
      case 2324:
        result = "DESTROY_TIS";
        break;
      case 2325:
        result = "QUERY_TIS";
        break;
      case 2326:
        result = "CREATE_RQT";
        break;
      case 2327:
        result = "MODIFY_RQT";
        break;
      case 2328:
        result = "DESTROY_RQT";
        break;
      case 2329:
        result = "QUERY_RQT";
        break;
      case 2351:
        result = "SET_FLOW_TABLE_ROOT";
        break;
      case 2352:
        result = "CREATE_FLOW_TABLE";
        break;
      case 2353:
        result = "DESTROY_FLOW_TABLE";
        break;
      case 2354:
        result = "QUERY_FLOW_TABLE";
        break;
      case 2355:
        result = "CREATE_FLOW_GROUP";
        break;
      case 2356:
        result = "DESTROY_FLOW_GROUP";
        break;
      case 2357:
        result = "QUERY_FLOW_GROUP";
        break;
      case 2358:
        result = "SET_FLOW_TABLE_ENTRY";
        break;
      case 2359:
        result = "QUERY_FLOW_TABLE_ENTRY";
        break;
      case 2360:
        result = "DELETE_FLOW_TABLE_ENTRY";
        break;
      case 2361:
        result = "ALLOC_FLOW_COUNTER";
        break;
      case 2362:
        result = "DEALLOC_FLOW_COUNTER";
        break;
      case 2363:
        result = "QUERY_FLOW_COUNTER";
        break;
      case 2364:
        result = "MODIFY_FLOW_TABLE";
        break;
      default:
        switch(a1)
        {
          case 2048:
            result = "ALLOC_PD";
            break;
          case 2049:
            result = "DEALLOC_PD";
            break;
          case 2050:
            result = "ALLOC_UAR";
            break;
          case 2051:
            result = "DEALLOC_UAR";
            break;
          case 2052:
            result = "CONFIG_INT_MODERATION";
            break;
          case 2053:
            result = "ACCESS_REG";
            break;
          case 2054:
            result = "ATTACH_TO_MCG";
            break;
          case 2055:
            result = "DETACH_FROM_MCG";
            break;
          case 2058:
            result = "GET_DROPPED_PACKET_LOG";
            break;
          case 2059:
            result = "QUERY_MAD_DEMUX";
            break;
          case 2060:
            result = "SET_MAD_DEMUX";
            break;
          case 2061:
            result = "NOP";
            break;
          case 2062:
            result = "ALLOC_XRCD";
            break;
          case 2063:
            result = "DEALLOC_XRCD";
            break;
          case 2070:
            result = "ALLOC_TRANSPORT_DOMAIN";
            break;
          case 2071:
            result = "DEALLOC_TRANSPORT_DOMAIN";
            break;
          case 2082:
            result = "QUERY_CONG_STATUS";
            break;
          case 2083:
            result = "MODIFY_CONG_STATUS";
            break;
          case 2084:
            result = "QUERY_CONG_PARAMS";
            break;
          case 2085:
            result = "MODIFY_CONG_PARAMS";
            break;
          case 2086:
            result = "QUERY_CONG_STATISTICS";
            break;
          case 2087:
            result = "ADD_VXLAN_UDP_DPORT";
            break;
          case 2088:
            result = "DELETE_VXLAN_UDP_DPORT";
            break;
          case 2089:
            result = "SET_L2_TABLE_ENTRY";
            break;
          case 2090:
            result = "QUERY_L2_TABLE_ENTRY";
            break;
          case 2091:
            result = "DELETE_L2_TABLE_ENTRY";
            break;
          case 2096:
            result = "SET_WOL_ROL";
            break;
          case 2097:
            result = "QUERY_WOL_ROL";
            break;
          default:
            return "unknown command opcode";
        }

        break;
    }
  }

  else
  {
    if (a1 <= 1535)
    {
      if (a1 <= 770)
      {
        if (a1 > 265)
        {
          if (a1 <= 513)
          {
            if (a1 > 511)
            {
              if (a1 == 512)
              {
                return "CREATE_MKEY";
              }

              else
              {
                return "QUERY_MKEY";
              }
            }

            if (a1 == 266)
            {
              return "QUERY_ISSI";
            }

            if (a1 == 267)
            {
              return "SET_ISSI";
            }
          }

          else
          {
            if (a1 <= 515)
            {
              if (a1 == 514)
              {
                return "DESTROY_MKEY";
              }

              else
              {
                return "QUERY_SPECIAL_CONTEXTS";
              }
            }

            switch(a1)
            {
              case 516:
                return "PAGE_FAULT_RESUME";
              case 769:
                return "CREATE_EQ";
              case 770:
                return "DESTROY_EQ";
            }
          }
        }

        else if (a1 <= 259)
        {
          if (a1 > 257)
          {
            if (a1 == 258)
            {
              return "INIT_HCA";
            }

            else
            {
              return "TEARDOWN_HCA";
            }
          }

          if (a1 == 256)
          {
            return "QUERY_HCA_CAP";
          }

          if (a1 == 257)
          {
            return "QUERY_ADAPTER";
          }
        }

        else
        {
          if (a1 > 262)
          {
            if (a1 == 263)
            {
              return "QUERY_PAGES";
            }

            if (a1 == 264)
            {
              return "MANAGE_PAGES";
            }

            return "SET_HCA_CAP";
          }

          if (a1 == 260)
          {
            return "ENABLE_HCA";
          }

          if (a1 == 261)
          {
            return "DISABLE_HCA";
          }
        }
      }

      else
      {
        if (a1 > 1025)
        {
          switch(a1)
          {
            case 1280:
              return "CREATE_QP";
            case 1281:
              return "DESTROY_QP";
            case 1282:
              return "RST2INIT_QP";
            case 1283:
              return "INIT2RTR_QP";
            case 1284:
              return "RTR2RTS_QP";
            case 1285:
              return "RTS2RTS_QP";
            case 1286:
              return "SQERR2RTS_QP";
            case 1287:
              return "2ERR_QP";
            case 1288:
            case 1289:
              return "unknown command opcode";
            case 1290:
              return "2RST_QP";
            case 1291:
              return "QUERY_QP";
            case 1292:
              return "SQD_RTS_QP";
            case 1293:
              return "MAD_IFC";
            case 1294:
              return "INIT2INIT_QP";
            default:
              if (a1 == 1026)
              {
                result = "QUERY_CQ";
              }

              else
              {
                if (a1 != 1027)
                {
                  return "unknown command opcode";
                }

                result = "MODIFY_CQ";
              }

              break;
          }

          return result;
        }

        if (a1 > 1023)
        {
          if (a1 == 1024)
          {
            return "CREATE_CQ";
          }

          else
          {
            return "DESTROY_CQ";
          }
        }

        if (a1 == 771)
        {
          return "QUERY_EQ";
        }

        if (a1 == 772)
        {
          return "GEN_EQE";
        }
      }

      return "unknown command opcode";
    }

    if (a1 <= 1871)
    {
      switch(a1)
      {
        case 1792:
          return "CREATE_SRQ";
        case 1793:
          return "DESTROY_SRQ";
        case 1794:
          return "QUERY_SRQ";
        case 1795:
          return "ARM_RQ";
        case 1796:
        case 1801:
        case 1802:
        case 1803:
        case 1804:
        case 1805:
        case 1806:
        case 1807:
          return "unknown command opcode";
        case 1797:
          return "CREATE_XRC_SRQ";
        case 1798:
          return "DESTROY_XRC_SRQ";
        case 1799:
          return "QUERY_XRC_SRQ";
        case 1800:
          return "ARM_XRC_SRQ";
        case 1808:
          return "CREATE_DCT";
        case 1809:
          return "DESTROY_DCT";
        case 1810:
          return "DRAIN_DCT";
        case 1811:
          return "QUERY_DCT";
        case 1812:
          return "ARM_DCT_FOR_KEY_VIOLATION";
        default:
          if (a1 == 1536)
          {
            result = "CREATE_PSV";
          }

          else
          {
            if (a1 != 1537)
            {
              return "unknown command opcode";
            }

            result = "DESTROY_PSV";
          }

          break;
      }
    }

    else
    {
      switch(a1)
      {
        case 1872:
          result = "QUERY_VPORT_STATE";
          break;
        case 1873:
          result = "MODIFY_VPORT_STATE";
          break;
        case 1874:
          result = "QUERY_ESW_VPORT_CONTEXT";
          break;
        case 1875:
          result = "MODIFY_ESW_VPORT_CONTEXT";
          break;
        case 1876:
          result = "QUERY_NIC_VPORT_CONTEXT";
          break;
        case 1877:
          result = "MODIFY_NIC_VPORT_CONTEXT";
          break;
        case 1888:
          result = "QUERY_ROCE_ADDRESS";
          break;
        case 1889:
          result = "SET_ROCE_ADDRESS";
          break;
        case 1890:
          result = "QUERY_HCA_VPORT_CONTEXT";
          break;
        case 1891:
          result = "MODIFY_HCA_VPORT_CONTEXT";
          break;
        case 1892:
          result = "QUERY_HCA_VPORT_GID";
          break;
        case 1893:
          result = "QUERY_HCA_VPORT_PKEY";
          break;
        case 1904:
          result = "QUERY_VPORT_COUNTER";
          break;
        case 1905:
          result = "ALLOC_Q_COUNTER";
          break;
        case 1906:
          result = "DEALLOC_Q_COUNTER";
          break;
        case 1907:
          result = "QUERY_Q_COUNTER";
          break;
        default:
          return "unknown command opcode";
      }
    }
  }

  return result;
}

uint64_t dump_buf(uint64_t result, int a2, char a3, int a4)
{
  if (a2 >= 1)
  {
    v6 = result;
    v7 = 0;
    do
    {
      result = IOLog("%03x: %02x %02x %02x %02x %02x %02x %02x %02x %02x %02x %02x %02x %02x %02x %02x %02x\n", a4 + v7, *(v6 + v7), *(v6 + v7 + 1), *(v6 + v7 + 2), *(v6 + v7 + 3), *(v6 + v7 + 4), *(v6 + v7 + 5), *(v6 + v7 + 6), *(v6 + v7 + 7), *(v6 + v7 + 8), *(v6 + v7 + 9), *(v6 + v7 + 10), *(v6 + v7 + 11), *(v6 + v7 + 12), *(v6 + v7 + 13), *(v6 + v7 + 14), *(v6 + v7 + 15));
      v7 += 16;
    }

    while (v7 < a2);
  }

  if ((a3 & 1) == 0)
  {

    return IOLog("\n");
  }

  return result;
}

uint64_t AppleEthernetMLX5Cmd::setCommandMode(uint64_t result, int a2)
{
  v3 = result;
  if (gMLX5DebugFlags)
  {
    result = IOLog("mlx5:%s:%d pool0=%d, pool1=%d\n", "setCommandMode", 406, *(result + 344), *(result + 345));
  }

  *(v3 + 76) = a2;
  return result;
}

uint64_t AppleEthernetMLX5CmdWorkEnt::waitFor(AppleEthernetMLX5CmdWorkEnt *this)
{
  v2 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW) + 60000000000;
  while (1)
  {
    v3 = IODispatchQueue::Sleep(*(*(*(this + 3) + 56) + 16), this + 52, 0xBEBC200uLL);
    v4 = atomic_load(this + 52);
    if (v4)
    {
      break;
    }

    if (v3 != -536870186 && v3 != 0)
    {
      AppleEthernetMLX5CmdWorkEnt::waitFor(v3);
    }

    if (*(*(*(this + 3) + 56) + 160) == 3 || (readData = 0, IOPCIDevice::MemoryRead32(MLX5_pciDev, 0, 0, &readData), readData == -1))
    {
      if (gMLX5DebugFlags)
      {
        IOLog("mlx5:%s:%d unplugged\n", "waitFor", 547);
      }

      result = 3758097111;
      atomic_store(1u, this + 52);
      v7 = *(this + 3);
      v8 = 344;
      if (*(v7 + 68) != *(this + 4))
      {
        v8 = 345;
      }

      --*(v7 + v8);
      *(this + 12) = -536870185;
      return result;
    }

    if (clock_gettime_nsec_np(_CLOCK_UPTIME_RAW) >= v2)
    {
      AppleEthernetMLX5CmdWorkEnt::waitFor();
    }
  }

  if (gMLX5DebugFlags)
  {
    AppleEthernetMLX5CmdWorkEnt::waitFor(this);
  }

  return *(this + 12);
}

const char *deliv_status_to_str(unsigned int a1)
{
  if (a1 > 0x10)
  {
    return "unknown status code";
  }

  else
  {
    return off_1000247C0[a1];
  }
}

BOOL AppleEthernetMLX5Cmd::poll(AppleEthernetMLX5Cmd *this)
{
  v2 = *(this + 20);
  if (v2)
  {
    v3 = __clz(v2) ^ 0x1F;
    v4 = *(this + v3 + 11);
    __dmb(1u);
    result = 1;
    if (*(*(v4 + 32) + 63))
    {
      return result;
    }

    AppleEthernetMLX5Cmd::compHandler(this, 1 << v3);
  }

  return (*(this + 345) | *(this + 344)) != 0;
}

uint64_t AppleEthernetMLX5Cmd::compHandler(uint64_t this, unsigned int a2)
{
  if (!a2)
  {
    return this;
  }

  v2 = a2;
  v3 = this;
  v4 = this + 88;
  do
  {
    v5 = __clz(v2) ^ 0x1F;
    v6 = 1 << v5;
    v7 = *(v4 + 8 * v5);
    LOBYTE(v5) = atomic_load((v7 + 52));
    if (v5)
    {
      goto LABEL_25;
    }

    *(v3 + 80) &= ~v6;
    __dmb(1u);
    *(*(v7 + 8) + 8) = *(*(v7 + 32) + 32);
    if (gMLX5DebugFlags)
    {
      AppleEthernetMLX5CmdWorkEnt::dump(v7, 0);
    }

    if (*(v7 + 48))
    {
      goto LABEL_22;
    }

    v8 = *(v7 + 32);
    if (*(v3 + 368))
    {
      goto LABEL_20;
    }

    v9 = veorq_s8(veorq_s8(v8[3], v8[2]), veorq_s8(v8[1], *v8));
    *v9.i8 = veor_s8(*v9.i8, *&vextq_s8(v9, v9, 8uLL));
    if (((v9.i8[0] ^ v9.i8[4] ^ ((v9.i32[0] ^ v9.i32[1]) >> 16)) ^ ((v9.i16[0] ^ v9.i16[2] ^ ((v9.i32[0] ^ v9.i32[1]) >> 16)) >> 8)) != -1)
    {
      goto LABEL_28;
    }

    v10 = *(*(v7 + 8) + 24);
    if (!v10)
    {
      goto LABEL_19;
    }

    do
    {
      v11 = 0;
      v12 = 0;
      do
      {
        v12 ^= *(*v10 + 512 + v11++);
      }

      while (v11 != 63);
      if (v12 != 255)
      {
        IOLog("mlx5: verifyBlockSig failed 0!!!\n");
LABEL_28:
        AppleEthernetMLX5Cmd::compHandler((v7 + 48), v7);
      }

      v13 = 0;
      v14 = 0uLL;
      do
      {
        v14 = veorq_s8(*(*v10 + v13), v14);
        v13 += 16;
      }

      while (v13 != 576);
      v15 = veor_s8(*v14.i8, *&vextq_s8(v14, v14, 8uLL));
      v16 = *&v15 ^ HIDWORD(*&v15) ^ ((*&v15 ^ HIDWORD(*&v15)) >> 16);
      v17 = v16 ^ BYTE1(v16);
      if (v17 != 0xFF)
      {
        v18 = v17;
        IOLog("mlx5: verifyBlockSig failed 1 => %x!!!\n", v17);
        if (v18 != 254)
        {
          goto LABEL_28;
        }
      }

      v10 = v10[2];
    }

    while (v10);
    v8 = *(v7 + 32);
LABEL_19:
    *(v7 + 48) = 0;
LABEL_20:
    **(v7 + 40) = v8[3].i8[15] >> 1;
    if (gMLX5DebugFlags)
    {
      IOLog("mlx5:%s:%d command completed. ret 0x%x, delivery status 0x%x\n", "compHandler", 597, *(v7 + 48), **(v7 + 40));
    }

LABEL_22:
    atomic_store(1u, (v7 + 52));
    this = IODispatchQueue::Wakeup(*(*(v3 + 56) + 16), (v7 + 52));
    v19 = 344;
    if (*(*(v7 + 24) + 68) != *(v7 + 16))
    {
      v19 = 345;
    }

    --*(v3 + v19);
LABEL_25:
    v2 &= ~v6;
  }

  while (v2);
  return this;
}

AppleEthernetMLX5CmdMsg *AppleEthernetMLX5Cmd::allocCmdMsg(AppleEthernetMLX5Cmd *this, unsigned int a2)
{
  if (a2 < 0x11 || (v2 = *(this + 44), v2 == (this + 352)))
  {
LABEL_7:
    operator new();
  }

  v3 = (v2 - 5);
  v5 = *v2;
  v4 = v2[1];
  *(v5 + 8) = v4;
  *v4 = v5;
  v6 = *(v2 - 9);
  if (v6 != (a2 + 495) >> 9)
  {
    AppleEthernetMLX5Cmd::releaseCmdMsg(this, v3);
    goto LABEL_7;
  }

  *v3 = a2;
  if ((gMLX5DebugFlags & 4) != 0)
  {
    IOLog("mlx5: reusing cached CmdMsgInp (%p) size 0x%x (%d)\n", v3, a2, v6);
  }

  return v3;
}

uint64_t AppleEthernetMLX5Cmd::releaseCmdMsg(uint64_t this, AppleEthernetMLX5CmdMsg *a2)
{
  v2 = a2;
  if (!*(a2 + 1))
  {
    goto LABEL_4;
  }

  v3 = *(this + 352);
  v4 = *(this + 360);
  *(a2 + 5) = this + 352;
  *(this + 360) = a2 + 40;
  *(a2 + 6) = v4;
  *v4 = a2 + 40;
  if (v3 != this + 352)
  {
    v5 = *(this + 352);
    v7 = *v5;
    v6 = v5[1];
    *(v7 + 8) = v6;
    *v6 = v7;
    v2 = (v5 - 5);
LABEL_4:
    AppleEthernetMLX5CmdMsg::~AppleEthernetMLX5CmdMsg(v2);

    operator delete();
  }

  return this;
}

uint64_t AppleEthernetMLX5Cmd::exec(AppleEthernetMLX5Cmd *this, void *a2, int a3, void *a4, int a5)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2000000000;
  v14 = 0;
  v5 = *(*(this + 7) + 16);
  block[0] = _NSConcreteStackBlock;
  block[1] = 1107296256;
  block[2] = ___ZN20AppleEthernetMLX5Cmd4execEPviS0_i_block_invoke;
  v9 = a3;
  v10 = a5;
  block[5] = this;
  block[6] = a2;
  block[3] = &__block_descriptor_tmp_3;
  block[4] = &v11;
  block[7] = a4;
  IODispatchQueue::DispatchSync(v5, block);
  v6 = *(v12 + 6);
  _Block_object_dispose(&v11, 8);
  return v6;
}

void ___ZN20AppleEthernetMLX5Cmd4execEPviS0_i_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = AppleEthernetMLX5Cmd::allocCmdMsg(v2, *(a1 + 64));
  AppleEthernetMLX5CmdMsg::AppleEthernetMLX5CmdMsg(&v30, *(a1 + 68), "CmdMsgOut");
  v4 = *(a1 + 48);
  v5 = *v3;
  if (*v3 >= 16)
  {
    v6 = 16;
  }

  else
  {
    v6 = *v3;
  }

  v7 = v6;
  memcpy(v3 + 8, *(a1 + 48), v6);
  v8 = v5 - v6;
  if (v8)
  {
    v9 = (v3 + 24);
    v10 = (v4 + v7);
    do
    {
      v11 = *v9;
      if (!v11)
      {
        ___ZN20AppleEthernetMLX5Cmd4execEPviS0_i_block_invoke_cold_1();
      }

      if (v8 >= 512)
      {
        v12 = 512;
      }

      else
      {
        v12 = v8;
      }

      v13 = *v11;
      v9 = (v11 + 2);
      memcpy(v13, v10, v12);
      v10 += v12;
      v8 -= v12;
    }

    while (v8);
  }

  v29 = 0;
  v14 = **(a1 + 48);
  if ((gMLX5DebugFlags & 4) != 0)
  {
    ___ZN20AppleEthernetMLX5Cmd4execEPviS0_i_block_invoke_cold_2(**(a1 + 48));
  }

  *(*(*(a1 + 32) + 8) + 24) = AppleEthernetMLX5Cmd::invoke(v2, v3, &v30, &v29, v14 == 2049);
  AppleEthernetMLX5Cmd::releaseCmdMsg(v2, v3);
  v15 = *(a1 + 32);
  v16 = *(*(v15 + 8) + 24);
  if (v16)
  {
    IOLog("mlx5: Cmd::exec => err 0x%x, status 0x%x\n", v16, v29);
    v15 = *(a1 + 32);
  }

  if (gMLX5DebugFlags)
  {
    IOLog("mlx5:%s:%d mlx5: err 0x%x, status 0x%x\n", "exec_block_invoke", 704, *(*(v15 + 8) + 24), v29);
    v15 = *(a1 + 32);
  }

  v17 = *(*(v15 + 8) + 24);
  if (v17)
  {
    goto LABEL_32;
  }

  if (v29)
  {
    v18 = -536870212;
  }

  else
  {
    v19 = *(a1 + 56);
    v20 = v30;
    if (v30 >= 16)
    {
      v21 = 16;
    }

    else
    {
      v21 = v30;
    }

    memcpy(*(a1 + 56), &v31, v21);
    v22 = v20 - v21;
    if (v22)
    {
      v23 = &v32;
      v24 = (v19 + v21);
      do
      {
        v25 = *v23;
        if (!v25)
        {
          ___ZN20AppleEthernetMLX5Cmd4execEPviS0_i_block_invoke_cold_3();
        }

        if (v22 >= 512)
        {
          v26 = 512;
        }

        else
        {
          v26 = v22;
        }

        v27 = *v25;
        v23 = (v25 + 2);
        memcpy(v24, v27, v26);
        v24 += v26;
        v22 -= v26;
      }

      while (v22);
    }

    v18 = 0;
  }

  *(*(*(a1 + 32) + 8) + 24) = v18;
  v17 = *(*(*(a1 + 32) + 8) + 24);
  if (v17)
  {
LABEL_32:
    IOLog("mlx5: Cmd::exec => err 0x%x, status 0x%x\n", v17, v29);
    IOSleep(0x32uLL);
  }

  else
  {
    v28 = *(a1 + 56);
    if (*v28)
    {
      AppleEthernetMLX5Cmd::statusToErr(v28);
      IOSleep(0x32uLL);
      if ((gMLX5DebugFlags & 0x10000) != 0)
      {
        ___ZN20AppleEthernetMLX5Cmd4execEPviS0_i_block_invoke_cold_4(v28);
      }

      IOLog("mlx5: command failed, status (0x%x), syndrome 0x%x\n", *v28, bswap32(*(v28 + 1)));
    }
  }

  AppleEthernetMLX5CmdMsg::~AppleEthernetMLX5CmdMsg(&v30);
}