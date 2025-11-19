uint64_t AppleBCMWLANCore::parseXTLVContainers(AppleBCMWLANCore *this, OSData *a2)
{
  if (OSData::getLength(a2) < 4)
  {
    v15 = 3758097084;
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::parseXTLVContainers(this);
      }
    }

    LOWORD(v7) = 0;
    LOWORD(v6) = 0;
    v5 = 0;
    goto LABEL_64;
  }

  if (!OSData::getLength(a2))
  {
    return 0;
  }

  v4 = 0;
  v5 = 0;
  LOWORD(v6) = 0;
  LOWORD(v7) = 0;
  while (1)
  {
    if (OSData::getLength(a2) - v4 < 5)
    {
      return 0;
    }

    BytesNoCopy = OSData::getBytesNoCopy(a2, v4, 4uLL);
    v9 = (*(*this + 1952))(this);
    if (!BytesNoCopy)
    {
      break;
    }

    if (v9)
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::parseXTLVContainers(this);
      }
    }

    v6 = BytesNoCopy[1];
    if (OSData::getLength(a2) - (v5 + 4) < v6)
    {
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        v15 = 3758097084;
        if (CCLogStream::shouldLog())
        {
          v28 = (*(*this + 1952))(this);
          v17 = BytesNoCopy[1];
          v18 = *BytesNoCopy;
          OSData::getLength(a2);
          OSData::getLength(a2);
          v15 = 3758097084;
          CCLogStream::logAlert(v28, "[dk] %s@%d:Insufficient xtlv->len %d index %d xtlv->id 0x%x payload->getLength() %d remainder %d\n", "parseXTLVContainers");
        }

        goto LABEL_64;
      }

LABEL_56:
      v15 = 3758097084;
      goto LABEL_64;
    }

    v10 = OSData::getBytesNoCopy(a2, v5 + 4, v6);
    if (!v10)
    {
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        v15 = 3758097084;
        if (CCLogStream::shouldLog())
        {
          v19 = (*(*this + 1952))(this);
          v20 = BytesNoCopy[1];
          v21 = *BytesNoCopy;
          OSData::getLength(a2);
          v22 = v19;
          v15 = 3758097084;
          CCLogStream::logAlert(v22, "[dk] %s@%d:Bad payloadStart xtlv->len %d index %d xtlv->id 0x%x payload->getLength() %d index + BCM_XTLV_HDR_SIZE %d\n", "parseXTLVContainers");
        }

        goto LABEL_64;
      }

      goto LABEL_56;
    }

    v11 = OSData::withBytesNoCopy(v10, v6);
    if (!v11)
    {
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        v15 = 3758097084;
        if (CCLogStream::shouldLog())
        {
          v23 = (*(*this + 1952))(this);
          v26 = BytesNoCopy[1];
          v27 = *BytesNoCopy;
          CCLogStream::logAlert(v23, "[dk] %s@%d:Bad xtlvContainerPayload index %d xtlv->len %d xtlv->id 0x%x\n");
        }

        goto LABEL_64;
      }

      goto LABEL_56;
    }

    v12 = v11;
    v7 = *BytesNoCopy;
    if (v7 > 0x10A)
    {
      if (*BytesNoCopy <= 0x10Cu)
      {
        if (v7 == 267)
        {
          v13 = AppleBCMWLANCore::parsePHYEcounter(this, v11);
          goto LABEL_30;
        }

        if (v7 == 268)
        {
          v13 = AppleBCMWLANCore::parsePHYCalEcounter(this, v11);
          goto LABEL_30;
        }
      }

      else
      {
        switch(v7)
        {
          case 0x10Du:
            v13 = AppleBCMWLANCore::parseDTIMEcounter(this, v11);
            goto LABEL_30;
          case 0x501u:
            v13 = AppleBCMWLANCore::parseIFStatsContainer(this, v11);
            goto LABEL_30;
          case 0x301u:
            v13 = AppleBCMWLANCore::parsePerSliceContainer(this, v11);
            goto LABEL_30;
        }
      }
    }

    else
    {
      if (v7 - 6 < 2)
      {
        v14 = 0;
        goto LABEL_31;
      }

      if (v7 - 257 < 2)
      {
        v13 = AppleBCMWLANCore::parseAMPDUStatsGlobalContainer(this, v11);
LABEL_30:
        v14 = v13;
        goto LABEL_31;
      }

      if (v7 == 261)
      {
        v13 = AppleBCMWLANCore::parseChanStatsGlobalContainer(this, v11);
        goto LABEL_30;
      }
    }

    v14 = 3758097090;
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::parseXTLVContainers(this);
        v14 = 3758097090;
      }
    }

LABEL_31:
    (v12->release)(v12);
    if (v14)
    {
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          v25 = (*(*this + 1952))(this);
          CCLogStream::logEmergency(v25, "[dk] %s@%d:Failed to parse Event Log Record xtlv %x payloadLen %d\n", "parseXTLVContainers", 28781, v7, v6);
        }

        v15 = v14;
      }

      else
      {
        v15 = v14;
      }

      goto LABEL_64;
    }

    v29 = 0;
    if (AppleBCMWLANCore::safe_align_up(this, v4 + v6 + 4, 4uLL, &v29))
    {
      AppleBCMWLANCore::parseXTLVContainers(this);
LABEL_63:
      v15 = 0;
      goto LABEL_64;
    }

    v4 = v29;
    if (v29 >= 0xFFFF)
    {
      AppleBCMWLANCore::parseXTLVContainers(this);
      goto LABEL_63;
    }

    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::parseXTLVContainers(this);
      }
    }

    v5 = v4;
    if (OSData::getLength(a2) <= v4)
    {
      return 0;
    }
  }

  if (!v9)
  {
    goto LABEL_56;
  }

  (*(*this + 1952))(this);
  v15 = 3758097084;
  if (CCLogStream::shouldLog())
  {
    AppleBCMWLANCore::parseXTLVContainers(this);
  }

LABEL_64:
  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      v24 = (*(*this + 1952))(this);
      CCLogStream::logAlert(v24, "[dk] %s@%d:Goto fail last tag %x length %d index %d\n", "parseXTLVContainers", 28797, v7, v6, v5);
    }
  }

  CCFaultReporter::reportFault(*(*(this + 9) + 5536), 4u, "/Library/Caches/com.apple.xbs/Sources/AppleBCMWLANV3_driverkit/AppleBCMWLANCore.cpp", 0x7080u, "parseXTLVContainers", 0, -469793457, "parse TLV error");
  return v15;
}

uint64_t AppleBCMWLANCore::parseEventLogRecordTxFailure(AppleBCMWLANCore *this, OSData *a2)
{
  Length = OSData::getLength(a2);
  BytesNoCopy = OSData::getBytesNoCopy(a2);
  v6 = OSData::getBytesNoCopy(a2);
  if ((Length & 0xFFFFFFF0) == 0)
  {
    goto LABEL_20;
  }

  v7 = 0;
  v8 = (v6 + 12);
  v9 = (Length >> 2) - 3;
  do
  {
    v10 = *v8++;
    v7 += v10;
    --v9;
  }

  while (v9);
  if (!v7)
  {
LABEL_20:
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::parseEventLogRecordTxFailure(this);
      }
    }

    return 0;
  }

  if ((Length & 0xFFFFFFFC) < 0x3CuLL)
  {
    return 0;
  }

  v11 = IOMallocZeroData();
  if (v11)
  {
    v12 = *BytesNoCopy;
    *(BytesNoCopy + 2) = BytesNoCopy[2] | (*(BytesNoCopy + 2) << 16);
    *v11 = 1;
    *(v11 + 1) = v12;
    v13 = *(BytesNoCopy + 4);
    v14 = *(BytesNoCopy + 12);
    v15 = *(BytesNoCopy + 20);
    *(v11 + 14) = *(BytesNoCopy + 14);
    *(v11 + 40) = v15;
    *(v11 + 24) = v14;
    *(v11 + 8) = v13;
    v16 = *(*(this + 9) + 11288);
    if (v16)
    {
      IO80211Controller::postMessage(this, v16, 0x59u, v11, 0x3CuLL, 1);
    }

    IOFreeData();
    return 0;
  }

  v17 = 3758097085;
  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::parseEventLogRecordTxFailure(this);
    }
  }

  return v17;
}

uint64_t AppleBCMWLANCore::parseEventLogRecords(AppleBCMWLANCore *this, OSData *a2, unsigned int *a3)
{
  v6 = a2;
  p_getMetaClass = &p_getMetaClass;
  v65 = &p_getMetaClass;
  if ((OSData::getLength(a2) & 3) != 0)
  {
    v8 = 3758097084;
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::parseEventLogRecords(this);
      }
    }

    return v8;
  }

  if (OSData::getLength(v6) <= 8)
  {
    v8 = 3758097084;
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::parseEventLogRecords(this);
      }
    }

    return v8;
  }

  v9 = OSData::getLength(v6) - 4;
  if (v9 < 1)
  {
    goto LABEL_55;
  }

  v61 = a3;
  while (1)
  {
    v10 = v9;
    v11 = v6;
    BytesNoCopy = OSData::getBytesNoCopy(v6, v9, 4uLL);
    v13 = *BytesNoCopy;
    v14 = BytesNoCopy[1];
    LODWORD(v3) = *(BytesNoCopy + 1);
    if ((v3 << 16) | (v14 << 8) | v13)
    {
      break;
    }

    if (v9 < 5)
    {
      v63 = 0;
      v8 = 0;
LABEL_81:
      v6 = v11;
      goto LABEL_88;
    }

    v9 -= 4;
    v6 = v11;
LABEL_54:
    if (v9 <= 0)
    {
      goto LABEL_55;
    }
  }

  v15 = BytesNoCopy;
  v16 = v3 != 0xFFFF;
  if (!*a3)
  {
    *a3 = v9 + 4;
  }

  v17 = v16 & v3;
  v18 = 4 * v14;
  if ((v16 & v3) != 0)
  {
    v19 = 8;
  }

  else
  {
    v19 = 4;
  }

  if (v17)
  {
    v4 = 4 * v14 + 4;
  }

  else
  {
    v4 = 4 * v14;
  }

  if (v4 >= v19)
  {
    v63 = v9;
    if (v17)
    {
      v20 = -8;
    }

    else
    {
      v20 = -4;
    }

    v21 = (v4 + v20);
    if (v4 + v20)
    {
      v22 = v63 - v4;
      if (v63 < v4)
      {
        v8 = 3758097084;
        v6 = v11;
        if ((*(*this + 1952))(this, v22))
        {
          (*(*this + 1952))(this);
          if (CCLogStream::shouldLog())
          {
            v37 = (*(*this + 1952))(this);
            CCLogStream::logInfo(v37, "[dk] %s@%d:Insufficient space in payload to believe LTV, space to beginning of buf %d, needed space %d\n", "parseEventLogRecords", 21309, v63, v4);
          }
        }

        goto LABEL_87;
      }

      LODWORD(v8) = v13;
      v6 = v11;
      v23 = OSData::getBytesNoCopy(v11, v22, v21);
      if (!v23)
      {
        if ((*(*this + 1952))(this))
        {
          (*(*this + 1952))(this);
          if (CCLogStream::shouldLog())
          {
LABEL_138:
            v55 = (*(*this + 1952))(this);
            CCLogStream::logInfo(v55, "[dk] %s@%d:Failed to find payloadStart at %d, with fmt_num 0x%x and tag %d, and payloadLenWithTimestamp %d\n", "parseEventLogRecords", 21320, v63, v3, v8, v4);
          }
        }

        v63 = 1;
        v8 = 3758097084;
        goto LABEL_88;
      }

      v24 = OSData::withBytesNoCopy(v23, v21);
      if (!v24)
      {
        v8 = 3758097084;
        if ((*(*this + 1952))(this))
        {
          (*(*this + 1952))(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::parseEventLogRecords(this);
          }
        }

        goto LABEL_87;
      }

      v25 = v24;
      v26 = OSData::getBytesNoCopy(v6, v10 - 4, 8uLL);
      if (!v26)
      {
        if ((*(*this + 1952))(this))
        {
          (*(*this + 1952))(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::parseEventLogRecords(this);
          }
        }

        goto LABEL_75;
      }

      v27 = v26;
      v28 = IOMallocZeroTyped();
      if (!v28)
      {
        if ((*(*this + 1952))(this))
        {
          (*(*this + 1952))(this);
          if (CCLogStream::shouldLog())
          {
            v56 = (*(*this + 1952))(this);
            LODWORD(v3) = v27[4];
            Length = OSData::getLength(v25);
            CCLogStream::logInfo(v56, "[dk] %s@%d:Failed to allocate memory to parse Event Log Record tag %x at i %d, payloadLen %d\n", "parseEventLogRecords", 21347, v3, v63, Length);
          }
        }

LABEL_75:
        v8 = 3758097084;
        (v25->release)(v25);
        goto LABEL_87;
      }

      *(v28 + 16) = v27;
      *(v28 + 24) = v25;
      v29 = v63;
      *(v28 + 32) = v63;
      v30 = v65;
      if (v65->OSContainer::OSObject::OSMetaClassBase::__vftable != &p_getMetaClass)
      {
LABEL_137:
        __break(1u);
        goto LABEL_138;
      }

      *v28 = &p_getMetaClass;
      *(v28 + 8) = v30;
      if (v30 == &p_getMetaClass)
      {
        p_getMetaClass = v28;
      }

      else
      {
        *v30 = v28;
      }

      v65 = v28;
      v34 = *(*(this + 9) + 5504);
      if (v34)
      {
        AppleBCMWLANIOReportingCore::incrementEventLogCounter(v34, *v15, v4);
      }

      v3 = 4 * v27[5];
      if ((v17 & 1) == 0)
      {
        v33 = v3 + 4;
        goto LABEL_49;
      }

      v33 = v3 + 8;
      if (v63 <= v3 + 8)
      {
        v33 = v3 + 4;
        if (v63 == v3 + 4)
        {
          goto LABEL_55;
        }

LABEL_49:
        if (v63 <= v33)
        {
          if (v63 != v3)
          {
            if ((*(*this + 1952))(this))
            {
              (*(*this + 1952))(this);
              if (CCLogStream::shouldLog())
              {
                v38 = (*(*this + 1952))(this);
                CCLogStream::logInfo(v38, "[dk] %s@%d:Insufficient space to read next log, i %d current record count size %ld\n", "parseEventLogRecords", 21381, v63, v3);
              }
            }

LABEL_86:
            v8 = 0;
            goto LABEL_87;
          }

          goto LABEL_55;
        }
      }

LABEL_53:
      v9 = v29 - v33;
      a3 = v61;
      goto LABEL_54;
    }

    v31 = *(*(this + 9) + 5504);
    if (v31)
    {
      AppleBCMWLANIOReportingCore::incrementEventLogCounter(v31, v13, v4);
    }

    v32 = 4 * v14;
    v29 = v63;
    if (v17)
    {
      v33 = v32 + 8;
      v6 = v11;
      if (v63 > v32 + 8)
      {
        goto LABEL_53;
      }

      v33 = v32 + 4;
      if (v63 == v32 + 4)
      {
        goto LABEL_55;
      }
    }

    else
    {
      v33 = v32 + 4;
      v6 = v11;
    }

    if (v63 <= v33)
    {
      if (v18 != v10)
      {
        if ((*(*this + 1952))(this))
        {
          (*(*this + 1952))(this);
          if (CCLogStream::shouldLog())
          {
            v58 = (*(*this + 1952))(this);
            CCLogStream::logInfo(v58, "[dk] %s@%d:Insufficient space to read next log, i %d current record count size %ld\n", "parseEventLogRecords", 21299, v63, v18);
          }
        }

        goto LABEL_86;
      }

LABEL_55:
      v63 = 0;
      v8 = 0;
      goto LABEL_88;
    }

    goto LABEL_53;
  }

  v35 = v13;
  v8 = 3758097084;
  if (!(*(*this + 1952))(this))
  {
    v63 = 1;
    goto LABEL_81;
  }

  (*(*this + 1952))(this);
  v6 = v11;
  if (CCLogStream::shouldLog())
  {
    v36 = (*(*this + 1952))(this);
    CCLogStream::logAlert(v36, "[dk] %s@%d:Corrupt record at position %d, with fmt_num 0x%x and tag %d, and payloadLenWithTimestamp %d\n", "parseEventLogRecords", 21268, v9, v3, v35, v4);
  }

LABEL_87:
  v63 = 1;
LABEL_88:
  v60 = v6;
  if (&p_getMetaClass != p_getMetaClass)
  {
    v62 = 0;
    while (1)
    {
      v6 = v65;
      if (v65 != &p_getMetaClass)
      {
        v39 = v65->OSContainer::OSObject::OSMetaClassBase::__vftable;
        v40 = *&v65->refcount;
        if (v65->OSContainer::OSObject::OSMetaClassBase::__vftable == &p_getMetaClass)
        {
          if (*v40 != v65)
          {
            goto LABEL_137;
          }

          v65 = *&v65->refcount;
        }

        else
        {
          if (v39->retain != v65 || *v40 != v65)
          {
            goto LABEL_137;
          }

          v39->retain = v40;
        }

        if (v40 == &p_getMetaClass)
        {
          p_getMetaClass = &v39->getMetaClass;
        }

        else
        {
          *v40 = v39;
        }

        v6->OSContainer::OSObject::OSMetaClassBase::__vftable = 0;
        *&v6->refcount = 0;
      }

      meta = v6->meta;
      v42 = v6->OSContainer::OSObject::OSObjectInterface::__vftable;
      LODWORD(v3) = v6->ivars;
      if ((OSData::getBytesNoCopy(v42) & 3) == 0)
      {
        v45 = 0;
        goto LABEL_118;
      }

      OSData::getLength(v42);
      v44 = IOMallocZeroData();
      if (!v44)
      {
        break;
      }

      v45 = v44;
      v46 = OSData::getLength(v42);
      v47 = OSData::getBytesNoCopy(v42);
      v48 = OSData::getLength(v42);
      memcpy(v45, v47, v48);
      if (v42)
      {
        (v42->release)(v42);
      }

      LODWORD(v4) = v46;
      v49 = OSData::withBytesNoCopy(v45, v46);
      if (v49)
      {
        v42 = v49;
LABEL_118:
        v50 = AppleBCMWLANCore::parseEventLogRecord(this, v42, meta);
        if (v50)
        {
          if (*(*(this + 9) + BYTE4(meta->__vftable) + 4881))
          {
            v8 = 0;
          }

          else
          {
            v8 = v50;
          }

          v62 = v8;
          if ((*(*this + 1952))(this))
          {
            (*(*this + 1952))(this);
            if (CCLogStream::shouldLog())
            {
              v51 = (*(*this + 1952))(this);
              LODWORD(v4) = BYTE4(meta->__vftable);
              v59 = OSData::getLength(v42);
              v52 = v51;
              v8 = v62;
              CCLogStream::logAlert(v52, "[dk] %s@%d:Failed to parse Event Log Record tag %x at i %d, payloadLen %d lastFailure=%d \n", "parseEventLogRecords", 21437, v4, v3, v59, v62);
            }
          }

          v63 = 1;
          *(*(this + 9) + BYTE4(meta->__vftable) + 4881) = 1;
          if (v45)
          {
LABEL_126:
            IOFreeData();
          }
        }

        else
        {
          v8 = 0;
          if (v45)
          {
            goto LABEL_126;
          }
        }

LABEL_127:
        if (v42)
        {
          (v42->release)(v42);
        }

        goto LABEL_129;
      }

      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::parseEventLogRecords(this);
        }
      }

      IOFreeData();
LABEL_129:
      IOFree(v6, 0x28uLL);
      if (&p_getMetaClass == p_getMetaClass)
      {
        goto LABEL_134;
      }
    }

    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::parseEventLogRecords(this);
      }
    }

    goto LABEL_127;
  }

  v62 = 0;
LABEL_134:
  if (v63)
  {
    v53 = *(*(this + 9) + 14248);
    OSData::getBytesNoCopy(v60);
    OSData::getLength(v60);
    IO80211Hexdump();
    return v62;
  }

  return v8;
}

uint64_t AppleBCMWLANCore::handleMsgTraceBlock(AppleBCMWLANCore *this, OSData *a2)
{
  if (a2)
  {
    if (OSData::getLength(a2) <= 7)
    {
      v4 = 3758097084;
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::handleMsgTraceBlock(this);
        }
      }

      return v4;
    }

    v5 = this + 72;
    if (!*(*(this + 9) + 972))
    {
      return 0;
    }

    BytesNoCopy = OSData::getBytesNoCopy(a2, 0, 8uLL);
    v7 = *BytesNoCopy;
    v8 = BytesNoCopy[1];
    v9 = *(BytesNoCopy + 1);
    Length = OSData::getLength(a2);
    if (Length == v7)
    {
      v11 = v9 & 0x3F;
      v12 = *v5;
      if (v11 < *(*v5 + 972))
      {
        v13 = *(v12 + 984);
        if (v13)
        {
          v14 = Length;
          v15 = v9 & 0x3F;
          v16 = *(v12 + 1000);
          if (*(v16 + v15) == 1)
          {
            v17 = 0;
            *(v16 + v15) = 0;
          }

          else
          {
            v18 = *(v13 + 2 * v15);
            v17 = v8 + ~v18;
            if (v18 | v8)
            {
              v19 = v8 + ~v18;
            }

            else
            {
              v19 = 0;
            }

            v20 = v19;
            if (v19)
            {
              if ((*(*this + 1952))(this))
              {
                (*(*this + 1952))(this);
                if (CCLogStream::shouldLog())
                {
                  v21 = (*(*this + 1952))(this);
                  CCLogStream::logInfo(v21, "[dk] %s@%d:Missed %d Seqno for this log set %d, has seqno %d, last seqno %d\n", "handleMsgTraceBlock", 21528, v20, v11, v8, *(*(*(this + 9) + 984) + 2 * v15));
                }
              }
            }

            else
            {
              v17 = 0;
            }
          }

          *(*(*v5 + 984) + 2 * v15) = v8;
          if (OSData::getLength(a2) - 8 < v14)
          {
            LODWORD(v14) = OSData::getLength(a2) - 8;
          }

          v22 = *(*v5 + 5504);
          if (v22)
          {
            AppleBCMWLANIOReportingCore::reportEventLogSet(v22, v15, v17);
          }

          v23 = OSData::getBytesNoCopy(a2, 8uLL, v14);
          v24 = OSData::withBytesNoCopy(v23, v14);
          *v27 = 0;
          v4 = AppleBCMWLANCore::parseEventLogRecords(this, v24, v27);
          v25 = *(*(this + 9) + 5504);
          if (v25)
          {
            AppleBCMWLANIOReportingCore::reportEventLogSetSize(v25, v15, v27[0]);
          }

          if (v24)
          {
            (v24->release)(v24);
          }

          return v4;
        }

        return 0;
      }

      v4 = 3758097084;
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::handleMsgTraceBlock(this);
        }
      }
    }

    else
    {
      v4 = 3758097084;
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::handleMsgTraceBlock(this);
        }
      }
    }
  }

  else
  {
    v4 = 3758097090;
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::handleMsgTraceBlock(this);
        return 3758097090;
      }
    }
  }

  return v4;
}

uint64_t AppleBCMWLANCore::adjustBeaconListPerNewCountryCode(AppleBCMWLANCore *this)
{
  result = (*(*this + 1952))(this);
  if (result)
  {
    (*(*this + 1952))(this);
    result = CCLogStream::shouldLog();
    if (result)
    {
      result = AppleBCMWLANCore::adjustBeaconListPerNewCountryCode(this);
    }
  }

  v4 = this + 72;
  v3 = *(this + 9);
  if (*(v3 + 19916))
  {
    v5 = 0;
    v6 = 19918;
    do
    {
      AppleChannelSpec = AppleBCMWLANChanSpec::getAppleChannelSpec(*(v3 + 17744), *(v3 + v6));
      result = ChanSpecConvToApple80211Channel();
      if ((AppleChannelSpec >> 14) > 1u)
      {
        if (AppleChannelSpec >> 14 != 2 && (*(*v4 + 35900) & 2) != 0)
        {
          result = (*(*this + 1952))(this);
          if (result)
          {
            (*(*this + 1952))(this);
            result = CCLogStream::shouldLog();
            if (result)
            {
              result = AppleBCMWLANCore::adjustBeaconListPerNewCountryCode(this);
            }
          }
        }
      }

      else if (AppleChannelSpec >> 14)
      {
        if ((*(*v4 + 35900) & 4) != 0)
        {
          result = (*(*this + 1952))(this);
          if (result)
          {
            (*(*this + 1952))(this);
            result = CCLogStream::shouldLog();
            if (result)
            {
              result = AppleBCMWLANCore::adjustBeaconListPerNewCountryCode(this);
            }
          }
        }
      }

      else if (*(*v4 + 35900))
      {
        result = (*(*this + 1952))(this);
        if (result)
        {
          (*(*this + 1952))(this);
          result = CCLogStream::shouldLog();
          if (result)
          {
            result = AppleBCMWLANCore::adjustBeaconListPerNewCountryCode(this);
          }
        }
      }

      ++v5;
      v3 = *v4;
      v6 += 2;
    }

    while (v5 < *(*v4 + 19916));
  }

  return result;
}

