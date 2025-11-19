uint64_t IOWorkGroup::Invalidate(OSMetaClassBase *this)
{
  v1 = *&this[1].meta->refcount;
  if (!v1)
  {
    return 3758097112;
  }

  v3 = IOWorkGroup::InvalidateKernel(this, v1, 0);
  v4 = *&this[1].meta->refcount;
  if (v4)
  {
    (*(*v4 + 16))(v4);
    *&this[1].meta->refcount = 0;
  }

  return v3;
}

uint64_t IOWorkGroup::SetWorkGroupPort_Impl(IOWorkGroup *this, mach_port_name_t name)
{
  v3 = *(this + 5);
  if (*(v3 + 16))
  {
    v4 = 3758097115;
  }

  else
  {
    CStringNoCopy = OSString::getCStringNoCopy(*v3);
    *(*(this + 5) + 16) = os_workgroup_create_with_port(CStringNoCopy, name);
    if (*(*(this + 5) + 16))
    {
      v4 = 0;
    }

    else
    {
      v4 = 3758097090;
    }
  }

  if (mach_port_mod_refs(*MEMORY[0x277D85F48], name, 0, -1))
  {
    IOWorkGroup::SetWorkGroupPort_Impl();
  }

  return v4;
}

uint64_t IOWorkGroup::Join(IOWorkGroup *this, os_workgroup_join_token_opaque_s *a2)
{
  v2 = *(*(this + 5) + 16);
  if (!v2)
  {
    return 3758097112;
  }

  if (!a2)
  {
    return 3758097090;
  }

  if (os_workgroup_join(v2, a2))
  {
    return 3758097084;
  }

  return 0;
}

uint64_t IOWorkGroup::Leave(IOWorkGroup *this, os_workgroup_join_token_opaque_s *a2)
{
  result = 3758097090;
  v4 = *(*(this + 5) + 16);
  if (!v4)
  {
    return 3758097112;
  }

  if (a2)
  {
    os_workgroup_leave(v4, a2);
    return 0;
  }

  return result;
}

uint64_t IOEventLink::Create(const OSMetaClassBase *this, OSString *a2, IOUserClient *a3, IOEventLink **a4)
{
  v10 = 0;
  v7 = IOEventLink::Create_Call(this, a2, &v10, a4);
  if (!v7)
  {
    if (a3)
    {
      **(v10 + 40) = this;
      (*(***(v10 + 40) + 8))(**(v10 + 40));
      v8 = v10;
      *(*(v10 + 40) + 24) = a2;
      (*(**(*(v8 + 40) + 24) + 8))(*(*(v8 + 40) + 24));
      v7 = 0;
      a3->IOService::OSObject::OSMetaClassBase::__vftable = v10;
      return v7;
    }

    v7 = 3758097090;
  }

  if (v10)
  {
    (*(*v10 + 16))(v10);
  }

  return v7;
}

BOOL IOEventLink::init(IOEventLink *this)
{
  v2 = IOMallocZeroTyped(0x20uLL, 0x10200407DCD39BEuLL);
  *(this + 5) = v2;
  return v2 != 0;
}

BOOL non-virtual thunk toIOEventLink::init(IOEventLink *this)
{
  v2 = IOMallocZeroTyped(0x20uLL, 0x10200407DCD39BEuLL);
  *(this + 2) = v2;
  return v2 != 0;
}

void IOEventLink::free(OSMetaClassBase *this)
{
  v2 = &this[1].meta->__vftable;
  if (v2)
  {
    if (*v2)
    {
      (*(**v2 + 16))(*v2);
      this[1].meta->__vftable = 0;
      v2 = &this[1].meta->__vftable;
    }

    v3 = v2[3];
    if (v3)
    {
      (*(*v3 + 16))(v2[3]);
      this[1].meta->metaClassPrivate = 0;
      v2 = &this[1].meta->__vftable;
    }

    if (!v2[1] || (os_release(v2[1]), (v2 = &this[1].meta->__vftable) != 0))
    {
      IOFree(v2, 0x20uLL);
      this[1].meta = 0;
    }
  }

  OSObjectFree(this);
}

uint64_t IOEventLink::SetEventlinkPort_Impl(IOEventLink *this, mach_port_name_t name)
{
  v3 = *(this + 5);
  if (*(v3 + 8))
  {
    v4 = 3758097115;
  }

  else
  {
    OSString::getCStringNoCopy(*v3);
    *(*(this + 5) + 8) = os_eventlink_create_with_port();
    if (*(*(this + 5) + 8))
    {
      v4 = 0;
    }

    else
    {
      v4 = 3758097090;
    }
  }

  if (mach_port_mod_refs(*MEMORY[0x277D85F48], name, 0, -1))
  {
    IOEventLink::SetEventlinkPort_Impl();
  }

  return v4;
}

uint64_t IOEventLink::Invalidate(OSMetaClassBase *this)
{
  metaClassPrivate = this[1].meta->metaClassPrivate;
  if (!metaClassPrivate)
  {
    return 3758097112;
  }

  v3 = IOEventLink::InvalidateKernel(this, metaClassPrivate, 0);
  v4 = this[1].meta->metaClassPrivate;
  if (v4)
  {
    (*(*v4 + 16))(v4);
    this[1].meta->metaClassPrivate = 0;
  }

  return v3;
}

uint64_t IOEventLink::Cancel(IOEventLink *this)
{
  if (!*(*(this + 5) + 8))
  {
    return 3758097112;
  }

  os_eventlink_cancel();
  return 0;
}

uint64_t IOEventLink::Signal(IOEventLink *this)
{
  if (!*(*(this + 5) + 8))
  {
    return 3758097112;
  }

  if (os_eventlink_signal())
  {
    return 3758097111;
  }

  return 0;
}

uint64_t IOEventLink::SignalAndWait(IOEventLink *this, unint64_t *a2)
{
  if (!*(*(this + 5) + 8))
  {
    return 3758097112;
  }

  if (os_eventlink_signal_and_wait())
  {
    result = 3758097111;
  }

  else
  {
    result = 0;
  }

  if (a2)
  {
    *a2 = 0;
  }

  return result;
}

uint64_t IOEventLink::SignalAndWaitUntil(IOEventLink *this, uint64_t a2, unint64_t a3, unint64_t *a4)
{
  v4 = 3758097090;
  if (!*(*(this + 5) + 8))
  {
    return 3758097112;
  }

  if (!a2)
  {
    if (os_eventlink_signal_and_wait_until())
    {
      v4 = 3758097111;
    }

    else
    {
      v4 = 0;
    }

    if (a4)
    {
      *a4 = 0;
    }
  }

  return v4;
}

uint64_t IOEventLink::WaitUntil(IOEventLink *this, uint64_t a2, unint64_t a3, unint64_t *a4)
{
  v4 = 3758097090;
  if (!*(*(this + 5) + 8))
  {
    return 3758097112;
  }

  if (!a2)
  {
    if (os_eventlink_wait_until())
    {
      v4 = 3758097111;
    }

    else
    {
      v4 = 0;
    }

    if (a4)
    {
      *a4 = 0;
    }
  }

  return v4;
}

uint64_t IOEventLink::Wait(IOEventLink *this, unint64_t *a2)
{
  if (!*(*(this + 5) + 8))
  {
    return 3758097112;
  }

  if (os_eventlink_wait())
  {
    result = 3758097111;
  }

  else
  {
    result = 0;
  }

  if (a2)
  {
    *a2 = 0;
  }

  return result;
}

