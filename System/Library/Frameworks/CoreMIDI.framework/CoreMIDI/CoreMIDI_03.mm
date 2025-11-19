void sub_237200D9C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::exception a10)
{
  CADeprecated::CAMutex::Locker::~Locker(&a10);
  if (a2 == 2)
  {
    __cxa_get_exception_ptr(a1);
    a10.__vftable = (MEMORY[0x277D82910] + 16);
    __cxa_begin_catch(a1);
    std::exception::~exception(&a10);
  }

  else
  {
    __cxa_begin_catch(a1);
  }

  __cxa_end_catch();
  JUMPOUT(0x237200D74);
}

uint64_t _MIDIGetDestination(MIDIServer *a1)
{
  v1 = a1;
  v2 = MIDIServer::defaultInstance(a1) + 2;
  v3 = (*(*v2 + 16))(v2);
  v4 = v3;
  IntegerProperty = SetupManager::instance(v3);
  v6 = *(*IntegerProperty + 112);
  v7 = *(*IntegerProperty + 120);
  while (1)
  {
    if (v6 == v7)
    {
      goto LABEL_10;
    }

    v8 = *v6;
    v14 = 0;
    IntegerProperty = MIDIObject::GetIntegerProperty(v8, kMIDIPropertyOffline, &v14);
    if (!v14)
    {
      v14 = 0;
      IntegerProperty = MIDIObject::GetIntegerProperty(v8, kMIDIPropertyPrivate, &v14);
      if (!v14)
      {
        break;
      }
    }

LABEL_7:
    ++v6;
  }

  if (v1)
  {
    --v1;
    goto LABEL_7;
  }

  if (v8)
  {
LABEL_18:
    v12 = v8[2];
    if (!v4)
    {
      return v12;
    }

    goto LABEL_21;
  }

  v1 = -1;
LABEL_10:
  v9 = SetupManager::instance(IntegerProperty);
  v10 = *(v9 + 32);
  v11 = *(v9 + 40);
  while (v10 != v11)
  {
    v8 = *v10;
    v14 = 0;
    MIDIObject::GetIntegerProperty(v8, kMIDIPropertyOffline, &v14);
    if (!v14)
    {
      v14 = 0;
      MIDIObject::GetIntegerProperty(v8, kMIDIPropertyPrivate, &v14);
      if (!v14)
      {
        if (!v1)
        {
          if (v8)
          {
            goto LABEL_18;
          }

          break;
        }

        --v1;
      }
    }

    ++v10;
  }

  v12 = 0;
  if (v4)
  {
LABEL_21:
    (*(*v2 + 24))(v2);
  }

  return v12;
}

void sub_237200FC0(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::exception a10)
{
  CADeprecated::CAMutex::Locker::~Locker(&a10);
  if (a2 == 2)
  {
    __cxa_get_exception_ptr(a1);
    a10.__vftable = (MEMORY[0x277D82910] + 16);
    __cxa_begin_catch(a1);
    std::exception::~exception(&a10);
  }

  else
  {
    __cxa_begin_catch(a1);
  }

  __cxa_end_catch();
  JUMPOUT(0x237200F9CLL);
}

uint64_t _MIDIGetNumberOfExternalDevices(MIDIServer *a1)
{
  v1 = MIDIServer::defaultInstance(a1) + 2;
  v2 = (*(*v1 + 16))(v1);
  v3 = v2;
  v4 = *SetupManager::instance(v2);
  if (!v4 || (v5 = *(v4 + 152), v6 = *(v4 + 160), v5 == v6))
  {
    v7 = 0;
    if (!v3)
    {
      return v7;
    }

LABEL_10:
    (*(*v1 + 24))(v1);
    return v7;
  }

  v7 = 0;
  do
  {
    v8 = *v5;
    v10 = 0;
    MIDIObject::GetIntegerProperty(v8, kMIDIPropertyPrivate, &v10);
    if (!v10)
    {
      ++v7;
    }

    ++v5;
  }

  while (v5 != v6);
  if (v3)
  {
    goto LABEL_10;
  }

  return v7;
}

void sub_237201148(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::exception a10)
{
  CADeprecated::CAMutex::Locker::~Locker(&a10);
  if (a2 == 2)
  {
    __cxa_get_exception_ptr(a1);
    a10.__vftable = (MEMORY[0x277D82910] + 16);
    __cxa_begin_catch(a1);
    std::exception::~exception(&a10);
  }

  else
  {
    __cxa_begin_catch(a1);
  }

  __cxa_end_catch();
  JUMPOUT(0x237201128);
}

uint64_t _MIDIGetExternalDevice(MIDIServer *a1)
{
  v1 = a1;
  v2 = MIDIServer::defaultInstance(a1) + 2;
  v3 = (*(*v2 + 16))(v2);
  v4 = v3;
  v5 = SetupManager::instance(v3);
  v6 = *(*v5 + 152);
  v7 = *(*v5 + 160);
  if (v6 == v7)
  {
    goto LABEL_6;
  }

  while (1)
  {
    v8 = *v6;
    v11 = 0;
    MIDIObject::GetIntegerProperty(v8, kMIDIPropertyPrivate, &v11);
    if (!v11)
    {
      break;
    }

LABEL_5:
    if (++v6 == v7)
    {
      goto LABEL_6;
    }
  }

  if (v1)
  {
    v1 = (v1 - 1);
    goto LABEL_5;
  }

  if (!v8)
  {
LABEL_6:
    v9 = 0;
    if (v4)
    {
      goto LABEL_7;
    }

    return v9;
  }

  v9 = v8[2];
  if (!v4)
  {
    return v9;
  }

LABEL_7:
  (*(*v2 + 24))(v2);
  return v9;
}

void sub_2372012DC(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::exception a10)
{
  CADeprecated::CAMutex::Locker::~Locker(&a10);
  if (a2 == 2)
  {
    __cxa_get_exception_ptr(a1);
    a10.__vftable = (MEMORY[0x277D82910] + 16);
    __cxa_begin_catch(a1);
    std::exception::~exception(&a10);
  }

  else
  {
    __cxa_begin_catch(a1);
  }

  __cxa_end_catch();
  JUMPOUT(0x2372012A8);
}

uint64_t _MIDISend(MIDIServer *a1, unsigned int a2, const MIDI::EventList *a3)
{
  v5 = a1;
  v6 = MIDIServer::defaultInstance(a1, a2) + 104;
  v7 = (*(*v6 + 16))(v6);
  v8 = BaseOpaqueObject::ResolveOpaqueRef(&TOpaqueRTTI<MIDIEndpoint>::sRTTI, a2);
  if (!v8)
  {
LABEL_7:
    v12 = 4294967246;
    if (!v7)
    {
      return v12;
    }

    goto LABEL_10;
  }

  v9 = (*(*v8 + 88))(v8);
  if (v9)
  {
    v10 = BaseOpaqueObject::ResolveOpaqueRef(&TOpaqueRTTI<MIDIPort>::sRTTI, v5);
    if (v10)
    {
      v11 = (*(*v10 + 88))(v10);
      if (v11)
      {
        MIDIDestination::SendPacketList(v9, v11, a3);
        v12 = 0;
        if (!v7)
        {
          return v12;
        }

        goto LABEL_10;
      }
    }

    goto LABEL_7;
  }

  v12 = 4294956464;
  if (v7)
  {
LABEL_10:
    (*(*v6 + 24))(v6);
  }

  return v12;
}

void sub_2372014B0(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::exception a10, uint64_t a11, char a12)
{
  if (a2 == 3)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    if ((v12 & 1) == 0)
    {
      goto LABEL_11;
    }

LABEL_12:
    JUMPOUT(0x237201474);
  }

  if (a2 == 2)
  {
    __cxa_get_exception_ptr(a1);
    a10.__vftable = (MEMORY[0x277D82910] + 16);
    __cxa_begin_catch(a1);
    std::exception::~exception(&a10);
    __cxa_end_catch();
    if (a12)
    {
      goto LABEL_12;
    }
  }

  else
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    if (v12)
    {
      goto LABEL_12;
    }
  }

LABEL_11:
  JUMPOUT(0x237201494);
}

void sub_23720155C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  CADeprecated::CAMutex::Locker::~Locker(va);
  _Unwind_Resume(a1);
}

uint64_t _MIDIReceived(MIDIServer *a1, MIDIEventPacket *a2)
{
  v3 = a1;
  v4 = MIDIServer::defaultInstance(a1) + 13;
  v5 = (*(*v4 + 16))(v4);
  v6 = BaseOpaqueObject::ResolveOpaqueRef(&TOpaqueRTTI<MIDIEndpoint>::sRTTI, v3);
  if (!v6)
  {
    v8 = 4294967246;
    if (!v5)
    {
      return v8;
    }

    goto LABEL_8;
  }

  v7 = (*(*v6 + 80))(v6);
  if (v7)
  {
    v8 = MIDISource::ReceivedPacketList(v7, a2);
    if (!v5)
    {
      return v8;
    }

    goto LABEL_8;
  }

  v8 = 4294956464;
  if (v5)
  {
LABEL_8:
    (*(*v4 + 24))(v4);
  }

  return v8;
}

uint64_t _MIDIFlushOutput(unsigned int a1)
{
  if (a1)
  {
    Scheduler::FlushEndpoint(gScheduler, a1);
    v2 = BaseOpaqueObject::ResolveOpaqueRef(&TOpaqueRTTI<MIDIEndpoint>::sRTTI, a1);
    if (!v2)
    {
      return 4294967246;
    }

    v3 = (*(*v2 + 88))(v2);
    if (!v3)
    {
      return 4294956464;
    }

    v4 = *(v3 + 64);
    if (v4 && *(v3 + 876) >= 1)
    {
      (*(*v4 + 120))(*(v3 + 64), *(v3 + 8), *(v3 + 80), *(v3 + 88));
    }

    else if (*(v3 + 56))
    {
      v11[0] = 0x100000001;
      v11[1] = 0;
      v11[2] = 0x10FF000000000001;
      MIDIDestination::DeliverPacketsToDestination(v3, v11);
    }
  }

  else
  {
    Scheduler::FlushAllOutput(gScheduler);
    v6 = MIDIServer::defaultInstance(v5)[33];
    if (*v6 == 1)
    {
      v7 = *(v6 + 16);
      v8 = *(v6 + 24);
      while (v7 != v8)
      {
        (*(**v7 + 120))(*v7, 0, 0, 0);
        ++v7;
      }
    }
  }

  return 0;
}

uint64_t _MIDIDestinationCreate(MIDIServer *a1)
{
  v1 = a1;
  v2 = MIDIServer::defaultInstance(a1) + 2;
  v3 = (*(*v2 + 16))(v2);
  if (BaseOpaqueObject::ResolveOpaqueRef(&TOpaqueRTTI<MIDIClient>::sRTTI, v1))
  {
    operator new();
  }

  if (v3)
  {
    (*(*v2 + 24))(v2);
  }

  return 4294967246;
}

void sub_237201CDC(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void sub_237201CF8(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::exception a11)
{
  if (a2)
  {
    MEMORY[0x2383C8250](v11, 0x10E1C40A029A42BLL);
    CADeprecated::CAMutex::Locker::~Locker(&a9);
    if (a2 != 2)
    {
      __cxa_begin_catch(a1);
      __cxa_end_catch();
      JUMPOUT(0x237201C94);
    }

    __cxa_get_exception_ptr(a1);
    a11.__vftable = (MEMORY[0x277D82910] + 16);
    __cxa_begin_catch(a1);
    std::exception::~exception(&a11);
    __cxa_end_catch();
    JUMPOUT(0x237201B84);
  }

  JUMPOUT(0x237201CE8);
}

uint64_t _MIDISourceCreate(MIDIServer *a1)
{
  v1 = a1;
  v2 = MIDIServer::defaultInstance(a1) + 2;
  v3 = (*(*v2 + 16))(v2);
  if (BaseOpaqueObject::ResolveOpaqueRef(&TOpaqueRTTI<MIDIClient>::sRTTI, v1))
  {
    operator new();
  }

  if (v3)
  {
    (*(*v2 + 24))(v2);
  }

  return 4294967246;
}

void sub_2372021CC(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void sub_2372021E8(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::exception a11)
{
  if (a2)
  {
    MEMORY[0x2383C8250](v11, 0x10E1C409E4C3976);
    CADeprecated::CAMutex::Locker::~Locker(&a9);
    if (a2 != 2)
    {
      __cxa_begin_catch(a1);
      __cxa_end_catch();
      JUMPOUT(0x237202184);
    }

    __cxa_get_exception_ptr(a1);
    a11.__vftable = (MEMORY[0x277D82910] + 16);
    __cxa_begin_catch(a1);
    std::exception::~exception(&a11);
    __cxa_end_catch();
    JUMPOUT(0x237202050);
  }

  JUMPOUT(0x2372021D8);
}

uint64_t _MIDIEndpointDispose(MIDIServer *a1)
{
  v1 = a1;
  v2 = MIDIServer::defaultInstance(a1) + 2;
  v3 = (*(*v2 + 16))(v2);
  v4 = BaseOpaqueObject::ResolveOpaqueRef(&TOpaqueRTTI<MIDIEndpoint>::sRTTI, v1);
  if (v4)
  {
    v5 = v4;
    v6 = SetupManager::instance(v4);
    v7 = (*(*v5 + 80))(v5);
    if (v7)
    {
      v9 = *(v6 + 8);
      v8 = *(v6 + 16);
      if (v9 != v8)
      {
        while (*v9 != v7)
        {
          v9 += 8;
          if (v9 == v8)
          {
            goto LABEL_23;
          }
        }
      }

      if (v9 != v8)
      {
        v11 = v8 - (v9 + 8);
        if (v8 != v9 + 8)
        {
          memmove(v9, v9 + 8, v8 - (v9 + 8));
        }

        *(v6 + 16) = &v9[v11];
      }
    }

    else
    {
      v12 = (*(*v5 + 88))(v5);
      if (v12)
      {
        v14 = *(v6 + 32);
        v13 = *(v6 + 40);
        if (v14 != v13)
        {
          while (*v14 != v12)
          {
            v14 += 8;
            if (v14 == v13)
            {
              goto LABEL_23;
            }
          }
        }

        if (v14 != v13)
        {
          v15 = v13 - (v14 + 8);
          if (v13 != v14 + 8)
          {
            memmove(v14, v14 + 8, v13 - (v14 + 8));
          }

          *(v6 + 40) = &v14[v15];
        }
      }
    }

LABEL_23:
    MIDISetup::ObjectRemoved(*v6, v5);
    v17 = MIDIServer::defaultInstance(v16) + 13;
    v18 = (*(*v17 + 16))(v17);
    (*(*v5 + 8))(v5);
    if (v18)
    {
      (*(*v17 + 24))(v17);
    }

    if (v3)
    {
      (*(*v2 + 24))(v2);
    }

    return 0;
  }

  else
  {
    if (v3)
    {
      (*(*v2 + 24))(v2);
    }

    return 4294967246;
  }
}

void sub_2372025D0(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a2 == 2)
  {
    __cxa_get_exception_ptr(a1);
    a9 = MEMORY[0x277D82910] + 16;
    __cxa_begin_catch(a1);
    std::exception::~exception(&a9);
    __cxa_end_catch();
    JUMPOUT(0x237202434);
  }

  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2372025A8);
}

CFRunLoopRef MIDIGetDriverIORunLoop(void)
{
  if (gInMIDIServer != 1)
  {
    return 0;
  }

  v1 = *(MIDIServer::defaultInstance(v0)[33] + 8);
  if (v1)
  {
    return *(v1 + 144);
  }

  else
  {
    return 0;
  }
}

uint64_t _MIDISetupAddExternalDevice(MIDIServer *a1)
{
  v1 = a1;
  v2 = MIDIServer::defaultInstance(a1) + 2;
  v3 = (*(*v2 + 16))(v2);
  v4 = BaseOpaqueObject::ResolveOpaqueRef(&TOpaqueRTTI<MIDIDevice>::sRTTI, v1);
  if (v4 && (v5 = v4, !*(v4 + 6)))
  {
    v9 = *SetupManager::instance(v4);
    if (v9)
    {
      MIDISetup::AddDevice(v9, v5);
      v7 = 4294956459;
      v6 = 1;
    }

    else
    {
      v6 = 0;
      v7 = 4294956459;
    }
  }

  else
  {
    v6 = 0;
    v7 = 4294967246;
  }

  if (v3)
  {
    (*(*v2 + 24))(v2);
  }

  if (v6)
  {
    return 0;
  }

  return v7;
}

void sub_2372027A8(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  CADeprecated::CAMutex::Locker::~Locker(&a9);
  if (a2 == 3)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
  }

  else
  {
    if (a2 == 2)
    {
      __cxa_get_exception_ptr(a1);
      a9 = MEMORY[0x277D82910] + 16;
      __cxa_begin_catch(a1);
      std::exception::~exception(&a9);
    }

    else
    {
      __cxa_begin_catch(a1);
    }

    __cxa_end_catch();
  }

  JUMPOUT(0x237202764);
}

uint64_t _MIDISetupRemoveExternalDevice(MIDIServer *a1)
{
  v1 = a1;
  v2 = MIDIServer::defaultInstance(a1) + 2;
  v3 = (*(*v2 + 16))(v2);
  v4 = BaseOpaqueObject::ResolveOpaqueRef(&TOpaqueRTTI<MIDIDevice>::sRTTI, v1);
  if (v4 && (v5 = v4, !*(v4 + 6)))
  {
    v9 = *SetupManager::instance(v4);
    if (v9)
    {
      MIDISetup::RemoveDevice(v9, v5);
      v7 = 4294956459;
      v6 = 1;
    }

    else
    {
      v6 = 0;
      v7 = 4294956459;
    }
  }

  else
  {
    v6 = 0;
    v7 = 4294967246;
  }

  if (v3)
  {
    (*(*v2 + 24))(v2);
  }

  if (v6)
  {
    return 0;
  }

  return v7;
}

void sub_23720293C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  CADeprecated::CAMutex::Locker::~Locker(&a9);
  if (a2 == 3)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
  }

  else
  {
    if (a2 == 2)
    {
      __cxa_get_exception_ptr(a1);
      a9 = MEMORY[0x277D82910] + 16;
      __cxa_begin_catch(a1);
      std::exception::~exception(&a9);
    }

    else
    {
      __cxa_begin_catch(a1);
    }

    __cxa_end_catch();
  }

  JUMPOUT(0x2372028F8);
}

uint64_t _MIDISetupAddDevice(MIDIServer *a1)
{
  v1 = a1;
  v2 = MIDIServer::defaultInstance(a1) + 2;
  v3 = (*(*v2 + 16))(v2);
  v4 = BaseOpaqueObject::ResolveOpaqueRef(&TOpaqueRTTI<MIDIDevice>::sRTTI, v1);
  if (!v4 || (v5 = v4, !*(v4 + 6)))
  {
    v8 = 0;
    v7 = 4294967246;
    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v6 = *SetupManager::instance(v4);
  if (v6)
  {
    MIDISetup::AddDevice(v6, v5);
    v7 = 4294956459;
    v8 = 1;
    if (!v3)
    {
      goto LABEL_8;
    }

LABEL_7:
    (*(*v2 + 24))(v2);
    goto LABEL_8;
  }

  v8 = 0;
  v7 = 4294956459;
  if (v3)
  {
    goto LABEL_7;
  }

LABEL_8:
  if (v8)
  {
    return 0;
  }

  return v7;
}

void sub_237202ADC(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  CADeprecated::CAMutex::Locker::~Locker(&a9);
  if (a2 == 3)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
  }

  else
  {
    if (a2 == 2)
    {
      __cxa_get_exception_ptr(a1);
      a9 = MEMORY[0x277D82910] + 16;
      __cxa_begin_catch(a1);
      std::exception::~exception(&a9);
    }

    else
    {
      __cxa_begin_catch(a1);
    }

    __cxa_end_catch();
  }

  JUMPOUT(0x237202AB0);
}

uint64_t _MIDISetupRemoveDevice(MIDIServer *a1)
{
  v1 = a1;
  v2 = MIDIServer::defaultInstance(a1) + 2;
  v3 = (*(*v2 + 16))(v2);
  v4 = BaseOpaqueObject::ResolveOpaqueRef(&TOpaqueRTTI<MIDIDevice>::sRTTI, v1);
  if (!v4 || (v5 = v4, !*(v4 + 6)))
  {
    v8 = 0;
    v7 = 4294967246;
    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v6 = *SetupManager::instance(v4);
  if (v6)
  {
    MIDISetup::RemoveDevice(v6, v5);
    v7 = 4294956459;
    v8 = 1;
    if (!v3)
    {
      goto LABEL_8;
    }

LABEL_7:
    (*(*v2 + 24))(v2);
    goto LABEL_8;
  }

  v8 = 0;
  v7 = 4294956459;
  if (v3)
  {
    goto LABEL_7;
  }

LABEL_8:
  if (v8)
  {
    return 0;
  }

  return v7;
}

void sub_237202C78(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  CADeprecated::CAMutex::Locker::~Locker(&a9);
  if (a2 == 3)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
  }

  else
  {
    if (a2 == 2)
    {
      __cxa_get_exception_ptr(a1);
      a9 = MEMORY[0x277D82910] + 16;
      __cxa_begin_catch(a1);
      std::exception::~exception(&a9);
    }

    else
    {
      __cxa_begin_catch(a1);
    }

    __cxa_end_catch();
  }

  JUMPOUT(0x237202C4CLL);
}

uint64_t _MIDIDeviceRemoveEntity(MIDIServer *a1, unsigned int a2)
{
  v3 = a1;
  v4 = MIDIServer::defaultInstance(a1) + 2;
  v5 = (*(*v4 + 16))(v4);
  v6 = BaseOpaqueObject::ResolveOpaqueRef(&TOpaqueRTTI<MIDIDevice>::sRTTI, v3);
  if (!v6 || (v7 = v6, (v8 = BaseOpaqueObject::ResolveOpaqueRef(&TOpaqueRTTI<MIDIEntity>::sRTTI, a2)) == 0))
  {
    v13 = 0;
    v14 = 4294967246;
    if (!v5)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  v9 = v8;
  v10 = *SetupManager::instance(v8);
  if (!v10)
  {
    v13 = 0;
    v14 = 4294956459;
    if (!v5)
    {
      goto LABEL_20;
    }

LABEL_19:
    (*(*v4 + 24))(v4);
    goto LABEL_20;
  }

  MIDISetup::EntityRemoveEffects(v10, v9);
  for (i = *(v7 + 80); i != *(v7 + 88); i += 8)
  {
    if (*i == v9)
    {
      v15 = MIDIServer::defaultInstance(v11) + 13;
      v16 = (*(*v15 + 16))(v15);
      if (*i)
      {
        (*(**i + 8))(*i);
      }

      v17 = *(v7 + 88);
      v18 = v17 - (i + 8);
      if (v17 != i + 8)
      {
        memmove(i, i + 8, v17 - (i + 8));
      }

      *(v7 + 88) = &i[v18];
      if (v16)
      {
        (*(*v15 + 24))(v15);
      }

      break;
    }
  }

  v14 = 4294956459;
  v13 = 1;
  if (v5)
  {
    goto LABEL_19;
  }

LABEL_20:
  if (v13)
  {
    return 0;
  }

  return v14;
}

void sub_237202F0C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  CADeprecated::CAMutex::Locker::~Locker(&a9);
  if (a2 == 3)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
  }

  else
  {
    if (a2 == 2)
    {
      __cxa_get_exception_ptr(a1);
      a9 = MEMORY[0x277D82910] + 16;
      __cxa_begin_catch(a1);
      std::exception::~exception(&a9);
    }

    else
    {
      __cxa_begin_catch(a1);
    }

    __cxa_end_catch();
  }

  JUMPOUT(0x237202EE4);
}

uint64_t _MIDIEntityAddOrRemoveEndpoints(MIDIServer *a1, unint64_t a2, unint64_t a3)
{
  v5 = a1;
  v6 = MIDIServer::defaultInstance(a1) + 2;
  v7 = (*(*v6 + 16))(v6);
  v8 = BaseOpaqueObject::ResolveOpaqueRef(&TOpaqueRTTI<MIDIEntity>::sRTTI, v5);
  if (!v8)
  {
    v38 = 0;
    v37 = 4294967246;
    if (!v7)
    {
      goto LABEL_50;
    }

    goto LABEL_49;
  }

  v9 = v8;
  v10 = *SetupManager::instance(v8);
  if (!v10)
  {
    v38 = 0;
    v37 = 4294956459;
    if (!v7)
    {
      goto LABEL_50;
    }

    goto LABEL_49;
  }

  v11 = *(v9 + 6);
  v41 = 0;
  v40 = v7;
  if (MIDIObject::GetIntegerProperty(v11, kMIDIPropertyAdvanceScheduleTimeMuSec, &v41))
  {
    v41 = 0;
  }

  v13 = *(v9 + 9);
  v12 = *(v9 + 10);
  if (a2 > (v12 - v13) >> 3)
  {
    operator new();
  }

  v15 = *(v9 + 13);
  v14 = *(v9 + 14);
  if (a3 > (v14 - v15) >> 3)
  {
    operator new();
  }

  if (a2 < (v12 - v13) >> 3)
  {
    do
    {
      v17 = (v12 - 1);
      v16 = *(v12 - 1);
      *(v12 - 1) = 0;
      v18 = *(v9 + 10);
      v19 = v18 - v12;
      if (v18 != v12)
      {
        memmove(v12 - 1, v12, v18 - v12);
      }

      *(v9 + 10) = &v17[v19];
      v21 = *(v10 + 11);
      v20 = *(v10 + 12);
      if (v21 != v20)
      {
        while (*v21 != v16)
        {
          if (++v21 == v20)
          {
            goto LABEL_20;
          }
        }
      }

      if (v21 != v20)
      {
        v22 = v20 - (v21 + 1);
        if (v20 != v21 + 1)
        {
          memmove(v21, v21 + 1, v20 - (v21 + 1));
        }

        *(v10 + 12) = v21 + v22;
      }

LABEL_20:
      MIDISetup::ObjectRemoved(v10, v16);
      v24 = MIDIServer::defaultInstance(v23) + 13;
      v25 = (*(*v24 + 16))(v24);
      if (v16)
      {
        (*(*v16 + 8))(v16);
      }

      if (v25)
      {
        (*(*v24 + 24))(v24);
      }

      v12 = *(v9 + 10);
    }

    while (a2 < (v12 - *(v9 + 9)) >> 3);
    v15 = *(v9 + 13);
    v14 = *(v9 + 14);
  }

  if (a3 < (v14 - v15) >> 3)
  {
    do
    {
      v27 = (v14 - 1);
      v26 = *(v14 - 1);
      *(v14 - 1) = 0;
      v28 = *(v9 + 14);
      v29 = v28 - v14;
      if (v28 != v14)
      {
        memmove(v14 - 1, v14, v28 - v14);
      }

      *(v9 + 14) = &v27[v29];
      v31 = *(v10 + 14);
      v30 = *(v10 + 15);
      if (v31 != v30)
      {
        while (*v31 != v26)
        {
          if (++v31 == v30)
          {
            goto LABEL_37;
          }
        }
      }

      if (v31 != v30)
      {
        v32 = v30 - (v31 + 1);
        if (v30 != v31 + 1)
        {
          memmove(v31, v31 + 1, v30 - (v31 + 1));
        }

        *(v10 + 15) = v31 + v32;
      }

LABEL_37:
      MIDISetup::ObjectRemoved(v10, v26);
      v34 = MIDIServer::defaultInstance(v33) + 13;
      v35 = (*(*v34 + 16))(v34);
      if (v26)
      {
        (*(*v26 + 8))(v26);
      }

      if (v35)
      {
        (*(*v34 + 24))(v34);
      }

      v14 = *(v9 + 14);
    }

    while (a3 < (v14 - *(v9 + 13)) >> 3);
  }

  for (i = *(v10 + 23); i != *(v10 + 24); ++i)
  {
    MIDIConnection::MaintainEndpoints(*i, v10);
  }

  v37 = 4294956459;
  v38 = 1;
  if (v40)
  {
LABEL_49:
    (*(*v6 + 24))(v6);
  }

LABEL_50:
  if (v38)
  {
    return 0;
  }

  return v37;
}