uint64_t AppleBCMWLANCore::setLMTPC(AppleBCMWLANCore *this)
{
  v2 = this + 72;
  result = (*(**(*(this + 9) + 5392) + 368))(*(*(this + 9) + 5392));
  if (result >= 0x1123)
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setLMTPC(this);
      }
    }

    if (*(*v2 + 6744) == 88 && *(*v2 + 6745) == 90)
    {
      v4 = 0;
    }

    else
    {
      v4 = *(*v2 + 17812);
    }

    v13 = v4;
    v5 = (*(*this + 88))(this);
    if ((*(*v5 + 136))(v5))
    {
      v10 = this;
      v11 = AppleBCMWLANCore::setLMTPCCallback;
      v12 = 0;
      v6 = AppleBCMWLANCommander::sendIOVarSet(*(*(this + 9) + 5408), "lpc");
    }

    else
    {
      v7 = *(*v2 + 5408);
      v10 = &v13;
      v11 = 4;
      v6 = AppleBCMWLANCommander::runIOVarSet(v7, "lpc", &v10, 0, 0);
    }

    v8 = v6;
    result = (*(*this + 1952))(this);
    if (v8)
    {
      if (result)
      {
        (*(*this + 1952))(this);
        result = CCLogStream::shouldLog();
        if (result)
        {
          v9 = (*(*this + 1952))(this);
          return CCLogStream::logAlert(v9, "[dk] %s@%d:Couldn't set lpc %u: ret %x\n", "setLMTPC", 54836, v13, v8);
        }
      }
    }

    else if (result)
    {
      (*(*this + 1952))(this);
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANCore::setLMTPC(this);
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::postRoamCompletionStatus(IO80211Controller *a1)
{
  v2 = *(a1 + 9);
  if (*(v2 + 13992) || *(v2 + 14036))
  {
    v3 = *(v2 + 14248);
    IO80211HexdumpIf();
    v4 = *(a1 + 9);
    v5 = v4[1411];
    if (v5)
    {
      IO80211Controller::postMessage(a1, v5, 0x50u, v4 + 1749, 0xA8uLL, 1);
      v4 = *(a1 + 9);
    }

    v6 = v4[1412];
    if (v6)
    {
      IO80211Controller::postMessage(a1, v6, 0x50u, v4 + 1749, 4uLL, 1);
    }

    if (IO80211_io80211isSensitiveInfoAllowed())
    {
      v27 = *(*(a1 + 9) + 14080);
    }

    if (IO80211_io80211isSensitiveInfoAllowed())
    {
      v26 = *(*(a1 + 9) + 14081);
    }

    if (IO80211_io80211isSensitiveInfoAllowed())
    {
      v25 = *(*(a1 + 9) + 14082);
    }

    if (IO80211_io80211isSensitiveInfoAllowed())
    {
      v7 = *(*(a1 + 9) + 14083);
    }

    if (IO80211_io80211isSensitiveInfoAllowed())
    {
      v8 = *(*(a1 + 9) + 14084);
    }

    v9 = IO80211_io80211isSensitiveInfoAllowed();
    v10 = *(a1 + 9);
    if (v9)
    {
      v11 = *(v10 + 14085);
    }

    v12 = *(v10 + 14032);
    if (IO80211_io80211isSensitiveInfoAllowed())
    {
      v13 = *(*(a1 + 9) + 14086);
    }

    if (IO80211_io80211isSensitiveInfoAllowed())
    {
      v14 = *(*(a1 + 9) + 14087);
    }

    if (IO80211_io80211isSensitiveInfoAllowed())
    {
      v15 = *(*(a1 + 9) + 14088);
    }

    if (IO80211_io80211isSensitiveInfoAllowed())
    {
      v16 = *(*(a1 + 9) + 14089);
    }

    if (IO80211_io80211isSensitiveInfoAllowed())
    {
      v17 = *(*(a1 + 9) + 14090);
    }

    v18 = IO80211_io80211isSensitiveInfoAllowed();
    v19 = *(a1 + 9);
    if (v18)
    {
      v20 = *(v19 + 14091);
    }

    v24 = *(v19 + 14036);
    result = io80211_os_log();
    v22 = 0;
    *(*(a1 + 9) + 12152) = 0;
    v23 = *(a1 + 9);
    *(v23 + 14088) = 0;
    *(v23 + 14056) = 0u;
    *(v23 + 14072) = 0u;
    *(v23 + 14024) = 0u;
    *(v23 + 14040) = 0u;
    *(v23 + 13992) = 0u;
    *(v23 + 14008) = 0u;
  }

  else
  {
    result = (*(*a1 + 1952))(a1);
    if (result)
    {
      (*(*a1 + 1952))(a1);
      v22 = 1;
      result = CCLogStream::shouldLog();
      if (result)
      {
        result = AppleBCMWLANCore::postRoamCompletionStatus(a1);
      }
    }

    else
    {
      v22 = 1;
    }
  }

  *(*(a1 + 9) + 14160) = v22;
  return result;
}

uint64_t AppleBCMWLANCore::buildRoamCompletionStatus(uint64_t *a1, IO80211BSSBeacon *a2)
{
  *(a1[9] + 13992) = mapBcmStatusToApple80211IOReturnScan(0);
  *(a1[9] + 14020) = AppleBCMWLANRoamAdapter::getCurrentRoamProfile(*(a1[9] + 5568));
  CurrentBSS = AppleBCMWLANBssManager::getCurrentBSS(*(a1[9] + 5432));
  v5 = CurrentBSS;
  if (CurrentBSS)
  {
    v6 = (*(*CurrentBSS + 184))(CurrentBSS);
    if (v6)
    {
      *(a1[9] + 14048) = *v6;
      *(a1[9] + 14049) = *(v6 + 1);
      *(a1[9] + 14050) = *(v6 + 2);
      v7 = a1[9];
      v8 = *(v6 + 4);
      *(v7 + 14080) = *v6;
      *(v7 + 14084) = v8;
    }

    IO80211BssManager::getCurrentRSSI(*(a1[9] + 5432), (a1[9] + 14024));
    *(a1[9] + 14032) = (*(*v5 + 256))(v5);
    (*(*v5 + 264))(v5);
    ChanSpecConvToApple80211Channel();
    *(a1[9] + 14040) = -1431655766;
    *(a1[9] + 14072) = AppleBCMWLANCore::getBssPhyModde(a1, v5);
  }

  if ((*(*a2 + 696))(a2))
  {
    *(a1[9] + 14016) |= 1u;
  }

  if ((*(*a2 + 704))(a2))
  {
    *(a1[9] + 14016) |= 2u;
  }

  if ((*(*a2 + 648))(a2))
  {
    *(a1[9] + 14016) |= 4u;
  }

  if ((*(*a2 + 712))(a2))
  {
    *(a1[9] + 14016) |= 0x10u;
  }

  if ((*(*a2 + 728))(a2))
  {
    *(a1[9] + 14016) |= 0x20u;
  }

  if ((*(*a2 + 720))(a2))
  {
    *(a1[9] + 14016) |= 8u;
  }

  if ((*(*a2 + 752))(a2))
  {
    *(a1[9] + 14016) |= 0x40u;
  }

  v9 = (*(*a2 + 184))(a2);
  if (v9)
  {
    *(a1[9] + 14051) = *v9;
    *(a1[9] + 14052) = *(v9 + 1);
    *(a1[9] + 14053) = *(v9 + 2);
    v10 = a1[9] + 14086;
    v11 = *v9;
    *(v10 + 4) = *(v9 + 4);
    *v10 = v11;
  }

  *(a1[9] + 14028) = IO80211BSSBeacon::getRSSI(a2);
  *(a1[9] + 14036) = (*(*a2 + 256))(a2);
  *(a1[9] + 14076) = AppleBCMWLANCore::getBssPhyModde(a1, a2);
  (*(*a2 + 264))(a2);
  ChanSpecConvToApple80211Channel();
  *(a1[9] + 14044) = -1431655766;
  mach_continuous_time();
  absolutetime_to_nanoseconds();
  *(a1[9] + 14008) = 0;
  if (v5 && AppleBCMWLANCore::isColocatedRoam(a1, v5, a2))
  {
    *(a1[9] + 14016) |= 0x80u;
  }

  v12 = a1[9];
  if (*(v12 + 12153) == 1)
  {
    if ((*(*a1 + 1952))(a1))
    {
      (*(*a1 + 1952))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::buildRoamCompletionStatus(a1);
      }
    }

    *(a1[9] + 14108) = *(a1[9] + 12164);
    *(a1[9] + 14112) = *(a1[9] + 12168);
    *(a1[9] + 14116) = *(a1[9] + 12172);
    *(a1[9] + 14120) = *(a1[9] + 12176);
    *(a1[9] + 14124) = *(a1[9] + 12180);
    *(a1[9] + 14128) = *(a1[9] + 12184);
    *(a1[9] + 14132) = *(a1[9] + 12188);
    v12 = a1[9];
  }

  v13 = v12 + 600 * *(v12 + 14164);
  v15 = *(v12 + 14008);
  v14 = *(v12 + 14024);
  *(v13 + 12192) = *(v12 + 13992);
  *(v13 + 12208) = v15;
  *(v13 + 12224) = v14;
  v17 = *(v12 + 14056);
  v16 = *(v12 + 14072);
  v18 = *(v12 + 14040);
  v19 = *(v12 + 14088);
  *(v13 + 12240) = v18;
  *(v13 + 12288) = v19;
  *(v13 + 12272) = v16;
  *(v13 + 12256) = v17;
  if (IO80211_io80211isSensitiveInfoAllowed())
  {
    v41 = *(a1[9] + 14080);
  }

  if (IO80211_io80211isSensitiveInfoAllowed())
  {
    v40 = *(a1[9] + 14081);
  }

  if (IO80211_io80211isSensitiveInfoAllowed())
  {
    v39 = *(a1[9] + 14082);
  }

  if (IO80211_io80211isSensitiveInfoAllowed())
  {
    v20 = *(a1[9] + 14083);
  }

  if (IO80211_io80211isSensitiveInfoAllowed())
  {
    v21 = *(a1[9] + 14084);
  }

  v22 = IO80211_io80211isSensitiveInfoAllowed();
  v23 = a1[9];
  if (v22)
  {
    v24 = *(v23 + 14085);
  }

  v25 = *(v23 + 14032);
  if (IO80211_io80211isSensitiveInfoAllowed())
  {
    v26 = *(a1[9] + 14086);
  }

  if (IO80211_io80211isSensitiveInfoAllowed())
  {
    v27 = *(a1[9] + 14087);
  }

  if (IO80211_io80211isSensitiveInfoAllowed())
  {
    v28 = *(a1[9] + 14088);
  }

  if (IO80211_io80211isSensitiveInfoAllowed())
  {
    v29 = *(a1[9] + 14089);
  }

  if (IO80211_io80211isSensitiveInfoAllowed())
  {
    v30 = *(a1[9] + 14090);
  }

  v31 = IO80211_io80211isSensitiveInfoAllowed();
  v32 = a1[9];
  if (v31)
  {
    v33 = *(v32 + 14091);
  }

  v38 = *(v32 + 14036);
  result = io80211_os_log();
  if (*(a1[9] + 14160) == 1)
  {
    AppleBCMWLANCore::postRoamCompletionStatus(a1);
    result = AppleBCMWLANCore::printRoamInfo(a1, *(a1[9] + 14164));
    ++*(a1[9] + 14164);
    v35 = a1[9];
    v36 = *(v35 + 14164);
    if (v36 > 2)
    {
      v36 = 0;
    }

    *(v35 + 14164) = v36;
    v37 = a1[9] + 600 * *(a1[9] + 14164);
    *(v37 + 12768) = 0;
    *(v37 + 12760) = 0;
  }

  return result;
}

uint64_t AppleBCMWLANCore::isColocatedRoam(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = 0;
  v13 = -21846;
  v12 = -1431655766;
  if (a2 && a3)
  {
    v7 = *(a1 + 72);
    v8 = *(v7 + 14044);
    v9 = *(v7 + 14040);
    if ((v8 & 0x2000) != 0 && (v9 & 0x10) != 0)
    {
      (*(*a3 + 136))(a3, &v12);
      v10 = (*(*a2 + 488))(a2);
      return (*(*a2 + 784))(a2, v10, v12 | (v13 << 32));
    }

    else
    {
      result = 0;
      if ((v8 & 0x10) != 0 && (v9 & 0x2000) != 0)
      {
        (*(*a2 + 136))(a2, &v12);
        v11 = (*(*a3 + 488))(a3);
        return (*(*a3 + 784))(a3, v11, v12 | (v13 << 32));
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::printRoamInfo(unint64_t this, uint64_t a2)
{
  v4 = this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000;
  if (!(*(*this + 1952))(this) || ((*(*this + 1952))(this), (CCLogStream::shouldLogConsole() & 1) == 0))
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      if (IO80211_io80211isSensitiveInfoAllowed())
      {
        v35 = *(*(this + 72) + 600 * a2 + 12280);
      }

      else
      {
        v35 = 0;
      }

      if (IO80211_io80211isSensitiveInfoAllowed())
      {
        v34 = *(*(this + 72) + 600 * a2 + 12281);
      }

      else
      {
        v34 = 0;
      }

      if (IO80211_io80211isSensitiveInfoAllowed())
      {
        v33 = *(*(this + 72) + 600 * a2 + 12282);
      }

      else
      {
        v33 = 0;
      }

      if (IO80211_io80211isSensitiveInfoAllowed())
      {
        v32 = *(*(this + 72) + 600 * a2 + 12283);
      }

      else
      {
        v32 = 0;
      }

      if (IO80211_io80211isSensitiveInfoAllowed())
      {
        v5 = *(*(this + 72) + 600 * a2 + 12284);
      }

      else
      {
        v5 = 0;
      }

      if (IO80211_io80211isSensitiveInfoAllowed())
      {
        v6 = *(*(this + 72) + 600 * a2 + 12285);
      }

      else
      {
        v6 = 0;
      }

      if (IO80211_io80211isSensitiveInfoAllowed())
      {
        v7 = *(*(this + 72) + 600 * a2 + 12286);
      }

      else
      {
        v7 = 0;
      }

      if (IO80211_io80211isSensitiveInfoAllowed())
      {
        v8 = *(*(this + 72) + 600 * a2 + 12287);
      }

      else
      {
        v8 = 0;
      }

      if (IO80211_io80211isSensitiveInfoAllowed())
      {
        v9 = *(*(this + 72) + 600 * a2 + 12288);
      }

      else
      {
        v9 = 0;
      }

      if (IO80211_io80211isSensitiveInfoAllowed())
      {
        v10 = *(*(this + 72) + 600 * a2 + 12289);
      }

      else
      {
        v10 = 0;
      }

      if (IO80211_io80211isSensitiveInfoAllowed())
      {
        v11 = *(*(this + 72) + 600 * a2 + 12290);
      }

      else
      {
        v11 = 0;
      }

      if (IO80211_io80211isSensitiveInfoAllowed())
      {
        v12 = *(*(this + 72) + 600 * a2 + 12291);
      }

      else
      {
        v12 = 0;
      }

      *buf = 67112706;
      v37 = 73;
      v38 = 2080;
      v39 = "printRoamInfo";
      v40 = 1024;
      v41 = 32741;
      v42 = 1024;
      v43 = v35;
      v44 = 1024;
      v45 = v34;
      v46 = 1024;
      v47 = v33;
      v48 = 1024;
      v49 = v32;
      v50 = 1024;
      v51 = v5;
      v52 = 1024;
      *v53 = v6;
      *&v53[4] = 1024;
      *&v53[6] = v7;
      LOWORD(v54) = 1024;
      *(&v54 + 2) = v8;
      HIWORD(v54) = 1024;
      *v55 = v9;
      *&v55[4] = 1024;
      *&v55[6] = v10;
      v56 = 1024;
      v57 = v11;
      v58 = 1024;
      v59 = v12;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%c [dk] %s@%d: RoamInfo: SrcBSS: %02X:%02X:%02X:%02X:%02X:%02X DstBSS: %02X:%02X:%02X:%02X:%02X:%02X \n", buf, 0x60u);
    }
  }

  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::printRoamInfo(this);
    }
  }

  if (!(*(*this + 1952))(this) || ((*(*this + 1952))(this), (CCLogStream::shouldLogConsole() & 1) == 0))
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v13 = (*(this + 72) + 600 * a2);
      v14 = v13[3056];
      v15 = v13[3057];
      v16 = v13[3058];
      v17 = v13[3059];
      v18 = v13[3195];
      v19 = stringFromReason(19, v18);
      v20 = *(this + 72);
      v21 = *(v20 + 12192 + 600 * a2 + 16) - *(v20 + 12192 + 600 * a2 + 8);
      if (*(v20 + 12192 + 600 * *(v20 + 14164) + 596))
      {
        v22 = "Yes";
      }

      else
      {
        v22 = "No";
      }

      *buf = 67111682;
      v37 = 73;
      v38 = 2080;
      v39 = "printRoamInfo";
      v40 = 1024;
      v41 = 32743;
      v42 = 1024;
      v43 = v14;
      v44 = 1024;
      v45 = v15;
      v46 = 1024;
      v47 = v16;
      v48 = 1024;
      v49 = v17;
      v50 = 1024;
      v51 = v18;
      v52 = 2080;
      *v53 = v19;
      *&v53[8] = 2048;
      v54 = v21;
      *v55 = 2080;
      *&v55[2] = v22;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%c [dk] %s@%d: OrigRSSI: %d TargetRSSI: %d OrigChannel: %d TargetChannel: %d Reason: %d %s RoamTime: %llums isScoreComputed: %s\n", buf, 0x54u);
    }
  }

  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::printRoamInfo(this, v4, a2);
    }
  }

  if (!(*(*this + 1952))(this) || ((*(*this + 1952))(this), (CCLogStream::shouldLogConsole() & 1) == 0))
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v23 = *(*(this + 72) + 600 * a2 + 12770);
      v24 = *(*(this + 72) + 600 * a2 + 12769);
      v25 = *(*(this + 72) + 600 * a2 + 12771);
      v26 = *(*(this + 72) + 600 * a2 + 12772);
      v27 = *(*(this + 72) + 600 * a2 + 12773);
      v28 = *(*(this + 72) + 600 * a2 + 12774);
      v29 = *(*(this + 72) + 600 * a2 + 12776);
      v30 = *(*(this + 72) + 600 * a2 + 12777);
      *buf = 67111682;
      v37 = 73;
      v38 = 2080;
      v39 = "printRoamInfo";
      v40 = 1024;
      v41 = 32745;
      v42 = 1024;
      v43 = v23;
      v44 = 1024;
      v45 = v24;
      v46 = 1024;
      v47 = v25;
      v48 = 1024;
      v49 = v26;
      v50 = 1024;
      v51 = v27;
      v52 = 1024;
      *v53 = v28;
      *&v53[4] = 1024;
      *&v53[6] = v29;
      LOWORD(v54) = 1024;
      *(&v54 + 2) = v30;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%c [dk] %s@%d: NumRoamScanAttempts: %d NumFullBand: %d NumPartial:%d NumRoamAborts: %d NumRoamOperationTimeouts: %d NumRoamOperationFailed: %d PacketsLost AQM: %d PacketLost SubQ: %d \n", buf, 0x48u);
    }
  }

  result = (*(*this + 1952))(this);
  if (result)
  {
    (*(*this + 1952))(this);
    result = CCLogStream::shouldLog();
    if (result)
    {
      return AppleBCMWLANCore::printRoamInfo(this, v4, a2);
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::checkForBeaconProtectionSupport(AppleBCMWLANCore *this)
{
  result = AppleBCMWLANCore::featureFlagIsBitSet(this, 105);
  if (result)
  {
    return (*(*(this + 9) + 17522) >> 1) & 1;
  }

  return result;
}

BOOL AppleBCMWLANCore::isPassiveChanSpec(AppleBCMWLANCore *this, uint64_t a2)
{
  AppleBCMWLANChanSpec::getAppleChannelSpec(*(*(this + 9) + 17744), a2);
  ChanSpecConvToApple80211Channel();
  BandForChanSpec = IO80211_getBandForChanSpec(0);
  return AppleBCMWLANCore::isPassiveChannel(this, 0, BandForChanSpec, 0, 0, 0);
}

BOOL AppleBCMWLANCore::isPassiveChannel(uint64_t a1, int a2, int a3, int a4, int a5, int a6)
{
  v6 = *(a1 + 72);
  v7 = v6 + 19916;
  v8 = *(v6 + 19916);
  if (*(v6 + 19916))
  {
    v9 = (v6 + 26320);
    v10 = (v7 + 802);
    v11 = 1;
    v12 = v8;
    v13 = 1;
    v14 = v10;
    while (1)
    {
      v15 = *v14++;
      if (v15 == a2 && v9[400] == (a3 == 1) && v10[1200] == 1)
      {
        if (v10[1600] || v10[2000])
        {
          if (v10[1600] == a4)
          {
            return v13;
          }

          v16 = v10[2000];
        }

        else
        {
          if (!a4 || !*v9)
          {
            return v13;
          }

          v16 = 0;
        }

        if (v16 == a5 || *v9 == a6)
        {
          return v13;
        }
      }

      v13 = v11++ < v8;
      ++v9;
      v10 = v14;
      if (!--v12)
      {
        return v13;
      }
    }
  }

  return 0;
}

uint64_t IO80211BufferCursor::asType<unsigned short>(uint64_t *a1, uint64_t a2, const char *a3)
{
  result = IO80211BufferCursor::_asType<unsigned short>(a1, a2, a3);
  if (__CFADD__(result, v4 >> 32))
  {
    v5 = (v4 >> 63) + 1;
  }

  else
  {
    v5 = v4 >> 63;
  }

  v6 = v5 << 63 >> 63;
  if (v6 != v5 || v6 < 0)
  {
    AppleBCMWLANProximityInterface::handleEvent(result, v4);
  }

  return result;
}

IO80211Controller *AppleBCMWLANCore::postRoamCacheEvent(IO80211Controller *result, void *a2)
{
  if (a2)
  {
    v3 = result;
    *(*(result + 9) + 6575) = 0;
    v4 = *(result + 9);
    v5 = *(v4 + 11288);
    if (v5)
    {
      result = IO80211Controller::postMessage(result, v5, 0x8Au, a2, 0xD8uLL, 1);
      v4 = *(v3 + 9);
    }

    v6 = *(v4 + 11296);
    if (v6)
    {

      return IO80211Controller::postMessage(v3, v6, 0x8Au, a2, 0xD8uLL, 1);
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::dumpEventLogReportedStats(AppleBCMWLANCore *this, char a2)
{
  memset(v15, 0, sizeof(v15));
  v11[0] = v15;
  v11[1] = 0x1800180018;
  v12 = 2863311530;
  LOBYTE(v12) = a2;
  isEventBitSet = AppleBCMWLANCore::isEventBitSet(this);
  v4 = *this;
  if (isEventBitSet)
  {
    v5 = (*(v4 + 88))(this);
    if ((*(*v5 + 136))(v5))
    {
      *buf = this;
      *&v14 = AppleBCMWLANCore::handleEventLogGetAsyncCallback;
      *(&v14 + 1) = 0;
      v6 = AppleBCMWLANCommander::sendIOVarSet(*(*(this + 9) + 5408), "event_log_get");
    }

    else
    {
      v8 = *(*(this + 9) + 5408);
      *buf = &v12;
      *&v14 = 8;
      v6 = AppleBCMWLANCommander::runIOVarSet(v8, "event_log_get", buf, v11, 0);
    }

    v7 = v6;
    if (v6 != -469794535 && v6 != 0)
    {
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::dumpEventLogReportedStats(this, this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, &v12, v7);
        }
      }
    }
  }

  else
  {
    if (!(*(v4 + 1952))(this) || ((*(*this + 1952))(this), (CCLogStream::shouldLogConsole() & 1) == 0))
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109634;
        *&buf[4] = 78;
        LOWORD(v14) = 2080;
        *(&v14 + 2) = "dumpEventLogReportedStats";
        WORD5(v14) = 1024;
        HIDWORD(v14) = 52937;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%c [dk] %s@%d: Fails to dumpEventLogReportedStats as WLC_E_TRACE is not set\n", buf, 0x18u);
      }
    }

    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::dumpEventLogReportedStats(this);
      }
    }

    return 0;
  }

  return v7;
}

