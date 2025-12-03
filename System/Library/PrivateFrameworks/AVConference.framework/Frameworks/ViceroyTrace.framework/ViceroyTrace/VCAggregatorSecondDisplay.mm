@interface VCAggregatorSecondDisplay
- (VCAggregatorSecondDisplay)initWithDelegate:(id)delegate withMode:(unsigned int)mode options:(id)options;
- (id)aggregatedSessionReport;
- (void)addScreenSharingSpecificReportingKeys:(id)keys;
- (void)dealloc;
- (void)processEventWithCategory:(unsigned __int16)category type:(unsigned __int16)type payload:(id)payload;
- (void)processRealtimeStats:(id)stats;
- (void)processResiliencyEnablementConfig:(id)config;
- (void)updateReceiverVideoStreamConfiguration:(id)configuration;
- (void)updateSenderVideoStreamConfiguration:(id)configuration;
- (void)updateVideoFECStats:(id)stats;
@end

@implementation VCAggregatorSecondDisplay

- (VCAggregatorSecondDisplay)initWithDelegate:(id)delegate withMode:(unsigned int)mode options:(id)options
{
  v34 = *MEMORY[0x277D85DE8];
  v21.receiver = self;
  v21.super_class = VCAggregatorSecondDisplay;
  v7 = [(VCAggregator *)&v21 initWithDelegate:delegate nwParentActivity:0];
  v8 = v7;
  if (v7)
  {
    v7->_aggregatorVideoStreamMode = mode;
    v7->_RBR = [[VCReportingHistogram alloc] initWithType:7 bucketValues:0];
    v8->_TBR = [[VCReportingHistogram alloc] initWithType:6 bucketValues:0];
    v8->_SBR = [[VCReportingHistogram alloc] initWithType:8 bucketValues:0];
    v8->_VST = [[VCReportingHistogram alloc] initWithType:30 bucketValues:0];
    v8->_PLR = [[VCReportingHistogram alloc] initWithType:2 bucketValues:0];
    v8->_BPL = [[VCReportingHistogram alloc] initWithType:37 bucketValues:0];
    v8->_EXT = [[VCReportingHistogram alloc] initWithType:38 bucketValues:0];
    v8->_BWE = [[VCReportingHistogram alloc] initWithType:36 bucketValues:0];
    v8->_VJS = [[VCReportingHistogram alloc] initWithType:40 bucketValues:0];
    v8->_RTT = [[VCReportingHistogram alloc] initWithType:0 bucketValues:0];
    v8->_HEL = [[VCReportingHistogram alloc] initWithType:39 bucketValues:0];
    v8->_minHIDEventLatency = -1;
    if (options)
    {
      v8->super.super._shouldReportLowLatencyInterfaceStatistics = [objc_msgSend(options objectForKeyedSubscript:{@"ReportLowLatencyInterfaceStatistics", "BOOLValue"}];
      if (objc_opt_class() == v8)
      {
        if (VRTraceGetErrorLogLevelForModule("") >= 7)
        {
          v10 = VRTraceErrorLogLevelToCSTR(7u);
          v11 = gVRTraceOSLog;
          if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
          {
            shouldReportLowLatencyInterfaceStatistics = v8->super.super._shouldReportLowLatencyInterfaceStatistics;
            *buf = 136315906;
            v23 = v10;
            v24 = 2080;
            v25 = "[VCAggregatorSecondDisplay initWithDelegate:withMode:options:]";
            v26 = 1024;
            v27 = 195;
            v28 = 1024;
            LODWORD(v29) = shouldReportLowLatencyInterfaceStatistics;
            v13 = " [%s] %s:%d _shouldReportLowLatencyInterfaceStatistics=%d";
            v14 = v11;
            v15 = 34;
LABEL_13:
            _os_log_impl(&dword_23D4DF000, v14, OS_LOG_TYPE_DEFAULT, v13, buf, v15);
          }
        }
      }

      else
      {
        if (objc_opt_respondsToSelector())
        {
          v9 = [(VCAggregatorSecondDisplay *)v8 performSelector:sel_logPrefix];
        }

        else
        {
          v9 = &stru_284F80940;
        }

        if (VRTraceGetErrorLogLevelForModule("") >= 7)
        {
          v16 = VRTraceErrorLogLevelToCSTR(7u);
          v17 = gVRTraceOSLog;
          if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
          {
            v18 = v8->super.super._shouldReportLowLatencyInterfaceStatistics;
            *buf = 136316418;
            v23 = v16;
            v24 = 2080;
            v25 = "[VCAggregatorSecondDisplay initWithDelegate:withMode:options:]";
            v26 = 1024;
            v27 = 195;
            v28 = 2112;
            v29 = v9;
            v30 = 2048;
            v31 = v8;
            v32 = 1024;
            v33 = v18;
            v13 = " [%s] %s:%d %@(%p) _shouldReportLowLatencyInterfaceStatistics=%d";
            v14 = v17;
            v15 = 54;
            goto LABEL_13;
          }
        }
      }
    }
  }

  v19 = *MEMORY[0x277D85DE8];
  return v8;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = VCAggregatorSecondDisplay;
  [(VCAggregatorVideoStream *)&v3 dealloc];
}

- (id)aggregatedSessionReport
{
  v30 = *MEMORY[0x277D85DE8];
  v14 = 0;
  v15 = &v14;
  v16 = 0x3052000000;
  v17 = __Block_byref_object_copy__4;
  v18 = __Block_byref_object_dispose__4;
  v19 = 0;
  stateQueue = self->super.super._stateQueue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __52__VCAggregatorSecondDisplay_aggregatedSessionReport__block_invoke;
  v13[3] = &unk_278BD4CF8;
  v13[4] = self;
  v13[5] = &v14;
  dispatch_sync(stateQueue, v13);
  if (VRTraceGetErrorLogLevelForModule("") >= 7)
  {
    v4 = VRTraceErrorLogLevelToCSTR(7u);
    v5 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
    {
      aggregatorVideoStreamMode = self->_aggregatorVideoStreamMode;
      v7 = v15[5];
      if (v7)
      {
        v8 = [objc_msgSend(v7 "description")];
      }

      else
      {
        v8 = "<nil>";
      }

      *buf = 136316162;
      v21 = v4;
      v22 = 2080;
      v23 = "[VCAggregatorSecondDisplay aggregatedSessionReport]";
      v24 = 1024;
      v25 = 460;
      v26 = 1024;
      v27 = aggregatorVideoStreamMode;
      v28 = 2080;
      v29 = v8;
      _os_log_impl(&dword_23D4DF000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SecondDisplay: For mode=%u sessionReport=%s", buf, 0x2Cu);
    }
  }

  v9 = v15[5];
  v10 = v15[5];
  _Block_object_dispose(&v14, 8);
  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t __52__VCAggregatorSecondDisplay_aggregatedSessionReport__block_invoke(uint64_t result)
{
  v100[4] = *MEMORY[0x277D85DE8];
  if (*(*(result + 32) + 1472) != 0.0)
  {
    v1 = result;
    v84 = objc_alloc(MEMORY[0x277CBEB38]);
    v2 = [MEMORY[0x277CCABA8] numberWithUnsignedInt:{(*(*(v1 + 32) + 1472) * objc_msgSend(*(v1 + 32), "RTPeriod"))}];
    v3 = [MEMORY[0x277CCABA8] numberWithUnsignedInt:*(*(v1 + 32) + 216)];
    v4 = [MEMORY[0x277CCABA8] numberWithInt:*(*(v1 + 32) + 1540)];
    v5 = [MEMORY[0x277CCABA8] numberWithInt:*(*(v1 + 32) + 1544)];
    v6 = [MEMORY[0x277CCABA8] numberWithInt:*(*(v1 + 32) + 448)];
    v7 = [MEMORY[0x277CCABA8] numberWithUnsignedInt:*(*(v1 + 32) + 1756)];
    v8 = [MEMORY[0x277CCABA8] numberWithInt:*(*(v1 + 32) + 1552)];
    v9 = [MEMORY[0x277CCABA8] numberWithUnsignedInt:*(*(v1 + 32) + 432)];
    *(*(*(v1 + 40) + 8) + 40) = [v84 initWithObjectsAndKeys:{v2, @"DRTN", v3, @"DRCT", v4, @"VW", v5, @"VH", v6, @"TT", v7, @"RTCPTOCNT", v8, @"VCVSConfigHDRMode", &unk_284FA5780, @"RVER", v9, @"RtxRDKScreenSharing", objc_msgSend(MEMORY[0x277CCABA8], "numberWithUnsignedInt:", *(*(v1 + 32) + 474)), @"FecRDKScreenSharing", 0}];
    [*(v1 + 32) addScreenSharingSpecificReportingKeys:*(*(*(v1 + 40) + 8) + 40)];
    v10 = [*(v1 + 32) dispatchedAggregatedSessionReport];
    [*(*(*(v1 + 40) + 8) + 40) setObject:objc_msgSend(v10 forKeyedSubscript:{"objectForKeyedSubscript:", @"THERMDUR", @"THERMDUR"}];
    [*(*(*(v1 + 40) + 8) + 40) setObject:objc_msgSend(v10 forKeyedSubscript:{"objectForKeyedSubscript:", @"PCONFQ", @"PCONFQ"}];
    [*(*(*(v1 + 40) + 8) + 40) setObject:objc_msgSend(v10 forKeyedSubscript:{"objectForKeyedSubscript:", @"PCONP", @"PCONP"}];
    v11 = [*(v1 + 32) previousChannelSequence];
    v12 = *(v1 + 32);
    if (v11)
    {
      v13 = [v12 previousChannelSequence];
      v14 = &OBJC_IVAR___VCAggregatorSecondDisplay__previousChannelSequenceStats;
    }

    else
    {
      v13 = [v12 channelSequence];
      v14 = &OBJC_IVAR___VCAggregatorSecondDisplay__channelSequenceStats;
    }

    v15 = *(v1 + 32);
    if (v13)
    {
      v16 = &v15[*v14];
      [*(*(*(v1 + 40) + 8) + 40) setObject:v13 forKeyedSubscript:@"CHSEQ"];
      [*(*(*(v1 + 40) + 8) + 40) setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithInt:", v16[1]), @"5GCHCNT"}];
      [*(*(*(v1 + 40) + 8) + 40) setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithInt:", *v16), @"24GCHCNT"}];
      [*(*(*(v1 + 40) + 8) + 40) setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithInt:", v16[2]), @"DFSCHCNT"}];
      [*(*(*(v1 + 40) + 8) + 40) setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithInt:", v16[3]), @"INSLCNT"}];
      v15 = *(v1 + 32);
    }

    [v15 addLowLatencyInterfaceStatisticsToPayload:*(*(*(v1 + 40) + 8) + 40)];
    v17 = *(v1 + 32);
    v18 = *(v17 + 1944);
    if (v18)
    {
      [*(*(*(v1 + 40) + 8) + 40) setObject:v18 forKeyedSubscript:@"REMFWVER"];
      v17 = *(v1 + 32);
    }

    v19 = *(v17 + 1936);
    if (v19)
    {
      [*(*(*(v1 + 40) + 8) + 40) setObject:v19 forKeyedSubscript:@"REMOSVER"];
      v17 = *(v1 + 32);
    }

    if (*(v17 + 1944))
    {
      [*(*(*(v1 + 40) + 8) + 40) setObject:*(v17 + 1952) forKeyedSubscript:@"REMMDL"];
      v17 = *(v1 + 32);
    }

    [*(*(*(v1 + 40) + 8) + 40) setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithInt:", *(v17 + 1564)), @"FOVE"}];
    v20 = *(v1 + 32);
    v21 = *(v20 + 232);
    if (v21)
    {
      [*(*(*(v1 + 40) + 8) + 40) setObject:v21 forKeyedSubscript:@"CallID"];
      v20 = *(v1 + 32);
    }

    [*(*(*(v1 + 40) + 8) + 40) setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithInt:", *(v20 + 1144) == 0), @"MSSuccess"}];
    [*(*(*(v1 + 40) + 8) + 40) setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", *(*(v1 + 32) + 1144)), @"MSEndReason"}];
    v22 = *(v1 + 32);
    v23 = v22[184];
    v24 = (v23 * [v22 RTPeriod]);
    v26 = *(v1 + 32);
    if (*(v26 + 216) == 2)
    {
      if (v24)
      {
        v27 = (*(v26 + 1488) / v24 * 10000.0);
      }

      else
      {
        v27 = 0;
      }

      v32 = *(v26 + 1472);
      if (v32 == 0.0)
      {
        v33 = 0;
        v34 = 0;
      }

      else
      {
        v33 = (*(v26 + 1508) / v32);
        v34 = (*(v26 + 1512) / v32);
      }

      v46 = *(*(*(v1 + 40) + 8) + 40);
      v99[0] = @"VSP";
      v100[0] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v27];
      v99[1] = @"ARFR";
      v100[1] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v33];
      v99[2] = @"ARBR";
      v100[2] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v34];
      v99[3] = @"RBR";
      v100[3] = [*(*(v1 + 32) + 1784) description];
      [v46 addEntriesFromDictionary:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v100, v99, 4)}];
      [*(v1 + 32) addFECStatsHolderKPIs:*(*(*(v1 + 40) + 8) + 40) usingFECStatsHolder:*(*(v1 + 32) + 1168)];
      v48 = *(v1 + 32);
      v49 = *(v48 + 1504);
      if (v49)
      {
        HIDWORD(v47) = 1083129856;
        v50 = (*(v48 + 1488) / v49 * 1000.0);
        if (v24)
        {
LABEL_32:
          v47 = v24;
          v51 = (*(v48 + 1536) * 1000.0 / v24);
          v52 = (*(v48 + 1740) / v24);
          v53 = (*(v48 + 1744) / v24);
          v54 = (*(v48 + 1748) / v24);
          v55 = (*(v48 + 1752) / v24);
          goto LABEL_38;
        }
      }

      else
      {
        v50 = 0;
        if (v24)
        {
          goto LABEL_32;
        }
      }

      v51 = 0;
      v54 = 0.0;
      v52 = 0.0;
      v53 = 0.0;
      v55 = 0.0;
LABEL_38:
      v61 = *(v48 + 1764);
      if (v61)
      {
        v47 = v61;
        v62 = (*(v48 + 1768) * 1000.0 / v61);
        if (v24)
        {
LABEL_40:
          v87 = *(v48 + 1704) / v24;
LABEL_43:
          v63 = *(v48 + 1472);
          if (v63 == 0.0)
          {
            v64 = 0;
          }

          else
          {
            LODWORD(v47) = *(v48 + 1680);
            v63 = *&v47 * 1000.0 / v63;
            v64 = v63;
          }

          v65 = *(v48 + 1760);
          if (v65)
          {
            LODWORD(v63) = *(v48 + 1776);
            v66 = (*&v63 * 10000.0 / v65);
          }

          else
          {
            v66 = 0;
          }

          v67 = *(*(*(v1 + 40) + 8) + 40);
          v97[0] = @"AVSI";
          v98[0] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v50];
          v97[1] = @"VS";
          v98[1] = [*(*(v1 + 32) + 1808) description];
          v97[2] = @"VSTCNT";
          v98[2] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:*(*(v1 + 32) + 1504)];
          v97[3] = @"MVSI";
          v98[3] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:(*(*(v1 + 32) + 1496) * 1000.0)];
          v97[4] = @"VRFR";
          v98[4] = [MEMORY[0x277CCACA0] stringWithFormat:@"%.2f", *&v52];
          v97[5] = @"VREFR";
          v98[5] = [MEMORY[0x277CCACA0] stringWithFormat:@"%.2f", *&v53];
          v97[6] = @"VRRFR";
          v98[6] = [MEMORY[0x277CCACA0] stringWithFormat:@"%.2f", *&v54];
          v97[7] = @"VRExFR";
          v98[7] = [MEMORY[0x277CCACA0] stringWithFormat:@"%.2f", *&v55];
          v97[8] = @"AFIRFR";
          v98[8] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v51];
          v97[9] = @"VPBEVALPD";
          v98[9] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v62];
          v97[10] = @"PEVFR";
          v98[10] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v66];
          v97[11] = @"VMFRERC";
          v98[11] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:*(*(v1 + 32) + 1684)];
          v97[12] = @"VAFRERC";
          v98[12] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v64];
          v97[13] = @"MVSTCT";
          v98[13] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:*(*(v1 + 32) + 1688)];
          v97[14] = @"MNVFR";
          v98[14] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:*(*(v1 + 32) + 1692)];
          v97[15] = @"VRDFR";
          v98[15] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v87];
          [v67 addEntriesFromDictionary:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v98, v97, 16)}];
          v70 = *(v1 + 32);
          v71 = *(v70 + 1716);
          if (v71)
          {
            v72 = *(v70 + 1720) / v71;
          }

          else
          {
            v72 = 0;
          }

          v73 = *(v70 + 1728);
          if (v73 == -1)
          {
            v74 = 0;
          }

          else
          {
            v74 = v73;
          }

          v75 = *(v70 + 1472);
          v76 = 0.0;
          v77 = 0.0;
          if (v75 != 0.0)
          {
            LODWORD(v68) = *(v70 + 1632);
            v77 = v68 / v75;
          }

          if (v24)
          {
            v69 = v24;
            v76 = *(v70 + 1640) * 10000.0 / v24;
          }

          if (v75 == 0.0)
          {
            v78 = 0;
            v79 = 0.0;
            v80 = 0.0;
          }

          else
          {
            LODWORD(v69) = *(v70 + 1628);
            v78 = (*&v69 / v75);
            v79 = *(v70 + 1648) / v75;
            v80 = *(v70 + 1664) / v75;
          }

          v81 = *(*(*(v1 + 40) + 8) + 40);
          v95[0] = @"ARRFD";
          v95[1] = @"MRRFD";
          v96[0] = @"N/A";
          v96[1] = @"N/A";
          v95[2] = @"ARRPD";
          v95[3] = @"MRRPD";
          v96[2] = @"N/A";
          v96[3] = @"N/A";
          v95[4] = @"AVRFD";
          v95[5] = @"MVRFD";
          v96[4] = @"N/A";
          v96[5] = @"N/A";
          v95[6] = @"AVRPD";
          v95[7] = @"MVRPD";
          v96[6] = @"N/A";
          v96[7] = @"N/A";
          v95[8] = @"MINHEL";
          v96[8] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v74];
          v95[9] = @"MAXHEL";
          v96[9] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:*(*(v1 + 32) + 1724)];
          v95[10] = @"AHEL";
          v96[10] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v72];
          v95[11] = @"HEL";
          v96[11] = [*(*(v1 + 32) + 1864) description];
          v95[12] = @"HELSCNT";
          v96[12] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:*(*(v1 + 32) + 1716)];
          v95[13] = @"AJBSCH";
          v96[13] = [MEMORY[0x277CCABA8] numberWithDouble:v77];
          v95[14] = @"PJBQZ";
          v96[14] = [MEMORY[0x277CCABA8] numberWithDouble:v76];
          v95[15] = @"MJBL";
          v96[15] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:*(*(v1 + 32) + 1656)];
          v95[16] = @"JBQS";
          v96[16] = [*(*(v1 + 32) + 1848) description];
          v95[17] = @"AJBL";
          v96[17] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v78];
          v95[18] = @"AVPO";
          v96[18] = [MEMORY[0x277CCABA8] numberWithDouble:v80];
          v95[19] = @"MVPO";
          v96[19] = [MEMORY[0x277CCABA8] numberWithDouble:*(*(v1 + 32) + 1672)];
          v95[20] = @"TWJBL";
          v96[20] = [MEMORY[0x277CCABA8] numberWithDouble:v79];
          v59 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v96 forKeys:v95 count:21];
          v60 = v81;
          goto LABEL_63;
        }
      }

      else
      {
        v62 = 0;
        if (v24)
        {
          goto LABEL_40;
        }
      }

      v87 = 0;
      goto LABEL_43;
    }

    v28 = *(v26 + 1472);
    if (v28 == 0.0)
    {
      v29 = 0;
      v30 = 0;
      if (v24)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v29 = (*(v26 + 1524) / v28);
      v25 = *(v26 + 1516) / v28;
      v30 = v25;
      if (v24)
      {
LABEL_20:
        LODWORD(v25) = *(v26 + 1604);
        v31 = (*&v25 * 1000.0 / v24);
        goto LABEL_26;
      }
    }

    v31 = 0;