void sub_237203520(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::exception a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  CADeprecated::CAMutex::Locker::~Locker(&a11);
  if (a2 == 3)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
  }

  else
  {
    if (a2 == 2)
    {
      __cxa_get_exception_ptr(a1);
      a11.__vftable = (MEMORY[0x277D82910] + 16);
      __cxa_begin_catch(a1);
      std::exception::~exception(&a11);
    }

    else
    {
      __cxa_begin_catch(a1);
    }

    __cxa_end_catch();
  }

  JUMPOUT(0x2372034F8);
}

MIDIDeviceListRef MIDIGetDriverDeviceList(MIDIDriverRef driver)
{
  if (gInMIDIServer == 1)
  {
    v6 = MIDIServer::defaultInstance(driver) + 2;
    v2 = (*(*v6 + 16))(v6);
    v3 = *SetupManager::instance(v2);
    v4 = driverRefToPlugin(driver);
    if (v3)
    {
      MIDISetup::GetDriverDevices(v3, v4);
    }

    operator new();
  }

  return 0;
}

OSStatus MIDIDeviceListDispose(MIDIDeviceListRef devList)
{
  if (gInMIDIServer != 1)
  {
    return -50;
  }

  v3 = MIDIServer::defaultInstance(*&devList, v1) + 16;
  v4 = (*(*v3 + 16))(v3);
  v5 = BaseOpaqueObject::ResolveOpaqueRef(&TOpaqueRTTI<DeviceList>::sRTTI, devList);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  if (v4)
  {
    (*(*v3 + 24))(v3);
  }

  return 0;
}

uint64_t _MIDIObjectGetProperties(MIDIServer *a1, CFMutableDictionaryRef *a2, int a3)
{
  v5 = a1;
  v6 = MIDIServer::defaultInstance(a1) + 2;
  v7 = (*(*v6 + 16))(v6);
  v8 = BaseOpaqueObject::ResolveOpaqueRef(&TOpaqueRTTI<MIDIObject>::sRTTI, v5);
  if (a2 && v8)
  {
    if (a3)
    {
      v9 = (*(*v8 + 7))(v8);
    }

    else
    {
      v9 = MIDIObject::ToDictionary(v8[3]);
    }

    *a2 = v9;
    if (v7)
    {
      (*(*v6 + 24))(v6);
    }

    return 0;
  }

  else
  {
    if (v7)
    {
      (*(*v6 + 24))(v6);
    }

    return 4294967246;
  }
}

void sub_237203A88(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  CADeprecated::CAMutex::Locker::~Locker(&a9);
  if (a2 == 2)
  {
    __cxa_get_exception_ptr(a1);
    a9 = MEMORY[0x277D82910] + 16;
    __cxa_begin_catch(a1);
    std::exception::~exception(&a9);
    __cxa_end_catch();
    JUMPOUT(0x237203A28);
  }

  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x237203A6CLL);
}

uint64_t _MIDIRestart(MIDIServer *a1)
{
  v1 = MIDIServer::defaultInstance(a1) + 2;
  v2 = (*(*v1 + 16))(v1);
  Scheduler::FlushAllOutput(gScheduler);
  v4 = MIDIServer::defaultInstance(v3);
  MIDIDriverMgr::StopMIDI(v4[33]);
  v6 = *SetupManager::instance(v5);
  if (v6)
  {
    MIDISetup::ScanForDriverDevices(v6);
    MIDIServer::startMIDI(v7, v8);
    if (v2)
    {
      (*(*v1 + 24))(v1);
    }

    return 0;
  }

  else
  {
    if (v2)
    {
      (*(*v1 + 24))(v1);
    }

    return 4294956459;
  }
}

void sub_237203C24(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a2 == 3)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
  }

  else
  {
    if (a2 == 2)
    {
      __cxa_get_exception_ptr(a1);
      a9 = MEMORY[0x277D82910] + 16;
      __cxa_begin_catch(a1);
      std::exception::~exception(&a9);
    }

    else
    {
      __cxa_begin_catch(a1);
    }

    __cxa_end_catch();
  }

  JUMPOUT(0x237203C08);
}

uint64_t _MIDIThruConnectionCreate(MIDIServer *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a1;
  v7 = MIDIServer::defaultInstance(a1) + 2;
  v8 = (*(*v7 + 16))(v7);
  v9 = v8;
  if (!v6)
  {
LABEL_8:
    v12 = 4294967246;
    if (a3 && a4)
    {
      if (*SetupManager::instance(v8))
      {
        operator new();
      }

      v12 = 4294956459;
    }

    if (!v9)
    {
      return v12;
    }

LABEL_14:
    (*(*v7 + 24))(v7);
    return v12;
  }

  v10 = MIDIServer::defaultInstance(v8);
  v8 = MIDIServer::defaultInstance(v10);
  for (i = v8[29]; i != v8[30]; i += 8)
  {
    if (*(*i + 8) == v6)
    {
      goto LABEL_8;
    }
  }

  v12 = 4294967246;
  if (v9)
  {
    goto LABEL_14;
  }

  return v12;
}

void sub_237203FA8(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::exception a10)
{
  MIDI::StreamState::~StreamState((v12 + 24));
  XCFObject<__CFData const*>::~XCFObject(v12);
  XCFObject<__CFString const*>::~XCFObject(v11);
  BaseOpaqueObject::~BaseOpaqueObject(v10);
  MEMORY[0x2383C8250](v10, 0x10F1C4018F0CC6DLL);
  CADeprecated::CAMutex::Locker::~Locker(&a10);
  if (a2 == 3)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
  }

  else
  {
    if (a2 == 2)
    {
      __cxa_get_exception_ptr(a1);
      a10.__vftable = (MEMORY[0x277D82910] + 16);
      __cxa_begin_catch(a1);
      std::exception::~exception(&a10);
    }

    else
    {
      __cxa_begin_catch(a1);
    }

    __cxa_end_catch();
  }

  JUMPOUT(0x237203EA8);
}

uint64_t _MIDIThruConnectionDispose(MIDIServer *a1)
{
  v1 = a1;
  v2 = MIDIServer::defaultInstance(a1) + 2;
  v3 = (*(*v2 + 16))(v2);
  v4 = BaseOpaqueObject::ResolveOpaqueRef(&TOpaqueRTTI<MIDIConnection>::sRTTI, v1);
  if (!v4)
  {
    v9 = 0;
    v6 = 0;
    v10 = 4294967246;
    if (!v3)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  v5 = v4;
  v6 = *SetupManager::instance(v4);
  if (!v6)
  {
    v9 = 0;
    v10 = 4294956459;
    if (!v3)
    {
      goto LABEL_18;
    }

LABEL_17:
    (*(*v2 + 24))(v2);
    goto LABEL_18;
  }

  v7 = *(v6 + 184);
  v8 = *(v6 + 192);
  if (v7 != v8)
  {
    while (*v7 != v5)
    {
      if (++v7 == v8)
      {
        goto LABEL_15;
      }
    }
  }

  if (v7 == v8)
  {
LABEL_15:
    v10 = 4294956459;
    v6 = 4294956463;
  }

  else
  {
    OwnedPtrVector<MIDIClient *>::erase(v6 + 176, v7);
    if (*(v5 + 2))
    {
      MIDISetup::GenerateNotification(v6);
    }

    v6 = 0;
    v10 = 4294956459;
  }

  v9 = 1;
  if (v3)
  {
    goto LABEL_17;
  }

LABEL_18:
  if (v9)
  {
    return v6;
  }

  return v10;
}

void sub_23720421C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::exception a10)
{
  CADeprecated::CAMutex::Locker::~Locker(&a10);
  if (a2 == 3)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
  }

  else
  {
    if (a2 == 2)
    {
      __cxa_get_exception_ptr(a1);
      a10.__vftable = (MEMORY[0x277D82910] + 16);
      __cxa_begin_catch(a1);
      std::exception::~exception(&a10);
    }

    else
    {
      __cxa_begin_catch(a1);
    }

    __cxa_end_catch();
  }

  JUMPOUT(0x2372041F8);
}

uint64_t _MIDIThruConnectionGetParams(MIDIServer *a1, void *a2)
{
  v3 = a1;
  v4 = MIDIServer::defaultInstance(a1) + 2;
  v5 = (*(*v4 + 16))(v4);
  v6 = v5;
  if (!a2)
  {
    if (v5)
    {
      goto LABEL_11;
    }

    return 4294967246;
  }

  v7 = BaseOpaqueObject::ResolveOpaqueRef(&TOpaqueRTTI<MIDIConnection>::sRTTI, v3);
  if (!v7)
  {
    if (v6)
    {
LABEL_11:
      (*(*v4 + 24))(v4);
    }

    return 4294967246;
  }

  v8 = *(v7 + 48);
  if (v8)
  {
    CFRetain(*(v7 + 48));
  }

  *a2 = v8;
  if (v6)
  {
    (*(*v4 + 24))(v4);
  }

  return 0;
}

void sub_2372043F4(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  CADeprecated::CAMutex::Locker::~Locker(&a9);
  if (a2 == 2)
  {
    __cxa_get_exception_ptr(a1);
    a9 = MEMORY[0x277D82910] + 16;
    __cxa_begin_catch(a1);
    std::exception::~exception(&a9);
    __cxa_end_catch();
    JUMPOUT(0x2372043CCLL);
  }

  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2372043D0);
}

uint64_t _MIDIThruConnectionSetParams(MIDIServer *a1, const __CFData *a2)
{
  v3 = a1;
  v4 = MIDIServer::defaultInstance(a1) + 2;
  v5 = (*(*v4 + 16))(v4);
  v6 = BaseOpaqueObject::ResolveOpaqueRef(&TOpaqueRTTI<MIDIConnection>::sRTTI, v3);
  if (v6)
  {
    v7 = v6;
    v8 = *SetupManager::instance(v6);
    if (v8)
    {
      v9 = MIDIConnection::SetParams(v7, v8, a2);
      v10 = 4294956459;
      v11 = 1;
      if (!v5)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v11 = 0;
      v9 = 0;
      v10 = 4294956459;
      if (!v5)
      {
        goto LABEL_9;
      }
    }

LABEL_8:
    (*(*v4 + 24))(v4);
    goto LABEL_9;
  }

  v11 = 0;
  v9 = 0;
  v10 = 4294967246;
  if (v5)
  {
    goto LABEL_8;
  }

LABEL_9:
  if (v11)
  {
    return v9;
  }

  return v10;
}

void sub_2372045A0(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  CADeprecated::CAMutex::Locker::~Locker(&a9);
  if (a2 == 3)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
  }

  else
  {
    if (a2 == 2)
    {
      __cxa_get_exception_ptr(a1);
      a9 = MEMORY[0x277D82910] + 16;
      __cxa_begin_catch(a1);
      std::exception::~exception(&a9);
    }

    else
    {
      __cxa_begin_catch(a1);
    }

    __cxa_end_catch();
  }

  JUMPOUT(0x23720457CLL);
}

uint64_t _MIDIThruConnectionFind(MIDIServer *a1, __CFData **a2)
{
  v4 = MIDIServer::defaultInstance(a1) + 2;
  v5 = (*(*v4 + 16))(v4);
  v6 = v5;
  LOBYTE(v7) = 0;
  v8 = 4294967246;
  if (!a1 || !a2)
  {
    goto LABEL_11;
  }

  v7 = *SetupManager::instance(v5);
  if (v7)
  {
    Mutable = CFDataCreateMutable(0, 0);
    for (i = *(v7 + 184); i != *(v7 + 192); ++i)
    {
      v11 = *i;
      v12 = *(*i + 16);
      if (v12)
      {
        if (CFEqual(v12, a1))
        {
          *bytes = *(v11 + 8);
          CFDataAppendBytes(Mutable, bytes, 4);
        }
      }
    }

    *a2 = Mutable;
    v8 = 4294956459;
    LOBYTE(v7) = 1;
LABEL_11:
    if (!v6)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v8 = 4294956459;
  if (v6)
  {
LABEL_12:
    (*(*v4 + 24))(v4);
  }

LABEL_13:
  if (v7)
  {
    return 0;
  }

  return v8;
}

void sub_237204780(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::exception a10)
{
  CADeprecated::CAMutex::Locker::~Locker(&a10);
  if (a2 == 3)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
  }

  else
  {
    if (a2 == 2)
    {
      __cxa_get_exception_ptr(a1);
      a10.__vftable = (MEMORY[0x277D82910] + 16);
      __cxa_begin_catch(a1);
      std::exception::~exception(&a10);
    }

    else
    {
      __cxa_begin_catch(a1);
    }

    __cxa_end_catch();
  }

  JUMPOUT(0x237204750);
}

uint64_t _MIDIObjectFindByUniqueID(MIDIServer *a1, _DWORD *a2, _DWORD *a3)
{
  v5 = a1;
  v6 = MIDIServer::defaultInstance(a1) + 2;
  v7 = (*(*v6 + 16))(v6);
  v8 = v7;
  v9 = *SetupManager::instance(v7);
  if (!v9)
  {
    v12 = 0;
    v11 = 4294956459;
    if (!v8)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  ObjectByUniqueID = MIDISetup::FindObjectByUniqueID(v9, v5, 0);
  if (!ObjectByUniqueID)
  {
    v12 = 0;
    v11 = 4294956454;
    if (!v8)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (a2)
  {
    *a2 = *(ObjectByUniqueID + 2);
  }

  if (a3)
  {
    *a3 = (*(*ObjectByUniqueID + 72))(ObjectByUniqueID);
  }

  v11 = 4294956454;
  v12 = 1;
  if (v8)
  {
LABEL_12:
    (*(*v6 + 24))(v6);
  }

LABEL_13:
  if (v12)
  {
    return 0;
  }

  return v11;
}

void sub_237204950(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  CADeprecated::CAMutex::Locker::~Locker(&a9);
  if (a2 == 3)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
  }

  else
  {
    if (a2 == 2)
    {
      __cxa_get_exception_ptr(a1);
      a9 = MEMORY[0x277D82910] + 16;
      __cxa_begin_catch(a1);
      std::exception::~exception(&a9);
    }

    else
    {
      __cxa_begin_catch(a1);
    }

    __cxa_end_catch();
  }

  JUMPOUT(0x237204930);
}

__CFData *ReadFileIntoCFData(const char *a1)
{
  v1 = fopen(a1, "rb");
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  fseek(v1, 0, 2);
  v3 = MEMORY[0x2383C8690](v2);
  rewind(v2);
  Mutable = CFDataCreateMutable(0, v3);
  CFDataSetLength(Mutable, v3);
  MutableBytePtr = CFDataGetMutableBytePtr(Mutable);
  if (fread(MutableBytePtr, 1uLL, v3, v2) != v3)
  {
    CFRelease(Mutable);
    Mutable = 0;
  }

  fclose(v2);
  return Mutable;
}

BOOL WriteFileFromCFData(const char *a1, const __CFData *a2)
{
  v3 = fopen(a1, "wb");
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  Length = CFDataGetLength(a2);
  BytePtr = CFDataGetBytePtr(a2);
  v7 = fwrite(BytePtr, 1uLL, Length, v4) == Length;
  fclose(v4);
  return v7;
}

void XServerMachPort::~XServerMachPort(mach_port_name_t *this)
{
  if (*this)
  {
    mach_port_deallocate(*MEMORY[0x277D85F48], *this);
  }
}

uint64_t XServerMachPort::ReceiveMessage(mach_port_name_t rcv_name, int *a2, void *a3, int *a4)
{
  v14[8] = *MEMORY[0x277D85DE8];
  msg.msgh_bits = 0;
  msg.msgh_remote_port = 0;
  msg.msgh_local_port = rcv_name;
  msg.msgh_voucher_port = 0;
  msg.msgh_id = 0;
  v7 = mach_msg(&msg, 2, 0, 0x64u, rcv_name, 0, 0);
  v8 = v13;
  if (v13 < 0)
  {
    return 268451844;
  }

  v9 = v7;
  if (v13 >= *a4)
  {
    v8 = *a4;
  }

  *a4 = v8;
  memcpy(a3, v14, v8);
  *a2 = v12;
  return v9;
}

void MIDIServer::Init(MIDIServer *this, int a2)
{
  v20 = *MEMORY[0x277D85DE8];
  gMIDIServerLog();
  v4 = gMIDIServerLog(void)::mdsrvr;
  v5 = os_log_type_enabled(gMIDIServerLog(void)::mdsrvr, OS_LOG_TYPE_INFO);
  if (v5)
  {
    v6 = "false";
    v14 = 136315650;
    v15 = "MIDIServer.mm";
    if (a2)
    {
      v6 = "true";
    }

    v16 = 1024;
    v17 = 508;
    v18 = 2080;
    v19 = v6;
    _os_log_impl(&dword_2371C2000, v4, OS_LOG_TYPE_INFO, "%25s:%-5d [+] MIDIServer::Init(runForever = %s)", &v14, 0x1Cu);
  }

  *(this + 8) = a2;
  MIDICISessionManager::Instance(v5);
  gMIDIServerLog();
  v7 = gMIDIServerLog(void)::mdsrvr;
  if (os_log_type_enabled(gMIDIServerLog(void)::mdsrvr, OS_LOG_TYPE_INFO))
  {
    v14 = 136315394;
    v15 = "MIDIServer.mm";
    v16 = 1024;
    v17 = 511;
    _os_log_impl(&dword_2371C2000, v7, OS_LOG_TYPE_INFO, "%25s:%-5d [-] MIDIServer::Init()", &v14, 0x12u);
  }

  v8 = MIDIClientCreateWithBlockInternal(@"MIDI_UMPCI_CLIENT", this + 168, &__block_literal_global_69);
  if (v8)
  {
    v9 = v8;
    gUMPCIServerContext();
    v10 = gUMPCIServerContext(void)::cisrvr;
    if (os_log_type_enabled(gUMPCIServerContext(void)::cisrvr, OS_LOG_TYPE_ERROR))
    {
      v14 = 136315650;
      v15 = "UMPCIServerContext.hpp";
      v16 = 1024;
      v17 = 88;
      v18 = 1024;
      LODWORD(v19) = v9;
      _os_log_impl(&dword_2371C2000, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d Unable to create client for UMPCIServerContext (err = %d). UMPCI will not be possible.", &v14, 0x18u);
    }
  }

  v11 = MIDIOutputPortCreate(*(this + 168), @"MIDI_UMPCI_PORT", this + 169);
  if (v11)
  {
    v12 = v11;
    gUMPCIServerContext();
    v13 = gUMPCIServerContext(void)::cisrvr;
    if (os_log_type_enabled(gUMPCIServerContext(void)::cisrvr, OS_LOG_TYPE_ERROR))
    {
      v14 = 136315650;
      v15 = "UMPCIServerContext.hpp";
      v16 = 1024;
      v17 = 91;
      v18 = 1024;
      LODWORD(v19) = v12;
      _os_log_impl(&dword_2371C2000, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d Unable to create output port for UMPCIServerContext (err = %d).", &v14, 0x18u);
    }
  }
}

void gMIDIServerLog(void)
{
  {
    caulk::log_category::log_category(&gMIDIServerLog(void)::mdsrvr, "com.apple.coremidi", "server");
  }
}

uint64_t MIDICISessionManager::Instance(MIDICISessionManager *this)
{
  {
    operator new();
  }

  return MIDICISessionManager::Instance(void)::m;
}

void sub_237204FA4(_Unwind_Exception *a1)
{
  MEMORY[0x2383C8250](v1, 0x10F0C40554E3538);
  _Unwind_Resume(a1);
}

void gUMPCIServerContext(void)
{
  {
    caulk::log_category::log_category(&gUMPCIServerContext(void)::cisrvr, "com.apple.coremidi", "UMPCIServerContext");
  }
}

void MIDIServer::~MIDIServer(MIDIServer *this)
{
  MIDIServer::~MIDIServer(this);

  JUMPOUT(0x2383C8250);
}

{
  *this = &unk_284A46138;
  v2 = *(this + 126);
  if (v2)
  {
    [v2 invalidate];
    v3 = *(this + 126);
  }

  else
  {
    v3 = 0;
  }

  std::__tree<std::__value_type<__CFString const*,unsigned int>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,unsigned int>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,unsigned int>>>::destroy(*(this + 123));
  std::mutex::~mutex((this + 912));
  v5 = (this + 888);
  std::vector<std::unique_ptr<UMPStream::EndpointPair>>::__destroy_vector::operator()[abi:ne200100](&v5);
  v5 = (this + 856);
  std::vector<std::unique_ptr<InternalCITransaction>>::__destroy_vector::operator()[abi:ne200100](&v5);
  v4 = *(this + 106);
  *(this + 106) = 0;
  if (v4)
  {
    MEMORY[0x2383C8250](v4, 0x1000C40504FFAC1);
  }

  std::__tree<std::__value_type<__CFString const*,unsigned int>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,unsigned int>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,unsigned int>>>::destroy(*(this + 103));
  std::__tree<std::__value_type<unsigned int,MIDICI::SourceState>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,MIDICI::SourceState>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,MIDICI::SourceState>>>::destroy(*(this + 100));
  std::mutex::~mutex((this + 720));
  v5 = (this + 696);
  std::vector<std::unique_ptr<MIDICI::Device>>::__destroy_vector::operator()[abi:ne200100](&v5);
  std::__function::__value_func<void ()(UMPCIObjectEvent,unsigned int,applesauce::CF::DictionaryRef)>::~__value_func[abi:ne200100](this + 640);
  std::__function::__value_func<void ()(UMPCIObjectEvent,unsigned int,applesauce::CF::DictionaryRef)>::~__value_func[abi:ne200100](this + 608);
  AsyncMessenger::~AsyncMessenger((this + 368));
  std::__function::__value_func<UMPStream::FunctionBlock const* ()(unsigned int,unsigned int,unsigned char)>::~__value_func[abi:ne200100](this + 336);
  std::__function::__value_func<UMPStream::FunctionBlock const* ()(unsigned int,unsigned int,unsigned char)>::~__value_func[abi:ne200100](this + 304);
  std::__function::__value_func<UMPStream::EndpointPair const* ()(unsigned int,unsigned int)>::~__value_func[abi:ne200100](this + 272);
  std::unique_ptr<MIDIDriverMgr>::reset[abi:ne200100](this + 33, 0);
  OwnedPtrVector<ClientProcess *>::~OwnedPtrVector(this + 28);
  OwnedPtrVector<MIDIClient *>::~OwnedPtrVector(this + 24);
  CADeprecated::CAMutex::~CAMutex((this + 104));
  CADeprecated::CAMutex::~CAMutex((this + 16));
}

void std::vector<std::unique_ptr<InternalCITransaction>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v7 = *--v4;
        v6 = v7;
        *v4 = 0;
        if (v7)
        {
          (*(*v6 + 8))(v6);
        }
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__tree<std::__value_type<unsigned int,MIDICI::SourceState>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,MIDICI::SourceState>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,MIDICI::SourceState>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<unsigned int,MIDICI::SourceState>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,MIDICI::SourceState>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,MIDICI::SourceState>>>::destroy(*a1);
    std::__tree<std::__value_type<unsigned int,MIDICI::SourceState>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,MIDICI::SourceState>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,MIDICI::SourceState>>>::destroy(a1[1]);
    std::__tree<std::__value_type<unsigned int,std::unique_ptr<MIDICI::CIRetrier>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::unique_ptr<MIDICI::CIRetrier>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::unique_ptr<MIDICI::CIRetrier>>>>::destroy(a1[7]);
    v2 = a1[5];
    a1[5] = 0;
    if (v2)
    {
      for (i = 0; i != -1280; i -= 80)
      {
        std::__function::__value_func<void ()(midi::sysex7 const&)>::~__value_func[abi:ne200100](v2 + i + 1280);
        v4 = *(v2 + i + 1240);
        if (v4)
        {
          *(v2 + i + 1248) = v4;
          operator delete(v4);
        }
      }

      v5 = std::__function::__value_func<void ()(unsigned char,midi::sysex7 const&)>::~__value_func[abi:ne200100](v2);
      MEMORY[0x2383C8250](v5, 0x1030C404F332D50);
    }

    operator delete(a1);
  }
}

void std::vector<std::unique_ptr<MIDICI::Device>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v7 = *--v4;
        v6 = v7;
        *v4 = 0;
        if (v7)
        {
          MIDICI::Device::~Device(v6);
          MEMORY[0x2383C8250]();
        }
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::__function::__value_func<void ()(UMPCIObjectEvent,unsigned int,applesauce::CF::DictionaryRef)>::~__value_func[abi:ne200100](uint64_t a1)
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

void AsyncMessenger::~AsyncMessenger(AsyncMessenger *this)
{
  atomic_store(1u, this + 8);
  caulk::mach::semaphore::signal_all_or_error((this + 12));
  caulk::thread::join(*this);
  while (1)
  {
    v2 = *(this + 20);
    if (v2)
    {
      goto LABEL_7;
    }

    v3 = atomic_exchange_explicit(this + 12, 0, memory_order_acquire);
    if (!v3)
    {
      break;
    }

    v2 = 0;
    do
    {
      v4 = v2;
      v2 = v3;
      v3 = atomic_load(v3);
      atomic_store(v4, v2);
    }

    while (v3);
    *(this + 20) = v2;
LABEL_7:
    v5 = atomic_load(v2);
    *(this + 20) = v5;
    v6 = v2 + 21;
    for (i = *(v2 + 17); i; --i)
    {
      v6 += 4 * *(v6 + 2) + 12;
    }

    (*(**(this + 21) + 24))(*(this + 21));
  }

  for (j = 208; j != 144; j -= 32)
  {
    std::__function::__value_func<void ()(unsigned int,MIDIEventList const*)>::~__value_func[abi:ne200100](this + j);
  }

  std::mutex::~mutex((this + 24));
  MEMORY[0x2383C7D90](this + 12);
  std::unique_ptr<caulk::thread>::reset[abi:ne200100](this, 0);
}

void **std::unique_ptr<MIDIDriverMgr>::reset[abi:ne200100](void **result, void *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    if (!v2[8])
    {
      MIDIDriverMgr::StopMIDI(v2);
      std::vector<std::unique_ptr<MIDIDriverPlugin>>::clear[abi:ne200100](v2 + 2);
      v3 = v2[1];
      if (v3)
      {
        (*(*v3 + 8))(v3);
      }

      std::unique_ptr<MIDIDriverKitPluginRegistrar>::reset[abi:ne200100](v2 + 8, 0);
      v4 = v2[5];
      if (v4)
      {
        v2[6] = v4;
        operator delete(v4);
      }

      v5 = (v2 + 2);
      std::vector<std::unique_ptr<MIDIDriverPlugin>>::__destroy_vector::operator()[abi:ne200100](&v5);

      JUMPOUT(0x2383C8250);
    }

    __assert_rtn("~MIDIDriverMgr", "DriverTable.cpp", 108, "mMDKPluginRegistrar == nullptr");
  }

  return result;
}

void *OwnedPtrVector<ClientProcess *>::~OwnedPtrVector(void *a1)
{
  *a1 = &unk_284A46A70;
  v2 = a1[1];
  v3 = a1[2];
  if (v2 != v3)
  {
    v4 = a1[1];
    do
    {
      if (*v4)
      {
        (*(**v4 + 8))(*v4);
      }

      v4 += 8;
    }

    while (v4 != v3);
    v5 = a1[2];
    v6 = v5 - v3;
    if (v5 != v3)
    {
      memmove(v2, v3, v5 - v3);
    }

    v7 = a1[1];
    a1[2] = &v2[v6];
    v2 = v7;
  }

  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  return a1;
}

void *OwnedPtrVector<MIDIClient *>::~OwnedPtrVector(void *a1)
{
  *a1 = &unk_284A46AD0;
  v2 = a1[1];
  v3 = a1[2];
  if (v2 != v3)
  {
    v4 = a1[1];
    do
    {
      if (*v4)
      {
        (*(**v4 + 8))(*v4);
      }

      v4 += 8;
    }

    while (v4 != v3);
    v5 = a1[2];
    v6 = v5 - v3;
    if (v5 != v3)
    {
      memmove(v2, v3, v5 - v3);
    }

    v7 = a1[1];
    a1[2] = &v2[v6];
    v2 = v7;
  }

  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  return a1;
}