uint64_t AppleBCMWLANCore::collectDtimConfigFromFW(AppleBCMWLANCore *this)
{
  result = IO80211BssManager::isAssociated(*(*(this + 9) + 5432));
  if (result)
  {
    v5[0] = this;
    v5[1] = AppleBCMWLANCore::handleGetDtimParam;
    v5[2] = 0;
    v3 = *(*(this + 9) + 5408);
    v4 = 0x40000;
    result = AppleBCMWLANCommander::sendIOCtlGet(v3, 77, &kNoTxPayload, &v4, v5, 0);
    if (result)
    {
      result = (*(*this + 1952))(this);
      if (result)
      {
        (*(*this + 1952))(this);
        result = CCLogStream::shouldLog();
        if (result)
        {
          return AppleBCMWLANCore::collectDtimConfigFromFW(this);
        }
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::collectWmeParameters(AppleBCMWLANCore *this)
{
  if (!IO80211BssManager::isAssociated(*(*(this + 9) + 5432)))
  {
    return 3758097084;
  }

  v5[0] = this;
  v5[1] = AppleBCMWLANCore::handleGetWmeParams;
  v5[2] = 0;
  v2 = *(*(this + 9) + 5408);
  v4 = 0x100000;
  return AppleBCMWLANCommander::sendIOVarGet(v2, "wme_ac_sta", &kNoTxPayload, &v4, v5, 0);
}

uint64_t AppleBCMWLANCore::sendDeauthDissasocEvent(IO80211Controller *a1, uint64_t a2)
{
  v45 = -1431655766;
  v5 = (a2 + 24);
  v4 = *(a2 + 24);
  v6 = *(a2 + 8);
  v42 = *(a2 + 12);
  v43 = v4;
  v44 = *(a2 + 28);
  LOBYTE(v45) = *(a2 + 4) == 6;
  v7 = mapBcmStatusToApple80211IOReturnScan(v6);
  v8 = mapBcmReasonToApple80211IOReturnIEEEReason(*(v5 - 3));
  v41[0] = v7;
  v41[1] = v8;
  if (!(*(*a1 + 1952))(a1) || ((*(*a1 + 1952))(a1), (CCLogStream::shouldLogConsole() & 1) == 0))
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v9 = "Disassoc";
      v10 = *(a2 + 8);
      if (*(a2 + 4) == 6)
      {
        v9 = "Deauth";
      }

      v37 = v9;
      v11 = stringFromStatusInEvent(v10, 0);
      v35 = *(a2 + 2);
      v33 = *(a2 + 12);
      v39 = *(a2 + 16);
      v12 = 0;
      if (IO80211_io80211isSensitiveInfoAllowed())
      {
        v12 = *v5;
      }

      if (IO80211_io80211isSensitiveInfoAllowed())
      {
        v13 = *(a2 + 25);
      }

      else
      {
        v13 = 0;
      }

      if (IO80211_io80211isSensitiveInfoAllowed())
      {
        v14 = *(a2 + 26);
      }

      else
      {
        v14 = 0;
      }

      if (IO80211_io80211isSensitiveInfoAllowed())
      {
        v15 = *(a2 + 27);
      }

      else
      {
        v15 = 0;
      }

      if (IO80211_io80211isSensitiveInfoAllowed())
      {
        v16 = *(a2 + 28);
      }

      else
      {
        v16 = 0;
      }

      if (IO80211_io80211isSensitiveInfoAllowed())
      {
        v17 = *(a2 + 29);
      }

      else
      {
        v17 = 0;
      }

      *buf = 67112706;
      v47 = 73;
      v48 = 2080;
      v49 = "sendDeauthDissasocEvent";
      v50 = 1024;
      v51 = 22807;
      v52 = 2080;
      v53 = v37;
      v54 = 2048;
      v55 = v10;
      v56 = 2080;
      v57 = v11;
      v58 = 2048;
      v59 = v33;
      v60 = 1024;
      v61 = v35;
      v62 = 2048;
      v63 = v39;
      v64 = 1024;
      v65 = v12;
      v66 = 1024;
      v67 = v13;
      v68 = 1024;
      v69 = v14;
      v70 = 1024;
      v71 = v15;
      v72 = 1024;
      v73 = v16;
      v74 = 1024;
      v75 = v17;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%c [dk] %s@%d: Reason: %s,  status = %lu %s, IEEE reason = %lu, flags = 0x%x, authtype = %lu, addr = %02X:%02X:%02X:%02X:%02X:%02X\n", buf, 0x74u);
    }
  }

  if ((*(*a1 + 1952))(a1))
  {
    (*(*a1 + 1952))(a1);
    if (CCLogStream::shouldLog())
    {
      v21 = (*(*a1 + 1952))(a1);
      v22 = "Disassoc";
      v23 = *(a2 + 8);
      if (*(a2 + 4) == 6)
      {
        v22 = "Deauth";
      }

      v38 = v22;
      v40 = v21;
      v24 = stringFromStatusInEvent(v23, 0);
      v25 = *(a2 + 2);
      v26 = *(a2 + 16);
      v34 = *(a2 + 12);
      v36 = v24;
      v27 = 0;
      if (IO80211_io80211isSensitiveInfoAllowed())
      {
        v27 = *v5;
      }

      if (IO80211_io80211isSensitiveInfoAllowed())
      {
        v28 = *(a2 + 25);
      }

      else
      {
        v28 = 0;
      }

      if (IO80211_io80211isSensitiveInfoAllowed())
      {
        v29 = *(a2 + 26);
      }

      else
      {
        v29 = 0;
      }

      if (IO80211_io80211isSensitiveInfoAllowed())
      {
        v30 = *(a2 + 27);
      }

      else
      {
        v30 = 0;
      }

      if (IO80211_io80211isSensitiveInfoAllowed())
      {
        v31 = *(a2 + 28);
      }

      else
      {
        v31 = 0;
      }

      if (IO80211_io80211isSensitiveInfoAllowed())
      {
        v32 = *(a2 + 29);
      }

      else
      {
        v32 = 0;
      }

      CCLogStream::logInfo(v40, "[dk] %s@%d:Reason: %s,  status = %lu %s, IEEE reason = %lu, flags = 0x%x, authtype = %lu, addr = %02X:%02X:%02X:%02X:%02X:%02X\n", "sendDeauthDissasocEvent", 22807, v38, v23, v36, v34, v25, v26, v27, v28, v29, v30, v31, v32);
    }
  }

  v18 = *(a1 + 9);
  v19 = *(v18 + 11288);
  if (v19)
  {
    IO80211Controller::postMessage(a1, v19, 0xCBu, v41, 0x14uLL, 1);
    v18 = *(a1 + 9);
  }

  result = *(v18 + 5416);
  if (result)
  {
    return AppleBCMWLANJoinAdapter::handleDeauthDisassocEvent(result, *(a2 + 12));
  }

  return result;
}

uint64_t AppleBCMWLANCore::handleDeauthData(IO80211Controller *a1, uint64_t a2)
{
  AppleBCMWLANCore::sendDeauthDissasocEvent(a1, a2);

  return AppleBCMWLANCore::handleExtendedEventData(a1, a2);
}

uint64_t AppleBCMWLANCore::processAuthEvenData(AppleBCMWLANCore *a1, uint64_t a2)
{
  result = AppleBCMWLAN_isDevFusedOrCSRInternal();
  if (result)
  {
    if ((allowWiFiDebug(void)::checked & 1) == 0)
    {
      allowWiFiDebug(void)::checked = 1;
      result = IOParseBootArgNumber("wlan.debug.enable", &allowWiFiDebug(void)::debugEnasbled, 4);
    }

    if (a2)
    {
      if (allowWiFiDebug(void)::debugEnasbled)
      {
        if (!*(a2 + 8))
        {
          v5 = *(a2 + 20);
          if (v5 >= 4)
          {
            result = (*(*a1 + 1952))(a1);
            if (result)
            {
              (*(*a1 + 1952))(a1);
              result = CCLogStream::shouldLog();
              if (result)
              {
                v16 = (*(*a1 + 1952))(a1);
                result = CCLogStream::logNotice(v16, "[dk] %s@%d: event auth type %d datalength %u ", "processAuthEvenData", 56593, *(a2 + 16), v5);
              }
            }

            if (*(a2 + 48) == 1 && v5 >= *(a2 + 50))
            {
              v6 = v5;
              if (v5 >= 4u)
              {
                v7 = 0;
                v8 = 0;
                v9 = (a2 + 52);
                while (1)
                {
                  v10 = *v9;
                  v11 = v9[1];
                  v17 = 0;
                  result = AppleBCMWLANCore::safe_align_up(a1, v11 + 4, 4uLL, &v17);
                  if (result)
                  {
                    return AppleBCMWLANCore::processAuthEvenData(a1);
                  }

                  v12 = v17;
                  if (v17 >= 0xFFFF)
                  {
                    break;
                  }

                  if (v10 == 2)
                  {
                    if (v11 == 16)
                    {
                      memcpy((*(a1 + 9) + 292), v9 + 2, v11);
                      if ((*(*a1 + 1952))(a1))
                      {
                        (*(*a1 + 1952))(a1);
                        if (CCLogStream::shouldLog())
                        {
                          AppleBCMWLANCore::processAuthEvenData(a1);
                        }
                      }

                      result = (*(*a1 + 1952))(a1);
                      if (result && ((*(*a1 + 1952))(a1), result = CCLogStream::shouldLog(), result))
                      {
                        result = AppleBCMWLANCore::processAuthEvenData(a1);
                        if (v8)
                        {
                          return result;
                        }
                      }

                      else if (v8)
                      {
                        return result;
                      }

                      v8 = 0;
                      v7 = 1;
                    }

                    else
                    {
                      result = (*(*a1 + 1952))(a1);
                      if (result)
                      {
                        (*(*a1 + 1952))(a1);
                        result = CCLogStream::shouldLog();
                        if (result)
                        {
                          result = AppleBCMWLANCore::processAuthEvenData(a1);
                        }
                      }
                    }
                  }

                  else if (v10 == 1)
                  {
                    if ((v11 - 32) > 0x20)
                    {
                      result = (*(*a1 + 1952))(a1);
                      if (result)
                      {
                        (*(*a1 + 1952))(a1);
                        result = CCLogStream::shouldLog();
                        if (result)
                        {
                          result = AppleBCMWLANCore::processAuthEvenData(a1);
                        }
                      }
                    }

                    else
                    {
                      memcpy((*(a1 + 9) + 223), v9 + 2, v11);
                      *(*(a1 + 9) + 288) = v11;
                      if ((*(*a1 + 1952))(a1))
                      {
                        (*(*a1 + 1952))(a1);
                        if (CCLogStream::shouldLog())
                        {
                          AppleBCMWLANCore::processAuthEvenData(a1);
                        }
                      }

                      v13 = 0;
                      v14 = v11 >> 4;
                      do
                      {
                        result = (*(*a1 + 1952))(a1);
                        if (result)
                        {
                          (*(*a1 + 1952))(a1);
                          result = CCLogStream::shouldLog();
                          if (result)
                          {
                            result = AppleBCMWLANCore::processAuthEvenData(a1);
                          }
                        }

                        ++v13;
                      }

                      while (v14 != v13);
                      if (v7)
                      {
                        return result;
                      }

                      v7 = 0;
                      v8 = 1;
                    }
                  }

                  LOWORD(v5) = v5 - v12;
                  v9 = (v9 + v12);
                  if (v6 <= v12)
                  {
                    v15 = 0;
                  }

                  else
                  {
                    v15 = v5;
                  }

                  v6 = v15;
                  if (v15 <= 3u)
                  {
                    return result;
                  }
                }

                return AppleBCMWLANCore::processAuthEvenData(a1);
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::retrieveExcessPMParams(uint64_t *a1, uint64_t a2, _DWORD *a3)
{
  if (a2)
  {
    result = (*(**(a1[9] + 5392) + 368))(*(a1[9] + 5392));
    if (result == 4399 || result == 4388)
    {
      *a3 = 1;
      return result;
    }

    if (*(a2 + 20) <= 7u)
    {
      result = (*(*a1 + 1952))(a1);
      if (result)
      {
        (*(*a1 + 1952))(a1);
        result = CCLogStream::shouldLog();
        if (result)
        {
          return AppleBCMWLANCore::retrieveExcessPMParams(a1);
        }
      }

      return result;
    }

    if ((*(*a1 + 1952))(a1))
    {
      (*(*a1 + 1952))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::retrieveExcessPMParams(a1);
      }
    }

    removePropertyHelper(a1, "PM ALERT event");
    v8 = *(a2 + 20);
    if (v8 >= 0x700)
    {
      v9 = 1792;
    }

    else
    {
      v9 = v8;
    }

    v10 = OSData::withBytes(a2, v9);
    result = setPropertyHelper(a1, "PM ALERT event", v10);
    if (v10)
    {
      result = (v10->release)(v10);
    }

    *a3 = 1;
    if (*(a2 + 48) == 3)
    {
      v12 = (a2 + 52);
      v11 = *(a2 + 52);
      result = (*(*a1 + 1952))(a1);
      if (v11 > 7)
      {
        switch(v11)
        {
          case 8:
            if (result)
            {
              (*(*a1 + 1952))(a1);
              result = CCLogStream::shouldLog();
              if (result)
              {
                return AppleBCMWLANCore::retrieveExcessPMParams(a1);
              }
            }

            break;
          case 16:
            if (result)
            {
              (*(*a1 + 1952))(a1);
              result = CCLogStream::shouldLog();
              if (result)
              {
                return AppleBCMWLANCore::retrieveExcessPMParams(a1);
              }
            }

            break;
          case 32:
            if (result)
            {
              (*(*a1 + 1952))(a1);
              result = CCLogStream::shouldLog();
              if (result)
              {
                return AppleBCMWLANCore::retrieveExcessPMParams(a1);
              }
            }

            break;
          default:
            goto LABEL_49;
        }
      }

      else
      {
        if (v11 != 1)
        {
          if (v11 == 2)
          {
            if (result)
            {
              (*(*a1 + 1952))(a1);
              result = CCLogStream::shouldLog();
              if (result)
              {
                return AppleBCMWLANCore::retrieveExcessPMParams(a1);
              }
            }

            return result;
          }

          if (v11 == 4)
          {
            if (result)
            {
              (*(*a1 + 1952))(a1);
              result = CCLogStream::shouldLog();
              if (result)
              {
                return AppleBCMWLANCore::retrieveExcessPMParams(a1);
              }
            }

            return result;
          }

LABEL_49:
          if (result)
          {
            (*(*a1 + 1952))(a1);
            result = CCLogStream::shouldLog();
            if (result)
            {
              return AppleBCMWLANCore::retrieveExcessPMParams(a1);
            }
          }

          return result;
        }

        if (result)
        {
          (*(*a1 + 1952))(a1);
          result = CCLogStream::shouldLog();
          if (result)
          {
            result = AppleBCMWLANCore::retrieveExcessPMParams(a1);
          }
        }

        v13 = *(a2 + 50);
        if (v13 < 8 || *(a2 + 20) < v13)
        {
          result = (*(*a1 + 1952))(a1);
          if (result)
          {
            (*(*a1 + 1952))(a1);
            result = CCLogStream::shouldLog();
            if (result)
            {
              return AppleBCMWLANCore::retrieveExcessPMParams(a1);
            }
          }
        }

        else
        {
          if (v13 >= 0x701)
          {
            result = (*(*a1 + 1952))(a1);
            if (result)
            {
              (*(*a1 + 1952))(a1);
              result = CCLogStream::shouldLog();
              if (result)
              {
                return AppleBCMWLANCore::retrieveExcessPMParams(a1);
              }
            }

            return result;
          }

          v14 = v13 - 8;
          if (v13 == 8)
          {
            return result;
          }

          v101 = 0;
          v100 = 0;
          v102 = 0;
          v103 = 0;
          v15 = (a2 + 56);
          while (1)
          {
            if (v14 <= 3)
            {
              result = (*(*a1 + 1952))(a1);
              if (result)
              {
                (*(*a1 + 1952))(a1);
                result = CCLogStream::shouldLog();
                if (result)
                {
                  return AppleBCMWLANCore::retrieveExcessPMParams(a1);
                }
              }

              return result;
            }

            v16 = v15 + 1;
            v17 = v15[1];
            if (v14 < v17)
            {
              result = (*(*a1 + 1952))(a1);
              if (result)
              {
                (*(*a1 + 1952))(a1);
                result = CCLogStream::shouldLog();
                if (result)
                {
                  v78 = (*(*a1 + 1952))(a1);
                  v97 = *v16;
                  return CCLogStream::logAlert(v78, "[dk] %s@%d:PM ALERT: Incorrect remlength %d remaining, length in TLV %d Report issue. Bailing.\n");
                }
              }

              return result;
            }

            v18 = *v15;
            if (v18 <= 4)
            {
              if (*v15 <= 1u)
              {
                if (*v15)
                {
                  if (v17 <= 0xF)
                  {
                    result = (*(*a1 + 1952))(a1);
                    if (result)
                    {
                      (*(*a1 + 1952))(a1);
                      result = CCLogStream::shouldLog();
                      if (result)
                      {
                        v84 = (*(*a1 + 1952))(a1);
                        v93 = *v16;
                        return CCLogStream::logAlert(v84, "[dk] %s@%d:PM ALERT: Incorrect PM state length %d remaining. Expected minimum length is %ld. Rem length %d. Report issue. Bailing.\n");
                      }
                    }

                    return result;
                  }

                  v21 = (v17 & 0xFFF8) - 24;
                  if (v17 <= 0x18)
                  {
                    v22 = 24;
                  }

                  else
                  {
                    v22 = v15[1];
                  }

                  if (v17 <= 0x18)
                  {
                    v21 = 0;
                  }

                  if (v22 - 24 != v21)
                  {
                    result = (*(*a1 + 1952))(a1);
                    if (result)
                    {
                      (*(*a1 + 1952))(a1);
                      result = CCLogStream::shouldLog();
                      if (result)
                      {
                        return AppleBCMWLANCore::retrieveExcessPMParams(a1);
                      }
                    }

                    return result;
                  }

                  if (*(v15 + 4))
                  {
                    v23 = 0;
                    do
                    {
                      result = (*(*a1 + 1952))(a1);
                      if (result)
                      {
                        (*(*a1 + 1952))(a1);
                        result = CCLogStream::shouldLog();
                        if (result)
                        {
                          result = AppleBCMWLANCore::retrieveExcessPMParams(a1);
                        }
                      }

                      ++v23;
                    }

                    while (v23 < *(v15 + 4));
                  }

                  v102 = v15;
                }

                else
                {
                  result = (*(*a1 + 1952))(a1);
                  if (v17 <= 0x4B)
                  {
                    if (result)
                    {
                      (*(*a1 + 1952))(a1);
                      result = CCLogStream::shouldLog();
                      if (result)
                      {
                        v82 = (*(*a1 + 1952))(a1);
                        v91 = *v16;
                        return CCLogStream::logAlert(v82, "[dk] %s@%d:PM ALERT: Incorrect PM alert fixed length %d. Expected length %ld. Rem length %d. Report issue. Bailing.\n");
                      }
                    }

                    return result;
                  }

                  if (result)
                  {
                    (*(*a1 + 1952))(a1);
                    result = CCLogStream::shouldLog();
                    if (result)
                    {
                      result = AppleBCMWLANCore::retrieveExcessPMParams(a1);
                    }
                  }

                  v37 = *(v15 + 1);
                  v36 = *(v15 + 2);
                  v38 = v36 - v37;
                  if (v36 > v37)
                  {
                    v40 = *(v15 + 3);
                    v39 = *(v15 + 4);
                    v32 = v39 >= v40;
                    v41 = v39 - v40;
                    if (v32)
                    {
                      v42 = v38 - v41;
                      v43 = v38 < v41;
                      v101 = v42;
                      v44 = 100 * v42;
                      v45 = (v44 & 0xFFFFFFFF00000000) != 0 || v43;
                      v46 = v44 / v38;
                      result = (*(*a1 + 1952))(a1);
                      if (result)
                      {
                        (*(*a1 + 1952))(a1);
                        result = CCLogStream::shouldLog();
                        if (result)
                        {
                          v76 = (*(*a1 + 1952))(a1);
                          result = CCLogStream::logAlert(v76, "[dk] %s@%d:PM ALERT: Awake time: %u Total time: %u Duty cycle %u\n", "retrieveExcessPMParams", 49694, v101, v38, v46);
                        }
                      }

                      if ((v100 | v45))
                      {
                        if ((*(*a1 + 1952))(a1))
                        {
                          (*(*a1 + 1952))(a1);
                          if (CCLogStream::shouldLog())
                          {
                            AppleBCMWLANCore::retrieveExcessPMParams(a1);
                          }
                        }

                        result = (*(*a1 + 1952))(a1);
                        if (result)
                        {
                          (*(*a1 + 1952))(a1);
                          result = CCLogStream::shouldLog();
                          if (result)
                          {
                            v77 = (*(*a1 + 1952))(a1);
                            result = CCLogStream::logEmergency(v77, "[dk] %s@%d:PM ALERT 0x%08x:\n\tPrev Stats Time: %u, Current Time: %u\n\tPrev PM Dur: %u Prev MPC Dur: %u Current PM Dur %u Current MPC Dur %u\n\tHw-MACC: %u Sw-MACC: %u\n\tDrift: last=%u min=%u avg=%u max=%u ct=%u\n", "retrieveExcessPMParams", 49717, *v12, *(v15 + 1), *(v15 + 2), *(v15 + 3), *(v15 + 5), *(v15 + 4), *(v15 + 6), *(v15 + 7), *(v15 + 8), *(v15 + 9), *(v15 + 10), *(v15 + 12), *(v15 + 11), *(v15 + 13));
                          }
                        }

                        v100 = 1;
                      }

                      else
                      {
                        v100 = 0;
                        if (v46 < *(a1[9] + 17756))
                        {
                          *a3 = 0;
                        }
                      }
                    }
                  }
                }
              }

              else
              {
                switch(v18)
                {
                  case 2u:
                    if (v17 < 8)
                    {
                      result = (*(*a1 + 1952))(a1);
                      if (!result)
                      {
                        return result;
                      }

                      (*(*a1 + 1952))(a1);
                      result = CCLogStream::shouldLog();
                      if (!result)
                      {
                        return result;
                      }

                      goto LABEL_296;
                    }

                    if ((v17 & 3) != 0)
                    {
                      result = (*(*a1 + 1952))(a1);
                      if (result)
                      {
                        (*(*a1 + 1952))(a1);
                        result = CCLogStream::shouldLog();
                        if (result)
                        {
                          return AppleBCMWLANCore::retrieveExcessPMParams(a1);
                        }
                      }

                      return result;
                    }

                    v48 = v17 - 4;
                    if (v17 - 4 >= 4)
                    {
                      v71 = 0;
                      v72 = v48 >> 2;
                      v73 = 6;
                      do
                      {
                        if ((*(*a1 + 1952))(a1))
                        {
                          (*(*a1 + 1952))(a1);
                          if (CCLogStream::shouldLog())
                          {
                            v74 = (*(*a1 + 1952))(a1);
                            v75 = pmReasonStr(*&v102[v73]);
                            CCLogStream::logInfo(v74, "[dk] %s@%d:\tWL_PMALERT_EVENT_DUR Duration of %d %s is %u", "retrieveExcessPMParams", 49825, v71, v75, *&v15[2 * v71 + 2]);
                          }
                        }

                        result = (*(*a1 + 1952))(a1);
                        if (result)
                        {
                          (*(*a1 + 1952))(a1);
                          result = CCLogStream::shouldLog();
                          if (result)
                          {
                            result = AppleBCMWLANCore::retrieveExcessPMParams(a1);
                          }
                        }

                        ++v71;
                        v73 += 4;
                      }

                      while (v72 != v71);
                    }

                    v103 = v15;
                    break;
                  case 3u:
                    result = (*(*a1 + 1952))(a1);
                    if (v17 <= 0x10F)
                    {
                      if (result)
                      {
                        (*(*a1 + 1952))(a1);
                        result = CCLogStream::shouldLog();
                        if (result)
                        {
                          v81 = (*(*a1 + 1952))(a1);
                          v90 = *v16;
                          return CCLogStream::logAlert(v81, "[dk] %s@%d:PM ALERT: Incorrect PM ucode dbg length %d remaining. Expected minimum length is %ld. Rem length %d. Report issue. Bailing.\n");
                        }
                      }

                      return result;
                    }

                    if (result)
                    {
                      (*(*a1 + 1952))(a1);
                      result = CCLogStream::shouldLog();
                      if (result)
                      {
                        result = AppleBCMWLANCore::retrieveExcessPMParams(a1);
                      }
                    }

                    break;
                  case 4u:
                    if (v17 < 0x10)
                    {
                      result = (*(*a1 + 1952))(a1);
                      if (result)
                      {
                        (*(*a1 + 1952))(a1);
                        result = CCLogStream::shouldLog();
                        if (result)
                        {
                          v80 = (*(*a1 + 1952))(a1);
                          v89 = *v16;
                          return CCLogStream::logAlert(v80, "[dk] %s@%d:PM ALERT: Incorrect PS Hist length %d remaining. Expected minimum length is %ld. Rem length %d. Report issue. Bailing.\n");
                        }
                      }

                      return result;
                    }

                    if ((v17 & 7) != 0)
                    {
                      result = (*(*a1 + 1952))(a1);
                      if (result)
                      {
                        (*(*a1 + 1952))(a1);
                        result = CCLogStream::shouldLog();
                        if (result)
                        {
                          return AppleBCMWLANCore::retrieveExcessPMParams(a1);
                        }
                      }

                      return result;
                    }

                    break;
                  default:
                    goto LABEL_178;
                }
              }

              goto LABEL_239;
            }

            if (*v15 > 6u)
            {
              switch(v18)
              {
                case 7u:
                  result = (*(*a1 + 1952))(a1);
                  if (v17 <= 0x111)
                  {
                    if (result)
                    {
                      (*(*a1 + 1952))(a1);
                      result = CCLogStream::shouldLog();
                      if (result)
                      {
                        v85 = (*(*a1 + 1952))(a1);
                        v94 = *v16;
                        return CCLogStream::logAlert(v85, "[dk] %s@%d:PM ALERT: Incorrect PM ucode dbg2 length %d remaining. Expected minimum length is %ld. Rem length %d. Report issue. Bailing.\n");
                      }
                    }

                    return result;
                  }

                  if (result)
                  {
                    (*(*a1 + 1952))(a1);
                    if (CCLogStream::shouldLog())
                    {
                      AppleBCMWLANCore::retrieveExcessPMParams(a1);
                    }
                  }

                  for (i = 0; i != 20; ++i)
                  {
                    if ((*(*a1 + 1952))(a1))
                    {
                      (*(*a1 + 1952))(a1);
                      if (CCLogStream::shouldLog())
                      {
                        AppleBCMWLANCore::retrieveExcessPMParams(a1);
                      }
                    }
                  }

                  for (j = 0; j != 20; ++j)
                  {
                    if ((*(*a1 + 1952))(a1))
                    {
                      (*(*a1 + 1952))(a1);
                      if (CCLogStream::shouldLog())
                      {
                        AppleBCMWLANCore::retrieveExcessPMParams(a1);
                      }
                    }
                  }

                  v57 = 0;
                  v58 = v15 + 93;
                  do
                  {
                    for (k = 0; k != 12; ++k)
                    {
                      if ((*(*a1 + 1952))(a1))
                      {
                        (*(*a1 + 1952))(a1);
                        if (CCLogStream::shouldLog())
                        {
                          v60 = (*(*a1 + 1952))(a1);
                          CCLogStream::logInfoIf(v60, 0x20uLL, "[dk] %s@%d:\t M_P2P_BSS[%d][%d] %u", "retrieveExcessPMParams", 49962, v57, k, v58[k]);
                        }
                      }
                    }

                    ++v57;
                    v58 += 12;
                  }

                  while (v57 != 3);
                  for (m = 0; m != 3; ++m)
                  {
                    if ((*(*a1 + 1952))(a1))
                    {
                      (*(*a1 + 1952))(a1);
                      if (CCLogStream::shouldLog())
                      {
                        AppleBCMWLANCore::retrieveExcessPMParams(a1);
                      }
                    }
                  }

                  result = (*(*a1 + 1952))(a1);
                  if (result)
                  {
                    (*(*a1 + 1952))(a1);
                    result = CCLogStream::shouldLog();
                    if (result)
                    {
                      result = AppleBCMWLANCore::retrieveExcessPMParams(a1);
                    }
                  }

                  break;
                case 8u:
                  result = (*(*a1 + 1952))(a1);
                  if (v17 <= 0x3F)
                  {
                    if (result)
                    {
                      (*(*a1 + 1952))(a1);
                      result = CCLogStream::shouldLog();
                      if (result)
                      {
                        v83 = (*(*a1 + 1952))(a1);
                        v92 = *v16;
                        return CCLogStream::logAlert(v83, "[dk] %s@%d:PM ALERT: Incorrect WL_PMALERT_FIXED_SC length %d remaining. Expected minimum length is %ld. Rem length %d. Report issue. Bailing.\n");
                      }
                    }

                    return result;
                  }

                  if (result)
                  {
                    (*(*a1 + 1952))(a1);
                    result = CCLogStream::shouldLog();
                    if (result)
                    {
                      result = AppleBCMWLANCore::retrieveExcessPMParams(a1);
                    }
                  }

                  break;
                case 9u:
                  result = (*(*a1 + 1952))(a1);
                  if (v17 <= 0x109)
                  {
                    if (result)
                    {
                      (*(*a1 + 1952))(a1);
                      result = CCLogStream::shouldLog();
                      if (result)
                      {
                        v87 = (*(*a1 + 1952))(a1);
                        v96 = *v16;
                        return CCLogStream::logAlert(v87, "[dk] %s@%d:PM ALERT: Incorrect wl_pmalert_ucode_dbg_sc_v1 length %d remaining. Expected minimum length is %ld. Rem length %d. Report issue. Bailing.\n");
                      }
                    }

                    return result;
                  }

                  if (result)
                  {
                    (*(*a1 + 1952))(a1);
                    if (CCLogStream::shouldLog())
                    {
                      AppleBCMWLANCore::retrieveExcessPMParams(a1);
                    }
                  }

                  for (n = 0; n != 20; ++n)
                  {
                    if ((*(*a1 + 1952))(a1))
                    {
                      (*(*a1 + 1952))(a1);
                      if (CCLogStream::shouldLog())
                      {
                        v20 = (*(*a1 + 1952))(a1);
                        CCLogStream::logAlert(v20, "\t psmdebug[%d] %u", n, *&v15[2 * n + 13]);
                      }
                    }
                  }

                  for (ii = 0; ii != 20; ++ii)
                  {
                    if ((*(*a1 + 1952))(a1))
                    {
                      (*(*a1 + 1952))(a1);
                      if (CCLogStream::shouldLog())
                      {
                        v63 = (*(*a1 + 1952))(a1);
                        CCLogStream::logAlert(v63, "\t phydebug[%d] %u", ii, *&v15[2 * ii + 53]);
                      }
                    }
                  }

                  v64 = 0;
                  v65 = v15 + 93;
                  do
                  {
                    for (jj = 0; jj != 12; ++jj)
                    {
                      if ((*(*a1 + 1952))(a1))
                      {
                        (*(*a1 + 1952))(a1);
                        if (CCLogStream::shouldLog())
                        {
                          v67 = (*(*a1 + 1952))(a1);
                          CCLogStream::logAlert(v67, "\t M_P2P_BSS[%d][%d] %u", v64, jj, v65[jj]);
                        }
                      }
                    }

                    ++v64;
                    v65 += 12;
                  }

                  while (v64 != 3);
                  for (kk = 0; kk != 3; ++kk)
                  {
                    if ((*(*a1 + 1952))(a1))
                    {
                      (*(*a1 + 1952))(a1);
                      if (CCLogStream::shouldLog())
                      {
                        v69 = (*(*a1 + 1952))(a1);
                        CCLogStream::logAlert(v69, "\t M_P2P_PRE_TBTT[%d] %u", kk, v15[kk + 129]);
                      }
                    }
                  }

                  result = (*(*a1 + 1952))(a1);
                  if (result)
                  {
                    (*(*a1 + 1952))(a1);
                    result = CCLogStream::shouldLog();
                    if (result)
                    {
                      result = AppleBCMWLANCore::retrieveExcessPMParams(a1);
                    }
                  }

                  break;
                default:
                  goto LABEL_178;
              }

              goto LABEL_239;
            }

            if (v18 == 5)
            {
              break;
            }

            if (v18 != 6)
            {
LABEL_178:
              result = (*(*a1 + 1952))(a1);
              if (result)
              {
                (*(*a1 + 1952))(a1);
                result = CCLogStream::shouldLog();
                if (result)
                {
                  result = AppleBCMWLANCore::retrieveExcessPMParams(a1);
                }
              }

              goto LABEL_239;
            }

            if (v17 < 8)
            {
              result = (*(*a1 + 1952))(a1);
              if (!result)
              {
                return result;
              }

              (*(*a1 + 1952))(a1);
              result = CCLogStream::shouldLog();
              if (!result)
              {
                return result;
              }

LABEL_296:
              v86 = (*(*a1 + 1952))(a1);
              v95 = *v15;
              v98 = v15[1];
              return CCLogStream::logAlert(v86, "[dk] %s@%d:PM ALERT: Incorrect Event %d Duration length %d remaining. Expected minimum Length %ld. Rem length %d. Report issue. Bailing.\n");
            }

            if ((v17 & 3) != 0)
            {
              result = (*(*a1 + 1952))(a1);
              if (result)
              {
                (*(*a1 + 1952))(a1);
                result = CCLogStream::shouldLog();
                if (result)
                {
                  return AppleBCMWLANCore::retrieveExcessPMParams(a1);
                }
              }

              return result;
            }

            if (v17 - 4 >= 4)
            {
              v24 = 0;
              v25 = (v17 - 4) >> 2;
              v26 = v15 + 2;
              v27 = 6;
              do
              {
                if ((*(*a1 + 1952))(a1))
                {
                  (*(*a1 + 1952))(a1);
                  if (CCLogStream::shouldLog())
                  {
                    v99 = (*(*a1 + 1952))(a1);
                    v35 = pmReasonStr(*&v102[v27]);
                    CCLogStream::logInfo(v99, "[dk] %s@%d:\tWL_PMALERT_EPM_START_EVENT_DUR of Reason %d (%s) is %u", "retrieveExcessPMParams", 49859, v24, v35, *&v26[2 * v24]);
                  }
                }

                v28 = *&v102[v27];
                if (v28 == 256)
                {
                  if (v103)
                  {
                    goto LABEL_118;
                  }
                }

                else if (v28 == 512 && v103 != 0)
                {
LABEL_118:
                  v30 = *&v103[2 * v24 + 2];
                  v31 = *&v26[2 * v24];
                  v32 = v30 >= v31;
                  v33 = v30 - v31;
                  if (v33 != 0 && v32)
                  {
                    v34 = a1[9];
                    if (v33 >= v101 >> 1)
                    {
                      *(v34 + 6592) = 1;
                      if ((*(*a1 + 1952))(a1))
                      {
                        (*(*a1 + 1952))(a1);
                        if (CCLogStream::shouldLog())
                        {
                          AppleBCMWLANCore::retrieveExcessPMParams(a1);
                        }
                      }
                    }

                    else
                    {
                      *(v34 + 6592) = 0;
                    }
                  }
                }

                result = (*(*a1 + 1952))(a1);
                if (result)
                {
                  (*(*a1 + 1952))(a1);
                  result = CCLogStream::shouldLog();
                  if (result)
                  {
                    result = AppleBCMWLANCore::retrieveExcessPMParams(a1);
                  }
                }

                ++v24;
                v27 += 4;
              }

              while (v25 != v24);
            }

LABEL_239:
            v70 = v15[1];
            v32 = v14 >= v70;
            v14 -= v70;
            if (!v32)
            {
              result = (*(*a1 + 1952))(a1);
              if (result)
              {
                (*(*a1 + 1952))(a1);
                result = CCLogStream::shouldLog();
                if (result)
                {
                  return AppleBCMWLANCore::retrieveExcessPMParams(a1);
                }
              }

              return result;
            }

            v15 = (v15 + v15[1]);
            if (!v14)
            {
              return result;
            }
          }

          result = (*(*a1 + 1952))(a1);
          if (v17 > 0x10F)
          {
            if (result)
            {
              (*(*a1 + 1952))(a1);
              if (CCLogStream::shouldLog())
              {
                AppleBCMWLANCore::retrieveExcessPMParams(a1);
              }
            }

            for (mm = 0; mm != 20; ++mm)
            {
              if ((*(*a1 + 1952))(a1))
              {
                (*(*a1 + 1952))(a1);
                if (CCLogStream::shouldLog())
                {
                  AppleBCMWLANCore::retrieveExcessPMParams(a1);
                }
              }
            }

            for (nn = 0; nn != 20; ++nn)
            {
              if ((*(*a1 + 1952))(a1))
              {
                (*(*a1 + 1952))(a1);
                if (CCLogStream::shouldLog())
                {
                  AppleBCMWLANCore::retrieveExcessPMParams(a1);
                }
              }
            }

            v51 = 0;
            v52 = v15 + 93;
            do
            {
              for (i1 = 0; i1 != 12; ++i1)
              {
                if ((*(*a1 + 1952))(a1))
                {
                  (*(*a1 + 1952))(a1);
                  if (CCLogStream::shouldLog())
                  {
                    v54 = (*(*a1 + 1952))(a1);
                    CCLogStream::logAlertIf(v54, 0x20uLL, "[dk] %s@%d:\t M_P2P_BSS[%d][%d] %u", "retrieveExcessPMParams", 49933, v51, i1, v52[i1]);
                  }
                }
              }

              ++v51;
              v52 += 12;
            }

            while (v51 != 3);
            for (i2 = 0; i2 != 3; ++i2)
            {
              if ((*(*a1 + 1952))(a1))
              {
                (*(*a1 + 1952))(a1);
                if (CCLogStream::shouldLog())
                {
                  AppleBCMWLANCore::retrieveExcessPMParams(a1);
                }
              }
            }

            result = (*(*a1 + 1952))(a1);
            if (result)
            {
              (*(*a1 + 1952))(a1);
              result = CCLogStream::shouldLog();
              if (result)
              {
                result = AppleBCMWLANCore::retrieveExcessPMParams(a1);
              }
            }

            goto LABEL_239;
          }

          if (result)
          {
            (*(*a1 + 1952))(a1);
            result = CCLogStream::shouldLog();
            if (result)
            {
              v79 = (*(*a1 + 1952))(a1);
              v88 = *v16;
              return CCLogStream::logAlert(v79, "[dk] %s@%d:PM ALERT: Incorrect PM ucode dbg1 length %d remaining. Expected minimum length is %ld. Rem length %d. Report issue. Bailing.\n");
            }
          }
        }
      }
    }
  }

  else
  {
    result = (*(*a1 + 1952))(a1);
    if (result)
    {
      (*(*a1 + 1952))(a1);
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANCore::retrieveExcessPMParams(a1);
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::handleLinkDown(AppleBCMWLANCore *this)
{
  if (AppleBCMWLANCore::featureFlagIsBitSet(this, 29))
  {
    (*(*this + 560))(this);
  }

  AppleBCMWLANRoamAdapter::restoreReassocParams(*(*(this + 9) + 5568));
  AppleBCMWLANCore::setBeaconListenInterval(this);
  v2 = *(this + 9);
  if (*(v2 + 30092) == 1)
  {
    AppleBCMWLANCore::setupTrafficMonitoring(this, 0);
    v2 = *(this + 9);
  }

  *(v2 + 17812) = 0;
  result = AppleBCMWLANCore::setLMTPC(this);
  *(*(this + 9) + 19784) = 0;
  v4 = *(this + 9);
  if (*(v4 + 11296))
  {
    if (*(v4 + 222) == 1)
    {
      *(v4 + 222) = 0;
      result = AppleBCMWLANProximityInterface::bringupLink(*(*(this + 9) + 11296));
      if (result)
      {
        result = (*(*this + 1952))(this);
        if (result)
        {
          (*(*this + 1952))(this);
          result = CCLogStream::shouldLog();
          if (result)
          {
            return AppleBCMWLANCore::handleLinkDown(this);
          }
        }
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::handleCCAOnlyChanQualEvent(uint64_t *a1, uint64_t a2)
{
  v4 = IOMallocZeroData();
  v5 = IOMallocZeroData();
  v6 = v5;
  memset(v40, 170, 20);
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v38 = v7;
  v39 = v7;
  *&v37 = 0xAAAAAAAAAAAAAAAALL;
  *(&v37 + 1) = 0xAAAAAAAAAAAAAAAALL;
  if (v4 && v5)
  {
    v8 = *(a2 + 20);
    if (v8 <= 7)
    {
      if ((*(*a1 + 1952))(a1))
      {
        (*(*a1 + 1952))(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::handleCCAOnlyChanQualEvent(a1);
        }
      }

      goto LABEL_50;
    }

    v11 = (a2 + 50);
    v10 = *(a2 + 50);
    switch(v10)
    {
      case 512:
        v12 = 68;
        break;
      case 1280:
        v12 = 80;
        break;
      case 1024:
        v12 = 72;
        break;
      default:
        if ((*(*a1 + 1952))(a1))
        {
          (*(*a1 + 1952))(a1);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::handleCCAOnlyChanQualEvent(a1);
          }
        }

        goto LABEL_50;
    }

    if (v8 > 0x50 || v8 < v12)
    {
      if ((*(*a1 + 1952))(a1))
      {
        (*(*a1 + 1952))(a1);
        if (CCLogStream::shouldLog())
        {
          v28 = (*(*a1 + 1952))(a1);
          v35 = *(a2 + 20);
          CCLogStream::logAlert(v28, "[dk] %s@%d:Invalid wle message length=%u, expected_min=%u expected_max=%u\n");
        }
      }

      goto LABEL_50;
    }

    memcpy(v5, (a2 + 48), v12);
    v14 = v6 + 2;
    v13 = v6[2];
    if (v13)
    {
      v15 = v6[4] + v6[3] + v6[5];
      v16 = 100 * v15 / v13;
      v38 = 0u;
      v39 = 0u;
      v40[0] = 0;
      BYTE4(v38) = 1;
      LODWORD(v38) = 16;
      AppleChannelSpec = AppleBCMWLANChanSpec::getAppleChannelSpec(*(a1[9] + 17744), *(v6 + 2));
      ChanSpecConvToApple80211Channel();
      *(&v38 + 1) = v40[1];
      LODWORD(v39) = v40[2];
      v18 = *(a1[9] + 5432);
      IO80211BssManager::getCurrentBand();
      if ((*(*a1 + 1952))(a1))
      {
        (*(*a1 + 1952))(a1);
        if (CCLogStream::shouldLog())
        {
          v31 = (*(*a1 + 1952))(a1);
          v32 = AppleBCMWLANChanSpec::convToAscii(AppleChannelSpec, v4, 0x20u);
          CCLogStream::logInfo(v31, "[dk] %s@%d:ChanSpec %s CCA %d%% duration: %d congest_me: %d congest_notme: %d interference: %d ts: %d\n", "handleCCAOnlyChanQualEvent", 24500, v32, v16, v6[2], v6[3], v6[4], v6[5], v6[6]);
        }
      }

      if (*v14 < v15 || *v14 > 0x2710)
      {
        if (AppleBCMWLANCore::featureFlagIsBitSet(a1, 70))
        {
          goto LABEL_52;
        }

        if ((*(*a1 + 1952))(a1))
        {
          (*(*a1 + 1952))(a1);
          if (CCLogStream::shouldLog())
          {
            v30 = (*(*a1 + 1952))(a1);
            v36 = *v14;
            CCLogStream::logAlert(v30, "[dk] %s@%d:handleCCAOnlyChanQualEvent: Invalid cca_busy_dur %d ccaSum %d\n");
          }
        }

        goto LABEL_50;
      }

      IO80211Controller::setChanCCA();
      v19 = *(a1[9] + 5432);
      if (!IO80211BssManager::getCurrentChannel() && ChanSpecGetPrimaryChannel() == -1431655766 && AppleChannelSpec >> 14 == 3)
      {
        AppleBCMWLANLQM::updateCCAStats(*(a1[9] + 5608), v6 + 2, v6 + 12, v6 + 7);
        v20 = *v11;
        if (v20 == 1024)
        {
          AppleBCMWLANLQM::updateOFDMDesense(*(a1[9] + 5608), v6[17]);
          v21 = *(a1[9] + 11288);
          if (v21 && ((*(*v21 + 800))(v21, v40[1], LODWORD(v40[2]), v6[17]) & 1) == 0)
          {
            if (AppleBCMWLANCore::handleCCAOnlyChanQualEvent(a1))
            {
              goto LABEL_50;
            }

            v33 = 24520;
            goto LABEL_65;
          }

          v20 = *v11;
        }

        if (v20 != 1280)
        {
          goto LABEL_52;
        }

        AppleBCMWLANLQM::updateOFDMDesense(*(a1[9] + 5608), v6[17]);
        *(a1[9] + 31136) = 0;
        v22 = a1[9];
        v23 = *(v22 + 11288);
        if (!v23)
        {
          goto LABEL_39;
        }

        if ((*(*v23 + 800))(v23, v40[1], LODWORD(v40[2]), v6[17]))
        {
          v22 = a1[9];
LABEL_39:
          v24 = v22 + 28672;
          v25 = v6[17];
          if (*(v24 + 2468) != v25 || *(v24 + 2472) != v6[18] || v6[19])
          {
            *(v24 + 2468) = v25;
            *(a1[9] + 31144) = v6[18];
            *(a1[9] + 31148) = v6[19];
            v26 = a1[9];
            v37 = *(v26 + 31136);
            v27 = *(v26 + 11288);
            if (v27)
            {
              IO80211Controller::postMessage(a1, v27, 0xB9u, &v37, 0x10uLL, 1);
            }
          }

          goto LABEL_52;
        }

        if (AppleBCMWLANCore::handleCCAOnlyChanQualEvent(a1))
        {
LABEL_50:
          v29 = *(a1[9] + 5536);
          if (v29)
          {
            CCFaultReporter::reportFault(v29, 4u, "/Library/Caches/com.apple.xbs/Sources/AppleBCMWLANV3_driverkit/AppleBCMWLANCore.cpp", 0x5FEEu, "handleCCAOnlyChanQualEvent", 0, -469793488, 0);
          }

          goto LABEL_52;
        }

        v33 = 24529;
LABEL_65:
        v34 = (*(*a1 + 1952))(a1);
        CCLogStream::logEmergency(v34, "[dk] %s@%d:fInfraSkywalkInterface->setInterfaceOFDMDesense failed\n", "handleCCAOnlyChanQualEvent", v33);
        goto LABEL_50;
      }
    }

    else if ((*(*a1 + 1952))(a1))
    {
      (*(*a1 + 1952))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::handleCCAOnlyChanQualEvent(a1);
      }
    }
  }

  else
  {
    result = (*(*a1 + 1952))(a1);
    if (result)
    {
      (*(*a1 + 1952))(a1);
      result = CCLogStream::shouldLog();
      if (result)
      {
        result = AppleBCMWLANCore::handleCCAOnlyChanQualEvent(a1);
      }
    }

    if (!v6)
    {
      if (!v4)
      {
        return result;
      }

      return IOFreeData();
    }
  }

LABEL_52:
  result = IOFreeData();
  if (v4)
  {
    return IOFreeData();
  }

  return result;
}

uint64_t AppleBCMWLANCore::completePeerCacheControl(IO80211Controller *a1, uint64_t a2, IO80211SkywalkInterface *a3)
{
  v6 = IOMallocZeroData();
  if (!v6)
  {
    AppleBCMWLANCore::completePeerCacheControl();
  }

  v7 = *(a2 + 4);
  if (v7 == 6)
  {
LABEL_5:
    if (*(*(a1 + 9) + 1020) != 2)
    {
      goto LABEL_10;
    }

    v8 = 1;
    goto LABEL_9;
  }

  if (v7 != 2)
  {
    if (v7)
    {
      goto LABEL_10;
    }

    goto LABEL_5;
  }

  if (*(*(a1 + 9) + 1020) != 2)
  {
    goto LABEL_10;
  }

  v8 = 3;
LABEL_9:
  v9 = *(a2 + 8);
  *(v6 + 12) = *(a2 + 12);
  *(v6 + 4) = v8;
  *(v6 + 8) = v9;
  *(v6 + 14) = *(a2 + 14);
  IO80211Controller::postMessage(a1, a3, 0x33u, v6, 0x1D0uLL, 1);
LABEL_10:

  return IOFreeData();
}

__n128 AppleBCMWLANCore::handleGetWmeParams(uint64_t *a1, uint64_t a2, int a3, __n128 **a4)
{
  if (a3)
  {
    if ((*(*a1 + 1952))(a1))
    {
      (*(*a1 + 1952))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::handleGetWmeParams(a1);
      }
    }
  }

  else if (*a4)
  {
    result = **a4;
    *(a1[9] + 19753) = result;
  }

  return result;
}

uint64_t AppleBCMWLANCore::enableTxQueues(AppleBCMWLANCore *this)
{
  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::enableTxQueues(this);
    }
  }

  atomic_fetch_or((*(this + 9) + 10376), 0x10000u);
  v2 = *(**(*(this + 9) + 5392) + 352);

  return v2();
}

uint64_t *AppleBCMWLANCore::disableTxQueues(uint64_t *this)
{
  atomic_fetch_and((this[9] + 10376), 0xFFFEFFFF);
  if ((*(this[9] + 10376) & 0x80) == 0)
  {
    v1 = this;
    this = (*(*this + 1952))(this);
    if (this)
    {
      (*(*v1 + 1952))(v1);
      this = CCLogStream::shouldLog();
      if (this)
      {
        return AppleBCMWLANCore::disableTxQueues(v1);
      }
    }
  }

  return this;
}

uint64_t AppleBCMWLANCore::configureMonitorModeToFW(AppleBCMWLANCore *this, uint64_t a2)
{
  v10 = a2;
  v9[0] = &v10;
  v9[1] = 4;
  v4 = this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000;
  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::configureMonitorModeToFW(this, v4, a2);
    }
  }

  v8 = *(*(this + 9) + 18297);
  io80211_os_log();
  v5 = AppleBCMWLANCommander::runIOCtlSet(*(*(this + 9) + 5408), 108, v9, 0, 0);
  v6 = *(this + 9);
  if (v5)
  {
    CCFaultReporter::reportFault(*(v6 + 5536), 4u, "/Library/Caches/com.apple.xbs/Sources/AppleBCMWLANV3_driverkit/AppleBCMWLANCore.cpp", 0x61CFu, "configureMonitorModeToFW", 0, -469793491, 0, a2, v8);
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::configureMonitorModeToFW(this);
      }
    }
  }

  else
  {
    *(v6 + 18297) = a2;
  }

  return v5;
}

uint64_t AppleBCMWLANCore::updateInterruptStats(uint64_t this, uint64_t a2, uint64_t a3)
{
  *(*(this + 72) + 4416) = a2;
  *(*(this + 72) + 4424) = a3;
  return this;
}

uint64_t AppleBCMWLANCore::setCLEAR_PMKSA_CACHE(AppleBCMWLANCore *this)
{
  v2 = (*(**(*(this + 9) + 11288) + 1072))(*(*(this + 9) + 11288));
  *v4.octet = v2;
  *&v4.octet[4] = WORD2(v2);
  return AppleBCMWLANCore::setCurEtheraddr(this, &v4);
}

uint64_t AppleBCMWLANCore::setCurEtheraddr(AppleBCMWLANCore *this, ether_addr *a2)
{
  if (IO80211BssManager::isAssociated(*(*(this + 9) + 5432)))
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      v4 = 3825172764;
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setCurEtheraddr(this);
      }
    }

    else
    {
      return 3825172764;
    }
  }

  else if (AppleBCMWLANJoinAdapter::isJoining(*(*(this + 9) + 5416)))
  {
    v4 = 3825172752;
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setCurEtheraddr(this);
      }
    }
  }

  else if (AppleBCMWLANGASAdapter::isBusy(*(*(this + 9) + 5472)))
  {
    v4 = 3825172752;
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setCurEtheraddr(this);
      }
    }
  }

  else
  {
    AppleBCMWLANCore::waitForGasAbortIfNeeded(this);
    v6 = *this;
    if (!(*a2->octet | *&a2->octet[4]) || (a2->octet[0] & 1) != 0)
    {
      v4 = 3758097090;
      if ((*(v6 + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::setCurEtheraddr(this);
        }
      }
    }

    else
    {
      v7 = (*(v6 + 88))(this);
      if ((*(*v7 + 136))(v7))
      {
        v8 = IOMallocZeroTyped();
        if (v8)
        {
          v9 = v8;
          v10 = *a2->octet;
          *(v8 + 4) = *&a2->octet[4];
          *v8 = v10;
          v12 = this;
          v13 = AppleBCMWLANCore::setMacAddressAsyncCallback;
          v14 = v8;
          v4 = AppleBCMWLANCommander::sendIOVarSet(*(*(this + 9) + 5408), "cur_etheraddr");
          if (v4)
          {
            if ((*(*this + 1952))(this))
            {
              (*(*this + 1952))(this);
              if (CCLogStream::shouldLog())
              {
                AppleBCMWLANCore::setCurEtheraddr(this);
              }
            }

            IOFree(v9, 6uLL);
          }
        }

        else if ((*(*this + 1952))(this))
        {
          (*(*this + 1952))(this);
          v4 = 1;
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::setCurEtheraddr(this);
          }
        }

        else
        {
          return 1;
        }
      }

      else
      {
        v11 = *(*(this + 9) + 5408);
        v12 = a2;
        v13 = 6;
        v4 = AppleBCMWLANCommander::runIOVarSet(v11, "cur_etheraddr", &v12, 0, 0);
        if (v4)
        {
          if ((*(*this + 1952))(this))
          {
            (*(*this + 1952))(this);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANCore::setCurEtheraddr(this);
            }
          }
        }

        else
        {
          AppleBCMWLANCore::setMacAddressComplete(this, a2);
        }
      }
    }
  }

  return v4;
}

