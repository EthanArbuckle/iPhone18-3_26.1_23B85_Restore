uint64_t AppleBCMWLANPCIeCompletionRing::printRingState(AppleBCMWLANPCIeCompletionRing *this, const char *a2)
{
  result = AppleBCMWLANByteRing::getLogger(this);
  if (result)
  {
    AppleBCMWLANByteRing::getLogger(this);
    result = CCLogStream::shouldLog();
    if (result)
    {
      return AppleBCMWLANPCIeCompletionRing::printRingState(this, a2);
    }
  }

  return result;
}

uint64_t AppleBCMWLANPCIeCompletionRing::getRingFromChain(uint64_t a1)
{
  if (a1 == 184)
  {
    return 0;
  }

  else
  {
    return *(a1 - 8);
  }
}

uint64_t OUTLINED_FUNCTION_0_23(uint64_t a1)
{

  return AppleBCMWLANItemRing::CallErrorAction(a1, 3825173271, 0);
}

OSObject *AppleBCMWLANPCIeTransmitFlowRing::withOptions(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = 0xAAAAAAAAAAAAAAAALL;
  if (OSObjectAllocate(gAppleBCMWLANPCIeTransmitFlowRingMetaClass, &v12))
  {
    return 0;
  }

  v10 = v12;
  if (v12 && ((v12->OSMetaClassBase::__vftable[7].init)(v12, a1, a2, a3, a4, a5) & 1) == 0)
  {
    (v10->release)(v10);
    return 0;
  }

  return v10;
}

uint64_t AppleBCMWLANPCIeTransmitFlowRing::initWithOwnerAndFillAction(uint64_t a1, OSObject *a2, void (*a3)(OSObject *, ...), void (*a4)(OSObject *, AppleBCMWLANByteRing *, int, void *), uint64_t a5, uint64_t a6)
{
  result = AppleBCMWLANPCIeSubmissionRing::initWithOwnerAndOptions(a1, a2, a3, a4, (a5 + 8), a6);
  if (result)
  {
    result = IOMallocZeroTyped();
    *(a1 + 128) = result;
    if (result)
    {
      *(result + 6) = *(a5 + 136);
      v9 = *(a1 + 128);
      v10 = *(a5 + 137);
      *(v9 + 11) = *(a5 + 141);
      *(v9 + 7) = v10;
      v11 = *(a1 + 128);
      v12 = *(a5 + 143);
      *(v11 + 17) = *(a5 + 147);
      *(v11 + 13) = v12;
      *(*(a1 + 128) + 19) = *(a5 + 149);
      *(*(a1 + 128) + 20) = *(a5 + 168);
      *(*(a1 + 128) + 21) = *(a5 + 169);
      *(*(a1 + 128) + 24) = *(a5 + 152);
      *(*(a1 + 128) + 28) = *(a5 + 170);
      *(*(a1 + 128) + 29) = *(a5 + 171);
      *(*(a1 + 128) + 32) = *(a5 + 176);
      AppleBCMWLANItemRing::getItemCount(a1);
      return 1;
    }
  }

  return result;
}

uint64_t AppleBCMWLANPCIeTransmitFlowRing::free(AppleBCMWLANPCIeTransmitFlowRing *this)
{
  v2 = *(this + 16);
  if (v2)
  {
    memset_s(v2, 0x30uLL, 0, 0x30uLL);
    v3 = *(this + 16);
    if (v3)
    {
      IOFree(v3, 0x30uLL);
      *(this + 16) = 0;
    }
  }

  return AppleBCMWLANPCIeSubmissionRing::free(this);
}

uint64_t AppleBCMWLANPCIeTransmitFlowRing::requestRingFill(AppleBCMWLANPCIeTransmitFlowRing *this, int a2, int a3)
{
  if (**(this + 16) == 3)
  {
    return AppleBCMWLANPCIeSubmissionRing::requestRingFill(this, a2, a3);
  }

  else
  {
    return 0;
  }
}

uint64_t non-virtual thunk toAppleBCMWLANPCIeTransmitFlowRing::requestRingFill(AppleBCMWLANPCIeTransmitFlowRing *this, int a2, int a3)
{
  if (**(this + 5) == 3)
  {
    return AppleBCMWLANPCIeSubmissionRing::requestRingFill((this - 88), a2, a3);
  }

  else
  {
    return 0;
  }
}

uint64_t AppleBCMWLANPCIeTransmitFlowRing::checkForWork(AppleBCMWLANPCIeTransmitFlowRing *this)
{
  if (**(this + 16) == 3)
  {
    return AppleBCMWLANPCIeSubmissionRing::checkForWork(this);
  }

  else
  {
    return 0;
  }
}

uint64_t non-virtual thunk toAppleBCMWLANPCIeTransmitFlowRing::checkForWork(AppleBCMWLANPCIeTransmitFlowRing *this)
{
  if (**(this + 11) == 3)
  {
    return AppleBCMWLANPCIeSubmissionRing::checkForWork((this - 40));
  }

  else
  {
    return 0;
  }
}

uint64_t AppleBCMWLANPCIeTransmitFlowRing::packetsWaitingForRingCount(AppleBCMWLANPCIeTransmitFlowRing *this, char a2)
{
  result = 0;
  if (a2)
  {
    v4 = *(this + 16);
    if (*v4 == 3)
    {
      v5 = *(v4 + 32);
      if (v5)
      {
        return *v5;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANPCIeTransmitFlowRing::copyDestinationAddress(uint64_t this, unsigned __int8 *a2)
{
  v2 = *(this + 128);
  v3 = *(v2 + 7);
  *(a2 + 2) = *(v2 + 11);
  *a2 = v3;
  return this;
}

uint64_t non-virtual thunk toAppleBCMWLANPCIeTransmitFlowRing::copyDestinationAddress(uint64_t this, unsigned __int8 *a2)
{
  v2 = *(this + 8);
  v3 = *(v2 + 7);
  *(a2 + 2) = *(v2 + 11);
  *a2 = v3;
  return this;
}

uint64_t AppleBCMWLANPCIeTransmitFlowRing::copySourceAddress(uint64_t this, unsigned __int8 *a2)
{
  v2 = *(this + 128);
  v3 = *(v2 + 13);
  *(a2 + 2) = *(v2 + 17);
  *a2 = v3;
  return this;
}

uint64_t non-virtual thunk toAppleBCMWLANPCIeTransmitFlowRing::copySourceAddress(uint64_t this, unsigned __int8 *a2)
{
  v2 = *(this + 8);
  v3 = *(v2 + 13);
  *(a2 + 2) = *(v2 + 17);
  *a2 = v3;
  return this;
}

uint64_t AppleBCMWLANPCIeTransmitFlowRing::dumpRingState(AppleBCMWLANPCIeTransmitFlowRing *this, const char *a2, char *a3)
{
  AppleBCMWLANByteRing::getLogger(this);
  IO80211WorkSource::isEnabled(this);
  (*(*this + 312))(this);
  (*(*this + 208))(this);
  (*(*this + 392))(this);
  (*(*this + 344))(this);
  v5 = *(this + 16);
  v19 = v5[18];
  v17 = v5[16];
  v18 = v5[17];
  v15 = v5[14];
  v16 = v5[15];
  v13 = v5[12];
  v14 = v5[13];
  v11 = v5[10];
  v12 = v5[11];
  v9 = v5[8];
  v10 = v5[9];
  v8 = v5[7];
  v6 = IO80211Print();
  return AppleBCMWLANPCIeSubmissionRing::dumpRingState(this, a2, a3) + v6;
}

uint64_t AppleBCMWLANPCIeTransmitFlowRing::printRingState(AppleBCMWLANPCIeTransmitFlowRing *this, const char *a2)
{
  result = AppleBCMWLANByteRing::getLogger(this);
  if (result)
  {
    AppleBCMWLANByteRing::getLogger(this);
    result = CCLogStream::shouldLog();
    if (result)
    {
      return AppleBCMWLANPCIeTransmitFlowRing::printRingState(this, a2);
    }
  }

  return result;
}

uint64_t non-virtual thunk toAppleBCMWLANPCIeTransmitFlowRing::enable(AppleBCMWLANPCIeTransmitFlowRing *this)
{
  v1 = this - 40;
  IO80211WorkSource::enable((this - 40));
  return IOLog("AppleBCMWLANPCIeTransmitFlowRing::enable %p\n", v1);
}

OSObject *AppleBCMWLANPCIeSubmissionRing::withOptions(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = 0xAAAAAAAAAAAAAAAALL;
  if (OSObjectAllocate(gAppleBCMWLANPCIeSubmissionRingMetaClass, &v12))
  {
    return 0;
  }

  v10 = v12;
  if (v12 && ((v12->OSMetaClassBase::__vftable[5].isEqualTo)(v12, a1, a2, a3, a4, a5) & 1) == 0)
  {
    (v10->release)(v10);
    return 0;
  }

  return v10;
}

uint64_t AppleBCMWLANPCIeSubmissionRing::initWithOwnerAndOptions(uint64_t **a1, OSObject *a2, void (*a3)(OSObject *, ...), void (*a4)(OSObject *, AppleBCMWLANByteRing *, int, void *), unsigned __int16 *a5, uint64_t a6)
{
  result = AppleBCMWLANTxItemRing::initWithOptions(a1, a2, a3, a4);
  if (!result)
  {
    return result;
  }

  result = IOMallocZeroTyped();
  a1[14] = result;
  v11 = a1 + 14;
  if (!result)
  {
    return result;
  }

  if (!a6)
  {
    ClassNameHelper = getClassNameHelper(a1);
    IOLog("%s::%s(): Unable to get debug logger\n", ClassNameHelper, "initWithOwnerAndOptions");
    return 0;
  }

  *(result + 216) = a6;
  v12 = (*v11)[27];
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

  AppleBCMWLANByteRing::setLogger(a1, a6);
  a1[14][23] = a2;
  *(a1[14] + 12) = 1;
  *(a1[14] + 28) = *a5;
  *(a1[14] + 58) = *(a5 + 2);
  a1[14][8] = *(a5 + 13);
  AppleBCMWLANItemRing::setItemCount(a1, *(a5 + 2));
  AppleBCMWLANItemRing::setItemSize(a1, *(a5 + 1));
  v13 = *(a5 + 2);
  v14 = (v13 * *(a5 + 1));
  v15 = *(a5 + 14);
  if (v14 % v15)
  {
    v16 = v15 - v14 % v15;
  }

  else
  {
    v16 = 0;
  }

  a1[14][12] = (v16 + v14);
  v17 = *a5;
  v18 = *(a5 + 11);
  a1[14][4] = *(a5 + 10) + 4 * v17;
  a1[14][5] = v18 + 4 * v17;
  v19 = *(a5 + 2);
  a1[14][20] = *(a5 + 3);
  a1[14][19] = v19;
  v20 = *(a5 + 4);
  a1[14][22] = *(a5 + 5);
  a1[14][21] = v20;
  *a1[14] = *(a5 + 6);
  *(a1[14] + 2) = *(a5 + 14);
  v21 = a1[14];
  if (*(v21 + 28) == 1)
  {
    *(v21 + 141) = 1;
    AppleBCMWLANPCIeDoorbell::setRXPacketThreshold(**v11, v13 >> 3);
    v21 = *v11;
    v15 = *(a5 + 14);
  }

  v21[13] = v21[12];
  if (AppleBCMWLANPCIeAllocateDartMappedMemory((*v11 + 9), v15, 2, *(a5 + 15)))
  {
    *(a1[14] + 12) = *(a1[14] + 30);
    *(a1[14] + 13) = *(a1[14] + 31);
    a1[14][24] = a1;
    *a1[14][5] = 0;
    *a1[14][4] = 0;
    return 1;
  }

  result = AppleBCMWLANByteRing::getLogger(a1);
  if (result)
  {
    AppleBCMWLANByteRing::getLogger(a1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      AppleBCMWLANPCIeSubmissionRing::initWithOwnerAndOptions(a1, (a1 + 14));
      return 0;
    }
  }

  return result;
}

uint64_t AppleBCMWLANPCIeSubmissionRing::resetSharedPointers(uint64_t this)
{
  **(*(this + 112) + 40) = 0;
  **(*(this + 112) + 32) = 0;
  return this;
}

uint64_t AppleBCMWLANPCIeSubmissionRing::free(AppleBCMWLANPCIeSubmissionRing *this)
{
  v2 = *(this + 14);
  if (v2)
  {
    v3 = *(v2 + 216);
    if (v3)
    {
      (*(*v3 + 16))(v3);
      *(*(this + 14) + 216) = 0;
      v2 = *(this + 14);
    }

    AppleBCMWLANPCIeFreeDartMappedMemory(v2 + 72);
    memset_s(*(this + 14), 0xE0uLL, 0, 0xE0uLL);
    v4 = *(this + 14);
    if (v4)
    {
      IOFree(v4, 0xE0uLL);
      *(this + 14) = 0;
    }
  }

  return AppleBCMWLANTxItemRing::free(this);
}

uint64_t AppleBCMWLANPCIeSubmissionRing::requestRingFill(AppleBCMWLANPCIeSubmissionRing *this, int a2, int a3)
{
  if (a3)
  {
    v5 = *(this + 14);
    v6 = *(v5 + 168);
    if (v6)
    {
      v7 = *(v5 + 176);
      v8 = (*(*this + 208))(this);
      v6(v7, v8);
    }
  }

  v9 = (*(*this + 232))(this);
  v10 = (*(*this + 224))(this);
  if (!a2)
  {
    return 0;
  }

  v11 = v10;
  v12 = 0;
  while (1)
  {
    if (!AppleBCMWLANItemRing::getWritableItemCount(this, v9, v11))
    {
      goto LABEL_21;
    }

    v13 = *(*(this + 14) + 112);
    ItemSize = AppleBCMWLANItemRing::getItemSize(this);
    if (!(*(*this + 184))(this))
    {
      if (AppleBCMWLANByteRing::getLogger(this))
      {
        AppleBCMWLANByteRing::getLogger(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANPCIeSubmissionRing::requestRingFill(this);
          if (!v12)
          {
            return v12;
          }

          goto LABEL_22;
        }
      }

      goto LABEL_21;
    }

    if (!*(*(this + 14) + 184))
    {
      break;
    }

    v15 = ItemSize * v9;
    v16 = (*(*this + 184))(this);
    v17 = *(*(this + 14) + 184);
    WritableItemCountContinuous = AppleBCMWLANItemRing::getWritableItemCountContinuous(this, v9, v11);
    v19 = v16(v17, this, v13 + v15, WritableItemCountContinuous);
    if (v19)
    {
      v20 = v19;
      v9 += v19;
      if (v9 >= AppleBCMWLANItemRing::getItemCount(this))
      {
        v9 = 0;
        *(*(this + 14) + 12) ^= 1u;
      }

      v12 = (v20 + v12);
      **(*(this + 14) + 40) = v9;
      if (--a2)
      {
        continue;
      }
    }

    goto LABEL_21;
  }

  if (!AppleBCMWLANByteRing::getLogger(this) || (AppleBCMWLANByteRing::getLogger(this), !CCLogStream::shouldLog()))
  {
LABEL_21:
    if (!v12)
    {
      return v12;
    }

    goto LABEL_22;
  }

  AppleBCMWLANPCIeSubmissionRing::requestRingFill(this);
  if (!v12)
  {
    return v12;
  }

LABEL_22:
  mach_continuous_time();
  v21 = *(this + 14);
  absolutetime_to_nanoseconds();
  *(*(this + 14) + 136) = v9;
  v22 = *(this + 14);
  v23 = *v22;
  if (*(v22 + 140) == 1)
  {
    AppleBCMWLANPCIeDoorbell::ringNow(v23);
    *(*(this + 14) + 140) = 0;
  }

  else
  {
    AppleBCMWLANPCIeDoorbell::ring(v23, *(v22 + 8), *(v22 + 141), v12);
  }

  return v12;
}

uint64_t AppleBCMWLANPCIeSubmissionRing::getReadIndex(AppleBCMWLANPCIeSubmissionRing *this)
{
  v2 = **(*(this + 14) + 32);
  if (v2 >= AppleBCMWLANItemRing::getItemCount(this))
  {
    AppleBCMWLANPCIeSubmissionRing::getReadIndex(this);
  }

  return v2;
}

uint64_t AppleBCMWLANPCIeSubmissionRing::getWriteIndex(AppleBCMWLANPCIeSubmissionRing *this)
{
  v2 = **(*(this + 14) + 40);
  if (v2 >= AppleBCMWLANItemRing::getItemCount(this))
  {
    AppleBCMWLANPCIeSubmissionRing::getWriteIndex(this);
  }

  return v2;
}

uint64_t AppleBCMWLANPCIeSubmissionRing::getIndices(AppleBCMWLANPCIeSubmissionRing *this, unsigned int *a2, unsigned int *a3)
{
  v6 = **(*(this + 14) + 32);
  if (v6 >= AppleBCMWLANItemRing::getItemCount(this) || (*a2 = v6, v6 = **(*(this + 14) + 40), result = AppleBCMWLANItemRing::getItemCount(this), v6 >= result))
  {
    AppleBCMWLANItemRing::CallErrorAction(this, 3825173271, 0);
    panic("AppleBCMWLANPCIeSubmissionRing::getIndices() Invalid index(0x%x)\n", v6);
  }

  *a3 = v6;
  return result;
}

uint64_t AppleBCMWLANPCIeSubmissionRing::getBusAddress(uint64_t result, _DWORD *a2)
{
  *a2 = *(*(result + 112) + 48);
  a2[1] = *(*(result + 112) + 52);
  return result;
}

uint64_t non-virtual thunk toAppleBCMWLANPCIeSubmissionRing::getBusAddress(uint64_t result, _DWORD *a2)
{
  *a2 = *(*(result + 8) + 48);
  a2[1] = *(*(result + 8) + 52);
  return result;
}

uint64_t AppleBCMWLANPCIeSubmissionRing::checkForWork(AppleBCMWLANPCIeSubmissionRing *this)
{
  if (IO80211WorkSource::isEnabled(this))
  {
    v2 = *(this + 14);
    v3 = *(v2 + 152);
    if (v3)
    {
      v4 = *(v2 + 160);
      v5 = (*(*this + 208))(this);
      WritableItemCount = v3(v4, v5);
      if (AppleBCMWLANItemRing::getWritableItemCount(this) < WritableItemCount)
      {
        WritableItemCount = AppleBCMWLANItemRing::getWritableItemCount(this);
      }

      if (WritableItemCount)
      {
        (*(*this + 192))(this, WritableItemCount, 1);
      }
    }

    else
    {
      AppleBCMWLANItemRing::getWritableItemCount(this);
    }
  }

  return 0;
}

uint64_t AppleBCMWLANPCIeSubmissionRing::dumpRingState(AppleBCMWLANPCIeSubmissionRing *this, const char *a2, char *a3)
{
  AppleBCMWLANByteRing::getLogger(this);
  IO80211WorkSource::isEnabled(this);
  v4 = *(this + 14);
  v5 = **(v4 + 32);
  v6 = **(v4 + 40);
  AppleBCMWLANItemRing::getReadableItemCount(this);
  AppleBCMWLANItemRing::getWritableItemCount(this);
  AppleBCMWLANItemRing::getItemSize(this);
  (*(*this + 248))(this);
  v7 = *(this + 14);
  v8 = *(v7 + 128);
  v13 = *(v7 + 112);
  v11 = *(v7 + 152) != 0;
  v12 = *(v7 + 160) != 0;
  v10 = *(v7 + 136);
  return IO80211Print();
}

uint64_t AppleBCMWLANPCIeSubmissionRing::printRingState(AppleBCMWLANPCIeSubmissionRing *this, const char *a2)
{
  result = AppleBCMWLANByteRing::getLogger(this);
  if (result)
  {
    AppleBCMWLANByteRing::getLogger(this);
    result = CCLogStream::shouldLog();
    if (result)
    {
      return AppleBCMWLANPCIeSubmissionRing::printRingState(this, a2);
    }
  }

  return result;
}

uint64_t AppleBCMWLANPCIeSubmissionRing::getCounter(AppleBCMWLANPCIeSubmissionRing *this)
{
  v1 = *(this + 14);
  v2 = *(v1 + 144) + 1;
  *(v1 + 144) = v2;
  return v2;
}

uint64_t non-virtual thunk toAppleBCMWLANPCIeSubmissionRing::getCounter(AppleBCMWLANPCIeSubmissionRing *this)
{
  v1 = *(this + 1);
  v2 = *(v1 + 144) + 1;
  *(v1 + 144) = v2;
  return v2;
}

uint64_t AppleBCMWLANPCIeSubmissionRing::getRingFromChain(uint64_t a1)
{
  if (a1 == 200)
  {
    return 0;
  }

  else
  {
    return *(a1 - 8);
  }
}

IO80211Controller *AppleBCMWLANCore::postLQMEvent(IO80211Controller *result, void *a2)
{
  v3 = *(*(result + 9) + 11288);
  if (v3)
  {
    return IO80211Controller::postMessage(result, v3, 0x27u, a2, 0x1D8uLL, 1);
  }

  return result;
}

IO80211Controller *AppleBCMWLANCore::postChanQualEvent(IO80211Controller *result, void *a2)
{
  v3 = *(*(result + 9) + 11288);
  if (v3)
  {
    return IO80211Controller::postMessage(result, v3, 0x3Cu, a2, 0x1CuLL, 1);
  }

  return result;
}

uint64_t AppleBCMWLANCore::safe_align_up(AppleBCMWLANCore *this, uint64_t a2, unint64_t a3, unint64_t *a4)
{
  v4 = a3;
  if (a2)
  {
    if (a3)
    {
      v5 = (a2 - 1) & -a3;
      v4 = a3 + v5;
      if (!__CFADD__(a3, v5))
      {
        goto LABEL_7;
      }

      AppleBCMWLANCore::safe_align_up(this);
    }

    else
    {
      AppleBCMWLANCore::safe_align_up(this);
    }

    return v7;
  }

  if (!a3)
  {
    AppleBCMWLANCore::safe_align_up(this);
    return v7;
  }

LABEL_7:
  result = 0;
  *a4 = v4;
  return result;
}

uint64_t AppleBCMWLANCore::getLqmRssiLevels(uint64_t this, signed __int8 *a2)
{
  v2 = *(*(this + 72) + 17776);
  *(a2 + 3) = *(*(this + 72) + 17779);
  *a2 = v2;
  return this;
}

BOOL AppleBCMWLANCore::is4387C0Up(AppleBCMWLANCore *this)
{
  v2 = (*(**(*(this + 9) + 5392) + 368))(*(*(this + 9) + 5392));
  v3 = v2 == 4388 || v2 == 4399;
  result = 1;
  if (!v3)
  {
    if (v2 != 4387)
    {
      return 0;
    }

    v6 = 0;
    *v5 = 0;
    AppleBCMWLANCore::getChipRevString(this, v5, 3uLL);
    if (*v5 ^ 0x3043 | v6)
    {
      if (*v5 ^ 0x3243 | v6)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::dumpCurTxDCSummary(AppleBCMWLANCore *this)
{
  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::dumpCurTxDCSummary(this);
    }
  }

  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::dumpCurTxDCSummary(this);
    }
  }

  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::dumpCurTxDCSummary(this);
    }
  }

  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::dumpCurTxDCSummary(this);
    }
  }

  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::dumpCurTxDCSummary(this);
    }
  }

  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::dumpCurTxDCSummary(this);
    }
  }

  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::dumpCurTxDCSummary(this);
    }
  }

  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::dumpCurTxDCSummary(this);
    }
  }

  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::dumpCurTxDCSummary(this);
    }
  }

  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::dumpCurTxDCSummary(this);
    }
  }

  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::dumpCurTxDCSummary(this);
    }
  }

  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::dumpCurTxDCSummary(this);
    }
  }

  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::dumpCurTxDCSummary(this);
    }
  }

  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::dumpCurTxDCSummary(this);
    }
  }

  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::dumpCurTxDCSummary(this);
    }
  }

  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::dumpCurTxDCSummary(this);
    }
  }

  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::dumpCurTxDCSummary(this);
    }
  }

  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::dumpCurTxDCSummary(this);
    }
  }

  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::dumpCurTxDCSummary(this);
    }
  }

  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::dumpCurTxDCSummary(this);
    }
  }

  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::dumpCurTxDCSummary(this);
    }
  }

  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::dumpCurTxDCSummary(this);
    }
  }

  result = (*(*this + 1952))(this);
  if (result)
  {
    (*(*this + 1952))(this);
    result = CCLogStream::shouldLog();
    if (result)
    {
      return AppleBCMWLANCore::dumpCurTxDCSummary(this);
    }
  }

  return result;
}

uint64_t *AppleBCMWLANCore::updateSCTxBlankingSummary(uint64_t *this, unsigned int a2, unsigned int a3)
{
  v3 = this;
  if (a3)
  {
    v4 = this[9];
    if (*(v4 + 17960) >= a2)
    {
      ++*(v4 + 17984);
      v5 = this[9];
      if (a3 > 0x23)
      {
        ++*(v5 + 17976);
      }

      else
      {
        ++*(v5 + 17968);
      }
    }

    else if (*(v4 + 17992) >= a2)
    {
      ++*(v4 + 18016);
      v6 = this[9];
      if (a3 > 0x23)
      {
        ++*(v6 + 18008);
      }

      else
      {
        ++*(v6 + 18000);
      }
    }

    else if (*(v4 + 18024) >= a2)
    {
      ++*(v4 + 18048);
      v7 = this[9];
      if (a3 > 0x23)
      {
        ++*(v7 + 18040);
      }

      else
      {
        ++*(v7 + 18032);
      }
    }

    else if (*(v4 + 18056) >= a2)
    {
      ++*(v4 + 18080);
      v8 = this[9];
      if (a3 > 0x23)
      {
        ++*(v8 + 18072);
      }

      else
      {
        ++*(v8 + 18064);
      }
    }

    else
    {
      this = (*(*this + 1952))(this);
      if (this)
      {
        (*(*v3 + 1952))(v3);
        this = CCLogStream::shouldLog();
        if (this)
        {
          return AppleBCMWLANCore::updateSCTxBlankingSummary(v3);
        }
      }
    }
  }

  else
  {
    this = (*(*this + 1952))(this);
    if (this)
    {
      (*(*v3 + 1952))(v3);
      this = CCLogStream::shouldLog();
      if (this)
      {
        return AppleBCMWLANCore::updateSCTxBlankingSummary(v3);
      }
    }
  }

  return this;
}

uint64_t AppleBCMWLANCore::requestQueueSizeAndTimeout(IOService *this, unsigned __int16 *a2, unsigned __int16 *a3)
{
  DTParameter32 = AppleBCMWLANUtil::getDTParameter32(this, "IOService", "wlan.coalesce.qsize", 0);
  v7 = AppleBCMWLANUtil::getDTParameter32(this, "IOService", "wlan.coalesce.timeout", 0);
  if (DTParameter32)
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    return 3758097095;
  }

  v9 = v7;
  result = 0;
  *a2 = DTParameter32;
  *a3 = v9;
  return result;
}

