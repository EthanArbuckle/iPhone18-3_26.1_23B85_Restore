uint64_t AppleBCMWLANPCIeSkywalk::allocSkywalkMonitorResources(AppleBCMWLANPCIeSkywalk *this, OSObject *a2)
{
  v8 = 0x3000000000000000;
  v9 = 0;
  v7 = xmmword_10033D0B0;
  v2 = this + 56;
  IOLockLock(*(*(this + 7) + 160));
  v3 = *v2;
  if (*(*v2 + 136))
  {
    if (*v3)
    {
      shouldLog = CCLogStream::shouldLog();
      v3 = *v2;
      if (shouldLog)
      {
        CCLogStream::logAlert(*v3, "[dk] %s@%d:Monitor resource packet pool already allocated, skip to allocate again\n", "allocSkywalkMonitorResources", 285);
        v3 = *v2;
      }
    }

    goto LABEL_6;
  }

  *(*v2 + 136) = AppleBCMWLANPCIeSkywalkPacketPool::withName("AppleBCMWLANSkywalkPoolMonitor", *(v3 + 48), *v3, *(v3 + 16), &v7);
  v3 = *v2;
  if (*(*v2 + 136))
  {
LABEL_6:
    *(v3 + 144) = 0;
    (*(**(*v2 + 136) + 80))(*(*v2 + 136), *v2 + 144, 0);
    v5 = 0;
    if (!*(*v2 + 144))
    {
      v5 = 3758097086;
      if (**v2)
      {
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANPCIeSkywalk::allocSkywalkMonitorResources(v2);
        }
      }
    }

    goto LABEL_13;
  }

  v5 = 3758097086;
  if (*v3 && CCLogStream::shouldLog())
  {
    AppleBCMWLANPCIeSkywalk::allocSkywalkMonitorResources(v2);
  }

LABEL_13:
  IOLockUnlock(*(*v2 + 160));
  return v5;
}

uint64_t AppleBCMWLANPCIeSkywalk::lowLatencyRingCreateTimeout(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (*v2)
  {
    shouldLog = CCLogStream::shouldLog();
    v2 = *(a1 + 56);
    if (shouldLog)
    {
      CCLogStream::logAlert(*v2, "[dk] %s@%d:Low latency ring create timeout occured %llu\n", "lowLatencyRingCreateTimeout", 705, *(v2 + 120));
      v2 = *(a1 + 56);
    }
  }

  if (*(v2 + 120) || (v4 = (*(**(v2 + 48) + 600))(*(v2 + 48), v2 + 120), v2 = *(a1 + 56), !v4))
  {
    result = CCFaultReporter::reportFault(*(v2 + 16), 4u, "/Library/Caches/com.apple.xbs/Sources/AppleBCMWLANV3_driverkit/Busses/PCIe/AppleBCMWLANPCIeSkywalk.cpp", 0x2C9u, "lowLatencyRingCreateTimeout", 0, -469794010, 0);
    *(*(a1 + 56) + 120) = 0;
  }

  else
  {
    if (*v2)
    {
      v5 = CCLogStream::shouldLog();
      v2 = *(a1 + 56);
      if (v5)
      {
        CCLogStream::logCrit(*v2, "[dk] %s@%d:Delaying Ring Creation Failure due to pending work ivars->fLLWRingCreationTimeoutEpoch %llu\n", "lowLatencyRingCreateTimeout", 708, *(v2 + 120));
        v2 = *(a1 + 56);
      }
    }

    v6 = *(**(v2 + 104) + 56);

    return v6();
  }

  return result;
}

void AppleBCMWLANPCIeSkywalk::freeSkywalkMonitorResources(AppleBCMWLANPCIeSkywalk *this)
{
  IOLockLock(*(*(this + 7) + 160));
  v2 = *(this + 7);
  if (!v2[17])
  {
    v4 = v2[18];
    if (v4)
    {
      AppleBCMWLANPCIeSkywalkPacketPool::deallocatePacket(0, v4);
      *(*(this + 7) + 144) = 0;
      v2 = *(this + 7);
      v5 = v2[17];
      if (v5)
      {
        (*(*v5 + 16))(v5);
        *(*(this + 7) + 136) = 0;
        *(*(this + 7) + 136) = 0;
        v2 = *(this + 7);
      }
    }
  }

  v3 = v2[20];

  IOLockUnlock(v3);
}

void AppleBCMWLANPCIeSkywalk::free(OSObject *this)
{
  meta = this[1].meta;
  if (meta)
  {
    if (meta->__vftable)
    {
      shouldLog = CCLogStream::shouldLog();
      meta = this[1].meta;
      if (shouldLog)
      {
        CCLogStream::logAlert(meta->__vftable, "[dk] %s@%d:Enter ::free [%p]", "free", 415, this);
        meta = this[1].meta;
      }
    }

    v4 = meta[2].__vftable;
    if (v4)
    {
      (*(v4->getMetaClass + 25))(v4);
      (*(this[1].meta[2].getMetaClass + 2))(this[1].meta[2].__vftable);
      this[1].meta[2].__vftable = 0;
      meta = this[1].meta;
    }

    metaClassPrivate = meta[1].metaClassPrivate;
    if (metaClassPrivate)
    {
      (*(*metaClassPrivate + 16))(metaClassPrivate);
      this[1].meta[1].metaClassPrivate = 0;
      meta = this[1].meta;
    }

    v6 = meta[5].__vftable;
    if (v6)
    {
      IOLockFree(v6);
      meta = this[1].meta;
    }

    if (meta->__vftable)
    {
      (*(meta->getMetaClass + 2))(meta->__vftable);
      this[1].meta->OSMetaClassBase::__vftable = 0;
      meta = this[1].meta;
    }

    meta[15].__vftable = 0;
    *&meta[14].__vftable = 0u;
    *&meta[14].meta = 0u;
    *&meta[13].__vftable = 0u;
    *&meta[13].meta = 0u;
    *&meta[12].__vftable = 0u;
    *&meta[12].meta = 0u;
    *&meta[11].__vftable = 0u;
    *&meta[11].meta = 0u;
    *&meta[10].__vftable = 0u;
    *&meta[10].meta = 0u;
    *&meta[9].__vftable = 0u;
    *&meta[9].meta = 0u;
    *&meta[8].__vftable = 0u;
    *&meta[8].meta = 0u;
    *&meta[7].__vftable = 0u;
    *&meta[7].meta = 0u;
    *&meta[6].__vftable = 0u;
    *&meta[6].meta = 0u;
    *&meta[5].__vftable = 0u;
    *&meta[5].meta = 0u;
    *&meta[4].__vftable = 0u;
    *&meta[4].meta = 0u;
    *&meta[3].__vftable = 0u;
    *&meta[3].meta = 0u;
    *&meta[2].__vftable = 0u;
    *&meta[2].meta = 0u;
    *&meta[1].__vftable = 0u;
    *&meta[1].meta = 0u;
    *&meta->__vftable = 0u;
    *&meta->meta = 0u;
    v7 = this[1].meta;
    if (v7)
    {
      IOFree(v7, 0x1E8uLL);
      this[1].meta = 0;
    }
  }

  OSObject::free(this);
}

CCLogStream *AppleBCMWLANPCIeSkywalk::completeRegistration(AppleBCMWLANPCIeSkywalk *this, int a2)
{
  v4 = *(this + 7);
  result = *v4;
  if (*v4)
  {
    result = CCLogStream::shouldLog();
    v4 = *(this + 7);
    if (result)
    {
      result = CCLogStream::logInfo(*v4, "[dk] %s@%d:Adding ifId: 0x%x\n", "completeRegistration", 445, a2);
      v4 = *(this + 7);
    }
  }

  *(v4 + 44) |= 1 << a2;
  return result;
}

uint64_t ___ZN23AppleBCMWLANPCIeSkywalk24registerSkywalkInterfaceEP32skywalkInterfaceRegisterParams_t_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[7];
  v4 = v3[11];
  if (v4)
  {
    v5 = (*(*v4 + 88))(v4);
    v3 = v2[7];
    if (!v5)
    {
      AppleBCMWLANBusInterfacePCIe::enableCompletionRing(v3[6], v3[11], *(a1 + 40));
      v3 = v2[7];
    }
  }

  v6 = v3[12];
  if (v6 && !(*(*v6 + 88))(v6))
  {
    AppleBCMWLANBusInterfacePCIe::enableCompletionRing(*(v2[7] + 48), *(v2[7] + 96), *(a1 + 40));
  }

  if (*(a1 + 48) != -1)
  {
    (*(*v2 + 104))(v2);
  }

  return 0;
}

uint64_t AppleBCMWLANPCIeSkywalk::validateRxDMAStall(AppleBCMWLANPCIeSkywalk *this)
{
  v2 = (this + 56);
  v1 = *(this + 7);
  if (!*(v1 + 64))
  {
    return AppleBCMWLANPCIeSkywalk::validateRxDMAStall(v1, v2);
  }

  TotalFilledCountinFWRing = AppleBCMWLANPCIeSkywalkRxSubmissionQueue::getTotalFilledCountinFWRing(*(v1 + 64));
  v4 = *v2;
  if (TotalFilledCountinFWRing == (*v2)[58])
  {
    ++*(v4 + 118);
  }

  else
  {
    *(v4 + 118) = 1;
    (*v2)[58] = TotalFilledCountinFWRing;
  }

  result = **v2;
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      return AppleBCMWLANPCIeSkywalk::validateRxDMAStall(v2);
    }
  }

  return result;
}

uint64_t AppleBCMWLANPCIeSkywalk::attachDefaultRxCompRing(uint64_t a1, uint64_t a2)
{
  v4 = a1 + 56;
  v5 = (*(**(*(a1 + 56) + 48) + 1104))(*(*(a1 + 56) + 48));
  if (!v5)
  {
    return *(*v4 + 80);
  }

  v6 = v5;
  v7 = *(*v4 + 44);
  v8 = (*v4 + 80);
  if (*v8 || (v16 = *(*v4 + 48), v17 = (*(*v16 + 80))(v16), !(*(*v16 + 1088))(v16, v8, a2, a1, v17, AppleBCMWLANPCIeSkywalk::rxCompRingDrain, AppleBCMWLANPCIeSkywalk::rxCompRingError)))
  {
    if (v7)
    {
      v9 = __clz(__rbit32(v7));
      do
      {
        v10 = (*(*v6 + 1992))(v6, v9);
        if (v10)
        {
          v11 = v10;
          if ((*(*v10 + 1064))(v10))
          {
            v12 = (*(*v11 + 1192))(v11);
            v13 = OSMetaClassBase::safeMetaCast(v12, gAppleBCMWLANPCIeSkywalkRxCompletionQueueMetaClass);
            if (v13)
            {
              v14 = v13;
              if ((v13->__vftable[5].isEqualTo)(v13) && (*(*v14 + 224))(v14))
              {
                (*(*v14 + 224))(v14);
                if (CCLogStream::shouldLog())
                {
                  AppleBCMWLANPCIeSkywalk::attachDefaultRxCompRing(v14);
                }
              }

              AppleBCMWLANPCIeSkywalkRxCompletionQueue::setFirmwareRing(v14, *(*v4 + 80));
              (*(*v14 + 200))(v14);
            }
          }
        }

        v7 &= ~(1 << v9);
        v9 = __clz(__rbit32(v7));
      }

      while (v7);
    }

    return *(*v4 + 80);
  }

  result = *(*v4 + 8);
  if (result)
  {
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANPCIeSkywalk::attachDefaultRxCompRing(v4);
    }

    return 0;
  }

  return result;
}

uint64_t AppleBCMWLANPCIeSkywalk::cancelRingMgmtTimers(AppleBCMWLANPCIeSkywalk *this)
{
  v2 = *(this + 7);
  if (*v2)
  {
    shouldLog = CCLogStream::shouldLog();
    v2 = *(this + 7);
    if (shouldLog)
    {
      CCLogStream::logCrit(*v2, "[dk] %s@%d:Cancel skywalk ring mgmt timers\n", "cancelRingMgmtTimers", 695);
      v2 = *(this + 7);
    }
  }

  result = *(v2 + 104);
  if (result)
  {
    v5 = *(*result + 72);

    return v5();
  }

  return result;
}

uint64_t AppleBCMWLANPCIeSkywalk::destroyLowLatencyCompRingComplete(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  result = *a4;
  if (*a4)
  {
    result = (*(*result + 16))(result);
    *a4 = 0;
  }

  return result;
}

uint64_t AppleBCMWLANPCIeSkywalk::attachDefaultTxCompRing(uint64_t a1, uint64_t a2)
{
  v4 = (*(**(*(a1 + 56) + 48) + 1104))(*(*(a1 + 56) + 48));
  if (!v4)
  {
    return *(*(a1 + 56) + 72);
  }

  v5 = v4;
  v6 = *(a1 + 56);
  v7 = *(v6 + 44);
  v8 = v6 + 72;
  if (*(v6 + 72) || (v16 = *(v6 + 48), v17 = (*(*v16 + 80))(v16), !(*(*v16 + 1088))(v16, v8, a2, a1, v17, AppleBCMWLANPCIeSkywalk::txCompRingDrain, AppleBCMWLANPCIeSkywalk::txCompRingError)))
  {
    if (v7)
    {
      v9 = __clz(__rbit32(v7));
      do
      {
        v10 = (*(*v5 + 1992))(v5, v9);
        if (v10)
        {
          v11 = v10;
          if ((*(*v10 + 1064))(v10))
          {
            v12 = (*(*v11 + 1200))(v11);
            v13 = OSMetaClassBase::safeMetaCast(v12, gAppleBCMWLANPCIeSkywalkTxCompletionQueueMetaClass);
            if (v13)
            {
              v14 = v13;
              if ((*(*v11 + 1088))(v11) && (*(*v11 + 1088))(v11))
              {
                (*(*v11 + 1088))(v11);
                if (CCLogStream::shouldLog())
                {
                  AppleBCMWLANPCIeSkywalk::attachDefaultTxCompRing(v11);
                }
              }

              AppleBCMWLANPCIeSkywalkTxCompletionQueue::setFirmwareRing(v14, *(*(a1 + 56) + 72));
              (*(*v14 + 192))(v14);
            }
          }
        }

        v7 &= ~(1 << v9);
        v9 = __clz(__rbit32(v7));
      }

      while (v7);
    }

    return *(*(a1 + 56) + 72);
  }

  return 0;
}

uint64_t AppleBCMWLANPCIeSkywalk::detachRxSubmFwQueue(AppleBCMWLANPCIeSkywalk *this)
{
  v1 = *(this + 7);
  if (!v1)
  {
    return IOLog("AppleBCMWLANPCIeSkywalk::detachRxSubmFwQueue, no ivars\n");
  }

  v2 = *(v1 + 64);
  if (v2)
  {
    return AppleBCMWLANPCIeSkywalkRxSubmissionQueue::setFWRing(v2, 0);
  }

  else
  {
    return IOLog("AppleBCMWLANPCIeSkywalk::detachRxSubmFwQueue, no queue\n");
  }
}

uint64_t AppleBCMWLANPCIeSkywalk::detachRxCompFwQueue(AppleBCMWLANPCIeSkywalk *this)
{
  v2 = this + 56;
  v1 = *(this + 7);
  if (v1)
  {
    v3 = *(v1 + 48);
    if (v3)
    {
      v4 = *(v1 + 44);
      if ((*(*v3 + 1104))(v3))
      {
        if (v4)
        {
          v5 = __clz(__rbit32(v4));
          do
          {
            v6 = *(*(**(*v2 + 48) + 1104))(*(*v2 + 48));
            v7 = (*(v6 + 1992))();
            if (v7)
            {
              v8 = v7;
              if ((*(*v7 + 1088))(v7))
              {
                if ((*(*v8 + 1088))(v8))
                {
                  (*(*v8 + 1088))(v8);
                  if (CCLogStream::shouldLog())
                  {
                    AppleBCMWLANPCIeSkywalk::detachRxCompFwQueue(v8);
                  }
                }
              }

              v9 = (*(*v8 + 1192))(v8);
              v10 = OSMetaClassBase::safeMetaCast(v9, gAppleBCMWLANPCIeSkywalkRxCompletionQueueMetaClass);
              if (v10)
              {
                v11 = v10;
                (v10->__vftable[4].Dispatch)(v10);
                (*(*v11 + 208))(v11);
                AppleBCMWLANPCIeSkywalkRxCompletionQueue::setFirmwareRing(v11, 0);
              }
            }

            v4 &= ~(1 << v5);
            v5 = __clz(__rbit32(v4));
          }

          while (v4);
        }

        *(*v2 + 80) = 0;
        AppleBCMWLANPCIeSkywalkPacketPool::rxTrackerFlush(*(*v2 + 56));
        result = *(*v2 + 8);
        if (result)
        {
          result = CCLogStream::shouldLog();
          if (result)
          {
            return AppleBCMWLANPCIeSkywalk::detachRxCompFwQueue(v2);
          }
        }

        return result;
      }
    }

    v13 = "AppleBCMWLANPCIeSkywalk::detachRxCompFwQueue, no bus/driver\n";
  }

  else
  {
    v13 = "AppleBCMWLANPCIeSkywalk::detachRxCompFwQueue, no ivars\n";
  }

  return IOLog(v13);
}

void *AppleBCMWLANPCIeSkywalk::detachTxCompFwQueue(AppleBCMWLANPCIeSkywalk *this)
{
  v1 = *(this + 7);
  if (v1)
  {
    v3 = *(v1 + 48);
    if (v3)
    {
      v4 = *(v1 + 44);
      if ((*(*v3 + 1104))(v3))
      {
        if (v4)
        {
          v5 = __clz(__rbit32(v4));
          do
          {
            v6 = *(*(**(*(this + 7) + 48) + 1104))(*(*(this + 7) + 48));
            v7 = (*(v6 + 1992))();
            if (v7)
            {
              v8 = v7;
              v9 = (*(*v7 + 1200))(v7);
              v10 = OSMetaClassBase::safeMetaCast(v9, gAppleBCMWLANPCIeSkywalkTxCompletionQueueMetaClass);
              if (v10)
              {
                v11 = v10;
                if ((*(*v8 + 1088))(v8))
                {
                  if ((*(*v8 + 1088))(v8))
                  {
                    (*(*v8 + 1088))(v8);
                    if (CCLogStream::shouldLog())
                    {
                      AppleBCMWLANPCIeSkywalk::detachTxCompFwQueue(v8);
                    }
                  }
                }

                AppleBCMWLANPCIeSkywalkTxCompletionQueue::flushPackets(v11);
                (*(*v11 + 200))(v11);
                AppleBCMWLANPCIeSkywalkTxCompletionQueue::setFirmwareRing(v11, 0);
              }
            }

            v4 &= ~(1 << v5);
            v5 = __clz(__rbit32(v4));
          }

          while (v4);
        }

        *(*(this + 7) + 72) = 0;
        v12 = *(*(this + 7) + 56);

        return AppleBCMWLANPCIeSkywalkPacketPool::txTrackerFlush(v12);
      }
    }

    v14 = "AppleBCMWLANPCIeSkywalk::detachTxCompFwQueue, no bus/driver\n";
  }

  else
  {
    v14 = "AppleBCMWLANPCIeSkywalk::detachTxCompFwQueue, no ivars\n";
  }

  return IOLog(v14);
}

uint64_t *AppleBCMWLANPCIeSkywalk::disableAllSubmissionQueue(AppleBCMWLANPCIeSkywalk *this)
{
  v1 = *(this + 7);
  v2 = *(v1 + 44);
  result = (*(**(v1 + 48) + 1104))(*(v1 + 48));
  if (result)
  {
    v4 = v2 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    return AppleBCMWLANPCIeSkywalk::disableAllSubmissionQueue();
  }

  return result;
}

uint64_t *AppleBCMWLANPCIeSkywalk::enableAllSubmissionQueue(AppleBCMWLANPCIeSkywalk *this)
{
  v1 = *(this + 7);
  v2 = *(v1 + 44);
  result = (*(**(v1 + 48) + 1104))(*(v1 + 48));
  if (result)
  {
    v4 = v2 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    return AppleBCMWLANPCIeSkywalk::enableAllSubmissionQueue();
  }

  return result;
}