uint64_t AppleBCMWLANCore::_setAllMulticastModeEnable(unint64_t this, int a2)
{
  v3 = *(this + 72);
  v4 = *(v3 + 564);
  if (a2)
  {
    if (v4 && AppleBCMWLANCore::cleanFWMulticastList(this))
    {
      AppleBCMWLANCore::_setAllMulticastModeEnable(this);
      return v6;
    }

    result = AppleBCMWLANCore::setAllMulticast(this, 1);
    if (result)
    {
      AppleBCMWLANCore::_setAllMulticastModeEnable(this);
      return v6;
    }
  }

  else if (v4)
  {
    result = (*(*this + 528))(this, v3 + 568);
    if (result)
    {
      AppleBCMWLANCore::_setAllMulticastModeEnable(this, this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, result, &v6);
      return v6;
    }
  }

  else
  {
    result = AppleBCMWLANCore::setAllMulticast(this, 0);
    if (result)
    {
      AppleBCMWLANCore::_setAllMulticastModeEnable(this);
      return v6;
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::cleanFWMulticastList(AppleBCMWLANCore *this)
{
  if ((*(*(this + 9) + 10377) & 0x80) != 0)
  {
    return 3766630404;
  }

  if (AppleBCMWLANCore::isRejectingCommands(this))
  {
    return 0;
  }

  v9 = 0;
  v4 = *(*(this + 9) + 5408);
  v7[0] = &v8;
  v7[1] = 12;
  v8 = 0;
  v5 = AppleBCMWLANCommander::runIOVarSet(v4, "mcast_list", v7, 0, 0);
  v2 = v5;
  if (v5 != -536870173 && v5 != 0)
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::cleanFWMulticastList(this);
      }
    }
  }

  return v2;
}

uint64_t AppleBCMWLANCore::setAllMulticast(AppleBCMWLANCore *this, int a2)
{
  if ((*(*(this + 9) + 10377) & 0x80) != 0)
  {
    return 3766630404;
  }

  if (AppleBCMWLANCore::isRejectingCommands(this))
  {
    return 0;
  }

  v10 = a2;
  v6 = *(*(this + 9) + 5408);
  v9[0] = &v10;
  v9[1] = 4;
  v7 = AppleBCMWLANCommander::runIOVarSet(v6, "allmulti", v9, 0, 0);
  v4 = v7;
  if (v7 != -536870173 && v7 != 0)
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setAllMulticast(this);
      }
    }
  }

  return v4;
}

uint64_t AppleBCMWLANCore::setMulticastMode(AppleBCMWLANCore *this, char a2)
{
  if ((*(*(this + 9) + 10377) & 0x80) != 0)
  {
    return 3766630404;
  }

  v4 = 0;
  if (!AppleBCMWLANCore::isRejectingCommands(this) && (a2 & 1) == 0)
  {
    v4 = AppleBCMWLANCore::setAllMulticast(this, 0);
    if (!v4)
    {
      v11 = 0;
      v5 = *(*(this + 9) + 5408);
      v9[0] = &v10;
      v9[1] = 12;
      v10 = 0;
      v6 = AppleBCMWLANCommander::runIOVarSet(v5, "mcast_list", v9, 0, 0);
      v4 = v6;
      if (v6 != -536870173 && v6 != 0)
      {
        if ((*(*this + 1952))(this))
        {
          (*(*this + 1952))(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::setMulticastMode(this);
          }
        }
      }
    }
  }

  return v4;
}

uint64_t AppleBCMWLANCore::isCommandProhibited(AppleBCMWLANCore *this, int a2)
{
  v2 = *(this + 9);
  if (*(v2 + 18412) & 1) != 0 || (*(v2 + 18413))
  {
    return 58;
  }

  result = 0;
  if (a2 > 424)
  {
    if (a2 <= 488)
    {
      if ((a2 - 425) <= 0x3D)
      {
        v5 = 1 << (a2 + 87);
        v6 = 0x299E300021202631;
LABEL_12:
        if ((v5 & v6) != 0)
        {
          return result;
        }
      }

LABEL_32:
      if ((*(v2 + 10376) & 1) != 0 && *(v2 + 19852) == 4)
      {
        return AppleBCMWLANCore::isCommandAllowedInRestrictedMode(this, a2);
      }

      else
      {
        return AppleBCMWLANCore::isRejectingCommands(this);
      }
    }

    if (((a2 - 489) > 0x2D || ((1 << (a2 + 23)) & 0x200000201825) == 0) && a2 != 557 && a2 != 575)
    {
      goto LABEL_32;
    }
  }

  else
  {
    if (a2 <= 190)
    {
      if (a2 > 0x2C)
      {
        goto LABEL_7;
      }

      if (((1 << a2) & 0x180010800206) != 0)
      {
        return result;
      }

      if (a2 != 12)
      {
        if (a2 != 19)
        {
LABEL_7:
          if ((a2 - 94) <= 0x3F)
          {
            v5 = 1 << (a2 - 94);
            v6 = 0xC00000000020120FLL;
            goto LABEL_12;
          }

          goto LABEL_32;
        }

        if ((*(v2 + 10377) & 0x20) != 0)
        {
          return 3766622209;
        }
      }

      return *(v2 + 5464) == 0;
    }

    if (a2 > 292)
    {
      if (((a2 - 348) > 0x36 || ((1 << (a2 - 92)) & 0x48000800200801) == 0) && a2 != 293)
      {
        goto LABEL_32;
      }
    }

    else if (((a2 - 191) > 0x3F || ((1 << (a2 + 65)) & 0x8003000001000003) == 0) && a2 != 265)
    {
      goto LABEL_32;
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::isCommandAllowedInRestrictedMode(AppleBCMWLANCore *this, int a2)
{
  if (a2 > 206)
  {
    if (((a2 - 207) > 0x3E || ((1 << (a2 + 49)) & 0x41800000000000D3) == 0) && ((a2 - 323) > 0x21 || ((1 << (a2 - 67)) & 0x200240001) == 0) && ((a2 - 418) > 0x1F || ((1 << (a2 + 94)) & 0x80004001) == 0))
    {
      return AppleBCMWLANCore::isRejectingCommands(this);
    }

    return 0;
  }

  if ((a2 - 116) <= 0x2A && ((1 << (a2 - 116)) & 0x4CA081D6667) != 0 || a2 == 51 || a2 == 205)
  {
    return 0;
  }

  return AppleBCMWLANCore::isRejectingCommands(this);
}

BOOL AppleBCMWLANCore::isPoweringOff(AppleBCMWLANCore *this)
{
  v1 = *(this + 9);
  v2 = *(v1 + 10376);
  if ((v2 & 0x10000000) == 0)
  {
    return 0;
  }

  if (v2)
  {
    return *(v1 + 19852) == 0;
  }

  return 1;
}

uint64_t AppleBCMWLANCore::createNANMgmtDataInterface(IOService *this, uint64_t a2)
{
  v3 = this[1].OSObject::OSObjectInterface::__vftable;
  if (v3[1871].free)
  {
    if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
    {
      (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::createNANMgmtDataInterface(this);
      }
    }

    return 0;
  }

  LODWORD(v3[2224].init) = 9;
  v5 = this[1].OSObject::OSObjectInterface::__vftable + 2225;
  v6 = *(a2 + 4);
  WORD2(v5->init) = *(a2 + 8);
  LODWORD(v5->init) = v6;
  LOBYTE(this[1].OSObject::OSObjectInterface::__vftable[2223].free) = 1;
  v4 = IOService::Create(this, this, "DriverKit_IO80211NAN", &this[1].OSObject::OSObjectInterface::__vftable[1871].free, 0);
  if (v4)
  {
    return v4;
  }

  free = this[1].OSObject::OSObjectInterface::__vftable[1871].free;
  v9 = this->OSObject::OSMetaClassBase::__vftable;
  if (free)
  {
    (v9[8].isEqualTo)(this, free, this);
    return 0;
  }

  v4 = 3758097084;
  if ((v9[34].free)(this))
  {
    (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::createNANMgmtDataInterface(this);
    }
  }

  return v4;
}

uint64_t AppleBCMWLANCore::createNANDataInterface(IOService *this, uint64_t a2)
{
  v3 = this[1].OSObject::OSObjectInterface::__vftable;
  if (v3[1872].init)
  {
    if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
    {
      (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::createNANDataInterface(this);
      }
    }

    return 0;
  }

  LODWORD(v3[2224].init) = 10;
  v5 = this[1].OSObject::OSObjectInterface::__vftable + 2225;
  v6 = *(a2 + 4);
  WORD2(v5->init) = *(a2 + 8);
  LODWORD(v5->init) = v6;
  LOBYTE(this[1].OSObject::OSObjectInterface::__vftable[2223].free) = 1;
  v4 = IOService::Create(this, this, "DriverKit_IO80211NANIR", &this[1].OSObject::OSObjectInterface::__vftable[1872], 0);
  if (v4)
  {
    return v4;
  }

  init = this[1].OSObject::OSObjectInterface::__vftable[1872].init;
  v9 = this->OSObject::OSMetaClassBase::__vftable;
  if (init)
  {
    (v9[8].isEqualTo)(this, init, this);
    return 0;
  }

  v4 = 3758097084;
  if ((v9[34].free)(this))
  {
    (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::createNANDataInterface(this);
    }
  }

  return v4;
}

IO80211SkywalkInterface *AppleBCMWLANCore::getProximityInterfaceId(AppleBCMWLANCore *this)
{
  result = *(*(this + 9) + 11296);
  if (result)
  {
    return IO80211SkywalkInterface::getInterfaceId(result);
  }

  return result;
}

uint64_t AppleBCMWLANCore::createProxInterface(uint64_t *a1, uint64_t a2)
{
  v11 = 0x100000000;
  IOParseBootArgNumber("wlan.awdl.create_by_driver", &v11, 4);
  IOParseBootArgNumber("wlan.dk.awdl", &v11 + 4, 4);
  if (v11)
  {
    v4 = a1[9];
    if (*(v4 + 11296))
    {
      if ((*(*a1 + 1952))(a1))
      {
        (*(*a1 + 1952))(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::createProxInterface(a1);
        }
      }

      return 0;
    }

    *(v4 + 35584) = 6;
    v6 = a1[9] + 35600;
    v7 = *(a2 + 4);
    *(v6 + 4) = *(a2 + 8);
    *v6 = v7;
    *(a1[9] + 35576) = 1;
    v5 = IOService::Create(a1, a1, "DriverKit_IO80211AWDL", (a1[9] + 11296), 0);
    if (v5)
    {
      return v5;
    }

    v9 = *(a1[9] + 11296);
    v10 = *a1;
    if (v9)
    {
      (*(v10 + 472))(a1, v9, a1);
      return 0;
    }

    v5 = 3758097084;
    if ((*(v10 + 1952))(a1))
    {
      (*(*a1 + 1952))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::createProxInterface(a1);
      }
    }
  }

  else
  {
    v5 = 3758097095;
    if ((*(*a1 + 1952))(a1))
    {
      (*(*a1 + 1952))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::createProxInterface(a1);
        return 3758097095;
      }
    }
  }

  return v5;
}

uint64_t AppleBCMWLANCore::commandSleepForThreadSafe(uint64_t *a1, unsigned int a2)
{
  add_explicit = atomic_fetch_add_explicit((a1[9] + 4 * a2 + 6508), 1u, memory_order_relaxed);
  clock_interval_to_deadline();
  if (!add_explicit)
  {
    return 0;
  }

  v5 = a2;
  v6 = (*(*a1 + 104))(a1);
  v7 = (*(*v6 + 80))(v6, a1[9] + 4 * a2 + 6500, 0xAAAAAAAAAAAAAAAALL);
  if (v7)
  {
    if ((*(*a1 + 1952))(a1))
    {
      (*(*a1 + 1952))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::commandSleepForThreadSafe(a1);
      }
    }

    atomic_fetch_add_explicit((a1[9] + 4 * v5 + 6508), 0xFFFFFFFF, memory_order_relaxed);
  }

  return v7;
}

uint64_t *AppleBCMWLANCore::commandWakeupForThreadSafe(uint64_t *result, unsigned int a2)
{
  if (atomic_fetch_add_explicit((result[9] + 4 * a2 + 6508), 0xFFFFFFFF, memory_order_relaxed) >= 2)
  {
    v3 = result;
    v4 = a2;
    if ((*(*result + 1952))(result))
    {
      (*(*v3 + 1952))(v3);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::commandWakeupForThreadSafe(v3);
      }
    }

    v5 = *(*(*(*v3 + 104))(v3) + 88);
    v6 = v3[9] + 4 * v4 + 6500;

    return v5();
  }

  return result;
}

uint64_t AppleBCMWLANCore::getDiagsAmpduStats(AppleBCMWLANCore *this)
{
  memset(v13, 170, sizeof(v13));
  v2 = IOMallocZeroData();
  v3 = IOMallocZeroData();
  v4 = v3;
  if (v2)
  {
    if (!v3)
    {
      v7 = 3758097084;
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::getDiagsAmpduStats(this);
        }
      }

      goto LABEL_35;
    }

    strcpy(v3, "ampdu");
    v13[2] = v3;
    v13[3] = 100;
    v13[0] = v2;
    v13[1] = 0x6400000064;
    v5 = AppleBCMWLANCommander::runIOVarGet(*(*(this + 9) + 5408), "dump", &v13[2], v13, 0);
    if (v5 == -469794535 || v5 == 0)
    {
      v8 = *(this + 9);
      if ((*(v8 + 10376) & 1) == 0)
      {
        AppleBCMWLANCore::getDiagsAmpduStats(this);
        goto LABEL_39;
      }
    }

    else
    {
      v8 = *(this + 9);
    }

    if (*(v8 + 780) >= 6u && ((strcpy(v4, "ampdu_rx"), v13[2] = v4, v13[3] = 100, v13[0] = v2, v13[1] = 0x6400000064, v9 = AppleBCMWLANCommander::runIOVarGet(*(*(this + 9) + 5408), "dump", &v13[2], v13, 0), v9 == -469794537) || !v9 || v9 == -469794535) && (*(*(this + 9) + 10376) & 1) == 0)
    {
      AppleBCMWLANCore::getDiagsAmpduStats(this);
    }

    else
    {
      v10 = AppleBCMWLANCore::dumpEventLogReportedStats(this, 6);
      if (v10 && v10 != -469794535 || (*(*(this + 9) + 10376) & 1) != 0)
      {
        v11 = AppleBCMWLANCore::dumpEventLogReportedStats(this, 7);
        if (v11 && v11 != -469794535 || (*(*(this + 9) + 10376) & 1) != 0)
        {
          if (AppleBCMWLANCore::getECounterOnDemand(this, 69) || (*(*(this + 9) + 10376) & 1) == 0)
          {
            AppleBCMWLANCore::getDiagsAmpduStats(this);
          }

          else
          {
            if (!AppleBCMWLANCore::getECounterOnDemand(this, 95) && (*(*(this + 9) + 10376) & 1) != 0)
            {
              v7 = 0;
LABEL_34:
              IOFreeData();
LABEL_35:
              IOFreeData();
              return v7;
            }

            AppleBCMWLANCore::getDiagsAmpduStats(this);
          }
        }

        else
        {
          AppleBCMWLANCore::getDiagsAmpduStats(this);
        }
      }

      else
      {
        AppleBCMWLANCore::getDiagsAmpduStats(this);
      }
    }