BOOL AppleBCMWLANCore::init(OSObject *this, OSDictionary *a2)
{
  v4 = IOMallocZeroTyped();
  this[1].ivars = v4;
  p_ivars = &this[1].ivars;
  if (!v4)
  {
    return 0;
  }

  if ((IO80211Controller::init(this, a2) & 1) == 0)
  {
    getClassNameHelper(this);
    IOLog("%s::%s(): super failed to init!\n");
    return 0;
  }

  v6 = kAppleBCMWLANBuildTag[0];
  v7 = kAppleBCMWLANBuildDate[0];
  if (AppleBCMWLAN_isVerboseDebugLoggingAllowed())
  {
    v8 = "[Debuggable - verbose]";
  }

  else
  {
    v8 = "";
  }

  if (AppleBCMWLAN_isSoCRAMCaptureAllowed())
  {
    v9 = "[Debuggable - socram]";
  }

  else
  {
    v9 = "";
  }

  isDebugCommandActionAllowed = AppleBCMWLAN_isDebugCommandActionAllowed();
  v11 = "[Debuggable - debug command]";
  if (!isDebugCommandActionAllowed)
  {
    v11 = "";
  }

  IOLog("%s %s %s %s  (%s %s %s)\n", v6, "AppleBCMWLANV3_driverkit-1535.9.4.1", v7, "release", v8, v9, v11);
  *(p_ivars->ivars + 2229) = IOLockAlloc();
  if (!*(p_ivars->ivars + 2229))
  {
    getClassNameHelper(this);
    IOLog("%s::%s(): Failed to allocate lock\n");
    return 0;
  }

  *(p_ivars->ivars + 148) = IOLockAlloc();
  if (!*(p_ivars->ivars + 148))
  {
    getClassNameHelper(this);
    IOLog("%s::%s(): Failed to allocate event bit lock\n");
    return 0;
  }

  if (IOParseBootArgNumber("WTE", p_ivars->ivars + 10736, 4))
  {
    IOLog("Enabling WTE Options 0x%x\n", *(p_ivars->ivars + 2684));
  }

  v12 = IOParseBootArgNumber("bcom.wte.thread-priority", p_ivars->ivars + 10740, 4);
  ivars = p_ivars->ivars;
  if (v12)
  {
    IOLog(" Setting WTE Thread Priority to %d\n", *(ivars + 2685));
  }

  else
  {
    *(ivars + 2685) = -50;
  }

  v39 = -1431655766;
  if (IOParseBootArgNumber("wlan.panic.pqs", &v39, 4))
  {
    *(p_ivars->ivars + 2593) |= 8u;
  }

  if (IOParseBootArgNumber("wlan.panic.oqs", &v39, 4))
  {
    *(p_ivars->ivars + 2593) |= 0x10u;
  }

  if (IOParseBootArgNumber("wlan.panic.aqs", &v39, 4))
  {
    *(p_ivars->ivars + 2593) |= 0x20u;
  }

  if (IOParseBootArgNumber("wlan.panic.queuestall", &v39, 4))
  {
    *(p_ivars->ivars + 2593) |= 0x18u;
  }

  if (IOParseBootArgNumber("wlan.panic.queuefull", &v39, 4))
  {
    *(p_ivars->ivars + 2593) |= 0x800u;
  }

  *(p_ivars->ivars + 8) = 0;
  if (IOParseBootArgNumber("wlan.panic.problem", &v39, 4))
  {
    v16 = p_ivars->ivars;
    if (v39)
    {
      *(v16 + 8) = v39;
    }

    else
    {
      *(v16 + 2593) |= 0x40u;
    }
  }

  if (IOParseBootArgNumber("wlan.sdb.support", &v39, 4) || IOParseBootArgNumber("wlan.factory", &v39, 4) && (v39 & 2) != 0)
  {
    IOLog(" Forcing SDB support\n");
    *(p_ivars->ivars + 2593) |= 0x200u;
  }

  v38 = 0;
  if (IOParseBootArgNumber("wlan.socramdump.disable", &v38, 4) && v38)
  {
    IOLog(" Disabling SoCRAM dumps.\n");
    *(p_ivars->ivars + 2593) |= 4u;
  }

  *(p_ivars->ivars + 10368) = 1;
  if (IOParseBootArgNumber("wlan.debug.nowdogondisassoc", &v39, 4))
  {
    *(p_ivars->ivars + 10368) = 0;
  }

  if (IOParseBootArgNumber("wlan.debug.enablescaneventlogs", &v39, 4))
  {
    *(p_ivars->ivars + 956) = 1;
  }

  *(p_ivars->ivars + 4439) = 30;
  if (IOParseBootArgNumber("wlan.pmalert.dutycycle", &v39, 4))
  {
    *(p_ivars->ivars + 4439) = v39;
  }

  *(p_ivars->ivars + 1678) = 120;
  *(p_ivars->ivars + 4960) = 0;
  *(p_ivars->ivars + 4958) = 0;
  *(p_ivars->ivars + 2586) = 90000;
  v17 = p_ivars->ivars;
  nanoseconds_to_absolutetime();
  *(p_ivars->ivars + 3549) = 0;
  *(p_ivars->ivars + 3548) = 0;
  *(p_ivars->ivars + 2796) = 1;
  *(p_ivars->ivars + 761) = 0;
  *(p_ivars->ivars + 1650) = 75;
  *(p_ivars->ivars + 1651) = 60;
  *(p_ivars->ivars + 1652) = -1;
  *(p_ivars->ivars + 1654) = -1;
  *(p_ivars->ivars + 1653) = -1;
  *(p_ivars->ivars + 1655) = 86400000;
  *(p_ivars->ivars + 828) = 0;
  *(p_ivars->ivars + 1658) = -1;
  *(p_ivars->ivars + 1659) = 3;
  *(p_ivars->ivars + 1660) = 300;
  *(p_ivars->ivars + 1661) = 900000;
  *(p_ivars->ivars + 1663) = -1;
  *(p_ivars->ivars + 1662) = 720000;
  *(p_ivars->ivars + 1664) = 86400000;
  *(p_ivars->ivars + 1668) = 0;
  *(p_ivars->ivars + 833) = 0;
  *(p_ivars->ivars + 1665) = 900000;
  *(p_ivars->ivars + 6676) = 0;
  *(p_ivars->ivars + 1670) = 75;
  *(p_ivars->ivars + 1671) = 135;
  *(p_ivars->ivars + 1679) = 930;
  *(p_ivars->ivars + 1680) = 2000;
  *(p_ivars->ivars + 1675) = 6;
  *(p_ivars->ivars + 3547) = 4;
  *(p_ivars->ivars + 1347) = 0;
  v18 = p_ivars->ivars;
  *(v18 + 684) = 0u;
  *(v18 + 683) = 0u;
  v19 = (p_ivars->ivars + 10968);
  *v19 = 0u;
  v19[1] = 0u;
  *(p_ivars->ivars + 2740) = 0;
  *(p_ivars->ivars + 2750) = 0;
  *(p_ivars->ivars + 4964) = 20;
  *(p_ivars->ivars + 19781) = 0;
  *(p_ivars->ivars + 4946) = 0;
  *p_ivars->ivars = 100;
  *(p_ivars->ivars + 1) = 100;
  *(p_ivars->ivars + 3740) = 0;
  *(p_ivars->ivars + 1119) = 60;
  *(p_ivars->ivars + 4480) = 0;
  if (IOParseBootArgNumber("wlan.dsa.obswin", &v39, 4) && v39 == 360)
  {
    *(p_ivars->ivars + 1119) = 360;
    *(p_ivars->ivars + 4480) = 1;
  }

  *(p_ivars->ivars + 14204) = 0;
  *(p_ivars->ivars + 4441) = 2000;
  *(p_ivars->ivars + 4442) = 5000;
  *(p_ivars->ivars + 17783) = -70;
  *(p_ivars->ivars + 4443) = 5;
  v20 = (p_ivars->ivars + 17776);
  *(v20 + 3) = -994067787;
  *v20 = -1246712922;
  *(p_ivars->ivars + 17792) = 2;
  *(p_ivars->ivars + 2223) = 0x5A504B463C322819;
  *(p_ivars->ivars + 4449) = 0;
  *(p_ivars->ivars + 778) = 0;
  *(p_ivars->ivars + 4424) = 0;
  *(p_ivars->ivars + 5151) = 0;
  *(p_ivars->ivars + 5153) = 0;
  *(p_ivars->ivars + 5154) = 0;
  *(p_ivars->ivars + 5152) = 0;
  *(p_ivars->ivars + 2476) = 0;
  *(p_ivars->ivars + 19816) = 0;
  *(p_ivars->ivars + 4624) = 0;
  *(p_ivars->ivars + 2311) = mach_continuous_time();
  *(p_ivars->ivars + 4619) = 0;
  *(p_ivars->ivars + 4618) = 0;
  *(p_ivars->ivars + 2676) = 0;
  *(p_ivars->ivars + 10708) = 0;
  *(p_ivars->ivars + 2678) = 0;
  *(p_ivars->ivars + 2679) = 0;
  *(p_ivars->ivars + 10721) = 0;
  *(p_ivars->ivars + 10720) = 0;
  *(p_ivars->ivars + 10722) = 9;
  *(p_ivars->ivars + 10723) = 10;
  *(p_ivars->ivars + 10724) = 100;
  *(p_ivars->ivars + 31056) = 1;
  *(p_ivars->ivars + 31057) = 1;
  *(p_ivars->ivars + 31058) = 1;
  *(p_ivars->ivars + 4620) = 0;
  *(p_ivars->ivars + 18484) = 0;
  *(p_ivars->ivars + 18485) = 0;
  *(p_ivars->ivars + 4445) = 0;
  *(p_ivars->ivars + 4448) = 0;
  *(p_ivars->ivars + 4446) = 0;
  *(p_ivars->ivars + 4447) = 0;
  *(p_ivars->ivars + 8898) = 0;
  *(p_ivars->ivars + 2225) = 0;
  *(p_ivars->ivars + 8904) = 0;
  *(p_ivars->ivars + 2227) = 0;
  *(p_ivars->ivars + 8912) = 0;
  *(p_ivars->ivars + 272) = 2;
  *(p_ivars->ivars + 273) = 2;
  v21 = (p_ivars->ivars + 17960);
  *(p_ivars->ivars + 2261) = 0;
  *v21 = 0u;
  v21[1] = 0u;
  v21[2] = 0u;
  v21[3] = 0u;
  v21[4] = 0u;
  v21[5] = 0u;
  v21[6] = 0u;
  v21[7] = 0u;
  *(p_ivars->ivars + 4490) = 25;
  *(p_ivars->ivars + 4498) = 40;
  *(p_ivars->ivars + 4506) = 70;
  *(p_ivars->ivars + 4514) = 100;
  *(p_ivars->ivars + 30081) = 0;
  *(p_ivars->ivars + 30082) = 0;
  *(p_ivars->ivars + 30083) = 0;
  *(p_ivars->ivars + 786) = 0;
  v22 = (p_ivars->ivars + 6296);
  *(p_ivars->ivars + 797) = 0;
  *v22 = 0u;
  v22[1] = 0u;
  v22[2] = 0u;
  v22[3] = 0u;
  v22[4] = 0u;
  v23 = p_ivars->ivars;
  *(v23 + 399) = 0u;
  *(v23 + 400) = 0u;
  *(v23 + 401) = 0u;
  *(v23 + 402) = 0u;
  *(v23 + 403) = 0u;
  *(v23 + 808) = 0;
  v24 = (p_ivars->ivars + 4488);
  *v24 = 0u;
  v24[1] = 0u;
  v24[2] = 0u;
  v24[3] = 0u;
  v24[4] = 0u;
  v24[5] = 0u;
  v24[6] = 0u;
  v24[7] = 0u;
  v25 = (p_ivars->ivars + 4616);
  *v25 = 0u;
  v25[1] = 0u;
  v25[2] = 0u;
  v25[3] = 0u;
  v25[4] = 0u;
  v25[5] = 0u;
  v25[6] = 0u;
  v25[7] = 0u;
  v26 = (p_ivars->ivars + 4744);
  *v26 = 0u;
  v26[1] = 0u;
  v26[2] = 0u;
  v26[3] = 0u;
  v26[4] = 0u;
  v26[5] = 0u;
  v26[6] = 0u;
  v26[7] = 0u;
  v27 = p_ivars->ivars;
  *(v27 + 1135) = 0u;
  *(v27 + 1136) = 0u;
  *(p_ivars->ivars + 31059) = 0;
  mach_continuous_time();
  v28 = p_ivars->ivars;
  absolutetime_to_nanoseconds();
  mach_continuous_time();
  v29 = p_ivars->ivars;
  absolutetime_to_nanoseconds();
  *(p_ivars->ivars + 30065) = 1;
  *(p_ivars->ivars + 30067) = 1;
  *(p_ivars->ivars + 30068) = 1;
  *(p_ivars->ivars + 3881) = IO80211CagedBuffer::withLayout();
  v30 = *(p_ivars->ivars + 3881);
  v14 = v30 != 0;
  if (v30)
  {
    *(p_ivars->ivars + 7765) = 0;
    *(p_ivars->ivars + 3752) = 0;
    *(p_ivars->ivars + 3753) = 0;
    *(p_ivars->ivars + 3754) = 0;
    *(p_ivars->ivars + 3755) = 0;
    *(p_ivars->ivars + 3756) = 0;
    *(p_ivars->ivars + 3757) = 0;
    *(p_ivars->ivars + 1786) = 0;
    *(p_ivars->ivars + 3574) = 0;
    *(p_ivars->ivars + 35450) = 0;
    if (IOParseBootArgNumber("wlan.wdt.disableLogging", &v39, 4))
    {
      IOLog(" wlan.wdt.disableLogging %d\n", v39);
      *(p_ivars->ivars + 35450) = v39 != 0;
    }

    mach_continuous_time();
    v31 = p_ivars->ivars;
    absolutetime_to_nanoseconds();
    *(p_ivars->ivars + 2271) = 0;
    *(p_ivars->ivars + 2272) = 5;
    *(p_ivars->ivars + 4547) = 0;
    *(p_ivars->ivars + 4546) = 0;
    *(p_ivars->ivars + 18192) = 0;
    *(p_ivars->ivars + 18193) = 1;
    *(p_ivars->ivars + 8914) = 4;
    *(p_ivars->ivars + 30072) = 0;
    *(p_ivars->ivars + 4453) = 0;
    *(p_ivars->ivars + 18414) = 0;
    v37 = 0;
    *(p_ivars->ivars + 968) = 0;
    if (IOParseBootArgNumber("wlan.ior", &v37, 4) && !v37)
    {
      *(p_ivars->ivars + 968) = 1;
      IOLog(" Disabling IOReporter APIs due to boot-arg wlan.ior=0\n");
    }

    *(p_ivars->ivars + 970) = 0;
    if (IOParseBootArgNumber("wlan.getDiags", &v37, 4) && !v37)
    {
      *(p_ivars->ivars + 970) = 1;
      IOLog(" Disabling getDiags due to boot-arg wlan.getDiags=0\n");
    }

    *(p_ivars->ivars + 969) = 0;
    if (IOParseBootArgNumber("wlan.etrace", &v37, 4) && !v37)
    {
      *(p_ivars->ivars + 969) = 1;
      IOLog(" Disabling etrace processing due to boot-arg wlan.etrace=0\n");
    }

    *(p_ivars->ivars + 8975) = 3;
    *(p_ivars->ivars + 8975) = 7;
    v32 = IOParseBootArgNumber("wlan.channelFilter", p_ivars->ivars + 35900, 4);
    v33 = p_ivars->ivars;
    if (v32 && !*(v33 + 8975))
    {
      IOLog(" WiFiCC : Allowing all bands and no channel filter used. [%d]\n", 0);
      v33 = p_ivars->ivars;
    }

    *(v33 + 7519) = -80;
    if (IOParseBootArgNumber("wlan.rssicomp.value", p_ivars->ivars + 30076, 4))
    {
      v34 = *(p_ivars->ivars + 7519);
      if (v34)
      {
        if ((v34 + 90) >= 0x33)
        {
          IOLog(" WiFiRoam : RSSI compensation out of range. Value : [%d] Resorting to default value : [%d]\n", *(p_ivars->ivars + 7519), -80);
          *(p_ivars->ivars + 7519) = -80;
        }

        else
        {
          IOLog(" WiFiRoam : Using RSSI compensation Value : [%d] \n", *(p_ivars->ivars + 7519));
        }
      }

      else
      {
        IOLog(" WiFiRoam : RSSI compensation not allowed. [%d]\n", 0);
        *(p_ivars->ivars + 7519) = 0;
      }
    }

    *(p_ivars->ivars + 35672) = 1;
    if (IOParseBootArgNumber("wlan.dk.fwloading", &v39, 4))
    {
      v35 = v39;
      *(p_ivars->ivars + 35672) = v39 != 0;
      if (*(p_ivars->ivars + 35672))
      {
        v36 = "TRUE";
      }

      else
      {
        v36 = "FALSE";
      }

      IOLog("wlan.dk.fwloading %d - %s\n", v35, v36);
    }

    v37 = 0;
    *(p_ivars->ivars + 976) = 0;
    if (IOParseBootArgNumber("wlan.ranging.disableOutlierDiscarding", &v37, 4))
    {
      if (v37)
      {
        *(this[1].ivars + 976) = 1;
        if ((this->OSMetaClassBase::__vftable[34].free)(this))
        {
          (this->OSMetaClassBase::__vftable[34].free)(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::init(this);
          }
        }
      }
    }

    v37 = 0;
    *(p_ivars->ivars + 977) = 0;
    if (IOParseBootArgNumber("wlan.ranging.applyRangingoffsetsVsAVP", &v37, 4))
    {
      if (v37)
      {
        *(this[1].ivars + 977) = 1;
        if ((this->OSMetaClassBase::__vftable[34].free)(this))
        {
          (this->OSMetaClassBase::__vftable[34].free)(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::init(this);
          }
        }
      }
    }

    *(p_ivars->ivars + 36100) = 1;
    IOParseBootArgNumber("wlan.isDisable6gFollouwpInLowRssi", p_ivars->ivars + 36100, 1);
  }

  else
  {
    IOLog(" Failed to create IO80211CagedBuffer\n");
  }

  return v14;
}

uint64_t AppleBCMWLANCore::free(AppleBCMWLANCore *this)
{
  AppleBCMWLANCore::freeResources(this);
  v2 = *(this + 9);
  if (v2)
  {
    bzero(v2, 0x8D08uLL);
    v3 = *(this + 9);
    if (v3)
    {
      IOFree(v3, 0x8D08uLL);
      *(this + 9) = 0;
    }
  }

  return IO80211Controller::free(this);
}

uint64_t AppleBCMWLANCore::freeResources(AppleBCMWLANCore *this)
{
  IOLog("AppleBCMWLANCore::freeResources[%u] this[%p]\n", 3678, this);
  v3 = this + 72;
  v2 = *(this + 9);
  v4 = v2[688];
  if (v4)
  {
    (*(*v4 + 16))(v4);
    *(*v3 + 5504) = 0;
    v2 = *v3;
  }

  v5 = v2[689];
  if (v5)
  {
    AppleBCMWLANIOReportingPerSlice::stop(v5);
    v2 = *v3;
    v6 = *(*v3 + 5512);
    if (v6)
    {
      (*(*v6 + 16))(v6);
      *(*v3 + 5512) = 0;
      v2 = *v3;
    }
  }

  v7 = v2[150];
  if (v7)
  {
    (*(*v7 + 16))(v7);
    *(*v3 + 1200) = 0;
    v2 = *v3;
  }

  v8 = v2[2218];
  if (v8)
  {
    (*(*v8 + 16))(v8);
    *(*v3 + 17744) = 0;
    v2 = *v3;
  }

  v9 = v2[148];
  if (v9)
  {
    IOLockFree(v9);
    *(*v3 + 1184) = 0;
    v2 = *v3;
  }

  v10 = v2[1784];
  if (v10)
  {
    (*(*v10 + 16))(v10);
    *(*v3 + 14272) = 0;
    v2 = *v3;
  }

  v11 = v2[1783];
  if (v11)
  {
    (*(*v11 + 16))(v11);
    *(*v3 + 14264) = 0;
    v2 = *v3;
  }

  v12 = v2[1397];
  if (v12)
  {
    (*(*v12 + 16))(v12);
    *(*v3 + 11176) = 0;
    v2 = *v3;
  }

  v13 = v2[1396];
  if (v13)
  {
    (*(*v13 + 16))(v13);
    *(*v3 + 11168) = 0;
    v2 = *v3;
  }

  v14 = v2[1395];
  if (v14)
  {
    (*(*v14 + 16))(v14);
    *(*v3 + 11160) = 0;
    v2 = *v3;
  }

  v15 = v2[693];
  if (v15)
  {
    (*(*v15 + 16))(v15);
    *(*v3 + 5544) = 0;
    v2 = *v3;
  }

  v16 = v2[682];
  if (v16)
  {
    (*(*v16 + 16))(v16);
    *(*v3 + 5456) = 0;
    v2 = *v3;
  }

  v17 = v2[681];
  if (v17)
  {
    (*(*v17 + 16))(v17);
    *(*v3 + 5448) = 0;
    v2 = *v3;
  }

  v18 = v2[687];
  if (v18)
  {
    (*(*v18 + 16))(v18);
    *(*v3 + 5496) = 0;
    v2 = *v3;
  }

  v19 = v2[684];
  if (v19)
  {
    (*(*v19 + 16))(v19);
    *(*v3 + 5472) = 0;
    v2 = *v3;
  }

  v20 = v2[679];
  if (v20)
  {
    (*(*v20 + 16))(v20);
    *(*v3 + 5432) = 0;
    v2 = *v3;
  }

  v21 = v2[677];
  if (v21)
  {
    AppleBCMWLANJoinAdapter::stop(v21);
    v2 = *v3;
    v22 = *(*v3 + 5416);
    if (v22)
    {
      (*(*v22 + 16))(v22);
      *(*v3 + 5416) = 0;
      v2 = *v3;
    }
  }

  v23 = v2[690];
  if (v23)
  {
    (*(*v23 + 16))(v23);
    *(*v3 + 5520) = 0;
  }

  removePropertyHelper(this, "RequestedFiles");
  v24 = *(this + 9);
  v25 = *(v24 + 5528);
  if (v25)
  {
    (*(*v25 + 16))(v25);
    *(*v3 + 5528) = 0;
    v24 = *v3;
  }

  v26 = *(v24 + 5424);
  if (v26)
  {
    AppleBCMWLANJoinAdapter::stop(v26);
    v24 = *v3;
    v27 = *(*v3 + 5424);
    if (v27)
    {
      (*(*v27 + 16))(v27);
      *(*v3 + 5424) = 0;
      v24 = *v3;
    }
  }

  v28 = *(v24 + 5464);
  if (v28)
  {
    AppleBCMWLANConfigManager::stop(v28);
    v24 = *v3;
    v29 = *(*v3 + 5464);
    if (v29)
    {
      (*(*v29 + 16))(v29);
      *(*v3 + 5464) = 0;
      v24 = *v3;
    }
  }

  v30 = *(v24 + 35976);
  if (v30)
  {
    (*(*v30 + 16))(v30);
    *(*v3 + 35976) = 0;
    v24 = *v3;
  }

  v31 = *(v24 + 35992);
  if (v31)
  {
    (*(*v31 + 16))(v31);
    *(*v3 + 35992) = 0;
    v24 = *v3;
  }

  v32 = *(v24 + 5568);
  if (v32)
  {
    (*(*v32 + 16))(v32);
    *(*v3 + 5568) = 0;
    v24 = *v3;
  }

  v33 = *(v24 + 5576);
  if (v33)
  {
    (*(*v33 + 16))(v33);
    *(*v3 + 5576) = 0;
    v24 = *v3;
  }

  v34 = *(v24 + 5584);
  if (v34)
  {
    (*(*v34 + 16))(v34);
    *(*v3 + 5584) = 0;
    v24 = *v3;
  }

  v35 = *(v24 + 5552);
  if (v35)
  {
    (*(*v35 + 16))(v35);
    *(*v3 + 5552) = 0;
    v24 = *v3;
  }

  v36 = *(v24 + 5592);
  if (v36)
  {
    (*(*v36 + 16))(v36);
    *(*v3 + 5592) = 0;
    v24 = *v3;
  }

  v37 = *(v24 + 5600);
  if (v37)
  {
    AppleBCMWLANNetAdapter::stop(v37);
    v24 = *v3;
    v38 = *(*v3 + 5600);
    if (v38)
    {
      (*(*v38 + 16))(v38);
      *(*v3 + 5600) = 0;
      v24 = *v3;
    }
  }

  v39 = *(v24 + 5608);
  if (v39)
  {
    (*(*v39 + 16))(v39);
    *(*v3 + 5608) = 0;
    v24 = *v3;
  }

  v40 = *(v24 + 35984);
  if (v40)
  {
    (*(*v40 + 16))(v40);
    *(*v3 + 35984) = 0;
    v24 = *v3;
  }

  v41 = *(v24 + 5408);
  if (v41)
  {
    AppleBCMWLANCommander::stop(v41);
    v24 = *v3;
    v42 = *(*v3 + 5408);
    if (v42)
    {
      (*(*v42 + 16))(v42);
      *(*v3 + 5408) = 0;
      v24 = *v3;
    }
  }

  v43 = *(v24 + 5560);
  if (v43)
  {
    IOFree(v43, 0x28uLL);
    *(*v3 + 5560) = 0;
    *(*v3 + 5560) = 0;
    v24 = *v3;
  }

  v44 = *(v24 + 5400);
  if (v44)
  {
    (*(*v44 + 16))(v44);
    *(*v3 + 5400) = 0;
    v24 = *v3;
  }

  v45 = *(v24 + 29928);
  if (v45)
  {
    (*(*v45 + 16))(v45);
    *(*v3 + 29928) = 0;
    v24 = *v3;
  }

  v46 = *(v24 + 6280);
  if (v46)
  {
    (*(*v46 + 16))(v46);
    *(*v3 + 6280) = 0;
    v24 = *v3;
  }

  v47 = *(v24 + 6240);
  if (v47)
  {
    (*(*v47 + 16))(v47);
    *(*v3 + 6240) = 0;
    v24 = *v3;
  }

  v48 = *(v24 + 6232);
  if (v48)
  {
    (*(*v48 + 16))(v48);
    *(*v3 + 6232) = 0;
    v24 = *v3;
  }

  v49 = *(v24 + 4408);
  if (v49)
  {
    (*(*v49 + 16))(v49);
    *(*v3 + 4408) = 0;
    v24 = *v3;
  }

  v50 = *(v24 + 6248);
  if (v50)
  {
    (*(*v50 + 16))(v50);
    *(*v3 + 6248) = 0;
    v24 = *v3;
  }

  v51 = *(v24 + 6256);
  if (v51)
  {
    (*(*v51 + 16))(v51);
    *(*v3 + 6256) = 0;
    v24 = *v3;
  }

  if (*(v24 + 4480) == 1)
  {
    v52 = *(v24 + 6264);
    if (v52)
    {
      (*(*v52 + 16))(v52);
      *(*v3 + 6264) = 0;
      v24 = *v3;
    }

    v53 = *(v24 + 6272);
    if (v53)
    {
      (*(*v53 + 16))(v53);
      *(*v3 + 6272) = 0;
    }
  }

  AppleBCMWLANCore::destroyDebugInfo(this);
  v54 = *(this + 9);
  v55 = v54[692];
  if (v55)
  {
    (*(*v55 + 16))(v55);
    *(*v3 + 5536) = 0;
    v54 = *v3;
  }

  v56 = v54[1781];
  if (v56)
  {
    (*(*v56 + 16))(v56);
    *(*v3 + 14248) = 0;
    v54 = *v3;
  }

  v57 = v54[674];
  if (v57)
  {
    (*(*v57 + 16))(v57);
    *(*v3 + 5392) = 0;
    v54 = *v3;
  }

  v58 = v54[3883];
  if (v58)
  {
    (*(*v58 + 16))(v58);
    *(*v3 + 31064) = 0;
    v54 = *v3;
  }

  v59 = v54[3881];
  if (v59)
  {
    (*(*v59 + 16))(v59);
    *(*v3 + 31048) = 0;
  }

  return IOLog("AppleBCMWLANCore::freeResources[%u] this[%p]\n", 3854, this);
}

BOOL AppleBCMWLANCore::createWorkQueue(AppleBCMWLANCore *this)
{
  *(*(this + 9) + 31064) = (*(**(*(this + 9) + 5392) + 80))(*(*(this + 9) + 5392));
  (*(**(*(this + 9) + 31064) + 8))(*(*(this + 9) + 31064));
  return *(*(this + 9) + 31064) != 0;
}

void (__cdecl *AppleBCMWLANCore::reportInitFailure(IOService *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))(OSObjectInterface *__hidden this)
{
  v5 = a3;
  v8 = &this[1].OSObjectInterface;
  LODWORD(this[1].OSObject::OSObjectInterface::__vftable[1151].init) = a2;
  HIDWORD(this[1].OSObject::OSObjectInterface::__vftable[1151].init) = a3;
  v9 = 1;
  HIBYTE(this[1].OSObject::OSObjectInterface::__vftable[1150].free) = 1;
  atomic_compare_exchange_strong(&this[1].OSObject::OSObjectInterface::__vftable[275], &v9, 0);
  if (v9 == 1)
  {
    IOService::AdjustBusy(this, -1, 0);
    v15 = 0;
    IOService::GetBusyState(this, &v15, 0);
    if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
    {
      (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::reportInitFailure(this);
      }
    }

    init_low = LODWORD(v8->__vftable[275].init);
    io80211_os_log();
  }

  init = v8->__vftable[337].init;
  v11 = (*(*(init + 48) + 288))(init + 48, a2, a3, a4, a5);
  AppleBCMWLANBusInterface::reportInitFailure(init, v11, a2, v5);
  atomic_fetch_and(&v8->__vftable[648].free, 0xFFFFFFEF);
  result = v8->__vftable[1941].free;
  if (result)
  {
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 0x40000000;
    v14[2] = ___ZN16AppleBCMWLANCore17reportInitFailureE32InitilizationFailureReportReturnj_block_invoke;
    v14[3] = &__block_descriptor_tmp_5;
    v14[4] = this;
    return (*(*result + 112))(result, v14);
  }

  return result;
}

uint64_t AppleBCMWLANCore::signalDriverEvent(uint64_t *a1, unsigned int a2)
{
  if ((*(*a1 + 1952))(a1))
  {
    (*(*a1 + 1952))(a1);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::signalDriverEvent(a1);
    }
  }

  v4 = *(*(*(*a1 + 104))(a1) + 88);
  v5 = a1[9] + 4 * a2 + 6472;

  return v4();
}