void OwnedPtrVector<MIDIClient *>::~OwnedPtrVector(void *a1)
{
  OwnedPtrVector<MIDIClient *>::~OwnedPtrVector(a1);

  JUMPOUT(0x2383C8250);
}

void OwnedPtrVector<ClientProcess *>::~OwnedPtrVector(void *a1)
{
  OwnedPtrVector<ClientProcess *>::~OwnedPtrVector(a1);

  JUMPOUT(0x2383C8250);
}

caulk::thread *std::unique_ptr<caulk::thread>::reset[abi:ne200100](caulk::thread **a1, caulk::thread *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    caulk::thread::~thread(result);

    JUMPOUT(0x2383C8250);
  }

  return result;
}

void MIDICI::Device::~Device(MIDICI::Device *this)
{
  v2 = *(this + 26);
  if (v2)
  {
    *(this + 27) = v2;
    operator delete(v2);
  }

  v3 = *(this + 24);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(this + 22);
  *(this + 22) = 0;
  if (v4)
  {
    std::__tree<std::__value_type<std::pair<unsigned int,unsigned char>,PropertyExchange::Request>,std::__map_value_compare<std::pair<unsigned int,unsigned char>,std::__value_type<std::pair<unsigned int,unsigned char>,PropertyExchange::Request>,std::less<std::pair<unsigned int,unsigned char>>,true>,std::allocator<std::__value_type<std::pair<unsigned int,unsigned char>,PropertyExchange::Request>>>::destroy(*(v4 + 8));
    MEMORY[0x2383C8250](v4, 0x1020C4062D53EE8);
  }

  v5 = (this + 144);
  std::vector<std::unique_ptr<MIDICI::Profile>>::__destroy_vector::operator()[abi:ne200100](&v5);
  if (*(this + 143) < 0)
  {
    operator delete(*(this + 15));
  }

  *this = &unk_284A46EC0;
  XCFObject<__CFDictionary const*>::~XCFObject(this + 24);

  BaseOpaqueObject::~BaseOpaqueObject(this);
}

{
  v2 = *(this + 26);
  if (v2)
  {
    *(this + 27) = v2;
    operator delete(v2);
  }

  v3 = *(this + 24);
  if (v3)
  {
    CFRelease(v3);
  }

  std::unique_ptr<PropertyExchange::RequestManager>::reset[abi:ne200100](this + 22, 0);
  v4 = (this + 144);
  std::vector<std::unique_ptr<MIDICI::Profile>>::__destroy_vector::operator()[abi:ne200100](&v4);
  if (*(this + 143) < 0)
  {
    operator delete(*(this + 15));
  }

  *this = &unk_284A46EC0;
  XCFObject<__CFDictionary const*>::~XCFObject(this + 24);
  BaseOpaqueObject::~BaseOpaqueObject(this);

  JUMPOUT(0x2383C8250);
}

{
  v2 = *(this + 26);
  if (v2)
  {
    *(this + 27) = v2;
    operator delete(v2);
  }

  v3 = *(this + 24);
  if (v3)
  {
    CFRelease(v3);
  }

  std::unique_ptr<PropertyExchange::RequestManager>::reset[abi:ne200100](this + 22, 0);
  v4 = (this + 144);
  std::vector<std::unique_ptr<MIDICI::Profile>>::__destroy_vector::operator()[abi:ne200100](&v4);
  if (*(this + 143) < 0)
  {
    operator delete(*(this + 15));
  }

  *this = &unk_284A46EC0;
  XCFObject<__CFDictionary const*>::~XCFObject(this + 24);

  BaseOpaqueObject::~BaseOpaqueObject(this);
}

void std::__tree<std::__value_type<std::pair<unsigned int,unsigned char>,PropertyExchange::Request>,std::__map_value_compare<std::pair<unsigned int,unsigned char>,std::__value_type<std::pair<unsigned int,unsigned char>,PropertyExchange::Request>,std::less<std::pair<unsigned int,unsigned char>>,true>,std::allocator<std::__value_type<std::pair<unsigned int,unsigned char>,PropertyExchange::Request>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::pair<unsigned int,unsigned char>,PropertyExchange::Request>,std::__map_value_compare<std::pair<unsigned int,unsigned char>,std::__value_type<std::pair<unsigned int,unsigned char>,PropertyExchange::Request>,std::less<std::pair<unsigned int,unsigned char>>,true>,std::allocator<std::__value_type<std::pair<unsigned int,unsigned char>,PropertyExchange::Request>>>::destroy(*a1);
    std::__tree<std::__value_type<std::pair<unsigned int,unsigned char>,PropertyExchange::Request>,std::__map_value_compare<std::pair<unsigned int,unsigned char>,std::__value_type<std::pair<unsigned int,unsigned char>,PropertyExchange::Request>,std::less<std::pair<unsigned int,unsigned char>>,true>,std::allocator<std::__value_type<std::pair<unsigned int,unsigned char>,PropertyExchange::Request>>>::destroy(a1[1]);
    std::__destroy_at[abi:ne200100]<std::pair<std::pair<unsigned int,unsigned char> const,PropertyExchange::Request>,0>((a1 + 4));

    operator delete(a1);
  }
}

void std::vector<std::unique_ptr<MIDICI::Profile>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v7 = *--v4;
        v6 = v7;
        *v4 = 0;
        if (v7)
        {
          v8 = *(v6 + 88);
          if (v8)
          {
            *(v6 + 96) = v8;
            operator delete(v8);
          }

          if (*(v6 + 87) < 0)
          {
            operator delete(*(v6 + 64));
          }

          *v6 = &unk_284A46EC0;
          XCFObject<__CFDictionary const*>::~XCFObject(v6 + 24);
          BaseOpaqueObject::~BaseOpaqueObject(v6);
          MEMORY[0x2383C8250]();
        }
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::pair<unsigned int,unsigned char> const,PropertyExchange::Request>,0>(uint64_t a1)
{
  std::__function::__value_func<void ()(caulk::expected<std::span<unsigned char const,18446744073709551615ul>,PropertyExchange::RequestError>)>::~__value_func[abi:ne200100](a1 + 40);
  v2 = *(a1 + 16);
  if (v2)
  {
    *(a1 + 24) = v2;

    operator delete(v2);
  }
}

uint64_t std::__function::__value_func<void ()(caulk::expected<std::span<unsigned char const,18446744073709551615ul>,PropertyExchange::RequestError>)>::~__value_func[abi:ne200100](uint64_t a1)
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

void std::__tree<std::__value_type<unsigned int,std::unique_ptr<MIDICI::CIRetrier>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::unique_ptr<MIDICI::CIRetrier>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::unique_ptr<MIDICI::CIRetrier>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<unsigned int,std::unique_ptr<MIDICI::CIRetrier>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::unique_ptr<MIDICI::CIRetrier>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::unique_ptr<MIDICI::CIRetrier>>>>::destroy(*a1);
    std::__tree<std::__value_type<unsigned int,std::unique_ptr<MIDICI::CIRetrier>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::unique_ptr<MIDICI::CIRetrier>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::unique_ptr<MIDICI::CIRetrier>>>>::destroy(a1[1]);
    v2 = a1[5];
    a1[5] = 0;
    if (v2)
    {
      MEMORY[0x2383C8250](v2, 0x1000C40504FFAC1);
    }

    operator delete(a1);
  }
}

void FullInit(const char *a1, uint64_t a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = time(0);
  srand(v4);
  gInMIDIServer = 1;
  gMIDIServerLog();
  v5 = gMIDIServerLog(void)::mdsrvr;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = getpid();
    v7 = ", forever";
    buf[0] = 136316162;
    *&buf[1] = "MIDIServer.mm";
    if (!a2)
    {
      v7 = "";
    }

    v22 = 1024;
    v23 = 286;
    v8 = "nullptr";
    if (a1)
    {
      v8 = a1;
    }

    v24 = 2080;
    v25 = v8;
    v26 = 2080;
    v27 = v7;
    v28 = 1024;
    LODWORD(v29) = v6;
    _os_log_impl(&dword_2371C2000, v5, OS_LOG_TYPE_INFO, "%25s:%-5d FullInit(%s%s) - MIDIServer [%d] starting", buf, 0x2Cu);
  }

  LOBYTE(__p) = 0;
  v14 = 0;
  v15 = 46;
  v16 = 2;
  v17 = 1;
  v18 = 0;
  v19 = 0;
  caulk::thread::attributes::apply_to_this_thread(&__p);
  _InitMIDIProperties();
  gMIDIServerLog();
  v9 = gMIDIServerLog(void)::mdsrvr;
  v10 = os_log_type_enabled(gMIDIServerLog(void)::mdsrvr, OS_LOG_TYPE_INFO);
  if (v10)
  {
    buf[0] = 136315394;
    *&buf[1] = "MIDIServer.mm";
    v22 = 1024;
    v23 = 294;
    _os_log_impl(&dword_2371C2000, v9, OS_LOG_TYPE_INFO, "%25s:%-5d Driver plugins initialized.", buf, 0x12u);
  }

  v11 = MIDIServer::defaultInstance(v10);
  (*(*v11 + 32))(v11, a2);
  v20[0] = &unk_284A484C8;
  v20[3] = v20;
  {
    if (v12)
    {
      CASmartPreferences::CASmartPreferences(v12);
    }
  }

  v30.__r_.__value_.__r.__words[0] = CASmartPreferences::InterpretBoolean;
  std::__function::__value_func<void ()(BOOL)>::__value_func[abi:ne200100](&v30.__r_.__value_.__l.__size_, v20);
  v20[7] = 0;
  operator new();
}