LABEL_39:
    v7 = v14;
    goto LABEL_34;
  }

  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::getDiagsAmpduStats(this);
    }
  }

  v7 = 3758097084;
  if (v4)
  {
    goto LABEL_35;
  }

  return v7;
}

uint64_t AppleBCMWLANCore::getECounterOnDemand(AppleBCMWLANCore *this, __int16 a2)
{
  if (AppleBCMWLANCore::featureFlagIsBitSet(this, 53))
  {
    return 0;
  }

  v5 = IOMallocZeroData();
  if (!v5)
  {
    return 12;
  }

  v6 = v5;
  if (*(*(this + 9) + 960) == 2)
  {
    *v5 = 327681;
    if (*(*(this + 9) + 780) <= 4u)
    {
      v7 = 1400;
    }

    else
    {
      v7 = 1648;
    }

    *(v5 + 4) = v7;
    *(v5 + 6) = 0x10000;
    *(v5 + 10) = 1;
    *(v5 + 12) = a2;
    v8 = *(*(this + 9) + 5408);
    v12[0] = v6;
    v12[1] = 14;
    v9 = AppleBCMWLANCommander::runIOVarSet(v8, "ecounters", v12, 0, 0);
    v4 = v9;
    if (v9 != -469794537 && v9 != 0)
    {
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::getECounterOnDemand(this);
        }
      }
    }
  }

  else
  {
    v4 = 3758097084;
  }

  IOFreeData();
  return v4;
}

uint64_t AppleBCMWLANCore::getDiags(uint64_t *a1, uint64_t a2, int *a3)
{
  if (AppleBCMWLANCore::isRejectingCommands(a1))
  {
    v5 = 3758097112;
    if ((*(*a1 + 1952))(a1))
    {
      (*(*a1 + 1952))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::getDiags(a1);
      }
    }

    return v5;
  }

  if (*(a1[9] + 970) == 1)
  {
    if ((*(*a1 + 1952))(a1))
    {
      (*(*a1 + 1952))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::getDiags(a1);
      }
    }

    return 0;
  }

  v7 = IOMallocZeroData();
  v8 = IOMallocZeroData();
  v9 = IOMallocZeroData();
  v10 = v9;
  if (!v7)
  {
    AppleBCMWLANCore::getDiags(a1);
    goto LABEL_45;
  }

  if (!v8)
  {
    AppleBCMWLANCore::getDiags(a1);
    goto LABEL_45;
  }

  if (!v9)
  {
    AppleBCMWLANCore::getDiags(a1);
    goto LABEL_45;
  }

  kdebug_trace();
  if (AppleBCMWLANCore::commandSleepForThreadSafe(a1, 0))
  {
    AppleBCMWLANCore::getDiags(a1);
LABEL_45:
    v5 = LODWORD(__b[0]);
    kdebug_trace();
    kdebug_trace();
    if (!v10)
    {
      goto LABEL_37;
    }

    goto LABEL_36;
  }

  kdebug_trace();
  if (!AppleBCMWLANCore::getCHIP_COUNTER_STATS(a1, v7))
  {
    IO80211Controller::setChipCounterStats();
  }

  if (AppleBCMWLANCore::getPowerStats(a1, v8, a3))
  {
    if ((*(*a1 + 1952))(a1))
    {
      (*(*a1 + 1952))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::getDiags(a1);
      }
    }
  }

  if (AppleBCMWLANCore::featureFlagIsBitSet(a1, 76))
  {
    if ((*(a1[9] + 18484) & 1) == 0)
    {
      memset(__b, 170, sizeof(__b));
      *a3 = 32;
      PowerStats = AppleBCMWLANCore::getPowerStats(a1, __b, a3);
      v12 = a1[9];
      v13 = __b[0];
      v14 = __b[7];
      v15 = HIDWORD(__b[50]);
      v16 = __b[60];
      *(v12 + 12056) = *(&__b[9] + 4);
      *(v12 + 12072) = *(&__b[11] + 4);
      *(v12 + 12088) = *(&__b[13] + 4);
      v17 = __b[59];
      *(v12 + 12104) = __b[42];
      *(v12 + 12048) = v13;
      *(v12 + 12052) = v14;
      *(v12 + 12116) = v17;
      *(v12 + 12124) = v16;
      *(v12 + 12112) = v15;
      if (PowerStats)
      {
        if ((*(*a1 + 1952))(a1))
        {
          (*(*a1 + 1952))(a1);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::getDiags(a1);
          }
        }
      }
    }
  }

  if (AppleBCMWLANCore::featureFlagIsBitSet(a1, 53))
  {
    if (AppleBCMWLANCore::getChipIfCounters(a1))
    {
      if ((*(*a1 + 1952))(a1))
      {
        (*(*a1 + 1952))(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::getDiags(a1);
        }
      }
    }
  }

  if (AppleBCMWLANCore::is4387C2Up(a1))
  {
    AppleBCMWLANLQM::updateInfraMuticastBroadcastDuration(*(a1[9] + 5608), v8);
  }

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 0x40000000;
  v18[2] = ___ZN16AppleBCMWLANCore8getDiagsEP13apple80211reqP22apple80211_stat_report_block_invoke;
  v18[3] = &__block_descriptor_tmp_1679;
  v18[4] = a1;
  v5 = AppleBCMWLANCore::setEcountersEnableStateSync(a1, v18, 1);
  if (v5)
  {
    if ((*(*a1 + 1952))(a1))
    {
      (*(*a1 + 1952))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::getDiags(a1);
      }
    }
  }

  kdebug_trace();
  AppleBCMWLANCore::commandWakeupForThreadSafe(a1, 0);
  kdebug_trace();
LABEL_36:
  IOFreeData();
LABEL_37:
  if (v8)
  {
    IOFreeData();
  }

  if (v7)
  {
    IOFreeData();
  }

  return v5;
}

uint64_t AppleBCMWLANCore::getCHIP_COUNTER_STATS(AppleBCMWLANCore *a1, uint64_t a2)
{
  if (*(*(a1 + 9) + 780) > 5u)
  {
    return 3758097126;
  }

  v5 = IOMallocZeroData();
  if (!v5)
  {
    return 12;
  }

  v6 = v5;
  v10 = v5;
  numBytes = 0x51405140514;
  v2 = AppleBCMWLANCommander::runIOVarGet(*(*(a1 + 9) + 5408), "counters", &kNoTxPayload, &v10, 0);
  if (!v2)
  {
    v7 = OSData::withBytes(v6, numBytes);
    *(a2 + 2312) = *(*(a1 + 9) + 30016);
    *(a2 + 2320) = *(*(a1 + 9) + 30024);
    *(a2 + 2328) = *(*(a1 + 9) + 30032);
    *(a2 + 2304) = 1;
    v2 = AppleBCMWLANCore::convertWlCntToApple80211ChipStats(a1, v7, a2);
    v8 = *(*(a1 + 9) + 5608);
    if (v8)
    {
      AppleBCMWLANLQM::updateInfraStatistics(v8, v7);
    }

    if (v7)
    {
      (v7->release)(v7);
    }
  }

  IOFreeData();
  return v2;
}

uint64_t AppleBCMWLANCore::getPowerStats(AppleBCMWLANCore *a1, _DWORD *a2, int *a3)
{
  bzero(a2, 0x2C0uLL);
  v6 = *a3;
  if (AppleBCMWLANCore::featureFlagIsBitSet(a1, 24))
  {
    v7 = 0;
    goto LABEL_18;
  }

  v7 = AppleBCMWLANCore::collectOPSEBTStatus(a1);
  if (v7)
  {
    if ((*(*a1 + 1952))(a1))
    {
      (*(*a1 + 1952))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::getPowerStats(a1);
      }
    }
  }

  if (!AppleBCMWLANCore::featureFlagIsBitSet(a1, 46))
  {
    goto LABEL_30;
  }

  if ((AppleBCMWLANCore::featureFlagIsBitSet(a1, 76) & 1) == 0 || *a3 != 32)
  {
    v8 = 1;
    do
    {
      v9 = v8;
      AppleBCMWLANCore::getPowerStatsPerSliceIndex();
      v8 = 0;
    }

    while ((v9 & 1) != 0);
    goto LABEL_14;
  }

  if ((*(*(a1 + 9) + 18484) & 1) == 0)
  {
    *a3 = 13;
LABEL_30:
    AppleBCMWLANCore::getPowerStatsPerSliceIndex();
LABEL_14:
    v7 = v10;
  }

  if (v7 != -469794537 && v6 != 32)
  {
    IO80211Controller::setPowerStats();
  }

LABEL_18:
  if (AppleBCMWLANCore::featureFlagIsBitSet(a1, 24))
  {
    v14 = 0;
    v12 = &v14;
    v13 = 0x400040004;
    if (AppleBCMWLANCommander::runIOVarGet(*(*(a1 + 9) + 5408), "mpc_dur", &kNoTxPayload, &v12, 0))
    {
      if ((*(*a1 + 1952))(a1))
      {
        (*(*a1 + 1952))(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::getPowerStats(a1);
        }
      }
    }

    else
    {
      a2[2] = v14;
      v12 = &v14;
      v13 = 0x400040004;
      if (!AppleBCMWLANCommander::runIOVarGet(*(*(a1 + 9) + 5408), "pm_dur", &kNoTxPayload, &v12, 0))
      {
        a2[1] = v14;
        v15 = 0;
        mach_continuous_time();
        absolutetime_to_nanoseconds();
        v7 = 0;
        *a2 = v15 / 0xF4240;
        return v7;
      }

      if ((*(*a1 + 1952))(a1))
      {
        (*(*a1 + 1952))(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::getPowerStats(a1);
        }
      }
    }

    return 3758097084;
  }

  return v7;
}

double AppleBCMWLANCore::setLPSCPowerStats(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 56);
  *a2 = *a3;
  *(a2 + 4) = v3;
  *(a2 + 8) = *(a3 + 76);
  *(a2 + 24) = *(a3 + 92);
  *(a2 + 40) = *(a3 + 108);
  *(a2 + 56) = *(a3 + 336);
  result = *(a3 + 472);
  *(a2 + 68) = result;
  *(a2 + 76) = *(a3 + 480);
  *(a2 + 64) = *(a3 + 404);
  *(a2 + 66) = *(a3 + 406);
  return result;
}

uint64_t AppleBCMWLANCore::handleCardSpecific(AppleBCMWLANCore *this, OSMetaClassBase *anObject, uint64_t a3, __int128 *a4)
{
  v6 = a4[1];
  v27 = *a4;
  v28 = v6;
  v29 = *(a4 + 4);
  v7 = OSMetaClassBase::safeMetaCast(anObject, gIO80211VirtualInterfaceMetaClass);
  v8 = DWORD1(v28);
  if (DWORD1(v28))
  {
    if (DWORD1(v28) != 1012)
    {
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          v20 = (*(*this + 1952))(this);
          v21 = "SIOCGA80211";
          if (a3 == 2150132168)
          {
            v21 = "SIOCSA80211";
          }

          v22 = "get";
          if (a3 == 2150132168)
          {
            v22 = "set";
          }

          CCLogStream::logNoticeIf(v20, 4uLL, "[dk] %s@%d:wl: %.16s ioctl cmd %s : %s type = %x val = %x buf %p len %u\n", "handleCardSpecific", 26360, &v27, v21, v22, v28, DWORD1(v28), v29, DWORD2(v28));
          v8 = DWORD1(v28);
        }
      }
    }
  }

  v9 = 3758097115;
  if (v8 == 1013)
  {
    v12 = *(*(this + 9) + 14248);
    if (!v12)
    {
      return 0;
    }

    ConsoleLevel = CCLogStream::getConsoleLevel(v12);
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        v23 = (*(*this + 1952))(this);
        v24 = "get";
        if (a3 == 2150132168)
        {
          v24 = "set";
        }

        CCLogStream::logNotice(v23, "[dk] %s@%d:CARD_SPECIFIC_LOG_LEVEL rlen %u val %u <%s> level %lx \n", "handleCardSpecific", 26408, DWORD2(v28), DWORD1(v28), v24, ConsoleLevel);
      }
    }

    if (DWORD2(v28) < 4)
    {
      return v9;
    }

    if (a3 == 2150132168)
    {
      v17 = *v29;
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::handleCardSpecific(this);
        }
      }

      (*(**(*(this + 9) + 14248) + 144))(*(*(this + 9) + 14248), v17);
      return 0;
    }

    if (a3 == 3223873993)
    {
      v9 = 0;
      *v29 = ConsoleLevel;
      return v9;
    }

LABEL_23:
    if (v7)
    {
      InterfaceId = IO80211SkywalkInterface::getInterfaceId(v7);
    }

    else
    {
      InterfaceId = 0;
    }

    v15 = v29;
    v9 = AppleBCMWLANCore::wlc_ioctl(this, DWORD1(v28), InterfaceId, v29, DWORD2(v28));
    if (v9)
    {
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::handleCardSpecific(this);
        }
      }
    }

    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        v16 = (*(*this + 1952))(this);
        CCLogStream::logNoticeIf(v16, 4uLL, "[dk] %s@%d:wl: wlErr = %x, copyErr = %x, req_data=%p (req_len=%d) requestBufferData[%p]\n", "handleCardSpecific", 26540, v9, 0, v29, DWORD2(v28), v15);
      }
    }

    return v9;
  }

  if (v8 == 1010)
  {
    return 3758097095;
  }

  if (v8 != 1009)
  {
    goto LABEL_23;
  }

  v10 = *(*(this + 9) + 14248);
  if (!v10)
  {
    return 0;
  }

  v11 = (*(*v10 + 160))(v10);
  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      v25 = (*(*this + 1952))(this);
      v26 = "get";
      if (a3 == 2150132168)
      {
        v26 = "set";
      }

      CCLogStream::logNotice(v25, "[dk] %s@%d:CARD_SPECIFIC_LOG_FLAGS rlen %u val %u <%s> flags %lx \n", "handleCardSpecific", 26365, DWORD2(v28), DWORD1(v28), v26, v11);
    }
  }

  if (DWORD2(v28) >= 8)
  {
    if (a3 != 2150132168)
    {
      if (a3 != 3223873993)
      {
        return 3758097084;
      }

      v9 = 0;
      *v29 = v11;
      return v9;
    }

    v18 = *v29;
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::handleCardSpecific(this);
      }
    }

    (*(**(*(this + 9) + 14248) + 152))(*(*(this + 9) + 14248), v18);
    return 0;
  }

  return v9;
}

uint64_t AppleBCMWLANCore::wlc_ioctl(AppleBCMWLANCore *this, unsigned int a2, uint64_t a3, char *a4, unsigned int a5)
{
  mach_continuous_time();
  absolutetime_to_nanoseconds();
  mach_continuous_time();
  absolutetime_to_nanoseconds();
  v10 = AppleBCMWLANCore::_wlc_ioctl(this, a2, a3, a4, a5);
  mach_continuous_time();
  absolutetime_to_nanoseconds();
  return v10;
}

uint64_t AppleBCMWLANCore::_wlc_ioctl(AppleBCMWLANCore *this, unsigned int a2, uint64_t a3, char *a4, unsigned int a5)
{
  if (a2 <= 0x34 && ((1 << a2) & 0x1000000800000CLL) != 0 || a2 - 214 <= 0x35 && ((1 << (a2 + 42)) & 0x20002000000001) != 0 || a2 == 163)
  {
    goto LABEL_13;
  }

  if (a4 && a5)
  {
    if (!a2)
    {
      if (a5 > 3)
      {
        v10 = 0;
        *a4 = 350514295;
      }

      else
      {
        v10 = 3758097090;
        if ((*(*this + 1952))(this))
        {
          (*(*this + 1952))(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::_wlc_ioctl(this);
          }
        }
      }

      return v10;
    }

LABEL_13:
    v11 = (*(*this + 1976))(this, 0xFFFFFFFFLL);
    if (v11)
    {
      v10 = v11;
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::_wlc_ioctl(this, this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, v10);
        }
      }

      return v10;
    }

    if (a3 == -1)
    {
      return 4294967277;
    }

    MaxCmdRxPayload = a5;
    MaxCmdTxPayload = a5;
    if (AppleBCMWLANCommander::getMaxCmdTxPayload(*(*(this + 9) + 5408)) <= a5)
    {
      MaxCmdTxPayload = AppleBCMWLANCommander::getMaxCmdTxPayload(*(*(this + 9) + 5408));
    }

    if ((a2 & 0xFFFFFFFE) == 0x106)
    {
      v14 = strnlen(a4, a5);
      v15 = (v14 + 1);
      if (v14 == -1 || MaxCmdTxPayload < v15)
      {
        return 3758096385;
      }

      MaxCmdTxPayload -= v15;
      v16 = &a4[v15];
      if (a2 == 262)
      {
        if (AppleBCMWLANCommander::getMaxCmdRxPayload(*(*(this + 9) + 5408)) - v15 <= MaxCmdRxPayload)
        {
          MaxCmdRxPayload = AppleBCMWLANCommander::getMaxCmdRxPayload(*(*(this + 9) + 5408)) - v15;
        }

        goto LABEL_29;
      }
    }

    else
    {
      LODWORD(v15) = 0;
      v16 = a4;
    }

    if (AppleBCMWLANCommander::getMaxCmdRxPayload(*(*(this + 9) + 5408)) <= MaxCmdRxPayload)
    {
      MaxCmdRxPayload = AppleBCMWLANCommander::getMaxCmdRxPayload(*(*(this + 9) + 5408));
    }

    if ((a2 & 0xFFFFFFFE) != 0x106)
    {
      if (!(*(*this + 1952))(this) || ((*(*this + 1952))(this), (CCLogStream::shouldLogConsole() & 1) == 0))
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67110914;
          *&buf[4] = 78;
          *&buf[8] = 2080;
          *&buf[10] = "_wlc_ioctl";
          v31 = 1024;
          v32 = 26655;
          v33 = 1024;
          v34 = a3;
          v35 = 1024;
          v36 = a2;
          v37 = 1024;
          *v38 = v15;
          *&v38[4] = 2048;
          *&v38[6] = MaxCmdTxPayload;
          *&v38[14] = 2048;
          *&v38[16] = MaxCmdRxPayload;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%c [dk] %s@%d:  wl: interfaceID %d: IOVAR %u command (argLen:%u, %lu, %lu)\n", buf, 0x3Eu);
        }
      }

      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          v28 = (*(*this + 1952))(this);
          CCLogStream::logNotice(v28, "[dk] %s@%d: wl: interfaceID %d: IOVAR %u command (argLen:%u, %lu, %lu)\n", "_wlc_ioctl");
        }
      }

      goto LABEL_45;
    }

LABEL_29:
    if (!(*(*this + 1952))(this) || ((*(*this + 1952))(this), (CCLogStream::shouldLogConsole() & 1) == 0))
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v17 = "SET";
        *buf = 67111426;
        *&buf[4] = 78;
        *&buf[8] = 2080;
        *&buf[10] = "_wlc_ioctl";
        v31 = 1024;
        if (a2 == 262)
        {
          v17 = "GET";
        }

        v32 = 26651;
        v33 = 1024;
        v34 = a3;
        v35 = 1024;
        v36 = a2;
        v37 = 2080;
        *v38 = v17;
        *&v38[8] = 2080;
        *&v38[10] = a4;
        *&v38[18] = 1024;
        *&v38[20] = v15;
        v39 = 2048;
        v40 = MaxCmdTxPayload;
        v41 = 2048;
        v42 = MaxCmdRxPayload;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%c [dk] %s@%d:  wl: interfaceID %d: IOVAR %u/%s command %s (argLen:%u, %lu, %lu)\n", buf, 0x52u);
      }
    }

    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        v18 = (*(*this + 1952))(this);
        CCLogStream::logNotice(v18, "[dk] %s@%d: wl: interfaceID %d: IOVAR %u/%s command %s (argLen:%u, %lu, %lu)\n", "_wlc_ioctl", 26651, a3);
      }
    }

LABEL_45:
    *buf = kNoRxPayload;
    if (a4)
    {
      v19 = MaxCmdRxPayload == 0;
    }

    else
    {
      v19 = 1;
    }

    v20 = !v19;
    if (!v19)
    {
      v21 = (MaxCmdRxPayload << 32) | MaxCmdRxPayload;
      if (MaxCmdRxPayload)
      {
        v22 = a4;
      }

      else
      {
        v21 = 0;
        v22 = 0;
      }

      *buf = v22;
      *&buf[8] = v21;
    }

    v29 = kNoTxPayload;
    if (a4 && MaxCmdTxPayload)
    {
      v23 = MaxCmdTxPayload;
      if (MaxCmdTxPayload)
      {
        v24 = v16;
      }

      else
      {
        v24 = 0;
      }

      if (!v16)
      {
        v23 = 0;
      }

      *&v29 = v24;
      *(&v29 + 1) = v23;
    }

    v25 = *(*(this + 9) + 5408);
    if (a2 == 262)
    {
      return AppleBCMWLANCommander::runVirtualIOVarGet(v25, a3, a4, &v29, buf, 0);
    }

    if (a2 == 263)
    {
      return AppleBCMWLANCommander::runVirtualIOVarSet(v25, a3, a4, &v29, buf, 0);
    }

    if (v20)
    {
      return AppleBCMWLANCommander::runVirtualIOCtlGet(v25, a3, a2, &v29, buf, 0);
    }

    return AppleBCMWLANCommander::runVirtualIOCtlSet(v25, a3, a2, &v29, 0, 0);
  }

  v10 = 3758097090;
  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::_wlc_ioctl(this);
    }
  }

  return v10;
}

uint64_t AppleBCMWLANCore::getDRIVER_VERSION(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = snprintf((a3 + 6), 0x100uLL, "%s %s %s", kAppleBCMWLANBuildTag[0], "AppleBCMWLANV3_driverkit-1535.9.4.1", kAppleBCMWLANBuildDate[0]);
  if ((v4 & 0xFF00) != 0)
  {
    v5 = 255;
  }

  else
  {
    v5 = v4;
  }

  *(a3 + 4) = v5;
  return 0;
}

uint64_t non-virtual thunk toAppleBCMWLANCore::getDRIVER_VERSION(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = snprintf((a3 + 6), 0x100uLL, "%s %s %s", kAppleBCMWLANBuildTag[0], "AppleBCMWLANV3_driverkit-1535.9.4.1", kAppleBCMWLANBuildDate[0]);
  if ((v4 & 0xFF00) != 0)
  {
    v5 = 255;
  }

  else
  {
    v5 = v4;
  }

  *(a3 + 4) = v5;
  return 0;
}