uint64_t AppleBCMWLANPCIeSkywalk::attachTxSubmissionQueues(AppleBCMWLANPCIeSkywalk *this, IO80211SkywalkInterface *a2)
{
  if ((*(*a2 + 1088))(a2))
  {
    if ((*(*a2 + 1088))(a2))
    {
      (*(*a2 + 1088))(a2);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANPCIeSkywalk::attachTxSubmissionQueues(a2);
      }
    }
  }

  if (IO80211SkywalkInterface::getInterfaceRole(a2) == 2 && ((*(*a2 + 1064))(a2) & 1) == 0)
  {
    v13 = *(this + 7);
    v12 = this + 56;
    result = *v13;
    if (*v13)
    {
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANPCIeSkywalk::attachTxSubmissionQueues(v12);
      }
    }
  }

  else
  {
    v4 = (*(*a2 + 1160))(a2);
    v5 = OSMetaClassBase::safeMetaCast(v4, gAppleBCMWLANPCIeSkywalkMulticastQueueMetaClass);
    if (v5)
    {
      v6 = v5;
      (v5->__vftable[1].isEqualTo)(v5);
      (v6->__vftable[3].getMetaClass)(v6);
    }

    v7 = 3;
    do
    {
      v8 = (*(*a2 + 1208))(a2, v7);
      v9 = OSMetaClassBase::safeMetaCast(v8, gAppleBCMWLANPCIeSkywalkTxSubmissionQueueMetaClass);
      if (v9)
      {
        v10 = v9;
        *(*(this + 7) + 476) += (v9->__vftable[5].Dispatch)(v9);
        (v10->__vftable[6].release)(v10);
        (v10->__vftable[3].retain)(v10, 0, 0);
      }

      v7 = (v7 - 1);
    }

    while (v7 != -1);
    result = **(this + 7);
    if (result)
    {
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANPCIeSkywalk::attachTxSubmissionQueues(this + 56);
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANPCIeSkywalk::retrievePendingPacketsOnRoam(uint64_t this, unsigned int *a2, unsigned int *a3)
{
  *a2 = *(*(this + 56) + 480);
  *a3 = *(*(this + 56) + 476);
  return this;
}

uint64_t non-virtual thunk toAppleBCMWLANPCIeSkywalk::retrievePendingPacketsOnRoam(uint64_t this, unsigned int *a2, unsigned int *a3)
{
  *a2 = *(*(this + 16) + 480);
  *a3 = *(*(this + 16) + 476);
  return this;
}

OSMetaClassBase *AppleBCMWLANPCIeSkywalk::detachTxSubmissionQueues(AppleBCMWLANPCIeSkywalk *this, IO80211SkywalkInterface *a2)
{
  if ((*(*a2 + 1088))(a2))
  {
    if ((*(*a2 + 1088))(a2))
    {
      (*(*a2 + 1088))(a2);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANPCIeSkywalk::detachTxSubmissionQueues(a2);
      }
    }
  }

  v4 = 0;
  do
  {
    v5 = (*(*a2 + 1208))(a2, v4);
    v6 = OSMetaClassBase::safeMetaCast(v5, gAppleBCMWLANPCIeSkywalkTxSubmissionQueueMetaClass);
    if (v6)
    {
      v7 = v6;
      (v6->__vftable[6].Dispatch)(v6);
      (v7->__vftable[3].Dispatch)(v7);
      (v7->__vftable[6].getMetaClass)(v7);
    }

    v4 = (v4 + 1);
  }

  while (v4 != 4);
  v8 = (*(*a2 + 1160))(a2);
  result = OSMetaClassBase::safeMetaCast(v8, gAppleBCMWLANPCIeSkywalkMulticastQueueMetaClass);
  if (result)
  {
    v10 = result;
    AppleBCMWLANPCIeSkywalkMulticastQueue::setFWRing(result, 0);
    result = (v10->__vftable[1].Dispatch)(v10);
  }

  *(*(this + 7) + 476) = 0;
  *(*(this + 7) + 480) = 0;
  return result;
}

uint64_t AppleBCMWLANPCIeSkywalk::findFlowIdWithFlowHash(uint64_t a1, unsigned __int8 *a2)
{
  v4 = *(a1 + 56);
  v5 = *(v4 + 44);
  v6 = (*(**(v4 + 48) + 1104))(*(v4 + 48));
  if (v6)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = 0xFFFFLL;
  if (v7)
  {
    return v8;
  }

  v9 = v6;
  v10 = __clz(__rbit32(v5));
  while (1)
  {
    v11 = (*(*v9 + 1992))(v9, v10);
    if (v11)
    {
      v12 = v11;
      v13 = (*(*v11 + 1160))(v11);
      v14 = OSMetaClassBase::safeMetaCast(v13, gAppleBCMWLANPCIeSkywalkMulticastQueueMetaClass);
      if (v14)
      {
        v15 = v14;
        if (*AppleBCMWLANPCIeSkywalkMulticastQueue::getFlowHash(v14) == *a2)
        {
          FlowId = AppleBCMWLANPCIeSkywalkMulticastQueue::getFlowId(v15);
          if (FlowId != 0xFFFF)
          {
            return FlowId;
          }

          goto LABEL_15;
        }
      }

      if ((*(*v12 + 1248))(v12))
      {
        break;
      }
    }

LABEL_15:
    v5 &= ~(1 << v10);
    v10 = __clz(__rbit32(v5));
    if (!v5)
    {
      return 0xFFFFLL;
    }
  }

  v17 = 0;
  while (1)
  {
    v18 = (*(*v12 + 1208))(v12, v17);
    v19 = OSMetaClassBase::safeMetaCast(v18, gAppleBCMWLANPCIeSkywalkTxSubmissionQueueMetaClass);
    FlowIDForHash = AppleBCMWLANPCIeSkywalkTxSubmissionQueue::getFlowIDForHash(v19, a2);
    if (FlowIDForHash != 0xFFFF)
    {
      break;
    }

    v17 = (v17 + 1);
    if (v17 >= (*(*v12 + 1248))(v12))
    {
      goto LABEL_15;
    }
  }

  v8 = FlowIDForHash;
  if (**(a1 + 56) && CCLogStream::shouldLog())
  {
    CCLogStream::logAlert(**(a1 + 56), "[dk] %s@%d:uc flow found ac %d interface %d flow id %d\n", "findFlowIdWithFlowHash", 1168, a2[1], *a2, v8);
  }

  return v8;
}

uint64_t AppleBCMWLANPCIeSkywalk::handleRxNanDataInterfacePacket(AppleBCMWLANPCIeSkywalk *this, AppleBCMWLANPCIeSkywalkPacket *a2, unsigned __int16 *a3, unsigned __int16 *a4)
{
  v5 = *a4;
  if (v5 > 0x1B)
  {
    v10 = (*(*a2 + 480))(a2);
    v11 = v10 + IO80211NetworkPacket::getHeadroom(a2);
    if (__PAIR64__(*(v11 + 15), *(v11 + 14)) == 0xAA000000AALL && *(v11 + 16) == 3 && !*(v11 + 17) && *(v11 + 18) == 23 && *(v11 + 19) == 242)
    {
      v12 = *(v11 + 26) - 1;
      if ((*(v11 + 26) - 1) <= 1u)
      {
        if (v5 - 28 >= 2)
        {
          v17 = 0;
          v18 = v11 + 28;
          while (1)
          {
            v19 = *(v18 + 1);
            v20 = v19 + 2;
            v17 += v19 + 2;
            if (v17 > (v5 - 28))
            {
              break;
            }

            if (*(v18 + 1))
            {
              if (*v18 != 1 || v19 == 1)
              {
                return 0;
              }

              v22 = *(v18 + 10);
              *(v11 + 10) = *(v18 + 14);
              *(v11 + 6) = v22;
              v23 = *(v18 + 4);
              *(v11 + 4) = *(v18 + 8);
              *v11 = v23;
              v18 += v20;
              if (--v12 < 2u)
              {
                continue;
              }
            }

            v13 = v17 + 16;
            goto LABEL_14;
          }
        }

        return 0;
      }

      v13 = 16;
LABEL_14:
      v14 = v11 + v13;
      v15 = *v11;
      *(v14 + 8) = *(v11 + 8);
      *v14 = v15;
      *a3 += v13;
      v16 = *a4 - v13;
      *a4 = v16;
      (*(*a2 + 216))(a2, v16);
      (*(*a2 + 232))(a2, *a3);
      IO80211NetworkPacket::setLinkHeaderOffset(a2, *a3);
    }

    return 1;
  }

  else
  {
    result = **(this + 7);
    if (result)
    {
      result = CCLogStream::shouldLog();
      if (result)
      {
        CCLogStream::logAlert(**(this + 7), "[dk] %s@%d:%s[%d] : ERROR:Discarding due to insufficent length (remain=%d offset = %d)\n", "handleRxNanDataInterfacePacket", 1215, "handleRxNanDataInterfacePacket", 1215, v5, *a3);
        return 0;
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANPCIeSkywalk::getRxTimeStamp(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  mach_continuous_time();
  absolutetime_to_nanoseconds();
  *(a2 + 4) = 0;
  result = AppleBCMWLANBusInterfacePCIe::getRxChipDelayToUsecMultiplier(*(*(a1 + 56) + 48));
  if (a4 && (v9 = *(a3 + 36), v9 >> 28 == 14))
  {
    v10 = (((*(a3 + 32) | ((v9 & 0xFFFFFFF) << 32)) * 0x20C49BA5E353F7DuLL) >> 64) >> 3;
    *(a2 + 20) = v10;
  }

  else
  {
    *(a2 + 20) = *(a3 + 24);
    LODWORD(v10) = *(a3 + 24);
  }

  *(a2 + 16) = v10 + *(a3 + 29) * result;
  return result;
}

uint64_t AppleBCMWLANPCIeSkywalk::setRXTimestamp(AppleBCMWLANPCIeSkywalk *this, unsigned int *a2, AppleBCMWLANPCIeSkywalkPacket *a3, IO80211SkywalkInterface *a4, char a5)
{
  v198 = 0;
  *v197 = 0;
  memset(v196, 0, sizeof(v196));
  *v195 = 0;
  (*(*a3 + 528))(a3, 0);
  if ((a5 & 1) == 0)
  {
    if (AppleBCMWLANBusInterfacePCIe::getTimestampingMode(*(*(this + 7) + 48)) == 1)
    {
      (*(*a3 + 304))(a3, -3);
      if (AppleBCMWLANUtil::isPTPPacket(a3, 0, &v198, v197, &v196[1], v196, v195, v15))
      {
        v16 = AppleBCMWLANPCIeSkywalk::setRXTimestamp(void *,AppleBCMWLANPCIeSkywalkPacket *,IO80211SkywalkInterface *,BOOL)::consecErr++;
        if (v16 <= 0x14)
        {
          if (v198)
          {
            v17 = &off_1003CB3E0;
            v18 = 9;
            v19 = "unknown";
            while (*(v17 - 2) != v196[0])
            {
              v17 += 2;
              if (!--v18)
              {
                goto LABEL_42;
              }
            }

            v19 = *v17;
LABEL_42:
            v178 = *v195;
            v186 = v19;
            if (*&v196[1])
            {
              v170 = **&v196[1];
              v162 = *(*&v196[1] + 1);
              v154 = *(*&v196[1] + 2);
              v141 = *(*&v196[1] + 3);
              v147 = *(*&v196[1] + 12);
              v130 = *(*&v196[1] + 13);
              v135 = *(*&v196[1] + 14);
              v126 = *(*&v196[1] + 15);
            }

            else
            {
              v141 = 0;
              v154 = 0;
              v162 = 0;
              v170 = 0;
            }

            v39 = **v197;
            v40 = *(*v197 + 1);
            v41 = *(*v197 + 2);
            v42 = *(*v197 + 3);
            v43 = *(*v197 + 4);
            v44 = *(*v197 + 5);
            IO80211SkywalkInterface::getInterfaceRole(a4);
            IO80211SkywalkInterface::isLowLatencyEnabled(a4);
            IOLog("[WiFiTimeSync@] Rx UDPv6 message %s sequence %d from %02x%02x:%02x%02x_%02x%02x:%02x%02x @ %02x:%02x:%02x:%02x:%02x:%02x Error nonV7Hdr. set ts=-3 if:%d isLowLatencyEnabled: %d\n", v186, v178, v170, v162, v154, v141);
          }

          else
          {
            v36 = &off_1003CB3E0;
            v37 = 9;
            v38 = "unknown";
            while (*(v36 - 2) != v196[0])
            {
              v36 += 2;
              if (!--v37)
              {
                goto LABEL_47;
              }
            }

            v38 = *v36;
LABEL_47:
            v179 = *v195;
            v187 = v38;
            if (*&v196[1])
            {
              v171 = **&v196[1];
              v163 = *(*&v196[1] + 1);
              v148 = *(*&v196[1] + 3);
              v155 = *(*&v196[1] + 2);
            }

            else
            {
              v163 = 0;
              v171 = 0;
            }

            v52 = **v197;
            v53 = *(*v197 + 1);
            v54 = *(*v197 + 2);
            v55 = *(*v197 + 3);
            v56 = *(*v197 + 4);
            v57 = *(*v197 + 5);
            IO80211SkywalkInterface::getInterfaceRole(a4);
            IO80211SkywalkInterface::isLowLatencyEnabled(a4);
            IOLog("[WiFiTimeSync@] Rx UDPv4 message %s sequence %d from %u.%u.%u.%u @ %02x:%02x:%02x:%02x:%02x:%02x Error nonV7Hdr. set ts=-3 if:%d isLowLatencyEnabled: %d\n", v187, v179, v171, v163);
          }
        }
      }

      if (PE_i_can_has_debugger(0) && (*(*(this + 7) + 484) & 1) == 0)
      {
        v58 = mach_continuous_time();
        v194 = 0xAAAAAAAAAAAAAAAALL;
        absolutetime_to_nanoseconds();
        IOLog("[WiFiTimeSync!] RX non V7 header with PTM timestamping mode. now_ns=%lld now=%lld. triggering WD\n", 0xAAAAAAAAAAAAAAAALL, v58);
        *(*(this + 7) + 484) = 1;
        CCFaultReporter::reportFault(*(*(this + 7) + 16), 5u, "/Library/Caches/com.apple.xbs/Sources/AppleBCMWLANV3_driverkit/Busses/PCIe/AppleBCMWLANPCIeSkywalk.cpp", 0x9D7u, "setRXTimestamp", 0, -469791212, 0);
      }
    }

    a2 = 0;
    goto LABEL_69;
  }

  v10 = a2[9] >> 28;
  if (v10 != 14)
  {
    if (AppleBCMWLANBusInterfacePCIe::getTimestampingMode(*(*(this + 7) + 48)) == 1)
    {
      (*(*a3 + 304))(a3, -2);
      if (AppleBCMWLANUtil::isPTPPacket(a3, 0, &v198, v197, &v196[1], v196, v195, v20))
      {
        v21 = AppleBCMWLANPCIeSkywalk::setRXTimestamp(void *,AppleBCMWLANPCIeSkywalkPacket *,IO80211SkywalkInterface *,BOOL)::consecErr;
        v22 = ++AppleBCMWLANPCIeSkywalk::setRXTimestamp(void *,AppleBCMWLANPCIeSkywalkPacket *,IO80211SkywalkInterface *,BOOL)::consecErr;
        if (v21 <= 0x14)
        {
          if (v198)
          {
            v23 = &off_1003CB3E0;
            v24 = 9;
            v25 = "unknown";
            while (*(v23 - 2) != v196[0])
            {
              v23 += 2;
              if (!--v24)
              {
                goto LABEL_58;
              }
            }

            v25 = *v23;
LABEL_58:
            v180 = *v195;
            v188 = v25;
            if (*&v196[1])
            {
              v172 = **&v196[1];
              v164 = *(*&v196[1] + 1);
              v156 = *(*&v196[1] + 2);
              v142 = *(*&v196[1] + 3);
              v149 = *(*&v196[1] + 12);
              v131 = *(*&v196[1] + 13);
              v136 = *(*&v196[1] + 14);
              v127 = *(*&v196[1] + 15);
            }

            else
            {
              v142 = 0;
              v156 = 0;
              v164 = 0;
              v172 = 0;
            }

            v123 = **v197;
            v121 = *(*v197 + 1);
            v83 = *(*v197 + 2);
            v84 = *(*v197 + 3);
            v85 = *(*v197 + 4);
            v86 = *(*v197 + 5);
            IO80211SkywalkInterface::getInterfaceRole(a4);
            IO80211SkywalkInterface::isLowLatencyEnabled(a4);
            IOLog("[WiFiTimeSync@] Rx UDPv6 message %s sequence %d from %02x%02x:%02x%02x_%02x%02x:%02x%02x @ %02x:%02x:%02x:%02x:%02x:%02x Error clockID 0x%x. set ts=-2 if:%d isLowLatencyEnabled: %d\n", v188, v180, v172, v164, v156, v142);
          }

          else
          {
            v45 = &off_1003CB3E0;
            v46 = 9;
            v47 = "unknown";
            while (*(v45 - 2) != v196[0])
            {
              v45 += 2;
              if (!--v46)
              {
                goto LABEL_99;
              }
            }

            v47 = *v45;
LABEL_99:
            v182 = *v195;
            v190 = v47;
            if (*&v196[1])
            {
              v174 = **&v196[1];
              v166 = *(*&v196[1] + 1);
              v151 = *(*&v196[1] + 3);
              v158 = *(*&v196[1] + 2);
            }

            else
            {
              v166 = 0;
              v174 = 0;
            }

            v144 = **v197;
            v138 = *(*v197 + 1);
            v97 = *(*v197 + 2);
            v98 = *(*v197 + 3);
            v99 = *(*v197 + 4);
            v100 = *(*v197 + 5);
            IO80211SkywalkInterface::getInterfaceRole(a4);
            IO80211SkywalkInterface::isLowLatencyEnabled(a4);
            IOLog("[WiFiTimeSync@] Rx UDPv4 message %s sequence %d from %u.%u.%u.%u @ %02x:%02x:%02x:%02x:%02x:%02x Error clockID 0x%x. set ts=-2 if:%d isLowLatencyEnabled: %d\n", v190, v182, v174, v166);
          }

          v22 = AppleBCMWLANPCIeSkywalk::setRXTimestamp(void *,AppleBCMWLANPCIeSkywalkPacket *,IO80211SkywalkInterface *,BOOL)::consecErr;
        }

        if (v22 >= 3 && PE_i_can_has_debugger(0) && (*(*(this + 7) + 484) & 1) == 0)
        {
          v101 = mach_continuous_time();
          v194 = 0xAAAAAAAAAAAAAAAALL;
          absolutetime_to_nanoseconds();
          IOLog("[WiFiTimeSync!] RX ClockID 0x%x with PTM timestamping mode. now_ns=%lld now=%lld. triggering WD\n", v10, 0xAAAAAAAAAAAAAAAALL, v101);
          *(*(this + 7) + 484) = 1;
          CCFaultReporter::reportFault(*(*(this + 7) + 16), 5u, "/Library/Caches/com.apple.xbs/Sources/AppleBCMWLANV3_driverkit/Busses/PCIe/AppleBCMWLANPCIeSkywalk.cpp", 0xA39u, "setRXTimestamp", 0, -469791211, 0);
        }
      }
    }

LABEL_69:
    if ((IO80211SkywalkInterface::isLowLatencyEnabled(a4) & 1) == 0)
    {
      AppleBCMWLANBusInterfacePCIe::handleRxTimeSync(*(*(this + 7) + 48), a2, a3);
    }

    goto LABEL_71;
  }

  AppleBCMWLANPCIeSkywalk::storePTMTimestamp(this, a2 + 8, a3);
  v11 = (*(**(*(this + 7) + 48) + 544))();
  v12 = *a3;
  if (v11)
  {
    v13 = (*(v12 + 552))(a3);
    v14 = AppleBCMWLANBusInterfacePCIe::convertPTMToAbsolute(*(*(this + 7) + 48), v13);
    (*(*a3 + 304))(a3, v14);
    if (v14)
    {
      if (AppleBCMWLANPCIeSkywalk::setRXTimestamp(void *,AppleBCMWLANPCIeSkywalkPacket *,IO80211SkywalkInterface *,BOOL)::consecErr)
      {
        AppleBCMWLANPCIeSkywalk::setRXTimestamp(void *,AppleBCMWLANPCIeSkywalkPacket *,IO80211SkywalkInterface *,BOOL)::consecErr = 0;
      }
    }

    else
    {
      mach_continuous_time();
      v194 = 0xAAAAAAAAAAAAAAAALL;
      absolutetime_to_nanoseconds();
      if (AppleBCMWLANUtil::isPTPPacket(a3, 0, &v198, v197, &v196[1], v196, v195, v31))
      {
        v32 = AppleBCMWLANPCIeSkywalk::setRXTimestamp(void *,AppleBCMWLANPCIeSkywalkPacket *,IO80211SkywalkInterface *,BOOL)::consecErr++;
        if (v32 <= 0x14)
        {
          if (v198)
          {
            v33 = &off_1003CB3E0;
            v34 = 9;
            v35 = "unknown";
            while (*(v33 - 2) != v196[0])
            {
              v33 += 2;
              if (!--v34)
              {
                goto LABEL_118;
              }
            }

            v35 = *v33;
LABEL_118:
            v184 = *v195;
            v192 = v35;
            if (*&v196[1])
            {
              v176 = **&v196[1];
              v168 = *(*&v196[1] + 1);
              v160 = *(*&v196[1] + 2);
              v145 = *(*&v196[1] + 3);
              v152 = *(*&v196[1] + 12);
              v133 = *(*&v196[1] + 13);
              v139 = *(*&v196[1] + 14);
              v128 = *(*&v196[1] + 15);
            }

            else
            {
              v139 = 0;
              v145 = 0;
              v152 = 0;
              v160 = 0;
              v168 = 0;
              v176 = 0;
              v128 = 0;
              v133 = 0;
            }

            v124 = **v197;
            v122 = *(*v197 + 1);
            v120 = *(*v197 + 2);
            v119 = *(*v197 + 3);
            v118 = *(*v197 + 4);
            v108 = *(*v197 + 5);
            v109 = a2[8] | ((a2[9] & 0xFFFFFFF) << 32);
            AppleBCMWLANBusInterfacePCIe::getLastTimePowerOnTicks(*(*(this + 7) + 48));
            (*(**(*(this + 7) + 48) + 944))();
            IO80211SkywalkInterface::getInterfaceRole(a4);
            IOLog("[WiFiTimeSync@] Rx UDPv6 message %s sequence %d from %02x%02x:%02x%02x_%02x%02x:%02x%02x @ %02x:%02x:%02x:%02x:%02x:%02x Error conversion. set ts=0 fw_ns=%lld now_ns=%lld ts_ticks=%lld now_ticks=%lld lastPowerOnTicks=%lld isPowerOn()=%d if:%d\n", v192, v184, v176, v168, v160, v145, v152, v133, v139, v128, v124);
          }

          else
          {
            v94 = &off_1003CB3E0;
            v95 = 9;
            v96 = "unknown";
            while (*(v94 - 2) != v196[0])
            {
              v94 += 2;
              if (!--v95)
              {
                goto LABEL_123;
              }
            }

            v96 = *v94;
LABEL_123:
            v185 = *v195;
            v193 = v96;
            if (*&v196[1])
            {
              v177 = **&v196[1];
              v169 = *(*&v196[1] + 1);
              v153 = *(*&v196[1] + 3);
              v161 = *(*&v196[1] + 2);
            }

            else
            {
              v161 = 0;
              v169 = 0;
              v177 = 0;
              v153 = 0;
            }

            v146 = **v197;
            v140 = *(*v197 + 1);
            v134 = *(*v197 + 2);
            v129 = *(*v197 + 3);
            v125 = *(*v197 + 4);
            v110 = *(*v197 + 5);
            v111 = a2[8] | ((a2[9] & 0xFFFFFFF) << 32);
            AppleBCMWLANBusInterfacePCIe::getLastTimePowerOnTicks(*(*(this + 7) + 48));
            (*(**(*(this + 7) + 48) + 944))();
            IO80211SkywalkInterface::getInterfaceRole(a4);
            IOLog("[WiFiTimeSync@] Rx UDPv4 message %s sequence %d from %u.%u.%u.%u @ %02x:%02x:%02x:%02x:%02x:%02x Error conversion. set ts=0 fw_ns=%lld now_ns=%lld ts_ticks=%lld now_ticks=%lld lastPowerOnTicks=%lld isPowerOn()=%d if:%d\n", v193, v185, v177, v169, v161, v153, v146, v140, v134);
          }
        }
      }
    }
  }

  else
  {
    (*(v12 + 304))(a3, -1);
    if (AppleBCMWLANUtil::isPTPPacket(a3, 0, &v198, v197, &v196[1], v196, v195, v26))
    {
      v27 = AppleBCMWLANPCIeSkywalk::setRXTimestamp(void *,AppleBCMWLANPCIeSkywalkPacket *,IO80211SkywalkInterface *,BOOL)::consecErr++;
      if (v27 <= 0x14)
      {
        if (v198)
        {
          v28 = &off_1003CB3E0;
          v29 = 9;
          v30 = "unknown";
          while (*(v28 - 2) != v196[0])
          {
            v28 += 2;
            if (!--v29)
            {
              goto LABEL_61;
            }
          }

          v30 = *v28;
LABEL_61:
          v181 = *v195;
          v189 = v30;
          if (*&v196[1])
          {
            v173 = **&v196[1];
            v165 = *(*&v196[1] + 1);
            v157 = *(*&v196[1] + 2);
            v143 = *(*&v196[1] + 3);
            v150 = *(*&v196[1] + 12);
            v132 = *(*&v196[1] + 13);
            v137 = *(*&v196[1] + 14);
            v51 = *(*&v196[1] + 15);
          }

          else
          {
            v157 = 0;
            v165 = 0;
            v173 = 0;
          }

          v87 = **v197;
          v88 = *(*v197 + 1);
          v89 = *(*v197 + 2);
          v90 = *(*v197 + 3);
          v91 = *(*v197 + 4);
          v92 = *(*v197 + 5);
          IO80211SkywalkInterface::getInterfaceRole(a4);
          IOLog("[WiFiTimeSync@] Rx UDPv6 message %s sequence %d from %02x%02x:%02x%02x_%02x%02x:%02x%02x @ %02x:%02x:%02x:%02x:%02x:%02x Error TSDisabled. set ts=-1 if:%d\n", v189, v181, v173, v165, v157);
        }

        else
        {
          v48 = &off_1003CB3E0;
          v49 = 9;
          v50 = "unknown";
          while (*(v48 - 2) != v196[0])
          {
            v48 += 2;
            if (!--v49)
            {
              goto LABEL_102;
            }
          }

          v50 = *v48;
LABEL_102:
          v183 = *v195;
          v191 = v50;
          if (*&v196[1])
          {
            v175 = **&v196[1];
            v167 = *(*&v196[1] + 1);
            v159 = *(*&v196[1] + 2);
            v93 = *(*&v196[1] + 3);
          }

          else
          {
            v175 = 0;
          }

          v102 = **v197;
          v103 = *(*v197 + 1);
          v104 = *(*v197 + 2);
          v105 = *(*v197 + 3);
          v106 = *(*v197 + 4);
          v107 = *(*v197 + 5);
          IO80211SkywalkInterface::getInterfaceRole(a4);
          IOLog("[WiFiTimeSync@] Rx UDPv4 message %s sequence %d from %u.%u.%u.%u @ %02x:%02x:%02x:%02x:%02x:%02x Error TSDisabled. set ts=-1 if:%d\n", v191, v183, v175);
        }
      }
    }
  }

LABEL_71:
  result = (*(**(*(this + 7) + 48) + 544))(*(*(this + 7) + 48));
  if (result)
  {
    result = AppleBCMWLANBusInterfacePCIe::isTSLoggingEnabled(*(*(this + 7) + 48));
    if (result)
    {
      result = AppleBCMWLANUtil::isPTPPacket(a3, 0, &v198, v197, &v196[1], v196, v195, v60);
      if (result)
      {
        v194 = 0xAAAAAAAAAAAAAAAALL;
        (*(*a3 + 320))(a3, &v194);
        v61 = &off_1003CB3E0;
        v62 = 9;
        if (v198)
        {
          v63 = "unknown";
          while (*(v61 - 2) != v196[0])
          {
            v61 += 2;
            if (!--v62)
            {
              goto LABEL_84;
            }
          }

          v63 = *v61;
LABEL_84:
          if (*&v196[1])
          {
            v65 = **&v196[1];
            v66 = *(*&v196[1] + 1);
            v67 = *(*&v196[1] + 2);
            v68 = *(*&v196[1] + 3);
            v69 = *(*&v196[1] + 12);
            v70 = *(*&v196[1] + 13);
            v71 = *(*&v196[1] + 14);
            v72 = *(*&v196[1] + 15);
          }

          else
          {
            v67 = 0;
            v65 = 0;
            v66 = 0;
            v68 = 0;
          }

          v73 = **v197;
          v74 = *(*v197 + 1);
          v75 = *(*v197 + 2);
          v76 = *(*v197 + 3);
          v77 = *(*v197 + 4);
          v117 = *(*v197 + 5);
          return IOLog("[WiFiTimeSync-] Rx UDPv6 message %s sequence %d from %02x%02x:%02x%02x_%02x%02x:%02x%02x @ %02x:%02x:%02x:%02x:%02x:%02x completed. ts %llu", v63, *v195, v65, v66, v67, v68);
        }

        else
        {
          v64 = "unknown";
          while (*(v61 - 2) != v196[0])
          {
            v61 += 2;
            if (!--v62)
            {
              goto LABEL_89;
            }
          }

          v64 = *v61;
LABEL_89:
          if (*&v196[1])
          {
            v78 = **&v196[1];
            v79 = *(*&v196[1] + 1);
            v80 = *(*&v196[1] + 2);
            v81 = *(*&v196[1] + 3);
          }

          else
          {
            v78 = 0;
            v79 = 0;
          }

          v82 = *(*v197 + 4);
          v116 = *(*v197 + 5);
          v115 = *(*v197 + 3);
          v113 = *(*v197 + 1);
          v114 = *(*v197 + 2);
          v112 = **v197;
          return IOLog("[WiFiTimeSync-] Rx UDPv4 message %s sequence %d from %u.%u.%u.%u @ %02x:%02x:%02x:%02x:%02x:%02x completed. ts %llu", v64, *v195, v78, v79);
        }
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANPCIeSkywalk::inputMonitorPacket(AppleBCMWLANPCIeSkywalk *this, IO80211SkywalkInterface *a2, AppleBCMWLANPCIeSkywalkPacket *a3, uint64_t a4, uint64_t a5)
{
  v6 = a4;
  (*(*a3 + 232))(a3, a4);
  IO80211NetworkPacket::setHeadroom(a3, v6);
  result = (*(*a3 + 216))(a3, a5);
  if (a2)
  {
    v10 = *(*a2 + 256);

    return v10(a2, 127, a3, 0, 0);
  }

  return result;
}

uint64_t AppleBCMWLANPCIeSkywalk::setTXTimestamp(AppleBCMWLANPCIeSkywalk *this, unsigned int *a2, int a3, AppleBCMWLANPCIeSkywalkPacket *a4, IO80211SkywalkInterface *a5, int a6)
{
  v12 = *(a2 + 14);
  v358 = 0;
  *v357 = 0;
  memset(v356, 0, sizeof(v356));
  *v355 = 0;
  (*(*a4 + 528))(a4, 0);
  if (a6)
  {
    v13 = a2;
  }

  else
  {
    v13 = 0;
  }

  v14 = *(*(this + 7) + 48);
  if (a3 == 1)
  {
    if (AppleBCMWLANBusInterfacePCIe::getTimestampingMode(v14) == 1)
    {
      (*(*a4 + 304))(a4, -4);
      if (AppleBCMWLANUtil::isPTPPacket(a4, 1, &v358, v357, &v356[1], v356, v355, v15))
      {
        v16 = AppleBCMWLANPCIeSkywalk::setTXTimestamp(void *,int,AppleBCMWLANPCIeSkywalkPacket *,IO80211SkywalkInterface *,BOOL)::consecErr++;
        if (v16 <= 0x14)
        {
          v350 = v12;
          if (v358)
          {
            v17 = &off_1003CB3E0;
            v18 = 9;
            v19 = "unknown";
            while (*(v17 - 2) != v356[0])
            {
              v17 += 2;
              if (!--v18)
              {
                goto LABEL_54;
              }
            }

            v19 = *v17;
LABEL_54:
            v328 = *v355;
            v339 = v19;
            if (*&v356[1])
            {
              v316 = **&v356[1];
              v306 = *(*&v356[1] + 1);
              v296 = *(*&v356[1] + 2);
              v278 = *(*&v356[1] + 3);
              v286 = *(*&v356[1] + 12);
              v266 = *(*&v356[1] + 13);
              v272 = *(*&v356[1] + 14);
              v260 = *(*&v356[1] + 15);
            }

            else
            {
              v278 = 0;
              v286 = 0;
              v296 = 0;
              v306 = 0;
              v316 = 0;
            }

            v256 = **v357;
            v42 = *(*v357 + 1);
            v43 = *(*v357 + 2);
            v44 = *(*v357 + 3);
            v45 = *(*v357 + 4);
            v46 = *(*v357 + 5);
            IO80211SkywalkInterface::getInterfaceRole(a5);
            (*(**(*(this + 7) + 48) + 544))();
            (*(*a4 + 328))(a4);
            v12 = v350;
            IOLog("[WiFiTimeSync@] Tx UDPv6 message %s sequence %d to %02x%02x:%02x%02x_%02x%02x:%02x%02x @ %02x:%02x:%02x:%02x:%02x:%02x Error ptmModeDisabled. set ts=-4 if:%d tsEnabled:%d tsRequested:%d tx_status:%d\n", v339, v328, v316, v306, v296, v278, v286);
          }

          else
          {
            v39 = &off_1003CB3E0;
            v40 = 9;
            v41 = "unknown";
            while (*(v39 - 2) != v356[0])
            {
              v39 += 2;
              if (!--v40)
              {
                goto LABEL_59;
              }
            }

            v41 = *v39;
LABEL_59:
            v329 = *v355;
            v340 = v41;
            if (*&v356[1])
            {
              v317 = **&v356[1];
              v307 = *(*&v356[1] + 1);
              v287 = *(*&v356[1] + 3);
              v297 = *(*&v356[1] + 2);
            }

            else
            {
              v297 = 0;
              v307 = 0;
              v317 = 0;
            }

            v279 = **v357;
            v53 = *(*v357 + 1);
            v54 = *(*v357 + 2);
            v55 = *(*v357 + 3);
            v56 = *(*v357 + 4);
            v57 = *(*v357 + 5);
            IO80211SkywalkInterface::getInterfaceRole(a5);
            (*(**(*(this + 7) + 48) + 544))();
            (*(*a4 + 328))(a4);
            v12 = v350;
            IOLog("[WiFiTimeSync@] Tx UDPv4 message %s sequence %d to %u.%u.%u.%u @ %02x:%02x:%02x:%02x:%02x:%02x Error ptmModeDisabled. set ts=-4 if:%d tsEnabled:%d tsRequested:%d tx_status:%d\n", v340, v329, v317, v307, v297);
          }
        }
      }
    }

    AppleBCMWLANBusInterfacePCIe::handleTxTimeSync(*(*(this + 7) + 48), v13, a4, v12);
    goto LABEL_71;
  }

  if ((*(*v14 + 544))(v14))
  {
    if ((*(*a4 + 328))(a4) && v12 != 0)
    {
      (*(*a4 + 304))(a4, 0);
      goto LABEL_71;
    }
  }

  if (!v13)
  {
    if (AppleBCMWLANBusInterfacePCIe::getTimestampingMode(*(*(this + 7) + 48)) != 1)
    {
      goto LABEL_71;
    }

    (*(*a4 + 304))(a4, -3);
    if (AppleBCMWLANUtil::isPTPPacket(a4, 1, &v358, v357, &v356[1], v356, v355, v24))
    {
      v25 = AppleBCMWLANPCIeSkywalk::setTXTimestamp(void *,int,AppleBCMWLANPCIeSkywalkPacket *,IO80211SkywalkInterface *,BOOL)::consecErr++;
      if (v25 <= 0x14)
      {
        v351 = v12;
        if (v358)
        {
          v26 = &off_1003CB3E0;
          v27 = 9;
          v28 = "unknown";
          while (*(v26 - 2) != v356[0])
          {
            v26 += 2;
            if (!--v27)
            {
              goto LABEL_135;
            }
          }

          v28 = *v26;
LABEL_135:
          v332 = *v355;
          v343 = v28;
          if (*&v356[1])
          {
            v321 = **&v356[1];
            v309 = *(*&v356[1] + 1);
            v299 = *(*&v356[1] + 2);
            v281 = *(*&v356[1] + 3);
            v289 = *(*&v356[1] + 12);
            v268 = *(*&v356[1] + 13);
            v274 = *(*&v356[1] + 14);
            v262 = *(*&v356[1] + 15);
          }

          else
          {
            v281 = 0;
            v289 = 0;
            v299 = 0;
            v309 = 0;
            v321 = 0;
          }

          v163 = **v357;
          v164 = *(*v357 + 1);
          v165 = *(*v357 + 2);
          v166 = *(*v357 + 3);
          v167 = *(*v357 + 4);
          v168 = *(*v357 + 5);
          IO80211SkywalkInterface::getInterfaceRole(a5);
          (*(**(*(this + 7) + 48) + 544))();
          (*(*a4 + 328))(a4);
          v12 = v351;
          IOLog("[WiFiTimeSync@] Tx UDPv6 message %s sequence %d to %02x%02x:%02x%02x_%02x%02x:%02x%02x @ %02x:%02x:%02x:%02x:%02x:%02x Error nonV7Hdr. set ts=-3 if:%d tsEnabled:%d tsRequested:%d tx_status:%d\n", v343, v332, v321, v309, v299, v281, v289);
        }

        else
        {
          v147 = &off_1003CB3E0;
          v148 = 9;
          v149 = "unknown";
          while (*(v147 - 2) != v356[0])
          {
            v147 += 2;
            if (!--v148)
            {
              goto LABEL_159;
            }
          }

          v149 = *v147;
LABEL_159:
          v335 = *v355;
          v346 = v149;
          if (*&v356[1])
          {
            v324 = **&v356[1];
            v312 = *(*&v356[1] + 1);
            v292 = *(*&v356[1] + 3);
            v302 = *(*&v356[1] + 2);
          }

          else
          {
            v302 = 0;
            v312 = 0;
            v324 = 0;
          }

          v180 = **v357;
          v181 = *(*v357 + 1);
          v182 = *(*v357 + 2);
          v183 = *(*v357 + 3);
          v184 = *(*v357 + 4);
          v185 = *(*v357 + 5);
          IO80211SkywalkInterface::getInterfaceRole(a5);
          (*(**(*(this + 7) + 48) + 544))();
          (*(*a4 + 328))(a4);
          v12 = v351;
          IOLog("[WiFiTimeSync@] Tx UDPv4 message %s sequence %d to %u.%u.%u.%u @ %02x:%02x:%02x:%02x:%02x:%02x Error nonV7Hdr. set ts=-3 if:%d tsEnabled:%d tsRequested:%d tx_status:%d\n", v346, v335, v324, v312, v302);
        }
      }
    }

    if (!PE_i_can_has_debugger(0) || (*(*(this + 7) + 484) & 1) != 0)
    {
      goto LABEL_71;
    }

    v186 = mach_continuous_time();
    v354 = 0xAAAAAAAAAAAAAAAALL;
    absolutetime_to_nanoseconds();
    IOLog("[WiFiTimeSync!] TX non V7 header with PTM timestamping mode. now_ns=%lld now=%lld. triggering WD\n", 0xAAAAAAAAAAAAAAAALL, v186);
    *(*(this + 7) + 484) = 1;
    v187 = *(*(this + 7) + 16);
    v188 = -469791212;
    v189 = 5;
    v190 = 2735;
LABEL_178:
    CCFaultReporter::reportFault(v187, v189, "/Library/Caches/com.apple.xbs/Sources/AppleBCMWLANV3_driverkit/Busses/PCIe/AppleBCMWLANPCIeSkywalk.cpp", v190, "setTXTimestamp", 0, v188, 0);
    goto LABEL_71;
  }

  v21 = v13[5] >> 28;
  if (v21 != 14)
  {
    if (AppleBCMWLANBusInterfacePCIe::getTimestampingMode(*(*(this + 7) + 48)) != 1)
    {
      goto LABEL_71;
    }

    (*(*a4 + 304))(a4, -2);
    if (!AppleBCMWLANUtil::isPTPPacket(a4, 1, &v358, v357, &v356[1], v356, v355, v29))
    {
      goto LABEL_71;
    }

    v30 = AppleBCMWLANPCIeSkywalk::setTXTimestamp(void *,int,AppleBCMWLANPCIeSkywalkPacket *,IO80211SkywalkInterface *,BOOL)::consecErr++;
    if (v30 <= 0x14)
    {
      v352 = v12;
      if (v358)
      {
        v31 = &off_1003CB3E0;
        v32 = 9;
        v33 = "unknown";
        while (*(v31 - 2) != v356[0])
        {
          v31 += 2;
          if (!--v32)
          {
            goto LABEL_146;
          }
        }

        v33 = *v31;
LABEL_146:
        v333 = *v355;
        v344 = v33;
        if (*&v356[1])
        {
          v322 = **&v356[1];
          v310 = *(*&v356[1] + 1);
          v300 = *(*&v356[1] + 2);
          v282 = *(*&v356[1] + 3);
          v290 = *(*&v356[1] + 12);
          v269 = *(*&v356[1] + 13);
          v275 = *(*&v356[1] + 14);
          v263 = *(*&v356[1] + 15);
        }

        else
        {
          v282 = 0;
          v290 = 0;
          v300 = 0;
          v310 = 0;
          v322 = 0;
        }

        v257 = **v357;
        v169 = *(*v357 + 1);
        v170 = *(*v357 + 2);
        v171 = *(*v357 + 3);
        v172 = *(*v357 + 4);
        v173 = *(*v357 + 5);
        IO80211SkywalkInterface::getInterfaceRole(a5);
        (*(**(*(this + 7) + 48) + 544))();
        (*(*a4 + 328))(a4);
        v12 = v352;
        IOLog("[WiFiTimeSync@] Tx UDPv6 message %s sequence %d to %02x%02x:%02x%02x_%02x%02x:%02x%02x @ %02x:%02x:%02x:%02x:%02x:%02x Error clockID 0x%x. set ts=-2 if:%d tsEnabled:%d tsRequested:%d tx_status:%d\n", v344, v333, v322, v310, v300, v282, v290);
      }

      else
      {
        v150 = &off_1003CB3E0;
        v151 = 9;
        v152 = "unknown";
        while (*(v150 - 2) != v356[0])
        {
          v150 += 2;
          if (!--v151)
          {
            goto LABEL_166;
          }
        }

        v152 = *v150;
LABEL_166:
        v336 = *v355;
        v347 = v152;
        if (*&v356[1])
        {
          v325 = **&v356[1];
          v313 = *(*&v356[1] + 1);
          v293 = *(*&v356[1] + 3);
          v303 = *(*&v356[1] + 2);
        }

        else
        {
          v303 = 0;
          v313 = 0;
          v325 = 0;
        }

        v283 = **v357;
        v191 = *(*v357 + 1);
        v192 = *(*v357 + 2);
        v193 = *(*v357 + 3);
        v194 = *(*v357 + 4);
        v195 = *(*v357 + 5);
        IO80211SkywalkInterface::getInterfaceRole(a5);
        (*(**(*(this + 7) + 48) + 544))();
        (*(*a4 + 328))(a4);
        v12 = v352;
        IOLog("[WiFiTimeSync@] Tx UDPv4 message %s sequence %d to %u.%u.%u.%u @ %02x:%02x:%02x:%02x:%02x:%02x Error clockID 0x%x. set ts=-2 if:%d tsEnabled:%d tsRequested:%d tx_status:%d\n", v347, v336, v325, v313, v303);
      }
    }

    if (!PE_i_can_has_debugger(0) || (*(*(this + 7) + 484) & 1) != 0)
    {
      goto LABEL_71;
    }

    v196 = mach_continuous_time();
    v354 = 0xAAAAAAAAAAAAAAAALL;
    absolutetime_to_nanoseconds();
    IOLog("[WiFiTimeSync!] TX ClockID 0x%x with PTM timestamping mode. now_ns=%lld now=%lld. triggering WD\n", v21, 0xAAAAAAAAAAAAAAAALL, v196);
    *(*(this + 7) + 484) = 1;
    v187 = *(*(this + 7) + 16);
    v188 = -469791211;
    v189 = 5;
    v190 = 2862;
    goto LABEL_178;
  }

  AppleBCMWLANPCIeSkywalk::storePTMTimestamp(this, v13 + 4, a4);
  if ((*(**(*(this + 7) + 48) + 544))() && (*(*a4 + 328))(a4))
  {
    v22 = (*(*a4 + 552))(a4);
    v23 = AppleBCMWLANBusInterfacePCIe::convertPTMToAbsolute(*(*(this + 7) + 48), v22);
    (*(*a4 + 304))(a4, v23);
    if (v23)
    {
      if (AppleBCMWLANPCIeSkywalk::setTXTimestamp(void *,int,AppleBCMWLANPCIeSkywalkPacket *,IO80211SkywalkInterface *,BOOL)::consecErr)
      {
        AppleBCMWLANPCIeSkywalk::setTXTimestamp(void *,int,AppleBCMWLANPCIeSkywalkPacket *,IO80211SkywalkInterface *,BOOL)::consecErr = 0;
      }

      goto LABEL_71;
    }

    v47 = mach_continuous_time();
    v354 = 0xAAAAAAAAAAAAAAAALL;
    absolutetime_to_nanoseconds();
    if (AppleBCMWLANUtil::isPTPPacket(a4, 1, &v358, v357, &v356[1], v356, v355, v48))
    {
      v49 = AppleBCMWLANPCIeSkywalk::setTXTimestamp(void *,int,AppleBCMWLANPCIeSkywalkPacket *,IO80211SkywalkInterface *,BOOL)::consecErr++;
      if (v49 <= 0x14)
      {
        if (v358)
        {
          v50 = &off_1003CB3E0;
          v51 = 9;
          v52 = "unknown";
          while (*(v50 - 2) != v356[0])
          {
            v50 += 2;
            if (!--v51)
            {
              goto LABEL_184;
            }
          }

          v52 = *v50;
LABEL_184:
          v337 = *v355;
          v348 = v52;
          if (*&v356[1])
          {
            v326 = **&v356[1];
            v314 = *(*&v356[1] + 1);
            v304 = *(*&v356[1] + 2);
            v284 = *(*&v356[1] + 3);
            v294 = *(*&v356[1] + 12);
            v270 = *(*&v356[1] + 13);
            v276 = *(*&v356[1] + 14);
            v264 = *(*&v356[1] + 15);
          }

          else
          {
            v276 = 0;
            v284 = 0;
            v294 = 0;
            v304 = 0;
            v314 = 0;
            v326 = 0;
            v264 = 0;
            v270 = 0;
          }

          v258 = **v357;
          v254 = *(*v357 + 1);
          v252 = *(*v357 + 2);
          v251 = *(*v357 + 3);
          v249 = *(*v357 + 5);
          v250 = *(*v357 + 4);
          v248 = v13[4] | ((v13[5] & 0xFFFFFFF) << 32);
          AppleBCMWLANBusInterfacePCIe::getLastTimePowerOnTicks(*(*(this + 7) + 48));
          (*(**(*(this + 7) + 48) + 944))();
          IO80211SkywalkInterface::getInterfaceRole(a5);
          (*(**(*(this + 7) + 48) + 544))();
          (*(*a4 + 328))(a4);
          IOLog("[WiFiTimeSync@] Tx UDPv6 message %s sequence %d to %02x%02x:%02x%02x_%02x%02x:%02x%02x @ %02x:%02x:%02x:%02x:%02x:%02x Error conversion. set ts=0 fw_ns=%lld now_ns=%lld ts_ticks=%lld now_ticks=%lld lastPowerOnTicks=%lld isPowerOn()=%d if:%d tsEnabled:%d tsRequested:%d tx_status:%d\n", v348, v337, v326, v314, v304, v284, v294, v270, v276, v264, v258, v254, v252);
        }

        else
        {
          v197 = &off_1003CB3E0;
          v198 = 9;
          v199 = "unknown";
          while (*(v197 - 2) != v356[0])
          {
            v197 += 2;
            if (!--v198)
            {
              goto LABEL_189;
            }
          }

          v199 = *v197;
LABEL_189:
          v338 = *v355;
          v349 = v199;
          if (*&v356[1])
          {
            v327 = **&v356[1];
            v315 = *(*&v356[1] + 1);
            v295 = *(*&v356[1] + 3);
            v305 = *(*&v356[1] + 2);
          }

          else
          {
            v305 = 0;
            v315 = 0;
            v327 = 0;
            v295 = 0;
          }

          v285 = **v357;
          v277 = *(*v357 + 1);
          v271 = *(*v357 + 2);
          v265 = *(*v357 + 3);
          v255 = *(*v357 + 5);
          v259 = *(*v357 + 4);
          v253 = v13[4] | ((v13[5] & 0xFFFFFFF) << 32);
          AppleBCMWLANBusInterfacePCIe::getLastTimePowerOnTicks(*(*(this + 7) + 48));
          (*(**(*(this + 7) + 48) + 944))();
          IO80211SkywalkInterface::getInterfaceRole(a5);
          (*(**(*(this + 7) + 48) + 544))();
          (*(*a4 + 328))(a4);
          IOLog("[WiFiTimeSync@] Tx UDPv4 message %s sequence %d to %u.%u.%u.%u @ %02x:%02x:%02x:%02x:%02x:%02x Error conversion. set ts=0 fw_ns=%lld now_ns=%lld ts_ticks=%lld now_ticks=%lld lastPowerOnTicks=%lld isPowerOn()=%d if:%d tsEnabled:%d tsRequested:%d tx_status:%d\n", v349, v338, v327, v315, v305, v295, v285, v277, v271, v265, v259);
        }
      }
    }

    if (!(*(**(*(this + 7) + 48) + 944))(*(*(this + 7) + 48)) || AppleBCMWLANBusInterfacePCIe::getLastTimePowerOnTicks(*(*(this + 7) + 48)) > v47)
    {
      if (PE_i_can_has_debugger(0))
      {
        v200 = *(this + 7);
        if ((*(v200 + 484) & 1) == 0)
        {
          v201 = v13[4] | ((v13[5] & 0xFFFFFFF) << 32);
          LastTimePowerOnTicks = AppleBCMWLANBusInterfacePCIe::getLastTimePowerOnTicks(*(v200 + 48));
          v203 = (*(**(*(this + 7) + 48) + 944))();
          IOLog("[WiFiTimeSync!] TX PTMTimestamp invalid: fw_ns=%lld now_ns=%lld ts_ticks=%lld now_ticks=%lld lastPowerOnTicks=%lld isPowerOn()=%d. triggering WD\n", v201, v354, v22, v47, LastTimePowerOnTicks, v203);
          *(*(this + 7) + 484) = 1;
          v187 = *(*(this + 7) + 16);
          v189 = 6;
          v190 = 2797;
          v188 = -469794004;
          goto LABEL_178;
        }
      }
    }
  }

  else
  {
    (*(*a4 + 304))(a4, -1);
    if (AppleBCMWLANUtil::isPTPPacket(a4, 1, &v358, v357, &v356[1], v356, v355, v34))
    {
      v35 = AppleBCMWLANPCIeSkywalk::setTXTimestamp(void *,int,AppleBCMWLANPCIeSkywalkPacket *,IO80211SkywalkInterface *,BOOL)::consecErr++;
      if (v35 <= 0x14)
      {
        v353 = v12;
        if (v358)
        {
          v36 = &off_1003CB3E0;
          v37 = 9;
          v38 = "unknown";
          while (*(v36 - 2) != v356[0])
          {
            v36 += 2;
            if (!--v37)
            {
              goto LABEL_128;
            }
          }

          v38 = *v36;
LABEL_128:
          v331 = *v355;
          v342 = v38;
          if (*&v356[1])
          {
            v320 = **&v356[1];
            v308 = *(*&v356[1] + 1);
            v298 = *(*&v356[1] + 2);
            v280 = *(*&v356[1] + 3);
            v288 = *(*&v356[1] + 12);
            v267 = *(*&v356[1] + 13);
            v273 = *(*&v356[1] + 14);
            v261 = *(*&v356[1] + 15);
          }

          else
          {
            v280 = 0;
            v288 = 0;
            v298 = 0;
            v308 = 0;
            v320 = 0;
          }

          v153 = **v357;
          v154 = *(*v357 + 1);
          v155 = *(*v357 + 2);
          v156 = *(*v357 + 3);
          v157 = *(*v357 + 4);
          v158 = *(*v357 + 5);
          IO80211SkywalkInterface::getInterfaceRole(a5);
          (*(**(*(this + 7) + 48) + 544))();
          (*(*a4 + 328))(a4);
          v12 = v353;
          IOLog("[WiFiTimeSync@] Tx UDPv6 message %s sequence %d to %02x%02x:%02x%02x_%02x%02x:%02x%02x @ %02x:%02x:%02x:%02x:%02x:%02x Error set ts=-1 if:%d tsEnabled:%d tsRequested:%d tx_status:%d\n", v342, v331, v320, v308, v298, v280, v288);
        }

        else
        {
          v119 = &off_1003CB3E0;
          v120 = 9;
          v121 = "unknown";
          while (*(v119 - 2) != v356[0])
          {
            v119 += 2;
            if (!--v120)
            {
              goto LABEL_152;
            }
          }

          v121 = *v119;
LABEL_152:
          v334 = *v355;
          v345 = v121;
          if (*&v356[1])
          {
            v323 = **&v356[1];
            v311 = *(*&v356[1] + 1);
            v291 = *(*&v356[1] + 3);
            v301 = *(*&v356[1] + 2);
          }

          else
          {
            v301 = 0;
            v311 = 0;
            v323 = 0;
          }

          v174 = **v357;
          v175 = *(*v357 + 1);
          v176 = *(*v357 + 2);
          v177 = *(*v357 + 3);
          v178 = *(*v357 + 4);
          v179 = *(*v357 + 5);
          IO80211SkywalkInterface::getInterfaceRole(a5);
          (*(**(*(this + 7) + 48) + 544))();
          (*(*a4 + 328))(a4);
          v12 = v353;
          IOLog("[WiFiTimeSync@] Tx UDPv4 message %s sequence %d to %u.%u.%u.%u @ %02x:%02x:%02x:%02x:%02x:%02x Error set ts=-1 if:%d tsEnabled:%d tsRequested:%d tx_status:%d\n", v345, v334, v323, v311, v301);
        }
      }
    }
  }

LABEL_71:
  result = (*(*a4 + 328))(a4);
  if (result)
  {
    result = AppleBCMWLANBusInterfacePCIe::isTSLoggingEnabled(*(*(this + 7) + 48));
    if (result)
    {
      result = AppleBCMWLANUtil::isPTPPacket(a4, 1, &v358, v357, &v356[1], v356, v355, v59);
      if (result)
      {
        v60 = (*(**(*(this + 7) + 48) + 544))(*(*(this + 7) + 48));
        v354 = 0xAAAAAAAAAAAAAAAALL;
        v61 = -16;
        if (!v358)
        {
          v61 = -4;
        }

        v62 = *v357;
        v63 = (*&v356[1] + v61);
        (*(*a4 + 320))(a4, &v354);
        if (v60)
        {
          v64 = &off_1003CB3E0;
          v65 = 9;
          if (v12)
          {
            if (v358)
            {
              v66 = "unknown";
              while (*(v64 - 2) != v356[0])
              {
                v64 += 2;
                if (!--v65)
                {
                  goto LABEL_106;
                }
              }

              v66 = *v64;
LABEL_106:
              v319 = *v63;
              v93 = v63[1];
              v94 = v63[2];
              v95 = v63[3];
              v96 = v63[12];
              v97 = v63[13];
              v98 = v63[14];
              v99 = v63[15];
              v100 = v62[6];
              v101 = v62[7];
              v102 = v62[8];
              v103 = v62[9];
              v104 = v62[10];
              v105 = v62[11];
              if (*&v356[1])
              {
                v106 = **&v356[1];
                v107 = *(*&v356[1] + 1);
                v108 = *(*&v356[1] + 2);
                v109 = *(*&v356[1] + 3);
                v110 = *(*&v356[1] + 12);
                v111 = *(*&v356[1] + 13);
                v112 = *(*&v356[1] + 14);
                v113 = *(*&v356[1] + 15);
              }

              v243 = *(*v357 + 4);
              v246 = *(*v357 + 5);
              v237 = *(*v357 + 2);
              v240 = *(*v357 + 3);
              v231 = **v357;
              v234 = *(*v357 + 1);
              return IOLog("[WiFiTimeSync!] Tx UDPv6 message %s sequence %d from %02x%02x:%02x%02x_%02x%02x:%02x%02x @ %02x:%02x:%02x:%02x:%02x:%02x to %02x%02x:%02x%02x_%02x%02x:%02x%02x @ %02x:%02x:%02x:%02x:%02x:%02x completed with tx_status %d ts %llu", v66, *v355, v319, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102);
            }

            else
            {
              v92 = "unknown";
              while (*(v64 - 2) != v356[0])
              {
                v64 += 2;
                if (!--v65)
                {
                  goto LABEL_125;
                }
              }

              v92 = *v64;
LABEL_125:
              if (*&v356[1])
              {
                v143 = **&v356[1];
                v144 = *(*&v356[1] + 1);
                v145 = *(*&v356[1] + 2);
                v146 = *(*&v356[1] + 3);
              }

              v225 = *(*v357 + 4);
              v228 = *(*v357 + 5);
              v219 = *(*v357 + 2);
              v222 = *(*v357 + 3);
              v213 = **v357;
              v216 = *(*v357 + 1);
              v207 = v62[10];
              v210 = v62[11];
              v204 = v62[9];
              return IOLog("[WiFiTimeSync!] Tx UDPv4 message %s sequence %d from %u.%u.%u.%u @ %02x:%02x:%02x:%02x:%02x:%02x to %u.%u.%u.%u @ %02x:%02x:%02x:%02x:%02x:%02x completed with tx_status %d ts %llu", v92, *v355, *v63, v63[1], v63[2], v63[3], v62[6], v62[7], v62[8]);
            }
          }

          else if (v358)
          {
            v70 = "unknown";
            while (*(v64 - 2) != v356[0])
            {
              v64 += 2;
              if (!--v65)
              {
                goto LABEL_122;
              }
            }

            v70 = *v64;
LABEL_122:
            v341 = *v63;
            v122 = v63[1];
            v123 = v63[2];
            v124 = v63[3];
            v125 = v63[12];
            v126 = v63[13];
            v127 = v63[14];
            v128 = v63[15];
            v129 = v62[6];
            v130 = v62[7];
            v131 = v62[8];
            v132 = v62[9];
            v133 = v62[10];
            v134 = v62[11];
            if (*&v356[1])
            {
              v135 = **&v356[1];
              v136 = *(*&v356[1] + 1);
              v137 = *(*&v356[1] + 2);
              v138 = *(*&v356[1] + 3);
              v139 = *(*&v356[1] + 12);
              v140 = *(*&v356[1] + 13);
              v141 = *(*&v356[1] + 14);
              v142 = *(*&v356[1] + 15);
            }

            v247 = *(*v357 + 5);
            v241 = *(*v357 + 3);
            v244 = *(*v357 + 4);
            v235 = *(*v357 + 1);
            v238 = *(*v357 + 2);
            v232 = **v357;
            return IOLog("[WiFiTimeSync-] Tx UDPv6 message %s sequence %d from %02x%02x:%02x%02x_%02x%02x:%02x%02x @ %02x:%02x:%02x:%02x:%02x:%02x to %02x%02x:%02x%02x_%02x%02x:%02x%02x @ %02x:%02x:%02x:%02x:%02x:%02x completed. ts %llu", v70, *v355, v341, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131);
          }

          else
          {
            v118 = "unknown";
            while (*(v64 - 2) != v356[0])
            {
              v64 += 2;
              if (!--v65)
              {
                goto LABEL_149;
              }
            }

            v118 = *v64;
LABEL_149:
            if (*&v356[1])
            {
              v159 = **&v356[1];
              v160 = *(*&v356[1] + 1);
              v161 = *(*&v356[1] + 2);
              v162 = *(*&v356[1] + 3);
            }

            v229 = *(*v357 + 5);
            v223 = *(*v357 + 3);
            v226 = *(*v357 + 4);
            v217 = *(*v357 + 1);
            v220 = *(*v357 + 2);
            v214 = **v357;
            v211 = v62[11];
            v205 = v62[9];
            v208 = v62[10];
            return IOLog("[WiFiTimeSync-] Tx UDPv4 message %s sequence %d from %u.%u.%u.%u @ %02x:%02x:%02x:%02x:%02x:%02x to %u.%u.%u.%u @ %02x:%02x:%02x:%02x:%02x:%02x completed. ts %llu", v118, *v355, *v63, v63[1], v63[2], v63[3], v62[6], v62[7], v62[8]);
          }
        }

        else
        {
          v67 = &off_1003CB3E0;
          v68 = 9;
          if (v358)
          {
            v69 = "unknown";
            while (*(v67 - 2) != v356[0])
            {
              v67 += 2;
              if (!--v68)
              {
                goto LABEL_98;
              }
            }

            v69 = *v67;
LABEL_98:
            v330 = *v63;
            v318 = v63[1];
            v72 = v63[2];
            v73 = v63[3];
            v74 = v63[12];
            v75 = v63[13];
            v76 = v63[14];
            v77 = v63[15];
            v78 = v62[6];
            v79 = v62[7];
            v80 = v62[8];
            v81 = v62[9];
            v82 = v62[10];
            v83 = v62[11];
            if (*&v356[1])
            {
              v84 = **&v356[1];
              v85 = *(*&v356[1] + 1);
              v86 = *(*&v356[1] + 2);
              v87 = *(*&v356[1] + 3);
              v88 = *(*&v356[1] + 12);
              v89 = *(*&v356[1] + 13);
              v90 = *(*&v356[1] + 14);
              v91 = *(*&v356[1] + 15);
            }

            v245 = *(*v357 + 5);
            v239 = *(*v357 + 3);
            v242 = *(*v357 + 4);
            v233 = *(*v357 + 1);
            v236 = *(*v357 + 2);
            v230 = **v357;
            return IOLog("[WiFiTimeSync!] Tx UDPv6 message %s sequence %d from %02x%02x:%02x%02x_%02x%02x:%02x%02x @ %02x:%02x:%02x:%02x:%02x:%02x to %02x%02x:%02x%02x_%02x%02x:%02x%02x @ %02x:%02x:%02x:%02x:%02x:%02x , but tsEnabled %d tx_status %d ts %llu", v69, *v355, v330, v318, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81);
          }

          else
          {
            v71 = "unknown";
            while (*(v67 - 2) != v356[0])
            {
              v67 += 2;
              if (!--v68)
              {
                goto LABEL_109;
              }
            }

            v71 = *v67;
LABEL_109:
            if (*&v356[1])
            {
              v114 = **&v356[1];
              v115 = *(*&v356[1] + 1);
              v116 = *(*&v356[1] + 2);
              v117 = *(*&v356[1] + 3);
            }

            v227 = *(*v357 + 5);
            v221 = *(*v357 + 3);
            v224 = *(*v357 + 4);
            v215 = *(*v357 + 1);
            v218 = *(*v357 + 2);
            v212 = **v357;
            v209 = v62[11];
            v206 = v62[10];
            return IOLog("[WiFiTimeSync!] Tx UDPv4 message %s sequence %d from %u.%u.%u.%u @ %02x:%02x:%02x:%02x:%02x:%02x to %u.%u.%u.%u @ %02x:%02x:%02x:%02x:%02x:%02x , but tsEnabled %d tx_status %d ts %llu", v71, *v355, *v63, v63[1], v63[2], v63[3], v62[6], v62[7], v62[8], v62[9]);
          }
        }
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANPCIeSkywalk::collectAdapterStats(AppleBCMWLANPCIeSkywalk *this, char *a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  v10 = *(this + 7);
  if (v10[8])
  {
    v11 = *v10;
    v12 = IO80211Print();
    a5 = (*(**(*(this + 7) + 64) + 184))(*(*(this + 7) + 64), a2, a3, a4, v12 + a5);
    v10 = *(this + 7);
  }

  v13 = *v10;
  v47 = v10[21];
  v14 = IO80211Print() + a5;
  v15 = *(this + 7);
  v16 = *v15;
  v48 = v15[26];
  v52 = v15[27];
  v17 = IO80211Print() + v14;
  v18 = *(this + 7);
  v19 = *v18;
  v49 = v18[28];
  v53 = v18[29];
  v20 = IO80211Print() + v17;
  v21 = **(this + 7);
  v22 = 0;
  v23 = IO80211Print() + v20;
  do
  {
    v24 = *(this + 7);
    if (v24[v22 + 30])
    {
      v25 = *v24;
      v54 = v24[v22 + 30];
      v23 += IO80211Print();
    }

    ++v22;
  }

  while (v22 != 12);
  v26 = *(this + 7);
  v27 = *v26;
  v50 = v26[42];
  v55 = v26[43];
  v28 = IO80211Print() + v23;
  v29 = *(this + 7);
  v30 = *v29;
  v51 = v29[44];
  v56 = v29[45];
  v31 = IO80211Print() + v28;
  v32 = **(this + 7);
  v33 = 0;
  v34 = IO80211Print() + v31;
  do
  {
    v35 = *(this + 7);
    if (v35[v33 + 46])
    {
      v36 = *v35;
      v57 = v35[v33 + 46];
      v34 += IO80211Print();
    }

    ++v33;
  }

  while (v33 != 12);
  v37 = *(this + 7);
  v38 = *v37;
  TxPacketTracker = AppleBCMWLANPCIeSkywalkPacketPool::getTxPacketTracker(v37[7]);
  (*(*TxPacketTracker + 72))(TxPacketTracker);
  RxPacketTracker = AppleBCMWLANPCIeSkywalkPacketPool::getRxPacketTracker(*(*(this + 7) + 56));
  (*(*RxPacketTracker + 72))(RxPacketTracker);
  v41 = IO80211Print() + v34;
  v42 = *(*(this + 7) + 192);
  absolutetime_to_nanoseconds();
  v43 = *(*(this + 7) + 200);
  absolutetime_to_nanoseconds();
  v44 = **(this + 7);
  v45 = IO80211Print();
  return AppleBCMWLANPCIeSkywalkPacketPool::collectPacketPoolStats(*(*(this + 7) + 56), a2, a3, a4, v45 + v41);
}

void AppleBCMWLANPCIeSkywalk::setMonitorMode(AppleBCMWLANPCIeSkywalk *this, OSObject *a2)
{
  v2 = a2;
  if (a2)
  {
    AppleBCMWLANPCIeSkywalk::allocSkywalkMonitorResources(this, a2);
  }

  else
  {
    AppleBCMWLANPCIeSkywalk::freeSkywalkMonitorResources(this);
  }

  *(*(this + 7) + 128) = v2;
}

uint64_t AppleBCMWLANPCIeSkywalk::storePTMTimestamp(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  v5 = *a2 | ((a2[1] & 0xFFFFFFF) << 32);
  nanoseconds_to_absolutetime();
  ContinuousTimeOffset = AppleBCMWLANBusInterfacePCIe::getContinuousTimeOffset(*(*(a1 + 56) + 48));
  (*(*a3 + 528))(a3, 1);
  return (*(*a3 + 544))(a3, ContinuousTimeOffset);
}

uint64_t AppleBCMWLANPCIeSkywalk::rxSubmissionQueueDataAvailable(AppleBCMWLANPCIeSkywalk *this)
{
  v2 = (*(**(*(this + 7) + 48) + 80))(*(*(this + 7) + 48));
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 0x40000000;
  v4[2] = ___ZN23AppleBCMWLANPCIeSkywalk30rxSubmissionQueueDataAvailableEv_block_invoke;
  v4[3] = &__block_descriptor_tmp_131;
  v4[4] = this;
  return (*(*v2 + 112))(v2, v4);
}

uint64_t ___ZN23AppleBCMWLANPCIeSkywalk30rxSubmissionQueueDataAvailableEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  ++*(*(v1 + 56) + 168);
  (*(**(*(v1 + 56) + 64) + 128))(*(*(v1 + 56) + 64), 0, 0);
  return 0;
}

uint64_t AppleBCMWLANPCIeSkywalk::setCommonLogger(AppleBCMWLANPCIeSkywalk *this, OSObject *anObject)
{
  *(*(this + 7) + 8) = OSMetaClassBase::safeMetaCast(anObject, gCCLogStreamMetaClass);
  v3 = *(this + 7);
  v4 = *(v3 + 8);
  v5 = *(**(v3 + 64) + 224);

  return v5();
}

uint64_t non-virtual thunk toAppleBCMWLANPCIeSkywalk::setCommonLogger(AppleBCMWLANPCIeSkywalk *this, OSObject *anObject)
{
  *(*(this + 2) + 8) = OSMetaClassBase::safeMetaCast(anObject, gCCLogStreamMetaClass);
  v3 = *(this + 2);
  v4 = *(v3 + 8);
  v5 = *(**(v3 + 64) + 224);

  return v5();
}

uint64_t *OUTLINED_FUNCTION_0_11@<X0>(uint64_t a1@<X8>)
{
  result = *(a1 + 48);
  v2 = *result;
  return result;
}

void OUTLINED_FUNCTION_6_6(float a1)
{
  *(v1 - 176) = a1;
  *(v1 - 172) = 73;
  *(v1 - 168) = 2080;
}

void OUTLINED_FUNCTION_7_8(float a1)
{
  *(v1 - 176) = a1;
  *(v1 - 172) = 73;
  *(v1 - 168) = 2080;
}

uint64_t *OUTLINED_FUNCTION_12_4@<X0>(uint64_t a1@<X8>)
{
  result = *(a1 + 48);
  v2 = *result;
  return result;
}

OSMetaClassBase *OUTLINED_FUNCTION_18_1()
{
  v3 = *(*(v0 + 56) + 48);
  v4 = *v1;

  return OSMetaClassBase::safeMetaCast(v3, v4);
}

uint64_t OUTLINED_FUNCTION_21_0()
{
  v3 = *(*(v0 + 56) + 56);

  return AppleBCMWLANPCIeSkywalkPacketPool::deallocatePacket(v3, v1);
}

void OUTLINED_FUNCTION_23_3(int a1@<W8>)
{
  *(v3 - 146) = v2;
  *(v3 - 144) = a1;
  *(v3 - 140) = v2;
  *(v3 - 138) = v1;
  *(v3 - 134) = v2;
}

AppleBCMWLANGCRAdapter *AppleBCMWLANGCRAdapter::withDriver(AppleBCMWLANGCRAdapter *this, AppleBCMWLANCore *a2)
{
  v5 = 0xAAAAAAAAAAAAAAAALL;
  if (OSObjectAllocate(gAppleBCMWLANGCRAdapterMetaClass, &v5))
  {
    return 0;
  }

  v3 = v5;
  if (v5 && (AppleBCMWLANGCRAdapter::initWithDriver(v5, this) & 1) == 0)
  {
    (*(*v3 + 16))(v3);
    return 0;
  }

  return v3;
}

uint64_t AppleBCMWLANGCRAdapter::initWithDriver(OSObject *this, AppleBCMWLANCore *a2)
{
  v4 = IOMallocZeroTyped();
  this[1].OSMetaClassBase::__vftable = v4;
  if (v4)
  {
    *(v4 + 8) = a2;
    retain = this[1].retain;
    if (retain)
    {
      this[1].release = AppleBCMWLANCore::getCommander(retain);
      v6 = this[1].OSMetaClassBase::__vftable;
      if (v6->release)
      {
        this[1].isEqualTo = AppleBCMWLANCore::getConfigManager(v6->retain);
        if (this[1].isEqualTo)
        {
          this[1].Dispatch = (*(*a2 + 1952))(a2);
          Dispatch = this[1].Dispatch;
          if (Dispatch)
          {
            (*(*Dispatch + 8))(Dispatch);
            if (OSObject::init(this))
            {
              v8 = this[1].OSMetaClassBase::__vftable;
              WORD2(v8->init) = 0;
              LODWORD(v8->init) = 0;
              LOBYTE(this[1].getMetaClass) = 0;
              BYTE1(this[1].getMetaClass) = 0;
              BYTE2(this[1].getMetaClass) = 0;
              return 1;
            }

            IOLog("AppleBCMWLANGCRAdapter super init failied\n");
          }

          else
          {
            IOLog("AppleBCMWLANGCRAdapter Failed to init fLogger\n");
          }
        }

        else
        {
          IOLog("AppleBCMWLANGCRAdapter configManager is null\n");
        }
      }

      else
      {
        IOLog("AppleBCMWLANGCRAdapter commander is null\n");
      }
    }

    else
    {
      IOLog("AppleBCMWLANGCRAdapter driver is null\n");
    }
  }

  else
  {
    IOLog("Failed to allocate AppleBCMWLANGCRAdapter_IVars\n");
  }

  return 0;
}

void AppleBCMWLANGCRAdapter::free(OSObject *this)
{
  v2 = this[1].OSMetaClassBase::__vftable;
  if (v2)
  {
    Dispatch = v2->Dispatch;
    if (!Dispatch || ((*(*Dispatch + 16))(v2->Dispatch), this[1].Dispatch = 0, (v2 = this[1].OSMetaClassBase::__vftable) != 0))
    {
      IOFree(v2, 0x30uLL);
      this[1].OSMetaClassBase::__vftable = 0;
    }
  }

  OSObject::free(this);
}

uint64_t AppleBCMWLANGCRAdapter::createGCRSession(uint64_t a1, char a2, _DWORD *a3)
{
  v6 = a1 + 40;
  v5 = *(a1 + 40);
  v16 = 0xAAAAAAAAAAAAAAAALL;
  v17 = 0xAAAAAAAAAAAAAAAALL;
  if (*(v5 + 32) && CCLogStream::shouldLog())
  {
    AppleBCMWLANGCRAdapter::createGCRSession(v6);
  }

  v7 = IOMallocZeroData();
  if (!v7)
  {
    return 12;
  }

  *(v7 + 8) = 1;
  *v7 = 0x1C000201018000;
  v8 = a3[5];
  v9 = a3[4] != 0;
  *(v7 + 20) = v9 | (4 * (a3[6] > 1u)) | 2;
  *(v7 + 18) = v8;
  *(v7 + 14) = 0;
  *(v7 + 12) = 1;
  *(v7 + 16) = 0;
  *(v7 + 15) = a2;
  **v6 = v9;
  v11 = a3[9];
  v10 = a3 + 9;
  *(v7 + 28) = *(v10 + 2);
  *(v7 + 24) = v11;
  v12 = (*v6 + 40);
  if (**v6 == 1)
  {
    v13 = *v10;
    *(*v6 + 44) = *(v10 + 2);
    *v12 = v13;
  }

  else
  {
    *(*v6 + 44) = 0;
    *v12 = 0;
  }

  v16 = v7;
  v17 = 36;
  v14 = AppleBCMWLANCommander::runIOVarSet(*(*v6 + 16), "llw", &v16, 0, 0);
  if (v14 && *(*v6 + 32) && CCLogStream::shouldLog())
  {
    AppleBCMWLANGCRAdapter::createGCRSession(v6);
  }

  IOFreeData();
  return v14;
}

uint64_t AppleBCMWLANGCRAdapter::joinGCRSession(uint64_t a1, char a2, uint64_t a3)
{
  v5 = a1 + 40;
  if (*(*(a1 + 40) + 32) && CCLogStream::shouldLog())
  {
    AppleBCMWLANGCRAdapter::joinGCRSession(v5);
  }

  v6 = IOMallocZeroData();
  if (!v6)
  {
    return 12;
  }

  *(v6 + 8) = 1;
  *v6 = 0x1C000201018000;
  v7 = *(a3 + 20);
  v8 = *(a3 + 16) != 0;
  *(v6 + 20) = v8 | (4 * (*(a3 + 24) > 1u)) | 2;
  *(v6 + 18) = v7;
  *(v6 + 14) = 0;
  *(v6 + 12) = 257;
  *(v6 + 16) = 0;
  *(v6 + 15) = a2;
  **v5 = v8;
  v9 = *(a3 + 28);
  *(v6 + 28) = *(a3 + 32);
  *(v6 + 24) = v9;
  LOWORD(v9) = *(a3 + 38);
  *(v6 + 30) = *(a3 + 34);
  *(v6 + 34) = v9;
  v12[0] = v6;
  v12[1] = 36;
  v10 = AppleBCMWLANCommander::runIOVarSet(*(*v5 + 16), "llw", v12, 0, 0);
  if (v10)
  {
    AppleBCMWLANGCRAdapter::joinGCRSession(v5);
  }

  IOFreeData();
  return v10;
}

uint64_t AppleBCMWLANGCRAdapter::configureGCRRate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = IOMallocZeroData();
  if (!v5)
  {
    return 12;
  }

  v6 = v5;
  *(v5 + 8) = 1;
  *v5 = 0x1C000A01018000;
  v7 = *(a3 + 4);
  *(v5 + 12) = v7;
  *(v5 + 14) = v7;
  *(v5 + 20) = 1;
  *(v5 + 16) = 1;
  v8 = *(a3 + 8);
  if (v8 >= 4)
  {
    AppleBCMWLANGCRAdapter::configureGCRRate();
  }

  v9 = *(a3 + 16);
  if (v9 >= 3)
  {
    AppleBCMWLANGCRAdapter::configureGCRRate();
  }

  v10 = *(a3 + 12);
  if (v10 >= 2)
  {
    AppleBCMWLANGCRAdapter::configureGCRRate();
  }

  *(v5 + 16) = (16 * v8) | (v9 << 11) | (v10 << 9) | 1;
  v13 = *(a1 + 40);
  v12 = a1 + 40;
  v11 = v13;
  if (*(v13 + 32))
  {
    shouldLog = CCLogStream::shouldLog();
    v11 = *v12;
    if (shouldLog)
    {
      CCLogStream::logAlert(*(v11 + 32), "[dk] %s@%d:Configuring GCR multicast rate, %x, %x\n", "configureGCRRate", 407, *(v6 + 12), *(v6 + 16));
      v11 = *v12;
    }
  }

  v17[0] = v6;
  v17[1] = 1024;
  v15 = AppleBCMWLANCommander::runIOVarSet(*(v11 + 16), "llw", v17, 0, 0);
  if (v15 && *(*v12 + 32) && CCLogStream::shouldLog())
  {
    AppleBCMWLANGCRAdapter::configureGCRRate(v12);
  }

  IOFreeData();
  return v15;
}

uint64_t AppleBCMWLANGCRAdapter::clearGCRStats(AppleBCMWLANGCRAdapter *this)
{
  v2 = IOMallocZeroData();
  if (!v2)
  {
    return 12;
  }

  v3 = v2;
  *(v2 + 8) = 1;
  *v2 = 0xE000901018000;
  *(v2 + 12) = 1;
  *(v2 + 13) |= 1u;
  v6 = *(this + 5);
  v5 = this + 40;
  v4 = v6;
  if (*(v6 + 32))
  {
    shouldLog = CCLogStream::shouldLog();
    v4 = *v5;
    if (shouldLog)
    {
      CCLogStream::logAlert(*(v4 + 32), "[dk] %s@%d:Clearing GCR link condition stats\n", "clearGCRStats", 454);
      v4 = *v5;
    }
  }

  v10[0] = v3;
  v10[1] = 1024;
  v8 = AppleBCMWLANCommander::runIOVarSet(*(v4 + 16), "llw", v10, 0, 0);
  if (v8 && *(*v5 + 32) && CCLogStream::shouldLog())
  {
    AppleBCMWLANGCRAdapter::clearGCRStats(v5);
  }

  IOFreeData();
  return v8;
}

uint64_t AppleBCMWLANGCRAdapter::getGCRLinkCondition(AppleBCMWLANGCRAdapter *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1 + 40;
  if (*(*(a1 + 5) + 32) && CCLogStream::shouldLog())
  {
    AppleBCMWLANGCRAdapter::getGCRLinkCondition(v5);
  }

  v6 = IOMallocZeroData();
  v7 = IOMallocZeroData();
  v8 = v7;
  *v6 = 0xE000900018000;
  *(v6 + 8) = 1;
  *(v6 + 12) = 1;
  v17[0] = v6;
  v17[1] = 1024;
  v9 = 0x40000000400;
  if (!v7)
  {
    v9 = 0;
  }

  v16[0] = v7;
  v16[1] = v9;
  v10 = AppleBCMWLANCommander::runIOVarGet(*(*v5 + 16), "llw", v17, v16, 0);
  if (v10)
  {
    v14 = v10;
    if (AppleBCMWLANGCRAdapter::getGCRLinkCondition(v5, v8 == 0))
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  v11 = *(v8 + 6);
  v12 = v11 - 16;
  if (v11 == 16)
  {
    AppleBCMWLANGCRAdapter::getGCRLinkCondition(v5, &v18);
  }

  else
  {
    if (*(*v5 + 32) && CCLogStream::shouldLog())
    {
      CCLogStream::logAlert(*(*v5 + 32), "[dk] %s@%d:stats version: %d", "getGCRLinkCondition", 535, *(v8 + 20));
    }

    if (*(v8 + 20))
    {
      if (v12 <= 0x3B)
      {
        if (*(*v5 + 32) && CCLogStream::shouldLog())
        {
          CCLogStream::logAlert(*(*v5 + 32), "[dk] %s@%d:not enough room for gcr stats version 2 %d,%lu\n", "getGCRLinkCondition", 542, v12, 60);
        }

        v14 = 3758096385;
      }

      else
      {
        *(a3 + 12) = *(v8 + 68);
        *(a3 + 16) = *(v8 + 52);
        v13 = *(v8 + 82);
        *(a3 + 20) = v13;
        *(a3 + 22) = *(v8 + 76) & 0xF;
        if (!v13)
        {
          *(a3 + 20) = *(*v5 + 1);
        }

        if (*(*v5 + 32) && CCLogStream::shouldLog())
        {
          CCLogStream::logAlert(*(*v5 + 32), "[dk] %s@%d:Got GCR link condition stats rxmpdu:%u, rxholes:%u txPackets:%u, rxPackets: %u snr:%u mcs %u\n", "getGCRLinkCondition", 555, *(v8 + 72), *(v8 + 64), *(a3 + 12), *(a3 + 16), *(a3 + 20), *(a3 + 22));
        }

        AppleBCMWLANGCRAdapter::clearGCRStats(a1);
        v14 = 0;
      }

      goto LABEL_19;
    }

    AppleBCMWLANGCRAdapter::getGCRLinkCondition(v5, v8 + 20, &v18);
  }

  v14 = v18;
LABEL_19:
  IOFreeData();
LABEL_20:
  IOFreeData();
  return v14;
}

uint64_t *OUTLINED_FUNCTION_0_12(uint64_t a1)
{
  v1 = *(*a1 + 32);
  result = *(*a1 + 8);
  v3 = *result;
  return result;
}

OSObject *AppleBCMWLANPCIeSkywalkFlowQueue::withProviderAndQueueInfo(AppleBCMWLANBusInterfacePCIe *a1, uint64_t a2, unsigned __int8 a3, IO80211SkywalkInterface *a4, BOOL (__cdecl *a5)(OSObject *__hidden this), void (__cdecl *a6)(OSObject *__hidden this))
{
  v14 = 0xAAAAAAAAAAAAAAAALL;
  if (OSObjectAllocate(gAppleBCMWLANPCIeSkywalkFlowQueueMetaClass, &v14))
  {
    return 0;
  }

  v12 = v14;
  if (v14 && (AppleBCMWLANPCIeSkywalkFlowQueue::initWithProviderAndQueueInfo(v14, a1, a2 & 0xFFFFFFFFFFFFLL, a3, a4, a5, a6) & 1) == 0)
  {
    (v12->release)(v12);
    return 0;
  }

  return v12;
}

void AppleBCMWLANPCIeSkywalkFlowQueue::free(AppleBCMWLANPCIeSkywalkFlowQueue *this)
{
  if (*(this + 5))
  {
    AppleBCMWLANPCIeSkywalkFlowQueue::setFWRing(this, 0);
    v2 = *(this + 5);
    if (*(v2 + 40))
    {
      shouldLog = CCLogStream::shouldLog();
      v2 = *(this + 5);
      if (shouldLog)
      {
        v6 = *(v2 + 40);
        InterfaceId = IO80211SkywalkInterface::getInterfaceId(*(v2 + 64));
        CCLogStream::logInfo(v6, "[dk] %s@%d:%s: flowQ %p IfID:%u", "free", 125, "free", this, InterfaceId);
        v2 = *(this + 5);
      }
    }

    v4 = *(v2 + 40);
    if (v4)
    {
      (*(*v4 + 16))(v4);
      *(*(this + 5) + 40) = 0;
      v2 = *(this + 5);
    }

    *(v2 + 80) = 0u;
    *(v2 + 96) = 0u;
    *(v2 + 48) = 0u;
    *(v2 + 64) = 0u;
    *(v2 + 16) = 0u;
    *(v2 + 32) = 0u;
    *v2 = 0u;
    v5 = *(this + 5);
    if (v5)
    {
      IOFree(v5, 0x70uLL);
      *(this + 5) = 0;
    }
  }

  OSObject::free(this);
}

uint64_t AppleBCMWLANPCIeSkywalkFlowQueue::setFWRing(AppleBCMWLANPCIeSkywalkFlowQueue *this, AppleBCMWLANPCIeTransmitFlowRing *a2)
{
  if (a2)
  {
    v4 = *(this + 5);
    if (*(v4 + 40))
    {
      shouldLog = CCLogStream::shouldLog();
      v4 = *(this + 5);
      if (shouldLog)
      {
        CCLogStream::logInfo(*(v4 + 40), "[dk] %s@%d:Set flowid:%u\n", "setFWRing", 257, *(v4 + 96));
        v4 = *(this + 5);
      }
    }

    *(v4 + 72) = a2;
    v6 = *(*a2 + 8);

    return v6(a2);
  }

  else
  {
    AppleBCMWLANPCIeSkywalkFlowQueue::flushPackets(this);
    v8 = *(this + 5);
    if (*(v8 + 96) != -1)
    {
      if (*(v8 + 40))
      {
        v9 = CCLogStream::shouldLog();
        v8 = *(this + 5);
        if (v9)
        {
          CCLogStream::logInfo(*(v8 + 40), "[dk] %s@%d:Free flowid:%u\n", "setFWRing", 266, *(v8 + 96));
          v8 = *(this + 5);
        }
      }

      AppleBCMWLANBusInterfacePCIe::releaseFlowId(*(v8 + 56), *(v8 + 96));
      *(*(this + 5) + 96) = -1;
      v8 = *(this + 5);
    }

    result = *(v8 + 72);
    if (result)
    {
      result = (*(*result + 16))(result);
      *(*(this + 5) + 72) = 0;
    }
  }

  return result;
}

void *AppleBCMWLANPCIeSkywalkFlowQueue::enqueuePacket(AppleBCMWLANPCIeSkywalkFlowQueue *this, AppleBCMWLANPCIeSkywalkPacket *a2, int a3)
{
  v4 = (this + 40);
  v5 = *(this + 5);
  if (*(v5 + 96) != -1 || a3 == 0)
  {
LABEL_75:
    result = AppleBCMWLANPCIeSkywalkPacket::getChain(a2);
    v32 = *(v5 + 16);
    if (*v32 == v5 + 8)
    {
      *result = v5 + 8;
      result[1] = v32;
      *v32 = result;
      *(v5 + 16) = result;
      result = AppleBCMWLANPCIeSkywalkPacket::setAc(a2, *(*v4 + 89));
      ++*(*v4 + 24);
    }

    else
    {
      __break(1u);
    }

    return result;
  }

  v33 = 0;
  v8 = *(v5 + 89);
  v9 = *(v5 + 56);
  if (v9)
  {
    v10 = (*(*v9 + 1104))(v9);
    v11 = v10;
    v12 = v10 != 0;
    if (v8 == 3 && v10 != 0)
    {
      if ((AppleBCMWLANCore::checkForHP2PSupport(v10) & 1) == 0)
      {
        if (AppleBCMWLANCore::isP2pAirplayActive(v11) && AppleBCMWLANCore::mapLowLatencyLowPriority(v11) && (InterfaceId = IO80211SkywalkInterface::getInterfaceId(*(*v4 + 64)), InterfaceId == AppleBCMWLANCore::getProximityInterfaceId(v11)))
        {
          v14 = 5;
        }

        else if (IO80211SkywalkInterface::isLowLatencyEnabled(*(*v4 + 64)))
        {
          v14 = 7;
        }

        else
        {
          v14 = 6;
        }

        goto LABEL_43;
      }

      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
    v11 = 0;
  }

  if (IO80211SkywalkInterface::isLowLatencyEnabled(*(*v4 + 64)))
  {
    if (v8 == 1)
    {
      v14 = 2;
      if (!v12)
      {
        goto LABEL_41;
      }

      goto LABEL_43;
    }

    if (v8 != 2)
    {
      if (v8 == 3)
      {
        v14 = 7;
        if (v12)
        {
          goto LABEL_43;
        }

LABEL_41:
        v16 = 0;
        goto LABEL_50;
      }

      v14 = 3;
      if (!v12)
      {
        goto LABEL_41;
      }

      goto LABEL_43;
    }

    v14 = 4;
LABEL_32:
    if (!v12)
    {
      goto LABEL_41;
    }

    goto LABEL_43;
  }

  if (v8 == 1)
  {
    v14 = 1;
    if (!v12)
    {
      goto LABEL_41;
    }

    goto LABEL_43;
  }

  if (v8 == 2)
  {
    v14 = 5;
    goto LABEL_32;
  }

  if (v8 != 3)
  {
    v14 = 0;
    if (v12)
    {
      goto LABEL_43;
    }

    goto LABEL_41;
  }

  v14 = 6;
  if (!v12)
  {
    goto LABEL_41;
  }

LABEL_43:
  v17 = *v4;
  if (*(*v4 + 40))
  {
    v18 = *(*v4 + 40);
    shouldLog = CCLogStream::shouldLog();
    v17 = *v4;
    if (shouldLog)
    {
      AppleBCMWLANPCIeSkywalkFlowQueue::enqueuePacket(v17, v11, v4, &v34);
      v17 = v34;
    }
  }

  if (*(v17 + 40) && CCLogStream::shouldLog())
  {
    AppleBCMWLANPCIeSkywalkFlowQueue::enqueuePacket(v4, v11, v14, v8);
  }

  v16 = 1;
LABEL_50:
  isLowLatencyEnabled = IO80211SkywalkInterface::isLowLatencyEnabled(*(*v4 + 64));
  v21 = isLowLatencyEnabled;
  if (v16 && isLowLatencyEnabled)
  {
    if (AppleBCMWLANCore::isSplitTxStatusEnabled(v11))
    {
      v21 = 3;
    }

    else
    {
      v21 = 1;
    }
  }

  v22 = IO80211SkywalkInterface::getInterfaceId(*(*v4 + 64));
  if (IO80211SkywalkInterface::isLowLatencyEnabled(*(*v4 + 64)))
  {
    ParentInterface = IO80211SkywalkInterface::getParentInterface(*(*v4 + 64));
    if (!ParentInterface)
    {
      v24 = *v4;
      if (*(*v4 + 40))
      {
        v30 = CCLogStream::shouldLog();
        v24 = *v4;
        if (v30)
        {
          CCLogStream::logAlert(*(v24 + 40), "[dk] %s@%d:Invalid parentIf\n", "enqueuePacket", 193);
          v24 = *v4;
        }
      }

      goto LABEL_68;
    }

    v22 = IO80211SkywalkInterface::getInterfaceId(ParentInterface);
  }

  v24 = *v4;
  if (v22 != -1)
  {
    v25 = *(v24 + 56);
    v26 = (*(**(v24 + 64) + 1072))(*(v24 + 64));
    AppleBCMWLANBusInterfacePCIe::requestFlowId(v25, v26 & 0xFFFFFFFFFFFFLL, **(this + 5) | (*(*(this + 5) + 4) << 32), v22, v14, v8, (*(this + 5) + 96), &v33, 0, this, AppleBCMWLANPCIeSkywalkFlowQueue::fwRingPending, AppleBCMWLANPCIeSkywalkFlowQueue::fwRingFill, AppleBCMWLANPCIeSkywalkFlowQueue::fwRingError, v21);
    v27 = *(this + 5);
    v28 = *(v27 + 96);
    if (v28 == 0xFFFF)
    {
      if (*(v27 + 40) && CCLogStream::shouldLog())
      {
        AppleBCMWLANPCIeSkywalkFlowQueue::enqueuePacket(v4);
      }
    }

    else
    {
      TransmitFlowRing = AppleBCMWLANBusInterfacePCIe::getTransmitFlowRing(*(v27 + 56), v28);
      if (TransmitFlowRing)
      {
        AppleBCMWLANPCIeTransmitFlowRing::setSkywalkFlow(TransmitFlowRing, 1);
      }

      else if (*(*v4 + 40) && CCLogStream::shouldLog())
      {
        AppleBCMWLANPCIeSkywalkFlowQueue::enqueuePacket(v4);
      }
    }

    v5 = *v4;
    goto LABEL_75;
  }

LABEL_68:
  result = *(v24 + 40);
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      return AppleBCMWLANPCIeSkywalkFlowQueue::enqueuePacket(v4);
    }
  }

  return result;
}

uint64_t AppleBCMWLANPCIeSkywalkFlowQueue::fwRingPending(AppleBCMWLANPCIeSkywalkFlowQueue *this)
{
  v1 = *(this + 5);
  if (v1)
  {
    return *(v1 + 24);
  }

  else
  {
    return 0;
  }
}

uint64_t AppleBCMWLANPCIeSkywalkFlowQueue::fwRingFill(AppleBCMWLANPCIeSkywalkFlowQueue *this, AppleBCMWLANByteRing *a2, char *a3, unsigned int a4)
{
  v8 = this + 40;
  TxPacketTracker = AppleBCMWLANPCIeSkywalkPacketPool::getTxPacketTracker(*(*(this + 5) + 80));
  InterfaceId = IO80211SkywalkInterface::getInterfaceId(*(*v8 + 64));
  v106 = (*(**(*v8 + 64) + 1184))();
  isLowLatencyEnabled = IO80211SkywalkInterface::isLowLatencyEnabled(*(*v8 + 64));
  v10 = *v8;
  v12 = **v8 != -1 || *(*v8 + 4) != 0xFFFF;
  v13 = *(v10 + 72);
  if (v13)
  {
    v14 = v13 == a2;
  }

  else
  {
    v14 = 0;
  }

  if (!v14)
  {
    if (*(v10 + 40) && CCLogStream::shouldLog())
    {
      CCLogStream::logInfo(*(*v8 + 40), "[dk] %s@%d:Invalid fFWRing/ring ivars->fFWRing:%p ring:%p\n", "fwRingFill", 348, *(*v8 + 72), a2);
    }

    return 0;
  }

  if (IO80211SkywalkInterface::isLowLatencyEnabled(*(v10 + 64)))
  {
    ParentInterface = IO80211SkywalkInterface::getParentInterface(*(*v8 + 64));
    if (ParentInterface)
    {
      InterfaceId = IO80211SkywalkInterface::getInterfaceId(ParentInterface);
    }

    else
    {
      if (*(*v8 + 40) && CCLogStream::shouldLog())
      {
        AppleBCMWLANPCIeSkywalkFlowQueue::fwRingFill(v8);
      }

      InterfaceId = -1;
    }
  }

  v115 = -21846;
  memset(&v114[1], 170, 24);
  v95 = v12;
  if (a4)
  {
    v15 = 0;
    v17 = isLowLatencyEnabled;
    if (v12)
    {
      v17 = 0;
    }

    v107 = v17;
    v104 = TxPacketTracker;
    v105 = a3;
    while (1)
    {
      v18 = AppleBCMWLANPCIeSkywalkFlowQueue::dequeuePacket(this);
      if (!v18)
      {
        goto LABEL_101;
      }

      v19 = v18;
      v20 = (v18->getDataLength)(v18);
      if (v20 <= 0xE)
      {
        break;
      }

      v24 = &a3[48 * v15];
      *(v24 + 1) = 0u;
      *(v24 + 2) = 0u;
      *v24 = 0u;
      if (isLowLatencyEnabled && AppleBCMWLANBusInterfacePCIe::isFWPacketTimestampEnabled(*(*v8 + 56)))
      {
        mach_continuous_time();
        absolutetime_to_nanoseconds();
        *(v24 + 6) = *&v114[17] / 0x3E8uLL;
        v24[47] = -1;
        if ((v19->OSObject::OSMetaClassBase::__vftable[1]._PrepareWithQueue)(v19, &v114[9]))
        {
          AppleBCMWLANPCIeSkywalkPacket::setPktLifetime(v19, -1);
        }

        else
        {
          if (*&v114[9] <= mach_absolute_time())
          {
            v22 = *v8;
            if (*(*v8 + 40))
            {
              shouldLog = CCLogStream::shouldLog();
              v22 = *v8;
              if (shouldLog)
              {
                CCLogStream::logAlertIf(*(v22 + 40), 0x400uLL, "[dk] %s@%d:Got an expired packet. Deallocating\n", "fwRingFill", 393);
                goto LABEL_94;
              }
            }

LABEL_30:
            AppleBCMWLANPCIeSkywalkPacketPool::deallocatePacket(*(v22 + 80), v19);
            goto LABEL_91;
          }

          absolutetime_to_nanoseconds();
          v45 = *&v114[1];
          *&v114[1] /= 0x3E8uLL;
          v46 = v45 / 0xF4240;
          if (v46 >= 0x7FFFuLL)
          {
            LOWORD(v46) = 0x7FFF;
          }

          AppleBCMWLANPCIeSkywalkPacket::setPktLifetime(v19, v46);
          v47 = *&v114[1];
          if (*&v114[1] > 0xF4240uLL)
          {
            AppleBCMWLANPCIeSkywalkPacket::setPktLifetime(v19, -2);
            if (*(*v8 + 40) && CCLogStream::shouldLog())
            {
              CCLogStream::logAlert(*(*v8 + 40), "[dk] %s@%d:com.apple.p2p: Got an packet with lifetime more than a second: lifetime:%llu msg[fillCount].lifetime_250us: %d, scale=%d\n", "fwRingFill", 413, *&v114[1], v24[47], v24[45] & 7);
            }
          }

          else
          {
            v48 = *&v114[1] / 0xFAuLL;
            *&v114[1] = v48;
            v49 = v24[45] & 0xF8;
            if (v47 >> 9 >= 0x7D)
            {
              do
              {
                v50 = v48;
                v48 >>= 1;
                v49 = v49 & 0xF8 | (v49 + 1) & 7;
              }

              while (v50 > 0x1FF);
              *&v114[1] = v48;
            }

            v24[45] = v49;
            v24[47] = v48;
          }
        }
      }

      *v24 = 15;
      v24[1] = InterfaceId;
      if ((*(**(*v8 + 72) + 248))(*(*v8 + 72)))
      {
        v25 = -127;
      }

      else
      {
        v25 = 1;
      }

      v24[2] = v25;
      v24[22] = 0;
      v24[22] |= (32 * (*(**(*v8 + 72) + 344))()) | 1;
      v24[23] = 1;
      v24[44] = 0;
      v115 = -1;
      if (AppleBCMWLANHashtable::add(TxPacketTracker, v19, &v115))
      {
        if (*(*v8 + 40) && CCLogStream::shouldLog())
        {
          AppleBCMWLANPCIeSkywalkFlowQueue::fwRingFill(v8);
        }

        AppleBCMWLANPCIeSkywalkFlowQueue::enqueuePacket(this, v19, 1);
        return v15;
      }

      AppleBCMWLANPCIeSkywalkPacket::setPacketId(v19, v115);
      Headroom = IO80211NetworkPacket::getHeadroom(v19);
      v27 = (v19->OSObject::OSMetaClassBase::__vftable[1].getDataLength)(v19) + Headroom;
      if (v107)
      {
        v28 = v27 - v106;
        Headroom -= v106;
        v29 = *v27;
        v30 = *(v27 + 8);
        *(v28 + 12) = *(v27 + 12);
        *(v28 + 8) = v30;
        *v28 = v29;
        *(v28 + 14) = 0x8F2170003AAAALL;
        *(v28 + 20) = 0xDEADBEEF04030008;
        *(v28 + 12) = bswap32((v19->getDataLength)(v19) + 14) >> 16;
        (v19->setDataLength)(v19);
        v27 = v28;
      }

      v31 = *v27;
      v32 = *(v27 + 8);
      *(v24 + 10) = *(v27 + 12);
      *(v24 + 4) = v32;
      *(v24 + 1) = v31;
      v33 = AppleBCMWLANPCIeSkywalkPacket::getBusAddress(v19) + Headroom + 14;
      *(v24 + 21) = (v19->getDataLength)(v19) - 14;
      *(v24 + 4) = v33;
      *(v24 + 2) = v115;
      *(v24 + 3) = (*(**(*v8 + 72) + 296))();
      if ((v19->OSObject::OSMetaClassBase::__vftable[1].Dispatch)(v19) == 4718992 && AppleBCMWLANPCIeSkywalkPacket::getAc(v19) == 3)
      {
        if ((*(**(*v8 + 64) + 728))(*(*v8 + 64)))
        {
          v34 = (*(**(*v8 + 64) + 728))(*(*v8 + 64));
          if (AppleBCMWLANCore::getReliableL3CtrlTxProfileActive(v34))
          {
            v24[46] = 0x80;
          }
        }
      }

      v35 = (v19->OSObject::OSMetaClassBase::__vftable[1]._SetPacketIndex)(v19);
      v36 = *v8;
      if ((v35 & 1) != 0 || *(v36 + 98) == 1)
      {
        if (*(v36 + 104) == 3)
        {
          HostSWTimestamp = AppleBCMWLANBusInterfacePCIe::readHostSWTimestamp(*(v36 + 56), "fwRingFill");
          (v19->OSObject::OSMetaClassBase::__vftable[1].free)(v19, HostSWTimestamp);
          v36 = *v8;
        }

        if ((*(v36 + 100) & 1) == 0)
        {
          v24[44] |= *(v36 + 101);
          if ((*(*v8 + 101) & 4) != 0)
          {
            v24[46] = 0;
          }
        }
      }

      if ((v19->OSObject::OSMetaClassBase::__vftable[1]._SetPacketIndex)(v19))
      {
        if (*(*v8 + 99) == 1)
        {
          v114[0] = 0;
          *v113 = 0;
          memset(v112, 0, sizeof(v112));
          *v111 = 0;
          if (AppleBCMWLANUtil::isPTPPacket(v19, 1, v114, v113, &v112[1], v112, v111, v38))
          {
            v39 = *v113;
            v40 = -16;
            if (!v114[0])
            {
              v40 = -4;
            }

            v41 = (*&v112[1] + v40);
            v110 = 0;
            (v19->OSObject::OSMetaClassBase::__vftable[1]._GetPacketIndex)(v19, &v110);
            if (v114[0])
            {
              v42 = &off_1003CB540;
              v43 = 9;
              while (*(v42 - 2) != v112[0])
              {
                v42 += 2;
                if (!--v43)
                {
                  v44 = "unknown";
                  goto LABEL_79;
                }
              }

              v44 = *v42;
LABEL_79:
              v103 = v44;
              v102 = *v41;
              v101 = v41[1];
              v100 = v41[2];
              v99 = v41[3];
              v98 = v41[12];
              v97 = v41[13];
              v96 = v41[14];
              v55 = v41[15];
              v56 = v39[10];
              v57 = v39[11];
              if (*&v112[1])
              {
                v58 = **&v112[1];
                v59 = *(*&v112[1] + 1);
                v60 = *(*&v112[1] + 2);
                v61 = *(*&v112[1] + 3);
                v62 = *(*&v112[1] + 12);
                v63 = *(*&v112[1] + 13);
                v64 = *(*&v112[1] + 14);
                v65 = *(*&v112[1] + 15);
              }

              v94 = *(*v8 + 101);
              v92 = *(*v113 + 5);
              v93 = *(*v8 + 100);
              v90 = *(*v113 + 3);
              v91 = *(*v113 + 4);
              v88 = *(*v113 + 1);
              v89 = *(*v113 + 2);
              v87 = **v113;
              IOLog("[WiFiTimeSync+] Tx UDPv6 message %s sequence %d from %02x%02x:%02x%02x_%02x%02x:%02x%02x @ %02x:%02x:%02x:%02x:%02x:%02x to %02x%02x:%02x%02x_%02x%02x:%02x%02x @ %02x:%02x:%02x:%02x:%02x:%02x submitted. fIgnore %d extendedFlags 0x%x ts %llu", v103, *v111, v102, v101, v100, v99, v98, v97, v96, v55, v39[6], v39[7], v39[8], v39[9]);
            }

            else
            {
              v52 = &off_1003CB540;
              v53 = 9;
              while (*(v52 - 2) != v112[0])
              {
                v52 += 2;
                if (!--v53)
                {
                  v54 = "unknown";
                  goto LABEL_86;
                }
              }

              v54 = *v52;
LABEL_86:
              v66 = v39[10];
              v67 = v39[11];
              if (*&v112[1])
              {
                v68 = **&v112[1];
                v69 = *(*&v112[1] + 1);
                v70 = *(*&v112[1] + 2);
                v71 = *(*&v112[1] + 3);
              }

              v72 = **v113;
              v73 = *(*v113 + 5);
              v86 = *(*v8 + 101);
              v85 = *(*v8 + 100);
              v83 = *(*v113 + 3);
              v84 = *(*v113 + 4);
              v81 = *(*v113 + 1);
              v82 = *(*v113 + 2);
              IOLog("[WiFiTimeSync+] Tx UDPv4 message %s sequence %d from %u.%u.%u.%u @ %02x:%02x:%02x:%02x:%02x:%02x to %u.%u.%u.%u @ %02x:%02x:%02x:%02x:%02x:%02x submitted. fIgnore %d extendedFlags 0x%x ts %llu", v54, *v111, *v41, v41[1], v41[2], v41[3], v39[6], v39[7], v39[8], v39[9]);
            }

            TxPacketTracker = v104;
            a3 = v105;
          }
        }
      }

      v15 = (v15 + 1);
LABEL_91:
      if (v15 >= a4)
      {
        goto LABEL_101;
      }
    }

    v21 = v20;
    v22 = *v8;
    if (*(*v8 + 40))
    {
      v23 = CCLogStream::shouldLog();
      v22 = *v8;
      if (v23)
      {
        v74 = *(v22 + 40);
        v75 = (*(**(v22 + 64) + 160))(*(v22 + 64));
        CCLogStream::logAlert(v74, "[dk] %s@%d:Got packet of invalid length %d on %s. Deallocating\n", "fwRingFill", 376, v21, v75);
LABEL_94:
        v22 = *v8;
      }
    }

    goto LABEL_30;
  }

  v15 = 0;
LABEL_101:
  AppleBCMWLANBusInterfacePCIe::updateActiveTxPacketCount(*(*(this + 5) + 56), v15);
  RingFreeSpace = AppleBCMWLANPCIeSkywalkFlowQueue::getRingFreeSpace(this);
  if (!v95)
  {
    v78 = RingFreeSpace;
    v79 = (*(**(*v8 + 64) + 1160))(*(*v8 + 64));
    if (v79 && v78 != 0)
    {
      (*(*v79 + 120))(v79);
    }
  }

  return v15;
}

uint64_t AppleBCMWLANPCIeSkywalkFlowQueue::fwRingError(AppleBCMWLANPCIeSkywalkFlowQueue *this, AppleBCMWLANByteRing *a2, int a3, void *a4)
{
  v4 = (this + 40);
  result = *(*(this + 5) + 40);
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      return AppleBCMWLANPCIeSkywalkFlowQueue::fwRingError(v4);
    }
  }

  return result;
}

void *AppleBCMWLANPCIeSkywalkFlowQueue::dequeuePacket(AppleBCMWLANPCIeSkywalkFlowQueue *this)
{
  v1 = *(this + 5);
  if (v1 + 8 == *(v1 + 8))
  {
    *(v1 + 24) = 0;
    return 0;
  }

  else
  {
    --*(v1 + 24);
    v2 = *(this + 5);
    v5 = *(v2 + 8);
    v4 = (v2 + 8);
    result = v5;
    if (v5 == v4)
    {
      return AppleBCMWLANPCIeSkywalkPacket::fromChain(0);
    }

    else if (*result[1] == result && (v6 = *result, *(*result + 8) == result))
    {
      *(v6 + 8) = v4;
      *v4 = v6;
      *result = 0;
      result[1] = 0;
      return AppleBCMWLANPCIeSkywalkPacket::fromChain(result);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

IOUserNetworkPacket *AppleBCMWLANPCIeSkywalkFlowQueue::flushPackets(AppleBCMWLANPCIeSkywalkFlowQueue *this)
{
  result = AppleBCMWLANPCIeSkywalkFlowQueue::dequeuePacket(this);
  if (result)
  {
    v3 = result;
    do
    {
      AppleBCMWLANPCIeSkywalkPacketPool::deallocatePacket(*(*(this + 5) + 80), v3);
      result = AppleBCMWLANPCIeSkywalkFlowQueue::dequeuePacket(this);
      v3 = result;
    }

    while (result);
  }

  return result;
}

uint64_t AppleBCMWLANPCIeSkywalkFlowQueue::requestPendingPackets(AppleBCMWLANPCIeSkywalkFlowQueue *this)
{
  v1 = *(this + 5);
  result = *(v1 + 72);
  if (result)
  {
    return (*(*result + 192))(result, *(v1 + 24), 1);
  }

  return result;
}

IO80211WorkSource *AppleBCMWLANPCIeSkywalkFlowQueue::collectQueueStats(uint64_t a1, uint64_t a2)
{
  result = *(*(a1 + 40) + 72);
  if (result)
  {
    *(a2 + 28) = IO80211WorkSource::isEnabled(result);
    *(a2 + 27) = 1;
    *(a2 + 24) = (*(**(*(a1 + 40) + 72) + 208))(*(*(a1 + 40) + 72));
    *(a2 + 32) = AppleBCMWLANItemRing::getReadableItemCount(*(*(a1 + 40) + 72));
    result = AppleBCMWLANItemRing::getWritableItemCount(*(*(a1 + 40) + 72));
    *(a2 + 36) = result;
  }

  else
  {
    *(a2 + 27) = 0;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_13(unsigned __int8 **a1)
{
  v1 = *a1;
  result = *(*a1 + 5);
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  return result;
}

AppleBCMWLANPCIeSkywalkMulticastQueue *AppleBCMWLANPCIeSkywalkMulticastQueue::withProviderAndQueueInfo(AppleBCMWLANPCIeSkywalkMulticastQueue *this, AppleBCMWLANBusInterfacePCIe *a2, IO80211SkywalkInterface *a3, CCLogStream *a4, CCFaultReporter *a5)
{
  v11 = 0xAAAAAAAAAAAAAAAALL;
  if (OSObjectAllocate(gAppleBCMWLANPCIeSkywalkMulticastQueueMetaClass, &v11))
  {
    return 0;
  }

  v9 = v11;
  if (v11 && (AppleBCMWLANPCIeSkywalkMulticastQueue::initWithProviderAndQueueInfo(v11, this, a2, a3, a4) & 1) == 0)
  {
    (*(*v9 + 16))(v9);
    return 0;
  }

  return v9;
}

uint64_t AppleBCMWLANPCIeSkywalkMulticastQueue::free(AppleBCMWLANPCIeSkywalkMulticastQueue *this)
{
  if ((*(*this + 136))(this))
  {
    (*(*this + 136))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANPCIeSkywalkMulticastQueue::free(this);
    }
  }

  AppleBCMWLANPCIeSkywalkFlowQueue::setFWRing(*(*(this + 9) + 8), 0);
  v2 = *(this + 9);
  if (v2)
  {
    (*(**(v2 + 8) + 16))(*(v2 + 8));
    *(*(this + 9) + 8) = 0;
    v3 = *(this + 9);
    if (*v3)
    {
      (*(**v3 + 16))(*v3);
      **(this + 9) = 0;
      v3 = *(this + 9);
    }

    *v3 = 0;
    v3[1] = 0;
    v4 = *(this + 9);
    if (v4)
    {
      IOFree(v4, 0x10uLL);
      *(this + 9) = 0;
    }
  }

  return AppleBCMWLANSkywalkMulticastQueue::free(this);
}

uint64_t AppleBCMWLANPCIeSkywalkMulticastQueue::checkForWork(AppleBCMWLANPCIeSkywalkMulticastQueue *this)
{
  if (AppleBCMWLANPCIeSkywalkFlowQueue::getFlowId(*(*(this + 9) + 8)) != 0xFFFF)
  {
    if (AppleBCMWLANPCIeSkywalkFlowQueue::getPacketCount(*(*(this + 9) + 8)))
    {
      if (AppleBCMWLANPCIeSkywalkFlowQueue::getRingFreeSpace(*(*(this + 9) + 8)))
      {
        AppleBCMWLANPCIeSkywalkFlowQueue::requestPendingPackets(*(*(this + 9) + 8));
        if (AppleBCMWLANPCIeSkywalkFlowQueue::getPacketCount(*(*(this + 9) + 8)))
        {
          if (AppleBCMWLANPCIeSkywalkFlowQueue::getRingFreeSpace(*(*(this + 9) + 8)))
          {
            IO80211WorkSource::signalWorkAvailable(this);
          }
        }
      }
    }
  }

  return 0;
}

IO80211WorkSource *AppleBCMWLANPCIeSkywalkMulticastQueue::collectQueueStats(IO80211WorkSource *a1, uint64_t a2)
{
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  *(a2 + 5) = IO80211WorkSource::isEnabled(a1);
  v4 = *(*(a1 + 9) + 8);

  return AppleBCMWLANPCIeSkywalkFlowQueue::collectQueueStats(v4, a2);
}

IO80211WorkSource *non-virtual thunk toAppleBCMWLANPCIeSkywalkMulticastQueue::collectQueueStats(uint64_t a1, uint64_t a2)
{
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  *(a2 + 5) = IO80211WorkSource::isEnabled((a1 - 56));
  v4 = *(*(a1 + 16) + 8);

  return AppleBCMWLANPCIeSkywalkFlowQueue::collectQueueStats(v4, a2);
}

uint64_t AppleBCMWLANPCIeSkywalkMulticastQueue::clearFlowIdInFlowQ(AppleBCMWLANPCIeSkywalkMulticastQueue *this, int a2)
{
  result = AppleBCMWLANPCIeSkywalkFlowQueue::getFlowId(*(*(this + 9) + 8));
  if (result == a2)
  {
    v5 = *(*(this + 9) + 8);

    return AppleBCMWLANPCIeSkywalkFlowQueue::clearFlowId(v5);
  }

  return result;
}

OSObject *AppleBCMWLANPCIeSkywalkRxCompletionQueue::withProviderAndQueueInfoAndPool(AppleBCMWLANPCIeSkywalkRxCompletionQueue *this, OSObject *a2, OSObject *a3, unsigned int a4, unsigned int a5, IOUserNetworkPacketBufferPool *a6, AppleBCMWLANPCIeSkywalkPacketPool *a7, CCLogStream *a8, CCFaultReporter *a9)
{
  v14 = a3;
  pObject = 0xAAAAAAAAAAAAAAAALL;
  if (OSObjectAllocate(gAppleBCMWLANPCIeSkywalkRxCompletionQueueMetaClass, &pObject))
  {
    return 0;
  }

  v17 = pObject;
  if (pObject && (AppleBCMWLANPCIeSkywalkRxCompletionQueue::initProviderAndPoolAndQueueInfo(pObject, this, a2, a6, v14, a4, a5, a7, a8) & 1) == 0)
  {
    (v17->release)(v17);
    return 0;
  }

  return v17;
}

uint64_t AppleBCMWLANPCIeSkywalkRxCompletionQueue::initProviderAndPoolAndQueueInfo(IOUserNetworkRxCompletionQueue *this, AppleBCMWLANBusInterfacePCIe *a2, OSObject *a3, IOUserNetworkPacketBufferPool *a4, unsigned __int16 a5, unsigned int a6, unsigned int a7, CCLogStream *a8, CCFaultReporter *a9)
{
  v17 = IOMallocZeroTyped();
  this[1].IOUserNetworkPacketQueue::OSObject::OSObjectInterface::__vftable = v17;
  if (v17)
  {
    v18 = (*(*a2 + 80))(a2);
    result = AppleBCMWLANSkywalkRxCompletionQueue::initWithPoolAndQueueInfo(this, a3, a4, a5, a6, a7, v18);
    if (result)
    {
      this[1].IOUserNetworkPacketQueue::OSObject::OSObjectInterface::__vftable[4].free = &this[1].IOUserNetworkPacketQueue::OSObject::OSObjectInterface::__vftable[4].free;
      this[1].IOUserNetworkPacketQueue::OSObject::OSObjectInterface::__vftable[5].init = &this[1].IOUserNetworkPacketQueue::OSObject::OSObjectInterface::__vftable[4].free;
      this[1].IOUserNetworkPacketQueue::OSObject::OSObjectInterface::__vftable[1].free = a4;
      v20 = this[1].IOUserNetworkPacketQueue::OSObject::OSObjectInterface::__vftable;
      free = v20[1].free;
      if (free)
      {
        (*(*free + 8))(free);
        v20 = this[1].IOUserNetworkPacketQueue::OSObject::OSObjectInterface::__vftable;
      }

      v20[1].init = a2;
      v22 = this[1].IOUserNetworkPacketQueue::OSObject::OSObjectInterface::__vftable;
      init = v22[1].init;
      if (init)
      {
        (*(*init + 8))(init);
        v22 = this[1].IOUserNetworkPacketQueue::OSObject::OSObjectInterface::__vftable;
      }

      v22->init = a8;
      v24 = this[1].IOUserNetworkPacketQueue::OSObject::OSObjectInterface::__vftable;
      if (v24->init)
      {
        (*(*v24->init + 8))(v24->init);
        v24 = this[1].IOUserNetworkPacketQueue::OSObject::OSObjectInterface::__vftable;
      }

      v24->free = a9;
      this[1].IOUserNetworkPacketQueue::OSObject::OSObjectInterface::__vftable[5].free = (*(*a2 + 80))(a2);
      return 1;
    }
  }

  else
  {
    IOLog("rx comp queue ivars alloc fail\n");
    return 0;
  }

  return result;
}

void AppleBCMWLANPCIeSkywalkRxCompletionQueue::free(IOUserNetworkRxCompletionQueue *this)
{
  if (this[1].IOUserNetworkPacketQueue::OSObject::OSObjectInterface::__vftable)
  {
    if ((this->IOUserNetworkPacketQueue::OSObject::OSMetaClassBase::__vftable[2].getMetaClass)(this))
    {
      (this->IOUserNetworkPacketQueue::OSObject::OSMetaClassBase::__vftable[2].getMetaClass)(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANPCIeSkywalkRxCompletionQueue::free(this);
      }
    }

    v2 = this[1].IOUserNetworkPacketQueue::OSObject::OSObjectInterface::__vftable;
    init = v2[1].init;
    if (init)
    {
      (*(*init + 16))(init);
      this[1].IOUserNetworkPacketQueue::OSObject::OSObjectInterface::__vftable[1].init = 0;
      v2 = this[1].IOUserNetworkPacketQueue::OSObject::OSObjectInterface::__vftable;
    }

    if (v2->init)
    {
      (*(*v2->init + 16))(v2->init);
      this[1].init = 0;
      v2 = this[1].IOUserNetworkPacketQueue::OSObject::OSObjectInterface::__vftable;
    }

    free = v2[1].free;
    if (free)
    {
      (*(*free + 16))(free);
      this[1].IOUserNetworkPacketQueue::OSObject::OSObjectInterface::__vftable[1].free = 0;
      v2 = this[1].IOUserNetworkPacketQueue::OSObject::OSObjectInterface::__vftable;
    }

    v2[9].init = 0;
    v2[7] = 0u;
    v2[8] = 0u;
    v2[5] = 0u;
    v2[6] = 0u;
    v2[3] = 0u;
    v2[4] = 0u;
    v2[1] = 0u;
    v2[2] = 0u;
    *v2 = 0u;
    v5 = this[1].IOUserNetworkPacketQueue::OSObject::OSObjectInterface::__vftable;
    if (v5)
    {
      IOFree(v5, 0x98uLL);
      this[1].IOUserNetworkPacketQueue::OSObject::OSObjectInterface::__vftable = 0;
    }
  }

  AppleBCMWLANSkywalkRxCompletionQueue::free(this);
}

uint64_t *AppleBCMWLANPCIeSkywalkRxCompletionQueue::flushPackets(uint64_t this)
{
  v2 = this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000;
  if ((*(*this + 224))(this))
  {
    (*(*this + 224))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANPCIeSkywalkRxCompletionQueue::flushPackets(this);
    }
  }

  v4 = (this + 88);
  for (i = *(this + 88); ; i = *v4)
  {
    v7 = *(i + 72);
    v6 = (i + 72);
    result = v7;
    if (v6 == v7)
    {
      break;
    }

    if (*result[1] != result || (v8 = *result, *(*result + 8) != result))
    {
      __break(1u);
      return result;
    }

    *(v8 + 8) = v6;
    *v6 = v8;
    *result = 0;
    result[1] = 0;
    ++*(*v4 + 128);
    v9 = AppleBCMWLANPCIeSkywalkPacket::fromChain(result);
    AppleBCMWLANPCIeSkywalkPacketPool::deallocatePacket(*(*v4 + 24), v9);
  }

  result = (*(*this + 224))(this);
  if (result)
  {
    (*(*this + 224))(this);
    result = CCLogStream::shouldLog();
    if (result)
    {
      return AppleBCMWLANPCIeSkywalkRxCompletionQueue::flushPackets(this, v2, this + 88);
    }
  }

  return result;
}

uint64_t AppleBCMWLANPCIeSkywalkRxCompletionQueue::freePendingPackets(uint64_t this, IOUserNetworkPacket **a2, unsigned int a3)
{
  if (a3)
  {
    v4 = this;
    v5 = a3;
    do
    {
      if (*a2)
      {
        this = AppleBCMWLANPCIeSkywalkPacketPool::deallocatePacket(*(*(v4 + 88) + 24), *a2);
      }

      ++a2;
      --v5;
    }

    while (v5);
  }

  return this;
}

uint64_t non-virtual thunk toAppleBCMWLANPCIeSkywalkRxCompletionQueue::freePendingPackets(uint64_t this, IOUserNetworkPacket **a2, unsigned int a3)
{
  if (a3)
  {
    v4 = this;
    v5 = a3;
    do
    {
      if (*a2)
      {
        this = AppleBCMWLANPCIeSkywalkPacketPool::deallocatePacket(*(*(v4 + 16) + 24), *a2);
      }

      ++a2;
      --v5;
    }

    while (v5);
  }

  return this;
}

uint64_t *AppleBCMWLANPCIeSkywalkRxCompletionQueue::enqueuePackets(AppleBCMWLANPCIeSkywalkRxCompletionQueue *this, OSObject *a2, IO80211NetworkPacket **a3, uint64_t a4, void *a5)
{
  v5 = a4;
  v8 = (*(**(*(this + 11) + 88) + 144))(*(*(this + 11) + 88), a2, a3, a4, a5);
  *(*(this + 11) + 136) = mach_continuous_time();
  *(*(this + 11) + 96) += v5;
  if (v8)
  {
    *(*(this + 11) + 48) = 0;
    *(*(this + 11) + 52) = 0;
    if (v5)
    {
      v8 = 0;
      v9 = v5;
      while (1)
      {
        v10 = *(this + 11);
        v13 = *(v10 + 72);
        v12 = (v10 + 72);
        result = v13;
        if (v12 == v13)
        {
          break;
        }

        if (*result[1] != result || (v14 = *result, *(*result + 8) != result))
        {
          __break(1u);
          return result;
        }

        *(v14 + 8) = v12;
        *v12 = v14;
        *result = 0;
        result[1] = 0;
        v15 = AppleBCMWLANPCIeSkywalkPacket::fromChain(result);
        if (!v15)
        {
          break;
        }

        v16 = v15;
        v17 = (*(*v15 + 480))(v15);
        v18 = v17 + (*(*v16 + 240))(v16);
        Interface = AppleBCMWLANSkywalkTxCompletionQueue::getInterface(this);
        InterfaceRole = IO80211SkywalkInterface::getInterfaceRole(Interface);
        v21 = AppleBCMWLANSkywalkTxCompletionQueue::getInterface(this);
        if (InterfaceRole == 10)
        {
          (*(*v21 + 632))(v21, v16, v18);
        }

        else if (IO80211SkywalkInterface::getInterfaceRole(v21) != 6)
        {
          Scratch = AppleBCMWLANPCIeSkywalkPacket::getScratch(v16);
          v23 = Scratch;
          v24 = *(Scratch + 24);
          if (v24 > 7)
          {
            LOBYTE(v25) = 4;
          }

          else
          {
            v25 = kTid2Ac[v24];
          }

          *(Scratch + 41) = v25;
          v26 = AppleBCMWLANSkywalkTxCompletionQueue::getInterface(this);
          (*(*v26 + 624))(v26, v16, v23, v18, 0, 0);
        }

        a3[v8] = v16;
        ++*(*(this + 11) + 48);
        *(*(this + 11) + 52) += (*(*v16 + 224))(v16);
        if (v9 == ++v8)
        {
          v8 = v9;
          break;
        }
      }
    }

    else
    {
      v8 = 0;
    }

    *(*(this + 11) + 104) += v8;
    *(*(this + 11) + 112) = v8;
    if (AppleBCMWLANSkywalkTxCompletionQueue::getInterface(this))
    {
      v27 = AppleBCMWLANSkywalkTxCompletionQueue::getInterface(this);
      IO80211SkywalkInterface::recordInputPacket(v27, *(*(this + 11) + 48), *(*(this + 11) + 52));
      v28 = AppleBCMWLANSkywalkTxCompletionQueue::getInterface(this);
      v29 = *(*(this + 11) + 48);
      (*(*v28 + 1152))();
    }
  }

  return v8;
}

uint64_t AppleBCMWLANPCIeSkywalkRxCompletionQueue::collectQueueStats(AppleBCMWLANPCIeSkywalkRxCompletionQueue *this, char *a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  (*(*this + 224))(this);
  v10 = *(this + 11);
  v21 = *(v10 + 112);
  v19 = *(v10 + 96);
  v11 = IO80211Print() + a5;
  (*(*this + 224))(this);
  v20 = *(*(this + 11) + 120);
  v12 = IO80211Print() + v11;
  v13 = *(*(this + 11) + 136);
  absolutetime_to_nanoseconds();
  v14 = *(*(this + 11) + 144);
  absolutetime_to_nanoseconds();
  (*(*this + 224))(this);
  v15 = IO80211Print() + v12;
  v16 = *(*(this + 11) + 32);
  (*(*this + 224))(this);
  if (v16)
  {
    IO80211WorkSource::isEnabled(*(*(this + 11) + 32));
    (*(**(*(this + 11) + 32) + 208))(*(*(this + 11) + 32));
    AppleBCMWLANItemRing::getReadableItemCount(*(*(this + 11) + 32));
    AppleBCMWLANItemRing::getWritableItemCount(*(*(this + 11) + 32));
  }

  v17 = IO80211Print();
  return AppleBCMWLANSkywalkRxCompletionQueue::collectQueueStats(this, a2, a3, a4, v17 + v15);
}

void *AppleBCMWLANPCIeSkywalkRxCompletionQueue::stagePacket(AppleBCMWLANPCIeSkywalkRxCompletionQueue *this, IO80211NetworkPacket *a2)
{
  ++*(*(this + 11) + 120);
  v2 = *(this + 11);
  result = AppleBCMWLANPCIeSkywalkPacket::getChain(a2);
  v4 = *(v2 + 80);
  if (*v4 == v2 + 72)
  {
    *result = v2 + 72;
    result[1] = v4;
    *v4 = result;
    *(v2 + 80) = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t AppleBCMWLANPCIeSkywalkRxCompletionQueue::requestEnqueue(IOUserNetworkPacketQueue *this, void *a2, unsigned int a3)
{
  *(this[1].ivars + 18) = mach_continuous_time();
  if ((this[1].ivars + 72) == *(this[1].ivars + 9))
  {
    return 0;
  }

  return IOUserNetworkPacketQueue::requestEnqueue(this, a2, a3);
}

OSObject *AppleBCMWLANPCIeSkywalkRxSubmissionQueue::withProviderAndQueueInfoAndPool(AppleBCMWLANPCIeSkywalkRxSubmissionQueue *this, OSObject *a2, OSObject *a3, unsigned int a4, unsigned int a5, IOUserNetworkPacketBufferPool *a6, AppleBCMWLANPCIeSkywalkPacketPool *a7, CCLogStream *a8, CCFaultReporter *a9)
{
  v14 = a3;
  pObject = 0xAAAAAAAAAAAAAAAALL;
  if (OSObjectAllocate(gAppleBCMWLANPCIeSkywalkRxSubmissionQueueMetaClass, &pObject))
  {
    return 0;
  }

  v17 = pObject;
  if (pObject && (AppleBCMWLANPCIeSkywalkRxSubmissionQueue::initProviderAndPoolAndQueueInfo(pObject, this, a2, a6, v14, a4, a5, a7, a8) & 1) == 0)
  {
    (v17->release)(v17);
    return 0;
  }

  return v17;
}

uint64_t AppleBCMWLANPCIeSkywalkRxSubmissionQueue::initProviderAndPoolAndQueueInfo(IOUserNetworkRxSubmissionQueue *this, AppleBCMWLANBusInterfacePCIe *a2, OSObject *a3, IOUserNetworkPacketBufferPool *a4, int a5, unsigned int a6, unsigned int a7, CCLogStream *a8, CCFaultReporter *a9)
{
  v17 = IOMallocZeroTyped();
  this[1].IOUserNetworkPacketQueue::OSObject::OSObjectInterface::__vftable = v17;
  if (!v17)
  {
    IOLog("rx subm queue ivars alloc fail\n");
    return 0;
  }

  v18 = (*(*a2 + 80))(a2);
  if (!AppleBCMWLANSkywalkRxSubmissionQueue::initWithPoolAndQueueInfo(this, a3, a4, a5, a6, a7, v18))
  {
    return 0;
  }

  this[1].IOUserNetworkPacketQueue::OSObject::OSObjectInterface::__vftable[3].init = &this[1].IOUserNetworkPacketQueue::OSObject::OSObjectInterface::__vftable[3];
  this[1].IOUserNetworkPacketQueue::OSObject::OSObjectInterface::__vftable[3].free = &this[1].IOUserNetworkPacketQueue::OSObject::OSObjectInterface::__vftable[3];
  this[1].IOUserNetworkPacketQueue::OSObject::OSObjectInterface::__vftable[2].init = a2;
  v19 = this[1].IOUserNetworkPacketQueue::OSObject::OSObjectInterface::__vftable;
  init = v19[2].init;
  if (init)
  {
    (*(*init + 8))(init);
    v19 = this[1].IOUserNetworkPacketQueue::OSObject::OSObjectInterface::__vftable;
  }

  v19[4].free = a4;
  v21 = this[1].IOUserNetworkPacketQueue::OSObject::OSObjectInterface::__vftable;
  free = v21[4].free;
  if (free)
  {
    (*(*free + 8))(free);
    v21 = this[1].IOUserNetworkPacketQueue::OSObject::OSObjectInterface::__vftable;
  }

  LODWORD(v21[4].init) = a7;
  this[1].free = a8;
  v23 = this[1].IOUserNetworkPacketQueue::OSObject::OSObjectInterface::__vftable;
  v24 = v23->free;
  if (v24)
  {
    (*(*v24 + 8))(v24);
    v23 = this[1].IOUserNetworkPacketQueue::OSObject::OSObjectInterface::__vftable;
  }

  v23[1].init = a9;
  this[1].init = (*(*a2 + 80))(a2);
  v25 = 1;
  IOParseBootArgNumber("wlan.skywalk.ktrace", &fKernelTraceEnabled, 1);
  return v25;
}

void AppleBCMWLANPCIeSkywalkRxSubmissionQueue::free(AppleBCMWLANPCIeSkywalkRxSubmissionQueue *this)
{
  if (*(this + 11))
  {
    if ((*(*this + 216))(this))
    {
      (*(*this + 216))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANPCIeSkywalkRxSubmissionQueue::free(this);
      }
    }

    v2 = *(this + 11);
    v3 = *(v2 + 32);
    if (v3)
    {
      (*(*v3 + 16))(v3);
      *(*(this + 11) + 32) = 0;
      v2 = *(this + 11);
    }

    v4 = *(v2 + 8);
    if (v4)
    {
      (*(*v4 + 16))(v4);
      *(*(this + 11) + 8) = 0;
      v2 = *(this + 11);
    }

    v5 = *(v2 + 72);
    if (v5)
    {
      (*(*v5 + 16))(v5);
      *(*(this + 11) + 72) = 0;
      v2 = *(this + 11);
    }

    *(v2 + 160) = 0;
    *(v2 + 128) = 0u;
    *(v2 + 144) = 0u;
    *(v2 + 96) = 0u;
    *(v2 + 112) = 0u;
    *(v2 + 64) = 0u;
    *(v2 + 80) = 0u;
    *(v2 + 32) = 0u;
    *(v2 + 48) = 0u;
    *v2 = 0u;
    *(v2 + 16) = 0u;
    v6 = *(this + 11);
    if (v6)
    {
      IOFree(v6, 0xA8uLL);
      *(this + 11) = 0;
    }
  }

  AppleBCMWLANSkywalkRxSubmissionQueue::free(this);
}

uint64_t *AppleBCMWLANPCIeSkywalkRxSubmissionQueue::dequeuePackets(AppleBCMWLANPCIeSkywalkRxSubmissionQueue *this, OSObject *a2, IO80211NetworkPacket **a3, uint64_t a4, void *a5)
{
  v5 = a4;
  v7 = (this + 88);
  v8 = (*(***(this + 11) + 144))(**(this + 11), a2, a3, a4, a5);
  *(*v7 + 104) = 0;
  *(*v7 + 88) += v5;
  *(*v7 + 68) = 0;
  *(*v7 + 144) = mach_continuous_time();
  if (v8)
  {
    v9 = *(*v7 + 24);
    if (v9)
    {
      v10 = v5;
      if (fKernelTraceEnabled)
      {
        AppleBCMWLANPCIeSkywalkRxSubmissionQueue::dequeuePackets(v9, v7);
        if (v5)
        {
LABEL_5:
          v5 = 0;
          while (1)
          {
            v11 = OSMetaClassBase::safeMetaCast(a3[v5], gAppleBCMWLANPCIeSkywalkPacketMetaClass);
            if (!v11)
            {
              break;
            }

            v12 = v11;
            AppleBCMWLANPCIeSkywalkPacket::prepare(v11);
            v13 = *v7;
            v14 = *v7 + 48;
            result = AppleBCMWLANPCIeSkywalkPacket::getChain(v12);
            v16 = *(v13 + 56);
            if (*v16 != v14)
            {
              __break(1u);
              return result;
            }

            *result = v14;
            result[1] = v16;
            *v16 = result;
            *(v13 + 56) = result;
            if (v10 == ++v5)
            {
              v5 = v10;
              break;
            }
          }
        }
      }

      else if (v5)
      {
        goto LABEL_5;
      }

      *(*v7 + 104) = v5;
      *(*v7 + 96) += v5;
      *(*v7 + 40) += v5;
      (*(**(*v7 + 24) + 192))(*(*v7 + 24), *(*v7 + 40), 1);
      if (fKernelTraceEnabled)
      {
        AppleBCMWLANPCIeSkywalkRxSubmissionQueue::dequeuePackets(v7);
      }

      return v5;
    }
  }

  return 0;
}

uint64_t *AppleBCMWLANPCIeSkywalkRxSubmissionQueue::flushPackets(AppleBCMWLANPCIeSkywalkRxSubmissionQueue *this)
{
  if ((*(*this + 216))(this))
  {
    (*(*this + 216))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANPCIeSkywalkRxSubmissionQueue::flushPackets(this);
    }
  }

  v2 = *(this + 11);
  if (*(v2 + 72) && *(v2 + 40))
  {
    LODWORD(v3) = 0;
    while (1)
    {
      v5 = (v2 + 48);
      result = *(v2 + 48);
      if (result == (v2 + 48))
      {
        result = 0;
      }

      else
      {
        if (*result[1] != result || (v6 = *result, *(*result + 8) != result))
        {
          __break(1u);
          return result;
        }

        *(v6 + 8) = v5;
        *v5 = v6;
        *result = 0;
        result[1] = 0;
        v2 = *(this + 11);
      }

      ++*(v2 + 128);
      v7 = AppleBCMWLANPCIeSkywalkPacket::fromChain(result);
      if (v7)
      {
        AppleBCMWLANPCIeSkywalkPacketPool::deallocatePacket(*(*(this + 11) + 72), v7);
      }

      else if ((*(*this + 216))(this))
      {
        (*(*this + 216))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANPCIeSkywalkRxSubmissionQueue::flushPackets(this);
        }
      }

      v3 = (v3 + 1);
      v2 = *(this + 11);
      if (v3 >= *(v2 + 40))
      {
        *(v2 + 40) = 0;
        return v3;
      }
    }
  }

  return 0;
}

uint64_t AppleBCMWLANPCIeSkywalkRxSubmissionQueue::setFWRing(AppleBCMWLANPCIeSkywalkRxSubmissionQueue *this, AppleBCMWLANPCIeSubmissionRing *a2)
{
  v4 = this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000;
  if ((*(*this + 216))(this))
  {
    (*(*this + 216))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANPCIeSkywalkRxSubmissionQueue::setFWRing(this, v4, a2);
    }
  }

  if (!*(this + 11))
  {
    return IOLog("AppleBCMWLANPCIeSkywalkRxSubmissionQueue::setFWRing [%p], no ivars\n", a2);
  }

  if (a2)
  {
    (*(*a2 + 8))(a2);
    *(*(this + 11) + 24) = a2;
    if ((*(*this + 216))(this))
    {
      (*(*this + 216))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANPCIeSkywalkRxSubmissionQueue::setFWRing(this);
      }
    }

    result = (*(*this + 128))(this, 0, 0);
    if (result)
    {
      v6 = result;
      result = (*(*this + 216))(this);
      if (result)
      {
        (*(*this + 216))(this);
        result = CCLogStream::shouldLog();
        if (result)
        {
          return AppleBCMWLANPCIeSkywalkRxSubmissionQueue::setFWRing(this, v4, v6);
        }
      }
    }
  }

  else
  {
    if ((*(*this + 216))(this))
    {
      (*(*this + 216))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANPCIeSkywalkRxSubmissionQueue::setFWRing(this);
      }
    }

    AppleBCMWLANPCIeSkywalkRxSubmissionQueue::flushPackets(this);
    result = *(*(this + 11) + 24);
    if (result)
    {
      result = (*(*result + 16))(result);
      *(*(this + 11) + 24) = 0;
    }
  }

  return result;
}

uint64_t AppleBCMWLANPCIeSkywalkRxSubmissionQueue::fwRingPending(unint64_t this)
{
  if ((*(*(this + 88) + 68) & 1) == 0)
  {
    if ((*(*this + 208))(this))
    {
      v2 = *(this + 88);
      v3 = *(v2 + 24);
      if (v3)
      {
        v4 = *(v2 + 40);
        if (v4 < AppleBCMWLANItemRing::getWritableItemCount(v3))
        {
          v5 = (*(*this + 128))(this, 0, 0);
          if (v5)
          {
            v6 = v5;
            if ((*(*this + 216))(this))
            {
              (*(*this + 216))(this);
              if (CCLogStream::shouldLog())
              {
                AppleBCMWLANPCIeSkywalkRxSubmissionQueue::fwRingPending(this, this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, v6);
              }
            }

            if (v6 == -536870210)
            {
              *(*(this + 88) + 68) = 1;
              *(*(this + 88) + 136) = mach_continuous_time();
            }
          }
        }
      }
    }
  }

  return *(*(this + 88) + 40);
}

uint64_t AppleBCMWLANPCIeSkywalkRxSubmissionQueue::fwRingFill(unint64_t this, AppleBCMWLANByteRing *a2, char *a3, uint64_t a4)
{
  LOWORD(v24) = -1;
  v7 = (this + 88);
  RxPacketTracker = AppleBCMWLANPCIeSkywalkPacketPool::getRxPacketTracker(*(*(this + 88) + 72));
  *(*v7 + 152) = mach_continuous_time();
  v9 = *(*v7 + 24);
  if (v9)
  {
    if (fKernelTraceEnabled)
    {
      AppleBCMWLANPCIeSkywalkRxSubmissionQueue::fwRingFill(v9, a4, v7);
      if (a4)
      {
LABEL_4:
        v10 = 0;
        v11 = 0;
        while (1)
        {
          if (v11 >= *(*v7 + 40))
          {
            a4 = v11;
            goto LABEL_27;
          }

          v12 = &a3[v10];
          *v12 = 0u;
          *(v12 + 1) = 0u;
          *v12 = -239;
          v13 = (*(**(*v7 + 24) + 248))(*(*v7 + 24)) ? -127 : 1;
          v12[2] = v13;
          v14 = (*v7 + 48);
          v15 = *v14;
          if (*v14 == v14)
          {
            v15 = 0;
          }

          else
          {
            if (*v15[1] != v15)
            {
              goto LABEL_32;
            }

            v16 = *v15;
            if (*(*v15 + 8) != v15)
            {
              goto LABEL_32;
            }

            v16[1] = v14;
            *v14 = v16;
            *v15 = 0;
            v15[1] = 0;
          }

          v17 = AppleBCMWLANPCIeSkywalkPacket::fromChain(v15);
          v18 = (v17->OSMetaClassBase::__vftable[8].init)(v17);
          if (AppleBCMWLANHashtable::add(RxPacketTracker, v17, &v24))
          {
            break;
          }

          AppleBCMWLANPCIeSkywalkPacket::setPacketId(v17, v24);
          BusAddress = AppleBCMWLANPCIeSkywalkPacket::getBusAddress(v17);
          v20 = &a3[v10];
          *(v20 + 5) = v18;
          *(v20 + 3) = BusAddress;
          *(v20 + 2) = v24;
          *(v20 + 3) = (*(**(*v7 + 24) + 296))();
          ++v11;
          v10 += 32;
          if (32 * a4 == v10)
          {
            goto LABEL_27;
          }
        }

        if ((*(*this + 216))(this))
        {
          (*(*this + 216))(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANPCIeSkywalkRxSubmissionQueue::fwRingFill(this);
          }
        }

        v21 = *v7 + 48;
        v22 = *v21;
        if (*(*v21 + 8) != v21)
        {
LABEL_32:
          __break(1u);
        }

        *v15 = v22;
        v15[1] = v21;
        v22[1] = v15;
        a4 = v11;
        *v21 = v15;
      }
    }

    else if (a4)
    {
      goto LABEL_4;
    }

LABEL_27:
    *(*v7 + 120) = a4;
    *(*v7 + 112) += a4;
    *(*v7 + 40) -= a4;
    AppleBCMWLANBusInterfacePCIe::updateActiveRxBufferCount(*(*v7 + 32), a4);
    if (fKernelTraceEnabled)
    {
      AppleBCMWLANPCIeSkywalkRxSubmissionQueue::fwRingFill(v7);
    }

    return a4;
  }

  if ((*(*this + 216))(this))
  {
    (*(*this + 216))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANPCIeSkywalkRxSubmissionQueue::fwRingFill(this, this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, v7);
    }
  }

  return 0;
}

uint64_t AppleBCMWLANPCIeSkywalkRxSubmissionQueue::collectQueueStats(AppleBCMWLANPCIeSkywalkRxSubmissionQueue *this, char *a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  (*(*this + 216))(this);
  v10 = *(this + 11);
  v25 = *(v10 + 104);
  v27 = *(v10 + 40);
  v23 = *(v10 + 88);
  v11 = IO80211Print() + a5;
  (*(*this + 216))(this);
  v12 = *(this + 11);
  v26 = *(v12 + 128);
  v24 = *(v12 + 112);
  v13 = IO80211Print() + v11;
  v14 = *(*(this + 11) + 136);
  absolutetime_to_nanoseconds();
  (*(*this + 216))(this);
  *(&v24 + 1) = *(*(this + 11) + 68);
  v15 = IO80211Print() + v13;
  memset(v28, 170, sizeof(v28));
  v16 = *(*(this + 11) + 144);
  absolutetime_to_nanoseconds();
  v17 = *(*(this + 11) + 152);
  absolutetime_to_nanoseconds();
  v18 = *(*(this + 11) + 160);
  absolutetime_to_nanoseconds();
  (*(*this + 216))(this);
  v19 = IO80211Print() + v15;
  v20 = *(*(this + 11) + 24);
  (*(*this + 216))(this);
  if (v20)
  {
    IO80211WorkSource::isEnabled(*(*(this + 11) + 24));
    (*(**(*(this + 11) + 24) + 208))(*(*(this + 11) + 24));
    AppleBCMWLANItemRing::getReadableItemCount(*(*(this + 11) + 24));
    AppleBCMWLANItemRing::getWritableItemCount(*(*(this + 11) + 24));
  }

  v21 = IO80211Print();
  return AppleBCMWLANSkywalkRxSubmissionQueue::collectQueueStats(this, a2, a3, a4, v21 + v19);
}

uint64_t AppleBCMWLANPCIeSkywalkRxSubmissionQueue::setLogger(AppleBCMWLANPCIeSkywalkRxSubmissionQueue *this, CCLogStream *a2)
{
  v4 = *(this + 11);
  v5 = *(v4 + 8);
  if (v5)
  {
    (*(*v5 + 16))(v5);
    *(*(this + 11) + 8) = 0;
    v4 = *(this + 11);
  }

  *(v4 + 8) = a2;
  v6 = *(*(this + 11) + 8);
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  return AppleBCMWLANSkywalkRxSubmissionQueue::setLogger(this, a2);
}

uint64_t AppleBCMWLANPCIeSkywalkRxSubmissionQueue::requestDequeue(IOUserNetworkPacketQueue *this, void *a2, unsigned int a3)
{
  if (*(this[1].ivars + 10) >= *(this[1].ivars + 16) >> 2)
  {
    return 0;
  }

  *(this[1].ivars + 20) = mach_continuous_time();

  return IOUserNetworkPacketQueue::requestDequeue(this, a2, a3);
}

uint64_t *OUTLINED_FUNCTION_1_12@<X0>(uint64_t a1@<X8>)
{
  result = *(a1 + 32);
  v2 = *result;
  return result;
}

OSObject *AppleBCMWLANPCIeSkywalkTxCompletionQueue::withProviderAndQueueInfoAndPool(AppleBCMWLANPCIeSkywalkTxCompletionQueue *this, OSObject *a2, OSObject *a3, unsigned int a4, unsigned int a5, IOUserNetworkPacketBufferPool *a6, AppleBCMWLANPCIeSkywalkPacketPool *a7, CCLogStream *a8, CCFaultReporter *a9)
{
  v14 = a3;
  pObject = 0xAAAAAAAAAAAAAAAALL;
  if (OSObjectAllocate(gAppleBCMWLANPCIeSkywalkTxCompletionQueueMetaClass, &pObject))
  {
    return 0;
  }

  v17 = pObject;
  if (pObject && (AppleBCMWLANPCIeSkywalkTxCompletionQueue::initProviderAndPoolAndQueueInfo(pObject, this, a2, a6, v14, a4, a5, a7, a8) & 1) == 0)
  {
    (v17->release)(v17);
    return 0;
  }

  return v17;
}

uint64_t AppleBCMWLANPCIeSkywalkTxCompletionQueue::initProviderAndPoolAndQueueInfo(IOUserNetworkTxCompletionQueue *this, AppleBCMWLANBusInterfacePCIe *a2, OSObject *a3, IOUserNetworkPacketBufferPool *a4, int a5, unsigned int a6, unsigned int a7, CCLogStream *a8, CCFaultReporter *a9)
{
  v17 = IOMallocZeroTyped();
  this[1].IOUserNetworkPacketQueue::OSObject::OSObjectInterface::__vftable = v17;
  if (v17)
  {
    v18 = (*(*a2 + 80))(a2);
    result = AppleBCMWLANSkywalkTxCompletionQueue::initWithPoolAndQueueInfo(this, a3, a4, a5, a6, a7, v18);
    if (result)
    {
      this[1].IOUserNetworkPacketQueue::OSObject::OSObjectInterface::__vftable[2].init = &this[1].IOUserNetworkPacketQueue::OSObject::OSObjectInterface::__vftable[2];
      this[1].IOUserNetworkPacketQueue::OSObject::OSObjectInterface::__vftable[2].free = &this[1].IOUserNetworkPacketQueue::OSObject::OSObjectInterface::__vftable[2];
      this[1].IOUserNetworkPacketQueue::OSObject::OSObjectInterface::__vftable[3].init = a4;
      v20 = this[1].IOUserNetworkPacketQueue::OSObject::OSObjectInterface::__vftable;
      init = v20[3].init;
      if (init)
      {
        (*(*init + 8))(init);
        v20 = this[1].IOUserNetworkPacketQueue::OSObject::OSObjectInterface::__vftable;
      }

      v20[1].free = a2;
      v22 = this[1].IOUserNetworkPacketQueue::OSObject::OSObjectInterface::__vftable;
      free = v22[1].free;
      if (free)
      {
        (*(*free + 8))(free);
        v22 = this[1].IOUserNetworkPacketQueue::OSObject::OSObjectInterface::__vftable;
      }

      v22->init = a8;
      v24 = this[1].IOUserNetworkPacketQueue::OSObject::OSObjectInterface::__vftable;
      if (v24->init)
      {
        (*(*v24->init + 8))(v24->init);
        v24 = this[1].IOUserNetworkPacketQueue::OSObject::OSObjectInterface::__vftable;
      }

      v24->free = a9;
      this[1].IOUserNetworkPacketQueue::OSObject::OSObjectInterface::__vftable[3].free = (*(*a2 + 80))(a2);
      return 1;
    }
  }

  else
  {
    IOLog("tx comp queue ivars alloc fail\n");
    return 0;
  }

  return result;
}

void AppleBCMWLANPCIeSkywalkTxCompletionQueue::free(IOUserNetworkTxCompletionQueue *this)
{
  if (this[1].IOUserNetworkPacketQueue::OSObject::OSObjectInterface::__vftable)
  {
    if ((this->IOUserNetworkPacketQueue::OSObject::OSMetaClassBase::__vftable[1].DequeuePackets)(this))
    {
      (this->IOUserNetworkPacketQueue::OSObject::OSMetaClassBase::__vftable[1].DequeuePackets)(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANPCIeSkywalkTxCompletionQueue::free(this);
      }
    }

    v2 = this[1].IOUserNetworkPacketQueue::OSObject::OSObjectInterface::__vftable;
    free = v2[1].free;
    if (free)
    {
      (*(*free + 16))(v2[1].free);
      this[1].IOUserNetworkPacketQueue::OSObject::OSObjectInterface::__vftable[1].free = 0;
      v2 = this[1].IOUserNetworkPacketQueue::OSObject::OSObjectInterface::__vftable;
    }

    if (v2->init)
    {
      (*(*v2->init + 16))(v2->init);
      this[1].init = 0;
      v2 = this[1].IOUserNetworkPacketQueue::OSObject::OSObjectInterface::__vftable;
    }

    init = v2[3].init;
    if (init)
    {
      (*(*init + 16))(v2[3].init);
      this[1].IOUserNetworkPacketQueue::OSObject::OSObjectInterface::__vftable[3].init = 0;
      v2 = this[1].IOUserNetworkPacketQueue::OSObject::OSObjectInterface::__vftable;
    }

    bzero(v2, 0x398uLL);
    v5 = this[1].IOUserNetworkPacketQueue::OSObject::OSObjectInterface::__vftable;
    if (v5)
    {
      IOFree(v5, 0x398uLL);
      this[1].IOUserNetworkPacketQueue::OSObject::OSObjectInterface::__vftable = 0;
    }
  }

  AppleBCMWLANSkywalkTxCompletionQueue::free(this);
}

uint64_t *AppleBCMWLANPCIeSkywalkTxCompletionQueue::flushPackets(AppleBCMWLANPCIeSkywalkTxCompletionQueue *this)
{
  if ((*(*this + 216))(this))
  {
    (*(*this + 216))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANPCIeSkywalkTxCompletionQueue::flushPackets(this);
    }
  }

  while (1)
  {
    v4 = *(this + 11);
    v7 = *(v4 + 32);
    v6 = (v4 + 32);
    result = v7;
    if (v6 == v7)
    {
      break;
    }

    if (*result[1] != result || (v2 = *result, *(*result + 8) != result))
    {
      __break(1u);
      return result;
    }

    *(v2 + 8) = v6;
    *v6 = v2;
    *result = 0;
    result[1] = 0;
    v3 = AppleBCMWLANPCIeSkywalkPacket::fromChain(result);
    ++*(*(this + 11) + 96);
    AppleBCMWLANPCIeSkywalkPacketPool::deallocatePacket(*(*(this + 11) + 48), v3);
  }

  return result;
}

uint64_t *AppleBCMWLANPCIeSkywalkTxCompletionQueue::enqueuePackets(AppleBCMWLANPCIeSkywalkTxCompletionQueue *this, OSObject *a2, IO80211NetworkPacket **a3, uint64_t a4, void *a5)
{
  v5 = a4;
  v7 = (*(**(*(this + 11) + 56) + 144))(*(*(this + 11) + 56), a2, a3, a4, a5);
  *(*(this + 11) + 904) = mach_continuous_time();
  *(*(this + 11) + 64) += v5;
  if (v7)
  {
    if (v5)
    {
      v7 = 0;
      v8 = v5;
      while (1)
      {
        v9 = *(this + 11);
        v12 = *(v9 + 32);
        v11 = (v9 + 32);
        result = v12;
        if (v11 == v12)
        {
          break;
        }

        if (*result[1] != result || (v13 = *result, *(*result + 8) != result))
        {
          __break(1u);
          return result;
        }

        *(v13 + 8) = v11;
        *v11 = v13;
        *result = 0;
        result[1] = 0;
        v14 = AppleBCMWLANPCIeSkywalkPacket::fromChain(result);
        if (!v14)
        {
          break;
        }

        v15 = v14;
        if (AppleBCMWLANSkywalkTxCompletionQueue::getInterface(this))
        {
          Headroom = IO80211NetworkPacket::getHeadroom(v15);
          v17 = (*(*v15 + 480))(v15);
          v18 = (*(*v15 + 296))(v15);
          Ac = AppleBCMWLANPCIeSkywalkPacket::getAc(v15);
          v20 = (*(*v15 + 520))(v15);
          v21 = *(this + 11);
          if ((AppleBCMWLANPCIeSkywalkPacket::isPktRequeued(v15) & 1) == 0)
          {
            v22 = 104;
            if (v18)
            {
              v22 = 504;
            }

            v23 = v21 + v22;
            v24 = v17 + Headroom;
            *v23 = *(*(this + 11) + 904);
            *(v23 + 8) = 1;
            ++*(v23 + 8 * Ac + 368);
            v25 = v23 + 88 * Ac + 8 * v20;
            ++*(v25 + 16);
            Interface = AppleBCMWLANSkywalkTxCompletionQueue::getInterface(this);
            Scratch = AppleBCMWLANPCIeSkywalkPacket::getScratch(v15);
            v28 = AppleBCMWLANPCIeSkywalkPacket::getAc(v15);
            Status = AppleBCMWLANPCIeSkywalkPacket::getStatus(v15);
            v30 = (*(*this + 208))(this);
            LOBYTE(v33) = 0;
            (*(*Interface + 608))(Interface, v15, Scratch, v24, v28, Status, v30, v18, v33);
          }
        }

        if (AppleBCMWLANPCIeSkywalkPacket::isLocalPacket(v15))
        {
          AppleBCMWLANPCIeSkywalkTxCompletionQueue::enqueuePackets();
        }

        a3[v7++] = v15;
        if (v8 == v7)
        {
          v7 = v8;
          break;
        }
      }
    }

    else
    {
      v7 = 0;
    }

    *(*(this + 11) + 72) += v7;
    *(*(this + 11) + 80) = v7;
    v31 = AppleBCMWLANSkywalkTxCompletionQueue::getInterface(this);
    if (IO80211SkywalkInterface::getInterfaceRole(v31) == 1)
    {
      v32 = AppleBCMWLANSkywalkTxCompletionQueue::getInterface(this);
      (*(*v32 + 616))(v32, *(this + 11) + 504, *(this + 11) + 104);
    }
  }

  return v7;
}

uint64_t AppleBCMWLANPCIeSkywalkTxCompletionQueue::collectQueueStats(AppleBCMWLANPCIeSkywalkTxCompletionQueue *this, char *a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  (*(*this + 216))(this);
  v10 = *(this + 11);
  v21 = *(v10 + 80);
  v19 = *(v10 + 64);
  v11 = IO80211Print() + a5;
  (*(*this + 216))(this);
  v20 = *(*(this + 11) + 88);
  v12 = IO80211Print() + v11;
  v13 = *(*(this + 11) + 904);
  absolutetime_to_nanoseconds();
  v14 = *(*(this + 11) + 912);
  absolutetime_to_nanoseconds();
  (*(*this + 216))(this);
  v15 = IO80211Print() + v12;
  v16 = *(*(this + 11) + 16);
  (*(*this + 216))(this);
  if (v16)
  {
    IO80211WorkSource::isEnabled(*(*(this + 11) + 16));
    (*(**(*(this + 11) + 16) + 208))(*(*(this + 11) + 16));
    AppleBCMWLANItemRing::getReadableItemCount(*(*(this + 11) + 16));
    AppleBCMWLANItemRing::getWritableItemCount(*(*(this + 11) + 16));
  }

  v17 = IO80211Print();
  return AppleBCMWLANSkywalkTxCompletionQueue::collectQueueStats(this, a2, a3, a4, v17 + v15);
}

void *AppleBCMWLANPCIeSkywalkTxCompletionQueue::stagePacket(AppleBCMWLANPCIeSkywalkTxCompletionQueue *this, AppleBCMWLANPCIeSkywalkPacket *a2)
{
  v2 = *(this + 11);
  result = AppleBCMWLANPCIeSkywalkPacket::getChain(a2);
  v4 = *(v2 + 40);
  if (*v4 == v2 + 32)
  {
    *result = v2 + 32;
    result[1] = v4;
    *v4 = result;
    *(v2 + 40) = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t AppleBCMWLANPCIeSkywalkTxCompletionQueue::requestEnqueue(IOUserNetworkPacketQueue *this, void *a2, unsigned int a3)
{
  *(this[1].ivars + 114) = mach_continuous_time();

  return AppleBCMWLANSkywalkTxCompletionQueue::requestEnqueue(this, a2, a3);
}

uint64_t non-virtual thunk toAppleBCMWLANPCIeSkywalkTxCompletionQueue::requestEnqueue(AppleBCMWLANPCIeSkywalkTxCompletionQueue *this, void *a2, unsigned int a3)
{
  v5 = (this - 40);
  *(*(this + 6) + 912) = mach_continuous_time();

  return AppleBCMWLANSkywalkTxCompletionQueue::requestEnqueue(v5, a2, a3);
}

OSObject *AppleBCMWLANPCIeSkywalkTxSubmissionQueue::withProviderAndQueueInfoAndPool(BOOL (__cdecl *a1)(OSObjectInterface *__hidden this), OSObject *a2, int a3, unsigned int a4, unsigned int a5, unsigned int a6, IOUserNetworkPacketBufferPool *a7, OSMetaClass_vtbl *a8, uint64_t a9)
{
  pObject = 0xAAAAAAAAAAAAAAAALL;
  if (OSObjectAllocate(gAppleBCMWLANPCIeSkywalkTxSubmissionQueueMetaClass, &pObject))
  {
    return 0;
  }

  v17 = pObject;
  if (pObject && (AppleBCMWLANPCIeSkywalkTxSubmissionQueue::initProviderAndPoolAndQueueInfo(pObject, a1, a2, a7, a3, a4, a5, a6, a8, a9) & 1) == 0)
  {
    (v17->release)(v17);
    return 0;
  }

  return v17;
}

uint64_t AppleBCMWLANPCIeSkywalkTxSubmissionQueue::initProviderAndPoolAndQueueInfo(IOUserNetworkTxSubmissionQueue *a1, BOOL (__cdecl *a2)(OSObjectInterface *__hidden this), OSObject *a3, IOUserNetworkPacketBufferPool *a4, int a5, unsigned int a6, unsigned int a7, unsigned int a8, OSMetaClass_vtbl *a9, uint64_t a10)
{
  v18 = IOMallocZeroTyped();
  a1[1].IOUserNetworkPacketQueue::OSObject::OSObjectInterface::__vftable = v18;
  if (!v18)
  {
    IOLog("pcie tx subm ivars allocation fail\n");
    return 0;
  }

  v19 = (*(*a2 + 80))(a2);
  if (!AppleBCMWLANSkywalkTxSubmissionQueue::initWithPoolAndQueueInfo(a1, a3, a4, a5, a6, a7, a8, a9, a10, v19))
  {
    return 0;
  }

  a1[1].IOUserNetworkPacketQueue::OSObject::OSObjectInterface::__vftable[1].init = a2;
  v20 = a1[1].IOUserNetworkPacketQueue::OSObject::OSObjectInterface::__vftable;
  init = v20[1].init;
  if (init)
  {
    (*(*init + 8))(init);
    v20 = a1[1].IOUserNetworkPacketQueue::OSObject::OSObjectInterface::__vftable;
  }

  v20[1].free = a4;
  v22 = a1[1].IOUserNetworkPacketQueue::OSObject::OSObjectInterface::__vftable;
  free = v22[1].free;
  if (free)
  {
    (*(*free + 8))(free);
    v22 = a1[1].IOUserNetworkPacketQueue::OSObject::OSObjectInterface::__vftable;
  }

  LODWORD(v22[11].free) = a7;
  a1[1].init = a9;
  v24 = a1[1].IOUserNetworkPacketQueue::OSObject::OSObjectInterface::__vftable;
  if (v24->init)
  {
    (*(*v24->init + 8))(v24->init);
    v24 = a1[1].IOUserNetworkPacketQueue::OSObject::OSObjectInterface::__vftable;
  }

  v24->free = a10;
  LOWORD(a1[1].IOUserNetworkPacketQueue::OSObject::OSObjectInterface::__vftable[10].free) = 0;
  v25 = 1;
  IOParseBootArgNumber("wlan.skywalk.ktrace", &fKernelTraceEnabled, 1);
  IOParseBootArgNumber("wlan.validateMacAddrOption", &a1[1].IOUserNetworkPacketQueue::OSObject::OSObjectInterface::__vftable[27], 4);
  a1[1].IOUserNetworkPacketQueue::OSObject::OSObjectInterface::__vftable[12].init = 0;
  LODWORD(a1[1].IOUserNetworkPacketQueue::OSObject::OSObjectInterface::__vftable[12].free) = 0;
  a1[1].IOUserNetworkPacketQueue::OSObject::OSObjectInterface::__vftable[15].init = (*(*a2 + 80))(a2);
  if ((a1->IOUserNetworkPacketQueue::OSObject::OSMetaClassBase::__vftable[2].SetPacketDirection)(a1))
  {
    (a1->IOUserNetworkPacketQueue::OSObject::OSMetaClassBase::__vftable[2].SetPacketDirection)(a1);
    if (CCLogStream::shouldLog())
    {
      v26 = (a1->IOUserNetworkPacketQueue::OSObject::OSMetaClassBase::__vftable[2].SetPacketDirection)(a1);
      CCLogStream::logInfo(v26, "[dk] %s@%d:%s: Done txSub %p for ifId %u queueId %u ac %u, ivars->fRequeuePacketRefList:%p\n", "initProviderAndPoolAndQueueInfo", 155, "initProviderAndPoolAndQueueInfo", a1, a5, a6, a7, a1[1].IOUserNetworkPacketQueue::OSObject::OSObjectInterface::__vftable[12].init);
    }
  }

  return v25;
}

uint64_t AppleBCMWLANPCIeSkywalkTxSubmissionQueue::enable(AppleBCMWLANPCIeSkywalkTxSubmissionQueue *this)
{
  if ((*(*this + 288))(this))
  {
    (*(*this + 288))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANPCIeSkywalkTxSubmissionQueue::enable(this);
    }
  }

  Interface = AppleBCMWLANSkywalkTxSubmissionQueue::getInterface(this);
  if (IO80211SkywalkInterface::getInterfaceId(Interface) != 9 || (v3 = AppleBCMWLANSkywalkTxSubmissionQueue::getInterface(this), IO80211SkywalkInterface::getInterfaceRole(v3) != 2) || (v4 = AppleBCMWLANSkywalkTxSubmissionQueue::getInterface(this), (*(*v4 + 1064))(v4)))
  {
    *(*(this + 11) + 32) = 1;
    v5 = AppleBCMWLANSkywalkTxSubmissionQueue::getInterface(this);
    InterfaceId = IO80211SkywalkInterface::getInterfaceId(v5);
    v7 = (*(**(*(this + 11) + 16) + 1104))();
    if (InterfaceId == AppleBCMWLANCore::getProximityInterfaceId(v7))
    {
      v8 = *(*(this + 11) + 16);
      if (v8)
      {
        v9 = (*(*v8 + 1104))(v8);
        if (v9)
        {
          if (AppleBCMWLANCore::isLlwRequeueEnabled(v9))
          {
            *(*(this + 11) + 192) = IOMallocZeroTyped();
          }
        }
      }
    }

    AppleBCMWLANSkywalkTxSubmissionQueue::enable(this);
  }

  result = (*(*this + 288))(this);
  if (result)
  {
    (*(*this + 288))(this);
    result = CCLogStream::shouldLog();
    if (result)
    {
      return AppleBCMWLANPCIeSkywalkTxSubmissionQueue::enable(this);
    }
  }

  return result;
}

uint64_t AppleBCMWLANPCIeSkywalkTxSubmissionQueue::disable(AppleBCMWLANPCIeSkywalkTxSubmissionQueue *this)
{
  *(*(this + 11) + 32) = 0;
  v2 = *(*(this + 11) + 192);
  if (v2)
  {
    IOFree(v2, 0x400uLL);
    *(*(this + 11) + 192) = 0;
  }

  if ((*(*this + 288))(this))
  {
    (*(*this + 288))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANPCIeSkywalkTxSubmissionQueue::disable(this);
    }
  }

  return AppleBCMWLANSkywalkTxSubmissionQueue::disable(this);
}

void *AppleBCMWLANPCIeSkywalkTxSubmissionQueue::clearFWRings(AppleBCMWLANPCIeSkywalkTxSubmissionQueue *this)
{
  if ((*(*this + 288))(this))
  {
    (*(*this + 288))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANPCIeSkywalkTxSubmissionQueue::clearFWRings(this);
    }
  }

  Interface = AppleBCMWLANSkywalkTxSubmissionQueue::getInterface(this);
  result = IO80211SkywalkInterface::getInterfaceId(Interface);
  if (result != -1)
  {
    for (i = 40; i != 168; i += 8)
    {
      result = *(*(this + 11) + i);
      if (result)
      {
        AppleBCMWLANPCIeFlowQueue::setFWRing(result, 0);
        (*(**(*(this + 11) + i) + 144))(*(*(this + 11) + i));
        result = *(*(this + 11) + i);
        if (result)
        {
          result = (*(*result + 16))(result);
          *(*(this + 11) + i) = 0;
        }
      }
    }

    *(*(this + 11) + 168) = 0;
  }

  return result;
}

uint64_t AppleBCMWLANPCIeSkywalkTxSubmissionQueue::clearFWRing(AppleBCMWLANPCIeSkywalkTxSubmissionQueue *this, unsigned __int8 *a2)
{
  v4 = this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000;
  if ((*(*this + 288))(this))
  {
    (*(*this + 288))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANPCIeSkywalkTxSubmissionQueue::clearFWRing(this);
    }
  }

  v5 = 5;
  while (1)
  {
    v6 = *(*(this + 11) + 8 * v5);
    if (v6)
    {
      Destination = AppleBCMWLANPCIeFlowQueue::getDestination(v6);
      if (*Destination == *a2 && *(Destination + 4) == *(a2 + 2))
      {
        break;
      }
    }

    if (++v5 == 21)
    {
      goto LABEL_18;
    }
  }

  if ((*(*this + 288))(this))
  {
    (*(*this + 288))(this);
    if (CCLogStream::shouldLog())
    {
      v13 = (*(*this + 288))(this);
      v14 = *AppleBCMWLANPCIeFlowQueue::getDestination(*(*(this + 11) + 8 * v5));
      v15 = *(AppleBCMWLANPCIeFlowQueue::getDestination(*(*(this + 11) + 8 * v5)) + 1);
      v16 = *(AppleBCMWLANPCIeFlowQueue::getDestination(*(*(this + 11) + 8 * v5)) + 2);
      v17 = *(AppleBCMWLANPCIeFlowQueue::getDestination(*(*(this + 11) + 8 * v5)) + 3);
      v18 = *(AppleBCMWLANPCIeFlowQueue::getDestination(*(*(this + 11) + 8 * v5)) + 4);
      v19 = AppleBCMWLANPCIeFlowQueue::getDestination(*(*(this + 11) + 8 * v5));
      CCLogStream::logInfo(v13, "[dk] %s@%d:index %d addr :%02x:%02x:%02x:%02x:%02x:%02x\n", "clearFWRing", 223, v5 - 5, v14, v15, v16, v17, v18, *(v19 + 5));
    }
  }

  AppleBCMWLANPCIeFlowQueue::setFWRing(*(*(this + 11) + 8 * v5), 0);
  v9 = *(*(this + 11) + 8 * v5);
  (*(*v9 + 144))(v9);
  v10 = *(this + 11);
  v11 = *(v10 + 8 * v5);
  if (v11)
  {
    (*(*v11 + 16))(v11);
    *(*(this + 11) + 8 * v5) = 0;
    v10 = *(this + 11);
  }

  --*(v10 + 168);
LABEL_18:
  result = (*(*this + 288))(this);
  if (result)
  {
    (*(*this + 288))(this);
    result = CCLogStream::shouldLog();
    if (result)
    {
      return AppleBCMWLANPCIeSkywalkTxSubmissionQueue::clearFWRing(this, v4, this + 88);
    }
  }

  return result;
}

void AppleBCMWLANPCIeSkywalkTxSubmissionQueue::free(IOUserNetworkTxSubmissionQueue *this)
{
  if (this[1].IOUserNetworkPacketQueue::OSObject::OSObjectInterface::__vftable)
  {
    if ((this->IOUserNetworkPacketQueue::OSObject::OSMetaClassBase::__vftable[2].SetPacketDirection)(this))
    {
      (this->IOUserNetworkPacketQueue::OSObject::OSMetaClassBase::__vftable[2].SetPacketDirection)(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANPCIeSkywalkTxSubmissionQueue::free(this);
      }
    }

    v2 = this[1].IOUserNetworkPacketQueue::OSObject::OSObjectInterface::__vftable;
    init = v2[1].init;
    if (init)
    {
      (*(*init + 16))(init);
      this[1].IOUserNetworkPacketQueue::OSObject::OSObjectInterface::__vftable[1].init = 0;
      v2 = this[1].IOUserNetworkPacketQueue::OSObject::OSObjectInterface::__vftable;
    }

    if (v2->init)
    {
      (*(*v2->init + 16))(v2->init);
      this[1].init = 0;
      v2 = this[1].IOUserNetworkPacketQueue::OSObject::OSObjectInterface::__vftable;
    }

    free = v2[1].free;
    if (free)
    {
      (*(*free + 16))(free);
      this[1].IOUserNetworkPacketQueue::OSObject::OSObjectInterface::__vftable[1].free = 0;
      v2 = this[1].IOUserNetworkPacketQueue::OSObject::OSObjectInterface::__vftable;
    }

    v2[27].init = 0;
    v2[25] = 0u;
    v2[26] = 0u;
    v2[23] = 0u;
    v2[24] = 0u;
    v2[21] = 0u;
    v2[22] = 0u;
    v2[19] = 0u;
    v2[20] = 0u;
    v2[17] = 0u;
    v2[18] = 0u;
    v2[15] = 0u;
    v2[16] = 0u;
    v2[13] = 0u;
    v2[14] = 0u;
    v2[11] = 0u;
    v2[12] = 0u;
    v2[9] = 0u;
    v2[10] = 0u;
    v2[7] = 0u;
    v2[8] = 0u;
    v2[5] = 0u;
    v2[6] = 0u;
    v2[3] = 0u;
    v2[4] = 0u;
    v2[1] = 0u;
    v2[2] = 0u;
    *v2 = 0u;
    v5 = this[1].IOUserNetworkPacketQueue::OSObject::OSObjectInterface::__vftable;
    if (v5)
    {
      IOFree(v5, 0x1B8uLL);
      this[1].IOUserNetworkPacketQueue::OSObject::OSObjectInterface::__vftable = 0;
    }
  }

  AppleBCMWLANSkywalkTxSubmissionQueue::free(this);
}

BOOL AppleBCMWLANPCIeSkywalkTxSubmissionQueue::dupAndTransmitMcastPacket(AppleBCMWLANPCIeSkywalkTxSubmissionQueue *this, IO80211NetworkPacket *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v13 = 0;
  AppleBCMWLANPCIeSkywalkPacketPool::duplicatePacket(*(*(this + 11) + 24), a2, &v13);
  v7 = v13;
  if (v13)
  {
    v14 = v13;
    v8 = (*(*v13 + 480))(v13);
    v9 = v8 + IO80211NetworkPacket::getHeadroom(v13);
    v10 = *a3;
    *(v9 + 4) = *(a3 + 2);
    *v9 = v10;
    LOWORD(v10) = *(a4 + 2);
    *(v9 + 6) = *a4;
    *(v9 + 10) = v10;
    Scratch = AppleBCMWLANPCIeSkywalkPacket::getScratch(v13);
    *(Scratch + 40) |= 0x40u;
    if ((*(*this + 176))(this, this, &v14, 1, 0) != 1)
    {
      if ((*(*this + 288))(this))
      {
        (*(*this + 288))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANPCIeSkywalkTxSubmissionQueue::dupAndTransmitMcastPacket(this);
        }
      }
    }
  }

  else
  {
    IOLog("Failed to dup packet\n");
  }

  return v7 != 0;
}

uint64_t AppleBCMWLANPCIeSkywalkTxSubmissionQueue::freeMulticastPacket(AppleBCMWLANPCIeSkywalkTxSubmissionQueue *this, IO80211NetworkPacket *a2)
{
  *(AppleBCMWLANPCIeSkywalkPacket::getScratch(a2) + 40) = 0;
  AppleBCMWLANPCIeSkywalkPacketPool::deallocatePacket(*(*(this + 11) + 24), a2);
  return 1;
}

uint64_t non-virtual thunk toAppleBCMWLANPCIeSkywalkTxSubmissionQueue::freeMulticastPacket(AppleBCMWLANPCIeSkywalkTxSubmissionQueue *this, IO80211NetworkPacket *a2)
{
  *(AppleBCMWLANPCIeSkywalkPacket::getScratch(a2) + 40) = 0;
  AppleBCMWLANPCIeSkywalkPacketPool::deallocatePacket(*(*(this + 2) + 24), a2);
  return 1;
}

uint64_t AppleBCMWLANPCIeSkywalkTxSubmissionQueue::forwardPacket(AppleBCMWLANPCIeSkywalkTxSubmissionQueue *this, IO80211NetworkPacket *a2)
{
  v5 = 0;
  AppleBCMWLANPCIeSkywalkPacketPool::duplicatePacket(*(*(this + 11) + 24), a2, &v5);
  if (v5)
  {
    v3 = (v5->OSObject::OSMetaClassBase::__vftable[1].getDataLength)(v5);
    if (*(v3 + (v5->getDataOffset)(v5)))
    {
      IOUserNetworkPacket::setIsLinkMulticast(v5, 1);
    }

    v6 = v5;
    return (*(*this + 176))(this, this, &v6, 1, 0);
  }

  else
  {
    IOLog("Failed to dup packet\n");
    return 0;
  }
}

uint64_t *AppleBCMWLANPCIeSkywalkTxSubmissionQueue::signalTxPendingFlowQueue(uint64_t *this)
{
  v1 = this;
  v2 = this[11];
  if (*(v2 + 376))
  {
    v3 = 31;
    do
    {
      v4 = *(v2 + 8 * v3);
      if (v4)
      {
        AppleBCMWLANPCIeFlowQueue::requestPendingPackets(*(v2 + 8 * v3));
        this = (*(*v4 + 144))(v4);
      }

      else
      {
        this = (*(*v1 + 288))(v1);
        if (this)
        {
          (*(*v1 + 288))(v1);
          this = CCLogStream::shouldLog();
          if (this)
          {
            this = AppleBCMWLANPCIeSkywalkTxSubmissionQueue::signalTxPendingFlowQueue(v1);
          }
        }
      }

      *(v1[11] + 8 * v3) = 0;
      v2 = v1[11];
      v5 = v3 - 30;
      ++v3;
    }

    while (v5 < *(v2 + 376));
  }

  *(v2 + 376) = 0;
  *(v1[11] + 380) = 0;
  return this;
}

BOOL AppleBCMWLANPCIeSkywalkTxSubmissionQueue::validateMacAddr(AppleBCMWLANPCIeSkywalkTxSubmissionQueue *this, AppleBCMWLANPCIeSkywalkPacket *a2, AppleBCMWLANSkywalkInterface *a3)
{
  v5 = (*(*a3 + 1072))(a3);
  v6 = (*(*a2 + 480))(a2);
  v7 = v6 + IO80211NetworkPacket::getHeadroom(a2);
  v8 = *(v7 + 6) ^ v5 | *(v7 + 10) ^ WORD2(v5);
  if (v8)
  {
    if (*(*(this + 11) + 432) == 2)
    {
      if ((*(*this + 288))(this))
      {
        (*(*this + 288))(this);
        if (CCLogStream::shouldLog())
        {
          v10 = (*(*this + 288))(this);
          CCLogStream::logAlert(v10, "[dk] %s@%d:Mac adress mismatch local %02x:%02x:%02x:%02x:%02x:%02x  packet %02x:%02x:%02x:%02x:%02x:%02x \n", "validateMacAddr", 1400, v5, BYTE1(v5), BYTE2(v5), BYTE3(v5), BYTE4(v5), BYTE5(v5), *(v7 + 6), *(v7 + 7), *(v7 + 8), *(v7 + 9), *(v7 + 10), *(v7 + 11));
        }
      }
    }
  }

  return v8 != 0;
}

uint64_t AppleBCMWLANPCIeSkywalkTxSubmissionQueue::dequeueSoftAPLLWPacket(AppleBCMWLANPCIeSkywalkTxSubmissionQueue *this, AppleBCMWLANPCIeSkywalkPacket *a2)
{
  Interface = AppleBCMWLANSkywalkTxSubmissionQueue::getInterface(this);
  if (((*(*Interface + 1064))(Interface) & 1) == 0)
  {
    v19 = 3758097112;
    if ((*(*this + 288))(this))
    {
      (*(*this + 288))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANPCIeSkywalkTxSubmissionQueue::dequeueSoftAPLLWPacket(this);
        return 3758097112;
      }
    }

    return v19;
  }

  v5 = AppleBCMWLANSkywalkTxSubmissionQueue::getInterface(this);
  if (IO80211SkywalkInterface::getInterfaceId(v5) == -1)
  {
    if ((*(*this + 288))(this))
    {
      (*(*this + 288))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANPCIeSkywalkTxSubmissionQueue::dequeueSoftAPLLWPacket(this);
      }
    }

    return 3758096385;
  }

  v6 = AppleBCMWLANSkywalkTxSubmissionQueue::getInterface(this);
  if (IO80211SkywalkInterface::getInterfaceId(v6) == 9 || (v7 = AppleBCMWLANSkywalkTxSubmissionQueue::getInterface(this), IO80211SkywalkInterface::getInterfaceId(v7) == 10) || (v8 = AppleBCMWLANSkywalkTxSubmissionQueue::getInterface(this), IO80211SkywalkInterface::getInterfaceId(v8) == 11))
  {
    v9 = AppleBCMWLANSkywalkTxSubmissionQueue::getInterface(this);
    ParentInterface = IO80211SkywalkInterface::getParentInterface(v9);
    if (ParentInterface)
    {
      v11 = ParentInterface;
      if (IO80211SkywalkInterface::getInterfaceId(ParentInterface) == -1 || ((*(*v11 + 664))(v11) & 1) == 0)
      {
        if ((*(*this + 288))(this))
        {
          (*(*this + 288))(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANPCIeSkywalkTxSubmissionQueue::dequeueSoftAPLLWPacket(this, this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, v11);
          }
        }

        return 3758096385;
      }
    }
  }

  v12 = this + 88;
  v13 = (*(**(*(this + 11) + 16) + 1104))(*(*(this + 11) + 16));
  if ((*(*a2 + 296))(a2))
  {
    v14 = AppleBCMWLANSkywalkTxSubmissionQueue::getInterface(this);
    v15 = (*(*v14 + 1160))(v14);
    v16 = OSMetaClassBase::safeMetaCast(v15, gAppleBCMWLANPCIeSkywalkMulticastQueueMetaClass);
    v17 = AppleBCMWLANSkywalkTxSubmissionQueue::getInterface(this);
    Scratch = AppleBCMWLANPCIeSkywalkPacket::getScratch(a2);
    (*(*v17 + 600))(v17, a2, Scratch, 0, 0);
    if (v16)
    {
      AppleBCMWLANPCIeSkywalkMulticastQueue::enqueuePacket(v16, a2, 1);
      v19 = 0;
      ++*(*v12 + 204);
    }

    else
    {
      return 3758097095;
    }
  }

  else
  {
    v21 = (*(*a2 + 480))(a2);
    v22 = 0;
    v23 = (v21 + IO80211NetworkPacket::getHeadroom(a2));
    v24 = -1;
    do
    {
      v25 = *(*v12 + 8 * v22 + 40);
      if (v25)
      {
        Destination = AppleBCMWLANPCIeFlowQueue::getDestination(v25);
        if (*Destination == *v23 && *(Destination + 4) == *(v23 + 2))
        {
          LOWORD(v24) = v22;
LABEL_48:
          if (v13)
          {
            if ((AppleBCMWLANCore::isP2pAirplayActive(v13) & 1) != 0 || (v37 = AppleBCMWLANSkywalkTxSubmissionQueue::getInterface(this), IO80211SkywalkInterface::isLowLatencyEnabled(v37)))
            {
              v45 = mach_absolute_time();
              absolutetime_to_nanoseconds();
              v45 /= 0x3E8uLL;
              if (AppleBCMWLANCore::isLlwRequeueEnabled(v13))
              {
                v38 = AppleBCMWLANSkywalkTxSubmissionQueue::getInterface(this);
                InterfaceId = IO80211SkywalkInterface::getInterfaceId(v38);
                if (InterfaceId == AppleBCMWLANCore::getProximityInterfaceId(v13))
                {
                  v44 = 0;
                  if (!(*(*a2 + 352))(a2, &v44))
                  {
                    absolutetime_to_nanoseconds();
                    AppleBCMWLANPCIeSkywalkPacket::setPktRemainingLifeTime(a2, 0);
                  }

                  AppleBCMWLANPCIeSkywalkPacket::setFlowQueueIdx(a2, v24);
                }
              }

              (*(*a2 + 496))(a2, v45);
            }
          }

          ++*(*(this + 11) + 212);
          *(*(this + 11) + v24 + 220) = 1;
          AppleBCMWLANPCIeFlowQueue::enqueuePacket(*(*(this + 11) + 8 * v24 + 40), a2, 1);
          v40 = AppleBCMWLANSkywalkTxSubmissionQueue::getInterface(this);
          v41 = AppleBCMWLANPCIeSkywalkPacket::getScratch(a2);
          (*(*v40 + 600))(v40, a2, v41, *(*(this + 11) + 184), 1);
          v42 = AppleBCMWLANPCIeSkywalkPacket::getScratch(a2);
          v19 = 0;
          *(v42 + 40) |= 0x20u;
          return v19;
        }
      }

      else if ((v24 & 0x80000000) != 0)
      {
        v24 = v22;
      }

      ++v22;
    }

    while (v22 != 16);
    if (v24 > 0xF || *(*v12 + 168) > 0xFu)
    {
      v19 = 3758097086;
      if ((*(*this + 288))(this))
      {
        (*(*this + 288))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANPCIeSkywalkTxSubmissionQueue::dequeueSoftAPLLWPacket(this, this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, v23, this + 11);
        }
      }
    }

    else
    {
      if ((*v23 & 1) != 0 || (v28 = AppleBCMWLANSkywalkTxSubmissionQueue::getInterface(this), (*(*v28 + 1032))(v28, v23)))
      {
        if ((*(*this + 288))(this))
        {
          (*(*this + 288))(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANPCIeSkywalkTxSubmissionQueue::dequeueSoftAPLLWPacket(this, this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, this + 11, v23);
          }
        }

        v29 = *v23;
        v30 = v23[1];
        v31 = *(v23 + 2) << 16;
        if ((*(*this + 288))(this))
        {
          (*(*this + 288))(this);
          if (CCLogStream::shouldLog())
          {
            v43 = (*(*this + 288))(this);
            CCLogStream::logAlert(v43, "[dk] %s@%d:%s %u for peer %02x:%02x:%02x:%02x:%02x:%02x flow queue count %u\n", "dequeueSoftAPLLWPacket", 495, "IOReturn AppleBCMWLANPCIeSkywalkTxSubmissionQueue::dequeueSoftAPLLWPacket(AppleBCMWLANPCIeSkywalkPacket *)", v24, *v23, v23[1], v23[2], v23[3], v23[4], v23[5], *(*(this + 11) + 168));
          }
        }

        v32 = *(this + 11);
        v33 = *(v32 + 16);
        v34 = *(v32 + 184);
        v35 = AppleBCMWLANSkywalkTxSubmissionQueue::getInterface(this);
        *(*(this + 11) + 8 * v24 + 40) = AppleBCMWLANPCIeFlowQueue::withProviderAndQueueInfo(v33, v29 | (v30 << 8) | v31, v34, v35, **(this + 11), *(*(this + 11) + 8));
        v36 = *(*(this + 11) + 8 * v24 + 40);
        (*(*v36 + 136))(v36);
        ++*(*(this + 11) + 168);
        goto LABEL_48;
      }

      v19 = 3758097136;
      if ((*(*this + 288))(this))
      {
        (*(*this + 288))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANPCIeSkywalkTxSubmissionQueue::dequeueSoftAPLLWPacket(this);
          return 3758097136;
        }
      }
    }
  }

  return v19;
}