void sub_237207AA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, char a26)
{
  MEMORY[0x2383C8250](v26, 0x10F1C40C0916F0ALL);
  if (a26 == 1 && a25 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t *MIDIServer::defaultInstance(MIDIServer *this)
{
  {
    MIDIServer::defaultInstance(int)::cachedVersion = CoreMIDIServerImplVersion();
  }

  if (MIDIServer::defaultInstance(int)::cachedVersion == 1)
  {
    {
      if (v2)
      {
        MIDIServerMIG::MIDIServerMIG(v2);
      }
    }

    return &MIDIServer::defaultInstance(int)::migServer;
  }

  else
  {
    {
      if (v3)
      {
        MIDIServerXPCAssembly::MIDIServerXPCAssembly(v3);
      }
    }

    return MIDIServer::defaultInstance(int)::xpcServer;
  }
}

uint64_t std::__function::__value_func<void ()(BOOL)>::~__value_func[abi:ne200100](uint64_t a1)
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

void MIDIServer::WatchdogNotifyCallback(MIDIServer *this, const MIDINotification *a2, void *a3)
{
  if (*this == 3)
  {
    v14 = *(this + 4);
    str = 0;
    if (MIDIObjectGetStringProperty(v14, kMIDIPropertyDriverOwner, &str))
    {
      return;
    }

    v15 = CFEqual(str, @"com.apple.AppleMIDIBluetoothDriver");
    if (!v15)
    {
      goto LABEL_31;
    }

    v16 = MIDIServer::USBDeviceCount(v15);
    if (v16)
    {
      goto LABEL_31;
    }

    v17 = MIDIServer::BluetoothDeviceCount(v16);
    if (v17)
    {
      goto LABEL_31;
    }

    v8 = MIDIServer::defaultInstance(v17);
    v19 = v8[25];
    v18 = v8[26];
    if (v19 == v18)
    {
      goto LABEL_30;
    }

    v20 = v19 + 8;
    do
    {
      v12 = *(*(v20 - 8) + 48);
      if (v12)
      {
        v21 = 1;
      }

      else
      {
        v21 = v20 == v18;
      }

      v20 += 8;
    }

    while (!v21);
LABEL_29:
    if (v12)
    {
LABEL_31:
      CFRelease(str);
      return;
    }

LABEL_30:
    ScheduleCheckServerShutdown(v8);
    goto LABEL_31;
  }

  if (*this == 4)
  {
    v4 = *(this + 2);
    str = 0;
    if (!MIDIObjectGetStringProperty(v4, kMIDIPropertyDriverOwner, &str))
    {
      if (!CFEqual(str, @"com.apple.AppleMIDIUSBDriver") && !CFEqual(str, @"com.apple.YamahaUSBMIDIDriver") && !CFEqual(str, @"com.apple.AppleMIDIBluetoothDriver"))
      {
        goto LABEL_31;
      }

      v5 = CFEqual(*(this + 2), kMIDIPropertyOffline);
      if (!v5)
      {
        goto LABEL_31;
      }

      v6 = MIDIServer::USBDeviceCount(v5);
      if (v6)
      {
        goto LABEL_31;
      }

      v7 = MIDIServer::BluetoothDeviceCount(v6);
      if (v7)
      {
        goto LABEL_31;
      }

      v8 = MIDIServer::defaultInstance(v7);
      v10 = v8[25];
      v9 = v8[26];
      if (v10 == v9)
      {
        goto LABEL_30;
      }

      v11 = v10 + 8;
      do
      {
        v12 = *(*(v11 - 8) + 48);
        if (v12)
        {
          v13 = 1;
        }

        else
        {
          v13 = v11 == v9;
        }

        v11 += 8;
      }

      while (!v13);
      goto LABEL_29;
    }
  }
}

uint64_t MIDIServer::USBDeviceCount(MIDIServer *this)
{
  if (*MIDIServer::defaultInstance(this)[33] != 1)
  {
    return 0;
  }

  v1 = MIDIGetNumberOfDevices();
  outValue = 0;
  if (v1 < 1)
  {
    return 0;
  }

  v2 = 0;
  v3 = 0;
  v4 = v1 & 0x7FFFFFFF;
  do
  {
    v5 = MIDIGetDevice(v2);
    cf1 = 0;
    if ((MIDIObjectGetIntegerProperty(v5, kMIDIPropertyOffline, &outValue) || !outValue) && !MIDIObjectGetStringProperty(v5, kMIDIPropertyDriverOwner, &cf1))
    {
      if (CFEqual(cf1, @"com.apple.AppleMIDIUSBDriver") || CFEqual(cf1, @"com.apple.YamahaUSBMIDIDriver"))
      {
        v3 = (v3 + 1);
      }

      CFRelease(cf1);
    }

    ++v2;
  }

  while (v4 != v2);
  return v3;
}

uint64_t MIDIServer::BluetoothDeviceCount(MIDIServer *this)
{
  if (*MIDIServer::defaultInstance(this)[33] != 1)
  {
    return 0;
  }

  v1 = MIDIGetNumberOfDevices();
  outValue = 0;
  if (v1 < 1)
  {
    return 0;
  }

  v2 = 0;
  v3 = 0;
  v4 = v1 & 0x7FFFFFFF;
  do
  {
    v5 = MIDIGetDevice(v2);
    cf1 = 0;
    if ((MIDIObjectGetIntegerProperty(v5, kMIDIPropertyOffline, &outValue) || !outValue) && !MIDIObjectGetStringProperty(v5, kMIDIPropertyDriverOwner, &cf1))
    {
      if (CFEqual(cf1, @"com.apple.AppleMIDIBluetoothDriver"))
      {
        if (MIDIDeviceGetNumberOfEntities(v5))
        {
          v3 = (v3 + 1);
        }

        else
        {
          v3 = v3;
        }
      }

      CFRelease(cf1);
    }

    ++v2;
  }

  while (v4 != v2);
  return v3;
}

void ScheduleCheckServerShutdown(MIDIServer *a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v1 = MIDIServer::defaultInstance(a1);
  if ((*(v1 + 10) & 1) == 0)
  {
    v2 = MIDIServer::defaultInstance(v1);
    v4 = v2[25];
    v3 = v2[26];
    if (v4 == v3)
    {
      goto LABEL_10;
    }

    v5 = v4 + 8;
    do
    {
      v6 = *(*(v5 - 8) + 48);
      if (v6)
      {
        v7 = 1;
      }

      else
      {
        v7 = v5 == v3;
      }

      v5 += 8;
    }

    while (!v7);
    if (!v6)
    {
LABEL_10:
      v8 = MIDIServer::ProblemDevicesAttached(v2);
      if (!v8)
      {
        v9 = 300000000000;
        v10 = MIDIServer::USBDeviceCount(v8);
        if (v10 <= 0 && MIDIServer::BluetoothDeviceCount(v10) <= 0)
        {
          v9 = 5000000000;
        }

        gMIDIServerLog();
        v11 = gMIDIServerLog(void)::mdsrvr;
        if (os_log_type_enabled(gMIDIServerLog(void)::mdsrvr, OS_LOG_TYPE_DEBUG))
        {
          v13 = 136315650;
          v14 = "MIDIServer.mm";
          v15 = 1024;
          v16 = 688;
          v17 = 2048;
          v18 = ((v9 * 0x89705F4137uLL) >> 64) >> 5;
          _os_log_impl(&dword_2371C2000, v11, OS_LOG_TYPE_DEBUG, "%25s:%-5d ScheduleCheckServerShutdown() - shutting down in %llu seconds...", &v13, 0x1Cu);
        }

        v12 = dispatch_time(0, v9);
        dispatch_after(v12, MEMORY[0x277D85CD0], &__block_literal_global_1518);
      }
    }
  }
}

BOOL MIDIServer::ProblemDevicesAttached(MIDIServer *this)
{
  if (*MIDIServer::defaultInstance(this)[33] == 1)
  {
    v1 = MIDIGetNumberOfDevices();
    *outValue = 0;
    if (v1 >= 1)
    {
      v2 = 0;
      v3 = v1 & 0x7FFFFFFF;
      v4 = 1;
      while (1)
      {
        v5 = MIDIGetDevice(v2);
        cf1 = 0;
        if ((MIDIObjectGetIntegerProperty(v5, kMIDIPropertyOffline, &outValue[1]) || !outValue[1]) && !MIDIObjectGetStringProperty(v5, kMIDIPropertyDriverOwner, &cf1))
        {
          if (CFEqual(cf1, @"com.apple.AppleMIDIUSBDriver") || CFEqual(cf1, @"com.apple.YamahaUSBMIDIDriver"))
          {
            CFRelease(cf1);
            cf1 = 0;
            MIDIObjectGetIntegerProperty(v5, @"USBVendorProduct", outValue);
            if (outValue[0] <= 281314321)
            {
              if (outValue[0] == 77140976)
              {
                return v4;
              }

              v6 = 239161696;
            }

            else
            {
              if (outValue[0] == 281314322 || outValue[0] == 367263784)
              {
                return v4;
              }

              v6 = 425918471;
            }

            if (outValue[0] == v6)
            {
              return v4;
            }
          }

          if (cf1)
          {
            CFRelease(cf1);
          }
        }

        v4 = ++v2 < v3;
        if (v3 == v2)
        {
          return v4;
        }
      }
    }
  }

  return 0;
}

void ___Z27ScheduleCheckServerShutdownv_block_invoke(MIDIServer *a1)
{
  v31 = *MEMORY[0x277D85DE8];
  v1 = MIDIServer::defaultInstance(a1) + 2;
  v2 = (*(*v1 + 16))(v1);
  v3 = v2;
  v4 = MIDIServer::defaultInstance(v2);
  v5 = MIDIServer::defaultInstance(v4);
  v7 = v5[25];
  v6 = v5[26];
  if (v7 == v6)
  {
    goto LABEL_9;
  }

  v8 = v7 + 8;
  do
  {
    v9 = *(*(v8 - 8) + 48);
    if (v9)
    {
      v10 = 1;
    }

    else
    {
      v10 = v8 == v6;
    }

    v8 += 8;
  }

  while (!v10);
  if (!v9)
  {
LABEL_9:
    if (!MIDIServer::ProblemDevicesAttached(v5))
    {
      gMIDIServerLog();
      v11 = gMIDIServerLog(void)::mdsrvr;
      v12 = os_log_type_enabled(gMIDIServerLog(void)::mdsrvr, OS_LOG_TYPE_DEBUG);
      if (v12)
      {
        *buf = 136315394;
        *&buf[4] = "MIDIServer.mm";
        v27 = 1024;
        v28 = 661;
        _os_log_impl(&dword_2371C2000, v11, OS_LOG_TYPE_DEBUG, "%25s:%-5d MIDIServer shutting down now.", buf, 0x12u);
      }

      if ((v4[1] & 1) == 0)
      {
        v13 = -5;
        do
        {
          if (!*(gScheduler + 136))
          {
            break;
          }

          v12 = sleep(1u);
        }

        while (!__CFADD__(v13++, 1));
        v15 = MIDIServer::defaultInstance(v12);
        v17 = v15[25];
        v16 = v15[26];
        if (v17 == v16)
        {
          goto LABEL_28;
        }

        v18 = v17 + 8;
        do
        {
          v19 = *(*(v18 - 8) + 48);
          if (v19)
          {
            v20 = 1;
          }

          else
          {
            v20 = v18 == v16;
          }

          v18 += 8;
        }

        while (!v20);
        if (!v19)
        {
LABEL_28:
          *(v4 + 10) = 1;
          if (gMIDIIOThread)
          {
            CADeprecated::XThread::Stop(gMIDIIOThread);
          }

          v21 = v4[13];
          *buf = v4 + 13;
          buf[8] = (*(v21 + 16))();
          Scheduler::FlushAllOutput(gScheduler);
          *(gScheduler + 144) = 1;
          CADeprecated::CAMutex::Locker::~Locker(buf);
          MIDIDriverMgr::StopMIDI(v4[33]);
          v22 = gWatchdog;
          if (gWatchdog)
          {
            v22 = MIDIClientDispose(gWatchdog);
          }

          v23 = *SetupManager::instance(v22);
          if (v23)
          {
            MIDISetup::CheckWritePrefFile(v23);
          }

          std::unique_ptr<MIDIDriverKitPluginRegistrar>::reset[abi:ne200100]((v4[33] + 64), 0);
          std::unique_ptr<MIDIDriverMgr>::reset[abi:ne200100](v4 + 33, 0);
          gMIDIServerLog();
          v24 = gMIDIServerLog(void)::mdsrvr;
          if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
          {
            v25 = getpid();
            *buf = 136315650;
            *&buf[4] = "MIDIServer.mm";
            v27 = 1024;
            v28 = 432;
            v29 = 1024;
            v30 = v25;
            _os_log_impl(&dword_2371C2000, v24, OS_LOG_TYPE_INFO, "%25s:%-5d MIDIServer [%d] exiting", buf, 0x18u);
          }

          exit(0);
        }
      }
    }
  }

  if (v3)
  {
    (*(*v1 + 24))(v1);
  }
}

uint64_t CoreMIDIServerImplVersion()
{
  v0 = getenv("CoreMIDI_ServerVersion");
  if (v0)
  {
    v1 = *v0;
    if (v1 == 49)
    {
      return 1;
    }

    if (v1 == 50)
    {
      return 2;
    }
  }

  if (_os_feature_enabled_impl())
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

void std::__function::__func<std::function<void ()(unsigned int,caulk::function_ref<void ()(ClientProcess &)>)> CreateDoWithResolvedClientFunction<ClientProcessXPC>(void)::{lambda(unsigned int,caulk::function_ref<void ()(ClientProcess &)>)#1},std::allocator<std::function<void ()(unsigned int,caulk::function_ref<void ()(ClientProcess &)>)> CreateDoWithResolvedClientFunction<ClientProcessXPC>(void)::{lambda(unsigned int,caulk::function_ref<void ()(ClientProcess &)>)#1}>,void ()(unsigned int,caulk::function_ref<void ()(ClientProcess &)>)>::operator()(uint64_t a1, unsigned int *a2, __int128 *a3)
{
  v3 = *a2;
  v6 = *a3;
  v7 = *(a3 + 2);
  v14 = v3;
  v8[0] = 0;
  v12 = 0;
  v13 = 0;
  if (OpaqueObjectMgr::sInstance)
  {
    std::optional<caulk::concurrent::guarded_lookup_hash_table<unsigned int,BaseOpaqueObject *,(caulk::concurrent::guarded_lookup_hash_table_options)0,OpaqueObjectIdentityHash>::scoped_lookup>::emplace[abi:ne200100]<caulk::concurrent::guarded_lookup_hash_table<unsigned int,BaseOpaqueObject *,(caulk::concurrent::guarded_lookup_hash_table_options)0,OpaqueObjectIdentityHash>&,unsigned int const&,void>(v8, OpaqueObjectMgr::sInstance, &v14);
    if (v10)
    {
      v4 = v9;
      if ((*(*v9 + 24))(v9, &TOpaqueRTTI<ClientProcessXPC>::sRTTI))
      {
        v5 = v4;
      }

      else
      {
        v5 = 0;
      }

      v13 = v5;
      if (!v5)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v5 = v13;
      if (!v13)
      {
        goto LABEL_10;
      }
    }

    (v6)(&v6 + 8, v5 + 16);
  }

LABEL_10:
  if (v12 == 1)
  {
    if (v11)
    {
      atomic_fetch_add(v11, 0xFFFFFFFF);
    }
  }
}

uint64_t std::optional<caulk::concurrent::guarded_lookup_hash_table<unsigned int,BaseOpaqueObject *,(caulk::concurrent::guarded_lookup_hash_table_options)0,OpaqueObjectIdentityHash>::scoped_lookup>::emplace[abi:ne200100]<caulk::concurrent::guarded_lookup_hash_table<unsigned int,BaseOpaqueObject *,(caulk::concurrent::guarded_lookup_hash_table_options)0,OpaqueObjectIdentityHash>&,unsigned int const&,void>(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  if (*(a1 + 40) == 1)
  {
    v4 = *(a1 + 32);
    if (v4)
    {
      atomic_fetch_add(v4, 0xFFFFFFFF);
    }

    *(a1 + 40) = 0;
  }

  v5 = *a3;
  *a1 = a2;
  *(a1 + 8) = v5;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  atomic_fetch_add((a2 + 16), 1u);
  v6 = atomic_load((*a1 + 8));
  if (v6)
  {
    caulk::concurrent::guarded_lookup_hash_table<unsigned int,BaseOpaqueObject *,(caulk::concurrent::guarded_lookup_hash_table_options)0,OpaqueObjectIdentityHash>::table_impl::findSlotForKey(v6, v5);
    *(a1 + 32) = v7;
    if (v7)
    {
      atomic_fetch_add(v7, 1u);
      *(a1 + 16) = *(*(a1 + 32) + 8);
      *(a1 + 24) = 1;
    }
  }

  atomic_fetch_add((*a1 + 16), 0xFFFFFFFF);
  *(a1 + 40) = 1;
  return a1;
}

uint64_t caulk::concurrent::guarded_lookup_hash_table<unsigned int,BaseOpaqueObject *,(caulk::concurrent::guarded_lookup_hash_table_options)0,OpaqueObjectIdentityHash>::table_impl::findSlotForKey(uint64_t result, unsigned int a2)
{
  v2 = *(result + 8);
  v3 = a2 % v2;
  if ((a2 % v2) >= 3)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(result + 8);
  }

  v5 = (v3 + v4 - 3);
  v6 = 0xFFFFFFFFLL;
  v7 = 1;
  v8 = a2 % v2;
  do
  {
    v9 = v5;
    v10 = atomic_load((result + 16 + 8 * v8));
    if (v10 == -1)
    {
      if (v6 >= 0)
      {
        v6 = v6;
      }

      else
      {
        v6 = v8;
      }
    }

    else
    {
      if (!v10)
      {
        v7 = 0;
        if (v6 >= 0)
        {
          v8 = v6;
        }

        else
        {
          v8 = v8;
        }

        return v7 | (v8 << 32);
      }

      if (*(v10 + 4) == a2)
      {
        return v7 | (v8 << 32);
      }
    }

    if (v9 >= 3)
    {
      v11 = 0;
    }

    else
    {
      v11 = *(result + 8);
    }

    v5 = (v9 + v11 - 3);
    v8 = v9;
  }

  while (v9 != v3);
  if ((v6 & 0x80000000) == 0)
  {
    v7 = 0;
    v8 = v6;
    return v7 | (v8 << 32);
  }

  __break(1u);
  return result;
}

void std::__function::__func<std::function<void ()(unsigned int,caulk::function_ref<void ()(ClientProcess &)>)> CreateDoWithResolvedClientFunction<ClientProcessMIG>(void)::{lambda(unsigned int,caulk::function_ref<void ()(ClientProcess &)>)#1},std::allocator<std::function<void ()(unsigned int,caulk::function_ref<void ()(ClientProcess &)>)> CreateDoWithResolvedClientFunction<ClientProcessMIG>(void)::{lambda(unsigned int,caulk::function_ref<void ()(ClientProcess &)>)#1}>,void ()(unsigned int,caulk::function_ref<void ()(ClientProcess &)>)>::operator()(uint64_t a1, unsigned int *a2, __int128 *a3)
{
  v3 = *a2;
  v6 = *a3;
  v7 = *(a3 + 2);
  v14 = v3;
  v8[0] = 0;
  v12 = 0;
  v13 = 0;
  if (OpaqueObjectMgr::sInstance)
  {
    std::optional<caulk::concurrent::guarded_lookup_hash_table<unsigned int,BaseOpaqueObject *,(caulk::concurrent::guarded_lookup_hash_table_options)0,OpaqueObjectIdentityHash>::scoped_lookup>::emplace[abi:ne200100]<caulk::concurrent::guarded_lookup_hash_table<unsigned int,BaseOpaqueObject *,(caulk::concurrent::guarded_lookup_hash_table_options)0,OpaqueObjectIdentityHash>&,unsigned int const&,void>(v8, OpaqueObjectMgr::sInstance, &v14);
    if (v10)
    {
      v4 = v9;
      if ((*(*v9 + 24))(v9, &TOpaqueRTTI<ClientProcessMIG>::sRTTI))
      {
        v5 = v4;
      }

      else
      {
        v5 = 0;
      }

      v13 = v5;
      if (!v5)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v5 = v13;
      if (!v13)
      {
        goto LABEL_10;
      }
    }

    (v6)(&v6 + 8, v5 + 16);
  }

LABEL_10:
  if (v12 == 1)
  {
    if (v11)
    {
      atomic_fetch_add(v11, 0xFFFFFFFF);
    }
  }
}

void MIDIIOThread::Run(MIDIIOThread *this, uint64_t a2, int a3, int *a4)
{
  ServerPort = CADeprecated::XMachServer::CreateServerPort("com.apple.midiserver.io", this + 140, a3, a4);
  *(this + 36) = ServerPort;
  if (!*(this + 35))
  {
    v12 = ServerPort;
    *(this + 137) = 1;
    while (1)
    {
      v11 = 0;
      v9 = 4;
      if (XServerMachPort::ReceiveMessage(ServerPort, &v11, &v10, &v9) || v11 == 3)
      {
        break;
      }

      v7 = v11;
      v8[0] = _ZN5caulk12function_refIFvR13ClientProcessEE15functor_invokerIZN12MIDIIOThread3RunEvEUlRT_E_EEvRKNS_7details15erased_callableIS3_EES2_;
      v8[1] = &v7;
      v13 = v10;
      v6 = *(this + 22);
      if (!v6)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      (*(*v6 + 48))(v6, &v13, v8);
      ServerPort = v12;
    }

    XServerMachPort::~XServerMachPort(&v12);
  }
}

uint64_t _ZN5caulk12function_refIFvR13ClientProcessEE15functor_invokerIZN12MIDIIOThread3RunEvEUlRT_E_EEvRKNS_7details15erased_callableIS3_EES2_(uint64_t result, uint64_t a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = **result;
  if (v3 == 2)
  {
    result = MIDIIORingBufferWriter::emptySecondaryQueue((a2 + 24));
    if (!result)
    {
      return result;
    }

    v7 = *(a2 + 16);
    v12[0].timeStamp = 0x2400000013;
    v12[0].wordCount = v7;
    *&v12[0].words[2] = 0;
    *v12[0].words = 0;
    *&v12[0].words[4] = 1;
    v8 = v12;
    return mach_msg(v8, 1, 0x24u, 0, 0, 0, 0);
  }

  if (v3 == 1)
  {
    v12[0].timeStamp = 1;
    if (*(a2 + 288) != 1)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    while (1)
    {
      result = MIDIIORingBufferReader::readPacketList((a2 + 184), &v11, v12);
      if (!result)
      {
        break;
      }

      if (HIDWORD(v12[0].timeStamp))
      {
        if (v11)
        {
          v4 = _MIDISend(v11, HIDWORD(v11), v12);
        }

        else
        {
          v4 = _MIDIReceived(HIDWORD(v11), v12);
        }

        v5 = v4;
        if (v4)
        {
          gServerClientProcessLog();
          v6 = gServerClientProcessLog(void)::cliprc;
          if (os_log_type_enabled(gServerClientProcessLog(void)::cliprc, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315906;
            *&buf[4] = "ClientProcess.cpp";
            v14 = 0x400000000A70400;
            LODWORD(v15) = v5;
            WORD2(v15) = 1024;
            *(&v15 + 6) = v5;
            _os_log_impl(&dword_2371C2000, v6, OS_LOG_TYPE_DEBUG, "%25s:%-5d MIDISend/MIDIReceived returned %d/0x%x\n", buf, 0x1Eu);
          }
        }
      }
    }

    if (atomic_load((*(a2 + 272) + 16)))
    {
      if (!atomic_fetch_or((*(a2 + 272) + 24), 1u))
      {
        v10 = *(a2 + 16);
        *buf = 0x2400000013;
        *&buf[8] = v10;
        *&v15 = 0;
        v14 = 0;
        *(&v15 + 1) = 2;
        v8 = buf;
        return mach_msg(v8, 1, 0x24u, 0, 0, 0, 0);
      }
    }
  }

  return result;
}

uint64_t MIDIIOThread::RequestStop(MIDIIOThread *this)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = *(this + 36);
  v3 = 0x2800000013;
  v4 = v1;
  v6 = 0;
  v5 = 0;
  v7 = 0x400000003;
  v8 = 0;
  return mach_msg(&v3, 1, 0x28u, 0, 0, 0, 0);
}

uint64_t MIDIIOThread::Start(MIDIIOThread *this)
{
  CADeprecated::CAPThread::SetTimeConstraints(this, 0, 6000, 12000, 1);

  return CADeprecated::CAPThread::Start(this);
}

void MIDIIOThread::~MIDIIOThread(MIDIIOThread *this)
{
  *this = &unk_284A46D10;
  std::__function::__value_func<void ()(unsigned int,caulk::function_ref<void ()(ClientProcess &)>)>::~__value_func[abi:ne200100](this + 152);

  JUMPOUT(0x2383C8250);
}

{
  *this = &unk_284A46D10;
  std::__function::__value_func<void ()(unsigned int,caulk::function_ref<void ()(ClientProcess &)>)>::~__value_func[abi:ne200100](this + 152);
}

uint64_t std::__function::__value_func<void ()(unsigned int,caulk::function_ref<void ()(ClientProcess &)>)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(BOOL)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<BOOL ()(void const*)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<void CASmartPreferences::AddHandler<BOOL>(__CFString const*,__CFString const*,BOOL (*)(void const*,BOOL &),std::function<void ()(BOOL)>)::{lambda(void const*)#1},std::allocator<void CASmartPreferences::AddHandler<BOOL>(__CFString const*,__CFString const*,BOOL (*)(void const*,BOOL &),std::function<void ()(BOOL)>)::{lambda(void const*)#1}>,BOOL ()(void const*)>::operator()(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v8 = 0;
  v4 = (*(a1 + 8))(v3, &v8);
  v5 = 0;
  if (v8 == 1)
  {
    v9 = v4;
    v6 = *(a1 + 40);
    if (!v6)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    (*(*v6 + 48))(v6, &v9);
    v5 = v8;
  }

  return v5 & 1;
}

void std::__function::__func<void CASmartPreferences::AddHandler<BOOL>(__CFString const*,__CFString const*,BOOL (*)(void const*,BOOL &),std::function<void ()(BOOL)>)::{lambda(void const*)#1},std::allocator<void CASmartPreferences::AddHandler<BOOL>(__CFString const*,__CFString const*,BOOL (*)(void const*,BOOL &),std::function<void ()(BOOL)>)::{lambda(void const*)#1}>,BOOL ()(void const*)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<void ()(BOOL)>::~__value_func[abi:ne200100](a1 + 16);

  operator delete(a1);
}

uint64_t std::__function::__func<void CASmartPreferences::AddHandler<BOOL>(__CFString const*,__CFString const*,BOOL (*)(void const*,BOOL &),std::function<void ()(BOOL)>)::{lambda(void const*)#1},std::allocator<void CASmartPreferences::AddHandler<BOOL>(__CFString const*,__CFString const*,BOOL (*)(void const*,BOOL &),std::function<void ()(BOOL)>)::{lambda(void const*)#1}>,BOOL ()(void const*)>::__clone(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_284A462E0;
  a2[1] = v2;
  return std::__function::__value_func<void ()(BOOL)>::__value_func[abi:ne200100]((a2 + 2), a1 + 16);
}

void std::__function::__func<void CASmartPreferences::AddHandler<BOOL>(__CFString const*,__CFString const*,BOOL (*)(void const*,BOOL &),std::function<void ()(BOOL)>)::{lambda(void const*)#1},std::allocator<void CASmartPreferences::AddHandler<BOOL>(__CFString const*,__CFString const*,BOOL (*)(void const*,BOOL &),std::function<void ()(BOOL)>)::{lambda(void const*)#1}>,BOOL ()(void const*)>::~__func(void *a1)
{
  *a1 = &unk_284A462E0;
  std::__function::__value_func<void ()(BOOL)>::~__value_func[abi:ne200100]((a1 + 2));

  JUMPOUT(0x2383C8250);
}

void *std::__function::__func<void CASmartPreferences::AddHandler<BOOL>(__CFString const*,__CFString const*,BOOL (*)(void const*,BOOL &),std::function<void ()(BOOL)>)::{lambda(void const*)#1},std::allocator<void CASmartPreferences::AddHandler<BOOL>(__CFString const*,__CFString const*,BOOL (*)(void const*,BOOL &),std::function<void ()(BOOL)>)::{lambda(void const*)#1}>,BOOL ()(void const*)>::~__func(void *a1)
{
  *a1 = &unk_284A462E0;
  std::__function::__value_func<void ()(BOOL)>::~__value_func[abi:ne200100]((a1 + 2));
  return a1;
}

void std::__function::__func<FullInit(char const*,BOOL)::$_0,std::allocator<FullInit(char const*,BOOL)::$_0>,void ()(BOOL)>::operator()(MIDIServer *a1, unsigned __int8 *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  *(MIDIServer::defaultInstance(a1) + 9) = v2;
  gMIDIServerLog();
  v3 = gMIDIServerLog(void)::mdsrvr;
  v4 = os_log_type_enabled(gMIDIServerLog(void)::mdsrvr, OS_LOG_TYPE_INFO);
  if (v2 != 1)
  {
    if (!v4)
    {
      return;
    }

    v7 = 136315394;
    v8 = "MIDIServer.mm";
    v9 = 1024;
    v10 = 313;
    v6 = "%25s:%-5d NOTICE: Universal MIDI System Exclusive message filtering is temporarily disabled. Please enable the MIDI-CI beta for API message filtering.";
    goto LABEL_10;
  }

  if (v4)
  {
    v7 = 136315394;
    v8 = "MIDIServer.mm";
    v9 = 1024;
    v10 = 308;
    _os_log_impl(&dword_2371C2000, v3, OS_LOG_TYPE_INFO, "%25s:%-5d ==========================================================================================================", &v7, 0x12u);
  }

  gMIDIServerLog();
  v5 = gMIDIServerLog(void)::mdsrvr;
  if (os_log_type_enabled(gMIDIServerLog(void)::mdsrvr, OS_LOG_TYPE_INFO))
  {
    v7 = 136315394;
    v8 = "MIDIServer.mm";
    v9 = 1024;
    v10 = 309;
    _os_log_impl(&dword_2371C2000, v5, OS_LOG_TYPE_INFO, "%25s:%-5d NOTICE: MIDIServer is filtering Universal MIDI System Exclusive traffic.", &v7, 0x12u);
  }

  gMIDIServerLog();
  v3 = gMIDIServerLog(void)::mdsrvr;
  if (os_log_type_enabled(gMIDIServerLog(void)::mdsrvr, OS_LOG_TYPE_INFO))
  {
    v7 = 136315394;
    v8 = "MIDIServer.mm";
    v9 = 1024;
    v10 = 310;
    v6 = "%25s:%-5d ==========================================================================================================";
LABEL_10:
    _os_log_impl(&dword_2371C2000, v3, OS_LOG_TYPE_INFO, v6, &v7, 0x12u);
  }
}

void MIDIServerXPCAssembly::MIDIServerXPCAssembly(MIDIServerXPCAssembly *this)
{
  v15[4] = *MEMORY[0x277D85DE8];
  v5 = 0u;
  v6 = 0u;
  v7 = 0u;
  v1 = xpc_connection_create_mach_service("com.apple.midiserver", 0, 1uLL);
  v2 = v1;
  if (!v1)
  {
    v2 = xpc_null_create();
  }

  v3 = v2;
  v4 = v3;
  v8 = v3;
  if (!v3 || MEMORY[0x2383C9190](v3) != MEMORY[0x277D86450])
  {
    v8 = xpc_null_create();
  }

  v9 = dispatch_queue_create("MIDIServer", 0);
  gMIDIServerLog();
  v10 = gMIDIServerLog(void)::mdsrvr;
  v11 = 0;
  *buf = 9000000000;
  v15[0] = &unk_284A458E8;
  v15[1] = MIDIServerXPCAssembly::xpcConnectionConfig(void)::{lambda(void)#1}::__invoke;
  v15[3] = v15;
  v12 = 9000000000;
  std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](v13, v15);
  v13[32] = 1;
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v15);

  MIDIServer::MIDIServer(MIDIServer::defaultInstance(int)::xpcServer);
}

void sub_237209DDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, uint64_t a11, uint64_t a12, char a13)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<void (*)(void),std::allocator<void (*)(void)>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284A458E8;
  a2[1] = v2;
  return result;
}

void MIDIServer::MIDIServer(MIDIServer *this)
{
  v9 = *MEMORY[0x277D85DE8];
  *this = &unk_284A46138;
  *(this + 9) = 0;
  CADeprecated::CAMutex::CAMutex((this + 16), "mAPILock");
  CADeprecated::CAMutex::CAMutex((this + 104), "mIOLock");
  *(this + 25) = 0;
  *(this + 26) = 0;
  *(this + 24) = &unk_284A46AD0;
  *(this + 30) = 0;
  *(this + 31) = 0;
  *(this + 29) = 0;
  *(this + 27) = 0;
  *(this + 28) = &unk_284A46A70;
  *(this + 33) = 0;
  *(this + 37) = 0;
  *(this + 41) = 0;
  *(this + 45) = 0;
  *(this + 46) = 0;
  *(this + 376) = 0;
  v2 = MEMORY[0x2383C7D80](this + 380);
  *(this + 49) = 850045863;
  *(this + 25) = 0u;
  *(this + 26) = 0u;
  *(this + 27) = 0u;
  *(this + 56) = 0;
  *(this + 114) = 1056964608;
  *(this + 58) = 0;
  *(this + 66) = 0;
  *(this + 67) = caulk::alloc::get_realtime_safe_resource(v2);
  *(this + 71) = 0;
  *(this + 75) = 0;
  strcpy(v3, "umpci_thread");
  HIBYTE(v3[6]) = 0;
  v3[7] = 0;
  *(&v3[11] + 1) = 268;
  v4 = 0x10000003CLL;
  v5 = 2;
  v6 = 1;
  v7 = 0;
  v8 = 0;
  operator new();
}

void sub_23720A5D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void UMPStream::EndpointManager::~EndpointManager(UMPStream::EndpointManager *this)
{
  std::__tree<std::__value_type<__CFString const*,unsigned int>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,unsigned int>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,unsigned int>>>::destroy(*(this + 13));
  std::mutex::~mutex((this + 32));
  v2 = (this + 8);
  std::vector<std::unique_ptr<UMPStream::EndpointPair>>::__destroy_vector::operator()[abi:ne200100](&v2);
}

void MIDICI::DeviceManager::~DeviceManager(MIDICI::DeviceManager *this)
{
  v3 = (this + 168);
  std::vector<std::unique_ptr<InternalCITransaction>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v2 = *(this + 20);
  *(this + 20) = 0;
  if (v2)
  {
    MEMORY[0x2383C8250](v2, 0x1000C40504FFAC1);
  }

  std::__tree<std::__value_type<__CFString const*,unsigned int>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,unsigned int>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,unsigned int>>>::destroy(*(this + 17));
  std::__tree<std::__value_type<unsigned int,MIDICI::SourceState>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,MIDICI::SourceState>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,MIDICI::SourceState>>>::destroy(*(this + 14));
  std::mutex::~mutex((this + 32));
  v3 = (this + 8);
  std::vector<std::unique_ptr<MIDICI::Device>>::__destroy_vector::operator()[abi:ne200100](&v3);
}

void UMPCIServerContext::~UMPCIServerContext(UMPCIServerContext *this)
{
  std::__function::__value_func<void ()(UMPCIObjectEvent,unsigned int,applesauce::CF::DictionaryRef)>::~__value_func[abi:ne200100](this + 368);
  std::__function::__value_func<void ()(UMPCIObjectEvent,unsigned int,applesauce::CF::DictionaryRef)>::~__value_func[abi:ne200100](this + 336);
  AsyncMessenger::~AsyncMessenger((this + 96));
  std::__function::__value_func<UMPStream::FunctionBlock const* ()(unsigned int,unsigned int,unsigned char)>::~__value_func[abi:ne200100](this + 64);
  std::__function::__value_func<UMPStream::FunctionBlock const* ()(unsigned int,unsigned int,unsigned char)>::~__value_func[abi:ne200100](this + 32);

  std::__function::__value_func<UMPStream::EndpointPair const* ()(unsigned int,unsigned int)>::~__value_func[abi:ne200100](this);
}

void *std::__function::__value_func<void ()(UMPCIObjectEvent,unsigned int,applesauce::CF::DictionaryRef)>::swap[abi:ne200100](void *result, void *a2)
{
  v5[3] = *MEMORY[0x277D85DE8];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  return result;
}

void sub_23720AB24(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void std::__function::__func<UMPCIServerContext::UMPCIServerContext(void)::{lambda(UMPCIObjectEvent,unsigned int,applesauce::CF::DictionaryRef)#1},std::allocator<UMPCIServerContext::UMPCIServerContext(void)::{lambda(UMPCIObjectEvent,unsigned int,applesauce::CF::DictionaryRef)#1}>,void ()(UMPCIObjectEvent,unsigned int,applesauce::CF::DictionaryRef)>::operator()(uint64_t a1, int *a2, int *a3, CFDictionaryRef *a4)
{
  v4 = *a2;
  v5 = *a3;
  CFDictionaryRef = *a4;
  *a4 = 0;
  v7 = *(a1 + 8);
  if (!CFDictionaryRef)
  {
    block = 0;
    v11 = 0;
    CFDictionaryRef = applesauce::CF::details::make_CFDictionaryRef(&block);
  }

  v8 = dispatch_get_global_queue(0, 0);
  block = MEMORY[0x277D85DD0];
  v11 = 3321888768;
  v12 = ___ZZN18UMPCIServerContextC1EvENKUl16UMPCIObjectEventjN10applesauce2CF13DictionaryRefEE_clES0_jS3__block_invoke;
  v13 = &__block_descriptor_56_ea8_40c36_ZTSN10applesauce2CF13DictionaryRefE_e5_v8__0l;
  v14 = v7;
  v16 = v5;
  if (CFDictionaryRef)
  {
    CFRetain(CFDictionaryRef);
  }

  v15 = CFDictionaryRef;
  v17 = v4;
  dispatch_async(v8, &block);

  v9 = *(v7 + 392);
  if (v9)
  {
    if (CFDictionaryRef)
    {
      CFRetain(CFDictionaryRef);
      v9 = *(v7 + 392);
    }

    std::function<void ()(UMPCIObjectEvent,unsigned int,applesauce::CF::DictionaryRef)>::operator()(v9, v4, v5);
    if (CFDictionaryRef)
    {
      CFRelease(CFDictionaryRef);
    }
  }

  if (v15)
  {
    CFRelease(v15);
  }

  if (CFDictionaryRef)
  {
    CFRelease(CFDictionaryRef);
  }
}

void sub_23720AC68(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::DictionaryRef::~DictionaryRef(va);
  _Unwind_Resume(a1);
}

void ___ZZN18UMPCIServerContextC1EvENKUl16UMPCIObjectEventjN10applesauce2CF13DictionaryRefEE_clES0_jS3__block_invoke(uint64_t a1)
{
  _MIDIObjectSetDictionaryProperty(*(a1 + 48), @"object description", *(a1 + 40));
  v2 = *(a1 + 40);
  if (v2)
  {
    CFRetain(v2);
  }

  v4 = CFRetain(v2);
  v3 = SetupManager::instance(v4);
  SetupManager::AddNotification(v3);
  if (v2)
  {
    CFRelease(v2);
  }
}

void __destroy_helper_block_ea8_40c36_ZTSN10applesauce2CF13DictionaryRefE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    CFRelease(v1);
  }
}

void *__copy_helper_block_ea8_40c36_ZTSN10applesauce2CF13DictionaryRefE(void *result, uint64_t a2)
{
  v2 = result;
  v3 = *(a2 + 40);
  if (v3)
  {
    result = CFRetain(*(a2 + 40));
  }

  v2[5] = v3;
  return result;
}

uint64_t std::__function::__func<UMPCIServerContext::UMPCIServerContext(void)::{lambda(UMPCIObjectEvent,unsigned int,applesauce::CF::DictionaryRef)#1},std::allocator<UMPCIServerContext::UMPCIServerContext(void)::{lambda(UMPCIObjectEvent,unsigned int,applesauce::CF::DictionaryRef)#1}>,void ()(UMPCIObjectEvent,unsigned int,applesauce::CF::DictionaryRef)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284A48408;
  a2[1] = v2;
  return result;
}

uint64_t std::default_delete<std::tuple<caulk::thread::attributes,AsyncMessenger::AsyncMessenger(std::string const&,float)::{lambda(void)#1},std::tuple<>>>::operator()[abi:ne200100](uint64_t result)
{
  if (result)
  {
    if (*(result + 24) == 1 && *(result + 23) < 0)
    {
      operator delete(*result);
    }

    JUMPOUT(0x2383C8250);
  }

  return result;
}

uint64_t caulk::thread_proxy<std::tuple<caulk::thread::attributes,AsyncMessenger::AsyncMessenger(std::string const&,float)::{lambda(void)#1},std::tuple<>>>(caulk::thread::attributes *a1)
{
  caulk::thread::attributes::apply_to_this_thread(a1);
  v2 = *(a1 + 8);
  v3 = v2 + 176;
  do
  {
    caulk::mach::semaphore::timed_wait_or_error((v2 + 12), *(v2 + 88));
    v4 = atomic_load((v2 + 8));
    if (v4)
    {
      break;
    }

    std::mutex::lock((v2 + 24));
    v18 = 0;
    while (1)
    {
      v5 = *(v2 + 160);
      if (v5)
      {
        goto LABEL_9;
      }

      v6 = atomic_exchange_explicit((v2 + 96), 0, memory_order_acquire);
      if (!v6)
      {
        break;
      }

      v5 = 0;
      do
      {
        v7 = v5;
        v5 = v6;
        v6 = atomic_load(v6);
        atomic_store(v7, v5);
      }

      while (v6);
      *(v2 + 160) = v5;
LABEL_9:
      v8 = atomic_load(v5);
      *(v2 + 160) = v8;
      v9 = *(v5 + 8);
      v10 = *(v3 + 32 * v9 + 24);
      if (v10)
      {
        std::function<void ()(unsigned int,MIDIEventList const*)>::operator()(v10, *(v5 + 9), v5 + 13);
        *(&v18 + v9) = 1;
      }

      v11 = v5 + 21;
      for (i = *(v5 + 17); i; --i)
      {
        v11 += 4 * *(v11 + 8) + 12;
      }

      (*(**(v2 + 168) + 24))(*(v2 + 168), v5, v11 - v5, 8);
    }

    v13 = 1;
    do
    {
      v14 = v13;
      v15 = *(v3 + 32 * v6 + 24);
      if (v15 && (*(&v18 + v6) & 1) == 0)
      {
        std::function<void ()(unsigned int,MIDIEventList const*)>::operator()(v15, 0, 0);
      }

      v13 = 0;
      v6 = 1;
    }

    while ((v14 & 1) != 0);
    v16 = atomic_load((v2 + 8));
    std::mutex::unlock((v2 + 24));
  }

  while ((v16 & 1) == 0);
  if (a1)
  {
    std::default_delete<std::tuple<caulk::thread::attributes,AsyncMessenger::AsyncMessenger(std::string const&,float)::{lambda(void)#1},std::tuple<>>>::operator()[abi:ne200100](a1);
  }

  return 0;
}

void sub_23720B060(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::default_delete<std::tuple<caulk::thread::attributes,AsyncMessenger::AsyncMessenger(std::string const&,float)::{lambda(void)#1},std::tuple<>>>::operator()[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::function<void ()(unsigned int,MIDIEventList const*)>::operator()(uint64_t a1, int a2, uint64_t a3)
{
  v5 = a2;
  v4 = a3;
  if (!a1)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*a1 + 48))(a1, &v5, &v4);
}

void MIDIServer::ClientDied(MIDIServer *this, ClientProcess *a2)
{
  v69 = *MEMORY[0x277D85DE8];
  v61 = MIDIServer::defaultInstance(this) + 2;
  v3 = (*(*v61 + 16))();
  v60 = v3;
  v4 = *(this + 2);
  v5 = MIDICISessionManager::Instance(v3);
  v6 = *(v5 + 32);
  v66 = (v5 + 32);
  v7 = (*(v6 + 16))(v5 + 32);
  LOBYTE(v67) = v7;
  v9 = *(v5 + 128);
  v8 = *(v5 + 136);
  if (v9 != v8)
  {
    while (*(*v9 + 18) != v4)
    {
      if (++v9 == v8)
      {
        v9 = *(v5 + 136);
        goto LABEL_12;
      }
    }

    MIDICIServerSession::Invalidate(*v9);
    if (v9 != v8)
    {
      for (i = v9 + 1; i != v8; ++i)
      {
        v11 = *i;
        if (*(*i + 18) == v4)
        {
          MIDICIServerSession::Invalidate(v11);
        }

        else
        {
          *v9++ = v11;
        }
      }
    }
  }

LABEL_12:
  OwnedPtrVector<MIDICIServerSession *>::erase((v5 + 120), v9, *(v5 + 136));
  if (v7)
  {
    (*(*(v5 + 32) + 24))(v5 + 32);
  }

  cf = caulk::inplace_function<BOOL ()(std::shared_ptr<MIDICIServerResponder>),32ul,8ul,caulk::inplace_function_detail::rt_vtable>::k_wrapper_vtable<MIDICIResponderManager::ClientDied(int)::{lambda(std::shared_ptr<MIDICIServerResponder>)#1}>;
  v65[0] = v4;
  std::recursive_mutex::lock(*(v5 + 160));
  v12 = *(v5 + 176);
  std::recursive_mutex::lock(*(v5 + 160));
  v13 = *(v5 + 184);
  v66 = caulk::inplace_function<BOOL ()(std::shared_ptr<MIDICIServerResponder>),32ul,8ul,caulk::inplace_function_detail::rt_vtable>::k_wrapper_vtable<MIDICIResponderManager::ClientDied(int)::{lambda(std::shared_ptr<MIDICIServerResponder>)#1}>;
  (off_284A48498[0])(&v67, v65);
  if (v12 == v13)
  {
    goto LABEL_36;
  }

  v14 = v13;
  while (1)
  {
    v15 = v12[1];
    v62 = *v12;
    v63 = v15;
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v16 = (*v66)(&v67, &v62);
    if (v63)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v63);
    }

    if (v16)
    {
      break;
    }

    v12 += 2;
    if (v12 == v13)
    {
      goto LABEL_37;
    }
  }

  if (v12 != v13)
  {
    v17 = v12 + 2;
    if (v12 + 2 != v13)
    {
      v14 = v12;
      do
      {
        v62 = *v17;
        v18 = v17[1];
        v63 = v18;
        if (v18)
        {
          atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v19 = (*v66)(&v67, &v62);
        if (v63)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v63);
        }

        if (!v19)
        {
          v20 = *v17;
          *v17 = 0;
          v17[1] = 0;
          v21 = *(v14 + 8);
          *v14 = v20;
          if (v21)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v21);
          }

          v14 += 16;
        }

        v17 += 2;
      }

      while (v17 != v13);
      goto LABEL_37;
    }

LABEL_36:
    v14 = v12;
  }

LABEL_37:
  (v66[3])(&v67);
  std::recursive_mutex::unlock(*(v5 + 160));
  std::recursive_mutex::unlock(*(v5 + 160));
  std::recursive_mutex::lock(*(v5 + 160));
  std::recursive_mutex::lock(*(v5 + 160));
  std::vector<std::shared_ptr<MIDICIServerResponder>>::erase((v5 + 176), v14, *(v5 + 184));
  std::recursive_mutex::unlock(*(v5 + 160));
  std::recursive_mutex::unlock(*(v5 + 160));
  v22 = (*(cf + 3))(v65);
  v23 = MIDIServer::defaultInstance(v22);
  std::mutex::lock((v23 + 114));
  v66 = 0;
  v67 = 0;
  v68 = 0;
  v24 = v23[111];
  v25 = v23[112];
  if (v24 != v25)
  {
    while (1)
    {
      v26 = *(*v24 + 44);
      if ((v26 & 0x100000000) != 0 && v4 == v26)
      {
        break;
      }

      if (++v24 == v25)
      {
        v24 = v23[112];
        goto LABEL_51;
      }
    }

    LODWORD(cf) = *(*v24 + 8);
    std::vector<unsigned int>::push_back[abi:ne200100](&v66, &cf);
  }

  if (v24 != v25)
  {
    for (j = v24 + 1; j != v25; ++j)
    {
      v28 = *j;
      v29 = *(*j + 44);
      if ((v29 & 0x100000000) != 0 && v4 == v29)
      {
        LODWORD(cf) = *(v28 + 8);
        std::vector<unsigned int>::push_back[abi:ne200100](&v66, &cf);
      }

      else
      {
        *j = 0;
        std::unique_ptr<UMPStream::EndpointPair>::reset[abi:ne200100](v24++, v28);
      }
    }
  }

LABEL_51:
  std::vector<std::unique_ptr<UMPStream::EndpointPair>>::erase((v23 + 111), v24, v23[112]);
  v31 = v66;
  v30 = v67;
  if (v66 != v67)
  {
    v32 = v66;
    do
    {
      v33 = v23[110];
      v34 = *v32;
      cf = 0;
      UMPCIServerContext::sendNotificationForObject(v33, 2, v34, &cf);
      if (cf)
      {
        CFRelease(cf);
      }

      ++v32;
    }

    while (v32 != v30);
  }

  if (v31)
  {
    operator delete(v31);
  }

  std::mutex::unlock((v23 + 114));
  v36 = MIDIServer::defaultInstance(v35);
  std::mutex::lock((v36 + 90));
  v66 = 0;
  v67 = 0;
  v68 = 0;
  v37 = v36[87];
  v38 = v36[88];
  if (v37 != v38)
  {
    while (1)
    {
      v39 = *(*v37 + 44);
      if ((v39 & 0x100000000) != 0 && v4 == v39)
      {
        break;
      }

      if (++v37 == v38)
      {
        v37 = v36[88];
        goto LABEL_72;
      }
    }

    LODWORD(cf) = *(*v37 + 2);
    std::vector<unsigned int>::push_back[abi:ne200100](&v66, &cf);
  }

  if (v37 != v38)
  {
    for (k = v37 + 1; k != v38; ++k)
    {
      v41 = *k;
      v42 = *(*k + 44);
      if ((v42 & 0x100000000) != 0 && v4 == v42)
      {
        LODWORD(cf) = *(v41 + 2);
        std::vector<unsigned int>::push_back[abi:ne200100](&v66, &cf);
      }

      else
      {
        *k = 0;
        std::unique_ptr<MIDICI::Device>::reset[abi:ne200100](v37++, v41);
      }
    }
  }

LABEL_72:
  std::vector<std::unique_ptr<MIDICI::Device>>::erase((v36 + 87), v37, v36[88]);
  v44 = v66;
  v43 = v67;
  if (v66 != v67)
  {
    v45 = v66;
    do
    {
      v46 = v36[86];
      v47 = *v45;
      cf = 0;
      UMPCIServerContext::sendNotificationForObject(v46, 2, v47, &cf);
      if (cf)
      {
        CFRelease(cf);
      }

      ++v45;
    }

    while (v45 != v43);
  }

  if (v44)
  {
    operator delete(v44);
  }

  std::mutex::unlock((v36 + 90));
  v49 = SetupManager::instance(v48);
  v50 = *v49;
  if (*v49)
  {
LABEL_80:
    for (m = *(v50 + 184); m != *(v50 + 192); ++m)
    {
      if (!*(*m + 16) && *(*m + 32) == this)
      {
        v49 = OwnedPtrVector<MIDIClient *>::erase(v50 + 176, m);
        goto LABEL_80;
      }
    }
  }

  v52 = MIDIServer::defaultInstance(v49);
  ClientTable::ProcessQuit((v52 + 24), this);
  v54 = MIDIServer::defaultInstance(v53);
  v56 = v54[25];
  v55 = v54[26];
  if (v56 == v55)
  {
    goto LABEL_94;
  }

  v57 = v56 + 8;
  do
  {
    v58 = *(*(v57 - 8) + 48);
    if (v58)
    {
      v59 = 1;
    }

    else
    {
      v59 = v57 == v55;
    }

    v57 += 8;
  }

  while (!v59);
  if (!v58)
  {
LABEL_94:
    ScheduleCheckServerShutdown(v54);
  }

  if (v60)
  {
    (*(*v61 + 24))(v61);
  }
}

void sub_23720B70C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, char a11, std::exception a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  if (a2 == 3)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    if ((a11 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    if (a2 != 2)
    {
      __cxa_begin_catch(a1);
      __cxa_end_catch();
      JUMPOUT(0x23720B6A0);
    }

    __cxa_get_exception_ptr(a1);
    a12.__vftable = (MEMORY[0x277D82910] + 16);
    __cxa_begin_catch(a1);
    std::exception::~exception(&a12);
    __cxa_end_catch();
    if ((a14 & 1) == 0)
    {
LABEL_11:
      JUMPOUT(0x23720B6D0);
    }
  }

  JUMPOUT(0x23720B6A8);
}

void sub_23720B928(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  CADeprecated::CAMutex::Locker::~Locker(va);
  JUMPOUT(0x23720B848);
}

BOOL caulk::inplace_function_detail::rt_vtable<BOOL,std::shared_ptr<MIDICIServerResponder>>::rt_vtable<MIDICIResponderManager::ClientDied(int)::{lambda(std::shared_ptr<MIDICIServerResponder>)#1}>(caulk::inplace_function_detail::wrapper<MIDICIResponderManager::ClientDied(int)::{lambda(std::shared_ptr<MIDICIServerResponder>)#1}>)::{lambda(void *,std::shared_ptr<MIDICIServerResponder>&&)#1}::__invoke(int *a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  v5 = *(v4 + 80);
  v6 = *a1;
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return v5 == v6;
}

void MIDIServer::startMIDI(MIDIServer *this, int a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = *(MIDIServer::defaultInstance(this, a2) + 264);
  gDriverTable();
  v3 = gDriverTable(void)::drvtbl;
  v4 = os_log_type_enabled(gDriverTable(void)::drvtbl, OS_LOG_TYPE_DEBUG);
  if (v4)
  {
    v6 = *v2;
    v9 = 136315650;
    v10 = "DriverTable.cpp";
    v11 = 1024;
    v12 = 144;
    v13 = 1024;
    v14 = v6;
    _os_log_impl(&dword_2371C2000, v3, OS_LOG_TYPE_DEBUG, "%25s:%-5d StartMIDI: (already running: %d)", &v9, 0x18u);
  }

  if ((*v2 & 1) == 0)
  {
    v7 = *(v2 + 2);
    if (v7 != *(v2 + 3))
    {
      MIDIDriverMgr::GetDriverDeviceList(*v7, v5);
    }

    *v2 = 1;
    if (*SetupManager::instance(v4))
    {
      MIDISetup::SetMIDIRunning(*v2, v8);
    }
  }
}

void CASmartPreferences::CASmartPreferences(CASmartPreferences *this)
{
  CASmartPreferences::instance(void)::global = 850045863;
  unk_27DE97D88 = 0u;
  unk_27DE97D98 = 0u;
  unk_27DE97DA8 = 0u;
  qword_27DE97DB8 = 0;
  qword_27DE97DC0 = CFSetCreateMutable(0, 0, MEMORY[0x277CBF158]);
  global_queue = dispatch_get_global_queue(0, 0);
  *&qword_27DE97DC8 = 0u;
  *&qword_27DE97DD8 = 0u;
  qword_27DE97DE0 = dispatch_source_create(MEMORY[0x277D85D30], 1uLL, 0, global_queue);
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 0x40000000;
  handler[2] = ___ZN18CASmartPreferencesC2Ev_block_invoke;
  handler[3] = &__block_descriptor_tmp_1582;
  handler[4] = &CASmartPreferences::instance(void)::global;
  dispatch_source_set_event_handler(qword_27DE97DE0, handler);
  dispatch_resume(qword_27DE97DE0);
}

void ___ZN18CASmartPreferencesC2Ev_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  std::mutex::lock(v1);
  CFSetApplyFunction(*(v1 + 64), SynchronizePrefDomain, 0);
  v2 = *(v1 + 72);
  v3 = *(v1 + 80);
  while (v2 != v3)
  {
    CASmartPreferences::Pref::Load(v2);
    v2 += 6;
  }

  std::mutex::unlock(v1);
}

CFPropertyListRef CASmartPreferences::Pref::Load(CFStringRef *this)
{
  result = CFPreferencesCopyAppValue(*this, this[1]);
  if (result)
  {
    v4 = result;
    v3 = this[5];
    if (!v3)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    return (*(v3->isa + 6))(v3, &v4);
  }

  return result;
}

BOOL CASmartPreferences::InterpretBoolean(CASmartPreferences *this, _BYTE *a2, BOOL *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  valuePtr = 0;
  *a2 = 0;
  if (this)
  {
    v4 = this;
    v5 = CFGetTypeID(this);
    if (v5 == CFBooleanGetTypeID())
    {
      LODWORD(this) = CFBooleanGetValue(v4);
LABEL_6:
      *a2 = 1;
      return this != 0;
    }

    if (v5 == CFNumberGetTypeID())
    {
      CFNumberGetValue(v4, kCFNumberIntType, &valuePtr);
      LODWORD(this) = valuePtr != 0;
      goto LABEL_6;
    }

    if (v5 != CFStringGetTypeID())
    {
      LODWORD(this) = 0;
      return this != 0;
    }

    CFStringGetCString(v4, buffer, 64, 0x600u);
    if (sscanf(buffer, "%d", &valuePtr) == 1)
    {
      *a2 = 1;
      LODWORD(this) = valuePtr != 0;
      return this != 0;
    }

    v7 = buffer[0];
    if (buffer[0])
    {
      v8 = &buffer[1];
      do
      {
        *(v8 - 1) = __tolower(v7);
        v9 = *v8++;
        v7 = v9;
      }

      while (v9);
    }

    if (!(*buffer ^ 0x6F6E | buffer[2]) || (*buffer == 1936482662 ? (v10 = v13 == 101) : (v10 = 0), v10))
    {
      LODWORD(this) = 0;
      goto LABEL_6;
    }

    if (*buffer == 7562617 || !(*buffer ^ 0x65757274 | v13))
    {
      LODWORD(this) = 1;
      *a2 = 1;
    }

    else
    {
      LODWORD(this) = valuePtr;
    }
  }

  return this != 0;
}

void *std::construct_at[abi:ne200100]<CASmartPreferences::Pref,__CFString const*&,__CFString const*&,std::function<BOOL ()(void const*)> &,CASmartPreferences::Pref*>(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *MEMORY[0x277D85DE8];
  std::__function::__value_func<BOOL ()(void const*)>::__value_func[abi:ne200100](v8, a4);
  *a1 = a2;
  a1[1] = a3;
  std::__function::__value_func<BOOL ()(void const*)>::__value_func[abi:ne200100]((a1 + 2), v8);
  std::__function::__value_func<BOOL ()(void const*)>::~__value_func[abi:ne200100](v8);
  return a1;
}

void sub_23720BF5C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<BOOL ()(void const*)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__split_buffer<CASmartPreferences::Pref>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 48;
    std::__function::__value_func<BOOL ()(void const*)>::~__value_func[abi:ne200100](i - 32);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::__function::__value_func<BOOL ()(void const*)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

pthread_t CADeprecated::Task::Run(pthread_t this)
{
  if ((this->__opaque[120] & 1) == 0)
  {
    v1 = this;
    v2 = &this->__opaque[128];
    do
    {
      v3 = (*(*(v1 + 144) + 16))(v2);
      if (*(v1 + 280) == 1)
      {
        mach_absolute_time();
        v4 = __udivti3();
        if (*(v1 + 296) <= v4)
        {
          *(v1 + 280) = 0;
          (*(*v1 + 40))(v1, v4);
        }
      }

      if (*(v1 + 280) == 1)
      {
        this = CADeprecated::CAGuard::WaitUntil(v2, *(v1 + 296));
      }

      else
      {
        this = CADeprecated::CAGuard::Wait(v2);
      }

      if (v3)
      {
        this = (*(*v2 + 24))(v2);
      }
    }

    while ((*(v1 + 136) & 1) == 0);
  }

  return this;
}

CADeprecated::Task *CADeprecated::Task::Task(CADeprecated::Task *this, const char *a2, unsigned int a3, uint64_t a4, BOOL a5, BOOL a6, const char *a7)
{
  *this = &unk_284A46428;
  v8 = CADeprecated::CAPThread::CAPThread(this, CADeprecated::XThread::RunHelper, this, 50, a5, a6, a7);
  *(v8 + 16) = "SysexSender";
  *(v8 + 136) = 0;
  *v8 = &unk_284A46518;
  CADeprecated::CAGuard::CAGuard((v8 + 144), "Task");
  *(this + 280) = 0;
  return this;
}

uint64_t CADeprecated::Task::WakeUpAt(CADeprecated::Task *this, unint64_t a2)
{
  v4 = this + 144;
  result = (*(*(this + 18) + 16))(this + 144);
  v6 = result;
  if (v4[136] == 1 && *(this + 36) <= a2)
  {
    if (result)
    {
      return (*(*v4 + 24))(v4);
    }
  }

  else
  {
    *(this + 280) = 1;
    *(this + 36) = a2;
    *(this + 37) = __udivti3() - 20000;
    if (v6)
    {
      (*(*v4 + 24))(v4);
    }

    return CADeprecated::CAGuard::Notify(v4);
  }

  return result;
}

uint64_t std::__tree<std::__value_type<std::pair<unsigned int,unsigned char>,PropertyExchange::Request>,std::__map_value_compare<std::pair<unsigned int,unsigned char>,std::__value_type<std::pair<unsigned int,unsigned char>,PropertyExchange::Request>,std::less<std::pair<unsigned int,unsigned char>>,true>,std::allocator<std::__value_type<std::pair<unsigned int,unsigned char>,PropertyExchange::Request>>>::find<std::pair<unsigned int,unsigned char>>(uint64_t a1, unsigned int a2, unsigned __int8 a3)
{
  v5 = *(a1 + 8);
  v3 = a1 + 8;
  v4 = v5;
  if (!v5)
  {
    return v3;
  }

  v6 = v3;
  do
  {
    v7 = *(v4 + 32);
    v8 = v7 == a2;
    if (v7 >= a2)
    {
      v9 = 1;
    }

    else
    {
      v9 = -1;
    }

    if (v8)
    {
      v10 = *(v4 + 36);
      v11 = v10 == a3;
      v9 = v10 >= a3 ? 1 : -1;
      if (v11)
      {
        v9 = 0;
      }
    }

    v12 = v9 & 0x80;
    v8 = v12 == 0;
    v13 = v12 >> 4;
    if (v8)
    {
      v6 = v4;
    }

    v4 = *(v4 + v13);
  }

  while (v4);
  if (v3 == v6)
  {
    return v3;
  }

  v14 = *(v6 + 32);
  v15 = v14 == a2;
  if (v14 <= a2)
  {
    v16 = 1;
  }

  else
  {
    v16 = -1;
  }

  if (v15)
  {
    v17 = *(v6 + 36);
    v18 = -1;
    if (v17 <= a3)
    {
      v18 = 1;
    }

    if (v17 == a3)
    {
      v16 = 0;
    }

    else
    {
      v16 = v18;
    }
  }

  if (v16 < 0)
  {
    return v3;
  }

  return v6;
}

void std::__tree<std::__value_type<std::pair<unsigned int,unsigned char>,PropertyExchange::Request>,std::__map_value_compare<std::pair<unsigned int,unsigned char>,std::__value_type<std::pair<unsigned int,unsigned char>,PropertyExchange::Request>,std::less<std::pair<unsigned int,unsigned char>>,true>,std::allocator<std::__value_type<std::pair<unsigned int,unsigned char>,PropertyExchange::Request>>>::__erase_unique<std::pair<unsigned int,unsigned char>>(void *a1, unsigned int a2, unsigned __int8 a3)
{
  v4 = std::__tree<std::__value_type<std::pair<unsigned int,unsigned char>,PropertyExchange::Request>,std::__map_value_compare<std::pair<unsigned int,unsigned char>,std::__value_type<std::pair<unsigned int,unsigned char>,PropertyExchange::Request>,std::less<std::pair<unsigned int,unsigned char>>,true>,std::allocator<std::__value_type<std::pair<unsigned int,unsigned char>,PropertyExchange::Request>>>::find<std::pair<unsigned int,unsigned char>>(a1, a2, a3);
  if (a1 + 1 != v4)
  {
    v5 = v4;
    v6 = *(v4 + 8);
    if (v6)
    {
      do
      {
        v7 = v6;
        v6 = *v6;
      }

      while (v6);
    }

    else
    {
      v8 = v4;
      do
      {
        v7 = v8[2];
        v9 = *v7 == v8;
        v8 = v7;
      }

      while (!v9);
    }

    if (*a1 == v4)
    {
      *a1 = v7;
    }

    v10 = a1[1];
    --a1[2];
    std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v10, v5);
    std::__destroy_at[abi:ne200100]<std::pair<std::pair<unsigned int,unsigned char> const,PropertyExchange::Request>,0>((v5 + 4));

    operator delete(v5);
  }
}

uint64_t std::__function::__value_func<void ()(caulk::expected<std::span<unsigned char const,18446744073709551615ul>,PropertyExchange::RequestError>)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::parse<char const*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  *(a1 + 8) = 0;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a1);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a1);
  std::__function::__value_func<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::__value_func[abi:ne200100](v11, a4);
  std::__function::__value_func<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::__value_func[abi:ne200100](v28, v11);
  std::__function::__value_func<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::__value_func[abi:ne200100](v12, v28);
  v13 = 0;
  v14[0] = a2;
  v14[1] = a3;
  v15 = -1;
  v16 = 0;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0;
  v22 = "";
  v24 = 0;
  v25 = 0;
  v23 = 0;
  v8 = localeconv();
  if (!v8)
  {
    __assert_rtn("get_decimal_point", "lexer.hpp", 136, "loc != nullptr");
  }

  if (v8->decimal_point)
  {
    v9 = *v8->decimal_point;
  }

  else
  {
    v9 = 46;
  }

  v26 = v9;
  v27 = 0;
  v13 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::scan(v14);
  std::__function::__value_func<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::~__value_func[abi:ne200100](v28);
  nlohmann::detail::parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::parse(v12, a1);
  nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::~lexer(v14);
  std::__function::__value_func<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::~__value_func[abi:ne200100](v12);
  return std::__function::__value_func<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::~__value_func[abi:ne200100](v11);
}