uint64_t AppleBCMWLANCore::initAfterIORegUpdated(IOService *this, AppleBCMWLANCore *a2, uint64_t a3, uint64_t a4, uint64_t a5, BOOL (*a6)(const OSObject *))
{
  v8 = &this[1].OSObjectInterface;
  v7 = this[1].OSObject::OSObjectInterface::__vftable;
  if (!v7[341].free)
  {
    this[1].OSObject::OSObjectInterface::__vftable[341].free = AppleBCMWLANConfigManager::withDriver(this, AppleBCMWLANCore::allocChipImage, AppleBCMWLANCore::generateChipImage, AppleBCMWLANCore::validateChipImage, AppleBCMWLANCore::isSecureBootEnabled, a6);
    v16 = this[1].OSObject::OSObjectInterface::__vftable;
    free = v16[341].free;
    if (!free)
    {
      if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
      {
        (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::initAfterIORegUpdated(this);
        }
      }

      v22 = this;
      v23 = 1900;
      goto LABEL_119;
    }

    v18 = (*(*(v16[337].init + 6) + 288))();
    if (AppleBCMWLANConfigManager::gatherParameterData(free, v18))
    {
      return 0;
    }

    if ((*(*v8->__vftable[337].init + 680))(v8->__vftable[337].init, "M", "TPHN", 0))
    {
      v19 = (*(*v8->__vftable[337].init + 680))(v8->__vftable[337].init, "m", "1.7", 0);
    }

    else
    {
      v19 = 0;
    }

    v30 = 1;
    v29 = 0;
    IOParseBootArgNumber("wlan.debug.check-hwlimits", &v30, 1);
    IOParseBootArgNumber("wlan.debug.check-hwlimits-forced", &v29, 1);
    if (v30 == 1 && ((v19 & 1) != 0 || v29 == 1))
    {
      v24 = v8->__vftable;
      if (!LOBYTE(v8->__vftable[1113].free))
      {
        LOWORD(v24[1113].free) = 98;
        v24 = v8->__vftable;
      }

      AppleBCMWLANConfigManager::setAWDLSupported(v24[341].free, 0);
      AppleBCMWLANConfigManager::setTetheringSupport(this[1].OSObject::OSObjectInterface::__vftable[341].free, 0);
      if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
      {
        (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::initAfterIORegUpdated(this);
        }
      }
    }

    v7 = v8->__vftable;
  }

  if (!v7[345].init)
  {
    this[1].OSObject::OSObjectInterface::__vftable[345].init = AppleBCMWLANPowerManager::withDriver(this, a2);
    v7 = this[1].OSObject::OSObjectInterface::__vftable;
    if (!v7[345].init)
    {
      if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
      {
        (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::initAfterIORegUpdated(this);
        }
      }

      AppleBCMWLANCore::stopAndFreeResources(this);
      v22 = this;
      v23 = 1942;
      goto LABEL_119;
    }
  }

  if (!v7[339].free)
  {
    this[1].OSObject::OSObjectInterface::__vftable[339].free = AppleBCMWLANBssManager::withOptions(this, a2);
    v7 = this[1].OSObject::OSObjectInterface::__vftable;
    if (!v7[339].free)
    {
      if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
      {
        (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::initAfterIORegUpdated(this);
        }
      }

      AppleBCMWLANCore::stopAndFreeResources(this);
      v22 = this;
      v23 = 1952;
      goto LABEL_119;
    }
  }

  if (!v7[338].free)
  {
    this[1].OSObject::OSObjectInterface::__vftable[338].free = AppleBCMWLANJoinAdapter::withDriver(this, 0, 0);
    v7 = this[1].OSObject::OSObjectInterface::__vftable;
    if (!v7[338].free)
    {
      if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
      {
        (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::initAfterIORegUpdated(this);
        }
      }

      AppleBCMWLANCore::freeResources(this);
      return 0;
    }
  }

  if (!v7[345].free)
  {
    this[1].OSObject::OSObjectInterface::__vftable[345].free = AppleBCMWLANTxPowerManager::withDriver(this, a2);
    v7 = this[1].OSObject::OSObjectInterface::__vftable;
    if (!v7[345].free)
    {
      if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
      {
        (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::initAfterIORegUpdated(this);
        }
      }

      AppleBCMWLANCore::stopAndFreeResources(this);
      v22 = this;
      v23 = 1987;
      goto LABEL_119;
    }
  }

  if (!v7[350].init)
  {
    this[1].OSObject::OSObjectInterface::__vftable[350].init = AppleBCMWLANNetAdapter::withDriver(this, a2);
    v7 = this[1].OSObject::OSObjectInterface::__vftable;
    if (!v7[350].init)
    {
      if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
      {
        (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::initAfterIORegUpdated(this);
        }
      }

      AppleBCMWLANCore::stopAndFreeResources(this);
      v22 = this;
      v23 = 1997;
      goto LABEL_119;
    }
  }

  if (!v7[350].free)
  {
    this[1].OSObject::OSObjectInterface::__vftable[350].free = AppleBCMWLANLQM::withDriver(this, a2);
    v7 = this[1].OSObject::OSObjectInterface::__vftable;
    if (!v7[350].free)
    {
      if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
      {
        (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::initAfterIORegUpdated(this);
        }
      }

      AppleBCMWLANCore::stopAndFreeResources(this);
      v22 = this;
      v23 = 2007;
      goto LABEL_119;
    }
  }

  if (!v7[343].free)
  {
    this[1].OSObject::OSObjectInterface::__vftable[343].free = AppleBCMWLANBGScanAdapter::withDriver(this, a2);
    v7 = this[1].OSObject::OSObjectInterface::__vftable;
    if (!v7[343].free)
    {
      if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
      {
        (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::initAfterIORegUpdated(this);
        }
      }

      AppleBCMWLANCore::stopAndFreeResources(this);
      v22 = this;
      v23 = 2028;
      goto LABEL_119;
    }
  }

  if (!v7[347].init)
  {
    this[1].OSObject::OSObjectInterface::__vftable[347].init = AppleBCMWLANWnmAdapter::withDriver(this, a2);
    v7 = this[1].OSObject::OSObjectInterface::__vftable;
    if (!v7[347].init)
    {
      if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
      {
        (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::initAfterIORegUpdated(this);
        }
      }

      AppleBCMWLANCore::stopAndFreeResources(this);
      v22 = this;
      v23 = 2049;
      goto LABEL_119;
    }
  }

  if (!v7[346].free)
  {
    this[1].OSObject::OSObjectInterface::__vftable[346].free = AppleBCMWLANKeepAliveOffload::withDriver(this, a2);
    v7 = this[1].OSObject::OSObjectInterface::__vftable;
    if (!v7[346].free)
    {
      if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
      {
        (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::initAfterIORegUpdated(this);
        }
      }

      AppleBCMWLANCore::stopAndFreeResources(this);
      v22 = this;
      v23 = 2070;
      goto LABEL_119;
    }
  }

  if (!v7[348].init)
  {
    this[1].OSObject::OSObjectInterface::__vftable[348].init = AppleBCMWLANRoamAdapter::withDriver(this, a2);
    v7 = this[1].OSObject::OSObjectInterface::__vftable;
    if (!v7[348].init)
    {
      if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
      {
        (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::initAfterIORegUpdated(this);
        }
      }

      AppleBCMWLANCore::stopAndFreeResources(this);
      v22 = this;
      v23 = 2092;
      goto LABEL_119;
    }
  }

  if (!v7[348].free)
  {
    this[1].OSObject::OSObjectInterface::__vftable[348].free = AppleBCMWLAN11axAdapter::withDriver(this, a2);
    v7 = this[1].OSObject::OSObjectInterface::__vftable;
    if (!v7[348].free)
    {
      if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
      {
        (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::initAfterIORegUpdated(this);
        }
      }

      AppleBCMWLANCore::stopAndFreeResources(this);
      v22 = this;
      v23 = 2102;
      goto LABEL_119;
    }
  }

  if (!v7[349].init)
  {
    this[1].OSObject::OSObjectInterface::__vftable[349].init = AppleBCMWLANGCRAdapter::withDriver(this, a2);
    v7 = this[1].OSObject::OSObjectInterface::__vftable;
    if (!v7[349].init)
    {
      if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
      {
        (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::initAfterIORegUpdated(this);
        }
      }

      AppleBCMWLANCore::stopAndFreeResources(this);
      v22 = this;
      v23 = 2112;
      goto LABEL_119;
    }
  }

  if (!v7[349].free)
  {
    this[1].OSObject::OSObjectInterface::__vftable[349].free = AppleBCMWLAN11beAdapter::withDriver(this, a2);
    v7 = this[1].OSObject::OSObjectInterface::__vftable;
    if (!v7[349].free)
    {
      if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
      {
        (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::initAfterIORegUpdated(this);
        }
      }

      AppleBCMWLANCore::stopAndFreeResources(this);
      v22 = this;
      v23 = 2122;
      goto LABEL_119;
    }
  }

  if (!v7[2249].init)
  {
    this[1].OSObject::OSObjectInterface::__vftable[2249].init = AppleBCMWLANPowerStateAdapter::withDriver(this, a2);
    v7 = this[1].OSObject::OSObjectInterface::__vftable;
    if (!v7[2249].init)
    {
      if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
      {
        (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::initAfterIORegUpdated(this);
        }
      }

      AppleBCMWLANCore::stopAndFreeResources(this);
      v22 = this;
      v23 = 2178;
LABEL_119:
      AppleBCMWLANCore::reportInitFailure(v22, 2uLL, v23, v20, v21);
      return 0;
    }
  }

  if (!v7[891].free)
  {
    this[1].OSObject::OSObjectInterface::__vftable[891].free = AppleBCMWLANCoreDbg::withCoreDriver(this, a2);
    v7 = this[1].OSObject::OSObjectInterface::__vftable;
  }

  v9 = 1;
  atomic_compare_exchange_strong(&v7[275], &v9, 0);
  if (v9 == 1)
  {
    IOService::AdjustBusy(this, -1, 0);
    v28 = 0;
    IOService::GetBusyState(this, &v28, 0);
    if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
    {
      (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::initAfterIORegUpdated(this);
      }
    }

    init_low = LODWORD(v8->__vftable[275].init);
    io80211_os_log();
  }

  v10 = v8->__vftable[337].free;
  if (!v10)
  {
    return 1;
  }

  AppleBCMWLANProvisioningManager::getProvisionedData(v10, &v8->__vftable[353]);
  v13 = (*(*this[1].OSObject::OSObjectInterface::__vftable[705].free + 1072))(this[1].OSObject::OSObjectInterface::__vftable[705].free, v11, v12);
  if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
  {
    (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
    if (CCLogStream::shouldLog())
    {
      v26 = (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
      CCLogStream::logAlert(v26, "[dk] %s@%d:Starting with MAC Address: %02x:%02x:%02x:%02x:%02x:%02x, HW[ %02x:%02x:%02x:%02x:%02x:%02x ]\n", "initAfterIORegUpdated", 2222, v13, BYTE1(v13), BYTE2(v13), BYTE3(v13), BYTE4(v13), BYTE5(v13), BYTE4(this[1].OSObject::OSObjectInterface::__vftable[353].init), BYTE5(this[1].OSObject::OSObjectInterface::__vftable[353].init), BYTE6(this[1].OSObject::OSObjectInterface::__vftable[353].init), HIBYTE(this[1].OSObject::OSObjectInterface::__vftable[353].init), LOBYTE(this[1].OSObject::OSObjectInterface::__vftable[353].free), BYTE1(this[1].OSObject::OSObjectInterface::__vftable[353].free));
    }
  }

  v14 = mach_continuous_time() - this[1].OSObject::OSObjectInterface::__vftable[274].init;
  absolutetime_to_nanoseconds();
  if (!(this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
  {
    return 1;
  }

  (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
  v15 = 1;
  if (CCLogStream::shouldLog())
  {
    AppleBCMWLANCore::initAfterIORegUpdated(this);
  }

  return v15;
}

uint64_t AppleBCMWLANCore::stopAndFreeResources(AppleBCMWLANCore *this)
{
  IOLog("AppleBCMWLANCore::stopAndFreeResources[%u] this[%p]\n", 3666, this);
  AppleBCMWLANCore::stopResources(this);

  return AppleBCMWLANCore::freeResources(this);
}

uint64_t AppleBCMWLANCore::start(uint64_t this, IOService *a2)
{
  v4 = this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000;
  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::start(this);
    }
  }

  v5 = (this + 72);
  atomic_fetch_or((*(this + 72) + 10376), 0x40u);
  atomic_fetch_or((*(this + 72) + 10376), 0x20u);
  AppleBCMWLANCore::signalDriverReady(this);
  if (checkPropertyTrue(a2, "IOPMResetPowerStateOnWake", 0, "IOService"))
  {
    *(*(this + 72) + 10744) = 1;
    setPropertyHelper(this, "IOPMResetPowerStateOnWake", kOSBooleanTrue);
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::start(this);
      }
    }
  }

  *(*v5 + 14248) = AppleBCMWLANBusInterface::getLogger(*(*v5 + 5392));
  v6 = *(*v5 + 14248);
  if (!v6)
  {
    ClassNameHelper = getClassNameHelper(this);
    IOLog("%s::%s(): Unable to create debug logger!\n", ClassNameHelper, "start");
    v9 = this;
    v10 = 2;
    v11 = 2271;
    goto LABEL_14;
  }

  (*(*v6 + 8))(v6);
  if ((IO80211Controller::start(this, a2) & 1) == 0)
  {
    if ((*(*this + 1952))(this))
    {
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::start(this);
        }
      }
    }

    (*(**(*v5 + 5392) + 16))(*(*v5 + 5392));
    return 0;
  }

  strlcpy((*v5 + 308), kAppleBCMWLANCoreIOImageLoaderConsumerId[0], 0x100uLL);
  v68 = 0;
  if (IOParseBootArgNumber("wlan.debug.initfailure", &v68, 4) && v68)
  {
    v9 = this;
    v10 = 8;
    v11 = 2289;
LABEL_14:
    AppleBCMWLANCore::reportInitFailure(v9, v10, v11, v7, v8);
    return 0;
  }

  *(*(this + 72) + 4377) = 1;
  *(*(this + 72) + 4378) = 0;
  if (!(*(*this + 104))(this))
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::start(this);
      }
    }

    v9 = this;
    v10 = 2;
    v11 = 2302;
    goto LABEL_14;
  }

  *(*v5 + 4880) = 1;
  if (IOParseBootArgNumber("wlan.sar.nocc", &v68, 4))
  {
    *(*v5 + 4880) = v68 == 0;
  }

  *(*v5 + 18194) = 0;
  if (IOParseBootArgNumber("wlan.proxd.dump", &v68, 4))
  {
    *(*v5 + 18194) = v68 != 0;
  }

  *(*v5 + 31081) = 0;
  if (IOParseBootArgNumber("wlan.debug.linkdebug", (*v5 + 17512), 4))
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::start(this, v4, this + 72);
      }
    }
  }

  if (IOParseBootArgNumber("wlan.debug.single-boot-only", &v68, 4))
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::start(this, v4, &v68);
      }
    }

    *(*v5 + 35451) = v68 != 0;
  }

  v67 = 1;
  if (IOParseBootArgNumber("wlan.debug.disable_filter_ie", &v67, 4))
  {
    if (v67 <= 1)
    {
      *(*v5 + 17857) = v67;
    }

    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::start(this);
      }
    }
  }

  v66 = 1;
  if (IOParseBootArgNumber("wlan.debug.lpsc", &v66, 4))
  {
    if (v66 <= 1)
    {
      *(*v5 + 18485) = v66;
    }

    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::start(this);
      }
    }
  }

  if (IOParseBootArgNumber("wlan.lqm.logging", (*v5 + 964), 4))
  {
    v63 = *(*v5 + 964);
    io80211_os_log();
  }

  *(*(this + 72) + 17804) = AppleBCMWLANUtil::getHwFeatureFlags(a2, "IOService", v15);
  v16 = OSNumber::withNumber(*(*(this + 72) + 17804), 0x20uLL);
  setPropertyHelper(this, "wlan.hw.feature-flags", v16);
  if (v16)
  {
    (v16->release)(v16);
  }

  if (IOParseBootArgString("wlan.debug.band-locked", (*v5 + 17816), 16))
  {
    *(*v5 + 17831) = 0;
    v17 = *(*v5 + 17816);
    if ((v17 == 97 || v17 == 98) && !*(*v5 + 17817))
    {
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::start(this);
        }
      }
    }

    else
    {
      v18 = (*v5 + 17816);
      *v18 = 0;
      v18[1] = 0;
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::start(this);
        }
      }
    }
  }

  *(*v5 + 4320) = 1;
  v19 = *v5;
  if (*(*v5 + 4320) == 1)
  {
    *(*v5 + 19824) = OSDictionary::withCapacity(0x10u);
    v19 = *v5;
  }

  *(*v5 + 5536) = AppleBCMWLANBusInterface::getFaultReporter(*(v19 + 5392));
  v20 = *(*v5 + 5536);
  if (!v20)
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::start(this);
      }
    }

    v9 = this;
    v10 = 2;
    v11 = 2412;
    goto LABEL_14;
  }

  (*(*v20 + 8))(v20);
  CCFaultReporter::registerWatchdog(*(*(this + 72) + 5536), AppleBCMWLANCore::watchdog, this);
  CCFaultReporter::registerPanic(*(*(this + 72) + 5536), AppleBCMWLANCore::PanicForFault, this);
  CCFaultReporter::registerErrorDecoder(*(*(this + 72) + 5536), *(*this + 112), this);
  v65[0] = AppleBCMWLANCore::prepareFRCallback;
  v65[1] = AppleBCMWLANCore::collectImmediateFaultDataCallback;
  v65[2] = 0;
  v65[3] = AppleBCMWLANCore::completeFaultReportCallback;
  v65[4] = AppleBCMWLANCore::induceFaultCallback;
  v21 = *(*(this + 72) + 5536);
  getClassNameHelper(this);
  CCFaultReporter::registerCallbacks();
  v22 = *(this + 72);
  if ((*(v22 + 10372) & 0x40) != 0)
  {
    CCFaultReporter::setAction(*(v22 + 5536), 2u);
    v22 = *v5;
  }

  v23 = *(v22 + 32);
  if (v23)
  {
    CCFaultReporter::panicForReason(*(v22 + 5536), v23);
    v22 = *v5;
  }

  v24 = (*(*(*(v22 + 5392) + 48) + 288))(*(v22 + 5392) + 48);
  *(*v5 + 5400) = AppleBCMWLANProvisioningManager::withProvisioningRoot(v24, *(*v5 + 5392), v25);
  v26 = *(*v5 + 5400);
  if (!v26)
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::start(this);
      }
    }

    v9 = this;
    v10 = 2;
    v11 = 2463;
    goto LABEL_14;
  }

  v27 = AppleBCMWLANProvisioningManager::process(v26);
  v28 = *v5;
  if (v27)
  {
    (*(**(v28 + 5392) + 136))(*(v28 + 5392));
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::start(this);
      }
    }

    v9 = this;
    v10 = 14;
    v11 = 2471;
    goto LABEL_14;
  }

  AppleBCMWLANProvisioningManager::getProvisionedData(*(v28 + 5400), (v28 + 5648));
  *(*v5 + 5560) = IOMallocZeroTyped();
  v29 = *(*v5 + 5560);
  if (!v29)
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::start(this);
      }
    }

    v9 = this;
    v10 = 2;
    v11 = 2482;
    goto LABEL_14;
  }

  *v29 = this;
  *(*(*(this + 72) + 5560) + 8) = AppleBCMWLANCore::dequeueTxIOs;
  *(*(*(this + 72) + 5560) + 24) = AppleBCMWLANCore::reportCompletedTxIOs_WithoutBDC;
  *(*(*(this + 72) + 5560) + 32) = AppleBCMWLANCore::enqueueRxIOs_WithEventQueue;
  *(*(*(this + 72) + 5560) + 16) = AppleBCMWLANCore::reportCommittedTxCommands;
  (*(*this + 88))(this);
  *(*(this + 72) + 6232) = IO80211TimerSource::allocWithParams();
  v30 = *this;
  if (!*(*(this + 72) + 6232))
  {
    if ((*(v30 + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::start(this);
      }
    }

    v9 = this;
    v10 = 2;
    v11 = 2498;
    goto LABEL_14;
  }

  (*(v30 + 88))(this);
  *(*(this + 72) + 6240) = IO80211TimerSource::allocWithParams();
  v31 = *this;
  if (!*(*(this + 72) + 6240))
  {
    if ((*(v31 + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::start(this);
      }
    }

    v9 = this;
    v10 = 2;
    v11 = 2510;
    goto LABEL_14;
  }

  (*(v31 + 88))(this);
  *(*(this + 72) + 6280) = IO80211TimerSource::allocWithParams();
  v32 = *(this + 72);
  if (!*(v32 + 6280))
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::start(this);
      }
    }

    v9 = this;
    v10 = 2;
    v11 = 2519;
    goto LABEL_14;
  }

  *(*(this + 72) + 5408) = AppleBCMWLANCommander::withConfig(this, *(v32 + 5392), 0x90);
  v33 = *this;
  if (!*(*(this + 72) + 5408))
  {
    if ((*(v33 + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::start(this);
      }
    }

    v9 = this;
    v10 = 2;
    v11 = 2528;
    goto LABEL_14;
  }

  v34 = (*(v33 + 88))(this);
  (*(*v34 + 64))(v34, *(*(this + 72) + 5408));
  *(*(this + 72) + 40) = mach_continuous_time();
  *(*(this + 72) + 48) = 0;
  *(*(this + 72) + 52) = 0;
  (*(*this + 88))(this);
  *(*(this + 72) + 6248) = IO80211TimerSource::allocWithParams();
  v35 = *this;
  if (!*(*(this + 72) + 6248))
  {
    if ((*(v35 + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::start(this);
      }
    }

    v9 = this;
    v10 = 2;
    v11 = 2553;
    goto LABEL_14;
  }

  (*(v35 + 88))(this);
  *(*(this + 72) + 6256) = IO80211TimerSource::allocWithParams();
  v36 = *(this + 72);
  if (!*(v36 + 6256))
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::start(this);
      }
    }

    v9 = this;
    v10 = 2;
    v11 = 2563;
    goto LABEL_14;
  }

  if (*(v36 + 4480) == 1)
  {
    (*(*this + 88))(this);
    *(*(this + 72) + 6264) = IO80211TimerSource::allocWithParams();
    v37 = *this;
    if (!*(*(this + 72) + 6264))
    {
      if ((*(v37 + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::start(this);
        }
      }

      v9 = this;
      v10 = 2;
      v11 = 2573;
      goto LABEL_14;
    }

    (*(v37 + 88))(this);
    *(*(this + 72) + 6272) = IO80211TimerSource::allocWithParams();
    v36 = *(this + 72);
    if (!*(v36 + 6272))
    {
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::start(this);
        }
      }

      v9 = this;
      v10 = 2;
      v11 = 2582;
      goto LABEL_14;
    }
  }

  *(v36 + 29936) = 0;
  *(*v5 + 29936) = checkPropertyExists(*(*v5 + 5392), "wlan.audio.mic.protect.enabled", 1uLL, "IOService");
  IOParseBootArgNumber("wlan.audio.enable", (*v5 + 29936), 1);
  v38 = *v5;
  if (*(*v5 + 29936) == 1)
  {
    v65[0] = 0;
    if (checkAcquireDataPropertyNotEmpty(*(v38 + 5392), "audio-protection-driver", v65, 0, 1uLL, "IOService"))
    {
      if (OSData::getBytesNoCopy(v65[0]))
      {
        BytesNoCopy = OSData::getBytesNoCopy(v65[0]);
        v40 = OSString::withCString(BytesNoCopy);
        if (v40)
        {
          v42 = v40;
          *(*(this + 72) + 29928) = AppleBCMWLANAudioProtector::withDriver(this, v40, v41);
          (*(*v42 + 16))(v42);
          v43 = *(*(this + 72) + 29928);
          if (!v43)
          {
            if ((*(*this + 1952))(this))
            {
              (*(*this + 1952))(this);
              if (CCLogStream::shouldLog())
              {
                AppleBCMWLANCore::start(this);
              }
            }

            v9 = this;
            v10 = 2;
            v11 = 2604;
            goto LABEL_14;
          }

          AppleBCMWLANAudioProtector::configureAudioMicProtect(v43, 1);
          v44 = (*(*this + 88))(this);
          (*(*v44 + 64))(v44, *(*(this + 72) + 29928));
        }
      }

      if (v65[0])
      {
        (v65[0]->release)(v65[0]);
      }
    }
  }

  *(*(this + 72) + 5424) = AppleBCMWLANScanAdapter::withDriverAndCallBack(this, 0, 0);
  if (!*(*(this + 72) + 5424))
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::start(this);
      }
    }

    return 0;
  }

  *(*(this + 72) + 35976) = AppleBCMWLANSensingAdapter::withDriver(this, v45);
  if (!*(*(this + 72) + 35976))
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::start(this);
      }
    }

    return 0;
  }

  *(*(this + 72) + 35992) = AppleBCMWLANNearbyDeviceDiscoveryAdapter::withDriver(this, v46);
  v48 = *(this + 72);
  if (!*(v48 + 35992))
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::start(this);
      }
    }

    return 0;
  }

  *(*v5 + 5448) = AppleBCMWLANLeakyApParser::withLogger(*(v48 + 14248), v47);
  if (!*(*v5 + 5448))
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::start(this);
      }
    }

    AppleBCMWLANCore::stopAndFreeResources(this);
    v9 = this;
    v10 = 2;
    v11 = 2651;
    goto LABEL_14;
  }

  *(*(this + 72) + 5456) = AppleBCMWLANTimeKeeper::withDriver(this, v49);
  if (!*(*(this + 72) + 5456))
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::start(this);
      }
    }

    AppleBCMWLANCore::stopAndFreeResources(this);
    v9 = this;
    v10 = 2;
    v11 = 2659;
    goto LABEL_14;
  }

  *(*(this + 72) + 5472) = AppleBCMWLANGASAdapter::withDriver(this);
  v50 = *(this + 72);
  if (!*(v50 + 5472))
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::start(this);
      }
    }

    AppleBCMWLANCore::stopAndFreeResources(this);
    v9 = this;
    v10 = 2;
    v11 = 2668;
    goto LABEL_14;
  }

  *(v50 + 9476) = 2;
  v65[0] = 0;
  if (checkAcquireDataPropertyNotEmpty(*(*v5 + 5392), "wlan.scanalg", v65, 4uLL, 1uLL, "IOService"))
  {
    v51 = *v5;
    *(v51 + 9476) = *OSData::getBytesNoCopy(v65[0], 0, 4uLL);
    if (v65[0])
    {
      (v65[0]->release)(v65[0]);
      v65[0] = 0;
    }
  }

  IOParseBootArgNumber("wlan.scanalg", (*v5 + 9476), 4);
  *(*v5 + 19852) = 0;
  *(*v5 + 6756) = 0;
  *(*v5 + 6730) = 1;
  if ((*(**(*v5 + 5392) + 368))(*(*v5 + 5392)))
  {
    v52 = (*(**(*(this + 72) + 5392) + 368))(*(*(this + 72) + 5392));
    v53 = OSNumber::withNumber(v52, 0x20uLL);
    setPropertyHelper(this, "ChipSet", v53);
    if (v53)
    {
      (v53->release)(v53);
    }
  }

  setPropertyHelper(this, "AppleBCMWLAN.BuildTag", kAppleBCMWLANBuildTag[0]);
  setPropertyHelper(this, "AppleBCMWLAN.BuildTagGit", "AppleBCMWLANV3_driverkit-1535.9.4.1");
  setPropertyHelper(this, "AppleBCMWLAN.BuildDate", kAppleBCMWLANBuildDate[0]);
  setPropertyHelper(this, "AppleBCMWLAN.BuildType", "release");
  isVerboseDebugLoggingAllowed = AppleBCMWLAN_isVerboseDebugLoggingAllowed();
  setPropertyHelper(this, "Debuggable - isVerboseDebugLoggingAllowed", isVerboseDebugLoggingAllowed);
  isSoCRAMCaptureAllowed = AppleBCMWLAN_isSoCRAMCaptureAllowed();
  setPropertyHelper(this, "Debuggable - isSoCRAMCaptureAllowed", isSoCRAMCaptureAllowed);
  isDebugCommandActionAllowed = AppleBCMWLAN_isDebugCommandActionAllowed();
  setPropertyHelper(this, "Debuggable - isDebugCommandActionAllowed", isDebugCommandActionAllowed);
  v57 = AppleBCMWLANCore::populateRequestedFiles(this);
  if (v57 == -469792995)
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::start(this);
      }
    }

    v9 = this;
    v10 = 10;
    v11 = 2753;
    goto LABEL_14;
  }

  if (v57)
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::start(this);
      }
    }

    v9 = this;
    v10 = 2;
    v11 = 2757;
    goto LABEL_14;
  }

  v58 = AppleBCMWLANCore::driverkitAllocSkywalkBusResources(this);
  v59 = *this;
  if (v58)
  {
    if ((*(v59 + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::start(this);
      }
    }

    v9 = this;
    v10 = 11;
    v11 = 2726;
    goto LABEL_14;
  }

  (*(v59 + 88))(this);
  *(*(this + 72) + 4408) = IO80211TimerSource::allocWithParams();
  v60 = *(*(this + 72) + 4408);
  if (!v60)
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::start(this);
      }
    }

    return 0;
  }

  (*(*v60 + 56))(v60, 40000);
  IOService::AdjustBusy(this, 1, 0);
  *(*(this + 72) + 4400) = 1;
  LODWORD(v65[0]) = 0;
  IOService::GetBusyState(this, v65, 0);
  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::start(this);
    }
  }

  v64 = *(*(this + 72) + 4400);
  io80211_os_log();
  *(*(this + 72) + 4384) = mach_continuous_time();
  IOService::RegisterService(this, 0);
  IO80211Controller::PublishReporterProxyService(this);
  AppleBCMWLANCore::initDebugInfo(this);
  setPropertyHelper(this, "FirmwareLoaded", 0);
  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::start(this);
    }
  }

  *(*(this + 72) + 18298) = 0;
  v61 = (*(**(*(this + 72) + 5392) + 120))(*(*(this + 72) + 5392), this, *(*(this + 72) + 5560));
  v62 = (*(*this + 1952))(this);
  if (v61)
  {
    if (v62)
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::start(this, v4, this + 72, v61);
      }
    }

    AppleBCMWLANCore::stopAndFreeResources(this);
    v9 = this;
    v10 = 2;
    v11 = 2797;
    goto LABEL_14;
  }

  if (!v62)
  {
    return 1;
  }

  (*(*this + 1952))(this);
  v13 = 1;
  if (CCLogStream::shouldLog())
  {
    AppleBCMWLANCore::start(this);
  }

  return v13;
}

uint64_t AppleBCMWLANCore::signalDriverReady(AppleBCMWLANCore *this)
{
  v2 = *(*(this + 9) + 10376);
  v3 = OSString::withCString("CoreWiFiDriverReadyKey");
  if ((v2 & 0x30) != 0)
  {
    v4 = "false";
  }

  else
  {
    v4 = "true";
  }

  v5 = OSString::withCString(v4);
  v6 = v5;
  if (v3 && v5)
  {
    v7 = (*(*(*(*(this + 9) + 5392) + 48) + 424))();
LABEL_11:
    (v3->release)(v3);
    v8 = v7;
    goto LABEL_12;
  }

  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::signalDriverReady(this);
    }
  }

  v7 = 0;
  v8 = 0;
  if (v3)
  {
    goto LABEL_11;
  }

LABEL_12:
  if (v6)
  {
    (v6->release)(v6);
  }

  return v8;
}

uint64_t AppleBCMWLANCore::watchdog(uint64_t this, CCFaultReport *a2)
{
  if (a2)
  {
    v4 = (*(*a2 + 128))(a2) != -469794018;
    v5 = (*(*a2 + 168))(a2);
    v6 = (*(*a2 + 128))(a2);
  }

  else
  {
    v5 = 0;
    v6 = 0;
    v4 = 1;
  }

  v59 = 0;
  v7 = (this + 72);
  *(*(this + 72) + 35568) = 0;
  *(*(this + 72) + 35673) = 0;
  mach_continuous_time();
  absolutetime_to_nanoseconds();
  v8 = *(*(this + 72) + 5392);
  if (v8)
  {
    AppleBCMWLANBusInterface::setBootCheckPointAnchorTime(v8, v59, 2);
  }

  io80211_os_log();
  if (!a2)
  {
    kdebug_trace();
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::watchdog(this);
      }
    }

    goto LABEL_15;
  }

  (*(*a2 + 128))(a2);
  kdebug_trace();
  if ((*(*a2 + 128))(a2) == -469794303 || (*(*a2 + 128))(a2) == -469794295)
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::watchdog(this);
      }
    }