LABEL_26:
    if (v28 == 0.0)
    {
      v83 = 0;
      v85 = 0;
      v40 = 0;
      v36 = 0;
      v38 = 0;
      v42 = 0;
      v44 = 0;
      if (v24)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v83 = (*(v26 + 1568) / v28);
      *&v35 = *(v26 + 1584) / v28;
      v36 = *&v35;
      LODWORD(v35) = *(v26 + 1600);
      *&v37 = v35 / v28;
      v38 = *&v37;
      LODWORD(v37) = *(v26 + 1616);
      *&v39 = v37 / v28;
      v40 = *&v39;
      LODWORD(v39) = *(v26 + 1608);
      *&v41 = v39 / v28;
      v42 = *&v41;
      LODWORD(v41) = *(v26 + 1620);
      *&v43 = v41 / v28;
      v85 = *&v43;
      LODWORD(v43) = *(v26 + 1708);
      v44 = (v43 / v28);
      if (v24)
      {
LABEL_28:
        v86 = *(v26 + 1696) / v24;
        v45 = *(v26 + 1700) / v24;
LABEL_35:
        v88 = *(*(*(v1 + 40) + 8) + 40);
        v93[0] = @"ATXBR";
        v94[0] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v29];
        v93[1] = @"ASBR";
        v94[1] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v30];
        v93[2] = @"TBR";
        v94[2] = [*(*(v1 + 32) + 1792) description];
        v93[3] = @"SBR";
        v94[3] = [*(*(v1 + 32) + 1800) description];
        v93[4] = @"MTBR";
        v94[4] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:*(*(v1 + 32) + 1528)];
        v93[5] = @"MSBR";
        v94[5] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:*(*(v1 + 32) + 1520)];
        v93[6] = @"MPLR";
        v94[6] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:*(*(v1 + 32) + 1532)];
        v93[7] = @"PLR";
        v94[7] = [*(*(v1 + 32) + 1816) description];
        v93[8] = @"APLR";
        v94[8] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v40];
        v93[9] = @"AWFPD";
        v94[9] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v36];
        v93[10] = @"AWFT";
        v94[10] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v38];
        v93[11] = @"ANAKR";
        v94[11] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v31];
        v93[12] = @"ABL";
        v94[12] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v42];
        v93[13] = @"MBL";
        v94[13] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:*(*(v1 + 32) + 1612)];
        v93[14] = @"BL";
        v94[14] = [*(*(v1 + 32) + 1824) description];
        v93[15] = @"ARTT";
        v94[15] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v44];
        v93[16] = @"MRTT";
        v94[16] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:*(*(v1 + 32) + 1712)];
        v93[17] = @"RTT";
        v94[17] = [*(*(v1 + 32) + 1856) description];
        v93[18] = @"AEXT";
        v94[18] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v83];
        v93[19] = @"MEXT";
        v94[19] = [MEMORY[0x277CCABA8] numberWithDouble:*(*(v1 + 32) + 1576)];
        v93[20] = @"EXT";
        v94[20] = [*(*(v1 + 32) + 1832) description];
        v93[21] = @"ABWE";
        v94[21] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v85];
        v93[22] = @"MBWE";
        v94[22] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:*(*(v1 + 32) + 1624)];
        v93[23] = @"BWE";
        v94[23] = [*(*(v1 + 32) + 1840) description];
        v93[24] = @"VTEFR";
        v94[24] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v45];
        v93[25] = @"VTCFR";
        v94[25] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v86];
        [v88 addEntriesFromDictionary:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v94, v93, 26)}];
        v56 = *(v1 + 32);
        v57 = *(*(*(v1 + 40) + 8) + 40);
        v91 = @"CDC";
        v92 = [MEMORY[0x277CCABA8] numberWithInt:*(v56 + 1548)];
        [v57 addEntriesFromDictionary:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", &v92, &v91, 1)}];
        v58 = *(*(*(v1 + 40) + 8) + 40);
        v89[0] = @"ARSFD";
        v89[1] = @"MRSFD";
        v90[0] = @"N/A";
        v90[1] = @"N/A";
        v89[2] = @"ARSPD";
        v89[3] = @"MRSPD";
        v90[2] = @"N/A";
        v90[3] = @"N/A";
        v89[4] = @"AVSFD";
        v89[5] = @"MVSFD";
        v90[4] = @"N/A";
        v90[5] = @"N/A";
        v89[6] = @"AVSPD";
        v89[7] = @"MVSPD";
        v90[6] = @"N/A";
        v90[7] = @"N/A";
        v59 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v90 forKeys:v89 count:8];
        v60 = v58;
