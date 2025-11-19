uint64_t AppleBCMWLANPCIeSkywalk::createLowLatencyCompRing(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a3 > 1)
  {
    return 3758097084;
  }

  v13[0] = a1;
  v13[1] = AppleBCMWLANPCIeSkywalk::createLowLatencyCompRingComplete;
  v4 = *(a1 + 56);
  v5 = 88;
  if (a3)
  {
    v5 = 96;
    v6 = AppleBCMWLANPCIeSkywalk::rxCompRingError;
  }

  else
  {
    v6 = AppleBCMWLANPCIeSkywalk::txCompRingError;
  }

  if (a3)
  {
    v7 = AppleBCMWLANPCIeSkywalk::rxCompRingDrain;
  }

  else
  {
    v7 = AppleBCMWLANPCIeSkywalk::txCompRingDrain;
  }

  v13[2] = v4 + v5;
  DynamicCompletionRing = AppleBCMWLANBusInterfacePCIe::createDynamicCompletionRing(*(v4 + 48), a2, v13, v7, v6);
  if (OUTLINED_FUNCTION_2_10() && CCLogStream::shouldLog())
  {
    v12 = OUTLINED_FUNCTION_2_10();
    CCLogStream::logAlert(v12, "[dk] %s@%d:dynamic completion ring create returned 0x%x\n", "createLowLatencyCompRing", 648, DynamicCompletionRing);
    if (DynamicCompletionRing)
    {
      return DynamicCompletionRing;
    }

    goto LABEL_11;
  }

  if (!DynamicCompletionRing)
  {
LABEL_11:
    ++*(*(a1 + 56) + 112);
    v9 = OUTLINED_FUNCTION_5_0(*(*(a1 + 56) + 104));
    (*(v10 + 56))(v9, 5000);
  }

  return DynamicCompletionRing;
}

uint64_t AppleBCMWLANPCIeSkywalk::createLowLatencyCompRingComplete(uint64_t this, AppleBCMWLANPCIeCompletionRing *a2, int a3, CCLogStream **a4)
{
  v7 = this;
  v8 = *(this + 56);
  if (!*(v8 + 112) || (--*(v8 + 112), v8 = *(this + 56), !*(v8 + 112)))
  {
    v9 = OUTLINED_FUNCTION_5_0(*(v8 + 104));
    this = (*(v10 + 72))(v9);
    v8 = *(v7 + 56);
  }

  v12 = (v8 + 88) != a4 && v8 + 96 != a4;
  if (a2 && !v12)
  {
    if (*v8 && CCLogStream::shouldLog())
    {
      v24 = *(v7 + 56);
      if (v24 + 11 == a4)
      {
        v25 = "tx";
      }

      else
      {
        v25 = "rx";
      }

      CCLogStream::logAlert(*v24, "[dk] %s@%d:Skywalk low latency %s comp ring create complete ", "createLowLatencyCompRingComplete", 673, v25);
    }

    v13 = OUTLINED_FUNCTION_2_10();
    if (a3)
    {
      if (v13)
      {
        shouldLog = CCLogStream::shouldLog();
        v14 = *(v7 + 56);
        if (shouldLog)
        {
          CCLogStream::logAlert(*v14, "[dk] %s@%d:failed\n", "createLowLatencyCompRingComplete", 685);
          v14 = *(v7 + 56);
        }
      }

      v16 = v14[2];

      return CCFaultReporter::reportFault(v16, 4u, "/Library/Caches/com.apple.xbs/Sources/AppleBCMWLANV3_driverkit/Busses/PCIe/AppleBCMWLANPCIeSkywalk.cpp", 0x2AEu, "createLowLatencyCompRingComplete", 0, -469794010, 0);
    }

    else
    {
      if (v13)
      {
        v17 = CCLogStream::shouldLog();
        v14 = *(v7 + 56);
        if (v17)
        {
          CCLogStream::logAlert(*v14, "[dk] %s@%d:succeeded %p\n", "createLowLatencyCompRingComplete", 675, a2);
          v14 = *(v7 + 56);
        }
      }

      v18 = 12;
      if (v14 + 11 == a4)
      {
        v18 = 11;
      }

      v14[v18] = a2;
      v19 = OUTLINED_FUNCTION_0_11(*(v7 + 56));
      this = (*(v20 + 80))(v19);
      if (this)
      {
        OUTLINED_FUNCTION_10_6();
        v27 = 0x40000000;
        v28 = ___ZN23AppleBCMWLANPCIeSkywalk32createLowLatencyCompRingCompleteEP30AppleBCMWLANPCIeCompletionRingiPv_block_invoke;
        v29 = &__block_descriptor_tmp_28;
        v30 = v7;
        v31 = a2;
        v32 = v21;
        v22 = OUTLINED_FUNCTION_5_0(v21);
        return (*(v23 + 112))(v22, v26);
      }
    }
  }

  return this;
}

uint64_t AppleBCMWLANPCIeSkywalk::txCompRingDrain(AppleBCMWLANPCIeSkywalk *this, OSMetaClassBase *anObject, char *a3, unsigned int a4)
{
  memset(v150, 170, 24);
  v8 = OSMetaClassBase::safeMetaCast(anObject, gAppleBCMWLANPCIeCompletionRingMetaClass);
  v9 = OUTLINED_FUNCTION_12_4(*(this + 7));
  v11 = (*(v10 + 1104))(v9);
  TxPacketTracker = AppleBCMWLANPCIeSkywalkPacketPool::getTxPacketTracker(*(*(this + 7) + 56));
  v12 = OUTLINED_FUNCTION_26();
  TxChipDelayToUsecMultiplier = AppleBCMWLANBusInterfacePCIe::getTxChipDelayToUsecMultiplier(v12);
  v149 = 0;
  PTMMode = AppleBCMWLANCore::getPTMMode(v11);
  v13 = &kSliceChannelSwitchDwellHistConfig;
  if (fKernelTraceEnabled)
  {
    OUTLINED_FUNCTION_19_1();
    (*(v124 + 208))(v8);
    v125 = OUTLINED_FUNCTION_0_11(*(this + 7));
    (*(v126 + 784))(v125);
    kdebug_trace();
  }

  v14 = mach_continuous_time();
  v15 = v14;
  *(*(this + 7) + 200) = v14;
  *(*(this + 7) + 208) += a4;
  if (!a4)
  {
    v115 = 0;
    goto LABEL_185;
  }

  v137 = anObject;
  v16 = 0;
  v17 = 0;
  v139 = 0;
  v138 = 0;
  v142 = 0;
  v140 = v14;
  v136 = a4;
  v141 = a4;
  v18 = a4;
  v145 = v8;
  do
  {
    v150[0] = *a3;
    *&v150[1] = *(a3 + 2);
    if (BYTE1(v150[0]) <= 0xBuLL)
    {
      ++*(*(this + 7) + 8 * BYTE1(v150[0]) + 240);
    }

    if ((AppleBCMWLANPCIeTransmitFlowRing::isSkywalkResource(WORD3(v150[0])) & 1) == 0)
    {
      OUTLINED_FUNCTION_14_4();
      if (v24)
      {
        if ((!*v66 || (CCLogStream::shouldLogConsole() & 1) == 0) && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67110402;
          v152 = 73;
          v153 = 2080;
          v154 = "txCompRingDrain";
          v155 = 1024;
          v156 = 1923;
          v157 = 1024;
          v158 = WORD2(v150[0]);
          v159 = 1024;
          v160 = BYTE1(v150[0]);
          v161 = 1024;
          *v162 = WORD5(v150[0]);
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%c [dk] %s@%d: TxCompletionDebug: Skipping packet in isSkywalkResource resource id <%d> ifId <%d> flowid <%d>\n", buf, 0x2Au);
        }

        if (!OUTLINED_FUNCTION_2_10())
        {
          goto LABEL_156;
        }

        shouldLog = CCLogStream::shouldLog();
        v66 = *(this + 7);
        if (shouldLog)
        {
          CCLogStream::logInfo(*v66, "[dk] %s@%d:TxCompletionDebug: Skipping packet in isSkywalkResource resource id <%d> ifId <%d> flowid <%d>\n", "txCompRingDrain", 1923, WORD2(v150[0]), BYTE1(v150[0]), WORD5(v150[0]));
          v66 = *(this + 7);
        }

        v8 = v145;
      }

      if (*v66 && CCLogStream::shouldLog())
      {
        v67 = OUTLINED_FUNCTION_2_10();
        CCLogStream::logEmergency(v67, "[dk] %s@%d:Skipping, completion is not a skywalkResource:0x%hx\n", "txCompRingDrain", 1925, WORD3(v150[0]));
      }

      goto LABEL_43;
    }

    v19 = WORD2(v150[0]);
    v20 = AppleBCMWLANHashtable::remove(TxPacketTracker, SWORD2(v150[0]));
    v21 = OSMetaClassBase::safeMetaCast(v20, gAppleBCMWLANPCIeSkywalkPacketMetaClass);
    v22 = *(*(this + 7) + 88);
    v23 = BYTE1(v150[0]);
    if (v22)
    {
      v24 = v8 == v22;
    }

    else
    {
      v24 = 0;
    }

    if (v24)
    {
      if (AppleBCMWLANCore::getProximityInterfaceId(v11) == v23)
      {
        v23 = 9;
      }

      else
      {
        if (BYTE1(v150[0]) != 3)
        {
          goto LABEL_18;
        }

        v23 = 10;
      }
    }

    OUTLINED_FUNCTION_1_10();
    v16 = (*(v25 + 1992))(v11, v23);
LABEL_18:
    if (!v16)
    {
      if (OUTLINED_FUNCTION_2_10() && CCLogStream::shouldLog())
      {
        v98 = OUTLINED_FUNCTION_2_10();
        CCLogStream::logAlert(v98, "[dk] %s@%d:%s[%u] Invalid skywalkInterface\n", "txCompRingDrain", 1942, "txCompRingDrain", 1942);
      }

      v16 = 0;
      goto LABEL_43;
    }

    v26 = v19;
    InterfaceRole = IO80211SkywalkInterface::getInterfaceRole(v16);
    if (!v21)
    {
      if (OUTLINED_FUNCTION_2_10())
      {
        v69 = CCLogStream::shouldLog();
        v68 = *(this + 7);
        if (v69)
        {
          CCLogStream::logAlert(*v68, "[dk] %s@%d:itemCount %d resource id %d tx comp invalid packet, item ring %p, go next\n", "txCompRingDrain", 1946, v136, v19, v137);
          v68 = *(this + 7);
        }
      }

      if (*(v68 + 129) == 1)
      {
        if ((!*v68 || (CCLogStream::shouldLogConsole() & 1) == 0) && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          OUTLINED_FUNCTION_6_6(1.5049e-36);
          v154 = "txCompRingDrain";
          v155 = 1024;
          v156 = 1948;
          v157 = 1024;
          v158 = v141;
          v159 = 1024;
          v160 = v19;
          v161 = 2048;
          *v162 = v137;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%c [dk] %s@%d: TxCompletionDebug: itemCount %d resource id %d tx comp invalid packet, item ring %p, go next\n", buf, 0x2Eu);
        }

        if (OUTLINED_FUNCTION_2_10() && CCLogStream::shouldLog())
        {
          v70 = OUTLINED_FUNCTION_2_10();
          v131 = v19;
          v132 = v137;
          v130 = v141;
          CCLogStream::logInfo(v70, "[dk] %s@%d:TxCompletionDebug: itemCount %d resource id %d tx comp invalid packet, item ring %p, go next\n");
        }

        goto LABEL_156;
      }

      goto LABEL_43;
    }

    v28 = InterfaceRole;
    if (AppleBCMWLANPCIeSkywalkPacket::getPktDup(v21))
    {
      OUTLINED_FUNCTION_14_4();
      if (v24)
      {
        if ((!*v29 || (CCLogStream::shouldLogConsole() & 1) == 0) && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          OUTLINED_FUNCTION_7_8(1.505e-36);
          OUTLINED_FUNCTION_22_1();
          v156 = 1956;
          v157 = v74;
          v158 = v26;
          OUTLINED_FUNCTION_23_3(v75);
          *&v162[6] = v28;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%c [dk] %s@%d: TxCompletionDebug: Skipping duplicate packet resource id <%d> ifId <%d> flowid <%d> ifRole:%d\n", buf, 0x30u);
        }

        if (OUTLINED_FUNCTION_2_10())
        {
          v76 = CCLogStream::shouldLog();
          v29 = *(this + 7);
          if (v76)
          {
            CCLogStream::logInfo(*v29, "[dk] %s@%d:TxCompletionDebug: Skipping duplicate packet resource id <%d> ifId <%d> flowid <%d> ifRole:%d\n", "txCompRingDrain", 1956, v26, BYTE1(v150[0]), WORD5(v150[0]), v28);
            v29 = *(this + 7);
          }
        }
      }

      ++*(v29 + 224);
      AppleBCMWLANPCIeSkywalkPacketPool::deallocatePacket(*(*(this + 7) + 56), v21);
      goto LABEL_43;
    }

    OUTLINED_FUNCTION_19_1();
    v31 = (*(v30 + 248))(v8);
    if (v31 == ((SBYTE2(v150[0]) & 0x80u) == 0) || LOBYTE(v150[0]) != 16)
    {
      if (OUTLINED_FUNCTION_2_10())
      {
        v73 = CCLogStream::shouldLog();
        v72 = *(this + 7);
        if (v73)
        {
          v99 = *v72;
          OUTLINED_FUNCTION_19_1();
          (*(v100 + 248))(v8);
          OUTLINED_FUNCTION_17_2();
          CCLogStream::logAlert(v99, "[dk] %s@%d:Ring Phase=%d msg Phase=%d msg type=%d flowIdValid=%d packet=%p skywalkInterface=%p", "txCompRingDrain", 1968, v130, v131, v132, v133, v134, v135);
          v72 = *(this + 7);
        }
      }

      if (*(v72 + 129) == 1)
      {
        if ((!*v72 || (CCLogStream::shouldLogConsole() & 1) == 0) && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          v92 = OUTLINED_FUNCTION_5_0(v145);
          (*(v93 + 248))(v92);
          OUTLINED_FUNCTION_7_8(1.505e-36);
          OUTLINED_FUNCTION_22_1();
          v156 = 1973;
          v157 = v94;
          v158 = v95;
          OUTLINED_FUNCTION_23_3(v96);
          *&v162[6] = 1;
          v163 = 2048;
          v164 = v21;
          v165 = 2048;
          v166 = v16;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%c [dk] %s@%d: TxCompletionDebug: Ring Phase=%d msg Phase=%d msg type=%d flowIdValid=%d packet=%p skywalkInterface=%p", buf, 0x44u);
        }

        if (OUTLINED_FUNCTION_2_10() && (v97 = CCLogStream::shouldLog(), v72 = *(this + 7), v97))
        {
          v101 = *v72;
          v8 = v145;
          OUTLINED_FUNCTION_19_1();
          (*(v102 + 248))(v145);
          OUTLINED_FUNCTION_17_2();
          CCLogStream::logInfo(v101, "[dk] %s@%d:TxCompletionDebug: Ring Phase=%d msg Phase=%d msg type=%d flowIdValid=%d packet=%p skywalkInterface=%p", "txCompRingDrain", 1973, v130, v131, v132, v133, v134, v135);
          v72 = *(this + 7);
        }

        else
        {
          v8 = v145;
        }
      }

      AppleBCMWLANPCIeSkywalkPacketPool::deallocatePacket(*(v72 + 56), v21);
      ++*(*(this + 7) + 224);
      goto LABEL_43;
    }

    v146 = v26;
    v33 = BYTE14(v150[0]);
    Scratch = AppleBCMWLANPCIeSkywalkPacket::getScratch(v21);
    if ((*(Scratch + 40) & 0x20) != 0)
    {
      *(Scratch + 40) &= ~0x20u;
      v28 = 2;
    }

    v35 = v33;
    v148 = kWlToHostTxStatusMap[v33];
    if (v33 <= 0xAu)
    {
      v36 = kWlToIO80211NetworkTxStatusMap[v33];
    }

    OUTLINED_FUNCTION_9_6();
    (*(v37 + 512))(v21);
    if (v28 != 2)
    {
      if (v28 == 6)
      {
        AppleBCMWLANPCIeSkywalkPacket::setStatus(v21);
        v17 |= 1 << IO80211SkywalkInterface::getInterfaceId(v16);
      }

      goto LABEL_35;
    }

    if (IO80211SkywalkInterface::getInterfaceId(v16) == 3 || (v45 = BYTE1(v150[0]), AppleBCMWLANCore::getProximityInterfaceId(v11) == v45))
    {
      OUTLINED_FUNCTION_1_10();
      v16 = (*(v46 + 1992))(v11);
    }

    if (v33 > 0xAu || ((1 << v33) & 0x441) == 0)
    {
      InterfaceId = IO80211SkywalkInterface::getInterfaceId(v16);
      if (InterfaceId == AppleBCMWLANCore::getProximityInterfaceId(v11) && AppleBCMWLANCore::isP2pAirplayActive(v11) && AppleBCMWLANCore::isLlwRequeueEnabled(v11))
      {
        mach_absolute_time();
        absolutetime_to_nanoseconds();
        v149 /= 0x3E8uLL;
        Ac = AppleBCMWLANPCIeSkywalkPacket::getAc(v21);
        v62 = (*(*v16 + 1208))(v16, Ac);
        v138 = OSMetaClassBase::safeMetaCast(v62, gAppleBCMWLANPCIeSkywalkTxSubmissionQueueMetaClass);
        if (v138 && AppleBCMWLANPCIeSkywalkTxSubmissionQueue::isRequeueSupported(v138))
        {
          OUTLINED_FUNCTION_9_6();
          if (v149 <= (*(v85 + 504))(v21))
          {
            v87 = 20000;
          }

          else
          {
            OUTLINED_FUNCTION_9_6();
            v87 = v149 - (*(v86 + 504))(v21);
          }

          PktRemainingLifeTime = AppleBCMWLANPCIeSkywalkPacket::getPktRemainingLifeTime(v21);
          if (PktRemainingLifeTime >= v87)
          {
            v89 = PktRemainingLifeTime - v87;
          }

          else
          {
            v89 = 0;
          }

          AppleBCMWLANPCIeSkywalkPacket::setPktRemainingLifeTime(v21, v89);
          FlowQueueIdx = AppleBCMWLANPCIeSkywalkPacket::getFlowQueueIdx(v21);
          if (v89 > AppleBCMWLANPCIeSkywalkTxSubmissionQueue::getAvgTxCompLatency(v138, FlowQueueIdx, v87) && AppleBCMWLANPCIeSkywalkPacket::getPktRequeueCount(v21) < 3)
          {
            AppleBCMWLANPCIeSkywalkTxSubmissionQueue::addPacketToRequeueList(v138, v21);
            AppleBCMWLANPCIeSkywalkPacket::setPktRequeued(v21, 1);
            AppleBCMWLANPCIeSkywalkPacket::incrPktRequeueCount(v21);
            ++v142;
LABEL_156:
            v8 = v145;
            goto LABEL_43;
          }
        }

        else if (OUTLINED_FUNCTION_2_10() && CCLogStream::shouldLog())
        {
          v63 = OUTLINED_FUNCTION_2_10();
          CCLogStream::logAlert(v63, "[dk] %s@%d:%s: Failed to requeue packet. Null txSubQ \n", "txCompRingDrain", 2127, "txCompRingDrain");
        }
      }
    }

    if (AppleBCMWLANPCIeSkywalkPacket::getScratch(v21))
    {
      v47 = AppleBCMWLANPCIeSkywalkPacket::getScratch(v21);
      v47[45] = AppleBCMWLANPCIeSkywalkPacket::isPktRequeued(v21);
      v47[46] = AppleBCMWLANPCIeSkywalkPacket::getPktRequeueCount(v21);
      if (v35)
      {
        ++v47[47];
      }
    }

    else if (OUTLINED_FUNCTION_2_10() && CCLogStream::shouldLog())
    {
      v84 = OUTLINED_FUNCTION_2_10();
      CCLogStream::logAlert(v84, "[dk] %s@%d:%s: Scratch header is Null! \n", "txCompRingDrain", 2141, "txCompRingDrain");
    }

    v48 = AppleBCMWLANPCIeSkywalkPacket::getScratch(v21);
    v49 = OUTLINED_FUNCTION_26();
    if (!AppleBCMWLANBusInterfacePCIe::isFWPacketTimestampEnabled(v49) || (v50 = WORD2(v150[1]), (DWORD1(v150[1]) & 0x40000000) != 0))
    {
      if (!v48)
      {
        goto LABEL_66;
      }
    }

    else
    {
      v51 = (DWORD1(v150[1]) >> 10) & 0x3FF;
      if (v51 > ((DWORD1(v150[1]) >> 20) & 0x3FF))
      {
        v50 = WORD2(v150[1]);
        DWORD1(v150[1]) = DWORD1(v150[1]) & 0x800FFFFF | (v51 << 20);
      }

      if (!v48)
      {
LABEL_66:
        v57 = 1;
        goto LABEL_67;
      }

      v52 = *(v48 + 20);
      *(v48 + 4) = v52 + 1000 * (v50 & 0x3FF) * TxChipDelayToUsecMultiplier;
      v53 = DWORD1(v150[1]);
      LOWORD(v54) = WORD2(v150[1]) & 0x3FF;
      v55 = (DWORD1(v150[1]) >> 10) & 0x3FF;
      if ((WORD2(v150[1]) & 0x3FFu) > v55)
      {
        DWORD1(v150[1]) = v55 | DWORD1(v150[1]) & 0xFFFFFC00;
        v52 = *(v48 + 20);
        v54 = (v53 >> 10) & 0x3FF;
      }

      *v48 = (v55 - v54) * TxChipDelayToUsecMultiplier;
      *(v48 + 12) = v52 + 1000 * TxChipDelayToUsecMultiplier * ((DWORD1(v150[1]) >> 20) & 0x3FF);
    }

    *(v48 + 42) = BYTE12(v150[0]);
    v56 = OUTLINED_FUNCTION_2_10();
    *(v48 + 34) = ratespec2rate(v56, v150[1]);
    *(v48 + 32) = BYTE13(v150[0]);
    v57 = 0;
    *(v48 + 36) = AppleBCMWLANPCIeSkywalkPacket::getPktLifetime(v21);
LABEL_67:
    AppleBCMWLANPCIeSkywalkPacket::setPktRequeued(v21, 0);
    AppleBCMWLANPCIeSkywalkPacket::resetPktRequeueCount(v21);
    v58 = *(*(this + 7) + 88);
    if (!v58 || v145 != v58 || !AppleBCMWLANCore::isSplitTxStatusEnabled(v11) || (v57 & 1) != 0)
    {
      goto LABEL_35;
    }

    v59 = HIWORD(v150[0]);
    *(v48 + 43) = 0;
    if (v59 == 10)
    {
      *(v48 + 43) = 4;
LABEL_35:
      v8 = v145;
      goto LABEL_36;
    }

    v64 = v59 >> 8;
    if ((v59 & 0x8000u) == 0)
    {
      v65 = 2;
    }

    else
    {
      v65 = 3;
    }

    if ((v64 & 0x40) == 0)
    {
      v65 = 1;
    }

    *(v48 + 43) = v65;
    *(v48 + 44) = 0;
    v8 = v145;
    if ((v64 & 0x10) != 0)
    {
      *(v48 + 44) = 1;
    }

    else if ((v64 & 8) != 0)
    {
      *(v48 + 44) = 2;
    }

LABEL_36:
    AppleBCMWLANPCIeSkywalkPacket::setStatus(v21);
    if (v35)
    {
      ++v139;
    }

    OUTLINED_FUNCTION_14_4();
    if (v24)
    {
      if ((!*v38 || (CCLogStream::shouldLogConsole() & 1) == 0) && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        OUTLINED_FUNCTION_7_8(1.505e-36);
        OUTLINED_FUNCTION_22_1();
        v156 = 2210;
        v157 = v77;
        v158 = v146;
        v159 = v77;
        v160 = v148;
        v161 = v77;
        *v162 = v78;
        *&v162[4] = v77;
        *&v162[6] = v79;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%c [dk] %s@%d: TxCompletionDebug: tx comp status resource id <%d> status <0x%x> ifId <%d> flowid <%d>\n", buf, 0x30u);
      }

      if (OUTLINED_FUNCTION_2_10() && CCLogStream::shouldLog())
      {
        v80 = OUTLINED_FUNCTION_2_10();
        CCLogStream::logInfo(v80, "[dk] %s@%d:TxCompletionDebug: tx comp status resource id <%d> status <0x%x> ifId <%d> flowid <%d>\n", "txCompRingDrain", 2210, v146, v148, BYTE1(v150[0]), WORD5(v150[0]));
      }
    }

    v39 = AppleBCMWLANItemRing::getItemSize(v8) == 24;
    AppleBCMWLANPCIeSkywalk::setTXTimestamp(this, v150, PTMMode, v21, v16, v39);
    v40 = (*(*v16 + 1200))(v16);
    v41 = OSMetaClassBase::safeMetaCast(v40, gAppleBCMWLANPCIeSkywalkTxCompletionQueueMetaClass);
    if (v41)
    {
      v42 = v41;
      OUTLINED_FUNCTION_9_6();
      if ((*(v43 + 376))(v21))
      {
        OUTLINED_FUNCTION_9_6();
        (*(v44 + 384))(v21, 135528522);
      }

      ++*(*(this + 7) + 232);
      AppleBCMWLANPCIeSkywalkTxCompletionQueue::stagePacket(v42, v21);
      v17 |= 1 << IO80211SkywalkInterface::getInterfaceId(v16);
    }

    else
    {
      if (OUTLINED_FUNCTION_2_10())
      {
        v82 = CCLogStream::shouldLog();
        v81 = *(this + 7);
        if (v82)
        {
          CCLogStream::logCrit(*v81, "[dk] %s@%d:Invalid getTxCompQueue(), go next\n", "txCompRingDrain", 2215);
          v81 = *(this + 7);
        }
      }

      if (*(v81 + 129) == 1)
      {
        if ((!*v81 || (CCLogStream::shouldLogConsole() & 1) == 0) && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          OUTLINED_FUNCTION_6_6(1.5048e-36);
          v154 = "txCompRingDrain";
          v155 = 1024;
          v156 = 2217;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%c [dk] %s@%d: TxCompletionDebug: Invalid getTxCompQueue(), go next\n", buf, 0x18u);
        }

        if (OUTLINED_FUNCTION_2_10() && CCLogStream::shouldLog())
        {
          v83 = OUTLINED_FUNCTION_2_10();
          CCLogStream::logInfo(v83, "[dk] %s@%d:TxCompletionDebug: Invalid getTxCompQueue(), go next\n");
        }

        goto LABEL_156;
      }
    }

LABEL_43:
    a3 += AppleBCMWLANItemRing::getItemSize(v8);
    --v18;
  }

  while (v18);
  if (v142 && AppleBCMWLANCore::isLlwRequeueEnabled(v11))
  {
    AppleBCMWLANPCIeSkywalkTxSubmissionQueue::batchedReenqueuePackets(v138);
  }

  if (v17)
  {
    v103 = __clz(__rbit32(v17));
    do
    {
      OUTLINED_FUNCTION_1_10();
      v105 = (*(v104 + 1992))(v11, v103);
      if (v105)
      {
        v106 = OUTLINED_FUNCTION_5_0(v105);
        v108 = (*(v107 + 1200))(v106);
        v109 = OUTLINED_FUNCTION_5_0(v108);
        if ((*(v110 + 120))(v109, 0, 0))
        {
          OUTLINED_FUNCTION_14_4();
          if (v24)
          {
            v113 = v111;
            if ((!*v112 || (CCLogStream::shouldLogConsole() & 1) == 0) && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
            {
              OUTLINED_FUNCTION_6_6(1.5048e-36);
              v154 = "txCompRingDrain";
              v155 = 1024;
              v156 = 2284;
              v157 = 1024;
              v158 = v113;
              _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%c [dk] %s@%d: TxCompletionDebug: tx comp enqueue req fail 0x%x\n", buf, 0x1Eu);
            }

            if (OUTLINED_FUNCTION_2_10() && CCLogStream::shouldLog())
            {
              v114 = OUTLINED_FUNCTION_2_10();
              CCLogStream::logInfo(v114, "[dk] %s@%d:TxCompletionDebug: tx comp enqueue req fail 0x%x\n", "txCompRingDrain", 2284, v113);
            }
          }

          AppleBCMWLANPCIeSkywalkTxCompletionQueue::flushPackets(v108);
        }
      }

      v17 &= ~(1 << v103);
      v103 = __clz(__rbit32(v17));
    }

    while (v17);
  }

  v15 = v140;
  v115 = v141;
  v13 = &kSliceChannelSwitchDwellHistConfig;
LABEL_185:
  v116 = v115;
  *(*(this + 7) + 216) += v115;
  v117 = OUTLINED_FUNCTION_26();
  AppleBCMWLANBusInterfacePCIe::updateActiveTxPacketCount(v117, -v118);
  v119 = OUTLINED_FUNCTION_12_4(*(this + 7));
  v121 = (*(v120 + 1104))(v119);
  if (v121)
  {
    v122 = v121;
    AppleBCMWLANCore::updateDataPathActivityTimestamp(v121, v15);
    AppleBCMWLANCore::handleDataPathActivity(v122);
  }

  if (v13[1176])
  {
    OUTLINED_FUNCTION_19_1();
    (*(v127 + 208))(v8);
    v128 = OUTLINED_FUNCTION_0_11(*(this + 7));
    (*(v129 + 784))(v128);
    kdebug_trace();
  }

  return v116;
}

uint64_t *AppleBCMWLANPCIeSkywalk::destroyLowLatencyCompRing(uint64_t *result, unsigned int a2)
{
  v3 = result;
  v4 = result[7];
  if (*(v4 + 112))
  {
    *(v4 + 112) = 0;
    v5 = OUTLINED_FUNCTION_5_0(*(result[7] + 104));
    result = (*(v6 + 72))(v5);
    *(v3[7] + 120) = 0;
  }

  if (a2 <= 1)
  {
    v7 = v3[7];
    v8 = 96;
    if (!a2)
    {
      v8 = 88;
    }

    v9 = (v7 + v8);
    if (*(v7 + v8))
    {
      v10 = OUTLINED_FUNCTION_0_11(v7);
      result = (*(v11 + 80))(v10);
      if (result)
      {
        v17[0] = _NSConcreteStackBlock;
        v17[1] = 0x40000000;
        v17[2] = ___ZN23AppleBCMWLANPCIeSkywalk25destroyLowLatencyCompRingE22LowLatencyCompRingType_block_invoke;
        v17[3] = &__block_descriptor_tmp_34;
        v17[4] = v3;
        v17[5] = v9;
        v17[6] = result;
        v12 = OUTLINED_FUNCTION_5_0(result);
        (*(v13 + 112))(v12, v17);
        v18[0] = v3;
        v18[1] = AppleBCMWLANPCIeSkywalk::destroyLowLatencyCompRingComplete;
        v18[2] = v9;
        v14 = OUTLINED_FUNCTION_26();
        result = AppleBCMWLANBusInterfacePCIe::destroyDynamicCompletionRing(v14, *v9, v18);
        if (result)
        {
          result = *v9;
          if (*v9)
          {
            v15 = OUTLINED_FUNCTION_5_0(result);
            result = (*(v16 + 16))(v15);
            *v9 = 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANPCIeSkywalk::clearFlowIdInFlowQ(AppleBCMWLANPCIeSkywalk *this, uint64_t a2, uint64_t a3, int a4)
{
  v6 = 3758097098;
  v7 = *(this + 7);
  v8 = 1 << a2;
  if ((*(v7 + 44) & (1 << a2)) != 0)
  {
    v11 = OUTLINED_FUNCTION_0_11(v7);
    v13 = (*(v12 + 1104))(v11);
    v14 = OUTLINED_FUNCTION_15_5(v13);
    v16 = (*(v15 + 1992))(v14, a2);
    if (v16)
    {
      v17 = v16;
      v18 = OUTLINED_FUNCTION_5_0(v16);
      if ((*(v19 + 1088))(v18))
      {
        OUTLINED_FUNCTION_1_10();
        if ((*(v20 + 1088))(v17))
        {
          OUTLINED_FUNCTION_1_10();
          (*(v21 + 1088))(v17);
          if (CCLogStream::shouldLog())
          {
            OUTLINED_FUNCTION_1_10();
            v30 = (*(v29 + 1088))(v17);
            CCLogStream::logInfo(v30, "[dk] %s@%d:Enter ifId %d ac %d\n", "clearFlowIdInFlowQ", 781, a2, a3);
          }
        }
      }

      if (**(this + 7) && CCLogStream::shouldLog())
      {
        CCLogStream::logAlert(**(this + 7), "[dk] %s@%d:clearFlowIdInFlowQ ifId:%d ac:%d flowId:%d\n", "clearFlowIdInFlowQ", 783, a2, a3, a4);
      }

      OUTLINED_FUNCTION_1_10();
      v23 = (*(v22 + 1160))(v17);
      v24 = OSMetaClassBase::safeMetaCast(v23, gAppleBCMWLANPCIeSkywalkMulticastQueueMetaClass);
      if (v24)
      {
        AppleBCMWLANPCIeSkywalkMulticastQueue::clearFlowIdInFlowQ(v24, a4);
      }

      OUTLINED_FUNCTION_1_10();
      v26 = (*(v25 + 1208))(v17, a3);
      v27 = OSMetaClassBase::safeMetaCast(v26, gAppleBCMWLANPCIeSkywalkTxSubmissionQueueMetaClass);
      if (v27)
      {
        AppleBCMWLANPCIeSkywalkTxSubmissionQueue::clearFlowIdInFlowQ(v27, a4);
      }

      return 0;
    }

    else
    {
      return 3758097084;
    }
  }

  else if (*v7 && CCLogStream::shouldLog())
  {
    CCLogStream::logAlert(**(this + 7), "[dk] %s@%d:clearFlowIdInFlowQ failed on ifId:%x (op:%x)  bitmap:%x validation\n", "clearFlowIdInFlowQ", 774, a2, v8, *(*(this + 7) + 44));
  }

  return v6;
}

uint64_t AppleBCMWLANPCIeSkywalk::attachTxSubmRing(AppleBCMWLANPCIeSkywalk *this, AppleBCMWLANPCIeTransmitFlowRing *a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v5 = 3758097084;
  v6 = *(this + 7);
  if (((*(v6 + 44) >> a3) & 1) == 0)
  {
    return 3758097098;
  }

  v12 = OUTLINED_FUNCTION_0_11(v6);
  v14 = (*(v13 + 1104))(v12);
  v15 = OUTLINED_FUNCTION_15_5(v14);
  v17 = (*(v16 + 1992))(v15, a3);
  if (v17)
  {
    v18 = v17;
    v19 = OUTLINED_FUNCTION_5_0(v17);
    if ((*(v20 + 1088))(v19))
    {
      OUTLINED_FUNCTION_19_2();
      if ((*(v21 + 1088))(v18))
      {
        OUTLINED_FUNCTION_19_2();
        (*(v22 + 1088))(v18);
        if (CCLogStream::shouldLog())
        {
          OUTLINED_FUNCTION_19_2();
          v42 = (*(v41 + 1088))(v18);
          CCLogStream::logInfo(v42, "[dk] %s@%d:Enter ifId %d ac %d flowId:%u\n", "attachTxSubmRing", 813, a3, a4, a5);
        }
      }
    }

    OUTLINED_FUNCTION_19_2();
    v24 = (*(v23 + 1160))(v18);
    v25 = OSMetaClassBase::safeMetaCast(v24, gAppleBCMWLANPCIeSkywalkMulticastQueueMetaClass);
    if (v25)
    {
      v26 = v25;
      if (AppleBCMWLANPCIeSkywalkMulticastQueue::getFlowId(v25) == a5)
      {
        AppleBCMWLANPCIeSkywalkMulticastQueue::setFWRing(v26, a2);
        (*(*v26 + 64))(v26);
        return 0;
      }
    }

    v27 = OUTLINED_FUNCTION_0_11(*(this + 7));
    v29 = (*(v28 + 1104))(v27);
    if (AppleBCMWLANCore::getProximityInterfaceId(v29) == a3)
    {
      if ((AppleBCMWLANPCIeTransmitFlowRing::isLowLatencyRing(a2) & 1) == 0)
      {
LABEL_18:
        OUTLINED_FUNCTION_19_2();
        v37 = (*(v36 + 1208))(v18, a4);
        v38 = OSMetaClassBase::safeMetaCast(v37, gAppleBCMWLANPCIeSkywalkTxSubmissionQueueMetaClass);
        isLowLatencyRing = AppleBCMWLANPCIeTransmitFlowRing::isLowLatencyRing(a2);
        AppleBCMWLANPCIeSkywalkTxSubmissionQueue::setFWRing(v38, a2, a5, isLowLatencyRing);
        (v38->__vftable[6].release)(v38);
        return 0;
      }

      v30 = 9;
    }

    else
    {
      if (a3 != 3 || !AppleBCMWLANPCIeTransmitFlowRing::isLowLatencyRing(a2))
      {
        goto LABEL_18;
      }

      v30 = 10;
    }

    v31 = OUTLINED_FUNCTION_0_11(*(this + 7));
    v33 = (*(v32 + 1104))(v31);
    v34 = OUTLINED_FUNCTION_15_5(v33);
    v18 = (*(v35 + 1992))(v34, v30);
    goto LABEL_18;
  }

  return v5;
}

uint64_t AppleBCMWLANPCIeSkywalk::detachTxSubmFwQueue(AppleBCMWLANPCIeSkywalk *this, uint64_t a2, uint64_t a3, unsigned int a4, int a5)
{
  v5 = *(this + 7);
  if (!v5)
  {
    IOLog("AppleBCMWLANPCIeSkywalk::detachTxSubmFwQueue, no ivars\n");
    return 3758096385;
  }

  v7 = *(v5 + 48);
  if (!v7 || (v12 = OUTLINED_FUNCTION_5_0(v7), !(*(v13 + 1104))(v12)))
  {
    IOLog("AppleBCMWLANPCIeSkywalk::detachTxSubmFwQueue, no bus/driver\n");
    return 3758096385;
  }

  v14 = *(this + 7);
  if (((*(v14 + 44) >> a2) & 1) == 0)
  {
    return 3758096385;
  }

  v15 = OUTLINED_FUNCTION_0_11(v14);
  v17 = (*(v16 + 1104))(v15);
  if (!v17)
  {
    return 3758096385;
  }

  v18 = OUTLINED_FUNCTION_5_0(v17);
  v20 = (*(v19 + 1992))(v18, a2);
  if (!v20)
  {
    return 3758096385;
  }

  v21 = v20;
  v22 = OUTLINED_FUNCTION_5_0(v20);
  if ((*(v23 + 1088))(v22))
  {
    OUTLINED_FUNCTION_5_8();
    if ((*(v24 + 1088))(v21))
    {
      OUTLINED_FUNCTION_5_8();
      (*(v25 + 1088))(v21);
      if (CCLogStream::shouldLog())
      {
        OUTLINED_FUNCTION_5_8();
        v50 = (*(v49 + 1088))(v21);
        CCLogStream::logInfo(v50, "[dk] %s@%d:ifid %u ac %u flowid %u\n", "detachTxSubmFwQueue", 971, a2, a3, a4);
      }
    }
  }

  OUTLINED_FUNCTION_5_8();
  v27 = (*(v26 + 1160))(v21);
  v28 = OSMetaClassBase::safeMetaCast(v27, gAppleBCMWLANPCIeSkywalkMulticastQueueMetaClass);
  if (v28)
  {
    v29 = v28;
    if (AppleBCMWLANPCIeSkywalkMulticastQueue::getFlowId(v28) == a4)
    {
      OUTLINED_FUNCTION_5_8();
      if ((*(v30 + 1088))(v21))
      {
        OUTLINED_FUNCTION_5_8();
        if ((*(v31 + 1088))(v21))
        {
          OUTLINED_FUNCTION_5_8();
          (*(v32 + 1088))(v21);
          if (CCLogStream::shouldLog())
          {
            OUTLINED_FUNCTION_5_8();
            v54 = (*(v53 + 1088))(v21);
            CCLogStream::logInfo(v54, "[dk] %s@%d:detach tx mc common fw queue, flow id %d\n", "detachTxSubmFwQueue", 976, a4);
          }
        }
      }

      (*(*v29 + 72))(v29);
      AppleBCMWLANPCIeSkywalkMulticastQueue::setFWRing(v29, 0);
      return 0;
    }
  }

  v33 = OUTLINED_FUNCTION_0_11(*(this + 7));
  v35 = (*(v34 + 1104))(v33);
  if (AppleBCMWLANCore::getProximityInterfaceId(v35) == a2)
  {
    if (a5)
    {
      v36 = 9;
LABEL_24:
      v37 = OUTLINED_FUNCTION_0_11(*(this + 7));
      v39 = (*(v38 + 1104))(v37);
      v40 = OUTLINED_FUNCTION_15_5(v39);
      v21 = (*(v41 + 1992))(v40, v36);
    }
  }

  else if (a2 == 3 && a5)
  {
    v36 = 10;
    goto LABEL_24;
  }

  OUTLINED_FUNCTION_5_8();
  if ((*(v42 + 1088))(v21))
  {
    OUTLINED_FUNCTION_5_8();
    if ((*(v43 + 1088))(v21))
    {
      OUTLINED_FUNCTION_5_8();
      (*(v44 + 1088))(v21);
      if (CCLogStream::shouldLog())
      {
        OUTLINED_FUNCTION_5_8();
        v52 = (*(v51 + 1088))(v21);
        CCLogStream::logInfo(v52, "[dk] %s@%d:detach tx uc queue ifId %d, ac %d, flowId %d\n", "detachTxSubmFwQueue", 990, a2, a3, a4);
      }
    }
  }

  OUTLINED_FUNCTION_5_8();
  v46 = (*(v45 + 1208))(v21, a3);
  v47 = OSMetaClassBase::safeMetaCast(v46, gAppleBCMWLANPCIeSkywalkTxSubmissionQueueMetaClass);
  if (v47)
  {
    AppleBCMWLANPCIeSkywalkTxSubmissionQueue::setFWRing(v47, 0, a4, a5);
    return 0;
  }

  return 3758096385;
}

uint64_t AppleBCMWLANPCIeSkywalk::completeRxPacketMonitor(AppleBCMWLANPCIeSkywalk *a1, uint64_t a2, IO80211SkywalkInterface *a3, AppleBCMWLANPCIeSkywalkPacket *a4, char a5)
{
  if (a2)
  {
    if (a4)
    {
      v8 = *(a2 + 14);
      if (((v8 - 2049) >> 11) <= 0x1Eu)
      {
        if (OUTLINED_FUNCTION_4_9() && CCLogStream::shouldLog())
        {
          v38 = OUTLINED_FUNCTION_4_9();
          CCLogStream::logAlert(v38, "[dk] %s@%d:RX SW, packet length invalid\n", "completeRxPacketMonitor", 1756);
        }

        return 3758096385;
      }

      else
      {
        v9 = *(a2 + 16);
        v10 = 3758097084;
        if (v9 >= 5)
        {
          OUTLINED_FUNCTION_9_6();
          v14 = (*(v13 + 488))(a4);
          if ((v9 + v8) > 0x7FC || v9 + v8 >= v14)
          {
            return 3758097128;
          }

          v16 = *(a1 + 7);
          if (*(v16 + 128) == 1)
          {
            v17 = *(a2 + 18);
            if ((v17 & 2) != 0)
            {
              v18 = (v17 >> 8) & 3;
              if (v18)
              {
                IOLockLock(*(v16 + 160));
                v19 = *(a1 + 7);
                v20 = *(v19 + 144);
                if (!v20 || (v21 = OUTLINED_FUNCTION_5_0(v20), v23 = (*(v22 + 480))(v21), OUTLINED_FUNCTION_9_6(), v25 = (*(v24 + 480))(a4), v19 = *(a1 + 7), !v25) || !v23)
                {
LABEL_32:
                  IOLockUnlock(*(v19 + 160));
                  return v10;
                }

                v26 = v25;
                v39 = v23;
                v27 = *(v19 + 152) + v8;
                v28 = OUTLINED_FUNCTION_5_0(*(v19 + 144));
                if (v27 > (*(v29 + 488))(v28))
                {
                  IOLockUnlock(*(*(a1 + 7) + 160));
                  return 3758097128;
                }

                if (v18 != 1)
                {
                  v10 = 0;
                  v33 = v39;
LABEL_29:
                  memcpy((v33 + *(*(a1 + 7) + 152)), (v26 + v9), v8);
                  *(*(a1 + 7) + 152) += v8;
                  if (v18 == 3)
                  {
                    v34 = AppleBCMWLANPCIeSkywalk::setRXTimestamp(a1, a2, *(*(a1 + 7) + 144), a3, a5);
                    AppleBCMWLANPCIeSkywalk::inputMonitorPacket(v34, a3, *(*(a1 + 7) + 144), 0, *(*(a1 + 7) + 152));
                    *(*(a1 + 7) + 152) = 0;
                  }

                  v19 = *(a1 + 7);
                  goto LABEL_32;
                }

                v31 = *(a1 + 7);
                if (*(v31 + 152))
                {
                  if (*v31)
                  {
                    shouldLog = CCLogStream::shouldLog();
                    v31 = *(a1 + 7);
                    v33 = v39;
                    if (shouldLog)
                    {
                      CCLogStream::logCrit(*v31, "[dk] %s@%d:unfinished monitor packet chain dropped\n", "completeRxPacketMonitor", 1813);
                      v31 = *(a1 + 7);
                    }

                    goto LABEL_28;
                  }
                }

                else
                {
                  v10 = 0;
                }

                v33 = v39;
LABEL_28:
                *(v31 + 152) = 0;
                goto LABEL_29;
              }

              v30 = AppleBCMWLANPCIeSkywalk::setRXTimestamp(a1, a2, a4, a3, a5);
              AppleBCMWLANPCIeSkywalk::inputMonitorPacket(v30, a3, a4, v9, v8);
            }
          }

          return 0;
        }
      }
    }

    else
    {
      v10 = 3758097084;
      if (OUTLINED_FUNCTION_4_9() && CCLogStream::shouldLog())
      {
        v37 = OUTLINED_FUNCTION_4_9();
        CCLogStream::logCrit(v37, "[dk] %s@%d:invalid rx packet data buffer\n");
      }
    }
  }

  else
  {
    v10 = 3758097084;
    if (OUTLINED_FUNCTION_4_9() && CCLogStream::shouldLog())
    {
      v36 = OUTLINED_FUNCTION_4_9();
      CCLogStream::logCrit(v36, "[dk] %s@%d:invalid rx packet message\n");
    }
  }

  return v10;
}

uint64_t AppleBCMWLANPCIeSkywalk::allocSkywalkCommonResources(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_11_5(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:common resource rx comp already allocated, skip to allocate again\n", "allocSkywalkCommonResources", 338);
}

{
  v1 = OUTLINED_FUNCTION_11_5(a1);
  return CCLogStream::logEmergency(v1, "[dk] %s@%d:Faild to copy dataQueue\n", "allocSkywalkCommonResources", 367);
}

{
  v1 = OUTLINED_FUNCTION_11_5(a1);
  return CCLogStream::logEmergency(v1, "[dk] %s@%d:rx submission queue alloc fail\n", "allocSkywalkCommonResources", 343);
}

{
  v1 = OUTLINED_FUNCTION_11_5(a1);
  return CCLogStream::logEmergency(v1, "[dk] %s@%d: Unable to allocate Skywalk Tx pool\n", "allocSkywalkCommonResources", 332);
}

uint64_t AppleBCMWLANPCIeSkywalk::allocSkywalkMonitorResources(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_11_5(a1);
  return CCLogStream::logEmergency(v1, "[dk] %s@%d: Unable to allocate Skywalk monitor packet\n", "allocSkywalkMonitorResources", 299);
}

{
  v1 = OUTLINED_FUNCTION_11_5(a1);
  return CCLogStream::logEmergency(v1, "[dk] %s@%d: Unable to allocate Skywalk monitor pool\n", "allocSkywalkMonitorResources", 290);
}

uint64_t AppleBCMWLANPCIeSkywalk::validateRxDMAStall(uint64_t *a1, CCLogStream ***a2)
{
  result = *a1;
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      return CCLogStream::logAlert(**a2, "[dk] %s@%d:validateRxDMAStall: skywalk rx submssion queue is not ready\n", "validateRxDMAStall", 571);
    }
  }

  return result;
}

uint64_t AppleBCMWLANPCIeSkywalk::attachDefaultRxCompRing(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 224))(v1);
  return CCLogStream::logInfo(v3, "[dk] %s@%d:Enable rxCompQueue\n", "attachDefaultRxCompRing", 611);
}

uint64_t AppleBCMWLANPCIeSkywalk::attachDefaultTxCompRing(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logInfo(v3, "[dk] %s@%d:attach txCompletion ring\n", "attachDefaultTxCompRing", 865);
}

uint64_t AppleBCMWLANPCIeSkywalk::detachRxCompFwQueue(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logInfo(v3, "[dk] %s@%d:detachRxCompRing\n", "detachRxCompFwQueue", 904);
}

uint64_t AppleBCMWLANPCIeSkywalk::detachTxCompFwQueue(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logInfo(v3, "[dk] %s@%d:detachTxCompRing\n", "detachTxCompFwQueue", 936);
}

uint64_t *AppleBCMWLANPCIeSkywalk::disableAllSubmissionQueue()
{
  OUTLINED_FUNCTION_26_2();
  do
  {
    OUTLINED_FUNCTION_24_1();
    result = (*(v4 + 1992))(v0, v2);
    if (result)
    {
      v6 = OUTLINED_FUNCTION_5_0(result);
      result = (*(v7 + 1240))(v6);
    }

    v1 &= ~(v3 << v2);
    v2 = __clz(__rbit32(v1));
  }

  while (v1);
  return result;
}

uint64_t *AppleBCMWLANPCIeSkywalk::enableAllSubmissionQueue()
{
  OUTLINED_FUNCTION_26_2();
  do
  {
    OUTLINED_FUNCTION_24_1();
    result = (*(v4 + 1992))(v0, v2);
    if (result)
    {
      v6 = OUTLINED_FUNCTION_5_0(result);
      result = (*(v7 + 1232))(v6);
    }

    v1 &= ~(v3 << v2);
    v2 = __clz(__rbit32(v1));
  }

  while (v1);
  return result;
}

uint64_t AppleBCMWLANPCIeSkywalk::attachTxSubmissionQueues(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logInfo(v3, "[dk] %s@%d:Enter\n", "attachTxSubmissionQueues", 1062);
}

uint64_t AppleBCMWLANPCIeSkywalk::attachTxSubmissionQueues(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_11_5(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Request to attach LLW, before interface is enabled\n", "attachTxSubmissionQueues", 1067);
}

{
  v1 = OUTLINED_FUNCTION_11_5(a1);
  return CCLogStream::logInfo(v1, "[dk] %s@%d:Packets trashed on roam in (AQM: %d  TxSubQ: %d)\n", "attachTxSubmissionQueues", 1102, *(v2 + 480), *(v2 + 476));
}

uint64_t AppleBCMWLANPCIeSkywalk::detachTxSubmissionQueues(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logInfo(v3, "[dk] %s@%d:Enter\n", "detachTxSubmissionQueues", 1117);
}

uint64_t AppleBCMWLANGCRAdapter::createGCRSession(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_9_0(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Creating GCR session\n", "createGCRSession", 158);
}

{
  v3 = OUTLINED_FUNCTION_0_12(a1);
  v5 = (*(v4 + 112))(v3);
  return CCLogStream::logAlert(v2, "[dk] %s@%d:Unable to create GCR session: %d:%s\n", "createGCRSession", 207, v1, v5);
}

uint64_t AppleBCMWLANGCRAdapter::joinGCRSession(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_9_0(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Joining GCR session\n", "joinGCRSession", 220);
}

{
  result = OUTLINED_FUNCTION_9_0(a1);
  if (result)
  {
    v4 = v3;
    result = CCLogStream::shouldLog();
    if (result)
    {
      v5 = *a1;
      v6 = *(*a1 + 32);
      v7 = (*(**(v5 + 8) + 112))(*(v5 + 8), v4);
      return CCLogStream::logAlert(v6, "[dk] %s@%d:Unable to join GCR session: %d:%s\n", "joinGCRSession", 267, v4, v7);
    }
  }

  return result;
}

void AppleBCMWLANGCRAdapter::configureGCRRate()
{
  panic("invaid GCR rate bandwidth\n");
}

{
  panic("invaid GCR rate encoding mode\n");
}

{
  panic("invaid GCR rate NSS\n");
}

uint64_t AppleBCMWLANGCRAdapter::configureGCRRate(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_0_12(a1);
  v5 = (*(v4 + 112))(v3);
  return CCLogStream::logAlert(v2, "[dk] %s@%d:Unable to configure GCR rate: %d:%s\n", "configureGCRRate", 412, v1, v5);
}

uint64_t AppleBCMWLANGCRAdapter::clearGCRStats(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_0_12(a1);
  v5 = (*(v4 + 112))(v3);
  return CCLogStream::logAlert(v2, "[dk] %s@%d:Unable to clear GCR stats: %d:%s\n", "clearGCRStats", 459, v1, v5);
}

uint64_t AppleBCMWLANGCRAdapter::getGCRLinkCondition(uint64_t a1, char a2)
{
  if (OUTLINED_FUNCTION_9_0(a1) && CCLogStream::shouldLog())
  {
    CCLogStream::logAlert(*(*a1 + 32), "[dk] %s@%d:gcr stats get iovar failed\n", "getGCRLinkCondition", 521);
  }

  return a2 & 1;
}

uint64_t AppleBCMWLANGCRAdapter::getGCRLinkCondition(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  result = OUTLINED_FUNCTION_9_0(a1);
  if (result)
  {
    v7 = v6;
    result = CCLogStream::shouldLog();
    if (result)
    {
      result = CCLogStream::logAlert(*(*a1 + 32), "[dk] %s@%d:Stats tlv is of wrong format %u\n", "getGCRLinkCondition", 539, *v7);
    }
  }

  *a3 = -536870911;
  return result;
}

uint64_t AppleBCMWLANGCRAdapter::getGCRLinkCondition(uint64_t a1, _DWORD *a2)
{
  result = OUTLINED_FUNCTION_9_0(a1);
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      result = CCLogStream::logAlert(*(*a1 + 32), "[dk] %s@%d:not enough room for gcr subcmd resp data\n", "getGCRLinkCondition", 532);
    }
  }

  *a2 = -536870911;
  return result;
}

uint64_t AppleBCMWLANPCIeSkywalkFlowQueue::initWithProviderAndQueueInfo(OSObject *a1, AppleBCMWLANBusInterfacePCIe *a2, uint64_t a3, unsigned __int8 a4, IO80211SkywalkInterface *a5, BOOL (__cdecl *a6)(OSObject *__hidden this), void (__cdecl *a7)(OSObject *__hidden this))
{
  result = OSObject::init(a1);
  if (result)
  {
    result = IOMallocZeroTyped();
    a1[1].OSMetaClassBase::__vftable = result;
    if (result)
    {
      *result = a3;
      *(result + 4) = WORD2(a3);
      a1[1].init = a6;
      v15 = a1[1].OSMetaClassBase::__vftable;
      init = v15->init;
      if (init)
      {
        (*(*init + 8))(init);
        v15 = a1[1].OSMetaClassBase::__vftable;
      }

      v15->free = a7;
      a1[1].OSMetaClassBase::__vftable[1].retain = a5;
      LOWORD(a1[1].OSMetaClassBase::__vftable[1].init) = -1;
      a1[1].OSMetaClassBase::__vftable[1].getMetaClass = a2;
      a1[1].Dispatch = 0;
      v17 = (*(*a1[1].OSMetaClassBase::__vftable[1].getMetaClass + 752))();
      v18 = OSMetaClassBase::safeMetaCast(v17, gAppleBCMWLANPCIeSkywalkMetaClass);
      a1[1].OSMetaClassBase::__vftable[1].isEqualTo = AppleBCMWLANPCIeSkywalk::getPacketPool(v18);
      v19 = a1[1].OSMetaClassBase::__vftable;
      if (v19->init)
      {
        shouldLog = CCLogStream::shouldLog();
        v19 = a1[1].OSMetaClassBase::__vftable;
        if (shouldLog)
        {
          v24 = v19->init;
          InterfaceId = IO80211SkywalkInterface::getInterfaceId(a5);
          CCLogStream::logAlert(v24, "[dk] %s@%d:%s: flowQ %p IfID:%u ac:%u \n", "initWithProviderAndQueueInfo", 103, "initWithProviderAndQueueInfo", a1, InterfaceId, a4);
          v19 = a1[1].OSMetaClassBase::__vftable;
        }
      }

      v19->retain = &v19->retain;
      a1[1].release = &a1[1].retain;
      LODWORD(a1[1].isEqualTo) = 0;
      BYTE1(a1[1].OSMetaClassBase::__vftable[1].Dispatch) = a4;
      LOBYTE(a1[1].OSMetaClassBase::__vftable[1].Dispatch) = IO80211SkywalkInterface::getInterfaceId(a5);
      v21 = a1[1].OSMetaClassBase::__vftable;
      HIWORD(v21[1].Dispatch) = WORD2(v21->getMetaClass);
      *(&v21[1].Dispatch + 2) = v21->getMetaClass;
      if (AppleBCMWLANBusInterfacePCIe::isTSICMPV6LoggingEnabled(a2))
      {
        TweakAllTxAsTS = 1;
      }

      else
      {
        TweakAllTxAsTS = AppleBCMWLANBusInterfacePCIe::getTweakAllTxAsTS(a2);
      }

      BYTE2(a1[1].OSMetaClassBase::__vftable[1].init) = TweakAllTxAsTS;
      BYTE3(a1[1].OSMetaClassBase::__vftable[1].init) = AppleBCMWLANBusInterfacePCIe::isTSLoggingEnabled(a2);
      IgnoreTSIfBitmap = AppleBCMWLANBusInterfacePCIe::getIgnoreTSIfBitmap(a2);
      BYTE4(a1[1].OSMetaClassBase::__vftable[1].init) = (IgnoreTSIfBitmap >> IO80211SkywalkInterface::getInterfaceId(a5)) & 1;
      BYTE5(a1[1].OSMetaClassBase::__vftable[1].init) = AppleBCMWLANBusInterfacePCIe::getTSTxExtendedFlags(a2);
      LODWORD(a1[1].OSMetaClassBase::__vftable[1].free) = AppleBCMWLANBusInterfacePCIe::getTimestampingMode(a2);
      return 1;
    }
  }

  return result;
}

AppleBCMWLANItemRing *AppleBCMWLANPCIeSkywalkFlowQueue::getRingFreeSpace(AppleBCMWLANPCIeSkywalkFlowQueue *this)
{
  v2 = *(this + 5);
  result = *(v2 + 72);
  if (result)
  {
    v4 = *(v2 + 24);
    if (v4 > AppleBCMWLANItemRing::getWritableItemCount(result))
    {
      return 0;
    }

    else
    {
      return (AppleBCMWLANItemRing::getWritableItemCount(*(*(this + 5) + 72)) - *(*(this + 5) + 24));
    }
  }

  return result;
}

uint64_t AppleBCMWLANPCIeSkywalkFlowQueue::enqueuePacket(uint64_t a1, AppleBCMWLANCore *a2, void *a3, void *a4)
{
  v7 = *(a1 + 40);
  InterfaceId = IO80211SkywalkInterface::getInterfaceId(*(a1 + 64));
  v9 = AppleBCMWLANCore::checkForHP2PSupport(a2);
  isP2pAirplayActive = AppleBCMWLANCore::isP2pAirplayActive(a2);
  v11 = AppleBCMWLANCore::mapLowLatencyLowPriority(a2);
  result = CCLogStream::logInfo(v7, "[dk] %s@%d:%s: IfID:%u hP2pSupport:%u airplay:%u lowPrioMap:%u \n", "enqueuePacket", 167, "enqueuePacket", InterfaceId, v9, isP2pAirplayActive, v11);
  *a4 = *a3;
  return result;
}

uint64_t AppleBCMWLANPCIeSkywalkFlowQueue::enqueuePacket(uint64_t a1, AppleBCMWLANCore *a2, unsigned __int8 a3, int a4)
{
  v7 = *(*a1 + 40);
  InterfaceId = IO80211SkywalkInterface::getInterfaceId(*(*a1 + 64));
  ProximityInterfaceId = AppleBCMWLANCore::getProximityInterfaceId(a2);
  return CCLogStream::logInfo(v7, "[dk] %s@%d:%s: IfID:%u proxIntId:%u ac:%u userPriority:%u \n", "enqueuePacket", 171, "enqueuePacket", InterfaceId, ProximityInterfaceId, a4, a3);
}

uint64_t AppleBCMWLANPCIeSkywalkFlowQueue::enqueuePacket(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_1_11(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: NULL flow ring!\n", "enqueuePacket", 219);
}

{
  v1 = OUTLINED_FUNCTION_1_11(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Invalid InterfaceId\n", "enqueuePacket", 198);
}

uint64_t AppleBCMWLANPCIeSkywalkFlowQueue::fwRingFill(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_1_11(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Invalid parentIf\n", "fwRingFill", 361);
}

{
  v1 = OUTLINED_FUNCTION_1_11(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:tx submit, out of tracker\n", "fwRingFill", 444);
}

uint64_t AppleBCMWLANPCIeSkywalkMulticastQueue::initWithProviderAndQueueInfo(OSObject *this, AppleBCMWLANBusInterfacePCIe *a2, IO80211SkywalkInterface *a3, CCLogStream *a4, CCFaultReporter *a5)
{
  result = AppleBCMWLANSkywalkMulticastQueue::initWithInterface(this, a3);
  if (result)
  {
    result = IOMallocZeroTyped();
    this[1].ivars = result;
    if (result)
    {
      *(this[1].ivars + 1) = AppleBCMWLANPCIeSkywalkFlowQueue::withProviderAndQueueInfo(a2, 0xFFFFFFFFFFFFLL, 0, a3, a4, a5);
      *this[1].ivars = a4;
      v11 = *this[1].ivars;
      if (v11)
      {
        (*(*v11 + 8))(v11);
      }

      if ((this->OSMetaClassBase::__vftable[2].isEqualTo)(this))
      {
        (this->OSMetaClassBase::__vftable[2].isEqualTo)(this);
        if (CCLogStream::shouldLog())
        {
          v12 = (this->OSMetaClassBase::__vftable[2].isEqualTo)(this);
          CCLogStream::logInfo(v12, "[dk] %s@%d:%s\n", "initWithProviderAndQueueInfo", 71, "initWithProviderAndQueueInfo");
        }
      }

      return 1;
    }
  }

  return result;
}

uint64_t AppleBCMWLANPCIeSkywalkRxSubmissionQueue::free(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_5_5(a1);
  v4 = (*(v3 + 216))(v2);
  return CCLogStream::logAlert(v4, "[dk] %s@%d:Enter ::free [%p]", "free", 122, a1);
}

uint64_t AppleBCMWLANPCIeSkywalkRxSubmissionQueue::dequeuePackets(uint64_t a1, uint64_t *a2)
{
  (*(*a1 + 208))(a1);
  v3 = *a2;
  v4 = *(*a2 + 40);
  v5 = OUTLINED_FUNCTION_1_12(v3);
  (*(v6 + 792))(v5);
  OUTLINED_FUNCTION_3_8(0x4081u);

  return kdebug_trace();
}

uint64_t AppleBCMWLANPCIeSkywalkRxSubmissionQueue::dequeuePackets(uint64_t *a1)
{
  v1 = *(*a1 + 64);
  v2 = *(*a1 + 40);
  v3 = OUTLINED_FUNCTION_1_12(*a1);
  (*(v4 + 792))(v3);
  OUTLINED_FUNCTION_2_11(0x4082u);

  return kdebug_trace();
}

uint64_t AppleBCMWLANPCIeSkywalkRxSubmissionQueue::flushPackets(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_5_5(a1);
  v4 = (*(v3 + 216))(v2);
  v5 = a1[11];
  v6 = *(v5 + 40);
  v7 = *(v5 + 72);
  if (v7)
  {
    RetainCount = OSMetaClassBase::getRetainCount(*(v5 + 72));
  }

  else
  {
    RetainCount = 0;
  }

  return CCLogStream::logInfo(v4, "[dk] %s@%d:Enter with fPacketCount:%u, fPacketPool[%p] nRetained[%u]", "flushPackets", 201, v6, v7, RetainCount);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 216))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:invalid packet\n", "flushPackets", 210);
}

uint64_t AppleBCMWLANPCIeSkywalkRxSubmissionQueue::setFWRing(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = OUTLINED_FUNCTION_5_5(a1);
  v6 = (*(v5 + 216))(v4);
  if (a3)
  {
    v7 = "Set";
  }

  else
  {
    v7 = "Clear";
  }

  return CCLogStream::logInfo(v6, "[dk] %s@%d:fwRing:%s\n", "setFWRing", 232, v7);
}

uint64_t AppleBCMWLANPCIeSkywalkRxSubmissionQueue::setFWRing(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 216))(v1);
  return CCLogStream::logInfo(v3, "[dk] %s@%d:assign fw ring into queue, queue enabled, request dequeue\n", "setFWRing", 243);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 216))(v1);
  return CCLogStream::logInfo(v3, "[dk] %s@%d:rx submission ring flush\n", "setFWRing", 249);
}

uint64_t AppleBCMWLANPCIeSkywalkRxSubmissionQueue::setFWRing(uint64_t *a1, uint64_t a2, int a3)
{
  v4 = OUTLINED_FUNCTION_5_5(a1);
  v6 = (*(v5 + 216))(v4);
  return CCLogStream::logInfo(v6, "[dk] %s@%d:rx sub dequeue fail 0x%x\n", "setFWRing", 246, a3);
}

uint64_t AppleBCMWLANPCIeSkywalkRxSubmissionQueue::fwRingPending(uint64_t *a1, uint64_t a2, int a3)
{
  v4 = OUTLINED_FUNCTION_5_5(a1);
  v6 = (*(v5 + 216))(v4);
  return CCLogStream::logInfo(v6, "[dk] %s@%d:rx sub dequeue fail 0x%x\n", "fwRingPending", 265, a3);
}

uint64_t AppleBCMWLANPCIeSkywalkRxSubmissionQueue::fwRingFill(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  (*(*a1 + 208))(a1);
  v4 = *a3;
  v5 = *(*a3 + 40);
  v6 = OUTLINED_FUNCTION_1_12(v4);
  (*(v7 + 792))(v6);
  OUTLINED_FUNCTION_3_8(0x4085u);

  return kdebug_trace();
}

uint64_t AppleBCMWLANPCIeSkywalkRxSubmissionQueue::fwRingFill(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 216))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:rx submit, out of tracker\n", "fwRingFill", 325);
}

{
  v1 = *(*a1 + 80);
  v2 = *(*a1 + 40);
  v3 = OUTLINED_FUNCTION_1_12(*a1);
  (*(v4 + 792))(v3);
  OUTLINED_FUNCTION_2_11(0x4086u);
  return kdebug_trace();
}

uint64_t AppleBCMWLANPCIeSkywalkRxSubmissionQueue::fwRingFill(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = OUTLINED_FUNCTION_5_5(a1);
  v6 = (*(v5 + 216))(v4);
  return CCLogStream::logInfo(v6, "[dk] %s@%d:Invalid fFWRing/ring ivars->fFWRing:%p\n", "fwRingFill", 295, *(*a3 + 24));
}

uint64_t AppleBCMWLANPCIeSkywalkTxSubmissionQueue::dequeueInfraPacket(BOOL (__cdecl ***this)(OSObjectInterface *__hidden this), AppleBCMWLANPCIeSkywalkPacket *a2)
{
  Interface = AppleBCMWLANSkywalkTxSubmissionQueue::getInterface(this);
  v5 = OUTLINED_FUNCTION_5_0(Interface);
  v7 = (*(v6 + 1160))(v5);
  v8 = OSMetaClassBase::safeMetaCast(v7, gAppleBCMWLANPCIeSkywalkMulticastQueueMetaClass);
  v9 = AppleBCMWLANSkywalkTxSubmissionQueue::getInterface(this);
  if (AppleBCMWLANSkywalkInterface::isDataPathConnected(v9))
  {
    OUTLINED_FUNCTION_24_1();
    v11 = (*(v10 + 288))(a2) == 4718992 && *(this[11] + 46) == 3;
    OUTLINED_FUNCTION_24_1();
    v18 = (*(v17 + 296))(a2);
    v19 = this[11];
    if (!v18 || v11)
    {
      if (*(v19 + 108))
      {
        if (AppleBCMWLANPCIeSkywalkTxSubmissionQueue::validateMacAddr(this, a2, v9))
        {
          return 3758097122;
        }

        v19 = this[11];
      }

      if (!v19[5])
      {
        OUTLINED_FUNCTION_19_1();
        if ((*(v22 + 288))(this))
        {
          OUTLINED_FUNCTION_19_1();
          (*(v23 + 288))(this);
          if (CCLogStream::shouldLog())
          {
            OUTLINED_FUNCTION_19_1();
            v33 = (*(v32 + 288))(this);
            CCLogStream::logInfo(v33, "[dk] %s@%d:%s Creating INFRA flowQueue for TxSub ivars->fAc %u.flowIndx %u\n", "dequeueInfraPacket", 401, "dequeueInfraPacket", *(this[11] + 46), *(this[11] + 84));
          }
        }

        v24 = this[11][2];
        CurrentApAddress = IO80211InfraInterface::getCurrentApAddress(v9);
        this[11][5] = AppleBCMWLANPCIeFlowQueue::withProviderAndQueueInfo(v24, CurrentApAddress & 0xFFFFFFFFFFFFLL, *(this[11] + 46), v9, *this[11], this[11][1]);
        v26 = this[11];
        if (!v26[5])
        {
          return 3758097086;
        }

        ++*(v26 + 84);
        v27 = OUTLINED_FUNCTION_5_0(this[11][5]);
        (*(v28 + 136))(v27);
        v19 = this[11];
      }

      ++*(v19 + 52);
      AppleBCMWLANPCIeFlowQueue::enqueuePacket(this[11][5], a2, 1);
      AppleBCMWLANSkywalkTxSubmissionQueue::getInterface(this);
      v29 = OUTLINED_FUNCTION_8_4();
      Scratch = AppleBCMWLANPCIeSkywalkPacket::getScratch(v29);
      (*(*v9 + 600))(v9, a2, Scratch, *(this[11] + 46), 1);
    }

    else
    {
      ++*(v19 + 51);
      AppleBCMWLANSkywalkTxSubmissionQueue::getInterface(this);
      v20 = OUTLINED_FUNCTION_12_1();
      v21 = AppleBCMWLANPCIeSkywalkPacket::getScratch(v20);
      ((*this)[75])(this, a2, v21, 0, 0);
      AppleBCMWLANPCIeSkywalkMulticastQueue::enqueuePacket(v8, a2, 1);
    }

    return 0;
  }

  else
  {
    v12 = 3758097112;
    OUTLINED_FUNCTION_19_1();
    if ((*(v13 + 288))(this))
    {
      OUTLINED_FUNCTION_19_1();
      (*(v14 + 288))(this);
      if (CCLogStream::shouldLog())
      {
        OUTLINED_FUNCTION_19_1();
        v16 = (*(v15 + 288))(this);
        CCLogStream::logAlert(v16, "[dk] %s@%d:Interface is not assoc yet\n", "dequeueInfraPacket", 373);
      }
    }
  }

  return v12;
}

uint64_t AppleBCMWLANPCIeSkywalkTxSubmissionQueue::batchedReenqueuePackets(AppleBCMWLANPCIeSkywalkTxSubmissionQueue *this)
{
  mach_absolute_time();
  absolutetime_to_nanoseconds();
  v36[0] = 0;
  v36[1] = 0;
  v2 = *(this + 11);
  v3 = *(v2 + 192);
  v4 = *(v2 + 200);
  if (!v3 && !v4)
  {
    OUTLINED_FUNCTION_24_1();
    if ((*(v32 + 288))(this))
    {
      OUTLINED_FUNCTION_24_1();
      (*(v33 + 288))(this);
      if (CCLogStream::shouldLog())
      {
        OUTLINED_FUNCTION_24_1();
        v35 = (*(v34 + 288))(this);
        CCLogStream::logAlert(v35, "[dk] %s@%d:null packet list\n", "batchedReenqueuePackets", 1018);
      }
    }

    return 0xFFFFFFFFLL;
  }

  if (!AppleBCMWLANSkywalkTxSubmissionQueue::getInterface(this))
  {
    return 0xFFFFFFFFLL;
  }

  if (v4)
  {
    do
    {
      v5 = OSMetaClassBase::safeMetaCast(*v3, gAppleBCMWLANPCIeSkywalkPacketMetaClass);
      if (v5)
      {
        v6 = v5;
        FlowQueueIdx = AppleBCMWLANPCIeSkywalkPacket::getFlowQueueIdx(v5);
        v8 = (*(*v6 + 480))(v6);
        Headroom = IO80211NetworkPacket::getHeadroom(v6);
        if (FlowQueueIdx <= 0xF && (v10 = *(this + 11), *(v10 + 8 * FlowQueueIdx + 40)))
        {
          ++*(v10 + 212);
          AppleBCMWLANPCIeSkywalkPacket::setFlowQueueIdx(v6, FlowQueueIdx);
          AppleBCMWLANPCIeFlowQueue::enqueuePacket(*(*(this + 11) + 8 * FlowQueueIdx + 40), v6, 1);
          *(v36 + FlowQueueIdx) = 1;
        }

        else
        {
          OUTLINED_FUNCTION_24_1();
          if ((*(v11 + 288))(this))
          {
            OUTLINED_FUNCTION_24_1();
            (*(v12 + 288))(this);
            if (CCLogStream::shouldLog())
            {
              v13 = (v8 + Headroom);
              OUTLINED_FUNCTION_24_1();
              (*(v14 + 288))(this);
              v15 = *v13;
              v16 = v13[1];
              v17 = v13[2];
              v18 = v13[3];
              v19 = v13[4];
              v20 = v13[5];
              v21 = *(this + 11);
              OUTLINED_FUNCTION_4_10();
              CCLogStream::logAlert(v22, "[dk] %s@%d:Did not have a flow with index %u for peer %02x:%02x:%02x:%02x:%02x:%02x flow queue count %u\n", "batchedReenqueuePackets", 1048);
            }
          }
        }
      }

      else
      {
        OUTLINED_FUNCTION_24_1();
        if ((*(v23 + 288))(this))
        {
          OUTLINED_FUNCTION_24_1();
          (*(v24 + 288))(this);
          if (CCLogStream::shouldLog())
          {
            OUTLINED_FUNCTION_24_1();
            v26 = (*(v25 + 288))(this);
            CCLogStream::logAlert(v26, "[dk] %s@%d:null packet\n");
          }
        }
      }

      ++v3;
      --v4;
    }

    while (v4);
  }

  v27 = v36;
  for (i = 40; i != 168; i += 8)
  {
    v29 = *v27++;
    if (v29 == 1)
    {
      v30 = *(*(this + 11) + i);
      if (v30)
      {
        AppleBCMWLANPCIeFlowQueue::requestPendingPackets(v30);
      }
    }
  }

  bzero(*(*(this + 11) + 192), 0x400uLL);
  result = 0;
  *(*(this + 11) + 200) = 0;
  if (fKernelTraceEnabled)
  {
    kdebug_trace();
    return 0;
  }

  return result;
}

uint64_t AppleBCMWLANPCIeSkywalkTxSubmissionQueue::enable(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 288))(v1);
  return CCLogStream::logInfo(v3, "[dk] %s@%d:Enter", "enable", 163);
}

{
  v2 = OUTLINED_FUNCTION_10_5(a1);
  v4 = (*(v3 + 288))(v2);
  return CCLogStream::logInfo(v4, "[dk] %s@%d:Exit with fEnabled:%d\n", "enable", 182, *(*(v1 + 88) + 32));
}

uint64_t AppleBCMWLANPCIeSkywalkTxSubmissionQueue::disable(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 288))(v1);
  return CCLogStream::logInfo(v3, "[dk] %s@%d:Disabling Tx Submission Queue", "disable", 194);
}

uint64_t AppleBCMWLANPCIeSkywalkTxSubmissionQueue::clearFWRings(uint64_t *a1)
{
  v3 = OUTLINED_FUNCTION_10_5(a1);
  (*(v4 + 288))(v3);
  v5 = OUTLINED_FUNCTION_12_1();
  Interface = AppleBCMWLANSkywalkTxSubmissionQueue::getInterface(v5);
  InterfaceId = IO80211SkywalkInterface::getInterfaceId(Interface);
  return CCLogStream::logAlert(v2, "[dk] %s@%d:clearFWRings interface %d remaining queue count %d\n", "clearFWRings", 201, InterfaceId, *(*(v1 + 88) + 168));
}

uint64_t AppleBCMWLANPCIeSkywalkTxSubmissionQueue::clearFWRing(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_5_5(a1);
  (*(v3 + 288))(v2);
  OUTLINED_FUNCTION_5_9();
  return CCLogStream::logAlert(v4, "[dk] %s@%d:clearFWRing STA : %02x:%02x:%02x:%02x:%02x:%02x fFlowQueueCount %d\n", "clearFWRing", 220, v5, v6, v7, v8, v9, v10, *(a1[11] + 168));
}

uint64_t AppleBCMWLANPCIeSkywalkTxSubmissionQueue::clearFWRing(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = OUTLINED_FUNCTION_5_5(a1);
  v6 = (*(v5 + 288))(v4);
  return CCLogStream::logAlert(v6, "[dk] %s@%d:clearFWRing FlowQueueCount %d \n", "clearFWRing", 231, *(*a3 + 168));
}

uint64_t AppleBCMWLANPCIeSkywalkTxSubmissionQueue::free(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_10_5(a1);
  v4 = (*(v3 + 288))(v2);
  return CCLogStream::logAlert(v4, "[dk] %s@%d:Enter ::free [%p]", "free", 239, v1);
}

uint64_t AppleBCMWLANPCIeSkywalkTxSubmissionQueue::dupAndTransmitMcastPacket(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  (*(v2 + 288))(v1);
  OUTLINED_FUNCTION_7_1();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:%s[%d] : did not dequeue all packets\n", v5, v6, v7, v8);
}

uint64_t AppleBCMWLANPCIeSkywalkTxSubmissionQueue::signalTxPendingFlowQueue(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  (*(v2 + 288))(v1);
  OUTLINED_FUNCTION_7_1();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:%s[%d] ERROR ! Flowqueue is NULL ! \n", v5, v6, v7, v8);
}

uint64_t AppleBCMWLANPCIeSkywalkTxSubmissionQueue::dequeueSoftAPLLWPacket(uint64_t *a1)
{
  v3 = OUTLINED_FUNCTION_10_5(a1);
  (*(v4 + 288))(v3);
  v5 = OUTLINED_FUNCTION_12_1();
  Interface = AppleBCMWLANSkywalkTxSubmissionQueue::getInterface(v5);
  v7 = OUTLINED_FUNCTION_5_0(Interface);
  (*(v8 + 160))(v7);
  v9 = OUTLINED_FUNCTION_8_4();
  v10 = AppleBCMWLANSkywalkTxSubmissionQueue::getInterface(v9);
  InterfaceId = IO80211SkywalkInterface::getInterfaceId(v10);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR ! Interface (%s, ID : %d) is not enabled\n", "dequeueSoftAPLLWPacket", 427, v2, InterfaceId);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  (*(v2 + 288))(v1);
  OUTLINED_FUNCTION_5_9();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:%s[%d]:  Peer not found for %02x:%02x:%02x:%02x:%02x:%02x\n", "dequeueSoftAPLLWPacket", 484, "dequeueSoftAPLLWPacket", 484, v4, v5, v6, v7, v8, v9);
}

{
  v3 = OUTLINED_FUNCTION_10_5(a1);
  (*(v4 + 288))(v3);
  v5 = OUTLINED_FUNCTION_12_1();
  Interface = AppleBCMWLANSkywalkTxSubmissionQueue::getInterface(v5);
  v7 = OUTLINED_FUNCTION_5_0(Interface);
  (*(v8 + 160))(v7);
  v9 = OUTLINED_FUNCTION_8_4();
  v10 = AppleBCMWLANSkywalkTxSubmissionQueue::getInterface(v9);
  InterfaceId = IO80211SkywalkInterface::getInterfaceId(v10);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR ! Interface (%s, ID : %d) is Invalid \n", "dequeueSoftAPLLWPacket", 433, v2, InterfaceId);
}

uint64_t AppleBCMWLANPCIeSkywalkTxSubmissionQueue::dequeueSoftAPLLWPacket(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = OUTLINED_FUNCTION_5_5(a1);
  v7 = (*(v6 + 288))(v5);
  Interface = AppleBCMWLANSkywalkTxSubmissionQueue::getInterface(a1);
  v9 = OUTLINED_FUNCTION_5_0(Interface);
  v11 = (*(v10 + 160))(v9);
  v12 = (*(*a3 + 664))(a3);
  return CCLogStream::logAlert(v7, "[dk] %s@%d:ERROR ! Interface (%s) chip not ready %d\n", "dequeueSoftAPLLWPacket", 443, v11, v12);
}

uint64_t AppleBCMWLANPCIeSkywalkTxSubmissionQueue::dequeueSoftAPLLWPacket(uint64_t *a1, uint64_t a2, unsigned __int8 *a3, uint64_t *a4)
{
  v6 = OUTLINED_FUNCTION_5_5(a1);
  (*(v7 + 288))(v6);
  v8 = *a3;
  v9 = a3[1];
  v10 = a3[2];
  v11 = a3[3];
  v12 = a3[4];
  v13 = a3[5];
  v14 = *a4;
  OUTLINED_FUNCTION_4_10();
  return CCLogStream::logAlert(v15, "[dk] %s@%d:Did not have a flow with index %u for peer %02x:%02x:%02x:%02x:%02x:%02x flow queue count %u\n", "dequeueSoftAPLLWPacket", 544, 0xFFFF, v16, v18, v19, v20, v21, v22, v23);
}

uint64_t AppleBCMWLANPCIeSkywalkTxSubmissionQueue::dequeueSoftAPLLWPacket(uint64_t *a1, uint64_t a2, uint64_t *a3, unsigned __int8 *a4)
{
  v7 = OUTLINED_FUNCTION_5_5(a1);
  v25 = (*(v8 + 288))(v7);
  Interface = AppleBCMWLANSkywalkTxSubmissionQueue::getInterface(a1);
  v10 = OUTLINED_FUNCTION_5_0(Interface);
  v24 = (*(v11 + 160))(v10);
  v12 = *a3;
  LODWORD(a3) = *(*a3 + 168);
  v13 = *a4;
  v14 = a4[1];
  v15 = a4[2];
  v16 = a4[3];
  v17 = a4[4];
  v18 = a4[5];
  v19 = *(v12 + 184);
  v20 = AppleBCMWLANSkywalkTxSubmissionQueue::getInterface(a1);
  LODWORD(a4) = IO80211SkywalkInterface::getInterfaceId(v20);
  v21 = AppleBCMWLANSkywalkTxSubmissionQueue::getInterface(a1);
  InterfaceRole = IO80211SkywalkInterface::getInterfaceRole(v21);
  return CCLogStream::logAlert(v25, "[dk] %s@%d:%s Creating %s flowQueue for TxSub ivars->fAc %u, flowIndx %u, da:%02x:%02x:%02x:%02x:%02x:%02x, ifId %d, ifRole %d\n", "dequeueSoftAPLLWPacket", 491, "dequeueSoftAPLLWPacket", v24, v19, a3, v13, v14, v15, v16, v17, v18, a4, InterfaceRole);
}

uint64_t AppleBCMWLANPCIeSkywalkTxSubmissionQueue::dequeueAWDLNANPacket(uint64_t *a1)
{
  v3 = OUTLINED_FUNCTION_10_5(a1);
  (*(v4 + 288))(v3);
  v5 = OUTLINED_FUNCTION_12_1();
  Interface = AppleBCMWLANSkywalkTxSubmissionQueue::getInterface(v5);
  v7 = OUTLINED_FUNCTION_5_0(Interface);
  (*(v8 + 160))(v7);
  v9 = OUTLINED_FUNCTION_8_4();
  v10 = AppleBCMWLANSkywalkTxSubmissionQueue::getInterface(v9);
  InterfaceId = IO80211SkywalkInterface::getInterfaceId(v10);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR ! Interface (%s, ID : %d) is not enabled\n", "dequeueAWDLNANPacket", 602, v2, InterfaceId);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  (*(v2 + 288))(v1);
  OUTLINED_FUNCTION_7_1();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:%s[%d] :: ERROR ! Could not insert Snap Header, discarding packet\n", v5, v6, v7, v8);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  (*(v2 + 288))(v1);
  OUTLINED_FUNCTION_7_1();
  return CCLogStream::logInfo(v3, "[dk] %s@%d:%s[%d] Could not dup multicast packet for 2nd soc channel\n", v5, v6, v7, v8);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 288))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Invalid Virtual Interface for AWDL ! \n", "dequeueAWDLNANPacket", 652);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 288))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR ! No Prox Interface\n", "dequeueAWDLNANPacket", 618);
}

{
  v4 = OUTLINED_FUNCTION_10_5(a1);
  (*(v5 + 288))(v4);
  v6 = OUTLINED_FUNCTION_12_1();
  Interface = AppleBCMWLANSkywalkTxSubmissionQueue::getInterface(v6);
  v8 = OUTLINED_FUNCTION_5_0(Interface);
  (*(v9 + 160))(v8);
  v10 = OUTLINED_FUNCTION_8_4();
  v11 = AppleBCMWLANSkywalkTxSubmissionQueue::getInterface(v10);
  InterfaceId = IO80211SkywalkInterface::getInterfaceId(v11);
  v13 = *AppleBCMWLANSkywalkTxSubmissionQueue::getInterface(v1);
  v14 = (*(v13 + 664))();
  return CCLogStream::logAlert(v2, "[dk] %s@%d:ERROR ! Interface (%s, ID : %d), chip ready %d \n", "dequeueAWDLNANPacket", 609, v3, InterfaceId, v14);
}

uint64_t AppleBCMWLANPCIeSkywalkTxSubmissionQueue::dequeuePackets(uint64_t a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_7_9(a1, a2);
  (*(v3 + 224))(v4);
  v5 = OUTLINED_FUNCTION_5_0(*(*v2 + 16));
  (*(v6 + 784))(v5);
  OUTLINED_FUNCTION_10_7(0x4449u);

  return kdebug_trace();
}

{
  OUTLINED_FUNCTION_7_9(a1, a2);
  (*(v3 + 224))(v4);
  v5 = OUTLINED_FUNCTION_5_0(*(*v2 + 16));
  (*(v6 + 784))(v5);
  OUTLINED_FUNCTION_10_7(0x444Au);
  return kdebug_trace();
}

uint64_t AppleBCMWLANPCIeSkywalkTxSubmissionQueue::getAvgTxCompLatency(uint64_t *a1, int a2, uint64_t a3, void *a4)
{
  v8 = OUTLINED_FUNCTION_5_0(a1);
  result = (*(v9 + 288))(v8);
  if (result)
  {
    (*(*a1 + 288))(a1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v11 = (*(*a1 + 288))(a1);
      result = CCLogStream::logAlert(v11, "[dk] %s@%d:Did not have a flow with index %u for peer, flow queue count %u\n", "getAvgTxCompLatency", 1082, a2, *(a1[11] + 168));
    }
  }

  *a4 = a3;
  return result;
}

uint64_t AppleBCMWLANPCIeSkywalkTxSubmissionQueue::setFWRing(uint64_t *a1, uint64_t a2, uint64_t a3, unsigned __int16 a4)
{
  v6 = OUTLINED_FUNCTION_5_5(a1);
  v8 = (*(v7 + 288))(v6);
  return CCLogStream::logInfo(v8, "[dk] %s@%d:fTid %d flow id %d\n", "setFWRing", 1196, *(*a3 + 184), a4);
}

uint64_t AppleBCMWLANPCIeSkywalkTxSubmissionQueue::setFWRing(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = OUTLINED_FUNCTION_5_5(a1);
  v6 = (*(v5 + 288))(v4);
  return CCLogStream::logInfo(v6, "[dk] %s@%d:%s ivars->fFlowQueueCount %u \n", "setFWRing", 1197, "setFWRing", *(*a3 + 168));
}

uint64_t AppleBCMWLANPCIeSkywalkTxSubmissionQueue::setFWRing(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 288))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR ! Invalid FlowID/Ring \n", "setFWRing", 1211);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 288))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR ! Could not Find flow Queue for FlowID ! \n", "setFWRing", 1232);
}

uint64_t AppleBCMWLANPCIeSkywalkTxSubmissionQueue::clearFlowIdInFlowQ(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_10_5(a1);
  v4 = (*(v3 + 288))(v2);
  return CCLogStream::logInfo(v4, "[dk] %s@%d:%s fFlowQueueCount %u \n", "clearFlowIdInFlowQ", 1262, "clearFlowIdInFlowQ", *(*(v1 + 88) + 168));
}

uint64_t AppleBCMWLANConfigManager::prepareImageMapHelper(uint64_t a1, OSMappedFile **a2)
{
  result = 3758097090;
  if (*a2 && a2[1] && a2[2] && a2[3])
  {
    v5 = OSMappedFile::size(a2[1]);
    v6 = OSMappedFile::size(*a2);
    v7 = OSMappedFile::size(a2[2]);
    v8 = OSMappedFile::size(a2[3]);
    if (a2[4] && (*(*(a1 + 48) + 376))(**(a1 + 48)))
    {
      v9 = OSMappedFile::size(a2[4]);
    }

    else
    {
      v9 = 0;
    }

    if (a2[5] && AppleBCMWLANCore::is4388Up(**(a1 + 48)))
    {
      v10 = OSMappedFile::size(a2[5]);
    }

    else
    {
      v10 = 0;
    }

    if (*(*(a1 + 48) + 16) && CCLogStream::shouldLog())
    {
      CCLogStream::logNoticeIf(*(*(a1 + 48) + 16), 0x80uLL, "[dk] %s@%d: FW size %zu NV size %zu Reg size %zu txcap %zu\n", "prepareImageMapHelper", 2834, v5, v6, v7, v8);
    }

    result = 3825174272;
    if (v5 <= 0x307000)
    {
      if (v5 >= 0x19000)
      {
        if (v6 <= 0x8000)
        {
          if (v6 >= 0x64)
          {
            if (v7 <= 0x19000)
            {
              if (v7 - 1 >= 0x20)
              {
                if (v8 <= 0x8000)
                {
                  if (v8 - 1 >= 0x20)
                  {
                    if (v9 <= 0x400)
                    {
                      if (v9 - 1 >= 0xF)
                      {
                        if (v10 <= 0x10000)
                        {
                          if (v10 - 1 >= 0x1F)
                          {
                            *(*(a1 + 48) + 344) = (*(*(a1 + 48) + 352))(**(a1 + 48), v5, v6, v7, v8, v9, v10);
                            v11 = OUTLINED_FUNCTION_13_4();
                            if (v11)
                            {
                              v13 = *(a2 + 1);
                              v16[0] = *a2;
                              v16[1] = v13;
                              v16[2] = *(a2 + 2);
                              v14 = OUTLINED_FUNCTION_5_0(v11);
                              return (*(v15 + 64))(v14, v16);
                            }

                            else
                            {
                              if (*(v12 + 16))
                              {
                                if (CCLogStream::shouldLog())
                                {
                                  CCLogStream::logAlert(*(*(a1 + 48) + 16), "[dk] %s@%d: fActiveChipImage alloc fail\n", "prepareImageMapHelper", 2888);
                                }
                              }

                              return 3758097085;
                            }
                          }

                          else
                          {
                            return 3825174305;
                          }
                        }

                        else
                        {
                          return 3825174304;
                        }
                      }

                      else
                      {
                        return 3825174303;
                      }
                    }

                    else
                    {
                      return 3825174302;
                    }
                  }

                  else
                  {
                    return 3825174281;
                  }
                }

                else
                {
                  return 3825174280;
                }
              }

              else
              {
                return 3825174277;
              }
            }

            else
            {
              return 3825174276;
            }
          }

          else
          {
            return 3825174284;
          }
        }

        else
        {
          return 3825174275;
        }
      }
    }

    else
    {
      return 3825174273;
    }
  }

  return result;
}

size_t AppleBCMWLANConfigManager::prepareImageMap(uint64_t a1, uint64_t a2)
{
  v625 = a1;
  strcpy(__s, "Firmware/");
  v4 = strlen(__s);
  v5 = strlen(*(a2 + 8));
  v6 = v4 + 1;
  v645 = 0;
  v646 = 0;
  v7 = strlen(*(a2 + 24));
  v644 = 0;
  v607 = strlen(*(a2 + 16));
  v643 = 0;
  v8 = strlen(*a2);
  v642 = 0;
  v580 = strlen(*(a2 + 32));
  v641 = 0;
  v9 = strlen(*(a2 + 40));
  v10 = OSBundle::mainBundle(v9);
  v396 = v5;
  v566 = v9;
  if (!v10)
  {
    OUTLINED_FUNCTION_2_12();
    v622 = 0;
    v19 = 0;
LABEL_90:
    OUTLINED_FUNCTION_8_9();
    goto LABEL_55;
  }

  v11 = IOMallocZeroData();
  v2 = "prepareImageMap";
  if (!v11)
  {
    OUTLINED_FUNCTION_1_13(0, v12, v13, v14, v15, v16, v17, v18, v316, v336, v352, v367, v382, v5, v410, v425, v440, v455, v470, v485, v498, v512, v523, v533, v542, v550, v565, v9, v580, v594, v607, v621, v625);
    OUTLINED_FUNCTION_8_9();
    if (v176)
    {
      shouldLog = CCLogStream::shouldLog();
      if (shouldLog)
      {
        v302 = OUTLINED_FUNCTION_1_13(shouldLog, v178, v179, v180, v181, v182, v183, v184, v323, v339, v354, v369, v383, v397, v412, v427, v442, v457, v472, v487, v500, v514, v525, v535, v544, v552, v565, v567, v581, v596, v608, v623, v626);
        CCLogStream::logAlert(v302, "[dk] %s@%d:Failed to malloc for FW filename\n", "prepareImageMap", 2956);
      }
    }

    OUTLINED_FUNCTION_2_12();
    v622 = 0;
    v19 = 0;
    goto LABEL_55;
  }

  v19 = v11;
  bzero(v11, &v5[v6]);
  memcpy(v19, __s, v4);
  cString = v19;
  v20 = strlen(*(a2 + 8));
  memcpy(&v19[v4], *(a2 + 8), v20);
  v9 = &IOVMPageSize;
  OUTLINED_FUNCTION_12_5();
  OSBundle::loadResource(v10, v19, 0, v21, &v646);
  if (!v646)
  {
    io80211_os_log();
    OUTLINED_FUNCTION_2_12();
    v622 = 0;
    goto LABEL_90;
  }

  v317 = OSMappedFile::size(v646);
  io80211_os_log();
  v22 = IOMallocZeroData();
  if (!v22)
  {
    OUTLINED_FUNCTION_1_13(0, v23, v24, v25, v26, v27, v28, v29, v317, v19, v352, v367, v382, v5, v410, v425, v440, v455, v470, v485, v498, v512, v523, v533, v542, v550, v565, v566, v580, v594, v607, v621, v625);
    OUTLINED_FUNCTION_8_9();
    if (v185)
    {
      v186 = CCLogStream::shouldLog();
      if (v186)
      {
        v303 = OUTLINED_FUNCTION_1_13(v186, v187, v188, v189, v190, v191, v192, v193, v324, v340, v355, v370, v384, v398, v413, v428, v443, v458, v473, v488, v501, v515, v526, v536, v545, v553, v565, v568, v582, v597, v609, v624, v627);
        CCLogStream::logAlert(v303, "[dk] %s@%d:Failed to malloc for TX cap filename\n", "prepareImageMap", 2972);
      }
    }

    OUTLINED_FUNCTION_2_12();
    v622 = 0;
    goto LABEL_55;
  }

  v5 = v22;
  bzero(v22, v6 + v7);
  memcpy(v5, __s, v4);
  v19 = *(a2 + 24);
  v30 = strlen(v19);
  memcpy(&v5[v4], v19, v30);
  OUTLINED_FUNCTION_12_5();
  OSBundle::loadResource(v10, v5, 0, v31, &v645);
  v622 = v5;
  if (!v645)
  {
    io80211_os_log();
LABEL_100:
    OUTLINED_FUNCTION_2_12();
LABEL_108:
    OUTLINED_FUNCTION_5_10();
    goto LABEL_55;
  }

  v318 = OSMappedFile::size(v645);
  io80211_os_log();
  v32 = IOMallocZeroData();
  if (!v32)
  {
    if (OUTLINED_FUNCTION_1_13(0, v33, v34, v35, v36, v37, v38, v39, v318, v5, v352, v367, v382, v396, v410, v425, v440, v455, v470, v485, v498, v512, v523, v533, v542, v550, v565, v566, v580, v594, v607, v5, v625))
    {
      CCLogStream::shouldLog();
      OUTLINED_FUNCTION_5_10();
      if (v194)
      {
        v304 = OUTLINED_FUNCTION_1_13(v194, v195, v196, v197, v198, v199, v200, v201, v325, v341, v356, v371, v385, v399, v414, v429, v444, v459, v474, v489, v502, v516, v527, v537, v546, v554, v565, v569, v583, v598, v610, v622, v628);
        CCLogStream::logAlert(v304, "[dk] %s@%d:Failed to malloc for regulatory filename", "prepareImageMap", 2988);
      }

      OUTLINED_FUNCTION_2_12();
      goto LABEL_55;
    }

    goto LABEL_100;
  }

  v5 = v32;
  bzero(v32, v6 + v7);
  memcpy(v5, __s, v4);
  v19 = *(a2 + 16);
  v40 = strlen(v19);
  memcpy(&v5[v4], v19, v40);
  OUTLINED_FUNCTION_12_5();
  OSBundle::loadResource(v10, v5, 0, v41, &v644);
  if (!v644)
  {
    io80211_os_log();
LABEL_106:
    OUTLINED_FUNCTION_3_9();
    goto LABEL_108;
  }

  v319 = OSMappedFile::size(v644);
  io80211_os_log();
  v42 = IOMallocZeroData();
  if (!v42)
  {
    if (OUTLINED_FUNCTION_1_13(0, v43, v44, v45, v46, v47, v48, v49, v319, v5, v352, v367, v382, v396, v410, v425, v440, v455, v470, v485, v498, v512, v523, v533, v542, v550, v565, v566, v580, v594, v607, v622, v625))
    {
      CCLogStream::shouldLog();
      OUTLINED_FUNCTION_5_10();
      if (v202)
      {
        v305 = OUTLINED_FUNCTION_1_13(v202, v203, v204, v205, v206, v207, v208, v209, v326, v342, v357, v372, v386, v400, v415, v430, v445, v460, v475, v490, v503, v517, v528, v538, v547, v555, v565, v570, v584, v599, v611, v622, v629);
        CCLogStream::logAlert(v305, "[dk] %s@%d:Failed to malloc for NVRAM filename\n", "prepareImageMap", 3004);
      }

      OUTLINED_FUNCTION_3_9();
      goto LABEL_55;
    }

    goto LABEL_106;
  }

  v2 = v42;
  bzero(v42, v6 + v8);
  memcpy(v2, __s, v4);
  v19 = *a2;
  v50 = strlen(*a2);
  memcpy(&v2[v4], *a2, v50);
  OUTLINED_FUNCTION_12_5();
  OSBundle::loadResource(v10, v2, 0, v51, &v643);
  if (!v643)
  {
    io80211_os_log();
    OUTLINED_FUNCTION_4_11();
    goto LABEL_108;
  }

  v551 = v8;
  v320 = OSMappedFile::size(v643);
  v337 = v2;
  io80211_os_log();
  v52 = OSDictionary::withCapacity(4u);
  v19 = cString;
  if (v52)
  {
    v60 = v52;
    v61 = OSString::withCStringNoCopy(cString);
    if (!v61)
    {
      if (OUTLINED_FUNCTION_1_13(0, v62, v63, v64, v65, v66, v67, v68, v320, v2, v352, v367, v382, v396, v410, v425, v440, v455, v470, v485, v498, v512, v523, v533, v542, v551, v565, v566, v580, v594, v607, v622, v625))
      {
        CCLogStream::shouldLog();
        OUTLINED_FUNCTION_8_9();
        if (v218)
        {
          v307 = OUTLINED_FUNCTION_1_13(v218, v219, v220, v221, v222, v223, v224, v225, v328, v344, v359, v374, v388, v402, v417, v432, v447, v462, v477, v492, v505, v519, v530, v540, v549, v557, v565, v572, v586, v601, v613, v622, v631);
          CCLogStream::logAlert(v307, "[dk] %s@%d:Failed to create FW OSString\n", "prepareImageMap", 3027);
        }

        OUTLINED_FUNCTION_4_11();
      }

      else
      {
        OUTLINED_FUNCTION_4_11();
        OUTLINED_FUNCTION_8_9();
      }

      goto LABEL_54;
    }

    v543 = v61;
    OSDictionary::setObject(v60, v61, v646);
    v69 = OSString::withCStringNoCopy(v622);
    if (!v69)
    {
      if (OUTLINED_FUNCTION_1_13(0, v70, v71, v72, v73, v74, v75, v76, v320, v2, v352, v367, v382, v396, v410, v425, v440, v455, v470, v485, v498, v512, v523, v533, v543, v551, v565, v566, v580, v594, v607, v622, v625))
      {
        CCLogStream::shouldLog();
        OUTLINED_FUNCTION_8_9();
        if (v226)
        {
          v308 = OUTLINED_FUNCTION_1_13(v226, v227, v228, v229, v230, v231, v232, v233, v329, v345, v360, v375, v389, v403, v418, v433, v448, v463, v478, v493, v506, v520, v531, v541, v543, v558, v565, v573, v587, v602, v614, v622, v632);
          CCLogStream::logAlert(v308, "[dk] %s@%d:Failed to create TX OSString\n", "prepareImageMap", 3034);
        }

        OUTLINED_FUNCTION_11_6();
      }

      else
      {
        OUTLINED_FUNCTION_11_6();
        OUTLINED_FUNCTION_8_9();
      }

      goto LABEL_53;
    }

    v534 = v69;
    OSDictionary::setObject(v60, v69, v645);
    v77 = OSString::withCStringNoCopy(v5);
    if (!v77)
    {
      if (OUTLINED_FUNCTION_1_13(0, v78, v79, v80, v81, v82, v83, v84, v320, v2, v352, v367, v382, v396, v410, v425, v440, v455, v470, v485, v498, v512, v523, v534, v543, v551, v565, v566, v580, v594, v607, v622, v625))
      {
        CCLogStream::shouldLog();
        OUTLINED_FUNCTION_8_9();
        if (v234)
        {
          v309 = OUTLINED_FUNCTION_1_13(v234, v235, v236, v237, v238, v239, v240, v241, v330, v346, v361, v376, v390, v404, v419, v434, v449, v464, v479, v494, v507, v521, v532, v534, v543, v559, v565, v574, v588, v603, v615, v622, v633);
          CCLogStream::logAlert(v309, "[dk] %s@%d:Failed to create RF OSString\n", "prepareImageMap", 3041);
        }

        OUTLINED_FUNCTION_4_11();
      }

      else
      {
        OUTLINED_FUNCTION_4_11();
        OUTLINED_FUNCTION_8_9();
      }

      goto LABEL_52;
    }

    v9 = v77;
    OSDictionary::setObject(v60, v77, v644);
    v85 = OSString::withCStringNoCopy(v2);
    v524 = v9;
    if (!v85)
    {
      if (OUTLINED_FUNCTION_1_13(0, v86, v87, v88, v89, v90, v91, v92, v320, v2, v352, v367, v382, v396, v410, v425, v440, v455, v470, v485, v498, v512, v9, v534, v543, v551, v565, v566, v580, v594, v607, v622, v625))
      {
        CCLogStream::shouldLog();
        OUTLINED_FUNCTION_8_9();
        if (v242)
        {
          v310 = OUTLINED_FUNCTION_1_13(v242, v243, v244, v245, v246, v247, v248, v249, v331, v347, v362, v377, v391, v405, v420, v435, v450, v465, v480, v495, v508, v522, v524, v534, v543, v560, v565, v575, v589, v604, v616, v622, v634);
          CCLogStream::logAlert(v310, "[dk] %s@%d:Failed to create NVRAM OSString\n", "prepareImageMap", 3048);
        }

        OUTLINED_FUNCTION_11_6();
      }

      else
      {
        OUTLINED_FUNCTION_11_6();
        OUTLINED_FUNCTION_8_9();
      }

      goto LABEL_51;
    }

    v513 = v85;
    OSDictionary::setObject(v60, v85, v643);
    v595 = v2;
    if ((*(*(v625 + 48) + 376))(**(v625 + 48)))
    {
      v93 = v7;
      v94 = IOMallocZeroData();
      if (v94)
      {
        v102 = v94;
        bzero(v94, v6 + v580);
        memcpy(v102, __s, v4);
        v19 = *(a2 + 32);
        v103 = strlen(v19);
        memcpy(&v102[v4], v19, v103);
        OSBundle::loadResource(v10, v102, 0, 10 * IOVMPageSize, &v642);
        v565 = v102;
        if (v642)
        {
          v320 = OSMappedFile::size(v642);
          v337 = v102;
          io80211_os_log();
          v104 = OSString::withCStringNoCopy(v102);
          if (v104)
          {
            v486 = v104;
            OSDictionary::setObject(v60, v104, v642);
            v19 = cString;
            v7 = v93;
            v2 = v595;
            goto LABEL_21;
          }

          if (OUTLINED_FUNCTION_1_13(0, v105, v106, v107, v108, v109, v110, v111, v320, v102, v352, v367, v382, v396, v410, v425, v440, v455, v470, v485, v498, v513, v9, v534, v543, v551, v102, v566, v580, v595, v607, v622, v625))
          {
            CCLogStream::shouldLog();
            OUTLINED_FUNCTION_5_10();
            v2 = v595;
            if (v285)
            {
              v314 = OUTLINED_FUNCTION_1_13(v285, v286, v287, v288, v289, v290, v291, v292, v334, v350, v365, v380, v394, v408, v423, v438, v453, v468, v483, v497, v511, v513, v524, v534, v543, v563, v565, v578, v592, v595, v619, v622, v637);
              CCLogStream::logAlert(v314, "[dk] %s@%d:Failed to create signature OSString\n", "prepareImageMap", 3074);
            }

            OUTLINED_FUNCTION_9_7();
            goto LABEL_50;
          }

          OUTLINED_FUNCTION_9_7();
          OUTLINED_FUNCTION_5_10();
        }

        else
        {
          io80211_os_log();
          OUTLINED_FUNCTION_9_7();
          OUTLINED_FUNCTION_5_10();
        }
      }

      else if (OUTLINED_FUNCTION_1_13(0, v95, v96, v97, v98, v99, v100, v101, v320, v337, v352, v367, v382, v396, v410, v425, v440, v455, v470, v485, v498, v513, v9, v534, v543, v551, v565, v566, v580, v595, v607, v622, v625))
      {
        CCLogStream::shouldLog();
        OUTLINED_FUNCTION_8_9();
        if (v269)
        {
          v312 = OUTLINED_FUNCTION_1_13(v269, v270, v271, v272, v273, v274, v275, v276, v332, v348, v363, v378, v392, v406, v421, v436, v451, v466, v481, v496, v509, v513, v524, v534, v543, v561, v565, v576, v590, v595, v617, v622, v635);
          CCLogStream::logAlert(v312, "[dk] %s@%d:Failed to malloc for signature filename\n", "prepareImageMap", 3058);
        }

        OUTLINED_FUNCTION_4_11();
      }

      else
      {
        OUTLINED_FUNCTION_4_11();
        OUTLINED_FUNCTION_8_9();
      }

      v2 = v595;
LABEL_50:
      v155 = OUTLINED_FUNCTION_5_0(v513);
      (*(v156 + 16))(v155);
LABEL_51:
      v157 = OUTLINED_FUNCTION_5_0(v524);
      (*(v158 + 16))(v157);
LABEL_52:
      v159 = OUTLINED_FUNCTION_5_0(v534);
      (*(v160 + 16))(v159);
LABEL_53:
      v161 = OUTLINED_FUNCTION_5_0(v543);
      (*(v162 + 16))(v161);
LABEL_54:
      (v60->release)(v60);
      goto LABEL_55;
    }

    v486 = 0;
    v565 = 0;
LABEL_21:
    v456 = v10;
    v471 = v4 + 1;
    v441 = v7;
    v499 = v5;
    if (AppleBCMWLANCore::is4388Up(**(v625 + 48)))
    {
      v112 = IOMallocZeroData();
      if (!v112)
      {
        if (OUTLINED_FUNCTION_1_13(0, v113, v114, v115, v116, v117, v118, v119, v320, v337, v352, v367, v382, v396, v410, v425, v7, v10, v471, v486, v5, v513, v9, v534, v543, v551, v565, v566, v580, v595, v607, v622, v625))
        {
          CCLogStream::shouldLog();
          OUTLINED_FUNCTION_8_9();
          v5 = v510;
          if (v277)
          {
            v313 = OUTLINED_FUNCTION_1_13(v277, v278, v279, v280, v281, v282, v283, v284, v333, v349, v364, v379, v393, v407, v422, v437, v452, v467, v482, v486, v510, v513, v524, v534, v543, v562, v565, v577, v591, v605, v618, v622, v636);
            CCLogStream::logAlert(v313, "[dk] %s@%d:Failed to malloc for platcfg filename\n", "prepareImageMap", 3082);
          }

          OUTLINED_FUNCTION_9_7();
          goto LABEL_48;
        }

        OUTLINED_FUNCTION_9_7();
        OUTLINED_FUNCTION_8_9();
LABEL_162:
        v5 = v510;
LABEL_48:
        if (v486)
        {
          v153 = OUTLINED_FUNCTION_5_0(v486);
          (*(v154 + 16))(v153);
        }

        goto LABEL_50;
      }

      v9 = v112;
      bzero(v112, v6 + v566);
      memcpy(v9, __s, v4);
      v19 = *(a2 + 40);
      v120 = strlen(v19);
      memcpy(v9 + v4, v19, v120);
      OSBundle::loadResource(v10, v9, 0, 10 * IOVMPageSize, &v641);
      v426 = v9;
      if (v641)
      {
        v321 = OSMappedFile::size(v641);
        io80211_os_log();
        v121 = OSString::withCStringNoCopy(v9);
        if (v121)
        {
          v411 = v121;
          OSDictionary::setObject(v60, v121, v641);
          goto LABEL_29;
        }

        if (OUTLINED_FUNCTION_1_13(0, v122, v123, v124, v125, v126, v127, v128, v321, v9, v352, v367, v382, v396, v410, v9, v7, v10, v471, v486, v5, v513, v524, v534, v543, v551, v565, v566, v580, v595, v607, v622, v625))
        {
          v294 = CCLogStream::shouldLog();
          if (v294)
          {
            v315 = OUTLINED_FUNCTION_1_13(v294, v295, v296, v297, v298, v299, v300, v301, v335, v351, v366, v381, v395, v409, v424, v439, v454, v469, v484, v486, v510, v513, v524, v534, v543, v564, v565, v579, v593, v606, v620, v622, v638);
            CCLogStream::logAlert(v315, "[dk] %s@%d:Failed to create platcfg OSString\n", "prepareImageMap", 3094);
          }
        }

        a2 = 0;
        OUTLINED_FUNCTION_5_10();
        goto LABEL_162;
      }

      io80211_os_log();
    }

    else
    {
      v426 = 0;
    }

    v411 = 0;
LABEL_29:
    v129 = 0;
    while (1)
    {
      v130 = *(&AppleBCMWLANTrustedChipsetSHAs + v129);
      v131 = AppleBCMWLANNumTrustedChipsetSHAs[v129];
      v132 = IOFileValidationRequestImageVerify();
      v133 = v132;
      v134 = v132 ? "Failed" : "Success";
      v353 = v132;
      v368 = v134;
      v322 = v129;
      v338 = 8;
      v135 = io80211_os_log();
      if (!v133)
      {
        break;
      }

      if (++v129 == 8)
      {
        goto LABEL_39;
      }
    }

    if (OUTLINED_FUNCTION_1_13(v135, v136, v137, v138, v139, v140, v141, v142, v129, 8, v353, v368, v382, v396, v411, v426, v7, v10, v471, v486, v5, v513, v524, v534, v543, v551, v565, v566, v580, v595, v607, v622, v625))
    {
      v143 = CCLogStream::shouldLog();
      if (v143)
      {
        v293 = OUTLINED_FUNCTION_1_13(v143, v144, v145, v146, v147, v148, v149, v150, v322, v338, v353, v368, v382, v396, v411, v426, v441, v456, v471, v486, v499, v513, v524, v534, v543, v551, v565, v566, v580, v595, v607, v622, v625);
        CCLogStream::logEmergency(v293, "[dk] %s@%d:Verified FW files as authentic. Proceed!\n", "prepareImageMap", 3108);
      }
    }

LABEL_39:
    v151 = 0;
    v152 = v625;
    do
    {
      AppleBCMWLANConfigManager::debugHashstore(v625, v60, *(&AppleBCMWLANTrustedChipsetSHAs + v151), AppleBCMWLANNumTrustedChipsetSHAs[v151], "AppleBCMWLANTrustedChipsetSHAs", v151);
      ++v151;
    }

    while (v151 != 8);
    v10 = v456;
    if (*(*(v625 + 48) + 16) && CCLogStream::shouldLog())
    {
      CCLogStream::logNoticeIf(*(*(v625 + 48) + 16), 0x80uLL, "[dk] %s@%d:Image verification, rv:%d, skipVerification:%d\n", "prepareImageMap", 3118, v133, *(a2 + 48));
    }

    v19 = cString;
    v5 = v499;
    v2 = v595;
    if (v133 && (*(a2 + 48) & 1) == 0)
    {
      v250 = *(*(v625 + 48) + 16);
      OUTLINED_FUNCTION_8_9();
      if (v251)
      {
        v252 = CCLogStream::shouldLog();
        v9 = v426;
        if (v252)
        {
          v311 = OUTLINED_FUNCTION_1_13(v252, v253, v254, v255, v256, v257, v258, v259, v322, v338, v353, v368, v382, v396, v411, v426, v441, v456, v471, v486, v499, v513, v524, v534, v543, v551, v565, v566, v580, v595, v607, v622, v625);
          v4 = (v152 + 5);
          CCLogStream::logAlert(v311, "[dk] %s@%d:File validation failed, Image verification, rv:%d, skipVerification:%d, ret[0x%08x]\n", "prepareImageMap", 3122, v4, *(a2 + 48), v4);
        }

        else
        {
          v4 = (v625 + 5);
        }

        v19 = cString;
      }

      else
      {
        v4 = (v625 + 5);
        v19 = cString;
        v9 = v426;
      }

      a2 = v411;
    }

    else
    {
      v640[0] = v643;
      v640[1] = v646;
      v640[2] = v644;
      v640[3] = v645;
      v640[4] = v642;
      v640[5] = v641;
      v4 = AppleBCMWLANConfigManager::prepareImageMapHelper(v625, v640);
      a2 = v411;
      if (v4)
      {
        v9 = v426;
        if (*(*(v625 + 48) + 16))
        {
          v260 = CCLogStream::shouldLog();
          if (v260)
          {
            v268 = OUTLINED_FUNCTION_1_13(v260, v261, v262, v263, v264, v265, v266, v267, v322, v338, v353, v368, v382, v396, v411, v426, v441, v456, v471, v486, v499, v513, v524, v534, v543, v551, v565, v566, v580, v595, v607, v622, v625);
            CCLogStream::logAlert(v268, "[dk] %s@%d:Failed to prepare image map\n", "prepareImageMap", 3137);
          }
        }
      }

      else
      {
        v9 = v426;
      }
    }

    goto LABEL_48;
  }

  if (OUTLINED_FUNCTION_1_13(0, v53, v54, v55, v56, v57, v58, v59, v320, v2, v352, v367, v382, v396, v410, v425, v440, v455, v470, v485, v498, v512, v523, v533, v542, v8, v565, v566, v580, v594, v607, v622, v625))
  {
    CCLogStream::shouldLog();
    OUTLINED_FUNCTION_8_9();
    if (v210)
    {
      v306 = OUTLINED_FUNCTION_1_13(v210, v211, v212, v213, v214, v215, v216, v217, v327, v343, v358, v373, v387, v401, v416, v431, v446, v461, v476, v491, v504, v518, v529, v539, v548, v556, v565, v571, v585, v600, v612, v622, v630);
      CCLogStream::logAlert(v306, "[dk] %s@%d:Failed to create OSDictionary\n", "prepareImageMap", 3021);
    }

    OUTLINED_FUNCTION_4_11();
  }

  else
  {
    OUTLINED_FUNCTION_4_11();
    OUTLINED_FUNCTION_8_9();
  }

LABEL_55:
  if (v642)
  {
    v163 = OUTLINED_FUNCTION_5_0(v642);
    (*(v164 + 16))(v163);
    v642 = 0;
  }

  if (v565)
  {
    IOFreeData();
  }

  if (a2)
  {
    (*(*a2 + 16))(a2);
  }

  if (v641)
  {
    v165 = OUTLINED_FUNCTION_5_0(v641);
    (*(v166 + 16))(v165);
    v641 = 0;
  }

  if (v9)
  {
    IOFreeData();
  }

  if (v643)
  {
    v167 = OUTLINED_FUNCTION_5_0(v643);
    (*(v168 + 16))(v167);
    v643 = 0;
  }

  if (v2)
  {
    IOFreeData();
  }

  if (v644)
  {
    v169 = OUTLINED_FUNCTION_5_0(v644);
    (*(v170 + 16))(v169);
    v644 = 0;
  }

  if (v5)
  {
    IOFreeData();
  }

  if (v645)
  {
    v171 = OUTLINED_FUNCTION_5_0(v645);
    (*(v172 + 16))(v171);
    v645 = 0;
  }

  if (v622)
  {
    IOFreeData();
  }

  if (v646)
  {
    v173 = OUTLINED_FUNCTION_5_0(v646);
    (*(v174 + 16))(v173);
    v646 = 0;
  }

  if (v19)
  {
    IOFreeData();
  }

  if (v10)
  {
    (*(*v10 + 16))(v10);
  }

  return v4;
}

uint64_t AppleBCMWLANConfigManager::debugHashstore(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5, uint64_t a6)
{
  v23 = 0;
  v26 = 0u;
  v27 = 0u;
  *__str = 0u;
  v25 = 0u;
  IOParseBootArgNumber("wlan.debug.hashstore", &v23, 1);
  if (v23 != 1)
  {
    return 0;
  }

  v12 = 3758097085;
  result = 3758097090;
  if (a2)
  {
    if (a3)
    {
      if (a5)
      {
        v14 = *(a1 + 48);
        result = 3758097090;
        if (v14)
        {
          if (*v14)
          {
            if ((snprintf(__str, 0x40uLL, "%s : %zu", a5, a6) - 64) < 0xFFFFFFC1)
            {
              return 3758097086;
            }

            else
            {
              v15 = OSArray::withCapacity(a4);
              if (v15)
              {
                v16 = v15;
                if (a4)
                {
                  while (1)
                  {
                    v17 = OSDictionary::withCapacity(2u);
                    if (!v17)
                    {
                      break;
                    }

                    v18 = v17;
                    v19 = OSData::withBytes(a3, 0x20uLL);
                    if (!v19 || (v20 = v19, OSDictionary::setObject(v18, "shaKey", v19), (v20->release)(v20), (v21 = OSData::withBytes((a3 + 32), 0x20uLL)) == 0))
                    {
                      (v18->release)(v18);
                      break;
                    }

                    v22 = v21;
                    OSDictionary::setObject(v18, "shaContents", v21);
                    (v22->release)(v22);
                    OSArray::setObject(v16, v18);
                    (v18->release)(v18);
                    a3 += 64;
                    if (!--a4)
                    {
                      goto LABEL_14;
                    }
                  }
                }

                else
                {
LABEL_14:
                  setPropertyHelper(**(a1 + 48), __str, v16);
                  v12 = 0;
                }

                (v16->release)(v16);
                return v12;
              }

              else
              {
                return 3758097085;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANConfigManager::completeImageMap(AppleBCMWLANConfigManager *this)
{
  v2 = OUTLINED_FUNCTION_5_0(*(*(this + 6) + 344));
  (*(v3 + 80))(v2, 0);
  v4 = OUTLINED_FUNCTION_13_4();
  v5 = OUTLINED_FUNCTION_5_0(v4);
  (*(v6 + 88))(v5, 0);
  v7 = OUTLINED_FUNCTION_13_4();
  v8 = OUTLINED_FUNCTION_5_0(v7);
  (*(v9 + 104))(v8, 0);
  v10 = OUTLINED_FUNCTION_13_4();
  v11 = OUTLINED_FUNCTION_5_0(v10);
  (*(v12 + 120))(v11, 0);
  result = (*(*(this + 6) + 360))(**(this + 6), *(*(this + 6) + 344));
  if (!result)
  {
    v14 = *(this + 6);
    v15 = v14[46];
    v16 = *v14;
    v17 = v14[43];

    return v15(v16, v17);
  }

  return result;
}

uint64_t AppleBCMWLANConfigManager::init(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_3_1(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:6GHz Roaming override boot-arg not present. f6GHzRoamingEnabledByBootarg : [%d]\n", "init", 524, *(v2 + 390));
}

{
  v1 = OUTLINED_FUNCTION_3_1(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Roaming6G : 6GHz Roaming override boot-arg present. f6GHzRoamingEnabledByBootarg : [%d]\n", "init", 521, *(v2 + 390));
}

{
  v1 = OUTLINED_FUNCTION_3_1(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Roaming6G : 6GHz Roaming override boot-arg present. f6GHzRoamingEnabledByBootarg : [%d]\n", "init", 519, *(v2 + 390));
}

{
  v1 = OUTLINED_FUNCTION_3_1(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Unable to get Command Manager\n", "init", 497);
}

uint64_t AppleBCMWLANConfigManager::gatherParameterData(uint64_t a1)
{
  v1 = *(*a1 + 16);
  OSString::getCStringNoCopy(*(*a1 + 192));
  OUTLINED_FUNCTION_6();
  return CCLogStream::logNoticeIf(v1, 0x80uLL, "[dk] %s@%d: region info: %s\n", v3, v4, v5);
}

{
  v1 = OUTLINED_FUNCTION_3_1(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d: no default roaming parameters found!\n", "gatherParameterData", 757);
}

{
  v1 = OUTLINED_FUNCTION_3_1(a1);
  return CCLogStream::logNoticeIf(v1, 0x400uLL, "[dk] %s@%d: AWDL is not supported.\n", "gatherParameterData", 794);
}

{
  v1 = OUTLINED_FUNCTION_3_1(a1);
  return CCLogStream::logNoticeIf(v1, 0x400uLL, "[dk] %s@%d: AWDL HT20 only is not specified.\n", "gatherParameterData", 807);
}

{
  v1 = OUTLINED_FUNCTION_3_1(a1);
  return CCLogStream::logNoticeIf(v1, 0x400uLL, "[dk] %s@%d: DFS Proxy is not supported.\n", "gatherParameterData", 815);
}

{
  v1 = OUTLINED_FUNCTION_3_1(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Found '%s' boot-arg, forced[%u]\n", "gatherParameterData", 966, "wlan.aoac-allowed", *(v2 + 336));
}

uint64_t AppleBCMWLANConfigManager::gatherKvrParameterData(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_3_1(a1);
  return CCLogStream::logNotice(v1, "[dk] %s@%d:EnterpriseEnhancementParams: Successfully read params : 0x%x\n", "gatherKvrParameterData", 1008, *(v2 + 240));
}

{
  v1 = OUTLINED_FUNCTION_3_1(a1);
  return CCLogStream::logNotice(v1, "[dk] %s@%d:VoiceEnterpriseNwSupportEnabled is False \n", "gatherKvrParameterData", 1061);
}

{
  v1 = OUTLINED_FUNCTION_3_1(a1);
  return CCLogStream::logNotice(v1, "[dk] %s@%d:VoiceEnterpriseNwSupportEnabled is True \n", "gatherKvrParameterData", 1059);
}

{
  v1 = OUTLINED_FUNCTION_3_1(a1);
  return CCLogStream::logNotice(v1, "[dk] %s@%d:fWnmSupportEnabled is False \n", "gatherKvrParameterData", 1068);
}

{
  v1 = OUTLINED_FUNCTION_3_1(a1);
  return CCLogStream::logNotice(v1, "[dk] %s@%d:fWnmSupportEnabled is True \n", "gatherKvrParameterData", 1066);
}

uint64_t AppleBCMWLANConfigManager::readEnhancedRoamingProperty(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_3_1(a1);
  return CCLogStream::logNotice(v1, "[dk] %s@%d:Link loss suppression (fEnabledEnhancedRoaming) is False \n", "readEnhancedRoamingProperty", 1104);
}

{
  v1 = OUTLINED_FUNCTION_3_1(a1);
  return CCLogStream::logNotice(v1, "[dk] %s@%d:Link loss suppression (fEnabledEnhancedRoaming) is True \n", "readEnhancedRoamingProperty", 1102);
}

uint64_t AppleBCMWLANConfigManager::populatePlatformProperties(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_3_1(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:TxPowerCapCtrl invalid ver\n", "populatePlatformProperties", 1249);
}

{
  v1 = OUTLINED_FUNCTION_3_1(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:WiFiRoam : 6GHz support defaults to disable for platform, %d\n", "populatePlatformProperties", 1367, *(v2 + 391));
}

{
  v1 = OUTLINED_FUNCTION_3_1(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:WiFiRoam : 6GHz support explicitly disabled via platform config, %d\n", "populatePlatformProperties", 1363, *(v2 + 391));
}

{
  v1 = OUTLINED_FUNCTION_3_1(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:WiFiRoam : 6GHz supported for this platform, %d\n", "populatePlatformProperties", 1360, *(v2 + 391));
}

uint64_t AppleBCMWLANConfigManager::populatePlatformProperties(uint64_t a1, const OSNumber **a2)
{
  v2 = *(*a1 + 16);
  OSNumber::unsigned32BitValue(*a2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v2, "[dk] %s@%d:Invalid Tx chain mode, %d", v4, v5, v6);
}

uint64_t AppleBCMWLANConfigManager::readPmThresholds(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_3_1(a1);
  v3 = "LPAS";
  if (v4)
  {
    v3 = "WoW";
  }

  return CCLogStream::logNotice(v1, "[dk] %s@%d:DT overrides PM alert thresholds for %s to - %d pct over %d secs;BGScan Quota %d secs &  Roam Quota %d , with restrictoin %d, secs over %d secs\n", "readPmThresholds", 1153, v3, *v2, v2[1], v2[4], v2[2], v2[3], v2[5]);
}

uint64_t AppleBCMWLANConfigManager::handleBeaconOffloadAsyncCallBack(uint64_t ***a1)
{
  v2 = OUTLINED_FUNCTION_0_7(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Error: cannot offload beacon with error=%s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANConfigManager::handleBeaconDriftAsyncCallBack(uint64_t ***a1)
{
  v2 = OUTLINED_FUNCTION_0_7(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Error: cannot set becon drift mitigation params %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANConfigManager::setPowerProfile(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_3_1(a1);
  return CCLogStream::logNoticeIf(v1, 0x80uLL, "[dk] %s@%d:ERP CTS is configured to %d\n", "setPowerProfile", 1955, *v2);
}

{
  v1 = OUTLINED_FUNCTION_3_1(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Configured ERP CTS for Alpine BMW\n", "setPowerProfile", 1957);
}

uint64_t AppleBCMWLANConfigManager::configureBeaconDriftOffsetConfig(uint64_t ***a1)
{
  v2 = OUTLINED_FUNCTION_0_7(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:bcn_tbtt_config setting failed, error %s\n", v5, v6, v7);
}

{
  v2 = OUTLINED_FUNCTION_0_7(a1);
  (*(v3 + 112))(v2, 0);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:Configured BCM drift parametes to FW %s \n", v5, v6, v7);
}

uint64_t AppleBCMWLANConfigManager::querySDBPolicies(uint64_t ***a1)
{
  v2 = OUTLINED_FUNCTION_0_7(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Unable to retrive SDB Version, Error: %s\n", v5, v6, v7);
}

{
  v2 = OUTLINED_FUNCTION_0_7(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Unable to retrive SDB Capabilities, Error: %s\n", v5, v6, v7);
}

{
  v2 = OUTLINED_FUNCTION_0_7(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Unable to retrive SDB Bands, Error: %s\n", v5, v6, v7);
}

{
  v2 = OUTLINED_FUNCTION_0_7(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Unable to retrive SDB Config, Error: %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANConfigManager::querySDBPolicies(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_3_1(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Unable to allocate memory for txBuf\n", "querySDBPolicies", 2081);
}

{
  v1 = OUTLINED_FUNCTION_3_1(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Unable to allocate memory for rxBuf\n", "querySDBPolicies", 2074);
}

uint64_t AppleBCMWLANConfigManager::configureRangingParams(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = *(a1 + 16);
  v7 = OUTLINED_FUNCTION_5_0(*a1);
  (*(v8 + 112))(v7);
  OUTLINED_FUNCTION_6();
  result = CCLogStream::logAlert(v6, "[dk] %s@%d:Failure setting iovar: %s\n", v10, v11, v12);
  *a4 = *a3;
  return result;
}

uint64_t AppleBCMWLANConfigManager::setupBeaconOffload(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_3_1(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Disable beacon offload due to boot-arg \n", "setupBeaconOffload", 2298);
}

{
  v1 = OUTLINED_FUNCTION_3_1(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Trying to configure Beacon offload when not assoicated \n", "setupBeaconOffload", 2304);
}

{
  v1 = OUTLINED_FUNCTION_3_1(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Error: setting beacon offload failed\n", "setupBeaconOffload", 2355);
}

{
  v1 = OUTLINED_FUNCTION_3_1(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:BT eSCO active + Infra on 2G. Will not enable beacon offload\n", "setupBeaconOffload", 2317);
}

uint64_t AppleBCMWLANConfigManager::configureDynamicRssiWindow(uint64_t ***a1)
{
  v2 = OUTLINED_FUNCTION_0_7(a1);
  v5 = *v4;
  v7 = (*(v3 + 112))(v2, v6);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Unable to set snr window to %d: %s\n", "configureDynamicRssiWindow", 3314, v5, v7);
}

{
  v2 = OUTLINED_FUNCTION_0_7(a1);
  v5 = *v4;
  v7 = (*(v3 + 112))(v2, v6);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Unable to set rssi window to %d: %s\n", "configureDynamicRssiWindow", 3308, v5, v7);
}

OSMetaClassBase *IOImageLoaderImageDictionary::getAttributes(IOImageLoaderImageDictionary *this, IOImageLoaderImageDictionary *a2, const char *a3)
{
  if (!this)
  {
    return 0;
  }

  v5 = OUTLINED_FUNCTION_5_0(this);
  v7 = (*(v6 + 72))(v5);
  if (!a2)
  {
    return 0;
  }

  if (!v7)
  {
    return 0;
  }

  Object = OSDictionary::getObject(this, a2);
  if (!OSMetaClassBase::safeMetaCast(Object, gOSDictionaryMetaClass))
  {
    return 0;
  }

  v9 = gOSDictionaryMetaClass;

  return OSMetaClassBase::safeMetaCast(Object, v9);
}

OSDictionary *IOImageLoaderImageDictionary::setAttributeWithString(IOImageLoaderImageDictionary *this, OSDictionary *a2, const char *cString, const char *a4)
{
  if (!this)
  {
    return 0;
  }

  if (!a2)
  {
    return 0;
  }

  if (!cString)
  {
    return 0;
  }

  v6 = OSString::withCString(cString);
  if (!v6)
  {
    return 0;
  }

  OUTLINED_FUNCTION_0_14(v6);
  OUTLINED_FUNCTION_1_14();
  (*(v7 + 16))(v4);
  return a2;
}

unint64_t AppleBCMWLANChipMemory::read(unint64_t result, unsigned int a2, uint64_t a3, uint64_t a4, IO80211Buffer *a5)
{
  v35 = 0;
  if (a2 <= 6)
  {
    v9 = a5;
    if (a5)
    {
      result = OUTLINED_FUNCTION_12_6(result, a2);
      if (!v14 & v13 && v12 <= v11)
      {
        v16 = v10;
        result = IO80211Buffer::getLength(v9);
        if (result > v16)
        {
          v17 = v16;
          result = IO80211Buffer::getLength(v9);
          if ((v16 & 7) == 0 && ((v7 | v6) & 7) == 0 && result >= (v16 + v7))
          {
            result = IO80211Buffer::getBytesNoCopy(v9);
            if ((result & 7) == 0 && v7 >= 8)
            {
              OUTLINED_FUNCTION_18_2();
              do
              {
                v18 = OUTLINED_FUNCTION_21_1();
                v20 = v17;
                if (v18)
                {
                  OUTLINED_FUNCTION_28_3(v19);
                  v20 = 8 * (v9 + v6);
                  OUTLINED_FUNCTION_29_3();
                  v18 = OUTLINED_FUNCTION_25_2(v21, v22, v23, v24);
                }

                AppleBCMWLANBusInterfacePCIe::getDevice(v18);
                OUTLINED_FUNCTION_9_8(*(v5 + 48) + 32 * v8);
                IOPCIDevice::MemoryRead64(v26, v27, v25 + v20, &v35);
                *v16 = v35;
                result = OUTLINED_FUNCTION_21_1();
                if (result)
                {
                  OUTLINED_FUNCTION_28_3(v28);
                  OUTLINED_FUNCTION_19_3();
                  result = AppleBCMWLANPCIeMMIOHistory::recordMMIOMemory(v29, v30, v31, v32, v33, v34);
                }

                v9 = (v9 + 1);
                ++v16;
                v17 += 8;
                --v7;
              }

              while (v7);
            }
          }
        }
      }
    }
  }

  return result;
}

void AppleBCMWLANChipMemory::write(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, IO80211Buffer *a5)
{
  if (a2 <= 6)
  {
    v9 = a5;
    if (a5)
    {
      OUTLINED_FUNCTION_12_6(a1, a2);
      v14 = !(!v40 & v13) || v12 > v11;
      if (!v14)
      {
        v15 = v10;
        if (IO80211Buffer::getLength(v9) > v10)
        {
          v16 = v15;
          Length = IO80211Buffer::getLength(v9);
          if ((v15 & 7) == 0 && ((v7 | v6) & 7) == 0 && Length >= (v15 + v7) && (IO80211Buffer::getBytesNoCopy(v9) & 7) == 0 && v7 >= 8)
          {
            OUTLINED_FUNCTION_18_2();
            do
            {
              v18 = OUTLINED_FUNCTION_21_1();
              v20 = v16;
              if (v18)
              {
                OUTLINED_FUNCTION_28_3(v19);
                v20 = 8 * (v9 + v6);
                OUTLINED_FUNCTION_19_3();
                v18 = AppleBCMWLANPCIeMMIOHistory::recordMMIOMemory(v21, v22, v23, v24, v25, v26);
              }

              AppleBCMWLANBusInterfacePCIe::getDevice(v18);
              OUTLINED_FUNCTION_9_8(*(v5 + 48) + 32 * v8);
              IOPCIDevice::MemoryWrite64(v28, v29, v27 + v20, *(v15 + 8 * v9));
              v30 = OUTLINED_FUNCTION_21_1();
              if (v30)
              {
                OUTLINED_FUNCTION_28_3(v31);
                OUTLINED_FUNCTION_17_3();
                v30 = AppleBCMWLANPCIeMMIOHistory::recordMMIOMemory(v32, v33, v34, v35, v36, v37);
                v31 = *(v5 + 48);
              }

              if (v9)
              {
                v38 = *(v31 + 256);
                v14 = v38 < 1;
                v39 = (v38 + 0x7FFFFFFF) & v9;
                v40 = !v14 && v39 == 0;
                if (v40)
                {
                  v44 = 0;
                  AppleBCMWLANBusInterfacePCIe::getDevice(v30);
                  OUTLINED_FUNCTION_9_8(*(v5 + 48) + 32 * v8);
                  IOPCIDevice::MemoryRead64(v42, v43, v41 + v20, &v44);
                }
              }

              v9 = (v9 + 1);
              v16 += 8;
            }

            while (v7 != v9);
          }
        }
      }
    }
  }
}

void AppleBCMWLANChipMemory::clear(uint64_t a1, unsigned int a2, unsigned int a3, unsigned int a4)
{
  if (a2 <= 6 && ((a4 | a3) & 7) == 0)
  {
    v5 = a2;
    v6 = *(*(a1 + 48) + 32 * a2 + 32);
    v7 = v6 <= a3 || a4 + a3 > v6;
    if (!v7)
    {
      v8 = a3 >> 3;
      v9 = v6 >> 3;
      v10 = a4 ? (a4 >> 3) + (a3 >> 3) : v9;
      if (v8 < v10)
      {
        v11 = 8 * (a3 >> 3);
        do
        {
          v12 = *(a1 + 48);
          v13 = *(v12 + 32 * v5 + 40);
          v14 = *(v12 + 248);
          if (v14)
          {
            OUTLINED_FUNCTION_29_3();
            v14 = OUTLINED_FUNCTION_24_3(v15, v16, v17, v18);
          }

          AppleBCMWLANBusInterfacePCIe::getDevice(v14);
          OUTLINED_FUNCTION_9_8(*(a1 + 48) + 32 * v5);
          IOPCIDevice::MemoryWrite64(v20, v21, v11 + v19, 0);
          v22 = OUTLINED_FUNCTION_21_1();
          if (v22)
          {
            OUTLINED_FUNCTION_29_3();
            OUTLINED_FUNCTION_17_3();
            v22 = AppleBCMWLANPCIeMMIOHistory::recordMMIOMemory(v24, v25, v26, v27, v28, v29);
            v23 = *(a1 + 48);
          }

          if (v8)
          {
            v30 = *(v23 + 256);
            v7 = v30 < 1;
            v31 = (v30 + 0x7FFFFFFF) & v8;
            if (!v7 && v31 == 0)
            {
              v36 = 0;
              AppleBCMWLANBusInterfacePCIe::getDevice(v22);
              OUTLINED_FUNCTION_9_8(*(a1 + 48) + 32 * v5);
              IOPCIDevice::MemoryRead64(v34, v35, v11 + v33, &v36);
            }
          }

          ++v8;
          v11 += 8;
        }

        while (v10 != v8);
      }
    }
  }
}

uint64_t AppleBCMWLANChipMemory::write32(uint64_t result, unsigned int a2)
{
  if (a2 <= 6)
  {
    result = OUTLINED_FUNCTION_2_13(result, a2);
    v8 = !v8 & v7 && (v2 & 3) == 0;
    if (v8 && v2 + 4 <= v6)
    {
      v10 = v3;
      v11 = *(v4 + 248);
      if (v11)
      {
        v11 = OUTLINED_FUNCTION_24_3(v11, *(v5 + 40) + v2, v3, 4);
      }

      AppleBCMWLANBusInterfacePCIe::getDevice(v11);
      OUTLINED_FUNCTION_5_11();
      IOPCIDevice::MemoryWrite32(v12, v13, v14, v10);
      result = OUTLINED_FUNCTION_14_5();
      if (result)
      {
        OUTLINED_FUNCTION_17_3();

        return AppleBCMWLANPCIeMMIOHistory::recordMMIOMemory(v15, v16, v17, v18, v19, v20);
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANChipMemory::read32(uint64_t result, unsigned int a2)
{
  if (a2 <= 6)
  {
    result = OUTLINED_FUNCTION_2_13(result, a2);
    v7 = v4;
    v9 = !v9 & v8 && (v4 & 3) == 0;
    if (v9 && v4 + 4 <= v6)
    {
      v11 = OUTLINED_FUNCTION_20_1(v5);
      if (v11)
      {
        v11 = OUTLINED_FUNCTION_25_2(v11, v3 + v7, 0, 4);
      }

      AppleBCMWLANBusInterfacePCIe::getDevice(v11);
      OUTLINED_FUNCTION_5_11();
      IOPCIDevice::MemoryRead32(v12, v13, v14, v2);
      result = OUTLINED_FUNCTION_14_5();
      if (result)
      {
        v15 = *v2;
        OUTLINED_FUNCTION_19_3();

        return AppleBCMWLANPCIeMMIOHistory::recordMMIOMemory(v16, v17, v18, v19, v20, v21);
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANChipMemory::write16(uint64_t result, unsigned int a2)
{
  if (a2 <= 6)
  {
    result = OUTLINED_FUNCTION_6_7(result, a2);
    v6 = *(v5 + 32);
    if (v6 > v2)
    {
      v7 = v2;
      if ((v2 & 1) == 0 && v2 + 2 <= v6)
      {
        v8 = v3;
        v9 = *(v4 + 248);
        if (v9)
        {
          v9 = OUTLINED_FUNCTION_24_3(v9, *(v5 + 40) + v2, v3, 2);
        }

        AppleBCMWLANBusInterfacePCIe::getDevice(v9);
        OUTLINED_FUNCTION_8_10();
        IOPCIDevice::MemoryWrite16(v11, v12, v10 + v7, v8);
        result = OUTLINED_FUNCTION_14_5();
        if (result)
        {
          OUTLINED_FUNCTION_17_3();

          return AppleBCMWLANPCIeMMIOHistory::recordMMIOMemory(v13, v14, v15, v16, v17, v18);
        }
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANChipMemory::read16(uint64_t result, unsigned int a2)
{
  if (a2 <= 6)
  {
    result = OUTLINED_FUNCTION_6_7(result, a2);
    v6 = *(v5 + 32);
    if (v6 > v2)
    {
      v7 = v2;
      if ((v2 & 1) == 0 && v2 + 2 <= v6)
      {
        v8 = v3;
        v9 = *(v4 + 248);
        if (v9)
        {
          v9 = OUTLINED_FUNCTION_25_2(v9, *(v5 + 40) + v2, 0, 2);
        }

        AppleBCMWLANBusInterfacePCIe::getDevice(v9);
        OUTLINED_FUNCTION_8_10();
        IOPCIDevice::MemoryRead16(v11, v12, v10 + v7, v8);
        result = OUTLINED_FUNCTION_14_5();
        if (result)
        {
          v13 = *v8;
          OUTLINED_FUNCTION_19_3();

          return AppleBCMWLANPCIeMMIOHistory::recordMMIOMemory(v14, v15, v16, v17, v18, v19);
        }
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANChipMemory::write8(uint64_t result, unsigned int a2)
{
  if (a2 <= 6)
  {
    result = OUTLINED_FUNCTION_6_7(result, a2);
    if (*(v7 + 32) > v4)
    {
      v8 = v5;
      v9 = OUTLINED_FUNCTION_27_3(v4, v6);
      if (v9)
      {
        v9 = OUTLINED_FUNCTION_24_3(v9, v2, v8, 1);
      }

      AppleBCMWLANBusInterfacePCIe::getDevice(v9);
      OUTLINED_FUNCTION_8_10();
      IOPCIDevice::MemoryWrite8(v11, v12, v10 + v3, v8);
      result = OUTLINED_FUNCTION_14_5();
      if (result)
      {
        OUTLINED_FUNCTION_17_3();

        return AppleBCMWLANPCIeMMIOHistory::recordMMIOMemory(v13, v14, v15, v16, v17, v18);
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANChipMemory::read8(uint64_t result, unsigned int a2)
{
  if (a2 <= 6)
  {
    result = OUTLINED_FUNCTION_6_7(result, a2);
    if (*(v7 + 32) > v4)
    {
      v8 = v5;
      v9 = OUTLINED_FUNCTION_27_3(v4, v6);
      if (v9)
      {
        v9 = OUTLINED_FUNCTION_25_2(v9, v2, 0, 1);
      }

      AppleBCMWLANBusInterfacePCIe::getDevice(v9);
      OUTLINED_FUNCTION_8_10();
      IOPCIDevice::MemoryRead8(v11, v12, v10 + v3, v8);
      result = OUTLINED_FUNCTION_14_5();
      if (result)
      {
        v13 = *v8;
        OUTLINED_FUNCTION_19_3();

        return AppleBCMWLANPCIeMMIOHistory::recordMMIOMemory(v14, v15, v16, v17, v18, v19);
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANChipMemory::readChipRAMDK(AppleBCMWLANChipMemory *this, unsigned int a2, int a3, IO80211Buffer *a4, unsigned int a5)
{
  result = 0;
  if (a4)
  {
    v9 = *(*(this + 6) + 160);
    if (v9 > a2 && a3 + a2 <= v9)
    {
      if (IO80211Buffer::getLength(a4) <= a5 || IO80211Buffer::getLength(a4) < (a5 + a3))
      {
        return 0;
      }

      else
      {
        result = IO80211Buffer::getBytesNoCopy(a4);
        if (result)
        {
          AppleBCMWLANChipMemory::readBuf(this, 4u, a2, a3, result);
          return 1;
        }
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANChipMemory::readFlags(AppleBCMWLANChipMemory *this)
{
  v1 = OUTLINED_FUNCTION_1_15(this);
  v3 = *v2;
  v4 = OUTLINED_FUNCTION_22_2(v1);
  return OUTLINED_FUNCTION_16_4(v4, v5, v6, v7, v8, v9, v10, v11, v13, HIDWORD(v13));
}

uint64_t AppleBCMWLANChipMemory::readTrapAddr(AppleBCMWLANChipMemory *this)
{
  v1 = OUTLINED_FUNCTION_1_15(this);
  v3 = *v2;
  v4 = OUTLINED_FUNCTION_22_2(v1);
  return OUTLINED_FUNCTION_16_4(v4, v5, v6, v7, v8, v9, v10, v11, v13, HIDWORD(v13));
}

uint64_t AppleBCMWLANChipMemory::readRingInfoAddr(AppleBCMWLANChipMemory *this)
{
  v1 = OUTLINED_FUNCTION_1_15(this);
  v3 = *v2;
  v4 = OUTLINED_FUNCTION_22_2(v1);
  return OUTLINED_FUNCTION_16_4(v4, v5, v6, v7, v8, v9, v10, v11, v13, HIDWORD(v13));
}

uint64_t AppleBCMWLANChipMemory::readScratchMemorySize(AppleBCMWLANChipMemory *this)
{
  v1 = OUTLINED_FUNCTION_1_15(this);
  v3 = *v2;
  v4 = OUTLINED_FUNCTION_22_2(v1);
  return OUTLINED_FUNCTION_16_4(v4, v5, v6, v7, v8, v9, v10, v11, v13, HIDWORD(v13));
}

uint64_t AppleBCMWLANChipMemory::readScratchMemoryAddr(AppleBCMWLANChipMemory *this)
{
  v2 = **(this + 6);
  OUTLINED_FUNCTION_23_4(this);
  v3 = **(this + 6);
  v4 = OUTLINED_FUNCTION_10_8();
  AppleBCMWLANChipMemory::read32(v4, v5);
  OUTLINED_FUNCTION_4_12();
  return v6 | (v7 << 32);
}

uint64_t AppleBCMWLANChipMemory::writeScratchMemoryAddr(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_3_10(a1);
  v4 = *v3;
  AppleBCMWLANChipMemory::write32(v2, 4u);
  v5 = **(v1 + 48);
  v6 = OUTLINED_FUNCTION_10_8();

  return AppleBCMWLANChipMemory::write32(v6, v7);
}

uint64_t AppleBCMWLANChipMemory::readFlags2(AppleBCMWLANChipMemory *this)
{
  v1 = OUTLINED_FUNCTION_1_15(this);
  v3 = *v2;
  v4 = OUTLINED_FUNCTION_22_2(v1);
  return OUTLINED_FUNCTION_16_4(v4, v5, v6, v7, v8, v9, v10, v11, v13, HIDWORD(v13));
}

uint64_t AppleBCMWLANChipMemory::readFlags3(AppleBCMWLANChipMemory *this)
{
  v1 = OUTLINED_FUNCTION_1_15(this);
  v3 = *v2;
  v4 = OUTLINED_FUNCTION_22_2(v1);
  return OUTLINED_FUNCTION_16_4(v4, v5, v6, v7, v8, v9, v10, v11, v13, HIDWORD(v13));
}

uint64_t AppleBCMWLANChipMemory::writeD2hHealthCheck(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_3_10(a1);
  v4 = *v3;
  AppleBCMWLANChipMemory::write32(v2, 4u);
  v5 = **(v1 + 48);
  v6 = OUTLINED_FUNCTION_10_8();

  return AppleBCMWLANChipMemory::write32(v6, v7);
}

uint64_t AppleBCMWLANChipMemory::readCommonRingMemoryAddr(AppleBCMWLANChipMemory *this)
{
  v1 = OUTLINED_FUNCTION_1_15(this);
  v3 = *(v2 + 4);
  v4 = OUTLINED_FUNCTION_22_2(v1);
  return OUTLINED_FUNCTION_16_4(v4, v5, v6, v7, v8, v9, v10, v11, v13, HIDWORD(v13));
}

uint64_t AppleBCMWLANChipMemory::readSubmissionWriteIndexArrayHostAddr(AppleBCMWLANChipMemory *this)
{
  v1 = OUTLINED_FUNCTION_7_10(this);
  OUTLINED_FUNCTION_23_4(v1);
  OUTLINED_FUNCTION_13_5();
  v2 = OUTLINED_FUNCTION_10_8();
  AppleBCMWLANChipMemory::read32(v2, v3);
  OUTLINED_FUNCTION_4_12();
  return v4 | (v5 << 32);
}

uint64_t AppleBCMWLANChipMemory::writeSubmissionWriteIndexArrayHostAddr(uint64_t a1)
{
  OUTLINED_FUNCTION_3_10(a1);
  OUTLINED_FUNCTION_30_2(v1);
  AppleBCMWLANChipMemory::write32(v2, 4u);
  OUTLINED_FUNCTION_11_7();
  v3 = OUTLINED_FUNCTION_10_8();

  return AppleBCMWLANChipMemory::write32(v3, v4);
}

uint64_t AppleBCMWLANChipMemory::readCompletionReadIndexArrayHostAddr(AppleBCMWLANChipMemory *this)
{
  v1 = OUTLINED_FUNCTION_7_10(this);
  OUTLINED_FUNCTION_23_4(v1);
  OUTLINED_FUNCTION_13_5();
  v2 = OUTLINED_FUNCTION_10_8();
  AppleBCMWLANChipMemory::read32(v2, v3);
  OUTLINED_FUNCTION_4_12();
  return v4 | (v5 << 32);
}

uint64_t AppleBCMWLANChipMemory::writeCompletionReadIndexArrayHostAddr(uint64_t a1)
{
  OUTLINED_FUNCTION_3_10(a1);
  OUTLINED_FUNCTION_30_2(v1);
  AppleBCMWLANChipMemory::write32(v2, 4u);
  OUTLINED_FUNCTION_11_7();
  v3 = OUTLINED_FUNCTION_10_8();

  return AppleBCMWLANChipMemory::write32(v3, v4);
}

uint64_t AppleBCMWLANChipMemory::readSubmissionReadIndexArrayHostAddr(AppleBCMWLANChipMemory *this)
{
  v1 = OUTLINED_FUNCTION_7_10(this);
  OUTLINED_FUNCTION_23_4(v1);
  OUTLINED_FUNCTION_13_5();
  v2 = OUTLINED_FUNCTION_10_8();
  AppleBCMWLANChipMemory::read32(v2, v3);
  OUTLINED_FUNCTION_4_12();
  return v4 | (v5 << 32);
}

uint64_t AppleBCMWLANChipMemory::writeSubmissionReadIndexArrayHostAddr(uint64_t a1)
{
  OUTLINED_FUNCTION_3_10(a1);
  OUTLINED_FUNCTION_30_2(v1);
  AppleBCMWLANChipMemory::write32(v2, 4u);
  OUTLINED_FUNCTION_11_7();
  v3 = OUTLINED_FUNCTION_10_8();

  return AppleBCMWLANChipMemory::write32(v3, v4);
}

uint64_t AppleBCMWLANChipMemory::readCompletionWriteIndexArrayHostAddr(AppleBCMWLANChipMemory *this)
{
  v1 = OUTLINED_FUNCTION_7_10(this);
  OUTLINED_FUNCTION_23_4(v1);
  OUTLINED_FUNCTION_13_5();
  v2 = OUTLINED_FUNCTION_10_8();
  AppleBCMWLANChipMemory::read32(v2, v3);
  OUTLINED_FUNCTION_4_12();
  return v4 | (v5 << 32);
}

uint64_t AppleBCMWLANChipMemory::writeCompletionWriteIndexArrayHostAddr(uint64_t a1)
{
  OUTLINED_FUNCTION_3_10(a1);
  OUTLINED_FUNCTION_30_2(v1);
  AppleBCMWLANChipMemory::write32(v2, 4u);
  OUTLINED_FUNCTION_11_7();
  v3 = OUTLINED_FUNCTION_10_8();

  return AppleBCMWLANChipMemory::write32(v3, v4);
}

uint64_t AppleBCMWLANChipMemory::readMaxTxFlowRings(AppleBCMWLANChipMemory *this)
{
  v1 = OUTLINED_FUNCTION_26_3(this);
  AppleBCMWLANChipMemory::read16(v1, 4u);
  return v3;
}

uint64_t AppleBCMWLANChipMemory::readMaxDynamicSubmissionRings(AppleBCMWLANChipMemory *this)
{
  v1 = OUTLINED_FUNCTION_26_3(this);
  AppleBCMWLANChipMemory::read16(v1, 4u);
  return v3;
}

uint64_t AppleBCMWLANPCIeSkywalkPacketPool::initWithName(IOUserNetworkPacketBufferPool *a1, const char *a2, OSObject *a3, unsigned int *a4, OSMetaClass_vtbl *a5, uint64_t a6)
{
  v12 = IOMallocZeroTyped();
  a1[1].meta = v12;
  if (v12)
  {
    v12->__vftable = a5;
    *&a1[1].meta->OSObject::OSObjectInterface::refcount = a6;
    a1[1].meta->OSObject::meta = *a4;
    a1[1].meta->metaClassPrivate = a4[2];
    a1[1].meta[1].meta = a3;
    result = AppleBCMWLANSkywalkPacketPool::initWithName(a1, a2, a3, a4);
    if (!result)
    {
      return result;
    }

    Pow2 = AppleBCMWLANHashtable::alignNextPow2(*a4);
    a1[1].meta[1].__vftable = AppleBCMWLANHashtable::withCapacity(Pow2);
    if (a1[1].meta[1].__vftable)
    {
      v15 = AppleBCMWLANHashtable::alignNextPow2(*a4);
      *&a1[1].meta[1].refcount = AppleBCMWLANHashtable::withCapacity(v15);
      if (*&a1[1].meta[1].refcount)
      {
        return 1;
      }
    }
  }

  else
  {
    IOLog("packet pool ivar alloc fail\n");
  }

  return 0;
}

uint64_t AppleBCMWLANPCIeSkywalkPacketPool::deallocatePacket(uint64_t a1)
{
  result = **(a1 + 72);
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      return CCLogStream::logAlert(**(a1 + 72), "[dk] %s@%d:%s %d Trying to deallocate invalid packet\n", "deallocatePacket", 233, "void AppleBCMWLANPCIeSkywalkPacketPool::deallocatePacket(IO80211NetworkPacket *)", 233);
    }
  }

  return result;
}

uint64_t AppleBCMWLANPCIeSkywalkPacketPool::duplicatePacket(uint64_t a1)
{
  result = OUTLINED_FUNCTION_0_16(a1);
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      result = CCLogStream::logAlert(**(v2 + 72), "[dk] %s@%d:invalid duplicated buffer\n", "duplicatePacket", 258);
    }
  }

  *v1 = v3;
  return result;
}

{
  result = OUTLINED_FUNCTION_0_16(a1);
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      result = CCLogStream::logAlert(**(v2 + 72), "[dk] %s@%d:invalid duplicated packet\n", "duplicatePacket", 253);
    }
  }

  *v1 = v3;
  return result;
}

uint64_t AppleBCMWLANIO80211APSTAInterface::handleActionFrame(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v2 = (a2 + 48);
  }

  else
  {
    v2 = 0;
  }

  if (!a2)
  {
    return result;
  }

  v4 = result;
  v5 = OUTLINED_FUNCTION_5_0(result);
  if (!(*(v6 + 1088))(v5) || (OUTLINED_FUNCTION_24_1(), (*(v7 + 1088))(v4), (CCLogStream::shouldLogConsole() & 1) == 0))
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a2 + 24);
      v9 = *(a2 + 25);
      v10 = *(a2 + 26);
      v11 = *(a2 + 27);
      v12 = *(a2 + 28);
      v13 = *(a2 + 29);
      *buf = 67111170;
      v94 = 78;
      v95 = 2080;
      v96 = "handleActionFrame";
      v97 = 1024;
      v98 = 4274;
      v99 = 1024;
      *v100 = v8;
      *&v100[4] = 1024;
      *&v100[6] = v9;
      *v101 = 1024;
      *&v101[2] = v10;
      *v102 = 1024;
      *&v102[2] = v11;
      *v103 = 1024;
      *&v103[2] = v12;
      *v104 = 1024;
      *&v104[2] = v13;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%c [dk] %s@%d: LPHS: Action frame received from addr = %02X:%02X:%02X:%02X:%02X:%02X\n", buf, 0x3Cu);
    }
  }

  OUTLINED_FUNCTION_24_1();
  if ((*(v14 + 1088))(v4))
  {
    OUTLINED_FUNCTION_24_1();
    (*(v15 + 1088))(v4);
    if (CCLogStream::shouldLog())
    {
      OUTLINED_FUNCTION_24_1();
      (*(v55 + 1088))(v4);
      v56 = *(a2 + 24);
      v57 = *(a2 + 25);
      v58 = *(a2 + 26);
      v59 = *(a2 + 27);
      v60 = *(a2 + 28);
      v61 = *(a2 + 29);
      OUTLINED_FUNCTION_24_4();
      CCLogStream::logNotice(v62, "[dk] %s@%d:LPHS: Action frame received from addr = %02X:%02X:%02X:%02X:%02X:%02X\n", "handleActionFrame", 4274, v85, v88, v89, v90, v91, v92);
    }
  }

  v16 = *(a2 + 20);
  if (v16)
  {
    if (v16 <= 0x11)
    {
      OUTLINED_FUNCTION_24_1();
      result = (*(v51 + 1088))(v4);
      if (result)
      {
        OUTLINED_FUNCTION_24_1();
        (*(v52 + 1088))(v4);
        result = CCLogStream::shouldLog();
        if (result)
        {
          OUTLINED_FUNCTION_24_1();
          v54 = (*(v53 + 1088))(v4);
          return CCLogStream::logCrit(v54, "[dk] %s@%d:Event message buffer underflow, datalen[%u], expected >= %u\n", "handleActionFrame", 4278, *(a2 + 20), 18);
        }
      }
    }

    else
    {
      v17 = 0;
      v18 = *(v4 + 17) + 185;
      while (memcmp((v18 + v17), (a2 + 24), 6uLL))
      {
        v17 += 48;
        if (v17 == 240)
        {
          OUTLINED_FUNCTION_24_1();
          result = (*(v19 + 1088))(v4);
          if (result)
          {
            OUTLINED_FUNCTION_24_1();
            (*(v20 + 1088))(v4);
            result = CCLogStream::shouldLog();
            if (result)
            {
              OUTLINED_FUNCTION_24_1();
              v22 = (*(v21 + 1088))(v4);
              return CCLogStream::logAlert(v22, "[dk] %s@%d:ERROR: No Free slots available in STA Table, this should never happen\n");
            }
          }

          return result;
        }
      }

      v23 = *v2;
      if (__rev16(v23) >= 3)
      {
        OUTLINED_FUNCTION_24_1();
        result = (*(v63 + 1088))(v4);
        if (result)
        {
          OUTLINED_FUNCTION_24_1();
          (*(v64 + 1088))(v4);
          result = CCLogStream::shouldLog();
          if (result)
          {
            OUTLINED_FUNCTION_24_1();
            v66 = (*(v65 + 1088))(v4);
            v86 = *v2;
            return CCLogStream::logAlert(v66, "[dk] %s@%d:unexpected AF event version[%u]\n");
          }
        }
      }

      else
      {
        if (v23 == 256)
        {
          v24 = 17;
          v25 = 8;
          goto LABEL_26;
        }

        if (v23 != 512)
        {
          v27 = 170;
          v26 = 170;
LABEL_28:
          OUTLINED_FUNCTION_24_1();
          if (!(*(v28 + 1088))(v4) || (OUTLINED_FUNCTION_24_1(), (*(v29 + 1088))(v4), (CCLogStream::shouldLogConsole() & 1) == 0))
          {
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
            {
              OUTLINED_FUNCTION_27_4();
              v97 = 1024;
              v98 = 4297;
              v99 = 1024;
              *v100 = v26;
              *&v100[4] = 1024;
              *&v100[6] = v27;
              _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%c [dk] %s@%d: LPHS: Action frame Contents %0x %0x\n", buf, 0x24u);
            }
          }

          OUTLINED_FUNCTION_24_1();
          if ((*(v30 + 1088))(v4))
          {
            OUTLINED_FUNCTION_24_1();
            (*(v31 + 1088))(v4);
            if (CCLogStream::shouldLog())
            {
              OUTLINED_FUNCTION_24_1();
              v68 = (*(v67 + 1088))(v4);
              CCLogStream::logNotice(v68, "[dk] %s@%d:LPHS: Action frame Contents %0x %0x\n", "handleActionFrame", 4297, v26, v27);
            }
          }

          if (v26 != 127)
          {
            goto LABEL_40;
          }

          if (v27 != 1)
          {
            if (v27 != 2)
            {
LABEL_40:
              if (AppleBCMWLANIO80211APSTAInterface::isSoftAPConcurrencyEnabled(v4))
              {
                OUTLINED_FUNCTION_24_1();
                if (!(*(v32 + 1088))(v4) || (OUTLINED_FUNCTION_24_1(), (*(v33 + 1088))(v4), (CCLogStream::shouldLogConsole() & 1) == 0))
                {
                  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
                  {
                    v34 = OUTLINED_FUNCTION_23_5();
                    isConcurrencyOpModeSet = AppleBCMWLANCore::isConcurrencyOpModeSet(v34, 1);
                    v36 = OUTLINED_FUNCTION_23_5();
                    v37 = AppleBCMWLANCore::isConcurrencyOpModeSet(v36, 2);
                    v38 = OUTLINED_FUNCTION_23_5();
                    v39 = AppleBCMWLANCore::isConcurrencyOpModeSet(v38, 4);
                    v40 = OUTLINED_FUNCTION_23_5();
                    v41 = AppleBCMWLANCore::isConcurrencyOpModeSet(v40, 8);
                    v42 = OUTLINED_FUNCTION_23_5();
                    AppleBCMWLANCore::isConcurrencyOpModeSet(v42, 16);
                    OUTLINED_FUNCTION_27_4();
                    v97 = 1024;
                    v98 = 4314;
                    v99 = v43;
                    *v100 = "handleActionFrame";
                    *&v100[8] = 1024;
                    *v101 = isConcurrencyOpModeSet;
                    *&v101[4] = 1024;
                    *v102 = v37;
                    *&v102[4] = 1024;
                    *v103 = v39;
                    *&v103[4] = 1024;
                    *v104 = v41;
                    *&v104[4] = 1024;
                    v105 = v44;
                    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%c [dk] %s@%d: %s: SoftAPConcurrencyEnabled: infra=%d awdl=%d softAp=%d nan=%d ir=%d\n", buf, 0x40u);
                  }
                }

                OUTLINED_FUNCTION_24_1();
                if ((*(v45 + 1088))(v4))
                {
                  OUTLINED_FUNCTION_24_1();
                  (*(v46 + 1088))(v4);
                  if (CCLogStream::shouldLog())
                  {
                    OUTLINED_FUNCTION_24_1();
                    v74 = (*(v73 + 1088))(v4);
                    v75 = OUTLINED_FUNCTION_23_5();
                    v76 = AppleBCMWLANCore::isConcurrencyOpModeSet(v75, 1);
                    v77 = OUTLINED_FUNCTION_23_5();
                    v78 = AppleBCMWLANCore::isConcurrencyOpModeSet(v77, 2);
                    v79 = OUTLINED_FUNCTION_23_5();
                    v80 = AppleBCMWLANCore::isConcurrencyOpModeSet(v79, 4);
                    v81 = OUTLINED_FUNCTION_23_5();
                    v82 = AppleBCMWLANCore::isConcurrencyOpModeSet(v81, 8);
                    v83 = OUTLINED_FUNCTION_23_5();
                    v84 = AppleBCMWLANCore::isConcurrencyOpModeSet(v83, 16);
                    CCLogStream::logNotice(v74, "[dk] %s@%d:%s: SoftAPConcurrencyEnabled: infra=%d awdl=%d softAp=%d nan=%d ir=%d\n", "handleActionFrame", 4314, "handleActionFrame", v76, v78, v80, v82, v84);
                  }
                }
              }

              result = AppleBCMWLANIO80211APSTAInterface::checkIfAllStaAreInLPM(v4);
              if (result)
              {
                result = AppleBCMWLANIO80211APSTAInterface::isSoftAPConcurrencyEnabled(v4);
                if ((result & 1) == 0)
                {
                  return AppleBCMWLANIO80211APSTAInterface::setPowerSaveState(v4, 3u, 0xBu);
                }
              }

              return result;
            }

            v27 = 2;
          }

          *(*(v4 + 17) + v17 + 200) = v27;
          goto LABEL_40;
        }

        if (v16 > 0x19)
        {
          v24 = 25;
          v25 = 12;
LABEL_26:
          v26 = LOBYTE(v2[v25]);
          v27 = *(v2 + v24);
          goto LABEL_28;
        }

        OUTLINED_FUNCTION_24_1();
        result = (*(v69 + 1088))(v4);
        if (result)
        {
          OUTLINED_FUNCTION_24_1();
          (*(v70 + 1088))(v4);
          result = CCLogStream::shouldLog();
          if (result)
          {
            OUTLINED_FUNCTION_24_1();
            v72 = (*(v71 + 1088))(v4);
            v87 = *(a2 + 20);
            return CCLogStream::logAlert(v72, "[dk] %s@%d:Event message buffer underflow, datalen[%u], expected >= %u\n");
          }
        }
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_24_1();
    result = (*(v47 + 1088))(v4);
    if (result)
    {
      OUTLINED_FUNCTION_24_1();
      (*(v48 + 1088))(v4);
      result = CCLogStream::shouldLog();
      if (result)
      {
        OUTLINED_FUNCTION_24_1();
        v50 = (*(v49 + 1088))(v4);
        return CCLogStream::logAlert(v50, "[dk] %s@%d:ERROR: Received event with no event data!\n");
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANIO80211APSTAInterface::init(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Unable to get Enterprise Manager\n", "init", 317);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Unable to get Config Manager\n", "init", 308);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Unable to get Tx Power Manager\n", "init", 300);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Unable to get Power Manager\n", "init", 281);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Unable to get BGScan Adapter\n", "init", 273);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: Unable to instantiate AP monitor timer\n", "init", 256);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: Unable to instantiate AP stats timer\n", "init", 247);
}

uint64_t AppleBCMWLANIO80211APSTAInterface::handleAPStatsUpdates(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ALERT: SoftAP has been inactive > %d msecs, posting message to wifiManager to kill softap\n", "handleAPStatsUpdates", 3166, 1500000);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  v4 = (*(v3 + 1088))(v2);
  return CCLogStream::logNoticeIf(v4, 0x80000uLL, "[dk] %s@%d: current associated STA count %ld\n", "handleAPStatsUpdates", 3176, **v1);
}

{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1088))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 920);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v1, "[dk] %s@%d: ERROR: Unable to query list of associated STAs %s\n", v9, v10, v11);
}

uint64_t AppleBCMWLANIO80211APSTAInterface::start(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Failed to register interface with bus interface", "start", 392);
}

uint64_t AppleBCMWLANIO80211APSTAInterface::registerInterface(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:APSTAInterface: media type report fail, ret[0x%08x]\n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:APSTAInterface: registration fail, ret[0x%08x]\n", v5, v6, v7);
}

uint64_t AppleBCMWLANIO80211APSTAInterface::setInterfaceEnable(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:APSTA: disable data path\n", "setInterfaceEnable", 536);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:APSTA: enable data path\n", "setInterfaceEnable", 524);
}

uint64_t AppleBCMWLANIO80211APSTAInterface::setPromiscuousModeEnable(uint64_t *a1, uint64_t a2, char a3)
{
  v4 = OUTLINED_FUNCTION_5_5(a1);
  v6 = (*(v5 + 1088))(v4);
  v7 = "Disable";
  if (a3)
  {
    v7 = "Enable";
  }

  return CCLogStream::logAlert(v6, "[dk] %s@%d:AppleBCMWLANIO80211APSTAInterface::(%s) ret=0x%08x\n", "setPromiscuousModeEnable", 558, v7, 0);
}

uint64_t AppleBCMWLANIO80211APSTAInterface::stop(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:APSTA Skywalk Interface Stop\n", "stop", 598);
}

uint64_t AppleBCMWLANIO80211APSTAInterface::reset(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logNotice(v3, "[dk] %s@%d:\n", "reset", 674);
}

uint64_t AppleBCMWLANIO80211APSTAInterface::setPowerSaveState(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_8_7(a1);
  v3 = (*(v2 + 1088))(v1);
  v4 = OUTLINED_FUNCTION_19_4();
  isConcurrencyOpModeSet = AppleBCMWLANCore::isConcurrencyOpModeSet(v4, 1);
  v6 = OUTLINED_FUNCTION_19_4();
  v7 = AppleBCMWLANCore::isConcurrencyOpModeSet(v6, 2);
  v8 = OUTLINED_FUNCTION_19_4();
  v9 = AppleBCMWLANCore::isConcurrencyOpModeSet(v8, 4);
  v10 = OUTLINED_FUNCTION_19_4();
  v11 = AppleBCMWLANCore::isConcurrencyOpModeSet(v10, 8);
  v12 = OUTLINED_FUNCTION_19_4();
  v13 = AppleBCMWLANCore::isConcurrencyOpModeSet(v12, 16);
  return CCLogStream::logNotice(v3, "[dk] %s@%d:%s: SoftAPConcurrencyEnabled: infra=%d awdl=%d softAp=%d nan=%d ir=%d\n", "setPowerSaveState", 4848, "setPowerSaveState", isConcurrencyOpModeSet, v7, v9, v11, v13);
}

{
  v3 = OUTLINED_FUNCTION_5_6(a1);
  v5 = (*(v4 + 1088))(v3);
  v6 = *(*v2 + 16);
  if (v6 > 3)
  {
    v7 = "Unknown";
  }

  else
  {
    v7 = off_1003CC710[v6];
  }

  if (v1 > 3)
  {
    v8 = "Unknown";
  }

  else
  {
    v8 = off_1003CC710[v1];
  }

  return CCLogStream::logInfo(v5, "[dk] %s@%d:LPHS power state %s change request to %s by Infra SCAN, ignored\n", "setPowerSaveState", 4804, v7, v8);
}

uint64_t AppleBCMWLANIO80211APSTAInterface::setBeaconInterval(uint64_t *a1)
{
  v3 = OUTLINED_FUNCTION_5_6(a1);
  (*(v4 + 1088))(v3);
  v5 = OUTLINED_FUNCTION_2_14();
  (*(v6 + 112))(v5, v1);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v2, "[dk] %s@%d:ERROR: Setting SoftAP beacon interval fails, error %s\n", v8, v9, v10);
}

uint64_t AppleBCMWLANIO80211APSTAInterface::setBeaconDTIMPeriod(uint64_t *a1)
{
  v3 = OUTLINED_FUNCTION_5_6(a1);
  (*(v4 + 1088))(v3);
  v5 = OUTLINED_FUNCTION_2_14();
  (*(v6 + 112))(v5, v1);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v2, "[dk] %s@%d:ERROR: Setting SoftAP beacon DTIM period fails, error %s\n", v8, v9, v10);
}

uint64_t AppleBCMWLANIO80211APSTAInterface::getCHANNEL(uint64_t *a1)
{
  v3 = OUTLINED_FUNCTION_5_6(a1);
  (*(v4 + 1088))(v3);
  v5 = OUTLINED_FUNCTION_2_14();
  (*(v6 + 112))(v5, v1);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v2, "[dk] %s@%d: WLC_GET_CHANNEL failed, error %s  \n", v8, v9, v10);
}

uint64_t AppleBCMWLANIO80211APSTAInterface::getSTATION_LIST(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1088))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 920);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v1, "[dk] %s@%d: unable to query list of associated STAs %s\n", v9, v10, v11);
}

{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1088))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 920);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v1, "[dk] %s@%d: unable to query list of associated STAs %s\n", v9, v10, v11);
}

uint64_t AppleBCMWLANIO80211APSTAInterface::getAssocListAsyncCallback(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = OUTLINED_FUNCTION_5_5(a1);
  v7 = (*(v6 + 1088))(v5);
  v8 = OUTLINED_FUNCTION_5_0(*(a1[17] + 536));
  (*(v9 + 112))(v8, a3);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v7, "[dk] %s@%d:  failed, error %s\n", v11, v12, v13);
}

uint64_t AppleBCMWLANIO80211APSTAInterface::convertBCMAssocListToAppleAssocList(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_15_4();
  return CCLogStream::logCrit(v3, "[dk] %s@%d: Exceeded maximal number of STA (%ld)\n", "convertBCMAssocListToAppleAssocList", 869, v5);
}

uint64_t AppleBCMWLANIO80211APSTAInterface::getHOST_AP_MODE_HIDDEN(uint64_t *a1, uint64_t a2, int a3)
{
  v5 = OUTLINED_FUNCTION_0_8(a1);
  (*(v6 + 1088))(v5);
  OUTLINED_FUNCTION_3_5();
  v8 = *(v7 + 920);
  v9 = OUTLINED_FUNCTION_16_2();
  v11 = v10(v9);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: Error: cannot get closednet : retval %x: %s\n", "getHOST_AP_MODE_HIDDEN", 918, a3, v11);
}

uint64_t AppleBCMWLANIO80211APSTAInterface::getHOST_AP_MODE_HIDDEN(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0_8(a1);
  (*(v3 + 1088))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 920);
  v6 = OUTLINED_FUNCTION_29_4();
  v12 = v7(v6);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:get closednet : hidden %d, retval %x: %s\n", v9, v10, v11, 0, v12);
}

uint64_t AppleBCMWLANIO80211APSTAInterface::setHOST_AP_MODE(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logNotice(v3, "[dk] %s@%d:softAP ended; bringing up AWDL again\n", "setHOST_AP_MODE", 974);
}

{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1088))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 920);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Unable to bring UP AWDL: %s\n", v9, v10, v11);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logNotice(v3, "[dk] %s@%d:softAP ended; bringing up NAN again\n", "setHOST_AP_MODE", 985);
}

{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1088))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 920);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Unable to bring UP NAN: %s\n", v9, v10, v11);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logNotice(v3, "[dk] %s@%d:softAP ended; bringing up NDI again\n", "setHOST_AP_MODE", 993);
}

{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1088))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 920);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Unable to bring UP NDI: %s\n", v9, v10, v11);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logNotice(v3, "[dk] %s@%d:Tearing down AWDL before bringing up softAP\n", "setHOST_AP_MODE", 946);
}

{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1088))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 920);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Unable to quiesce AWDL: %s\n", v9, v10, v11);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logNotice(v3, "[dk] %s@%d:Tearing down NAN before bringing up softAP\n", "setHOST_AP_MODE", 955);
}

{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1088))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 920);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Unable to quiesce NAN: %s\n", v9, v10, v11);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logNotice(v3, "[dk] %s@%d:Tearing down NAN Data Interface before bringing up softAP\n", "setHOST_AP_MODE", 962);
}

{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1088))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 920);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Unable to quiesce NDI: %s\n", v9, v10, v11);
}

uint64_t AppleBCMWLANIO80211APSTAInterface::setHostApModeInternal(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_9_4();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:%s: enter\n", v5, v6, v7);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  v4 = (*(v3 + 1088))(v2);
  v5 = *(*v1 + 16);
  if (v5 > 3)
  {
    v6 = "Unknown";
  }

  else
  {
    v6 = off_1003CC710[v5];
  }

  return CCLogStream::logAlert(v4, "[dk] %s@%d:SoftAP already up, power state %s, bailout\n", "setHostApModeInternal", 1334, v6);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:SoftAP already up; restarting\n", "setHostApModeInternal", 1305);
}

{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1088))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 920);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v1, "[dk] %s@%d:ERROR: Can't bring down bss, error %s\n", v9, v10, v11);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Removing SoftAP interface from FW\n", "setHostApModeInternal", 1316);
}

{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1088))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 920);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: Cannot remove interface for SoftAP, error %s\n", v9, v10, v11);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logNotice(v3, "[dk] %s@%d:Softap interface is down!\n", "setHostApModeInternal", 1325);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  v4 = (*(v3 + 1088))(v2);
  return CCLogStream::logNotice(v4, "[dk] %s@%d: SoftAP FW interface create: Requesting bsscfg = %d via bsscfg:ssid (%s)\n", "setHostApModeInternal", 1418, *v1, (v1 + 8));
}

{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1088))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 920);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v1, "[dk] %s@%d: SoftAP FW interface create: cant set bsscf:ssid, error %s\n", v9, v10, v11);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: SoftAP FW interface create: pending to receive interface create complete event with valid index \n", "setHostApModeInternal", 1432);
}

{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1088))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 920);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: ERROR: SoftAP FW interface create: failed to receive interface complete event, error %s\n", v9, v10, v11);
}

{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1088))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 920);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: cur_etheraddr failed, error %s\n", v9, v10, v11);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: ERROR: SoftAP FW interface create: invalid interface index \n", "setHostApModeInternal", 1440);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  v4 = (*(v3 + 1088))(v2);
  FirmwareInterfaceVersion = AppleBCMWLANCore::getFirmwareInterfaceVersion(*(*v1 + 536));
  return CCLogStream::logAlert(v4, "[dk] %s@%d:%s: Creating SofAP chip interface %d, fw ver %d\n", "setHostApModeInternal", 1352, "setHostApModeInternal", 1, FirmwareInterfaceVersion);
}

{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1088))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 920);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v1, "[dk] %s@%d:ERROR: Cannot create interface for SoftAP, error %s\n", v9, v10, v11);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  (*(v3 + 1088))(v2);
  v4 = *v1 + 632;
  OUTLINED_FUNCTION_9_4();
  return CCLogStream::logNotice(v5, "[dk] %s@%d:Setting ssid (%s) for SoftAP\n", v7, v8, v9);
}

{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1088))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 920);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v1, "[dk] %s@%d:Error: cant set ssid, error %s\n", v9, v10, v11);
}

{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1088))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 920);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: bssnmode failed, error %s\n", v9, v10, v11);
}

{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1088))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 920);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: ap_isolate failed, error %s\n", v9, v10, v11);
}

{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1088))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 920);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v1, "[dk] %s@%d: bss_rateset failed, error %s  \n", v9, v10, v11);
}

{
  v3 = OUTLINED_FUNCTION_5_6(a1);
  (*(v4 + 1088))(v3);
  v5 = OUTLINED_FUNCTION_2_14();
  (*(v6 + 112))(v5, v1);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v2, "[dk] %s@%d:  set_pmk failed, error %s\n", v8, v9, v10);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_15_4();
  return CCLogStream::logCrit(v3, "[dk] %s@%d: ERROR, no PMK specified or bad key length (%d)!\n", "setHostApModeInternal", 1670, v5);
}

{
  v3 = OUTLINED_FUNCTION_5_6(a1);
  (*(v4 + 1088))(v3);
  v5 = OUTLINED_FUNCTION_2_14();
  (*(v6 + 112))(v5, v1);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v2, "[dk] %s@%d:  set_pmk failed, error %s\n", v8, v9, v10);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  v4 = (*(v3 + 1088))(v2);
  return CCLogStream::logAlert(v4, "[dk] %s@%d:  ------%s: WLC_SET_WPA_AUTH to 0x%X\n", "setHostApModeInternal", 1581, "setHostApModeInternal", *v1);
}

{
  v3 = OUTLINED_FUNCTION_5_6(a1);
  (*(v4 + 1088))(v3);
  v5 = OUTLINED_FUNCTION_2_14();
  (*(v6 + 112))(v5, v1);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v2, "[dk] %s@%d:  WLC_SET_WPA_AUTH failed, error %s\n", v8, v9, v10);
}

{
  v3 = OUTLINED_FUNCTION_5_6(a1);
  (*(v4 + 1088))(v3);
  v5 = OUTLINED_FUNCTION_2_14();
  (*(v6 + 112))(v5, v1);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v2, "[dk] %s@%d:  set mfp failed, error %s\n", v8, v9, v10);
}

{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1088))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 920);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: cant bring down ap, error %s\n", v9, v10, v11);
}

{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1088))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 920);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: cant bring down ap, error %s\n", v9, v10, v11);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_15_4();
  return CCLogStream::logCrit(v3, "[dk] %s@%d: ERROR, no PMK specified or bad key length (%d)!\n", "setHostApModeInternal", 1549, v5);
}

{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1088))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 920);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v1, "[dk] %s@%d: cant bring up bss, error %s\n", v9, v10, v11);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logNotice(v3, "[dk] %s@%d: interface is up!\n", "setHostApModeInternal", 1703);
}

{
  v2 = OUTLINED_FUNCTION_0_8(a1);
  (*(v3 + 1088))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 920);
  v6 = OUTLINED_FUNCTION_29_4();
  v12 = v7(v6);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:set closednet : hidden %d, retval %x: %s\n", v9, v10, v11, 0, v12);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: Success, posted link up\n", "setHostApModeInternal", 1782);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logCrit(v3, "[dk] %s@%d: : Could not create AP: no network data\n", "setHostApModeInternal", 1058);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_15_4();
  return CCLogStream::logCrit(v3, "[dk] %s@%d: : Could not create AP: vendr ie len too big %u\n", "setHostApModeInternal", 1053, v5);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:User request to stop SoftAP\n", "setHostApModeInternal", 1067);
}

{
  v3 = OUTLINED_FUNCTION_5_6(a1);
  (*(v4 + 1088))(v3);
  v5 = OUTLINED_FUNCTION_2_14();
  (*(v6 + 112))(v5, v1);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v2, "[dk] %s@%d:  WLC_SCB_DEAUTHENTICATE_FOR_REASON failed, error %s\n", v8, v9, v10);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d: Failed SET IOCTL, cret[0x%08x]\n", v5, v6, v7);
}

{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1088))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 920);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v1, "[dk] %s@%d: can't bring down bss, error %s\n", v9, v10, v11);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logNotice(v3, "[dk] %s@%d: interface is down!\n", "setHostApModeInternal", 1204);
}

{
  v3 = OUTLINED_FUNCTION_5_6(a1);
  (*(v4 + 1088))(v3);
  v5 = OUTLINED_FUNCTION_2_14();
  (*(v6 + 112))(v5, v1);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v2, "[dk] %s@%d:  WLC_SET_WPA_AUTH failed, error %s\n", v8, v9, v10);
}

{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1088))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 920);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: cant bring down ap, error %s\n", v9, v10, v11);
}

{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1088))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 920);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: cant bring up ap, error %s\n", v9, v10, v11);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Removing SoftAP interface from FW\n", "setHostApModeInternal", 1262);
}

{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1088))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 920);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: Cannot remove interface for SoftAP, error %s\n", v9, v10, v11);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logWarn(v3, "[dk] %s@%d: : stop ap requested while not up\n", "setHostApModeInternal", 1028);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Cleaning up SoftAP interface from FW\n", "setHostApModeInternal", 1036);
}

uint64_t AppleBCMWLANIO80211APSTAInterface::setHostApModeInternal(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a1;
  v6 = OUTLINED_FUNCTION_5_5(a1);
  v8 = (*(v7 + 1088))(v6);
  LODWORD(v5) = IO80211SkywalkInterface::getInterfaceId(v5);
  v9 = OUTLINED_FUNCTION_4_13();
  v11 = (*(v10 + 112))(v9, a4);
  return CCLogStream::logCrit(v8, "[dk] %s@%d:  Auth Config failed : inf:%d %x %s\n", "setHostApModeInternal", 1655, v5, a4, v11);
}

{
  v5 = a1;
  v6 = OUTLINED_FUNCTION_5_5(a1);
  v8 = (*(v7 + 1088))(v6);
  LODWORD(v5) = IO80211SkywalkInterface::getInterfaceId(v5);
  v9 = OUTLINED_FUNCTION_4_13();
  v11 = (*(v10 + 112))(v9, a4);
  return CCLogStream::logCrit(v8, "[dk] %s@%d:  Auth Config failed : inf:%d %x %s\n", "setHostApModeInternal", 1251, v5, a4, v11);
}

uint64_t AppleBCMWLANIO80211APSTAInterface::setHostApModeInternal(uint64_t *a1, uint64_t a2, int a3)
{
  v5 = OUTLINED_FUNCTION_0_8(a1);
  (*(v6 + 1088))(v5);
  OUTLINED_FUNCTION_3_5();
  v8 = *(v7 + 920);
  v9 = OUTLINED_FUNCTION_16_2();
  v11 = v10(v9);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: cannot set closednet : retval %x: %s\n", "setHostApModeInternal", 1739, a3, v11);
}

uint64_t AppleBCMWLANIO80211APSTAInterface::resetSoftAPLowPowerMode(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logInfo(v3, "[dk] %s@%d:LPHS: Done Resetting SoftAP LowPower Mode Config\n", "resetSoftAPLowPowerMode", 4664);
}

uint64_t AppleBCMWLANIO80211APSTAInterface::configureManagementFrameProtectionForSoftAP(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  v4 = (*(v3 + 1088))(v2);
  if (*v1)
  {
    v5 = "Enabled";
  }

  else
  {
    v5 = "Disabled";
  }

  return CCLogStream::logNoticeIf(v4, 0x80uLL, "[dk] %s@%d:MFP is %s\n", "configureManagementFrameProtectionForSoftAP", 3363, v5);
}

uint64_t AppleBCMWLANIO80211APSTAInterface::setMaxAssoc(uint64_t *a1)
{
  v3 = OUTLINED_FUNCTION_5_6(a1);
  (*(v4 + 1088))(v3);
  v5 = OUTLINED_FUNCTION_2_14();
  (*(v6 + 112))(v5, v1);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v2, "[dk] %s@%d: maxassoc failed, error %s\n", v8, v9, v10);
}

uint64_t AppleBCMWLANIO80211APSTAInterface::programVendorIEList(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1088))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 920);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v1, "[dk] %s@%d:FAILED to configure host AP IE list, setVendorIE() returned error %s\n", v9, v10, v11);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logCrit(v3, "[dk] %s@%d:FAILED to configure host AP IE list, no memory\n", "programVendorIEList", 2098);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logCrit(v3, "[dk] %s@%d:FAILED to configure host AP IE list, invalid IE length\n", "programVendorIEList", 2092);
}

uint64_t AppleBCMWLANIO80211APSTAInterface::programAppleVendorIE(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1088))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 920);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v1, "[dk] %s@%d: vndr_ie  error %s - failed to get all vendor IEs\n", v9, v10, v11);
}

{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1088))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 920);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: vndr_ie error %s - failed to delete existing IE\n", v9, v10, v11);
}

{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1088))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 920);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v1, "[dk] %s@%d: vndr_ie  error %s - failed to add IE\n", v9, v10, v11);
}

{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1088))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 920);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v1, "[dk] %s@%d: vndr_ie  error %s - failed to add IE\n", v9, v10, v11);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  v4 = (*(v3 + 1088))(v2);
  return CCLogStream::logAlert(v4, "[dk] %s@%d: Apple Vendor IE length limit exceeded (%d, %lu) \n", "programAppleVendorIE", 2334, v1, 82);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  v4 = (*(v3 + 1088))(v2);
  return CCLogStream::logAlert(v4, "[dk] %s@%d: IE - Out of range check, (%d, %lu) \n", "programAppleVendorIE", 2177, 1, v1);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logCrit(v3, "[dk] %s@%d:  Allocation buffer failure\n", "programAppleVendorIE", 2145);
}

uint64_t AppleBCMWLANIO80211APSTAInterface::programAppleVendorIE(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = OUTLINED_FUNCTION_8_7(a1);
  v8 = (*(v7 + 1088))(v6);
  return CCLogStream::logAlert(v8, "[dk] %s@%d: IE - Out of range check, (%d, %lu) \n", "programAppleVendorIE", 2187, *v4 + 5, a4);
}

uint64_t AppleBCMWLANIO80211APSTAInterface::setRSNXE(uint64_t *a1)
{
  v3 = OUTLINED_FUNCTION_5_6(a1);
  (*(v4 + 1088))(v3);
  v5 = OUTLINED_FUNCTION_2_14();
  (*(v6 + 112))(v5, v1);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v2, "[dk] %s@%d:ERROR: Setting RSNXE fails, error %s\n", v8, v9, v10);
}

uint64_t AppleBCMWLANIO80211APSTAInterface::setHOST_AP_MODE_HIDDEN(uint64_t *a1, uint64_t a2, int a3)
{
  v5 = OUTLINED_FUNCTION_0_8(a1);
  (*(v6 + 1088))(v5);
  OUTLINED_FUNCTION_3_5();
  v8 = *(v7 + 920);
  v9 = OUTLINED_FUNCTION_16_2();
  v11 = v10(v9);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: cannot set closednet : retval %x: %s\n", "setHOST_AP_MODE_HIDDEN", 1815, a3, v11);
}

uint64_t AppleBCMWLANIO80211APSTAInterface::setHOST_AP_MODE_HIDDEN(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0_8(a1);
  (*(v3 + 1088))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 920);
  v6 = OUTLINED_FUNCTION_29_4();
  v12 = v7(v6);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:set closednet : hidden %d, retval %x: %s\n", v9, v10, v11, 0, v12);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  v4 = (*(v3 + 1088))(v2);
  return CCLogStream::logAlert(v4, "[dk] %s@%d:ERROR: Interface not up yet, cannot set softAP hidden mode to %d\n", "setHOST_AP_MODE_HIDDEN", 1795, *(v1 + 4));
}

uint64_t AppleBCMWLANIO80211APSTAInterface::holdSoftAPPowerAssertion(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:LPHS: Hold AP power assertion\n", "holdSoftAPPowerAssertion", 4575);
}

uint64_t AppleBCMWLANIO80211APSTAInterface::enableSoftAPPowerSave(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ALERT: Enabling SoftAP power saving NOT allowed on non-SDB platforms\n", "enableSoftAPPowerSave", 4964);
}

uint64_t AppleBCMWLANIO80211APSTAInterface::setCHANNEL(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logCrit(v3, "[dk] %s@%d: Setting SoftAP Failed to set chanspecs, channel %d is out range \n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logCrit(v3, "[dk] %s@%d: Setting SoftAP Failed, invalid input parameter \n", "setCHANNEL", 1854);
}

uint64_t AppleBCMWLANIO80211APSTAInterface::setSOFTAP_TRIGGER_CSA(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = OUTLINED_FUNCTION_0_8(a1);
  (*(v7 + 1088))(v6);
  OUTLINED_FUNCTION_3_5();
  (*(v8 + 160))(v3);
  v13 = *(a3 + 8);
  v14 = *(a3 + 12);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v4, "[dk] %s@%d:<%s> Invalid channel spec for channel %d flags 0x%X\n", v10, v11, v12, v13, v14);
}

uint64_t AppleBCMWLANIO80211APSTAInterface::setSOFTAP_TRIGGER_CSA(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_5_5(a1);
  v4 = (*(v3 + 1088))(v2);
  (*(*a1 + 160))(a1);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v4, "[dk] %s@%d:<%s> WARNING: failed to set channel, invalid input parameter \n", v6, v7, v8);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  v4 = (*(v3 + 1088))(v2);
  return CCLogStream::logAlert(v4, "[dk] %s@%d:ERROR: Interface not up, ifUp: %u ifLinkUp: %u \n", "setSOFTAP_TRIGGER_CSA", 1916, *(*v1 + 620), *(*v1 + 809));
}

uint64_t AppleBCMWLANIO80211APSTAInterface::setSOFTAP_WIFI_NETWORK_INFO_IE(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  v4 = (*(v3 + 1088))(v2);
  return CCLogStream::logNotice(v4, "[dk] %s@%d: %s: %d %d %d\n", "setSOFTAP_WIFI_NETWORK_INFO_IE", 2042, "setSOFTAP_WIFI_NETWORK_INFO_IE", *(*v1 + 46), *(*v1 + 44), *(*v1 + 47));
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  v4 = (*(v3 + 1088))(v2);
  return CCLogStream::logAlert(v4, "[dk] %s@%d: Invalid SSID len[%u]\n", "setSOFTAP_WIFI_NETWORK_INFO_IE", 2023, *v1);
}

uint64_t AppleBCMWLANIO80211APSTAInterface::setRSN_CONF(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: softAP power change is in progress. Rejecting RSN config.\n", "setRSN_CONF", 2360);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d: WLC_SET_WPA_AUTH 0x%X\n", v5, v6, v7);
}

{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1088))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 920);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v1, "[dk] %s@%d: cant bring up bss, error %s\n", v9, v10, v11);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_9_4();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:%s: interface is up!\n", v5, v6, v7);
}

uint64_t AppleBCMWLANIO80211APSTAInterface::setCIPHER_KEY(uint64_t *a1)
{
  v3 = OUTLINED_FUNCTION_5_6(a1);
  (*(v4 + 1088))(v3);
  v5 = OUTLINED_FUNCTION_2_14();
  (*(v6 + 112))(v5, v1);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v2, "[dk] %s@%d: mapAppleKeyToBcomKey() failed, error %s\n", v8, v9, v10);
}

{
  v3 = OUTLINED_FUNCTION_5_6(a1);
  (*(v4 + 1088))(v3);
  v5 = OUTLINED_FUNCTION_2_14();
  (*(v6 + 112))(v5, v1);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v2, "[dk] %s@%d: WLC_SET_KEY failed, error %s\n", v8, v9, v10);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_15_4();
  return CCLogStream::logCrit(v3, "[dk] %s@%d: cipher type (%d) not supported\n", "setCIPHER_KEY", 2566, v5);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: SoftAP interface not up\n", "setCIPHER_KEY", 2529);
}

uint64_t AppleBCMWLANIO80211APSTAInterface::getSTA_IE_LIST(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: Unable to find in Station table \n", "getSTA_IE_LIST", 2583);
}

uint64_t AppleBCMWLANIO80211APSTAInterface::getSTA_STATS(uint64_t *a1)
{
  v3 = OUTLINED_FUNCTION_5_6(a1);
  (*(v4 + 1088))(v3);
  v5 = OUTLINED_FUNCTION_2_14();
  (*(v6 + 112))(v5, v1);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v2, "[dk] %s@%d: Failed to get station stats, error %s\n", v8, v9, v10);
}

uint64_t AppleBCMWLANIO80211APSTAInterface::handleEvent(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  v4 = (*(v3 + 1088))(v2);
  convertEventToString(*(v1 + 4), 0, 0);
  v5 = *(v1 + 4);
  v6 = *(v1 + 8);
  v7 = *(v1 + 2);
  v8 = *(v1 + 12);
  v9 = *(v1 + 16);
  OUTLINED_FUNCTION_30_3();
  return CCLogStream::logAlertIf(v4, 0x10uLL, "[dk] %s@%d:type = %s (%lu), status = %lu, reason = %lu, flags = 0x%x, authtype = %lu, addr = %02X:%02X:%02X:%02X:%02X:%02X\n", "handleEvent", 2717, v10, v11, v12, v14, v13, v15, v16, v17, v18, v19, v20, *(v1 + 29));
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  (*(v3 + 1088))(v2);
  v4 = *(v1 + 24);
  OUTLINED_FUNCTION_14_6();
  OUTLINED_FUNCTION_24_4();
  return CCLogStream::logAlert(v5, "[dk] %s@%d:ALERT: Non-Apple device %02X:%02X:%02X:%02X:%02X:%02X joining when in hidden mode, rejecting association\n", "handleEvent", 2894, v7, v8, v9, v10, v11, v12);
}

{
  v2 = OUTLINED_FUNCTION_5_5(a1);
  v4 = (*(v3 + 1088))(v2);
  IO80211SkywalkInterface::getInterfaceId(a1);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logWarn(v4, "[dk] %s@%d:  Interface %u   Link change event send link up\n", v6, v7, v8);
}

{
  v2 = OUTLINED_FUNCTION_5_5(a1);
  v4 = (*(v3 + 1088))(v2);
  IO80211SkywalkInterface::getInterfaceId(a1);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logWarn(v4, "[dk] %s@%d:  Interface %u   Link change event indicates link down\n", v6, v7, v8);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  (*(v3 + 1088))(v2);
  v4 = *(v1 + 24);
  OUTLINED_FUNCTION_14_6();
  return CCLogStream::logCrit(v5, "[dk] %s@%d: WLC_E_PSK_AUTH event size %lu, status %u reason %u dataLen %u authType 0x%X addr %02X:%02X:%02X:%02X:%02X:%02X", "handleEvent", 3027, 48, *(v1 + 8), *(v1 + 12), *(v1 + 20), *(v1 + 16), v6, v7, v8, v9, v10, v11);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logCrit(v3, "[dk] %s@%d: WLC_E_PSK_AUTH event GTK rekeying done\n", "handleEvent", 3030);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  (*(v3 + 1088))(v2);
  v4 = *(v1 + 24);
  OUTLINED_FUNCTION_14_6();
  return CCLogStream::logCrit(v5, "[dk] %s@%d: WLC_E_AUTH_IND event size %lu, status %u reason %u dataLen %u authType 0x%X addr %02X:%02X:%02X:%02X:%02X:%02X", "handleEvent", 2759, 48, *(v1 + 8), *(v1 + 12), *(v1 + 20), *(v1 + 16), v6, v7, v8, v9, v10, v11);
}

{
  v2 = OUTLINED_FUNCTION_9_5(a1);
  result = (*(v3 + 1088))(v2);
  if (result)
  {
    (*(*v1 + 1088))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v5 = (*(*v1 + 1088))(v1);
      return CCLogStream::logAlert(v5, "[dk] %s@%d:safe_align_up failed\n", "handleEvent", 2816);
    }
  }

  return result;
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logNotice(v3, "[dk] %s@%d: WLC_E_AUTH_IND: PMKID has invalid length (%d)\n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logNotice(v3, "[dk] %s@%d: WLC_E_AUTH_IND: PMKID exists. length %lu\n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logNotice(v3, "[dk] %s@%d: WLC_E_AUTH_IND: PMK has invalid length (%d)\n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logNotice(v3, "[dk] %s@%d: WLC_E_AUTH_IND: PMK exists. length %lu\n", v5, v6, v7);
}

{
  v2 = OUTLINED_FUNCTION_9_5(a1);
  result = (*(v3 + 1088))(v2);
  if (result)
  {
    (*(*v1 + 1088))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v5 = (*(*v1 + 1088))(v1);
      return CCLogStream::logAlert(v5, "[dk] %s@%d:UINT16_MAX overflow alignedTlvLen\n", "handleEvent", 2818);
    }
  }

  return result;
}

{
  v2 = OUTLINED_FUNCTION_9_5(a1);
  result = (*(v3 + 1088))(v2);
  if (result)
  {
    (*(*v1 + 1088))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v5 = (*(*v1 + 1088))(v1);
      return CCLogStream::logAlert(v5, "[dk] %s@%d:os_add_overflow adding BCM_XTLV_HDR_SIZE failed\n", "handleEvent", 2817);
    }
  }

  return result;
}

{
  v2 = OUTLINED_FUNCTION_9_5(a1);
  result = (*(v3 + 1088))(v2);
  if (result)
  {
    (*(*v1 + 1088))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v5 = (*(*v1 + 1088))(v1);
      return CCLogStream::logEmergency(v5, "[dk] %s@%d:Failure in handleEvent\n", "handleEvent", 3046);
    }
  }

  return result;
}

uint64_t AppleBCMWLANIO80211APSTAInterface::handleEvent(uint64_t *a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  v6 = OUTLINED_FUNCTION_5_5(a1);
  result = (*(v7 + 1088))(v6);
  if (result)
  {
    (*(*a1 + 1088))(a1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v9 = (*(*a1 + 1088))(a1);
      return CCLogStream::logAlert(v9, "[dk] %s@%d: Insufficient space[%u] < %lu\n", "handleEvent", 2776, *a4, 4);
    }
  }

  return result;
}

uint64_t AppleBCMWLANIO80211APSTAInterface::handleEvent(uint64_t *a1, uint64_t a2, unsigned __int8 *a3)
{
  v5 = OUTLINED_FUNCTION_5_5(a1);
  v7 = (*(v6 + 1088))(v5);
  InterfaceId = IO80211SkywalkInterface::getInterfaceId(a1);
  return CCLogStream::logAlert(v7, "[dk] %s@%d: ERROR: FW return invalid interface index: set 0x%X returned ox%X\n", "handleEvent", 2737, InterfaceId, *a3);
}

uint64_t AppleBCMWLANIO80211APSTAInterface::handleEvent(uint64_t *a1, uint64_t a2, _DWORD *a3)
{
  v5 = OUTLINED_FUNCTION_5_5(a1);
  result = (*(v6 + 1088))(v5);
  if (result)
  {
    (*(*a1 + 1088))(a1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v8 = (*(*a1 + 1088))(a1);
      return CCLogStream::logAlert(v8, "[dk] %s@%d: Insufficient space[%u] < %lu\n", "handleEvent", 2725, *a3, 5);
    }
  }

  return result;
}

uint64_t AppleBCMWLANIO80211APSTAInterface::handleEvent(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = OUTLINED_FUNCTION_8_7(a1);
  (*(v7 + 1088))(v6);
  v8 = *v4;
  v9 = *(a4 + 8);
  v10 = *(a4 + 12);
  v11 = *(a4 + 2);
  v12 = *(a4 + 16);
  OUTLINED_FUNCTION_30_3();
  return CCLogStream::logNotice(v13, "[dk] %s@%d: Unhandled event %lu: status = %lu, reason = %lu, flags = 0x%x, authtype = %lu, addr = %02x:%02x:%02x:%02x:%02x:%02x\n", "handleEvent", 3038, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, *(a4 + 29));
}

uint64_t AppleBCMWLANIO80211APSTAInterface::postMessageForSTA(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: Allocating memory for posting SoftAP message failed\n", "postMessageForSTA", 3195);
}

uint64_t AppleBCMWLANIO80211APSTAInterface::updateSTAAssocInfo(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_8_7(a1);
  (*(v3 + 1088))(v2);
  v4 = *v1;
  OUTLINED_FUNCTION_14_6();
  OUTLINED_FUNCTION_24_4();
  return CCLogStream::logAlert(v5, "[dk] %s@%d:ERROR: Station %02X:%02X:%02X:%02X:%02X:%02X entry not found\n", "updateSTAAssocInfo", 4432, v7, v8, v9, v10, v11, v12);
}

uint64_t AppleBCMWLANIO80211APSTAInterface::parseRSNXE(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Associating STA RSNXE not found", "parseRSNXE", 4398);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  v4 = (*(v3 + 1088))(v2);
  return CCLogStream::logAlert(v4, "[dk] %s@%d:Associating STA RSNXE capability %x, %x, %x", "parseRSNXE", 4404, *v1, v1[1], v1[2]);
}

uint64_t AppleBCMWLANIO80211APSTAInterface::clearStaContextFromStaTable(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  (*(v3 + 1088))(v2);
  if (v1)
  {
    OUTLINED_FUNCTION_28_4();
  }

  else
  {
    OUTLINED_FUNCTION_26_4();
  }

  return CCLogStream::logAlert(v4, "[dk] %s@%d:ERROR: Removing STA %02X:%02X:%02X:%02X:%02X:%02X failed\n", "clearStaContextFromStaTable", 4614, v5, v6, v7, v9, v8, v10);
}

uint64_t AppleBCMWLANIO80211APSTAInterface::checkForStationListMismatch(uint64_t *a1, uint64_t a2, uint64_t a3, _DWORD **a4)
{
  v6 = OUTLINED_FUNCTION_8_7(a1);
  v8 = (*(v7 + 1088))(v6);
  return CCLogStream::logAlert(v8, "[dk] %s@%d:ALERT: Found station list mismatch fw = %d vs host = %d\n", "checkForStationListMismatch", 3087, *v4, **a4);
}

uint64_t AppleBCMWLANIO80211APSTAInterface::checkForStationListMismatch(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  (*(v3 + 1088))(v2);
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v9 = v1[6];
  OUTLINED_FUNCTION_24_4();
  return CCLogStream::logAlert(v10, "[dk] %s@%d:ALERT: STA %02X:%02X:%02X:%02X:%02X:%02X, disappeared, removing and posting event\n", "checkForStationListMismatch", 3103, v12, v13, v14, v15, v16, v17);
}

uint64_t AppleBCMWLANIO80211APSTAInterface::removeStaFromStaTable(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: Incorrect STA index %d in AP StaTable\n", v5, v6, v7);
}

uint64_t AppleBCMWLANIO80211APSTAInterface::disableInfraFeaturesForSoftAP(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_15_4();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:wlan.ap.maxmpdu overwrite %d\n", "disableInfraFeaturesForSoftAP", 3280, v5);
}

uint64_t AppleBCMWLANIO80211APSTAInterface::configureKeepAliveProbing(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1088))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 920);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Error: Unable to set scb_probe: %s\n", v9, v10, v11);
}

uint64_t AppleBCMWLANIO80211APSTAInterface::configureWNMForSoftAP(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  v4 = (*(v3 + 1088))(v2);
  if (*v1)
  {
    v5 = "Enabled";
  }

  else
  {
    v5 = "Disabled";
  }

  return CCLogStream::logNoticeIf(v4, 0x80uLL, "[dk] %s@%d:WNM is %s\n", "configureWNMForSoftAP", 3381, v5);
}

uint64_t AppleBCMWLANIO80211APSTAInterface::configureMPDUSize(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_15_4();
  return CCLogStream::logNoticeIf(v3, 0x80uLL, "[dk] %s@%d:MPDU size is configured to %d\n", "configureMPDUSize", 3414, v5);
}

uint64_t AppleBCMWLANIO80211APSTAInterface::hostAPPowerOff(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1088))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 920);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: Stopping SoftAP error %s\n", v9, v10, v11);
}

uint64_t AppleBCMWLANIO80211APSTAInterface::configureLowPowerModeEntry(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:HS LPM: Failed to configure Low Power Mode\n", "configureLowPowerModeEntry", 3472);
}

uint64_t AppleBCMWLANIO80211APSTAInterface::configureLowPowerMode(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1088))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 920);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: HS LPM: Failed to Configure SMPS Wait Period %s\n", v9, v10, v11);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_15_4();
  return CCLogStream::logInfo(v3, "[dk] %s@%d:HS LPM: Configured SMPS Wait Period to %d Beacon Intervals\n", "configureLowPowerMode", 3955, v5);
}

{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1088))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 920);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: HS LPM: Failed to configure lphs mode %s\n", v9, v10, v11);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logInfo(v3, "[dk] %s@%d:HS LPM: Configure lphs mode\n", "configureLowPowerMode", 3963);
}

{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1088))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 920);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: HS LPM: Failed to enable Low Power Mode ret %s\n", v9, v10, v11);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logInfo(v3, "[dk] %s@%d:HS LPM: Configure Low Power Mode\n", "configureLowPowerMode", 3970);
}

uint64_t AppleBCMWLANIO80211APSTAInterface::configureLowPowerModeExit(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:HS LPM: Failed to unConfigure Low Power Mode\n", "configureLowPowerModeExit", 3502);
}

uint64_t AppleBCMWLANIO80211APSTAInterface::unConfigureLowPowerMode(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1088))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 920);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: HS LPM: Failed to disable Low Power Mode ret %s\n", v9, v10, v11);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logInfo(v3, "[dk] %s@%d:HS LPM:  Low Power Mode Disabled\n", "unConfigureLowPowerMode", 3995);
}

uint64_t AppleBCMWLANIO80211APSTAInterface::deleteIPv4PktFilters(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Failed to Delete Pkt Filters\n", "deleteIPv4PktFilters", 3736);
}

uint64_t AppleBCMWLANIO80211APSTAInterface::deleteIPv4PktFiltersAsyncCallBack(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = OUTLINED_FUNCTION_5_5(a1);
  v7 = (*(v6 + 1088))(v5);
  v8 = OUTLINED_FUNCTION_5_0(*(a1[17] + 536));
  (*(v9 + 112))(v8, a3);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v7, "[dk] %s@%d:  failed, error %s\n", v11, v12, v13);
}

uint64_t AppleBCMWLANIO80211APSTAInterface::configureARPOffload(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1088))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 920);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: Unable to turn on ARP monitoring: %s\n", v9, v10, v11);
}

{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1088))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 920);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: Unable to clear ARP : %s\n", v9, v10, v11);
}

{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1088))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 920);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: Unable to program IP address for ARP filtering: %s\n", v9, v10, v11);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: Failed to configure ARP Offload in ARP F/W\n", "configureARPOffload", 3808);
}

uint64_t AppleBCMWLANIO80211APSTAInterface::handleSetARPOffloadAsyncCallBack(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1088))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 920);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR:: cannot read ARP OE from the firmware: %s\n", v9, v10, v11);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: Failed to Issue arp_hostip_clear\n", "handleSetARPOffloadAsyncCallBack", 3856);
}

uint64_t AppleBCMWLANIO80211APSTAInterface::handleSetARPHostIPClearAsyncCallBack(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1088))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 920);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: cannot clear host IP in ARP table: %s\n", v9, v10, v11);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: Failed to Configure IP in ARP Table\n", "handleSetARPHostIPClearAsyncCallBack", 3880);
}

uint64_t AppleBCMWLANIO80211APSTAInterface::handleSetARPHostIPAsyncCallBack(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1088))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 920);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: Failed to Configure IP in ARP Table: %s\n", v9, v10, v11);
}

uint64_t AppleBCMWLANIO80211APSTAInterface::handleSetBcnWaitPeriodAsyncCallBack(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1088))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 920);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: Cannot configure Low Power Mode to firmware: %s\n", v9, v10, v11);
}

uint64_t AppleBCMWLANIO80211APSTAInterface::handleSetLowPowerModeAsyncCallBack(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1088))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 920);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: Cannot configure Low Power Mode to firmware: %s\n", v9, v10, v11);
}

uint64_t AppleBCMWLANIO80211APSTAInterface::setBeaconDutyCycle(uint64_t *a1)
{
  v3 = OUTLINED_FUNCTION_5_6(a1);
  (*(v4 + 1088))(v3);
  v5 = OUTLINED_FUNCTION_2_14();
  (*(v6 + 112))(v5, v1);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v2, "[dk] %s@%d:ERROR:  Setting SoftAP beacon interval fails, error %s\n", v8, v9, v10);
}

uint64_t AppleBCMWLANIO80211APSTAInterface::handleSetRpsNoaAsyncCallBack(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1088))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 920);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: Cannot configure SoftAP RPSNOA, %s\n", v9, v10, v11);
}

uint64_t AppleBCMWLANIO80211APSTAInterface::handleSetScbProbeAsyncCallBack(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1088))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 920);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: Cannot configure SoftAP scb_probe, %s\n", v9, v10, v11);
}

uint64_t AppleBCMWLANIO80211APSTAInterface::configureBeaconDutyCycleParams(uint64_t *a1)
{
  v3 = OUTLINED_FUNCTION_5_6(a1);
  (*(v4 + 1088))(v3);
  v5 = OUTLINED_FUNCTION_2_14();
  (*(v6 + 112))(v5, v1);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v2, "[dk] %s@%d:ERROR: Setting SoftAP beacon interval fails, error %s\n", v8, v9, v10);
}

uint64_t AppleBCMWLANIO80211APSTAInterface::handleSetRSNXEAsyncCallBack(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1088))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 920);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: Cannot set softAP rsnxe, %s\n", v9, v10, v11);
}

uint64_t AppleBCMWLANIO80211APSTAInterface::handleSetBcnIntervalAsyncCallBack(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1088))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 920);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: Cannot configure SoftAP beacon interval, %s\n", v9, v10, v11);
}

uint64_t AppleBCMWLANIO80211APSTAInterface::handleSetBcnDTIMPeriodAsyncCallBack(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1088))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 920);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: Cannot configure SoftAP beacon DTIM period, %s\n", v9, v10, v11);
}

uint64_t AppleBCMWLANIO80211APSTAInterface::addStaToStaTable(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  (*(v3 + 1088))(v2);
  if (v1)
  {
    OUTLINED_FUNCTION_28_4();
  }

  else
  {
    OUTLINED_FUNCTION_26_4();
  }

  return CCLogStream::logAlert(v4, "[dk] %s@%d:ERROR: Adding STA %02X:%02X:%02X:%02X:%02X:%02X failed\n", "addStaToStaTable", 4600, v5, v6, v7, v9, v8, v10);
}

uint64_t AppleBCMWLANIO80211APSTAInterface::removeSta(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: Decrementing num of associated clients when it is already zero\n", "removeSta", 4539);
}

uint64_t AppleBCMWLANIO80211APSTAInterface::releaseSoftAPPowerAssertion(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:LPHS: Release AP power assertion\n", "releaseSoftAPPowerAssertion", 4587);
}

uint64_t AppleBCMWLANIO80211APSTAInterface::monitorInfraConcurrencyState(uint64_t *a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = OUTLINED_FUNCTION_5_5(a1);
  v8 = (*(v7 + 1088))(v6);
  return CCLogStream::logAlert(v8, "[dk] %s@%d:Update SoftAP venor IE, lphs IE = %d, networkIe = %d\n", "monitorInfraConcurrencyState", 5070, a3 & 1, *(*a4 + 98));
}

uint64_t AppleBCMWLANIO80211APSTAInterface::enable(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:APSTA: enable\n", "enable", 5193);
}

uint64_t AppleBCMWLANIO80211APSTAInterface::disable(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:APSTA: disable\n", "disable", 5222);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:APSTA: disable Done\n", "disable", 5227);
}

uint64_t AppleBCMWLANIO80211APSTAInterface::enableDatapath(uint64_t result, uint64_t a2)
{
  if ((result & 1) == 0)
  {
    (*(*a2 + 1088))(a2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v3 = (*(*a2 + 1088))(a2);
      v4 = (*(*a2 + 160))(a2);
      return CCLogStream::logInfo(v3, "[dk] %s@%d:%s %s failed because interface has not been enabled yet\n", "enableDatapath", 5235, v4, "enableDatapath");
    }
  }

  return result;
}

uint64_t AppleBCMWLANIO80211APSTAInterface::enableDatapath(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logInfo(v3, "[dk] %s@%d:APSTA interface enable data path\n", "enableDatapath", 5237);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logInfo(v3, "[dk] %s@%d:skywalk rx completion queue enqueue fail with return %d\n", v5, v6, v7);
}

{
  v2 = OUTLINED_FUNCTION_9_5(a1);
  result = (*(v3 + 1088))(v2);
  if (result)
  {
    (*(*v1 + 1088))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v5 = (*(*v1 + 1088))(v1);
      return CCLogStream::logCrit(v5, "[dk] %s@%d:rx completion queue not valid\n", "enableDatapath", 5244);
    }
  }

  return result;
}

{
  v2 = OUTLINED_FUNCTION_9_5(a1);
  result = (*(v3 + 1088))(v2);
  if (result)
  {
    (*(*v1 + 1088))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v5 = (*(*v1 + 1088))(v1);
      return CCLogStream::logCrit(v5, "[dk] %s@%d:tx completion queue not valid\n", "enableDatapath", 5241);
    }
  }

  return result;
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logCrit(v3, "[dk] %s@%d:skywalk data path enable fail\n", "enableDatapath", 5255);
}

uint64_t AppleBCMWLANIO80211APSTAInterface::disableDatapath(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logInfo(v3, "[dk] %s@%d:APSTA interface disable data path\n", "disableDatapath", 5262);
}

{
  v2 = OUTLINED_FUNCTION_9_5(a1);
  result = (*(v3 + 1088))(v2);
  if (result)
  {
    (*(*v1 + 1088))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v5 = (*(*v1 + 1088))(v1);
      return CCLogStream::logCrit(v5, "[dk] %s@%d:tx completion queue not valid\n", "disableDatapath", 5269);
    }
  }

  return result;
}

{
  v2 = OUTLINED_FUNCTION_9_5(a1);
  result = (*(v3 + 1088))(v2);
  if (result)
  {
    (*(*v1 + 1088))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v5 = (*(*v1 + 1088))(v1);
      return CCLogStream::logCrit(v5, "[dk] %s@%d:rx completion queue not valid\n", "disableDatapath", 5266);
    }
  }

  return result;
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logCrit(v3, "[dk] %s@%d:skywalk data path disable fail\n", "disableDatapath", 5275);
}

uint64_t AppleBCMWLANIO80211APSTAInterface::printDataPath(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_5_5(a1);
  v4 = (*(v3 + 1088))(v2);
  InterfaceRoleStr = IO80211SkywalkInterface::getInterfaceRoleStr(a1);
  v6 = (*(*a1 + 160))(a1);
  return CCLogStream::logInfo(v4, "[dk] %s@%d:Enter InterfaceRole:%s bsdname:%s\n", "printDataPath", 5396, InterfaceRoleStr, v6);
}

uint64_t AppleBCMWLANIO80211APSTAInterface::setMacAddress(uint64_t *a1, uint64_t a2, uint64_t a3, int a4)
{
  v6 = OUTLINED_FUNCTION_8_7(a1);
  v8 = (*(v7 + 1088))(v6);
  return CCLogStream::logAlert(v8, "[dk] %s@%d:Not setting mac addres since interface id=<%d>up=<%d>", "setMacAddress", 5442, a4, *(*v4 + 620));
}

uint64_t AppleBCMWLANIO80211APSTAInterface::configureSoftAPPeerStats(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_5_0(a1);
  result = (*(v3 + 1088))(v2);
  if (result)
  {
    (*(*a1 + 1088))(a1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v5 = (*(*a1 + 1088))(a1);
      return CCLogStream::logInfo(v5, "[dk] %s@%d: SoftAP Peer stats is not supported \n", "configureSoftAPPeerStats", 5498);
    }
  }

  return result;
}

uint64_t AppleBCMWLANIO80211APSTAInterface::configureSoftAPPeerStats(uint64_t *a1, char a2, uint64_t a3)
{
  v6 = OUTLINED_FUNCTION_5_0(a1);
  result = (*(v7 + 1088))(v6);
  if (result)
  {
    (*(*a1 + 1088))(a1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v9 = (*(*a1 + 1088))(a1);
      if (a2)
      {
        v10 = "enable";
      }

      else
      {
        v10 = "disable";
      }

      v11 = (*(*a1 + 920))(a1, a3);
      return CCLogStream::logAlert(v9, "[dk] %s@%d: Error: SoftAP Peer stats %s iovar failed, reason: %s\n", "configureSoftAPPeerStats", 5494, v10, v11);
    }
  }

  return result;
}

uint64_t AppleBCMWLANIO80211APSTAInterface::handleSoftAPStatsConfigAsyncCallback(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_9_4();
  return CCLogStream::logInfo(v3, "[dk] %s@%d: SoftAP Peer stats %s iovar successful \n", v5, v6, v7);
}

uint64_t AppleBCMWLANDynamicRingOperationContext::initWithCompletion(OSObject *a1, __int128 *a2)
{
  if (!a2)
  {
    return 0;
  }

  result = OSObject::init(a1);
  if (result)
  {
    v5 = IOMallocZeroTyped();
    a1[1].OSMetaClassBase::__vftable = v5;
    if (v5)
    {
      v6 = *a2;
      *(v5 + 32) = *(a2 + 2);
      *(v5 + 16) = v6;
      result = IOMallocZeroTyped();
      if (result)
      {
        *(result + 16) = a1;
        a1[1].free = result;
        return 1;
      }
    }

    else
    {
      IOLog(" RingOperationContext ivars alloc fail\n");
      return 0;
    }
  }

  return result;
}

uint64_t AppleBCMWLANKeepAliveOffload::handleTKOEvent(uint64_t result, uint64_t a2)
{
  if (a2 && *(a2 + 8) == 5)
  {
    v3 = result;
    v4 = *(result + 40);
    if (*(v4 + 8))
    {
      shouldLog = CCLogStream::shouldLog();
      v4 = *(v3 + 40);
      if (shouldLog)
      {
        CCLogStream::logNoticeIf(*(v4 + 8), 0x8000000uLL, "[dk] %s@%d: Posting APPLE80211_M_TCPKA_TIMEOUT <%u>\n", "handleTKOEvent", 1525, 91);
        v4 = *(v3 + 40);
      }
    }

    v6 = *(v4 + 16);

    return AppleBCMWLANCore::postMessageInfra(v6, 0x5Bu, 0, 0);
  }

  return result;
}

uint64_t AppleBCMWLANKeepAliveOffload::setTCPAliveEnable(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    *(*(result + 40) + 481) = *(a2 + 4) != 0;
  }

  return result;
}

uint64_t AppleBCMWLANKeepAliveOffload::getTCPAliveEnable(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    *(a2 + 4) = *(*(result + 40) + 481);
  }

  return result;
}

uint64_t AppleBCMWLANKeepAliveOffload::getTkoWakeReason(AppleBCMWLANKeepAliveOffload *this)
{
  v1 = *(this + 5);
  if (v1 && (v2 = *(v1 + 484), (v2 - 1) <= 5))
  {
    return dword_1003AD3B0[v2 - 1];
  }

  else
  {
    return 0;
  }
}

uint64_t AppleBCMWLANKeepAliveOffload::setCachedTCPAliveWakeReason(AppleBCMWLANKeepAliveOffload *this, uint64_t a2)
{
  v2 = *(this + 5);
  if (!v2)
  {
    return 0;
  }

  *(v2 + 484) = a2;
  return a2;
}

uint64_t AppleBCMWLANKeepAliveOffload::init(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 8);
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      return CCLogStream::logAlert(*(*a2 + 8), "[dk] %s@%d: Failed to get Command Manager\n", "init", 92);
    }
  }

  return result;
}

uint64_t AppleBCMWLANKeepAliveOffload::initializeKeepAliveCapabilities(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_0_17(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Get TKO cap command failed, %s\n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_1_16(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Max supported TCP socket offloads %d\n", "initializeKeepAliveCapabilities", 195, *(v2 + 32));
}

uint64_t AppleBCMWLANKeepAliveOffload::configureKeepAlives(uint64_t a1)
{
  OUTLINED_FUNCTION_1_16(a1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:%s: Failed to get Tcp/Udp keepalive data\n", v3, v4, v5);
}

{
  v1 = OUTLINED_FUNCTION_1_16(a1);
  return CCLogStream::logNoticeIf(v1, 0x8000000uLL, "[dk] %s@%d:Keepalive data: local_addr: 0x%x.%x.%x.%x(%u.%u.%u.%u), remote_addr: 0x%x.%x.%x.%x(%u.%u.%u.%u), local_port: 0x%x(%u), remote_port: 0x%x(%u), local_seq: 0x%x(%u), remote_seq: 0x%x(%u) \n", "configureKeepAlives", 282, *(v2 + 268), *(v2 + 269), *(v2 + 270), *(v2 + 271), *(v2 + 268), *(v2 + 269), *(v2 + 270), *(v2 + 271), *(v2 + 284), *(v2 + 285), *(v2 + 286), *(v2 + 287), *(v2 + 284), *(v2 + 285), *(v2 + 286), *(v2 + 287), *(v2 + 300), *(v2 + 300), *(v2 + 302), *(v2 + 302), *(v2 + 304), *(v2 + 304), *(v2 + 308), *(v2 + 308));
}

{
  v2 = OUTLINED_FUNCTION_0_17(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Failed configuring TKO Socket with err: %s\n", v5, v6, v7);
}

{
  v2 = OUTLINED_FUNCTION_0_17(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Failed configuring TCP Keep Alive params with err: %s\n", v5, v6, v7);
}

{
  v2 = OUTLINED_FUNCTION_0_17(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Failed enabling TCP Keep Alive params with err: %s\n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_1_16(a1);
  return CCLogStream::logNoticeIf(v1, 0x8000000uLL, "[dk] %s@%d:Keepalive data: type: %u, ether_type: %u, length: %u, interval: %u\n", "configureKeepAlives", 355, *(v2 + 128), *(v2 + 132), *(v2 + 129), *(v2 + 130));
}

{
  v1 = OUTLINED_FUNCTION_1_16(a1);
  v3 = "Other Keep Alive";
  if (*(v2 + 128) == 1)
  {
    v3 = "CAR Play Keep Alive";
  }

  if (*(v2 + 128))
  {
    v4 = v3;
  }

  else
  {
    v4 = "NAT Keep Alive";
  }

  return CCLogStream::logAlert(v1, "[dk] %s@%d:Configured Keep Alive:  %s\n", "configureKeepAlives", 448, v4);
}

{
  v1 = OUTLINED_FUNCTION_1_16(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:No memory for mKeepAliveBuf\n", "configureKeepAlives", 399);
}

{
  v1 = OUTLINED_FUNCTION_1_16(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Reached FW Max of %d udp offload sockets\n", "configureKeepAlives", 350, 3);
}

{
  OUTLINED_FUNCTION_1_16(a1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x8000000uLL, "[dk] %s@%d:Leave %s \n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_1_16(a1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:%s: Failed to allocate keepalive frame buffer\n", v3, v4, v5);
}

uint64_t AppleBCMWLANKeepAliveOffload::setTCPAliveOffloadConfig(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_1_16(a1);
  return CCLogStream::logNoticeIf(v1, 0x8000000uLL, "[dk] %s@%d:routerMac: %x:%x:%x:%x:%x:%x\n", "setTCPAliveOffloadConfig", 693, *v2, v2[1], v2[2], v2[3], v2[4], v2[5]);
}

{
  v1 = OUTLINED_FUNCTION_1_16(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Lost Connection while sending keep alive packet\n", "setTCPAliveOffloadConfig", 771);
}

{
  v1 = OUTLINED_FUNCTION_1_16(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Configuring TCP Keep Alive Connect failed\n", "setTCPAliveOffloadConfig", 857);
}

{
  v1 = OUTLINED_FUNCTION_1_16(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:TCP Keep Alive Config buffer allocation failed\n", "setTCPAliveOffloadConfig", 702);
}

{
  v1 = OUTLINED_FUNCTION_1_16(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Invalid parameters\n", "setTCPAliveOffloadConfig", 678);
}

{
  v1 = OUTLINED_FUNCTION_1_16(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:configureKeepAlives with infraSkywalkInterface is null \n", "setTCPAliveOffloadConfig", 673);
}

uint64_t AppleBCMWLANKeepAliveOffload::setTCPKeepAliveParam(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_1_16(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Configuring TCP Keep Alive Params failed\n", "setTCPKeepAliveParam", 528);
}

{
  v1 = OUTLINED_FUNCTION_1_16(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:TCP Keep Alive Param buffer allocation failed\n", "setTCPKeepAliveParam", 474);
}

uint64_t AppleBCMWLANKeepAliveOffload::setTCPAliveOffloadEnable(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_1_16(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Configuring TCP Keep Alive Enable/ failed\n", "setTCPAliveOffloadEnable", 596);
}

{
  v1 = OUTLINED_FUNCTION_1_16(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:TCP Keep Alive Param buffer allocation failed\n", "setTCPAliveOffloadEnable", 554);
}

{
  v1 = OUTLINED_FUNCTION_1_16(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:TCP Keep Alive offload disabled, ignoring\n", "setTCPAliveOffloadEnable", 547);
}

uint64_t AppleBCMWLANKeepAliveOffload::handleMkeepAlivesAsyncCallBack(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_0_17(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Error: Cannot Configure M Keep Alives: %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANKeepAliveOffload::handleTCPKeepAliveParamAsyncCallBack(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_0_17(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Error: Cannot Configure TCP Keep Alive Param: %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANKeepAliveOffload::handleTCPKeepAliveEnableAsyncCallBack(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_0_17(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Error: Cannot Configure TCP Keep Alive Enable: %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANKeepAliveOffload::handleTCPKeepAliveStatusAsyncCallBack(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_0_17(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Error: Cannot retrieve TCP Keep Alive Status: %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANKeepAliveOffload::handleTCPKeepAliveConfigAsyncCallBack(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_0_17(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Error: Cannot Configure TCP Keep Alive Config: %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANKeepAliveOffload::unConfigureKeepAlives(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_0_17(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Failed to get TKO Wake Reason with err: %s\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_1_16(a1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x8000000uLL, "[dk] %s@%d:Leave %s \n", v3, v4, v5);
}

{
  v1 = OUTLINED_FUNCTION_1_16(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:No memory for keepAliveBuf\n", "unConfigureKeepAlives", 908);
}

uint64_t AppleBCMWLANKeepAliveOffload::unConfigureKeepAlives(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = *(a1 + 8);
  (*(**(a1 + 16) + 112))(*(a1 + 16));
  OUTLINED_FUNCTION_6();
  result = CCLogStream::logAlert(v6, "[dk] %s@%d:Failed to disable TKO with err: %s\n", v8, v9, v10);
  *a4 = *a3;
  return result;
}

uint64_t AppleBCMWLANKeepAliveOffload::handleUnconfigureMkeepAlivesAsyncCallBack(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_0_17(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Error: Cannot unconfigure M Keep Alives: %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANKeepAliveOffload::programGARP(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_1_16(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Failed to Configure GARP Keep-ALive for ID %d\n", "programGARP", 1649, 1);
}

{
  v1 = OUTLINED_FUNCTION_1_16(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Configured GARP Keep Alive ID = %d\n", "programGARP", 1651, 1);
}

{
  v1 = OUTLINED_FUNCTION_1_16(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:No memory for mKeepAliveBuf\n", "programGARP", 1590);
}

{
  v1 = OUTLINED_FUNCTION_1_16(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:configureKeepAlives with infraSkywalkInterface is null \n", "programGARP", 1574);
}

uint64_t AppleBCMWLANKeepAliveOffload::handleConfigureProgramGARPAsyncCallBack(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_0_17(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Failed to Program GARP %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANKeepAliveOffload::handleConfigureStopGARPAsyncCallBack(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_0_17(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Failed to Stop GARP %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANChipManagerPCIe4377::prepareHardware(AppleBCMWLANChipManagerPCIe4377 *this, AppleBCMWLANChipConfigSpace *a2, AppleBCMWLANChipBackplane *a3)
{
  v3 = 3758097090;
  v6 = 0;
  if (a2 && a3)
  {
    if (AppleBCMWLANChipBackplane::readGCICoreReg32(a3, 0xE64u, &v6))
    {
      return 3758097098;
    }

    else
    {
      v6 = v6 & 0xFFFFFFFC | 1;
      AppleBCMWLANChipBackplane::writeGCICoreReg32(a3, 0xE64u, v6);
      return 0;
    }
  }

  return v3;
}

uint64_t AppleBCMWLANChipManagerPCIe4377::checkHardware(AppleBCMWLANChipManagerPCIe4377 *this, AppleBCMWLANChipConfigSpace *a2, AppleBCMWLANChipBackplane *a3)
{
  v6 = 0;
  result = 3758097090;
  if (a2 && a3)
  {
    AppleBCMWLANChipBackplane::writeGCICoreReg32(a3, 0x40u, 4u);
    if (AppleBCMWLANChipBackplane::readGCICoreReg32(a3, 0x204u, &v6) || (v6 & 0x4000) != 0)
    {
      return 3758097098;
    }

    else
    {
      v5 = AppleBCMWLANChipBackplane::readGCICoreReg32(a3, 0x40u, &v6);
      result = 3758097098;
      if (!v5)
      {
        if (v6 == 4)
        {
          return 0;
        }

        else
        {
          return 3758097098;
        }
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANBusInterface::dequeueTxIOs(uint64_t result)
{
  v1 = *(*(result + 56) + 584);
  if (v1)
  {
    return (*(v1 + 8))(*v1);
  }

  return result;
}

uint64_t AppleBCMWLANBusInterface::reportCommittedTxCommands(uint64_t this)
{
  v1 = *(this + 56);
  v2 = *(v1 + 584);
  if (v2)
  {
    return (*(v2 + 16))(*v2, v1 + 640);
  }

  return this;
}

uint64_t AppleBCMWLANBusInterface::reportCompletedTxIOs(uint64_t result)
{
  v1 = *(*(result + 56) + 584);
  if (v1)
  {
    return (*(v1 + 24))(*v1);
  }

  return result;
}

uint64_t AppleBCMWLANBusInterface::enqueueRxIOs(uint64_t result)
{
  v1 = *(*(result + 56) + 584);
  if (v1)
  {
    return (*(v1 + 32))(*v1);
  }

  return result;
}

uint64_t AppleBCMWLANBusInterface::captureRequestCallback(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_3_1(a1);
  return CCLogStream::logEmergency(v1, "[dk] %s@%d:NO-OP!", "captureRequestCallback", 181);
}

{
  v1 = OUTLINED_FUNCTION_3_1(a1);
  return CCLogStream::logEmergency(v1, "[dk] %s@%d:captureRequestCallbackActive is true", "captureRequestCallback", 173);
}

uint64_t AppleBCMWLANBusInterface::parseOTPTuple(uint64_t a1)
{
  v1 = *(*a1 + 16);
  CStringNoCopy = OSString::getCStringNoCopy(*(*a1 + 80));
  return CCLogStream::logInfoIf(v1, 0x80uLL, "[dk] %s@%d:ProductInfo1: %s\n", "parseOTPTuple", 549, CStringNoCopy);
}

uint64_t AppleBCMWLANBusInterface::sendCCMissingFileInfoToCoreAnalytics(uint64_t a1, OSString *this)
{
  v2 = *(*a1 + 16);
  CStringNoCopy = OSString::getCStringNoCopy(this);
  return CCLogStream::logEmergency(v2, "[dk] %s@%d:Failed to send CoreAnalytics CoreAnalyticsSendEvent for event %s", "sendCCMissingFileInfoToCoreAnalytics", 819, CStringNoCopy);
}

uint64_t AppleBCMWLANBusInterface::sendCCMissingFileInfoToCoreAnalytics(uint64_t a1, uint64_t a2)
{
  (*(*a1 + 16))(a1);
  v3 = *(*a2 + 16);

  return v3(a2);
}

uint64_t AppleBCMWLANBusInterface::sendBootCheckPointToCoreAnalytics(uint64_t a1, OSString *this)
{
  v2 = *(*a1 + 16);
  CStringNoCopy = OSString::getCStringNoCopy(this);
  return CCLogStream::logEmergency(v2, "[dk] %s@%d:Failed to send CoreAnalyticsSendEvent for event %s", "sendBootCheckPointToCoreAnalytics", 1000, CStringNoCopy);
}

uint64_t AppleBCMWLANBusInterface::sendBootCheckPointToCoreAnalytics(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_3_1(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Fail to allocate stringValue\n", "sendBootCheckPointToCoreAnalytics", 993);
}

{
  v1 = OUTLINED_FUNCTION_3_1(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Fail to allocate keyString\n", "sendBootCheckPointToCoreAnalytics", 979);
}

{
  v1 = OUTLINED_FUNCTION_3_1(a1);
  return CCLogStream::logNotice(v1, "[dk] %s@%d:Driver is not ready try again later\n", "sendBootCheckPointToCoreAnalytics", 912);
}

uint64_t AppleBCMWLANBusInterface::sendBootCheckPointToCoreAnalytics(uint64_t a1, uint64_t a2, void *a3)
{
  result = OUTLINED_FUNCTION_3_1(a1);
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      result = CCLogStream::logAlert(*(*a1 + 16), "[dk] %s@%d:Fail to allocate numValue\n", "sendBootCheckPointToCoreAnalytics", 973);
    }
  }

  *a3 = a2;
  return result;
}

uint64_t AppleBCMWLANBusInterface::sendBootCheckPointToCoreAnalytics(uint64_t a1, _BYTE *a2)
{
  result = OUTLINED_FUNCTION_3_1(a1);
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      result = CCLogStream::logAlert(*(*a1 + 16), "[dk] %s@%d:Fail to allocate keyString\n", "sendBootCheckPointToCoreAnalytics", 970);
    }
  }

  *a2 = 0;
  return result;
}

{
  result = OUTLINED_FUNCTION_3_1(a1);
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      result = CCLogStream::logAlert(*(*a1 + 16), "[dk] %s@%d:Fail to allocate eventPayload\n", "sendBootCheckPointToCoreAnalytics", 926);
    }
  }

  *a2 = 0;
  return result;
}

{
  result = OUTLINED_FUNCTION_3_1(a1);
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      result = CCLogStream::logAlert(*(*a1 + 16), "[dk] %s@%d:Fail to allocate eventName\n", "sendBootCheckPointToCoreAnalytics", 923);
    }
  }

  *a2 = 0;
  return result;
}

{
  result = *(*(a1 + 56) + 16);
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      result = CCLogStream::logAlert(*(*(a1 + 56) + 16), "[dk] %s@%d:Fail to allocate bootClass\n", "sendBootCheckPointToCoreAnalytics", 896);
    }
  }

  *a2 = 0;
  return result;
}

uint64_t AppleBCMWLANUserClient::prepareMapping(AppleBCMWLANUserClient *this, AppleBCMWLANUserClient *a2, const OSData **a3, IOUserClientMethodArguments *a4)
{
  memset(v12, 0, sizeof(v12));
  BytesNoCopy = OSData::getBytesNoCopy(a3[5]);
  if (!BytesNoCopy)
  {
    return 3758097090;
  }

  memcpy(__dst, BytesNoCopy, sizeof(__dst));
  result = AppleBCMWLANUserClient::prepareImageMap(this, __dst, v12, v7, v8, v9);
  if (!result)
  {
    v11 = OSData::withBytes(v12, 0x80uLL);
    result = 0;
    a3[9] = v11;
  }

  return result;
}

uint64_t AppleBCMWLANUserClient::completeMapping(AppleBCMWLANUserClient *this, AppleBCMWLANUserClient *a2, const OSData **a3, IOUserClientMethodArguments *a4)
{
  BytesNoCopy = OSData::getBytesNoCopy(a3[5]);
  if (!BytesNoCopy)
  {
    return 3758097090;
  }

  memcpy(v7, BytesNoCopy, 0x80uLL);
  return AppleBCMWLANUserClient::completeImageMap(this, v7);
}

uint64_t AppleBCMWLANUserClient::init(uint64_t result, _BYTE *a2)
{
  v3 = *(result + 64);
  if (v3)
  {
    v4 = result;
    result = *(v3 + 32);
    if (result)
    {
      result = CCLogStream::shouldLog();
      if (result)
      {
        v5 = *(v4 + 64);
        if (v5)
        {
          v6 = *(v5 + 32);
        }

        else
        {
          v6 = 0;
        }

        result = CCLogStream::logCrit(v6, "[dk] %s@%d: Failed initWithTask() ... bailing\n", "init", 227);
      }
    }
  }

  *a2 = 0;
  return result;
}

uint64_t AppleBCMWLANUserClient::Start_Impl(uint64_t a1)
{
  if (*a1)
  {
    v1 = *(*a1 + 32);
  }

  else
  {
    v1 = 0;
  }

  return CCLogStream::logNoticeIf(v1, 0x80uLL, "[dk] %s@%d:\n", "Start_Impl", 331);
}

uint64_t AppleBCMWLANUserClient::Start_Impl(AppleBCMWLANUserClient *a1)
{
  result = OUTLINED_FUNCTION_0_18(a1);
  if (*v2)
  {
    result = *(*v2 + 32);
    if (result)
    {
      result = CCLogStream::shouldLog();
      if (result)
      {
        if (*v2)
        {
          v5 = *(*v2 + 32);
        }

        else
        {
          v5 = 0;
        }

        result = CCLogStream::logAlert(v5, "[dk] %s@%d: Unable to get command gate\n", "Start_Impl", 330);
      }
    }
  }

  *v1 = v3;
  return result;
}

{
  result = OUTLINED_FUNCTION_0_18(a1);
  if (*v2)
  {
    result = *(*v2 + 32);
    if (result)
    {
      result = CCLogStream::shouldLog();
      if (result)
      {
        if (*v2)
        {
          v5 = *(*v2 + 32);
        }

        else
        {
          v5 = 0;
        }

        result = CCLogStream::logAlert(v5, "[dk] %s@%d: Unable to get workQueue\n", "Start_Impl", 318);
      }
    }
  }

  *v1 = v3;
  return result;
}

{
  AppleBCMWLANUserClient::freeResources(a1);
  ClassNameHelper = getClassNameHelper(a1);
  return IOLog("%s::%s(): Unable to allocate provider\n", ClassNameHelper, "Start_Impl");
}

uint64_t AppleBCMWLANUserClient::Start_Impl(uint64_t result, _DWORD *a2)
{
  if (*result)
  {
    v3 = result;
    result = *(*result + 32);
    if (result)
    {
      result = CCLogStream::shouldLog();
      if (result)
      {
        if (*v3)
        {
          v4 = *(*v3 + 32);
        }

        else
        {
          v4 = 0;
        }

        result = CCLogStream::logAlert(v4, "[dk] %s@%d:AppleBCMWLANUserClient : WLANMainDispatchQueue NULL !!!\n", "Start_Impl", 323);
      }
    }
  }

  *a2 = -536870212;
  return result;
}

uint64_t AppleBCMWLANUserClient::Stop_Impl(uint64_t a1)
{
  if (*a1)
  {
    v1 = *(*a1 + 32);
  }

  else
  {
    v1 = 0;
  }

  return CCLogStream::logAlert(v1, "[dk] %s@%d:AppleBCMWLANUserClient::stop\n", "Stop_Impl", 353);
}

uint64_t AppleBCMWLANUserClient::prepareImageMap(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v2 = v1[4];
  }

  else
  {
    v2 = 0;
  }

  v3 = (*(**v1 + 112))();
  return CCLogStream::logAlert(v2, "[dk] %s@%d:verifyFileSelect: %s\n", "prepareImageMap", 562, v3);
}

uint64_t AppleBCMWLANUserClient::prepareImageMap(uint64_t a1)
{
  if (*a1)
  {
    v1 = *(*a1 + 32);
  }

  else
  {
    v1 = 0;
  }

  return CCLogStream::logAlert(v1, "[dk] %s@%d: fActiveChipImage alloc fail\n", "prepareImageMap", 576);
}

uint64_t AppleBCMWLANUserClient::completeImageMap(uint64_t a1)
{
  if (*a1)
  {
    v1 = *(*a1 + 32);
  }

  else
  {
    v1 = 0;
  }

  return CCLogStream::logAlert(v1, "[dk] %s@%d: Setting '%s' property\n", "completeImageMap", 720, "FirmwareLoaded");
}

uint64_t AppleBCMWLANUserClient::completeImageMap(void **a1, uint64_t a2)
{
  v2 = a2;
  v3 = *a1;
  if (*a1)
  {
    v4 = v3[4];
  }

  else
  {
    v4 = 0;
  }

  if (*v3)
  {
    v5 = (*(**v3 + 112))(*v3, a2);
  }

  else
  {
    v5 = "no core";
  }

  return CCLogStream::logAlert(v4, "[dk] %s@%d:Fail %x: %s\n", "completeImageMap", 727, v2, v5);
}

uint64_t AppleBCMWLANProvisioningManager::add24GHzTxCal(AppleBCMWLANProvisioningManager *this)
{
  v1 = OUTLINED_FUNCTION_24_5(this);
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  v5 = v1;
  if ((v3 & 0x24) != 0)
  {
    v27 = v2[23];
    v28 = v2[24];
    v26 = v2[25];
    OUTLINED_FUNCTION_18_3("%d,%d,%d", v2);
    OUTLINED_FUNCTION_5_12();
    if (v6)
    {
      v7 = *(v5 + 48);
      v8 = OUTLINED_FUNCTION_11_8();

      return AppleBCMWLANProvisioningManager::addStringValToImage(v8, v9, v10);
    }

    else
    {
      return 3758097086;
    }
  }

  else
  {
    v11 = v2[23];
    v12 = OUTLINED_FUNCTION_4_14();
    result = AppleBCMWLANProvisioningManager::addSInt16ValToImage(v12, v13, v14, v15);
    if (!result)
    {
      v16 = *(*(v5 + 48) + 48);
      v17 = OUTLINED_FUNCTION_4_14();
      result = AppleBCMWLANProvisioningManager::addSInt16ValToImage(v17, v18, v19, v20);
      if (!result)
      {
        v21 = *(*(v5 + 48) + 50);
        v22 = OUTLINED_FUNCTION_4_14();

        return AppleBCMWLANProvisioningManager::addSInt16ValToImage(v22, v23, v24, v25);
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANProvisioningManager::add5GHzTxal(AppleBCMWLANProvisioningManager *this)
{
  v1 = OUTLINED_FUNCTION_15_7(this);
  if ((v3 & 2) == 0)
  {
    return 0;
  }

  v5 = v1;
  result = AppleBCMWLANProvisioningManager::addSInt16ValToImage(v1, "pa1lob0", *(v2 + 52), v2 + 600);
  if (!result)
  {
    v6 = *(*(v5 + 48) + 54);
    v7 = OUTLINED_FUNCTION_4_14();
    result = AppleBCMWLANProvisioningManager::addSInt16ValToImage(v7, v8, v9, v10);
    if (!result)
    {
      v11 = *(*(v5 + 48) + 56);
      v12 = OUTLINED_FUNCTION_4_14();
      result = AppleBCMWLANProvisioningManager::addSInt16ValToImage(v12, v13, v14, v15);
      if (!result)
      {
        v16 = *(*(v5 + 48) + 58);
        v17 = OUTLINED_FUNCTION_4_14();
        result = AppleBCMWLANProvisioningManager::addSInt16ValToImage(v17, v18, v19, v20);
        if (!result)
        {
          v21 = *(*(v5 + 48) + 60);
          v22 = OUTLINED_FUNCTION_4_14();
          result = AppleBCMWLANProvisioningManager::addSInt16ValToImage(v22, v23, v24, v25);
          if (!result)
          {
            v26 = *(*(v5 + 48) + 62);
            v27 = OUTLINED_FUNCTION_4_14();
            result = AppleBCMWLANProvisioningManager::addSInt16ValToImage(v27, v28, v29, v30);
            if (!result)
            {
              v31 = *(*(v5 + 48) + 64);
              v32 = OUTLINED_FUNCTION_4_14();
              result = AppleBCMWLANProvisioningManager::addSInt16ValToImage(v32, v33, v34, v35);
              if (!result)
              {
                v36 = *(*(v5 + 48) + 66);
                v37 = OUTLINED_FUNCTION_4_14();
                result = AppleBCMWLANProvisioningManager::addSInt16ValToImage(v37, v38, v39, v40);
                if (!result)
                {
                  v41 = *(*(v5 + 48) + 68);
                  v42 = OUTLINED_FUNCTION_4_14();

                  return AppleBCMWLANProvisioningManager::addSInt16ValToImage(v42, v43, v44, v45);
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

uint64_t AppleBCMWLANProvisioningManager::add24GHzMimoCal(AppleBCMWLANProvisioningManager *this)
{
  v1 = OUTLINED_FUNCTION_24_5(this);
  if ((v3 & 8) == 0)
  {
    return 0;
  }

  v6 = v1;
  if ((v3 & 0x24) == 0)
  {
    v18 = v2[47];
    v19 = OUTLINED_FUNCTION_4_14();
    v12 = AppleBCMWLANProvisioningManager::addSInt16ValToImage(v19, v20, v21, v22);
    if (!v12)
    {
      v23 = *(*(v6 + 48) + 96);
      v24 = OUTLINED_FUNCTION_4_14();
      v12 = AppleBCMWLANProvisioningManager::addSInt16ValToImage(v24, v25, v26, v27);
      if (!v12)
      {
        v28 = *(*(v6 + 48) + 98);
        v29 = OUTLINED_FUNCTION_4_14();
        v12 = AppleBCMWLANProvisioningManager::addSInt16ValToImage(v29, v30, v31, v32);
        if (!v12)
        {
          v33 = *(*(v6 + 48) + 100);
          v34 = OUTLINED_FUNCTION_4_14();
          v12 = AppleBCMWLANProvisioningManager::addSInt16ValToImage(v34, v35, v36, v37);
          if (!v12)
          {
            v38 = *(*(v6 + 48) + 102);
            v39 = OUTLINED_FUNCTION_4_14();
            v12 = AppleBCMWLANProvisioningManager::addSInt16ValToImage(v39, v40, v41, v42);
            if (!v12)
            {
              v43 = *(*(v6 + 48) + 104);
              v44 = OUTLINED_FUNCTION_4_14();

              return AppleBCMWLANProvisioningManager::addSInt16ValToImage(v44, v45, v46, v47);
            }
          }
        }
      }
    }

    return v12;
  }

  v4 = 3758097086;
  v50 = v2[47];
  v52 = v2[48];
  v48 = v2[49];
  OUTLINED_FUNCTION_18_3("%d,%d,%d", v2);
  OUTLINED_FUNCTION_5_12();
  if (!v7)
  {
    return v4;
  }

  v8 = *(v6 + 48);
  v9 = OUTLINED_FUNCTION_11_8();
  v12 = AppleBCMWLANProvisioningManager::addStringValToImage(v9, v10, v11);
  if (v12)
  {
    return v12;
  }

  v13 = *(v6 + 48);
  v51 = v13[50];
  v53 = v13[51];
  v49 = v13[52];
  OUTLINED_FUNCTION_18_3("%d,%d,%d", v13);
  OUTLINED_FUNCTION_5_12();
  if (!v7)
  {
    return v4;
  }

  v14 = *(v6 + 48);
  v15 = OUTLINED_FUNCTION_11_8();

  return AppleBCMWLANProvisioningManager::addStringValToImage(v15, v16, v17);
}

uint64_t AppleBCMWLANProvisioningManager::add5GHzMimoCal(AppleBCMWLANProvisioningManager *this)
{
  v1 = OUTLINED_FUNCTION_15_7(this);
  if ((v3 & 0x10) == 0)
  {
    return 0;
  }

  v5 = v1;
  result = AppleBCMWLANProvisioningManager::addSInt16ValToImage(v1, "pa5glw1a0", *(v2 + 106), v2 + 600);
  if (!result)
  {
    v6 = *(*(v5 + 48) + 108);
    v7 = OUTLINED_FUNCTION_4_14();
    result = AppleBCMWLANProvisioningManager::addSInt16ValToImage(v7, v8, v9, v10);
    if (!result)
    {
      v11 = *(*(v5 + 48) + 110);
      v12 = OUTLINED_FUNCTION_4_14();
      result = AppleBCMWLANProvisioningManager::addSInt16ValToImage(v12, v13, v14, v15);
      if (!result)
      {
        v16 = *(*(v5 + 48) + 112);
        v17 = OUTLINED_FUNCTION_4_14();
        result = AppleBCMWLANProvisioningManager::addSInt16ValToImage(v17, v18, v19, v20);
        if (!result)
        {
          v21 = *(*(v5 + 48) + 114);
          v22 = OUTLINED_FUNCTION_4_14();
          result = AppleBCMWLANProvisioningManager::addSInt16ValToImage(v22, v23, v24, v25);
          if (!result)
          {
            v26 = *(*(v5 + 48) + 116);
            v27 = OUTLINED_FUNCTION_4_14();
            result = AppleBCMWLANProvisioningManager::addSInt16ValToImage(v27, v28, v29, v30);
            if (!result)
            {
              v31 = *(*(v5 + 48) + 118);
              v32 = OUTLINED_FUNCTION_4_14();
              result = AppleBCMWLANProvisioningManager::addSInt16ValToImage(v32, v33, v34, v35);
              if (!result)
              {
                v36 = *(*(v5 + 48) + 120);
                v37 = OUTLINED_FUNCTION_4_14();
                result = AppleBCMWLANProvisioningManager::addSInt16ValToImage(v37, v38, v39, v40);
                if (!result)
                {
                  v41 = *(*(v5 + 48) + 122);
                  v42 = OUTLINED_FUNCTION_4_14();
                  result = AppleBCMWLANProvisioningManager::addSInt16ValToImage(v42, v43, v44, v45);
                  if (!result)
                  {
                    v46 = *(*(v5 + 48) + 124);
                    v47 = OUTLINED_FUNCTION_4_14();
                    result = AppleBCMWLANProvisioningManager::addSInt16ValToImage(v47, v48, v49, v50);
                    if (!result)
                    {
                      v51 = *(*(v5 + 48) + 126);
                      v52 = OUTLINED_FUNCTION_4_14();
                      result = AppleBCMWLANProvisioningManager::addSInt16ValToImage(v52, v53, v54, v55);
                      if (!result)
                      {
                        v56 = *(*(v5 + 48) + 128);
                        v57 = OUTLINED_FUNCTION_4_14();
                        result = AppleBCMWLANProvisioningManager::addSInt16ValToImage(v57, v58, v59, v60);
                        if (!result)
                        {
                          v61 = *(*(v5 + 48) + 130);
                          v62 = OUTLINED_FUNCTION_4_14();
                          result = AppleBCMWLANProvisioningManager::addSInt16ValToImage(v62, v63, v64, v65);
                          if (!result)
                          {
                            v66 = *(*(v5 + 48) + 132);
                            v67 = OUTLINED_FUNCTION_4_14();
                            result = AppleBCMWLANProvisioningManager::addSInt16ValToImage(v67, v68, v69, v70);
                            if (!result)
                            {
                              v71 = *(*(v5 + 48) + 134);
                              v72 = OUTLINED_FUNCTION_4_14();
                              result = AppleBCMWLANProvisioningManager::addSInt16ValToImage(v72, v73, v74, v75);
                              if (!result)
                              {
                                v76 = *(*(v5 + 48) + 136);
                                v77 = OUTLINED_FUNCTION_4_14();
                                result = AppleBCMWLANProvisioningManager::addSInt16ValToImage(v77, v78, v79, v80);
                                if (!result)
                                {
                                  v81 = *(*(v5 + 48) + 138);
                                  v82 = OUTLINED_FUNCTION_4_14();
                                  result = AppleBCMWLANProvisioningManager::addSInt16ValToImage(v82, v83, v84, v85);
                                  if (!result)
                                  {
                                    v86 = *(*(v5 + 48) + 140);
                                    v87 = OUTLINED_FUNCTION_4_14();

                                    return AppleBCMWLANProvisioningManager::addSInt16ValToImage(v87, v88, v89, v90);
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
          }
        }
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANProvisioningManager::add5GHzWithXBandCal(AppleBCMWLANProvisioningManager *this)
{
  v1 = OUTLINED_FUNCTION_15_7(this);
  if ((v3 & 4) == 0)
  {
    return 0;
  }

  v5 = v1;
  v6 = v2[35];
  v7 = v2[36];
  v8 = v2[37];
  v9 = v2[38];
  v21 = v2[45];
  v22 = v2[46];
  v19 = v2[43];
  v20 = v2[44];
  v17 = v2[41];
  v18 = v2[42];
  v15 = v2[39];
  v16 = v2[40];
  OUTLINED_FUNCTION_2_15("%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d", v2);
  OUTLINED_FUNCTION_5_12();
  if (!v10)
  {
    return 3758097086;
  }

  v11 = *(v5 + 48);
  v12 = OUTLINED_FUNCTION_11_8();

  return AppleBCMWLANProvisioningManager::addStringValToImage(v12, v13, v14);
}

uint64_t AppleBCMWLANProvisioningManager::add5GHzMimoWithXBandCal(AppleBCMWLANProvisioningManager *this)
{
  v1 = OUTLINED_FUNCTION_15_7(this);
  if ((v3 & 0x20) == 0)
  {
    return 0;
  }

  v6 = v1;
  v4 = 3758097086;
  v7 = v2[71];
  v8 = v2[72];
  v9 = v2[73];
  v10 = v2[74];
  v38 = v2[81];
  v40 = v2[82];
  v34 = v2[79];
  v36 = v2[80];
  v30 = v2[77];
  v32 = v2[78];
  v26 = v2[75];
  v28 = v2[76];
  OUTLINED_FUNCTION_2_15("%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d", v2);
  OUTLINED_FUNCTION_5_12();
  if (!v11)
  {
    return v4;
  }

  v12 = *(v6 + 48);
  v13 = OUTLINED_FUNCTION_11_8();
  v16 = AppleBCMWLANProvisioningManager::addStringValToImage(v13, v14, v15);
  if (v16)
  {
    return v16;
  }

  v17 = *(v6 + 48);
  v18 = v17[83];
  v19 = v17[84];
  v20 = v17[85];
  v21 = v17[86];
  v39 = v17[93];
  v41 = v17[94];
  v35 = v17[91];
  v37 = v17[92];
  v31 = v17[89];
  v33 = v17[90];
  v27 = v17[87];
  v29 = v17[88];
  OUTLINED_FUNCTION_2_15("%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d", v17);
  OUTLINED_FUNCTION_5_12();
  if (!v11)
  {
    return v4;
  }

  v22 = *(v6 + 48);
  v23 = OUTLINED_FUNCTION_11_8();

  return AppleBCMWLANProvisioningManager::addStringValToImage(v23, v24, v25);
}

uint64_t AppleBCMWLANProvisioningManager::add24GHzRxCal(AppleBCMWLANProvisioningManager *this)
{
  OUTLINED_FUNCTION_15_7(this);
  if ((v3 & 0x40) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_9_9();
  v6 = v5[190];
  v7 = v5[191];
  v8 = v5[192];
  v43 = v5[197];
  v46 = v5[198];
  v37 = v5[195];
  v40 = v5[196];
  v31 = v5[193];
  v34 = v5[194];
  OUTLINED_FUNCTION_12_7("%d,%d,%d,%d,%d,%d,%d,%d,%d", v5);
  OUTLINED_FUNCTION_5_12();
  if (!v9)
  {
    return v1;
  }

  v10 = *(v2 + 48);
  v11 = OUTLINED_FUNCTION_7_11();
  v14 = AppleBCMWLANProvisioningManager::addStringValToImage(v11, v12, v13);
  if (v14)
  {
    return v14;
  }

  v15 = *(v2 + 48);
  v16 = v15[199];
  v17 = v15[200];
  v18 = v15[201];
  v44 = v15[206];
  v47 = v15[207];
  v38 = v15[204];
  v41 = v15[205];
  v32 = v15[202];
  v35 = v15[203];
  OUTLINED_FUNCTION_12_7("%d,%d,%d,%d,%d,%d,%d,%d,%d", v15);
  OUTLINED_FUNCTION_5_12();
  if (!v9)
  {
    return v1;
  }

  v19 = *(v2 + 48);
  v20 = OUTLINED_FUNCTION_7_11();
  v14 = AppleBCMWLANProvisioningManager::addStringValToImage(v20, v21, v22);
  if (v14)
  {
    return v14;
  }

  v23 = *(v2 + 48);
  v24 = v23[208];
  v25 = v23[209];
  v26 = v23[210];
  v45 = v23[215];
  v48 = v23[216];
  v39 = v23[213];
  v42 = v23[214];
  v33 = v23[211];
  v36 = v23[212];
  OUTLINED_FUNCTION_12_7("%d,%d,%d,%d,%d,%d,%d,%d,%d", v23);
  OUTLINED_FUNCTION_5_12();
  if (!v9)
  {
    return v1;
  }

  v27 = *(v2 + 48);
  v28 = OUTLINED_FUNCTION_7_11();

  return AppleBCMWLANProvisioningManager::addStringValToImage(v28, v29, v30);
}

uint64_t AppleBCMWLANProvisioningManager::add5GHzRxCal(AppleBCMWLANProvisioningManager *this)
{
  OUTLINED_FUNCTION_15_7(this);
  if ((v3 & 0x80) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_9_9();
  v6 = v5[217];
  v7 = v5[218];
  v8 = v5[219];
  v9 = v5[220];
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_18_3("%d,%d,%d,%d", v10);
  OUTLINED_FUNCTION_5_12();
  if (!v11)
  {
    return v1;
  }

  v12 = *(v2 + 48);
  v13 = OUTLINED_FUNCTION_7_11();
  v16 = AppleBCMWLANProvisioningManager::addStringValToImage(v13, v14, v15);
  if (v16)
  {
    return v16;
  }

  v17 = *(v2 + 48);
  v18 = v17[221];
  v19 = v17[222];
  v20 = v17[223];
  v21 = v17[224];
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_18_3("%d,%d,%d,%d", v22);
  OUTLINED_FUNCTION_5_12();
  if (!v11)
  {
    return v1;
  }

  v23 = *(v2 + 48);
  v24 = OUTLINED_FUNCTION_7_11();
  v16 = AppleBCMWLANProvisioningManager::addStringValToImage(v24, v25, v26);
  if (v16)
  {
    return v16;
  }

  v27 = *(v2 + 48);
  v28 = v27[225];
  v29 = v27[226];
  v30 = v27[227];
  v31 = v27[228];
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_18_3("%d,%d,%d,%d", v32);
  OUTLINED_FUNCTION_5_12();
  if (!v11)
  {
    return v1;
  }

  v33 = *(v2 + 48);
  v34 = OUTLINED_FUNCTION_7_11();
  v16 = AppleBCMWLANProvisioningManager::addStringValToImage(v34, v35, v36);
  if (v16)
  {
    return v16;
  }

  v37 = *(v2 + 48);
  v38 = v37[229];
  v39 = v37[230];
  v40 = v37[231];
  v41 = v37[232];
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_18_3("%d,%d,%d,%d", v42);
  OUTLINED_FUNCTION_5_12();
  if (!v11)
  {
    return v1;
  }

  v43 = *(v2 + 48);
  v44 = OUTLINED_FUNCTION_7_11();

  return AppleBCMWLANProvisioningManager::addStringValToImage(v44, v45, v46);
}

uint64_t AppleBCMWLANProvisioningManager::add24GHzRxMimoCal(AppleBCMWLANProvisioningManager *this)
{
  if ((*(*(this + 6) + 25) & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_9_9();
  v5 = v4[233];
  v6 = v4[234];
  v7 = v4[235];
  v8 = v4[236];
  v69 = v4[267];
  v72 = v4[268];
  v63 = v4[265];
  v66 = v4[266];
  v57 = v4[263];
  v60 = v4[264];
  v51 = v4[261];
  v54 = v4[262];
  v45 = v4[241];
  v48 = v4[260];
  v39 = v4[239];
  v42 = v4[240];
  v33 = v4[237];
  v36 = v4[238];
  OUTLINED_FUNCTION_2_15("%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d", v4);
  OUTLINED_FUNCTION_5_12();
  if (!v9)
  {
    return v1;
  }

  v10 = *(v2 + 48);
  v11 = OUTLINED_FUNCTION_7_11();
  v14 = AppleBCMWLANProvisioningManager::addStringValToImage(v11, v12, v13);
  if (v14)
  {
    return v14;
  }

  v15 = *(v2 + 48);
  v16 = v15[242];
  v17 = v15[243];
  v18 = v15[244];
  v19 = v15[245];
  v70 = v15[276];
  v73 = v15[277];
  v64 = v15[274];
  v67 = v15[275];
  v58 = v15[272];
  v61 = v15[273];
  v52 = v15[270];
  v55 = v15[271];
  v46 = v15[250];
  v49 = v15[269];
  v40 = v15[248];
  v43 = v15[249];
  v34 = v15[246];
  v37 = v15[247];
  OUTLINED_FUNCTION_2_15("%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d", v15);
  OUTLINED_FUNCTION_5_12();
  if (!v9)
  {
    return v1;
  }

  v20 = *(v2 + 48);
  v21 = OUTLINED_FUNCTION_7_11();
  v14 = AppleBCMWLANProvisioningManager::addStringValToImage(v21, v22, v23);
  if (v14)
  {
    return v14;
  }

  v24 = *(v2 + 48);
  v25 = v24[251];
  v26 = v24[252];
  v27 = v24[253];
  v28 = v24[254];
  v71 = v24[285];
  v74 = v24[286];
  v65 = v24[283];
  v68 = v24[284];
  v59 = v24[281];
  v62 = v24[282];
  v53 = v24[279];
  v56 = v24[280];
  v47 = v24[259];
  v50 = v24[278];
  v41 = v24[257];
  v44 = v24[258];
  v35 = v24[255];
  v38 = v24[256];
  OUTLINED_FUNCTION_2_15("%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d", v24);
  OUTLINED_FUNCTION_5_12();
  if (!v9)
  {
    return v1;
  }

  v29 = *(v2 + 48);
  v30 = OUTLINED_FUNCTION_7_11();

  return AppleBCMWLANProvisioningManager::addStringValToImage(v30, v31, v32);
}

uint64_t AppleBCMWLANProvisioningManager::add5GHzRxMimoCal(AppleBCMWLANProvisioningManager *this)
{
  if ((*(*(this + 6) + 25) & 2) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_9_9();
  v5 = v4[287];
  v6 = v4[288];
  v7 = v4[289];
  v8 = v4[290];
  v9 = v4[303];
  v10 = v4[304];
  v11 = v4[305];
  v12 = v4[306];
  OUTLINED_FUNCTION_23_6();
  OUTLINED_FUNCTION_2_15("%d,%d,%d,%d,%d,%d,%d,%d", v13);
  OUTLINED_FUNCTION_5_12();
  if (!v14)
  {
    return v1;
  }

  v15 = *(v2 + 48);
  v16 = OUTLINED_FUNCTION_7_11();
  v19 = AppleBCMWLANProvisioningManager::addStringValToImage(v16, v17, v18);
  if (v19)
  {
    return v19;
  }

  v20 = *(v2 + 48);
  v21 = v20[291];
  v22 = v20[292];
  v23 = v20[293];
  v24 = v20[294];
  v25 = v20[307];
  v26 = v20[308];
  v27 = v20[309];
  v28 = v20[310];
  OUTLINED_FUNCTION_23_6();
  OUTLINED_FUNCTION_2_15("%d,%d,%d,%d,%d,%d,%d,%d", v29);
  OUTLINED_FUNCTION_5_12();
  if (!v14)
  {
    return v1;
  }

  v30 = *(v2 + 48);
  v31 = OUTLINED_FUNCTION_7_11();
  v19 = AppleBCMWLANProvisioningManager::addStringValToImage(v31, v32, v33);
  if (v19)
  {
    return v19;
  }

  v34 = *(v2 + 48);
  v35 = v34[295];
  v36 = v34[296];
  v37 = v34[297];
  v38 = v34[298];
  v39 = v34[311];
  v40 = v34[312];
  v41 = v34[313];
  v42 = v34[314];
  OUTLINED_FUNCTION_23_6();
  OUTLINED_FUNCTION_2_15("%d,%d,%d,%d,%d,%d,%d,%d", v43);
  OUTLINED_FUNCTION_5_12();
  if (!v14)
  {
    return v1;
  }

  v44 = *(v2 + 48);
  v45 = OUTLINED_FUNCTION_7_11();
  v19 = AppleBCMWLANProvisioningManager::addStringValToImage(v45, v46, v47);
  if (v19)
  {
    return v19;
  }

  v48 = *(v2 + 48);
  v49 = v48[299];
  v50 = v48[300];
  v51 = v48[301];
  v52 = v48[302];
  v53 = v48[315];
  v54 = v48[316];
  v55 = v48[317];
  v56 = v48[318];
  OUTLINED_FUNCTION_23_6();
  OUTLINED_FUNCTION_2_15("%d,%d,%d,%d,%d,%d,%d,%d", v57);
  OUTLINED_FUNCTION_5_12();
  if (!v14)
  {
    return v1;
  }

  v58 = *(v2 + 48);
  v59 = OUTLINED_FUNCTION_7_11();

  return AppleBCMWLANProvisioningManager::addStringValToImage(v59, v60, v61);
}

uint64_t AppleBCMWLANProvisioningManager::addRxTempCal(AppleBCMWLANProvisioningManager *this)
{
  v1 = *(this + 6);
  if ((*(v1 + 25) & 4) == 0)
  {
    return 0;
  }

  v9 = *(v1 + 319);
  OUTLINED_FUNCTION_18_3("%d", v1);
  OUTLINED_FUNCTION_5_12();
  if (!v4)
  {
    return 3758097086;
  }

  v5 = *(this + 6);
  v6 = OUTLINED_FUNCTION_11_8();

  return AppleBCMWLANProvisioningManager::addStringValToImage(v6, v7, v8);
}

uint64_t AppleBCMWLANProvisioningManager::addRxFreqgroupCal(AppleBCMWLANProvisioningManager *this)
{
  v1 = *(this + 6);
  if ((*(v1 + 26) & 1) == 0)
  {
    return 0;
  }

  v5 = 0;
  v2 = 3758097086;
  *(v1 + 736) = 0u;
  *(v1 + 752) = 0u;
  *(v1 + 704) = 0u;
  *(v1 + 720) = 0u;
  *(v1 + 672) = 0u;
  *(v1 + 688) = 0u;
  v6 = 324;
  *(v1 + 640) = 0u;
  *(v1 + 656) = 0u;
  while (1)
  {
    v7 = snprintf((*(this + 6) + v5 + 640), 128 - v5, "0x%02x,", *(*(this + 6) + v6));
    if (v7 < 1 || 128 - v5 <= v7)
    {
      break;
    }

    ++v6;
    v5 += v7;
    if (v6 == 331)
    {
      *(*(this + 6) + v5 - 1 + 640) = 0;
      if (v5 - 128 < 0xFFFFFF81)
      {
        return v2;
      }

      v9 = *(this + 6);
      v10 = OUTLINED_FUNCTION_11_8();

      return AppleBCMWLANProvisioningManager::addStringValToImage(v10, v11, v12);
    }
  }

  return v2;
}

uint64_t AppleBCMWLANProvisioningManager::addRx4350Cal(AppleBCMWLANProvisioningManager *this)
{
  OUTLINED_FUNCTION_24_5(this);
  if ((v2 & 0x1000) != 0)
  {
    v3 = OUTLINED_FUNCTION_6_8();
    result = AppleBCMWLANProvisioningManager::prepareNVRAMString(v3, v4, v5, v6, 0x10u, v7);
    if (result)
    {
      return result;
    }

    v9 = *(this + 6);
    v10 = OUTLINED_FUNCTION_6_8();
    result = AppleBCMWLANProvisioningManager::prepareNVRAMString(v10, v11, v12, v13, 0x10u, v14);
    if (result)
    {
      return result;
    }

    v15 = *(this + 6);
    v16 = OUTLINED_FUNCTION_6_8();
    result = AppleBCMWLANProvisioningManager::prepareNVRAMString(v16, v17, v18, v19, 0x10u, v20);
    if (result)
    {
      return result;
    }

    v21 = *(this + 6);
    v22 = OUTLINED_FUNCTION_6_8();
    result = AppleBCMWLANProvisioningManager::prepareNVRAMString(v22, v23, v24, v25, 0x10u, v26);
    if (result)
    {
      return result;
    }

    v27 = *(this + 6);
    v28 = OUTLINED_FUNCTION_6_8();
    result = AppleBCMWLANProvisioningManager::prepareNVRAMString(v28, v29, v30, v31, 0x10u, v32);
    if (result)
    {
      return result;
    }

    v2 = *(*(this + 6) + 24);
  }

  if ((v2 & 0x2000) == 0)
  {
    return 0;
  }

  v33 = OUTLINED_FUNCTION_6_8();
  result = AppleBCMWLANProvisioningManager::prepareNVRAMString(v33, v34, v35, v36, 0x18u, v37);
  if (!result)
  {
    v38 = *(this + 6);
    v39 = OUTLINED_FUNCTION_6_8();
    result = AppleBCMWLANProvisioningManager::prepareNVRAMString(v39, v40, v41, v42, 0x18u, v43);
    if (!result)
    {
      v44 = *(this + 6);
      v45 = OUTLINED_FUNCTION_6_8();
      result = AppleBCMWLANProvisioningManager::prepareNVRAMString(v45, v46, v47, v48, 0x18u, v49);
      if (!result)
      {
        v50 = *(this + 6);
        v51 = OUTLINED_FUNCTION_6_8();

        return AppleBCMWLANProvisioningManager::prepareNVRAMString(v51, v52, v53, v54, 0x18u, v55);
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANProvisioningManager::addRx4345Cal(AppleBCMWLANProvisioningManager *this)
{
  OUTLINED_FUNCTION_24_5(this);
  if ((v2 & 0x4000) != 0)
  {
    v3 = OUTLINED_FUNCTION_6_8();
    result = AppleBCMWLANProvisioningManager::prepareNVRAMString(v3, v4, v5, v6, 8u, v7);
    if (result)
    {
      return result;
    }

    v9 = *(this + 6);
    v10 = OUTLINED_FUNCTION_6_8();
    result = AppleBCMWLANProvisioningManager::prepareNVRAMString(v10, v11, v12, v13, 8u, v14);
    if (result)
    {
      return result;
    }

    v15 = *(this + 6);
    v16 = OUTLINED_FUNCTION_6_8();
    result = AppleBCMWLANProvisioningManager::prepareNVRAMString(v16, v17, v18, v19, 8u, v20);
    if (result)
    {
      return result;
    }

    v21 = *(this + 6);
    v22 = OUTLINED_FUNCTION_6_8();
    result = AppleBCMWLANProvisioningManager::prepareNVRAMString(v22, v23, v24, v25, 8u, v26);
    if (result)
    {
      return result;
    }

    v27 = *(this + 6);
    v28 = OUTLINED_FUNCTION_6_8();
    result = AppleBCMWLANProvisioningManager::prepareNVRAMString(v28, v29, v30, v31, 8u, v32);
    if (result)
    {
      return result;
    }

    v2 = *(*(this + 6) + 24);
  }

  if ((v2 & 0x8000) == 0)
  {
    return 0;
  }

  v33 = OUTLINED_FUNCTION_6_8();
  result = AppleBCMWLANProvisioningManager::prepareNVRAMString(v33, v34, v35, v36, 0xCu, v37);
  if (!result)
  {
    v38 = *(this + 6);
    v39 = OUTLINED_FUNCTION_6_8();
    result = AppleBCMWLANProvisioningManager::prepareNVRAMString(v39, v40, v41, v42, 0xCu, v43);
    if (!result)
    {
      v44 = *(this + 6);
      v45 = OUTLINED_FUNCTION_6_8();
      result = AppleBCMWLANProvisioningManager::prepareNVRAMString(v45, v46, v47, v48, 0xCu, v49);
      if (!result)
      {
        v50 = *(this + 6);
        v51 = OUTLINED_FUNCTION_6_8();

        return AppleBCMWLANProvisioningManager::prepareNVRAMString(v51, v52, v53, v54, 0xCu, v55);
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANProvisioningManager::generateProvisionedNVRAMParameters(AppleBCMWLANProvisioningManager *a1, IO80211Buffer *this, void *a3)
{
  v6 = a3[2];
  *(*(a1 + 6) + 600) = a3[3];
  *(*(a1 + 6) + 608) = IO80211Buffer::getBytesNoCopy(this, v6, *(*(a1 + 6) + 600));
  *(*(a1 + 6) + 616) = 0;
  v7 = a3[4];
  v8 = a3[5];
  *(*(a1 + 6) + 632) = v8;
  *(*(a1 + 6) + 624) = IO80211Buffer::getBytesNoCopy(this, v7, v8);
  v9 = AppleBCMWLANProvisioningManager::addBaudRate(a1);
  if (v9)
  {
    return v9;
  }

  v9 = AppleBCMWLANProvisioningManager::add24GHzTxCal(a1);
  if (v9)
  {
    return v9;
  }

  v9 = AppleBCMWLANProvisioningManager::add5GHzTxal(a1);
  if (v9)
  {
    return v9;
  }

  v9 = AppleBCMWLANProvisioningManager::add24GHzMimoCal(a1);
  if (v9)
  {
    return v9;
  }

  v9 = AppleBCMWLANProvisioningManager::add5GHzMimoCal(a1);
  if (v9)
  {
    return v9;
  }

  v9 = AppleBCMWLANProvisioningManager::add5GHzWithXBandCal(a1);
  if (v9)
  {
    return v9;
  }

  v9 = AppleBCMWLANProvisioningManager::add5GHzMimoWithXBandCal(a1);
  if (v9)
  {
    return v9;
  }

  v9 = AppleBCMWLANProvisioningManager::add24GHzRxCal(a1);
  if (v9)
  {
    return v9;
  }

  v9 = AppleBCMWLANProvisioningManager::add5GHzRxCal(a1);
  if (v9)
  {
    return v9;
  }

  if ((*(*(a1 + 6) + 597) & 1) == 0)
  {
    v9 = AppleBCMWLANProvisioningManager::add24GHzRxMimoCal(a1);
    if (v9)
    {
      return v9;
    }

    v9 = AppleBCMWLANProvisioningManager::add5GHzRxMimoCal(a1);
    if (v9)
    {
      return v9;
    }
  }

  v9 = AppleBCMWLANProvisioningManager::addRxTempCal(a1);
  if (v9)
  {
    return v9;
  }

  v9 = AppleBCMWLANProvisioningManager::addRxFreqgroupCal(a1);
  if (v9)
  {
    return v9;
  }

  v9 = AppleBCMWLANProvisioningManager::addRx4350Cal(a1);
  if (v9)
  {
    return v9;
  }

  v9 = AppleBCMWLANProvisioningManager::addRx4345Cal(a1);
  if (v9)
  {
    return v9;
  }

  v10 = *(a1 + 6);
  v11 = *(v10 + 616);
  v12 = *(v10 + 600);
  v13 = v12 - v11;
  if (v12 >= v11)
  {
    v17 = snprintf((*(v10 + 608) + v11), v13, "macaddr=%02x:%02x:%02x:%02x:%02x:%02x", *(v10 + 28), *(v10 + 29), *(v10 + 30), *(v10 + 31), *(v10 + 32), *(v10 + 33));
    if ((v17 & 0x80000000) != 0 || v17 > v13)
    {
      v14 = 3758097115;
      if (OUTLINED_FUNCTION_22_3() && CCLogStream::shouldLog())
      {
        v22 = OUTLINED_FUNCTION_22_3();
        CCLogStream::logAlert(v22, "[dk] %s@%d: Error, can't fit MAC Address into vars (printed %d)\n");
      }
    }

    else
    {
      *(*(a1 + 6) + 616) += v17 + 1;
      v18 = *(*(a1 + 6) + 616);
      a3[3] = v18;
      v19 = *(*(a1 + 6) + 632);
      a3[5] = v19;
      BytesNoCopy = IO80211Buffer::getBytesNoCopy(this, a3[2] + v18, v19);
      v21 = IO80211Buffer::getBytesNoCopy(this, a3[4], v19);
      if (BytesNoCopy && v21)
      {
        memmove(BytesNoCopy, v21, v19);
        v14 = 0;
        a3[4] = a3[3] + a3[2];
      }

      else
      {
        v14 = 3758097097;
        if (*(*(a1 + 6) + 8) && CCLogStream::shouldLog())
        {
          v24 = OUTLINED_FUNCTION_22_3();
          CCLogStream::logCrit(v24, "[dk] %s@%d: Invalid buffer address for nvram file copy\n", "generateProvisionedNVRAMParameters", 2485);
        }
      }
    }
  }

  else
  {
    v14 = 3758097115;
    if (*(v10 + 8) && CCLogStream::shouldLog())
    {
      v15 = OUTLINED_FUNCTION_22_3();
      v25 = *(v16 + 616);
      v26 = *(v16 + 600);
      CCLogStream::logAlert(v15, "[dk] %s@%d:Error, the total length of vars data (%llu) is longer than the max supported (%llu)\n");
    }
  }

  return v14;
}

uint64_t AppleBCMWLANProvisioningManager::normalizeNVRAM(uint64_t a1, IO80211Buffer *a2, unint64_t *a3)
{
  v6 = 3758097086;
  v26 = 0;
  IOParseBootArgNumber("wlan.debug.enable", &v26, 1);
  v7 = a3[5] + 2;
  v8 = IOMallocZeroData();
  v9 = a3[5] + 2;
  v10 = IOMallocZeroData();
  if (v10)
  {
    v11 = v10;
    if (!v8)
    {
      IOFreeData();
      return 3758097085;
    }

    if (a2)
    {
      BytesNoCopy = IO80211Buffer::getBytesNoCopy(a2, a3[4], a3[5]);
      v13 = a3[5];
      if (v13 >= 3)
      {
        if (v7 >= v13 && v9 >= v13)
        {
          v15 = BytesNoCopy;
          v16 = memmove(v11, BytesNoCopy, a3[5]);
          NormalizedNVRam = AppleBCMWLANProvisioningManager::getNormalizedNVRam(v16, v8, v7, v11, v9);
          if (NormalizedNVRam < 3 || NormalizedNVRam > v13 + 2)
          {
            if (OUTLINED_FUNCTION_14_7() && CCLogStream::shouldLog())
            {
              v23 = OUTLINED_FUNCTION_14_7();
              CCLogStream::logEmergency(v23, "[dk] %s@%d: Failed to normalize NVRAM: nvram length[%zu]\n", "normalizeNVRAM", 2795, v13);
            }
          }

          else
          {
            v19 = NormalizedNVRam;
            memmove(v15, v8, NormalizedNVRam);
            v6 = 0;
            a3[5] = v19;
            if (v26 != 1)
            {
LABEL_24:
              IOFreeData();
LABEL_26:
              IOFreeData();
              return v6;
            }
          }
        }

        else
        {
          v6 = 3758097115;
        }
      }
    }

    else
    {
      v6 = 3758097090;
    }

    removePropertyHelper(*(*(a1 + 48) + 16), "NVRAM: source");
    v20 = OSData::withBytes(v11, v9);
    if ((OUTLINED_FUNCTION_19_5(v20) & 1) == 0 && OUTLINED_FUNCTION_14_7() && CCLogStream::shouldLog())
    {
      v24 = OUTLINED_FUNCTION_14_7();
      CCLogStream::logAlert(v24, "[dk] %s@%d:Unable to set %s property\n", "normalizeNVRAM", 2813, "NVRAM: source");
    }

    (*(*a3 + 16))(a3);
    removePropertyHelper(*(*(a1 + 48) + 16), "NVRAM: normalized");
    v21 = OSData::withBytes(v8, v7);
    if ((OUTLINED_FUNCTION_19_5(v21) & 1) == 0 && OUTLINED_FUNCTION_14_7() && CCLogStream::shouldLog())
    {
      v25 = OUTLINED_FUNCTION_14_7();
      CCLogStream::logAlert(v25, "[dk] %s@%d:Unable to set %s property\n", "normalizeNVRAM", 2821, "NVRAM: normalized");
    }

    (*(*a3 + 16))(a3);
    goto LABEL_24;
  }

  v6 = 3758097085;
  if (v8)
  {
    goto LABEL_26;
  }

  return v6;
}

uint64_t AppleBCMWLANProvisioningManager::processProvisionedData(uint64_t ***a1)
{
  v2 = OUTLINED_FUNCTION_20_2(a1);
  (*(v3 + 104))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v1, "[dk] %s@%d: Unable to gather OTP provisioning data, %s\n", v5, v6, v7);
}

{
  v2 = OUTLINED_FUNCTION_20_2(a1);
  (*(v3 + 104))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v1, "[dk] %s@%d: Invalid provisioning data, %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANProvisioningManager::parseOTPTuple(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_1_16(a1);
  return CCLogStream::logNoticeIf(v1, 0x40000uLL, "[dk] %s@%d: BCOM Private 0x%02X, size %u.\n", "parseOTPTuple", 385, 128, v2);
}

{
  v1 = OUTLINED_FUNCTION_1_16(a1);
  return CCLogStream::logNoticeIf(v1, 0x40000uLL, "[dk] %s@%d: Function Extension 0x%02X, size %u.\n", "parseOTPTuple", 381, 34, v2);
}

uint64_t AppleBCMWLANProvisioningManager::generateData(uint64_t a1, unsigned __int8 *a2)
{
  OUTLINED_FUNCTION_1_17(a1, a2);
  v3 = v2[5];
  v4 = v2[6];
  v5 = v2[7];
  v6 = v2[8];
  v7 = v2[9];
  OUTLINED_FUNCTION_24_4();
  return CCLogStream::logAlert(v8, "[dk] %s@%d: No Provisioned WiFi Mac address, generating address: %02x:%02x:%02x:%02x:%02x:%02x.\n", "generateData", 1410, v10, v11, v12, v13, v14, v15);
}

{
  OUTLINED_FUNCTION_1_17(a1, a2);
  v3 = v2[11];
  v4 = v2[12];
  v5 = v2[13];
  v6 = v2[14];
  v7 = v2[15];
  OUTLINED_FUNCTION_24_4();
  return CCLogStream::logNoticeIf(v8, 0x80uLL, "[dk] %s@%d:Generating a BT addr %02x:%02x:%02x:%02x:%02x:%02x\n", "generateData", 1420, v10, v11, v12, v13, v14, v15);
}

uint64_t AppleBCMWLANProvisioningManager::parseFunctionExtension(uint64_t a1, unsigned __int8 *a2)
{
  v2 = OUTLINED_FUNCTION_1_17(a1, a2);
  v9 = v3[5];
  v10 = v3[6];
  v7 = v3[3];
  v8 = v3[4];
  v6 = v3[2];
  return OUTLINED_FUNCTION_13_7(v2, v4, "[dk] %s@%d:WiFi MAC Address in FuncE LAN_NID 0x%02X: %02x:%02x:%02x:%02x:%02x:%02x\n");
}

uint64_t AppleBCMWLANProvisioningManager::parseFunctionExtension(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_1_16(a1);
  return CCLogStream::logWarnIf(v1, 0x40000uLL, "[dk] %s@%d:Warning, invalid WiFi MAC data in FuncE LAN_NID 0x%02X\n", "parseFunctionExtension", 451, 4);
}

{
  v1 = OUTLINED_FUNCTION_1_16(a1);
  return CCLogStream::logCrit(v1, "[dk] %s@%d: Error! No space for FuncE type.\n", "parseFunctionExtension", 427);
}

uint64_t AppleBCMWLANProvisioningManager::parseApplePrivateCIS(uint64_t a1, unsigned __int8 *a2)
{
  OUTLINED_FUNCTION_0_19(a1, a2);
  OUTLINED_FUNCTION_17_4();
  return OUTLINED_FUNCTION_13_7(v2, v3, "[dk] %s@%d:@%llu - Ethernet MAC Address in tuple 0x%02X: %02x:%02x:%02x:%02x:%02x:%02x\n");
}

{
  OUTLINED_FUNCTION_0_19(a1, a2);
  OUTLINED_FUNCTION_17_4();
  return OUTLINED_FUNCTION_13_7(v2, v3, "[dk] %s@%d:@%llu - BT MAC Address in tuple 0x%02X: %02x:%02x:%02x:%02x:%02x:%02x\n");
}

{
  OUTLINED_FUNCTION_0_19(a1, a2);
  OUTLINED_FUNCTION_17_4();
  return OUTLINED_FUNCTION_13_7(v2, v3, "[dk] %s@%d:@%lu - WiFi MAC Address in tuple 0x%02X: %02x:%02x:%02x:%02x:%02x:%02x\n");
}

uint64_t AppleBCMWLANProvisioningManager::parseApplePrivateCIS(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_1_16(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Unable to set kModuleSerialNumber property\n", "parseApplePrivateCIS", 639);
}

{
  v1 = OUTLINED_FUNCTION_1_16(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:No memory!!\n", "parseApplePrivateCIS", 636);
}

uint64_t AppleBCMWLANProvisioningManager::gatherBaudRate(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_1_16(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d: WARNING, Wifi 'serial baud rate' does not exist in the device tree\n", "gatherBaudRate", 849);
}

{
  v1 = OUTLINED_FUNCTION_1_16(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:WiFi 'serial baud rate' is invalid!\n ", "gatherBaudRate", 842);
}

{
  v1 = OUTLINED_FUNCTION_1_16(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d: WiFi 'serial baud rate' is the wrong size!\n", "gatherBaudRate", 845);
}

uint64_t AppleBCMWLANProvisioningManager::gatherMacAddress(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_1_16(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d: WARNING, Wifi 'local-mac-address' does not exist in the device tree\n", "gatherMacAddress", 875);
}

{
  v1 = OUTLINED_FUNCTION_1_16(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d: WiFi 'local-mac-address' is the wrong size!\n", "gatherMacAddress", 871);
}

{
  v1 = OUTLINED_FUNCTION_1_16(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:WiFi 'local-mac-address' is invalid!\n ", "gatherMacAddress", 868);
}

uint64_t AppleBCMWLANProvisioningManager::gatherMacAddress(uint64_t a1, unsigned __int8 *a2)
{
  OUTLINED_FUNCTION_0_19(a1, a2);
  OUTLINED_FUNCTION_24_4();
  return CCLogStream::logNoticeIf(v2, 0x80uLL, "[dk] %s@%d:WiFi Mac Addr in device tree: %02x:%02x:%02x:%02x:%02x:%02x\n", "gatherMacAddress", 862, v4, v5, v6, v7, v8, v9);
}

uint64_t AppleBCMWLANProvisioningManager::gather24GHzTxCal(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_1_16(a1);
  return CCLogStream::logNoticeIf(v1, 0x80uLL, "[dk] %s@%d:No 'tx-calibration-2.4' property in device tree.\n", "gather24GHzTxCal", 922);
}

{
  v1 = OUTLINED_FUNCTION_1_16(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Invalid 2.4GHz MIMO calibration data in device tree.\n", "gather24GHzTxCal", 915);
}

{
  v1 = OUTLINED_FUNCTION_1_16(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Invalid 2.4GHz calibration data in device tree.\n", "gather24GHzTxCal", 896);
}

uint64_t AppleBCMWLANProvisioningManager::gather24GHzTxCal(uint64_t a1, const OSData **a2)
{
  OUTLINED_FUNCTION_8_11(a1, a2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v2, "[dk] %s@%d:2.4GHz calibration data in device tree has wrong length %u.\n", v4, v5, v6);
}

uint64_t AppleBCMWLANProvisioningManager::gather50GHzTxCal(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_1_16(a1);
  return CCLogStream::logNoticeIf(v1, 0x80uLL, "[dk] %s@%d:No 'tx-calibration-5.0' property in device tree.\n", "gather50GHzTxCal", 1010);
}

{
  v1 = OUTLINED_FUNCTION_1_16(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Invalid 5GHz MIMO with X Band calibration data in device tree.\n", "gather50GHzTxCal", 1003);
}

{
  v1 = OUTLINED_FUNCTION_1_16(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Invalid 5GHz MIMO with X Band calibration data in device tree.\n", "gather50GHzTxCal", 993);
}

{
  v1 = OUTLINED_FUNCTION_1_16(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Invalid 5GHz MIMO calibration data in device tree.\n", "gather50GHzTxCal", 983);
}

{
  v1 = OUTLINED_FUNCTION_1_16(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Invalid 5GHz calibration data in device tree.\n", "gather50GHzTxCal", 952);
}

uint64_t AppleBCMWLANProvisioningManager::gather50GHzTxCal(uint64_t a1, const OSData **a2)
{
  OUTLINED_FUNCTION_8_11(a1, a2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v2, "[dk] %s@%d:5GHz calibration data in device tree has wrong length %u.\n", v4, v5, v6);
}

uint64_t AppleBCMWLANProvisioningManager::gather24GHzRxCal(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_1_16(a1);
  return CCLogStream::logNoticeIf(v1, 0x80uLL, "[dk] %s@%d:No 'rx-calibration' in device tree.\n", "gather24GHzRxCal", 1172);
}

{
  v1 = OUTLINED_FUNCTION_1_16(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Invalid rx-calibration-2.4 in device tree.\n", "gather24GHzRxCal", 1164);
}

{
  v1 = OUTLINED_FUNCTION_1_16(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Invalid rx-calibration-2.4 in device tree.\n", "gather24GHzRxCal", 1152);
}

{
  v1 = OUTLINED_FUNCTION_1_16(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Invalid RSSI Rx 2.4GHz MIMO calibration data in device tree.\n", "gather24GHzRxCal", 1140);
}

{
  v1 = OUTLINED_FUNCTION_1_16(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Invalid RSSI Rx 2.4GHz calibration data in device tree.\n", "gather24GHzRxCal", 1062);
}

uint64_t AppleBCMWLANProvisioningManager::gather24GHzRxCal(uint64_t a1, const OSData **a2)
{
  OUTLINED_FUNCTION_8_11(a1, a2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v2, "[dk] %s@%d:RSSI Rx 2.4GHz calibration data in device tree has wrong length %u.\n", v4, v5, v6);
}

uint64_t AppleBCMWLANProvisioningManager::gather50GHzRxCal(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_1_16(a1);
  return CCLogStream::logNoticeIf(v1, 0x80uLL, "[dk] %s@%d:No 'rx-calibration-5.0' in device tree.\n", "gather50GHzRxCal", 1302);
}

{
  v1 = OUTLINED_FUNCTION_1_16(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Invalid rx-calibration-5.0 in device tree.\n", "gather50GHzRxCal", 1294);
}

{
  v1 = OUTLINED_FUNCTION_1_16(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Invalid rx-calibration-5.0 in device tree.\n", "gather50GHzRxCal", 1282);
}

{
  v1 = OUTLINED_FUNCTION_1_16(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Invalid RSSI Rx 5GHz MIMO calibration data in device tree.\n", "gather50GHzRxCal", 1270);
}

{
  v1 = OUTLINED_FUNCTION_1_16(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Invalid RSSI Rx 5GHz calibration data in device tree.\n", "gather50GHzRxCal", 1210);
}

uint64_t AppleBCMWLANProvisioningManager::gather50GHzRxCal(uint64_t a1, const OSData **a2)
{
  OUTLINED_FUNCTION_8_11(a1, a2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v2, "[dk] %s@%d:RSSI Rx 5GHz calibration data in device tree has wrong length %u.\n", v4, v5, v6);
}

uint64_t AppleBCMWLANProvisioningManager::gatherRxTempCal(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_1_16(a1);
  return CCLogStream::logNoticeIf(v1, 0x80uLL, "[dk] %s@%d:No 'rx-calibration-temp' in device tree.\n", "gatherRxTempCal", 1329);
}

{
  v1 = OUTLINED_FUNCTION_1_16(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Invalid Rx Calibration temperature in device tree.\n", "gatherRxTempCal", 1322);
}

uint64_t AppleBCMWLANProvisioningManager::gatherRxTempCal(uint64_t a1, const OSData **a2)
{
  OUTLINED_FUNCTION_8_11(a1, a2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v2, "[dk] %s@%d:Rx calibration termperature in device tree has wrong length %u.\n", v4, v5, v6);
}

uint64_t AppleBCMWLANProvisioningManager::gatherRxFreqGroup2G(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_1_16(a1);
  return CCLogStream::logNoticeIf(v1, 0x80uLL, "[dk] %s@%d:No 'freq-group-2g-calibration' in device tree.\n", "gatherRxFreqGroup2G", 1388);
}

{
  v1 = OUTLINED_FUNCTION_1_16(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Invalid freq-group-2g-calibration in device tree.\n", "gatherRxFreqGroup2G", 1381);
}

uint64_t AppleBCMWLANProvisioningManager::gatherRxFreqGroup2G(uint64_t a1, const OSData **a2)
{
  OUTLINED_FUNCTION_8_11(a1, a2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v2, "[dk] %s@%d:freq-group-2g-calibration in device tree has wrong length %u.\n", v4, v5, v6);
}

uint64_t AppleBCMWLANChipImage::prepareMapping(uint64_t a1, OSMappedFile **a2)
{
  v2 = 3758097090;
  if (!*a2 || !a2[1] || !a2[2] || !a2[3])
  {
    return v2;
  }

  BytesNoCopy = IO80211Buffer::getBytesNoCopy(*(*(a1 + 48) + 8), *(*(a1 + 48) + 24), *(*(a1 + 48) + 32));
  v6 = *(a1 + 48);
  if (!BytesNoCopy)
  {
    if (!OUTLINED_FUNCTION_5_13(v6) || !CCLogStream::shouldLog())
    {
      return a2;
    }

    v9 = OUTLINED_FUNCTION_2_16();
    CCLogStream::logAlert(v9, "[dk] %s@%d: Failed to find dstFirmwareFile\n");
    return 3758097096;
  }

  v7 = BytesNoCopy;
  v8 = *(v6 + 32);
  if (v8 < OSMappedFile::size(a2[1]))
  {
    if (OUTLINED_FUNCTION_2_16() && CCLogStream::shouldLog())
    {
      OUTLINED_FUNCTION_4_15();
      OSMappedFile::size(a2[1]);
      v54 = *(*(a1 + 48) + 32);
      CCLogStream::logAlert(v7, "[dk] %s@%d:user space set Firmware file too big %zu, expected %lld\n");
    }

    return v2;
  }

  if (!OSMappedFile::data(a2[1]))
  {
    return v2;
  }

  OSMappedFile::data(a2[1]);
  v10 = OSMappedFile::size(a2[1]);
  OUTLINED_FUNCTION_3_11(v10);
  v11 = OUTLINED_FUNCTION_6_9();
  v13 = IO80211Buffer::getBytesNoCopy(v11, *(v12 + 56), *(v12 + 64));
  v14 = *(a1 + 48);
  if (!v13)
  {
    if (!OUTLINED_FUNCTION_5_13(v14) || !CCLogStream::shouldLog())
    {
      return a2;
    }

    v17 = OUTLINED_FUNCTION_2_16();
    CCLogStream::logAlert(v17, "[dk] %s@%d: Failed to find dstNVRAMFile\n");
    return 3758097096;
  }

  v15 = v13;
  v16 = *(v14 + 64);
  if (v16 > OSMappedFile::size(*a2))
  {
    *(*(a1 + 48) + 64) = OSMappedFile::size(*a2);
    goto LABEL_25;
  }

  v18 = *(*(a1 + 48) + 64);
  if (v18 >= OSMappedFile::size(*a2))
  {
LABEL_25:
    if (!OSMappedFile::data(*a2))
    {
      return v2;
    }

    OSMappedFile::data(*a2);
    v19 = OSMappedFile::size(*a2);
    OUTLINED_FUNCTION_3_11(v19);
    v20 = OUTLINED_FUNCTION_6_9();
    v22 = IO80211Buffer::getBytesNoCopy(v20, *(v21 + 104), *(v21 + 112));
    v23 = *(a1 + 48);
    if (v22)
    {
      v24 = v22;
      v25 = *(v23 + 112);
      if (v25 < OSMappedFile::size(a2[2]))
      {
        if (OUTLINED_FUNCTION_2_16() && CCLogStream::shouldLog())
        {
          OUTLINED_FUNCTION_4_15();
          OSMappedFile::size(a2[2]);
          v56 = *(*(a1 + 48) + 112);
          CCLogStream::logAlert(v24, "[dk] %s@%d:user space set Reg file too big %zu, expected %lld\n");
        }

        return v2;
      }

      if (!OSMappedFile::data(a2[2]))
      {
        return v2;
      }

      OSMappedFile::data(a2[2]);
      v27 = OSMappedFile::size(a2[2]);
      OUTLINED_FUNCTION_3_11(v27);
      v28 = OUTLINED_FUNCTION_6_9();
      v30 = IO80211Buffer::getBytesNoCopy(v28, *(v29 + 120), *(v29 + 128));
      v31 = *(a1 + 48);
      if (!v30)
      {
        if (OUTLINED_FUNCTION_5_13(v31) && CCLogStream::shouldLog())
        {
          v53 = OUTLINED_FUNCTION_2_16();
          CCLogStream::logAlert(v53, "[dk] %s@%d: Failed to find dstTXCapFile\n");
          return 3758097096;
        }

        return a2;
      }

      v32 = v30;
      v33 = *(v31 + 128);
      if (v33 < OSMappedFile::size(a2[3]))
      {
        if (OUTLINED_FUNCTION_2_16() && CCLogStream::shouldLog())
        {
          OUTLINED_FUNCTION_4_15();
          OSMappedFile::size(a2[3]);
          v57 = *(*(a1 + 48) + 128);
          CCLogStream::logAlert(v32, "[dk] %s@%d:user space set TxCap Table too big %zu, expected %lld\n");
        }

        return v2;
      }

      if (!OSMappedFile::data(a2[3]))
      {
        return v2;
      }

      OSMappedFile::data(a2[3]);
      v35 = OSMappedFile::size(a2[3]);
      OUTLINED_FUNCTION_3_11(v35);
      if (!a2[4])
      {
LABEL_56:
        if (!a2[5])
        {
          return 0;
        }

        v44 = OUTLINED_FUNCTION_6_9();
        v46 = IO80211Buffer::getBytesNoCopy(v44, *(v45 + 88), *(v45 + 96));
        v47 = *(a1 + 48);
        if (v46)
        {
          v48 = v46;
          v49 = *(v47 + 96);
          if (v49 < OSMappedFile::size(a2[5]))
          {
            if (OUTLINED_FUNCTION_2_16() && CCLogStream::shouldLog())
            {
              OUTLINED_FUNCTION_4_15();
              OSMappedFile::size(a2[5]);
              v59 = *(*(a1 + 48) + 96);
              CCLogStream::logAlert(v48, "[dk] %s@%d:user space set Platcfg file too big %zu, expected %lld\n");
            }

            return v2;
          }

          if (!OSMappedFile::data(a2[5]))
          {
            return v2;
          }

          v51 = OSMappedFile::data(a2[5]);
          v52 = OSMappedFile::size(a2[5]);
          memcpy(v48, v51, v52);
          return 0;
        }

        if (OUTLINED_FUNCTION_5_13(v47) && CCLogStream::shouldLog())
        {
          v50 = OUTLINED_FUNCTION_2_16();
          CCLogStream::logAlert(v50, "[dk] %s@%d: Failed to find dstPlatcfgFile\n");
          return 3758097096;
        }

        return a2;
      }

      v36 = OUTLINED_FUNCTION_6_9();
      v38 = IO80211Buffer::getBytesNoCopy(v36, *(v37 + 72), *(v37 + 80));
      v39 = *(a1 + 48);
      if (v38)
      {
        v40 = v38;
        v41 = *(v39 + 80);
        if (v41 < OSMappedFile::size(a2[4]))
        {
          if (OUTLINED_FUNCTION_2_16() && CCLogStream::shouldLog())
          {
            OUTLINED_FUNCTION_4_15();
            OSMappedFile::size(a2[4]);
            v58 = *(*(a1 + 48) + 80);
            CCLogStream::logAlert(v40, "[dk] %s@%d:user space set Signature file too big %zu, expected %lld\n");
          }

          return v2;
        }

        if (!OSMappedFile::data(a2[4]))
        {
          return v2;
        }

        OSMappedFile::data(a2[4]);
        v43 = OSMappedFile::size(a2[4]);
        OUTLINED_FUNCTION_3_11(v43);
        goto LABEL_56;
      }

      if (!OUTLINED_FUNCTION_5_13(v39) || !CCLogStream::shouldLog())
      {
        return a2;
      }

      v42 = OUTLINED_FUNCTION_2_16();
      CCLogStream::logAlert(v42, "[dk] %s@%d: Failed to find dstSignatureFule\n");
    }

    else
    {
      if (!OUTLINED_FUNCTION_5_13(v23) || !CCLogStream::shouldLog())
      {
        return a2;
      }

      v26 = OUTLINED_FUNCTION_2_16();
      CCLogStream::logAlert(v26, "[dk] %s@%d: Failed to find dstRegulatoryFile\n");
    }

    return 3758097096;
  }

  if (OUTLINED_FUNCTION_2_16() && CCLogStream::shouldLog())
  {
    OUTLINED_FUNCTION_4_15();
    OSMappedFile::size(*a2);
    v55 = *(*(a1 + 48) + 64);
    CCLogStream::logAlert(v15, "[dk] %s@%d:user space set NVRAM file too big %zu, expected %lld\n");
  }

  return v2;
}

uint64_t AppleBCMWLANChipImage::initWithRange(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_11_5(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Failed to create buffer memory map\n", "initWithRange", 164);
}

{
  v1 = OUTLINED_FUNCTION_11_5(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Failed to create fImageBD\n", "initWithRange", 170);
}

uint64_t AppleBCMWLANChipImage::prepareMapping(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_11_5(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Failed to create fFirmwareMap\n", "prepareMapping", 300);
}

{
  v1 = OUTLINED_FUNCTION_11_5(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Failed to create fNVRAMMap\n", "prepareMapping", 308);
}

{
  v1 = OUTLINED_FUNCTION_11_5(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Failed to create fSignatureMap\n", "prepareMapping", 318);
}

{
  v1 = OUTLINED_FUNCTION_11_5(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Failed to create fPlatcfgMap\n", "prepareMapping", 327);
}

{
  v1 = OUTLINED_FUNCTION_11_5(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Failed to create fRegTable\n", "prepareMapping", 338);
}

{
  v1 = OUTLINED_FUNCTION_11_5(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Failed to create fTxCapTable\n", "prepareMapping", 348);
}

uint64_t AppleBCMWLANChipImage::completeMapping(uint64_t **a1, uint64_t *a2)
{
  v2 = OUTLINED_FUNCTION_0_20(a1, a2);
  return CCLogStream::logAlert(v2, "[dk] %s@%d:user space set NVRAM file too big %lld, expected %lld\n", "completeMapping", 522, v4, *(v3 + 64));
}

{
  v2 = OUTLINED_FUNCTION_0_20(a1, a2);
  return CCLogStream::logAlert(v2, "[dk] %s@%d:user space set TxCap Table too big %lld, expected %lld\n", "completeMapping", 567, v4, *(v3 + 128));
}

{
  v2 = OUTLINED_FUNCTION_0_20(a1, a2);
  return CCLogStream::logAlert(v2, "[dk] %s@%d:user space set Reg file too big %lld, expected %lld\n", "completeMapping", 559, v4, *(v3 + 112));
}

{
  v2 = OUTLINED_FUNCTION_0_20(a1, a2);
  return CCLogStream::logAlert(v2, "[dk] %s@%d:user space set Platcfg file too big %lld, expected %lld\n", "completeMapping", 550, v4, *(v3 + 96));
}

{
  v2 = OUTLINED_FUNCTION_0_20(a1, a2);
  return CCLogStream::logAlert(v2, "[dk] %s@%d:user space set Signature file too big %lld, expected %lld\n", "completeMapping", 542, v4, *(v3 + 80));
}

{
  v2 = OUTLINED_FUNCTION_0_20(a1, a2);
  return CCLogStream::logAlert(v2, "[dk] %s@%d:user space set Firmware file too big %lld, expected %lld\n", "completeMapping", 532, v4, *(v3 + 32));
}

uint64_t AppleBCMWLANSkywalkTxSubmissionQueue::forwardPacket(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 288))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Unexpected call, not implemented!\n", "forwardPacket", 115);
}

uint64_t AppleBCMWLANSkywalkTxSubmissionQueue::dupAndTransmitMcastPacket(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 288))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Unexpected call, not implemented!\n", "dupAndTransmitMcastPacket", 121);
}

uint64_t AppleBCMWLANSkywalkTxSubmissionQueue::freeMulticastPacket(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 288))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Unexpected call, not implemented!\n", "freeMulticastPacket", 127);
}

uint64_t AppleBCMWLANSkywalkTxSubmissionQueue::triggerAWDLMulticastTx(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 288))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Unexpected call, not implemented!\n", "triggerAWDLMulticastTx", 132);
}

uint64_t AppleBCMWLANSkywalkTxSubmissionQueue::setInterface(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 288))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:TX SUB Q invalid interface", "setInterface", 143);
}

uint64_t AppleBCMWLANSkywalkTxSubmissionQueue::enable(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  (*(v2 + 288))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logInfo(v3, "[dk] %s@%d:TXSub Enable returned:0x%x\n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 288))(v1);
  return CCLogStream::logInfo(v3, "[dk] %s@%d:Enable called on already Enabled TxSubQ\n", "enable", 227);
}

uint64_t AppleBCMWLANSkywalkTxSubmissionQueue::disableSync(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 288))(v1);
  return CCLogStream::logInfo(v3, "[dk] %s@%d:Disable called on already disabled TxSubQ\n", "disableSync", 236);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  (*(v2 + 288))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logInfo(v3, "[dk] %s@%d:TXSub Disable returned:0x%x\n", v5, v6, v7);
}

uint64_t AppleBCMWLANSkywalkTxSubmissionQueue::disable(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 288))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:failed to disable Tx SubmissionQueue  since not on gate\n", "disable", 259);
}

uint64_t AppleBCMWLANSkywalkTxSubmissionQueue::p2pMulticastTx(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 288))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:NOT IMPLEMENTED\n", "p2pMulticastTx", 279);
}

uint64_t AppleBCMWLANSkywalkTxCompletionQueue::enable(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  (*(v2 + 216))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logInfo(v3, "[dk] %s@%d:TX Completion Queue Enable returned:0x%x\n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 216))(v1);
  return CCLogStream::logInfo(v3, "[dk] %s@%d:Enable called on already enabled TxCompletionQ \n", "enable", 408);
}

uint64_t AppleBCMWLANSkywalkTxCompletionQueue::disable(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 216))(v1);
  return CCLogStream::logInfo(v3, "[dk] %s@%d:Disable called on already disabled TxCompletionQ \n", "disable", 423);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  (*(v2 + 216))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logInfo(v3, "[dk] %s@%d:TX Completion Queue Disable returned:0x%x\n", v5, v6, v7);
}

uint64_t AppleBCMWLANSkywalkRxSubmissionQueue::enable(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 216))(v1);
  return CCLogStream::logInfo(v3, "[dk] %s@%d:Enter", "enable", 553);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 216))(v1);
  return CCLogStream::logInfo(v3, "[dk] %s@%d:Enable RXSubmission Queue", "enable", 560);
}

uint64_t AppleBCMWLANSkywalkRxSubmissionQueue::disable(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 216))(v1);
  return CCLogStream::logInfo(v3, "[dk] %s@%d:Enter", "disable", 570);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 216))(v1);
  return CCLogStream::logInfo(v3, "[dk] %s@%d:Disable RXSubmission Queue", "disable", 577);
}

uint64_t AppleBCMWLANSkywalkRxCompletionQueue::stagePacket(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 224))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:%s[%d] Base Implementation \n", "stagePacket", 614, "stagePacket", 614);
}

uint64_t AppleBCMWLANSkywalkRxCompletionQueue::initWithPoolAndQueueInfo(uint64_t *a1, uint64_t a2, unsigned __int16 a3, uint64_t a4)
{
  v6 = OUTLINED_FUNCTION_5_5(a1);
  v8 = (*(v7 + 224))(v6);
  return CCLogStream::logEmergency(v8, "[dk] %s@%d:Failed to allocate RXCompletionQueue for ifId:%u queue:%u\n", "initWithPoolAndQueueInfo", 649, a3, *(*a4 + 32));
}

uint64_t AppleBCMWLANSkywalkRxCompletionQueue::freePendingPackets(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 224))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Not Implemented\n", "freePendingPackets", 710);
}

uint64_t AppleBCMWLANSkywalkRxCompletionQueue::flushPackets(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 224))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Unsupported Function\n", "flushPackets", 722);
}

uint64_t AppleBCMWLANSkywalkRxCompletionQueue::enable(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 224))(v1);
  return CCLogStream::logInfo(v3, "[dk] %s@%d:Enable RX Completion Queue", "enable", 730);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  (*(v2 + 224))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logInfo(v3, "[dk] %s@%d:TX Completion Queue Enable returned:0x%x\n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 224))(v1);
  return CCLogStream::logInfo(v3, "[dk] %s@%d:Enable called on already enabled RxCompletionQ\n", "enable", 738);
}

uint64_t AppleBCMWLANSkywalkRxCompletionQueue::disable(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 224))(v1);
  return CCLogStream::logInfo(v3, "[dk] %s@%d:Disable called on already disabled RxCompletionQ\n", "disable", 753);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  (*(v2 + 224))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logInfo(v3, "[dk] %s@%d:TX Completion Queue Disable returned:0x%x\n", v5, v6, v7);
}

uint64_t AppleBCMWLANSkywalkMulticastQueue::enable(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 136))(v1);
  return CCLogStream::logInfo(v3, "[dk] %s@%d:Enter", "enable", 798);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 136))(v1);
  return CCLogStream::logInfo(v3, "[dk] %s@%d:Enabling MC Queue\n", "enable", 801);
}

uint64_t AppleBCMWLANDMASlab::initWithOptions(AppleBCMWLANDMASlab *this, unsigned int a2, unint64_t a3, unint64_t a4, int a5, unsigned int a6, IOService *a7)
{
  range.address = 0xAAAAAAAAAAAAAAAALL;
  range.length = 0xAAAAAAAAAAAAAAAALL;
  flags = 0;
  segmentsCount = 1;
  result = OSObject::init(this);
  if (result)
  {
    result = IOMallocZeroTyped();
    *(this + 6) = result;
    if (result)
    {
      v15 = result;
      result = 0;
      if (a2)
      {
        if (a3 && a4)
        {
          v16 = a2 * a3;
          v17 = v16 % a4 ? a4 - v16 % a4 : 0;
          *(v15 + 68) = (v17 + v16) / a3;
          *(*(this + 6) + 64) = a3;
          v18 = *(this + 6);
          *(v18 + 24) = IO80211Buffer::allocBufferSingle();
          result = *(*(this + 6) + 24);
          if (result)
          {
            MemoryDescriptor = IO80211Buffer::getMemoryDescriptor(result);
            v20 = *(*(this + 6) + 24);
            if (MemoryDescriptor)
            {
              *(*(this + 6) + 8) = IO80211Buffer::getMemoryDescriptor(v20);
              IOBufferMemoryDescriptor::GetAddressRange(*(*(this + 6) + 8), &range);
              *(*(this + 6) + 48) = range.address;
              v21 = *(this + 6);
              v22 = *(v21 + 48);
              if (v22)
              {
                bzero(v22, range.length);
                v21 = *(this + 6);
              }

              *(v21 + 16) = a5;
              if (!a7)
              {
                return 0;
              }

              **(this + 6) = a7;
              bzero(&specification, 0x90uLL);
              specification.maxAddressBits = a6;
              IODMACommand::Create(**(this + 6), 0, &specification, (*(this + 6) + 40));
              v23 = *(this + 6);
              if (!*(v23 + 40))
              {
                return 0;
              }

              v24 = *(v23 + 68);
              *(*(this + 6) + 72) = IOMallocZeroTyped();
              v25 = *(this + 6);
              if (*(v25 + 72))
              {
                v26 = IODMACommand::PrepareForDMA(*(v25 + 40), 0, *(v25 + 8), 0, 0, &flags, &segmentsCount, &range, 0);
                result = 0;
                if (!v26 && segmentsCount == 1)
                {
                  *(*(this + 6) + 56) = range.address;
                  v27 = *(this + 6);
                  if (*(v27 + 68))
                  {
                    v28 = 0;
                    v29 = 0;
                    do
                    {
                      *(*(v27 + 72) + v28) = *(v27 + 48) + (*(v27 + 64) * v29);
                      v30 = *(this + 6);
                      v31 = v29 * *(v30 + 64);
                      v32 = *(v30 + 56);
                      v33 = *(v30 + 72) + v28;
                      v34 = __CFADD__(v32, v31);
                      v35 = v32 + v31;
                      v36 = v34;
                      *(v33 + 8) = v35;
                      if (v34)
                      {
                        break;
                      }

                      ++v29;
                      v27 = *(this + 6);
                      v28 += 16;
                    }

                    while (v29 < *(v27 + 68));
                    return v36 ^ 1u;
                  }

                  else
                  {
                    return 1;
                  }
                }
              }

              else
              {
                return 0;
              }
            }

            else
            {
              IO80211Buffer::returnBuffer(v20);
              *(*(this + 6) + 24) = 0;
              (*(**(*(this + 6) + 32) + 72))(*(*(this + 6) + 32));
              result = *(*(this + 6) + 32);
              if (result)
              {
                (*(*result + 16))(result);
                result = 0;
                *(*(this + 6) + 32) = 0;
              }
            }
          }
        }
      }
    }
  }

  return result;
}