IO80211FlowQueue *AppleBCMWLANPCIeSkywalkTxSubmissionQueue::findOrCreateFlowQueue(AppleBCMWLANSkywalkTxSubmissionQueue *this, void *a2)
{
  v4 = *(this + 11);
  if (*(v4 + 376))
  {
    v5 = 0;
    v6 = *(v4 + 380);
    do
    {
      v7 = *(v4 + 8 * v6 + 248);
      if (IO80211FlowQueue::getHash(v7) == *a2)
      {
        *(*(this + 11) + 380) = v6;
        return v7;
      }

      v4 = *(this + 11);
      v8 = *(v4 + 376);
      if (v6 >= 1)
      {
        v9 = v6;
      }

      else
      {
        v9 = *(v4 + 376);
      }

      v6 = v9 - 1;
      ++v5;
    }

    while (v5 < v8);
    if (v8 >= 0x10)
    {
      AppleBCMWLANPCIeSkywalkTxSubmissionQueue::signalTxPendingFlowQueue(this);
    }
  }

  Interface = AppleBCMWLANSkywalkTxSubmissionQueue::getInterface(this);
  v11 = (*(*Interface + 928))(Interface, *a2);
  v7 = v11;
  if (v11)
  {
    *(*(this + 11) + 380) = *(*(this + 11) + 376);
    v12 = *(this + 11);
    v13 = *(v12 + 376);
    *(v12 + 376) = v13 + 1;
    *(v12 + 8 * v13 + 248) = v11;
    (*(*v11 + 136))(v11);
  }

  return v7;
}