LABEL_15:
    *(*v7 + 35568) = 1;
  }

  v58 = 0;
  v9 = IOMallocZeroData();
  v10 = v9;
  if (v9)
  {
    v58 = v9;
  }

  (*(**(*v7 + 5392) + 400))(*(*v7 + 5392));
  (*(**(*v7 + 5392) + 616))(*(*v7 + 5392), 0, v11);
  if (v4)
  {
    v12 = (*(*this + 1952))(this);
    if (a2)
    {
      if (v12)
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::watchdog(this, this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, (this + 72), a2);
        }
      }
    }

    else if (v12)
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::watchdog(this);
      }
    }
  }

  v13 = *(*v7 + 10376);
  if ((v13 & 0x20) != 0)
  {
    v17 = 3758097111;
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::watchdog(this);
      }
    }
  }

  else if ((v13 & 0x10) != 0)
  {
    v17 = 3758097112;
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::watchdog(this);
        v17 = 3758097112;
      }
    }
  }

  else if ((v13 & 0x80) != 0)
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::watchdog(this);
      }
    }

    AppleBCMWLANCore::halt(this);
    v17 = 3758097093;
  }

  else
  {
    if ((v13 & 0x10002000) == 0 && (((*(**(*v7 + 5392) + 168))(*(*v7 + 5392)) & 1) != 0 || (*(*v7 + 10376) & 5) != 0 && (*(*(*(*v7 + 5392) + 48) + 192))(*(*v7 + 5392) + 48, v18, v19) && !(*(**(*v7 + 5392) + 64))(*(*v7 + 5392))))
    {
      atomic_fetch_or((*v7 + 10376), 0x80u);
      *(*v7 + 17752) = 1;
      v20 = v58;
      if (!v58)
      {
        v55 = 0;
        v57 = -528336895;
        goto LABEL_80;
      }

      *(v58 + 30) = 0;
      v20[13] = 0u;
      v20[14] = 0u;
      v20[11] = 0u;
      v20[12] = 0u;
      v20[9] = 0u;
      v20[10] = 0u;
      v20[7] = 0u;
      v20[8] = 0u;
      v20[5] = 0u;
      v20[6] = 0u;
      v20[3] = 0u;
      v20[4] = 0u;
      v20[1] = 0u;
      v20[2] = 0u;
      *v20 = 0u;
      if (a2)
      {
        v6 = (*(*a2 + 128))(a2);
      }

      else
      {
        v6 = 0;
      }

      if (v5 == *(*v7 + 12))
      {
        v21 = 1;
      }

      else
      {
        v21 = (*(*v7 + 10376) >> 15) & 1;
      }

      if (v6 != -469794008)
      {
        v24 = 0;
        v23 = -528336895;
LABEL_73:
        v55 = v24;
        v57 = v23;
        *v20 = 3;
        *(v20 + 1) = v24 | v21;
        *(v20 + 4) = v23;
        *(v20 + 5) = v6;
        *(v20 + 6) = 0;
        *(v20 + 1) = 0;
        v26 = *v7;
        if (*(*v7 + 11288))
        {
          if ((*(*this + 1952))(this))
          {
            (*(*this + 1952))(this);
            if (CCLogStream::shouldLog())
            {
              v50 = (*(*this + 1952))(this);
              CCLogStream::logAlert(v50, "[dk] %s@%d: posting APPLE80211_M_DRIVER_AVAILABLE, available[%u] reason[0x%08x] sub_reason[0x%08x] minor_reason[0x%08x] flags[0x%08x]\n", "watchdog", 45258, *(v20 + 2), *(v20 + 4), *(v20 + 5), *(v20 + 6), *(v20 + 1));
            }
          }

          IO80211Controller::postMessage(this, *(*(this + 72) + 11288), 0x37u, v20, 0xF8uLL, 1);
          v26 = *(this + 72);
        }

        v27 = *(v26 + 29944);
        if (v27)
        {
          IO80211Controller::postMessage(this, v27, 0x37u, v20, 0xF8uLL, 1);
        }

LABEL_80:
        *(*(this + 72) + 12) = v5;
        IO80211BssManager::setLastBSSRssi(*(*(this + 72) + 5432));
        v28 = AppleBCMWLANCore::bootChipImage(this, *(*(this + 72) + 1200));
        if (v28)
        {
          v17 = v28;
          if ((*(*this + 1952))(this))
          {
            (*(*this + 1952))(this);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANCore::watchdog(this);
            }
          }

          atomic_fetch_and((*(this + 72) + 10376), 0xFFFFFF7F);
          atomic_fetch_or((*(this + 72) + 10376), 0x8000u);
          AppleBCMWLANCore::halt(this);
          v14 = v58;
          if (!v58)
          {
            goto LABEL_160;
          }

          *(v58 + 232) = 0u;
          *(v14 + 216) = 0u;
          *(v14 + 200) = 0u;
          *(v14 + 184) = 0u;
          *(v14 + 168) = 0u;
          *(v14 + 152) = 0u;
          *(v14 + 136) = 0u;
          *(v14 + 120) = 0u;
          *(v14 + 104) = 0u;
          *(v14 + 88) = 0u;
          *(v14 + 72) = 0u;
          *(v14 + 56) = 0u;
          *(v14 + 40) = 0u;
          *(v14 + 24) = 0u;
          *(v14 + 2) = 3766630404;
          *v14 = xmmword_1003ADB60;
          v29 = *v7;
          if (*(*v7 + 11288))
          {
            if ((*(*this + 1952))(this))
            {
              (*(*this + 1952))(this);
              if (CCLogStream::shouldLog())
              {
                v51 = (*(*this + 1952))(this);
                CCLogStream::logAlert(v51, "[dk] %s@%d: posting APPLE80211_M_DRIVER_AVAILABLE, available[%u] reason[0x%08x] sub_reason[0x%08x] minor_reason[0x%08x]\n", "watchdog", 45290, *(v14 + 2), *(v14 + 4), *(v14 + 5), *(v14 + 6));
              }
            }

            IO80211Controller::postMessage(this, *(*(this + 72) + 11288), 0x37u, v14, 0xF8uLL, 1);
            v29 = *(this + 72);
          }

          v16 = *(v29 + 29944);
          if (!v16)
          {
            goto LABEL_160;
          }

LABEL_40:
          IO80211Controller::postMessage(this, v16, 0x37u, v14, 0xF8uLL, 1);
          goto LABEL_160;
        }

        v30 = *v7;
        v31 = *(*v7 + 10376);
        if ((v31 & 1) != 0 && ((v32 = *(v30 + 19852), v32 == 4) || v32 == 1))
        {
          if ((v31 & 4) != 0)
          {
            v33 = (v31 >> 2) & 1;
LABEL_102:
            atomic_fetch_and((v30 + 10376), 0xFFFFEFFF);
LABEL_103:
            *(*v7 + 5388) = 0;
            atomic_fetch_and((*v7 + 10376), 0xFFFF7F7F);
            v34 = *v7;
            if ((*(*v7 + 10377) & 4) != 0)
            {
              AppleBCMWLANCore::signalDriverEvent(this, 0);
              atomic_fetch_and((*(this + 72) + 10376), 0xFFFFFBFF);
              v34 = *(this + 72);
            }

            v35 = *(v34 + 11296);
            if (v35)
            {
              AppleBCMWLANProximityInterface::resetInterface(v35);
              v34 = *v7;
            }

            v36 = *(v34 + 29944);
            if (v36)
            {
              AppleBCMWLANNANInterface::resetInterface(v36);
              v37 = *(*v7 + 29952);
              if (v37)
              {
                AppleBCMWLANNANDataInterface::resetInterface(v37);
              }
            }

            AppleBCMWLANCore::resetInterfacesComplete(this);
            *(*(this + 72) + 6748) = 88;
            *(*(this + 72) + 6749) = 90;
            *(*(this + 72) + 6750) = 0;
            v38 = v58;
            if (v58)
            {
              v39 = v33;
            }

            else
            {
              v39 = 0;
            }

            if (v39 != 1)
            {
              goto LABEL_155;
            }

            *(v58 + 1) = 0u;
            v54 = v38 + 2;
            v38[30] = 0;
            *v38[26].i8 = 0u;
            *v38[28].i8 = 0u;
            *v38[22].i8 = 0u;
            *v38[24].i8 = 0u;
            *v38[18].i8 = 0u;
            *v38[20].i8 = 0u;
            *v38[14].i8 = 0u;
            *v38[16].i8 = 0u;
            *v38[10].i8 = 0u;
            *v38[12].i8 = 0u;
            *v38[6].i8 = 0u;
            *v38[8].i8 = 0u;
            *v38[4].i8 = 0u;
            v38[3].i32[0] = 0;
            *v38->i8 = xmmword_1003ADB70;
            if (a2)
            {
              v38[2].i32[0] = (*(*a2 + 128))(a2);
              v38[26].i32[0] = (*(*a2 + 136))(a2);
              v38[20] = CCFaultReport::getProgramCounter(a2);
              v38[21] = CCFaultReport::getLinkRegister(a2);
              v38[1].i32[1] = (*(*a2 + 168))(a2);
              v40 = (*(*a2 + 144))(a2);
              strlcpy(&v38[22], v40, 0x20uLL);
              v41 = (*(*a2 + 152))(a2);
              strlcpy(&v38[26] + 4, v41, 0x20uLL);
              v42 = (*(*a2 + 160))(a2);
              strlcpy(&v38[3] + 4, v42, 0x80uLL);
              if (v4)
              {
                if ((*(*this + 1952))(this))
                {
                  (*(*this + 1952))(this);
                  if (CCLogStream::shouldLog())
                  {
                    AppleBCMWLANCore::watchdog(this);
                  }
                }

                if ((*(*this + 1952))(this))
                {
                  (*(*this + 1952))(this);
                  if (CCLogStream::shouldLog())
                  {
                    AppleBCMWLANCore::watchdog(this);
                  }
                }
              }

              v43 = v54->i32[0];
              if (v54->i32[0] == -469794303)
              {
LABEL_125:
                *v54 = vdup_n_s32(0xE0823806);
                if ((*(*this + 1952))(this))
                {
                  (*(*this + 1952))(this);
                  if (CCLogStream::shouldLog())
                  {
                    AppleBCMWLANCore::watchdog(this);
                  }
                }

                v38[30].i32[1] = (*(**(*v7 + 5392) + 568))(*(*v7 + 5392));
                if ((*(**(*v7 + 5392) + 560))(*(*v7 + 5392), v44, v45))
                {
                  v38->i32[1] |= 4u;
                }

                if ((*(**(*v7 + 5392) + 584))(*(*v7 + 5392)))
                {
                  v38->i32[1] |= 0x10u;
                }

                goto LABEL_137;
              }

              if (v43 != -469792511)
              {
                if (v43 != -469794295)
                {
                  goto LABEL_137;
                }

                goto LABEL_125;
              }

              v54->i32[0] = -528342010;
              if ((*(*this + 1952))(this))
              {
                (*(*this + 1952))(this);
                if (CCLogStream::shouldLog())
                {
                  AppleBCMWLANCore::watchdog(this);
                }
              }

              v38[30].i32[1] = AppleBCMWLANJoinAdapter::getJoinTimeoutSequenceNum(*(*v7 + 5416));
              if (AppleBCMWLANJoinAdapter::hasJoinTimeoutBlob(*(*v7 + 5416)))
              {
                v38->i32[1] |= 8u;
                AppleBCMWLANJoinAdapter::clearJoinTimeoutBlobAvialable(*(*v7 + 5416));
              }
            }

LABEL_137:
            if (v54->i32[0] == -469794008)
            {
              v38[2] = vdup_n_s32(0xE0823805);
              v38->i32[1] |= 2u;
              if ((*(*this + 1952))(this))
              {
                (*(*this + 1952))(this);
                if (CCLogStream::shouldLog())
                {
                  v53 = (*(*this + 1952))(this);
                  CCLogStream::logAlert(v53, "[dk] %s@%d: 'Bus low power' detected/available: APPLE80211_M_DRIVER_AVAILABLE, adjusting reason[0x%08x] -> [0x%08x], errorCode[0x%08x] isNonFatalFlag[0x%08x]\n", "watchdog", 45432, -528336895, v57, v6, v55);
                }
              }
            }

            if ((v54->i32[0] & 0xFFFFC000) == 0xE3FF8000)
            {
              if ((*(*this + 1952))(this))
              {
                (*(*this + 1952))(this);
                if (CCLogStream::shouldLog())
                {
                  AppleBCMWLANCore::watchdog(this, this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, v54);
                }
              }
            }

            v46 = *v7;
            if (*(*v7 + 11288))
            {
              if ((*(*this + 1952))(this))
              {
                (*(*this + 1952))(this);
                if (CCLogStream::shouldLog())
                {
                  v52 = (*(*this + 1952))(this);
                  CCLogStream::logAlert(v52, "[dk] %s@%d: posting APPLE80211_M_DRIVER_AVAILABLE, available[%u] reason[0x%08x] sub_reason[0x%08x] minor_reason[0x%08x]\n", "watchdog", 45449, v38[1].i32[0], v38[2].i32[0], v38[2].i32[1], v38[3].i32[0]);
                }
              }

              IO80211Controller::postMessage(this, *(*(this + 72) + 11288), 0x37u, v38, 0xF8uLL, 1);
              mach_continuous_time();
              absolutetime_to_nanoseconds();
              io80211_os_log();
              v46 = *(this + 72);
            }

            v47 = *(v46 + 11296);
            if (v47)
            {
              IO80211Controller::postMessage(this, v47, 0x37u, &v58, 8uLL, 1);
              v46 = *(this + 72);
            }

            v48 = *(v46 + 29944);
            if (v48)
            {
              IO80211Controller::postMessage(this, v48, 0x37u, v58, 0xF8uLL, 1);
              if (!v4)
              {
                goto LABEL_159;
              }

              goto LABEL_156;
            }

LABEL_155:
            if (!v4)
            {
LABEL_159:
              *(*v7 + 31088) = 0;
              *(*v7 + 31089) = 0;
              (*(**(*v7 + 5392) + 352))(*(*v7 + 5392), 3);
              v17 = 0;
              *(*v7 + 19808) = 0;
              *(*v7 + 19816) = 0;
              goto LABEL_160;
            }

LABEL_156:
            if ((*(*this + 1952))(this))
            {
              (*(*this + 1952))(this);
              if (CCLogStream::shouldLog())
              {
                AppleBCMWLANCore::watchdog(this);
              }
            }

            goto LABEL_159;
          }

          AppleBCMWLANCore::powerOn(this);
        }

        else
        {
          if ((v31 & 0x1000) == 0 || *(v30 + 19852))
          {
            v33 = 0;
            goto LABEL_103;
          }

          AppleBCMWLANCore::powerOff(this, 0);
        }

        v33 = 0;
        v30 = *v7;
        goto LABEL_102;
      }

      v56 = v21;
      v22 = (*(*this + 1952))(this);
      v23 = -528336891;
      if (v22)
      {
        (*(*this + 1952))(this);
        if (!CCLogStream::shouldLog())
        {
          v24 = 2;
          v23 = -528336891;
LABEL_72:
          v21 = v56;
          goto LABEL_73;
        }

        AppleBCMWLANCore::watchdog(this);
        v23 = -528336891;
      }

      v24 = 2;
      goto LABEL_72;
    }

    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::watchdog(this);
      }
    }

    atomic_fetch_or((*v7 + 10376), 0x8000u);
    v14 = v58;
    if (!v58)
    {
      v17 = 3766630404;
      goto LABEL_160;
    }

    *v58 = 3;
    *(v14 + 2) = 0;
    *(v14 + 2) = 3766630404;
    *(v14 + 6) = *(*v7 + 10376);
    *(v14 + 3) = 0;
    v15 = *v7;
    if (*(*v7 + 11288))
    {
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          v25 = (*(*this + 1952))(this);
          CCLogStream::logAlert(v25, "[dk] %s@%d: posting APPLE80211_M_DRIVER_AVAILABLE, available[%u] reason[0x%08x] sub_reason[0x%08x] minor_reason[0x%08x]\n", "watchdog", 45202, *(v14 + 2), *(v14 + 4), *(v14 + 5), *(v14 + 6));
        }
      }

      IO80211Controller::postMessage(this, *(*(this + 72) + 11288), 0x37u, v14, 0xF8uLL, 1);
      v15 = *(this + 72);
    }

    v16 = *(v15 + 29944);
    v17 = 3766630404;
    if (v16)
    {
      goto LABEL_40;
    }
  }

LABEL_160:
  if (v10)
  {
    IOFreeData();
  }

  return v17;
}

void AppleBCMWLANCore::PanicForFault(uint64_t a1, uint64_t a2)
{
  v2 = (*(*a2 + 56))(a2);
  CStringNoCopy = OSString::getCStringNoCopy(v2);
  panic("%s", CStringNoCopy);
}

uint64_t AppleBCMWLANCore::collectImmediateFaultDataCallback(AppleBCMWLANCore *this, CCFaultReport *a2)
{
  v64 = 0;
  if (*(*(this + 9) + 35450) == 1)
  {
    if ((*(*this + 1952))(this, a2))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::collectImmediateFaultDataCallback(this);
      }
    }
  }

  else
  {
    if (a2)
    {
      (*(*a2 + 128))(a2);
    }

    kdebug_trace();
    v4 = IOMallocZeroData();
    if (v4)
    {
      AppleBCMWLANCore::captureDriverState(this, 0, v4);
      v5 = OSString::withCString("CoreState.txt");
      v6 = OSString::withCString(v4);
      (*(*a2 + 192))(a2, v5, v6);
      v63 = 0;
      v61 = 0u;
      v62 = 0u;
      v59 = 0u;
      v60 = 0u;
      v58 = 0u;
      v7 = *(this + 9);
      if (v7[1411])
      {
        bzero(v4, 0x8000uLL);
        *&v59 = v4;
        LODWORD(v60) = 0;
        DWORD2(v59) = 0x8000;
        (*(**(*(this + 9) + 11288) + 904))(*(*(this + 9) + 11288), &v58, v8, v9, v10, v11, v12, v13);
        v14 = OSString::withCString("InterfaceState_skywalkinfra.txt");
        v15 = OSString::withCString(v4);
        (*(*a2 + 192))(a2, v14, v15);
        v7 = *(this + 9);
      }

      if (v7[1412])
      {
        bzero(v4, 0x8000uLL);
        *&v59 = v4;
        LODWORD(v60) = 0;
        *(&v59 + 1) = 0x8000;
        (*(**(*(this + 9) + 11296) + 904))(*(*(this + 9) + 11296), &v58, v16, v17, v18, v19, v20, v21);
        v22 = OSString::withCString("InterfaceState_prox.txt");
        v23 = OSString::withCString(v4);
        (*(*a2 + 192))(a2, v22, v23);
        v7 = *(this + 9);
      }

      if (v7[3743])
      {
        bzero(v4, 0x8000uLL);
        *&v59 = v4;
        LODWORD(v60) = 0;
        *(&v59 + 1) = 0x8000;
        (*(**(*(this + 9) + 29944) + 904))(*(*(this + 9) + 29944), &v58, v24, v25, v26, v27, v28, v29);
        v30 = OSString::withCString("InterfaceState_nan.txt");
        v31 = OSString::withCString(v4);
        (*(*a2 + 192))(a2, v30, v31);
        v7 = *(this + 9);
      }

      if (v7[3744])
      {
        bzero(v4, 0x8000uLL);
        *&v59 = v4;
        LODWORD(v60) = 0;
        *(&v59 + 1) = 0x8000;
        (*(**(*(this + 9) + 29952) + 904))(*(*(this + 9) + 29952), &v58, v32, v33, v34, v35, v36, v37);
        v38 = OSString::withCString("InterfaceState_ndi.txt");
        v39 = OSString::withCString(v4);
        (*(*a2 + 192))(a2, v38, v39);
        v7 = *(this + 9);
      }

      if (v7[1413])
      {
        bzero(v4, 0x8000uLL);
        *&v59 = v4;
        LODWORD(v60) = 0;
        *(&v59 + 1) = 0x8000;
        (*(**(*(this + 9) + 11304) + 904))(*(*(this + 9) + 11304), &v58, v40, v41, v42, v43, v44, v45);
        v46 = OSString::withCString("InterfaceState_apsta.txt");
        v47 = OSString::withCString(v4);
        (*(*a2 + 192))(a2, v46, v47);
        v7 = *(this + 9);
      }

      if (v7[1414])
      {
        bzero(v4, 0x8000uLL);
        *&v59 = v4;
        LODWORD(v60) = 0;
        *(&v59 + 1) = 0x8000;
        (*(**(*(this + 9) + 11312) + 904))(*(*(this + 9) + 11312), &v58, v48, v49, v50, v51, v52, v53);
        v54 = OSString::withCString("InterfaceState_llw.txt");
        v55 = OSString::withCString(v4);
        (*(*a2 + 192))(a2, v54, v55);
      }
    }

    AppleBCMWLANCore::captureDeviceInfo(this, &v64);
    v56 = OSString::withCString("DeviceInfo.xml");
    (*(*a2 + 192))(a2, v56, v64);
    if ((*(*a2 + 128))(a2) == -469793519)
    {
      (*(*a2 + 184))(a2, *(this + 9) + 18424);
    }

    (*(*a2 + 128))(a2);
    kdebug_trace();
    if (v4)
    {
      IOFreeData();
    }
  }

  return 0;
}

uint64_t AppleBCMWLANCore::completeFaultReportCallback(AppleBCMWLANCore *this, const CCFaultReport *a2)
{
  if (a2)
  {
    (*(*a2 + 128))(a2);
    kdebug_trace();
    if (((*(*a2 + 88))(a2) & 1) == 0)
    {
      v4 = *(*(this + 9) + 10376);
      if ((v4 & 0x8090) != 0)
      {
        v5 = 0;
      }

      else
      {
        v5 = (v4 >> 2) & 1;
      }

      memset(v22, 0, sizeof(v22));
      v21 = 0u;
      memset(v20, 0, sizeof(v20));
      v15 = 0x200000004;
      v16 = v5;
      v17 = (*(*a2 + 168))(a2);
      v18 = -528336891;
      v19 = (*(*a2 + 128))(a2);
      *(&v21 + 1) = CCFaultReport::getProgramCounter(a2);
      v22[0] = CCFaultReport::getLinkRegister(a2);
      LODWORD(v22[5]) = (*(*a2 + 136))(a2);
      v6 = (*(*a2 + 144))(a2);
      strlcpy(&v22[1], v6, 0x20uLL);
      v7 = (*(*a2 + 152))(a2);
      strlcpy(&v22[5] + 4, v7, 0x20uLL);
      v8 = (*(*a2 + 160))(a2);
      strlcpy(v20 + 4, v8, 0x80uLL);
      v9 = *(this + 9);
      if (v9[1411])
      {
        if ((*(*this + 1952))(this))
        {
          (*(*this + 1952))(this);
          if (CCLogStream::shouldLog())
          {
            v14 = (*(*this + 1952))(this);
            CCLogStream::logAlert(v14, "[dk] %s@%d: posting APPLE80211_M_DRIVER_AVAILABLE, available[%u] reason[0x%08x] sub_reason[0x%08x] minor_reason[0x%08x]\n", "completeFaultReportCallback", 53825, v16, v18, v19, LODWORD(v20[0]));
          }
        }

        IO80211Controller::postMessage(this, *(*(this + 9) + 11288), 0x37u, &v15, 0xF8uLL, 1);
        v9 = *(this + 9);
      }

      v10 = v9[1412];
      if (v10)
      {
        IO80211Controller::postMessage(this, v10, 0x37u, &v15, 0xF8uLL, 1);
        v9 = *(this + 9);
      }

      v11 = v9[3743];
      if (v11)
      {
        IO80211Controller::postMessage(this, v11, 0x37u, &v15, 0xF8uLL, 1);
      }
    }
  }

  else
  {
    kdebug_trace();
  }

  v12 = (*(*this + 104))(this);
  (*(*v12 + 88))(v12, *(*(this + 9) + 5536));
  if (a2)
  {
    (*(*a2 + 128))(a2);
  }

  kdebug_trace();
  return 0;
}

uint64_t AppleBCMWLANCore::induceFaultCallback(AppleBCMWLANCore *this, uint64_t a2, const char *a3)
{
  if (a2 == -469793279)
  {
    *(*(this + 9) + 4376) = 1;
    if ((*(*this + 1952))(this, a2, a3))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::induceFaultCallback(this);
      }
    }
  }

  return 0;
}

AppleBCMWLANCommand *AppleBCMWLANCore::dequeueTxIOs(AppleBCMWLANCommand *result, unsigned __int16 *a2)
{
  if (*a2)
  {
    return AppleBCMWLANCommander::dequeueTxCommands(*(*(result + 9) + 5408), a2);
  }

  return result;
}

uint64_t AppleBCMWLANCore::reportCompletedTxIOs_WithoutBDC(uint64_t a1, uint64_t a2)
{
  AppleBCMWLANCommandQueue::getSize(*(a2 + 8));
  kdebug_trace();
  if (AppleBCMWLANCommandQueue::getSize(*(a2 + 8)))
  {
    AppleBCMWLANCommander::reportCompletedTxCommands(*(*(a1 + 72) + 5408), a2);
  }

  return kdebug_trace();
}