uint64_t AppleBCMWLANCore::getHARDWARE_VERSION(void *a1, uint64_t a2, uint64_t a3)
{
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v43 = v5;
  v44 = v5;
  v41 = v5;
  v42 = v5;
  v39 = v5;
  v40 = v5;
  v37 = v5;
  v38 = v5;
  v35 = v5;
  v36 = v5;
  v33 = v5;
  v34 = v5;
  v31 = v5;
  v32 = v5;
  v29 = v5;
  v30 = v5;
  v27 = v5;
  v28 = v5;
  v25 = v5;
  v26 = v5;
  v23 = v5;
  v24 = v5;
  v6 = (*(*a1 + 88))(a1);
  if (!(*(*v6 + 144))(v6))
  {
    return 3766626306;
  }

  if (!a3)
  {
    return 22;
  }

  v22[0] = &v23;
  v22[1] = 0x16001600160;
  v7 = AppleBCMWLANCommander::runIOCtlGet(*(a1[9] + 5408), 98, &kNoTxPayload, v22, 0);
  if (!v7)
  {
    *a3 = 1;
    v8 = a3 + 6;
    v9 = snprintf((a3 + 6), 0x100uLL, "vendorid: 0x%x\n", v23);
    if (v9 <= 255)
    {
      v10 = strlen((a3 + 6));
      v9 += snprintf((v8 + v10), (256 - v9), "deviceid: 0x%x\n", DWORD1(v23));
      if (v9 <= 255)
      {
        v11 = strlen((a3 + 6));
        v9 += snprintf((v8 + v11), (256 - v9), "radiorev: 0x%x\n", DWORD2(v23));
        if (v9 <= 255)
        {
          v12 = strlen((a3 + 6));
          v9 += snprintf((v8 + v12), (256 - v9), "chipnum: 0x%x\n", HIDWORD(v25));
          if (v9 <= 255)
          {
            v13 = strlen((a3 + 6));
            v9 += snprintf((v8 + v13), (256 - v9), "chiprev: 0x%x\n", HIDWORD(v23));
            if (v9 <= 255)
            {
              v14 = strlen((a3 + 6));
              v9 += snprintf((v8 + v14), (256 - v9), "corerev: 0x%x\n", v24);
              if (v9 <= 255)
              {
                v15 = strlen((a3 + 6));
                v9 += snprintf((v8 + v15), (256 - v9), "boardid: 0x%x\n", DWORD1(v24));
                if (v9 <= 255)
                {
                  v16 = strlen((a3 + 6));
                  v9 += snprintf((v8 + v16), (256 - v9), "boardvendor: 0x%x\n", DWORD2(v24));
                  if (v9 <= 255)
                  {
                    v17 = strlen((a3 + 6));
                    v9 += snprintf((v8 + v17), (256 - v9), "boardrev: 0x%x\n", HIDWORD(v24));
                    if (v9 <= 255)
                    {
                      v18 = strlen((a3 + 6));
                      v9 += snprintf((v8 + v18), (256 - v9), "driverrev: 0x%x\n", v25);
                      if (v9 <= 255)
                      {
                        v19 = strlen((a3 + 6));
                        v9 += snprintf((v8 + v19), (256 - v9), "ucoderev: 0x%x\n", DWORD1(v25));
                        if (v9 <= 255)
                        {
                          v20 = strlen((a3 + 6));
                          LOWORD(v9) = snprintf((v8 + v20), (256 - v9), "bus: 0x%x\n", DWORD2(v25)) + v9;
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

    *(a3 + 4) = v9;
  }

  return v7;
}

uint64_t AppleBCMWLANCore::getCHANNEL(uint64_t *a1)
{
  if (IO80211BssManager::isAssociated(*(a1[9] + 5432)))
  {
    v2 = *(a1[9] + 5432);

    return IO80211BssManager::getCurrentChannel();
  }

  else
  {
    *v7 = 0;
    v8 = 0;
    v4 = (*(*a1 + 88))(a1);
    if ((*(*v4 + 136))(v4))
    {
      return 3766626305;
    }

    v6[0] = v7;
    v6[1] = 0x1000100010;
    v5 = AppleBCMWLANCommander::runIOVarGet(*(a1[9] + 5408), "chanspec", &kNoTxPayload, v6, 0);
    if (v5)
    {
      if ((*(*a1 + 1952))(a1))
      {
        (*(*a1 + 1952))(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::getCHANNEL(a1);
        }
      }
    }

    else
    {
      AppleBCMWLANChanSpec::getAppleChannelSpec(*(a1[9] + 17744), v7[0]);
      ChanSpecConvToApple80211Channel();
    }

    return v5;
  }
}

{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v1, "[dk] %s@%d: chanspec failed, error %s\n", v9, v10, v11);
}

uint64_t AppleBCMWLANCore::getCARD_CAPABILITIES(AppleBCMWLANCore *a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a1 + 9) + 780);
  *(a3 + 4) = 0;
  v6 = (a3 + 4);
  *(a3 + 12) = 0;
  *(a3 + 20) = 0;
  *a3 = 1;
  *(a3 + 19) = 1;
  *(a3 + 4) = -6545;
  *(a3 + 9) = 64;
  *(a3 + 12) = 513;
  *(a3 + 6) = 97;
  if ((AppleBCMWLANCore::featureFlagIsBitSet(a1, 1) & 1) == 0)
  {
    *(a3 + 6) |= 0x10u;
    *(a3 + 9) |= 1u;
  }

  if ((AppleBCMWLANCore::featureFlagIsBitSet(a1, 7) & 1) == 0)
  {
    *(a3 + 6) |= 2u;
  }

  if (AppleBCMWLANCore::featureFlagIsBitSet(a1, 28))
  {
    *(a3 + 7) |= 0x20u;
  }

  if (AppleBCMWLANCore::shouldSupportTethering(a1))
  {
    *v6 |= 0x80u;
  }

  if (AppleBCMWLANCore::featureFlagIsBitSet(a1, 27))
  {
    *(a3 + 7) |= 0x80u;
    *(a3 + 8) |= 4u;
  }

  if ((AppleBCMWLANCore::featureFlagIsBitSet(a1, 2) & 1) == 0)
  {
    v7 = *(*(a1 + 9) + 5464);
    if (v7)
    {
      if (AppleBCMWLANConfigManager::isAWDLSupported(v7))
      {
        if ((*(*(a1 + 9) + 10373) & 2) == 0)
        {
          *(a3 + 8) |= 1u;
          *(a3 + 7) |= 1u;
          if ((AppleBCMWLANConfigManager::getAWDLFlags(*(*(a1 + 9) + 5464)) & 4) == 0)
          {
            *(a3 + 10) |= 8u;
          }
        }
      }
    }
  }

  if (AppleBCMWLANCore::featureFlagIsBitSet(a1, 55))
  {
    *(a3 + 7) |= 3u;
  }

  if (AppleBCMWLANCore::isVESupportedAndEnabled(a1))
  {
    *(a3 + 8) |= 2u;
  }

  if (AppleBCMWLANCore::featureFlagIsBitSet(a1, 38))
  {
    *(a3 + 10) |= 0x10u;
  }

  if (AppleBCMWLANCore::featureFlagIsBitSet(a1, 17))
  {
    *(a3 + 9) |= 0x20u;
  }

  if (AppleBCMWLANCore::featureFlagIsBitSet(a1, 29))
  {
    *(a3 + 9) |= 0x80u;
  }

  v8 = *(a1 + 9);
  v9 = *(v8 + 1038);
  if ((v9 & 0x20) != 0)
  {
    *(a3 + 6) |= 8u;
    v8 = *(a1 + 9);
    v9 = *(v8 + 1038);
  }

  if ((v9 & 0x40) != 0)
  {
    *(a3 + 6) |= 4u;
    v8 = *(a1 + 9);
  }

  if (*(v8 + 1024) >= 128)
  {
    if ((*(v8 + 1066) & 0x20) != 0)
    {
      *(a3 + 9) |= 8u;
    }

    if (AppleBCMWLANCore::featureFlagIsBitSet(a1, 121))
    {
      *(a3 + 22) |= 2u;
    }
  }

  if (AppleBCMWLANCore::featureFlagIsBitSet(a1, 39))
  {
    if (AppleBCMWLANConfigManager::getEnhancedTrgDiscMode(*(*(a1 + 9) + 5464)) == 1)
    {
      *(a3 + 10) |= 0x20u;
    }

    else
    {
      *(a3 + 12) |= 2u;
    }
  }

  v10 = *(*(a1 + 9) + 5464);
  if (v10 && AppleBCMWLANConfigManager::isAutoJoinPowerOptimizationSupported(v10))
  {
    *(a3 + 12) |= 4u;
  }

  if (AppleBCMWLANCore::featureFlagIsBitSet(a1, 40))
  {
    *(a3 + 10) |= 0x40u;
  }

  if (AppleBCMWLANCore::featureFlagIsBitSet(a1, 46))
  {
    *(a3 + 11) |= 2u;
    if (AppleBCMWLANCore::featureFlagIsBitSet(a1, 70))
    {
      *(a3 + 13) |= 0x40u;
    }
  }

  if (AppleBCMWLANCore::featureFlagIsBitSet(a1, 47))
  {
    *(a3 + 11) |= 1u;
  }

  if (AppleBCMWLANCore::featureFlagIsBitSet(a1, 30))
  {
    *(a3 + 20) |= 0x20u;
  }

  if (AppleBCMWLANCore::featureFlagIsBitSet(a1, 98))
  {
    *(a3 + 16) |= 4u;
  }

  if (AppleBCMWLANCore::featureFlagIsBitSet(a1, 48) && (*(*(a1 + 9) + 17804) & 2) == 0)
  {
    *(a3 + 11) |= 4u;
  }

  if (AppleBCMWLANCore::featureFlagIsBitSet(a1, 50))
  {
    *(a3 + 11) |= 8u;
  }

  *(a3 + 10) |= 4u;
  *(a3 + 7) |= 4u;
  if (AppleBCMWLANCore::featureFlagIsBitSet(a1, 12))
  {
    *(a3 + 11) |= 0x20u;
  }

  if (AppleBCMWLANCore::featureFlagIsBitSet(a1, 6))
  {
    *(a3 + 13) |= 1u;
  }

  if (AppleBCMWLANCore::featureFlagIsBitSet(a1, 54))
  {
    *(a3 + 12) |= 8u;
  }

  if (AppleBCMWLANCore::featureFlagIsBitSet(a1, 52))
  {
    *(a3 + 12) |= 0x20u;
  }

  if (AppleBCMWLANCore::featureFlagIsBitSet(a1, 49))
  {
    *(a3 + 12) |= 0x40u;
  }

  if (AppleBCMWLANCore::featureFlagIsBitSet(a1, 62))
  {
    *(a3 + 11) |= 0x80u;
  }

  if (AppleBCMWLANCore::featureFlagIsBitSet(a1, 65))
  {
    *(a3 + 13) |= 8u;
  }

  if (AppleBCMWLANCore::featureFlagIsBitSet(a1, 96))
  {
    *(a3 + 16) |= 1u;
  }

  if (AppleBCMWLANCore::featureFlagIsBitSet(a1, 100))
  {
    *(a3 + 16) |= 8u;
  }

  if (AppleBCMWLANCore::featureFlagIsBitSet(a1, 75))
  {
    *(a3 + 14) |= 1u;
  }

  if (AppleBCMWLANCore::featureFlagIsBitSet(a1, 66))
  {
    *(a3 + 13) |= 0x10u;
  }

  if (*(*(a1 + 9) + 780) >= 5u)
  {
    *(a3 + 13) |= 0x80u;
  }

  if (AppleBCMWLANCore::featureFlagIsBitSet(a1, 26))
  {
    *(a3 + 14) |= 2u;
  }

  if (AppleBCMWLANCore::featureFlagIsBitSet(a1, 83))
  {
    *(a3 + 14) |= 0x10u;
  }

  if (v5 > 5 || v5 == 5 && (*(**(*(a1 + 9) + 5392) + 368))(*(*(a1 + 9) + 5392)) == 4364)
  {
    *(a3 + 14) |= 8u;
  }

  v11 = *(*(a1 + 9) + 5464);
  if (v11 && AppleBCMWLANConfigManager::isAdaptiveRoamingSupported(v11))
  {
    *(a3 + 14) |= 0x20u;
  }

  if (AppleBCMWLANCore::featureFlagIsBitSet(a1, 86))
  {
    *(a3 + 14) |= 0x40u;
  }

  if (AppleBCMWLANCore::featureFlagIsBitSet(a1, 88))
  {
    *(a3 + 14) |= 0x80u;
  }

  IsBitSet = AppleBCMWLANCore::featureFlagIsBitSet(a1, 76);
  v13 = *(a1 + 9);
  if (IsBitSet && (*(v13 + 18484) & 1) == 0)
  {
    *(a3 + 15) |= 1u;
    v13 = *(a1 + 9);
  }

  v14 = (*(**(v13 + 5392) + 368))(*(v13 + 5392)) - 4378;
  if (v14 <= 0x15 && ((1 << v14) & 0x200601) != 0)
  {
    *(a3 + 20) |= 8u;
  }

  v15 = *(a1 + 9);
  if ((*(v15 + 17520) & 0x20) != 0)
  {
    *(a3 + 15) |= 2u;
    v15 = *(a1 + 9);
  }

  if (*(v15 + 30092) == 1)
  {
    *(a3 + 15) |= 4u;
    v15 = *(a1 + 9);
  }

  if (*(v15 + 30070) == 1)
  {
    *(a3 + 15) |= 8u;
    v15 = *(a1 + 9);
  }

  if (*(v15 + 30071) == 1)
  {
    *(a3 + 15) |= 0x10u;
    v15 = *(a1 + 9);
  }

  v16 = *(v15 + 5464);
  if (v16 && AppleBCMWLANConfigManager::isContCPMSPowerSupported(v16))
  {
    *(a3 + 15) |= 0x20u;
  }

  v17 = *(*(a1 + 9) + 5464);
  if (v17 && AppleBCMWLANConfigManager::isSetCcodeDurPowerOffSupported(v17))
  {
    *(a3 + 22) |= 4u;
  }

  if (AppleBCMWLANCore::featureFlagIsBitSet(a1, 97))
  {
    *(a3 + 16) |= 2u;
  }

  if (AppleBCMWLANCore::featureFlagIsBitSet(a1, 119))
  {
    *(a3 + 22) |= 1u;
  }

  if (AppleBCMWLANCore::featureFlagIsBitSet(a1, 93))
  {
    *(a3 + 15) |= 0x40u;
  }

  if (*(*(a1 + 9) + 30072) == 1 && AppleBCMWLANCore::featureFlagIsBitSet(a1, 93))
  {
    *(a3 + 15) |= 0x80u;
  }

  if (AppleBCMWLANCore::featureFlagIsBitSet(a1, 72))
  {
    *(a3 + 16) |= 0x20u;
  }

  if (AppleBCMWLANCore::featureFlagIsBitSet(a1, 37))
  {
    *(a3 + 16) |= 0x40u;
  }

  if (AppleBCMWLANCore::featureFlagIsBitSet(a1, 60))
  {
    *(a3 + 16) |= 0x80u;
  }

  if (v5 <= 0x10)
  {
    *(a3 + 17) |= 1u;
  }

  if (AppleBCMWLANCore::featureFlagIsBitSet(a1, 105))
  {
    *(a3 + 17) |= 2u;
  }

  if (AppleBCMWLANCore::featureFlagIsBitSet(a1, 106))
  {
    *(a3 + 17) |= 4u;
  }

  if (AppleBCMWLANCore::featureFlagIsBitSet(a1, 109))
  {
    *(a3 + 17) |= 0x20u;
  }

  if (AppleBCMWLANCore::featureFlagIsBitSet(a1, 107))
  {
    *(a3 + 17) |= 8u;
  }

  if (AppleBCMWLANCore::featureFlagIsBitSet(a1, 108))
  {
    *(a3 + 17) |= 0x10u;
  }

  if (AppleBCMWLANCore::featureFlagIsBitSet(a1, 35))
  {
    *(a3 + 17) |= 0x40u;
  }

  if (AppleBCMWLANCore::featureFlagIsBitSet(a1, 104))
  {
    *(a3 + 18) |= 1u;
  }

  if (AppleBCMWLANCore::featureFlagIsBitSet(a1, 82))
  {
    *(a3 + 18) |= 4u;
  }

  if (AppleBCMWLANNetAdapter::isLimitedAggregationSupported(*(*(a1 + 9) + 5600)))
  {
    *(a3 + 18) |= 8u;
  }

  if (AppleBCMWLANCore::featureFlagIsBitSet(a1, 89))
  {
    *(a3 + 18) |= 2u;
    *(a3 + 22) |= 0x40u;
  }

  if (AppleBCMWLANCore::featureFlagIsBitSet(a1, 113))
  {
    *(a3 + 20) |= 0x80u;
  }

  if (AppleBCMWLANCore::featureFlagIsBitSet(a1, 36))
  {
    *(a3 + 18) |= 0x10u;
  }

  if (AppleBCMWLANCore::featureFlagIsBitSet(a1, 18))
  {
    *(a3 + 18) |= 0x20u;
  }

  if (AppleBCMWLANCore::featureFlagIsBitSet(a1, 61))
  {
    *(a3 + 18) |= 0x40u;
  }

  if (AppleBCMWLANCore::featureFlagIsBitSet(a1, 25))
  {
    *(a3 + 18) |= 0x80u;
  }

  if (AppleBCMWLANCore::featureFlagIsBitSet(a1, 50))
  {
    *(a3 + 19) |= 4u;
  }

  if (AppleBCMWLANCore::featureFlagIsBitSet(a1, 32))
  {
    *(a3 + 19) |= 8u;
  }

  if (AppleBCMWLANConfigManager::isEnhancedDisassociationReasonEnabled(*(*(a1 + 9) + 5464)))
  {
    *(a3 + 19) |= 0x40u;
  }

  if (AppleBCMWLANConfigManager::isBeaconReportingEnabled(*(*(a1 + 9) + 5464)))
  {
    *(a3 + 19) |= 0x10u;
  }

  if (AppleBCMWLANConfigManager::isOSVersionReportingSupported(*(*(a1 + 9) + 5464)))
  {
    *(a3 + 19) |= 0x20u;
  }

  if (AppleBCMWLANCore::featureFlagIsBitSet(a1, 114))
  {
    *(a3 + 21) |= 2u;
  }

  if (AppleBCMWLANCore::featureFlagIsBitSet(a1, 115))
  {
    *(a3 + 21) |= 8u;
  }

  if (AppleBCMWLANCore::featureFlagIsBitSet(a1, 116))
  {
    *(a3 + 21) |= 0x30u;
  }

  if (AppleBCMWLANCore::featureFlagIsBitSet(a1, 117))
  {
    *(a3 + 21) |= 4u;
  }

  if (AppleBCMWLANCore::featureFlagIsBitSet(a1, 67))
  {
    *(a3 + 21) |= 0x80u;
  }

  if (AppleBCMWLANCore::featureFlagIsBitSet(a1, 118))
  {
    *(a3 + 5) |= 8u;
  }

  v18 = *(a3 + 23);
  *(a3 + 23) = v18 | 0x10;
  if (*(*(a1 + 9) + 36100) == 1)
  {
    *(a3 + 23) = v18 | 0x50;
  }

  return 0;
}

uint64_t AppleBCMWLANCore::isVESupportedAndEnabled(AppleBCMWLANCore *this)
{
  IsBitSet = AppleBCMWLANCore::featureFlagIsBitSet(this, 21);
  v3 = *(*(this + 9) + 5464);
  if (v3)
  {
    LODWORD(v3) = AppleBCMWLANConfigManager::isVoiceEnterpriseNwSupportEnabled(v3);
  }

  return IsBitSet & v3;
}

uint64_t AppleBCMWLANCore::getNOISE(uint64_t a1, uint64_t a2)
{
  if (!IO80211BssManager::isAssociated(*(*(a1 + 72) + 5432)))
  {
    return 6;
  }

  v5 = 0;
  result = IO80211BssManager::getCurrentNoise(*(*(a1 + 72) + 5432), &v5);
  *(a2 + 12) = v5;
  *(a2 + 4) = 1;
  return result;
}

uint64_t AppleBCMWLANCore::getRSSI(uint64_t *a1, uint64_t a2)
{
  v10 = 0uLL;
  if (!IO80211BssManager::isAssociated(*(a1[9] + 5432)))
  {
    return 3766625283;
  }

  *(a2 + 36) = 0u;
  *(a2 + 20) = 0u;
  *(a2 + 4) = 0u;
  *a2 = 1;
  isAssociatedToAdhoc = IO80211BssManager::isAssociatedToAdhoc(*(a1[9] + 5432));
  v5 = a1[9];
  if (isAssociatedToAdhoc)
  {
    CurrentRSSI = IO80211BssManager::getCurrentRSSI(*(v5 + 5432), (a2 + 12));
    if (!CurrentRSSI)
    {
      *(a2 + 28) = *(a2 + 12);
      *(a2 + 4) = 1;
    }
  }

  else
  {
    CurrentRSSI = AppleBCMWLANNetAdapter::getRSSIPerAntenna(*(v5 + 5600), &v10);
    if (!CurrentRSSI)
    {
      v8 = v10;
      *(a2 + 12) = v10;
      if (vmaxv_u16(vmovn_s32(vtstq_s32(v8, v8))))
      {
        CurrentRSSI = 0;
        v9 = vbicq_s8(xmmword_1003ADBB0, vceqzq_s32(v8));
        v9.i32[0] = vaddvq_s32(v9) & 0xF;
        *v9.i8 = vcnt_s8(*v9.i8);
        v9.i16[0] = vaddlv_u8(*v9.i8);
        *(a2 + 4) = v9.i32[0];
        *(a2 + 28) = vaddvq_s32(v8) / v9.i32[0];
        return CurrentRSSI;
      }

      *(a2 + 28) = 0;
      *(a2 + 4) = 0;
    }

    if ((*(*a1 + 1952))(a1))
    {
      (*(*a1 + 1952))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::getRSSI(a1);
      }
    }
  }

  return CurrentRSSI;
}

uint64_t AppleBCMWLANCore::getPOWER(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a1 + 72) + 19852);
  *(a3 + 4) = 1;
  *(a3 + 8) = v3;
  return 0;
}

uint64_t non-virtual thunk toAppleBCMWLANCore::getPOWER(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a1 + 24) + 19852);
  *(a3 + 4) = 1;
  *(a3 + 8) = v3;
  return 0;
}

uint64_t AppleBCMWLANCore::getVHT_MCS_INDEX_SET(uint64_t a1)
{
  v1 = *(a1 + 72);
  if (*(v1 + 1024) >= 128)
  {
    return IO80211BssManager::getCurrentVHTMCSSet(*(v1 + 5432));
  }

  else
  {
    return 3758097095;
  }
}

uint64_t non-virtual thunk toAppleBCMWLANCore::getVHT_MCS_INDEX_SET(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (*(v1 + 1024) >= 128)
  {
    return IO80211BssManager::getCurrentVHTMCSSet(*(v1 + 5432));
  }

  else
  {
    return 3758097095;
  }
}

uint64_t AppleBCMWLANCore::getHE_MCS_INDEX_SET(uint64_t a1)
{
  v1 = *(a1 + 72);
  if (*(v1 + 1024) >= 128)
  {
    return IO80211BssManager::getCurrentHEMCSSet(*(v1 + 5432));
  }

  else
  {
    return 3758097095;
  }
}

uint64_t non-virtual thunk toAppleBCMWLANCore::getHE_MCS_INDEX_SET(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (*(v1 + 1024) >= 128)
  {
    return IO80211BssManager::getCurrentHEMCSSet(*(v1 + 5432));
  }

  else
  {
    return 3758097095;
  }
}

uint64_t AppleBCMWLANCore::getCHIP_DIAGS(uint64_t a1)
{
  v7 = 0;
  memset(v6, 0, sizeof(v6));
  *&v1 = 0xAAAAAAAAAAAAAAAALL;
  *(&v1 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v5 = 0xAAAAAAAAAAAAAAAALL;
  v4[0] = v1;
  v4[1] = v1;
  BYTE4(v4[0]) = 0;
  LODWORD(v4[0]) = 20;
  v2 = (*(*a1 + 104))(a1);
  return (*(*v2 + 56))(v2, AppleBCMWLANCore::getDiags, v6, v4, 0, 0);
}

uint64_t AppleBCMWLANCore::getAUTH_TYPE(uint64_t a1)
{
  v1 = *(*(a1 + 72) + 5432);
  IO80211BssManager::getAuthType();
  return 0;
}

uint64_t non-virtual thunk toAppleBCMWLANCore::getAUTH_TYPE(uint64_t a1)
{
  v1 = *(*(a1 + 8) + 5432);
  IO80211BssManager::getAuthType();
  return 0;
}

uint64_t AppleBCMWLANCore::getAP_IE_LIST(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  result = IO80211BssManager::getCurrentIEList(*(*(a1 + 72) + 5432), (a2 + 8), &v4);
  *(a2 + 4) = v4;
  return result;
}

uint64_t non-virtual thunk toAppleBCMWLANCore::getAP_IE_LIST(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  result = IO80211BssManager::getCurrentIEList(*(*(a1 + 8) + 5432), (a2 + 8), &v4);
  *(a2 + 4) = v4;
  return result;
}

uint64_t AppleBCMWLANCore::getDBG_GUARD_TIME_PARAMS(uint64_t *a1, uint64_t a2)
{
  v8[0] = &v9;
  v8[1] = 0x800080008;
  v9 = 0xAAAAAAAAAAAAAAAALL;
  v4 = AppleBCMWLANCommander::runIOVarGet(*(a1[9] + 5408), "forced_pm", &kNoTxPayload, v8, 0);
  v5 = v4;
  if (v4 == -536870173 || v4 == 0)
  {
    *(a2 + 4) = v9;
    *(a2 + 8) = HIDWORD(v9);
  }

  else if ((*(*a1 + 1952))(a1))
  {
    (*(*a1 + 1952))(a1);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::getDBG_GUARD_TIME_PARAMS(a1);
    }
  }

  return v5;
}

uint64_t AppleBCMWLANCore::getLEAKY_AP_STATS_MODE(uint64_t *a1, uint64_t a2)
{
  v10 = 0;
  v9[0] = &v10;
  v9[1] = 0x400040004;
  v4 = AppleBCMWLANCommander::runIOVarGet(*(a1[9] + 5408), "leaky_ap_stats", &kNoTxPayload, v9, 0);
  v5 = v4;
  if (v4 == -536870173 || v4 == -469794537 || v4 == 0)
  {
    *(a2 + 4) = v10;
  }

  else if ((*(*a1 + 1952))(a1))
  {
    (*(*a1 + 1952))(a1);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::getLEAKY_AP_STATS_MODE(a1);
    }
  }

  return v5;
}

uint64_t AppleBCMWLANCore::getBEACON_INFO(uint64_t *a1, uint64_t a2)
{
  v4 = IOMallocZeroData();
  if (v4)
  {
    v5 = v4;
    v10[0] = v4;
    v10[1] = 0x70800040708;
    v6 = AppleBCMWLANCommander::runIOVarGet(*(a1[9] + 5408), "beacon_info", &kNoTxPayload, v10, 0);
    if (v6 || (v8 = *v5, (v5[1] & 0xFC) != 0x80) || v8 < 37)
    {
      if ((*(*a1 + 1952))(a1))
      {
        (*(*a1 + 1952))(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::getBEACON_INFO(a1);
        }
      }

      *a2 = 0xDEADBEEF00000000;
    }

    else if (v8 >= 0x801)
    {
      AppleBCMWLANCore::getBEACON_INFO(a1, a2, v8);
      v6 = 3758097115;
    }

    else
    {
      *a2 = v8;
      memcpy((a2 + 4), v5 + 1, v8);
      *(a2 + 2052) = 0;
      CurrentBSS = AppleBCMWLANBssManager::getCurrentBSS(*(a1[9] + 5432));
      if (CurrentBSS)
      {
        *(a2 + 2052) = (*(*CurrentBSS + 792))(CurrentBSS);
        if ((*(*a1 + 1952))(a1))
        {
          (*(*a1 + 1952))(a1);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::getBEACON_INFO(a1);
          }
        }
      }

      v6 = 0;
    }

    IOFreeData();
  }

  else
  {
    v6 = 3758097085;
    if ((*(*a1 + 1952))(a1))
    {
      (*(*a1 + 1952))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::getBEACON_INFO(a1);
      }
    }
  }

  return v6;
}

uint64_t AppleBCMWLANCore::getHW_ADDR(uint64_t *a1, uint64_t a2)
{
  *a2 = 1;
  *(a2 + 4) = *(a1[9] + 5652);
  *(a2 + 5) = *(a1[9] + 5653);
  *(a2 + 6) = *(a1[9] + 5654);
  *(a2 + 7) = *(a1[9] + 5655);
  *(a2 + 8) = *(a1[9] + 5656);
  *(a2 + 9) = *(a1[9] + 5657);
  if ((*(*a1 + 1952))())
  {
    (*(*a1 + 1952))(a1);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::getHW_ADDR(a1);
    }
  }

  return 0;
}

uint64_t AppleBCMWLANCore::getTXPOWER(uint64_t *a1, uint64_t a2)
{
  v14[0] = 0xAAAAAAAAAAAAAAAALL;
  v14[1] = 0xAAAAAAAAAAAAAAAALL;
  v13[0] = v14;
  v13[1] = 0x1000100010;
  v4 = AppleBCMWLANCommander::runIOVarGet(*(a1[9] + 5408), "qtxpower", &kNoTxPayload, v13, 0);
  v5 = v4;
  if (v4 == -536870173 || v4 == 0)
  {
    v7 = LOBYTE(v14[0]);
    v8 = 1;
    *(a2 + 4) = 1;
    if (v7 <= 0xC0)
    {
      if (v7 > 0x98)
      {
        v11 = v7 - 153;
      }

      else
      {
        v10 = v7 - 193;
        do
        {
          LOWORD(v8) = 10 * v8;
          v10 += 40;
        }

        while (v10 < -40);
        v8 = v8;
        v11 = v10 + 40;
      }

      v9 = ((nqdBm_to_mW_map[v11] + (v8 >> 1)) / v8);
    }

    else
    {
      v9 = 0xFFFF;
    }

    *(a2 + 8) = v9;
  }

  else if ((*(*a1 + 1952))(a1))
  {
    (*(*a1 + 1952))(a1);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::getTXPOWER(a1);
    }
  }

  return v5;
}

uint64_t AppleBCMWLANCore::getCURRENT_NETWORK(uint64_t a1, uint64_t a2)
{
  if (!IO80211BssManager::isAssociated(*(*(a1 + 72) + 5432)))
  {
    return 3766625283;
  }

  v4 = *(*(a1 + 72) + 5432);

  return IO80211BssManager::getCurrentNet(v4, a2);
}

uint64_t AppleBCMWLANCore::getCHIP_POWER_RANGE(uint64_t a1, _DWORD *a2)
{
  *a2 = 1;
  AppleBCMWLANConfigManager::copyWlanPwrDutyCycleTable(*(*(a1 + 72) + 5464), a2);
  return 0;
}

uint64_t non-virtual thunk toAppleBCMWLANCore::getCHIP_POWER_RANGE(uint64_t a1, _DWORD *a2)
{
  *a2 = 1;
  AppleBCMWLANConfigManager::copyWlanPwrDutyCycleTable(*(*(a1 + 8) + 5464), a2);
  return 0;
}

uint64_t AppleBCMWLANCore::appending6GOnlyChannelsWithCurrentCC(AppleBCMWLANCore *a1, unsigned int *a2, void *a3)
{
  *a3 = 0;
  if (!AppleBCMWLANCore::featureFlagIsBitSet(a1, 93))
  {
    return 0;
  }

  v34 = 0;
  v35 = 0;
  bzero(&v37 + 2, 0x5F8uLL);
  *__source = 0;
  v33 = 0;
  v31 = 0;
  v32 = 0;
  v29 = 0;
  v30 = 0;
  mach_continuous_time();
  absolutetime_to_nanoseconds();
  mach_continuous_time();
  absolutetime_to_nanoseconds();
  LOWORD(v37) = 0;
  if (!a2)
  {
    return 22;
  }

  v6 = a2[1];
  if (v6 > 0x18F)
  {
    return 0;
  }

  if (v6)
  {
    v9 = a2 + 4;
    while ((*(v9 + 1) & 0x20) == 0)
    {
      v9 += 3;
      if (!--v6)
      {
        goto LABEL_10;
      }
    }

    return 0;
  }

LABEL_10:
  v34 = __source;
  v35 = 0x400040004;
  v10 = AppleBCMWLANCommander::runIOCtlGet(*(*(a1 + 9) + 5408), 83, &kNoTxPayload, &v34, 0);
  if (v10)
  {
    v7 = v10;
    if ((*(*a1 + 1952))(a1))
    {
      (*(*a1 + 1952))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::appending6GOnlyChannelsWithCurrentCC(a1);
      }
    }

    return v7;
  }

  if (strlcpy(&v37 + 2, __source, 4uLL) > 3)
  {
    return 22;
  }

  *&v38[2] = 380;
  v34 = &v37;
  v35 = 0x5F4000405FALL;
  v11 = *(*(a1 + 9) + 5408);
  v28[0] = &v37;
  v28[1] = 1530;
  v12 = AppleBCMWLANCommander::runIOVarGet(v11, "chanspecs", v28, &v34, 0);
  if (v12)
  {
    v7 = v12;
    if ((*(*a1 + 1952))(a1))
    {
      (*(*a1 + 1952))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::appending6GOnlyChannelsWithCurrentCC(a1);
      }
    }
  }

  else
  {
    v13 = a2[1];
    if (v37)
    {
      if (v37 >= 0x17C)
      {
        v14 = 380;
      }

      else
      {
        v14 = v37;
      }

      v15 = v38;
      do
      {
        v16 = *v15;
        v15 += 2;
        AppleBCMWLANChanSpec::getAppleChannelSpec(*(*(a1 + 9) + 17744), v16);
        ChanSpecConvToApple80211Channel();
        v17 = v33;
        v18 = (v33 >> 2) & 1;
        v19 = BYTE4(v32);
        BandForChanSpec = IO80211_getBandForChanSpec(v33);
        isPassiveChannel = AppleBCMWLANCore::isPassiveChannel(a1, v19, BandForChanSpec, v18, (v17 >> 10) & 1, (v17 >> 11) & 1);
        v22 = v33;
        if (!isPassiveChannel)
        {
          v22 = v33 | 0x80;
          v33 |= 0x80u;
        }

        v23 = BYTE4(v32);
        v24 = IO80211_getBandForChanSpec(v22);
        isDFSChannel = AppleBCMWLANCore::isDFSChannel(a1, v23, v24);
        v26 = v33;
        if (isDFSChannel)
        {
          v26 = v33 | 0x100;
          v33 |= 0x100u;
        }

        if ((v26 & 0x2000) != 0 && (a2[1202] & v26) != 0 && (a2[1203] & v26) == 0)
        {
          v27 = &a2[3 * v13 + 2];
          *v27 = v32;
          *(v27 + 8) = v26;
          if (++v13 > 0x18F)
          {
            break;
          }
        }

        --v14;
      }

      while (v14);
    }

    a2[1] = v13;
    mach_continuous_time();
    absolutetime_to_nanoseconds();
    v7 = 0;
    *a3 = v29 - v30;
  }

  return v7;
}