uint64_t AppleBCMWLANPCIeSkywalkTxSubmissionQueue::dequeueAWDLNANPacket(AppleBCMWLANPCIeSkywalkTxSubmissionQueue *this, AppleBCMWLANPCIeSkywalkPacket *a2)
{
  Interface = AppleBCMWLANSkywalkTxSubmissionQueue::getInterface(this);
  InterfaceRole = IO80211SkywalkInterface::getInterfaceRole(Interface);
  *&v54[1] = 0;
  v6 = *AppleBCMWLANSkywalkTxSubmissionQueue::getInterface(this);
  if (((*(v6 + 1064))() & 1) == 0)
  {
    if (!(*(*this + 288))(this))
    {
      return 3758097112;
    }

    (*(*this + 288))(this);
    v9 = 3758097112;
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANPCIeSkywalkTxSubmissionQueue::dequeueAWDLNANPacket(this);
    }

    return v9;
  }

  v7 = AppleBCMWLANSkywalkTxSubmissionQueue::getInterface(this);
  if (IO80211SkywalkInterface::getInterfaceId(v7) == -1 || (v8 = AppleBCMWLANSkywalkTxSubmissionQueue::getInterface(this), ((*(*v8 + 664))(v8) & 1) == 0))
  {
    if ((*(*this + 288))(this))
    {
      (*(*this + 288))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANPCIeSkywalkTxSubmissionQueue::dequeueAWDLNANPacket(this);
      }
    }

    return 3758096385;
  }

  v9 = 3758097088;
  if (InterfaceRole == 10)
  {
    v22 = AppleBCMWLANSkywalkTxSubmissionQueue::getInterface(this);
    v23 = OSMetaClassBase::safeMetaCast(v22, gIO80211VirtualInterfaceMetaClass);
    if (v23)
    {
      v24 = v23;
      Headroom = IO80211NetworkPacket::getHeadroom(a2);
      v26 = (*(*a2 + 224))(a2);
      v27 = Headroom;
      v28 = ((*(*a2 + 480))(a2) + Headroom);
      if (*v28)
      {
        ++*(*(this + 11) + 204);
        if (IO80211VirtualInterface::handleMulticastTransmit(v24, a2, v28, v26, v27))
        {
          return 3758097095;
        }

        else
        {
          return 0;
        }
      }

      LODWORD(v55) = 0;
      v54[0] = 0;
      Scratch = AppleBCMWLANPCIeSkywalkPacket::getScratch(a2);
      if ((*(Scratch + 40) & 0x40) != 0)
      {
        *(Scratch + 40) &= ~0x40u;
        goto LABEL_47;
      }

      if (IO80211VirtualInterface::modifyUnicastPacket(v24, v28, v26, v27, &v55, v54))
      {
        (*(*a2 + 232))(a2, v54[0]);
        (*(*a2 + 216))(a2, v55);
        IO80211NetworkPacket::setLinkHeaderOffset(a2, v54[0]);
        v27 = v54[0];
        ++*(*(this + 11) + 212);
LABEL_47:
        v17 = (*(*a2 + 480))(a2) + v27;
        *&v54[3] = *v17;
        *&v54[7] = *(v17 + 4);
        v54[2] = *(*(this + 11) + 184);
        v36 = AppleBCMWLANSkywalkTxSubmissionQueue::getInterface(this);
        v54[1] = IO80211SkywalkInterface::getInterfaceId(v36);
LABEL_48:
        FlowQueue = AppleBCMWLANPCIeSkywalkTxSubmissionQueue::findOrCreateFlowQueue(this, &v54[1]);
        if (FlowQueue)
        {
          v38 = FlowQueue;
          v39 = AppleBCMWLANSkywalkTxSubmissionQueue::getInterface(this);
          v40 = AppleBCMWLANPCIeSkywalkPacket::getScratch(a2);
          (*(*v39 + 640))(v39, a2, v40, v17, *(*(this + 11) + 184), 1);
          v41 = v38;
LABEL_53:
          AppleBCMWLANPCIeFlowQueue::enqueuePacket(v41, a2, 1);
          return 0;
        }

        return v9;
      }

      if ((*(*this + 288))(this))
      {
        (*(*this + 288))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANPCIeSkywalkTxSubmissionQueue::dequeueAWDLNANPacket(this);
        }
      }
    }

    else
    {
      IOLog("%s[%d] :: ERROR ! Could not insert Snap Header, discarding packet\n", "dequeueAWDLNANPacket", 778);
    }

    return 3758097095;
  }

  if (InterfaceRole == 9)
  {
    v16 = IO80211NetworkPacket::getHeadroom(a2);
    v17 = (*(*a2 + 480))(a2) + v16;
    *&v54[3] = *v17;
    *&v54[7] = *(v17 + 4);
    v54[2] = *(*(this + 11) + 184);
    v18 = AppleBCMWLANSkywalkTxSubmissionQueue::getInterface(this);
    v54[1] = IO80211SkywalkInterface::getInterfaceId(v18);
    v19 = (*(**(*(this + 11) + 16) + 1104))();
    if ((*(*a2 + 296))(a2))
    {
      GCRMACAddress = AppleBCMWLANCore::getGCRMACAddress(v19);
      WORD2(v55) = WORD2(GCRMACAddress);
      if (*&v54[3] != GCRMACAddress || *&v54[7] != WORD2(GCRMACAddress))
      {
        return 3758097086;
      }

      v30 = 204;
    }

    else
    {
      v30 = 212;
    }

    ++*(*(this + 11) + v30);
    goto LABEL_48;
  }

  if (InterfaceRole != 6)
  {
    return 3758097098;
  }

  if (!AppleBCMWLANSkywalkTxSubmissionQueue::getInterface(this))
  {
    if ((*(*this + 288))(this))
    {
      (*(*this + 288))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANPCIeSkywalkTxSubmissionQueue::dequeueAWDLNANPacket(this);
      }
    }

    return v9;
  }

  v10 = IO80211NetworkPacket::getHeadroom(a2);
  v11 = (*(*a2 + 480))(a2) + v10;
  v12 = AppleBCMWLANPCIeSkywalkPacket::getScratch(a2);
  v13 = v12;
  v14 = *v11;
  if (*v11)
  {
    v31 = *(v12 + 40);
    if ((v31 & 0x80000000) == 0)
    {
      v32 = AppleBCMWLANSkywalkTxSubmissionQueue::getInterface(this);
      v33 = OSMetaClassBase::safeMetaCast(v32, gIO80211VirtualInterfaceMetaClass);
      ++*(*(this + 11) + 204);
      if (v33)
      {
        v34 = v33;
        v55 = 0;
        *(v13 + 40) |= 0x80u;
        AppleBCMWLANPCIeSkywalkPacketPool::duplicatePacket(*(*(this + 11) + 24), a2, &v55);
        if (v55)
        {
          AppleBCMWLANPCIeSkywalkPacket::getScratch(v55);
          v35 = AppleBCMWLANPCIeSkywalkPacket::getScratch(v55);
          *(v35 + 40) |= 0x80u;
        }

        else if ((*(*this + 288))(this))
        {
          (*(*this + 288))(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANPCIeSkywalkTxSubmissionQueue::dequeueAWDLNANPacket(this);
          }
        }

        IO80211VirtualInterface::stashMulticastPacketPair(v34, a2, v55);
        return 0;
      }

      if ((*(*this + 288))(this))
      {
        (*(*this + 288))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANPCIeSkywalkTxSubmissionQueue::dequeueAWDLNANPacket(this);
        }
      }

      return v9;
    }

    *&v54[7] = -1;
    *&v54[3] = -1;
    v54[2] = 0;
    *(v12 + 40) = v31 & 0x7F;
  }

  else
  {
    ++*(*(this + 11) + 212);
    *&v54[3] = *v11;
    *&v54[7] = *(v11 + 4);
    v54[2] = *(*(this + 11) + 184);
  }

  v42 = AppleBCMWLANSkywalkTxSubmissionQueue::getInterface(this);
  v54[1] = IO80211SkywalkInterface::getInterfaceId(v42);
  v43 = AppleBCMWLANPCIeSkywalkTxSubmissionQueue::findOrCreateFlowQueue(this, &v54[1]);
  if (v43)
  {
    v44 = v43;
    v45 = (v14 & 1) == 0;
    v46 = (*(*a2 + 224))(a2);
    v47 = v10 - 16;
    v48 = (*(*a2 + 480))(a2) + (v10 - 16);
    v49 = *(v11 + 12);
    v50 = *v11;
    v51 = *(v11 + 8);
    *(v13 + 2) = 0;
    IO80211NetworkPacket::setHeadroom(a2, v47);
    *v48 = v50;
    *(v48 + 8) = v51;
    *(v48 + 12) = bswap32(v46 + 2) >> 16;
    *(v48 + 22) = 1027;
    *(v48 + 14) = 0x8F2170003AAAALL;
    *(v48 + 26) = 0;
    *(v48 + 28) = v49;
    *(v48 + 24) = AppleBCMWLANPCIeFlowQueue::getSequenceNumber(v44) & 0xFFF | (*(*(this + 11) + 184) << 12);
    (*(*a2 + 232))(a2, v47);
    (*(*a2 + 216))(a2, (v46 + 16));
    IO80211NetworkPacket::setLinkHeaderOffset(a2, v47);
    v52 = AppleBCMWLANSkywalkTxSubmissionQueue::getInterface(this);
    v53 = AppleBCMWLANPCIeSkywalkPacket::getScratch(a2);
    (*(*v52 + 640))(v52, a2, v53, v48, *(*(this + 11) + 184), v45);
    v41 = v44;
    goto LABEL_53;
  }

  return v9;
}