OSMetaClassBase *AppleBCMWLANCore::enqueueRxIOs_WithEventQueue(uint64_t a1, AppleBCMWLANObjectQueue **a2)
{
  v4 = a2 + 1;
  result = (*(*a2[1] + 56))(a2[1]);
  if (result)
  {
    result = AppleBCMWLANCommander::enqueueRxCommands(*(*(a1 + 72) + 5408), v4);
  }

  if ((*(*(a1 + 72) + 6580) & 1) == 0)
  {
    result = (*(**a2 + 56))();
    if (result)
    {

      return AppleBCMWLANCore::processRxEvents_WithEventQueue();
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::handleChanInfoTimer(uint64_t *a1, uint64_t a2)
{
  v86 = 0xAAAAAAAAAAAAAAAALL;
  v87 = 0xAAAAAAAAAAAAAAAALL;
  v83 = 0;
  BCMChannelSpec = 0;
  v4 = (a1 + 9);
  v79 = *(a1[9] + 19916);
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v88[0] = v5;
  v88[1] = v5;
  v82 = 4;
  v6 = IOMallocZeroData();
  if (v6)
  {
    v7 = v6;
    v85 = -1431655766;
    memcpy(v6, (*v4 + 19918), 0x320uLL);
    if (*(*v4 + 6240) != a2)
    {
      return IOFreeData();
    }

    atomic_fetch_add_explicit((*v4 + 6752), 1u, memory_order_relaxed);
    if ((*(*a1 + 1952))(a1))
    {
      (*(*a1 + 1952))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::handleChanInfoTimer(a1, a1 & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, v4);
      }
    }

    if (*(*v4 + 780) >= 0x11u && AppleBCMWLANCore::featureFlagIsBitSet(a1, 93))
    {
      v86 = &v83;
      v87 = 0x400040004;
      v8 = *(a1[9] + 5408);
      p_BCMChannelSpec = &v82;
      v81 = 4;
      v9 = AppleBCMWLANCommander::runIOVarGet(v8, "clm_flags", &p_BCMChannelSpec, &v86, 0);
      v10 = (*(*a1 + 1952))(a1);
      if (v9)
      {
        if (v10)
        {
          (*(*a1 + 1952))(a1);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::handleChanInfoTimer(a1);
          }
        }

        goto LABEL_165;
      }

      if (v10)
      {
        (*(*a1 + 1952))(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::handleChanInfoTimer(a1);
        }
      }

      if ((~v83 & 0x7000000) != 0)
      {
        v12 = 1;
        goto LABEL_23;
      }

      if ((*(*a1 + 1952))(a1))
      {
        (*(*a1 + 1952))(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::handleChanInfoTimer(a1);
        }
      }
    }

    v12 = 0;
LABEL_23:
    if (v79)
    {
      v78 = v12;
      v13 = 0;
      v14 = 0;
      v74 = 0;
      v76 = 0;
      while (2)
      {
        v15 = v13;
        while (1)
        {
          AppleChannelSpec = AppleBCMWLANChanSpec::getAppleChannelSpec(*(*v4 + 17744), v7[v15]);
          v17 = AppleChannelSpec;
          PrimaryChannel = ChanSpecGetPrimaryChannel();
          v19 = PrimaryChannel;
          v20 = AppleChannelSpec & 0xC000;
          v21 = (AppleChannelSpec >> 11) & 7;
          v85 = 0;
          BCMChannelSpec = AppleBCMWLANChanSpec::getBCMChannelSpec(*(*v4 + 17744), PrimaryChannel & 0xC7FF | (((AppleChannelSpec >> 11) & 7) << 11) | AppleChannelSpec & 0xC000);
          if (v21 > 2)
          {
            break;
          }

          v86 = &v85;
          v87 = 0x400040004;
          v22 = *(a1[9] + 5408);
          p_BCMChannelSpec = &BCMChannelSpec;
          v81 = 4;
          v23 = AppleBCMWLANCommander::runIOVarGet(v22, "per_chan_info", &p_BCMChannelSpec, &v86, 0);
          v24 = (*(*a1 + 1952))(a1);
          if (v23)
          {
            if (v24)
            {
              (*(*a1 + 1952))(a1);
              if (CCLogStream::shouldLog())
              {
                AppleBCMWLANCore::handleChanInfoTimer(a1);
              }
            }

            goto LABEL_165;
          }

          if (v24)
          {
            (*(*a1 + 1952))(a1);
            if (CCLogStream::shouldLog())
            {
              v72 = (*(*a1 + 1952))(a1);
              v26 = v7[v15];
              v27 = AppleBCMWLANChanSpec::convToAscii(v17, v88, 0x20u);
              CCLogStream::logNoticeIf(v72, 0x4000000400uLL, "[dk] %s@%d:Chanspec: %x, AppleChanSpec: %s Ch Bitmap: %04x perChanInfo: %04x\n", "handleChanInfoTimer", 46387, v26, v27, v85, BCMChannelSpec);
            }
          }

          if ((~v85 & 3) == 0 && ((v17 & 0xC000) != 0 || v21 == 2))
          {
            *(*v4 + 2 * v14 + 19918) = v7[v15];
            *(*v4 + v14 + 20718) = v19;
            *(*v4 + v14 + 21118) = (v85 & 0x40) != 0;
            *(*v4 + v14 + 21518) = (v85 & 8) != 0;
            *(*v4 + v14 + 21918) = (v85 & 0x20) != 0;
            *(*v4 + v14 + 22318) = 0;
            *(*v4 + v14 + 22718) = 0;
            *(*v4 + v14 + 26320) = 0;
            *(*v4 + v14 + 26720) = v20 == 0x4000;
            *(*v4 + v14 + 27120) = (v85 & 0x400) != 0;
            v28 = *v4 + v14;
            v29 = v78;
            if (!*(v28 + 27120))
            {
              v29 = 0;
            }

            *(v28 + 27520) = v29;
            if (*(*v4 + v14 + 27120))
            {
              v30 = v76 || AppleBCMWLANCore::get6GTxPowerFromFW(a1, v7[v15], 1) == 0;
              v76 = v30;
              v31 = dword_1003E88D5;
              if (dword_1003E88D5)
              {
                v32 = &byte_1003E88DB;
                while (*(v32 - 1) != v7[v15])
                {
                  v32 += 4;
                  if (!--v31)
                  {
                    goto LABEL_50;
                  }
                }

                LOBYTE(v31) = *v32;
              }

LABEL_50:
              *(*v4 + v14 + 28320) = v31;
            }

            if ((v85 & 0x1000) != 0)
            {
              v33 = v74 || AppleBCMWLANCore::get6GTxPowerFromFW(a1, v7[v15], 0) == 0;
              v74 = v33;
              v34 = dword_1003E89E1;
              if (dword_1003E89E1)
              {
                v35 = &byte_1003E89E7;
                while (*(v35 - 1) != v7[v15])
                {
                  v35 += 4;
                  if (!--v34)
                  {
                    goto LABEL_61;
                  }
                }

                LOBYTE(v34) = *v35;
              }

LABEL_61:
              *(*v4 + v14 + 29120) = v34;
            }

            *(*v4 + 4 * v14 + 23120) = BCMChannelSpec;
            *(*v4 + 4 * v14++ + 24720) = v85;
            break;
          }

          if (++v15 >= v79)
          {
            goto LABEL_73;
          }
        }

        if (*(*v4 + 6752) <= 1u)
        {
          v13 = v15 + 1;
        }

        else
        {
          *(*v4 + 6752) = 1;
          if ((*(*a1 + 1952))(a1))
          {
            (*(*a1 + 1952))(a1);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANCore::handleChanInfoTimer(a1);
            }
          }

          v14 = 0;
          v13 = 0;
        }

        if (v13 < v79 && v14 < 0x190)
        {
          continue;
        }

        break;
      }

LABEL_73:
      if (v14 == 400)
      {
        if ((*(*a1 + 1952))(a1))
        {
          (*(*a1 + 1952))(a1);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::handleChanInfoTimer(a1);
          }
        }

        LOWORD(v36) = 400;
      }

      else if (v14 > 0x18F)
      {
        LOWORD(v36) = v14;
      }

      else
      {
        v37 = 0;
        v75 = 0;
        v73 = 0;
        v36 = v14;
        do
        {
          v77 = v36;
          v38 = v37;
          while (1)
          {
            v39 = AppleBCMWLANChanSpec::getAppleChannelSpec(*(*v4 + 17744), v7[v38]);
            v40 = ChanSpecGetPrimaryChannel();
            v41 = (v39 >> 11) & 7;
            v85 = 0;
            BCMChannelSpec = AppleBCMWLANChanSpec::getBCMChannelSpec(*(*v4 + 17744), v40 & 0xC7FF | (((v39 >> 11) & 7) << 11) | v39 & 0xC000);
            if (v41 < 3)
            {
              v36 = v77;
              goto LABEL_129;
            }

            if (v14)
            {
              v42 = 0;
              v43 = *v4 + 24720;
              while (v40 != *(v43 + v42 - 4002) || *(v43 + v42 + 2000) != ((v39 & 0xC000) == 0x4000))
              {
                if (v14 == ++v42)
                {
                  goto LABEL_97;
                }
              }

              v85 = *(*v4 + 4 * v42 + 24720);
              if ((*(*a1 + 1952))(a1))
              {
                (*(*a1 + 1952))(a1);
                if (CCLogStream::shouldLog())
                {
                  v45 = (*(*a1 + 1952))(a1);
                  v70 = v7[v38];
                  v71 = v45;
                  v46 = AppleBCMWLANChanSpec::convToAscii(v39, v88, 0x20u);
                  CCLogStream::logNoticeIf(v71, 0x4000000400uLL, "[dk] %s@%d:Chanspec: %x, AppleChanSpec: %s Ch Bitmap: %04x perChanInfo: %04x\n", "handleChanInfoTimer", 46473, v70, v46, v85, BCMChannelSpec);
                }
              }

              v44 = v42;
            }

            else
            {
              v44 = 0;
            }

            if (v44 != v14)
            {
              break;
            }

LABEL_97:
            if ((*(*a1 + 1952))(a1))
            {
              (*(*a1 + 1952))(a1);
              if (CCLogStream::shouldLog())
              {
                AppleBCMWLANCore::handleChanInfoTimer(a1);
              }
            }

            if (++v38 >= v79)
            {
              LOWORD(v36) = v77;
              goto LABEL_133;
            }
          }

          *(*v4 + 2 * v77 + 19918) = v7[v38];
          *(*v4 + v77 + 20718) = v40;
          *(*v4 + v77 + 21118) = (v85 & 0x40) != 0;
          *(*v4 + v77 + 21518) = (v85 & 8) != 0;
          *(*v4 + v77 + 21918) = (v85 & 0x20) != 0;
          *(*v4 + v77 + 22318) = v41 == 3;
          *(*v4 + v77 + 22718) = v41 == 4;
          *(*v4 + v77 + 26320) = v41 == 5;
          *(*v4 + v77 + 26720) = (v39 & 0xC000) == 0x4000;
          *(*v4 + v77 + 27120) = (v85 & 0x400) != 0;
          v47 = *v4 + v77;
          v48 = v78;
          if (!*(v47 + 27120))
          {
            v48 = 0;
          }

          *(v47 + 27520) = v48;
          if (v41 == 5)
          {
            if (*(*v4 + v77 + 27120))
            {
              v49 = v75 || AppleBCMWLANCore::get6GTxPowerFromFW(a1, v7[v38], 1) == 0;
              v75 = v49;
              v50 = dword_1003E88D5;
              if (dword_1003E88D5)
              {
                v51 = &byte_1003E88DB;
                while (*(v51 - 1) != v7[v38])
                {
                  v51 += 4;
                  if (!--v50)
                  {
                    goto LABEL_116;
                  }
                }

                LOBYTE(v50) = *v51;
              }

LABEL_116:
              *(*v4 + v77 + 28720) = v50;
            }

            if ((v85 & 0x1000) != 0)
            {
              v52 = v73 || AppleBCMWLANCore::get6GTxPowerFromFW(a1, v7[v38], 0) == 0;
              v73 = v52;
              v53 = dword_1003E89E1;
              if (dword_1003E89E1)
              {
                v54 = &byte_1003E89E7;
                while (*(v54 - 1) != v7[v38])
                {
                  v54 += 4;
                  if (!--v53)
                  {
                    goto LABEL_127;
                  }
                }

                LOBYTE(v53) = *v54;
              }

LABEL_127:
              *(*v4 + v77 + 29520) = v53;
            }
          }

          *(*v4 + 4 * v77 + 23120) = BCMChannelSpec;
          *(*v4 + 4 * v77 + 24720) = v85;
          v36 = v77 + 1;
LABEL_129:
          v37 = v38 + 1;
        }

        while (v38 + 1 < v79 && v36 < 0x190);
      }
    }

    else
    {
      LOWORD(v36) = 0;
    }

LABEL_133:
    *(*v4 + 19916) = v36;
    v55 = *v4 + 19912;
    v56 = *v4 + 6744;
    *v55 = *v56;
    *(v55 + 2) = *(v56 + 2);
    v57 = *v4;
    v58 = *(*v4 + 29944);
    if (v58)
    {
      IO80211Controller::postMessage(a1, v58, 0xBu, 0, 0, 1);
      v57 = a1[9];
    }

    v59 = *(v57 + 11296);
    if (v59)
    {
      IO80211Controller::postMessage(a1, v59, 0xBu, 0, 0, 1);
      v57 = a1[9];
    }

    v60 = *(v57 + 19916);
    if (*(v57 + 19916))
    {
      if (*(v57 + 26720))
      {
        v61 = 1;
      }

      else
      {
        v62 = (v57 + 26721);
        v63 = 1;
        do
        {
          v64 = v63;
          if (v60 == v63)
          {
            break;
          }

          v65 = *v62++;
          ++v63;
        }

        while (!v65);
        v61 = v64 < v60;
      }
    }

    else
    {
      v61 = 0;
    }

    *(v57 + 35896) = v61;
    if (*(*v4 + 780) >= 0x11u && v61 != AppleBCMWLANCore::is6ESupportedInCountry(a1, (*v4 + 6744)))
    {
      if ((*(*a1 + 1952))(a1))
      {
        (*(*a1 + 1952))(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::handleChanInfoTimer(a1);
        }
      }

      if (*(*v4 + 1087) == 1)
      {
        if ((*(*a1 + 1952))(a1))
        {
          (*(*a1 + 1952))(a1);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::handleChanInfoTimer(a1);
          }
        }

        AppleBCMWLANCore::populate6ESupportedCountryList(a1);
      }

      else
      {
        AppleBCMWLANCore::handleCountryCodeChangeToRepopulateChannels(a1);
      }
    }

    if ((*(*a1 + 1952))(a1))
    {
      (*(*a1 + 1952))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::handleChanInfoTimer(a1);
      }
    }

    v66 = *v4;
    v67 = *(*v4 + 11296);
    if (v67)
    {
      IO80211Controller::postMessage(a1, v67, 0xE0u, 0, 0, 1);
      v66 = a1[9];
    }

    v68 = *(v66 + 11288);
    if (v68)
    {
      IO80211Controller::postMessage(a1, v68, 0xE0u, 0, 0, 1);
      v66 = a1[9];
    }

    v69 = *(v66 + 29944);
    if (!v69)
    {
      goto LABEL_166;
    }

    IO80211Controller::postMessage(a1, v69, 0xE0u, 0, 0, 1);
LABEL_165:
    v66 = *v4;
LABEL_166:
    *(v66 + 6752) = 0;
    return IOFreeData();
  }

  result = (*(*a1 + 1952))(a1);
  if (result)
  {
    (*(*a1 + 1952))(a1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      return AppleBCMWLANCore::handleChanInfoTimer(a1);
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::disableHostCountryCode(uint64_t a1)
{
  v4 = 0;
  result = (*(*a1 + 128))(a1);
  if (result)
  {
    v3 = (*(*a1 + 128))(a1);
    return (*(*a1 + 1328))(a1, v3, &v4);
  }

  return result;
}

uint64_t AppleBCMWLANCore::handleStatsReportTimeout(IOService *a1)
{
  if (AppleBCMWLANCore::featureFlagIsBitSet(a1, 84) && (AppleBCMWLANCore::featureFlagIsBitSet(a1, 111) & 1) != 0 || (result = AppleBCMWLANCore::featureFlagIsBitSet(a1, 85), result))
  {
    v3 = a1[1].OSObject::OSObjectInterface::__vftable;
    if (BYTE4(v3[1156].init))
    {
      AppleBCMWLANCore::sendRC2CoexStatsEventCoreAnalytics(a1);
      v3 = a1[1].OSObject::OSObjectInterface::__vftable;
    }

    if (BYTE4(v3[1159].init))
    {
      AppleBCMWLANCore::sendRC1CoexStatsEventCoreAnalytics(a1);
      v3 = a1[1].OSObject::OSObjectInterface::__vftable;
    }

    v4 = (&v3[1156].init + 4);
    v4[1] = 0u;
    v4[2] = 0u;
    *v4 = 0u;
    v5 = &a1[1].OSObject::OSObjectInterface::__vftable[1159].init + 4;
    *(v5 + 16) = 0;
    *v5 = 0u;
    result = a1[1].OSObject::OSObjectInterface::__vftable[390].free;
    if (result)
    {
      v6 = *(*result + 56);

      return v6();
    }
  }

  return result;
}

_DWORD *AppleBCMWLANCore::handleTxDCReportTimeout(AppleBCMWLANCore *a1, uint64_t a2)
{
  result = AppleBCMWLANCore::featureFlagIsBitSet(a1, 79);
  if (result)
  {
    v6 = (a1 + 72);
    v5 = *(a1 + 9);
    if (*(v5 + 6256) == a2)
    {
      v7 = (*(**(v5 + 5392) + 368))(*(v5 + 5392)) <= 0x112E ? 200 : 168;
      result = IOMallocZeroData();
      if (result)
      {
        v8 = result;
        *result = 3;
        v48[0] = result;
        v48[1] = v7;
        v47[0] = result;
        v47[1] = v7 & 0xFFFFFF00FFFFFFFFLL | (v7 << 32);
        v9 = (*(*a1 + 88))(a1);
        if ((*(*v9 + 136))(v9))
        {
          v46[0] = a1;
          v46[1] = AppleBCMWLANCore::handleTxDCPerAntAsyncCallback;
          v46[2] = 0;
          v10 = *(*(a1 + 9) + 5408);
          v45 = v7 << 16;
          if (AppleBCMWLANCommander::sendIOVarGet(v10, "dynsar", v48, &v45, v46, 0) && (*(*a1 + 1952))(a1))
          {
            (*(*a1 + 1952))(a1);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANCore::handleTxDCReportTimeout(a1);
            }
          }
        }

        else if (AppleBCMWLANCommander::runIOVarGet(*(*v6 + 5408), "dynsar", v48, v47, 0))
        {
          if ((*(*a1 + 1952))(a1))
          {
            (*(*a1 + 1952))(a1);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANCore::handleTxDCReportTimeout(a1);
            }
          }
        }

        else
        {
          if (*v8 != 3)
          {
            if ((*(*a1 + 1952))(a1))
            {
              (*(*a1 + 1952))(a1);
              if (CCLogStream::shouldLog())
              {
                AppleBCMWLANCore::handleTxDCReportTimeout(a1);
              }
            }

            return IOFreeData();
          }

          v12 = (v8 + 2);
          v11 = *(v8 + 4);
          v13 = v11 == 4 || v11 == 2;
          if (v13 && *(v8 + 35) == 2 && *(v8 + 36) < 9u)
          {
            if (v11 == 4)
            {
              v15 = *(v8 + 38);
              if (v15 + 16 * *(v8 + 32) > *(v8 + 5))
              {
                if ((*(*a1 + 1952))(a1))
                {
                  (*(*a1 + 1952))(a1);
                  if (CCLogStream::shouldLog())
                  {
                    AppleBCMWLANCore::handleTxDCReportTimeout(a1);
                  }
                }

                return IOFreeData();
              }

              v44 = 0;
              v16 = v12 + v15;
            }

            else if (v11 == 2)
            {
              v14 = *(v8 + 38);
              if (v14 + 24 * *(v8 + 32) > *(v8 + 5))
              {
                if ((*(*a1 + 1952))(a1))
                {
                  (*(*a1 + 1952))(a1);
                  if (CCLogStream::shouldLog())
                  {
                    AppleBCMWLANCore::handleTxDCReportTimeout(a1);
                  }
                }

                return IOFreeData();
              }

              v16 = 0;
              v44 = v12 + v14;
            }

            else
            {
              if ((*(*a1 + 1952))(a1))
              {
                (*(*a1 + 1952))(a1);
                if (CCLogStream::shouldLog())
                {
                  AppleBCMWLANCore::handleTxDCReportTimeout(a1);
                }
              }

              v44 = 0;
              v16 = 0;
            }

            if (v8[3])
            {
              if (*(v8 + 35))
              {
                v17 = 0;
                do
                {
                  if ((*(*a1 + 1952))(a1))
                  {
                    (*(*a1 + 1952))(a1);
                    if (CCLogStream::shouldLog())
                    {
                      AppleBCMWLANCore::handleTxDCReportTimeout(a1);
                    }
                  }

                  v18 = *(v8 + 32);
                  if (*(v8 + 32))
                  {
                    v19 = 0;
                    do
                    {
                      v20 = v19 + v17 * v18;
                      v21 = *v12;
                      if (v21 == 4)
                      {
                        v24 = v8[3];
                        if (v17)
                        {
                          if (v19 == 2)
                          {
                            if (v24)
                            {
                              v32 = 100 * *&v16[8 * v20] / v24;
                            }

                            else
                            {
                              LOBYTE(v32) = 0;
                            }

                            *(*(a1 + 9) + 6294) = v32;
                            if ((*(*a1 + 1952))(a1))
                            {
                              (*(*a1 + 1952))(a1);
                              if (CCLogStream::shouldLog())
                              {
                                AppleBCMWLANCore::handleTxDCReportTimeout(a1);
                              }
                            }
                          }

                          else if (v19 == 1)
                          {
                            if (v24)
                            {
                              v29 = 100 * *&v16[8 * v20] / v24;
                            }

                            else
                            {
                              LOBYTE(v29) = 0;
                            }

                            *(*(a1 + 9) + 6293) = v29;
                            if ((*(*a1 + 1952))(a1))
                            {
                              (*(*a1 + 1952))(a1);
                              if (CCLogStream::shouldLog())
                              {
                                AppleBCMWLANCore::handleTxDCReportTimeout(a1);
                              }
                            }
                          }

                          else if (v19)
                          {
                            if (v24)
                            {
                              v33 = 100 * *&v16[8 * v20] / v24;
                            }

                            else
                            {
                              LOBYTE(v33) = 0;
                            }

                            *(*(a1 + 9) + 6295) = v33;
                            if ((*(*a1 + 1952))(a1))
                            {
                              (*(*a1 + 1952))(a1);
                              if (CCLogStream::shouldLog())
                              {
                                AppleBCMWLANCore::handleTxDCReportTimeout(a1);
                              }
                            }
                          }

                          else
                          {
                            if (v24)
                            {
                              v25 = 100 * *&v16[8 * v20] / v24;
                            }

                            else
                            {
                              LOBYTE(v25) = 0;
                            }

                            *(*(a1 + 9) + 6292) = v25;
                            if ((*(*a1 + 1952))(a1))
                            {
                              (*(*a1 + 1952))(a1);
                              if (CCLogStream::shouldLog())
                              {
                                AppleBCMWLANCore::handleTxDCReportTimeout(a1);
                              }
                            }
                          }
                        }

                        else if (v19 == 2)
                        {
                          if (v24)
                          {
                            v38 = 100 * *&v16[8 * v20] / v24;
                          }

                          else
                          {
                            LOBYTE(v38) = 0;
                          }

                          *(*(a1 + 9) + 6290) = v38;
                          if ((*(*a1 + 1952))(a1))
                          {
                            (*(*a1 + 1952))(a1);
                            if (CCLogStream::shouldLog())
                            {
                              AppleBCMWLANCore::handleTxDCReportTimeout(a1);
                            }
                          }
                        }

                        else if (v19 == 1)
                        {
                          if (v24)
                          {
                            v35 = 100 * *&v16[8 * v20] / v24;
                          }

                          else
                          {
                            LOBYTE(v35) = 0;
                          }

                          *(*(a1 + 9) + 6289) = v35;
                          if ((*(*a1 + 1952))(a1))
                          {
                            (*(*a1 + 1952))(a1);
                            if (CCLogStream::shouldLog())
                            {
                              AppleBCMWLANCore::handleTxDCReportTimeout(a1);
                            }
                          }
                        }

                        else if (v19)
                        {
                          if (v24)
                          {
                            v39 = 100 * *&v16[8 * v20] / v24;
                          }

                          else
                          {
                            LOBYTE(v39) = 0;
                          }

                          *(*(a1 + 9) + 6291) = v39;
                          if ((*(*a1 + 1952))(a1))
                          {
                            (*(*a1 + 1952))(a1);
                            if (CCLogStream::shouldLog())
                            {
                              AppleBCMWLANCore::handleTxDCReportTimeout(a1);
                            }
                          }
                        }

                        else
                        {
                          if (v24)
                          {
                            v27 = 100 * *&v16[8 * v20] / v24;
                          }

                          else
                          {
                            LOBYTE(v27) = 0;
                          }

                          *(*(a1 + 9) + 6288) = v27;
                          if ((*(*a1 + 1952))(a1))
                          {
                            (*(*a1 + 1952))(a1);
                            if (CCLogStream::shouldLog())
                            {
                              AppleBCMWLANCore::handleTxDCReportTimeout(a1);
                            }
                          }
                        }
                      }

                      else if (v21 == 2)
                      {
                        v22 = v8[3];
                        if (v17)
                        {
                          if (v19 == 2)
                          {
                            if (v22)
                            {
                              v30 = 100 * *&v44[12 * v20 + 8] / v22;
                            }

                            else
                            {
                              LOBYTE(v30) = 0;
                            }

                            *(*(a1 + 9) + 6294) = v30;
                            if ((*(*a1 + 1952))(a1))
                            {
                              (*(*a1 + 1952))(a1);
                              if (CCLogStream::shouldLog())
                              {
                                AppleBCMWLANCore::handleTxDCReportTimeout(a1);
                              }
                            }
                          }

                          else if (v19 == 1)
                          {
                            if (v22)
                            {
                              v28 = 100 * *&v44[12 * v20 + 8] / v22;
                            }

                            else
                            {
                              LOBYTE(v28) = 0;
                            }

                            *(*(a1 + 9) + 6293) = v28;
                            if ((*(*a1 + 1952))(a1))
                            {
                              (*(*a1 + 1952))(a1);
                              if (CCLogStream::shouldLog())
                              {
                                AppleBCMWLANCore::handleTxDCReportTimeout(a1);
                              }
                            }
                          }

                          else if (v19)
                          {
                            if (v22)
                            {
                              v31 = 100 * *&v44[12 * v20 + 8] / v22;
                            }

                            else
                            {
                              LOBYTE(v31) = 0;
                            }

                            *(*(a1 + 9) + 6295) = v31;
                            if ((*(*a1 + 1952))(a1))
                            {
                              (*(*a1 + 1952))(a1);
                              if (CCLogStream::shouldLog())
                              {
                                AppleBCMWLANCore::handleTxDCReportTimeout(a1);
                              }
                            }
                          }

                          else
                          {
                            if (v22)
                            {
                              v23 = 100 * *&v44[12 * v20 + 8] / v22;
                            }

                            else
                            {
                              LOBYTE(v23) = 0;
                            }

                            *(*(a1 + 9) + 6292) = v23;
                            if ((*(*a1 + 1952))(a1))
                            {
                              (*(*a1 + 1952))(a1);
                              if (CCLogStream::shouldLog())
                              {
                                AppleBCMWLANCore::handleTxDCReportTimeout(a1);
                              }
                            }
                          }
                        }

                        else if (v19 == 2)
                        {
                          if (v22)
                          {
                            v36 = 100 * *&v44[12 * v20 + 8] / v22;
                          }

                          else
                          {
                            LOBYTE(v36) = 0;
                          }

                          *(*(a1 + 9) + 6290) = v36;
                          if ((*(*a1 + 1952))(a1))
                          {
                            (*(*a1 + 1952))(a1);
                            if (CCLogStream::shouldLog())
                            {
                              AppleBCMWLANCore::handleTxDCReportTimeout(a1);
                            }
                          }
                        }

                        else if (v19 == 1)
                        {
                          if (v22)
                          {
                            v34 = 100 * *&v44[12 * v20 + 8] / v22;
                          }

                          else
                          {
                            LOBYTE(v34) = 0;
                          }

                          *(*(a1 + 9) + 6289) = v34;
                          if ((*(*a1 + 1952))(a1))
                          {
                            (*(*a1 + 1952))(a1);
                            if (CCLogStream::shouldLog())
                            {
                              AppleBCMWLANCore::handleTxDCReportTimeout(a1);
                            }
                          }
                        }

                        else if (v19)
                        {
                          if (v22)
                          {
                            v37 = 100 * *&v44[12 * v20 + 8] / v22;
                          }

                          else
                          {
                            LOBYTE(v37) = 0;
                          }

                          *(*(a1 + 9) + 6291) = v37;
                          if ((*(*a1 + 1952))(a1))
                          {
                            (*(*a1 + 1952))(a1);
                            if (CCLogStream::shouldLog())
                            {
                              AppleBCMWLANCore::handleTxDCReportTimeout(a1);
                            }
                          }
                        }

                        else
                        {
                          if (v22)
                          {
                            v26 = 100 * *&v44[12 * v20 + 8] / v22;
                          }

                          else
                          {
                            LOBYTE(v26) = 0;
                          }

                          *(*(a1 + 9) + 6288) = v26;
                          if ((*(*a1 + 1952))(a1))
                          {
                            (*(*a1 + 1952))(a1);
                            if (CCLogStream::shouldLog())
                            {
                              AppleBCMWLANCore::handleTxDCReportTimeout(a1);
                            }
                          }
                        }
                      }

                      else if ((*(*a1 + 1952))(a1))
                      {
                        (*(*a1 + 1952))(a1);
                        if (CCLogStream::shouldLog())
                        {
                          AppleBCMWLANCore::handleTxDCReportTimeout(a1);
                        }
                      }

                      ++v19;
                      v18 = *(v8 + 32);
                    }

                    while (v19 < v18);
                  }

                  ++v17;
                }

                while (v17 < *(v8 + 35));
              }

              v40 = *v6;
              v41 = *(*v6 + 5504);
              if (v41)
              {
                if (AppleBCMWLANCore::checkNonZeroTxDCValue(a1))
                {
                  AppleBCMWLANIOReportingCore::reportTxDC(v41, v40 + 6288);
                  v42 = *v6;
                  if (*(*v6 + 6288) || *(*v6 + 6289) || *(*v6 + 6290) || *(*v6 + 6291))
                  {
                    AppleBCMWLANCore::updateTxDCSlice0Ant0Report(a1);
                    v42 = *(a1 + 9);
                    if (!*(v42 + 6296))
                    {
                      *(v42 + 6296) = 1;
                      v42 = *v6;
                    }
                  }

                  if (*(v42 + 6292) || *(v42 + 6293) || *(v42 + 6294) || *(v42 + 6295))
                  {
                    AppleBCMWLANCore::updateTxDCSlice1Ant0Report(a1);
                    v42 = *(a1 + 9);
                    if (!*(v42 + 6384))
                    {
                      *(v42 + 6384) = 1;
                      v42 = *v6;
                    }
                  }

                  *(v42 + 6288) = 0;
                  v40 = *v6;
                }

                v43 = *(v40 + 6256);
                if (v43)
                {
                  (*(*v43 + 56))(v43, 120000);
                }
              }
            }

            return IOFreeData();
          }

          if ((*(*a1 + 1952))(a1))
          {
            (*(*a1 + 1952))(a1);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANCore::handleTxDCReportTimeout(a1);
            }
          }
        }

        return IOFreeData();
      }
    }
  }

  return result;
}

void *AppleBCMWLANCore::handleDynSARDetailSlice0Timeout(void *result, uint64_t a2)
{
  v2 = result[9];
  if (*(v2 + 4480) == 1 && *(v2 + 6264) == a2)
  {
    v3 = result;
    v4 = (*(**(v2 + 5392) + 368))(*(v2 + 5392));
    v5 = *(v3[9] + 5528);
    if (v4 < 0x112F)
    {
      AppleBCMWLANTxPowerManager::getDynSARDetail(v5, 0, 0xAu);
    }

    else
    {
      AppleBCMWLANTxPowerManager::getDynSARDetailV2(v5, 0, 0xAu);
    }

    result = *(v3[9] + 6264);
    if (result)
    {
      v6 = *(*result + 56);

      return v6();
    }
  }

  return result;
}

void *AppleBCMWLANCore::handleDynSARDetailSlice1Timeout(void *result, uint64_t a2)
{
  v2 = result[9];
  if (*(v2 + 4480) == 1 && *(v2 + 6272) == a2)
  {
    v3 = result;
    v4 = (*(**(v2 + 5392) + 368))(*(v2 + 5392));
    v5 = *(v3[9] + 5528);
    if (v4 < 0x112F)
    {
      AppleBCMWLANTxPowerManager::getDynSARDetail(v5, 1u, 0xAu);
    }

    else
    {
      AppleBCMWLANTxPowerManager::getDynSARDetailV2(v5, 1u, 0xAu);
    }

    result = *(v3[9] + 6272);
    if (result)
    {
      v6 = *(*result + 56);

      return v6();
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::driverkitAllocSkywalkBusResources(AppleBCMWLANCore *this)
{
  v4 = 0;
  v2 = AppleBCMWLANCore::driverKitProcessPlatformConfig(this);
  IOParseBootArgNumber("wlan.platformconfig.bypasscheck", &v4, 1);
  if ((v4 & 1) == 0 && (v2 & 1) == 0)
  {
    AppleBCMWLANCore::driverkitAllocSkywalkBusResources(this, v2, &v5);
    return v5;
  }

  if ((AppleBCMWLANCore::fetchAndUpdateRingParameters(this) & 1) == 0)
  {
    AppleBCMWLANCore::driverkitAllocSkywalkBusResources();
    return v5;
  }

  if (((*(**(*(this + 9) + 5392) + 776))(*(*(this + 9) + 5392)) & 1) == 0)
  {
    AppleBCMWLANCore::driverkitAllocSkywalkBusResources();
    return v5;
  }

  return 0;
}

uint64_t AppleBCMWLANCore::initDebugInfo(AppleBCMWLANCore *this)
{
  AppleBCMWLANBusInterface::getLogPipesAndStreams(*(*(this + 9) + 5392), (*(this + 9) + 14232), (*(this + 9) + 14224), (*(this + 9) + 14208), (*(this + 9) + 14240), (*(this + 9) + 14216));
  v2 = *(this + 9);
  v3 = v2[1778];
  if (v3)
  {
    (*(*v3 + 8))(v3);
    v2 = *(this + 9);
  }

  v4 = v2[1779];
  if (v4)
  {
    (*(*v4 + 8))(v4);
    v2 = *(this + 9);
  }

  v5 = v2[1780];
  if (v5)
  {
    (*(*v5 + 8))(v5);
    v2 = *(this + 9);
  }

  v6 = v2[1776];
  if (v6)
  {
    (*(*v6 + 8))(v6);
    v2 = *(this + 9);
  }

  v7 = v2[1777];
  if (v7)
  {
    (*(*v7 + 8))(v7);
    v2 = *(this + 9);
  }

  v8 = v2[1779];
  if (v8)
  {
    (*(*v8 + 72))(v8);
    v2 = *(this + 9);
  }

  v9 = v2[1778];
  if (v9)
  {
    (*(*v9 + 72))(v9);
    v2 = *(this + 9);
  }

  v10 = v2[1776];
  if (v10)
  {
    (*(*v10 + 72))(v10);
    v2 = *(this + 9);
  }

  if (v2[1778])
  {
    bzero(v15, 0x358uLL);
    v16 = -1;
    v21 = 0;
    v19 = 0;
    v20 = 0;
    v18 = 0;
    bytes = 0xA5A5000000000002;
    v22 = OSData::withBytes(&bytes, 8uLL);
    v23 = 150;
    if (AppleBCMWLAN_isVerboseDebugLoggingAllowed())
    {
      LODWORD(v16) = 127;
      v17 = 1;
    }

    v11 = *(*(this + 9) + 14224);
    v12 = CCStream::withPipeAndName();
    *(*(this + 9) + 14256) = OSMetaClassBase::safeMetaCast(v12, gCCLogStreamMetaClass);
    (v22->release)(v22);
  }

  return 0;
}

unint64_t AppleBCMWLANCore::copyKeys(AppleBCMWLANCore *this, char *a2, const char *a3, size_t a4, int a5)
{
  bzero(a2, a4);
  result = strlen(a3);
  if (result - 1 >= a4)
  {
    return result;
  }

  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  while (1)
  {
    v16 = a3[v15];
    if (v11 != 2)
    {
      if (v11 == 1)
      {
        v17 = v16 == 61;
        v13 = 2 * v17;
        v11 = 2 * v17;
      }

      else if (!v11)
      {
        if (a5 && (v16 - 65) < 0x1A || (v11 = 0, (a5 & 1) == 0) && (v16 - 123) >= 0xFFFFFFE6)
        {
          v11 = 1;
          v14 = v15;
        }
      }

      goto LABEL_22;
    }

    if (v15 != result - 1 && v16 != 32)
    {
      v11 = 2;
      ++v13;
      goto LABEL_22;
    }

    if (v16 != 32)
    {
      ++v13;
    }

    if (v12)
    {
      v18 = v12 + 1;
      a2[v12] = 95;
    }

    else
    {
      v18 = 0;
    }

    v12 = v18 + v13;
    if (v18 + v13 >= a4)
    {
      break;
    }

    memcpy(&a2[v18], &a3[v14], v13);
    v11 = 0;
LABEL_22:
    ++v15;
    result = strlen(a3);
    if (v15 >= result || v12 >= a4)
    {
      return result;
    }
  }

  result = (*(*this + 1952))(this);
  if (result)
  {
    (*(*this + 1952))(this);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v19 = (*(*this + 1952))(this);
      return CCLogStream::logAlert(v19, "[dk] %s@%d:key too long! index %ld, mode %d, cur %c, start %ld, keylen %ld copyindex %ld\n", "copyKeys", 3228, v15, 0, a3[v15], v14, v13, v18);
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::verifyFileSelect(AppleBCMWLANCore *this, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!(*(**(*(this + 9) + 5392) + 376))(*(*(this + 9) + 5392)))
  {
    return 0;
  }

  result = 3825174285;
  if (a2)
  {
    return result;
  }

  if (a3)
  {
    return 3825174286;
  }

  if (a4)
  {
    return 3825174287;
  }

  else
  {
    return 0;
  }
}

uint64_t AppleBCMWLANCore::appendWskuInfo(AppleBCMWLANCore *this)
{
  v9 = -1431655766;
  v8 = 0;
  if (IOParseBootArgNumber("wlan.debug.nowsku", &v9, 4))
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::appendWskuInfo(this);
      }
    }

    return 0;
  }

  v2 = this + 72;
  if (checkAcquireDataPropertyNotEmpty(*(*(this + 9) + 5392), "wlan.wsku.bypass", &v8, 0, 1uLL, "IOService"))
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::appendWskuInfo(this);
      }
    }

    if (v8)
    {
      (v8->release)(v8);
    }

    return 0;
  }

  v7 = 0;
  if (!checkAcquireDataPropertyNotEmpty(*(*v2 + 5392), "wifi-antenna-sku-info", &v7, 0x10uLL, 1uLL, "IOService"))
  {
    goto LABEL_17;
  }

  v5 = *v2;
  *(v5 + 4336) = *OSData::getBytesNoCopy(v7, 0, 0x10uLL);
  v6 = *v2;
  if (*(*v2 + 4336) == 1 && !*(v6 + 4340))
  {
    strlcat((v6 + 1976), "=", 0x100uLL);
    strlcat((*v2 + 1976), (*v2 + 4344), 0x100uLL);
    strlcat((*v2 + 1208), "=", 0x100uLL);
    strlcat((*v2 + 1208), (*v2 + 4344), 0x100uLL);
    strlcat((*v2 + 2232), "=", 0x100uLL);
    strlcat((*v2 + 2232), (*v2 + 4344), 0x100uLL);
LABEL_17:
    v3 = 0;
    goto LABEL_18;
  }

  AppleBCMWLANCore::appendWskuInfo(this, this + 72, &v10);
  v3 = v10;