void sub_23720C6BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *exception_object, char a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::~lexer(v16 + 40);
  std::__function::__value_func<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::~__value_func[abi:ne200100](&a15);
  std::__function::__value_func<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::~__value_func[abi:ne200100](&a11);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(v15);
  _Unwind_Resume(a1);
}

void sub_23720C714(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t std::__function::__value_func<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::function<void ()(caulk::expected<std::span<unsigned char const,18446744073709551615ul>,PropertyExchange::RequestError>)>::operator()(uint64_t a1)
{
  if (!a1)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v2 = *(*a1 + 48);

  return v2();
}

unsigned __int8 *nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(unsigned __int8 *a1)
{
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a1);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(a1 + 1, *a1);
  return a1;
}

unsigned __int8 *nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(unsigned __int8 *result)
{
  v1 = *result;
  if (v1 > 2)
  {
    if (v1 == 3)
    {
      if (*(result + 1))
      {
        return result;
      }

      v2 = "m_type != value_t::string or m_value.string != nullptr";
      v3 = 1222;
    }

    else
    {
      if (v1 != 8 || *(result + 1))
      {
        return result;
      }

      v2 = "m_type != value_t::binary or m_value.binary != nullptr";
      v3 = 1223;
    }

LABEL_15:
    __assert_rtn("assert_invariant", "json.hpp", v3, v2);
  }

  if (v1 == 1)
  {
    if (*(result + 1))
    {
      return result;
    }

    v2 = "m_type != value_t::object or m_value.object != nullptr";
    v3 = 1220;
    goto LABEL_15;
  }

  if (v1 == 2 && !*(result + 1))
  {
    v2 = "m_type != value_t::array or m_value.array != nullptr";
    v3 = 1221;
    goto LABEL_15;
  }

  return result;
}

void nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(uint64_t **a1, int a2)
{
  v29 = 0;
  v30 = 0;
  v31 = 0;
  if (a2 == 1)
  {
    std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::reserve(&v29, (*a1)[2]);
    v6 = (*a1 + 1);
    v7 = **a1;
    if (v7 != v6)
    {
      v8 = v30;
      do
      {
        if (v8 >= v31)
        {
          v8 = std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__emplace_back_slow_path<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>(&v29, (v7 + 7));
        }

        else
        {
          *v8 = *(v7 + 56);
          *(v8 + 8) = v7[8];
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v7 + 56);
          *(v7 + 56) = 0;
          v7[8] = 0;
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v8);
          v8 += 16;
        }

        v30 = v8;
        v9 = v7[1];
        if (v9)
        {
          do
          {
            v10 = v9;
            v9 = *v9;
          }

          while (v9);
        }

        else
        {
          do
          {
            v10 = v7[2];
            v11 = *v10 == v7;
            v7 = v10;
          }

          while (!v11);
        }

        v7 = v10;
      }

      while (v10 != v6);
    }
  }

  else if (a2 == 2)
  {
    std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::reserve(&v29, ((*a1)[1] - **a1) >> 4);
    v4 = **a1;
    v5 = (*a1)[1];
    while (v4 != v5)
    {
      std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::push_back[abi:ne200100](&v29, v4);
      v4 += 16;
    }
  }

  for (i = v30; v29 != v30; i = v30)
  {
    v15 = *(i - 16);
    v14 = i - 16;
    v13 = v15;
    LOBYTE(v27) = v15;
    v16 = *(v14 + 8);
    v28 = v16;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v14);
    *v14 = 0;
    *(v14 + 8) = 0;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&v27);
    std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__base_destruct_at_end[abi:ne200100](&v29, (v30 - 16));
    if (v15 == 1)
    {
      v19 = (v16 + 8);
      v20 = *v16;
      if (*v16 == v16 + 8)
      {
        v13 = 1;
      }

      else
      {
        v21 = v30;
        do
        {
          if (v21 >= v31)
          {
            v21 = std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__emplace_back_slow_path<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>(&v29, (v20 + 56));
          }

          else
          {
            *v21 = v20[56];
            *(v21 + 8) = *(v20 + 8);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v20 + 56);
            v20[56] = 0;
            *(v20 + 8) = 0;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v21);
            v21 += 16;
          }

          v30 = v21;
          v22 = *(v20 + 1);
          if (v22)
          {
            do
            {
              v23 = v22;
              v22 = *v22;
            }

            while (v22);
          }

          else
          {
            do
            {
              v23 = *(v20 + 2);
              v11 = *v23 == v20;
              v20 = v23;
            }

            while (!v11);
          }

          v20 = v23;
        }

        while (v23 != v19);
        v16 = v28;
        v13 = v27;
      }

      std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::destroy(*(v16 + 8));
      *v16 = v16 + 8;
      *(v16 + 16) = 0;
      *(v16 + 8) = 0;
    }

    else if (v13 == 2)
    {
      v17 = *v16;
      v18 = *(v16 + 8);
      if (*v16 != v18)
      {
        do
        {
          std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::push_back[abi:ne200100](&v29, v17);
          v17 += 16;
        }

        while (v17 != v18);
        v17 = *v16;
      }

      std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__base_destruct_at_end[abi:ne200100](v16, v17);
      v13 = 2;
    }

    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&v27);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v28, v13);
  }

  if (a2 > 2)
  {
    if (a2 == 3)
    {
      v24 = *a1;
      if (*(*a1 + 23) < 0)
      {
        v26 = *v24;
        goto LABEL_50;
      }
    }

    else
    {
      if (a2 != 8)
      {
        goto LABEL_53;
      }

      v24 = *a1;
      v25 = **a1;
      if (v25)
      {
        v24[1] = v25;
        v26 = v25;
LABEL_50:
        operator delete(v26);
        goto LABEL_51;
      }
    }

LABEL_52:
    operator delete(v24);
    goto LABEL_53;
  }

  if (a2 == 1)
  {
    std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::destroy((*a1)[1]);
    goto LABEL_51;
  }

  if (a2 == 2)
  {
    v27 = *a1;
    std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__destroy_vector::operator()[abi:ne200100](&v27);
LABEL_51:
    v24 = *a1;
    goto LABEL_52;
  }

LABEL_53:
  v27 = &v29;
  std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__destroy_vector::operator()[abi:ne200100](&v27);
}

void *std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (!(a2 >> 60))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>(a2);
    }

    std::vector<CADeprecated::XMachServer::Client *>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_23720CCD4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::push_back[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  if (v4 >= *(a1 + 16))
  {
    result = std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__emplace_back_slow_path<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>(a1, a2);
  }

  else
  {
    *v4 = *a2;
    *(v4 + 8) = *(a2 + 8);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a2);
    *a2 = 0;
    *(a2 + 8) = 0;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v4);
    result = v4 + 16;
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__emplace_back_slow_path<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>(uint64_t a1, uint64_t a2)
{
  v2 = (*(a1 + 8) - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    std::vector<CADeprecated::XMachServer::Client *>::__throw_length_error[abi:ne200100]();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 3 > v3)
  {
    v3 = v6 >> 3;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF0)
  {
    v7 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v18 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>(v7);
  }

  v8 = 16 * v2;
  v15 = 0;
  v16 = v8;
  *(&v17 + 1) = 0;
  *v8 = *a2;
  *(v8 + 8) = *(a2 + 8);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a2);
  *a2 = 0;
  *(a2 + 8) = 0;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v8);
  *&v17 = v8 + 16;
  v9 = *(a1 + 8);
  v10 = v8 + *a1 - v9;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>*>(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = *(a1 + 16);
  v14 = v17;
  *(a1 + 8) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  std::__split_buffer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::~__split_buffer(&v15);
  return v14;
}