uint64_t AppleBCMWLANPCIeSkywalkTxSubmissionQueue::dequeuePackets(AppleBCMWLANPCIeSkywalkTxSubmissionQueue *this, OSObject *a2, IO80211NetworkPacket **a3, uint64_t a4, void *a5)
{
  Interface = AppleBCMWLANSkywalkTxSubmissionQueue::getInterface(this);
  InterfaceRole = IO80211SkywalkInterface::getInterfaceRole(Interface);
  v10 = this + 88;
  v11 = (*(**(*(this + 11) + 240) + 144))(*(*(this + 11) + 240));
  memset(v40, 170, sizeof(v40));
  if (InterfaceRole == 1)
  {
    v12 = AppleBCMWLANSkywalkTxSubmissionQueue::getInterface(this);
    (*(*v12 + 976))(v12, 0x200000000000);
  }

  *(*v10 + 416) = mach_continuous_time();
  *(*v10 + 384) += a4;
  *(*v10 + 408) = 0;
  if (!v11 || !AppleBCMWLANSkywalkTxSubmissionQueue::getInterface(this))
  {
    return 0;
  }

  v13 = a4;
  v14 = *v10;
  *(v14 + 220) = 0u;
  *(v14 + 204) = 0u;
  if (fKernelTraceEnabled)
  {
    AppleBCMWLANPCIeSkywalkTxSubmissionQueue::dequeuePackets(this + 88, this);
    if (a4)
    {
      goto LABEL_7;
    }
  }

  else if (a4)
  {
LABEL_7:
    a4 = 0;
    v15 = 0;
    while (1)
    {
      v16 = OSMetaClassBase::safeMetaCast(a3[a4], gAppleBCMWLANPCIeSkywalkPacketMetaClass);
      if (!v16)
      {
        break;
      }

      v17 = v16;
      if ((AppleBCMWLANPCIeSkywalkPacket::getPktDup(v16) & 1) == 0)
      {
        v18.n128_f64[0] = AppleBCMWLANPCIeSkywalkPacket::prepare(v17);
      }

      *(*v10 + 216) += (*(*v17 + 224))(v17, v18);
      if (InterfaceRole <= 0xA)
      {
        if (((1 << InterfaceRole) & 0xBC) != 0)
        {
          v19 = AppleBCMWLANPCIeSkywalkTxSubmissionQueue::dequeueSoftAPLLWPacket(this, v17);
        }

        else if (((1 << InterfaceRole) & 0x640) != 0)
        {
          v19 = AppleBCMWLANPCIeSkywalkTxSubmissionQueue::dequeueAWDLNANPacket(this, v17);
        }

        else
        {
          if (InterfaceRole != 1)
          {
            goto LABEL_17;
          }

          v19 = AppleBCMWLANPCIeSkywalkTxSubmissionQueue::dequeueInfraPacket(this, v17);
        }

        v15 = v19;
      }

LABEL_17:
      v20 = *v10;
      if (v15)
      {
        AppleBCMWLANPCIeSkywalkPacketPool::deallocatePacket(*(v20 + 24), v17);
        v21 = (*v10 + 400);
      }

      else
      {
        v21 = (v20 + 392);
      }

      ++*v21;
      if (v13 == ++a4)
      {
        a4 = v13;
        break;
      }
    }
  }

  if (!AppleBCMWLANSkywalkTxSubmissionQueue::getInterface(this))
  {
    AppleBCMWLANPCIeSkywalkTxSubmissionQueue::dequeuePackets();
  }

  if (*(*v10 + 376))
  {
    AppleBCMWLANPCIeSkywalkTxSubmissionQueue::signalTxPendingFlowQueue(this);
  }

  else
  {
    v32 = AppleBCMWLANSkywalkTxSubmissionQueue::getInterface(this);
    v33 = (*(*v32 + 1160))(v32);
    v34 = OSMetaClassBase::safeMetaCast(v33, gAppleBCMWLANPCIeSkywalkMulticastQueueMetaClass);
    v35 = *(this + 11);
    if (*(v35 + 204))
    {
      v36 = v34 == 0;
    }

    else
    {
      v36 = 1;
    }

    if (!v36)
    {
      (v34->__vftable[3].getMetaClass)(v34);
      v35 = *v10;
    }

    if (*(v35 + 208))
    {
      v37 = *(v35 + 40);
      if (v37)
      {
        AppleBCMWLANPCIeFlowQueue::requestPendingPackets(v37);
      }
    }

    else
    {
      for (i = 0; i != 16; ++i)
      {
        if (*(*v10 + i + 220) == 1)
        {
          v39 = *(*v10 + 8 * i + 40);
          if (v39)
          {
            AppleBCMWLANPCIeFlowQueue::requestPendingPackets(v39);
          }
        }
      }
    }
  }

  if (InterfaceRole == 1)
  {
    v22 = AppleBCMWLANSkywalkTxSubmissionQueue::getInterface(this);
    v23 = (*(*v22 + 728))(v22);
    AppleBCMWLANCore::addCumulativePkts(v23, *(*(this + 11) + 184), *(*(this + 11) + 208));
    v24 = *(this + 11);
    LODWORD(v40[1]) = *(v24 + 184);
    v25 = *(v24 + 416);
    v27 = *(v24 + 204);
    v26 = *(v24 + 208);
    v40[2] = v27;
    v40[3] = v25;
    v40[0] = v25;
    v28 = *AppleBCMWLANSkywalkTxSubmissionQueue::getInterface(this);
    (*(v28 + 584))();
  }

  v29 = AppleBCMWLANSkywalkTxSubmissionQueue::getInterface(this);
  v30 = *(this + 11);
  (*(*v29 + 592))(v29, v30[46], v30[53] + v30[51] + v30[52], v30[54]);
  *(*(this + 11) + 408) = a4;
  if (fKernelTraceEnabled)
  {
    AppleBCMWLANPCIeSkywalkTxSubmissionQueue::dequeuePackets(this + 88, this);
  }

  return a4;
}