LABEL_18:
  if (v7)
  {
    (v7->release)(v7);
  }

  return v3;
}

uint64_t acquireProperty<OSObject>(IOService *a1, const char *a2, OSMetaClassBase **a3, unint64_t a4, const char *a5)
{
  anObject = 0;
  result = acquirePropertyWithString(a1, a2, &anObject, a4, a5);
  if (result)
  {
    v7 = OSMetaClassBase::safeMetaCast(anObject, gOSObjectMetaClass);
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

uint64_t AppleBCMWLANCore::stopResources(AppleBCMWLANCore *this)
{
  IOLog("AppleBCMWLANCore::stopResources[%u] this[%p]\n", 3860, this);
  v2 = this + 72;
  v3 = 1;
  *(*(this + 9) + 18413) = 1;
  v4 = *(this + 9);
  v5 = *(v4 + 5408);
  if (v5)
  {
    (*(*v5 + 72))(v5);
    v6 = (*(*this + 88))(this);
    (*(*v6 + 72))(v6, *(*(this + 9) + 5408));
    v4 = *(this + 9);
  }

  atomic_compare_exchange_strong((v4 + 4400), &v3, 0);
  if (v3 == 1)
  {
    IOService::AdjustBusy(this, -1, 0);
    v27 = 0;
    IOService::GetBusyState(this, &v27, 0);
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::stopResources(this);
      }
    }

    v26 = *(*v2 + 4400);
    io80211_os_log();
  }

  v7 = *v2;
  v8 = *(*v2 + 29928);
  if (v8)
  {
    (*(*v8 + 72))(v8);
    v9 = (*(*this + 88))(this);
    (*(*v9 + 72))(v9, *(*(this + 9) + 29928));
    v7 = *(this + 9);
  }

  v10 = *(v7 + 6280);
  if (v10)
  {
    (*(*v10 + 80))(v10);
    v7 = *v2;
  }

  v11 = *(v7 + 6240);
  if (v11)
  {
    (*(*v11 + 80))(v11);
    v7 = *v2;
  }

  v12 = *(v7 + 6232);
  if (v12)
  {
    (*(*v12 + 80))(v12);
    v7 = *v2;
  }

  v13 = *(v7 + 4408);
  if (v13)
  {
    (*(*v13 + 80))(v13);
    v7 = *v2;
  }

  v14 = *(v7 + 6248);
  if (v14)
  {
    (*(*v14 + 80))(v14);
    v7 = *v2;
  }

  v15 = *(v7 + 6256);
  if (v15)
  {
    (*(*v15 + 80))(v15);
    v7 = *v2;
  }

  if (*(v7 + 4480) == 1)
  {
    v16 = *(v7 + 6264);
    if (v16)
    {
      (*(*v16 + 80))(v16);
      v7 = *v2;
    }

    v17 = *(v7 + 6272);
    if (v17)
    {
      (*(*v17 + 80))(v17);
      v7 = *v2;
    }
  }

  v18 = *(v7 + 5496);
  if (v18)
  {
    AppleBCMWLANBGScanAdapter::cancelScanPrivacyMacTimer(v18);
    v7 = *v2;
  }

  v19 = *(v7 + 5536);
  if (v19)
  {
    CCFaultReporter::unregisterCallbacks(v19, this);
    v7 = *(this + 9);
  }

  v20 = *(v7 + 11304);
  if (v20)
  {
    (*(*v20 + 16))(v20);
    *(*v2 + 11304) = 0;
    v7 = *v2;
  }

  v21 = *(v7 + 11296);
  if (v21)
  {
    (*(*v21 + 16))(v21);
    *(*v2 + 11296) = 0;
    v7 = *v2;
  }

  v22 = *(v7 + 29944);
  if (v22)
  {
    (*(*v22 + 16))(v22);
    *(*v2 + 29944) = 0;
    v7 = *v2;
  }

  v23 = *(v7 + 29952);
  if (v23)
  {
    (*(*v23 + 16))(v23);
    *(*v2 + 29952) = 0;
    v7 = *v2;
  }

  v24 = *(v7 + 14304);
  if (v24)
  {
    (*(*v24 + 16))(v24);
    *(*v2 + 14304) = 0;
  }

  return IOLog("AppleBCMWLANCore::stopResources[%u] this[%p]\n", 3948, this);
}

uint64_t AppleBCMWLANCore::destroyDebugInfo(AppleBCMWLANCore *this)
{
  v2 = *(this + 9);
  v3 = v2[1777];
  if (v3)
  {
    (*(*v3 + 16))(v3);
    *(*(this + 9) + 14216) = 0;
    v2 = *(this + 9);
  }

  v4 = v2[1780];
  if (v4)
  {
    (*(*v4 + 16))(v4);
    *(*(this + 9) + 14240) = 0;
    v2 = *(this + 9);
  }

  v5 = v2[1782];
  if (v5)
  {
    (*(*v5 + 16))(v5);
    *(*(this + 9) + 14256) = 0;
    v2 = *(this + 9);
  }

  v6 = v2[1776];
  if (v6)
  {
    (*(*v6 + 16))(v6);
    *(*(this + 9) + 14208) = 0;
    v2 = *(this + 9);
  }

  v7 = v2[1778];
  if (v7)
  {
    (*(*v7 + 16))(v7);
    *(*(this + 9) + 14224) = 0;
    v2 = *(this + 9);
  }

  v8 = v2[1779];
  if (v8)
  {
    (*(*v8 + 16))(v8);
    *(*(this + 9) + 14232) = 0;
  }

  return 0;
}

uint64_t AppleBCMWLANCore::syncChipTimer(AppleBCMWLANCore *this)
{
  v1 = *(this + 9);
  if ((*(v1 + 10376) & 1) != 0 && ((v2 = *(v1 + 19852), v2 != 4) ? (v3 = v2 == 1) : (v3 = 1), v3))
  {
    return AppleBCMWLANTimeKeeper::synchronizeTime(*(v1 + 5456));
  }

  else
  {
    return 3758097111;
  }
}

BOOL AppleBCMWLANCore::isPoweredOnOrRestricted(AppleBCMWLANCore *this)
{
  v1 = *(this + 9);
  if ((*(v1 + 10376) & 1) == 0)
  {
    return 0;
  }

  v3 = *(v1 + 19852);
  return v3 == 1 || v3 == 4;
}

uint64_t AppleBCMWLANCore::collectSPMIHEBResetStats(AppleBCMWLANCore *this, unsigned int a2)
{
  v4 = OSString::withCString("com.apple.wifi.SPMIHEB.resetStats");
  if (!v4)
  {
    return AppleBCMWLANCore::collectSPMIHEBResetStats(this);
  }

  v5 = v4;
  v6 = OSDictionary::withCapacity(1u);
  if (v6)
  {
    v7 = OSString::withCString("resetCount");
    if (v7)
    {
      v8 = v7;
      v9 = OSNumber::withNumber(a2, 0x20uLL);
      if (v9)
      {
        OSDictionary::setObject(v6, v8, v9);
        v10 = IOService::CoreAnalyticsSendEvent(this, 0, v5, v6, 0);
        if (v10)
        {
          v11 = v10;
          if ((*(*this + 1952))(this))
          {
            (*(*this + 1952))(this);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANCore::collectSPMIHEBResetStats(this, this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, v5, v11);
            }
          }
        }

        if (!(*(*this + 1952))(this) || ((*(*this + 1952))(this), (CCLogStream::shouldLogConsole() & 1) == 0))
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            v13[0] = 67109634;
            v13[1] = 73;
            v14 = 2080;
            v15 = "collectSPMIHEBResetStats";
            v16 = 1024;
            v17 = 4294;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%c [dk] %s@%d: sent SPMI reset stats to coreAnalytics\n", v13, 0x18u);
          }
        }

        if ((*(*this + 1952))(this))
        {
          (*(*this + 1952))(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::collectSPMIHEBResetStats(this);
          }
        }
      }

      else
      {
        AppleBCMWLANCore::collectSPMIHEBResetStats(this);
      }

      (v8->release)(v8);
      if (v9)
      {
        (v9->release)(v9);
      }
    }

    else
    {
      AppleBCMWLANCore::collectSPMIHEBResetStats(this);
    }
  }

  else
  {
    AppleBCMWLANCore::collectSPMIHEBResetStats(this);
  }

  result = (v5->release)(v5);
  if (v6)
  {
    return (v6->release)(v6);
  }

  return result;
}

uint64_t AppleBCMWLANCore::getTxPktCounter(AppleBCMWLANCore *this)
{
  v3 = 0u;
  v4 = 0u;
  v1 = *(*(this + 9) + 11288);
  if (v1)
  {
    (*(*v1 + 872))(v1, &v3);
  }

  return vaddvq_s64(vaddq_s64(v4, v3));
}

uint64_t AppleBCMWLANCore::getRealTimeAwdlTxPktCounter(AppleBCMWLANCore *this)
{
  v2 = 0u;
  v3 = 0u;
  result = *(*(this + 9) + 11296);
  if (result)
  {
    (*(*result + 872))(result, &v2);
    return *(&v3 + 1) + v3;
  }

  return result;
}

uint64_t AppleBCMWLANCore::getRealTimeNANTxPktCounter(AppleBCMWLANCore *this)
{
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v2 = *(this + 9);
  v3 = *(v2 + 29944);
  if (v3)
  {
    (*(*v3 + 872))(v3, &v10);
    v2 = *(this + 9);
  }

  v4 = *(v2 + 29952);
  if (v4)
  {
    (*(*v4 + 872))(v4, &v8);
    v6 = *(&v9 + 1);
    v5 = v9;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  return *(&v11 + 1) + v11 + v5 + v6;
}

uint64_t AppleBCMWLANCore::getRealTimeTrafficClassTxCounter(AppleBCMWLANCore *this)
{
  v2 = 0u;
  v3 = 0u;
  result = *(*(this + 9) + 11288);
  if (result)
  {
    (*(*result + 872))(result, &v2);
    return *(&v3 + 1) + v3;
  }

  return result;
}

uint64_t AppleBCMWLANCore::dumpWmeCounters(AppleBCMWLANCore *this, char *a2)
{
  v27 = 0u;
  v28 = 0u;
  v3 = *(*(this + 9) + 11288);
  if (v3)
  {
    (*(*v3 + 872))(v3, &v27);
  }

  (*(*this + 1952))(this, a2);
  v4 = *(this + 9);
  v19 = *(v4 + 10784);
  v23 = *(v4 + 10792);
  v15 = *(v4 + 10768);
  v5 = IO80211Print();
  v27 = 0u;
  v28 = 0u;
  v6 = *(*(this + 9) + 11296);
  if (v6)
  {
    (*(*v6 + 872))(v6, &v27);
  }

  (*(*this + 1952))(this);
  v7 = *(this + 9);
  v20 = *(v7 + 10816);
  v24 = *(v7 + 10824);
  v16 = *(v7 + 10800);
  v8 = IO80211Print() + v5;
  v27 = 0u;
  v28 = 0u;
  v9 = *(*(this + 9) + 29944);
  if (v9)
  {
    (*(*v9 + 872))(v9, &v27);
  }

  (*(*this + 1952))(this);
  v10 = *(this + 9);
  v21 = *(v10 + 10848);
  v25 = *(v10 + 10856);
  v17 = *(v10 + 10832);
  v11 = IO80211Print();
  v27 = 0u;
  v28 = 0u;
  v12 = *(*(this + 9) + 29952);
  if (v12)
  {
    (*(*v12 + 872))(v12, &v27);
  }

  (*(*this + 1952))(this);
  v13 = *(this + 9);
  v22 = *(v13 + 10880);
  v26 = *(v13 + 10888);
  v18 = *(v13 + 10864);
  return IO80211Print() + v11 + v8;
}

uint64_t AppleBCMWLANCore::featureFlagIsBitSet(AppleBCMWLANCore *this, int a2)
{
  v2 = a2;
  v3 = a2 + 7;
  if (a2 >= 0)
  {
    v3 = a2;
  }

  if ((v3 >> 3) >= 0x10)
  {
    AppleBCMWLANCore::featureFlagIsBitSet(this);
    return v11;
  }

  else
  {
    v4 = *(this + 9);
    v5 = *(v4 + 17832);
    if (v5)
    {
      v6 = v4 + 17840;
      v7 = v3 >> 3;
      IOLockLock(*(v4 + 17832));
      v8 = (*(v6 + v7) >> (v2 & 7)) & 1;
      IOLockUnlock(v5);
    }

    else
    {
      AppleBCMWLANCore::featureFlagIsBitSet(this);
      return v10;
    }
  }

  return v8;
}

uint64_t AppleBCMWLANCore::waitForDriverEvent(uint64_t *a1, unsigned int a2, uint64_t a3)
{
  clock_interval_to_deadline();
  if ((*(*a1 + 1952))(a1))
  {
    (*(*a1 + 1952))(a1);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::waitForDriverEvent(a1, a1 & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, a3, a2);
    }
  }

  v6 = (*(*a1 + 104))(a1);
  v7 = (*(*v6 + 80))(v6, a1[9] + 4 * a2 + 6472, 0xAAAAAAAAAAAAAAAALL);
  if (v7)
  {
    if ((*(*a1 + 1952))(a1))
    {
      (*(*a1 + 1952))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::waitForDriverEvent(a1);
      }
    }
  }

  return v7;
}

uint64_t AppleBCMWLANCore::handleRxEventFrame(uint64_t *a1, unint64_t a2, const void *a3)
{
  v7 = a2;
  if (IO80211CagedBuffer::tryLock(*(a1[9] + 31048)))
  {
    IO80211CagedBuffer::copyIn(*(a1[9] + 31048), a3, a2);
    Buffer = IO80211CagedBuffer::getBuffer(*(a1[9] + 31048));
    AppleBCMWLANCore::handleEventPacket(a1, &v7);
    Buffer = a3;
    IO80211CagedBuffer::unlock(*(a1[9] + 31048));
    return 0;
  }

  else
  {
    if ((*(*a1 + 1952))(a1))
    {
      (*(*a1 + 1952))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::handleRxEventFrame(a1);
      }
    }

    CCFaultReporter::reportFault(*(a1[9] + 5536), 5u, "/Library/Caches/com.apple.xbs/Sources/AppleBCMWLANV3_driverkit/AppleBCMWLANCore.cpp", 0x11DAu, "handleRxEventFrame", 0, -469793524, 0);
    return 3758097084;
  }
}

uint64_t AppleBCMWLANCore::enableWorkQueueSources(AppleBCMWLANCore *this)
{
  v2 = *(*(this + 9) + 6232);
  if (v2)
  {
    (*(*v2 + 88))(v2);
  }

  if ((AppleBCMWLANCore::featureFlagIsBitSet(this, 84) & 1) != 0 || (AppleBCMWLANCore::featureFlagIsBitSet(this, 85) & 1) != 0 || AppleBCMWLANCore::featureFlagIsBitSet(this, 111))
  {
    v3 = *(*(this + 9) + 6248);
    if (v3)
    {
      (*(*v3 + 88))(v3);
      (*(**(*(this + 9) + 6248) + 56))(*(*(this + 9) + 6248), 3600000);
    }
  }

  IsBitSet = AppleBCMWLANCore::featureFlagIsBitSet(this, 79);
  v5 = *(this + 9);
  if (IsBitSet)
  {
    v6 = *(v5 + 6256);
    if (v6)
    {
      (*(*v6 + 88))(v6);
      v5 = *(this + 9);
    }

    if (*(v5 + 4480) == 1)
    {
      v7 = *(v5 + 6264);
      if (v7)
      {
        (*(*v7 + 88))(v7);
        v5 = *(this + 9);
      }

      v8 = *(v5 + 6272);
      if (v8)
      {
        (*(*v8 + 88))(v8);
        v5 = *(this + 9);
      }
    }
  }

  result = *(v5 + 11320);
  if (result)
  {
    v10 = *(*result + 88);

    return v10();
  }

  return result;
}

uint64_t AppleBCMWLANCore::disableWorkQueueSources(AppleBCMWLANCore *this)
{
  v2 = *(this + 9);
  v3 = *(v2 + 6232);
  if (v3)
  {
    (*(*v3 + 80))(v3);
    v2 = *(this + 9);
  }

  v4 = *(v2 + 6248);
  if (v4)
  {
    (*(*v4 + 80))(v4);
    v2 = *(this + 9);
  }

  v5 = *(v2 + 6256);
  if (v5)
  {
    (*(*v5 + 80))(v5);
    v2 = *(this + 9);
  }

  if (*(v2 + 4480) == 1)
  {
    v6 = *(v2 + 6264);
    if (v6)
    {
      (*(*v6 + 80))(v6);
      v2 = *(this + 9);
    }

    v7 = *(v2 + 6272);
    if (v7)
    {
      (*(*v7 + 80))(v7);
      v2 = *(this + 9);
    }
  }

  result = *(v2 + 11320);
  if (result)
  {
    v9 = *(*result + 80);

    return v9();
  }

  return result;
}

uint64_t AppleBCMWLANCore::driverKitChipBoot(IOService *this)
{
  v2 = this[1].OSObject::OSObjectInterface::__vftable;
  canSkipVerification = AppleBCMWLANCore::canSkipVerification(this);
  if ((AppleBCMWLANCore::initAfterIORegUpdated(this, v4, v5, v6, v7, v8) & 1) == 0)
  {
    AppleBCMWLANCore::driverKitChipBoot();
    goto LABEL_20;
  }

  free = this[1].OSObject::OSObjectInterface::__vftable[341].free;
  v16[0] = v2 + 2776;
  v16[1] = v2 + 3032;
  v16[2] = v2 + 3544;
  v16[3] = v2 + 3800;
  v16[4] = v2 + 3288;
  v16[5] = v2 + 4056;
  v17 = canSkipVerification;
  memset(v18, 170, sizeof(v18));
  if (AppleBCMWLANConfigManager::prepareImageMap(free, v16))
  {
    AppleBCMWLANCore::driverKitChipBoot(this);
    goto LABEL_20;
  }

  if (AppleBCMWLANConfigManager::completeImageMap(this[1].OSObject::OSObjectInterface::__vftable[341].free))
  {
    AppleBCMWLANCore::driverKitChipBoot(this);
    goto LABEL_20;
  }

  ChipImage = AppleBCMWLANConfigManager::getChipImage(this[1].OSObject::OSObjectInterface::__vftable[341].free);
  if (!ChipImage)
  {
    AppleBCMWLANCore::driverKitChipBoot(this);
    goto LABEL_20;
  }

  v11 = AppleBCMWLANCore::bootChipImage(this, ChipImage);
  init = this[1].OSObject::OSObjectInterface::__vftable[337].init;
  if (!init || !(*(*init + 552))(init))
  {
    if (!v11)
    {
      v13 = this;
      v14 = 1;
      goto LABEL_10;
    }

    AppleBCMWLANCore::driverKitChipBoot(this);
LABEL_20:
    v11 = LODWORD(v16[0]);
    goto LABEL_11;
  }

  v13 = this;
  v14 = 0;
LABEL_10:
  setPropertyHelper(v13, "FirmwareLoaded", v14);
LABEL_11:
  if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
  {
    (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::driverKitChipBoot(this);
    }
  }

  return v11;
}

uint64_t AppleBCMWLANCore::canSkipVerification(AppleBCMWLANCore *this)
{
  v7 = 0;
  v6 = 0;
  isDevFusedOrCSRInternal = AppleBCMWLAN_isDevFusedOrCSRInternal();
  v3 = 0;
  if (isDevFusedOrCSRInternal)
  {
    IOParseBootArgNumber("wlan.factory", &v6, 4);
    IOParseBootArgNumber("ioimageloader.debug.csr-access", &v7, 1);
    v3 = v7 | v6;
  }

  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      v5 = (*(*this + 1952))(this);
      CCLogStream::logAlertIf(v5, 0x80uLL, "[dk] %s@%d: internal:%d, sip:%d, embedded:%d, wlan.factory[0x%08x], allow:%d, skipVerification:%d\n", "canSkipVerification", 5432, isDevFusedOrCSRInternal, 0, 0, v6, v7, v3 & 1);
    }
  }

  return v3 & 1;
}

uint64_t AppleBCMWLANCore::bootChipImage(AppleBCMWLANCore *this, const AppleBCMWLANChipImage *a2)
{
  v4 = this + 72;
  v5 = 3758097084;
  if (*(*(this + 9) + 35451) == 1 && *(*(this + 9) + 35452))
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::bootChipImage(this);
      }
    }
  }

  else
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::bootChipImage(this);
      }
    }

    v6 = *(*v4 + 10376);
    if ((v6 & 0x2000) != 0)
    {
      return 3758097122;
    }

    else if ((v6 & 0x10) != 0)
    {
      return 3758097093;
    }

    else if ((v6 & 0x200000) != 0)
    {
      return *(*v4 + 10380);
    }

    else
    {
      (*(*a2 + 8))(a2);
      atomic_fetch_or((*v4 + 10376), 0x10u);
      v7 = *v4;
      v8 = *(*v4 + 1200);
      if (v8)
      {
        (*(*v8 + 16))(v8);
        v7 = *v4;
      }

      *(v7 + 1200) = a2;
      v23 = 0;
      AppleBCMWLANConfigManager::getBSSPreference(*(*v4 + 5464), &v23);
      v9 = *(*v4 + 10376);
      v10 = (v9 & 0x200000) == 0;
      if ((v9 & 0x200000) != 0)
      {
        v14 = (*v4 + 10376);
LABEL_30:
        atomic_fetch_and(v14, 0xFFFFFFEF);
        AppleBCMWLANCore::signalDriverReady(this);
      }

      else
      {
        v11 = 0;
        while (1)
        {
          AppleBCMWLANCore::halt(this);
          v12 = AppleBCMWLANCore::loadAndSetup(this, a2);
          v13 = *(this + 9);
          if (!v12)
          {
            break;
          }

          v5 = v12;
          CCFaultReporter::reportFault(*(v13 + 5536), 4u, "/Library/Caches/com.apple.xbs/Sources/AppleBCMWLANV3_driverkit/AppleBCMWLANCore.cpp", 0x15F0u, "bootChipImage", 0, -469790715, "instance %u", v11);
          v14 = (*v4 + 10376);
          v15 = (*(*v4 + 10378) & 0x20) != 0 || v11 >= 2;
          v10 = !v15;
          ++v11;
          if (v15)
          {
            goto LABEL_30;
          }
        }

        (*(**(v13 + 5392) + 176))(*(v13 + 5392));
        atomic_fetch_and((*(this + 9) + 10376), 0xFFFFFFEF);
        AppleBCMWLANCore::signalDriverReady(this);
        v17 = *(this + 9);
        v18 = *(v17 + 10376);
        if ((v18 & 0x80) == 0)
        {
          v24 = 0u;
          v25 = 0u;
          v38 = 0u;
          v37 = 0u;
          v36 = 0u;
          v35 = 0u;
          v34 = 0u;
          v33 = 0u;
          v32 = 0u;
          v30 = 0u;
          v31 = 0u;
          v28 = 0u;
          v29 = 0u;
          v26 = 0u;
          v27 = 0u;
          v23 = 0x2000000003;
          LODWORD(v24) = 1;
          DWORD2(v24) = -528340989;
          if (*(v17 + 11288))
          {
            if ((*(*this + 1952))(this))
            {
              (*(*this + 1952))(this);
              if (CCLogStream::shouldLog())
              {
                v22 = (*(*this + 1952))(this);
                CCLogStream::logAlert(v22, "[dk] %s@%d: posting APPLE80211_M_DRIVER_AVAILABLE, available[%u] reason[0x%08x] sub_reason[0x%08x] minor_reason[0x%08x]\n", "bootChipImage", 5632, v24, DWORD2(v24), HIDWORD(v24), v25);
              }
            }

            IO80211Controller::postMessage(this, *(*(this + 9) + 11288), 0x37u, &v23, 0xF8uLL, 1);
            v17 = *(this + 9);
            v19 = *(v17 + 5392);
            if (v19)
            {
              AppleBCMWLANBusInterface::sendBootCheckPointToCoreAnalytics(v19, 0, 8u);
              v17 = *v4;
            }
          }

          v20 = *(v17 + 11296);
          if (v20)
          {
            IO80211Controller::postMessage(this, v20, 0x37u, &v23, 0xF8uLL, 1);
            v17 = *(this + 9);
          }

          v21 = *(v17 + 29944);
          if (v21)
          {
            IO80211Controller::postMessage(this, v21, 0x37u, &v23, 0xF8uLL, 1);
            v17 = *(this + 9);
          }

          v18 = *(v17 + 10376);
        }

        if ((v18 & 0x80) != 0)
        {
          v5 = 0;
        }

        else
        {
          AppleBCMWLANCore::resetInterfacesComplete(this);
          v5 = 0;
          *(*(this + 9) + 6748) = 88;
          *(*(this + 9) + 6749) = 90;
          *(*(this + 9) + 6750) = 0;
        }
      }

      *(*v4 + 18297) = 0;
      *(*v4 + 18414) = 0;
      if (v5 == -469793013 || (*(*v4 + 10378) & 0x20) != 0)
      {
        if ((*(*this + 1952))(this))
        {
          (*(*this + 1952))(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::bootChipImage(this);
          }
        }

        (*(*(*(*v4 + 5392) + 48) + 208))();
      }

      if (v10)
      {
        v5 = 0;
        ++*(*v4 + 35452);
      }
    }
  }

  return v5;
}

uint64_t AppleBCMWLANCore::driverKitProcessPlatformConfig(unint64_t this)
{
  strcpy(__s, "PlatformConfig/iOS/");
  v2 = strlen(__s);
  v3 = v2 + strlen((*(this + 72) + 2520));
  v27 = 0;
  anObject = 0;
  canSkipVerification = AppleBCMWLANCore::canSkipVerification(this);
  v5 = canSkipVerification;
  v6 = OSBundle::mainBundle(canSkipVerification);
  if (!v6)
  {
    AppleBCMWLANCore::driverKitProcessPlatformConfig(this);
LABEL_39:
    v8 = v31;
    goto LABEL_40;
  }

  v7 = IOMallocZeroData();
  if (!v7)
  {
    AppleBCMWLANCore::driverKitProcessPlatformConfig(this);
    goto LABEL_39;
  }

  v8 = v7;
  bzero(v7, v3 + 1);
  memcpy(v8, __s, v2);
  v9 = *(this + 72);
  v10 = strlen((v9 + 2520));
  memcpy(v8 + v2, (v9 + 2520), v10);
  OSBundle::loadResource(v6, v8, 0, 10 * IOVMPageSize, &anObject);
  if (!anObject)
  {
    AppleBCMWLANCore::driverKitProcessPlatformConfig(this);
LABEL_40:
    v24 = 0;
    goto LABEL_24;
  }

  OSMappedFile::size(anObject);
  io80211_os_log();
  v11 = OSDictionary::withCapacity(1u);
  if (!v11)
  {
    AppleBCMWLANCore::driverKitProcessPlatformConfig(this);
    goto LABEL_39;
  }

  v12 = v11;
  v13 = OSString::withCStringNoCopy(v8);
  if (v13)
  {
    v14 = v13;
    OSDictionary::setObject(v12, v13, anObject);
    v15 = IOFileValidationRequestImageVerify();
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::driverKitProcessPlatformConfig(this, this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, v5, v15);
      }
    }

    if (v15)
    {
      v16 = v5;
    }

    else
    {
      v16 = 1;
    }

    if (v16)
    {
      OSMappedFile::size(anObject);
      v17 = IOMallocZeroData();
      if (v17)
      {
        v18 = v17;
        v19 = OSMappedFile::data(anObject);
        v20 = OSMappedFile::size(anObject);
        memcpy(v18, v19, v20);
        v21 = OSUnserializeXML(v18, &v27);
        if (v21)
        {
          v22 = v21;
          v23 = OSMetaClassBase::safeMetaCast(v21, gOSDictionaryMetaClass);
          if (v23)
          {
            AppleBCMWLANCore::setPlatformConfigProperties(this, v23);
            v24 = 1;
LABEL_17:
            (v14->release)(v14);
            goto LABEL_18;
          }

          if ((*(*this + 1952))(this))
          {
            (*(*this + 1952))(this);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANCore::driverKitProcessPlatformConfig(this);
            }
          }

LABEL_51:
          v24 = 0;
          goto LABEL_17;
        }

        if ((*(*this + 1952))(this))
        {
          (*(*this + 1952))(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::driverKitProcessPlatformConfig(this);
          }
        }

LABEL_50:
        v22 = 0;
        goto LABEL_51;
      }

      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::driverKitProcessPlatformConfig(this);
        }
      }
    }

    else
    {
      AppleBCMWLANCore::driverKitProcessPlatformConfig(this);
    }

    v18 = 0;
    goto LABEL_50;
  }

  AppleBCMWLANCore::driverKitProcessPlatformConfig(this, &v29, &v31, &v30);
  v18 = v29;
  v22 = v31;
  v24 = v30;