uint64_t IOEventLink::Associate(IOEventLink *this, unint64_t a2)
{
  v2 = 3758097090;
  if (!*(*(this + 5) + 8))
  {
    return 3758097112;
  }

  if (a2 <= 1)
  {
    if (os_eventlink_associate())
    {
      return 3758097111;
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

uint64_t IOEventLink::Disassociate(IOEventLink *this)
{
  if (!*(*(this + 5) + 8))
  {
    return 3758097112;
  }

  if (os_eventlink_disassociate())
  {
    return 3758097111;
  }

  return 0;
}

uint64_t IOEventLink::Activate(IOEventLink *this)
{
  if (!*(*(this + 5) + 8))
  {
    return 3758097112;
  }

  if (os_eventlink_activate())
  {
    return 3758097111;
  }

  return 0;
}

BOOL IOExtensiblePaniclog::init(IOExtensiblePaniclog *this)
{
  v2 = IOMallocZeroTyped(8uLL, 0x2004093837F09uLL);
  *(this + 6) = v2;
  return v2 != 0;
}

BOOL non-virtual thunk toIOExtensiblePaniclog::init(IOExtensiblePaniclog *this)
{
  v2 = IOMallocZeroTyped(8uLL, 0x2004093837F09uLL);
  *(this + 3) = v2;
  return v2 != 0;
}

void IOExtensiblePaniclog::free(OSMetaClassBase *this)
{
  v2 = this[2].__vftable;
  if (v2)
  {
    if (v2->getMetaClass)
    {
      (*(*v2->getMetaClass + 16))(v2->getMetaClass);
      this[2].getMetaClass = 0;
      v2 = this[2].__vftable;
    }

    IOFree(v2, 8uLL);
  }

  OSObjectFree(this);
}

uint64_t IOExtensiblePaniclog::ClaimBuffer(IOExtensiblePaniclog *this, unint64_t *a2, unint64_t *a3)
{
  v8 = 0;
  if (**(this + 6))
  {
LABEL_2:
    v6 = 0;
    *a2 = *(*(**(this + 6) + 40) + 24);
    *a3 = **(**(this + 6) + 40);
    return v6;
  }

  v6 = 3758097085;
  if (IOExtensiblePaniclog::CopyMemoryDescriptor(this, &v8, 0))
  {
    return v6;
  }

  if (!IOMemoryDescriptor::CreateMapping(v8, 0, 0, 0, 0, 0, *(this + 6), 0))
  {
    if (v8)
    {
      (v8->release)();
      v8 = 0;
    }

    goto LABEL_2;
  }

  if (v8)
  {
    (v8->release)();
  }

  return v6;
}

uint64_t IOExtensiblePaniclog::YieldBuffer(OSMetaClassBase *this, unsigned int a2)
{
  IOExtensiblePaniclog::SetUsedLen(this, a2, 0);
  getMetaClass = this[2].getMetaClass;
  if (getMetaClass)
  {
    (*(*getMetaClass + 16))(getMetaClass);
    this[2].getMetaClass = 0;
  }

  return 0;
}

IORPCMessage *OSConsumeObjects(IORPCMessageMach *a1, BOOL a2)
{
  result = IORPCMessageFromMach(a1, a2);
  objectRefs = result->objectRefs;
  if (objectRefs)
  {
    v4 = &result[1];
    do
    {
      result = *v4;
      if (*v4)
      {
        result = (*(result->msgid + 16))(result);
        *v4 = 0;
      }

      ++v4;
      --objectRefs;
    }

    while (objectRefs);
  }

  return result;
}

uint64_t _OSObjectCopyIn(uint64_t a1, OSMetaClass *a2, OSObject **a3)
{
  v48[1] = *MEMORY[0x277D85DE8];
  v48[0] = 0;
  v6 = a1 + 8 * ((a2 >> 8) & 0x1FF);
  os_unfair_lock_lock(a1);
  v9 = *(v6 + 80);
  v8 = (v6 + 80);
  v7 = v9;
  if (!v9)
  {
    goto LABEL_9;
  }

  while (*(v7 + 24) != a2)
  {
    v7 = *(v7 + 8);
    if (!v7)
    {
      goto LABEL_9;
    }
  }

  v48[0] = (v7 + 88);
  if (OSObjectTryRetain((v7 + 88)))
  {
    *a3 = (v7 + 88);
    v10 = *(v7 + 32);
    *(v7 + 32) = v10 + 1;
    if ((v10 + 1) >= 0xC9)
    {
      *(v7 + 32) = v10 - 199;
      if (mach_port_mod_refs(*MEMORY[0x277D85F48], *(v7 + 24), 0, -200))
      {
        _OSObjectCopyIn();
      }
    }

    os_unfair_lock_unlock(a1);
    msgid_low = 0;
  }

  else
  {
LABEL_9:
    MEMORY[0x28223BE20]();
    bzero(&v39, 0x2000uLL);
    v39.msgh.msgh_size = 72;
    *&v40[12] = xmmword_23820C4D0;
    v41 = 1;
    v42 = a2;
    *&v39.msgh.msgh_id = 0x14DA2B68CLL;
    v12 = *(a1 + 24);
    v47[0] = &v39;
    v47[1] = &v39;
    v47[2] = 0x200000000048;
    msgid_low = InvokeRemote(a1, v12, v47);
    if (msgid_low)
    {
      goto LABEL_12;
    }

    v13 = IORPCMessageFromMach(&v39, 1);
    if (v13->msgid != 0x100000001)
    {
      _OSObjectCopyIn();
    }

    v14 = v13;
    msgid_low = LODWORD(v13[1].msgid);
    if (msgid_low)
    {
LABEL_12:
      v15 = atomic_load((a1 + 4176));
      if (v15 <= 1)
      {
        IOLog("no services, exiting\n");
        exit(0);
      }

      os_unfair_lock_unlock(a1);
    }

    else
    {
      flags = v13[1].flags;
      if (HIDWORD(flags))
      {
        _OSObjectCopyIn();
      }

      if (v39.msgh.msgh_size <= 0xC3)
      {
        _OSObjectCopyIn();
      }

      msgh_descriptor_count = v39.msgh_body.msgh_descriptor_count;
      v20 = v39.msgh.msgh_size - 196;
      if (v20 < 12 * v39.msgh_body.msgh_descriptor_count)
      {
        _OSObjectCopyIn();
      }

      p_objectRefs = &v13[1].objectRefs;
      v44 = v20 - 12 * v39.msgh_body.msgh_descriptor_count;
      v46 = v44 >> 4;
      if ((gIODKDebug & 2) != 0)
      {
        IOLog("OSObjectAllocate 0x%qx %s remote %d, flags %#x, qc %d, mc %d\n", a2, &v13[1].objectRefs, flags & 1, flags, v39.msgh_body.msgh_descriptor_count, v46);
      }

      v45 = a3;
      v43 = p_objectRefs;
      v22 = OSFindClass(a1, &v14[1].objectRefs);
      if (OSObjectAllocate(v22, 1, v48))
      {
        _OSObjectCopyIn();
      }

      v23 = v48[0];
      ivars = v48[0][-1].ivars;
      if (ivars)
      {
        p_ivars = &v48[0][-3].ivars;
      }

      else
      {
        p_ivars = 0;
      }

      if ((ivars & 1) == 0)
      {
        _OSObjectCopyIn();
      }

      v48[0][-2].meta = a2;
      LODWORD(v23[-2].OSObjectInterface::__vftable) = 1;
      HIDWORD(v23[-1].OSObjectInterface::__vftable) = flags;
      if (flags)
      {
        HIDWORD(v23[-2].OSObjectInterface::__vftable) = msgh_descriptor_count;
        if (msgh_descriptor_count)
        {
          v26 = IOMallocZeroTyped(8 * msgh_descriptor_count, 0x100004000313F17uLL);
          v23[-1].OSMetaClassBase::__vftable = v26;
          v27 = v40;
          do
          {
            v28 = *v27;
            v27 += 3;
            v26->getMetaClass = v28;
            v26 = (v26 + 8);
            --msgh_descriptor_count;
          }

          while (msgh_descriptor_count);
        }

        v29 = v46;
        LODWORD(p_ivars[5].ivars) = v46;
        if (v29)
        {
          v30 = v44;
          v31 = IOMallocZeroTyped(v44 & 0x7FFFFFFF0, 0x100004000313F17uLL);
          p_ivars[7].ivars = v31;
          memmove(v31, &v14[7], v30 & 0x7FFFFFFF0);
        }
      }

      v32 = *v8;
      p_ivars[1].ivars = *v8;
      if (v32)
      {
        *(v32 + 2) = p_ivars + 1;
      }

      *v8 = p_ivars;
      p_ivars[2].ivars = v8;
      if (v23)
      {
        meta = v23->meta;
        if (meta == v23)
        {
          v34 = 0;
        }

        else
        {
          v34 = v23->meta;
        }

        v35 = v34 != 0;
        if (v34)
        {
          v36 = v34 == gIOServiceMetaClass;
        }

        else
        {
          v36 = 1;
        }

        if (!v36)
        {
          do
          {
            meta = *(meta->metaClassPrivate + 1);
            v35 = meta != 0;
            if (meta)
            {
              v37 = meta == gIOServiceMetaClass;
            }

            else
            {
              v37 = 1;
            }
          }

          while (!v37);
        }

        if (v35)
        {
          atomic_fetch_add_explicit((a1 + 4176), 1u, memory_order_relaxed);
          if ((gIODKDebug & 2) != 0)
          {
            v38 = atomic_load((a1 + 4176));
            IOLog("serviceCount %d\n", v38);
            v23 = v48[0];
          }
        }
      }

      os_unfair_lock_unlock(a1);
      if (((v23->init)(v23) & 1) == 0)
      {
        panic("Fatal error: %s::init() method failed during copy-in\n", v43);
      }

      msgid_low = 0;
      *v45 = v23;
    }
  }

  v16 = *MEMORY[0x277D85DE8];
  return msgid_low;
}

uint64_t ___ZL15OSCopyInObjectsP18IOUserServer_IVarsP16IORPCMessageMachP12IORPCMessageb_block_invoke()
{
  result = MEMORY[0x2383EC880](*MEMORY[0x277D85F48]);
  if (result)
  {
    ___ZL15OSCopyInObjectsP18IOUserServer_IVarsP16IORPCMessageMachP12IORPCMessageb_block_invoke_cold_1();
  }

  return result;
}

void ___ZL8LockTesti_block_invoke(uint64_t a1)
{
  os_unfair_lock_lock(*(*(*(a1 + 32) + 8) + 24));
  v2 = *(*(*(a1 + 40) + 8) + 24) + 1;
  IOSleep(1uLL);
  *(*(*(a1 + 40) + 8) + 24) = v2;
  v3 = *(*(*(a1 + 32) + 8) + 24);

  os_unfair_lock_unlock(v3);
}

void ___ZL8LockTesti_block_invoke_221(uint64_t a1)
{
  IORWLockWrite(*(*(*(a1 + 32) + 8) + 24));
  v2 = *(*(*(a1 + 40) + 8) + 24) + 1;
  IOSleep(1uLL);
  *(*(*(a1 + 40) + 8) + 24) = v2;
  IORWLockUnlock(*(*(*(a1 + 32) + 8) + 24));
  IORWLockRead(*(*(*(a1 + 32) + 8) + 24));
  v3 = *(*(*(a1 + 32) + 8) + 24);

  IORWLockUnlock(v3);
}

uint64_t ___ZL8LockTesti_block_invoke_225(uint64_t a1)
{
  v2 = *(*(*(a1 + 32) + 8) + 24);
  os_unfair_recursive_lock_lock_with_options();
  v3 = *(*(*(a1 + 32) + 8) + 24);
  os_unfair_recursive_lock_lock_with_options();
  v4 = *(*(*(a1 + 40) + 8) + 24) + 1;
  IOSleep(1uLL);
  *(*(*(a1 + 40) + 8) + 24) = v4;
  v5 = *(*(*(a1 + 32) + 8) + 24);
  os_unfair_recursive_lock_unlock();
  v6 = *(*(*(a1 + 32) + 8) + 24);

  return os_unfair_recursive_lock_unlock();
}

uint64_t uiomessage(void *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = a1[1];
  v4 = *(*a1 + 40);
  bzero(&v10, 0x400uLL);
  (*(*v2 + 8))(v2);
  v5 = *(v4 + 48);
  if (v5)
  {
    v6 = v2[5];
    if ((*(v6 + 32) & 2) == 0)
    {
      IORecursiveConditionLockLock(v5);
      v6 = v2[5];
    }

    *(v6 + 29) = 1;
    Server(v2, v3, &v10);
    *(v2[5] + 29) = 0;
    if ((*(v2[5] + 32) & 2) == 0)
    {
      IORecursiveConditionLockUnlock(*(v4 + 48));
    }

    free(a1);
  }

  else
  {
    v9[0] = *(v4 + 8);
    v9[1] = v2;
    *(v4 + 8) = v9;
    *(v2[5] + 29) = 1;
    Server(v2, v3, &v10);
    *(v2[5] + 29) = 0;
    *(v4 + 8) = v9[0];
  }

  if (v10.msgh.msgh_remote_port + 1 >= 2)
  {
    mach_msg2_internal();
    if (v10.msgh.msgh_id == 1302509197)
    {
      OSConsumeObjects(&v10, 1);
    }
  }

  result = (*(*v2 + 16))(v2);
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void Server(void *a1, IORPCMessageMach *a2, IORPCMessageMach *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v21 = 0;
  pthread_threadid_np(0, &v21);
  v6 = *(a1 - 11);
  msgh_remote_port = a2->msgh.msgh_remote_port;
  msgh_id = a2->msgh.msgh_id;
  if ((gIODKDebug & 0x10) != 0)
  {
    snprintf(__str, 0x40uLL, "[%#qx] SERVER MSG:", v21);
    IOLogBuffer(__str, a2, a2->msgh.msgh_size);
  }

  if (a2->msgh.msgh_size < 0x34)
  {
    goto LABEL_10;
  }

  if ((a2->msgh.msgh_bits & 0x80000000) == 0)
  {
    a2->msgh_body.msgh_descriptor_count = 0;
  }

  v9 = IORPCMessageFromMach(a2, 0);
  v10 = v9;
  msgid = v9->msgid;
  v12 = v9->flags | 1;
  v9->flags = v12;
  if ((gIODKDebug & 4) != 0)
  {
    IOLog("[%#qx] %p %#qx flags %#qx object %#qx \n", v21, v9, msgid, v12, v9[1].msgid);
    v12 = *(v10 + 8);
  }

  if ((msgh_remote_port == 0) != ((v12 >> 3) & 1))
  {
    Server();
  }

  if (OSCopyInObjects(v6, &a2->msgh.msgh_bits, v10) || !a2->msgh_body.msgh_descriptor_count)
  {
LABEL_10:
    a3->msgh.msgh_local_port = 0;
    a3->msgh.msgh_voucher_port = 0;
    a3->msgh.msgh_bits = 18;
    *&a3->msgh_body.msgh_descriptor_count = *MEMORY[0x277D85EF8];
    a3->msgh.msgh_id = msgh_id + 100;
    a3->msgh.msgh_size = 36;
    a3->msgh.msgh_remote_port = msgh_remote_port;
    a3[1].msgh.msgh_size = -304;
    if (!msgh_remote_port)
    {
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  v14 = *(v10 + 24);
  if (!v14)
  {
    OSConsumeObjects(a2, 0);
    goto LABEL_10;
  }

  msgh_size = a2->msgh.msgh_size;
  invoke.message = a2;
  invoke.reply = a3;
  invoke.sendSize = msgh_size;
  invoke.replySize = 1024;
  v16 = OSMetaClassBase::Invoke(v14, &invoke);
  OSConsumeObjects(a2, 0);
  if (!msgh_remote_port)
  {
LABEL_19:
    v18 = 18;
    goto LABEL_25;
  }

  if (v16)
  {
    *&a3->msgh.msgh_id = 1302509197;
    v17 = IORPCMessageFromMach(a3, 1);
    v17->msgid = msgid;
    *&v17->flags = xmmword_23820C4E0;
    LODWORD(v17[1].msgid) = v16;
    HIDWORD(v17[1].msgid) = 0;
    a3->msgh.msgh_size = 60;
    goto LABEL_19;
  }

  v19 = IORPCMessageFromMach(a3, 1);
  if (OSCopyOutObjects(a3, v19))
  {
    Server();
  }

  if (a3->msgh_body.msgh_descriptor_count)
  {
    v18 = -2147483630;
  }

  else
  {
    v18 = 18;
  }

LABEL_25:
  a3->msgh.msgh_local_port = 0;
  a3->msgh.msgh_voucher_port = 0;
  a3->msgh.msgh_remote_port = msgh_remote_port;
  a3->msgh.msgh_bits = v18;
  if (!msgh_remote_port)
  {
    goto LABEL_13;
  }

LABEL_11:
  if ((gIODKDebug & 0x10) != 0)
  {
    snprintf(__str, 0x40uLL, "[%#qx] SERVER REPLY:", v21);
    IOLogBuffer(__str, a3, a3->msgh.msgh_size);
  }

LABEL_13:
  v13 = *MEMORY[0x277D85DE8];
}

uint64_t ___ZL31IOInterruptDispatchSourceThreadPv_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ((*(v2 + 33) & 1) == 0 && *(v2 + 32) == 1)
  {
    v3 = *(v2 + 8);
    v4 = *(v3 + 40);
    v5 = *(v4 + 48);
    if (v5)
    {
      IORecursiveConditionLockLock(v5);
      IODispatchSource::CheckForWork(*(a1 + 40), 1, 0);
      IORecursiveConditionLockUnlock(*(*(*(*(a1 + 32) + 8) + 40) + 48));
    }

    else
    {
      v7[0] = 0;
      v7[1] = v3;
      *(v4 + 8) = v7;
      IODispatchSource::CheckForWork(*(a1 + 40), 1, 0);
      *(*(*(*(a1 + 32) + 8) + 40) + 8) = 0;
    }
  }

  return (*(**(a1 + 40) + 16))(*(a1 + 40));
}

const char *__cdecl OSCollectionTypeName(OSCollectionType t)
{
  v1 = t - 1;
  if (t - 1 >= 0xD || ((0x178Fu >> v1) & 1) == 0)
  {
    OSCollectionTypeName_cold_1();
  }

  return off_278A49FF8[v1];
}

uint64_t OSSerializationTypeID(int a1)
{
  v1 = ((a1 & 0x7F000000u) - 0x1000000) >> 24;
  if (v1 >= 0xD || ((0x178Fu >> v1) & 1) == 0)
  {
    OSSerializationTypeID();
  }

  return qword_23820C728[v1];
}

OSCollectionType OSCollectionTypeID(OSObjectPtr obj)
{
  v1 = OSMetaClassBase::safeMetaCast(obj, gOSContainerMetaClass);
  if (!v1)
  {
    OSCollectionTypeID_cold_1();
  }

  v2 = v1[1].meta->__vftable;

  return OSSerializationTypeID(v2);
}

uint64_t OSSerializationValue(OSSerialization *a1, unsigned int a2)
{
  ivars = a1->ivars;
  if (*(ivars + 12) <= a2)
  {
    OSSerializationValue();
  }

  v3 = *(*(ivars + 5) + 4 * a2);
  v4 = v3 & 0x7F000000;
  v5 = v3 & 0xFFFFFF;
  if (v4 == 201326592)
  {
    return v5;
  }

  else
  {
    return a2;
  }
}

OSObjectPtr OSCreateObjectFromSerialization(OSSerializationPtr serial)
{
  ivars = serial->ivars;
  if (*(ivars + 54) == 1)
  {
    v2 = *(ivars + 2);
    v3 = *(ivars + 4);

    return OSUnserializeXML(v2, v3, 0);
  }

  if (*(ivars + 53))
  {

    return OSCreateObjectFromSerializationInternal(serial, 1u);
  }

  v5 = *(ivars + 4);
  if (v5 < 4)
  {
    return 0;
  }

  v6 = *(ivars + 2);
  v7 = *v6;
  if (v7 != 212)
  {
    if (v7 == 211)
    {
      if (!v6[1])
      {
        goto LABEL_15;
      }

      return 0;
    }

    if (211 != v7)
    {
      return 0;
    }
  }

LABEL_15:
  if ((v6 & 3) != 0)
  {
    return 0;
  }

  v74 = v5;
  __src = 0;
  v69 = v7 == 212;
  v9 = 0;
  v77 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v64 = 0;
  v65 = 0;
  v67 = 0;
  v15 = 0;
  v16 = (v6 + 4);
  v17 = 4;
LABEL_19:
  v78 = v10;
  v18 = v12;
  v19 = v13;
  v20 = v14;
  v68 = v15;
  while (1)
  {
    v76 = v19;
    v70 = v18;
    v66 = v11;
    do
    {
      v21 = v17 + 4;
      if (v17 + 4 > v74)
      {
        goto LABEL_122;
      }

      v22 = v16 + 1;
      v23 = *v16;
      v24 = *v16 & 0xFFFFFF;
      v25 = ((*v16 & 0x7F000000u) - 0x1000000) >> 24;
      if (v25 > 6)
      {
        v26 = (v24 + 3) >> 2;
        if (((*v16 & 0x7F000000u) - 0x1000000) >> 24 <= 8)
        {
          if (v25 == 7)
          {
            if (!v24)
            {
              goto LABEL_122;
            }

            v21 += 4 * v26;
            if (v21 > v74 || *(v22 + v24 - 1))
            {
              goto LABEL_122;
            }

            v35 = (v16 + 1);
            v34 = -1;
          }

          else
          {
            if (v25 != 8)
            {
              goto LABEL_122;
            }

            v21 += 4 * v26;
            if (v21 > v74)
            {
              goto LABEL_122;
            }

            v34 = v24;
            v35 = (v16 + 1);
          }

          v37 = OSStringCreate(v35, v34);
        }

        else
        {
          if (v25 != 9)
          {
            if (v25 == 10)
            {
              v72 = 0;
              v73 = 0;
              v71 = 0;
              v27 = 0;
              v29 = 0;
              v28 = 0;
              v36 = &kOSBooleanTrue;
              if (!v24)
              {
                v36 = &kOSBooleanFalse;
              }

              v14 = *v36;
            }

            else
            {
              if (v25 != 11 || v24 >= v77)
              {
                goto LABEL_122;
              }

              v72 = 0;
              v73 = 0;
              v71 = 0;
              v27 = 0;
              v28 = 0;
              v29 = 1;
              v14 = __src[v24];
            }

            goto LABEL_57;
          }

          v21 += 4 * v26;
          if (v21 > v74)
          {
            goto LABEL_122;
          }

          v37 = OSDataCreate(v16 + 1, v24);
        }

        v14 = v37;
        v72 = 0;
        v73 = 0;
        v71 = 0;
        v27 = 0;
        v29 = 0;
        v28 = 0;
        v22 += v26;
        goto LABEL_57;
      }

      if (((*v16 & 0x7F000000u) - 0x1000000) >> 24 <= 1)
      {
        if (v25)
        {
          if (v25 != 1)
          {
            goto LABEL_122;
          }

          v30 = OSArrayCreate();
          v72 = v30;
          v73 = 0;
          v71 = 0;
          v29 = 0;
          v27 = v24 != 0;
        }

        else
        {
          v30 = OSDictionaryCreate();
          v71 = 0;
          v72 = 0;
          v29 = 0;
          v27 = v24 != 0;
          v73 = v30;
        }

        goto LABEL_48;
      }

      if (v25 == 2)
      {
        v30 = OSSetCreate();
        v72 = 0;
        v73 = 0;
        v29 = 0;
        v27 = v24 != 0;
        v71 = v30;
LABEL_48:
        v14 = v30;
        v28 = v69;
        goto LABEL_57;
      }

      if (v25 != 3)
      {
        goto LABEL_122;
      }

      v21 = v17 + 12;
      if (v17 + 12 > v74)
      {
        goto LABEL_122;
      }

      HIDWORD(v32) = v24 - 8;
      LODWORD(v32) = v24 - 8;
      v31 = v32 >> 3;
      if (v31 > 7 || ((1 << v31) & 0x8B) == 0)
      {
        goto LABEL_122;
      }

      v14 = OSNumberCreateWithUInt64Value(*(v16 + 1));
      v72 = 0;
      v73 = 0;
      v71 = 0;
      v33 = v16;
      v27 = 0;
      v29 = 0;
      v28 = 0;
      v22 = v33 + 3;
LABEL_57:
      if (!v14)
      {
        goto LABEL_122;
      }

      if (v28)
      {
        v17 = v21 + 4;
        v38 = v21 + 4 > v74;
        v39 = v78;
        if (v38)
        {
          goto LABEL_121;
        }

        v40 = v22 + 1;
        if (v29)
        {
          goto LABEL_70;
        }
      }

      else
      {
        v17 = v21;
        v40 = v22;
        v39 = v78;
        if (v29)
        {
          goto LABEL_70;
        }
      }

      if (v77 >= v9)
      {
        if (BYTE3(v9) || (v41 = (v9 + 64), (v43 = IOMallocTyped((8 * v41), 0x2004093837F09uLL)) == 0))
        {
LABEL_121:
          (v14->release)(v14);
LABEL_122:
          v8 = 0;
LABEL_123:
          v51 = v68;
          goto LABEL_124;
        }

        v42 = v43;
        if (__src)
        {
          memmove(v43, __src, (8 * v9));
          v39 = v78;
          IOFree(__src, (8 * v9));
        }
      }

      else
      {
        v41 = v9;
        v42 = __src;
      }

      v42[v77++] = v14;
      v9 = v41;
      __src = v42;
LABEL_70:
      if (v76)
      {
        if (!v39)
        {
          v78 = v14;
          goto LABEL_97;
        }

        v44 = OSMetaClassBase::safeMetaCast(v39, gOSStringMetaClass);
        if (v44)
        {
          v45 = v44;
        }

        else
        {
          v46 = OSMetaClassBase::safeMetaCast(v39, gOSStringMetaClass);
          v45 = v46;
          if (v46)
          {
            (v46->retain)(v46);
            v39 = v45;
          }

          else
          {
            v39 = 0;
          }
        }

        if (v14 == v76)
        {
          if (!v45 || v45 == v39)
          {
            v78 = 0;
            goto LABEL_97;
          }

          v49 = 1;
        }

        else
        {
          v47 = v39;
          v48 = OSDictionarySetValueInternal(v76, v45, 0, v14);
          v49 = v48;
          if (!v45 || v45 == v47)
          {
            v78 = 0;
            if (!v48)
            {
              goto LABEL_131;
            }

            goto LABEL_97;
          }
        }

        (*(*v45 + 16))(v45);
        v78 = 0;
        if ((v49 & 1) == 0)
        {
LABEL_131:
          v8 = 0;
          goto LABEL_123;
        }
      }

      else if (v70)
      {
        if ((OSArraySetValueInternal(v70, 0xFFFFFFFFFFFFFFFFLL, v14, 0) & 1) == 0)
        {
          goto LABEL_122;
        }
      }

      else if (v66)
      {
        if (!OSSet::setObject(v66, v14))
        {
          goto LABEL_122;
        }
      }

      else
      {
        if (v64)
        {
          goto LABEL_122;
        }

        v64 = v14;
        if (v20)
        {
          OSCreateObjectFromSerialization_cold_1();
        }
      }

LABEL_97:
      if (v27)
      {
        if (v23 >= 0)
        {
          v53 = v20;
        }

        else
        {
          v53 = 0;
        }

        v54 = v65 + 1;
        if (v65 + 1 >= v67)
        {
          v51 = v68;
          if (v67 > 0x3F)
          {
            v8 = 0;
            goto LABEL_124;
          }

          v55 = v9;
          v56 = v67 | 0x40;
          v57 = IOMallocTyped((8 * v56), 0x2004093837F09uLL);
          v8 = v57;
          if (!v57)
          {
            LODWORD(v9) = v55;
            goto LABEL_124;
          }

          if (v68)
          {
            v58 = (8 * v67);
            memmove(v57, v68, v58);
            IOFree(v68, v58);
          }
        }

        else
        {
          v55 = v9;
          v8 = v68;
          v56 = v67;
        }

        v12 = v72;
        v13 = v73;
        v11 = v71;
        ++v65;
        *(&v8->OSMetaClassBase::__vftable + v54) = v53;
        v67 = v56;
        v15 = v8;
        v9 = v55;
        v10 = v78;
        v16 = v40;
        goto LABEL_19;
      }

      v16 = v40;
    }

    while ((v23 & 0x80000000) == 0);
    v50 = v65;
    if (!v65)
    {
      v8 = v64;
      goto LABEL_123;
    }

    v51 = v68;
    do
    {
      v20 = *(&v68->OSMetaClassBase::__vftable + v50);
      if (v20)
      {
        v52 = 1;
      }

      else
      {
        v52 = v50 == 1;
      }

      --v50;
    }

    while (!v52);
    if (!v20)
    {
      v8 = v64;
      break;
    }

    v65 = v50;
    v19 = OSMetaClassBase::safeMetaCast(v20, gOSDictionaryMetaClass);
    v11 = 0;
    v18 = 0;
    v16 = v40;
    if (!v19)
    {
      v18 = OSMetaClassBase::safeMetaCast(v20, gOSArrayMetaClass);
      v11 = 0;
      v19 = 0;
      if (!v18)
      {
        v11 = OSMetaClassBase::safeMetaCast(v20, gOSSetMetaClass);
        v18 = 0;
        v19 = 0;
        v8 = 0;
        if (!v11)
        {
          break;
        }
      }
    }
  }

LABEL_124:
  if (v9)
  {
    v59 = v9;
    v60 = v8 != 0;
    v61 = v77 - v60;
    if (v77 > v60)
    {
      v62 = &__src[v8 != 0];
      do
      {
        v63 = *v62++;
        (*(*v63 + 16))(v63);
        --v61;
      }

      while (v61);
    }

    IOFree(__src, 8 * v59);
  }

  if (v67)
  {
    IOFree(v51, 8 * v67);
  }

  return v8;
}

OSStringPtr OSCreateObjectFromSerializationInternal(OSSerialization *a1, unsigned int a2)
{
  v4 = *(a1->ivars + 5);
  v5 = *(v4 + 4 * a2);
  v6 = v5 & 0x7F000000;
  v7 = ((v5 & 0x7F000000u) - 0x1000000) >> 24;
  if (v7 <= 6)
  {
    if (v7 - 1 < 2)
    {
      pObject = 0;
      if (v6 == 0x2000000)
      {
        v12 = &gOSArrayMetaClass;
      }

      else
      {
        v12 = &gOSSetMetaClass;
      }
    }

    else
    {
      if (v7)
      {
        if (v7 != 3)
        {
LABEL_41:
          OSCreateObjectFromSerializationInternal();
        }

LABEL_17:
        if (v6 == 167772160)
        {
          pObject = 0;
          v13 = &gOSDataMetaClass;
        }

        else
        {
          if (v6 != 0x4000000)
          {
            OSCreateObjectFromSerializationInternal();
          }

          pObject = 0;
          v13 = &gOSNumberMetaClass;
        }

        if (OSObjectAllocate(*v13, &pObject))
        {
          v11 = 0;
        }

        else
        {
          v11 = pObject;
        }

        v16 = OSSerializationSize(a1, a2);
        if (v16 >> 30)
        {
          OSCreateObjectFromSerializationInternal();
        }

        v17 = 4 * v16;
        v18 = IOMallocZeroTyped(v17, 0x400A2AC0F1uLL);
        v11[1].OSMetaClassBase::__vftable = v18;
        memmove(v18, (*(a1->ivars + 5) + 4 * a2), v17);
        return v11;
      }

      pObject = 0;
      v12 = &gOSDictionaryMetaClass;
    }

    if (OSObjectAllocate(*v12, &pObject))
    {
      v11 = 0;
    }

    else
    {
      v11 = pObject;
    }

    v15 = IOMallocZeroTyped(0x28uLL, 0x1020040FBF3A4F7uLL);
    v11[1].OSObjectInterface::__vftable = v15;
    v11[1].OSMetaClassBase::__vftable = v15;
    LODWORD(v15->init) = v5;
    v11[1].free = a1;
    (a1->retain)(a1);
    LODWORD(v11[1].OSObjectInterface::__vftable[1].init) = a2;
    HIDWORD(v11[1].OSObjectInterface::__vftable[1].init) = v5 & 0xFFFFFF;
    return v11;
  }

  if (((v5 & 0x7F000000u) - 0x1000000) >> 24 > 8)
  {
    if (v7 != 9)
    {
      if (v7 != 10)
      {
        goto LABEL_41;
      }

      v10 = &kOSBooleanTrue;
      if ((v5 & 0xFFFFFF) == 0)
      {
        v10 = &kOSBooleanFalse;
      }

      return *v10;
    }

    goto LABEL_17;
  }

  if (v7 == 7)
  {
    if ((v5 & 0xFFFFFF) == 0)
    {
      return 0;
    }

    v8 = (v4 + 4 * (a2 + 1));
    v9 = (v5 & 0xFFFFFFu) - 1;
  }

  else
  {
    if (v7 != 8)
    {
      goto LABEL_41;
    }

    v8 = (v4 + 4 * (a2 + 1));
    v9 = *&v5 & 0xFFFFFFLL;
  }

  return OSStringCreate(v8, v9);
}

const char *__cdecl OSStringGetStringPtr(OSStringPtr obj)
{
  ivars = obj->ivars;
  v2 = *ivars;
  if ((*ivars & 0x7E000000 | 0x1000000) != 0x9000000)
  {
    return 0;
  }

  v3 = ivars + 4;
  if ((v2 & 0x7FFFFFFF) == 0x8000000)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

uint64_t OSSerializationGetStringLength(const unsigned int *a1)
{
  v1 = *a1 & 0x7F000000;
  if ((*a1 & 0x7E000000 | 0x1000000) != 0x9000000)
  {
    return 0;
  }

  result = *a1 & 0xFFFFFF;
  if (v1 == 0x8000000)
  {
    if (!result)
    {
      OSSerializationGetStringLength();
    }

    --result;
  }

  return result;
}

OSStringPtr OSStringCreate(const char *cstring, size_t length)
{
  if (length == -1)
  {
    v3 = strlen(cstring);
  }

  else
  {
    v3 = length;
    v4 = strnlen(cstring, length);
    if (v4 != v3)
    {
      v5 = v4;
      IOLog("OSStringCreate(%s, %ld should be %ld)\n", cstring, v3, v4);
      v3 = v5;
    }
  }

  if (v3 >> 24)
  {
    OSStringCreate_cold_3();
  }

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 0x40000000;
  v17[2] = __OSStringCreate_block_invoke;
  v17[3] = &__block_descriptor_tmp_0;
  v17[4] = v3;
  v17[5] = cstring;
  v6 = OSStringHash(cstring, v3);
  os_unfair_lock_lock(&OSUniqueStringsLock);
  v7 = OSStringFind(v6, v17);
  if (v7)
  {
    v8 = v7[2];
    os_unfair_lock_unlock(&OSUniqueStringsLock);
    if (v8)
    {
      return v8;
    }
  }

  else
  {
    os_unfair_lock_unlock(&OSUniqueStringsLock);
  }

  if (v3 == 0xFFFFFF)
  {
    OSStringCreate_cold_2();
  }

  v9 = (v3 + 4) & 0x1FFFFFC;
  if (v9 <= v3)
  {
    OSStringCreate_cold_1();
  }

  pObject = 0;
  if (OSObjectAllocate(gOSStringMetaClass, &pObject))
  {
    v8 = 0;
  }

  else
  {
    v8 = pObject;
  }

  v10 = IOMallocZeroTyped(v9 + 4, 0x400A2AC0F1uLL);
  v8->ivars = v10;
  *v10 = v3 | 0x9000000;
  strncpy(v8->ivars + 4, cstring, v3);
  v11 = IOMallocTyped(0x18uLL, 0xA0040A8488062uLL);
  v11[2] = v8;
  os_unfair_lock_lock(&OSUniqueStringsLock);
  v12 = OSStringFind(v6, v17);
  if (v12)
  {
    v8 = v12[2];
    os_unfair_lock_unlock(&OSUniqueStringsLock);
    (*(*v11[2] + 16))(v11[2]);
    IOFree(v11, 0x18uLL);
  }

  else
  {
    v13 = (&OSUniqueStrings + 16 * v6);
    v14 = *v13;
    *v11 = *v13;
    if (!v14)
    {
      v14 = &OSUniqueStrings + 16 * v6;
    }

    *(v14 + 1) = v11;
    *v13 = v11;
    v11[1] = v13;
    os_unfair_lock_unlock(&OSUniqueStringsLock);
  }

  return v8;
}

BOOL __OSStringCreate_block_invoke(uint64_t a1, uint64_t a2)
{
  StringLength = OSSerializationGetStringLength(*(a2 + 40));
  if (StringLength != *(a1 + 32))
  {
    return 0;
  }

  v5 = *(a2 + 40);
  v7 = *v5;
  v6 = v5 + 1;
  v8 = v7 & 0x7E000000 | 0x1000000;
  if ((v7 & 0x7FFFFFFF) == 0x8000000)
  {
    v6 = 0;
  }

  v9 = v8 == 150994944 ? v6 : 0;
  if (strncmp(*(a1 + 40), v9, StringLength))
  {
    return 0;
  }

  return OSObjectTryRetain(a2);
}

uint64_t OSStringHash(const char *a1, unint64_t a2)
{
  if (a2 >> 24)
  {
    OSStringHash();
  }

  if (a2)
  {
    v2 = a2;
    v3 = a2;
    do
    {
      v4 = *a1++;
      v3 = 257 * v3 + v4;
      --v2;
    }

    while (v2);
  }

  else
  {
    v3 = 0;
  }

  return ((v3 << a2) + v3);
}

void *OSStringFind(unsigned __int8 a1, uint64_t a2)
{
  os_unfair_lock_assert_owner(&OSUniqueStringsLock);
  v4 = (&OSUniqueStrings + 16 * a1);
  do
  {
    v4 = *v4;
  }

  while (v4 && !(*(a2 + 16))(a2, v4[2]));
  return v4;
}

void OSString::free(OSString *this)
{
  ivars = this->ivars;
  if ((*ivars & 0x7FFFFFFF) == 0x8000000)
  {
    v3 = 0;
  }

  else
  {
    v3 = (ivars + 1);
  }

  if ((*ivars & 0x7E000000 | 0x1000000) == 0x9000000)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  StringLength = OSSerializationGetStringLength(ivars);
  v6 = OSStringHash(v4, StringLength);
  os_unfair_lock_lock(&OSUniqueStringsLock);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 0x40000000;
  v14[2] = ___ZN8OSString4freeEv_block_invoke;
  v14[3] = &__block_descriptor_tmp_16;
  v14[4] = this;
  v7 = OSStringFind(v6, v14);
  if (v7)
  {
    v8 = v7;
    if (v7[2] != this)
    {
      OSString::free();
    }

    v9 = *v7;
    v10 = v7[1];
    v11 = (*v7 + 8);
    if (!*v7)
    {
      v11 = (&OSUniqueStrings + 16 * v6 + 8);
    }

    *v11 = v10;
    *v10 = v9;
    os_unfair_lock_unlock(&OSUniqueStringsLock);
    IOFree(v8, 0x18uLL);
  }

  else
  {
    os_unfair_lock_unlock(&OSUniqueStringsLock);
  }

  v12 = this->ivars;
  if (v12)
  {
    if ((StringLength + 1) >> 24)
    {
      OSString::free();
    }

    v13 = (StringLength + 4) & 0x1FFFFFC;
    if (v13 < StringLength + 1)
    {
      OSString::free();
    }

    IOFree(v12, v13 + 4);
    this->ivars = 0;
  }

  OSObject::free(this);
}

const char *__cdecl OSString::getCStringNoCopy(const OSString *this)
{
  ivars = this->ivars;
  v2 = *ivars;
  if ((*ivars & 0x7E000000 | 0x1000000) != 0x9000000)
  {
    return 0;
  }

  v3 = ivars + 4;
  if ((v2 & 0x7FFFFFFF) == 0x8000000)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

uint64_t OSSerializationGetBytesPtr(const unsigned int *a1, unint64_t a2, unint64_t a3)
{
  if ((*a1 & 0x7F000000) != 0xA000000)
  {
    return 0;
  }

  v3 = *a1 & 0xFFFFFF;
  v4 = v3 > a2;
  v5 = v3 - a2;
  if (v4 && v5 >= a3)
  {
    return a1 + a2 + 4;
  }

  else
  {
    return 0;
  }
}

size_t OSSerializationGetBytes(const unsigned int *a1, void *__dst, unint64_t a3, size_t a4)
{
  if ((*a1 & 0x7F000000) != 0xA000000)
  {
    return 0;
  }

  v4 = *a1 & 0xFFFFFF;
  v5 = v4 > a3;
  v6 = v4 - a3;
  if (!v5)
  {
    return 0;
  }

  if (v6 >= a4)
  {
    v7 = a4;
  }

  else
  {
    v7 = v6;
  }

  memcpy(__dst, a1 + a3 + 4, v7);
  return v7;
}

const void *__cdecl OSDataGetBytesPtr(OSDataPtr obj, size_t offset, size_t length)
{
  ivars = obj->ivars;
  if ((*ivars & 0x7F000000) == 0xA000000 && ((v4 = *ivars & 0xFFFFFF, v5 = v4 > offset, v6 = v4 - offset, v5) ? (v7 = v6 >= length) : (v7 = 0), v7))
  {
    return ivars + offset + 4;
  }

  else
  {
    return 0;
  }
}

size_t OSDataGetBytes(OSDataPtr obj, void *buffer, size_t offset, size_t length)
{
  ivars = obj->ivars;
  if ((*ivars & 0x7F000000) != 0xA000000)
  {
    return 0;
  }

  v5 = *ivars & 0xFFFFFF;
  v6 = v5 > offset;
  v7 = v5 - offset;
  if (!v6)
  {
    return 0;
  }

  v8 = ivars + offset;
  if (v7 >= length)
  {
    v9 = length;
  }

  else
  {
    v9 = v7;
  }

  memcpy(buffer, (v8 + 4), v9);
  return v9;
}

OSDataPtr OSDataCreate(const void *bytes, size_t length)
{
  if (length >> 24)
  {
    return 0;
  }

  v4 = (length + 3) & 0x1FFFFFC;
  if (v4 < length)
  {
    OSDataCreate_cold_1();
  }

  pObject = 0;
  if (OSObjectAllocate(gOSDataMetaClass, &pObject))
  {
    v2 = 0;
  }

  else
  {
    v2 = pObject;
  }

  v6 = IOMallocTyped(v4 + 4, 0x400A2AC0F1uLL);
  v2->ivars = v6;
  *v6 = length | 0xA000000;
  memcpy(v2->ivars + 4, bytes, length);
  return v2;
}

BOOL OSDataAppendBytes(OSDataPtr data, const void *bytes, size_t length)
{
  v4 = 0;
  ivars = data->ivars;
  v6 = *ivars & 0xFFFFFFLL;
  v7 = v6 + length;
  if (!__CFADD__(v6, length) && !(v7 >> 24))
  {
    v8 = (v7 + 3) & 0x1FFFFFC;
    if (v8 < v7)
    {
      OSDataAppendBytes_cold_1();
    }

    v11 = malloc_type_realloc(ivars, v8 + 4, 0x400A2AC0F1uLL);
    if (v11)
    {
      data->ivars = v11;
      *v11 = v7 | 0xA000000;
      memcpy(data->ivars + v6 + 4, bytes, length);
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return v4;
}

uint64_t OSSerializationGetUInt64Value(const unsigned int *a1)
{
  if ((*a1 & 0x7F000000) == 0x4000000)
  {
    return *(a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t OSNumberGetUInt64Value(OSNumberPtr obj)
{
  ivars = obj->ivars;
  if ((*ivars & 0x7F000000) == 0x4000000)
  {
    return *(ivars + 4);
  }

  else
  {
    return 0;
  }
}

OSNumberPtr OSNumberCreateWithUInt64Value(uint64_t value)
{
  pObject = 0;
  if (OSObjectAllocate(gOSNumberMetaClass, &pObject))
  {
    v2 = 0;
  }

  else
  {
    v2 = pObject;
  }

  v3 = IOMallocTyped(0xCuLL, 0x100004000313F17uLL);
  v2->ivars = v3;
  *v3 = 67108928;
  *(v2->ivars + 4) = value;
  return v2;
}

OSDictionaryPtr OSDictionaryCreate(void)
{
  pObject = 0;
  if (OSObjectAllocate(gOSDictionaryMetaClass, &pObject))
  {
    v0 = 0;
  }

  else
  {
    v0 = pObject;
  }

  v1 = IOMallocZeroTyped(0x28uLL, 0x1020040FBF3A4F7uLL);
  v0->ivars = v1;
  v0->ivars = v1;
  *v1 = 0x1000000;
  return v0;
}

BOOL OSDictionaryApply(OSDictionaryPtr obj, OSDictionaryApplier applier)
{
  OSDictionaryContainerize(obj);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 1107296256;
  v5[2] = __OSDictionaryApply_block_invoke;
  v5[3] = &__block_descriptor_tmp_23_0;
  v5[4] = applier;
  v5[5] = obj;
  return OSDictionaryInternalApply(obj, v5);
}

uint64_t OSDictionaryContainerize(uint64_t result)
{
  v1 = *(result + 64);
  if (!*(v1 + 32))
  {
    v2 = result;
    v3 = *(v1 + 20);
    *(v1 + 24) = v3;
    *(*(result + 64) + 32) = malloc_type_malloc(16 * v3, 0x1022040E8F85C7BuLL);
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 0x40000000;
    v5[2] = ___ZL24OSDictionaryContainerizeP12OSDictionary_block_invoke;
    v5[3] = &__block_descriptor_tmp_166;
    v5[4] = v2;
    v4 = *(v2 + 64);
    result = *(v4 + 8);
    if (result)
    {
      return OSSerializationDictionaryApply(result, *(v4 + 16), v5);
    }
  }

  return result;
}

uint64_t OSDictionaryInternalApply(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 64);
  if (*(v4 + 32))
  {
    v5 = 0;
    v6 = 0;
    do
    {
      v7 = *(a1 + 64);
      v8 = *(v7 + 20);
      v9 = v6 < v8;
      if (v6 >= v8)
      {
        break;
      }

      v10 = (*(a2 + 16))(a2, v6++, *(v7 + 8), *(*(v7 + 32) + v5), *(*(v7 + 32) + v5 + 8));
      v5 += 16;
    }

    while ((v10 & 1) == 0);
  }

  else
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 1107296256;
    v13[2] = ___ZL25OSDictionaryInternalApplyP12OSDictionaryU13block_pointerFbmP15OSSerialization17OSCollectionEntryS3_E_block_invoke;
    v13[3] = &__block_descriptor_tmp_170;
    v13[4] = a2;
    v13[5] = a1;
    v11 = *(v4 + 8);
    if (v11)
    {
      return OSSerializationDictionaryApply(v11, *(v4 + 16), v13);
    }

    else
    {
      return 0;
    }
  }

  return v9;
}

uint64_t __OSDictionaryApply_block_invoke(uint64_t a1, uint64_t a2, OSSerialization *a3, OSMetaClassBase *anObject, uint64_t a5)
{
  v6 = anObject;
  if (anObject)
  {
    *(*(*(*(a1 + 40) + 64) + 32) + 16 * a2) = OSCreateObjectFromSerializationInternal(a3, HIDWORD(anObject));
    v6 = *(*(*(*(a1 + 40) + 64) + 32) + 16 * a2);
  }

  if (!OSMetaClassBase::safeMetaCast(v6, gOSStringMetaClass))
  {
    __OSDictionaryApply_block_invoke_cold_2();
  }

  if (a5)
  {
    *(*(*(*(a1 + 40) + 64) + 32) + 16 * a2 + 8) = OSCreateObjectFromSerializationInternal(a3, HIDWORD(a5));
    a5 = *(*(*(*(a1 + 40) + 64) + 32) + 16 * a2 + 8);
  }

  if (!a5)
  {
    __OSDictionaryApply_block_invoke_cold_1();
  }

  v6[1].meta->__vftable;
  v10 = *(*(a1 + 32) + 16);

  return v10();
}

uint64_t OSDictionarySetValueInternal(OSDictionary *a1, unint64_t a2, unint64_t a3, OSObject *a4)
{
  if (!(a2 | a3))
  {
    OSDictionarySetValueInternal();
  }

  v5 = a3;
  v6 = a2;
  OSDictionaryContainerize(a1);
  ivars = a1->ivars;
  if (!*(ivars + 5))
  {
    LODWORD(v10) = 0;
LABEL_29:
    if (!a4)
    {
      return 1;
    }

LABEL_35:
    v26 = *(ivars + 5);
    if (v10 < v26)
    {
      return 1;
    }

    v27 = v26 + 1;
    if (v26 + 1 != (v26 + 1) << 31 >> 31)
    {
      return 0;
    }

    v29 = *(ivars + 6);
    if (v29 < v27)
    {
      if (v29 > 0xFFFFFFEF)
      {
        return 0;
      }

      v30 = v29 + 16;
      result = malloc_type_realloc(*(ivars + 4), 16 * (v29 + 16), 0x24C90C72uLL);
      if (!result)
      {
        return result;
      }

      *(a1->ivars + 4) = result;
      *(a1->ivars + 6) = v30;
    }

    if (v6)
    {
      (v6->retain)(v6);
    }

    else
    {
      v6 = OSStringCreate(v5, 0xFFFFFFFFFFFFFFFFLL);
    }

    *(*(a1->ivars + 4) + 16 * *(a1->ivars + 5)) = v6;
    *(*(a1->ivars + 4) + 16 * *(a1->ivars + 5) + 8) = a4;
    (a4->retain)(a4);
    *(a1->ivars + 5) = v27;
    return 1;
  }

  v9 = 0;
  v10 = 0;
  while (1)
  {
    v11 = *(*(ivars + 4) + v9);
    if ((v11 & 1) == 0)
    {
      break;
    }

    if (!v5)
    {
      v20 = OSMetaClassBase::safeMetaCast(v6, gOSStringMetaClass);
      if (!v20)
      {
        v5 = 0;
        goto LABEL_25;
      }

      meta = v20[1].meta;
      v22 = meta->__vftable;
      if ((meta->__vftable & 0x7E000000 | 0x1000000) == 0x9000000)
      {
        v23 = &meta->__vftable + 4;
        if ((v22 & 0x7FFFFFFF) == 0x8000000)
        {
          v5 = 0;
        }

        else
        {
          v5 = v23;
        }
      }

      else
      {
        v5 = 0;
      }
    }

    StringPtr = OSCollectionEntryGetStringPtr(*(a1->ivars + 1), *(*(a1->ivars + 4) + v9));
    if (StringPtr)
    {
      v13 = StringPtr;
      StringLength = OSSerializationGetStringLength((*(*(*(a1->ivars + 1) + 48) + 40) + 4 * *(*(a1->ivars + 4) + v9 + 4)));
      if (StringLength == strlen(v5) && !strncmp(v13, v5, StringLength))
      {
        goto LABEL_31;
      }
    }

LABEL_25:
    ++v10;
    ivars = a1->ivars;
    v9 += 16;
    if (v10 >= *(ivars + 5))
    {
      goto LABEL_29;
    }
  }

  if (v6)
  {
    if (v11 == v6)
    {
      goto LABEL_31;
    }

    goto LABEL_25;
  }

  v15 = OSMetaClassBase::safeMetaCast(v11, gOSStringMetaClass);
  if (!v15)
  {
    goto LABEL_25;
  }

  v16 = v15[1].meta;
  v18 = v16->__vftable;
  v17 = &v16->__vftable + 1;
  v19 = (v18 & 0x7FFFFFFF) == 0x8000000 ? 0 : v17;
  if (strcmp(v5, v19))
  {
    goto LABEL_25;
  }

LABEL_31:
  if (a4)
  {
    (a4->retain)(a4);
    v24 = *(a1->ivars + 4);
    v25 = *(v24 + v9 + 8);
    if ((v25 & 1) == 0)
    {
      (*(*v25 + 16))(v25);
      v24 = *(a1->ivars + 4);
    }

    *(v24 + v9 + 8) = a4;
    ivars = a1->ivars;
    goto LABEL_35;
  }

  v31 = a1->ivars;
  v32 = *(v31 + 4);
  v33 = *(v32 + v9 + 8);
  if ((v33 & 1) == 0)
  {
    (*(*v33 + 16))(v33);
    v31 = a1->ivars;
    v32 = *(v31 + 4);
  }

  v34 = *(v32 + v9);
  if ((v34 & 1) == 0)
  {
    (*(*v34 + 16))(v34);
    v31 = a1->ivars;
  }

  --*(v31 + 5);
  memmove((*(a1->ivars + 4) + v9), (*(a1->ivars + 4) + v9 + 16), 16 * (*(a1->ivars + 5) - v10));
  return 1;
}

uint64_t OSDictionaryGetValueInternal(OSDictionary *a1, OSObject *a2, const char *a3)
{
  v8 = 0;
  OSDictionaryContainerize(a1);
  result = OSDictionaryGetEntry(a1, a2, a3, &v8);
  if (result)
  {
    v7 = OSCreateObjectFromSerializationInternal(*(a1->ivars + 1), HIDWORD(result));
    *(*(a1->ivars + 4) + 16 * v8 + 8) = v7;
    return *(*(a1->ivars + 4) + 16 * v8 + 8);
  }

  return result;
}

const char *__cdecl OSDictionaryGetStringValue(OSDictionaryPtr obj, const char *key)
{
  result = OSDictionaryGetEntry(obj, 0, key, 0);
  if (result)
  {
    v4 = result;
    v5 = *(obj->ivars + 1);

    return OSCollectionEntryGetStringPtr(v5, v4);
  }

  return result;
}

uint64_t OSDictionaryGetEntry(OSDictionary *a1, OSObject *a2, const char *a3, unint64_t *a4)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v10 = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 1107296256;
  v6[2] = ___ZL20OSDictionaryGetEntryP12OSDictionaryP8OSObjectPKcPm_block_invoke;
  v6[3] = &__block_descriptor_tmp_175;
  v6[4] = &v7;
  v6[5] = a3;
  v6[6] = a2;
  v6[7] = a4;
  OSDictionaryInternalApply(a1, v6);
  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

OSMetaClassBase *OSCollectionEntryGetStringPtr(uint64_t a1, OSMetaClassBase *anObject)
{
  if (anObject)
  {
    meta = (*(*(a1 + 48) + 40) + 4 * (anObject >> 32));
  }

  else
  {
    result = OSMetaClassBase::safeMetaCast(anObject, gOSStringMetaClass);
    if (!result)
    {
      return result;
    }

    meta = result[1].meta;
  }

  v4 = meta->__vftable;
  if ((meta->__vftable & 0x7E000000 | 0x1000000) != 0x9000000)
  {
    return 0;
  }

  v5 = &meta->__vftable + 1;
  if ((v4 & 0x7FFFFFFF) == 0x8000000)
  {
    return 0;
  }

  else
  {
    return v5;
  }
}

void OSDictionarySetStringValue(OSDictionaryPtr obj, const char *key, const char *value)
{
  v5 = OSStringCreate(value, 0xFFFFFFFFFFFFFFFFLL);
  OSDictionarySetValueInternal(obj, 0, key, v5);
  release = v5->release;

  (release)(v5);
}

uint64_t OSDictionaryGetUInt64Value(OSDictionaryPtr obj, const char *key)
{
  result = OSDictionaryGetEntry(obj, 0, key, 0);
  if (result)
  {
    v4 = result;
    v5 = *(obj->ivars + 1);

    return OSCollectionEntryGetUInt64Value(v5, v4);
  }

  return result;
}

OSMetaClassBase *OSCollectionEntryGetUInt64Value(uint64_t a1, OSMetaClassBase *anObject)
{
  if (anObject)
  {
    meta = *(*(a1 + 48) + 40) + 4 * (anObject >> 32);
  }

  else
  {
    result = OSMetaClassBase::safeMetaCast(anObject, gOSNumberMetaClass);
    if (!result)
    {
      return result;
    }

    meta = result[1].meta;
  }

  if ((*meta & 0x7F000000) == 0x4000000)
  {
    return *(meta + 4);
  }

  else
  {
    return 0;
  }
}

void OSDictionarySetUInt64Value(OSDictionaryPtr obj, const char *key, uint64_t value)
{
  v5 = OSNumberCreateWithUInt64Value(value);
  OSDictionarySetValueInternal(obj, 0, key, v5);
  release = v5->release;

  (release)(v5);
}

OSArrayPtr OSArrayCreate(void)
{
  pObject = 0;
  if (OSObjectAllocate(gOSArrayMetaClass, &pObject))
  {
    v0 = 0;
  }

  else
  {
    v0 = pObject;
  }

  v1 = IOMallocZeroTyped(0x28uLL, 0x1020040FBF3A4F7uLL);
  v0->ivars = v1;
  v0->ivars = v1;
  *v1 = 0x2000000;
  return v0;
}

BOOL OSArrayApply(OSArrayPtr obj, OSArrayApplier applier)
{
  OSArrayContainerize(obj);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 1107296256;
  v5[2] = __OSArrayApply_block_invoke;
  v5[3] = &__block_descriptor_tmp_27;
  v5[4] = applier;
  v5[5] = obj;
  return OSArrayInternalApply(obj, 0, v5);
}

uint64_t OSArrayContainerize(uint64_t result)
{
  v1 = *(result + 64);
  if (!*(v1 + 32))
  {
    v2 = result;
    v3 = *(v1 + 20);
    *(v1 + 24) = v3;
    *(*(result + 64) + 32) = malloc_type_malloc(8 * v3, 0x102204002CF993AuLL);
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 0x40000000;
    v5[2] = ___ZL19OSArrayContainerizeP7OSArray_block_invoke;
    v5[3] = &__block_descriptor_tmp_177;
    v5[4] = v2;
    v4 = *(v2 + 64);
    result = *(v4 + 8);
    if (result)
    {
      return OSSerializationArrayApply(result, *(v4 + 16), 0, v5);
    }
  }

  return result;
}

uint64_t OSArrayInternalApply(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a1 + 64);
  if (*(v5 + 32))
  {
    v6 = a2;
    do
    {
      v7 = *(a1 + 64);
      v8 = *(v7 + 20);
      v9 = v6 < v8;
      if (v6 >= v8)
      {
        break;
      }

      v10 = (*(a3 + 16))(a3, v6, *(v7 + 8), *(*(v7 + 32) + 8 * v6));
      ++v6;
    }

    while ((v10 & 1) == 0);
  }

  else
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 1107296256;
    v13[2] = ___ZL20OSArrayInternalApplyP7OSArrayjU13block_pointerFbmP15OSSerialization17OSCollectionEntryE_block_invoke;
    v13[3] = &__block_descriptor_tmp_181;
    v13[4] = a3;
    v13[5] = a1;
    v11 = *(v5 + 8);
    if (v11)
    {
      return OSSerializationArrayApply(v11, *(v5 + 16), a2, v13);
    }

    else
    {
      return 0;
    }
  }

  return v9;
}

uint64_t __OSArrayApply_block_invoke(uint64_t a1, uint64_t a2, OSSerialization *a3, uint64_t a4)
{
  if (a4)
  {
    *(*(*(*(a1 + 40) + 64) + 32) + 8 * a2) = OSCreateObjectFromSerializationInternal(a3, HIDWORD(a4));
    v6 = *(*(*(*(a1 + 40) + 64) + 32) + 8 * a2);
  }

  v7 = *(*(a1 + 32) + 16);

  return v7();
}

uint64_t OSArraySetValueInternal(OSArray *a1, unint64_t a2, OSObject *a3, int a4)
{
  OSArrayContainerize(a1);
  if (!a3 && a4 == 1)
  {
    return 0;
  }

  if (a3)
  {
    v9 = a4 ^ 1;
  }

  else
  {
    v9 = 0;
  }

  if ((v9 & 1) == 0)
  {
    ivars = a1->ivars;
    v17 = *(ivars + 5);
    if (v17 > a2)
    {
      if (!a3)
      {
        LODWORD(v13) = *(ivars + 5);
        goto LABEL_22;
      }

      v12 = a2;
      LODWORD(v13) = *(ivars + 5);
LABEL_19:
      (a3->retain)(a3);
      if (v9)
      {
        goto LABEL_27;
      }

      ivars = a1->ivars;
      v17 = *(ivars + 5);
      a2 = v12;
LABEL_22:
      if (a2 < v17)
      {
        v18 = *(*(ivars + 4) + 8 * a2);
        if ((v18 & 1) == 0)
        {
          (*(*v18 + 16))(v18);
        }
      }

      if (!a3)
      {
        v19 = a1->ivars;
        v13 = (*(v19 + 5) - 1);
        memmove((*(v19 + 4) + 8 * a2), (*(v19 + 4) + 8 * a2 + 8), 8 * (v13 - a2));
LABEL_31:
        *(a1->ivars + 5) = v13;
        return 1;
      }

      v12 = a2;
LABEL_27:
      if ((a4 & 1) == 0)
      {
        memmove((*(a1->ivars + 4) + 8 * v12 + 8), (*(a1->ivars + 4) + 8 * v12), 8 * (*(a1->ivars + 5) - v12));
      }

      *(*(a1->ivars + 4) + 8 * v12) = a3;
      goto LABEL_31;
    }

    return 0;
  }

  v10 = a1->ivars;
  v11 = *(v10 + 5);
  v12 = v11;
  if (a2 != -1)
  {
    v12 = a2;
    if (v11 < a2)
    {
      return 0;
    }
  }

  LODWORD(v13) = v11 + 1;
  if (v11 + 1 != ((v11 + 1) << 31) >> 31)
  {
    return 0;
  }

  v14 = *(v10 + 6);
  if (v14 >= v13)
  {
    goto LABEL_19;
  }

  if (v14 > 0xFFFFFFEF)
  {
    return 0;
  }

  v15 = v14 + 16;
  result = malloc_type_realloc(*(v10 + 4), 8 * (v14 + 16), 0x1FCA4A1uLL);
  if (result)
  {
    *(a1->ivars + 4) = result;
    *(a1->ivars + 6) = v15;
    goto LABEL_19;
  }

  return result;
}

uint64_t OSArrayGetEntry(OSArray *a1, unint64_t a2)
{
  ivars = a1->ivars;
  if (*(ivars + 5) <= a2)
  {
    return 0;
  }

  else
  {
    return *(*(ivars + 4) + 8 * a2);
  }
}

OSObjectPtr OSArrayGetValue(OSArrayPtr obj, size_t index)
{
  OSArrayContainerize(obj);
  ivars = obj->ivars;
  if (*(ivars + 5) <= index)
  {
    return 0;
  }

  result = *(*(ivars + 4) + 8 * index);
  if (result)
  {
    *(*(obj->ivars + 4) + 8 * index) = OSCreateObjectFromSerializationInternal(*(ivars + 1), HIDWORD(result));
    return *(*(obj->ivars + 4) + 8 * index);
  }

  return result;
}

const char *__cdecl OSArrayGetStringValue(OSArrayPtr obj, size_t index)
{
  ivars = obj->ivars;
  if (*(ivars + 5) > index && (v3 = *(*(ivars + 4) + 8 * index)) != 0)
  {
    return OSCollectionEntryGetStringPtr(*(ivars + 1), v3);
  }

  else
  {
    return 0;
  }
}

void OSArraySetStringValue(OSArrayPtr obj, size_t index, const char *value)
{
  v5 = OSStringCreate(value, 0xFFFFFFFFFFFFFFFFLL);
  OSArraySetValueInternal(obj, index, v5, 0);
  release = v5->release;

  (release)(v5);
}

uint64_t OSArrayGetUInt64Value(OSArrayPtr obj, size_t index)
{
  ivars = obj->ivars;
  if (*(ivars + 5) > index && (v3 = *(*(ivars + 4) + 8 * index)) != 0)
  {
    return OSCollectionEntryGetUInt64Value(*(ivars + 1), v3);
  }

  else
  {
    return 0;
  }
}

OSMetaClassBase *OSArrayGetString(OSArray *a1, unint64_t a2)
{
  ivars = a1->ivars;
  if (*(ivars + 5) > a2 && (v3 = *(*(ivars + 4) + 8 * a2)) != 0)
  {
    return OSCollectionEntryGetStringPtr(*(ivars + 1), v3);
  }

  else
  {
    return 0;
  }
}

uint64_t OSArraySetString(OSArray *a1, unint64_t a2, const char *cstring)
{
  v5 = OSStringCreate(cstring, 0xFFFFFFFFFFFFFFFFLL);
  OSArraySetValueInternal(a1, a2, v5, 0);
  release = v5->release;

  return (release)(v5);
}

OSMetaClassBase *OSArrayGetUInt64(OSArray *a1, unint64_t a2)
{
  ivars = a1->ivars;
  if (*(ivars + 5) > a2 && (v3 = *(*(ivars + 4) + 8 * a2)) != 0)
  {
    return OSCollectionEntryGetUInt64Value(*(ivars + 1), v3);
  }

  else
  {
    return 0;
  }
}

void OSArraySetUInt64Value(OSArrayPtr obj, size_t index, uint64_t value)
{
  v5 = OSNumberCreateWithUInt64Value(value);
  OSArraySetValueInternal(obj, index, v5, 0);
  release = v5->release;

  (release)(v5);
}

uint64_t OSSerializationAppendBytes(OSSerialization *a1, const void *__src, size_t __len)
{
  ivars = a1->ivars;
  if (*(ivars + 1))
  {
    OSSerializationAppendBytes();
  }

  v5 = *(ivars + 4);
  v6 = v5 + __len;
  if (__CFADD__(v5, __len))
  {
    OSSerializationAppendBytes();
  }

  if (v6 > *(ivars + 3))
  {
    v9 = v6 + IOVMPageSize - 1;
    if (__CFADD__(v6, IOVMPageSize - 1))
    {
      return 0;
    }

    v11 = v9 & -IOVMPageSize;
    address = 0;
    v12 = MEMORY[0x277D85F48];
    if (vm_allocate(*MEMORY[0x277D85F48], &address, v9 & -IOVMPageSize, 1))
    {
      OSSerializationAppendBytes();
    }

    v13 = a1->ivars;
    v14 = *(v13 + 4);
    v15 = *(v13 + 2);
    if (v14)
    {
      v16 = v15 == 0;
    }

    else
    {
      v16 = 0;
    }

    if (v16)
    {
      OSSerializationAppendBytes();
    }

    v17 = address;
    memmove(address, v15, v14);
    v18 = a1->ivars;
    if (*(v18 + 3))
    {
      if (MEMORY[0x2383EC880](*v12, *(v18 + 2)))
      {
        OSSerializationAppendBytes();
      }

      v18 = a1->ivars;
    }

    *(v18 + 2) = v17;
    *(a1->ivars + 3) = v11;
    ivars = a1->ivars;
    v5 = *(ivars + 4);
  }

  memmove((v5 + *(ivars + 2)), __src, __len);
  *(a1->ivars + 4) += __len;
  return 1;
}

uint64_t OSSerializationAddBinaryObject(OSSerialization *a1, OSSerialization *a2, OSMetaClassBase *anObject)
{
  if (anObject)
  {
    if (!a2)
    {
      OSSerializationAddBinaryObject();
    }

    ivars = a2->ivars;
    if (*(ivars + 12) <= HIDWORD(anObject))
    {
      OSSerializationAddBinaryObject();
    }

    meta = (*(ivars + 5) + 4 * (anObject >> 32));
    v6 = OSSerializationSize(a2, HIDWORD(anObject));
  }

  else
  {
    v4 = OSMetaClassBase::safeMetaCast(anObject, gOSContainerMetaClass);
    if (!v4)
    {
      return 0;
    }

    meta = v4[1].meta;
    v6 = OSSerializationSize(meta, 1);
  }

  v8 = v6;
  if (v6)
  {
    v9 = meta == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    OSSerializationAddBinaryObject();
  }

  v10 = *meta;
  __src = *meta & 0x7FFFFFFF;
  v11 = a1->ivars;
  if (*(v11 + 52) == 1)
  {
    *(v11 + 52) = 0;
    __src = v10 | 0x80000000;
  }

  if (!OSSerializationAppendBytes(a1, &__src, 4uLL))
  {
    return 0;
  }

  return OSSerializationAppendBytes(a1, meta + 1, 4 * (v8 - 1));
}

uint64_t OSSerializationSize(OSSerialization *a1, unsigned int a2)
{
  ivars = a1->ivars;
  v4 = *(ivars + 12);
  v5 = v4 >= a2;
  v6 = v4 - a2;
  if (v6 == 0 || !v5)
  {
    OSSerializationSize();
  }

  result = OSSerializationSize((*(ivars + 5) + 4 * a2), v6);
  if (result + a2 > *(a1->ivars + 12))
  {
    OSSerializationSize();
  }

  return result;
}

uint64_t OSSerializationSize(const unsigned int *a1, int a2)
{
  if (!a2)
  {
    OSSerializationSize();
  }

  v2 = ((*a1 & 0x7F000000) - 0x1000000) >> 24;
  if (v2 > 6)
  {
    if (v2 - 7 < 3)
    {
      return (((*a1 & 0xFFFFFF) + 3) >> 2) + 1;
    }

    if (v2 - 10 < 2)
    {
      return 1;
    }

LABEL_16:
    OSSerializationSize();
  }

  if (v2 >= 3)
  {
    if (v2 != 3)
    {
      goto LABEL_16;
    }

    return 3;
  }

  else
  {
    if (a2 == 1)
    {
      OSSerializationSize();
    }

    result = a1[1];
    if (BYTE3(result))
    {
      OSSerializationSize();
    }
  }

  return result;
}

uint64_t OSSerializeEntry(OSSerialization *a1, OSSerialization *a2, OSObjectPtr obj)
{
  v6 = OSCollectionEntryTypeID(a2, obj);
  result = 0;
  if (v6 > 0xB)
  {
    return result;
  }

  if (((1 << v6) & 0xF10) != 0)
  {

    return OSSerializationAddBinaryObject(a1, a2, obj);
  }

  if (((1 << v6) & 0xC) != 0)
  {
    v8 = *(a1->ivars + 4);
    if (OSCollectionEntryTypeID(a2, obj) == 2)
    {
      v9 = 0x2000000;
    }

    else
    {
      v9 = 50331648;
    }

    if (obj)
    {
      if (!a2)
      {
        OSSerializeEntry();
      }

      v14 = *(*(a2->ivars + 5) + ((obj >> 30) & 0x3FFFFFFFCLL));
      if ((v14 & 0x7E000000) != 0x2000000)
      {
        OSSerializeEntry();
      }

      meta_high = v14 & 0xFFFFFF;
    }

    else
    {
      v10 = OSMetaClassBase::safeMetaCast(obj, gOSArrayMetaClass);
      if (v10)
      {
        meta_high = HIDWORD(v10[2].meta->meta);
      }

      else
      {
        meta_high = 0;
      }
    }

    __src = meta_high | v9;
    ivars = a1->ivars;
    if (*(ivars + 52) == 1)
    {
      *(ivars + 52) = 0;
      __src = meta_high | v9 | 0x80000000;
    }

    result = OSSerializationAppendBytes(a1, &__src, 4uLL);
    if (result)
    {
      v22 = 0;
      result = OSSerializationAppendBytes(a1, &v22, 4uLL);
      if (result)
      {
        v18[0] = MEMORY[0x277D85DD0];
        v18[1] = 0x40000000;
        v18[2] = ___Z16OSSerializeEntryP15OSSerializationS0_17OSCollectionEntry_block_invoke_2;
        v18[3] = &__block_descriptor_tmp_34;
        v18[4] = a1;
        v19 = meta_high;
        if (obj)
        {
          if (!a2)
          {
            OSSerializeEntry();
          }

          v24 = MEMORY[0x277D85DD0];
          v25 = 1107296256;
          v26 = ___ZL27OSCollectionEntryArrayApplyP15OSSerialization17OSCollectionEntryU13block_pointerFbmS0_S1_E_block_invoke;
          v27 = &__block_descriptor_tmp_190;
          v28 = v18;
          v29 = a2;
          if ((OSSerializationArrayApply(a2, HIDWORD(obj), 0, &v24) & 1) == 0)
          {
            goto LABEL_31;
          }
        }

        else
        {
          result = OSMetaClassBase::safeMetaCast(obj, gOSArrayMetaClass);
          if (!result)
          {
            return result;
          }

          if ((OSArrayInternalApply(result, 0, v18) & 1) == 0)
          {
            goto LABEL_31;
          }
        }

        return 0;
      }
    }
  }

  else if (v6 == 1)
  {
    v8 = *(a1->ivars + 4);
    if (obj)
    {
      if (!a2)
      {
        OSSerializeEntry();
      }

      v15 = *(*(a2->ivars + 5) + ((obj >> 30) & 0x3FFFFFFFCLL));
      if ((v15 & 0x7F000000) != 0x1000000)
      {
        OSSerializeEntry();
      }

      v13 = v15 & 0xFFFFFF;
    }

    else
    {
      v12 = OSMetaClassBase::safeMetaCast(obj, gOSDictionaryMetaClass);
      v13 = v12 ? HIDWORD(v12[2].meta->meta) : 0;
    }

    __src = v13 | 0x1000000;
    v17 = a1->ivars;
    if (*(v17 + 52) == 1)
    {
      *(v17 + 52) = 0;
      __src = v13 | 0x81000000;
    }

    result = OSSerializationAppendBytes(a1, &__src, 4uLL);
    if (result)
    {
      v22 = 0;
      result = OSSerializationAppendBytes(a1, &v22, 4uLL);
      if (result)
      {
        v20[0] = MEMORY[0x277D85DD0];
        v20[1] = 0x40000000;
        v20[2] = ___Z16OSSerializeEntryP15OSSerializationS0_17OSCollectionEntry_block_invoke;
        v20[3] = &__block_descriptor_tmp_33;
        v20[4] = a1;
        v21 = v13;
        if (obj)
        {
          if (!a2)
          {
            OSSerializeEntry();
          }

          v24 = MEMORY[0x277D85DD0];
          v25 = 1107296256;
          v26 = ___ZL32OSCollectionEntryDictionaryApplyP15OSSerialization17OSCollectionEntryU13block_pointerFbmS0_S1_S1_E_block_invoke;
          v27 = &__block_descriptor_tmp_187;
          v28 = v20;
          v29 = a2;
          if ((OSSerializationDictionaryApply(a2, HIDWORD(obj), &v24) & 1) == 0)
          {
            goto LABEL_31;
          }
        }

        else
        {
          result = OSMetaClassBase::safeMetaCast(obj, gOSDictionaryMetaClass);
          if (!result)
          {
            return result;
          }

          if ((OSDictionaryInternalApply(result, v20) & 1) == 0)
          {
LABEL_31:
            *(*(a1->ivars + 2) + v8 + 4) = (*(a1->ivars + 8) - v8) >> 2;
            return 1;
          }
        }

        return 0;
      }
    }
  }

  return result;
}

OSCollectionType OSCollectionEntryTypeID(uint64_t a1, OSObjectPtr obj)
{
  if (obj)
  {
    if (!a1)
    {
      OSCollectionEntryTypeID();
    }

    v3 = *(a1 + 48);
    if (*(v3 + 48) <= HIDWORD(obj))
    {
      OSCollectionEntryTypeID();
    }

    v4 = *(*(v3 + 40) + 4 * (obj >> 32));

    return OSSerializationTypeID(v4);
  }

  else
  {

    return OSCollectionTypeID(obj);
  }
}

uint64_t ___Z16OSSerializeEntryP15OSSerializationS0_17OSCollectionEntry_block_invoke(uint64_t a1, uint64_t a2, int a3, OSObjectPtr obj, OSObject *a5)
{
  v9 = OSSerializeEntry(*(a1 + 32), a3, obj);
  v10 = *(a1 + 32);
  *(*(v10 + 48) + 52) = *(a1 + 40) - 1 == a2;
  if (v9)
  {
    return OSSerializeEntry(v10, a3, a5) ^ 1;
  }

  else
  {
    return 1;
  }
}

uint64_t ___Z16OSSerializeEntryP15OSSerializationS0_17OSCollectionEntry_block_invoke_2(uint64_t a1, uint64_t a2, int a3, OSObjectPtr obj)
{
  v4 = *(a1 + 40) - 1 == a2;
  v5 = *(a1 + 32);
  *(*(v5 + 48) + 52) = v4;
  return OSSerializeEntry(v5, a3, obj) ^ 1;
}

OSSerializationPtr OSCreateSerializationFromObject(OSObjectPtr obj)
{
  pObject = 0;
  v2 = OSObjectAllocate(gOSSerializationMetaClass, &pObject);
  v3 = pObject;
  if (v2)
  {
    v4 = 0;
  }

  else
  {
    v4 = pObject;
  }

  v5 = IOMallocZeroTyped(0x38uLL, 0x10D20405E9062E8uLL);
  v4->ivars = v5;
  v4->ivars = v5;
  *v5 = 218103808;
  *(v4->ivars + 2) = 0;
  *(v4->ivars + 3) = 0;
  *(v4->ivars + 4) = 0;
  *(v4->ivars + 5) = *(v4->ivars + 2);
  *(v4->ivars + 12) = *(v4->ivars + 4) >> 2;
  *(v4->ivars + 52) = 1;
  __src = 212;
  if (OSSerializationAppendBytes(v4, &__src, 4uLL) && OSSerializeEntry(v4, 0, obj))
  {
    *(v4->ivars + 5) = *(v4->ivars + 2);
    *(v4->ivars + 12) = *(v4->ivars + 4) >> 2;
  }

  else
  {
    (v4->release)(v4);
    return 0;
  }

  return v3;
}

OSSerializationPtr OSCreateSerializationFromBytes(const void *bytes, size_t length, OSSerializationFreeBufferHandler freeBuffer)
{
  v3 = 0;
  if (length < 4 || (bytes & 3) != 0 || !freeBuffer)
  {
    return v3;
  }

  v7 = *bytes;
  if (v7 == 212)
  {
    goto LABEL_9;
  }

  if (v7 != 211)
  {
    if (211 != v7)
    {
      goto LABEL_7;
    }

LABEL_9:
    v8 = 0;
    goto LABEL_10;
  }

  if (!*(bytes + 1))
  {
    goto LABEL_9;
  }

LABEL_7:
  v8 = *(bytes + length - 1) == 0;
LABEL_10:
  v9 = v7 == 212;
  pObject = 0;
  if (OSObjectAllocate(gOSSerializationMetaClass, &pObject))
  {
    v3 = 0;
  }

  else
  {
    v3 = pObject;
  }

  v10 = IOMallocZeroTyped(0x38uLL, 0x10D20405E9062E8uLL);
  v3->ivars = v10;
  v3->ivars = v10;
  *v10 = 218103808;
  *(v3->ivars + 1) = _Block_copy(freeBuffer);
  *(v3->ivars + 2) = bytes;
  *(v3->ivars + 4) = length;
  *(v3->ivars + 5) = *(v3->ivars + 2);
  *(v3->ivars + 54) = v8;
  *(v3->ivars + 53) = v9;
  *(v3->ivars + 12) = *(v3->ivars + 4) >> 2;
  if (*(v3->ivars + 12) <= 1u)
  {
    OSCreateSerializationFromBytes_cold_1();
  }

  return v3;
}

const void *__cdecl OSSerializationGetBytes(OSSerializationPtr serial, size_t *length)
{
  if (length)
  {
    *length = *(serial->ivars + 4);
  }

  return *(serial->ivars + 2);
}

void OSObjectLogInternal(OSObject *a1, unsigned int a2)
{
  v38 = *MEMORY[0x277D85DE8];
  v33 = 0;
  v34 = &v33;
  v35 = 0x2000000000;
  v36 = 0;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2000000000;
  v32 = __b;
  if (a2 >= 0xFF)
  {
    v3 = 255;
  }

  else
  {
    v3 = a2;
  }

  memset(__b, 32, v3);
  __b[v3] = 0;
  if (!a1)
  {
    IOLog("%s<NULL>\n");
    goto LABEL_35;
  }

  v4 = OSCollectionTypeID(a1);
  v5 = v30[3];
  v6 = OSCollectionTypeName(v4);
  IOLog("%s%s\n", v5, v6);
  if (v4 <= 7)
  {
    if ((v4 - 2) < 2)
    {
      *(v34 + 6) = 0;
      v10 = OSMetaClassBase::requiredMetaCast(a1, gOSArrayMetaClass);
      applier[0] = MEMORY[0x277D85DD0];
      applier[1] = 1107296256;
      applier[2] = ___Z19OSObjectLogInternalP8OSObjectj_block_invoke_42;
      applier[3] = &__block_descriptor_tmp_47;
      applier[4] = &v29;
      applier[5] = &v33;
      v26 = v3;
      OSArrayApply(v10, applier);
      goto LABEL_35;
    }

    if (v4 == 1)
    {
      *(v34 + 6) = 0;
      v13 = OSMetaClassBase::requiredMetaCast(a1, gOSDictionaryMetaClass);
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 1107296256;
      v27[2] = ___Z19OSObjectLogInternalP8OSObjectj_block_invoke;
      v27[3] = &__block_descriptor_tmp_41;
      v27[4] = &v29;
      v27[5] = &v33;
      v28 = v3;
      OSDictionaryApply(v13, v27);
      goto LABEL_35;
    }

    if (v4 == 4)
    {
      meta = OSMetaClassBase::requiredMetaCast(a1, gOSNumberMetaClass)[1].meta;
      if ((meta->__vftable & 0x7F000000) == 0x4000000)
      {
        v8 = *(&meta->__vftable + 4);
      }

      v23 = v30[3];
      IOLog("%s%qd\n");
      goto LABEL_35;
    }

LABEL_25:
    IOLog("\n");
    goto LABEL_35;
  }

  if ((v4 - 8) >= 2)
  {
    if (v4 == 10)
    {
      v14 = OSMetaClassBase::requiredMetaCast(a1, gOSDataMetaClass)[1].meta;
      v16 = v14->__vftable;
      v15 = &v14->__vftable + 4;
      v17 = v16 & 0x7F000000;
      if ((v16 & 0xFFFFFF) != 0 && v17 == 167772160)
      {
        v19 = v15;
      }

      else
      {
        v19 = 0;
      }

      v20 = OSMetaClassBase::requiredMetaCast(a1, gOSDataMetaClass);
      IOLogBuffer("content:", v19, v20[1].meta->__vftable & 0xFFFFFF);
      goto LABEL_35;
    }

    if (v4 == 11)
    {
      if (kOSBooleanTrue == a1)
      {
        v9 = "%strue";
      }

      else
      {
        v9 = "%sfalse\n";
      }

      IOLog(v9, v30[3], v24);
      goto LABEL_35;
    }

    goto LABEL_25;
  }

  v11 = OSMetaClassBase::requiredMetaCast(a1, gOSStringMetaClass)[1].meta;
  if ((v11->__vftable & 0x7E000000 | 0x1000000) != 0x9000000 || (v11->__vftable & 0x7FFFFFFF) == 0x8000000)
  {
    OSObjectLogInternal();
  }

  v22 = v30[3];
  IOLog("%s%s\n");
LABEL_35:
  _Block_object_dispose(&v29, 8);
  _Block_object_dispose(&v33, 8);
  v21 = *MEMORY[0x277D85DE8];
}

uint64_t ___Z19OSObjectLogInternalP8OSObjectj_block_invoke(uint64_t a1, const char *a2, OSObject *a3)
{
  IOLog("%s[%d] key:%s\n", *(*(*(a1 + 32) + 8) + 24), *(*(*(a1 + 40) + 8) + 24), a2);
  OSObjectLogInternal(a3, *(a1 + 48) + 1);
  ++*(*(*(a1 + 40) + 8) + 24);
  return 0;
}

uint64_t ___Z19OSObjectLogInternalP8OSObjectj_block_invoke_42(uint64_t a1, OSObject *a2)
{
  IOLog("%s[%d]:\n", *(*(*(a1 + 32) + 8) + 24), *(*(*(a1 + 40) + 8) + 24));
  OSObjectLogInternal(a2, *(a1 + 48) + 1);
  ++*(*(*(a1 + 40) + 8) + 24);
  return 0;
}

BOOL OSDictionary::isEqualTo(const OSDictionary *this, const OSMetaClassBase *anObject)
{
  v3 = OSMetaClassBase::safeMetaCast(anObject, gOSDictionaryMetaClass);
  if (v3)
  {

    LOBYTE(v3) = OSDictionary::isEqualTo(this, v3);
  }

  return v3;
}

BOOL OSDictionary::isEqualTo(const OSDictionary *this, const OSDictionary *aDictionary)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 1;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 1107296256;
  v4[2] = ___ZNK12OSDictionary9isEqualToEPKS__block_invoke;
  v4[3] = &__block_descriptor_tmp_59;
  v4[4] = &v5;
  v4[5] = this;
  OSDictionary::iterateObjects(aDictionary, v4);
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

void OSDictionary::flushCollection(OSDictionary *this)
{
  ivars = this->ivars;
  v3 = *(ivars + 4);
  if (v3)
  {
    if (*(ivars + 5))
    {
      v4 = 0;
      v5 = 0;
      do
      {
        v6 = *(ivars + 4);
        v7 = *(v6 + v4);
        if ((v7 & 1) == 0)
        {
          (*(*v7 + 16))(v7);
          ivars = this->ivars;
          v6 = *(ivars + 4);
        }

        v8 = *(v6 + v4 + 8);
        if ((v8 & 1) == 0)
        {
          (*(*v8 + 16))(v8);
          ivars = this->ivars;
        }

        ++v5;
        v4 += 16;
      }

      while (v5 < *(ivars + 5));
      v3 = *(ivars + 4);
    }

    free(v3);
    *(this->ivars + 4) = 0;
    ivars = this->ivars;
  }

  v9 = *(ivars + 1);
  if (v9)
  {
    (*(*v9 + 16))(v9);
    *(this->ivars + 1) = 0;
    ivars = this->ivars;
  }

  *(ivars + 5) = 0;
}

void OSDictionary::free(OSDictionary *this)
{
  (this->flushCollection)(this);
  ivars = this->ivars;
  if (ivars)
  {
    IOFree(ivars, 0x28uLL);
    this->ivars = 0;
  }

  this->ivars = 0;

  OSObject::free(this);
}

OSDictionaryPtr OSDictionary::withObjects(const OSObject **values, const OSObject **keys, uint32_t count, uint32_t capacity)
{
  v7 = OSDictionaryCreate();
  if (v7 && count)
  {
    v8 = 0;
    do
    {
      v9 = OSDictionarySetValueInternal(v7, keys[v8], 0, values[v8]);
      ++v8;
      if (v9)
      {
        v10 = v8 >= count;
      }

      else
      {
        v10 = 1;
      }
    }

    while (!v10);
    if ((v9 & 1) == 0)
    {
      (v7->release)(v7);
      return 0;
    }
  }

  return v7;
}

OSDictionaryPtr OSDictionary::withDictionary(const OSDictionary *dictionary, uint32_t capacity)
{
  v3 = OSDictionaryCreate();
  v4 = OSDictionary::merge(v3, dictionary);
  if (v3 && !v4)
  {
    (v3->release)(v3);
    return 0;
  }

  return v3;
}

BOOL OSDictionary::merge(OSDictionary *this, const OSDictionary *otherDictionary)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 1;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 1107296256;
  v4[2] = ___ZN12OSDictionary5mergeEPKS__block_invoke;
  v4[3] = &__block_descriptor_tmp_56;
  v4[4] = &v5;
  v4[5] = this;
  OSDictionary::iterateObjects(otherDictionary, v4);
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

BOOL OSDictionary::iterateObjects(const OSDictionary *this, OSDictionaryIterateObjectsBlock block)
{
  OSDictionaryContainerize(this);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 1107296256;
  v5[2] = ___ZL26OSDictionaryIterateObjectsP12OSDictionaryU13block_pointerFbP8OSObjectS2_E_block_invoke;
  v5[3] = &__block_descriptor_tmp_194;
  v5[4] = block;
  v5[5] = this;
  return OSDictionaryInternalApply(this, v5);
}

BOOL ___ZNK12OSDictionary9isEqualToEPKS__block_invoke(uint64_t a1, OSObject *a2, uint64_t a3)
{
  ValueInternal = OSDictionaryGetValueInternal(*(a1 + 40), a2, 0);
  *(*(*(a1 + 32) + 8) + 24) &= (*(*a3 + 24))(a3, ValueInternal);
  return (*(*(*(a1 + 32) + 8) + 24) & 1) == 0;
}

BOOL OSDictionary::isEqualTo(const OSDictionary *this, const OSDictionary *aDictionary, const OSCollection *keys)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2000000000;
  v9 = 1;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 1107296256;
  v5[2] = ___ZNK12OSDictionary9isEqualToEPKS_PK12OSCollection_block_invoke;
  v5[3] = &__block_descriptor_tmp_62;
  v5[5] = this;
  v5[6] = aDictionary;
  v5[4] = &v6;
  (keys->iterateObjects)(keys, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t ___ZNK12OSDictionary9isEqualToEPKS_PK12OSCollection_block_invoke(uint64_t a1, OSObject *a2)
{
  v4 = *(a1 + 40);
  ValueInternal = OSDictionaryGetValueInternal(*(a1 + 48), a2, 0);
  if (ValueInternal)
  {
    v6 = ValueInternal;
    v7 = OSDictionaryGetValueInternal(v4, a2, 0);
    if (v7)
    {
      LOBYTE(v7) = (*(*v7 + 24))(v7, v6);
    }

    *(*(*(a1 + 32) + 8) + 24) &= v7;
    v8 = *(*(*(a1 + 32) + 8) + 24) ^ 1;
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

BOOL OSDictionary::iterateObjects(const OSDictionary *this, OSCollectionIterateObjectsBlock block)
{
  blocka[0] = MEMORY[0x277D85DD0];
  blocka[1] = 1107296256;
  blocka[2] = ___ZNK12OSDictionary14iterateObjectsEU13block_pointerFbP8OSObjectE_block_invoke;
  blocka[3] = &__block_descriptor_tmp_65;
  blocka[4] = block;
  return OSDictionary::iterateObjects(this, blocka);
}

BOOL non-virtual thunk toOSDictionary::iterateObjects(uint64_t a1, uint64_t a2)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 1107296256;
  block[2] = ___ZNK12OSDictionary14iterateObjectsEU13block_pointerFbP8OSObjectE_block_invoke;
  block[3] = &__block_descriptor_tmp_65;
  block[4] = a2;
  return OSDictionary::iterateObjects((a1 - 48), block);
}

BOOL OSArray::isEqualTo(const OSArray *this, const OSMetaClassBase *anObject)
{
  v3 = OSMetaClassBase::safeMetaCast(anObject, gOSArrayMetaClass);
  if (v3)
  {

    LOBYTE(v3) = OSArray::isEqualTo(this, v3);
  }

  return v3;
}

BOOL OSArray::isEqualTo(const OSArray *this, const OSArray *anArray)
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2000000000;
  v15 = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2000000000;
  v11 = 0;
  v4 = (this->getCount)(this);
  v5 = 0;
  if (v4 == (anArray->getCount)(anArray))
  {
    *(v13 + 24) = 1;
    *(v9 + 6) = 0;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 1107296256;
    v7[2] = ___ZNK7OSArray9isEqualToEPKS__block_invoke;
    v7[3] = &__block_descriptor_tmp_71_0;
    v7[5] = &v12;
    v7[6] = this;
    v7[4] = &v8;
    (anArray->iterateObjects)(anArray, v7);
    v5 = *(v13 + 24);
  }

  _Block_object_dispose(&v8, 8);
  _Block_object_dispose(&v12, 8);
  return v5 & 1;
}

void OSArray::flushCollection(OSArray *this)
{
  ivars = this->ivars;
  v3 = *(ivars + 4);
  if (v3)
  {
    if (*(ivars + 5))
    {
      v4 = 0;
      do
      {
        v5 = *(*(ivars + 4) + 8 * v4);
        if ((v5 & 1) == 0)
        {
          (*(*v5 + 16))(v5);
          ivars = this->ivars;
        }

        ++v4;
      }

      while (v4 < *(ivars + 5));
      v3 = *(ivars + 4);
    }

    free(v3);
    *(this->ivars + 4) = 0;
    ivars = this->ivars;
  }

  v6 = *(ivars + 1);
  if (v6)
  {
    (*(*v6 + 16))(v6);
    *(this->ivars + 1) = 0;
    ivars = this->ivars;
  }

  *(ivars + 5) = 0;
}

void OSArray::free(OSArray *this)
{
  (this->flushCollection)(this);
  ivars = this->ivars;
  if (ivars)
  {
    IOFree(ivars, 0x28uLL);
    this->ivars = 0;
  }

  this->ivars = 0;

  OSObject::free(this);
}

OSArrayPtr OSArray::withObjects(const OSObject **values, uint32_t count, uint32_t capacity)
{
  v5 = OSArrayCreate();
  if (v5 && count)
  {
    v6 = 1;
    do
    {
      v7 = *values++;
      v8 = OSArraySetValueInternal(v5, 0xFFFFFFFFFFFFFFFFLL, v7, 0);
      if (v8)
      {
        v9 = v6 >= count;
      }

      else
      {
        v9 = 1;
      }

      ++v6;
    }

    while (!v9);
    if ((v8 & 1) == 0)
    {
      (v5->release)(v5);
      return 0;
    }
  }

  return v5;
}

OSArrayPtr OSArray::withArray(const OSArray *array, uint32_t capacity)
{
  v3 = OSArrayCreate();
  v4 = OSArray::merge(v3, array);
  if (v3 && !v4)
  {
    (v3->release)(v3);
    return 0;
  }

  return v3;
}

BOOL OSArray::merge(OSArray *this, const OSArray *otherArray)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 1;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 1107296256;
  v4[2] = ___ZN7OSArray5mergeEPKS__block_invoke;
  v4[3] = &__block_descriptor_tmp_68;
  v4[4] = &v5;
  v4[5] = this;
  (otherArray->iterateObjects)(otherArray, v4);
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

BOOL ___ZNK7OSArray9isEqualToEPKS__block_invoke(uint64_t a1, uint64_t a2)
{
  Value = OSArrayGetValue(*(a1 + 48), *(*(*(a1 + 32) + 8) + 24));
  ++*(*(*(a1 + 32) + 8) + 24);
  *(*(*(a1 + 40) + 8) + 24) &= (*(*a2 + 24))(a2, Value);
  return (*(*(*(a1 + 40) + 8) + 24) & 1) == 0;
}

OSObject *__cdecl OSArray::getLastObject(const OSArray *this)
{
  v1 = *(this->ivars + 5);
  if (v1)
  {
    return OSArrayGetValue(this, (v1 - 1));
  }

  else
  {
    return 0;
  }
}

uint64_t OSArrayIterateObjects(uint64_t a1, unsigned int a2, uint64_t a3)
{
  OSArrayContainerize(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 1107296256;
  v7[2] = ___ZL21OSArrayIterateObjectsP7OSArrayjU13block_pointerFbP8OSObjectE_block_invoke;
  v7[3] = &__block_descriptor_tmp_197;
  v7[4] = a3;
  v7[5] = a1;
  return OSArrayInternalApply(a1, a2, v7);
}

uint32_t OSArray::getNextIndexOfObject(const OSArray *this, const OSMetaClassBase *anObject, uint32_t index)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2000000000;
  v9 = index;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 1107296256;
  v5[2] = ___ZNK7OSArray20getNextIndexOfObjectEPK15OSMetaClassBasej_block_invoke;
  v5[3] = &__block_descriptor_tmp_74_0;
  v5[4] = &v6;
  v5[5] = anObject;
  if (OSArrayIterateObjects(this, index, v5))
  {
    v3 = *(v7 + 6);
  }

  else
  {
    v3 = -1;
  }

  _Block_object_dispose(&v6, 8);
  return v3;
}

BOOL ___ZNK7OSArray20getNextIndexOfObjectEPK15OSMetaClassBasej_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  if (v2 != a2)
  {
    ++*(*(*(a1 + 32) + 8) + 24);
  }

  return v2 == a2;
}

OSObject *OSSetCreate(void)
{
  pObject = 0;
  if (OSObjectAllocate(gOSSetMetaClass, &pObject))
  {
    v0 = 0;
  }

  else
  {
    v0 = pObject;
  }

  v1 = IOMallocZeroTyped(0x28uLL, 0x1020040FBF3A4F7uLL);
  v0[1].OSObjectInterface::__vftable = v1;
  v0[1].OSMetaClassBase::__vftable = v1;
  LODWORD(v1->init) = 50331648;
  return v0;
}

OSSetPtr OSSet::withObjects(const OSObject **values, uint32_t count, uint32_t capacity)
{
  v5 = OSSetCreate();
  if (v5 && count)
  {
    v6 = 1;
    do
    {
      v7 = *values++;
      v8 = OSSet::setObject(v5, v7);
    }

    while (v8 && v6++ < count);
    if (!v8)
    {
      (v5->release)(v5);
      return 0;
    }
  }

  return v5;
}

BOOL OSSet::setObject(OSSet *this, const OSMetaClassBase *anObject)
{
  if (OSArray::getNextIndexOfObject(this, anObject, 0) != -1)
  {
    return 0;
  }

  return OSArraySetValueInternal(this, 0xFFFFFFFFFFFFFFFFLL, anObject, 0);
}

OSSetPtr OSSet::withArray(const OSArray *array, uint32_t capacity)
{
  v3 = OSSetCreate();
  v4 = OSSet::merge(v3, array);
  if (v3 && !v4)
  {
    (v3->release)(v3);
    return 0;
  }

  return v3;
}

BOOL OSSet::merge(OSSet *this, const OSArray *otherArray)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 1;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 1107296256;
  v4[2] = ___ZN5OSSet5mergeEPK7OSArray_block_invoke;
  v4[3] = &__block_descriptor_tmp_77_0;
  v4[4] = &v5;
  v4[5] = this;
  (otherArray->iterateObjects)(otherArray, v4);
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

void OSSet::removeObject(OSSet *this, const OSMetaClassBase *anObject)
{
  NextIndexOfObject = OSArray::getNextIndexOfObject(this, anObject, 0);
  if (NextIndexOfObject != -1)
  {

    OSArraySetValueInternal(this, NextIndexOfObject, 0, 0);
  }
}

uint64_t ___ZN5OSSet5mergeEPK7OSArray_block_invoke(uint64_t a1, const OSMetaClassBase *a2)
{
  v4 = *(a1 + 40);
  if (OSArray::getNextIndexOfObject(v4, a2, 0) == -1)
  {
    *(*(*(a1 + 32) + 8) + 24) &= OSSet::setObject(v4, a2);
  }

  return 0;
}

OSOrderedSetPtr OSOrderedSet::withCapacity(uint32_t capacity, OSOrderBlock orderBlock)
{
  pObject = 0;
  if (OSObjectAllocate(gOSOrderedSetMetaClass, &pObject))
  {
    v3 = 0;
  }

  else
  {
    v3 = pObject;
  }

  v4 = IOMallocZeroTyped(0x28uLL, 0x1020040FBF3A4F7uLL);
  v3->ivars = v4;
  v3->ivars = v4;
  *v4 = 50331648;
  v3->ivars = IOMallocTyped(8uLL, 0x80040B8603338uLL);
  *v3->ivars = _Block_copy(orderBlock);
  return v3;
}

void OSOrderedSet::free(OSOrderedSet *this)
{
  ivars = this->ivars;
  if (ivars)
  {
    if (!*ivars || (_Block_release(*ivars), *this->ivars = 0, (ivars = this->ivars) != 0))
    {
      IOFree(ivars, 8uLL);
      this->ivars = 0;
    }
  }

  OSArray::free(this);
}

BOOL OSOrderedSet::setObject(OSOrderedSet *this, const OSMetaClassBase *anObject)
{
  if (OSArray::getNextIndexOfObject(this, anObject, 0) != -1)
  {
    return 0;
  }

  if (*this->ivars)
  {
    v5 = (this->getCount)(this);
    if (v5)
    {
      v6 = 0;
      v7 = v5;
      while (1)
      {
        OSArrayGetValue(this, v6);
        if (((*(*this->ivars + 16))() & 0x80000000) != 0)
        {
          break;
        }

        if (v7 == ++v6)
        {
          LODWORD(v6) = v7;
          break;
        }
      }

      v8 = v6;
    }

    else
    {
      v8 = 0;
    }

    return OSArraySetValueInternal(this, v8, anObject, 0);
  }

  else
  {

    return OSOrderedSet::setLastObject(this, anObject);
  }
}

BOOL OSOrderedSet::setLastObject(OSOrderedSet *this, const OSMetaClassBase *anObject)
{
  if (OSArray::getNextIndexOfObject(this, anObject, 0) != -1)
  {
    return 0;
  }

  return OSArraySetValueInternal(this, 0xFFFFFFFFFFFFFFFFLL, anObject, 0);
}

BOOL OSOrderedSet::setFirstObject(OSOrderedSet *this, const OSMetaClassBase *anObject)
{
  if (OSArray::getNextIndexOfObject(this, anObject, 0) != -1)
  {
    return 0;
  }

  return OSArraySetValueInternal(this, 0, anObject, 0);
}

OSObject *__cdecl OSOrderedSet::getLastObject(const OSOrderedSet *this)
{
  v2 = (this->getCount)(this);
  if (!v2)
  {
    return 0;
  }

  return OSArrayGetValue(&this->OSSet, (v2 - 1));
}

BOOL OSData::isEqualTo(const OSData *this, const OSMetaClassBase *anObject)
{
  v4 = OSMetaClassBase::safeMetaCast(anObject, gOSDataMetaClass);
  if (v4)
  {
    meta = v4[1].meta;
    v7 = meta->__vftable;
    v6 = &meta->__vftable + 1;
    v8 = v7 & 0x7F000000;
    v9 = v7 & 0xFFFFFF;
    if (v9)
    {
      v10 = v8 == 167772160;
    }

    else
    {
      v10 = 0;
    }

    if (v10)
    {
      v11 = v6;
    }

    else
    {
      v11 = 0;
    }

    LOBYTE(v12) = OSData::isEqualTo(this, v11, v9);
  }

  else
  {
    v12 = OSMetaClassBase::safeMetaCast(anObject, gOSStringMetaClass);
    if (v12)
    {

      LOBYTE(v12) = OSString::isEqualTo(v12, this);
    }
  }

  return v12;
}

BOOL OSData::isEqualTo(const OSData *this, const OSData *aDataObj)
{
  ivars = aDataObj->ivars;
  v4 = *ivars;
  v3 = ivars + 4;
  v5 = v4 & 0x7F000000;
  v6 = v4 & 0xFFFFFF;
  if (v6)
  {
    v7 = v5 == 167772160;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    v8 = v3;
  }

  else
  {
    v8 = 0;
  }

  return OSData::isEqualTo(this, v8, v6);
}

BOOL OSData::isEqualTo(const OSData *this, const void *bytes, size_t numBytes)
{
  ivars = this->ivars;
  if ((*ivars & 0xFFFFFF) != numBytes)
  {
    return 0;
  }

  v4 = (*ivars & 0xFFFFFF) != 0 && (*ivars & 0x7F000000) == 167772160;
  v5 = ivars + 4;
  if (v4)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return memcmp(v6, bytes, numBytes) == 0;
}

const void *__cdecl OSData::getBytesNoCopy(const OSData *this)
{
  ivars = this->ivars;
  v3 = *ivars;
  v2 = ivars + 4;
  v4 = v3 & 0x7F000000;
  if ((v3 & 0xFFFFFF) != 0 && v4 == 167772160)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

BOOL OSString::isEqualTo(const OSString *this, const OSData *aDataObject)
{
  StringLength = OSSerializationGetStringLength(this->ivars);
  ivars = aDataObject->ivars;
  v7 = *ivars;
  v6 = ivars + 4;
  v8 = v7 & 0xFFFFFF;
  v9 = v7 & 0x7F000000;
  if (v8)
  {
    v10 = v9 == 167772160;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    v11 = v6;
  }

  else
  {
    v11 = 0;
  }

  if (StringLength > v8)
  {
    return 0;
  }

  if (StringLength >= v8)
  {
    v18 = this->ivars;
    v20 = *v18;
    v19 = v18 + 4;
    v21 = v20 & 0x7E000000 | 0x1000000;
    if ((v20 & 0x7FFFFFFF) == 0x8000000)
    {
      v19 = 0;
    }

    if (v21 == 150994944)
    {
      v22 = v19;
    }

    else
    {
      v22 = 0;
    }

    v17 = strncmp(v11, v22, StringLength);
  }

  else
  {
    if (StringLength + 1 != v8)
    {
      return 0;
    }

    v13 = this->ivars;
    v15 = *v13;
    v14 = v13 + 4;
    if ((v15 & 0x7FFFFFFF) == 0x8000000)
    {
      v16 = 0;
    }

    else
    {
      v16 = v14;
    }

    v17 = strcmp(v11, v16);
  }

  return v17 == 0;
}

void OSData::free(OSData *this)
{
  ivars = this->ivars;
  if (ivars)
  {
    v3 = *ivars & 0xFFFFFF;
    v4 = (v3 + 3) & 0x1FFFFFC;
    if (v4 < v3)
    {
      OSData::free();
    }

    IOFree(ivars, v4 + 4);
    this->ivars = 0;
  }

  OSObject::free(this);
}

OSDataPtr OSData::withData(const OSData *inData)
{
  ivars = inData->ivars;
  v3 = *ivars;
  v2 = ivars + 4;
  v4 = v3 & 0x7F000000;
  v5 = v3 & 0xFFFFFF;
  if (v5)
  {
    v6 = v4 == 167772160;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    v7 = v2;
  }

  else
  {
    v7 = 0;
  }

  return OSDataCreate(v7, v5);
}

OSDataPtr OSData::withData(const OSData *inData, size_t start, size_t numBytes)
{
  if (__CFADD__(start, numBytes))
  {
    return 0;
  }

  ivars = inData->ivars;
  if (start + numBytes > (*ivars & 0xFFFFFFu))
  {
    return 0;
  }

  v4 = (*ivars & 0xFFFFFF) != 0 && (*ivars & 0x7F000000) == 167772160;
  v5 = ivars + 4;
  if (!v4)
  {
    v5 = 0;
  }

  if (!&v5[start])
  {
    return 0;
  }

  else
  {
    return OSDataCreate(&v5[start], numBytes);
  }
}

const void *__cdecl OSData::getBytesNoCopy(const OSData *this, size_t start, size_t numBytes)
{
  if (__CFADD__(start, numBytes))
  {
    return 0;
  }

  ivars = this->ivars;
  if (start + numBytes > (*ivars & 0xFFFFFFu))
  {
    return 0;
  }

  v5 = (*ivars & 0xFFFFFF) != 0 && (*ivars & 0x7F000000) == 167772160;
  v6 = ivars + 4;
  if (!v5)
  {
    v6 = 0;
  }

  return &v6[start];
}

BOOL OSData::appendBytes(OSData *this, const OSData *aDataObj)
{
  ivars = aDataObj->ivars;
  v4 = *ivars;
  v3 = ivars + 4;
  v5 = v4 & 0x7F000000;
  v6 = v4 & 0xFFFFFF;
  if (v6)
  {
    v7 = v5 == 167772160;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    v8 = v3;
  }

  else
  {
    v8 = 0;
  }

  return OSDataAppendBytes(this, v8, v6);
}

OSStringPtr OSString::withCString(OSStringPtr cString)
{
  if (cString)
  {
    return OSStringCreate(cString, 0xFFFFFFFFFFFFFFFFLL);
  }

  return cString;
}

OSStringPtr OSString::withCStringNoCopy(OSStringPtr cString)
{
  if (cString)
  {
    return OSStringCreate(cString, 0xFFFFFFFFFFFFFFFFLL);
  }

  return cString;
}

OSStringPtr OSString::withString(const OSString *aString)
{
  if (aString)
  {
    (aString->retain)(aString);
  }

  return aString;
}

OSStringPtr OSString::withCString(OSStringPtr cString, size_t length)
{
  if (cString)
  {
    return OSStringCreate(cString, length);
  }

  return cString;
}

BOOL OSString::isEqualTo(const OSString *this, const OSMetaClassBase *anObject)
{
  if (anObject == this)
  {
    LOBYTE(v3) = 1;
  }

  else
  {
    v3 = OSMetaClassBase::safeMetaCast(anObject, gOSDataMetaClass);
    if (v3)
    {

      LOBYTE(v3) = OSString::isEqualTo(this, v3);
    }
  }

  return v3;
}

BOOL OSString::isEqualTo(const OSString *this, const char *cString)
{
  ivars = this->ivars;
  v5 = *ivars;
  v4 = ivars + 4;
  if ((v5 & 0x7FFFFFFF) == 0x8000000)
  {
    v6 = 0;
  }

  else
  {
    v6 = v4;
  }

  return strcmp(cString, v6) == 0;
}

OSNumberPtr OSNumber::withNumber(const char *valueString, size_t numberOfBits)
{
  v2 = strtoll(valueString, 0, 0);

  return OSNumberCreateWithUInt64Value(v2);
}

uint8_t OSNumber::unsigned8BitValue(const OSNumber *this)
{
  ivars = this->ivars;
  if ((*ivars & 0x7F000000) == 0x4000000)
  {
    return *(ivars + 4);
  }

  else
  {
    return 0;
  }
}

uint16_t OSNumber::unsigned16BitValue(const OSNumber *this)
{
  ivars = this->ivars;
  if ((*ivars & 0x7F000000) == 0x4000000)
  {
    return *(ivars + 2);
  }

  else
  {
    return 0;
  }
}

uint32_t OSNumber::unsigned32BitValue(const OSNumber *this)
{
  ivars = this->ivars;
  if ((*ivars & 0x7F000000) == 0x4000000)
  {
    return *(ivars + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t OSNumber::unsigned64BitValue(const OSNumber *this)
{
  ivars = this->ivars;
  if ((*ivars & 0x7F000000) == 0x4000000)
  {
    return *(ivars + 4);
  }

  else
  {
    return 0;
  }
}

BOOL OSNumber::isEqualTo(const OSNumber *this, const OSMetaClassBase *anObject)
{
  v3 = OSMetaClassBase::safeMetaCast(anObject, gOSNumberMetaClass);
  if (v3)
  {
    ivars = this->ivars;
    if ((*ivars & 0x7F000000) == 0x4000000)
    {
      v5 = *(ivars + 4);
    }

    else
    {
      v5 = 0;
    }

    meta = v3[1].meta;
    if ((meta->__vftable & 0x7F000000) == 0x4000000)
    {
      v7 = *(&meta->__vftable + 4);
    }

    else
    {
      v7 = 0;
    }

    LOBYTE(v3) = v5 == v7;
  }

  return v3;
}

BOOL OSNumber::isEqualTo(const OSNumber *this, const OSNumber *aNumber)
{
  ivars = this->ivars;
  if ((*ivars & 0x7F000000) == 0x4000000)
  {
    v3 = *(ivars + 4);
  }

  else
  {
    v3 = 0;
  }

  v4 = aNumber->ivars;
  if ((*v4 & 0x7F000000) == 0x4000000)
  {
    v5 = *(v4 + 4);
  }

  else
  {
    v5 = 0;
  }

  return v3 == v5;
}

void OSNumber::free(OSNumber *this)
{
  ivars = this->ivars;
  if (ivars)
  {
    IOFree(ivars, 0xCuLL);
    this->ivars = 0;
  }

  OSObject::free(this);
}

OSObject *OSBooleanCreate(void)
{
  pObject = 0;
  if (OSObjectAllocate(gOSBooleanMetaClass, &pObject))
  {
    v0 = 0;
  }

  else
  {
    v0 = pObject;
  }

  v0[1].OSMetaClassBase::__vftable = IOMallocZeroTyped(4uLL, 0x400A2AC0F1uLL);
  return v0;
}

void OSCollectionsInitialize(void)
{
  kOSBooleanTrue = OSBooleanCreate();
  *kOSBooleanTrue->ivars = 184549377;
  kOSBooleanFalse = OSBooleanCreate();
  *kOSBooleanFalse->ivars = 184549376;
}

const void *__cdecl OSSerialization::finalizeBuffer(OSSerialization *this, size_t *length)
{
  ivars = this->ivars;
  if (*(ivars + 1))
  {
    OSSerialization::finalizeBuffer();
  }

  if (length)
  {
    *length = *(ivars + 4);
    ivars = this->ivars;
  }

  v3 = *(ivars + 2);
  *(ivars + 2) = 0;
  *(this->ivars + 4) = 0;
  *(this->ivars + 3) = 0;
  return v3;
}

void OSSerialization::freeBuffer(const void *buffer, size_t length)
{
  if (MEMORY[0x2383EC880](*MEMORY[0x277D85F48], buffer, length))
  {
    OSSerialization::freeBuffer();
  }
}

void OSSerialization::free(OSSerialization *this)
{
  ivars = this->ivars;
  v3 = *(ivars + 1);
  if (v3)
  {
    (*(v3 + 16))(v3, *(ivars + 2), *(ivars + 4));
    _Block_release(*(this->ivars + 1));
    *(this->ivars + 1) = 0;
  }

  else
  {
    v4 = *(ivars + 3);
    if (v4)
    {
      OSSerialization::freeBuffer(*(ivars + 2), v4);
    }
  }

  *(this->ivars + 2) = 0;
  *(this->ivars + 4) = 0;
  *(this->ivars + 3) = 0;
  IOFree(this->ivars, 0x38uLL);

  OSObject::free(this);
}

uint64_t ___ZL24OSDictionaryContainerizeP12OSDictionary_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(*(*(*(a1 + 32) + 64) + 32) + 16 * a2) = (a3 << 32) | 1;
  *(*(*(*(a1 + 32) + 64) + 32) + 16 * a2 + 8) = (a4 << 32) | 1;
  return 0;
}

uint64_t OSSerializationDictionaryApply(OSSerialization *a1, unsigned int a2, uint64_t a3)
{
  ivars = a1->ivars;
  if (*(ivars + 12) <= a2)
  {
    OSSerializationDictionaryApply();
  }

  v4 = *(*(ivars + 5) + 4 * a2);
  if ((v4 & 0x7F000000) != 0x1000000)
  {
    OSSerializationDictionaryApply();
  }

  v5 = *&v4 & 0xFFFFFFLL;
  if ((v4 & 0xFFFFFF) == 0)
  {
    return 0;
  }

  v8 = 0;
  v9 = a2 + 2;
  do
  {
    if (v9 >= *(a1->ivars + 12))
    {
      OSSerializationDictionaryApply();
    }

    v10 = OSSerializationSize(a1, v9) + v9;
    if (v10 >= *(a1->ivars + 12))
    {
      OSSerializationDictionaryApply();
    }

    v11 = OSSerializationSize(a1, v10);
    v12 = OSSerializationValue(a1, v9);
    v13 = OSSerializationValue(a1, v10);
    result = (*(a3 + 16))(a3, v8, v12, v13);
    if (result)
    {
      break;
    }

    v9 = v11 + v10;
    ++v8;
  }

  while (v8 < v5);
  return result;
}

uint64_t ___ZL20OSDictionaryGetEntryP12OSDictionaryP8OSObjectPKcPm_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, OSMetaClassBase *anObject, uint64_t a5)
{
  if (anObject)
  {
    v11 = *(a1 + 40);
    if (!v11)
    {
      result = OSMetaClassBase::safeMetaCast(*(a1 + 48), gOSStringMetaClass);
      if (!result)
      {
        return result;
      }

      v22 = *(result + 40);
      v23 = *v22;
      if ((*v22 & 0x7E000000 | 0x1000000) == 0x9000000)
      {
        v24 = (v22 + 1);
        if ((v23 & 0x7FFFFFFF) == 0x8000000)
        {
          v11 = 0;
        }

        else
        {
          v11 = v24;
        }
      }

      else
      {
        v11 = 0;
      }
    }

    StringPtr = OSCollectionEntryGetStringPtr(a3, anObject);
    StringLength = OSSerializationGetStringLength((*(*(a3 + 48) + 40) + 4 * (anObject >> 32)));
    if (StringPtr)
    {
      v14 = StringLength;
      if (StringLength == strlen(v11) && !strncmp(StringPtr, v11, v14))
      {
        goto LABEL_16;
      }
    }

    return 0;
  }

  v9 = *(a1 + 48);
  if (v9)
  {
    if (v9 == anObject)
    {
LABEL_16:
      *(*(*(a1 + 32) + 8) + 24) = a5;
      v21 = *(a1 + 56);
      if (v21)
      {
        *v21 = a2;
      }

      return 1;
    }

    return 0;
  }

  if (!*(a1 + 40))
  {
    ___ZL20OSDictionaryGetEntryP12OSDictionaryP8OSObjectPKcPm_block_invoke_cold_1();
  }

  result = OSMetaClassBase::safeMetaCast(anObject, gOSStringMetaClass);
  if (result)
  {
    v16 = *(a1 + 40);
    v17 = *(result + 40);
    v19 = *v17;
    v18 = (v17 + 1);
    if ((v19 & 0x7FFFFFFF) == 0x8000000)
    {
      v20 = 0;
    }

    else
    {
      v20 = v18;
    }

    if (!strcmp(*(a1 + 40), v20))
    {
      goto LABEL_16;
    }

    return 0;
  }

  return result;
}

uint64_t OSSerializationArrayApply(OSSerialization *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  ivars = a1->ivars;
  if (*(ivars + 12) <= a2)
  {
    OSSerializationArrayApply();
  }

  v5 = *(*(ivars + 5) + 4 * a2);
  if ((v5 & 0x7E000000) != 0x2000000)
  {
    OSSerializationArrayApply();
  }

  v6 = *&v5 & 0xFFFFFFLL;
  if ((v5 & 0xFFFFFF) == 0)
  {
    return 0;
  }

  v9 = 0;
  v10 = a2 + 2;
  v11 = a3;
  do
  {
    if (v10 >= *(a1->ivars + 12))
    {
      OSSerializationArrayApply();
    }

    v12 = OSSerializationSize(a1, v10);
    if (v9 >= v11)
    {
      v14 = OSSerializationValue(a1, v10);
      result = (*(a4 + 16))(a4, v9, v14);
      if (result)
      {
        return result;
      }
    }

    else
    {
      result = 0;
    }

    v10 += v12;
    ++v9;
  }

  while (v9 < v6);
  return result;
}

uint64_t ___ZL26OSDictionaryIterateObjectsP12OSDictionaryU13block_pointerFbP8OSObjectS2_E_block_invoke(uint64_t a1, uint64_t a2, OSSerialization *a3, uint64_t a4, uint64_t a5)
{
  if (a4)
  {
    *(*(*(*(a1 + 40) + 64) + 32) + 16 * a2) = OSCreateObjectFromSerializationInternal(a3, HIDWORD(a4));
    v9 = *(*(*(*(a1 + 40) + 64) + 32) + 16 * a2);
  }

  if (a5)
  {
    *(*(*(*(a1 + 40) + 64) + 32) + 16 * a2 + 8) = OSCreateObjectFromSerializationInternal(a3, HIDWORD(a5));
    v10 = *(*(*(*(a1 + 40) + 64) + 32) + 16 * a2 + 8);
  }

  v11 = *(*(a1 + 32) + 16);

  return v11();
}

uint64_t ___ZL21OSArrayIterateObjectsP7OSArrayjU13block_pointerFbP8OSObjectE_block_invoke(uint64_t a1, uint64_t a2, OSSerialization *a3, uint64_t a4)
{
  if (a4)
  {
    *(*(*(*(a1 + 40) + 64) + 32) + 8 * a2) = OSCreateObjectFromSerializationInternal(a3, HIDWORD(a4));
    v6 = *(*(*(*(a1 + 40) + 64) + 32) + 8 * a2);
  }

  v7 = *(*(a1 + 32) + 16);

  return v7();
}

uint64_t io_object_get_class(unsigned int a1)
{
  v15 = *MEMORY[0x277D85DE8];
  memset(v14, 0, sizeof(v14));
  v13 = 0u;
  v12 = 0u;
  v11 = 0u;
  v10 = 0u;
  v9 = 0u;
  v8 = 0u;
  v7 = 0u;
  v6 = 0u;
  *&v5.msgh_bits = 0x1800001513;
  *&v5.msgh_remote_port = __PAIR64__(mig_get_reply_port(), a1);
  *&v5.msgh_voucher_port = 0xAF000000000;
  v1 = mach_msg2_internal();
  v2 = v1;
  if ((v1 - 268435458) <= 0xE && ((1 << (v1 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(v5.msgh_local_port);
  }

  else if (v1)
  {
    mig_dealloc_reply_port(v5.msgh_local_port);
  }

  else
  {
    v2 = 4294966995;
    mach_msg_destroy(&v5);
  }

  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t io_object_conforms_to(unsigned int a1, const char *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  *reply_port = 0u;
  v9 = 0u;
  *(&v9 + 1) = *MEMORY[0x277D85EF8];
  if (MEMORY[0x28223BE50])
  {
    v3 = mig_strncpy_zerofill(v10 + 8, a2, 128);
  }

  else
  {
    v3 = mig_strncpy(v10 + 8, a2, 128);
  }

  LODWORD(v10[0]) = 0;
  DWORD1(v10[0]) = v3;
  reply_port[0] = 5395;
  reply_port[1] = ((v3 + 3) & 0xFFFFFFFC) + 40;
  *&reply_port[2] = __PAIR64__(mig_get_reply_port(), a1);
  *&v9 = 0xAF100000000;
  v4 = mach_msg2_internal();
  v5 = v4;
  if ((v4 - 268435458) <= 0xE && ((1 << (v4 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(reply_port[3]);
  }

  else if (v4)
  {
    mig_dealloc_reply_port(reply_port[3]);
  }

  else
  {
    v5 = 4294966995;
    mach_msg_destroy(reply_port);
  }

  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t io_iterator_next(unsigned int a1)
{
  v6 = 0;
  v7 = 0;
  v8 = 0;
  *&v5.msgh_bits = 0x1800001513;
  *&v5.msgh_remote_port = __PAIR64__(mig_get_reply_port(), a1);
  *&v5.msgh_voucher_port = 0xAF200000000;
  v1 = mach_msg2_internal();
  v2 = v1;
  if ((v1 - 268435458) > 0xE || ((1 << (v1 - 2)) & 0x4003) == 0)
  {
    if (v1)
    {
      mig_dealloc_reply_port(v5.msgh_local_port);
    }

    else
    {
      v2 = 4294966995;
      mach_msg_destroy(&v5);
    }
  }

  else
  {
    mig_put_reply_port(v5.msgh_local_port);
  }

  return v2;
}

uint64_t io_iterator_reset(unsigned int a1)
{
  v6 = 0;
  v7 = 0;
  v8 = 0;
  *&v5.msgh_bits = 0x1800001513;
  *&v5.msgh_remote_port = __PAIR64__(mig_get_reply_port(), a1);
  *&v5.msgh_voucher_port = 0xAF300000000;
  v1 = mach_msg2_internal();
  v2 = v1;
  if ((v1 - 268435458) > 0xE || ((1 << (v1 - 2)) & 0x4003) == 0)
  {
    if (v1)
    {
      mig_dealloc_reply_port(v5.msgh_local_port);
    }

    else
    {
      v2 = 4294966995;
      mach_msg_destroy(&v5);
    }
  }

  else
  {
    mig_put_reply_port(v5.msgh_local_port);
  }

  return v2;
}

uint64_t io_service_get_matching_services(unsigned int a1, const char *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  memset(v10, 0, 480);
  *reply_port = 0u;
  v9 = 0u;
  *(&v9 + 1) = *MEMORY[0x277D85EF8];
  if (MEMORY[0x28223BE50])
  {
    v3 = mig_strncpy_zerofill(v10 + 8, a2, 512);
  }

  else
  {
    v3 = mig_strncpy(v10 + 8, a2, 512);
  }

  LODWORD(v10[0]) = 0;
  DWORD1(v10[0]) = v3;
  reply_port[0] = 5395;
  reply_port[1] = ((v3 + 3) & 0xFFFFFFFC) + 40;
  *&reply_port[2] = __PAIR64__(mig_get_reply_port(), a1);
  *&v9 = 0xAF400000000;
  v4 = mach_msg2_internal();
  v5 = v4;
  if ((v4 - 268435458) <= 0xE && ((1 << (v4 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(reply_port[3]);
  }

  else if (v4)
  {
    mig_dealloc_reply_port(reply_port[3]);
  }

  else
  {
    v5 = 4294966995;
    mach_msg_destroy(reply_port);
  }

  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t io_registry_entry_get_property(unsigned int a1, const char *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  *reply_port = 0u;
  v9 = 0u;
  *(&v9 + 1) = *MEMORY[0x277D85EF8];
  if (MEMORY[0x28223BE50])
  {
    v3 = mig_strncpy_zerofill(v10 + 8, a2, 128);
  }

  else
  {
    v3 = mig_strncpy(v10 + 8, a2, 128);
  }

  LODWORD(v10[0]) = 0;
  DWORD1(v10[0]) = v3;
  reply_port[0] = 5395;
  reply_port[1] = ((v3 + 3) & 0xFFFFFFFC) + 40;
  *&reply_port[2] = __PAIR64__(mig_get_reply_port(), a1);
  *&v9 = 0xAF500000000;
  v4 = mach_msg2_internal();
  v5 = v4;
  if ((v4 - 268435458) <= 0xE && ((1 << (v4 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(reply_port[3]);
  }

  else if (v4)
  {
    mig_dealloc_reply_port(reply_port[3]);
  }

  else
  {
    v5 = 4294966995;
    mach_msg_destroy(reply_port);
  }

  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t io_registry_create_iterator(unsigned int a1, const char *a2, int a3, _DWORD *a4)
{
  v18 = *MEMORY[0x277D85DE8];
  memset(v17, 0, 140);
  *reply_port = 0u;
  v16 = 0u;
  *(&v16 + 1) = *MEMORY[0x277D85EF8];
  if (MEMORY[0x28223BE50])
  {
    v7 = mig_strncpy_zerofill(v17 + 8, a2, 128);
  }

  else
  {
    v7 = mig_strncpy(v17 + 8, a2, 128);
  }

  LODWORD(v17[0]) = 0;
  DWORD1(v17[0]) = v7;
  v8 = (v7 + 3) & 0xFFFFFFFC;
  v9 = v8 + 44;
  *(v17 + v8 + 8) = a3;
  v10 = mig_get_reply_port();
  reply_port[0] = 5395;
  reply_port[1] = v9;
  *&reply_port[2] = __PAIR64__(v10, a1);
  *&v16 = 0xAF600000000;
  v11 = mach_msg2_internal();
  v12 = v11;
  if ((v11 - 268435458) <= 0xE && ((1 << (v11 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(reply_port[3]);
  }

  else
  {
    if (!v11)
    {
      if (DWORD1(v16) == 71)
      {
        v12 = 4294966988;
      }

      else if (DWORD1(v16) == 2906)
      {
        if ((reply_port[0] & 0x80000000) != 0)
        {
          v12 = 4294966996;
          if (DWORD2(v16) == 1 && reply_port[1] == 40 && !reply_port[2] && WORD3(v17[0]) << 16 == 1114112)
          {
            v12 = 0;
            *a4 = HIDWORD(v16);
            goto LABEL_26;
          }
        }

        else if (reply_port[1] == 36)
        {
          v12 = 4294966996;
          if (LODWORD(v17[0]))
          {
            if (reply_port[2])
            {
              v12 = 4294966996;
            }

            else
            {
              v12 = LODWORD(v17[0]);
            }
          }
        }

        else
        {
          v12 = 4294966996;
        }
      }

      else
      {
        v12 = 4294966995;
      }

      mach_msg_destroy(reply_port);
      goto LABEL_26;
    }

    mig_dealloc_reply_port(reply_port[3]);
  }

LABEL_26:
  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

uint64_t io_registry_iterator_enter_entry(unsigned int a1)
{
  v6 = 0;
  v7 = 0;
  v8 = 0;
  *&v5.msgh_bits = 0x1800001513;
  *&v5.msgh_remote_port = __PAIR64__(mig_get_reply_port(), a1);
  *&v5.msgh_voucher_port = 0xAF700000000;
  v1 = mach_msg2_internal();
  v2 = v1;
  if ((v1 - 268435458) > 0xE || ((1 << (v1 - 2)) & 0x4003) == 0)
  {
    if (v1)
    {
      mig_dealloc_reply_port(v5.msgh_local_port);
    }

    else
    {
      v2 = 4294966995;
      mach_msg_destroy(&v5);
    }
  }

  else
  {
    mig_put_reply_port(v5.msgh_local_port);
  }

  return v2;
}

uint64_t io_registry_iterator_exit_entry(unsigned int a1)
{
  v6 = 0;
  v7 = 0;
  v8 = 0;
  *&v5.msgh_bits = 0x1800001513;
  *&v5.msgh_remote_port = __PAIR64__(mig_get_reply_port(), a1);
  *&v5.msgh_voucher_port = 0xAF800000000;
  v1 = mach_msg2_internal();
  v2 = v1;
  if ((v1 - 268435458) > 0xE || ((1 << (v1 - 2)) & 0x4003) == 0)
  {
    if (v1)
    {
      mig_dealloc_reply_port(v5.msgh_local_port);
    }

    else
    {
      v2 = 4294966995;
      mach_msg_destroy(&v5);
    }
  }

  else
  {
    mig_put_reply_port(v5.msgh_local_port);
  }

  return v2;
}

uint64_t io_registry_entry_from_path(unsigned int a1, const char *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  memset(v10, 0, 480);
  *reply_port = 0u;
  v9 = 0u;
  *(&v9 + 1) = *MEMORY[0x277D85EF8];
  if (MEMORY[0x28223BE50])
  {
    v3 = mig_strncpy_zerofill(v10 + 8, a2, 512);
  }

  else
  {
    v3 = mig_strncpy(v10 + 8, a2, 512);
  }

  LODWORD(v10[0]) = 0;
  DWORD1(v10[0]) = v3;
  reply_port[0] = 5395;
  reply_port[1] = ((v3 + 3) & 0xFFFFFFFC) + 40;
  *&reply_port[2] = __PAIR64__(mig_get_reply_port(), a1);
  *&v9 = 0xAF900000000;
  v4 = mach_msg2_internal();
  v5 = v4;
  if ((v4 - 268435458) <= 0xE && ((1 << (v4 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(reply_port[3]);
  }

  else if (v4)
  {
    mig_dealloc_reply_port(reply_port[3]);
  }

  else
  {
    v5 = 4294966995;
    mach_msg_destroy(reply_port);
  }

  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t io_registry_entry_get_name(unsigned int a1)
{
  v15 = *MEMORY[0x277D85DE8];
  memset(v14, 0, sizeof(v14));
  v13 = 0u;
  v12 = 0u;
  v11 = 0u;
  v10 = 0u;
  v9 = 0u;
  v8 = 0u;
  v7 = 0u;
  v6 = 0u;
  *&v5.msgh_bits = 0x1800001513;
  *&v5.msgh_remote_port = __PAIR64__(mig_get_reply_port(), a1);
  *&v5.msgh_voucher_port = 0xAFA00000000;
  v1 = mach_msg2_internal();
  v2 = v1;
  if ((v1 - 268435458) <= 0xE && ((1 << (v1 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(v5.msgh_local_port);
  }

  else if (v1)
  {
    mig_dealloc_reply_port(v5.msgh_local_port);
  }

  else
  {
    v2 = 4294966995;
    mach_msg_destroy(&v5);
  }

  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t io_registry_entry_get_properties(unsigned int a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = 0;
  v7 = 0u;
  v8 = 0u;
  *&v6.msgh_bits = 0x1800001513;
  *&v6.msgh_remote_port = __PAIR64__(mig_get_reply_port(), a1);
  *&v6.msgh_voucher_port = 0xAFB00000000;
  v1 = mach_msg2_internal();
  v2 = v1;
  if ((v1 - 268435458) > 0xE || ((1 << (v1 - 2)) & 0x4003) == 0)
  {
    if (v1)
    {
      mig_dealloc_reply_port(v6.msgh_local_port);
    }

    else
    {
      v2 = 4294966995;
      mach_msg_destroy(&v6);
    }
  }

  else
  {
    mig_put_reply_port(v6.msgh_local_port);
  }

  v4 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t io_registry_entry_get_property_bytes(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v4 = v3;
  v6 = v5;
  v7 = v1;
  v54 = *MEMORY[0x277D85DE8];
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  *__n = 0u;
  v25 = 0u;
  *reply_port = 0u;
  v23 = 0u;
  *(&v23 + 1) = *MEMORY[0x277D85EF8];
  if (MEMORY[0x28223BE50])
  {
    v8 = mig_strncpy_zerofill(&__n[1], v2, 128);
  }

  else
  {
    v8 = mig_strncpy(&__n[1], v2, 128);
  }

  LODWORD(__n[0]) = 0;
  HIDWORD(__n[0]) = v8;
  v9 = (v8 + 3) & 0xFFFFFFFC;
  v10 = v9 + 44;
  v11 = reply_port + v9;
  v12 = *v4;
  if (*v4 >= 0x1000)
  {
    v12 = 4096;
  }

  *(v11 + 10) = v12;
  v13 = mig_get_reply_port();
  reply_port[0] = 5395;
  reply_port[1] = v10;
  *&reply_port[2] = __PAIR64__(v13, v7);
  *&v23 = 0xAFC00000000;
  v14 = mach_msg2_internal();
  v15 = v14;
  if ((v14 - 268435458) <= 0xE && ((1 << (v14 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(reply_port[3]);
    goto LABEL_29;
  }

  if (v14)
  {
    mig_dealloc_reply_port(reply_port[3]);
    goto LABEL_29;
  }

  if (DWORD1(v23) == 71)
  {
    v15 = 4294966988;
LABEL_28:
    mach_msg_destroy(reply_port);
    goto LABEL_29;
  }

  if (DWORD1(v23) != 2912)
  {
    v15 = 4294966995;
    goto LABEL_28;
  }

  if ((reply_port[0] & 0x80000000) != 0)
  {
    goto LABEL_27;
  }

  if (reply_port[1] - 4137 <= 0xFFFFEFFE)
  {
    if (LODWORD(__n[0]))
    {
      v16 = reply_port[2] == 0;
    }

    else
    {
      v16 = 0;
    }

    if (v16 && reply_port[1] == 36)
    {
      v15 = LODWORD(__n[0]);
    }

    else
    {
      v15 = 4294966996;
    }

    goto LABEL_28;
  }

  if (reply_port[2])
  {
LABEL_27:
    v15 = 4294966996;
    goto LABEL_28;
  }

  v15 = LODWORD(__n[0]);
  if (LODWORD(__n[0]))
  {
    goto LABEL_28;
  }

  v20 = HIDWORD(__n[0]);
  v15 = 4294966996;
  if (HIDWORD(__n[0]) > 0x1000 || reply_port[1] - 40 < HIDWORD(__n[0]) || reply_port[1] != ((WORD2(__n[0]) + 3) & 0x3FFC) + 40)
  {
    goto LABEL_28;
  }

  v21 = *v4;
  if (HIDWORD(__n[0]) <= v21)
  {
    memcpy(v6, &__n[1], HIDWORD(__n[0]));
    v15 = 0;
    *v4 = v20;
  }

  else
  {
    memcpy(v6, &__n[1], v21);
    *v4 = v20;
    v15 = 4294966989;
  }

LABEL_29:
  v18 = *MEMORY[0x277D85DE8];
  return v15;
}

uint64_t io_registry_entry_get_child_iterator(unsigned int a1, const char *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  *reply_port = 0u;
  v9 = 0u;
  *(&v9 + 1) = *MEMORY[0x277D85EF8];
  if (MEMORY[0x28223BE50])
  {
    v3 = mig_strncpy_zerofill(v10 + 8, a2, 128);
  }

  else
  {
    v3 = mig_strncpy(v10 + 8, a2, 128);
  }

  LODWORD(v10[0]) = 0;
  DWORD1(v10[0]) = v3;
  reply_port[0] = 5395;
  reply_port[1] = ((v3 + 3) & 0xFFFFFFFC) + 40;
  *&reply_port[2] = __PAIR64__(mig_get_reply_port(), a1);
  *&v9 = 0xAFD00000000;
  v4 = mach_msg2_internal();
  v5 = v4;
  if ((v4 - 268435458) <= 0xE && ((1 << (v4 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(reply_port[3]);
  }

  else if (v4)
  {
    mig_dealloc_reply_port(reply_port[3]);
  }

  else
  {
    v5 = 4294966995;
    mach_msg_destroy(reply_port);
  }

  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t io_registry_entry_get_parent_iterator(unsigned int a1, const char *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  *reply_port = 0u;
  v9 = 0u;
  *(&v9 + 1) = *MEMORY[0x277D85EF8];
  if (MEMORY[0x28223BE50])
  {
    v3 = mig_strncpy_zerofill(v10 + 8, a2, 128);
  }

  else
  {
    v3 = mig_strncpy(v10 + 8, a2, 128);
  }

  LODWORD(v10[0]) = 0;
  DWORD1(v10[0]) = v3;
  reply_port[0] = 5395;
  reply_port[1] = ((v3 + 3) & 0xFFFFFFFC) + 40;
  *&reply_port[2] = __PAIR64__(mig_get_reply_port(), a1);
  *&v9 = 0xAFE00000000;
  v4 = mach_msg2_internal();
  v5 = v4;
  if ((v4 - 268435458) <= 0xE && ((1 << (v4 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(reply_port[3]);
  }

  else if (v4)
  {
    mig_dealloc_reply_port(reply_port[3]);
  }

  else
  {
    v5 = 4294966995;
    mach_msg_destroy(reply_port);
  }

  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t io_connect_map_shared_memory(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int *a9)
{
  v9 = MEMORY[0x28223BE20](a1);
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = v9;
  v40 = *MEMORY[0x277D85DE8];
  memset(v39, 0, 432);
  memset(v38, 0, sizeof(v38));
  memset(&reply_port, 0, sizeof(reply_port));
  v36 = 1;
  v37 = v18;
  DWORD1(v38[0]) = 1245184;
  *(&v38[0] + 1) = *MEMORY[0x277D85EF8];
  LODWORD(v38[1]) = v19;
  *(&v38[1] + 4) = *v15;
  *(&v38[1] + 12) = *v13;
  DWORD1(v38[2]) = v20;
  if (MEMORY[0x28223BE50])
  {
    v21 = mig_strncpy_zerofill(v39, v10, 128);
  }

  else
  {
    v21 = mig_strncpy(v39, v10, 128);
  }

  DWORD2(v38[2]) = 0;
  HIDWORD(v38[2]) = v21;
  v22 = (v21 + 3) & 0xFFFFFFFC;
  v23 = v22 + 84;
  v24 = &reply_port + v22;
  v25 = *a9;
  if (*a9 >= 0x1000)
  {
    v25 = 4096;
  }

  *(v24 + 20) = v25;
  v26 = mig_get_reply_port();
  reply_port.msgh_bits = -2147478253;
  reply_port.msgh_size = v23;
  *&reply_port.msgh_remote_port = __PAIR64__(v26, v17);
  *&reply_port.msgh_voucher_port = 0xAFF00000000;
  v27 = mach_msg2_internal();
  v28 = v27;
  if ((v27 - 268435458) <= 0xE && ((1 << (v27 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(reply_port.msgh_local_port);
    goto LABEL_29;
  }

  if (v27)
  {
    mig_dealloc_reply_port(reply_port.msgh_local_port);
    goto LABEL_29;
  }

  if (reply_port.msgh_id == 71)
  {
    v28 = 4294966988;
LABEL_28:
    mach_msg_destroy(&reply_port);
    goto LABEL_29;
  }

  if (reply_port.msgh_id != 2915)
  {
    v28 = 4294966995;
    goto LABEL_28;
  }

  if ((reply_port.msgh_bits & 0x80000000) != 0)
  {
    goto LABEL_27;
  }

  if (reply_port.msgh_size - 4153 <= 0xFFFFEFFE)
  {
    if (LODWORD(v38[0]))
    {
      v29 = reply_port.msgh_remote_port == 0;
    }

    else
    {
      v29 = 0;
    }

    if (v29 && reply_port.msgh_size == 36)
    {
      v28 = LODWORD(v38[0]);
    }

    else
    {
      v28 = 4294966996;
    }

    goto LABEL_28;
  }

  if (reply_port.msgh_remote_port)
  {
LABEL_27:
    v28 = 4294966996;
    goto LABEL_28;
  }

  v28 = LODWORD(v38[0]);
  if (LODWORD(v38[0]))
  {
    goto LABEL_28;
  }

  v33 = DWORD1(v38[1]);
  v28 = 4294966996;
  if (DWORD1(v38[1]) > 0x1000 || reply_port.msgh_size - 56 < DWORD1(v38[1]) || reply_port.msgh_size != ((WORD2(v38[1]) + 3) & 0x3FFC) + 56)
  {
    goto LABEL_28;
  }

  *v16 = *(v38 + 4);
  *v14 = *(v38 + 12);
  v34 = *a9;
  if (v33 <= v34)
  {
    memcpy(v12, &v38[1] + 8, v33);
    v28 = 0;
    *a9 = v33;
  }

  else
  {
    memcpy(v12, &v38[1] + 8, v34);
    *a9 = v33;
    v28 = 4294966989;
  }

LABEL_29:
  v31 = *MEMORY[0x277D85DE8];
  return v28;
}

uint64_t io_service_close(unsigned int a1)
{
  v6 = 0;
  v7 = 0;
  v8 = 0;
  *&v5.msgh_bits = 0x1800001513;
  *&v5.msgh_remote_port = __PAIR64__(mig_get_reply_port(), a1);
  *&v5.msgh_voucher_port = 0xB0000000000;
  v1 = mach_msg2_internal();
  v2 = v1;
  if ((v1 - 268435458) > 0xE || ((1 << (v1 - 2)) & 0x4003) == 0)
  {
    if (v1)
    {
      mig_dealloc_reply_port(v5.msgh_local_port);
    }

    else
    {
      v2 = 4294966995;
      mach_msg_destroy(&v5);
    }
  }

  else
  {
    mig_put_reply_port(v5.msgh_local_port);
  }

  return v2;
}

uint64_t io_connect_get_service(unsigned int a1)
{
  v6 = 0;
  v7 = 0;
  v8 = 0;
  *&v5.msgh_bits = 0x1800001513;
  *&v5.msgh_remote_port = __PAIR64__(mig_get_reply_port(), a1);
  *&v5.msgh_voucher_port = 0xB0100000000;
  v1 = mach_msg2_internal();
  v2 = v1;
  if ((v1 - 268435458) > 0xE || ((1 << (v1 - 2)) & 0x4003) == 0)
  {
    if (v1)
    {
      mig_dealloc_reply_port(v5.msgh_local_port);
    }

    else
    {
      v2 = 4294966995;
      mach_msg_destroy(&v5);
    }
  }

  else
  {
    mig_put_reply_port(v5.msgh_local_port);
  }

  return v2;
}

uint64_t io_connect_add_client(unsigned int a1, int a2)
{
  v9 = 0x13000000000000;
  v7 = 1;
  v8 = a2;
  v10 = 0;
  *&v6.msgh_bits = 0x2880001513;
  *&v6.msgh_remote_port = __PAIR64__(mig_get_reply_port(), a1);
  *&v6.msgh_voucher_port = 0xB0400000000;
  v2 = mach_msg2_internal();
  v3 = v2;
  if ((v2 - 268435458) > 0xE || ((1 << (v2 - 2)) & 0x4003) == 0)
  {
    if (v2)
    {
      mig_dealloc_reply_port(v6.msgh_local_port);
    }

    else
    {
      v3 = 4294966995;
      mach_msg_destroy(&v6);
    }
  }

  else
  {
    mig_put_reply_port(v6.msgh_local_port);
  }

  return v3;
}

uint64_t io_connect_set_properties(unsigned int a1, uint64_t a2, int a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v8 = 1;
  v9 = a2;
  v10 = 0x1000000;
  v11 = a3;
  v12 = *MEMORY[0x277D85EF8];
  v13 = a3;
  *&v7.msgh_bits = 0x3880001513;
  *&v7.msgh_remote_port = __PAIR64__(mig_get_reply_port(), a1);
  *&v7.msgh_voucher_port = 0xB0500000000;
  v3 = mach_msg2_internal();
  v4 = v3;
  if ((v3 - 268435458) <= 0xE && ((1 << (v3 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(v7.msgh_local_port);
  }

  else if (v3)
  {
    mig_dealloc_reply_port(v7.msgh_local_port);
  }

  else
  {
    v4 = 4294966995;
    mach_msg_destroy(&v7);
  }

  v5 = *MEMORY[0x277D85DE8];
  return v4;
}

uint64_t io_registry_entry_get_path(unsigned int a1, const char *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  memset(v10, 0, 480);
  *reply_port = 0u;
  v9 = 0u;
  *(&v9 + 1) = *MEMORY[0x277D85EF8];
  if (MEMORY[0x28223BE50])
  {
    v3 = mig_strncpy_zerofill(v10 + 8, a2, 128);
  }

  else
  {
    v3 = mig_strncpy(v10 + 8, a2, 128);
  }

  LODWORD(v10[0]) = 0;
  DWORD1(v10[0]) = v3;
  reply_port[0] = 5395;
  reply_port[1] = ((v3 + 3) & 0xFFFFFFFC) + 40;
  *&reply_port[2] = __PAIR64__(mig_get_reply_port(), a1);
  *&v9 = 0xB0A00000000;
  v4 = mach_msg2_internal();
  v5 = v4;
  if ((v4 - 268435458) <= 0xE && ((1 << (v4 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(reply_port[3]);
  }

  else if (v4)
  {
    mig_dealloc_reply_port(reply_port[3]);
  }

  else
  {
    v5 = 4294966995;
    mach_msg_destroy(reply_port);
  }

  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t io_registry_get_root_entry(unsigned int a1)
{
  v6 = 0;
  v7 = 0;
  v8 = 0;
  *&v5.msgh_bits = 0x1800001513;
  *&v5.msgh_remote_port = __PAIR64__(mig_get_reply_port(), a1);
  *&v5.msgh_voucher_port = 0xB0B00000000;
  v1 = mach_msg2_internal();
  v2 = v1;
  if ((v1 - 268435458) > 0xE || ((1 << (v1 - 2)) & 0x4003) == 0)
  {
    if (v1)
    {
      mig_dealloc_reply_port(v5.msgh_local_port);
    }

    else
    {
      v2 = 4294966995;
      mach_msg_destroy(&v5);
    }
  }

  else
  {
    mig_put_reply_port(v5.msgh_local_port);
  }

  return v2;
}

uint64_t io_registry_entry_set_properties(unsigned int a1, uint64_t a2, int a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v8 = 1;
  v9 = a2;
  v10 = 0x1000000;
  v11 = a3;
  v12 = *MEMORY[0x277D85EF8];
  v13 = a3;
  *&v7.msgh_bits = 0x3880001513;
  *&v7.msgh_remote_port = __PAIR64__(mig_get_reply_port(), a1);
  *&v7.msgh_voucher_port = 0xB0C00000000;
  v3 = mach_msg2_internal();
  v4 = v3;
  if ((v3 - 268435458) <= 0xE && ((1 << (v3 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(v7.msgh_local_port);
  }

  else if (v3)
  {
    mig_dealloc_reply_port(v7.msgh_local_port);
  }

  else
  {
    v4 = 4294966995;
    mach_msg_destroy(&v7);
  }

  v5 = *MEMORY[0x277D85DE8];
  return v4;
}

uint64_t io_registry_entry_in_plane(unsigned int a1, const char *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  *reply_port = 0u;
  v9 = 0u;
  *(&v9 + 1) = *MEMORY[0x277D85EF8];
  if (MEMORY[0x28223BE50])
  {
    v3 = mig_strncpy_zerofill(v10 + 8, a2, 128);
  }

  else
  {
    v3 = mig_strncpy(v10 + 8, a2, 128);
  }

  LODWORD(v10[0]) = 0;
  DWORD1(v10[0]) = v3;
  reply_port[0] = 5395;
  reply_port[1] = ((v3 + 3) & 0xFFFFFFFC) + 40;
  *&reply_port[2] = __PAIR64__(mig_get_reply_port(), a1);
  *&v9 = 0xB0D00000000;
  v4 = mach_msg2_internal();
  v5 = v4;
  if ((v4 - 268435458) <= 0xE && ((1 << (v4 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(reply_port[3]);
  }

  else if (v4)
  {
    mig_dealloc_reply_port(reply_port[3]);
  }

  else
  {
    v5 = 4294966995;
    mach_msg_destroy(reply_port);
  }

  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t io_object_get_retain_count(unsigned int a1)
{
  v6 = 0;
  v7 = 0;
  v8 = 0;
  *&v5.msgh_bits = 0x1800001513;
  *&v5.msgh_remote_port = __PAIR64__(mig_get_reply_port(), a1);
  *&v5.msgh_voucher_port = 0xB0E00000000;
  v1 = mach_msg2_internal();
  v2 = v1;
  if ((v1 - 268435458) > 0xE || ((1 << (v1 - 2)) & 0x4003) == 0)
  {
    if (v1)
    {
      mig_dealloc_reply_port(v5.msgh_local_port);
    }

    else
    {
      v2 = 4294966995;
      mach_msg_destroy(&v5);
    }
  }

  else
  {
    mig_put_reply_port(v5.msgh_local_port);
  }

  return v2;
}

uint64_t io_service_get_busy_state(unsigned int a1)
{
  v6 = 0;
  v7 = 0;
  v8 = 0;
  *&v5.msgh_bits = 0x1800001513;
  *&v5.msgh_remote_port = __PAIR64__(mig_get_reply_port(), a1);
  *&v5.msgh_voucher_port = 0xB0F00000000;
  v1 = mach_msg2_internal();
  v2 = v1;
  if ((v1 - 268435458) > 0xE || ((1 << (v1 - 2)) & 0x4003) == 0)
  {
    if (v1)
    {
      mig_dealloc_reply_port(v5.msgh_local_port);
    }

    else
    {
      v2 = 4294966995;
      mach_msg_destroy(&v5);
    }
  }

  else
  {
    mig_put_reply_port(v5.msgh_local_port);
  }

  return v2;
}

uint64_t io_service_wait_quiet(unsigned int a1, uint64_t a2)
{
  v9 = 0;
  v7 = *MEMORY[0x277D85EF8];
  v8 = a2;
  *&v6.msgh_bits = 0x2800001513;
  *&v6.msgh_remote_port = __PAIR64__(mig_get_reply_port(), a1);
  *&v6.msgh_voucher_port = 0xB1000000000;
  v2 = mach_msg2_internal();
  v3 = v2;
  if ((v2 - 268435458) > 0xE || ((1 << (v2 - 2)) & 0x4003) == 0)
  {
    if (v2)
    {
      mig_dealloc_reply_port(v6.msgh_local_port);
    }

    else
    {
      v3 = 4294966995;
      mach_msg_destroy(&v6);
    }
  }

  else
  {
    mig_put_reply_port(v6.msgh_local_port);
  }

  return v3;
}

uint64_t io_registry_entry_create_iterator(unsigned int a1, const char *a2, int a3, _DWORD *a4)
{
  v18 = *MEMORY[0x277D85DE8];
  memset(v17, 0, 140);
  *reply_port = 0u;
  v16 = 0u;
  *(&v16 + 1) = *MEMORY[0x277D85EF8];
  if (MEMORY[0x28223BE50])
  {
    v7 = mig_strncpy_zerofill(v17 + 8, a2, 128);
  }

  else
  {
    v7 = mig_strncpy(v17 + 8, a2, 128);
  }

  LODWORD(v17[0]) = 0;
  DWORD1(v17[0]) = v7;
  v8 = (v7 + 3) & 0xFFFFFFFC;
  v9 = v8 + 44;
  *(v17 + v8 + 8) = a3;
  v10 = mig_get_reply_port();
  reply_port[0] = 5395;
  reply_port[1] = v9;
  *&reply_port[2] = __PAIR64__(v10, a1);
  *&v16 = 0xB1100000000;
  v11 = mach_msg2_internal();
  v12 = v11;
  if ((v11 - 268435458) <= 0xE && ((1 << (v11 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(reply_port[3]);
  }

  else
  {
    if (!v11)
    {
      if (DWORD1(v16) == 71)
      {
        v12 = 4294966988;
      }

      else if (DWORD1(v16) == 2933)
      {
        if ((reply_port[0] & 0x80000000) != 0)
        {
          v12 = 4294966996;
          if (DWORD2(v16) == 1 && reply_port[1] == 40 && !reply_port[2] && WORD3(v17[0]) << 16 == 1114112)
          {
            v12 = 0;
            *a4 = HIDWORD(v16);
            goto LABEL_26;
          }
        }

        else if (reply_port[1] == 36)
        {
          v12 = 4294966996;
          if (LODWORD(v17[0]))
          {
            if (reply_port[2])
            {
              v12 = 4294966996;
            }

            else
            {
              v12 = LODWORD(v17[0]);
            }
          }
        }

        else
        {
          v12 = 4294966996;
        }
      }

      else
      {
        v12 = 4294966995;
      }

      mach_msg_destroy(reply_port);
      goto LABEL_26;
    }

    mig_dealloc_reply_port(reply_port[3]);
  }

LABEL_26:
  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

uint64_t io_iterator_is_valid(unsigned int a1)
{
  v6 = 0;
  v7 = 0;
  v8 = 0;
  *&v5.msgh_bits = 0x1800001513;
  *&v5.msgh_remote_port = __PAIR64__(mig_get_reply_port(), a1);
  *&v5.msgh_voucher_port = 0xB1200000000;
  v1 = mach_msg2_internal();
  v2 = v1;
  if ((v1 - 268435458) > 0xE || ((1 << (v1 - 2)) & 0x4003) == 0)
  {
    if (v1)
    {
      mig_dealloc_reply_port(v5.msgh_local_port);
    }

    else
    {
      v2 = 4294966995;
      mach_msg_destroy(&v5);
    }
  }

  else
  {
    mig_put_reply_port(v5.msgh_local_port);
  }

  return v2;
}

uint64_t io_catalog_send_data(unsigned int a1, int a2, uint64_t a3, int a4)
{
  v16 = *MEMORY[0x277D85DE8];
  v9 = 1;
  v10 = a3;
  v11 = 16777472;
  v12 = a4;
  v13 = *MEMORY[0x277D85EF8];
  v14 = a2;
  v15 = a4;
  *&v8.msgh_bits = 0x3C80001513;
  *&v8.msgh_remote_port = __PAIR64__(mig_get_reply_port(), a1);
  *&v8.msgh_voucher_port = 0xB1400000000;
  v4 = mach_msg2_internal();
  v5 = v4;
  if ((v4 - 268435458) <= 0xE && ((1 << (v4 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(v8.msgh_local_port);
  }

  else if (v4)
  {
    mig_dealloc_reply_port(v8.msgh_local_port);
  }

  else
  {
    v5 = 4294966995;
    mach_msg_destroy(&v8);
  }

  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t io_catalog_terminate(unsigned int a1, int a2, char *src)
{
  v12 = *MEMORY[0x277D85DE8];
  memset(v11, 0, 140);
  *reply_port = 0u;
  v10 = 0u;
  *(&v10 + 1) = *MEMORY[0x277D85EF8];
  LODWORD(v11[0]) = a2;
  if (MEMORY[0x28223BE50])
  {
    v4 = mig_strncpy_zerofill(v11 + 12, src, 128);
  }

  else
  {
    v4 = mig_strncpy(v11 + 12, src, 128);
  }

  DWORD1(v11[0]) = 0;
  DWORD2(v11[0]) = v4;
  reply_port[0] = 5395;
  reply_port[1] = ((v4 + 3) & 0xFFFFFFFC) + 44;
  *&reply_port[2] = __PAIR64__(mig_get_reply_port(), a1);
  *&v10 = 0xB1500000000;
  v5 = mach_msg2_internal();
  v6 = v5;
  if ((v5 - 268435458) <= 0xE && ((1 << (v5 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(reply_port[3]);
  }

  else if (v5)
  {
    mig_dealloc_reply_port(reply_port[3]);
  }

  else
  {
    v6 = 4294966995;
    mach_msg_destroy(reply_port);
  }

  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t io_catalog_get_data(unsigned int a1, int a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v10 = 0;
  v9 = 0;
  v12 = 0;
  v11 = 0;
  v7 = *MEMORY[0x277D85EF8];
  v8 = a2;
  *&v6.msgh_bits = 0x2400001513;
  *&v6.msgh_remote_port = __PAIR64__(mig_get_reply_port(), a1);
  *&v6.msgh_voucher_port = 0xB1600000000;
  v2 = mach_msg2_internal();
  v3 = v2;
  if ((v2 - 268435458) <= 0xE && ((1 << (v2 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(v6.msgh_local_port);
  }

  else if (v2)
  {
    mig_dealloc_reply_port(v6.msgh_local_port);
  }

  else
  {
    v3 = 4294966995;
    mach_msg_destroy(&v6);
  }

  v4 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t io_catalog_get_gen_count(unsigned int a1)
{
  v6 = 0;
  v7 = 0;
  v8 = 0;
  *&v5.msgh_bits = 0x1800001513;
  *&v5.msgh_remote_port = __PAIR64__(mig_get_reply_port(), a1);
  *&v5.msgh_voucher_port = 0xB1700000000;
  v1 = mach_msg2_internal();
  v2 = v1;
  if ((v1 - 268435458) > 0xE || ((1 << (v1 - 2)) & 0x4003) == 0)
  {
    if (v1)
    {
      mig_dealloc_reply_port(v5.msgh_local_port);
    }

    else
    {
      v2 = 4294966995;
      mach_msg_destroy(&v5);
    }
  }

  else
  {
    mig_put_reply_port(v5.msgh_local_port);
  }

  return v2;
}

uint64_t io_catalog_module_loaded(unsigned int a1, const char *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  *reply_port = 0u;
  v9 = 0u;
  *(&v9 + 1) = *MEMORY[0x277D85EF8];
  if (MEMORY[0x28223BE50])
  {
    v3 = mig_strncpy_zerofill(v10 + 8, a2, 128);
  }

  else
  {
    v3 = mig_strncpy(v10 + 8, a2, 128);
  }

  LODWORD(v10[0]) = 0;
  DWORD1(v10[0]) = v3;
  reply_port[0] = 5395;
  reply_port[1] = ((v3 + 3) & 0xFFFFFFFC) + 40;
  *&reply_port[2] = __PAIR64__(mig_get_reply_port(), a1);
  *&v9 = 0xB1800000000;
  v4 = mach_msg2_internal();
  v5 = v4;
  if ((v4 - 268435458) <= 0xE && ((1 << (v4 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(reply_port[3]);
  }

  else if (v4)
  {
    mig_dealloc_reply_port(reply_port[3]);
  }

  else
  {
    v5 = 4294966995;
    mach_msg_destroy(reply_port);
  }

  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t io_catalog_reset(unsigned int a1, int a2)
{
  v9 = 0;
  v7 = *MEMORY[0x277D85EF8];
  v8 = a2;
  *&v6.msgh_bits = 0x2400001513;
  *&v6.msgh_remote_port = __PAIR64__(mig_get_reply_port(), a1);
  *&v6.msgh_voucher_port = 0xB1900000000;
  v2 = mach_msg2_internal();
  v3 = v2;
  if ((v2 - 268435458) > 0xE || ((1 << (v2 - 2)) & 0x4003) == 0)
  {
    if (v2)
    {
      mig_dealloc_reply_port(v6.msgh_local_port);
    }

    else
    {
      v3 = 4294966995;
      mach_msg_destroy(&v6);
    }
  }

  else
  {
    mig_put_reply_port(v6.msgh_local_port);
  }

  return v3;
}

uint64_t io_service_request_probe(unsigned int a1, int a2)
{
  v9 = 0;
  v7 = *MEMORY[0x277D85EF8];
  v8 = a2;
  *&v6.msgh_bits = 0x2400001513;
  *&v6.msgh_remote_port = __PAIR64__(mig_get_reply_port(), a1);
  *&v6.msgh_voucher_port = 0xB1A00000000;
  v2 = mach_msg2_internal();
  v3 = v2;
  if ((v2 - 268435458) > 0xE || ((1 << (v2 - 2)) & 0x4003) == 0)
  {
    if (v2)
    {
      mig_dealloc_reply_port(v6.msgh_local_port);
    }

    else
    {
      v3 = 4294966995;
      mach_msg_destroy(&v6);
    }
  }

  else
  {
    mig_put_reply_port(v6.msgh_local_port);
  }

  return v3;
}

uint64_t io_registry_entry_get_name_in_plane(unsigned int a1, const char *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v11 = 0;
  v9 = 0u;
  memset(v10, 0, sizeof(v10));
  *reply_port = 0u;
  *(&v9 + 1) = *MEMORY[0x277D85EF8];
  if (MEMORY[0x28223BE50])
  {
    v3 = mig_strncpy_zerofill(v10 + 8, a2, 128);
  }

  else
  {
    v3 = mig_strncpy(v10 + 8, a2, 128);
  }

  LODWORD(v10[0]) = 0;
  DWORD1(v10[0]) = v3;
  reply_port[0] = 5395;
  reply_port[1] = ((v3 + 3) & 0xFFFFFFFC) + 40;
  *&reply_port[2] = __PAIR64__(mig_get_reply_port(), a1);
  *&v9 = 0xB1B00000000;
  v4 = mach_msg2_internal();
  v5 = v4;
  if ((v4 - 268435458) <= 0xE && ((1 << (v4 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(reply_port[3]);
  }

  else if (v4)
  {
    mig_dealloc_reply_port(reply_port[3]);
  }

  else
  {
    v5 = 4294966995;
    mach_msg_destroy(reply_port);
  }

  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t io_service_match_property_table(unsigned int a1, const char *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  memset(v10, 0, 480);
  *reply_port = 0u;
  v9 = 0u;
  *(&v9 + 1) = *MEMORY[0x277D85EF8];
  if (MEMORY[0x28223BE50])
  {
    v3 = mig_strncpy_zerofill(v10 + 8, a2, 512);
  }

  else
  {
    v3 = mig_strncpy(v10 + 8, a2, 512);
  }

  LODWORD(v10[0]) = 0;
  DWORD1(v10[0]) = v3;
  reply_port[0] = 5395;
  reply_port[1] = ((v3 + 3) & 0xFFFFFFFC) + 40;
  *&reply_port[2] = __PAIR64__(mig_get_reply_port(), a1);
  *&v9 = 0xB1C00000000;
  v4 = mach_msg2_internal();
  v5 = v4;
  if ((v4 - 268435458) <= 0xE && ((1 << (v4 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(reply_port[3]);
  }

  else if (v4)
  {
    mig_dealloc_reply_port(reply_port[3]);
  }

  else
  {
    v5 = 4294966995;
    mach_msg_destroy(reply_port);
  }

  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t io_connect_get_notification_semaphore(unsigned int a1, int a2)
{
  v10 = 0;
  v9 = 0;
  v7 = *MEMORY[0x277D85EF8];
  v8 = a2;
  *&v6.msgh_bits = 0x2400001513;
  *&v6.msgh_remote_port = __PAIR64__(mig_get_reply_port(), a1);
  *&v6.msgh_voucher_port = 0xB2400000000;
  v2 = mach_msg2_internal();
  v3 = v2;
  if ((v2 - 268435458) > 0xE || ((1 << (v2 - 2)) & 0x4003) == 0)
  {
    if (v2)
    {
      mig_dealloc_reply_port(v6.msgh_local_port);
    }

    else
    {
      v3 = 4294966995;
      mach_msg_destroy(&v6);
    }
  }

  else
  {
    mig_put_reply_port(v6.msgh_local_port);
  }

  return v3;
}

uint64_t io_registry_entry_get_location_in_plane(unsigned int a1, const char *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v11 = 0;
  v9 = 0u;
  memset(v10, 0, sizeof(v10));
  *reply_port = 0u;
  *(&v9 + 1) = *MEMORY[0x277D85EF8];
  if (MEMORY[0x28223BE50])
  {
    v3 = mig_strncpy_zerofill(v10 + 8, a2, 128);
  }

  else
  {
    v3 = mig_strncpy(v10 + 8, a2, 128);
  }

  LODWORD(v10[0]) = 0;
  DWORD1(v10[0]) = v3;
  reply_port[0] = 5395;
  reply_port[1] = ((v3 + 3) & 0xFFFFFFFC) + 40;
  *&reply_port[2] = __PAIR64__(mig_get_reply_port(), a1);
  *&v9 = 0xB2600000000;
  v4 = mach_msg2_internal();
  v5 = v4;
  if ((v4 - 268435458) <= 0xE && ((1 << (v4 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(reply_port[3]);
  }

  else if (v4)
  {
    mig_dealloc_reply_port(reply_port[3]);
  }

  else
  {
    v5 = 4294966995;
    mach_msg_destroy(reply_port);
  }

  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t io_registry_entry_get_property_recursively(unsigned int a1, const char *a2, const char *a3, int a4, void *a5, _DWORD *a6)
{
  v46 = *MEMORY[0x277D85DE8];
  v45 = 0;
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
  memset(v28, 0, sizeof(v28));
  *reply_port = 0u;
  *(&v28[0] + 1) = *MEMORY[0x277D85EF8];
  if (MEMORY[0x28223BE50])
  {
    v11 = mig_strncpy_zerofill(&v28[1] + 8, a2, 128);
  }

  else
  {
    v11 = mig_strncpy(&v28[1] + 8, a2, 128);
  }

  LODWORD(v28[1]) = 0;
  DWORD1(v28[1]) = v11;
  v12 = (v11 + 3) & 0xFFFFFFFC;
  v13 = v12 + 52;
  v14 = reply_port + v12;
  v15 = v14 - 128;
  v16 = v14 + 48;
  if (MEMORY[0x28223BE50])
  {
    v17 = mig_strncpy_zerofill(v16, a3, 128);
  }

  else
  {
    v17 = mig_strncpy(v16, a3, 128);
  }

  *(v15 + 42) = 0;
  *(v15 + 43) = v17;
  v18 = (v17 + 3) & 0xFFFFFFFC;
  v19 = v13 + v18;
  *&v15[v18 + 176] = a4;
  v20 = mig_get_reply_port();
  reply_port[0] = 5395;
  reply_port[1] = v19;
  *&reply_port[2] = __PAIR64__(v20, a1);
  *&v28[0] = 0xB2700000000;
  v21 = mach_msg2_internal();
  v22 = v21;
  if ((v21 - 268435458) > 0xE || ((1 << (v21 - 2)) & 0x4003) == 0)
  {
    if (!v21)
    {
      if (DWORD1(v28[0]) == 71)
      {
        v22 = 4294966988;
      }

      else if (DWORD1(v28[0]) == 2955)
      {
        if ((reply_port[0] & 0x80000000) != 0)
        {
          v22 = 4294966996;
          if (DWORD2(v28[0]) == 1 && reply_port[1] == 56 && !reply_port[2] && BYTE7(v28[1]) == 1)
          {
            v24 = DWORD2(v28[1]);
            if (DWORD2(v28[1]) == DWORD1(v29))
            {
              v22 = 0;
              *a5 = *(v28 + 12);
              *a6 = v24;
              goto LABEL_32;
            }
          }
        }

        else if (reply_port[1] == 36)
        {
          v22 = 4294966996;
          if (LODWORD(v28[1]))
          {
            if (reply_port[2])
            {
              v22 = 4294966996;
            }

            else
            {
              v22 = LODWORD(v28[1]);
            }
          }
        }

        else
        {
          v22 = 4294966996;
        }
      }

      else
      {
        v22 = 4294966995;
      }

      mach_msg_destroy(reply_port);
      goto LABEL_32;
    }

    mig_dealloc_reply_port(reply_port[3]);
  }

  else
  {
    mig_put_reply_port(reply_port[3]);
  }

LABEL_32:
  v25 = *MEMORY[0x277D85DE8];
  return v22;
}

uint64_t io_service_get_state(unsigned int a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = 0;
  v7 = 0u;
  v8 = 0u;
  *&v6.msgh_bits = 0x1800001513;
  *&v6.msgh_remote_port = __PAIR64__(mig_get_reply_port(), a1);
  *&v6.msgh_voucher_port = 0xB2800000000;
  v1 = mach_msg2_internal();
  v2 = v1;
  if ((v1 - 268435458) > 0xE || ((1 << (v1 - 2)) & 0x4003) == 0)
  {
    if (v1)
    {
      mig_dealloc_reply_port(v6.msgh_local_port);
    }

    else
    {
      v2 = 4294966995;
      mach_msg_destroy(&v6);
    }
  }

  else
  {
    mig_put_reply_port(v6.msgh_local_port);
  }

  v4 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t io_service_get_matching_services_ool(unsigned int a1, uint64_t a2, int a3)
{
  v7 = 1;
  v8 = a2;
  v9 = 0x1000000;
  v10 = a3;
  v11 = *MEMORY[0x277D85EF8];
  v12 = a3;
  v13 = 0;
  *&v6.msgh_bits = 0x3880001513;
  *&v6.msgh_remote_port = __PAIR64__(mig_get_reply_port(), a1);
  *&v6.msgh_voucher_port = 0xB2900000000;
  v3 = mach_msg2_internal();
  v4 = v3;
  if ((v3 - 268435458) <= 0xE && ((1 << (v3 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(v6.msgh_local_port);
  }

  else if (v3)
  {
    mig_dealloc_reply_port(v6.msgh_local_port);
  }

  else
  {
    v4 = 4294966995;
    mach_msg_destroy(&v6);
  }

  return v4;
}

uint64_t io_service_match_property_table_ool(unsigned int a1, uint64_t a2, int a3)
{
  v7 = 1;
  v8 = a2;
  v9 = 0x1000000;
  v10 = a3;
  v11 = *MEMORY[0x277D85EF8];
  v12 = a3;
  *&v6.msgh_bits = 0x3880001513;
  *&v6.msgh_remote_port = __PAIR64__(mig_get_reply_port(), a1);
  *&v6.msgh_voucher_port = 0xB2A00000000;
  v3 = mach_msg2_internal();
  v4 = v3;
  if ((v3 - 268435458) <= 0xE && ((1 << (v3 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(v6.msgh_local_port);
  }

  else if (v3)
  {
    mig_dealloc_reply_port(v6.msgh_local_port);
  }

  else
  {
    v4 = 4294966995;
    mach_msg_destroy(&v6);
  }

  return v4;
}

uint64_t io_object_get_superclass(unsigned int a1, const char *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v11 = 0;
  v9 = 0u;
  memset(v10, 0, sizeof(v10));
  *reply_port = 0u;
  *(&v9 + 1) = *MEMORY[0x277D85EF8];
  if (MEMORY[0x28223BE50])
  {
    v3 = mig_strncpy_zerofill(v10 + 8, a2, 128);
  }

  else
  {
    v3 = mig_strncpy(v10 + 8, a2, 128);
  }

  LODWORD(v10[0]) = 0;
  DWORD1(v10[0]) = v3;
  reply_port[0] = 5395;
  reply_port[1] = ((v3 + 3) & 0xFFFFFFFC) + 40;
  *&reply_port[2] = __PAIR64__(mig_get_reply_port(), a1);
  *&v9 = 0xB2C00000000;
  v4 = mach_msg2_internal();
  v5 = v4;
  if ((v4 - 268435458) <= 0xE && ((1 << (v4 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(reply_port[3]);
  }

  else if (v4)
  {
    mig_dealloc_reply_port(reply_port[3]);
  }

  else
  {
    v5 = 4294966995;
    mach_msg_destroy(reply_port);
  }

  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t io_object_get_bundle_identifier(unsigned int a1, const char *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v11 = 0;
  v9 = 0u;
  memset(v10, 0, sizeof(v10));
  *reply_port = 0u;
  *(&v9 + 1) = *MEMORY[0x277D85EF8];
  if (MEMORY[0x28223BE50])
  {
    v3 = mig_strncpy_zerofill(v10 + 8, a2, 128);
  }

  else
  {
    v3 = mig_strncpy(v10 + 8, a2, 128);
  }

  LODWORD(v10[0]) = 0;
  DWORD1(v10[0]) = v3;
  reply_port[0] = 5395;
  reply_port[1] = ((v3 + 3) & 0xFFFFFFFC) + 40;
  *&reply_port[2] = __PAIR64__(mig_get_reply_port(), a1);
  *&v9 = 0xB2D00000000;
  v4 = mach_msg2_internal();
  v5 = v4;
  if ((v4 - 268435458) <= 0xE && ((1 << (v4 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(reply_port[3]);
  }

  else if (v4)
  {
    mig_dealloc_reply_port(reply_port[3]);
  }

  else
  {
    v5 = 4294966995;
    mach_msg_destroy(reply_port);
  }

  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t io_service_open_extended(unsigned int a1, int a2, int a3, uint64_t a4, uint64_t a5, int a6)
{
  v10 = 2;
  v11 = a2;
  v12 = 0x13000000000000;
  v13 = a5;
  v14 = 0x1000000;
  v15 = a6;
  v16 = *MEMORY[0x277D85EF8];
  v17 = a3;
  v18 = a4;
  v19 = a6;
  *&v9.msgh_bits = 0x5080001513;
  *&v9.msgh_remote_port = __PAIR64__(mig_get_reply_port(), a1);
  *&v9.msgh_voucher_port = 0xB2E00000000;
  v6 = mach_msg2_internal();
  v7 = v6;
  if ((v6 - 268435458) <= 0xE && ((1 << (v6 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(v9.msgh_local_port);
  }

  else if (v6)
  {
    mig_dealloc_reply_port(v9.msgh_local_port);
  }

  else
  {
    v7 = 4294966995;
    mach_msg_destroy(&v9);
  }

  return v7;
}

uint64_t io_connect_map_memory_into_task(unsigned int a1, int a2, int a3, uint64_t *a4, uint64_t *a5, int a6)
{
  v10 = 1;
  v11 = a3;
  v12 = 0x13000000000000;
  v13 = *MEMORY[0x277D85EF8];
  v14 = a2;
  v15 = *a4;
  v16 = *a5;
  v17 = a6;
  *&v9.msgh_bits = 0x4880001513;
  *&v9.msgh_remote_port = __PAIR64__(mig_get_reply_port(), a1);
  *&v9.msgh_voucher_port = 0xB2F00000000;
  v6 = mach_msg2_internal();
  v7 = v6;
  if ((v6 - 268435458) <= 0xE && ((1 << (v6 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(v9.msgh_local_port);
  }

  else if (v6)
  {
    mig_dealloc_reply_port(v9.msgh_local_port);
  }

  else
  {
    v7 = 4294966995;
    mach_msg_destroy(&v9);
  }

  return v7;
}

uint64_t io_connect_unmap_memory_from_task(unsigned int a1, int a2, int a3, uint64_t a4)
{
  v15 = *MEMORY[0x277D85DE8];
  v9 = 1;
  v10 = a3;
  v11 = 0x13000000000000;
  v12 = *MEMORY[0x277D85EF8];
  v13 = a2;
  v14 = a4;
  *&v8.msgh_bits = 0x3C80001513;
  *&v8.msgh_remote_port = __PAIR64__(mig_get_reply_port(), a1);
  *&v8.msgh_voucher_port = 0xB3000000000;
  v4 = mach_msg2_internal();
  v5 = v4;
  if ((v4 - 268435458) <= 0xE && ((1 << (v4 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(v8.msgh_local_port);
  }

  else if (v4)
  {
    mig_dealloc_reply_port(v8.msgh_local_port);
  }

  else
  {
    v5 = 4294966995;
    mach_msg_destroy(&v8);
  }

  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t io_connect_method(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__dst, int *a10, void *a11, int *a12, uint64_t a13, void *a14)
{
  v14 = MEMORY[0x28223BE20]();
  v81 = *MEMORY[0x277D85DE8];
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
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  *__n = 0u;
  v52 = 0u;
  *reply_port = 0u;
  v50 = 0u;
  *(&v50 + 1) = *MEMORY[0x277D85EF8];
  LODWORD(__n[0]) = v20;
  if (v15 <= 0x10)
  {
    v21 = v19;
    v22 = v18;
    v23 = v17;
    v24 = v16;
    v25 = v15;
    v26 = v14;
    v27 = 2 * v15;
    __memcpy_chk();
    HIDWORD(__n[0]) = v25;
    if (v23 <= 0x1000)
    {
      v31 = &reply_port[v27];
      v32 = (v23 + 3) & 0x3FFC;
      v33 = &reply_port[v27] + v32;
      v34 = v27 * 4 + v32;
      memcpy(v31 + 11, v24, v23);
      v31[10] = v23;
      *(v33 + 44) = v22;
      *(v33 + 52) = v21;
      v35 = *a10;
      if (*a10 >= 0x1000)
      {
        v35 = 4096;
      }

      *(v33 + 15) = v35;
      v36 = *a12;
      if (*a12 >= 0x10)
      {
        v36 = 16;
      }

      *(v33 + 16) = v36;
      *(v33 + 68) = a13;
      *(v33 + 76) = *a14;
      v37 = mig_get_reply_port();
      reply_port[0] = 5395;
      reply_port[1] = v34 + 84;
      *&reply_port[2] = __PAIR64__(v37, v26);
      *&v50 = 0xB3100000000;
      v38 = mach_msg2_internal();
      v28 = v38;
      if ((v38 - 268435458) <= 0xE && ((1 << (v38 - 2)) & 0x4003) != 0)
      {
        mig_put_reply_port(reply_port[3]);
        goto LABEL_4;
      }

      if (v38)
      {
        mig_dealloc_reply_port(reply_port[3]);
        goto LABEL_4;
      }

      if (DWORD1(v50) == 71)
      {
        v28 = 4294966988;
      }

      else if (DWORD1(v50) == 2965)
      {
        if ((reply_port[0] & 0x80000000) != 0)
        {
          goto LABEL_30;
        }

        if (reply_port[1] - 4277 <= 0xFFFFEF7E)
        {
          if (LODWORD(__n[0]))
          {
            v39 = reply_port[2] == 0;
          }

          else
          {
            v39 = 0;
          }

          if (v39 && reply_port[1] == 36)
          {
            v28 = LODWORD(__n[0]);
          }

          else
          {
            v28 = 4294966996;
          }

          goto LABEL_31;
        }

        if (reply_port[2])
        {
          goto LABEL_30;
        }

        v28 = LODWORD(__n[0]);
        if (LODWORD(__n[0]))
        {
          goto LABEL_31;
        }

        v41 = HIDWORD(__n[0]);
        if (HIDWORD(__n[0]) > 0x1000)
        {
LABEL_30:
          v28 = 4294966996;
        }

        else
        {
          v28 = 4294966996;
          if (reply_port[1] - 52 >= HIDWORD(__n[0]))
          {
            v42 = (HIDWORD(__n[0]) + 3) & 0xFFFFFFFC;
            if (reply_port[1] >= v42 + 52)
            {
              v43 = reply_port + v42;
              v44 = *(v43 + 10);
              if (v44 <= 0x10 && v44 <= (reply_port[1] - v42 - 52) >> 3)
              {
                v45 = 8 * v44;
                if (reply_port[1] - v42 == 8 * v44 + 52)
                {
                  v46 = *a10;
                  if (HIDWORD(__n[0]) <= v46)
                  {
                    v47 = v43 - 4096;
                    memcpy(__dst, &__n[1], HIDWORD(__n[0]));
                    *a10 = v41;
                    v48 = *(v47 + 1034);
                    if (v48 <= *a12)
                    {
                      memcpy(a11, v47 + 4140, 8 * v48);
                      v28 = 0;
                      *a12 = *(v47 + 1034);
                      *a14 = *&v47[v45 + 4140];
                      goto LABEL_4;
                    }

                    memcpy(a11, v47 + 4140, (8 * *a12));
                    *a12 = *(v47 + 1034);
                  }

                  else
                  {
                    memcpy(__dst, &__n[1], v46);
                    *a10 = v41;
                  }

                  goto LABEL_3;
                }
              }
            }
          }
        }
      }

      else
      {
        v28 = 4294966995;
      }

LABEL_31:
      mach_msg_destroy(reply_port);
      goto LABEL_4;
    }
  }

LABEL_3:
  v28 = 4294966989;
LABEL_4:
  v29 = *MEMORY[0x277D85DE8];
  return v28;
}

uint64_t io_connect_async_method(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, unsigned int a9, uint64_t a10, uint64_t a11, void *__dst, int *a13, void *a14, int *a15, uint64_t a16, void *a17)
{
  v17 = MEMORY[0x28223BE20](a1);
  v88 = *MEMORY[0x277D85DE8];
  v86 = 0u;
  v87 = 0u;
  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  *__n = 0u;
  v59 = 0u;
  memset(&reply_port, 0, sizeof(reply_port));
  v56 = 1;
  v57 = v23;
  HIDWORD(__n[0]) = 1310720;
  __n[1] = *MEMORY[0x277D85EF8];
  if (v18 <= 8)
  {
    v24 = v22;
    v25 = v21;
    v26 = v20;
    v27 = v19;
    v28 = v18;
    v29 = v17;
    v30 = 8 * v18;
    __memcpy_chk();
    LODWORD(v59) = v28;
    v31 = &reply_port + v30;
    *(&reply_port + v30 + 52) = v27;
    if (v25 <= 0x10)
    {
      v32 = v31 - 64;
      v33 = 8 * v25;
      memcpy(v31 + 60, v26, v33);
      *(v32 + 30) = v25;
      if (a9 <= 0x1000)
      {
        v37 = &v32[v33];
        v38 = (a9 + 3) & 0x3FFC;
        v39 = &v37[v38];
        v40 = v30 + v33 + v38;
        memcpy(v37 + 128, v24, a9);
        *(v37 + 31) = a9;
        *(v39 + 16) = a10;
        *(v39 + 17) = a11;
        v41 = *a13;
        if (*a13 >= 0x1000)
        {
          v41 = 4096;
        }

        *(v39 + 36) = v41;
        v42 = *a15;
        if (*a15 >= 0x10)
        {
          v42 = 16;
        }

        *(v39 + 37) = v42;
        *(v39 + 19) = a16;
        *(v39 + 20) = *a17;
        v43 = mig_get_reply_port();
        reply_port.msgh_bits = -2147478253;
        reply_port.msgh_size = v40 + 104;
        *&reply_port.msgh_remote_port = __PAIR64__(v43, v29);
        *&reply_port.msgh_voucher_port = 0xB3200000000;
        v44 = mach_msg2_internal();
        v34 = v44;
        if ((v44 - 268435458) <= 0xE && ((1 << (v44 - 2)) & 0x4003) != 0)
        {
          mig_put_reply_port(reply_port.msgh_local_port);
          goto LABEL_5;
        }

        if (v44)
        {
          mig_dealloc_reply_port(reply_port.msgh_local_port);
          goto LABEL_5;
        }

        if (reply_port.msgh_id == 71)
        {
          v34 = 4294966988;
        }

        else if (reply_port.msgh_id == 2966)
        {
          if ((reply_port.msgh_bits & 0x80000000) != 0)
          {
            goto LABEL_31;
          }

          if (reply_port.msgh_size - 4277 <= 0xFFFFEF7E)
          {
            if (LODWORD(__n[0]))
            {
              v45 = reply_port.msgh_remote_port == 0;
            }

            else
            {
              v45 = 0;
            }

            if (v45 && reply_port.msgh_size == 36)
            {
              v34 = LODWORD(__n[0]);
            }

            else
            {
              v34 = 4294966996;
            }

            goto LABEL_32;
          }

          if (reply_port.msgh_remote_port)
          {
            goto LABEL_31;
          }

          v34 = LODWORD(__n[0]);
          if (LODWORD(__n[0]))
          {
            goto LABEL_32;
          }

          v47 = HIDWORD(__n[0]);
          if (HIDWORD(__n[0]) > 0x1000)
          {
LABEL_31:
            v34 = 4294966996;
          }

          else
          {
            v34 = 4294966996;
            if (reply_port.msgh_size - 52 >= HIDWORD(__n[0]))
            {
              v48 = (HIDWORD(__n[0]) + 3) & 0xFFFFFFFC;
              if (reply_port.msgh_size >= v48 + 52)
              {
                v49 = &reply_port + v48;
                v50 = *(v49 + 10);
                if (v50 <= 0x10 && v50 <= (reply_port.msgh_size - v48 - 52) >> 3)
                {
                  v51 = 8 * v50;
                  if (reply_port.msgh_size - v48 == 8 * v50 + 52)
                  {
                    v52 = *a13;
                    if (HIDWORD(__n[0]) <= v52)
                    {
                      v53 = v49 - 4096;
                      memcpy(__dst, &__n[1], HIDWORD(__n[0]));
                      *a13 = v47;
                      v54 = *(v53 + 1034);
                      if (v54 <= *a15)
                      {
                        memcpy(a14, v53 + 4140, 8 * v54);
                        v34 = 0;
                        *a15 = *(v53 + 1034);
                        *a17 = *&v53[v51 + 4140];
                        goto LABEL_5;
                      }

                      memcpy(a14, v53 + 4140, (8 * *a15));
                      *a15 = *(v53 + 1034);
                    }

                    else
                    {
                      memcpy(__dst, &__n[1], v52);
                      *a13 = v47;
                    }

                    goto LABEL_4;
                  }
                }
              }
            }
          }
        }

        else
        {
          v34 = 4294966995;
        }

LABEL_32:
        mach_msg_destroy(&reply_port);
        goto LABEL_5;
      }
    }
  }

LABEL_4:
  v34 = 4294966989;
LABEL_5:
  v35 = *MEMORY[0x277D85DE8];
  return v34;
}

uint64_t io_connect_set_notification_port(unsigned int a1, int a2, int a3, uint64_t a4)
{
  v15 = *MEMORY[0x277D85DE8];
  v9 = 1;
  v10 = a3;
  v11 = 0x14000000000000;
  v12 = *MEMORY[0x277D85EF8];
  v13 = a2;
  v14 = a4;
  *&v8.msgh_bits = 0x3C80001513;
  *&v8.msgh_remote_port = __PAIR64__(mig_get_reply_port(), a1);
  *&v8.msgh_voucher_port = 0xB3300000000;
  v4 = mach_msg2_internal();
  v5 = v4;
  if ((v4 - 268435458) <= 0xE && ((1 << (v4 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(v8.msgh_local_port);
  }

  else if (v4)
  {
    mig_dealloc_reply_port(v8.msgh_local_port);
  }

  else
  {
    v5 = 4294966995;
    mach_msg_destroy(&v8);
  }

  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t io_service_add_notification(unsigned int a1, const char *a2, const char *a3, int a4, const void *a5, unsigned int a6, _DWORD *a7)
{
  v30 = *MEMORY[0x277D85DE8];
  v28 = 0u;
  memset(v29, 0, 464);
  memset(&reply_port, 0, sizeof(reply_port));
  v26 = 1;
  v27 = a4;
  DWORD1(v28) = 1310720;
  *(&v28 + 1) = *MEMORY[0x277D85EF8];
  v12 = &reply_port - 128;
  if (MEMORY[0x28223BE50])
  {
    v13 = mig_strncpy_zerofill(v29 + 8, a2, 128);
    LODWORD(v29[0]) = 0;
    DWORD1(v29[0]) = v13;
    v14 = (v13 + 3) & 0xFFFFFFFC;
    v15 = &v12[v14];
    v16 = mig_strncpy_zerofill(v15 + 192, a3, 512);
  }

  else
  {
    v17 = mig_strncpy(v29 + 8, a2, 128);
    LODWORD(v29[0]) = 0;
    DWORD1(v29[0]) = v17;
    v14 = (v17 + 3) & 0xFFFFFFFC;
    v15 = &v12[v14];
    v16 = mig_strncpy(v15 + 192, a3, 512);
  }

  *(v15 + 46) = 0;
  *(v15 + 47) = v16;
  if (a6 <= 8)
  {
    v19 = (v16 + 3) & 0xFFFFFFFC;
    v20 = &v15[v19];
    memcpy(v20 + 196, a5, 8 * a6);
    *(v20 + 48) = a6;
    v21 = mig_get_reply_port();
    reply_port.msgh_bits = -2147478253;
    reply_port.msgh_size = v14 + 8 * a6 + v19 + 68;
    *&reply_port.msgh_remote_port = __PAIR64__(v21, a1);
    *&reply_port.msgh_voucher_port = 0xB3400000000;
    v22 = mach_msg2_internal();
    v18 = v22;
    if ((v22 - 268435458) <= 0xE && ((1 << (v22 - 2)) & 0x4003) != 0)
    {
      mig_put_reply_port(reply_port.msgh_local_port);
    }

    else
    {
      if (!v22)
      {
        if (reply_port.msgh_id == 71)
        {
          v18 = 4294966988;
        }

        else if (reply_port.msgh_id == 2968)
        {
          if ((reply_port.msgh_bits & 0x80000000) != 0)
          {
            v18 = 4294966996;
            if (v26 == 1 && reply_port.msgh_size == 40 && !reply_port.msgh_remote_port && WORD3(v28) << 16 == 1114112)
            {
              v18 = 0;
              *a7 = v27;
              goto LABEL_28;
            }
          }

          else if (reply_port.msgh_size == 36)
          {
            v18 = 4294966996;
            if (v28)
            {
              if (reply_port.msgh_remote_port)
              {
                v18 = 4294966996;
              }

              else
              {
                v18 = v28;
              }
            }
          }

          else
          {
            v18 = 4294966996;
          }
        }

        else
        {
          v18 = 4294966995;
        }

        mach_msg_destroy(&reply_port);
        goto LABEL_28;
      }

      mig_dealloc_reply_port(reply_port.msgh_local_port);
    }
  }

  else
  {
    v18 = 4294966989;
  }

LABEL_28:
  v23 = *MEMORY[0x277D85DE8];
  return v18;
}

uint64_t io_service_add_interest_notification(unsigned int a1, const char *a2, int a3, const void *a4, unsigned int a5, _DWORD *a6)
{
  v22 = *MEMORY[0x277D85DE8];
  memset(v21, 0, 204);
  v20 = 0u;
  memset(&reply_port, 0, sizeof(reply_port));
  v18 = 1;
  v19 = a3;
  DWORD1(v20) = 1310720;
  *(&v20 + 1) = *MEMORY[0x277D85EF8];
  if (MEMORY[0x28223BE50])
  {
    v10 = mig_strncpy_zerofill(v21 + 8, a2, 128);
  }

  else
  {
    v10 = mig_strncpy(v21 + 8, a2, 128);
  }

  LODWORD(v21[0]) = 0;
  DWORD1(v21[0]) = v10;
  if (a5 <= 8)
  {
    v12 = (v10 + 3) & 0xFFFFFFFC;
    memcpy(v21 + v12 + 12, a4, 8 * a5);
    *(v21 + v12 + 8) = a5;
    v13 = mig_get_reply_port();
    reply_port.msgh_bits = -2147478253;
    reply_port.msgh_size = v12 + 8 * a5 + 60;
    *&reply_port.msgh_remote_port = __PAIR64__(v13, a1);
    *&reply_port.msgh_voucher_port = 0xB3500000000;
    v14 = mach_msg2_internal();
    v11 = v14;
    if ((v14 - 268435458) <= 0xE && ((1 << (v14 - 2)) & 0x4003) != 0)
    {
      mig_put_reply_port(reply_port.msgh_local_port);
    }

    else
    {
      if (!v14)
      {
        if (reply_port.msgh_id == 71)
        {
          v11 = 4294966988;
        }

        else if (reply_port.msgh_id == 2969)
        {
          if ((reply_port.msgh_bits & 0x80000000) != 0)
          {
            v11 = 4294966996;
            if (v18 == 1 && reply_port.msgh_size == 40 && !reply_port.msgh_remote_port && WORD3(v20) << 16 == 1114112)
            {
              v11 = 0;
              *a6 = v19;
              goto LABEL_28;
            }
          }

          else if (reply_port.msgh_size == 36)
          {
            v11 = 4294966996;
            if (v20)
            {
              if (reply_port.msgh_remote_port)
              {
                v11 = 4294966996;
              }

              else
              {
                v11 = v20;
              }
            }
          }

          else
          {
            v11 = 4294966996;
          }
        }

        else
        {
          v11 = 4294966995;
        }

        mach_msg_destroy(&reply_port);
        goto LABEL_28;
      }

      mig_dealloc_reply_port(reply_port.msgh_local_port);
    }
  }

  else
  {
    v11 = 4294966989;
  }

LABEL_28:
  v15 = *MEMORY[0x277D85DE8];
  return v11;
}

uint64_t io_service_add_notification_ool(unsigned int a1, const char *a2, uint64_t a3, int a4, int a5, const void *a6, unsigned int a7, _DWORD *a8, _DWORD *a9)
{
  v32 = *MEMORY[0x277D85DE8];
  v30 = 0u;
  memset(v31, 0, sizeof(v31));
  memset(&reply_port, 0, sizeof(reply_port));
  v25 = 2;
  v26 = a3;
  v27 = 0x1000000;
  v28 = a4;
  v29 = a5;
  DWORD1(v30) = 1310720;
  *(&v30 + 1) = *MEMORY[0x277D85EF8];
  if (MEMORY[0x28223BE50])
  {
    v14 = mig_strncpy_zerofill(v31 + 8, a2, 128);
  }

  else
  {
    v14 = mig_strncpy(v31 + 8, a2, 128);
  }

  LODWORD(v31[0]) = 0;
  DWORD1(v31[0]) = v14;
  v15 = (v14 + 3) & 0xFFFFFFFC;
  v16 = &reply_port + v15;
  *(v31 + v15 + 8) = a4;
  if (a7 <= 8)
  {
    v18 = v16 - 128;
    memcpy(v16 + 80, a6, 8 * a7);
    *(v18 + 51) = a7;
    v19 = mig_get_reply_port();
    reply_port.msgh_bits = -2147478253;
    reply_port.msgh_size = v15 + 8 * a7 + 80;
    *&reply_port.msgh_remote_port = __PAIR64__(v19, a1);
    *&reply_port.msgh_voucher_port = 0xB3600000000;
    v20 = mach_msg2_internal();
    v17 = v20;
    if ((v20 - 268435458) <= 0xE && ((1 << (v20 - 2)) & 0x4003) != 0)
    {
      mig_put_reply_port(reply_port.msgh_local_port);
    }

    else
    {
      if (!v20)
      {
        if (reply_port.msgh_id == 71)
        {
          v17 = 4294966988;
        }

        else if (reply_port.msgh_id == 2970)
        {
          if ((reply_port.msgh_bits & 0x80000000) != 0)
          {
            v17 = 4294966996;
            if (v25 == 1 && reply_port.msgh_size == 52 && !reply_port.msgh_remote_port && HIWORD(v27) << 16 == 1114112)
            {
              v17 = 0;
              v21 = v26;
              *a8 = v30;
              *a9 = v21;
              goto LABEL_28;
            }
          }

          else if (reply_port.msgh_size == 36)
          {
            v17 = 4294966996;
            if (HIDWORD(v26))
            {
              if (reply_port.msgh_remote_port)
              {
                v17 = 4294966996;
              }

              else
              {
                v17 = HIDWORD(v26);
              }
            }
          }

          else
          {
            v17 = 4294966996;
          }
        }

        else
        {
          v17 = 4294966995;
        }

        mach_msg_destroy(&reply_port);
        goto LABEL_28;
      }

      mig_dealloc_reply_port(reply_port.msgh_local_port);
    }
  }

  else
  {
    v17 = 4294966989;
  }

LABEL_28:
  v22 = *MEMORY[0x277D85DE8];
  return v17;
}

uint64_t io_registry_entry_get_registry_entry_id(unsigned int a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v7 = 0;
  v8 = 0;
  v10 = 0;
  v9 = 0;
  *&v6.msgh_bits = 0x1800001513;
  *&v6.msgh_remote_port = __PAIR64__(mig_get_reply_port(), a1);
  *&v6.msgh_voucher_port = 0xB3700000000;
  v1 = mach_msg2_internal();
  v2 = v1;
  if ((v1 - 268435458) > 0xE || ((1 << (v1 - 2)) & 0x4003) == 0)
  {
    if (v1)
    {
      mig_dealloc_reply_port(v6.msgh_local_port);
    }

    else
    {
      v2 = 4294966995;
      mach_msg_destroy(&v6);
    }
  }

  else
  {
    mig_put_reply_port(v6.msgh_local_port);
  }

  v4 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t io_connect_method_var_output(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__dst, int *a10, void *a11, int *a12, void *a13, _DWORD *a14)
{
  v14 = MEMORY[0x28223BE20](a1);
  v78 = *MEMORY[0x277D85DE8];
  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
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
  *&v48[16] = 0u;
  *__n = 0u;
  *reply_port = 0u;
  *v48 = 0u;
  *&v48[8] = *MEMORY[0x277D85EF8];
  *&v48[16] = v20;
  if (v15 <= 0x10)
  {
    v21 = v19;
    v22 = v18;
    v23 = v17;
    v24 = v16;
    v25 = v15;
    v26 = v14;
    v27 = 2 * v15;
    __memcpy_chk();
    *&v48[20] = v25;
    if (v23 <= 0x1000)
    {
      v31 = &reply_port[v27];
      v32 = (v23 + 3) & 0x3FFC;
      v33 = &reply_port[v27] + v32;
      v34 = v27 * 4 + v32;
      memcpy(v31 + 11, v24, v23);
      v31[10] = v23;
      *(v33 + 44) = v22;
      *(v33 + 52) = v21;
      v35 = *a10;
      if (*a10 >= 0x1000)
      {
        v35 = 4096;
      }

      *(v33 + 15) = v35;
      v36 = *a12;
      if (*a12 >= 0x10)
      {
        v36 = 16;
      }

      *(v33 + 16) = v36;
      v37 = mig_get_reply_port();
      reply_port[0] = 5395;
      reply_port[1] = v34 + 68;
      *&reply_port[2] = __PAIR64__(v37, v26);
      *v48 = 0xB3800000000;
      v38 = mach_msg2_internal();
      v28 = v38;
      if ((v38 - 268435458) <= 0xE && ((1 << (v38 - 2)) & 0x4003) != 0)
      {
        mig_put_reply_port(reply_port[3]);
        goto LABEL_4;
      }

      if (v38)
      {
        mig_dealloc_reply_port(reply_port[3]);
        goto LABEL_4;
      }

      if (*&v48[4] == 71)
      {
        v28 = 4294966988;
      }

      else if (*&v48[4] == 2972)
      {
        if ((reply_port[0] & 0x80000000) != 0)
        {
          v28 = 4294966996;
          if (*&v48[8] == 1 && reply_port[1] - 64 <= 0x1080 && !reply_port[2] && v48[23] == 1)
          {
            v39 = HIDWORD(__n[0]);
            if (HIDWORD(__n[0]) <= 0x1000 && reply_port[1] - 64 >= HIDWORD(__n[0]))
            {
              v40 = (HIDWORD(__n[0]) + 3) & 0xFFFFFFFC;
              if (reply_port[1] >= v40 + 64)
              {
                v41 = reply_port + v40;
                v42 = *(v41 + 14);
                if (v42 <= 0x10 && v42 <= (reply_port[1] - v40 - 64) >> 3 && reply_port[1] - v40 == 8 * v42 + 64)
                {
                  v43 = v41 - 4096;
                  v44 = &v41[8 * v42 - 4096];
                  if (*&v48[24] == *(v44 + 4156))
                  {
                    v45 = *a10;
                    if (HIDWORD(__n[0]) <= v45)
                    {
                      memcpy(__dst, &__n[1], HIDWORD(__n[0]));
                      *a10 = v39;
                      v46 = *(v43 + 1038);
                      if (v46 <= *a12)
                      {
                        memcpy(a11, v43 + 4156, 8 * v46);
                        v28 = 0;
                        *a12 = *(v43 + 1038);
                        *a13 = *&v48[12];
                        *a14 = *(v44 + 4156);
                        goto LABEL_4;
                      }

                      memcpy(a11, v43 + 4156, (8 * *a12));
                      *a12 = *(v43 + 1038);
                    }

                    else
                    {
                      memcpy(__dst, &__n[1], v45);
                      *a10 = v39;
                    }

                    goto LABEL_3;
                  }
                }
              }
            }
          }
        }

        else if (reply_port[1] == 36)
        {
          v28 = 4294966996;
          if (*&v48[16])
          {
            if (reply_port[2])
            {
              v28 = 4294966996;
            }

            else
            {
              v28 = *&v48[16];
            }
          }
        }

        else
        {
          v28 = 4294966996;
        }
      }

      else
      {
        v28 = 4294966995;
      }

      mach_msg_destroy(reply_port);
      goto LABEL_4;
    }
  }

LABEL_3:
  v28 = 4294966989;
LABEL_4:
  v29 = *MEMORY[0x277D85DE8];
  return v28;
}

uint64_t io_service_get_matching_service(unsigned int a1, const char *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  memset(v10, 0, 480);
  *reply_port = 0u;
  v9 = 0u;
  *(&v9 + 1) = *MEMORY[0x277D85EF8];
  if (MEMORY[0x28223BE50])
  {
    v3 = mig_strncpy_zerofill(v10 + 8, a2, 512);
  }

  else
  {
    v3 = mig_strncpy(v10 + 8, a2, 512);
  }

  LODWORD(v10[0]) = 0;
  DWORD1(v10[0]) = v3;
  reply_port[0] = 5395;
  reply_port[1] = ((v3 + 3) & 0xFFFFFFFC) + 40;
  *&reply_port[2] = __PAIR64__(mig_get_reply_port(), a1);
  *&v9 = 0xB3900000000;
  v4 = mach_msg2_internal();
  v5 = v4;
  if ((v4 - 268435458) <= 0xE && ((1 << (v4 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(reply_port[3]);
  }

  else if (v4)
  {
    mig_dealloc_reply_port(reply_port[3]);
  }

  else
  {
    v5 = 4294966995;
    mach_msg_destroy(reply_port);
  }

  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t io_service_get_matching_service_ool(unsigned int a1, uint64_t a2, int a3)
{
  v7 = 1;
  v8 = a2;
  v9 = 0x1000000;
  v10 = a3;
  v11 = *MEMORY[0x277D85EF8];
  v12 = a3;
  v13 = 0;
  *&v6.msgh_bits = 0x3880001513;
  *&v6.msgh_remote_port = __PAIR64__(mig_get_reply_port(), a1);
  *&v6.msgh_voucher_port = 0xB3A00000000;
  v3 = mach_msg2_internal();
  v4 = v3;
  if ((v3 - 268435458) <= 0xE && ((1 << (v3 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(v6.msgh_local_port);
  }

  else if (v3)
  {
    mig_dealloc_reply_port(v6.msgh_local_port);
  }

  else
  {
    v4 = 4294966995;
    mach_msg_destroy(&v6);
  }

  return v4;
}

uint64_t io_service_get_authorization_id(unsigned int a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v7 = 0;
  v8 = 0;
  v10 = 0;
  v9 = 0;
  *&v6.msgh_bits = 0x1800001513;
  *&v6.msgh_remote_port = __PAIR64__(mig_get_reply_port(), a1);
  *&v6.msgh_voucher_port = 0xB3B00000000;
  v1 = mach_msg2_internal();
  v2 = v1;
  if ((v1 - 268435458) > 0xE || ((1 << (v1 - 2)) & 0x4003) == 0)
  {
    if (v1)
    {
      mig_dealloc_reply_port(v6.msgh_local_port);
    }

    else
    {
      v2 = 4294966995;
      mach_msg_destroy(&v6);
    }
  }

  else
  {
    mig_put_reply_port(v6.msgh_local_port);
  }

  v4 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t io_service_set_authorization_id(unsigned int a1, uint64_t a2)
{
  v9 = 0;
  v7 = *MEMORY[0x277D85EF8];
  v8 = a2;
  *&v6.msgh_bits = 0x2800001513;
  *&v6.msgh_remote_port = __PAIR64__(mig_get_reply_port(), a1);
  *&v6.msgh_voucher_port = 0xB3C00000000;
  v2 = mach_msg2_internal();
  v3 = v2;
  if ((v2 - 268435458) > 0xE || ((1 << (v2 - 2)) & 0x4003) == 0)
  {
    if (v2)
    {
      mig_dealloc_reply_port(v6.msgh_local_port);
    }

    else
    {
      v3 = 4294966995;
      mach_msg_destroy(&v6);
    }
  }

  else
  {
    mig_put_reply_port(v6.msgh_local_port);
  }

  return v3;
}

uint64_t io_server_version(unsigned int a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v7 = 0;
  v8 = 0;
  v10 = 0;
  v9 = 0;
  *&v6.msgh_bits = 0x1800001513;
  *&v6.msgh_remote_port = __PAIR64__(mig_get_reply_port(), a1);
  *&v6.msgh_voucher_port = 0xB3D00000000;
  v1 = mach_msg2_internal();
  v2 = v1;
  if ((v1 - 268435458) > 0xE || ((1 << (v1 - 2)) & 0x4003) == 0)
  {
    if (v1)
    {
      mig_dealloc_reply_port(v6.msgh_local_port);
    }

    else
    {
      v2 = 4294966995;
      mach_msg_destroy(&v6);
    }
  }

  else
  {
    mig_put_reply_port(v6.msgh_local_port);
  }

  v4 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t io_registry_entry_get_properties_bin(unsigned int a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = 0;
  v7 = 0u;
  v8 = 0u;
  *&v6.msgh_bits = 0x1800001513;
  *&v6.msgh_remote_port = __PAIR64__(mig_get_reply_port(), a1);
  *&v6.msgh_voucher_port = 0xB3E00000000;
  v1 = mach_msg2_internal();
  v2 = v1;
  if ((v1 - 268435458) > 0xE || ((1 << (v1 - 2)) & 0x4003) == 0)
  {
    if (v1)
    {
      mig_dealloc_reply_port(v6.msgh_local_port);
    }

    else
    {
      v2 = 4294966995;
      mach_msg_destroy(&v6);
    }
  }

  else
  {
    mig_put_reply_port(v6.msgh_local_port);
  }

  v4 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t io_registry_entry_get_property_bin(unsigned int a1, const char *a2, const char *a3, int a4, void *a5, _DWORD *a6)
{
  v46 = *MEMORY[0x277D85DE8];
  v45 = 0;
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
  memset(v28, 0, sizeof(v28));
  *reply_port = 0u;
  *(&v28[0] + 1) = *MEMORY[0x277D85EF8];
  if (MEMORY[0x28223BE50])
  {
    v11 = mig_strncpy_zerofill(&v28[1] + 8, a2, 128);
  }

  else
  {
    v11 = mig_strncpy(&v28[1] + 8, a2, 128);
  }

  LODWORD(v28[1]) = 0;
  DWORD1(v28[1]) = v11;
  v12 = (v11 + 3) & 0xFFFFFFFC;
  v13 = v12 + 52;
  v14 = reply_port + v12;
  v15 = v14 - 128;
  v16 = v14 + 48;
  if (MEMORY[0x28223BE50])
  {
    v17 = mig_strncpy_zerofill(v16, a3, 128);
  }

  else
  {
    v17 = mig_strncpy(v16, a3, 128);
  }

  *(v15 + 42) = 0;
  *(v15 + 43) = v17;
  v18 = (v17 + 3) & 0xFFFFFFFC;
  v19 = v13 + v18;
  *&v15[v18 + 176] = a4;
  v20 = mig_get_reply_port();
  reply_port[0] = 5395;
  reply_port[1] = v19;
  *&reply_port[2] = __PAIR64__(v20, a1);
  *&v28[0] = 0xB3F00000000;
  v21 = mach_msg2_internal();
  v22 = v21;
  if ((v21 - 268435458) > 0xE || ((1 << (v21 - 2)) & 0x4003) == 0)
  {
    if (!v21)
    {
      if (DWORD1(v28[0]) == 71)
      {
        v22 = 4294966988;
      }

      else if (DWORD1(v28[0]) == 2979)
      {
        if ((reply_port[0] & 0x80000000) != 0)
        {
          v22 = 4294966996;
          if (DWORD2(v28[0]) == 1 && reply_port[1] == 56 && !reply_port[2] && BYTE7(v28[1]) == 1)
          {
            v24 = DWORD2(v28[1]);
            if (DWORD2(v28[1]) == DWORD1(v29))
            {
              v22 = 0;
              *a5 = *(v28 + 12);
              *a6 = v24;
              goto LABEL_32;
            }
          }
        }

        else if (reply_port[1] == 36)
        {
          v22 = 4294966996;
          if (LODWORD(v28[1]))
          {
            if (reply_port[2])
            {
              v22 = 4294966996;
            }

            else
            {
              v22 = LODWORD(v28[1]);
            }
          }
        }

        else
        {
          v22 = 4294966996;
        }
      }

      else
      {
        v22 = 4294966995;
      }

      mach_msg_destroy(reply_port);
      goto LABEL_32;
    }

    mig_dealloc_reply_port(reply_port[3]);
  }

  else
  {
    mig_put_reply_port(reply_port[3]);
  }

LABEL_32:
  v25 = *MEMORY[0x277D85DE8];
  return v22;
}

uint64_t io_service_get_matching_service_bin(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v41 = *MEMORY[0x277D85DE8];
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
  *reply_port = 0u;
  v10 = 0u;
  *(&v10 + 1) = *MEMORY[0x277D85EF8];
  if (v2 <= 0x1000)
  {
    v4 = v2;
    v5 = v1;
    __memcpy_chk();
    LODWORD(v11) = v4;
    reply_port[0] = 5395;
    reply_port[1] = ((v4 + 3) & 0x3FFC) + 36;
    *&reply_port[2] = __PAIR64__(mig_get_reply_port(), v5);
    *&v10 = 0xB4000000000;
    v6 = mach_msg2_internal();
    v3 = v6;
    if ((v6 - 268435458) <= 0xE && ((1 << (v6 - 2)) & 0x4003) != 0)
    {
      mig_put_reply_port(reply_port[3]);
    }

    else if (v6)
    {
      mig_dealloc_reply_port(reply_port[3]);
    }

    else
    {
      v3 = 4294966995;
      mach_msg_destroy(reply_port);
    }
  }

  else
  {
    v3 = 4294966989;
  }

  v7 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t io_service_get_matching_services_bin(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v41 = *MEMORY[0x277D85DE8];
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
  *reply_port = 0u;
  v10 = 0u;
  *(&v10 + 1) = *MEMORY[0x277D85EF8];
  if (v2 <= 0x1000)
  {
    v4 = v2;
    v5 = v1;
    __memcpy_chk();
    LODWORD(v11) = v4;
    reply_port[0] = 5395;
    reply_port[1] = ((v4 + 3) & 0x3FFC) + 36;
    *&reply_port[2] = __PAIR64__(mig_get_reply_port(), v5);
    *&v10 = 0xB4100000000;
    v6 = mach_msg2_internal();
    v3 = v6;
    if ((v6 - 268435458) <= 0xE && ((1 << (v6 - 2)) & 0x4003) != 0)
    {
      mig_put_reply_port(reply_port[3]);
    }

    else if (v6)
    {
      mig_dealloc_reply_port(reply_port[3]);
    }

    else
    {
      v3 = 4294966995;
      mach_msg_destroy(reply_port);
    }
  }

  else
  {
    v3 = 4294966989;
  }

  v7 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t io_service_match_property_table_bin(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v41 = *MEMORY[0x277D85DE8];
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
  *reply_port = 0u;
  v10 = 0u;
  *(&v10 + 1) = *MEMORY[0x277D85EF8];
  if (v2 <= 0x1000)
  {
    v4 = v2;
    v5 = v1;
    __memcpy_chk();
    LODWORD(v11) = v4;
    reply_port[0] = 5395;
    reply_port[1] = ((v4 + 3) & 0x3FFC) + 36;
    *&reply_port[2] = __PAIR64__(mig_get_reply_port(), v5);
    *&v10 = 0xB4200000000;
    v6 = mach_msg2_internal();
    v3 = v6;
    if ((v6 - 268435458) <= 0xE && ((1 << (v6 - 2)) & 0x4003) != 0)
    {
      mig_put_reply_port(reply_port[3]);
    }

    else if (v6)
    {
      mig_dealloc_reply_port(reply_port[3]);
    }

    else
    {
      v3 = 4294966995;
      mach_msg_destroy(reply_port);
    }
  }

  else
  {
    v3 = 4294966989;
  }

  v7 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t io_service_add_notification_bin(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = v1;
  v29 = *MEMORY[0x277D85DE8];
  v27 = 0u;
  memset(v28, 0, 464);
  memset(&reply_port, 0, sizeof(reply_port));
  v25 = 1;
  v26 = v14;
  DWORD1(v27) = 1310720;
  *(&v27 + 1) = *MEMORY[0x277D85EF8];
  if (MEMORY[0x28223BE50])
  {
    v15 = mig_strncpy_zerofill(v28 + 8, v2, 128);
  }

  else
  {
    v15 = mig_strncpy(v28 + 8, v2, 128);
  }

  LODWORD(v28[0]) = 0;
  DWORD1(v28[0]) = v15;
  if (v10 <= 0x1000 && (v16 = (v15 + 3) & 0xFFFFFFFC, memcpy(v28 + v16 + 12, v12, v10), *(v28 + v16 + 8) = v10, v6 <= 8))
  {
    v20 = (v10 + 3) & 0x3FFC;
    v21 = &reply_port + v16 + v20 - 128;
    memcpy(v21 + 192, v8, 8 * v6);
    *(v21 + 47) = v6;
    v22 = mig_get_reply_port();
    reply_port.msgh_bits = -2147478253;
    reply_port.msgh_size = v20 + 8 * v6 + v16 + 64;
    *&reply_port.msgh_remote_port = __PAIR64__(v22, v13);
    *&reply_port.msgh_voucher_port = 0xB4400000000;
    v23 = mach_msg2_internal();
    v17 = v23;
    if ((v23 - 268435458) <= 0xE && ((1 << (v23 - 2)) & 0x4003) != 0)
    {
      mig_put_reply_port(reply_port.msgh_local_port);
    }

    else
    {
      if (!v23)
      {
        if (reply_port.msgh_id == 71)
        {
          v17 = 4294966988;
        }

        else if (reply_port.msgh_id == 2984)
        {
          if ((reply_port.msgh_bits & 0x80000000) != 0)
          {
            v17 = 4294966996;
            if (v25 == 1 && reply_port.msgh_size == 40 && !reply_port.msgh_remote_port && WORD3(v27) << 16 == 1114112)
            {
              v17 = 0;
              *v4 = v26;
              goto LABEL_7;
            }
          }

          else if (reply_port.msgh_size == 36)
          {
            v17 = 4294966996;
            if (v27)
            {
              if (reply_port.msgh_remote_port)
              {
                v17 = 4294966996;
              }

              else
              {
                v17 = v27;
              }
            }
          }

          else
          {
            v17 = 4294966996;
          }
        }

        else
        {
          v17 = 4294966995;
        }

        mach_msg_destroy(&reply_port);
        goto LABEL_7;
      }

      mig_dealloc_reply_port(reply_port.msgh_local_port);
    }
  }

  else
  {
    v17 = 4294966989;
  }

LABEL_7:
  v18 = *MEMORY[0x277D85DE8];
  return v17;
}

uint64_t io_registry_entry_get_path_ool(uint64_t a1)
{
  v2 = MEMORY[0x28223BE20](a1);
  v11 = *MEMORY[0x277D85DE8];
  memset(v10, 0, 480);
  *reply_port = 0u;
  v9 = 0u;
  *(&v9 + 1) = *MEMORY[0x277D85EF8];
  if (MEMORY[0x28223BE50])
  {
    v3 = mig_strncpy_zerofill(v10 + 8, v1, 128);
  }

  else
  {
    v3 = mig_strncpy(v10 + 8, v1, 128);
  }

  LODWORD(v10[0]) = 0;
  DWORD1(v10[0]) = v3;
  reply_port[0] = 5395;
  reply_port[1] = ((v3 + 3) & 0xFFFFFFFC) + 40;
  *&reply_port[2] = __PAIR64__(mig_get_reply_port(), v2);
  *&v9 = 0xB4500000000;
  v4 = mach_msg2_internal();
  v5 = v4;
  if ((v4 - 268435458) <= 0xE && ((1 << (v4 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(reply_port[3]);
  }

  else if (v4)
  {
    mig_dealloc_reply_port(reply_port[3]);
  }

  else
  {
    v5 = 4294966995;
    mach_msg_destroy(reply_port);
  }

  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t io_registry_entry_from_path_ool(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = v1;
  v53 = *MEMORY[0x277D85DE8];
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
  *&v24[8] = 0u;
  memset(&reply_port, 0, sizeof(reply_port));
  v21 = 1;
  v22 = v10;
  v23 = 0x1000000;
  *v24 = v7;
  *&v24[4] = *MEMORY[0x277D85EF8];
  if (MEMORY[0x28223BE50])
  {
    v11 = mig_strncpy_zerofill(&v24[20], v2, 4096);
  }

  else
  {
    v11 = mig_strncpy(&v24[20], v2, 4096);
  }

  *&v24[12] = 0;
  *&v24[16] = v11;
  v12 = (v11 + 3) & 0xFFFFFFFC;
  v13 = v12 + 64;
  *&v24[v12 + 20] = v8;
  v14 = mig_get_reply_port();
  reply_port.msgh_bits = -2147478253;
  reply_port.msgh_size = v13;
  *&reply_port.msgh_remote_port = __PAIR64__(v14, v9);
  *&reply_port.msgh_voucher_port = 0xB4600000000;
  v15 = mach_msg2_internal();
  v16 = v15;
  if ((v15 - 268435458) <= 0xE && ((1 << (v15 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(reply_port.msgh_local_port);
  }

  else
  {
    if (!v15)
    {
      if (reply_port.msgh_id == 71)
      {
        v16 = 4294966988;
      }

      else if (reply_port.msgh_id == 2986)
      {
        if ((reply_port.msgh_bits & 0x80000000) != 0)
        {
          v16 = 4294966996;
          if (v21 == 1 && reply_port.msgh_size == 52 && !reply_port.msgh_remote_port && HIWORD(v23) << 16 == 1114112)
          {
            v16 = 0;
            v17 = v22;
            *v6 = *&v24[8];
            *v4 = v17;
            goto LABEL_26;
          }
        }

        else if (reply_port.msgh_size == 36)
        {
          v16 = 4294966996;
          if (HIDWORD(v22))
          {
            if (reply_port.msgh_remote_port)
            {
              v16 = 4294966996;
            }

            else
            {
              v16 = HIDWORD(v22);
            }
          }
        }

        else
        {
          v16 = 4294966996;
        }
      }

      else
      {
        v16 = 4294966995;
      }

      mach_msg_destroy(&reply_port);
      goto LABEL_26;
    }

    mig_dealloc_reply_port(reply_port.msgh_local_port);
  }

LABEL_26:
  v18 = *MEMORY[0x277D85DE8];
  return v16;
}

uint64_t io_device_tree_entry_exists_with_name(unsigned int a1, const char *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  *reply_port = 0u;
  v9 = 0u;
  *(&v9 + 1) = *MEMORY[0x277D85EF8];
  if (MEMORY[0x28223BE50])
  {
    v3 = mig_strncpy_zerofill(v10 + 8, a2, 128);
  }

  else
  {
    v3 = mig_strncpy(v10 + 8, a2, 128);
  }

  LODWORD(v10[0]) = 0;
  DWORD1(v10[0]) = v3;
  reply_port[0] = 5395;
  reply_port[1] = ((v3 + 3) & 0xFFFFFFFC) + 40;
  *&reply_port[2] = __PAIR64__(mig_get_reply_port(), a1);
  *&v9 = 0xB4700000000;
  v4 = mach_msg2_internal();
  v5 = v4;
  if ((v4 - 268435458) <= 0xE && ((1 << (v4 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(reply_port[3]);
  }

  else if (v4)
  {
    mig_dealloc_reply_port(reply_port[3]);
  }

  else
  {
    v5 = 4294966995;
    mach_msg_destroy(reply_port);
  }

  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t io_registry_entry_get_properties_bin_buf(unsigned int a1, uint64_t a2, uint64_t *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v12 = 0;
  v13 = 0;
  v8 = *MEMORY[0x277D85EF8];
  v9 = a2;
  v10 = *a3;
  v11 = 0;
  *&v7.msgh_bits = 0x3000001513;
  *&v7.msgh_remote_port = __PAIR64__(mig_get_reply_port(), a1);
  *&v7.msgh_voucher_port = 0xB4800000000;
  v3 = mach_msg2_internal();
  v4 = v3;
  if ((v3 - 268435458) <= 0xE && ((1 << (v3 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(v7.msgh_local_port);
  }

  else if (v3)
  {
    mig_dealloc_reply_port(v7.msgh_local_port);
  }

  else
  {
    v4 = 4294966995;
    mach_msg_destroy(&v7);
  }

  v5 = *MEMORY[0x277D85DE8];
  return v4;
}

uint64_t io_registry_entry_get_property_bin_buf(unsigned int a1, const char *a2, const char *a3, int a4, uint64_t a5, void *a6, void *a7, _DWORD *a8)
{
  v51 = *MEMORY[0x277D85DE8];
  v50 = 0;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v33 = 0u;
  *reply_port = 0u;
  memset(v32, 0, sizeof(v32));
  *(&v32[0] + 1) = *MEMORY[0x277D85EF8];
  if (MEMORY[0x28223BE50])
  {
    v15 = mig_strncpy_zerofill(&v32[1] + 8, a2, 128);
  }

  else
  {
    v15 = mig_strncpy(&v32[1] + 8, a2, 128);
  }

  LODWORD(v32[1]) = 0;
  DWORD1(v32[1]) = v15;
  v16 = (v15 + 3) & 0xFFFFFFFC;
  v17 = v16 + 68;
  v18 = reply_port + v16;
  v19 = v18 - 128;
  v20 = v18 + 48;
  if (MEMORY[0x28223BE50])
  {
    v21 = mig_strncpy_zerofill(v20, a3, 128);
  }

  else
  {
    v21 = mig_strncpy(v20, a3, 128);
  }

  *(v19 + 42) = 0;
  *(v19 + 43) = v21;
  v22 = (v21 + 3) & 0xFFFFFFFC;
  v23 = v17 + v22;
  v24 = &v19[v22];
  *(v24 + 44) = a4;
  *(v24 + 180) = a5;
  *(v24 + 188) = *a6;
  v25 = mig_get_reply_port();
  reply_port[0] = 5395;
  reply_port[1] = v23;
  *&reply_port[2] = __PAIR64__(v25, a1);
  *&v32[0] = 0xB4900000000;
  v26 = mach_msg2_internal();
  v27 = v26;
  if ((v26 - 268435458) <= 0xE && ((1 << (v26 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(reply_port[3]);
  }

  else
  {
    if (!v26)
    {
      if (DWORD1(v32[0]) == 71)
      {
        v27 = 4294966988;
      }

      else if (DWORD1(v32[0]) == 2989)
      {
        if ((reply_port[0] & 0x80000000) != 0)
        {
          v27 = 4294966996;
          if (DWORD2(v32[0]) == 1 && reply_port[1] == 64 && !reply_port[2] && BYTE7(v32[1]) == 1)
          {
            v28 = DWORD2(v32[1]);
            if (DWORD2(v32[1]) == HIDWORD(v33))
            {
              v27 = 0;
              *a6 = *(&v33 + 4);
              *a7 = *(v32 + 12);
              *a8 = v28;
              goto LABEL_30;
            }
          }
        }

        else if (reply_port[1] == 36)
        {
          v27 = 4294966996;
          if (LODWORD(v32[1]))
          {
            if (reply_port[2])
            {
              v27 = 4294966996;
            }

            else
            {
              v27 = LODWORD(v32[1]);
            }
          }
        }

        else
        {
          v27 = 4294966996;
        }
      }

      else
      {
        v27 = 4294966995;
      }

      mach_msg_destroy(reply_port);
      goto LABEL_30;
    }

    mig_dealloc_reply_port(reply_port[3]);
  }

LABEL_30:
  v29 = *MEMORY[0x277D85DE8];
  return v27;
}