unint64_t AppleBCMWLANPCIeSkywalkTxSubmissionQueue::getAvgTxCompLatency(AppleBCMWLANPCIeSkywalkTxSubmissionQueue *this, unsigned int a2, uint64_t a3)
{
  v5 = a2;
  if (a2 <= 0xF && (v6 = *(*(this + 11) + 8 * a2 + 40)) != 0)
  {
    v7 = a3;
    if (AppleBCMWLANPCIeFlowQueue::getTxCompLatency(v6))
    {
      v7 = (90 * a3 + 10 * AppleBCMWLANPCIeFlowQueue::getTxCompLatency(*(*(this + 11) + 8 * v5 + 40))) / 0x64uLL;
    }

    AppleBCMWLANPCIeFlowQueue::setTxCompLatency(*(*(this + 11) + 8 * v5 + 40), v7);
  }

  else
  {
    AppleBCMWLANPCIeSkywalkTxSubmissionQueue::getAvgTxCompLatency(this, a2, a3, &v9);
    v7 = v9;
  }

  if (fKernelTraceEnabled)
  {
    kdebug_trace();
  }

  return v7;
}

uint64_t AppleBCMWLANPCIeSkywalkTxSubmissionQueue::getRingFreeSpace(AppleBCMWLANPCIeSkywalkTxSubmissionQueue *this)
{
  if (!*(*(this + 11) + 168))
  {
    return 0;
  }

  RingFreeSpace = 0xFFFFFFFFLL;
  for (i = 40; i != 168; i += 8)
  {
    v4 = *(*(this + 11) + i);
    if (v4 && AppleBCMWLANPCIeFlowQueue::getRingFreeSpace(v4) < RingFreeSpace)
    {
      RingFreeSpace = AppleBCMWLANPCIeFlowQueue::getRingFreeSpace(*(*(this + 11) + i));
    }
  }

  return RingFreeSpace;
}

uint64_t AppleBCMWLANPCIeSkywalkTxSubmissionQueue::getPendingPacketCount(AppleBCMWLANPCIeSkywalkTxSubmissionQueue *this)
{
  v2 = 0;
  for (i = 40; i != 168; i += 8)
  {
    v4 = *(*(this + 11) + i);
    if (v4)
    {
      v2 = AppleBCMWLANPCIeFlowQueue::getPendingPacketCount(v4) + v2;
    }
  }

  return v2;
}

uint64_t non-virtual thunk toAppleBCMWLANPCIeSkywalkTxSubmissionQueue::getPendingPacketCount(AppleBCMWLANPCIeSkywalkTxSubmissionQueue *this)
{
  v2 = 0;
  for (i = 40; i != 168; i += 8)
  {
    v4 = *(*(this + 2) + i);
    if (v4)
    {
      v2 = AppleBCMWLANPCIeFlowQueue::getPendingPacketCount(v4) + v2;
    }
  }

  return v2;
}

AppleBCMWLANPCIeFlowQueue *AppleBCMWLANPCIeSkywalkTxSubmissionQueue::setFWRing(AppleBCMWLANPCIeSkywalkTxSubmissionQueue *this, AppleBCMWLANPCIeTransmitFlowRing *a2, unsigned int a3, int a4)
{
  Interface = AppleBCMWLANSkywalkTxSubmissionQueue::getInterface(this);
  InterfaceRole = IO80211SkywalkInterface::getInterfaceRole(Interface);
  v10 = this + 88;
  if (!*(this + 11))
  {
    return IOLog("AppleBCMWLANPCIeSkywalkTxSubmissionQueue::setFWRing [%p], no ivars\n", a2);
  }

  v11 = InterfaceRole;
  if ((*(*this + 288))(this))
  {
    (*(*this + 288))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANPCIeSkywalkTxSubmissionQueue::setFWRing(this, this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, this + 88, a3);
    }
  }

  if ((*(*this + 288))(this))
  {
    (*(*this + 288))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANPCIeSkywalkTxSubmissionQueue::setFWRing(this, this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, this + 88);
    }
  }

  if (v11 <= 0xA && ((1 << v11) & 0x640) != 0 && !a4)
  {
    v22 = 0;
    TransmitFlowRing = a2;
    if (!a2)
    {
      if (!AppleBCMWLANBusInterfacePCIe::isValidFlowId(*(*v10 + 16), a3))
      {
        result = (*(*this + 288))(this);
        if (result)
        {
          (*(*this + 288))(this);
          result = CCLogStream::shouldLog();
          if (result)
          {
            return AppleBCMWLANPCIeSkywalkTxSubmissionQueue::setFWRing(this);
          }
        }

        return result;
      }

      TransmitFlowRing = AppleBCMWLANBusInterfacePCIe::getTransmitFlowRing(*(*v10 + 16), a3);
    }

    (*(*TransmitFlowRing + 400))(TransmitFlowRing, &v22 + 2);
    BYTE1(v22) = *(*(this + 11) + 184);
    v15 = AppleBCMWLANSkywalkTxSubmissionQueue::getInterface(this);
    IO80211SkywalkInterface::getInterfaceId(v15);
    v16 = *AppleBCMWLANSkywalkTxSubmissionQueue::getInterface(this);
    v17 = (*(v16 + 944))();
    if (v17)
    {
      v18 = v17;
      result = AppleBCMWLANPCIeFlowQueue::setFWRing(v17, a2);
      if (a2)
      {
        result = AppleBCMWLANPCIeFlowQueue::getPacketCount(v18);
        if (result)
        {
          AppleBCMWLANPCIeFlowQueue::requestPendingPackets(v18);
          return (*(*this + 128))(this, 0, 0);
        }
      }
    }

    else
    {
      result = (*(*this + 288))(this);
      if (result)
      {
        (*(*this + 288))(this);
        result = CCLogStream::shouldLog();
        if (result)
        {
          return AppleBCMWLANPCIeSkywalkTxSubmissionQueue::setFWRing(this);
        }
      }
    }

    return result;
  }

  v12 = 5;
  while (1)
  {
    result = *(*v10 + 8 * v12);
    if (result)
    {
      result = AppleBCMWLANPCIeFlowQueue::getFlowId(result);
      if (result == a3)
      {
        break;
      }
    }

    if (++v12 == 21)
    {
      return result;
    }
  }

  if ((*(*this + 288))(this))
  {
    (*(*this + 288))(this);
    if (CCLogStream::shouldLog())
    {
      v21 = (*(*this + 288))(this);
      CCLogStream::logInfo(v21, "[dk] %s@%d:SetFWRing  FlowID:%u for peer:%u\n", "setFWRing", 1241, a3, v12 - 5);
    }
  }

  AppleBCMWLANPCIeFlowQueue::setFWRing(*(*v10 + 8 * v12), a2);
  if (a2)
  {
    v19 = *(*this + 128);

    return v19(this, 0, 0);
  }

  else
  {
    (*(**(*v10 + 8 * v12) + 144))(*(*v10 + 8 * v12));
    v20 = *v10;
    result = *(*v10 + 8 * v12);
    if (result)
    {
      result = (*(*result + 16))(result);
      *(*v10 + 8 * v12) = 0;
      v20 = *v10;
    }

    --*(v20 + 168);
  }

  return result;
}