LABEL_18:
  (v12->release)(v12);
  if (v27)
  {
    (v27->release)(v27);
    v27 = 0;
  }

  if (v22)
  {
    (v22->release)(v22);
  }

  v25 = anObject;
  if (v18)
  {
    OSMappedFile::size(anObject);
    IOFreeData();
LABEL_24:
    v25 = anObject;
  }

  if (v25)
  {
    (v25->release)(v25);
    anObject = 0;
  }

  if (v8)
  {
    IOFreeData();
  }

  if (v6)
  {
    (*(*v6 + 16))(v6);
  }

  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::driverKitProcessPlatformConfig(this);
    }
  }

  return v24;
}

uint64_t AppleBCMWLANCore::setPlatformConfigProperties(AppleBCMWLANCore *this, OSDictionary *a2)
{
  v2 = *(*(this + 9) + 5392);
  if (!v2)
  {
    AppleBCMWLANCore::setPlatformConfigProperties();
    return v5;
  }

  if (!(*(*(v2 + 48) + 288))())
  {
    AppleBCMWLANCore::setPlatformConfigProperties();
    return v5;
  }

  if (!a2)
  {
    AppleBCMWLANCore::setPlatformConfigProperties();
    return v5;
  }

  if (!OSMetaClassBase::safeMetaCast(a2, gOSDictionaryMetaClass))
  {
    AppleBCMWLANCore::setPlatformConfigProperties();
    return v5;
  }

  iterateObjectsHelper();
  return 0;
}

uint64_t AppleBCMWLANCore::logChipImage(AppleBCMWLANCore *this, const AppleBCMWLANChipImage *a2)
{
  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::logChipImage(this);
    }
  }

  v4 = *(*(this + 9) + 5400);
  v5 = *(*a2 + 152);

  return v5(a2, v4, AppleBCMWLANProvisioningManager::logNVRAM, 0);
}

AppleBCMWLANLQM *AppleBCMWLANCore::halt(AppleBCMWLANCore *this)
{
  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::halt(this);
    }
  }

  AppleBCMWLANCore::resetWoWStateMachine(this);
  v2 = *(*(this + 9) + 5496);
  if (v2)
  {
    AppleBCMWLANBGScanAdapter::cancelScanPrivacyMacTimer(v2);
  }

  AppleBCMWLANCore::disableWorkQueueSources(this);
  v3 = *(*(this + 9) + 5408);
  if (v3)
  {
    AppleBCMWLANCommander::delayQueueTimeouts(v3);
    v3 = *(*(this + 9) + 5408);
  }

  AppleBCMWLANCommander::quiesce(v3);
  v4 = *(this + 9);
  v5 = *(v4 + 5392);
  v6 = *(v4 + 18412);
  (*(*(v5 + 48) + 240))();
  AppleBCMWLANCore::resetInterfacesBegin(this);
  v7 = *(this + 9);
  v8 = *(v7 + 11288);
  if (v8)
  {
    AppleBCMWLANSkywalkInterface::reset(v8);
    v7 = *(this + 9);
  }

  v9 = *(v7 + 11304);
  if (v9)
  {
    (*(*v9 + 1584))(v9);
    v7 = *(this + 9);
  }

  v10 = *(v7 + 11296);
  if (v10)
  {
    (*(*v10 + 1584))(v10);
    v7 = *(this + 9);
  }

  v11 = *(v7 + 29944);
  if (v11)
  {
    (*(*v11 + 1584))(v11);
    v7 = *(this + 9);
  }

  v12 = *(v7 + 29952);
  if (v12)
  {
    (*(*v12 + 1584))(v12);
    v7 = *(this + 9);
  }

  v13 = *(v7 + 5416);
  if (v13)
  {
    AppleBCMWLANJoinAdapter::reset(v13);
    v7 = *(this + 9);
  }

  v14 = *(v7 + 5568);
  if (v14)
  {
    AppleBCMWLANRoamAdapter::reset(v14);
    v7 = *(this + 9);
  }

  *v7 = 100;
  *(*(this + 9) + 4) = 100;
  atomic_fetch_and((*(this + 9) + 10376), 0xEFFFFFFF);
  result = *(*(this + 9) + 5608);
  if (result)
  {

    return AppleBCMWLANLQM::stopAssocTimer(result);
  }

  return result;
}

uint64_t AppleBCMWLANCore::loadAndSetup(AppleBCMWLANCore *this, const AppleBCMWLANChipImage *a2)
{
  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::loadAndSetup(this);
    }
  }

  v4 = this + 72;
  if ((*(*(this + 9) + 10377) & 0x20) != 0)
  {
    return 3758097122;
  }

  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::loadAndSetup(this);
    }
  }

  v5 = *(*v4 + 5392);
  if (v5)
  {
    AppleBCMWLANBusInterface::sendBootCheckPointToCoreAnalytics(v5, 0, 6u);
  }

  if (IO80211Controller::getDeadlockPolice(this))
  {
    if ((*(*this + 88))(this))
    {
      v6 = (*(*this + 88))(this);
      if ((*(*v6 + 168))(v6))
      {
        DeadlockPolice = IO80211Controller::getDeadlockPolice(this);
        v8 = (*(*this + 88))(this);
        v9 = (*(*v8 + 168))(v8);
        IO80211DeadlockPolice::resetDeadlockPolice(DeadlockPolice, v9);
      }
    }
  }

  v10 = (*(*(*(*(this + 9) + 5392) + 48) + 72))();
  if ((*(*this + 1952))(this) && ((*(*this + 1952))(this), CCLogStream::shouldLog()))
  {
    AppleBCMWLANCore::loadAndSetup(this);
    if (!v10)
    {
      goto LABEL_17;
    }
  }

  else if (!v10)
  {
LABEL_17:
    if (((*(*(*(*v4 + 5392) + 48) + 416))() & 1) == 0)
    {
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::loadAndSetup(this);
        }
      }
    }
  }

  v11 = *(*v4 + 5392);
  if (v11)
  {
    AppleBCMWLANBusInterface::sendBootCheckPointToCoreAnalytics(v11, 0, 7u);
  }

  if (v10)
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::loadAndSetup(this);
      }
    }

    v14 = *(*v4 + 5392);
    if (v14 && (*(*v14 + 552))(v14))
    {
      AppleBCMWLANCore::setBootUnrecoverable(this, 3825175655);
      v15 = this;
      v16 = 12;
      v17 = 5706;
    }

    else
    {
      v15 = this;
      v16 = 5;
      v17 = 5708;
    }

LABEL_54:
    AppleBCMWLANCore::reportInitFailure(v15, v16, v17, v12, v13);
    return v10;
  }

  atomic_fetch_and((*v4 + 10376), 0xFFFFFFBF);
  if (AppleBCMWLANCommander::reset(*(*v4 + 5408)))
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::loadAndSetup(this);
      }
    }
  }

  if (*(*v4 + 35568))
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::loadAndSetup(this);
      }
    }
  }

  else
  {
    AppleBCMWLANCommander::resetFreeCommanderPool(*(*v4 + 5408));
  }

  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::loadAndSetup(this);
    }
  }

  AppleBCMWLANCommander::wakeup(*(*(this + 9) + 5408));
  v18 = AppleBCMWLANCore::setupFirmware(this, a2);
  if (v18)
  {
    v10 = v18;
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::loadAndSetup(this);
      }
    }

    v15 = this;
    v16 = 6;
    v17 = 5731;
    goto LABEL_54;
  }

  v10 = AppleBCMWLANCore::setupDriver(this);
  if (v10)
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::loadAndSetup(this);
      }
    }

    v15 = this;
    v16 = 7;
    v17 = 5738;
    goto LABEL_54;
  }

  return v10;
}

uint64_t AppleBCMWLANCore::resetInterfacesComplete(AppleBCMWLANCore *this)
{
  v9 = 1;
  v2 = *(this + 9);
  v3 = v2[1411];
  if (v3)
  {
    IO80211Controller::postMessage(this, v3, 0x31u, &v9, 4uLL, 1);
    v2 = *(this + 9);
  }

  v4 = v2[1412];
  if (v4)
  {
    IO80211Controller::postMessage(this, v4, 0x31u, &v9, 4uLL, 1);
    v2 = *(this + 9);
  }

  v5 = v2[3743];
  if (v5)
  {
    IO80211Controller::postMessage(this, v5, 0x31u, &v9, 4uLL, 1);
    v2 = *(this + 9);
  }

  v6 = v2[3744];
  if (v6)
  {
    IO80211Controller::postMessage(this, v6, 0x31u, &v9, 4uLL, 1);
    v2 = *(this + 9);
  }

  v7 = v2[1413];
  if (v7)
  {
    IO80211Controller::postMessage(this, v7, 0x31u, &v9, 4uLL, 1);
  }

  return 0;
}

uint64_t AppleBCMWLANCore::setBootUnrecoverable(IOService *this, uint64_t a2)
{
  atomic_fetch_or(&this[1].OSObject::OSObjectInterface::__vftable[648].free, 0x200000u);
  HIDWORD(this[1].OSObject::OSObjectInterface::__vftable[648].free) = a2;
  if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
  {
    (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::setBootUnrecoverable(this);
    }
  }

  v4 = (this->OSObject::OSMetaClassBase::__vftable[2].getMetaClass)(this, a2);
  setPropertyHelper(this, "Chip Boot Unrecoverable", v4);
  AppleBCMWLANCore::removeFirmwareLoader(this);
  v5 = *(*this[1].OSObject::OSObjectInterface::__vftable[337].init + 808);

  return v5();
}

uint64_t AppleBCMWLANCore::setupFirmware(IOService *this, const AppleBCMWLANChipImage *a2)
{
  v108 = 0;
  v109 = 0;
  v4 = &this[1].OSObjectInterface;
  this[1].OSObject::OSObjectInterface::__vftable[407].free = mach_continuous_time();
  v4->__vftable[408].init = 0;
  v5 = v4->__vftable;
  *(&v5[335].free + 3) = 0u;
  *(&v5[305] + 1) = 0u;
  *(&v5[306] + 1) = 0u;
  *(&v5[307] + 1) = 0u;
  *(&v5[308] + 1) = 0u;
  *(&v5[309] + 1) = 0u;
  *(&v5[310] + 1) = 0u;
  *(&v5[311] + 1) = 0u;
  *(&v5[312] + 1) = 0u;
  *(&v5[313] + 1) = 0u;
  *(&v5[314] + 1) = 0u;
  *(&v5[315] + 1) = 0u;
  *(&v5[316] + 1) = 0u;
  *(&v5[317] + 1) = 0u;
  *(&v5[318] + 1) = 0u;
  *(&v5[319] + 1) = 0u;
  *(&v5[320] + 1) = 0u;
  *(&v5[321] + 1) = 0u;
  *(&v5[322] + 1) = 0u;
  *(&v5[323] + 1) = 0u;
  *(&v5[324] + 1) = 0u;
  *(&v5[325] + 1) = 0u;
  *(&v5[326] + 1) = 0u;
  *(&v5[327] + 1) = 0u;
  *(&v5[328] + 1) = 0u;
  *(&v5[329] + 1) = 0u;
  *(&v5[330] + 1) = 0u;
  *(&v5[331] + 1) = 0u;
  *(&v5[332] + 1) = 0u;
  *(&v5[333] + 1) = 0u;
  *(&v5[334] + 1) = 0u;
  *(&v5[335] + 1) = 0u;
  AppleBCMWLANCore::enableWorkQueueSources(this);
  v6 = IOMallocZeroData();
  if (!v6)
  {
    return 3758097085;
  }

  v7 = v6;
  v107 = -1431655766;
  *v6 = 0;
  v110 = v6;
  v111 = 0x10000000101;
  v8 = AppleBCMWLANCommander::runIOVarGet(this[1].OSObject::OSObjectInterface::__vftable[338].init, "ver", &kNoTxPayload, &v110, 0);
  v9 = (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
  if (v8)
  {
    if (v9)
    {
      (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setupFirmware(this);
      }
    }

LABEL_6:
    IOFreeData();
    return v8;
  }

  if (v9)
  {
    (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::setupFirmware(this);
    }
  }

  v10 = &v7[strlen(v7)];
  if (*(v10 - 1) == 10)
  {
    *(v10 - 1) = 0;
  }

  v11 = OSString::withCString(v7);
  setPropertyHelper(this, "FirmwareVersion", v11);
  if (v11)
  {
    (v11->release)(v11);
  }

  v12 = strnstr(v7, "WLTEST", 0x101uLL) || strnstr(v7, "MFGTEST", 0x101uLL) || (*(*a2 + 136))(a2) == 1;
  IOFreeData();
  HIBYTE(v4->__vftable[67].free) = v12;
  p_ListenInterval = 0;
  v106 = 0;
  v110 = &p_ListenInterval;
  v111 = 0x1000100010;
  v13 = AppleBCMWLANCommander::runIOVarGet(v4->__vftable[338].init, "wlc_ver", &kNoTxPayload, &v110, 0);
  if (v13)
  {
    v8 = v13;
    if (v13 != -469794537)
    {
      if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
      {
        (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::setupFirmware(this);
        }
      }

      return v8;
    }

    HIDWORD(v4->__vftable[48].free) = 3;
  }

  else
  {
    HIDWORD(v4->__vftable[48].free) = WORD2(v106);
    if (HIDWORD(v4->__vftable[48].free) >= 0x16)
    {
      v8 = 3825174297;
      CCFaultReporter::reportFault(v4->__vftable[346].init, 4u, "/Library/Caches/com.apple.xbs/Sources/AppleBCMWLANV3_driverkit/AppleBCMWLANCore.cpp", 0x2088u, "setupFirmware", 0, -469792999, 0);
      return v8;
    }
  }

  if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
  {
    (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::setupFirmware(this);
    }
  }

  MaxSupportedEventLogSets = AppleBCMWLANCore::getMaxSupportedEventLogSets(this);
  if (MaxSupportedEventLogSets)
  {
    v8 = MaxSupportedEventLogSets;
    if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
    {
      (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setupFirmware(this);
      }
    }

    return v8;
  }

  v15 = AppleBCMWLANCore::setupTraceLogCheckers(this);
  if (v15)
  {
    v8 = v15;
    if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
    {
      (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setupFirmware(this);
      }
    }

    return v8;
  }

  if (!v12 || (*(*a2 + 96))(a2))
  {
    v16 = (*(*a2 + 152))(a2, this, AppleBCMWLANCore::outputRegTable, 0);
    if (v16)
    {
      v8 = v16;
      if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
      {
        (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::setupFirmware(this);
        }
      }

      init = this[1].OSObject::OSObjectInterface::__vftable[346].init;
      v100 = (this->OSObject::OSMetaClassBase::__vftable[2].getMetaClass)(this, v8);
      CCFaultReporter::reportFault(init, 4u, "/Library/Caches/com.apple.xbs/Sources/AppleBCMWLANV3_driverkit/AppleBCMWLANCore.cpp", 0x20C6u, "setupFirmware", 0, -469792998, "%s", v100);
      return v8;
    }

    if (!v12)
    {
      goto LABEL_430;
    }
  }

  if ((*(*a2 + 112))(a2))
  {
LABEL_430:
    v18 = (*(*a2 + 152))(a2, this, AppleBCMWLANCore::outputTxCapTable, 0);
    if (v18)
    {
      v8 = v18;
      v19 = this[1].OSObject::OSObjectInterface::__vftable[346].init;
      v20 = (this->OSObject::OSMetaClassBase::__vftable[2].getMetaClass)(this, v18);
      CCFaultReporter::reportFault(v19, 4u, "/Library/Caches/com.apple.xbs/Sources/AppleBCMWLANV3_driverkit/AppleBCMWLANCore.cpp", 0x20D0u, "setupFirmware", 0, -469792997, "%s", v20);
      if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
      {
        (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::setupFirmware(this);
        }
      }

      return v8;
    }
  }

  v21 = (*(*v4->__vftable[337].init + 368))(v4->__vftable[337].init);
  if ((v21 == 4399 || v21 == 4388) && (!v12 || (*(*a2 + 128))(a2)))
  {
    v22 = (*(*a2 + 152))(a2, this, AppleBCMWLANCore::outputPlatcfg, 0);
    if (v22)
    {
      v8 = v22;
      v23 = this[1].OSObject::OSObjectInterface::__vftable[346].init;
      v24 = (this->OSObject::OSMetaClassBase::__vftable[2].getMetaClass)(this, v22);
      CCFaultReporter::reportFault(v23, 4u, "/Library/Caches/com.apple.xbs/Sources/AppleBCMWLANV3_driverkit/AppleBCMWLANCore.cpp", 0x20DBu, "setupFirmware", 0, -469792990, "%s", v24);
      if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
      {
        (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::setupFirmware(this);
        }
      }

      return v8;
    }
  }

  v25 = AppleBCMWLANCore::outputWiFiCal(this);
  if (v25)
  {
    v8 = v25;
    if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
    {
      (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setupFirmware(this);
      }
    }

    return v8;
  }

  v26 = AppleBCMWLANTimeKeeper::synchronizeTime(v4->__vftable[341].init);
  if (v26 != -536870201)
  {
    v8 = v26;
    if (v26)
    {
      if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
      {
        (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::setupFirmware(this);
        }
      }

      return v8;
    }
  }

  updated = AppleBCMWLANCore::updateFWAPIVerFromHW(this);
  if (updated)
  {
    v8 = updated;
    if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
    {
      (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setupFirmware(this);
      }
    }

    return v8;
  }

  v28 = v4->__vftable;
  v29 = v4->__vftable[1109].init;
  if (v29)
  {
    (*(*v29 + 16))(v29);
    v4->__vftable[1109].init = 0;
    v28 = v4->__vftable;
  }

  v4->__vftable[1109].init = AppleBCMWLANChanSpec::withFWAPIVer(HIDWORD(v28[63].free));
  if (!v4->__vftable[1109].init)
  {
    if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
    {
      (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setupFirmware(this);
      }
    }

    return 3758097086;
  }

  if (v12)
  {
    if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
    {
      (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setupFirmware(this);
      }
    }

    (*(*this[1].OSObject::OSObjectInterface::__vftable[337].init + 160))(this[1].OSObject::OSObjectInterface::__vftable[337].init, 9216);
    AppleBCMWLANCore::processChipCaps(this);
    AppleBCMWLANCore::configureDefaultEvents(this);
    return 0;
  }

  BYTE5(v4->__vftable[64].init) = 0;
  v30 = AppleBCMWLANCore::processChipCaps(this);
  if (v30)
  {
    v8 = v30;
    if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
    {
      (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setupFirmware(this);
      }
    }

    return v8;
  }

  AppleBCMWLANCore::configureRegionSpecific(this);
  v107 = 0;
  v31 = AppleBCMWLANCore::set_mpc_state(this, 0, &v107);
  if (v31)
  {
    v8 = v31;
    if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
    {
      (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setupFirmware(this);
      }
    }

    return v8;
  }

  AppleBCMWLANCore::updateHTAndVHTCapBasedOnHWSupport(this);
  AppleBCMWLANCore::configureTethering(this);
  LODWORD(p_ListenInterval) = 1;
  v108 = &p_ListenInterval;
  v109 = 4;
  if (AppleBCMWLANCommander::runIOVarSet(this[1].OSObject::OSObjectInterface::__vftable[338].init, "pm2_refresh_badiv", &v108, 0, 0))
  {
    if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
    {
      (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setupFirmware(this);
      }
    }
  }

  AppleBCMWLANCore::configureDualPowerMode(this);
  v32 = AppleBCMWLANCore::populateCountryList(this);
  if (v32)
  {
    v8 = v32;
    if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
    {
      (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setupFirmware(this);
      }
    }

    return v8;
  }

  v33 = v4->__vftable;
  if (HIDWORD(v4->__vftable[48].free) >= 0x11)
  {
    v34 = AppleBCMWLANCore::populate6ESupportedCountryList(this);
    if (v34)
    {
      v8 = v34;
      if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
      {
        (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::setupFirmware(this);
        }
      }

      return v8;
    }

    v33 = v4->__vftable;
  }

  BYTE3(v33[421].init) = 0;
  if (LOBYTE(v4->__vftable[421].init))
  {
    BYTE4(v4->__vftable[422].init) = 1;
    if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
    {
      (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setupFirmware(this);
      }
    }

    bzero(&this[1].OSObject::OSObjectInterface::__vftable[1244], 0x2720uLL);
    (this->OSObject::OSMetaClassBase::__vftable[9].free)(this);
    if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
    {
      (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setupFirmware(this);
      }
    }

    v35 = AppleBCMWLANCore::handleCountryCodeChangeToRepopulateChannels(this);
    v36 = (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
    if (v35)
    {
      if (v36)
      {
        (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::setupFirmware(this);
        }
      }
    }

    else if (v36)
    {
      (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setupFirmware(this);
      }
    }

    goto LABEL_137;
  }

  BYTE4(v4->__vftable[422].init) = 0;
  if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
  {
    (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::setupFirmware(this);
    }
  }

  v8 = AppleBCMWLANCore::configureDefaultCountryCode(this);
  if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this) && ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this), CCLogStream::shouldLog()))
  {
    AppleBCMWLANCore::setupFirmware(this);
    if (v8)
    {
      goto LABEL_123;
    }
  }

  else if (v8)
  {
LABEL_123:
    if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
    {
      (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setupFirmware(this);
      }
    }

    return v8;
  }

  v37 = AppleBCMWLANCore::handleCountryCodeChangeToRepopulateChannels(this);
  v38 = (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
  if (v37)
  {
    if (v38)
    {
      (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setupFirmware(this);
      }
    }
  }

  else if (v38)
  {
    (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::setupFirmware(this);
    }
  }

LABEL_137:
  if (AppleBCMWLANCore::featureFlagIsBitSet(this, 28))
  {
    LODWORD(p_ListenInterval) = 1;
    v108 = &p_ListenInterval;
    v109 = 4;
    v39 = AppleBCMWLANCommander::runIOVarSet(v4->__vftable[338].init, "scan_force_active", &v108, 0, 0);
    if (v39)
    {
      v8 = v39;
      if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
      {
        (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::setupFirmware(this);
        }
      }

      return v8;
    }
  }

  v104 = 0;
  IOParseBootArgNumber("wlan.11d.ignore", &v104, 4);
  if ((AppleBCMWLANConfigManager::isIgnore11dPwrCtrl(v4->__vftable[341].free) & 1) != 0 || (v8 = 0, v104))
  {
    if ((AppleBCMWLANConfigManager::isIgnore11dPwrCtrl(v4->__vftable[341].free) & 1) == 0)
    {
      if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
      {
        (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::setupFirmware(this);
        }
      }
    }

    LODWORD(p_ListenInterval) = 1;
    v108 = &p_ListenInterval;
    v109 = 4;
    v40 = AppleBCMWLANCommander::runIOVarSet(v4->__vftable[338].init, "tpc_options", &v108, 0, 0);
    v41 = v40;
    if (v40 != -469794537 && v40)
    {
      v8 = v40;
      if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this) && ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this), v8 = v41, CCLogStream::shouldLog()))
      {
        AppleBCMWLANCore::setupFirmware(this);
        v8 = v41;
        if (!v41)
        {
          goto LABEL_159;
        }
      }

      else if (!v41)
      {
        goto LABEL_159;
      }
    }

    else
    {
      if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
      {
        (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::setupFirmware(this);
        }
      }

      v8 = 0;
      if (!v41)
      {
        goto LABEL_159;
      }
    }

    if (v41 != -469794537)
    {
      return v8;
    }
  }

LABEL_159:
  LODWORD(p_ListenInterval) = 0;
  v108 = &p_ListenInterval;
  v109 = 4;
  v42 = AppleBCMWLANCommander::runIOVarSet(v4->__vftable[338].init, "vlan_mode", &v108, 0, 0);
  v43 = v42;
  if (v42 != -469794537 && v42 && (v8 = v42, (this->OSObject::OSMetaClassBase::__vftable[34].free)(this)) && ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this), v8 = v43, CCLogStream::shouldLog()))
  {
    AppleBCMWLANCore::setupFirmware(this);
    v8 = v43;
    if (!v43)
    {
      goto LABEL_165;
    }
  }

  else if (!v43)
  {
    goto LABEL_165;
  }

  if (v43 != -469794537)
  {
    return v8;
  }

LABEL_165:
  if (AppleBCMWLANCore::featureFlagIsBitSet(this, 78))
  {
    HIDWORD(this[1].OSObject::OSObjectInterface::__vftable[1154].free) = 0;
    IOParseBootArgNumber("wlan.txprofile.disable", &this[1].OSObject::OSObjectInterface::__vftable[1154].free, 4);
    LODWORD(p_ListenInterval) = LODWORD(this[1].OSObject::OSObjectInterface::__vftable[1154].free) == 0;
    v44 = (this->OSObject::OSMetaClassBase::__vftable[1].free)(this);
    (*(*v44 + 56))(v44, AppleBCMWLANCore::setTxProfileEnable, &p_ListenInterval, 0, 0, 0);
  }

  v103 = 0;
  if (IOParseBootArgNumber("wlan.roam_td_th", &v103, 4))
  {
    v45 = v103;
    LODWORD(v4->__vftable[1947].init) = HIBYTE(v103);
    HIDWORD(v4->__vftable[1947].init) = -BYTE2(v45);
    LODWORD(v4->__vftable[1947].free) = 1000 * BYTE1(v45);
    v46 = 1000 * v45;
  }

  else
  {
    LODWORD(v4->__vftable[1947].init) = 5;
    HIDWORD(v4->__vftable[1947].init) = -80;
    LODWORD(v4->__vftable[1947].free) = 70000;
    v46 = 10000;
  }

  HIDWORD(v4->__vftable[1947].free) = v46;
  v102 = 0;
  if (IOParseBootArgNumber("wlan.rts_prot_en", &v102, 4))
  {
    v47 = v102;
    LODWORD(v4->__vftable[1948].free) = HIBYTE(v102);
    LODWORD(v4->__vftable[1948].init) = BYTE2(v47);
    v47 = v47;
  }

  else
  {
    LODWORD(v4->__vftable[1948].free) = 0;
    LODWORD(v4->__vftable[1948].init) = 99;
    v47 = 25;
  }

  HIDWORD(this[1].OSObject::OSObjectInterface::__vftable[1948].init) = v47;
  if (AppleBCMWLANCore::featureFlagIsBitSet(this, 76))
  {
    IOParseBootArgNumber("wlan.lpscancore.disable", &this[1].OSObject::OSObjectInterface::__vftable[1155], 4);
    BYTE4(this[1].OSObject::OSObjectInterface::__vftable[1155].init) = LODWORD(this[1].OSObject::OSObjectInterface::__vftable[1155].init) != 0;
    if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
    {
      (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setupFirmware(this);
      }
    }
  }

  if (AppleBCMWLANCore::featureFlagIsBitSet(this, 67))
  {
    IsBitSet = AppleBCMWLANCore::featureFlagIsBitSet(this, 67);
    v49 = this[1].OSObject::OSObjectInterface::__vftable;
    if (!IsBitSet || (BYTE4(v49[1112].free) & 1) != 0)
    {
      ListenInterval = 0;
      v50 = v49[338].init;
      p_ListenInterval = &ListenInterval;
      v106 = 4;
      if (AppleBCMWLANCommander::runIOVarSet(v50, "he", &p_ListenInterval, 0, 0))
      {
        if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
        {
          (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::setupFirmware(this);
          }
        }
      }
    }
  }

  if (AppleBCMWLANCore::featureFlagIsBitSet(this, 101))
  {
    BYTE4(this[1].OSObject::OSObjectInterface::__vftable[1948].free) = 2;
    AppleBCMWLANCore::enableObssMitigation(this, BYTE4(this[1].OSObject::OSObjectInterface::__vftable[1948].free));
  }

  if (AppleBCMWLANCore::featureFlagIsBitSet(this, 105) && AppleBCMWLANCore::featureFlagIsBitSet(this, 106))
  {
    if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
    {
      (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setupFirmware(this);
      }
    }

    LOWORD(p_ListenInterval) = 0;
    LOWORD(ListenInterval) = 0;
    if ((*(*v4->__vftable[337].init + 368))(v4->__vftable[337].init) >= 0x112F)
    {
      LOWORD(p_ListenInterval) = 1;
      LOWORD(ListenInterval) = ListenInterval | 2;
    }

    if (AppleBCMWLANJoinAdapter::setBeaconProtectionParams(v4->__vftable[338].free, "WL_BCN_PROT_CMD_ENABLE", 1, &p_ListenInterval, 2u, 1))
    {
      if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
      {
        (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::setupFirmware(this);
        }
      }
    }

    if (AppleBCMWLANJoinAdapter::setBeaconProtectionParams(v4->__vftable[338].free, "WL_BCN_PROT_CMD_CONFIG", 4, &ListenInterval, 2u, 1))
    {
      if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
      {
        (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::setupFirmware(this);
        }
      }
    }
  }

  if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
  {
    (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::setupFirmware(this);
    }
  }

  v51 = AppleBCMWLANCore::bringupBCM(this);
  if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this) && ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this), CCLogStream::shouldLog()))
  {
    AppleBCMWLANCore::setupFirmware(this);
    if (v51)
    {
LABEL_207:
      if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
      {
        (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::setupFirmware(this);
        }
      }

      return v51;
    }
  }

  else if (v51)
  {
    goto LABEL_207;
  }

  ListenInterval = 1;
  v52 = v4->__vftable[338].init;
  p_ListenInterval = &ListenInterval;
  v106 = 4;
  v53 = AppleBCMWLANCommander::runIOVarSet(v52, "bus:h2dindx_w_d2hdma", &p_ListenInterval, 0, 0);
  if (v53 != -469794537)
  {
    if (v53)
    {
      if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
      {
        (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::setupFirmware(this);
        }
      }
    }
  }

  ListenInterval = 1;
  v54 = v4->__vftable[338].init;
  p_ListenInterval = &ListenInterval;
  v106 = 4;
  v55 = AppleBCMWLANCommander::runIOVarSet(v54, "bus:fl_prio_map", &p_ListenInterval, 0, 0);
  v56 = v55;
  if (v55 != -469794537 && v55 && (v8 = v55, (this->OSObject::OSMetaClassBase::__vftable[34].free)(this)) && ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this), v8 = v56, CCLogStream::shouldLog()))
  {
    AppleBCMWLANCore::setupFirmware(this);
    v8 = v56;
    if (!v56)
    {
      goto LABEL_223;
    }
  }

  else if (!v56)
  {
    goto LABEL_223;
  }

  if (v56 != -469794537)
  {
    return v8;
  }