BOOL AppleBCMWLANCore::isDFSChannel(void *a1, int a2, int a3)
{
  v3 = a1[9];
  v4 = v3 + 19916;
  v5 = *(v3 + 19916);
  if (*(v3 + 19916))
  {
    v8 = (v3 + 26720);
    v9 = (v4 + 802);
    v10 = 1;
    v11 = 23120;
    v12 = v5;
    v13 = 1;
    v14 = v9;
    while (1)
    {
      v15 = *v14++;
      if (v15 == a2 && *v8 == (a3 == 1) && v9[800] == 1)
      {
        break;
      }

      v13 = v10++ < v5;
      v11 += 4;
      ++v8;
      v9 = v14;
      if (!--v12)
      {
        return 0;
      }
    }

    if ((*(*a1 + 1952))(a1))
    {
      (*(*a1 + 1952))(a1);
      if (CCLogStream::shouldLog())
      {
        v17 = (*(*a1 + 1952))(a1);
        CCLogStream::logAlertIf(v17, 0x400uLL, "[dk] %s@%d:chan %u is a radar DFS channel; perchanInfo 0x%X chanbitmap 0x%X \n", "isDFSChannel", 46791, a2, *(a1[9] + v11), *(a1[9] + v11 + 1600));
      }
    }
  }

  else
  {
    return 0;
  }

  return v13;
}

uint64_t AppleBCMWLANCore::getCurrentSupportedChannels(AppleBCMWLANCore *this, char *a2)
{
  *__source = 0;
  v18 = __source;
  v19 = 0x400040004;
  v3 = AppleBCMWLANCommander::runIOCtlGet(*(*(this + 9) + 5408), 83, &kNoTxPayload, &v18, 0);
  v4 = (*(*this + 1952))(this);
  if (v3)
  {
    if (v4)
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::getCurrentSupportedChannels(this);
      }
    }

    return 0xFFFFFFFFLL;
  }

  else
  {
    v6 = *(this + 9);
    v7 = IO80211Print();
    bzero(&v22, 0x5FAuLL);
    if (strlcpy(&v22 + 2, __source, 4uLL) > 3)
    {
      return 22;
    }

    else
    {
      *&v23[2] = 380;
      (*(*this + 1952))(this);
      v8 = IO80211Print();
      v18 = &v22;
      v19 = 0x5F4000405FALL;
      v9 = *(*(this + 9) + 5408);
      *&v21[0] = &v22;
      *(&v21[0] + 1) = 1530;
      v10 = AppleBCMWLANCommander::runIOVarGet(v9, "chanspecs", v21, &v18, 0);
      if (v10)
      {
        v5 = v10;
        if ((*(*this + 1952))(this))
        {
          (*(*this + 1952))(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::getCurrentSupportedChannels(this);
          }
        }
      }

      else
      {
        (*(*this + 1952))(this);
        v11 = IO80211Print() + v8 + v7;
        if (v22)
        {
          if (v22 >= 0x17C)
          {
            v12 = 380;
          }

          else
          {
            v12 = v22;
          }

          v13 = v23;
          do
          {
            *&v14 = 0xAAAAAAAAAAAAAAAALL;
            *(&v14 + 1) = 0xAAAAAAAAAAAAAAAALL;
            v21[0] = v14;
            v21[1] = v14;
            AppleChannelSpec = AppleBCMWLANChanSpec::getAppleChannelSpec(*(*(this + 9) + 17744), *v13);
            (*(*this + 1952))(this);
            v16 = *v13;
            v13 += 2;
            AppleBCMWLANChanSpec::convToAscii(AppleChannelSpec, v21, 0x20u);
            v11 += IO80211Print();
            --v12;
          }

          while (v12);
        }

        (*(*this + 1952))(this);
        return IO80211Print() + v11;
      }
    }
  }

  return v5;
}

uint64_t AppleBCMWLANCore::getRSN_XE(uint64_t a1, uint64_t a2)
{
  v4 = 257;
  result = AppleBCMWLANJoinAdapter::getAssocRSNXE(*(*(a1 + 72) + 5416), (a2 + 6), &v4);
  *(a2 + 4) = v4;
  return result;
}

uint64_t non-virtual thunk toAppleBCMWLANCore::getRSN_XE(uint64_t a1, uint64_t a2)
{
  v4 = 257;
  result = AppleBCMWLANJoinAdapter::getAssocRSNXE(*(*(a1 + 8) + 5416), (a2 + 6), &v4);
  *(a2 + 4) = v4;
  return result;
}

uint64_t AppleBCMWLANCore::parsePerSliceContainer(AppleBCMWLANCore *this, OSData *a2)
{
  v56 = *(*(this + 9) + 208);
  v62 = 0xAAAAAAAAAAAAAAAALL;
  v58 = IOMallocZeroData();
  v57 = IOMallocZeroData();
  if (!OSData::getLength(a2))
  {
LABEL_95:
    v50 = v58;
    if (v58)
    {
      *&v51 = 0xAAAAAAAAAAAAAAAALL;
      *(&v51 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v61 = 0xAAAAAAAAAAAAAAAALL;
      *v59 = v51;
      v60 = v51;
      BYTE4(v59[0]) = 0;
      LODWORD(v59[0]) = 19;
      *(v58 + 2312) = *(*(this + 9) + 30016);
      *(v58 + 2320) = *(*(this + 9) + 30024);
      *(v58 + 2328) = *(*(this + 9) + 30032);
      *(v58 + 2304) = 1;
      IO80211Controller::setChipCounterStats();
    }

    v55 = 0;
    v52 = v57;
    goto LABEL_98;
  }

  v4 = 0;
  v5 = 0;
  v6 = 2;
  while (2)
  {
    if (OSData::getLength(a2) - v4 < 5)
    {
      goto LABEL_95;
    }

    if ((OSData::getBytesNoCopy(a2) & 3) != 0)
    {
      v55 = 3758097084;
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        v50 = v58;
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::parsePerSliceContainer(this);
        }

        goto LABEL_121;
      }

      goto LABEL_122;
    }

    BytesNoCopy = OSData::getBytesNoCopy(a2, v4, 4uLL);
    if (!BytesNoCopy)
    {
      v55 = 3758097084;
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        v50 = v58;
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::parsePerSliceContainer(this);
        }

        goto LABEL_121;
      }

      goto LABEL_122;
    }

    v8 = BytesNoCopy;
    v9 = BytesNoCopy[1];
    if (OSData::getLength(a2) - (v5 + 4) < v9)
    {
      v55 = 3758097084;
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        v50 = v58;
        if (CCLogStream::shouldLog())
        {
          v54 = (*(*this + 1952))(this);
          CCLogStream::logAlert(v54, "[dk] %s@%d:Insufficient containerLength %d index %d\n", "parsePerSliceContainer", 28934, v9, v5);
        }

        goto LABEL_121;
      }

      goto LABEL_122;
    }

    v10 = OSData::getBytesNoCopy(a2, v5 + 4, v9);
    if (!v10)
    {
      v55 = 3758097084;
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        v50 = v58;
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::parsePerSliceContainer(this);
        }

        goto LABEL_121;
      }

LABEL_122:
      v12 = 0;
      goto LABEL_126;
    }

    v11 = OSData::withBytesNoCopy(v10, v9);
    if (!v11)
    {
      v55 = 3758097084;
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        v50 = v58;
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::parsePerSliceContainer(this);
        }

LABEL_121:
        v12 = 0;
        goto LABEL_127;
      }

      goto LABEL_122;
    }

    v12 = v11;
    switch(*v8)
    {
      case 0x302:
      case 0x303:
      case 0x307:
      case 0x309:
        if ((*(*this + 1952))(this))
        {
          (*(*this + 1952))(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::parsePerSliceContainer(this);
          }
        }

        goto LABEL_89;
      case 0x304:
        v23 = AppleBCMWLANCore::parseEventLogRecordBTCoexStatsPerSlice(this, v11, v6);
        if (!v23)
        {
          goto LABEL_89;
        }

        v55 = v23;
        if (!(*(*this + 1952))(this))
        {
          goto LABEL_126;
        }

        (*(*this + 1952))(this);
        v50 = v58;
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::parsePerSliceContainer(this);
        }

        goto LABEL_127;
      case 0x305:
      case 0x30D:
      case 0x30E:
      case 0x30F:
      case 0x312:
      case 0x313:
      case 0x314:
      case 0x316:
      case 0x317:
      case 0x318:
      case 0x31D:
        goto LABEL_103;
      case 0x306:
        if (v6 == v56)
        {
          v26 = v58;
        }

        else
        {
          v26 = 0;
        }

        v27 = AppleBCMWLANCore::parseV30CntContainer(this, v11, v6, v26);
        if (!v27)
        {
          goto LABEL_89;
        }

        v55 = v27;
        if (!(*(*this + 1952))(this))
        {
          goto LABEL_126;
        }

        (*(*this + 1952))(this);
        v50 = v58;
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::parsePerSliceContainer(this);
        }

        goto LABEL_127;
      case 0x308:
        v15 = *(this + 9);
        if (!*(v15 + 5512))
        {
          goto LABEL_89;
        }

        if (*(v15 + v6 + 6572) == 1)
        {
          v59[0] = 0;
          mach_continuous_time();
          absolutetime_to_nanoseconds();
          *(*(this + 9) + 19736) = *(*(this + 9) + 19104);
          *(*(this + 9) + 19744) = 0;
          *(*(this + 9) + 19752) = 0;
          v16 = *(this + 9);
          v17 = *(v16 + 5512);
          v18 = *(v16 + 6576);
          if (AppleBCMWLANCore::featureFlagIsBitSet(this, 76))
          {
            v19 = 3;
          }

          else
          {
            v19 = 2;
          }

          if (AppleBCMWLANIOReportingPerSlice::reportScanPwrStatsAtLinkUp(v17, v18, v12, v6, v19))
          {
            AppleBCMWLANCore::parsePerSliceContainer(this);
          }

          else
          {
            if (AppleBCMWLANCore::featureFlagIsBitSet(this, 76))
            {
              v20 = 3;
            }

            else
            {
              v20 = 2;
            }

            if (AppleBCMWLANCore::reportSlicesScanPwrStatsAtLinkup(this, v12, v6, v20))
            {
              AppleBCMWLANCore::parsePerSliceContainer(this);
            }

            else
            {
              if (AppleBCMWLANCore::featureFlagIsBitSet(this, 76))
              {
                v21 = 3;
              }

              else
              {
                v21 = 2;
              }

              if (!AppleBCMWLANCore::reportSlicesScanPwrStats(this, v12, v6, v21))
              {
                *(*(this + 9) + v6 + 6572) = 0;
LABEL_85:
                v45 = *(this + 9);
                v46 = *(v45 + 5512);
                v47 = *(v45 + 6576);
                if (AppleBCMWLANCore::featureFlagIsBitSet(this, 76))
                {
                  v48 = 3;
                }

                else
                {
                  v48 = 2;
                }

                v49 = AppleBCMWLANIOReportingPerSlice::reportScanPwrStats(v46, v47, v12, v6, v48);
                if (v49)
                {
                  v55 = v49;
                  if ((*(*this + 1952))(this))
                  {
                    (*(*this + 1952))(this);
                    if (CCLogStream::shouldLog())
                    {
                      AppleBCMWLANCore::parsePerSliceContainer(this);
                    }
                  }

                  goto LABEL_126;
                }

                goto LABEL_89;
              }

              AppleBCMWLANCore::parsePerSliceContainer(this);
            }
          }

          v55 = v63;
          v50 = v58;
          goto LABEL_127;
        }

        if (AppleBCMWLANCore::featureFlagIsBitSet(this, 76))
        {
          v43 = 3;
        }

        else
        {
          v43 = 2;
        }

        v44 = AppleBCMWLANCore::reportSlicesScanPwrStats(this, v12, v6, v43);
        if (v44)
        {
          v55 = v44;
          if ((*(*this + 1952))(this))
          {
            (*(*this + 1952))(this);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANCore::parsePerSliceContainer(this);
            }
          }

          goto LABEL_126;
        }

        goto LABEL_85;
      case 0x30A:
        v32 = AppleBCMWLANCore::parseEventLogRecordLTECoexStatsPerSlice(this, v11, v6);
        if (!v32)
        {
          goto LABEL_89;
        }

        v55 = v32;
        if (!(*(*this + 1952))(this))
        {
          goto LABEL_126;
        }

        (*(*this + 1952))(this);
        v50 = v58;
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::parsePerSliceContainer(this);
        }

        goto LABEL_127;
      case 0x30B:
        v28 = *(*(this + 9) + 5512);
        if (!v28)
        {
          goto LABEL_89;
        }

        if (v6 == v56)
        {
          v29 = v57;
        }

        else
        {
          v29 = 0;
        }

        v30 = AppleBCMWLANIOReportingPerSlice::reportTVPM(v28, v12, v6, v29);
        if (v30)
        {
          v55 = v30;
          if ((*(*this + 1952))(this))
          {
            (*(*this + 1952))(this);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANCore::parsePerSliceContainer(this);
            }
          }

          goto LABEL_126;
        }

        if (v57)
        {
          if (v6 == v56)
          {
            v31 = *(*(this + 9) + 11288);
            v6 = v56;
            if (v31)
            {
              IO80211Controller::postMessage(this, v31, 0x9Bu, v57, 0xCuLL, 1);
              v6 = v56;
            }
          }
        }

        goto LABEL_89;
      case 0x30C:
        v33 = *(*(this + 9) + 5512);
        if (!v33)
        {
          goto LABEL_89;
        }

        v34 = AppleBCMWLANIOReportingPerSlice::reportTDM(v33, v12, v6);
        if (!v34)
        {
          goto LABEL_89;
        }

        v55 = v34;
        if ((*(*this + 1952))(this))
        {
          (*(*this + 1952))(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::parsePerSliceContainer(this);
          }
        }

        goto LABEL_126;
      case 0x310:
      case 0x311:
        goto LABEL_89;
      case 0x315:
        v22 = AppleBCMWLANCore::parseEventLogRecordRC1CoexStatsPerSlice(this, v11, v6);
        if (!v22)
        {
          goto LABEL_89;
        }

        v55 = v22;
        if (!(*(*this + 1952))(this))
        {
          goto LABEL_126;
        }

        (*(*this + 1952))(this);
        v50 = v58;
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::parsePerSliceContainer(this);
        }

        goto LABEL_127;
      case 0x319:
        v42 = AppleBCMWLANCore::parseEventLogRecordRC2CoexStatsPerSlice(this, v11, v6);
        if (!v42)
        {
          goto LABEL_89;
        }

        v55 = v42;
        if (!(*(*this + 1952))(this))
        {
          goto LABEL_126;
        }

        (*(*this + 1952))(this);
        v50 = v58;
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::parsePerSliceContainer(this);
        }

        goto LABEL_127;
      case 0x31A:
        mach_continuous_time();
        v24 = *(*(this + 9) + 8 * v6 + 31120);
        absolutetime_to_nanoseconds();
        *(*(this + 9) + 8 * v6 + 31104) = v62 / 0xF4240;
        *(*(this + 9) + 8 * v6 + 31120) = mach_continuous_time();
        v25 = AppleBCMWLANCore::parseEventLogRecordLostMpduPerSlice(this, v12, v6);
        if (!v25)
        {
          goto LABEL_89;
        }

        v55 = v25;
        if (!(*(*this + 1952))(this))
        {
          goto LABEL_126;
        }

        (*(*this + 1952))(this);
        v50 = v58;
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::parsePerSliceContainer(this);
        }

        goto LABEL_127;
      case 0x31B:
        v36 = AppleBCMWLANCore::parseEventLogRecordWmeTxMpduPerSlice(this, v11, v6);
        if (!v36)
        {
          goto LABEL_89;
        }

        v55 = v36;
        if (!(*(*this + 1952))(this))
        {
          goto LABEL_126;
        }

        (*(*this + 1952))(this);
        v50 = v58;
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::parsePerSliceContainer(this);
        }

        goto LABEL_127;
      case 0x31C:
        v35 = AppleBCMWLANCore::parseEventLogRecordWmeRxMpduPerSlice(this, v11, v6);
        if (!v35)
        {
          goto LABEL_89;
        }

        v55 = v35;
        if (!(*(*this + 1952))(this))
        {
          goto LABEL_126;
        }

        (*(*this + 1952))(this);
        v50 = v58;
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::parsePerSliceContainer(this);
        }

        goto LABEL_127;
      case 0x31E:
        if (!*(*(this + 9) + 5512))
        {
          goto LABEL_89;
        }

        if (AppleBCMWLANCore::featureFlagIsBitSet(this, 76))
        {
          v37 = 3;
        }

        else
        {
          v37 = 2;
        }

        v38 = AppleBCMWLANCore::reportSlicesScanPwrStats6E(this, v12, v6, v37);
        if (!v38)
        {
          v39 = *(*(this + 9) + 5512);
          if (AppleBCMWLANCore::featureFlagIsBitSet(this, 76))
          {
            v40 = 3;
          }

          else
          {
            v40 = 2;
          }

          v41 = AppleBCMWLANIOReportingPerSlice::reportScanPwrStats6E(v39, v12, v6, v40);
          if (v41)
          {
            v55 = v41;
            if ((*(*this + 1952))(this))
            {
              (*(*this + 1952))(this);
              if (CCLogStream::shouldLog())
              {
                AppleBCMWLANCore::parsePerSliceContainer(this);
              }
            }

            goto LABEL_126;
          }

LABEL_89:
          v59[0] = 0;
          if (AppleBCMWLANCore::safe_align_up(this, v4 + v9 + 4, 4uLL, v59))
          {
            AppleBCMWLANCore::parsePerSliceContainer(this);
LABEL_125:
            v55 = 3758097084;
            goto LABEL_126;
          }

          v4 = v59[0];
          if (v59[0] >= 0xFFFF)
          {
            AppleBCMWLANCore::parsePerSliceContainer(this);
            goto LABEL_125;
          }

          (v12->release)(v12);
          if ((*(*this + 1952))(this))
          {
            (*(*this + 1952))(this);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANCore::parsePerSliceContainer(this);
            }
          }

          v5 = v4;
          if (OSData::getLength(a2) <= v4)
          {
            goto LABEL_95;
          }

          continue;
        }

        v55 = v38;
        if ((*(*this + 1952))(this))
        {
          (*(*this + 1952))(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::parsePerSliceContainer(this);
          }
        }

LABEL_126:
        v50 = v58;
LABEL_127:
        if ((*(*this + 1952))(this))
        {
          (*(*this + 1952))(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::parsePerSliceContainer(this);
          }
        }

        AppleBCMWLANCore::is4387C0(this);
        v52 = v57;
        if (v12)
        {
          (v12->release)(v12);
        }

LABEL_98:
        if (v52)
        {
          IOFreeData();
        }

        if (v50)
        {
          IOFreeData();
        }

        return v55;
      default:
        if (*v8 != 1)
        {
LABEL_103:
          v55 = 3758097084;
          if (!(*(*this + 1952))(this))
          {
            goto LABEL_126;
          }

          (*(*this + 1952))(this);
          v50 = v58;
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::parsePerSliceContainer(this);
          }

          goto LABEL_127;
        }

        if (v9 != 1)
        {
          v55 = 3758097084;
          if (!(*(*this + 1952))(this))
          {
            goto LABEL_126;
          }

          (*(*this + 1952))(this);
          v50 = v58;
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::parsePerSliceContainer(this);
          }

          goto LABEL_127;
        }

        v13 = OSData::getBytesNoCopy(a2, v5 + 4, 1uLL);
        if (!v13)
        {
          v55 = 3758097084;
          if (!(*(*this + 1952))(this))
          {
            goto LABEL_126;
          }

          (*(*this + 1952))(this);
          v50 = v58;
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::parsePerSliceContainer(this);
          }

          goto LABEL_127;
        }

        v6 = *v13;
        if ((*(*this + 1952))(this))
        {
          (*(*this + 1952))(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::parsePerSliceContainer(this);
          }
        }

        if (v6 > 2 || (!AppleBCMWLANCore::featureFlagIsBitSet(this, 76) ? (v14 = 2) : (v14 = 3), v6 >= v14))
        {
          v55 = 3758097084;
          if (!(*(*this + 1952))(this))
          {
            goto LABEL_126;
          }

          (*(*this + 1952))(this);
          v50 = v58;
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::parsePerSliceContainer(this);
          }

          goto LABEL_127;
        }

        goto LABEL_89;
    }
  }
}

uint64_t AppleBCMWLANCore::parseIFStatsContainer(AppleBCMWLANCore *this, OSData *a2)
{
  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::parseIFStatsContainer(this);
    }
  }

  if (OSData::getLength(a2))
  {
    v4 = 0;
    v5 = 0;
    v6 = 3;
    do
    {
      if (OSData::getLength(a2) - v4 < 5)
      {
        return 0;
      }

      if ((OSData::getBytesNoCopy(a2) & 3) != 0)
      {
        v36 = -536870212;
        if ((*(*this + 1952))(this))
        {
          (*(*this + 1952))(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::parseIFStatsContainer(this);
          }
        }

        goto LABEL_107;
      }

      BytesNoCopy = OSData::getBytesNoCopy(a2, v4, 4uLL);
      if (!BytesNoCopy)
      {
        v36 = -536870212;
        if ((*(*this + 1952))(this))
        {
          (*(*this + 1952))(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::parseIFStatsContainer(this);
          }
        }

        goto LABEL_107;
      }

      v8 = BytesNoCopy;
      v9 = BytesNoCopy[1];
      Length = OSData::getLength(a2);
      v11 = v5;
      v12 = v5 + 4;
      if (Length - v12 < v9)
      {
        v36 = -536870212;
        if ((*(*this + 1952))(this))
        {
          (*(*this + 1952))(this);
          if (CCLogStream::shouldLog())
          {
            v35 = (*(*this + 1952))(this);
            CCLogStream::logAlert(v35, "[dk] %s@%d:Insufficient containerLength %d index %d\n", "parseIFStatsContainer", 32071, v9, v5);
          }
        }

        goto LABEL_107;
      }

      v13 = OSData::getBytesNoCopy(a2, v12, v9);
      if (!v13)
      {
        v36 = -536870212;
        if ((*(*this + 1952))(this))
        {
          (*(*this + 1952))(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::parseIFStatsContainer(this);
          }
        }

        goto LABEL_107;
      }

      v14 = OSData::withBytesNoCopy(v13, v9);
      if (!v14)
      {
        v36 = -536870212;
        if ((*(*this + 1952))(this))
        {
          (*(*this + 1952))(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::parseIFStatsContainer(this);
          }
        }

LABEL_107:
        v15 = 0;
        goto LABEL_75;
      }

      v15 = v14;
      v16 = *v8;
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          v32 = (*(*this + 1952))(this);
          CCLogStream::logInfoIf(v32, 0x2000000000uLL, "[dk] %s@%d:parseIFStatsContainer xtlv index %d id %x length %d\n", "parseIFStatsContainer", 32082, v11, *v8, v8[1]);
        }
      }

      if (v16 <= 1284)
      {
        if (v16 > 1282)
        {
          if (v16 == 1283)
          {
            if (v6 >= 3)
            {
              v36 = -536870212;
              if ((*(*this + 1952))(this))
              {
                (*(*this + 1952))(this);
                if (CCLogStream::shouldLog())
                {
                  AppleBCMWLANCore::parseIFStatsContainer(this);
                }
              }

              goto LABEL_75;
            }

            v26 = *OSData::getBytesNoCopy(v15);
            if (v26 == 2)
            {
              if ((v9 - 29) <= 0xFFF6u)
              {
                v36 = -536870212;
                if ((*(*this + 1952))(this))
                {
                  (*(*this + 1952))(this);
                  if (CCLogStream::shouldLog())
                  {
                    AppleBCMWLANCore::parseIFStatsContainer(this);
                  }
                }

                goto LABEL_75;
              }
            }

            else
            {
              if (v26 != 1)
              {
                v36 = -536870212;
                if ((*(*this + 1952))(this))
                {
                  (*(*this + 1952))(this);
                  if (CCLogStream::shouldLog())
                  {
                    AppleBCMWLANCore::parseIFStatsContainer(this);
                  }
                }

                goto LABEL_75;
              }

              if (v9 != 12)
              {
                v36 = -536870212;
                if ((*(*this + 1952))(this))
                {
                  (*(*this + 1952))(this);
                  if (CCLogStream::shouldLog())
                  {
                    AppleBCMWLANCore::parseIFStatsContainer(this);
                  }
                }

                goto LABEL_75;
              }
            }

            v27 = *(*(this + 9) + 5608);
            if (v27)
            {
              AppleBCMWLANLQM::setInfraSpecificStatsVersion(v27, v26);
            }

            v28 = AppleBCMWLANCore::convertInfraSpecificStatisticsToApple80211Counters(this, v15);
            if (v28)
            {
              v36 = v28;
              if ((*(*this + 1952))(this))
              {
                (*(*this + 1952))(this);
                if (CCLogStream::shouldLog())
                {
                  AppleBCMWLANCore::parseIFStatsContainer(this);
                }
              }

              goto LABEL_75;
            }

            v29 = *(this + 9);
            v30 = *(v29 + 5608);
            if (v30 && !v6)
            {
              updated = AppleBCMWLANLQM::updateInfraSpecificStatistics(v30, v15);
              if (updated)
              {
                v36 = updated;
                if ((*(*this + 1952))(this))
                {
                  (*(*this + 1952))(this);
                  if (CCLogStream::shouldLog())
                  {
                    AppleBCMWLANCore::parseIFStatsContainer(this);
                  }
                }

                goto LABEL_75;
              }

              v29 = *(this + 9);
            }

            if (*(v29 + 19900) == 1)
            {
              AppleBCMWLANCore::updateTrafficInactivityBeaconStats(this, v15);
            }
          }

          else
          {
            if (v6 >= 3)
            {
              v36 = -536870212;
              if ((*(*this + 1952))(this))
              {
                (*(*this + 1952))(this);
                if (CCLogStream::shouldLog())
                {
                  AppleBCMWLANCore::parseIFStatsContainer(this);
                }
              }

              goto LABEL_75;
            }

            if (v9 != 108)
            {
              v36 = -536870212;
              if ((*(*this + 1952))(this))
              {
                (*(*this + 1952))(this);
                if (CCLogStream::shouldLog())
                {
                  AppleBCMWLANCore::parseIFStatsContainer(this);
                }
              }

              goto LABEL_75;
            }

            v21 = AppleBCMWLANCore::convertInfraControlManagementStatisticsToApple80211Counters(this, v15, v6);
            if (v21)
            {
              v36 = v21;
              if ((*(*this + 1952))(this))
              {
                (*(*this + 1952))(this);
                if (CCLogStream::shouldLog())
                {
                  AppleBCMWLANCore::parseIFStatsContainer(this);
                }
              }

              goto LABEL_75;
            }

            v22 = *(*(this + 9) + 5608);
            if (v22 && !v6)
            {
              v23 = AppleBCMWLANLQM::updateInfraControlManagementStatistics(v22, v15);
              if (v23)
              {
                v36 = v23;
                if ((*(*this + 1952))(this))
                {
                  (*(*this + 1952))(this);
                  if (CCLogStream::shouldLog())
                  {
                    AppleBCMWLANCore::parseIFStatsContainer(this);
                  }
                }

                goto LABEL_75;
              }

LABEL_45:
              v6 = 0;
            }
          }
        }

        else if (v16 == 2)
        {
          v25 = OSData::getBytesNoCopy(v15, 0, 1uLL);
          if (!v25)
          {
            v36 = -536870212;
            if ((*(*this + 1952))(this))
            {
              (*(*this + 1952))(this);
              if (CCLogStream::shouldLog())
              {
                AppleBCMWLANCore::parseIFStatsContainer(this);
              }
            }

            goto LABEL_75;
          }

          v6 = *v25;
          if ((*(*this + 1952))(this))
          {
            (*(*this + 1952))(this);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANCore::parseIFStatsContainer(this);
            }
          }

          if (v6 >= 3)
          {
            v36 = -536870212;
            if ((*(*this + 1952))(this))
            {
              (*(*this + 1952))(this);
              if (CCLogStream::shouldLog())
              {
                AppleBCMWLANCore::parseIFStatsContainer(this);
              }
            }

            goto LABEL_75;
          }
        }

        else
        {
          if (v16 != 1282)
          {
            goto LABEL_84;
          }

          if (v6 >= 3)
          {
            v36 = -536870212;
            if ((*(*this + 1952))(this))
            {
              (*(*this + 1952))(this);
              if (CCLogStream::shouldLog())
              {
                AppleBCMWLANCore::parseIFStatsContainer(this);
              }
            }

            goto LABEL_75;
          }

          if (v9 != 184)
          {
            v36 = -536870212;
            if ((*(*this + 1952))(this))
            {
              (*(*this + 1952))(this);
              if (CCLogStream::shouldLog())
              {
                AppleBCMWLANCore::parseIFStatsContainer(this);
              }
            }

            goto LABEL_75;
          }

          v17 = AppleBCMWLANCore::convertInfraGenericStatisticsToApple80211Counters(this, v15, v6);
          if (v17)
          {
            v36 = v17;
            if ((*(*this + 1952))(this))
            {
              (*(*this + 1952))(this);
              if (CCLogStream::shouldLog())
              {
                AppleBCMWLANCore::parseIFStatsContainer(this);
              }
            }

            goto LABEL_75;
          }

          v18 = *(*(this + 9) + 5608);
          if (v18 && !v6)
          {
            v19 = AppleBCMWLANLQM::updateInfraGenericStatistics(v18, v15);
            if (v19)
            {
              v36 = v19;
              if ((*(*this + 1952))(this))
              {
                (*(*this + 1952))(this);
                if (CCLogStream::shouldLog())
                {
                  AppleBCMWLANCore::parseIFStatsContainer(this);
                }
              }

              goto LABEL_75;
            }

            goto LABEL_45;
          }
        }
      }

      else if ((v16 - 1285) >= 4)
      {
        if (v16 == 1291)
        {
          if (v6 >= 3)
          {
            v36 = -536870212;
            if ((*(*this + 1952))(this))
            {
              (*(*this + 1952))(this);
              if (CCLogStream::shouldLog())
              {
                AppleBCMWLANCore::parseIFStatsContainer(this);
              }
            }

            goto LABEL_75;
          }

          if (v9 != 88)
          {
            v36 = -536870212;
            if ((*(*this + 1952))(this))
            {
              (*(*this + 1952))(this);
              if (CCLogStream::shouldLog())
              {
                AppleBCMWLANCore::parseIFStatsContainer(this);
              }
            }

            goto LABEL_75;
          }

          v24 = AppleBCMWLANCore::convertInfraSpecificHeStatisticsToApple80211Counters(this, v15);
          if (v24)
          {
            v36 = v24;
            if ((*(*this + 1952))(this))
            {
              (*(*this + 1952))(this);
              if (CCLogStream::shouldLog())
              {
                AppleBCMWLANCore::parseIFStatsContainer(this);
              }
            }

            goto LABEL_75;
          }
        }

        else
        {
          if (v16 != 1294)
          {
LABEL_84:
            if ((*(*this + 1952))(this))
            {
              (*(*this + 1952))(this);
              if (CCLogStream::shouldLog())
              {
                AppleBCMWLANCore::parseIFStatsContainer(this);
              }
            }

LABEL_87:
            v36 = 0;
LABEL_75:
            if ((*(*this + 1952))(this))
            {
              (*(*this + 1952))(this);
              if (CCLogStream::shouldLog())
              {
                AppleBCMWLANCore::parseIFStatsContainer(this);
              }
            }

            if (v36)
            {
              v33 = v36;
            }

            else
            {
              v33 = 3758097084;
            }

            if (v15)
            {
              (v15->release)(v15);
            }

            return v33;
          }

          v20 = AppleBCMWLANCore::parsePeerStatsGlobalContainer(this, v6, v15);
          if (v20)
          {
            v36 = v20;
            if ((*(*this + 1952))(this))
            {
              (*(*this + 1952))(this);
              if (CCLogStream::shouldLog())
              {
                AppleBCMWLANCore::parseIFStatsContainer(this);
              }
            }

            goto LABEL_75;
          }
        }
      }

      v37 = 0;
      if (AppleBCMWLANCore::safe_align_up(this, v4 + v9 + 4, 4uLL, &v37))
      {
        AppleBCMWLANCore::parseIFStatsContainer(this);
        goto LABEL_87;
      }

      v4 = v37;
      if (v37 >= 0xFFFF)
      {
        AppleBCMWLANCore::parseIFStatsContainer(this);
        goto LABEL_87;
      }

      (v15->release)(v15);
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::parseIFStatsContainer(this);
        }
      }

      v5 = v4;
    }

    while (OSData::getLength(a2) > v4);
  }

  return 0;
}