AppleBCMWLANPCIeFlowQueue *AppleBCMWLANPCIeSkywalkTxSubmissionQueue::clearFlowIdInFlowQ(AppleBCMWLANPCIeSkywalkTxSubmissionQueue *this, int a2)
{
  if ((*(*this + 288))(this))
  {
    (*(*this + 288))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANPCIeSkywalkTxSubmissionQueue::clearFlowIdInFlowQ(this);
    }
  }

  v4 = 40;
  while (1)
  {
    result = *(*(this + 11) + v4);
    if (result)
    {
      result = AppleBCMWLANPCIeFlowQueue::getFlowId(result);
      if (result == a2)
      {
        break;
      }
    }

    v4 += 8;
    if (v4 == 168)
    {
      return result;
    }
  }

  v6 = *(*(this + 11) + v4);

  return AppleBCMWLANPCIeFlowQueue::clearFlowId(v6);
}

uint64_t AppleBCMWLANPCIeSkywalkTxSubmissionQueue::collectQueueStats(AppleBCMWLANPCIeSkywalkTxSubmissionQueue *this, char *a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  (*(*this + 288))(this);
  v10 = *(this + 11);
  v26 = *(v10 + 168);
  v28 = *(v10 + 184);
  v23 = *(v10 + 32);
  v11 = 5;
  v12 = IO80211Print() + a5;
  (*(*this + 288))(this);
  v13 = *(this + 11);
  v27 = v13[52];
  v29 = v13[53];
  v24 = v13[51];
  v14 = IO80211Print() + v12;
  (*(*this + 288))(this);
  v15 = *(this + 11);
  v30 = *(v15 + 400);
  v31 = *(v15 + 408);
  v25 = *(v15 + 384);
  v16 = IO80211Print() + v14;
  v17 = *(*(this + 11) + 416);
  absolutetime_to_nanoseconds();
  v18 = *(*(this + 11) + 424);
  absolutetime_to_nanoseconds();
  (*(*this + 288))(this);
  v19 = IO80211Print() + v16;
  (*(*this + 288))(this);
  v20 = IO80211Print() + v19;
  do
  {
    if (*(*(this + 11) + 8 * v11))
    {
      (*(*this + 288))(this);
      v21 = IO80211Print();
      v20 = AppleBCMWLANPCIeFlowQueue::collectQueueStats(*(*(this + 11) + 8 * v11), a2, a3, a4, v21 + v20);
    }

    ++v11;
  }

  while (v11 != 21);
  return AppleBCMWLANSkywalkTxSubmissionQueue::collectQueueStats(this, a2, a3, a4, v20);
}

uint64_t AppleBCMWLANPCIeSkywalkTxSubmissionQueue::getFlowIDForHash(uint64_t a1, void *a2)
{
  v4 = 40;
  while (1)
  {
    v5 = *(*(a1 + 88) + v4);
    if (v5)
    {
      if (*AppleBCMWLANPCIeFlowQueue::getFlowHash(v5) == *a2)
      {
        break;
      }
    }

    v4 += 8;
    if (v4 == 168)
    {
      return 0xFFFFLL;
    }
  }

  v7 = *(*(a1 + 88) + v4);

  return AppleBCMWLANPCIeFlowQueue::getFlowId(v7);
}

uint64_t AppleBCMWLANPCIeSkywalkTxSubmissionQueue::addPacketToRequeueList(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 88);
  v3 = *(v2 + 192);
  if (!v3)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = *(v2 + 200);
  if (v4 > 0x7F)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  *(v3 + 8 * v4) = a2;
  ++*(*(a1 + 88) + 200);
  return result;
}

uint64_t AppleBCMWLANPCIeSkywalkTxSubmissionQueue::requestDequeue(IOUserNetworkPacketQueue *this, void *a2, unsigned int a3)
{
  *(this[1].ivars + 53) = mach_continuous_time();

  return AppleBCMWLANSkywalkTxSubmissionQueue::requestDequeue(this, a2, a3);
}

uint64_t non-virtual thunk toAppleBCMWLANPCIeSkywalkTxSubmissionQueue::requestDequeue(AppleBCMWLANPCIeSkywalkTxSubmissionQueue *this, void *a2, unsigned int a3)
{
  v5 = (this - 40);
  *(*(this + 6) + 424) = mach_continuous_time();

  return AppleBCMWLANSkywalkTxSubmissionQueue::requestDequeue(v5, a2, a3);
}

void OUTLINED_FUNCTION_5_9()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
}

uint64_t OUTLINED_FUNCTION_7_9(uint64_t result, uint64_t *a2)
{
  v2 = *(*result + 184);
  v3 = *a2;
  return result;
}

OSObject *AppleBCMWLANConfigManager::withDriver(AppleBCMWLANConfigManager *this, AppleBCMWLANCore *a2, AppleBCMWLANChipImage *(*a3)(const OSObject *, unint64_t, unint64_t, unint64_t, unint64_t, unint64_t, unint64_t), int (*a4)(const OSObject *, AppleBCMWLANChipImage *), int (*a5)(const OSObject *, AppleBCMWLANChipImage *), BOOL (*a6)(const OSObject *))
{
  v13 = 0xAAAAAAAAAAAAAAAALL;
  if (OSObjectAllocate(gAppleBCMWLANConfigManagerMetaClass, &v13))
  {
    return 0;
  }

  v11 = v13;
  if (v13 && ((v13->OSMetaClassBase::__vftable[1].getMetaClass)(v13, this, a2, a3, a4, a5) & 1) == 0)
  {
    (v11->release)(v11);
    return 0;
  }

  return v11;
}

uint64_t AppleBCMWLANConfigManager::init(AppleBCMWLANConfigManager *this, AppleBCMWLANCore *a2, AppleBCMWLANChipImage *(*a3)(const OSObject *, unint64_t, unint64_t, unint64_t, unint64_t, unint64_t, unint64_t), int (*a4)(const OSObject *, AppleBCMWLANChipImage *), int (*a5)(const OSObject *, AppleBCMWLANChipImage *), BOOL (*a6)(const OSObject *))
{
  result = IOMallocZeroTyped();
  *(this + 6) = result;
  v13 = this + 48;
  if (result)
  {
    result = OSObject::init(this);
    if (result)
    {
      **v13 = a2;
      *(*v13 + 16) = (*(*a2 + 1952))(a2);
      v14 = *(*v13 + 16);
      if (!v14)
      {
        ClassNameHelper = getClassNameHelper(this);
        IOLog("%s::%s(): Unable to get debug logger\n", ClassNameHelper, "init");
        return 0;
      }

      (*(*v14 + 8))(v14);
      *(*v13 + 24) = AppleBCMWLANCore::getCommander(a2);
      v15 = *(*v13 + 24);
      if (v15)
      {
        (*(*v15 + 8))(v15);
        AppleBCMWLANConfigManager::initSaneParameters(this);
        *(*(this + 6) + 264) = AppleBCMWLANCore::getFaultReporter(**(this + 6));
        (*(**(*(this + 6) + 264) + 8))(*(*(this + 6) + 264));
        v16 = *(*(this + 6) + 264);
        getClassNameHelper(this);
        CCFaultReporter::registerCallbacks();
        *(*(this + 6) + 390) = 1;
        v17 = IOParseBootArgNumber("wlan.6GHzRoaming.enabled", (*(this + 6) + 390), 1);
        v18 = *(this + 6);
        if (v17)
        {
          v19 = *(v18 + 16);
          if (*(v18 + 390) == 1)
          {
            if (v19 && CCLogStream::shouldLog())
            {
              AppleBCMWLANConfigManager::init(this + 48);
              if (!a3)
              {
                return 0;
              }

LABEL_22:
              *(*v13 + 352) = a3;
              if (a4)
              {
                *(*v13 + 360) = a4;
                if (a5)
                {
                  *(*v13 + 368) = a5;
                  if (a6)
                  {
                    *(*v13 + 376) = a6;
                    return 1;
                  }
                }
              }

              return 0;
            }
          }

          else if (v19 && CCLogStream::shouldLog())
          {
            AppleBCMWLANConfigManager::init(this + 48);
            if (a3)
            {
              goto LABEL_22;
            }

            return 0;
          }
        }

        else if (*(v18 + 16) && CCLogStream::shouldLog())
        {
          AppleBCMWLANConfigManager::init(this + 48);
          if (!a3)
          {
            return 0;
          }

          goto LABEL_22;
        }

        if (a3)
        {
          goto LABEL_22;
        }

        return 0;
      }

      result = *(*v13 + 16);
      if (result)
      {
        result = CCLogStream::shouldLog();
        if (result)
        {
          AppleBCMWLANConfigManager::init(this + 48);
          return 0;
        }
      }
    }
  }

  return result;
}

__n128 AppleBCMWLANConfigManager::initSaneParameters(AppleBCMWLANConfigManager *this)
{
  *(*(this + 6) + 100) = 0;
  *(*(this + 6) + 102) = 90;
  *(*(this + 6) + 104) = 30;
  *(*(this + 6) + 106) = 7;
  *(*(this + 6) + 108) = 2;
  *(*(this + 6) + 110) = 0;
  *(*(this + 6) + 112) = -75;
  *(*(this + 6) + 114) = 20;
  *(*(this + 6) + 116) = -75;
  *(*(this + 6) + 118) = 20;
  v1 = *(this + 6);
  result = *(v1 + 100);
  *(v1 + 80) = result;
  *(v1 + 96) = *(v1 + 116);
  *(*(this + 6) + 48) = 3;
  *(*(this + 6) + 50) = 60;
  *(*(this + 6) + 52) = 0;
  *(*(this + 6) + 54) = 3;
  *(*(this + 6) + 56) = 4000;
  v3 = *(this + 6);
  *(v3 + 36) = *(v3 + 48);
  *(v3 + 44) = *(v3 + 56);
  *(*(this + 6) + 38) = 200;
  *(*(this + 6) + 220) = 0;
  *(*(this + 6) + 224) = 0;
  *(*(this + 6) + 388) = 0;
  *(*(this + 6) + 228) = 0;
  *(*(this + 6) + 229) = 0;
  *(*(this + 6) + 240) &= ~2u;
  *(*(this + 6) + 240) &= ~1u;
  *(*(this + 6) + 240) &= ~4u;
  *(*(this + 6) + 256) = 0;
  *(*(this + 6) + 252) = 0;
  *(*(this + 6) + 248) = 0;
  return result;
}

uint64_t AppleBCMWLANConfigManager::collectImmediateFaultDataCallback(AppleBCMWLANConfigManager *this, CCFaultReport *a2)
{
  v4 = IOMallocZeroData();
  if (v4)
  {
    v5 = v4;
    v6 = AppleBCMWLANConfigManager::dumpState(this, v4);
    if (v6 >= 0x4000)
    {
      panic("buffer overflow printed is bigger than buffer size %d >= bufferSize %d \n", v6, 0x4000);
    }

    v7 = OSString::withCString("ConfigManagerState.txt");
    v8 = OSString::withCString(v5);
    (*(*a2 + 192))(a2, v7, v8);
    IOFreeData();
  }

  return 0;
}

CCFaultReporter *AppleBCMWLANConfigManager::stop(OSObject *this)
{
  result = *(*&this[1].refcount + 264);
  if (result)
  {
    return CCFaultReporter::unregisterCallbacks(result, this);
  }

  return result;
}

uint64_t AppleBCMWLANConfigManager::freeResources(AppleBCMWLANConfigManager *this)
{
  v2 = *(this + 6);
  v3 = v2[33];
  if (v3)
  {
    (*(*v3 + 16))(v3);
    *(*(this + 6) + 264) = 0;
    v2 = *(this + 6);
  }

  v4 = v2[3];
  if (v4)
  {
    (*(*v4 + 16))(v4);
    *(*(this + 6) + 24) = 0;
    v2 = *(this + 6);
  }

  v5 = v2[1];
  if (v5)
  {
    (*(*v5 + 16))(v5);
    *(*(this + 6) + 8) = 0;
    v2 = *(this + 6);
  }

  v6 = v2[2];
  if (v6)
  {
    (*(*v6 + 16))(v6);
    *(*(this + 6) + 16) = 0;
    v2 = *(this + 6);
  }

  result = v2[24];
  if (result)
  {
    result = (*(*result + 16))(result);
    *(*(this + 6) + 192) = 0;
  }

  return result;
}

void AppleBCMWLANConfigManager::free(AppleBCMWLANConfigManager *this)
{
  AppleBCMWLANConfigManager::freeResources(this);
  OSObject::free(this);
  v2 = *(this + 6);
  if (v2)
  {
    memset_s(v2, 0x190uLL, 0, 0x190uLL);
    v3 = *(this + 6);
    if (v3)
    {
      IOFree(v3, 0x190uLL);
      *(this + 6) = 0;
    }
  }
}

uint64_t AppleBCMWLANConfigManager::dumpState(AppleBCMWLANConfigManager *this, char *a2)
{
  v3 = *(this + 6);
  v4 = *(v3 + 16);
  v108 = *(v3 + 48);
  v132 = *(v3 + 50);
  v5 = IO80211Print();
  v6 = *(this + 6);
  v7 = *(v6 + 16);
  v133 = *(v6 + 54);
  v150 = *(v6 + 56);
  v109 = *(v6 + 52);
  v8 = IO80211Print() + v5;
  v9 = *(this + 6);
  v10 = *(v9 + 16);
  v110 = *(v9 + 36);
  v134 = *(v9 + 38);
  v11 = IO80211Print() + v8;
  v12 = *(this + 6);
  v13 = *(v12 + 16);
  v135 = *(v12 + 42);
  v151 = *(v12 + 44);
  v111 = *(v12 + 40);
  v14 = IO80211Print() + v11;
  v15 = *(this + 6);
  v16 = *(v15 + 16);
  *(v15 + 32);
  v17 = IO80211Print() + v14;
  v18 = *(this + 6);
  v19 = *(v18 + 16);
  v20 = *(v18 + 192);
  if (v20)
  {
    OSString::getCStringNoCopy(v20);
  }

  v21 = IO80211Print() + v17;
  v22 = *(this + 6);
  v23 = *(v22 + 16);
  v112 = *(v22 + 72);
  v136 = *(v22 + 74);
  v24 = IO80211Print() + v21;
  v25 = *(this + 6);
  v26 = *(v25 + 16);
  v113 = *(v25 + 76);
  v137 = *(v25 + 78);
  v27 = IO80211Print() + v24;
  v28 = *(this + 6);
  v29 = *(v28 + 16);
  v138 = *(v28 + 102);
  v152 = *(v28 + 104);
  v114 = *(v28 + 100);
  v30 = IO80211Print() + v27;
  v31 = *(this + 6);
  v32 = *(v31 + 16);
  v139 = *(v31 + 108);
  v153 = *(v31 + 110);
  v115 = *(v31 + 106);
  v33 = IO80211Print() + v30;
  v34 = *(this + 6);
  v35 = *(v34 + 16);
  v116 = *(v34 + 112);
  v140 = *(v34 + 114);
  v36 = IO80211Print() + v33;
  v37 = *(this + 6);
  v38 = *(v37 + 16);
  v117 = *(v37 + 116);
  v141 = *(v37 + 118);
  v39 = IO80211Print() + v36;
  v40 = *(this + 6);
  v41 = *(v40 + 16);
  v142 = *(v40 + 82);
  v154 = *(v40 + 84);
  v118 = *(v40 + 80);
  v42 = IO80211Print() + v39;
  v43 = *(this + 6);
  v44 = *(v43 + 16);
  v143 = *(v43 + 88);
  v155 = *(v43 + 90);
  v119 = *(v43 + 86);
  v45 = IO80211Print() + v42;
  v46 = *(this + 6);
  v47 = *(v46 + 16);
  v120 = *(v46 + 92);
  v144 = *(v46 + 94);
  v48 = IO80211Print() + v45;
  v49 = *(this + 6);
  v50 = *(v49 + 16);
  v121 = *(v49 + 96);
  v145 = *(v49 + 98);
  v51 = IO80211Print() + v48;
  v52 = *(this + 6);
  v53 = *(v52 + 16);
  v54 = *(v52 + 140);
  v162 = *(v52 + 142);
  v55 = IO80211Print() + v51;
  v56 = *(this + 6);
  v57 = *(v56 + 16);
  *(v56 + 321);
  v58 = IO80211Print() + v55;
  v59 = *(this + 6);
  if (*(v59 + 175) == 1)
  {
    v60 = *(v59 + 16);
    v156 = *(v59 + 152);
    v159 = *(v59 + 154);
    v122 = *(v59 + 148);
    v146 = *(v59 + 150);
    v61 = IO80211Print() + v58;
    v62 = *(this + 6);
    v63 = *(v62 + 16);
    v123 = *(v62 + 156);
    v147 = *(v62 + 157);
    v58 = IO80211Print() + v61;
    v59 = *(this + 6);
  }

  if (*(v59 + 188) == 1)
  {
    v64 = *(v59 + 16);
    v157 = *(v59 + 162);
    v160 = *(v59 + 164);
    v124 = *(v59 + 158);
    v148 = *(v59 + 160);
    v58 += IO80211Print();
    v59 = *(this + 6);
  }

  v65 = *(v59 + 16);
  v125 = *(v59 + 224);
  v66 = IO80211Print() + v58;
  v67 = *(this + 6);
  v68 = *(v67 + 16);
  *(v67 + 228);
  v69 = IO80211Print() + v66;
  v70 = *(this + 6);
  v71 = *(v70 + 16);
  *(v70 + 229);
  v72 = IO80211Print() + v69;
  v73 = *(this + 6);
  v74 = *(v73 + 16);
  v126 = *(v73 + 232);
  v75 = IO80211Print();
  v76 = *(this + 6);
  v77 = v75 + v72;
  v78 = *(v76 + 16);
  v164 = *(v76 + 176);
  v165 = *(v76 + 200);
  v161 = *(v76 + 170);
  v163 = *(v76 + 180);
  v149 = *(v76 + 173);
  v158 = *(v76 + 174);
  v127 = *(v76 + 172);
  v79 = IO80211Print() + v77;
  v80 = *(this + 6);
  v81 = *(v80 + 16);
  v128 = *(v80 + 184);
  v82 = IO80211Print() + v79;
  v83 = *(this + 6);
  v84 = *(v83 + 16);
  *(v83 + 171);
  v85 = IO80211Print() + v82;
  v86 = *(this + 6);
  v87 = *(v86 + 16);
  *(v86 + 189);
  v88 = IO80211Print() + v85;
  v89 = *(this + 6);
  v90 = *(v89 + 16);
  LODWORD(v89) = *(v89 + 240);
  v91 = IO80211Print() + v88;
  v92 = *(this + 6);
  v93 = *(v92 + 16);
  *(v92 + 244);
  v94 = IO80211Print() + v91;
  v95 = *(this + 6);
  v96 = *(v95 + 16);
  *(v95 + 204);
  v97 = IO80211Print() + v94;
  v98 = *(this + 6);
  if (*(v98 + 204))
  {
    v99 = *(v98 + 16);
    v129 = *(v98 + 216);
    v100 = IO80211Print() + v97;
    v101 = *(this + 6);
    v102 = *(v101 + 16);
    v130 = *(v101 + 215);
    v97 = IO80211Print() + v100;
    v103 = *(this + 6);
    if (*(v103 + 215))
    {
      v104 = 205;
      do
      {
        v105 = *(v103 + 16);
        v131 = *(v103 + v104);
        v97 = IO80211Print() + v97;
        v103 = *(this + 6);
        v106 = v104 - 204;
        ++v104;
      }

      while (v106 < *(v103 + 215));
    }
  }

  return v97;
}

uint64_t AppleBCMWLANConfigManager::gatherParameterData(AppleBCMWLANConfigManager *this, IOService *a2)
{
  v89 = 0;
  v90 = 0;
  v88 = 0;
  v87 = 0;
  v85 = 0;
  v86 = 0;
  if (!a2)
  {
    return 3758097090;
  }

  v5 = (this + 48);
  v4 = *(this + 6);
  v6 = v4[1];
  if (v6 != a2)
  {
    if (v6)
    {
      (v6->release)(v6);
      v4 = *v5;
    }

    v4[1] = a2;
    (*(*(*v5)[1] + 8))((*v5)[1]);
    v4 = *v5;
  }

  if (v4[2])
  {
    shouldLog = CCLogStream::shouldLog();
    v4 = *v5;
    if (shouldLog)
    {
      CCLogStream::logAlert(v4[2], "[dk] %s@%d: root[%p] fProvisioningRoot[%p]\n", "gatherParameterData", 722, a2, v4[1]);
      v4 = *v5;
    }
  }

  if (checkAcquireDataPropertyNotEmpty(v4[1], "region-info", &v90, 0, 1uLL, "IOService"))
  {
    BytesNoCopy = OSData::getBytesNoCopy(v90);
    if (BytesNoCopy)
    {
      v9 = OSData::getBytesNoCopy(v90);
      BytesNoCopy = OSString::withCString(v9);
    }

    (*v5)[24] = BytesNoCopy;
    if ((*v5)[2] && CCLogStream::shouldLog())
    {
      AppleBCMWLANConfigManager::gatherParameterData(v5);
    }

    if (v90)
    {
      (v90->release)(v90);
      v90 = 0;
    }
  }

  if (checkAcquireDataPropertyNotEmpty((*v5)[1], "bcom.ps.default", &v90, 0xCuLL, 1uLL, "IOService"))
  {
    v10 = *v5;
    v11 = OSData::getBytesNoCopy(v90, 0, 0xCuLL);
    v12 = v11[2];
    v10[6] = *v11;
    *(v10 + 14) = v12;
    if (v90)
    {
      (v90->release)(v90);
      v90 = 0;
    }
  }

  v13 = checkAcquireDataPropertyNotEmpty((*v5)[1], "bcom.ps.realtime", &v90, 0xCuLL, 1uLL, "IOService");
  v14 = *v5;
  if (v13)
  {
    v15 = OSData::getBytesNoCopy(v90, 0, 0xCuLL);
    v16 = v15[2];
    *(v14 + 36) = *v15;
    *(v14 + 11) = v16;
    if (v90)
    {
      (v90->release)(v90);
      v90 = 0;
    }
  }

  else
  {
    if (v14[2])
    {
      v18 = CCLogStream::shouldLog();
      v14 = *v5;
      if (v18)
      {
        CCLogStream::logAlert(v14[2], "[dk] %s@%d: no real time PS parameters found using default\n", "gatherParameterData", 740);
        v14 = *v5;
      }
    }

    *(v14 + 36) = v14[6];
    *(v14 + 11) = *(v14 + 14);
  }

  v19 = checkAcquireDataPropertyNotEmpty((*v5)[1], "bcom.wow.magic-packet", &v90, 0, 1uLL, "IOService");
  v20 = *v5;
  v21 = (*v5)[2];
  if (v19)
  {
    if (v21)
    {
      v22 = CCLogStream::shouldLog();
      v20 = *v5;
      if (v22)
      {
        CCLogStream::logAlert(v20[2], "[dk] %s@%d: WOMP - true\n", "gatherParameterData", 745);
        v20 = *v5;
      }
    }

    *(v20 + 32) = 1;
    if (v90)
    {
      (v90->release)(v90);
      v90 = 0;
    }
  }

  else
  {
    if (v21)
    {
      v23 = CCLogStream::shouldLog();
      v20 = *v5;
      if (v23)
      {
        CCLogStream::logAlert(v20[2], "[dk] %s@%d: WOMP - false\n", "gatherParameterData", 749);
        v20 = *v5;
      }
    }

    *(v20 + 32) = 0;
  }

  v24 = checkAcquireDataPropertyNotEmpty((*v5)[1], "bcom.roam.default", &v90, 0x14uLL, 1uLL, "IOService");
  v25 = *v5;
  if (v24)
  {
    v26 = OSData::getBytesNoCopy(v90, 0, 0x14uLL);
    v27 = v26[4];
    *(v25 + 100) = *v26;
    *(v25 + 29) = v27;
    if (v90)
    {
      (v90->release)(v90);
      v90 = 0;
    }
  }

  else if (v25[2] && CCLogStream::shouldLog())
  {
    AppleBCMWLANConfigManager::gatherParameterData(v5);
  }

  v28 = checkAcquireDataPropertyNotEmpty((*v5)[1], "bcom.roam.enterprise", &v90, 0x14uLL, 1uLL, "IOService");
  v29 = *v5;
  if (v28)
  {
    v30 = OSData::getBytesNoCopy(v90, 0, 0x14uLL);
    v31 = v30[4];
    *(v29 + 5) = *v30;
    *(v29 + 24) = v31;
    if (v90)
    {
      (v90->release)(v90);
      v90 = 0;
    }
  }

  else
  {
    if (v29[2])
    {
      v32 = CCLogStream::shouldLog();
      v29 = *v5;
      if (v32)
      {
        CCLogStream::logAlert(v29[2], "[dk] %s@%d: no enterprise roaming parameters found using default\n", "gatherParameterData", 764);
        v29 = *v5;
      }
    }

    *(v29 + 5) = *(v29 + 100);
    *(v29 + 24) = *(v29 + 29);
  }

  v33 = checkAcquireDataPropertyNotEmpty((*v5)[1], "wlan.externallypowered", &v90, 0, 1uLL, "IOService");
  v34 = *v5;
  if (v33)
  {
    *(v34 + 239) = 1;
    if (v90)
    {
      (v90->release)(v90);
      v90 = 0;
    }
  }

  else
  {
    *(v34 + 239) = 0;
  }

  v35 = checkAcquireDataPropertyNotEmpty((*v5)[1], "wlan.chip.power.dutycycle", &v90, 0x30uLL, 1uLL, "IOService");
  v36 = *v5;
  if (v35)
  {
    v37 = OSData::getBytesNoCopy(v90, 0, 0x30uLL);
    v39 = v37[1];
    v38 = v37[2];
    *(v36 + 17) = *v37;
    *(v36 + 18) = v39;
    *(v36 + 19) = v38;
    *(*v5 + 320) = 1;
    if (v90)
    {
      (v90->release)(v90);
      v90 = 0;
    }
  }

  else
  {
    if (v36[2])
    {
      v40 = CCLogStream::shouldLog();
      v36 = *v5;
      if (v40)
      {
        CCLogStream::logAlert(v36[2], "[dk] %s@%d:Using default power to duty cycle table.\n", "gatherParameterData", 781);
        v36 = *v5;
      }
    }

    v41 = unk_1003E816C;
    *(v36 + 17) = kWlanPwrDutyCyclePreset;
    *(v36 + 18) = v41;
    *(v36 + 19) = xmmword_1003E817C;
    *(*v5 + 320) = 0;
  }

  *(*v5 + 140) = 0;
  v42 = checkAcquireDataPropertyNotEmpty((*v5)[1], "wlan.awdl.params", &v90, 8uLL, 1uLL, "IOService");
  v43 = *v5;
  if (v42)
  {
    *(v43 + 140) = *OSData::getBytesNoCopy(v90, 0, 8uLL);
    v44 = (*v5)[2];
    IO80211HexdumpIf();
    *(*v5 + 167) = (*(*v5 + 140) & 2) != 0;
    *(*v5 + 166) = 1;
    if (v90)
    {
      (v90->release)(v90);
      v90 = 0;
    }
  }

  else if (v43[2] && CCLogStream::shouldLog())
  {
    AppleBCMWLANConfigManager::gatherParameterData(v5);
  }

  v87 = 0;
  if (checkAcquireDataPropertyNotEmpty((*v5)[1], "wlan.awdlht20only", &v90, 4uLL, 1uLL, "IOService"))
  {
    v87 = *OSData::getBytesNoCopy(v90, 0, 4uLL);
    v45 = (*v5)[2];
    IO80211HexdumpIf();
    if (v87)
    {
      *(*v5 + 70) |= 0x10u;
    }

    if (v90)
    {
      (v90->release)(v90);
      v90 = 0;
    }
  }

  else if ((*v5)[2] && CCLogStream::shouldLog())
  {
    AppleBCMWLANConfigManager::gatherParameterData(v5);
  }

  v46 = checkAcquireDataPropertyNotEmpty((*v5)[1], "wlan.dfsproxy.enabled", &v90, 0, 1uLL, "IOService");
  v47 = *v5;
  if (v46)
  {
    *(v47 + 321) = 1;
    if (v90)
    {
      (v90->release)(v90);
      v90 = 0;
    }
  }

  else
  {
    *(v47 + 321) = 0;
    if ((*v5)[2] && CCLogStream::shouldLog())
    {
      AppleBCMWLANConfigManager::gatherParameterData(v5);
    }
  }

  v48 = checkAcquireDataPropertyNotEmpty((*v5)[1], "bcom.oscar.profilestates", &v90, 0xAuLL, 1uLL, "IOService");
  v49 = *v5;
  if (v48)
  {
    v50 = OSData::getBytesNoCopy(v90, 0, 0xAuLL);
    v51 = v50[4];
    *(v49 + 148) = *v50;
    *(v49 + 78) = v51;
    *(*v5 + 175) = 1;
    if (v90)
    {
      (v90->release)(v90);
      v90 = 0;
    }
  }

  else
  {
    *(v49 + 175) = 0;
  }

  v52 = checkAcquireDataPropertyNotEmpty((*v5)[1], "wlan.dfrts", &v90, 8uLL, 1uLL, "IOService");
  v53 = *v5;
  if (v52)
  {
    *(v53 + 158) = *OSData::getBytesNoCopy(v90, 0, 8uLL);
    *(*v5 + 188) = 1;
    if (v90)
    {
      (v90->release)(v90);
      v90 = 0;
    }
  }

  else
  {
    *(v53 + 188) = 0;
  }

  *(*v5 + 224) = checkPropertyExists((*v5)[1], "wlan.mimo_ps.enabled", 1uLL, "IOService");
  *(*v5 + 228) = checkPropertyExists((*v5)[1], "wlan.ocl.enabled", 1uLL, "IOService");
  v54 = checkAcquireDataPropertyNotEmpty((*v5)[1], "wlan.ocl_awdl.enabled", &v90, 0, 1uLL, "IOService");
  v55 = *v5;
  if (v54)
  {
    *(v55 + 229) = 1;
    if (v90)
    {
      (v90->release)(v90);
      v90 = 0;
    }
  }

  else
  {
    *(v55 + 229) = 0;
  }

  v56 = checkAcquireDataPropertyNotEmpty((*v5)[1], "wlan.ebt.enabled", &v90, 0, 1uLL, "IOService");
  v57 = *v5;
  if (v56)
  {
    if (*v57 && (v58 = AppleBCMWLANCore::getBus(*v57), v57 = *v5, v58))
    {
      Bus = AppleBCMWLANCore::getBus(*v57);
      *(*v5 + 237) = (*(*Bus + 368))(Bus) != 4377;
    }

    else
    {
      *(v57 + 237) = 1;
    }

    if (v90)
    {
      (v90->release)(v90);
      v90 = 0;
    }
  }

  else
  {
    *(v57 + 237) = 0;
  }

  v60 = checkAcquireDataPropertyNotEmpty((*v5)[1], "wlan.dignap.enabled", &v90, 0, 1uLL, "IOService");
  v61 = *v5;
  if (v60)
  {
    *(v61 + 238) = 1;
    if (v90)
    {
      (v90->release)(v90);
      v90 = 0;
    }
  }

  else
  {
    *(v61 + 238) = 0;
  }

  v62 = checkAcquireDataPropertyNotEmpty((*v5)[1], "wlan.ops.enabled", &v90, 0, 1uLL, "IOService");
  v63 = *v5;
  if (v62)
  {
    *(v63 + 236) = 1;
    if (v90)
    {
      (v90->release)(v90);
      v90 = 0;
    }
  }

  else
  {
    *(v63 + 236) = 0;
  }

  AppleBCMWLANConfigManager::gatherKvrParameterData(this, *(*(this + 6) + 8), 1);
  AppleBCMWLANConfigManager::readEnhancedRoamingProperty(this, *(*(this + 6) + 8));
  v64 = checkAcquireDataPropertyNotEmpty(*(*(this + 6) + 8), "wlan.txFailEvent.enabled", &v90, 0, 1uLL, "IOService");
  v65 = *(this + 6);
  if (v64)
  {
    *(v65 + 244) = 1;
    v84 = 0;
    if (checkAcquireDataPropertyNotEmpty((*v5)[1], "wlan.txFailEvent.params", &v84, 0xCuLL, 1uLL, "IOService"))
    {
      v66 = *v5;
      v67 = OSData::getBytesNoCopy(v84, 0, 0xCuLL);
      v68 = v67[2];
      v66[31] = *v67;
      *(v66 + 64) = v68;
      if (v84)
      {
        (v84->release)(v84);
        v84 = 0;
      }
    }

    if (v90)
    {
      (v90->release)(v90);
      v90 = 0;
    }
  }

  else
  {
    *(v65 + 244) = 0;
  }

  v69 = checkAcquireDataPropertyNotEmpty((*v5)[1], "wlan.ranging.params", &v90, 4uLL, 1uLL, "IOService");
  v70 = *v5;
  if (v69)
  {
    *(v70 + 58) = *OSData::getBytesNoCopy(v90, 0, 4uLL);
    if (v90)
    {
      (v90->release)(v90);
      v90 = 0;
    }
  }

  else
  {
    *(v70 + 116) = 10;
    *(*v5 + 117) |= 1u;
  }

  v86 = 0;
  if (acquireProperty<OSBoolean>((*v5)[1], "wlan.vo.blockack", &v86, 1uLL, "IOService"))
  {
    v71 = v86;
    v72 = v86 && v86 == kOSBooleanTrue;
    v73 = v72;
    *(*v5 + 189) = v73;
    if (v71)
    {
      (v71->release)(v71);
      v86 = 0;
    }
  }

  AppleBCMWLANCore::fetchAndUpdateRingParameters(**v5);
  v85 = 0;
  if (acquireProperty<OSBoolean>((*v5)[1], "wlan.gpio-tx-envelope-ind", &v85, 1uLL, "IOService"))
  {
    v74 = v85;
    v75 = v85 && v85 == kOSBooleanTrue;
    v76 = v75;
    *(*v5 + 323) = v76;
    if (v74)
    {
      (v74->release)(v74);
      v85 = 0;
    }
  }

  *(*v5 + 324) = 1;
  v88 = 0;
  if (IOParseBootArgNumber("wlan.lowlatency.enable", &v88, 4))
  {
    *(*v5 + 324) = v88 != 0;
  }

  v89 = 0;
  *(*v5 + 325) = 0;
  if (acquireProperty<OSBoolean>((*v5)[1], "wlan.adaptiveroaming.enabled", &v89, 1uLL, "IOService"))
  {
    v77 = v89;
    if (v89 == kOSBooleanTrue)
    {
      *(*v5 + 325) = 1;
    }

    if (v77)
    {
      (v77->release)(v77);
      v89 = 0;
    }
  }

  if (checkPropertyExists((*v5)[1], "wlan.lpas-allowed", 1uLL, "IOService"))
  {
    *(*v5 + 335) = 1;
  }

  v78 = IOParseBootArgNumber("wlan.lpas-allowed", *v5 + 335, 1);
  v79 = *v5;
  if (v78)
  {
    if (v79[2])
    {
      v80 = CCLogStream::shouldLog();
      v79 = *v5;
      if (v80)
      {
        CCLogStream::logAlert(v79[2], "[dk] %s@%d: Found '%s' boot-arg, forced[%u]\n", "gatherParameterData", 959, "wlan.lpas-allowed", *(v79 + 335));
        v79 = *v5;
      }
    }
  }

  if (checkPropertyExists(v79[1], "wlan.aoac-allowed", 1uLL, "IOService"))
  {
    *(*v5 + 336) = 1;
  }

  if (IOParseBootArgNumber("wlan.aoac-allowed", *v5 + 42, 1) && (*v5)[2] && CCLogStream::shouldLog())
  {
    AppleBCMWLANConfigManager::gatherParameterData(v5);
  }

  AppleBCMWLANConfigManager::populatePlatformProperties(this);
  v81 = *(this + 6);
  if (v81[2])
  {
    v82 = CCLogStream::shouldLog();
    v81 = *v5;
    if (v82)
    {
      CCLogStream::logAlert(v81[2], "[dk] %s@%d: LPAS allowed[%u], AOAC allowed[%u]\n", "gatherParameterData", 972, *(v81 + 335), *(v81 + 336));
      v81 = *v5;
    }
  }

  v83 = v81[2];
  if (v83)
  {
    if (CCLogStream::shouldLog(v83, 0x80uLL))
    {
      AppleBCMWLANConfigManager::dumpState(this, 0);
    }
  }

  IOParseBootArgNumber("wlan.debug.isNewDevice", *v5 + 389, 1);
  return 0;
}