LABEL_223:
  (*(*this[1].OSObject::OSObjectInterface::__vftable[337].init + 536))(this[1].OSObject::OSObjectInterface::__vftable[337].init);
  v57 = AppleBCMWLANCore::configureDefaultEvents(this);
  if (v57)
  {
    v8 = v57;
    if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
    {
      (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setupFirmware(this);
      }
    }

    return v8;
  }

  AppleBCMWLANCore::configureScans(this);
  AppleBCMWLANCore::configureLinkLoss(this);
  v58 = this[1].OSObject::OSObjectInterface::__vftable;
  if ((HIBYTE(v58[67].free) & 1) == 0)
  {
    free = v58[350].free;
    StatsTimerIntervalMS = AppleBCMWLANLQM::getStatsTimerIntervalMS(free);
    AppleBCMWLANLQM::setStatsTimerIntervalMS(free, StatsTimerIntervalMS);
    v58 = v4->__vftable;
  }

  AppleBCMWLANBGScanAdapter::enablePrivateMACForScans(v58[343].free);
  AppleBCMWLANBGScanAdapter::generateAndApplyNewPrivateMACForScans(v4->__vftable[343].free);
  if (HIDWORD(v4->__vftable[48].free) <= 0x10 && AppleBCMWLANCore::featureFlagIsBitSet(this, 48) && (BYTE4(v4->__vftable[1112].free) & 2) == 0)
  {
    AppleBCMWLANConfigManager::configureRangingParams(v4->__vftable[341].free);
  }

  v61 = AppleBCMWLANCore::configurePowerSave(this);
  if (v61)
  {
    v8 = v61;
    if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
    {
      (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setupFirmware(this);
      }
    }

    return v8;
  }

  AppleBCMWLANCore::configureRoam(this);
  v62 = AppleBCMWLANCore::configureSecurityParams(this);
  if (v62)
  {
    v8 = v62;
    if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
    {
      (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setupFirmware(this);
      }
    }

    return v8;
  }

  if ((AppleBCMWLANConfigManager::wompEnabled(v4->__vftable[341].free) & 1) == 0)
  {
    ListenInterval = 1;
    v63 = v4->__vftable[338].init;
    p_ListenInterval = &ListenInterval;
    v106 = 4;
    if (AppleBCMWLANCommander::runIOVarSet(v63, "pkt_filter_mode", &p_ListenInterval, 0, 0))
    {
      if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
      {
        (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::setupFirmware(this);
        }
      }
    }
  }

  v64 = AppleBCMWLANConfigManager::setupBeaconOffload(v4->__vftable[341].free, 0, 0, LOBYTE(v4->__vftable[13].init), 1);
  if (v64 != -469794537)
  {
    if (v64)
    {
      if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
      {
        (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::setupFirmware(this);
        }
      }
    }
  }

  ListenInterval = AppleBCMWLANConfigManager::getListenInterval(v4->__vftable[341].free);
  v65 = v4->__vftable[338].init;
  p_ListenInterval = &ListenInterval;
  v106 = 4;
  v66 = AppleBCMWLANCommander::runIOVarSet(v65, "assoc_listen", &p_ListenInterval, 0, 0);
  if (v66 != -469794537)
  {
    v67 = v66;
    if (v66)
    {
      if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
      {
        (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::setupFirmware(this, this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, &ListenInterval, v67);
        }
      }
    }
  }

  ListenInterval = 5;
  v68 = v4->__vftable[338].init;
  p_ListenInterval = &ListenInterval;
  v106 = 4;
  if (AppleBCMWLANCommander::runIOVarSet(v68, "assoc_retry_max", &p_ListenInterval, 0, 0))
  {
    if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
    {
      (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setupFirmware(this);
      }
    }
  }

  ListenInterval = 1;
  v69 = v4->__vftable[338].init;
  p_ListenInterval = &ListenInterval;
  v106 = 4;
  if (AppleBCMWLANCommander::runIOVarSet(v69, "intol40", &p_ListenInterval, 0, 0))
  {
    if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
    {
      (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setupFirmware(this);
      }
    }
  }

  AppleBCMWLANCore::configureDefaultAvgRssiParameters(this);
  AppleBCMWLANCore::configureHS20IE(this);
  v70 = AppleBCMWLANConfigManager::setupFirmwareWithDTDefaults(this[1].OSObject::OSObjectInterface::__vftable[341].free);
  if (v70)
  {
    v8 = v70;
    if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
    {
      (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setupFirmware(this);
      }
    }

    return v8;
  }

  v71 = AppleBCMWLANCore::configureEarlyBeaconDetect(this);
  if (v71)
  {
    v8 = v71;
    if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
    {
      (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setupFirmware(this);
      }
    }

    return v8;
  }

  if (AppleBCMWLANPowerManager::configureTVPM(v4->__vftable[345].init))
  {
    if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
    {
      (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setupFirmware(this);
      }
    }
  }

  if (AppleBCMWLANTxPowerManager::configureDynSAR(v4->__vftable[345].free))
  {
    if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
    {
      (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setupFirmware(this);
      }
    }
  }

  if (AppleBCMWLANConfigManager::isStaticTxSDBEnabled(v4->__vftable[341].free))
  {
    if (AppleBCMWLANTxPowerManager::txSDBEnable(v4->__vftable[345].free, 1))
    {
      if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
      {
        (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::setupFirmware(this);
        }
      }
    }
  }

  HIDWORD(this[1].OSObject::OSObjectInterface::__vftable[886].init) = 0;
  LOBYTE(this[1].OSObject::OSObjectInterface::__vftable[48].free) = 0;
  BYTE1(this[1].OSObject::OSObjectInterface::__vftable[48].free) = 0;
  LODWORD(this[1].OSObject::OSObjectInterface::__vftable[594].init) = 1;
  LODWORD(this[1].OSObject::OSObjectInterface::__vftable[887].free) = 0;
  LODWORD(this[1].OSObject::OSObjectInterface::__vftable[419].init) = 0;
  HIDWORD(this[1].OSObject::OSObjectInterface::__vftable[419].init) = 0;
  AppleBCMWLANCore::configureTrgDisc(this);
  AppleBCMWLANPowerManager::configureMIMOPowerSaveConfiguration(this[1].OSObject::OSObjectInterface::__vftable[345].init);
  if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
  {
    (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::setupFirmware(this);
    }
  }

  AppleBCMWLANPowerManager::configureOCLParams(v4->__vftable[345].init);
  v72 = v4->__vftable;
  if (BYTE4(v4->__vftable[552].init) == 1)
  {
    AppleBCMWLANCore::setMWSCoexIoVarsAsync_mws_coex_bitmap(this, 0, 1);
    v72 = this[1].OSObject::OSObjectInterface::__vftable;
  }

  if (LOBYTE(v72[553].init) == 1)
  {
    AppleBCMWLANCore::setMWSCoexIoVarsAsync_mws_aggCh_params(this, 0, 1);
    v72 = this[1].OSObject::OSObjectInterface::__vftable;
  }

  if (LOBYTE(v72[555].init) == 1)
  {
    AppleBCMWLANCore::setMWSCoexIoVarsAsync_mws_wciSig_config(this, 0, 1);
    v72 = this[1].OSObject::OSObjectInterface::__vftable;
  }

  if (LOBYTE(v72[555].free) == 1)
  {
    AppleBCMWLANCore::setMWSCoexIoVarsAsync_mws_wlanrxpri_threshold(this, 0, 1);
    v72 = this[1].OSObject::OSObjectInterface::__vftable;
  }

  if (BYTE2(v72[556].init) == 1)
  {
    AppleBCMWLANCore::setMWSCoexIoVarsAsync_mws_coex_bitmap_V2(this, 0, 1);
    v72 = this[1].OSObject::OSObjectInterface::__vftable;
  }

  if (LOBYTE(v72[556].free) == 1)
  {
    AppleBCMWLANCore::setMWSCoexIoVarsRxPrioTimer(this, 0, 1);
    v72 = this[1].OSObject::OSObjectInterface::__vftable;
  }

  if (v72[557].init)
  {
    AppleBCMWLANCore::setMWSCoexIoVarsPwrLimitTimer(this, 0, 1);
  }

  v73 = 8914;
  v74 = 10;
  do
  {
    if (*(&v4->init + v73))
    {
      (this->OSObject::OSMetaClassBase::__vftable[29].isEqualTo)(this, v4->__vftable + v73);
    }

    v73 += 56;
    --v74;
  }

  while (v74);
  if (AppleBCMWLANCore::featureFlagIsBitSet(this, 43))
  {
    if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
    {
      (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setupFirmware(this);
      }
    }

    v75 = v4->__vftable[2249].init;
    v76 = 50000;
    v77 = 15000;
  }

  else
  {
    v75 = v4->__vftable[2249].init;
    v76 = 0xFFFF;
    v77 = 30000;
  }

  AppleBCMWLANPowerStateAdapter::configureMulticastBroadcastWaitPeriod(v75, v76, v77);
  AppleBCMWLANConfigManager::querySDBPolicies(v4->__vftable[341].free);
  v78 = v4->__vftable[345].init;
  if (v78)
  {
    AppleBCMWLANPowerManager::setMWSCoexIoVarsAsync_mws_ocl_coex_bitmap(v78, 0, 1);
  }

  if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
  {
    (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::setupFirmware(this);
    }
  }

  if (AppleBCMWLANConfigManager::isTxFailEventSupported(v4->__vftable[341].free))
  {
    AppleBCMWLANCore::configureTxFailEventThreshold(this, 1);
  }

  if (AppleBCMWLANConfigManager::isVOBlockAck(v4->__vftable[341].free))
  {
    LOWORD(ListenInterval) = 262;
    v79 = v4->__vftable[338].init;
    p_ListenInterval = &ListenInterval;
    v106 = 2;
    if (AppleBCMWLANCommander::runIOVarSet(v79, "ampdu_tid", &p_ListenInterval, 0, 0))
    {
      if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
      {
        (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::setupFirmware(this);
        }
      }
    }

    LOWORD(ListenInterval) = 263;
    v80 = v4->__vftable[338].init;
    p_ListenInterval = &ListenInterval;
    v106 = 2;
    if (AppleBCMWLANCommander::runIOVarSet(v80, "ampdu_tid", &p_ListenInterval, 0, 0))
    {
      if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
      {
        (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::setupFirmware(this);
        }
      }
    }
  }

  if ((AppleBCMWLANConfigManager::isEBTSupportedInDriver(v4->__vftable[341].free) & 1) == 0 && AppleBCMWLANCore::featureFlagIsBitSet(this, 57))
  {
    if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
    {
      (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setupFirmware(this);
      }
    }

    AppleBCMWLANPowerManager::configureEarlyBeaconTermination(v4->__vftable[345].init, 0);
  }

  isDigitalNapSupportedInDriver = AppleBCMWLANConfigManager::isDigitalNapSupportedInDriver(v4->__vftable[341].free);
  v82 = v4->__vftable;
  if ((isDigitalNapSupportedInDriver & 1) == 0 && BYTE1(v82[648].init) == 1)
  {
    if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
    {
      (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setupFirmware(this);
      }
    }

    AppleBCMWLANPowerManager::configureDigitalNapPowerSave(v4->__vftable[345].init, 0);
    v82 = v4->__vftable;
  }

  if ((AppleBCMWLANConfigManager::isOPSSupportedInDriver(v82[341].free) & 1) == 0 && AppleBCMWLANCore::featureFlagIsBitSet(this, 56))
  {
    if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
    {
      (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setupFirmware(this);
      }
    }

    AppleBCMWLANPowerManager::configureOpportunisticPowerSave(v4->__vftable[345].init, 0);
  }

  if (AppleBCMWLANConfigManager::isGPIOTxEnvelopeIndEnabled(v4->__vftable[341].free))
  {
    BYTE4(this[1].OSObject::OSObjectInterface::__vftable[657].free) = 3;
    (this->OSObject::OSMetaClassBase::__vftable[27].getMetaClass)(this, 0);
    if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
    {
      (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setupFirmware(this);
      }
    }
  }

  if (AppleBCMWLANCore::featureFlagIsBitSet(this, 82))
  {
    AppleBCMWLANNetAdapter::setBeaconMuteMitigationVersion(v4->__vftable[350].init);
  }

  if (AppleBCMWLANCore::featureFlagIsBitSet(this, 87))
  {
    if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
    {
      (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setupFirmware(this);
      }
    }

    if (AppleBCMWLANConfigManager::configureBeaconDriftOffsetConfig(v4->__vftable[341].free, 0))
    {
      if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
      {
        (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::setupFirmware(this);
        }
      }
    }
  }

  AppleBCMWLANJoinAdapter::configureDefaultUnAssocDwell(this[1].OSObject::OSObjectInterface::__vftable[338].free);
  AppleBCMWLANCore::configureECounters(this);
  if (BYTE4(this[1].OSObject::OSObjectInterface::__vftable[59].free) == 1)
  {
    AppleBCMWLANCore::configureEventLogOneReportedStats(this);
  }

  AppleBCMWLANCore::configureEventLogSixReportedStats(this);
  AppleBCMWLANCore::configureEventLogSevenReportedStats(this);
  if (AppleBCMWLANCore::featureFlagIsBitSet(this, 80) && LODWORD(v4->__vftable[68].init))
  {
    v83 = (this->OSObject::OSMetaClassBase::__vftable[1].free)(this);
    (*(*v83 + 56))(v83, AppleBCMWLANCore::setLteCoexLBTMode, 0, 0, 0, 0);
  }

  v84 = IOMallocZeroData();
  if (!v84)
  {
    return 3758097085;
  }

  *v84 = 0;
  v110 = v84;
  v111 = 0x10000000101;
  v85 = AppleBCMWLANCommander::runIOVarGet(v4->__vftable[338].init, "ver", &kNoTxPayload, &v110, 0);
  if (v85)
  {
    v8 = v85;
    if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
    {
      (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setupFirmware(this);
      }
    }

    goto LABEL_6;
  }

  IOFreeData();
  LODWORD(p_ListenInterval) = 0;
  if (IOParseBootArgNumber("wlan.forced.ts", &p_ListenInterval, 4))
  {
    if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
    {
      (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setupFirmware(this);
      }
    }

    if (p_ListenInterval >= 3)
    {
      LODWORD(p_ListenInterval) = 0;
      if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
      {
        (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::setupFirmware(this);
        }
      }
    }
  }

  LODWORD(this[1].OSObject::OSObjectInterface::__vftable[2244].free) = p_ListenInterval;
  AppleBCMWLANCore::setPTMMode(this);
  v87 = this[1].OSObject::OSObjectInterface::__vftable;
  v88 = LODWORD(v87[1880].free) != 1;
  free_low = LODWORD(v87[2244].free);
  (*(*v87[337].init + 528))();
  v90 = (this->OSObject::OSMetaClassBase::__vftable[8].init)(this);
  setPropertyHelper(this, "IOFeatures", v90, 0x20u);
  BYTE4(this[1].OSObject::OSObjectInterface::__vftable[1094].free) = 0;
  BYTE5(this[1].OSObject::OSObjectInterface::__vftable[1094].free) = 0;
  HIDWORD(this[1].OSObject::OSObjectInterface::__vftable[647].free) = 1;
  AppleBCMWLANCore::updateCurrentFWCountryCode(this);
  HIDWORD(this[1].OSObject::OSObjectInterface::__vftable[2243].free) = 3;
  HIDWORD(this[1].OSObject::OSObjectInterface::__vftable[2243].free) = 7;
  if (AppleBCMWLANCore::featureFlagIsBitSet(this, 93))
  {
    v91 = IOParseBootArgNumber("wlan.channelFilter", &v4->__vftable[2243].free + 4, 4);
    v92 = v4->__vftable;
    if (v91 && !HIDWORD(v92[2243].free))
    {
      IOLog(" WiFiCC : Allowing all bands and no channel filter used. [%d]\n", 0);
      v92 = v4->__vftable;
    }

    HIDWORD(v92[1879].free) = -80;
    if (IOParseBootArgNumber("wlan.rssicomp.value", &v4->__vftable[1879].free + 4, 4))
    {
      free_high = HIDWORD(v4->__vftable[1879].free);
      if (free_high)
      {
        if ((free_high + 90) >= 0x33)
        {
          IOLog(" WiFiRoam : RSSI compensation out of range. Value : [%d] Resorting to default value : [%d]\n", HIDWORD(v4->__vftable[1879].free), -80);
          HIDWORD(v4->__vftable[1879].free) = -80;
        }

        else
        {
          IOLog(" WiFiRoam : Using RSSI compensation Value : [%d] \n", HIDWORD(v4->__vftable[1879].free));
        }
      }

      else
      {
        IOLog(" WiFiRoam : RSSI compensation not allowed. [%d]\n", 0);
        HIDWORD(v4->__vftable[1879].free) = 0;
      }
    }
  }

  if (AppleBCMWLANCore::featureFlagIsBitSet(this, 77))
  {
    if ((BYTE1(v4->__vftable[1116].init) & 1) == 0)
    {
      if (AppleBCMWLANCore::configureIeFiltering(this))
      {
        if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
        {
          (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::setupFirmware(this);
          }
        }
      }
    }
  }

  AppleBCMWLANJoinAdapter::configure6GDefaultUnAssocDwell(this[1].OSObject::OSObjectInterface::__vftable[338].free);
  if (AppleBCMWLANCore::featureFlagIsBitSet(this, 89))
  {
    AppleBCMWLANRoamAdapter::cfgRoamPruneRssiThreshold(v4->__vftable[348].init, -80);
  }

  AppleBCMWLANCore::initTrafficEngineering(this);
  v94 = AppleBCMWLANCore::restore_mpc_state(this, v107);
  if (!v94)
  {
    BYTE6(this[1].OSObject::OSObjectInterface::__vftable[13].free) = 0;
    AppleBCMWLANCore::setSPMICommonConfig(this, 1);
    v95 = 4;
    v96 = 30987;
    do
    {
      *(v4->__vftable + v96 - 1) = 0;
      *(&v4->init + v96) = 0;
      v96 += 16;
      --v95;
    }

    while (v95);
    LOBYTE(this[1].OSObject::OSObjectInterface::__vftable[1936].init) = 0;
    AppleBCMWLANCore::disableC2C(this);
    AppleBCMWLANCore::setEcountersEnableStateSync(this, &__block_literal_global, 1);
    if (AppleBCMWLANCore::featureFlagIsBitSet(this, 115))
    {
      v97 = v4->__vftable[349].free;
      if (v97)
      {
        AppleBCMWLAN11beAdapter::setupInitConfig(v97);
      }
    }

    if (AppleBCMWLANCore::featureFlagIsBitSet(this, 117) && (BYTE3(v4->__vftable[1095].init) & 2) != 0)
    {
      AppleBCMWLANCore::configureScanForwardToAOP(this, 1);
    }

    if (AppleBCMWLANCore::featureFlagIsBitSet(this, 120))
    {
      AppleBCMWLANCore::configureScanParamMods(this);
    }

    v98 = (*(*v4->__vftable[337].init + 368))(v4->__vftable[337].init);
    if (v98 == 4399 || v98 == 4388)
    {
      AppleBCMWLANCore::configureRxHCRTSCTSEventParams(this, 10000, 1);
    }

    BYTE4(this[1].OSObject::OSObjectInterface::__vftable[551].free) = 0;
    if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
    {
      (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setupFirmware(this);
      }
    }

    return 0;
  }

  v8 = v94;
  if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
  {
    (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::setupFirmware(this);
    }
  }

  return v8;
}

uint64_t AppleBCMWLANCore::setupDriver(uint64_t this)
{
  v37 = 0;
  v3 = (this + 72);
  v2 = *(this + 72);
  v36 = 0;
  v4 = (*(**(v2 + 11288) + 1072))(*(v2 + 11288));
  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      v34 = (*(*this + 1952))(this);
      CCLogStream::logAlert(v34, "[dk] %s@%d:WiFi MAC Address: %02x:%02x:%02x:%02x:%02x:%02x, HW[ %02x:%02x:%02x:%02x:%02x:%02x ]\n", "setupDriver", 5876, v4, BYTE1(v4), BYTE2(v4), BYTE3(v4), BYTE4(v4), BYTE5(v4), *(*(this + 72) + 5652), *(*(this + 72) + 5653), *(*(this + 72) + 5654), *(*(this + 72) + 5655), *(*(this + 72) + 5656), *(*(this + 72) + 5657));
    }
  }

  v5 = *(*(this + 72) + 10376);
  v6 = (*(*this + 1952))(this);
  if ((v5 & 0x20) == 0)
  {
    if (v6)
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setupDriver(this);
      }
    }

    if ((*(*v3 + 10377) & 0x10) == 0)
    {
      return 0;
    }

    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setupDriver(this);
      }
    }

    AppleBCMWLANCore::handlePowerStateChange(this, *(*(this + 72) + 10388));
    v7 = *(*(this + 72) + 11288);
    if (!v7)
    {
      return 0;
    }

    IO80211Controller::postMessage(this, v7, 1u, 0, 0, 1);
    v8 = 0;
    atomic_fetch_and((*(this + 72) + 10376), 0xFFFFEFFF);
    return v8;
  }

  if (v6)
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::setupDriver(this);
    }
  }

  atomic_fetch_or((*v3 + 10376), 1u);
  AppleBCMWLANConfigManager::getDTIMParameters(*(*v3 + 5464), (*v3 + 6692));
  *(*v3 + 19844) = *(*v3 + 6696);
  *(*v3 + 19836) = *(*v3 + 6694);
  AppleBCMWLANNetAdapter::configureAggressiveEDCA(*(*v3 + 5600), *(*v3 + 36084) & 1);
  v9 = OSDictionary::withCapacity(6u);
  *&v38[0] = 0;
  if (v9 && !(*(*(*(*v3 + 5392) + 48) + 408))())
  {
    if ((setPropertyHelper(this, "ModuleDictionary", v9) & 1) == 0)
    {
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::setupDriver(this);
        }
      }
    }

    if (!setPropertyHelper(this, "ModuleInfo", *&v38[0]) || ((*(*(*(*v3 + 5392) + 48) + 416))() & 1) == 0)
    {
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::setupDriver(this);
        }
      }

      v8 = 3758097086;
      (v9->release)(v9);
      return v8;
    }
  }

  v35 = 0;
  if (acquireProperty<OSString>(*(*v3 + 5392), "vendor-id", &v35, 0, "IOService"))
  {
    if (!setPropertyHelper(this, "vendor-id", v35) || ((*(*(*(*v3 + 5392) + 48) + 416))() & 1) == 0)
    {
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::setupDriver(this);
        }
      }

      if (v35)
      {
        (v35->release)(v35);
        v35 = 0;
      }

      if (v9)
      {
        (v9->release)(v9);
      }

      return 3758097086;
    }

    if (v35)
    {
      (v35->release)(v35);
      v35 = 0;
    }
  }

  if (v9)
  {
    (v9->release)(v9);
  }

  *&v38[0] = 0;
  if (acquireProperty<OSString>(*(*v3 + 5392), "vendor-id", v38, 0, "IOService"))
  {
    v10 = *v3;
    if (!strcmp((*v3 + 2488), "muscari"))
    {
      CStringNoCopy = OSString::getCStringNoCopy(*&v38[0]);
      if (strcmp(CStringNoCopy, "USI"))
      {
        goto LABEL_63;
      }

      v12 = 145;
      v13 = 350;
    }

    else if (!strcmp((v10 + 2488), "marigold"))
    {
      v15 = OSString::getCStringNoCopy(*&v38[0]);
      if (!strcmp(v15, "USI"))
      {
        v12 = 5;
        v13 = 280;
      }

      else
      {
        v16 = OSString::getCStringNoCopy(*&v38[0]);
        if (!strcmp(v16, "STATS"))
        {
          v12 = 280;
          v13 = 170;
        }

        else
        {
          v17 = OSString::getCStringNoCopy(*&v38[0]);
          if (strcmp(v17, "Amkor"))
          {
            goto LABEL_63;
          }

          v12 = 225;
          v13 = 130;
        }
      }
    }

    else if (!strcmp((v10 + 2488), "petunia"))
    {
      v18 = OSString::getCStringNoCopy(*&v38[0]);
      if (strcmp(v18, "STATS"))
      {
        goto LABEL_63;
      }

      v12 = 195;
      v13 = 215;
    }

    else
    {
      if (strcmp((v10 + 2488), "poppy"))
      {
        goto LABEL_63;
      }

      v11 = OSString::getCStringNoCopy(*&v38[0]);
      if (strcmp(v11, "USI"))
      {
        goto LABEL_63;
      }

      v12 = 195;
      v13 = 140;
    }

    *(*v3 + 36092) = v13;
    *(*v3 + 36096) = v12;
LABEL_63:
    if (*(*v3 + 36092) || *(*v3 + 36096))
    {
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::setupDriver(this);
        }
      }
    }
  }

  if (*&v38[0])
  {
    (*(**&v38[0] + 16))(*&v38[0]);
  }

  AppleBCMWLANLeakyApParser::addLeakyAPStatsClient(*(*(this + 72) + 5448), this, &IO80211Controller::setLeakyAPStats);
  shouldSupportTethering = AppleBCMWLANCore::shouldSupportTethering(this);
  v20 = *(*(this + 72) + 10372);
  if ((shouldSupportTethering & 1) != 0 || (v20 & 0x200) != 0)
  {
    memset(v38, 0, sizeof(v38));
    WORD2(v38[0]) = v4;
    BYTE6(v38[0]) = BYTE2(v4);
    BYTE7(v38[0]) = BYTE3(v4);
    BYTE8(v38[0]) = BYTE4(v4);
    BYTE9(v38[0]) = BYTE5(v4);
    HIDWORD(v38[0]) = 7;
    if ((v20 & 0x200) != 0)
    {
      strcpy(&v38[1], "aux");
    }

    else
    {
      strcpy(&v38[1], "ap");
    }

    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setupDriver(this);
      }
    }

    v21 = (*(*this + 1800))(this, v38);
  }

  else
  {
    v21 = 0;
  }

  if ((AppleBCMWLANCore::featureFlagIsBitSet(this, 2) & 1) == 0)
  {
    v22 = *(*v3 + 5464);
    if (v22)
    {
      if (AppleBCMWLANConfigManager::isAWDLSupported(v22))
      {
        LODWORD(v35) = 0;
        if (IOParseBootArgNumber("wlan.awdl.create_by_driver", &v35, 4))
        {
          if ((*(*this + 1952))(this))
          {
            (*(*this + 1952))(this);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANCore::setupDriver(this, this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, &v35);
            }
          }
        }

        if (v35)
        {
          *(v38 + 12) = 6;
          *(v38 + 4) = 0;
          HIDWORD(v38[1]) = 0;
          *(&v38[1] + 4) = 0;
          LODWORD(v38[0]) = 1;
          (*(*this + 1800))(this, v38);
        }
      }
    }
  }

  mach_continuous_time();
  absolutetime_to_nanoseconds();
  setPropertyHelper(this, "CoreDriverInitializationTime", v37, 0x40u);
  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::setupDriver(this);
    }
  }

  v23 = *v3;
  if ((*(*v3 + 10377) & 0x10) != 0)
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setupDriver(this);
      }
    }

    v21 = AppleBCMWLANCore::handlePowerStateChange(this, *(*(this + 72) + 10388));
    v23 = *(this + 72);
    v24 = *(v23 + 11288);
    if (v24)
    {
      IO80211Controller::postMessage(this, v24, 1u, 0, 0, 1);
      atomic_fetch_and((*(this + 72) + 10376), 0xFFFFEFFF);
      v23 = *(this + 72);
    }
  }

  atomic_fetch_and((v23 + 10376), 0xFFFFFFDF);
  AppleBCMWLANCore::signalDriverEvent(this, 5u);
  AppleBCMWLANCore::signalDriverReady(this);
  v25 = *(this + 72);
  v26 = *(v25 + 11288);
  if (v26)
  {
    (*(*v26 + 456))(v26, 0);
    v25 = *v3;
    v27 = *(*v3 + 5392);
    if (v27)
    {
      AppleBCMWLANBusInterface::sendBootCheckPointToCoreAnalytics(v27, 2u, 9u);
      v25 = *v3;
    }
  }

  AppleBCMWLANConfigManager::readPmThresholds(*(v25 + 5464), 1, v25 + 6600);
  if (AppleBCMWLANCore::checkForTCPKAOffloadSupport(this))
  {
    AppleBCMWLANKeepAliveOffload::initializeKeepAliveCapabilities(*(*v3 + 5544));
  }

  *(*v3 + 6729) = 0;
  v28 = *v3;
  v29 = *(*v3 + 10376);
  v36 = (v29 >> 29) & 1;
  if ((v29 & 0x20000000) != 0)
  {
    v30 = *(v28 + 5408);
    *&v38[0] = &v36;
    *(&v38[0] + 1) = 4;
    v31 = AppleBCMWLANCommander::runIOCtlSet(v30, 116, v38, 0, 0);
    if (v31)
    {
      v8 = v31;
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::setupDriver(this, this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, &v36, v8);
        }
      }

      return v8;
    }

    v28 = *v3;
  }

  *(v28 + 18297) = 0;
  *(*v3 + 17528) = 0;
  *(*v3 + 17796) = 0;
  *(*v3 + 19808) = 0;
  *(*v3 + 19816) = 0;
  *(*v3 + 6672) = 0;
  *(*v3 + 18414) = 0;
  v32 = *(*v3 + 35976);
  if (v32)
  {
    AppleBCMWLANSensingAdapter::updateSensingVersion(v32);
  }

  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::setupDriver(this);
    }
  }

  return v21;
}