uint64_t AppleBCMWLANCore::parseAMPDUStatsGlobalContainer(AppleBCMWLANCore *this, OSData *a2)
{
  v2 = a2;
  memset(bytes, 0, 260);
  memset(v82, 0, sizeof(v82));
  v81 = 0;
  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  v76 = 0u;
  if (OSData::getLength(a2))
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v70 = 0;
    v7 = 0;
    LODWORD(v8) = 0;
    v68 = (v82 | 0xC);
    v9 = 0;
    v72 = v2;
    do
    {
      if (OSData::getLength(v2) - v4 < 4)
      {
        return 0;
      }

      v69 = v9;
      if ((OSData::getBytesNoCopy(v2) & 3) != 0)
      {
        if ((*(*this + 1952))(this))
        {
          (*(*this + 1952))(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::parseAMPDUStatsGlobalContainer(this);
          }
        }

        goto LABEL_144;
      }

      BytesNoCopy = OSData::getBytesNoCopy(v2, v4, 4uLL);
      if (!BytesNoCopy)
      {
        if ((*(*this + 1952))(this))
        {
          (*(*this + 1952))(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::parseAMPDUStatsGlobalContainer(this);
          }
        }

        goto LABEL_144;
      }

      v11 = BytesNoCopy;
      v12 = this;
      v71 = v6;
      v13 = v5;
      v14 = BytesNoCopy[1];
      v15 = v9;
      v16 = v9 + 4;
      if (OSData::getLength(v2) - v16 < v14)
      {
        v55 = v14;
        this = v12;
        if ((*(*v12 + 1952))(v12))
        {
          (*(*v12 + 1952))(v12);
          if (CCLogStream::shouldLog())
          {
            numBytesa = (*(*v12 + 1952))(v12);
            v56 = v11[1];
            v57 = *v11;
            OSData::getLength(v2);
            OSData::getLength(v2);
            this = v12;
            CCLogStream::logAlert(numBytesa, "[dk] %s@%d:Insufficient xtlv->len %d index %d xtlv->id 0x%x payload->getLength() %d remainder %d\n", "parseAMPDUStatsGlobalContainer");
          }
        }

LABEL_125:
        v5 = v13;
        LODWORD(v8) = v55;
        goto LABEL_144;
      }

      v17 = OSData::getBytesNoCopy(v2, v9 + 4, v14);
      numBytes = v14;
      if (v17)
      {
        v18 = 1;
      }

      else
      {
        v18 = v14 == 0;
      }

      if (!v18)
      {
        this = v12;
        if ((*(*v12 + 1952))(v12))
        {
          (*(*v12 + 1952))(v12);
          v55 = numBytes;
          if (CCLogStream::shouldLog())
          {
            v59 = (*(*v12 + 1952))(v12);
            v60 = v11[1];
            v61 = *v11;
            OSData::getLength(v72);
            CCLogStream::logAlert(v59, "[dk] %s@%d:payloadStart valid %d xtlv->len %d index %d xtlv->id 0x%x payload->getLength() %d index + BCM_XTLV_HDR_SIZE %d\n", "parseAMPDUStatsGlobalContainer");
          }

          goto LABEL_125;
        }

        goto LABEL_142;
      }

      v13 = *v11;
      v19 = (v13 - 16);
      if (v19 > 0x3A)
      {
        goto LABEL_110;
      }

      if (((1 << (v13 - 16)) & 0x7FFC0001FFFFC0FLL) != 0)
      {
        if (v14)
        {
          v6 = OSData::getBytesNoCopy(v72, v4, v14);
          v20 = v14;
          if (!v6)
          {
            this = v12;
            v5 = v13;
            if ((*(*v12 + 1952))(v12))
            {
              (*(*v12 + 1952))(v12);
              LODWORD(v8) = numBytes;
              if (CCLogStream::shouldLog())
              {
                AppleBCMWLANCore::parseAMPDUStatsGlobalContainer(v12);
              }
            }

            else
            {
              LODWORD(v8) = numBytes;
            }

            goto LABEL_144;
          }
        }

        else
        {
          if ((*(*v12 + 1952))(v12))
          {
            (*(*v12 + 1952))(v12);
            if (CCLogStream::shouldLog())
            {
              v43 = (*(*v12 + 1952))(v12);
              v66 = v11[1];
              v44 = *v11;
              Length = OSData::getLength(v72);
              v46 = OSData::getLength(v72);
              CCLogStream::logInfoIf(v43, 0x2000000000uLL, "[dk] %s@%d:Zero containerLength currentSlice %d xtlv->len %d index %d xtlv->id 0x%x payload->getLength() %d remainder %d\n", "parseAMPDUStatsGlobalContainer", 29999, v7, v66, v15, v44, Length, v46 - v16);
            }
          }

          v6 = v71;
          v20 = numBytes;
        }

        v5 = v13;
        this = v12;
        if (v7)
        {
          v2 = v72;
          LODWORD(v8) = v20;
          if (v70 != v5)
          {
            if ((*(*v12 + 1952))(v12))
            {
              (*(*v12 + 1952))(v12);
              if (CCLogStream::shouldLog())
              {
                AppleBCMWLANCore::parseAMPDUStatsGlobalContainer(v12);
              }
            }

            goto LABEL_144;
          }

          if (v20 >= 5 && v6)
          {
            if (v20 >= 0x105)
            {
              if ((*(*v12 + 1952))(v12))
              {
                (*(*v12 + 1952))(v12);
                if (CCLogStream::shouldLog())
                {
                  v47 = (*(*v12 + 1952))(v12);
                  CCLogStream::logAlert(v47, "[dk] %s@%d:Bad memory tag %d length xtlvLength %d ampduRateCnt.counters %lu\n", "parseAMPDUStatsGlobalContainer", 30027, v5, v20, 256);
                }
              }

              LODWORD(v8) = 260;
            }

            v21 = v8 >> 2;
            v22 = (v6 + 4);
            v23 = &bytes[1];
            do
            {
              v24 = *v22++;
              *v23++ += v24;
              --v21;
            }

            while (v21);
            v25 = HIWORD(bytes[0]);
            if (v8 > HIWORD(bytes[0]))
            {
              HIWORD(bytes[0]) = v8;
              v25 = v8;
            }
          }

          else
          {
            v25 = HIWORD(bytes[0]);
          }

          v26 = OSData::withBytes(bytes, v25 + 4);
          v27 = AppleBCMWLANCore::parseEventLogRecordAMPDU(v12, v26, LOWORD(bytes[0]), HIWORD(bytes[0]));
          if (v26)
          {
            (v26->release)(v26);
          }

          if (v27)
          {
            if ((*(*v12 + 1952))(v12))
            {
              (*(*v12 + 1952))(v12);
              if (CCLogStream::shouldLog())
              {
                AppleBCMWLANCore::parseAMPDUStatsGlobalContainer(v12);
              }
            }

            v5 = v70;
            goto LABEL_144;
          }

          goto LABEL_47;
        }

        memset(&bytes[1], 0, 256);
        LOWORD(bytes[0]) = v13;
        v7 = 1;
        LODWORD(v8) = v20;
        HIWORD(bytes[0]) = v20;
        v2 = v72;
        if (v20 >= 5 && v6)
        {
          if (v20 >= 0x105)
          {
            if ((*(*v12 + 1952))(v12))
            {
              (*(*v12 + 1952))(v12);
              if (CCLogStream::shouldLog())
              {
                v48 = (*(*v12 + 1952))(v12);
                CCLogStream::logAlert(v48, "[dk] %s@%d:Bad memory tag %d, length xtlvLength %d ampduRateCnt.counters %lu\n", "parseAMPDUStatsGlobalContainer", 30012, v5, v20, 256);
              }
            }

            LODWORD(v8) = 260;
          }

          memcpy(&bytes[1], v6 + 4, v8);
          v7 = 1;
        }

        v70 = v5;
      }

      else
      {
        v28 = v17;
        if (((1 << (v13 - 16)) & 0x300) != 0)
        {
          if (v14)
          {
            if (!v17)
            {
              this = v12;
              if ((*(*v12 + 1952))(v12))
              {
                (*(*v12 + 1952))(v12);
                if (CCLogStream::shouldLog())
                {
                  v62 = (*(*v12 + 1952))(v12);
                  v63 = v11[1];
                  v64 = *v11;
                  v65 = OSData::getLength(v72);
                  CCLogStream::logAlert(v62, "[dk] %s@%d:Bad payloadStart xtlv->len %d index %d xtlv->id 0x%x payload->getLength() %d index + BCM_XTLV_HDR_SIZE %d\n", "parseAMPDUStatsGlobalContainer", 30058, v63, v15, v64, v65, v15 + 4);
                }
              }

              goto LABEL_142;
            }

            if (v14 >= 0x111)
            {
              this = v12;
              v5 = *v11;
              if ((*(*v12 + 1952))(v12))
              {
                (*(*v12 + 1952))(v12);
                if (CCLogStream::shouldLog())
                {
                  LODWORD(v8) = numBytes;
                  AppleBCMWLANCore::parseAMPDUStatsGlobalContainer(v12);
                  goto LABEL_144;
                }
              }

LABEL_143:
              LODWORD(v8) = numBytes;
LABEL_144:
              v53 = 3758097084;
              if ((*(*this + 1952))(this))
              {
                (*(*this + 1952))(this);
                if (CCLogStream::shouldLog())
                {
                  v58 = (*(*this + 1952))(this);
                  CCLogStream::logAlert(v58, "[dk] %s@%d:Goto fail last tag %x length %d index %d\n", "parseAMPDUStatsGlobalContainer", 30178, v5, v8, v69);
                }
              }

              return v53;
            }

            v5 = *v11;
            if (v14 < 8)
            {
              v29 = 0;
              v30 = 0;
              v6 = v71;
            }

            else
            {
              v29 = v17[1];
              v6 = v71;
              if (v14 < 0xC)
              {
                v30 = 0;
              }

              else
              {
                v30 = v17[2];
              }
            }

            this = v12;
            v35 = (numBytes - 12);
            if (v7)
            {
              v8 = numBytes;
              if (v70 != v5)
              {
LABEL_150:
                if ((*(*this + 1952))(this))
                {
                  (*(*this + 1952))(this);
                  if (CCLogStream::shouldLog())
                  {
                    AppleBCMWLANCore::parseAMPDUStatsGlobalContainer(this);
                  }
                }

                goto LABEL_144;
              }

              *&v82[2] += v29;
              *&v82[4] += v30;
              v2 = v72;
              if (numBytes >= 0xD && v35 >= 4)
              {
                LODWORD(v36) = v35 >> 2;
                v37 = v17 + 3;
                if (v35 >> 2 <= 1)
                {
                  v36 = 1;
                }

                else
                {
                  v36 = v36;
                }

                v38 = (v82 | 0xC);
                do
                {
                  v39 = *v37++;
                  *v38++ += v39;
                  --v36;
                }

                while (v36);
              }

              goto LABEL_92;
            }

            *((v82 | 0xC) + 0x100) = 0;
            *((v82 | 0xC) + 0xE0) = 0u;
            *((v82 | 0xC) + 0xF0) = 0u;
            *((v82 | 0xC) + 0xC0) = 0u;
            *((v82 | 0xC) + 0xD0) = 0u;
            *((v82 | 0xC) + 0xA0) = 0u;
            *((v82 | 0xC) + 0xB0) = 0u;
            *((v82 | 0xC) + 0x80) = 0u;
            *((v82 | 0xC) + 0x90) = 0u;
            *((v82 | 0xC) + 0x60) = 0u;
            *((v82 | 0xC) + 0x70) = 0u;
            *((v82 | 0xC) + 0x40) = 0u;
            *((v82 | 0xC) + 0x50) = 0u;
            *((v82 | 0xC) + 0x20) = 0u;
            *((v82 | 0xC) + 0x30) = 0u;
            *v68 = 0u;
            *((v82 | 0xC) + 0x10) = 0u;
            v82[0] = v13;
            v82[1] = numBytes;
            *&v82[2] = v29;
            *&v82[4] = v30;
            if (numBytes < 0xD)
            {
              v7 = 1;
              v70 = v13;
              v2 = v72;
              LODWORD(v8) = numBytes;
            }

            else
            {
              if (numBytes >= 0x10D)
              {
                if ((*(*v12 + 1952))(v12))
                {
                  (*(*v12 + 1952))(v12);
                  if (CCLogStream::shouldLog())
                  {
                    this = v12;
                    AppleBCMWLANCore::parseAMPDUStatsGlobalContainer(v12);
                    v5 = v13;
                    LODWORD(v8) = numBytes;
                    goto LABEL_144;
                  }
                }

                v5 = v13;
                goto LABEL_166;
              }

              memcpy(v68, v17 + 3, v35);
              v7 = 1;
              v70 = v13;
              v2 = v72;
              LODWORD(v8) = numBytes;
            }
          }

          else
          {
            if ((*(*v12 + 1952))(v12))
            {
              (*(*v12 + 1952))(v12);
              if (CCLogStream::shouldLog())
              {
                v49 = (*(*v12 + 1952))(v12);
                v67 = v11[1];
                v50 = *v11;
                v51 = OSData::getLength(v72);
                v52 = OSData::getLength(v72);
                CCLogStream::logInfoIf(v49, 0x2000000000uLL, "[dk] %s@%d:Zero containerLength currentSlice %d xtlv->len %d index %d xtlv->id 0x%x payload->getLength() %d remainder %d\n", "parseAMPDUStatsGlobalContainer", 30074, v7, v67, v15, v50, v51, v52 - v16);
              }
            }

            if (v7)
            {
              v5 = v13;
              v18 = v70 == v13;
              v6 = v71;
              v2 = v72;
              this = v12;
              v8 = numBytes;
              if (!v18)
              {
                goto LABEL_150;
              }

LABEL_92:
              v40 = v82[1];
              if (v8 > v82[1])
              {
                v82[1] = v8;
                v40 = v8;
              }

              v41 = OSData::withBytes(v82, v40 + 4);
              v42 = AppleBCMWLANCore::parseEventLogRecordAMPDU(this, v41, v82[0], v82[1]);
              if (v41)
              {
                (v41->release)(v41);
              }

              if (v42)
              {
                if ((*(*this + 1952))(this))
                {
                  (*(*this + 1952))(this);
                  if (CCLogStream::shouldLog())
                  {
                    AppleBCMWLANCore::parseAMPDUStatsGlobalContainer(this);
                  }
                }

                goto LABEL_144;
              }

LABEL_47:
              v7 = 0;
              goto LABEL_48;
            }

            v5 = v13;
            v82[0] = v13;
            v70 = v13;
            memset(&v82[1], 0, 270);
            v6 = v71;
            v2 = v72;
            LODWORD(v8) = 0;
            this = v12;
            v7 = 1;
          }
        }

        else
        {
          if (v19 != 29)
          {
LABEL_110:
            this = v12;
            if ((*(*v12 + 1952))(v12))
            {
              (*(*v12 + 1952))(v12);
              v5 = v13;
              LODWORD(v8) = numBytes;
              if (CCLogStream::shouldLog())
              {
                AppleBCMWLANCore::parseAMPDUStatsGlobalContainer(v12);
              }

              goto LABEL_144;
            }

LABEL_142:
            v5 = v13;
            goto LABEL_143;
          }

          v81 = 0;
          v79 = 0u;
          v80 = 0u;
          v77 = 0u;
          v78 = 0u;
          if (v14 >= 0x58)
          {
            v31 = 88;
          }

          else
          {
            v31 = v14;
          }

          v76 = 0uLL;
          memcpy(&v76, v17, v31);
          if (v76 == 1)
          {
            if (WORD1(v76) >= 0x59u)
            {
              if ((*(*v12 + 1952))(v12))
              {
                (*(*v12 + 1952))(v12);
                if (CCLogStream::shouldLog())
                {
                  this = v12;
                  AppleBCMWLANCore::parseAMPDUStatsGlobalContainer(v12);
                  v5 = 45;
                  goto LABEL_143;
                }
              }

              v5 = 45;
LABEL_166:
              this = v12;
              goto LABEL_143;
            }

            v32 = OSData::withBytesNoCopy(v28, v31);
            updated = AppleBCMWLANLQM::updateSliceRxAmpduStats(*(*(v12 + 9) + 5608), v32, v7);
            v34 = updated;
            v5 = v13;
            if (v7 == *(*(v12 + 9) + 208))
            {
              v6 = v71;
              this = v12;
              if (!updated)
              {
                v34 = AppleBCMWLANCore::updateSlowWifiRxAmpduStats(v12, v32);
              }
            }

            else
            {
              v6 = v71;
              this = v12;
            }

            v2 = v72;
            LODWORD(v8) = numBytes;
            if (v32)
            {
              (v32->release)(v32);
            }

            v7 = v7 == 0;
            if (v34)
            {
              if ((*(*this + 1952))(this))
              {
                (*(*this + 1952))(this);
                if (CCLogStream::shouldLog())
                {
                  AppleBCMWLANCore::parseAMPDUStatsGlobalContainer(this);
                }
              }

              v5 = 45;
              goto LABEL_144;
            }
          }

          else
          {
            this = v12;
            if ((*(*v12 + 1952))(v12))
            {
              (*(*v12 + 1952))(v12);
              if (CCLogStream::shouldLog())
              {
                AppleBCMWLANCore::parseAMPDUStatsGlobalContainer(v12);
              }
            }

            v7 = v7 == 0;
            v5 = v13;
            v6 = v71;
            v2 = v72;
            LODWORD(v8) = numBytes;
          }
        }
      }

LABEL_48:
      v75 = 0;
      if (AppleBCMWLANCore::safe_align_up(this, v4 + v8 + 4, 4uLL, &v75))
      {
        AppleBCMWLANCore::parseAMPDUStatsGlobalContainer(this);
        goto LABEL_144;
      }

      v4 = v75;
      if (v75 >= 0xFFFF)
      {
        AppleBCMWLANCore::parseAMPDUStatsGlobalContainer(this);
        goto LABEL_144;
      }

      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::parseAMPDUStatsGlobalContainer(this);
        }
      }

      v9 = v4;
    }

    while (OSData::getLength(v2) > v4);
  }

  return 0;
}

uint64_t AppleBCMWLANCore::parseChanStatsGlobalContainer(AppleBCMWLANCore *this, OSData *a2)
{
  v4 = this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000;
  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::parseChanStatsGlobalContainer(this);
    }
  }

  if ((OSData::getBytesNoCopy(a2) & 3) != 0)
  {
    AppleBCMWLANCore::parseChanStatsGlobalContainer(this);
    return v21;
  }

  else
  {
    if (OSData::getLength(a2))
    {
      v5 = 0;
      v6 = 0;
      do
      {
        v7 = v6;
        if (OSData::getLength(a2) - v5 < 5)
        {
          break;
        }

        BytesNoCopy = OSData::getBytesNoCopy(a2, v5, 4uLL);
        if (!BytesNoCopy)
        {
          AppleBCMWLANCore::parseChanStatsGlobalContainer(this, v4, v6, &v21);
          return v21;
        }

        v9 = BytesNoCopy;
        v10 = BytesNoCopy[1];
        Length = OSData::getLength(a2);
        v12 = v7 + 4;
        if (Length - v12 < v10)
        {
          v18 = 3758097084;
          if ((*(*this + 1952))(this))
          {
            (*(*this + 1952))(this);
            if (CCLogStream::shouldLog())
            {
              v20 = (*(*this + 1952))(this);
              CCLogStream::logAlert(v20, "[dk] %s@%d:Insufficient containerLength %d index %d\n", "parseChanStatsGlobalContainer", 29460, v10, v7);
            }
          }

          return v18;
        }

        if (*v9 != 1)
        {
          v18 = 3758097084;
          if ((*(*this + 1952))(this))
          {
            (*(*this + 1952))(this);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANCore::parseChanStatsGlobalContainer(this);
            }
          }

          return v18;
        }

        v13 = OSData::getBytesNoCopy(a2, v12, 0x10uLL);
        if (!v13)
        {
          AppleBCMWLANCore::parseChanStatsGlobalContainer(this);
          return v21;
        }

        v14 = v13;
        if (*v13 != 1)
        {
          AppleBCMWLANCore::parseChanStatsGlobalContainer(this);
          return v21;
        }

        v6 = (v7 + 20);
        if (OSData::getLength(a2) > (v7 + 20))
        {
          v15 = (v7 + 20);
          if (OSData::getLength(a2) - v15 >= 5)
          {
            v16 = OSData::getBytesNoCopy(a2, v15, 4uLL);
            if (!v16)
            {
              AppleBCMWLANCore::parseChanStatsGlobalContainer(this, v4, (v7 + 20), &v21);
              return v21;
            }

            if (*v16 == 1)
            {
              v17 = OSData::getBytesNoCopy(a2, (v7 + 24), v16[1]);
              v6 = (v7 + 72);
              AppleBCMWLANLQM::updateChanSeqCommonStats(*(*(this + 9) + 5608), v14, v17);
            }
          }
        }

        if ((*(*this + 1952))(this))
        {
          (*(*this + 1952))(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::parseChanStatsGlobalContainer(this);
          }
        }

        v5 = v6;
      }

      while (OSData::getLength(a2) > v6);
    }

    return 0;
  }
}

uint64_t AppleBCMWLANCore::parsePHYEcounter(AppleBCMWLANCore *this, OSData *a2)
{
  if (!a2 || OSData::getLength(a2) <= 5)
  {
    AppleBCMWLANCore::parsePHYEcounter(this);
    return v7;
  }

  if ((OSData::getBytesNoCopy(a2) & 3) != 0)
  {
    AppleBCMWLANCore::parsePHYEcounter(this);
    return v7;
  }

  v4 = *OSData::getBytesNoCopy(a2);
  if (v4 <= 3)
  {
    switch(v4)
    {
      case 1:

        return AppleBCMWLANCore::parsePHYEcounterV1(this, a2);
      case 2:

        return AppleBCMWLANCore::parsePHYEcounterV2(this, a2);
      case 3:

        return AppleBCMWLANCore::parsePHYEcounterV3(this, a2);
    }

    goto LABEL_23;
  }

  if (v4 > 6)
  {
    if (v4 == 7)
    {

      return AppleBCMWLANCore::parsePHYEcounterV7(this, a2);
    }

    if (v4 == 255)
    {
      return 0;
    }

LABEL_23:
    v6 = 3758097090;
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::parsePHYEcounter(this);
      }
    }

    return v6;
  }

  if (v4 != 4)
  {
    if (v4 == 5)
    {

      return AppleBCMWLANCore::parsePHYEcounterV5(this, a2);
    }

    goto LABEL_23;
  }

  return AppleBCMWLANCore::parsePHYEcounterV4(this, a2);
}

uint64_t AppleBCMWLANCore::parsePHYCalEcounter(AppleBCMWLANCore *this, OSData *a2)
{
  if (!a2 || OSData::getLength(a2) <= 7)
  {
    AppleBCMWLANCore::parsePHYCalEcounter(this);
    return v7;
  }

  if ((OSData::getBytesNoCopy(a2) & 3) != 0)
  {
    AppleBCMWLANCore::parsePHYCalEcounter(this);
    return v7;
  }

  v4 = *OSData::getBytesNoCopy(a2);
  if (v4 > 2)
  {
    if (v4 == 3)
    {

      return AppleBCMWLANCore::parsePHYCalEcounterV3(this, a2);
    }

    if (v4 != 255)
    {
LABEL_13:
      v6 = 3758097090;
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::parsePHYCalEcounter(this);
        }
      }

      return v6;
    }

    return 0;
  }

  if (v4 != 1)
  {
    if (v4 == 2)
    {

      return AppleBCMWLANCore::parsePHYCalEcounterV2(this, a2);
    }

    goto LABEL_13;
  }

  return AppleBCMWLANCore::parsePHYCalEcounterV1(this, a2);
}

uint64_t AppleBCMWLANCore::parseDTIMEcounter(AppleBCMWLANCore *this, OSData *a2)
{
  if ((OSData::getBytesNoCopy(a2) & 3) != 0)
  {
    AppleBCMWLANCore::parseDTIMEcounter(this);
    return *buf;
  }

  BytesNoCopy = OSData::getBytesNoCopy(a2);
  if (*BytesNoCopy != 1)
  {
    AppleBCMWLANCore::parseDTIMEcounter(this);
    return *buf;
  }

  if (BytesNoCopy[1] != 32)
  {
    AppleBCMWLANCore::parseDTIMEcounter(this);
    return *buf;
  }

  v5 = *(BytesNoCopy + 1);
  v6 = *(BytesNoCopy + 2);
  v7 = *(BytesNoCopy + 3);
  v8 = *(BytesNoCopy + 4);
  v9 = *(BytesNoCopy + 5);
  v10 = *(BytesNoCopy + 6);
  v11 = *(BytesNoCopy + 7);
  mach_continuous_time();
  absolutetime_to_nanoseconds();
  if (!(*(*this + 1952))(this) || ((*(*this + 1952))(this), (CCLogStream::shouldLogConsole() & 1) == 0))
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67111426;
      v16 = 73;
      v17 = 2080;
      v18 = "parseDTIMEcounter";
      v19 = 1024;
      v20 = 28844;
      v21 = 1024;
      v22 = v5;
      v23 = 1024;
      v24 = v6;
      v25 = 1024;
      v26 = v7;
      v27 = 1024;
      v28 = v8;
      v29 = 1024;
      v30 = v9;
      v31 = 1024;
      v32 = v10;
      v33 = 1024;
      v34 = v11;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%c [dk] %s@%d: DTIM missed count: p2p(%d), iovar(%d), scan(%d), roam(%d), homechan(%d), sleep(%d), misc(%d)", buf, 0x42u);
    }
  }

  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      v14 = (*(*this + 1952))(this);
      CCLogStream::logInfo(v14, "[dk] %s@%d:DTIM missed count: p2p(%d), iovar(%d), scan(%d), roam(%d), homechan(%d), sleep(%d), misc(%d)", "parseDTIMEcounter", 28844, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = mach_continuous_time();
  result = 0;
  AppleBCMWLANCore::parseDTIMEcounter(OSData *)::fLastLogDeltaDTIMMissedStats = v12;
  return result;
}