void sub_23720CE70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__base_destruct_at_end[abi:ne200100](uint64_t result, unsigned __int8 *a2)
{
  v3 = result;
  v4 = *(result + 8);
  if (v4 != a2)
  {
    v5 = v4 - 16;
    v6 = v4 - 16;
    do
    {
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v5);
      v7 = *v6;
      v6 -= 16;
      result = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(v5 + 8, v7);
      v8 = v5 == a2;
      v5 = v6;
    }

    while (!v8);
  }

  *(v3 + 8) = a2;
  return result;
}

void std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::destroy(char *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::destroy(*a1);
    std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::destroy(*(a1 + 1));
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a1 + 56);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(a1 + 64, a1[56]);
    if (a1[55] < 0)
    {
      operator delete(*(a1 + 4));
    }

    operator delete(a1);
  }
}

void std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>(unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>*>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t a4)
{
  v13 = a4;
  v14 = a4;
  v11[0] = a1;
  v11[1] = &v13;
  v11[2] = &v14;
  if (a2 == a3)
  {
    v12 = 1;
  }

  else
  {
    v4 = a4;
    v6 = a2;
    v7 = a2;
    do
    {
      *v4 = *v7;
      *(v4 + 8) = *(v7 + 1);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v7);
      *v7 = 0;
      *(v7 + 1) = 0;
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v4);
      v7 += 16;
      v4 = v14 + 16;
      v14 += 16;
    }

    while (v7 != a3);
    v12 = 1;
    v8 = v6;
    do
    {
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v6);
      v9 = *v8;
      v8 += 16;
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(v6 + 8, v9);
      v6 = v8;
    }

    while (v8 != a3);
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>*>>::~__exception_guard_exceptions[abi:ne200100](v11);
}

uint64_t std::__split_buffer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::~__split_buffer(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 16;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant((i - 16));
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(i - 8, *(i - 16));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v2 = **(a1 + 16);
    v3 = **(a1 + 8);
    if (v2 != v3)
    {
      v4 = v2 - 16;
      v5 = v2 - 16;
      do
      {
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v4);
        v6 = *v5;
        v5 -= 16;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(v4 + 8, v6);
        v7 = v4 == v3;
        v4 = v5;
      }

      while (!v7);
    }
  }

  return a1;
}

void nlohmann::detail::type_error::create(nlohmann::detail::exception *a1, int a2, uint64_t a3)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "type_error");
  nlohmann::detail::exception::name(&v14, __p, a2);
  v6 = *(a3 + 23);
  if (v6 >= 0)
  {
    v7 = a3;
  }

  else
  {
    v7 = *a3;
  }

  if (v6 >= 0)
  {
    v8 = *(a3 + 23);
  }

  else
  {
    v8 = *(a3 + 8);
  }

  v9 = std::string::append(&v14, v7, v8);
  v10 = *&v9->__r_.__value_.__l.__data_;
  v16 = v9->__r_.__value_.__r.__words[2];
  *v15 = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  if (v16 >= 0)
  {
    v11 = v15;
  }

  else
  {
    v11 = v15[0];
  }

  nlohmann::detail::exception::exception(a1, a2, v11);
  *a1 = &unk_284A48CE0;
  if (SHIBYTE(v16) < 0)
  {
    operator delete(v15[0]);
  }
}

void sub_23720D29C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void nlohmann::detail::type_error::~type_error(std::runtime_error *this)
{
  this->__vftable = &unk_284A48C48;
  std::runtime_error::~runtime_error(this + 1);

  std::exception::~exception(this);
}

{
  this->__vftable = &unk_284A48C48;
  std::runtime_error::~runtime_error(this + 1);
  std::exception::~exception(this);

  JUMPOUT(0x2383C8250);
}

void nlohmann::detail::exception::~exception(std::runtime_error *this)
{
  this->__vftable = &unk_284A48C48;
  std::runtime_error::~runtime_error(this + 1);
  std::exception::~exception(this);

  JUMPOUT(0x2383C8250);
}

{
  this->__vftable = &unk_284A48C48;
  std::runtime_error::~runtime_error(this + 1);

  std::exception::~exception(this);
}

void nlohmann::detail::exception::name(std::string *a1, uint64_t a2, int a3)
{
  std::operator+<char>();
  v5 = std::string::append(&v13, ".", 1uLL);
  v6 = *&v5->__r_.__value_.__l.__data_;
  v14.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v14.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&__p, a3);
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
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  v9 = std::string::append(&v14, p_p, size);
  v10 = *&v9->__r_.__value_.__l.__data_;
  v15.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
  *&v15.__r_.__value_.__l.__data_ = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  v11 = std::string::append(&v15, "] ", 2uLL);
  *a1 = *v11;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }
}

void sub_23720D520(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (*(v26 - 41) < 0)
  {
    operator delete(*(v26 - 64));
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

nlohmann::detail::exception *nlohmann::detail::exception::exception(nlohmann::detail::exception *this, int a2, const char *a3)
{
  *this = &unk_284A48C48;
  *(this + 2) = a2;
  MEMORY[0x2383C7ED0](this + 16, a3);
  return this;
}

uint64_t std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::find<char const*>(uint64_t a1, char *__s)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v5 = a1 + 8;
  do
  {
    v6 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((v3 + 32), __s);
    if ((v6 & 0x80u) == 0)
    {
      v5 = v3;
    }

    v3 = *(v3 + ((v6 >> 4) & 8));
  }

  while (v3);
  if (v5 == v2 || std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((v5 + 32), __s) >= 1)
  {
    return v2;
  }

  return v5;
}

uint64_t std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(const void **a1, char *__s)
{
  v3 = *(a1 + 23);
  if (v3 >= 0)
  {
    v4 = a1;
  }

  else
  {
    v4 = *a1;
  }

  if (v3 >= 0)
  {
    v5 = *(a1 + 23);
  }

  else
  {
    v5 = a1[1];
  }

  v6 = strlen(__s);

  return std::operator<=>[abi:ne200100]<char,std::char_traits<char>>(v4, v5, __s, v6);
}

uint64_t std::__function::__value_func<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

void nlohmann::detail::parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::parse(uint64_t a1, unsigned __int8 *a2)
{
  v58 = *MEMORY[0x277D85DE8];
  if (!*(a1 + 24))
  {
    v14 = *(a1 + 176);
    v52 = a2;
    v53 = 0u;
    v54 = 0u;
    v55 = 0;
    v56 = v14;
    memset(&__p, 0, sizeof(__p));
    while (1)
    {
      v15 = *(a1 + 32);
      if (v15 <= 5)
      {
        if (v15 <= 2)
        {
          if (v15 == 1)
          {
            LOBYTE(v47.__vftable) = 1;
            nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<BOOL &>(&v52, &v47);
          }

          else
          {
            if (v15 != 2)
            {
              goto LABEL_125;
            }

            LOBYTE(v47.__vftable) = 0;
            nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<BOOL &>(&v52, &v47);
          }
        }

        else if (v15 == 3)
        {
          nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<decltype(nullptr)>(&v52);
        }

        else
        {
          if (v15 == 4)
          {
            nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<std::string&>(&v52);
          }

          v47.__vftable = *(a1 + 152);
          nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<unsigned long long &>(&v52, &v47);
        }

        goto LABEL_68;
      }

      if (v15 <= 7)
      {
        if (v15 == 6)
        {
          v47.__vftable = *(a1 + 144);
          nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<long long &>(&v52, &v47);
        }

        else
        {
          if ((*(a1 + 160) & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
          {
            nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::get_token_string(&v49, *(a1 + 88), *(a1 + 96));
            nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::get_token_string(&v44, *(a1 + 88), *(a1 + 96));
            std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v45, "number overflow parsing '", &v44);
            std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v46, &v45, "'");
            nlohmann::detail::out_of_range::create(&v47, &v46);
            nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::parse_error(&v52, &v47);
            nlohmann::detail::out_of_range::~out_of_range(&v47);
            if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v46.__r_.__value_.__l.__data_);
            }

            goto LABEL_127;
          }

          v47.__vftable = *(a1 + 160);
          nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<double &>(&v52, &v47);
        }

        goto LABEL_68;
      }

      if (v15 != 8)
      {
        break;
      }

      v49.__r_.__value_.__s.__data_[0] = 2;
      v47.__vftable = nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<nlohmann::detail::value_t>(&v52, &v49);
      std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> *,std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> *>>::push_back[abi:ne200100](&v53, &v47);
      v20 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::scan(a1 + 40);
      *(a1 + 32) = v20;
      if (v20 == 10)
      {
LABEL_65:
        *(&v53 + 1) -= 8;
LABEL_68:
        size = __p.__r_.__value_.__l.__size_;
        if (!__p.__r_.__value_.__l.__size_)
        {
LABEL_84:
          if (__p.__r_.__value_.__r.__words[0])
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a2);
          v30 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::scan(a1 + 40);
          *(a1 + 32) = v30;
          if (v30 != 15)
          {
            nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::get_token_string(&__p, *(a1 + 88), *(a1 + 96));
            v49 = *(a1 + 64);
            std::string::basic_string[abi:ne200100]<0>(&v45, "value");
            nlohmann::detail::parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::exception_message(&v46, a1, 0xFu, &v45);
            nlohmann::detail::parse_error::create(&v47, &v49, &v46);
            nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::parse_error(&v52, &v47);
            v47.__vftable = &unk_284A48C48;
            std::runtime_error::~runtime_error(&v48);
            std::exception::~exception(&v47);
            if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v46.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v45.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }
          }

          if (v55 == 1)
          {
            v38[0] = 9;
            v39 = 0;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v38);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v38);
            v31 = *a2;
            *a2 = 9;
            v38[0] = v31;
            v32 = *(a2 + 1);
            *(a2 + 1) = 0;
            v39 = v32;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a2);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v38);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v39, v31);
          }

          if (v53)
          {
            operator delete(v53);
          }

          return;
        }

        v22 = __p.__r_.__value_.__r.__words[0];
        v23 = *(&v53 + 1);
        while (1)
        {
          v24 = size - 1;
          if (((*(v22 + (((size - 1) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (size - 1)) & 1) == 0)
          {
            break;
          }

          v25 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::scan(a1 + 40);
          *(a1 + 32) = v25;
          if (v25 == 13)
          {
            *(&v53 + 1) = v23;
            __p.__r_.__value_.__l.__size_ = size;
            v19 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::scan(a1 + 40);
            goto LABEL_82;
          }

          if (v25 != 10)
          {
            *(&v53 + 1) = v23;
            nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::get_token_string(&v49, *(a1 + 88), *(a1 + 96));
            v46 = *(a1 + 64);
            std::string::basic_string[abi:ne200100]<0>(&v44, "array");
            nlohmann::detail::parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::exception_message(&v45, a1, 0xAu, &v44);
            nlohmann::detail::parse_error::create(&v47, &v46, &v45);
            nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::parse_error(&v52, &v47);
            goto LABEL_140;
          }

LABEL_76:
          v23 -= 8;
          --size;
          if (!v24)
          {
            *(&v53 + 1) = v23;
            goto LABEL_84;
          }
        }

        v26 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::scan(a1 + 40);
        *(a1 + 32) = v26;
        if (v26 != 13)
        {
          if (v26 != 11)
          {
            *(&v53 + 1) = v23;
            nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::get_token_string(&v49, *(a1 + 88), *(a1 + 96));
            v46 = *(a1 + 64);
            std::string::basic_string[abi:ne200100]<0>(&v44, "object");
            nlohmann::detail::parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::exception_message(&v45, a1, 0xBu, &v44);
            nlohmann::detail::parse_error::create(&v47, &v46, &v45);
            nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::parse_error(&v52, &v47);
            goto LABEL_140;
          }

          goto LABEL_76;
        }

        *(&v53 + 1) = v23;
        __p.__r_.__value_.__l.__size_ = size;
        v27 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::scan(a1 + 40);
        *(a1 + 32) = v27;
        if (v27 != 4)
        {
          goto LABEL_138;
        }

        v28 = *(*(v23 - 8) + 8);
        v47.__vftable = (a1 + 112);
        *(&v54 + 1) = std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v28, (a1 + 112)) + 56;
        v29 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::scan(a1 + 40);
        *(a1 + 32) = v29;
        if (v29 != 12)
        {
          goto LABEL_139;
        }

        v19 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::scan(a1 + 40);
LABEL_82:
        *(a1 + 32) = v19;
      }

      else
      {
        LOBYTE(v47.__vftable) = 1;
        std::vector<BOOL>::push_back(&__p, &v47);
      }
    }

    if (v15 != 9)
    {
      if (v15 == 14)
      {
        nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::get_token_string(&v49, *(a1 + 88), *(a1 + 96));
        v46 = *(a1 + 64);
        std::string::basic_string[abi:ne200100]<0>(&v44, "value");
        nlohmann::detail::parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::exception_message(&v45, a1, 0, &v44);
        nlohmann::detail::parse_error::create(&v47, &v46, &v45);
        nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::parse_error(&v52, &v47);
      }

      else
      {
LABEL_125:
        nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::get_token_string(&v49, *(a1 + 88), *(a1 + 96));
        v46 = *(a1 + 64);
        std::string::basic_string[abi:ne200100]<0>(&v44, "value");
        nlohmann::detail::parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::exception_message(&v45, a1, 0x10u, &v44);
        nlohmann::detail::parse_error::create(&v47, &v46, &v45);
        nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::parse_error(&v52, &v47);
      }

      v47.__vftable = &unk_284A48C48;
      std::runtime_error::~runtime_error(&v48);
      std::exception::~exception(&v47);
      goto LABEL_127;
    }

    v49.__r_.__value_.__s.__data_[0] = 1;
    v47.__vftable = nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<nlohmann::detail::value_t>(&v52, &v49);
    std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> *,std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> *>>::push_back[abi:ne200100](&v53, &v47);
    v16 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::scan(a1 + 40);
    *(a1 + 32) = v16;
    if (v16 != 11)
    {
      if (v16 == 4)
      {
        v17 = *(*(*(&v53 + 1) - 8) + 8);
        v47.__vftable = (a1 + 112);
        *(&v54 + 1) = std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v17, (a1 + 112)) + 56;
        v18 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::scan(a1 + 40);
        *(a1 + 32) = v18;
        if (v18 == 12)
        {
          LOBYTE(v47.__vftable) = 0;
          std::vector<BOOL>::push_back(&__p, &v47);
          v19 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::scan(a1 + 40);
          goto LABEL_82;
        }

LABEL_139:
        nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::get_token_string(&v49, *(a1 + 88), *(a1 + 96));
        v46 = *(a1 + 64);
        std::string::basic_string[abi:ne200100]<0>(&v44, "object separator");
        nlohmann::detail::parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::exception_message(&v45, a1, 0xCu, &v44);
        nlohmann::detail::parse_error::create(&v47, &v46, &v45);
        nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::parse_error(&v52, &v47);
      }

      else
      {
LABEL_138:
        nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::get_token_string(&v49, *(a1 + 88), *(a1 + 96));
        v46 = *(a1 + 64);
        std::string::basic_string[abi:ne200100]<0>(&v44, "object key");
        nlohmann::detail::parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::exception_message(&v45, a1, 4u, &v44);
        nlohmann::detail::parse_error::create(&v47, &v46, &v45);
        nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::parse_error(&v52, &v47);
      }

LABEL_140:
      nlohmann::detail::parse_error::~parse_error(&v47);
LABEL_127:
      if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v45.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v44.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v49.__r_.__value_.__l.__data_);
      }

      goto LABEL_84;
    }

    goto LABEL_65;
  }

  std::__function::__value_func<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::__value_func[abi:ne200100](v51, a1);
  nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::json_sax_dom_callback_parser(&v52, a2, v51, *(a1 + 176));
  std::__function::__value_func<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::~__value_func[abi:ne200100](v51);
  memset(&__p, 0, sizeof(__p));
  while (1)
  {
LABEL_3:
    v4 = *(a1 + 32);
    if (v4 <= 5)
    {
      if (v4 > 2)
      {
        if (v4 == 3)
        {
          nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<decltype(nullptr)>(&v52);
        }

        else if (v4 == 4)
        {
          nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<std::string&>(&v52);
        }

        else
        {
          nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<unsigned long long &>(&v52, *(a1 + 152));
        }

        goto LABEL_26;
      }

      if (v4 == 1)
      {
        v6 = 1;
      }

      else
      {
        if (v4 != 2)
        {
          goto LABEL_99;
        }

        v6 = 0;
      }

      nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<BOOL &>(&v52, v6);
      goto LABEL_26;
    }

    if (v4 <= 7)
    {
      break;
    }

    if (v4 != 8)
    {
      if (v4 == 9)
      {
        nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::start_object(&v52);
        v5 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::scan(a1 + 40);
        *(a1 + 32) = v5;
        if (v5 != 11)
        {
          if (v5 == 4)
          {
            nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::key();
          }

          goto LABEL_135;
        }

        nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::end_object(&v52);
        goto LABEL_26;
      }

      if (v4 == 14)
      {
        nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::get_token_string(&v49, *(a1 + 88), *(a1 + 96));
        v46 = *(a1 + 64);
        std::string::basic_string[abi:ne200100]<0>(&v44, "value");
        nlohmann::detail::parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::exception_message(&v45, a1, 0, &v44);
        nlohmann::detail::parse_error::create(&v47, &v46, &v45);
        nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::parse_error(&v52, &v47);
LABEL_100:
        v47.__vftable = &unk_284A48C48;
        std::runtime_error::~runtime_error(&v48);
        std::exception::~exception(&v47);
        goto LABEL_101;
      }

LABEL_99:
      nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::get_token_string(&v49, *(a1 + 88), *(a1 + 96));
      v46 = *(a1 + 64);
      std::string::basic_string[abi:ne200100]<0>(&v44, "value");
      nlohmann::detail::parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::exception_message(&v45, a1, 0x10u, &v44);
      nlohmann::detail::parse_error::create(&v47, &v46, &v45);
      nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::parse_error(&v52, &v47);
      goto LABEL_100;
    }

    nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::start_array(&v52);
    v7 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::scan(a1 + 40);
    *(a1 + 32) = v7;
    if (v7 == 10)
    {
      nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::end_array(&v52);
      goto LABEL_26;
    }

    LOBYTE(v47.__vftable) = 1;
    std::vector<BOOL>::push_back(&__p, &v47);
  }

  if (v4 == 6)
  {
    nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<long long &>(&v52, *(a1 + 144));
  }

  else
  {
    if ((*(a1 + 160) & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::get_token_string(&v49, *(a1 + 88), *(a1 + 96));
      nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::get_token_string(&v44, *(a1 + 88), *(a1 + 96));
      std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v45, "number overflow parsing '", &v44);
      std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v46, &v45, "'");
      nlohmann::detail::out_of_range::create(&v47, &v46);
      nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::parse_error(&v52, &v47);
      nlohmann::detail::out_of_range::~out_of_range(&v47);
      if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v46.__r_.__value_.__l.__data_);
      }

      goto LABEL_101;
    }

    nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<double &>(&v52, *(a1 + 160));
  }

LABEL_26:
  v8 = __p.__r_.__value_.__l.__size_;
  if (!__p.__r_.__value_.__l.__size_)
  {
    goto LABEL_107;
  }

  v9 = __p.__r_.__value_.__r.__words[0];
  while (1)
  {
    v10 = v8 - 1;
    if ((*(v9 + (((v8 - 1) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v8 - 1)))
    {
      v11 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::scan(a1 + 40);
      *(a1 + 32) = v11;
      if (v11 == 13)
      {
        __p.__r_.__value_.__l.__size_ = v8;
        *(a1 + 32) = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::scan(a1 + 40);
        goto LABEL_3;
      }

      if (v11 != 10)
      {
        __p.__r_.__value_.__l.__size_ = v8;
        nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::get_token_string(&v49, *(a1 + 88), *(a1 + 96));
        v46 = *(a1 + 64);
        std::string::basic_string[abi:ne200100]<0>(&v44, "array");
        nlohmann::detail::parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::exception_message(&v45, a1, 0xAu, &v44);
        nlohmann::detail::parse_error::create(&v47, &v46, &v45);
        nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::parse_error(&v52, &v47);
        goto LABEL_136;
      }

      nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::end_array(&v52);
      goto LABEL_35;
    }

    v12 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::scan(a1 + 40);
    *(a1 + 32) = v12;
    if (v12 == 13)
    {
      break;
    }

    if (v12 != 11)
    {
      __p.__r_.__value_.__l.__size_ = v8;
      nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::get_token_string(&v49, *(a1 + 88), *(a1 + 96));
      v46 = *(a1 + 64);
      std::string::basic_string[abi:ne200100]<0>(&v44, "object");
      nlohmann::detail::parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::exception_message(&v45, a1, 0xBu, &v44);
      nlohmann::detail::parse_error::create(&v47, &v46, &v45);
      nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::parse_error(&v52, &v47);
      goto LABEL_136;
    }

    nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::end_object(&v52);
LABEL_35:
    --v8;
    if (!v10)
    {
      goto LABEL_107;
    }
  }

  __p.__r_.__value_.__l.__size_ = v8;
  v13 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::scan(a1 + 40);
  *(a1 + 32) = v13;
  if (v13 == 4)
  {
    nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::key();
  }

LABEL_135:
  nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::get_token_string(&v49, *(a1 + 88), *(a1 + 96));
  v46 = *(a1 + 64);
  std::string::basic_string[abi:ne200100]<0>(&v44, "object key");
  nlohmann::detail::parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::exception_message(&v45, a1, 4u, &v44);
  nlohmann::detail::parse_error::create(&v47, &v46, &v45);
  nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::parse_error(&v52, &v47);
LABEL_136:
  nlohmann::detail::parse_error::~parse_error(&v47);
LABEL_101:
  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v45.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v44.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v49.__r_.__value_.__l.__data_);
  }

LABEL_107:
  if (__p.__r_.__value_.__r.__words[0])
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a2);
  v33 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::scan(a1 + 40);
  *(a1 + 32) = v33;
  if (v33 != 15)
  {
    nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::get_token_string(&__p, *(a1 + 88), *(a1 + 96));
    v49 = *(a1 + 64);
    std::string::basic_string[abi:ne200100]<0>(&v45, "value");
    nlohmann::detail::parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::exception_message(&v46, a1, 0xFu, &v45);
    nlohmann::detail::parse_error::create(&v47, &v49, &v46);
    nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::parse_error(&v52, &v47);
    v47.__vftable = &unk_284A48C48;
    std::runtime_error::~runtime_error(&v48);
    std::exception::~exception(&v47);
    if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v46.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v45.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  if (v57 == 1)
  {
    v42[0] = 9;
    v43 = 0;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v42);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v42);
    v34 = *a2;
    *a2 = 9;
    v42[0] = v34;
    v35 = *(a2 + 1);
    *(a2 + 1) = 0;
    v43 = v35;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a2);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v42);
    v36 = &v43;
    goto LABEL_120;
  }

  if (*a2 == 9)
  {
    v40[0] = 0;
    v41 = 0;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v40);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v40);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v40);
    v34 = *a2;
    *a2 = 0;
    v40[0] = v34;
    v37 = *(a2 + 1);
    *(a2 + 1) = 0;
    v41 = v37;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a2);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v40);
    v36 = &v41;
LABEL_120:
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(v36, v34);
  }

  nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::~json_sax_dom_callback_parser(&v52);
}

void sub_23720E8C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, std::runtime_error a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, void *a43, uint64_t a44, int a45, __int16 a46, char a47, char a48, char a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53, void *a54)
{
  nlohmann::detail::parse_error::~parse_error(&a33);
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a42 < 0)
  {
    operator delete(a37);
  }

  if (a43)
  {
    operator delete(a43);
  }

  if (a54)
  {
    operator delete(a54);
  }

  _Unwind_Resume(a1);
}

uint64_t nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::~lexer(uint64_t a1)
{
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }

  return a1;
}

uint64_t nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::json_sax_dom_callback_parser(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(a1 + 8) = 0u;
  *a1 = a2;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0;
  std::__function::__value_func<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::__value_func[abi:ne200100](a1 + 96, a3);
  *(a1 + 136) = 9;
  *(a1 + 128) = a4;
  *(a1 + 144) = 0;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant((a1 + 136));
  v7 = 1;
  std::vector<BOOL>::push_back((a1 + 32), &v7);
  return a1;
}

void sub_23720ED18(_Unwind_Exception *a1)
{
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(v2);
  std::__function::__value_func<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::~__value_func[abi:ne200100]((v1 + 12));
  v5 = v1[7];
  if (v5)
  {
    operator delete(v5);
  }

  v6 = v1[4];
  if (v6)
  {
    operator delete(v6);
  }

  v7 = *v3;
  if (*v3)
  {
    v1[2] = v7;
    operator delete(v7);
  }

  _Unwind_Resume(a1);
}