uint64_t AppleBCMWLANConfigManager::gatherKvrParameterData(AppleBCMWLANConfigManager *this, IOService *a2, int a3)
{
  if (!a2)
  {
    return 3758097090;
  }

  v7 = this + 48;
  v6 = *(this + 6);
  v8 = *(v6 + 8);
  if (v8 != a2)
  {
    if (v8)
    {
      (v8->release)(v8);
      v6 = *v7;
    }

    *(v6 + 8) = a2;
    (*(**(*v7 + 8) + 8))(*(*v7 + 8));
    v8 = *(*v7 + 8);
  }

  v24 = 0;
  v9 = checkAcquireDataPropertyNotEmpty(v8, "wlan.enterprise.params", &v24, 4uLL, 1uLL, "IOService");
  v10 = *v7;
  if (v9)
  {
    *(v10 + 240) = *OSData::getBytesNoCopy(v24, 0, 4uLL);
    if (*(*v7 + 16) && CCLogStream::shouldLog())
    {
      AppleBCMWLANConfigManager::gatherKvrParameterData(v7);
    }

    if (v24)
    {
      (v24->release)(v24);
      v24 = 0;
    }
  }

  else
  {
    if (*(v10 + 16))
    {
      shouldLog = CCLogStream::shouldLog();
      v10 = *v7;
      if (shouldLog)
      {
        CCLogStream::logNotice(*(v10 + 16), "[dk] %s@%d:EnterpriseEnhancementParams: Failed to read params. Defaulting to OFF \n", "gatherKvrParameterData", 1011);
        v10 = *v7;
      }
    }

    *(v10 + 240) &= ~1u;
    *(*v7 + 240) &= ~2u;
    *(*v7 + 240) &= ~4u;
  }

  v23 = 0;
  if (IOParseBootArgNumber("wlan.debug.EEparams.enhancedDisAssociationInfo", &v23, 1))
  {
    *(*v7 + 240) = *(*v7 + 240) & 0xFFFFFFFE | v23;
  }

  if (IOParseBootArgNumber("wlan.debug.EEparams.beaconReporting", &v23, 1))
  {
    *(*v7 + 240) = *(*v7 + 240) & 0xFFFFFFFD | (2 * (v23 & 1));
  }

  if (IOParseBootArgNumber("wlan.debug.EEparams.osVersionReporting", &v23, 1))
  {
    *(*v7 + 240) = *(*v7 + 240) & 0xFFFFFFFB | (4 * (v23 & 1));
  }

  v13 = *v7;
  if (*(*v7 + 16))
  {
    v14 = CCLogStream::shouldLog();
    v13 = *v7;
    if (v14)
    {
      CCLogStream::logAlert(*(v13 + 16), "[dk] %s@%d:EnterpriseEnhancementParams: enhancedDisAssociationInfo:%u beaconReporting:%u osVersionReporting:%u!\n", "gatherKvrParameterData", 1043, *(v13 + 240) & 1, (*(v13 + 240) >> 1) & 1, (*(v13 + 240) >> 2) & 1);
      v13 = *v7;
    }
  }

  if (checkAcquireDataPropertyNotEmpty(*(v13 + 8), "wlan.fast_enterprise_nw.enabled", &v24, 0, 1uLL, "IOService"))
  {
    if (a3)
    {
      v15 = *v7;
      if (*(*v7 + 16))
      {
        v16 = CCLogStream::shouldLog();
        v15 = *v7;
        if (v16)
        {
          CCLogStream::logNotice(*(v15 + 16), "[dk] %s@%d:FastEnterpriseNwSupportEnabled is enabled \n", "gatherKvrParameterData", 1048);
          v15 = *v7;
        }
      }

      *(v15 + 225) = 1;
    }

    if (v24)
    {
      (v24->release)(v24);
      v24 = 0;
    }
  }

  else
  {
    v17 = *v7;
    if (*(*v7 + 16))
    {
      v18 = CCLogStream::shouldLog();
      v17 = *v7;
      if (v18)
      {
        CCLogStream::logNotice(*(v17 + 16), "[dk] %s@%d:FastEnterpriseNwSupportEnabled is disabled \n", "gatherKvrParameterData", 1053);
        v17 = *v7;
      }
    }

    *(v17 + 225) = 0;
  }

  *(*(this + 6) + 226) = AppleBCMWLANConfigManager::getPlatformPropertyBool(this, "wlan.voice_enterprise_nw.enabled", 1) & a3;
  v19 = *(this + 6);
  v20 = *(v19 + 16);
  if (*(v19 + 226) == 1)
  {
    if (v20 && CCLogStream::shouldLog())
    {
      AppleBCMWLANConfigManager::gatherKvrParameterData(v7);
    }
  }

  else if (v20 && CCLogStream::shouldLog())
  {
    AppleBCMWLANConfigManager::gatherKvrParameterData(v7);
  }

  *(*(this + 6) + 227) = AppleBCMWLANConfigManager::getPlatformPropertyBool(this, "wlan.wnm.enabled", 1) & a3;
  v21 = *(this + 6);
  v22 = *(v21 + 16);
  if (*(v21 + 227) == 1)
  {
    if (v22)
    {
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANConfigManager::gatherKvrParameterData(v7);
      }
    }
  }

  else if (v22 && CCLogStream::shouldLog())
  {
    AppleBCMWLANConfigManager::gatherKvrParameterData(v7);
  }

  return 0;
}

uint64_t AppleBCMWLANConfigManager::readEnhancedRoamingProperty(AppleBCMWLANConfigManager *this, IOService *a2)
{
  if (!a2)
  {
    return 3758097090;
  }

  v5 = this + 48;
  v4 = *(this + 6);
  v6 = *(v4 + 8);
  if (v6 != a2)
  {
    if (v6)
    {
      (v6->release)(v6);
      v4 = *v5;
    }

    *(v4 + 8) = a2;
    (*(**(*v5 + 8) + 8))(*(*v5 + 8));
  }

  *(*(this + 6) + 170) = AppleBCMWLANConfigManager::getPlatformPropertyBool(this, "bcom.roam.enabledenhanced", 1);
  v7 = *(this + 6);
  result = *(v7 + 16);
  if (*(v7 + 170) == 1)
  {
    if (result)
    {
      result = CCLogStream::shouldLog();
      if (result)
      {
        AppleBCMWLANConfigManager::readEnhancedRoamingProperty(v5);
        return 0;
      }
    }
  }

  else if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      AppleBCMWLANConfigManager::readEnhancedRoamingProperty(v5);
      return 0;
    }
  }

  return result;
}

uint64_t acquireProperty<OSBoolean>(IOService *a1, const char *a2, OSMetaClassBase **a3, unint64_t a4, const char *a5)
{
  anObject = 0;
  result = acquirePropertyWithString(a1, a2, &anObject, a4, a5);
  if (result)
  {
    v7 = OSMetaClassBase::safeMetaCast(anObject, gOSBooleanMetaClass);
    if (v7)
    {
      *a3 = v7;
      return 1;
    }

    else
    {
      result = anObject;
      if (anObject)
      {
        (anObject->release)(anObject);
        return 0;
      }
    }
  }

  return result;
}

OSMetaClassBase *AppleBCMWLANConfigManager::populatePlatformProperties(AppleBCMWLANConfigManager *this)
{
  v47 = 0;
  v2 = this + 48;
  *(*(this + 6) + 172) = AppleBCMWLANConfigManager::getPlatformPropertyBool(this, "wlan.autocountry.enabled", 1);
  *(*v2 + 173) = AppleBCMWLANConfigManager::getPlatformPropertyBool(this, "wlan.11d.power.constraint.ignored", 0);
  *(*v2 + 174) = AppleBCMWLANConfigManager::getPlatformPropertyBool(this, "wlan.enhancedlocale.enabled", 0);
  *(*v2 + 170) = AppleBCMWLANConfigManager::getPlatformPropertyBool(this, "bcom.roam.enabledenhanced", 1);
  *(*v2 + 171) = AppleBCMWLANConfigManager::getPlatformPropertyBool(this, "wlan.tethering.enabled", 0);
  v3 = checkAcquireDataPropertyNotEmpty(*(*(this + 6) + 8), "bcom.ap.maxstas", &v47, 4uLL, 1uLL, "IOService");
  v4 = *(this + 6);
  if (v3)
  {
    *(v4 + 180) = *OSData::getBytesNoCopy(v47, 0, 4uLL);
    if (v47)
    {
      (v47->release)(v47);
      v47 = 0;
    }
  }

  else
  {
    *(v4 + 180) = 5;
  }

  v5 = checkAcquireDataPropertyNotEmpty(*(*v2 + 8), "wlan.listen.interval", &v47, 4uLL, 1uLL, "IOService");
  v6 = *v2;
  if (v5)
  {
    *(v6 + 184) = *OSData::getBytesNoCopy(v47, 0, 4uLL);
    if (v47)
    {
      (v47->release)(v47);
      v47 = 0;
    }
  }

  else
  {
    *(v6 + 184) = 20;
  }

  *(*v2 + 176) = 0;
  v7 = IOParseBootArgNumber("wlan.autoCountry", (*v2 + 172), 1);
  v8 = *v2;
  if (v7)
  {
    if (*(v8 + 16))
    {
      shouldLog = CCLogStream::shouldLog();
      v8 = *v2;
      if (shouldLog)
      {
        CCLogStream::logAlert(*(v8 + 16), "[dk] %s@%d:%s() boot-args overrides ivars->fEnabledAutoCountry to %d\n", "populatePlatformProperties", 1195, "populatePlatformProperties", *(v8 + 172));
        v8 = *v2;
      }
    }
  }

  v10 = IOParseBootArgNumber("wlan.enhancedlocale", (v8 + 174), 1);
  v11 = *v2;
  if (v10)
  {
    if (*(v11 + 16))
    {
      v12 = CCLogStream::shouldLog();
      v11 = *v2;
      if (v12)
      {
        CCLogStream::logAlert(*(v11 + 16), "[dk] %s@%d:%s() boot-args overrides ivars->fEnabledEnhancedLocale to %d\n", "populatePlatformProperties", 1200, "populatePlatformProperties", *(v11 + 174));
        v11 = *v2;
      }
    }
  }

  *(v11 + 190) = 1;
  v13 = IOParseBootArgNumber("wlan.tcpka", (*v2 + 190), 1);
  v14 = *v2;
  if (v13)
  {
    if (*(v14 + 16))
    {
      v15 = CCLogStream::shouldLog();
      v14 = *v2;
      if (v15)
      {
        CCLogStream::logAlert(*(v14 + 16), "[dk] %s@%d:%s() boot-args overrides ivars->fEnabledTCPKeepAlive to %d\n", "populatePlatformProperties", 1207, "populatePlatformProperties", *(v14 + 190));
        v14 = *v2;
      }
    }
  }

  v16 = checkAcquireDataPropertyNotEmpty(*(v14 + 8), "wlan.enhancedTrgDisc", &v47, 4uLL, 1uLL, "IOService");
  v17 = *v2;
  if (v16)
  {
    *(v17 + 200) = *OSData::getBytesNoCopy(v47, 0, 4uLL);
    if (v47)
    {
      (v47->release)(v47);
      v47 = 0;
    }
  }

  else
  {
    *(v17 + 200) = 1;
  }

  *(*(this + 6) + 230) = AppleBCMWLANConfigManager::getPlatformPropertyBool(this, "wlan.autojoin_ps.enabled", 0);
  v18 = *(this + 6);
  *(v18 + 204) = 0;
  *(v18 + 212) = 0;
  if (checkAcquireDataPropertyNotEmpty(*(*(this + 6) + 8), "wlan.tx-power-cap-ctrl", &v47, 0, 1uLL, "IOService"))
  {
    if (OSData::getBytesNoCopy(v47, 0, 0xBuLL))
    {
      BytesNoCopy = OSData::getBytesNoCopy(v47, 0, 0xBuLL);
      *(*v2 + 204) = *BytesNoCopy;
      *(*v2 + 216) = 3;
      *(*v2 + 215) = 10;
      v20 = *v2;
      if (*(*v2 + 215))
      {
        v21 = 0;
        do
        {
          *(v20 + v21 + 205) = BytesNoCopy[v21 + 1];
          ++v21;
          v20 = *v2;
        }

        while (v21 < *(*v2 + 215));
      }
    }

    else if (OSData::getBytesNoCopy(v47, 0, 6uLL))
    {
      v22 = OSData::getBytesNoCopy(v47, 0, 6uLL);
      *(*v2 + 204) = *v22;
      *(*v2 + 216) = 2;
      *(*v2 + 215) = 5;
      v23 = *v2;
      if (*(*v2 + 215))
      {
        v24 = 0;
        do
        {
          *(v23 + v24 + 205) = v22[v24 + 1];
          ++v24;
          v23 = *v2;
        }

        while (v24 < *(*v2 + 215));
      }
    }

    else if (OSData::getBytesNoCopy(v47, 0, 2uLL))
    {
      v25 = OSData::getBytesNoCopy(v47, 0, 2uLL);
      *(*v2 + 204) = *v25;
      *(*v2 + 216) = 4;
      *(*v2 + 205) = v25[1];
      *(*v2 + 215) = 1;
    }

    else if (*(*v2 + 16) && CCLogStream::shouldLog())
    {
      AppleBCMWLANConfigManager::populatePlatformProperties(this + 48);
    }

    if (v47)
    {
      (v47->release)(v47);
      v47 = 0;
    }
  }

  v26 = *v2;
  if (!*(*v2 + 204))
  {
    if (*(v26 + 16))
    {
      v27 = CCLogStream::shouldLog();
      v26 = *v2;
      if (v27)
      {
        CCLogStream::logNoticeIf(*(v26 + 16), 0x80uLL, "[dk] %s@%d: No valid TX cap power control configuration.\n", "populatePlatformProperties", 1254);
        v26 = *v2;
      }
    }

    *(v26 + 212) = 0;
    *(v26 + 204) = 0;
    v26 = *v2;
  }

  v46 = 0;
  if (acquireProperty<OSNumber>(*(v26 + 8), "wlan.psbw.enabled", &v46, 1uLL, "IOService"))
  {
    v28 = v46;
    if (v46)
    {
      *(*v2 + 322) = 1;
      (v28->release)(v28);
      v46 = 0;
    }
  }

  else
  {
    *(*v2 + 322) = 0;
  }

  *(*v2 + 331) = 0;
  if (checkAcquireDataPropertyNotEmpty(*(*v2 + 8), "wlan.dsa.power.boost", &v47, 4uLL, 1uLL, "IOService"))
  {
    v29 = (*v2 + 331);
    *v29 = *OSData::getBytesNoCopy(v47, 0, 4uLL);
    if (v47)
    {
      (v47->release)(v47);
      v47 = 0;
    }
  }

  v30 = *v2;
  if (!*(*v2 + 331))
  {
    if (*(v30 + 16))
    {
      v31 = CCLogStream::shouldLog();
      v30 = *v2;
      if (v31)
      {
        CCLogStream::logNoticeIf(*(v30 + 16), 0x80uLL, "[dk] %s@%d:DynSAR: Power boost control not enabled in plist\n", "populatePlatformProperties", 1276);
        v30 = *v2;
      }
    }

    *(v30 + 331) = 0;
    *(*v2 + 332) = 0;
    *(*v2 + 333) = 3;
    *(*v2 + 334) = 3;
    v30 = *v2;
  }

  *(v30 + 330) = 0;
  *(*v2 + 329) = 0;
  v45 = 0;
  if (acquireProperty<OSNumber>(*(*v2 + 8), "wlan.txsdb.mode", &v45, 1uLL, "IOService") && v45)
  {
    if (OSNumber::unsigned32BitValue(v45) == 1)
    {
      *(*v2 + 330) = 1;
    }

    else if (OSNumber::unsigned32BitValue(v45) == 2)
    {
      *(*v2 + 329) = 1;
    }
  }

  v44 = 0;
  if (IOParseBootArgNumber("wlan.txsdb.mode", &v44, 4))
  {
    if (v44 == 2)
    {
      *(*v2 + 330) = 0;
      *(*v2 + 329) = 1;
    }

    else if (v44 == 1)
    {
      *(*v2 + 329) = 0;
      *(*v2 + 330) = 1;
    }
  }

  v32 = *v2;
  if (*(*v2 + 16))
  {
    v33 = CCLogStream::shouldLog();
    v32 = *v2;
    if (v33)
    {
      CCLogStream::logNoticeIf(*(v32 + 16), 0x80uLL, "[dk] %s@%d:txSDB: dyn txsdb enabled %d, static txsdb enabled %d\n", "populatePlatformProperties", 1303, *(v32 + 329), *(v32 + 330));
      v32 = *v2;
    }
  }

  v43 = 0;
  *(v32 + 328) = 0;
  if (acquireProperty<OSBoolean>(*(*v2 + 8), "wlan.ant-inefficiency-mitigation.enabled", &v43, 1uLL, "IOService"))
  {
    v34 = v43;
    if (v43 == kOSBooleanTrue)
    {
      *(*v2 + 328) = 1;
    }

    if (v34)
    {
      (v34->release)(v34);
      v43 = 0;
    }
  }

  v42 = 0;
  *(*v2 + 326) = 0;
  if (acquireProperty<OSBoolean>(*(*v2 + 8), "wlan.continuous.cpms.power", &v42, 1uLL, "IOService"))
  {
    v35 = v42;
    if (v42 == kOSBooleanTrue)
    {
      *(*v2 + 326) = 1;
    }

    if (v35)
    {
      (v35->release)(v35);
      v42 = 0;
    }
  }

  v41 = 0;
  *(*v2 + 327) = 0;
  if (acquireProperty<OSBoolean>(*(*v2 + 8), "wlan.setccode.dur.poweroff", &v41, 1uLL, "IOService"))
  {
    v36 = v41;
    if (v41 == kOSBooleanTrue)
    {
      *(*v2 + 327) = 1;
    }

    if (v36)
    {
      (v36->release)(v36);
      v41 = 0;
    }
  }

  v40 = 0;
  *(*v2 + 384) = 0;
  if (acquireProperty<OSNumber>(*(*v2 + 8), "wlan.txchain.mode", &v40, 1uLL, "IOService"))
  {
    if (v40)
    {
      if (OSNumber::unsigned32BitValue(v40) > 2)
      {
        if (*(*v2 + 16) && CCLogStream::shouldLog())
        {
          AppleBCMWLANConfigManager::populatePlatformProperties(v2, &v40);
        }
      }

      else if (OSNumber::unsigned32BitValue(v40))
      {
        if (OSNumber::unsigned32BitValue(v40) == 1)
        {
          v37 = 1;
        }

        else
        {
          v37 = 2;
        }

        *(*v2 + 384) = v37;
      }

      else
      {
        *(*v2 + 384) = 0;
      }

      if (v40)
      {
        (v40->release)(v40);
        v40 = 0;
      }
    }
  }

  else
  {
    *(*v2 + 384) = 0;
  }

  v39 = 0;
  *(*v2 + 391) = 0;
  if (acquireProperty<OSBoolean>(*(*v2 + 8), "wlan.6GHz.supported", &v39, 1uLL, "IOService"))
  {
    if (v39 == kOSBooleanTrue)
    {
      *(*v2 + 391) = 1;
      if (*(*v2 + 16) && CCLogStream::shouldLog())
      {
        AppleBCMWLANConfigManager::populatePlatformProperties(v2);
      }
    }

    else if (v39 == kOSBooleanFalse)
    {
      *(*v2 + 391) = 0;
      if (*(*v2 + 16))
      {
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANConfigManager::populatePlatformProperties(v2);
        }
      }
    }

    result = v39;
    if (v39)
    {
      return (v39->release)(v39);
    }
  }

  else
  {
    result = *(*v2 + 16);
    if (result)
    {
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANConfigManager::populatePlatformProperties(v2);
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANConfigManager::getPlatformPropertyBool(AppleBCMWLANConfigManager *this, const char *a2, uint64_t a3)
{
  v8 = 0;
  if (checkAcquireDataPropertyNotEmpty(*(*(this + 6) + 8), a2, &v8, 0, 1uLL, "IOService"))
  {
    v6 = *OSData::getBytesNoCopy(v8, 0, 4uLL);
    if (v6)
    {
      if (v6 == 1)
      {
        a3 = 1;
      }

      else if (*(*(this + 6) + 16) && CCLogStream::shouldLog())
      {
        CCLogStream::logAlert(*(*(this + 6) + 16), "[dk] %s@%d: unexpected %s parameter value(%lu), using default\n", "getPlatformPropertyBool", 1391, a2, v6);
      }
    }

    else
    {
      a3 = 0;
    }

    if (v8)
    {
      (v8->release)(v8);
    }
  }

  return a3;
}

uint64_t AppleBCMWLANConfigManager::readPmThresholds(uint64_t a1, int a2, uint64_t a3)
{
  v9 = 0;
  if (a2 == 1)
  {
    v4 = "wlan.pm-thresholds.wow";
  }

  else
  {
    v4 = "wlan.pm-thresholds.lpas";
  }

  v5 = a1 + 48;
  if (checkAcquireDataPropertyNotEmpty(*(*(a1 + 48) + 8), v4, &v9, 0x18uLL, 1uLL, "IOService"))
  {
    BytesNoCopy = OSData::getBytesNoCopy(v9, 0, 0x18uLL);
    v7 = BytesNoCopy[2];
    *a3 = *BytesNoCopy;
    *(a3 + 16) = v7;
    if (v9)
    {
      (v9->release)(v9);
      v9 = 0;
    }
  }

  result = *(*v5 + 16);
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      return AppleBCMWLANConfigManager::readPmThresholds(v5);
    }
  }

  return result;
}

uint64_t acquireProperty<OSNumber>(IOService *a1, const char *a2, OSMetaClassBase **a3, unint64_t a4, const char *a5)
{
  anObject = 0;
  result = acquirePropertyWithString(a1, a2, &anObject, a4, a5);
  if (result)
  {
    v7 = OSMetaClassBase::safeMetaCast(anObject, gOSNumberMetaClass);
    if (v7)
    {
      *a3 = v7;
      return 1;
    }

    else
    {
      result = anObject;
      if (anObject)
      {
        (anObject->release)(anObject);
        return 0;
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANConfigManager::printRoamParams(AppleBCMWLANConfigManager *this, char *a2)
{
  v2 = *(this + 6);
  v3 = *(v2 + 16);
  v13 = *(v2 + 136);
  v14 = *(v2 + 138);
  v11 = *(v2 + 132);
  v12 = *(v2 + 134);
  v9 = *(v2 + 128);
  v10 = *(v2 + 130);
  v7 = *(v2 + 124);
  v8 = *(v2 + 126);
  v5 = *(v2 + 120);
  v6 = *(v2 + 122);
  return IO80211Print();
}

uint64_t AppleBCMWLANConfigManager::configureEnterpriseRoamParams(AppleBCMWLANConfigManager *this)
{
  v2 = this + 48;
  v1 = *(this + 6);
  v7 = *(v1 + 98) - (*(v1 + 96) << 16);
  v3 = *(v1 + 24);
  v6[0] = &v7;
  v6[1] = 4;
  v4 = AppleBCMWLANCommander::runIOVarSet(v3, "roam_conf_aggressive", v6, 0, 0);
  if (v4 && *(*v2 + 16) && CCLogStream::shouldLog())
  {
    AppleBCMWLANConfigManager::configureEnterpriseRoamParams(v2);
  }

  return v4;
}

uint64_t AppleBCMWLANConfigManager::handleBeaconOffloadAsyncCallBack(uint64_t result, uint64_t a2, int a3)
{
  if (a3)
  {
    v3 = (result + 48);
    result = *(*(result + 48) + 16);
    if (result)
    {
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANConfigManager::handleBeaconOffloadAsyncCallBack(v3);
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANConfigManager::handleBeaconDriftAsyncCallBack(uint64_t result, uint64_t a2, int a3)
{
  if (a3)
  {
    v3 = (result + 48);
    result = *(*(result + 48) + 16);
    if (result)
    {
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANConfigManager::handleBeaconDriftAsyncCallBack(v3);
      }
    }
  }

  return result;
}

BOOL AppleBCMWLANConfigManager::isBMWCarPlayNetworkWorkaroundNeeded(AppleBCMWLANCore ***this)
{
  Bus = AppleBCMWLANCore::getBus(*this[6]);
  v3 = (*(*Bus + 368))(Bus);
  if (this[6][2] && CCLogStream::shouldLog())
  {
    CCLogStream::logInfo(this[6][2], "[dk] %s@%d:Chip %u\n", "isBMWCarPlayNetworkWorkaroundNeeded", 1757, v3);
  }

  if (v3 >> 1 < 0x88D)
  {
    return 0;
  }

  v4 = this[6];
  if (v4[2])
  {
    shouldLog = CCLogStream::shouldLog();
    v4 = this[6];
    if (shouldLog)
    {
      CCLogStream::logAlert(v4[2], "[dk] %s@%d:In CarPlay session with %u\n", "isBMWCarPlayNetworkWorkaroundNeeded", 1761, v3);
      v4 = this[6];
    }
  }

  BssManager = AppleBCMWLANCore::getBssManager(*v4);
  CurrentBSS = AppleBCMWLANBssManager::getCurrentBSS(BssManager);
  return CurrentBSS && (IO80211BSSBeacon::isLikelyAlpineBMWNetwork(CurrentBSS) & 1) != 0;
}

uint64_t AppleBCMWLANConfigManager::copyWlanPwrDutyCycleTable(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v3 = *(v2 + 272);
  *(a2 + 20) = *(v2 + 288);
  *(a2 + 4) = v3;
  v4 = *(a1 + 48);
  v5 = *(v4 + 296);
  *(a2 + 44) = *(v4 + 312);
  *(a2 + 28) = v5;
  return 0;
}

uint64_t AppleBCMWLANConfigManager::setPowerProfile(AppleBCMWLANConfigManager *this, int a2)
{
  v2 = this + 48;
  *(*(this + 6) + 220) = a2;
  if ((a2 - 1) <= 1 && AppleBCMWLANConfigManager::isBMWCarPlayNetworkWorkaroundNeeded(this))
  {
    v8 = 1;
    v3 = *(*v2 + 24);
    v7[0] = &v8;
    v7[1] = 4;
    v4 = AppleBCMWLANCommander::runIOVarSet(v3, "erp_cts", v7, 0, 0);
    v5 = *(*v2 + 16);
    if (v4)
    {
      if (v5 && CCLogStream::shouldLog())
      {
        CCLogStream::logAlert(*(*v2 + 16), "[dk] %s@%d:cannot set erp_cts %u: ret %x\n", "setPowerProfile", 1953, v8, v4);
      }
    }

    else if (v5 && CCLogStream::shouldLog())
    {
      AppleBCMWLANConfigManager::setPowerProfile(v2);
    }

    if (*(*v2 + 16) && CCLogStream::shouldLog())
    {
      AppleBCMWLANConfigManager::setPowerProfile(v2);
    }
  }

  return 0;
}

uint64_t AppleBCMWLANConfigManager::configureBeaconDriftOffsetConfig(AppleBCMWLANConfigManager *this, int a2)
{
  v4 = IOMallocZeroData();
  if (v4)
  {
    *v4 = 0xF000C0001;
    if (a2 == 1)
    {
      v9 = 10;
    }

    else
    {
      v9 = 15;
    }

    if (a2 == 2)
    {
      v9 = 5;
    }

    *(v4 + 8) = v9;
    *(v4 + 9) = 1541;
    *(v4 + 11) = 2;
    v11 = this + 48;
    v10 = *(this + 6);
    v19[0] = v4;
    v19[1] = 12;
    v12 = (*(**v10 + 88))(*v10, v5, v6, v7, v8);
    if ((*(*v12 + 136))(v12))
    {
      v13 = AppleBCMWLANCommander::sendIOVarSet(*(*(this + 6) + 24), "bcn_tbtt_config");
    }

    else
    {
      v13 = AppleBCMWLANCommander::runIOVarSet(*(*v11 + 24), "bcn_tbtt_config", v19, 0, 0);
    }

    v14 = v13;
    v17 = *(*v11 + 16);
    if (v14)
    {
      if (v17 && CCLogStream::shouldLog())
      {
        AppleBCMWLANConfigManager::configureBeaconDriftOffsetConfig(this + 6);
      }
    }

    else if (v17 && CCLogStream::shouldLog())
    {
      AppleBCMWLANConfigManager::configureBeaconDriftOffsetConfig(this + 6);
    }

    IOFreeData();
  }

  else
  {
    v14 = 3758097085;
    v16 = *(this + 6);
    v15 = this + 48;
    if (*(v16 + 16) && CCLogStream::shouldLog())
    {
      AppleBCMWLANConfigManager::configureBeaconDriftOffsetConfig(v15);
    }
  }

  return v14;
}

uint64_t *AppleBCMWLANConfigManager::querySDBPolicies(AppleBCMWLANCore ***this)
{
  v1 = (this + 6);
  result = AppleBCMWLANCore::checkForSDBSupport(*this[6]);
  if (result)
  {
    v3 = IOMallocZeroData();
    if (v3)
    {
      v4 = v3;
      v29[0] = v3;
      v29[1] = 0x40000000400;
      v5 = IOMallocZeroData();
      if (v5)
      {
        v6 = v5;
        v28[0] = v5;
        v28[1] = 1024;
        *v5 = 0x8000;
        *(v5 + 2) = 1;
        *(v5 + 4) = 0x100040000;
        if (AppleBCMWLANCommander::runIOVarGet((*v1)[3], "rsdb", v28, v29, 0))
        {
          if ((*v1)[2])
          {
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANConfigManager::querySDBPolicies(v1);
            }
          }
        }

        else if (*(v4 + 4) || *(v4 + 8) || *(v4 + 6) < 6u || *(v4 + 12) != 1)
        {
          if ((*v1)[2] && CCLogStream::shouldLog())
          {
            v20 = *(v4 + 8);
            v24 = *(v4 + 12);
            v16 = *(v4 + 4);
            CCLogStream::logAlert((*v1)[2], "[dk] %s@%d:Rsdb version check failure, id:%d status:%d ver:%d\n");
          }
        }

        else
        {
          *(v6 + 4) = 1;
          if (AppleBCMWLANCommander::runIOVarGet((*v1)[3], "rsdb", v28, v29, 0))
          {
            if ((*v1)[2] && CCLogStream::shouldLog())
            {
              AppleBCMWLANConfigManager::querySDBPolicies(v1);
            }
          }

          else if (*(v4 + 4) != 1 || *(v4 + 8) || *(v4 + 6) <= 0xBu)
          {
            if ((*v1)[2] && CCLogStream::shouldLog())
            {
              v18 = *(v4 + 8);
              v22 = *(v4 + 6);
              v14 = *(v4 + 4);
              CCLogStream::logAlert((*v1)[2], "[dk] %s@%d:Rsdb Caps check failure, id:%d status:%d len:%d\n");
            }
          }

          else
          {
            v7 = *(v4 + 12);
            v8 = *(v4 + 13);
            v9 = *(v4 + 16);
            v10 = *(v4 + 17);
            AppleBCMWLANCore::updateRSDBCaps(**v1, v4 + 12);
            *(v6 + 4) = 2;
            if (AppleBCMWLANCommander::runIOVarGet((*v1)[3], "rsdb", v28, v29, 0))
            {
              if ((*v1)[2] && CCLogStream::shouldLog())
              {
                AppleBCMWLANConfigManager::querySDBPolicies(v1);
              }
            }

            else if (*(v4 + 4) != 2 || *(v4 + 8) || *(v4 + 6) <= 7u)
            {
              if ((*v1)[2] && CCLogStream::shouldLog())
              {
                v19 = *(v4 + 8);
                v23 = *(v4 + 6);
                v15 = *(v4 + 4);
                CCLogStream::logAlert((*v1)[2], "[dk] %s@%d:Rsdb Bands check failure, id:%d status:%d len:%d\n");
              }
            }

            else
            {
              v11 = *(v4 + 14);
              v12 = *(v4 + 15);
              *(v6 + 4) = 3;
              if (AppleBCMWLANCommander::runIOVarGet((*v1)[3], "rsdb", v28, v29, 0))
              {
                if ((*v1)[2] && CCLogStream::shouldLog())
                {
                  AppleBCMWLANConfigManager::querySDBPolicies(v1);
                }
              }

              else if (*(v4 + 4) != 3 || *(v4 + 8) || *(v4 + 6) <= 0x13u)
              {
                if ((*v1)[2] && CCLogStream::shouldLog())
                {
                  v21 = *(v4 + 8);
                  v25 = *(v4 + 6);
                  v17 = *(v4 + 4);
                  CCLogStream::logAlert((*v1)[2], "[dk] %s@%d:Rsdb Config check failure, id:%d status:%d len:%d\n");
                }
              }

              else if ((*v1)[2])
              {
                v27 = *(v4 + 24);
                v13 = *(v4 + 20);
                v26 = *(v4 + 16);
                if (CCLogStream::shouldLog())
                {
                  CCLogStream::logAlert((*v1)[2], "[dk] %s@%d:SDB Capabilities: SDB:%d cores:%d curMode:%d Slice0 [%d %d %0X] Slice1 [%d %d %0X]\n", "querySDBPolicies", 2198, v7);
                }
              }
            }
          }
        }

        IOFreeData();
      }

      else if ((*v1)[2] && CCLogStream::shouldLog())
      {
        AppleBCMWLANConfigManager::querySDBPolicies(v1);
      }

      return IOFreeData();
    }

    else
    {
      result = (*v1)[2];
      if (result)
      {
        result = CCLogStream::shouldLog();
        if (result)
        {
          return AppleBCMWLANConfigManager::querySDBPolicies(v1);
        }
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANConfigManager::configureRangingParams(AppleBCMWLANConfigManager *this)
{
  v31 = 0u;
  memset(v32, 0, sizeof(v32));
  v30 = 0u;
  memset(v29, 0, sizeof(v29));
  LOWORD(v29[0]) = 2;
  v28[0] = v29;
  v28[1] = 0x9C009C009CLL;
  v1 = (this + 48);
  v2 = *(*(this + 6) + 24);
  v26 = v29;
  v27 = 156;
  v3 = AppleBCMWLANCommander::runIOVarGet(v2, "proxd_tune", &v26, v28, 0);
  v4 = *v1;
  if (v3)
  {
    v5 = v3;
    result = *(v4 + 16);
    if (result)
    {
      result = CCLogStream::shouldLog();
      if (result)
      {
        return CCLogStream::logAlert(*(*v1 + 16), "[dk] %s@%d:Failure getting proxd_tune config %d\n", "configureRangingParams", 2219, v5);
      }
    }
  }

  else
  {
    AppleBCMWLANCore::getFirmwareInterfaceVersion(*v4);
    v7 = *v1;
    BYTE1(v31) = *(*v1 + 234) & 1;
    *(&v30 + 3) = 1048601;
    v8 = *(v7 + 24);
    v26 = v29;
    v27 = 156;
    v9 = AppleBCMWLANCommander::runIOVarSet(v8, "proxd_tune", &v26, 0, 0);
    v10 = *v1;
    if (v9)
    {
      if (*(v10 + 16))
      {
        v11 = *(v10 + 16);
        shouldLog = CCLogStream::shouldLog();
        v10 = *v1;
        if (shouldLog)
        {
          AppleBCMWLANConfigManager::configureRangingParams(v10, v9, v1, &v26);
          v10 = v26;
        }
      }
    }

    v25 = 0;
    v24 = 0;
    v22 = 2;
    v23 = 257;
    AppleBCMWLANCommander::getMaxCmdRxPayload(*(v10 + 24));
    v13 = IOMallocZeroData();
    MaxCmdRxPayload = AppleBCMWLANCommander::getMaxCmdRxPayload(*(*v1 + 24));
    v15 = AppleBCMWLANCommander::getMaxCmdRxPayload(*(*v1 + 24));
    if (MaxCmdRxPayload)
    {
      v16 = v13;
    }

    else
    {
      v16 = 0;
    }

    if (MaxCmdRxPayload)
    {
      v17 = v13 == 0;
    }

    else
    {
      v17 = 1;
    }

    v18 = (v15 << 32) | MaxCmdRxPayload;
    if (v17)
    {
      v18 = 0;
    }

    v26 = v16;
    v27 = v18;
    v19 = *(*v1 + 24);
    v21[0] = &v22;
    v21[1] = 12;
    result = AppleBCMWLANCommander::runIOVarGet(v19, "proxd_collect", v21, &v26, 0);
    if (result && (v20 = result, (result = *(*v1 + 16)) != 0) && (result = CCLogStream::shouldLog(), result))
    {
      result = CCLogStream::logAlert(*(*v1 + 16), "[dk] %s@%d: Failed GET IOCTL, cret[0x%08x]\n", "configureRangingParams", 2259, v20);
      if (!v13)
      {
        return result;
      }
    }

    else if (!v13)
    {
      return result;
    }

    return IOFreeData();
  }

  return result;
}

uint64_t AppleBCMWLANConfigManager::determine6GConfiguration(AppleBCMWLANCore ***this)
{
  v2 = AppleBCMWLANCore::checkFor6GSupportCardCapability(*this[6]);
  v3 = this[6];
  if (v2 && *(v3 + 390) == 1 && (*(v3 + 391) & 1) != 0)
  {
    result = 1;
  }

  else
  {
    result = v3[2];
    if (result)
    {
      result = CCLogStream::shouldLog();
      v3 = this[6];
      if (result)
      {
        CCLogStream::logAlertIf(v3[2], 0x4000uLL, "[dk] %s@%d:%s WiFiRoam : 6GHz roaming is not allowed.  Chip capability : [%d] Roaming enabled via boot-arg ? : [%d] Platform Support : [%d] \n", "determine6GConfiguration", 2277, "determine6GConfiguration", v2, *(v3 + 390), *(v3 + 391));
        result = 0;
        v3 = this[6];
      }
    }
  }

  *(v3 + 392) = result;
  return result;
}

uint64_t AppleBCMWLANConfigManager::setupBeaconOffload(AppleBCMWLANCore ***this, int a2, int a3, int a4, char a5)
{
  v10 = this + 6;
  BssManager = AppleBCMWLANCore::getBssManager(*this[6]);
  if (AppleBCMWLANCore::checkForLPSCDisable(**v10))
  {
    if ((*v10)[2] && CCLogStream::shouldLog())
    {
      AppleBCMWLANConfigManager::setupBeaconOffload(v10);
    }

    a3 = 0;
    a2 = 0;
  }

  if ((a5 & 1) == 0 && (IO80211BssManager::isAssociated(BssManager) & 1) == 0)
  {
    if ((*v10)[2] && CCLogStream::shouldLog())
    {
      AppleBCMWLANConfigManager::setupBeaconOffload(v10);
    }

    return 0;
  }

  if ((a2 & a4) == 1 && AppleBCMWLANCore::getBtScoForIphone(**v10))
  {
    if ((*v10)[2] && CCLogStream::shouldLog())
    {
      AppleBCMWLANConfigManager::setupBeaconOffload(v10);
    }

    return 0;
  }

  if ((IO80211BssManager::isAssociatedToAdhoc(BssManager) & 1) != 0 || !AppleBCMWLANCore::checkForScanCoreSupport(**v10))
  {
    return 0;
  }

  v32 = 0;
  v26 = 1;
  v28 = a2;
  if (a3)
  {
    v12 = 3;
  }

  else
  {
    v12 = 1;
  }

  v29 = v12;
  v30 = 3;
  v13 = *v10;
  if ((*v10)[2])
  {
    shouldLog = CCLogStream::shouldLog();
    v13 = *v10;
    if (shouldLog)
    {
      v20 = v13[2];
      v21 = "disabled";
      if (a2)
      {
        v21 = "enabled";
      }

      v22 = "relaxed";
      if (a3)
      {
        v22 = "strict";
      }

      CCLogStream::logInfo(v20, "[dk] %s@%d:Setup beacon offload %s with %s params \n", "setupBeaconOffload", 2339, v21, v22);
      v13 = *v10;
    }
  }

  v31 = 1466;
  v27 = 4128784;
  v15 = (*(**v13 + 88))();
  if ((*(*v15 + 136))(v15))
  {
    v23 = this;
    v24 = AppleBCMWLANConfigManager::handleBeaconOffloadAsyncCallBack;
    v25 = 0;
    v16 = AppleBCMWLANCommander::sendIOVarSet(this[6][3], "sta_pm_sc_offload");
  }

  else
  {
    v19 = (*v10)[3];
    v23 = &v26;
    v24 = 16;
    v16 = AppleBCMWLANCommander::runIOVarSet(v19, "sta_pm_sc_offload", &v23, 0, 0);
  }

  v17 = v16;
  if (v16 && (*v10)[2] && CCLogStream::shouldLog())
  {
    AppleBCMWLANConfigManager::setupBeaconOffload(v10);
  }

  return v17;
}