LABEL_63:
        result = [v60 addEntriesFromDictionary:v59];
        goto LABEL_64;
      }
    }

    v86 = 0;
    v45 = 0;
    goto LABEL_35;
  }

LABEL_64:
  v82 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)addScreenSharingSpecificReportingKeys:(id)keys
{
  if (self->_aggregatorVideoStreamMode - 2 <= 2)
  {
    [keys setObject:objc_msgSend(MEMORY[0x277CCABA8] forKey:{"numberWithInt:", self->_transportProtocol), @"VCVSConfigTransportProtocol"}];
    v6 = [MEMORY[0x277CCABA8] numberWithInt:self->_accessNetworkType];

    [keys setObject:v6 forKey:@"VCVSConfigAccessNetworkType"];
  }
}

- (void)updateVideoFECStats:(id)stats
{
  v4 = [stats objectForKeyedSubscript:@"VFecStats"];
  fecStatsHolder = self->super.super._fecStatsHolder;

  [(VCAggregator *)self updateFECStats:fecStatsHolder usingUpdateValuesIn:v4];
}

- (void)processRealtimeStats:(id)stats
{
  self->_sessionTotalDuration = self->_sessionTotalDuration + 1.0;
  if ([stats objectForKeyedSubscript:@"VST"])
  {
    [objc_msgSend(stats objectForKeyedSubscript:{@"VST", "doubleValue"}];
    v6 = v5;
    v7 = v5 - self->_lastReportedVideoStallTime;
    [(VCHistogram *)self->_VST addValue:v7];
    maxVideoStallInterval = self->_maxVideoStallInterval;
    if (v7 > maxVideoStallInterval)
    {
      maxVideoStallInterval = v7;
    }

    self->_maxVideoStallInterval = maxVideoStallInterval;
    self->_lastReportedVideoStallTime = v6;
    self->_totalVideoStallTime = v7 + self->_totalVideoStallTime;
  }

  if ([stats objectForKeyedSubscript:@"VSTCNT"])
  {
    v9 = [objc_msgSend(stats objectForKeyedSubscript:{@"VSTCNT", "integerValue"}];
    self->_videoStallCount += v9;
    LODWORD(v10) = self->_maxVideoStallCount;
    self->_maxVideoStallCount = fmax(v10, v9);
  }

  if ([stats objectForKeyedSubscript:@"VRxR"])
  {
    v11 = [objc_msgSend(stats objectForKeyedSubscript:{@"VRxR", "integerValue"}];
    [(VCHistogram *)self->_RBR addValue:v11];
    self->_averageReceiveBitrate += v11;
  }

  if ([stats objectForKeyedSubscript:@"VTxR"])
  {
    v12 = [objc_msgSend(stats objectForKeyedSubscript:{@"VTxR", "integerValue"}];
    [(VCHistogram *)self->_SBR addValue:v12];
    maxSendBitrate = self->_maxSendBitrate;
    if (maxSendBitrate <= v12)
    {
      maxSendBitrate = v12;
    }

    self->_maxSendBitrate = maxSendBitrate;
    self->_averageSendBitrate += v12;
  }

  if ([stats objectForKeyedSubscript:@"ULTBR"])
  {
    v14 = [objc_msgSend(stats objectForKeyedSubscript:{@"ULTBR", "integerValue"}];
    [(VCHistogram *)self->_TBR addValue:v14];
    maxTargetBitrate = self->_maxTargetBitrate;
    if (maxTargetBitrate <= v14)
    {
      maxTargetBitrate = v14;
    }

    self->_maxTargetBitrate = maxTargetBitrate;
    self->_averageTargetBitrate += v14;
  }

  if ([stats objectForKeyedSubscript:@"EncOutFrameCnt"])
  {
    self->_encodedVideoFrameCount += [objc_msgSend(stats objectForKeyedSubscript:{@"EncOutFrameCnt", "integerValue"}];
  }

  if ([stats objectForKeyedSubscript:@"DecOutFrameCnt"])
  {
    self->_decodedVideoFrameCount += [objc_msgSend(stats objectForKeyedSubscript:{@"DecOutFrameCnt", "integerValue"}];
  }

  if ([stats objectForKeyedSubscript:@"VFCCnt"])
  {
    self->_captureVideoFrameCount += [objc_msgSend(stats objectForKeyedSubscript:{@"VFCCnt", "integerValue"}];
  }

  if ([stats objectForKeyedSubscript:@"VIQDCnt"])
  {
    self->_videoFrameDisplayedCounter += [objc_msgSend(stats objectForKeyedSubscript:{@"VIQDCnt", "integerValue"}];
  }

  if ([stats objectForKeyedSubscript:@"DVFECnt"])
  {
    self->_decodedVideoFrameEnqueueCounter += [objc_msgSend(stats objectForKeyedSubscript:{@"DVFECnt", "integerValue"}];
  }

  if ([stats objectForKeyedSubscript:@"VFRxCnt"])
  {
    self->_videoFrameReceivedCounter += [objc_msgSend(stats objectForKeyedSubscript:{@"VFRxCnt", "integerValue"}];
  }

  if ([stats objectForKeyedSubscript:@"VFExCnt"])
  {
    self->_videoFrameExpectedCounter += [objc_msgSend(stats objectForKeyedSubscript:{@"VFExCnt", "integerValue"}];
  }

  if ([stats objectForKeyedSubscript:@"ULPLR"])
  {
    v16 = [objc_msgSend(stats objectForKeyedSubscript:{@"ULPLR", "integerValue"}];
    v17 = v16;
    maxPLR = self->_maxPLR;
    if (maxPLR <= v16)
    {
      maxPLR = v16;
    }

    self->_maxPLR = maxPLR;
    [(VCHistogram *)self->_PLR addValue:v16];
    self->_averagePacketLossRate += v17;
  }

  if ([stats objectForKeyedSubscript:@"VFIRCnt"])
  {
    self->_totalFIRCounter += [objc_msgSend(stats objectForKeyedSubscript:{@"VFIRCnt", "intValue"}];
  }

  if ([stats objectForKeyedSubscript:@"VNoFecTF"])
  {
    self->_videoFrameNonFECTotalCounter += [objc_msgSend(stats objectForKeyedSubscript:{@"VNoFecTF", "intValue"}];
  }

  if ([stats objectForKeyedSubscript:@"VNoFecCF"])
  {
    self->_videoFrameNonFECCompleteCounter += [objc_msgSend(stats objectForKeyedSubscript:{@"VNoFecCF", "intValue"}];
  }

  [(VCAggregatorSecondDisplay *)self updateVideoFECStats:stats];
  if ([stats objectForKeyedSubscript:@"VNWET"])
  {
    [objc_msgSend(stats objectForKeyedSubscript:{@"VNWET", "doubleValue"}];
    self->_averageExpirationTime = v19 + self->_averageExpirationTime;
    maxExpirationTime = self->_maxExpirationTime;
    if (v19 > maxExpirationTime)
    {
      maxExpirationTime = v19;
    }

    self->_maxExpirationTime = maxExpirationTime;
    [(VCHistogram *)self->_EXT addValue:v19];
  }

  if ([stats objectForKeyedSubscript:@"NWAPD"])
  {
    [objc_msgSend(stats objectForKeyedSubscript:{@"NWAPD", "doubleValue"}];
    self->_averageWiFiPacketDelay = v21 + self->_averageWiFiPacketDelay;
  }

  if ([stats objectForKeyedSubscript:@"MAWFPD"])
  {
    [objc_msgSend(stats objectForKeyedSubscript:{@"MAWFPD", "doubleValue"}];
    self->_averageMaxAverageWiFiPacketDelay = v22 + self->_averageMaxAverageWiFiPacketDelay;
  }

  if ([stats objectForKeyedSubscript:@"NWATH"])
  {
    self->_averageWiFiThroughput += [objc_msgSend(stats objectForKeyedSubscript:{@"NWATH", "intValue"}];
  }

  if ([stats objectForKeyedSubscript:@"NWNaC"])
  {
    self->_totalNACKCounter = [objc_msgSend(stats objectForKeyedSubscript:{@"NWNaC", "intValue"}];
  }

  if ([stats objectForKeyedSubscript:@"ULBPL"])
  {
    v23 = [objc_msgSend(stats objectForKeyedSubscript:{@"ULBPL", "intValue"}];
    self->_averageBurstyPacketLossCount += v23;
    maxBurstyPacketLossCount = self->_maxBurstyPacketLossCount;
    if (v23 > maxBurstyPacketLossCount)
    {
      maxBurstyPacketLossCount = v23;
    }

    self->_maxBurstyPacketLossCount = maxBurstyPacketLossCount;
    [(VCHistogram *)self->_BPL addValue:v23];
  }

  if ([stats objectForKeyedSubscript:@"RTT"])
  {
    v25 = [objc_msgSend(stats objectForKeyedSubscript:{@"RTT", "intValue"}];
    self->_averageRoundTripTime += v25;
    maxRoundTripTime = self->_maxRoundTripTime;
    if (v25 > maxRoundTripTime)
    {
      maxRoundTripTime = v25;
    }

    self->_maxRoundTripTime = maxRoundTripTime;
    [(VCHistogram *)self->_RTT addValue:v25];
  }

  if ([stats objectForKeyedSubscript:@"VIQAHEL"])
  {
    v27 = [objc_msgSend(stats objectForKeyedSubscript:{@"VIQAHEL", "intValue"}];
    v28 = [objc_msgSend(stats objectForKeyedSubscript:{@"VIQHELSCNT", "intValue"}];
    if (v28 <= 1)
    {
      v29 = 1;
    }

    else
    {
      v29 = v28;
    }

    self->_averageHIDEventLatency += v29 * v27;
    self->_averageHIDEventLatencySampleCount += v29;
    [(VCHistogram *)self->_HEL addValue:v27 withIncrement:?];
  }

  if ([stats objectForKeyedSubscript:@"VIQMaxHEL"])
  {
    v30 = [objc_msgSend(stats objectForKeyedSubscript:{@"VIQMaxHEL", "intValue"}];
    maxHIDEventLatency = self->_maxHIDEventLatency;
    if (v30 > maxHIDEventLatency)
    {
      maxHIDEventLatency = v30;
    }

    self->_maxHIDEventLatency = maxHIDEventLatency;
  }

  if ([stats objectForKeyedSubscript:@"VIQMinHEL"])
  {
    v32 = [objc_msgSend(stats objectForKeyedSubscript:{@"VIQMinHEL", "intValue"}];
    minHIDEventLatency = self->_minHIDEventLatency;
    if (v32 < minHIDEventLatency)
    {
      minHIDEventLatency = v32;
    }

    self->_minHIDEventLatency = minHIDEventLatency;
  }

  if ([stats objectForKeyedSubscript:@"ULBWE"])
  {
    v34 = [objc_msgSend(stats objectForKeyedSubscript:{@"ULBWE", "intValue"}];
    self->_averageBandwidthEstimation += v34;
    maxBandwidthEstimation = self->_maxBandwidthEstimation;
    if (v34 > maxBandwidthEstimation)
    {
      maxBandwidthEstimation = v34;
    }

    self->_maxBandwidthEstimation = maxBandwidthEstimation;
    [(VCHistogram *)self->_BWE addValue:v34];
  }

  if ([stats objectForKeyedSubscript:@"VJ"])
  {
    [objc_msgSend(stats objectForKeyedSubscript:{@"VJ", "doubleValue"}];
    v37 = (v36 * 1000.0);
    self->_averageJitterQueueSize += v37;
    maxJitterQueueSize = self->_maxJitterQueueSize;
    if (maxJitterQueueSize <= v37)
    {
      maxJitterQueueSize = (v36 * 1000.0);
    }

    self->_maxJitterQueueSize = maxJitterQueueSize;
    [(VCHistogram *)self->_VJS addValue:?];
  }

  if ([stats objectForKeyedSubscript:@"VJBTC"])
  {
    self->_averageJitterQueueSizeChanges += [objc_msgSend(stats objectForKeyedSubscript:{@"VJBTC", "intValue"}];
  }

  if ([stats objectForKeyedSubscript:@"VPO"])
  {
    [objc_msgSend(stats objectForKeyedSubscript:{@"VPO", "doubleValue"}];
    maxPlaybackOffset = v39 * 1000.0;
    self->_averagePlaybackOffset = maxPlaybackOffset + self->_averagePlaybackOffset;
    if (maxPlaybackOffset <= self->_maxPlaybackOffset)
    {
      maxPlaybackOffset = self->_maxPlaybackOffset;
    }

    self->_maxPlaybackOffset = maxPlaybackOffset;
  }

  if ([stats objectForKeyedSubscript:@"VJBTNZT"])
  {
    [objc_msgSend(stats objectForKeyedSubscript:{@"VJBTNZT", "doubleValue"}];
    self->_timeSpentWithNonZeroJitterQueueSize = v41 + self->_timeSpentWithNonZeroJitterQueueSize;
  }

  if ([stats objectForKeyedSubscript:@"VJBTWA"])
  {
    [objc_msgSend(stats objectForKeyedSubscript:{@"VJBTWA", "doubleValue"}];
    self->_timeWeightedJitterQueueSize = v42 * 1000.0 + self->_timeWeightedJitterQueueSize;
  }

  if ([stats objectForKeyedSubscript:@"ChannelSequence"])
  {
    [(VCAggregatorSecondDisplay *)self setPreviousChannelSequence:[(VCAggregatorSecondDisplay *)self channelSequence]];
    self->_previousChannelSequenceStats = self->_channelSequenceStats;
    -[VCAggregatorSecondDisplay setChannelSequence:](self, "setChannelSequence:", [stats objectForKeyedSubscript:@"ChannelSequence"]);
    self->_channelSequenceStats.fiveGhzChannelCount = [objc_msgSend(stats objectForKeyedSubscript:{@"Unique5GhzChannelCount", "intValue"}];
    self->_channelSequenceStats.twoPtFourGhzChannelCount = [objc_msgSend(stats objectForKeyedSubscript:{@"Unique2pt4GhzChannelCount", "intValue"}];
    self->_channelSequenceStats.dfsChannelCount = [objc_msgSend(stats objectForKeyedSubscript:{@"UniqueDFSChannelCount", "intValue"}];
    self->_channelSequenceStats.inactiveSlotCount = [objc_msgSend(stats objectForKeyedSubscript:{@"InactiveSlotCount", "intValue"}];
  }

  if ([stats objectForKeyedSubscript:@"VFEVTrCnt"])
  {
    self->_evictedFramesTrackedCount += [objc_msgSend(stats objectForKeyedSubscript:{@"VFEVTrCnt", "intValue"}];
  }

  if ([stats objectForKeyedSubscript:@"VFEVLtPktDelay"])
  {
    [objc_msgSend(stats objectForKeyedSubscript:{@"VFEVLtPktDelay", "doubleValue"}];
    self->_evictedFramesAverageLatePacketDelay = v43 + self->_evictedFramesAverageLatePacketDelay;
    if (v43 != 0.0)
    {
      ++self->_evictedFramesAnalysisValidIntervals;
    }
  }

  if ([stats objectForKeyedSubscript:@"VFrErCnt"])
  {
    v44 = [objc_msgSend(stats objectForKeyedSubscript:{@"VFrErCnt", "intValue"}];
    self->_accumVideoFrameErasureCount += v44;
    LODWORD(v45) = self->_maxVideoFrameErasureCount;
    self->_maxVideoFrameErasureCount = fmax(v45, v44);
  }

  if ([stats objectForKeyedSubscript:@"NRFr"])
  {
    v46 = [objc_msgSend(stats objectForKeyedSubscript:{@"NRFr", "intValue"}];
    LODWORD(v47) = self->_minVideoFrameRate;
    self->_minVideoFrameRate = fmin(v47, v46);
  }

  if ([stats objectForKeyedSubscript:@"VFEVRecoveredCnt"])
  {
    self->_evictedFramesRecoveredCount += [objc_msgSend(stats objectForKeyedSubscript:{@"VFEVRecoveredCnt", "intValue"}];
  }
}

- (void)updateSenderVideoStreamConfiguration:(id)configuration
{
  self->_videoWidth = [objc_msgSend(configuration objectForKeyedSubscript:{@"VCVSConfigWidth", "intValue"}];
  self->_videoHeight = [objc_msgSend(configuration objectForKeyedSubscript:{@"VCVSConfigHeight", "intValue"}];
  if (self->super.super._direction == 2)
  {
    v5 = @"VCVSConfigRxCodecType";
  }

  else
  {
    v5 = @"VCVSConfigTxCodecType";
  }

  self->_codec = [objc_msgSend(configuration objectForKeyedSubscript:{v5), "intValue"}];
  self->_hdrMode = [objc_msgSend(configuration objectForKeyedSubscript:{@"VCVSConfigHDRMode", "intValue"}];
  self->_transportProtocol = [objc_msgSend(configuration objectForKeyedSubscript:{@"VCVSConfigTransportProtocol", "intValue"}];
  self->_accessNetworkType = [objc_msgSend(configuration objectForKeyedSubscript:{@"VCVSConfigAccessNetworkType", "intValue"}];
  self->_remoteFrameworkVersion = [objc_msgSend(configuration objectForKeyedSubscript:{@"VCVSRemoteFrameworkVersion", "copy"}];
  self->_remoteOSBuildVersion = [objc_msgSend(configuration objectForKeyedSubscript:{@"VCVSRemoteOSBuildVersion", "copy"}];
  self->_remoteDeviceModel = [objc_msgSend(configuration objectForKeyedSubscript:{@"VCVSRemoteDeviceModel", "copy"}];
  self->_foveationEnabled = [objc_msgSend(configuration objectForKeyedSubscript:{@"VCVSConfigFoveationEnabled", "intValue"}];
}

- (void)updateReceiverVideoStreamConfiguration:(id)configuration
{
  self->_avgFramerate += [objc_msgSend(configuration objectForKeyedSubscript:{@"Framerate", "intValue"}];
  self->_videoWidth = [objc_msgSend(configuration objectForKeyedSubscript:{@"Width", "intValue"}];
  self->_videoHeight = [objc_msgSend(configuration objectForKeyedSubscript:{@"Height", "intValue"}];
}

- (void)processResiliencyEnablementConfig:(id)config
{
  v5 = [config objectForKeyedSubscript:@"FecRDKScreenSharing"];
  if (v5)
  {
    self->super.super._fecEnabled = [v5 integerValue] != 0;
  }

  v6 = [config objectForKeyedSubscript:@"RtxRDKScreenSharing"];
  if (v6)
  {
    self->super.super._serverPacketRetransmissionsForVideoEnabled = [v6 integerValue] != 0;
  }
}

- (void)processEventWithCategory:(unsigned __int16)category type:(unsigned __int16)type payload:(id)payload
{
  stateQueue = self->super.super._stateQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__VCAggregatorSecondDisplay_processEventWithCategory_type_payload___block_invoke;
  block[3] = &unk_278BD48B8;
  categoryCopy = category;
  block[4] = self;
  block[5] = payload;
  typeCopy = type;
  dispatch_sync(stateQueue, block);
}

id __67__VCAggregatorSecondDisplay_processEventWithCategory_type_payload___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 8)
  {
    v2 = VRTraceErrorLogLevelToCSTR(8u);
    v3 = gVRTraceOSLog;
    if (gVRTraceLogDebugAsInfo == 1)
    {
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
      {
        v4 = *(a1 + 48);
        *buf = 136315906;
        v13 = v2;
        v14 = 2080;
        v15 = "[VCAggregatorSecondDisplay processEventWithCategory:type:payload:]_block_invoke";
        v16 = 1024;
        v17 = 749;
        v18 = 1024;
        v19 = v4;
        _os_log_impl(&dword_23D4DF000, v3, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SecondDisplay: received method=%d", buf, 0x22u);
      }
    }

    else if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEBUG))
    {
      __67__VCAggregatorSecondDisplay_processEventWithCategory_type_payload___block_invoke_cold_1(v2, a1, v3);
    }
  }

  if (!*(*(a1 + 32) + 224) && [*(a1 + 40) objectForKeyedSubscript:@"VCVSStreamToken"] && objc_msgSend(*(a1 + 40), "objectForKeyedSubscript:", @"VCMSDirection"))
  {
    *(*(a1 + 32) + 224) = [objc_msgSend(*(a1 + 40) objectForKeyedSubscript:{@"VCVSStreamToken", "copy"}];
    *(*(a1 + 32) + 232) = [objc_msgSend(*(a1 + 40) objectForKeyedSubscript:{@"CallID", "copy"}];
    *(*(a1 + 32) + 216) = [objc_msgSend(*(a1 + 40) objectForKeyedSubscript:{@"VCMSDirection", "integerValue"}];
  }

  v5 = *(a1 + 48);
  v6 = *(a1 + 50);
  v7 = *(a1 + 40);
  v11.receiver = *(a1 + 32);
  v11.super_class = VCAggregatorSecondDisplay;
  result = objc_msgSendSuper2(&v11, sel_dispatchedProcessEventWithCategory_type_payload_, v5, v6, v7);
  v9 = *(a1 + 48);
  if (v9 <= 0xC8)
  {
    switch(v9)
    {
      case 0x1Fu:
        if (*(a1 + 50) == 1)
        {
          result = [*(a1 + 32) updateReceiverVideoStreamConfiguration:*(a1 + 40)];
        }

        break;
      case 0x29u:
        result = [*(a1 + 40) objectForKeyedSubscript:@"TransportType"];
        if (result)
        {
          *(*(a1 + 32) + 448) = [objc_msgSend(*(a1 + 40) objectForKeyedSubscript:{@"TransportType", "intValue"}];
          result = [*(a1 + 32) initializeLowLatencyInterfaceStatistics];
        }

        break;
      case 0x9Cu:
        result = [*(a1 + 32) processResiliencyEnablementConfig:*(a1 + 40)];
        break;
    }
  }

  else if (*(a1 + 48) > 0xD5u)
  {
    if (v9 == 214)
    {
      ++*(*(a1 + 32) + 1756);
    }

    else if (v9 == 240)
    {
      result = [*(a1 + 32) processRealtimeStats:*(a1 + 40)];
    }
  }

  else if (v9 == 201)
  {
    result = [*(a1 + 32) updateSenderVideoStreamConfiguration:*(a1 + 40)];
  }

  else if (v9 == 202)
  {
    result = [*(a1 + 40) objectForKeyedSubscript:@"VCMSEndReason"];
    if (result)
    {
      result = [objc_msgSend(*(a1 + 40) objectForKeyedSubscript:{@"VCMSEndReason", "unsignedIntValue"}];
      *(*(a1 + 32) + 1144) = result;
    }
  }

  v10 = *MEMORY[0x277D85DE8];
  return result;
}

void __67__VCAggregatorSecondDisplay_processEventWithCategory_type_payload___block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 48);
  v5 = 136315906;
  v6 = a1;
  v7 = 2080;
  v8 = "[VCAggregatorSecondDisplay processEventWithCategory:type:payload:]_block_invoke";
  v9 = 1024;
  v10 = 749;
  v11 = 1024;
  v12 = v3;
  _os_log_debug_impl(&dword_23D4DF000, log, OS_LOG_TYPE_DEBUG, " [%s] %s:%d SecondDisplay: received method=%d", &v5, 0x22u);
  v4 = *MEMORY[0x277D85DE8];
}

@end