uint64_t nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::scan(uint64_t a1)
{
  v37 = *MEMORY[0x277D85DE8];
  if (!*(a1 + 24))
  {
    if (nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::get(a1) != 239)
    {
      nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::unget(a1);
      goto LABEL_7;
    }

    if (nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::get(a1) != 187 || nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::get(a1) != 191)
    {
      v2 = "invalid BOM; must be 0xEF 0xBB 0xBF if given";
      goto LABEL_150;
    }
  }

  while (1)
  {
    while (1)
    {
LABEL_7:
      while (1)
      {
        nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::get(a1);
        v3 = *(a1 + 16);
        if (v3 > 12)
        {
          break;
        }

        if ((v3 - 9) >= 2)
        {
          if ((v3 + 1) < 2)
          {
            return 15;
          }

          goto LABEL_147;
        }
      }

      if (v3 > 31)
      {
        break;
      }

      if (v3 != 13)
      {
        goto LABEL_147;
      }
    }

    if (v3 > 43)
    {
      break;
    }

    if (v3 != 32)
    {
      if (v3 == 34)
      {
        nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::reset(a1);
        if (*(a1 + 16) != 34)
        {
          __assert_rtn("scan_string", "lexer.hpp", 250, "current == '\\'");
        }

        while (1)
        {
          v15 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::get(a1) + 1;
          result = 4;
          v2 = "invalid string: missing closing quote";
          switch(v15)
          {
            case 0:
              goto LABEL_150;
            case 1:
              v2 = "invalid string: control character U+0000 (NUL) must be escaped to \\u0000";
              goto LABEL_150;
            case 2:
              v2 = "invalid string: control character U+0001 (SOH) must be escaped to \\u0001";
              goto LABEL_150;
            case 3:
              v2 = "invalid string: control character U+0002 (STX) must be escaped to \\u0002";
              goto LABEL_150;
            case 4:
              v2 = "invalid string: control character U+0003 (ETX) must be escaped to \\u0003";
              goto LABEL_150;
            case 5:
              v2 = "invalid string: control character U+0004 (EOT) must be escaped to \\u0004";
              goto LABEL_150;
            case 6:
              v2 = "invalid string: control character U+0005 (ENQ) must be escaped to \\u0005";
              goto LABEL_150;
            case 7:
              v2 = "invalid string: control character U+0006 (ACK) must be escaped to \\u0006";
              goto LABEL_150;
            case 8:
              v2 = "invalid string: control character U+0007 (BEL) must be escaped to \\u0007";
              goto LABEL_150;
            case 9:
              v2 = "invalid string: control character U+0008 (BS) must be escaped to \\u0008 or \\b";
              goto LABEL_150;
            case 10:
              v2 = "invalid string: control character U+0009 (HT) must be escaped to \\u0009 or \\t";
              goto LABEL_150;
            case 11:
              v2 = "invalid string: control character U+000A (LF) must be escaped to \\u000A or \\n";
              goto LABEL_150;
            case 12:
              v2 = "invalid string: control character U+000B (VT) must be escaped to \\u000B";
              goto LABEL_150;
            case 13:
              v2 = "invalid string: control character U+000C (FF) must be escaped to \\u000C or \\f";
              goto LABEL_150;
            case 14:
              v2 = "invalid string: control character U+000D (CR) must be escaped to \\u000D or \\r";
              goto LABEL_150;
            case 15:
              v2 = "invalid string: control character U+000E (SO) must be escaped to \\u000E";
              goto LABEL_150;
            case 16:
              v2 = "invalid string: control character U+000F (SI) must be escaped to \\u000F";
              goto LABEL_150;
            case 17:
              v2 = "invalid string: control character U+0010 (DLE) must be escaped to \\u0010";
              goto LABEL_150;
            case 18:
              v2 = "invalid string: control character U+0011 (DC1) must be escaped to \\u0011";
              goto LABEL_150;
            case 19:
              v2 = "invalid string: control character U+0012 (DC2) must be escaped to \\u0012";
              goto LABEL_150;
            case 20:
              v2 = "invalid string: control character U+0013 (DC3) must be escaped to \\u0013";
              goto LABEL_150;
            case 21:
              v2 = "invalid string: control character U+0014 (DC4) must be escaped to \\u0014";
              goto LABEL_150;
            case 22:
              v2 = "invalid string: control character U+0015 (NAK) must be escaped to \\u0015";
              goto LABEL_150;
            case 23:
              v2 = "invalid string: control character U+0016 (SYN) must be escaped to \\u0016";
              goto LABEL_150;
            case 24:
              v2 = "invalid string: control character U+0017 (ETB) must be escaped to \\u0017";
              goto LABEL_150;
            case 25:
              v2 = "invalid string: control character U+0018 (CAN) must be escaped to \\u0018";
              goto LABEL_150;
            case 26:
              v2 = "invalid string: control character U+0019 (EM) must be escaped to \\u0019";
              goto LABEL_150;
            case 27:
              v2 = "invalid string: control character U+001A (SUB) must be escaped to \\u001A";
              goto LABEL_150;
            case 28:
              v2 = "invalid string: control character U+001B (ESC) must be escaped to \\u001B";
              goto LABEL_150;
            case 29:
              v2 = "invalid string: control character U+001C (FS) must be escaped to \\u001C";
              goto LABEL_150;
            case 30:
              v2 = "invalid string: control character U+001D (GS) must be escaped to \\u001D";
              goto LABEL_150;
            case 31:
              v2 = "invalid string: control character U+001E (RS) must be escaped to \\u001E";
              goto LABEL_150;
            case 32:
              v2 = "invalid string: control character U+001F (US) must be escaped to \\u001F";
              goto LABEL_150;
            case 33:
            case 34:
            case 36:
            case 37:
            case 38:
            case 39:
            case 40:
            case 41:
            case 42:
            case 43:
            case 44:
            case 45:
            case 46:
            case 47:
            case 48:
            case 49:
            case 50:
            case 51:
            case 52:
            case 53:
            case 54:
            case 55:
            case 56:
            case 57:
            case 58:
            case 59:
            case 60:
            case 61:
            case 62:
            case 63:
            case 64:
            case 65:
            case 66:
            case 67:
            case 68:
            case 69:
            case 70:
            case 71:
            case 72:
            case 73:
            case 74:
            case 75:
            case 76:
            case 77:
            case 78:
            case 79:
            case 80:
            case 81:
            case 82:
            case 83:
            case 84:
            case 85:
            case 86:
            case 87:
            case 88:
            case 89:
            case 90:
            case 91:
            case 92:
            case 94:
            case 95:
            case 96:
            case 97:
            case 98:
            case 99:
            case 100:
            case 101:
            case 102:
            case 103:
            case 104:
            case 105:
            case 106:
            case 107:
            case 108:
            case 109:
            case 110:
            case 111:
            case 112:
            case 113:
            case 114:
            case 115:
            case 116:
            case 117:
            case 118:
            case 119:
            case 120:
            case 121:
            case 122:
            case 123:
            case 124:
            case 125:
            case 126:
            case 127:
            case 128:
              v16 = *(a1 + 16);
              goto LABEL_65;
            case 35:
              return result;
            case 93:
              v18 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::get(a1);
              v2 = "invalid string: forbidden character after backslash";
              if (v18 <= 101)
              {
                if (v18 > 91)
                {
                  if (v18 == 92)
                  {
                    LOBYTE(v16) = 92;
                  }

                  else
                  {
                    if (v18 != 98)
                    {
                      goto LABEL_150;
                    }

                    LOBYTE(v16) = 8;
                  }
                }

                else if (v18 == 34)
                {
                  LOBYTE(v16) = 34;
                }

                else
                {
                  if (v18 != 47)
                  {
                    goto LABEL_150;
                  }

                  LOBYTE(v16) = 47;
                }
              }

              else if (v18 <= 113)
              {
                if (v18 == 102)
                {
                  LOBYTE(v16) = 12;
                }

                else
                {
                  if (v18 != 110)
                  {
                    goto LABEL_150;
                  }

                  LOBYTE(v16) = 10;
                }
              }

              else
              {
                switch(v18)
                {
                  case 'r':
                    LOBYTE(v16) = 13;
                    break;
                  case 't':
                    LOBYTE(v16) = 9;
                    break;
                  case 'u':
                    codepoint = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::get_codepoint(a1);
                    v16 = codepoint;
                    if (codepoint == -1)
                    {
LABEL_192:
                      v2 = "invalid string: '\\u' must be followed by 4 hex digits";
                      goto LABEL_150;
                    }

                    if ((codepoint & 0xFFFFFC00) == 0xD800)
                    {
                      if (nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::get(a1) != 92 || nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::get(a1) != 117)
                      {
                        goto LABEL_193;
                      }

                      v20 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::get_codepoint(a1);
                      v21 = v20;
                      if (v20 == -1)
                      {
                        goto LABEL_192;
                      }

                      if (v20 >> 10 != 55)
                      {
LABEL_193:
                        v2 = "invalid string: surrogate U+D800..U+DBFF must be followed by U+DC00..U+DFFF";
                        goto LABEL_150;
                      }

                      v22 = v20 + (v16 << 10) - 56613888;
                      std::string::push_back((a1 + 72), (v22 >> 18) | 0xF0);
                      std::string::push_back((a1 + 72), (v22 >> 12) & 0x3F | 0x80);
                      std::string::push_back((a1 + 72), (v22 >> 6) & 0x3F | 0x80);
                      LOBYTE(v16) = v21 & 0x3F | 0x80;
                    }

                    else
                    {
                      if ((codepoint & 0xFFFFFC00) == 0xDC00)
                      {
                        v2 = "invalid string: surrogate U+DC00..U+DFFF must follow U+D800..U+DBFF";
                        goto LABEL_150;
                      }

                      if (codepoint > 0x7F)
                      {
                        if (codepoint > 0x7FF)
                        {
                          std::string::push_back((a1 + 72), (codepoint >> 12) | 0xE0);
                          std::string::push_back((a1 + 72), (v16 >> 6) & 0x3F | 0x80);
                        }

                        else
                        {
                          std::string::push_back((a1 + 72), (codepoint >> 6) | 0xC0);
                        }

                        LOBYTE(v16) = v16 & 0x3F | 0x80;
                      }
                    }

                    break;
                  default:
                    goto LABEL_150;
                }
              }

LABEL_65:
              std::string::push_back((a1 + 72), v16);
              break;
            case 195:
            case 196:
            case 197:
            case 198:
            case 199:
            case 200:
            case 201:
            case 202:
            case 203:
            case 204:
            case 205:
            case 206:
            case 207:
            case 208:
            case 209:
            case 210:
            case 211:
            case 212:
            case 213:
            case 214:
            case 215:
            case 216:
            case 217:
            case 218:
            case 219:
            case 220:
            case 221:
            case 222:
            case 223:
            case 224:
              *&v35 = 0xBF00000080;
              v17 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::next_byte_in_range(a1, &v35, 2uLL);
              goto LABEL_68;
            case 225:
              v35 = xmmword_23726C430;
              v17 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::next_byte_in_range(a1, &v35, 4uLL);
              goto LABEL_68;
            case 226:
            case 227:
            case 228:
            case 229:
            case 230:
            case 231:
            case 232:
            case 233:
            case 234:
            case 235:
            case 236:
            case 237:
            case 239:
            case 240:
              v35 = xmmword_23726C420;
              v17 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::next_byte_in_range(a1, &v35, 4uLL);
              goto LABEL_68;
            case 238:
              v35 = xmmword_23726C410;
              v17 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::next_byte_in_range(a1, &v35, 4uLL);
              goto LABEL_68;
            case 241:
              v36 = 0xBF00000080;
              v35 = xmmword_23726C578;
              v17 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::next_byte_in_range(a1, &v35, 6uLL);
              goto LABEL_68;
            case 242:
            case 243:
            case 244:
              v36 = 0xBF00000080;
              v35 = xmmword_23726C590;
              v17 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::next_byte_in_range(a1, &v35, 6uLL);
              goto LABEL_68;
            case 245:
              v36 = 0xBF00000080;
              v35 = xmmword_23726C5A8;
              v17 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::next_byte_in_range(a1, &v35, 6uLL);
LABEL_68:
              if ((v17 & 1) == 0)
              {
                return 14;
              }

              continue;
            default:
              v2 = "invalid string: ill-formed UTF-8 byte";
              goto LABEL_150;
          }
        }
      }

      goto LABEL_147;
    }
  }

  if (v3 <= 57)
  {
    if ((v3 - 48) >= 0xA)
    {
      if (v3 == 44)
      {
        return 13;
      }

      if (v3 != 45)
      {
LABEL_147:
        v2 = "invalid literal";
        goto LABEL_150;
      }
    }

    nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::reset(a1);
    v4 = *(a1 + 16);
    if ((v4 - 49) < 9)
    {
      v5 = (a1 + 72);
      v6 = 5;
LABEL_20:
      std::string::push_back(v5, v4);
      v7 = (a1 + 72);
      while (1)
      {
        v8 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::get(a1);
        if ((v8 - 48) >= 0xA)
        {
          break;
        }

        std::string::push_back((a1 + 72), *(a1 + 16));
      }

      if (v8 != 46)
      {
        if (v8 == 69 || v8 == 101)
        {
          goto LABEL_26;
        }

        goto LABEL_130;
      }

      goto LABEL_118;
    }

    if (v4 == 48)
    {
      std::string::push_back((a1 + 72), 48);
      v6 = 5;
    }

    else
    {
      if (v4 != 45)
      {
        __assert_rtn("scan_number", "lexer.hpp", 928, "false");
      }

      v5 = (a1 + 72);
      std::string::push_back((a1 + 72), 45);
      v14 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::get(a1);
      if ((v14 - 49) < 9)
      {
        v4 = *(a1 + 16);
        v6 = 6;
        goto LABEL_20;
      }

      if (v14 != 48)
      {
        v2 = "invalid number; expected digit after '-'";
        goto LABEL_150;
      }

      std::string::push_back((a1 + 72), *(a1 + 16));
      v6 = 6;
    }

    v23 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::get(a1);
    if (v23 == 101 || v23 == 69)
    {
      v7 = (a1 + 72);
LABEL_26:
      std::string::push_back(v7, *(a1 + 16));
      v9 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::get(a1);
      if ((v9 - 48) < 0xA)
      {
        v10 = (a1 + 72);
LABEL_28:
        v11 = *(a1 + 16);
        for (i = v10; ; i = (a1 + 72))
        {
          std::string::push_back(i, v11);
          if (nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::get(a1) - 48 > 9)
          {
            break;
          }

          v11 = *(a1 + 16);
        }

LABEL_123:
        nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::unget(a1);
        *&v35 = 0;
        *__error() = 0;
LABEL_124:
        v25 = (a1 + 72);
        v26 = (a1 + 72);
        if (*(a1 + 95) < 0)
        {
          v26 = *v25;
        }

        *(a1 + 120) = strtod(v26, &v35);
        v27 = *(a1 + 95);
        if (v27 < 0)
        {
          v25 = *(a1 + 72);
          v27 = *(a1 + 80);
        }

        if (v35 != (v25 + v27))
        {
          __assert_rtn("scan_number", "lexer.hpp", 1208, "endptr == token_buffer.data() + token_buffer.size()");
        }

        return 7;
      }

      if (v9 == 45 || v9 == 43)
      {
        v10 = (a1 + 72);
        std::string::push_back((a1 + 72), *(a1 + 16));
        if (nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::get(a1) - 48 >= 0xA)
        {
          v2 = "invalid number; expected digit after exponent sign";
          goto LABEL_150;
        }

        goto LABEL_28;
      }

      v2 = "invalid number; expected '+', '-', or digit after exponent";
LABEL_150:
      *(a1 + 96) = v2;
      return 14;
    }

    if (v23 != 46)
    {
LABEL_130:
      nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::unget(a1);
      *&v35 = 0;
      *__error() = 0;
      v28 = (a1 + 72);
      v29 = *(a1 + 95);
      v30 = (a1 + 72);
      if (v6 == 5)
      {
        if (v29 < 0)
        {
          v30 = *v28;
        }

        v31 = strtoull(v30, &v35, 10);
        v32 = *(a1 + 95);
        if (v32 < 0)
        {
          v28 = *(a1 + 72);
          v32 = *(a1 + 80);
        }

        if (v35 != (v28 + v32))
        {
          __assert_rtn("scan_number", "lexer.hpp", 1175, "endptr == token_buffer.data() + token_buffer.size()");
        }

        if (*__error())
        {
          goto LABEL_124;
        }

        result = 5;
        v33 = 112;
      }

      else
      {
        if (v29 < 0)
        {
          v30 = *v28;
        }

        v31 = strtoll(v30, &v35, 10);
        v34 = *(a1 + 95);
        if (v34 < 0)
        {
          v28 = *(a1 + 72);
          v34 = *(a1 + 80);
        }

        if (v35 != (v28 + v34))
        {
          __assert_rtn("scan_number", "lexer.hpp", 1191, "endptr == token_buffer.data() + token_buffer.size()");
        }

        if (*__error())
        {
          goto LABEL_124;
        }

        result = 6;
        v33 = 104;
      }

      *(a1 + v33) = v31;
      return result;
    }

    v7 = (a1 + 72);
LABEL_118:
    std::string::push_back(v7, *(a1 + 128));
    if (nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::get(a1) - 48 > 9)
    {
      v2 = "invalid number; expected digit after '.'";
      goto LABEL_150;
    }

    v7 = (a1 + 72);
    do
    {
      std::string::push_back((a1 + 72), *(a1 + 16));
      v24 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::get(a1);
    }

    while ((v24 - 48) < 0xA);
    if (v24 != 101 && v24 != 69)
    {
      goto LABEL_123;
    }

    goto LABEL_26;
  }

  if (v3 > 109)
  {
    if (v3 > 122)
    {
      if (v3 == 123)
      {
        return 9;
      }

      if (v3 == 125)
      {
        return 11;
      }
    }

    else
    {
      if (v3 == 110)
      {
        LODWORD(v35) = 1819047278;
        return nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::scan_literal(a1, &v35, 4, 3);
      }

      if (v3 == 116)
      {
        LODWORD(v35) = 1702195828;
        return nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::scan_literal(a1, &v35, 4, 1);
      }
    }

    goto LABEL_147;
  }

  if (v3 <= 92)
  {
    if (v3 == 58)
    {
      return 12;
    }

    if (v3 == 91)
    {
      return 8;
    }

    goto LABEL_147;
  }

  if (v3 == 93)
  {
    return 10;
  }

  if (v3 != 102)
  {
    goto LABEL_147;
  }

  return nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::scan_literal(a1, "false", 5, 2);
}

void sub_23720F8A4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::get_token_string(std::string *this, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  *&this->__r_.__value_.__l.__data_ = 0uLL;
  this->__r_.__value_.__r.__words[2] = 0;
  if (a2 != a3)
  {
    v4 = a2;
    do
    {
      v6 = *v4;
      if (v6 > 0x1F)
      {
        std::string::push_back(this, v6);
      }

      else
      {
        v9 = 0;
        *__str = 0;
        snprintf(__str, 9uLL, "<U+%.4X>", v6);
        v7 = strlen(__str);
        std::string::append(this, __str, v7);
      }

      ++v4;
    }

    while (v4 != a3);
  }
}

void sub_23720F984(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void nlohmann::detail::parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::exception_message(std::string *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  std::string::basic_string[abi:ne200100]<0>(a1, "syntax error ");
  v8 = *(a4 + 23);
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a4 + 8);
  }

  if (v8)
  {
    std::operator+<char>();
    v9 = std::string::append(&v38, " ", 1uLL);
    v10 = *&v9->__r_.__value_.__l.__data_;
    v40 = v9->__r_.__value_.__r.__words[2];
    v39 = v10;
    v9->__r_.__value_.__l.__size_ = 0;
    v9->__r_.__value_.__r.__words[2] = 0;
    v9->__r_.__value_.__r.__words[0] = 0;
    if (v40 >= 0)
    {
      v11 = &v39;
    }

    else
    {
      v11 = v39;
    }

    if (v40 >= 0)
    {
      v12 = HIBYTE(v40);
    }

    else
    {
      v12 = *(&v39 + 1);
    }

    std::string::append(a1, v11, v12);
    if (SHIBYTE(v40) < 0)
    {
      operator delete(v39);
    }

    if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v38.__r_.__value_.__l.__data_);
    }
  }

  std::string::append(a1, "- ", 2uLL);
  v13 = *(a2 + 32);
  if (v13 == 14)
  {
    std::string::basic_string[abi:ne200100]<0>(&v36, *(a2 + 136));
    v14 = std::string::append(&v36, "; last read: '", 0xEuLL);
    v15 = *&v14->__r_.__value_.__l.__data_;
    v37.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
    *&v37.__r_.__value_.__l.__data_ = v15;
    v14->__r_.__value_.__l.__size_ = 0;
    v14->__r_.__value_.__r.__words[2] = 0;
    v14->__r_.__value_.__r.__words[0] = 0;
    nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::get_token_string(&__p, *(a2 + 88), *(a2 + 96));
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
      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    v18 = std::string::append(&v37, p_p, size);
    v19 = *&v18->__r_.__value_.__l.__data_;
    v38.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
    *&v38.__r_.__value_.__l.__data_ = v19;
    v18->__r_.__value_.__l.__size_ = 0;
    v18->__r_.__value_.__r.__words[2] = 0;
    v18->__r_.__value_.__r.__words[0] = 0;
    v20 = std::string::append(&v38, "'", 1uLL);
    v21 = *&v20->__r_.__value_.__l.__data_;
    v40 = v20->__r_.__value_.__r.__words[2];
    v39 = v21;
    v20->__r_.__value_.__l.__size_ = 0;
    v20->__r_.__value_.__r.__words[2] = 0;
    v20->__r_.__value_.__r.__words[0] = 0;
    if (v40 >= 0)
    {
      v22 = &v39;
    }

    else
    {
      v22 = v39;
    }

    if (v40 >= 0)
    {
      v23 = HIBYTE(v40);
    }

    else
    {
      v23 = *(&v39 + 1);
    }

    std::string::append(a1, v22, v23);
    if (SHIBYTE(v40) < 0)
    {
      operator delete(v39);
    }

    if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v38.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v37.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
    {
      v24 = v36.__r_.__value_.__r.__words[0];
      goto LABEL_52;
    }

LABEL_49:
    if (!a3)
    {
      return;
    }

    goto LABEL_53;
  }

  if (v13 > 0x10)
  {
    v25 = "unknown token";
  }

  else
  {
    v25 = off_278A28A48[v13];
  }

  std::string::basic_string[abi:ne200100]<0>(&v38, v25);
  v26 = std::string::insert(&v38, 0, "unexpected ", 0xBuLL);
  v27 = *&v26->__r_.__value_.__l.__data_;
  v40 = v26->__r_.__value_.__r.__words[2];
  v39 = v27;
  v26->__r_.__value_.__l.__size_ = 0;
  v26->__r_.__value_.__r.__words[2] = 0;
  v26->__r_.__value_.__r.__words[0] = 0;
  if (v40 >= 0)
  {
    v28 = &v39;
  }

  else
  {
    v28 = v39;
  }

  if (v40 >= 0)
  {
    v29 = HIBYTE(v40);
  }

  else
  {
    v29 = *(&v39 + 1);
  }

  std::string::append(a1, v28, v29);
  if (SHIBYTE(v40) < 0)
  {
    operator delete(v39);
  }

  if ((SHIBYTE(v38.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_49;
  }

  v24 = v38.__r_.__value_.__r.__words[0];
LABEL_52:
  operator delete(v24);
  if (!a3)
  {
    return;
  }

LABEL_53:
  if (a3 > 0x10)
  {
    v30 = "unknown token";
  }

  else
  {
    v30 = off_278A28A48[a3];
  }

  std::string::basic_string[abi:ne200100]<0>(&v38, v30);
  v31 = std::string::insert(&v38, 0, "; expected ", 0xBuLL);
  v32 = *&v31->__r_.__value_.__l.__data_;
  v40 = v31->__r_.__value_.__r.__words[2];
  v39 = v32;
  v31->__r_.__value_.__l.__size_ = 0;
  v31->__r_.__value_.__r.__words[2] = 0;
  v31->__r_.__value_.__r.__words[0] = 0;
  if (v40 >= 0)
  {
    v33 = &v39;
  }

  else
  {
    v33 = v39;
  }

  if (v40 >= 0)
  {
    v34 = HIBYTE(v40);
  }

  else
  {
    v34 = *(&v39 + 1);
  }

  std::string::append(a1, v33, v34);
  if (SHIBYTE(v40) < 0)
  {
    operator delete(v39);
  }

  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }
}

void sub_23720FD0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (*(v34 - 41) < 0)
  {
    operator delete(*(v34 - 64));
  }

  if (a33 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (*(v33 + 23) < 0)
  {
    operator delete(*v33);
  }

  _Unwind_Resume(exception_object);
}

void nlohmann::detail::parse_error::create(nlohmann::detail::exception *a1, uint64_t *a2, uint64_t a3)
{
  std::string::basic_string[abi:ne200100]<0>(v31, "parse_error");
  nlohmann::detail::exception::name(&v33, v31, 101);
  v6 = std::string::append(&v33, "parse error", 0xBuLL);
  v7 = *&v6->__r_.__value_.__l.__data_;
  v34.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
  *&v34.__r_.__value_.__l.__data_ = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v40, a2[2] + 1);
  v8 = std::string::insert(&v40, 0, " at line ", 9uLL);
  v9 = *&v8->__r_.__value_.__l.__data_;
  v41.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
  *&v41.__r_.__value_.__l.__data_ = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  v10 = std::string::append(&v41, ", column ", 9uLL);
  v11 = *&v10->__r_.__value_.__l.__data_;
  v42.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
  *&v42.__r_.__value_.__l.__data_ = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v39, a2[1]);
  if ((v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v12 = &v39;
  }

  else
  {
    v12 = v39.__r_.__value_.__r.__words[0];
  }

  if ((v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v39.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v39.__r_.__value_.__l.__size_;
  }

  v14 = std::string::append(&v42, v12, size);
  v15 = *&v14->__r_.__value_.__l.__data_;
  v30 = v14->__r_.__value_.__r.__words[2];
  *__p = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v39.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v42.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v41.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v40.__r_.__value_.__l.__data_);
  }

  if (v30 >= 0)
  {
    v16 = __p;
  }

  else
  {
    v16 = __p[0];
  }

  if (v30 >= 0)
  {
    v17 = HIBYTE(v30);
  }

  else
  {
    v17 = __p[1];
  }

  v18 = std::string::append(&v34, v16, v17);
  v19 = *&v18->__r_.__value_.__l.__data_;
  v35.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
  *&v35.__r_.__value_.__l.__data_ = v19;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  v20 = std::string::append(&v35, ": ", 2uLL);
  v21 = *&v20->__r_.__value_.__l.__data_;
  v36.__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
  *&v36.__r_.__value_.__l.__data_ = v21;
  v20->__r_.__value_.__l.__size_ = 0;
  v20->__r_.__value_.__r.__words[2] = 0;
  v20->__r_.__value_.__r.__words[0] = 0;
  v22 = *(a3 + 23);
  if (v22 >= 0)
  {
    v23 = a3;
  }

  else
  {
    v23 = *a3;
  }

  if (v22 >= 0)
  {
    v24 = *(a3 + 23);
  }

  else
  {
    v24 = *(a3 + 8);
  }

  v25 = std::string::append(&v36, v23, v24);
  v26 = *&v25->__r_.__value_.__l.__data_;
  v38 = v25->__r_.__value_.__r.__words[2];
  *v37 = v26;
  v25->__r_.__value_.__l.__size_ = 0;
  v25->__r_.__value_.__r.__words[2] = 0;
  v25->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v36.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v35.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v30) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v34.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v33.__r_.__value_.__l.__data_);
  }

  if (v32 < 0)
  {
    operator delete(v31[0]);
  }

  v27 = *a2;
  if (v38 >= 0)
  {
    v28 = v37;
  }

  else
  {
    v28 = v37[0];
  }

  nlohmann::detail::exception::exception(a1, 101, v28);
  *a1 = &unk_284A48D48;
  *(a1 + 4) = v27;
  if (SHIBYTE(v38) < 0)
  {
    operator delete(v37[0]);
  }
}

void sub_2372100C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, void *__p, uint64_t a50, int a51, __int16 a52, char a53, char a54)
{
  if (a54 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::parse_error(uint64_t result, const nlohmann::detail::parse_error *a2)
{
  *(result + 88) = 1;
  if (*(result + 128) == 1)
  {
    v2 = *(a2 + 2) / 100 % 100;
    if (v2 <= 2)
    {
      if (v2 == 1)
      {
        exception = __cxa_allocate_exception(0x28uLL);
        v4 = nlohmann::detail::parse_error::parse_error(exception, a2);
        v6 = nlohmann::detail::parse_error::~parse_error;
      }

      else
      {
        if (v2 != 2)
        {
          goto LABEL_14;
        }

        v7 = __cxa_allocate_exception(0x20uLL);
        v4 = nlohmann::detail::invalid_iterator::invalid_iterator(v7, a2);
        v6 = nlohmann::detail::invalid_iterator::~invalid_iterator;
      }
    }

    else
    {
      switch(v2)
      {
        case 3:
          v8 = __cxa_allocate_exception(0x20uLL);
          v4 = nlohmann::detail::type_error::type_error(v8, a2);
          v6 = nlohmann::detail::type_error::~type_error;
          break;
        case 4:
          v9 = __cxa_allocate_exception(0x20uLL);
          v4 = nlohmann::detail::out_of_range::out_of_range(v9, a2);
          v6 = nlohmann::detail::out_of_range::~out_of_range;
          break;
        case 5:
          v3 = __cxa_allocate_exception(0x20uLL);
          v4 = nlohmann::detail::other_error::other_error(v3, a2);
          v6 = nlohmann::detail::other_error::~other_error;
          break;
        default:
LABEL_14:
          __assert_rtn("parse_error", "json_sax.hpp", 537, "false");
      }
    }

    __cxa_throw(v4, v5, v6);
  }

  return result;
}

void nlohmann::detail::parse_error::~parse_error(std::runtime_error *this)
{
  this->__vftable = &unk_284A48C48;
  std::runtime_error::~runtime_error(this + 1);

  std::exception::~exception(this);
}

{
  this->__vftable = &unk_284A48C48;
  std::runtime_error::~runtime_error(this + 1);
  std::exception::~exception(this);

  JUMPOUT(0x2383C8250);
}

uint64_t nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::~json_sax_dom_callback_parser(uint64_t a1)
{
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant((a1 + 136));
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy((a1 + 144), *(a1 + 136));
  std::__function::__value_func<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::~__value_func[abi:ne200100](a1 + 96);
  v2 = *(a1 + 56);
  if (v2)
  {
    operator delete(v2);
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    operator delete(v3);
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    *(a1 + 16) = v4;
    operator delete(v4);
  }

  return a1;
}

uint64_t nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::parse_error(uint64_t result, const nlohmann::detail::parse_error *a2)
{
  *(result + 40) = 1;
  if (*(result + 41) == 1)
  {
    v2 = *(a2 + 2) / 100 % 100;
    if (v2 <= 2)
    {
      if (v2 == 1)
      {
        exception = __cxa_allocate_exception(0x28uLL);
        v4 = nlohmann::detail::parse_error::parse_error(exception, a2);
        v6 = nlohmann::detail::parse_error::~parse_error;
      }

      else
      {
        if (v2 != 2)
        {
          goto LABEL_14;
        }

        v7 = __cxa_allocate_exception(0x20uLL);
        v4 = nlohmann::detail::invalid_iterator::invalid_iterator(v7, a2);
        v6 = nlohmann::detail::invalid_iterator::~invalid_iterator;
      }
    }

    else
    {
      switch(v2)
      {
        case 3:
          v8 = __cxa_allocate_exception(0x20uLL);
          v4 = nlohmann::detail::type_error::type_error(v8, a2);
          v6 = nlohmann::detail::type_error::~type_error;
          break;
        case 4:
          v9 = __cxa_allocate_exception(0x20uLL);
          v4 = nlohmann::detail::out_of_range::out_of_range(v9, a2);
          v6 = nlohmann::detail::out_of_range::~out_of_range;
          break;
        case 5:
          v3 = __cxa_allocate_exception(0x20uLL);
          v4 = nlohmann::detail::other_error::other_error(v3, a2);
          v6 = nlohmann::detail::other_error::~other_error;
          break;
        default:
LABEL_14:
          __assert_rtn("parse_error", "json_sax.hpp", 283, "false");
      }
    }

    __cxa_throw(v4, v5, v6);
  }

  return result;
}

nlohmann::detail::parse_error *nlohmann::detail::parse_error::parse_error(nlohmann::detail::parse_error *this, const nlohmann::detail::parse_error *a2)
{
  *this = &unk_284A48C48;
  *(this + 2) = *(a2 + 2);
  MEMORY[0x2383C7EF0](this + 16, a2 + 16);
  *this = &unk_284A48D48;
  *(this + 4) = *(a2 + 4);
  return this;
}

uint64_t nlohmann::detail::out_of_range::out_of_range(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_284A48C48;
  *(a1 + 8) = *(a2 + 8);
  MEMORY[0x2383C7EF0](a1 + 16, a2 + 16);
  *a1 = &unk_284A48D08;
  return a1;
}

uint64_t nlohmann::detail::invalid_iterator::invalid_iterator(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_284A48C48;
  *(a1 + 8) = *(a2 + 8);
  MEMORY[0x2383C7EF0](a1 + 16, a2 + 16);
  *a1 = &unk_284A48CA0;
  return a1;
}

nlohmann::detail::type_error *nlohmann::detail::type_error::type_error(nlohmann::detail::type_error *this, const nlohmann::detail::type_error *a2)
{
  *this = &unk_284A48C48;
  *(this + 2) = *(a2 + 2);
  MEMORY[0x2383C7EF0](this + 16, a2 + 16);
  *this = &unk_284A48CE0;
  return this;
}

uint64_t nlohmann::detail::other_error::other_error(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_284A48C48;
  *(a1 + 8) = *(a2 + 8);
  MEMORY[0x2383C7EF0](a1 + 16, a2 + 16);
  *a1 = &unk_284A48C20;
  return a1;
}

void nlohmann::detail::other_error::~other_error(std::runtime_error *this)
{
  this->__vftable = &unk_284A48C48;
  std::runtime_error::~runtime_error(this + 1);

  std::exception::~exception(this);
}

{
  this->__vftable = &unk_284A48C48;
  std::runtime_error::~runtime_error(this + 1);
  std::exception::~exception(this);

  JUMPOUT(0x2383C8250);
}

void nlohmann::detail::invalid_iterator::~invalid_iterator(std::runtime_error *this)
{
  this->__vftable = &unk_284A48C48;
  std::runtime_error::~runtime_error(this + 1);

  std::exception::~exception(this);
}

{
  this->__vftable = &unk_284A48C48;
  std::runtime_error::~runtime_error(this + 1);
  std::exception::~exception(this);

  JUMPOUT(0x2383C8250);
}

void nlohmann::detail::out_of_range::~out_of_range(std::runtime_error *this)
{
  this->__vftable = &unk_284A48C48;
  std::runtime_error::~runtime_error(this + 1);

  std::exception::~exception(this);
}

{
  this->__vftable = &unk_284A48C48;
  std::runtime_error::~runtime_error(this + 1);
  std::exception::~exception(this);

  JUMPOUT(0x2383C8250);
}

uint64_t nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<nlohmann::detail::value_t>(void *a1, unsigned __int8 *a2)
{
  v4 = a1[2];
  if (a1[1] == v4)
  {
    v12 = *a2;
    v34[0] = *a2;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::json_value(&v35, v12);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v34);
    v13 = *a1;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v34);
    v14 = *v13;
    *v13 = v34[0];
    v34[0] = v14;
    v15 = *(v13 + 8);
    *(v13 + 8) = v35;
    v35 = v15;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v13);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v34);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v35, v34[0]);
    return *a1;
  }

  else
  {
    v5 = *(v4 - 8);
    v6 = *v5;
    if (v6 == 2)
    {
      v7 = *(v5 + 1);
      v9 = *(v7 + 8);
      v8 = *(v7 + 16);
      if (v9 >= v8)
      {
        v21 = (v9 - *v7) >> 4;
        if ((v21 + 1) >> 60)
        {
          std::vector<CADeprecated::XMachServer::Client *>::__throw_length_error[abi:ne200100]();
        }

        v22 = v8 - *v7;
        v23 = v22 >> 3;
        if (v22 >> 3 <= (v21 + 1))
        {
          v23 = v21 + 1;
        }

        if (v22 >= 0x7FFFFFFFFFFFFFF0)
        {
          v24 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v24 = v23;
        }

        v39 = v7;
        if (v24)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>(v24);
        }

        v25 = 16 * v21;
        v36 = 0;
        v37 = v25;
        v38 = v25;
        v26 = *a2;
        *v25 = v26;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::json_value((v25 + 8), v26);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v25);
        *&v38 = v38 + 16;
        v27 = *(v7 + 8);
        v28 = v37 + *v7 - v27;
        std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>*>(v7, *v7, v27, v28);
        v29 = *v7;
        *v7 = v28;
        v30 = *(v7 + 16);
        v31 = v38;
        v37 = v29;
        *&v38 = v29;
        *(v7 + 8) = v31;
        *(&v38 + 1) = v30;
        v36 = v29;
        std::__split_buffer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::~__split_buffer(&v36);
        v11 = v31;
      }

      else
      {
        v10 = *a2;
        *v9 = v10;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::json_value((v9 + 8), v10);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v9);
        v11 = v9 + 16;
        *(v7 + 8) = v9 + 16;
      }

      *(v7 + 8) = v11;
      return *(*(*(a1[2] - 8) + 8) + 8) - 16;
    }

    else
    {
      if (v6 != 1)
      {
        __assert_rtn("handle_value", "json_sax.hpp", 312, "ref_stack.back()->is_array() or ref_stack.back()->is_object()");
      }

      if (!a1[4])
      {
        __assert_rtn("handle_value", "json_sax.hpp", 321, "object_element");
      }

      v17 = *a2;
      v32[0] = *a2;
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::json_value(&v33, v17);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v32);
      v18 = a1[4];
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v32);
      v19 = *v18;
      *v18 = v32[0];
      v32[0] = v19;
      v20 = *(v18 + 8);
      *(v18 + 8) = v33;
      v33 = v20;
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v18);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v32);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v33, v32[0]);
      return a1[4];
    }
  }
}

uint64_t std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t a1, void **a2)
{
  v2 = *std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t *std::vector<BOOL>::push_back(uint64_t *result, _BYTE *a2)
{
  v3 = result[1];
  v2 = result[2];
  if (v3 == v2 << 6)
  {
    if ((v3 + 1) < 0)
    {
      goto LABEL_8;
    }

    if (v3 > 0x3FFFFFFFFFFFFFFELL)
    {
LABEL_9:
      operator new();
    }

    v4 = v2 << 7;
    if (v4 <= (v3 & 0x3FFFFFFFFFFFFFC0) + 64)
    {
      v4 = (v3 & 0x3FFFFFFFFFFFFFC0) + 64;
    }

    if (v3 < v4)
    {
      if ((v4 & 0x8000000000000000) != 0)
      {
LABEL_8:
        std::vector<CADeprecated::XMachServer::Client *>::__throw_length_error[abi:ne200100]();
      }

      goto LABEL_9;
    }
  }

  result[1] = v3 + 1;
  v5 = *result;
  v6 = v3 >> 6;
  v7 = 1 << v3;
  if (*a2 == 1)
  {
    v8 = *(v5 + 8 * v6) | v7;
  }

  else
  {
    v8 = *(v5 + 8 * v6) & ~v7;
  }

  *(v5 + 8 * v6) = v8;
  return result;
}

void nlohmann::detail::out_of_range::create(nlohmann::detail::exception *a1, uint64_t a2)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "out_of_range");
  nlohmann::detail::exception::name(&v12, __p, 406);
  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  if (v4 >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = *(a2 + 8);
  }

  v7 = std::string::append(&v12, v5, v6);
  v8 = *&v7->__r_.__value_.__l.__data_;
  v14 = v7->__r_.__value_.__r.__words[2];
  *v13 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }

  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  if (v14 >= 0)
  {
    v9 = v13;
  }

  else
  {
    v9 = v13[0];
  }

  nlohmann::detail::exception::exception(a1, 406, v9);
  *a1 = &unk_284A48D08;
  if (SHIBYTE(v14) < 0)
  {
    operator delete(v13[0]);
  }
}

void sub_237211080(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<double &>(unsigned __int8 **a1, uint64_t *a2)
{
  v3 = a1[2];
  if (a1[1] == v3)
  {
    v11 = v33;
    v12 = *a2;
    v33[0] = 7;
    v34 = v12;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v33);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v33);
    v13 = *a1;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v33);
    v14 = *v13;
    *v13 = 7;
    v33[0] = v14;
    v15 = *(v13 + 1);
    *(v13 + 1) = v12;
    v34 = v15;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v13);
    v16 = v33;
LABEL_9:
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v16);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(v11 + 1, v14);
    return;
  }

  v4 = *(v3 - 1);
  v5 = *v4;
  if (v5 != 2)
  {
    if (v5 != 1)
    {
      __assert_rtn("handle_value", "json_sax.hpp", 312, "ref_stack.back()->is_array() or ref_stack.back()->is_object()");
    }

    if (!a1[4])
    {
      __assert_rtn("handle_value", "json_sax.hpp", 321, "object_element");
    }

    v11 = v31;
    v17 = *a2;
    v31[0] = 7;
    v32 = v17;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v31);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v31);
    v18 = a1[4];
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v31);
    v14 = *v18;
    *v18 = 7;
    v31[0] = v14;
    v19 = *(v18 + 1);
    *(v18 + 1) = v17;
    v32 = v19;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v18);
    v16 = v31;
    goto LABEL_9;
  }

  v6 = *(v4 + 1);
  v8 = *(v6 + 8);
  v7 = *(v6 + 16);
  if (v8 >= v7)
  {
    v20 = (v8 - *v6) >> 4;
    if ((v20 + 1) >> 60)
    {
      std::vector<CADeprecated::XMachServer::Client *>::__throw_length_error[abi:ne200100]();
    }

    v21 = v7 - *v6;
    v22 = v21 >> 3;
    if (v21 >> 3 <= (v20 + 1))
    {
      v22 = v20 + 1;
    }

    if (v21 >= 0x7FFFFFFFFFFFFFF0)
    {
      v23 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v23 = v22;
    }

    v38 = v6;
    if (v23)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>(v23);
    }

    v24 = 16 * v20;
    v35 = 0;
    v36 = v24;
    *(&v37 + 1) = 0;
    *(v24 + 8) = 0;
    v25 = *a2;
    *v24 = 7;
    *(v24 + 8) = v25;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v24);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v24);
    *&v37 = v24 + 16;
    v26 = *(v6 + 8);
    v27 = v24 + *v6 - v26;
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>*>(v6, *v6, v26, v27);
    v28 = *v6;
    *v6 = v27;
    v29 = *(v6 + 16);
    v30 = v37;
    v36 = v28;
    *&v37 = v28;
    *(v6 + 8) = v30;
    *(&v37 + 1) = v29;
    v35 = v28;
    std::__split_buffer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::~__split_buffer(&v35);
    v10 = v30;
  }

  else
  {
    *(v8 + 8) = 0;
    v9 = *a2;
    *v8 = 7;
    *(v8 + 8) = v9;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v8);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v8);
    v10 = v8 + 16;
  }

  *(v6 + 8) = v10;
}

void sub_237211348(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  std::__split_buffer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<BOOL &>(unsigned __int8 **a1, unsigned __int8 *a2)
{
  v3 = a1[2];
  if (a1[1] == v3)
  {
    v11 = v33;
    v12 = *a2;
    v33[0] = 4;
    v34 = v12;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v33);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v33);
    v13 = *a1;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v33);
    v14 = *v13;
    *v13 = 4;
    v33[0] = v14;
    v15 = *(v13 + 1);
    *(v13 + 1) = v12;
    v34 = v15;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v13);
    v16 = v33;
LABEL_9:
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v16);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(v11 + 1, v14);
    return;
  }

  v4 = *(v3 - 1);
  v5 = *v4;
  if (v5 != 2)
  {
    if (v5 != 1)
    {
      __assert_rtn("handle_value", "json_sax.hpp", 312, "ref_stack.back()->is_array() or ref_stack.back()->is_object()");
    }

    if (!a1[4])
    {
      __assert_rtn("handle_value", "json_sax.hpp", 321, "object_element");
    }

    v11 = v31;
    v17 = *a2;
    v31[0] = 4;
    v32 = v17;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v31);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v31);
    v18 = a1[4];
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v31);
    v14 = *v18;
    *v18 = 4;
    v31[0] = v14;
    v19 = *(v18 + 1);
    *(v18 + 1) = v17;
    v32 = v19;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v18);
    v16 = v31;
    goto LABEL_9;
  }

  v6 = *(v4 + 1);
  v8 = *(v6 + 8);
  v7 = *(v6 + 16);
  if (v8 >= v7)
  {
    v20 = (v8 - *v6) >> 4;
    if ((v20 + 1) >> 60)
    {
      std::vector<CADeprecated::XMachServer::Client *>::__throw_length_error[abi:ne200100]();
    }

    v21 = v7 - *v6;
    v22 = v21 >> 3;
    if (v21 >> 3 <= (v20 + 1))
    {
      v22 = v20 + 1;
    }

    if (v21 >= 0x7FFFFFFFFFFFFFF0)
    {
      v23 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v23 = v22;
    }

    v38 = v6;
    if (v23)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>(v23);
    }

    v24 = 16 * v20;
    v35 = 0;
    v36 = v24;
    *(&v37 + 1) = 0;
    *(v24 + 8) = 0;
    v25 = *a2;
    *v24 = 4;
    *(v24 + 8) = v25;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v24);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v24);
    *&v37 = v24 + 16;
    v26 = *(v6 + 8);
    v27 = v24 + *v6 - v26;
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>*>(v6, *v6, v26, v27);
    v28 = *v6;
    *v6 = v27;
    v29 = *(v6 + 16);
    v30 = v37;
    v36 = v28;
    *&v37 = v28;
    *(v6 + 8) = v30;
    *(&v37 + 1) = v29;
    v35 = v28;
    std::__split_buffer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::~__split_buffer(&v35);
    v10 = v30;
  }

  else
  {
    *(v8 + 8) = 0;
    v9 = *a2;
    *v8 = 4;
    *(v8 + 8) = v9;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v8);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v8);
    v10 = v8 + 16;
  }

  *(v6 + 8) = v10;
}

void sub_2372115DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  std::__split_buffer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<decltype(nullptr)>(unsigned __int8 **a1)
{
  v2 = a1[2];
  if (a1[1] == v2)
  {
    v28[0] = 0;
    v9 = v28;
    v29 = 0;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v28);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v28);
    v10 = *a1;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v28);
    v11 = *v10;
    *v10 = 0;
    v28[0] = v11;
    v12 = *(v10 + 1);
    *(v10 + 1) = 0;
    v29 = v12;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v10);
    v13 = v28;
LABEL_9:
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v13);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(v9 + 1, v11);
    return;
  }

  v3 = *(v2 - 1);
  v4 = *v3;
  if (v4 != 2)
  {
    if (v4 != 1)
    {
      __assert_rtn("handle_value", "json_sax.hpp", 312, "ref_stack.back()->is_array() or ref_stack.back()->is_object()");
    }

    if (!a1[4])
    {
      __assert_rtn("handle_value", "json_sax.hpp", 321, "object_element");
    }

    v26[0] = 0;
    v9 = v26;
    v27 = 0;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v26);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v26);
    v14 = a1[4];
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v26);
    v11 = *v14;
    *v14 = 0;
    v26[0] = v11;
    v15 = *(v14 + 1);
    *(v14 + 1) = 0;
    v27 = v15;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v14);
    v13 = v26;
    goto LABEL_9;
  }

  v5 = *(v3 + 1);
  v7 = *(v5 + 8);
  v6 = *(v5 + 16);
  if (v7 >= v6)
  {
    v16 = (v7 - *v5) >> 4;
    if ((v16 + 1) >> 60)
    {
      std::vector<CADeprecated::XMachServer::Client *>::__throw_length_error[abi:ne200100]();
    }

    v17 = v6 - *v5;
    v18 = v17 >> 3;
    if (v17 >> 3 <= (v16 + 1))
    {
      v18 = v16 + 1;
    }

    if (v17 >= 0x7FFFFFFFFFFFFFF0)
    {
      v19 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v19 = v18;
    }

    v33 = v5;
    if (v19)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>(v19);
    }

    v20 = 16 * v16;
    v30 = 0;
    v31 = v20;
    *(&v32 + 1) = 0;
    *v20 = 0;
    *(v20 + 8) = 0;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v20);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v20);
    *&v32 = v20 + 16;
    v21 = *(v5 + 8);
    v22 = v20 + *v5 - v21;
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>*>(v5, *v5, v21, v22);
    v23 = *v5;
    *v5 = v22;
    v24 = *(v5 + 16);
    v25 = v32;
    v31 = v23;
    *&v32 = v23;
    *(v5 + 8) = v25;
    *(&v32 + 1) = v24;
    v30 = v23;
    std::__split_buffer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::~__split_buffer(&v30);
    v8 = v25;
  }

  else
  {
    *v7 = 0;
    *(v7 + 8) = 0;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v7);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v7);
    v8 = v7 + 16;
  }

  *(v5 + 8) = v8;
}

void sub_23721183C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  std::__split_buffer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<long long &>(unsigned __int8 **a1, uint64_t *a2)
{
  v3 = a1[2];
  if (a1[1] == v3)
  {
    v11 = v33;
    v12 = *a2;
    v33[0] = 5;
    v34 = v12;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v33);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v33);
    v13 = *a1;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v33);
    v14 = *v13;
    *v13 = 5;
    v33[0] = v14;
    v15 = *(v13 + 1);
    *(v13 + 1) = v12;
    v34 = v15;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v13);
    v16 = v33;
LABEL_9:
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v16);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(v11 + 1, v14);
    return;
  }

  v4 = *(v3 - 1);
  v5 = *v4;
  if (v5 != 2)
  {
    if (v5 != 1)
    {
      __assert_rtn("handle_value", "json_sax.hpp", 312, "ref_stack.back()->is_array() or ref_stack.back()->is_object()");
    }

    if (!a1[4])
    {
      __assert_rtn("handle_value", "json_sax.hpp", 321, "object_element");
    }

    v11 = v31;
    v17 = *a2;
    v31[0] = 5;
    v32 = v17;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v31);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v31);
    v18 = a1[4];
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v31);
    v14 = *v18;
    *v18 = 5;
    v31[0] = v14;
    v19 = *(v18 + 1);
    *(v18 + 1) = v17;
    v32 = v19;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v18);
    v16 = v31;
    goto LABEL_9;
  }

  v6 = *(v4 + 1);
  v8 = *(v6 + 8);
  v7 = *(v6 + 16);
  if (v8 >= v7)
  {
    v20 = (v8 - *v6) >> 4;
    if ((v20 + 1) >> 60)
    {
      std::vector<CADeprecated::XMachServer::Client *>::__throw_length_error[abi:ne200100]();
    }

    v21 = v7 - *v6;
    v22 = v21 >> 3;
    if (v21 >> 3 <= (v20 + 1))
    {
      v22 = v20 + 1;
    }

    if (v21 >= 0x7FFFFFFFFFFFFFF0)
    {
      v23 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v23 = v22;
    }

    v38 = v6;
    if (v23)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>(v23);
    }

    v24 = 16 * v20;
    v35 = 0;
    v36 = v24;
    *(&v37 + 1) = 0;
    *(v24 + 8) = 0;
    v25 = *a2;
    *v24 = 5;
    *(v24 + 8) = v25;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v24);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v24);
    *&v37 = v24 + 16;
    v26 = *(v6 + 8);
    v27 = v24 + *v6 - v26;
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>*>(v6, *v6, v26, v27);
    v28 = *v6;
    *v6 = v27;
    v29 = *(v6 + 16);
    v30 = v37;
    v36 = v28;
    *&v37 = v28;
    *(v6 + 8) = v30;
    *(&v37 + 1) = v29;
    v35 = v28;
    std::__split_buffer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::~__split_buffer(&v35);
    v10 = v30;
  }

  else
  {
    *(v8 + 8) = 0;
    v9 = *a2;
    *v8 = 5;
    *(v8 + 8) = v9;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v8);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v8);
    v10 = v8 + 16;
  }

  *(v6 + 8) = v10;
}

void sub_237211AD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  std::__split_buffer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<std::string&>(void *a1)
{
  v1 = a1[2];
  if (a1[1] != v1)
  {
    v2 = *(v1 - 8);
    v3 = *v2;
    if (v3 == 2)
    {
      v4 = *(v2 + 1);
      v6 = v4[1];
      v5 = v4[2];
      if (v6 < v5)
      {
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<std::string&,std::string,0>(v4[1]);
      }

      v7 = (v6 - *v4) >> 4;
      if (!((v7 + 1) >> 60))
      {
        v8 = v5 - *v4;
        v9 = v8 >> 3;
        if (v8 >> 3 <= (v7 + 1))
        {
          v9 = v7 + 1;
        }

        if (v8 >= 0x7FFFFFFFFFFFFFF0)
        {
          v10 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v9;
        }

        v14 = v4;
        if (v10)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>(v10);
        }

        v13 = (16 * v7);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<std::string&,std::string,0>(16 * v7);
      }

      std::vector<CADeprecated::XMachServer::Client *>::__throw_length_error[abi:ne200100]();
    }

    if (v3 == 1)
    {
      if (a1[4])
      {
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<std::string&,std::string,0>(v11);
      }

      __assert_rtn("handle_value", "json_sax.hpp", 321, "object_element");
    }

    __assert_rtn("handle_value", "json_sax.hpp", 312, "ref_stack.back()->is_array() or ref_stack.back()->is_object()");
  }

  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<std::string&,std::string,0>(v12);
}

void nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<unsigned long long &>(unsigned __int8 **a1, uint64_t *a2)
{
  v3 = a1[2];
  if (a1[1] == v3)
  {
    v11 = v33;
    v12 = *a2;
    v33[0] = 6;
    v34 = v12;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v33);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v33);
    v13 = *a1;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v33);
    v14 = *v13;
    *v13 = 6;
    v33[0] = v14;
    v15 = *(v13 + 1);
    *(v13 + 1) = v12;
    v34 = v15;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v13);
    v16 = v33;
LABEL_9:
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v16);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(v11 + 1, v14);
    return;
  }

  v4 = *(v3 - 1);
  v5 = *v4;
  if (v5 != 2)
  {
    if (v5 != 1)
    {
      __assert_rtn("handle_value", "json_sax.hpp", 312, "ref_stack.back()->is_array() or ref_stack.back()->is_object()");
    }

    if (!a1[4])
    {
      __assert_rtn("handle_value", "json_sax.hpp", 321, "object_element");
    }

    v11 = v31;
    v17 = *a2;
    v31[0] = 6;
    v32 = v17;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v31);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v31);
    v18 = a1[4];
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v31);
    v14 = *v18;
    *v18 = 6;
    v31[0] = v14;
    v19 = *(v18 + 1);
    *(v18 + 1) = v17;
    v32 = v19;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v18);
    v16 = v31;
    goto LABEL_9;
  }

  v6 = *(v4 + 1);
  v8 = *(v6 + 8);
  v7 = *(v6 + 16);
  if (v8 >= v7)
  {
    v20 = (v8 - *v6) >> 4;
    if ((v20 + 1) >> 60)
    {
      std::vector<CADeprecated::XMachServer::Client *>::__throw_length_error[abi:ne200100]();
    }

    v21 = v7 - *v6;
    v22 = v21 >> 3;
    if (v21 >> 3 <= (v20 + 1))
    {
      v22 = v20 + 1;
    }

    if (v21 >= 0x7FFFFFFFFFFFFFF0)
    {
      v23 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v23 = v22;
    }

    v38 = v6;
    if (v23)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>(v23);
    }

    v24 = 16 * v20;
    v35 = 0;
    v36 = v24;
    *(&v37 + 1) = 0;
    *(v24 + 8) = 0;
    v25 = *a2;
    *v24 = 6;
    *(v24 + 8) = v25;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v24);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v24);
    *&v37 = v24 + 16;
    v26 = *(v6 + 8);
    v27 = v24 + *v6 - v26;
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>*>(v6, *v6, v26, v27);
    v28 = *v6;
    *v6 = v27;
    v29 = *(v6 + 16);
    v30 = v37;
    v36 = v28;
    *&v37 = v28;
    *(v6 + 8) = v30;
    *(&v37 + 1) = v29;
    v35 = v28;
    std::__split_buffer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::~__split_buffer(&v35);
    v10 = v30;
  }

  else
  {
    *(v8 + 8) = 0;
    v9 = *a2;
    *v8 = 6;
    *(v8 + 8) = v9;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v8);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v8);
    v10 = v8 + 16;
  }

  *(v6 + 8) = v10;
}

void sub_237211FC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  std::__split_buffer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<std::string&,std::string,0>(uint64_t a1)
{
  *(a1 + 8) = 0;
  *a1 = 3;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::create<std::string,std::string const&>();
}

void *std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::__find_equal<std::string>(uint64_t a1, void *a2, void **a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v7 = v4;
        if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a3, (v4 + 32)) & 0x80) == 0)
        {
          break;
        }

        v4 = *v7;
        v5 = v7;
        if (!*v7)
        {
          goto LABEL_9;
        }
      }

      if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v7 + 4, a3) & 0x80) == 0)
      {
        break;
      }

      v5 = v7 + 1;
      v4 = v7[1];
    }

    while (v4);
  }

  else
  {
    v7 = (a1 + 8);
  }

LABEL_9:
  *a2 = v7;
  return v5;
}

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,void *>>>::operator()[abi:ne200100](char a1, uint64_t a2)
{
  if (a1)
  {
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant((a2 + 56));
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy((a2 + 64), *(a2 + 56));
    if (*(a2 + 55) < 0)
    {
      operator delete(*(a2 + 32));
    }
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

void *nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::json_value(void *result, int a2)
{
  if (a2 <= 3)
  {
    if (a2 > 1)
    {
      if (a2 != 2)
      {
        operator new();
      }

      operator new();
    }

    if (a2 == 1)
    {
      operator new();
    }

    goto LABEL_11;
  }

  if (a2 > 5)
  {
    if (a2 == 8)
    {
      operator new();
    }

    goto LABEL_11;
  }

  if (a2 != 4)
  {
LABEL_11:
    *result = 0;
    return result;
  }

  *result = 0;
  return result;
}

uint64_t nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::get(unsigned __int8 **a1)
{
  *(a1 + 3) = vaddq_s64(*(a1 + 3), vdupq_n_s64(1uLL));
  if (*(a1 + 20) == 1)
  {
    *(a1 + 20) = 0;
    v2 = *(a1 + 4);
  }

  else
  {
    v3 = *a1;
    if (*a1 == a1[1])
    {
      v2 = -1;
    }

    else
    {
      v2 = *v3;
      *a1 = v3 + 1;
    }

    *(a1 + 4) = v2;
  }

  if (v2 == -1)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = v2;
  std::vector<unsigned char>::push_back[abi:ne200100]((a1 + 6), &v6);
  result = *(a1 + 4);
  if (result == 10)
  {
    v5 = (a1[5] + 1);
    a1[4] = 0;
    a1[5] = v5;
  }

  return result;
}