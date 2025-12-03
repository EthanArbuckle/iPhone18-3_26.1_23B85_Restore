@interface AWDAdaptor
- (AWDAdaptor)init;
- (BOOL)sendAnalyticsAudioDistortionRadioHistogramEvent:(id)event;
- (BOOL)sendAnalyticsAudioDistortionStatisticsEvent:(id)event;
- (BOOL)sendAnalyticsAudioDistortionSummaryEvent:(id)event;
- (BOOL)sendAnalyticsAudioFrameCountStatisticsEvent:(id)event;
- (BOOL)sendAnalyticsDetailedVoiceCallEvent;
- (BOOL)sendAnalyticsSummaryVoiceCallEvent;
- (BOOL)wifiCallingAddSamplesGenerateAndSendCallEndReport:(id)report;
- (double)compute95thPercentile:(id)percentile;
- (double)computeMax:(id)max;
- (double)computeMean:(id)mean;
- (double)computeMedian:(id)median;
- (id)computeLossRate:(unsigned int)rate totalPackets:(unsigned int)packets;
- (id)newDistortionCounters:(id)counters;
- (id)transformHistogram:(unsigned int *)histogram ofSize:(unsigned int)size;
- (unsigned)allocHistogramForValues:(id)values withBinBoundaries:(id)boundaries;
- (void)dealloc;
- (void)generateFaceTimeAggregatedCallStats:(id)stats;
- (void)generateSecondDisplayAggregatedCallStats:(id)stats;
- (void)parseAWDEvent:(unsigned __int16)event dict:(id)dict;
- (void)parseAudioTierChange:(id)change;
- (void)parseCellTechChange:(unsigned __int16)change dict:(id)dict;
- (void)parseConnectionEstablishment:(unsigned __int16)establishment dict:(id)dict;
- (void)parseConnectivityTimings:(id)timings;
- (void)parseDTXReport:(unsigned __int16)report dict:(id)dict;
- (void)parseDisconnectReport:(unsigned __int16)report dict:(id)dict;
- (void)parseFaceTimeAggregatedSegmentStats:(id)stats;
- (void)parseHomeKitIPCameraFirstVideoFrame:(id)frame;
- (void)parseHomeKitIPCameraRealtimeStatsReport:(id)report;
- (void)parseHomeKitIPCameraStreamStart:(id)start;
- (void)parseRTStats:(id)stats;
- (void)parseVideoProperty:(unsigned __int16)property dict:(id)dict;
- (void)parseVideoStats:(unsigned __int16)stats dict:(id)dict;
- (void)parseWindowMode:(unsigned __int16)mode dict:(id)dict;
- (void)processSecondDisplayLogTransportInfoStats;
- (void)resetAudioCallHistograms;
- (void)updateHomeKitIPCameraKeyFrameReceivedReport;
- (void)updateHomeKitIPCameraPLISentReport;
- (void)updateMomentsStats:(id)stats;
- (void)wifiCallingAddSamples:(id)samples;
@end

@implementation AWDAdaptor

- (AWDAdaptor)init
{
  v4.receiver = self;
  v4.super_class = AWDAdaptor;
  v2 = [(AWDAdaptor *)&v4 init];
  if (v2)
  {
    v2->_awdstat = objc_alloc_init(AWDStats);
    v2->_videoQualityTimers = objc_alloc_init(MEMORY[0x277CE57F0]);
    [(AWDAdaptor *)v2 setCallStarted:0];
    [(AWDAdaptor *)v2 setRTStatsReceived:0];
    v2->_rtpPacketLossRateArray = objc_alloc_init(MEMORY[0x277CBEB18]);
    v2->_jitterBufferLossRateArray = objc_alloc_init(MEMORY[0x277CBEB18]);
    v2->_jitterBufferUnderflowRateArray = objc_alloc_init(MEMORY[0x277CBEB18]);
    v2->_frameErasureRateArray = objc_alloc_init(MEMORY[0x277CBEB18]);
    v2->_jitterBufferResidencyTimeArray = objc_alloc_init(MEMORY[0x277CBEB18]);
    v2->_timescaleRateArray = objc_alloc_init(MEMORY[0x277CBEB18]);
    v2->_speechTimescaleRateArray = objc_alloc_init(MEMORY[0x277CBEB18]);
    v2->_silenceTimescaleRateArray = objc_alloc_init(MEMORY[0x277CBEB18]);
    v2->_averagePacketLifetimeArray = objc_alloc_init(MEMORY[0x277CBEB18]);
    v2->_maxPacketLifetimeArray = objc_alloc_init(MEMORY[0x277CBEB18]);
    v2->_payloadType = [objc_alloc(MEMORY[0x277CCABA8]) initWithUnsignedInt:0];
    v2->_sampleRate = [objc_alloc(MEMORY[0x277CCABA8]) initWithUnsignedInt:0];
    v2->_ulBitRate = [objc_alloc(MEMORY[0x277CCABA8]) initWithUnsignedInt:0];
    v2->_dlBitRate = [objc_alloc(MEMORY[0x277CCABA8]) initWithUnsignedInt:0];
    v2->_ratType = [objc_alloc(MEMORY[0x277CCABA8]) initWithUnsignedInt:0];
    v2->_jitterBufferMode = [objc_alloc(MEMORY[0x277CCABA8]) initWithUnsignedInt:0];
  }

  return v2;
}

- (void)dealloc
{
  if ([(AWDAdaptor *)self awdstat]&& [(AWDAdaptor *)self callStarted])
  {
    [(TimingCollection *)[(AWDAdaptor *)self videoQualityTimers] stopTimingForKey:4];
    [(TimingCollection *)[(AWDAdaptor *)self videoQualityTimers] totalTimeForKey:4];
    v4 = v3;
    awdstat = [(AWDAdaptor *)self awdstat];
    *&v6 = v4;
    [(AWDStats *)awdstat setLocalVideoDegradeTime:v6];
    [(TimingCollection *)[(AWDAdaptor *)self videoQualityTimers] stopTimingForKey:5];
    [(TimingCollection *)[(AWDAdaptor *)self videoQualityTimers] totalTimeForKey:5];
    v8 = v7;
    awdstat2 = [(AWDAdaptor *)self awdstat];
    *&v10 = v8;
    [(AWDStats *)awdstat2 setRemoteVideoDegradeTime:v10];
    [(TimingCollection *)[(AWDAdaptor *)self videoQualityTimers] stopTimingForKey:0xFFFFFFFFLL];
    [(TimingCollection *)[(AWDAdaptor *)self videoQualityTimers] stopTimingForKey:4294967294];
    [(AWDStats *)[(AWDAdaptor *)self awdstat] duplicationStopEvent];
    [(TimingCollection *)[(AWDAdaptor *)self videoQualityTimers] totalTimeForKey:0xFFFFFFFFLL];
    v12 = v11;
    [(TimingCollection *)[(AWDAdaptor *)self videoQualityTimers] totalTimeForKey:4294967294];
    if (v12 != 0.0)
    {
      v14 = v13;
      [(AWDStats *)[(AWDAdaptor *)self awdstat] setDuplicationPercent:((v14 / v12) * 100.0)];
    }

    [(AWDStats *)[(AWDAdaptor *)self awdstat] callEnd];
  }

  v15.receiver = self;
  v15.super_class = AWDAdaptor;
  [(AWDAdaptor *)&v15 dealloc];
}

- (void)parseAudioTierChange:(id)change
{
  v5 = [change objectForKeyedSubscript:@"Tier"];
  v6 = [change objectForKeyedSubscript:@"Dup"];
  v7 = [change objectForKeyedSubscript:@"Bundle"];
  v8 = [change objectForKeyedSubscript:@"Payload"];
  v9 = [change objectForKeyedSubscript:@"BitRate"];
  v10 = [change objectForKeyedSubscript:@"Mode"];
  if (v5 && v6 && v7 && v8 && v9)
  {
    v11 = v10;
    awdstat = [(AWDAdaptor *)self awdstat];
    intValue = [v5 intValue];
    intValue2 = [v11 intValue];
    intValue3 = [v6 intValue];
    intValue4 = [v8 intValue];
    intValue5 = [v9 intValue];
    intValue6 = [v7 intValue];

    [(AWDStats *)awdstat updateAudioTier:intValue mode:intValue2 duplication:intValue3 codecPayload:intValue4 codecBitrate:intValue5 bundling:intValue6];
  }
}

- (void)parseRTStats:(id)stats
{
  [(AWDStats *)[(AWDAdaptor *)self awdstat] addRTStatsDictionary:stats];

  [(AWDAdaptor *)self setRTStatsReceived:1];
}

- (void)parseVideoStats:(unsigned __int16)stats dict:(id)dict
{
  if (stats == 1)
  {
    v6 = [objc_msgSend(dict objectForKeyedSubscript:{@"Width", "intValue"}];
    awdstat = [(AWDAdaptor *)self awdstat];

    [(AWDStats *)awdstat addVRAWidth:v6];
  }
}

- (void)parseConnectivityTimings:(id)timings
{
  awdstat = [(AWDAdaptor *)self awdstat];

  [(AWDStats *)awdstat addConnectivityTimingDictionary:timings];
}

- (void)parseAWDEvent:(unsigned __int16)event dict:(id)dict
{
  if (event <= 1)
  {
    if (event)
    {
      if (event == 1)
      {
        v11 = [objc_msgSend(dict objectForKey:{@"Term", "intValue"}];
        awdstat = [(AWDAdaptor *)self awdstat];

        [(AWDStats *)awdstat setTerminationReason:v11];
      }
    }

    else
    {
      -[AWDStats callStartIsSender:forTime:mode:](-[AWDAdaptor awdstat](self, "awdstat"), "callStartIsSender:forTime:mode:", [objc_msgSend(dict objectForKeyedSubscript:{@"Send", "BOOLValue"}], objc_msgSend(objc_msgSend(dict, "objectForKeyedSubscript:", @"Time"), "intValue"), objc_msgSend(objc_msgSend(dict, "objectForKeyedSubscript:", @"Mode"), "intValue"));
      [(TimingCollection *)[(AWDAdaptor *)self videoQualityTimers] startTimingForKey:0xFFFFFFFFLL];

      [(AWDAdaptor *)self setCallStarted:1];
    }
  }

  else
  {
    switch(event)
    {
      case 2u:
        v13 = [objc_msgSend(dict objectForKeyedSubscript:{@"Width", "intValue"}];
        v14 = [objc_msgSend(dict objectForKeyedSubscript:{@"Height", "intValue"}];
        awdstat2 = [(AWDAdaptor *)self awdstat];

        [(AWDStats *)awdstat2 setRemoteWidth:v13 height:v14];
        break;
      case 3u:
        v16 = [objc_msgSend(dict objectForKeyedSubscript:{@"ConnType", "intValue"}];
        awdstat3 = [(AWDAdaptor *)self awdstat];

        [(AWDStats *)awdstat3 setConnectionType:v16];
        break;
      case 4u:
        v6 = [dict objectForKeyedSubscript:@"LocalInterface"];
        if (v6)
        {
          [(AWDStats *)[(AWDAdaptor *)self awdstat] setInterface:v6];
        }

        v7 = [dict objectForKeyedSubscript:@"RemoteInterface"];
        if (v7)
        {
          [(AWDStats *)[(AWDAdaptor *)self awdstat] setRemoteInterface:v7];
        }

        v8 = [dict objectForKeyedSubscript:@"LocalInterfaceOUI"];
        if (v8)
        {
          v9 = v8;
          awdstat4 = [(AWDAdaptor *)self awdstat];

          [(AWDStats *)awdstat4 setInterfaceOUI:v9];
        }

        break;
    }
  }
}

- (void)parseCellTechChange:(unsigned __int16)change dict:(id)dict
{
  if (!change)
  {
    v6 = [dict objectForKeyedSubscript:@"CellTech"];
    awdstat = [(AWDAdaptor *)self awdstat];

    [(AWDStats *)awdstat updateCellTech:v6];
  }
}

- (void)parseVideoProperty:(unsigned __int16)property dict:(id)dict
{
  if (!property)
  {
    v7 = [objc_msgSend(dict objectForKeyedSubscript:{@"Framerate", "intValue"}];
    v8 = [objc_msgSend(dict objectForKeyedSubscript:{@"Width", "intValue"}];
    v9 = [objc_msgSend(dict objectForKeyedSubscript:{@"Height", "intValue"}];
    awdstat = [(AWDAdaptor *)self awdstat];

    [(AWDStats *)awdstat setLocalWidth:v8 height:v9 framerate:v7];
  }
}

- (void)parseConnectionEstablishment:(unsigned __int16)establishment dict:(id)dict
{
  establishmentCopy = establishment;
  v6 = [dict objectForKeyedSubscript:@"LocalInterfaceType"];
  if (!establishmentCopy)
  {
    v7 = v6;
    awdstat = [(AWDAdaptor *)self awdstat];

    [(AWDStats *)awdstat updateLocalPrimaryInterface:v7];
  }
}

- (void)parseWindowMode:(unsigned __int16)mode dict:(id)dict
{
  if (!mode)
  {
    v5 = [dict objectForKeyedSubscript:@"State"];
    if (v5)
    {
      v6 = [v5 isEqualToString:@"ForegroundPIP"];
      awdstat = [(AWDAdaptor *)self awdstat];
      if (v6)
      {

        [(AWDStats *)awdstat startPIPState];
      }

      else
      {

        [(AWDStats *)awdstat stopPIPState];
      }
    }
  }
}

- (void)parseDisconnectReport:(unsigned __int16)report dict:(id)dict
{
  v6 = [dict objectForKeyedSubscript:@"RxExcessICE"];
  v7 = [dict objectForKeyedSubscript:@"TxExcessICE"];
  v8 = [dict objectForKeyedSubscript:@"RxExcessRTP"];
  v9 = [dict objectForKeyedSubscript:@"TxExcessRTP"];
  if (v6 && v7 && v8 && v9)
  {
    -[AWDStats setRXExcessICEBytes:TXExcessICEBytes:RXExcessRTPBytes:TXExcessRTPBytes:](-[AWDAdaptor awdstat](self, "awdstat"), "setRXExcessICEBytes:TXExcessICEBytes:RXExcessRTPBytes:TXExcessRTPBytes:", [v6 unsignedIntValue], objc_msgSend(v7, "unsignedIntValue"), objc_msgSend(v8, "unsignedIntValue"), objc_msgSend(v9, "unsignedIntValue"));
  }

  v10 = [dict objectForKeyedSubscript:@"Roaming"];
  if (v10)
  {
    v11 = v10;
    awdstat = [(AWDAdaptor *)self awdstat];
    bOOLValue = [v11 BOOLValue];

    [(AWDStats *)awdstat setRoaming:bOOLValue];
  }
}

- (void)parseDTXReport:(unsigned __int16)report dict:(id)dict
{
  v6 = [dict objectForKeyedSubscript:@"DtxCompRatio"];
  v7 = [dict objectForKeyedSubscript:@"TxBytesActual"];
  v8 = [dict objectForKeyedSubscript:@"TxBytesEstimate"];
  if (v6)
  {
    v9 = v8;
    if (v8)
    {
      if (v7)
      {
        awdstat = [(AWDAdaptor *)self awdstat];
        [v6 doubleValue];
        v12 = v11;
        unsignedIntegerValue = [v9 unsignedIntegerValue];
        v14 = unsignedIntegerValue - [v7 unsignedIntegerValue];

        [(AWDStats *)awdstat setDTXStats:v14 BytesSaved:v12];
      }
    }
  }
}

- (void)parseFaceTimeAggregatedSegmentStats:(id)stats
{
  awdstat = [(AWDAdaptor *)self awdstat];

  [(AWDStats *)awdstat mergeAggregatedSegmentStats:stats];
}

- (void)generateFaceTimeAggregatedCallStats:(id)stats
{
  awdstat = [(AWDAdaptor *)self awdstat];

  [(AWDStats *)awdstat generateAggregatedCallStats:stats];
}

- (void)generateSecondDisplayAggregatedCallStats:(id)stats
{
  awdstat = [(AWDAdaptor *)self awdstat];

  [(AWDStats *)awdstat generateSecondDisplayAggregatedCallStats:stats];
}

- (void)processSecondDisplayLogTransportInfoStats
{
  awdstat = [(AWDAdaptor *)self awdstat];

  [(AWDStats *)awdstat processSecondDisplayLogTransportInfoStats];
}

- (void)updateMomentsStats:(id)stats
{
  awdstat = [(AWDAdaptor *)self awdstat];

  [(AWDStats *)awdstat updateMediaRecorderStats:stats];
}

- (void)parseHomeKitIPCameraRealtimeStatsReport:(id)report
{
  v5 = [report objectForKeyedSubscript:@"VCVSRxAvgFramerate"];
  v6 = [report objectForKeyedSubscript:@"VCVSRxMinFramerate"];
  v7 = [report objectForKeyedSubscript:@"VCVSRxMaxFramerate"];
  v8 = [report objectForKeyedSubscript:@"VCVSRxPacketLossPercentage"];
  v9 = [report objectForKeyedSubscript:@"VCVSRxRoundTripTime"];
  v10 = [report objectForKeyedSubscript:@"VCVSRxNOWRD"];
  v11 = [report objectForKeyedSubscript:@"VCVSTMMB"];
  v12 = [report objectForKeyedSubscript:@"VCVSRxOperatingBitrate"];
  v13 = [report objectForKeyedSubscript:@"VCVSRxVideoStallDuration"];
  awdstat = [(AWDAdaptor *)self awdstat];
  [v5 doubleValue];
  v16 = v15;
  [v6 doubleValue];
  v18 = v17;
  [v7 doubleValue];
  v20 = v19;
  integerValue = [v13 integerValue];
  [v8 doubleValue];
  v23 = (v22 * 10000.0);
  [v9 doubleValue];
  v25 = (v24 * 1000.0);
  [v10 doubleValue];
  v27 = (v26 * 1000.0);
  integerValue2 = [v11 integerValue];
  v29 = ([v12 integerValue] / 1000);

  [(AWDStats *)awdstat updateHomeKitIPCameraRealtimeStats:integerValue minFrameRate:v23 maxFrameRate:v25 videoStallDuration:v27 PLRSample:(integerValue2 / 1000) RTTSample:v29 NOWRDSample:v16 RecommendedRxBitrateSample:v18 ActualRxBitrateSample:v20];
}

- (void)updateHomeKitIPCameraPLISentReport
{
  awdstat = [(AWDAdaptor *)self awdstat];

  [(AWDStats *)awdstat updateHomeKitSessionPLICount];
}

- (void)updateHomeKitIPCameraKeyFrameReceivedReport
{
  awdstat = [(AWDAdaptor *)self awdstat];

  [(AWDStats *)awdstat updateHomeKitSessionKeyframeCount];
}

- (void)parseHomeKitIPCameraStreamStart:(id)start
{
  v5 = [start objectForKeyedSubscript:@"Time"];
  v6 = [start objectForKeyedSubscript:@"VCVSRtcpSendInterval"];
  v7 = [start objectForKeyedSubscript:@"CallID"];
  awdstat = [(AWDAdaptor *)self awdstat];
  [v6 doubleValue];
  -[AWDStats startHomeKitSessionWithCallID:RTCPSendInterval:startTime:](awdstat, "startHomeKitSessionWithCallID:RTCPSendInterval:startTime:", v7, [v5 longValue], v9);

  [(AWDAdaptor *)self setCallStarted:1];
}

- (void)parseHomeKitIPCameraFirstVideoFrame:(id)frame
{
  -[AWDStats firstVideoFrameForHomeKitSessionReceived:](-[AWDAdaptor awdstat](self, "awdstat"), "firstVideoFrameForHomeKitSessionReceived:", [objc_msgSend(frame objectForKeyedSubscript:{@"Time", "longValue"}]);

  [(AWDAdaptor *)self setCallStarted:1];
}

- (void)wifiCallingAddSamples:(id)samples
{
  v5 = [samples objectForKeyedSubscript:@"UplinkCodecBitRate"];
  v6 = [samples objectForKeyedSubscript:@"RTPPacketLossRate"];
  v15 = [samples objectForKeyedSubscript:@"JitterBufferLossRate"];
  v16 = [samples objectForKeyedSubscript:@"JitterBufferUnderflowRate"];
  v17 = [samples objectForKeyedSubscript:@"FrameErasureRate"];
  v18 = [samples objectForKeyedSubscript:@"JitterBufferResidencyTime"];
  v19 = [samples objectForKeyedSubscript:@"Payload"];
  v7 = [samples objectForKeyedSubscript:@"CodecSampleRate"];
  v8 = [samples objectForKeyedSubscript:@"DownlinkCodecBitRate"];
  v9 = [samples objectForKeyedSubscript:@"RATType"];
  v21 = [samples objectForKeyedSubscript:@"AudioRTPPacketsReceivedCount"];
  v24 = [samples objectForKeyedSubscript:@"AudioRTPPacketsLostCount"];
  v26 = [samples objectForKeyedSubscript:@"JitterBufferLossCount"];
  v10 = [samples objectForKeyedSubscript:@"TimescaleRate"];
  v11 = [samples objectForKeyedSubscript:@"SpeechTimescaleRate"];
  v12 = [samples objectForKeyedSubscript:@"SilenceTimescaleRate"];
  v20 = [samples objectForKeyedSubscript:@"AveragePacketLifetime"];
  v22 = [samples objectForKeyedSubscript:@"MaxPacketLifetime"];
  v23 = [samples objectForKeyedSubscript:@"MaxInterArrivalJitter"];
  v25 = [samples objectForKeyedSubscript:@"AverageInterArrivalJitter"];
  v27 = [samples objectForKeyedSubscript:@"DTMFTonePlaybackEnabled"];
  v28 = [samples objectForKeyedSubscript:@"DTMFEventCallbacksEnabled"];
  v29 = [samples objectForKeyedSubscript:@"DTMFEventTotalCount"];
  v30 = [samples objectForKeyedSubscript:@"FramesPlayedCount"];
  v13 = [samples objectForKeyedSubscript:@"JitterBufferMode"];
  if (v13)
  {
    v14 = v13;

    self->_jitterBufferMode = [v14 copy];
  }

  if (v5)
  {

    self->_ulBitRate = [v5 copy];
  }

  else
  {
    if (v6)
    {
      [(NSMutableArray *)self->_rtpPacketLossRateArray addObject:v6];
    }

    if (v15)
    {
      [(NSMutableArray *)self->_jitterBufferLossRateArray addObject:?];
    }

    if (v16)
    {
      [(NSMutableArray *)self->_jitterBufferUnderflowRateArray addObject:?];
    }

    if (v17)
    {
      [(NSMutableArray *)self->_frameErasureRateArray addObject:?];
    }

    if (v18)
    {
      [(NSMutableArray *)self->_jitterBufferResidencyTimeArray addObject:?];
    }

    if (v10)
    {
      [(NSMutableArray *)self->_timescaleRateArray addObject:v10];
    }

    if (v11)
    {
      [(NSMutableArray *)self->_speechTimescaleRateArray addObject:v11];
    }

    if (v12)
    {
      [(NSMutableArray *)self->_silenceTimescaleRateArray addObject:v12];
    }

    if (v19)
    {

      self->_payloadType = [v19 copy];
    }

    if (v7)
    {

      self->_sampleRate = [v7 copy];
    }

    if (v8)
    {

      self->_dlBitRate = [v8 copy];
    }

    if (v9)
    {

      self->_ratType = [v9 copy];
    }

    if (v21)
    {
      self->_rtpPacketsReceived += [v21 intValue];
    }

    if (v24)
    {
      self->_rtpPacketsLost += [v24 intValue];
    }

    if (v26)
    {
      self->_jitterBufferLossCount += [v26 intValue];
    }

    if (v20)
    {
      [(NSMutableArray *)self->_averagePacketLifetimeArray addObject:?];
    }

    if (v22)
    {
      [(NSMutableArray *)self->_maxPacketLifetimeArray addObject:?];
    }

    if (v23)
    {
      self->_maxInterArrivalJitter = [v23 unsignedIntValue];
    }

    if (v25)
    {
      self->_averageInterArrivalJitter = [v25 unsignedIntValue];
    }

    if (v27)
    {
      self->_dtmfTonePlaybackEnabled = [v27 unsignedIntValue];
    }

    if (v28)
    {
      self->_dtmfEventCallbacksEnabled = [v28 unsignedIntValue];
    }

    if (v29)
    {
      self->_dtmfEventTotalCount = [v29 unsignedIntValue];
    }

    if (v30)
    {
      self->_totalFramesPlayed += [v30 unsignedIntValue];
    }
  }
}

- (double)computeMean:(id)mean
{
  v18 = *MEMORY[0x277D85DE8];
  if ([mean count])
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v4 = [mean countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v14;
      v7 = 0.0;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v14 != v6)
          {
            objc_enumerationMutation(mean);
          }

          [*(*(&v13 + 1) + 8 * i) doubleValue];
          v7 = v7 + v9;
        }

        v5 = [mean countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v5);
    }

    else
    {
      v7 = 0.0;
    }

    v10 = v7 / [mean count];
  }

  else
  {
    v10 = 0.0;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        [AWDAdaptor computeMean:];
      }
    }
  }

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

- (double)computeMax:(id)max
{
  v17 = *MEMORY[0x277D85DE8];
  if ([max count])
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v4 = [max countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v13;
      v7 = 0.0;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v13 != v6)
          {
            objc_enumerationMutation(max);
          }

          [*(*(&v12 + 1) + 8 * i) doubleValue];
          v7 = fmax(v7, v9);
        }

        v5 = [max countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v5);
    }

    else
    {
      v7 = 0.0;
    }
  }

  else
  {
    v7 = 0.0;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        [AWDAdaptor computeMax:];
      }
    }
  }

  v10 = *MEMORY[0x277D85DE8];
  return v7;
}

- (double)computeMedian:(id)median
{
  v4 = [median count];
  if (v4)
  {
    v5 = [median sortedArrayUsingSelector:sel_compare_];
    [objc_msgSend(v5 objectAtIndexedSubscript:{(v4 + (v4 >> 31)) >> 1), "floatValue"}];
    v7 = v6;
    if ((v4 & 1) == 0)
    {
      [objc_msgSend(v5 objectAtIndexedSubscript:{((v4 + (v4 >> 31)) >> 1) - 1), "floatValue"}];
      return (v7 + v8) * 0.5;
    }
  }

  else
  {
    v7 = 0.0;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        [AWDAdaptor computeMedian:];
      }
    }
  }

  return v7;
}

- (double)compute95thPercentile:(id)percentile
{
  if ([percentile count])
  {
    v4 = [percentile sortedArrayUsingSelector:sel_compare_];
    [objc_msgSend(v4 objectAtIndexedSubscript:{(objc_msgSend(v4, "count") * 0.95)), "floatValue"}];
    return v5;
  }

  else
  {
    v6 = 0.0;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        [AWDAdaptor compute95thPercentile:];
      }
    }
  }

  return v6;
}

- (unsigned)allocHistogramForValues:(id)values withBinBoundaries:(id)boundaries
{
  v46 = *MEMORY[0x277D85DE8];
  if (![boundaries count])
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        [AWDAdaptor allocHistogramForValues:withBinBoundaries:];
      }
    }

    goto LABEL_34;
  }

  if (![values count])
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        [AWDAdaptor allocHistogramForValues:withBinBoundaries:];
      }
    }

LABEL_34:
    v12 = 0;
    goto LABEL_35;
  }

  if ([boundaries count] >= 2 && objc_msgSend(boundaries, "count") >= 2)
  {
    v6 = 1;
    while (1)
    {
      [objc_msgSend(boundaries objectAtIndexedSubscript:{v6), "doubleValue"}];
      v8 = v7;
      v9 = v6 - 1;
      [objc_msgSend(boundaries objectAtIndexedSubscript:{v9), "doubleValue"}];
      if (v8 < v10)
      {
        break;
      }

      v6 = v9 + 2;
      if (v6 >= [boundaries count])
      {
        goto LABEL_8;
      }
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v32 = VRTraceErrorLogLevelToCSTR();
      v33 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        [(AWDAdaptor *)v32 allocHistogramForValues:boundaries withBinBoundaries:v33];
      }
    }

    goto LABEL_34;
  }

LABEL_8:
  v11 = [boundaries count];
  v12 = malloc_type_calloc(v11 + 1, 4uLL, 0x100004052888210uLL);
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v13 = [values countByEnumeratingWithState:&v40 objects:v45 count:16];
  if (v13)
  {
    v14 = v13;
    obj = values;
    v35 = *v41;
    v15 = v11;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v41 != v35)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v40 + 1) + 8 * i);
        [v17 doubleValue];
        v19 = v18;
        [objc_msgSend(boundaries "lastObject")];
        v20 = v15;
        if (v19 > v21)
        {
LABEL_24:
          ++v12[v20];
        }

        else
        {
          v38 = 0u;
          v39 = 0u;
          v36 = 0u;
          v37 = 0u;
          v22 = [boundaries countByEnumeratingWithState:&v36 objects:v44 count:16];
          if (v22)
          {
            v23 = v22;
            v24 = *v37;
            while (2)
            {
              for (j = 0; j != v23; ++j)
              {
                if (*v37 != v24)
                {
                  objc_enumerationMutation(boundaries);
                }

                v26 = *(*(&v36 + 1) + 8 * j);
                [v17 doubleValue];
                v28 = v27;
                [v26 doubleValue];
                if (v28 <= v29)
                {
                  v20 = [boundaries indexOfObject:v26];
                  goto LABEL_24;
                }
              }

              v23 = [boundaries countByEnumeratingWithState:&v36 objects:v44 count:16];
              if (v23)
              {
                continue;
              }

              break;
            }
          }
        }
      }

      v14 = [obj countByEnumeratingWithState:&v40 objects:v45 count:16];
    }

    while (v14);
  }

LABEL_35:
  v30 = *MEMORY[0x277D85DE8];
  return v12;
}

- (id)transformHistogram:(unsigned int *)histogram ofSize:(unsigned int)size
{
  v4 = 0;
  if (histogram && size)
  {
    sizeCopy = size;
    v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:size];
    for (i = 0; i != sizeCopy; ++i)
    {
      [v4 setObject:objc_msgSend(MEMORY[0x277CCABA8] atIndexedSubscript:{"numberWithUnsignedInt:", histogram[i]), i}];
    }
  }

  return v4;
}

- (id)computeLossRate:(unsigned int)rate totalPackets:(unsigned int)packets
{
  if (packets)
  {

    return [(AWDAdaptor *)self transformStats:rate / packets];
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        [AWDAdaptor computeLossRate:totalPackets:];
      }
    }

    return &unk_284F7E920;
  }
}

- (BOOL)sendAnalyticsDetailedVoiceCallEvent
{
  v35 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v30 = v3;
      v31 = 2080;
      v32 = "[AWDAdaptor sendAnalyticsDetailedVoiceCallEvent]";
      v33 = 1024;
      v34 = 837;
      _os_log_impl(&dword_23D482000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Generating detailed call end report for submission to CoreAnalytics", buf, 0x1Cu);
    }
  }

  v5 = [(AWDAdaptor *)self allocHistogramForValues:self->_rtpPacketLossRateArray withBinBoundaries:&unk_284F7ECB8];
  v28 = -[AWDAdaptor transformHistogram:ofSize:](self, "transformHistogram:ofSize:", v5, [&unk_284F7ECD0 count]);
  free(v5);
  v6 = [(AWDAdaptor *)self allocHistogramForValues:self->_jitterBufferLossRateArray withBinBoundaries:&unk_284F7ECE8];
  v27 = -[AWDAdaptor transformHistogram:ofSize:](self, "transformHistogram:ofSize:", v6, [&unk_284F7ED00 count]);
  free(v6);
  v7 = [(AWDAdaptor *)self allocHistogramForValues:self->_jitterBufferUnderflowRateArray withBinBoundaries:&unk_284F7ED18];
  v26 = -[AWDAdaptor transformHistogram:ofSize:](self, "transformHistogram:ofSize:", v7, [&unk_284F7ED30 count]);
  free(v7);
  v8 = [(AWDAdaptor *)self allocHistogramForValues:self->_frameErasureRateArray withBinBoundaries:&unk_284F7ED48];
  v9 = -[AWDAdaptor transformHistogram:ofSize:](self, "transformHistogram:ofSize:", v8, [&unk_284F7ED60 count]);
  free(v8);
  v10 = [(AWDAdaptor *)self allocHistogramForValues:self->_jitterBufferResidencyTimeArray withBinBoundaries:&unk_284F7ED78];
  v11 = -[AWDAdaptor transformHistogram:ofSize:](self, "transformHistogram:ofSize:", v10, [&unk_284F7ED90 count]);
  free(v10);
  v12 = [(AWDAdaptor *)self allocHistogramForValues:self->_timescaleRateArray withBinBoundaries:&unk_284F7EDA8];
  v13 = -[AWDAdaptor transformHistogram:ofSize:](self, "transformHistogram:ofSize:", v12, [&unk_284F7EDC0 count]);
  free(v12);
  v14 = [(AWDAdaptor *)self allocHistogramForValues:self->_speechTimescaleRateArray withBinBoundaries:&unk_284F7EDD8];
  v15 = -[AWDAdaptor transformHistogram:ofSize:](self, "transformHistogram:ofSize:", v14, [&unk_284F7EDF0 count]);
  free(v14);
  v16 = [(AWDAdaptor *)self allocHistogramForValues:self->_silenceTimescaleRateArray withBinBoundaries:&unk_284F7EE08];
  v17 = -[AWDAdaptor transformHistogram:ofSize:](self, "transformHistogram:ofSize:", v16, [&unk_284F7EE20 count]);
  free(v16);
  v18 = [(AWDAdaptor *)self allocHistogramForValues:self->_averagePacketLifetimeArray withBinBoundaries:&unk_284F7EE38];
  v19 = -[AWDAdaptor transformHistogram:ofSize:](self, "transformHistogram:ofSize:", v18, [&unk_284F7EE50 count]);
  free(v18);
  v20 = [(AWDAdaptor *)self allocHistogramForValues:self->_maxPacketLifetimeArray withBinBoundaries:&unk_284F7EE68];
  v21 = -[AWDAdaptor transformHistogram:ofSize:](self, "transformHistogram:ofSize:", v20, [&unk_284F7EE80 count]);
  free(v20);
  v22 = [(AWDAdaptor *)self computeLossRate:self->_rtpPacketsLost totalPackets:self->_rtpPacketsReceived + self->_rtpPacketsLost];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  [dictionary setObject:self->_payloadType forKeyedSubscript:@"vocoderType"];
  [dictionary setObject:self->_sampleRate forKeyedSubscript:@"vocoderBandwidth"];
  [dictionary setObject:self->_ulBitRate forKeyedSubscript:@"ulVocoderBitRate"];
  [dictionary setObject:self->_dlBitRate forKeyedSubscript:@"dlVocoderBitRate"];
  [dictionary setObject:self->_ratType forKeyedSubscript:@"callType"];
  [dictionary setObject:v22 forKeyedSubscript:@"rtpPacketsLossRate"];
  [dictionary setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", self->_jitterBufferLossCount), @"jitterBufferLossCount"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", self->_maxInterArrivalJitter), @"maxInterArrivalJitter"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", self->_averageInterArrivalJitter), @"averageInterArrivalJitter"}];
  [dictionary setObject:v28 forKeyedSubscript:@"rtpPacketLossRateHistogram"];
  [dictionary setObject:v27 forKeyedSubscript:@"jitterBufferLossRateHistogram"];
  [dictionary setObject:v26 forKeyedSubscript:@"jitterBufferUnderflowRateHistogram"];
  [dictionary setObject:v9 forKeyedSubscript:@"frameErasureRateHistogram"];
  [dictionary setObject:v11 forKeyedSubscript:@"jitterBufferResidencyTimeHistogram"];
  [dictionary setObject:v13 forKeyedSubscript:@"timescaleRateHistogram"];
  [dictionary setObject:v15 forKeyedSubscript:@"speechTimescaleRateHistogram"];
  [dictionary setObject:v17 forKeyedSubscript:@"silenceTimescaleRateHistogram"];
  [dictionary setObject:v19 forKeyedSubscript:@"averagePacketLifetimeHistogram"];
  [dictionary setObject:v21 forKeyedSubscript:@"maxPacketLifetimeHistogram"];
  [dictionary setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", self->_dtmfTonePlaybackEnabled), @"dtmfTonePlaybackEnabled"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", self->_dtmfEventCallbacksEnabled), @"dtmfEventCallbacksEnabled"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", self->_dtmfEventTotalCount), @"dtmfEventTotalCount"}];
  [dictionary setObject:self->_jitterBufferMode forKeyedSubscript:@"jitterBufferMode"];
  [dictionary setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", (self->_streamConnectionTime * 1000.0)), @"streamConnectionTime"}];
  result = [GKSCoreAnalyticsAdaptor analyticsSendEventWrapper:@"IMSCallReport" withPayload:dictionary hasHistogram:1];
  v25 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)sendAnalyticsSummaryVoiceCallEvent
{
  v68 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v63 = v3;
      v64 = 2080;
      v65 = "[AWDAdaptor sendAnalyticsSummaryVoiceCallEvent]";
      v66 = 1024;
      v67 = 912;
      _os_log_impl(&dword_23D482000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Generating summary call end report for submission to CoreAnalytics", buf, 0x1Cu);
    }
  }

  [(AWDAdaptor *)self computeMean:self->_rtpPacketLossRateArray];
  v37 = [(AWDAdaptor *)self transformStats:?];
  [(AWDAdaptor *)self computeMean:self->_jitterBufferUnderflowRateArray];
  v36 = [(AWDAdaptor *)self transformStats:?];
  [(AWDAdaptor *)self computeMean:self->_frameErasureRateArray];
  v35 = [(AWDAdaptor *)self transformStats:?];
  v5 = MEMORY[0x277CCABA8];
  [(AWDAdaptor *)self computeMean:self->_jitterBufferResidencyTimeArray];
  v34 = [v5 numberWithUnsignedInt:v6];
  v7 = MEMORY[0x277CCABA8];
  [(AWDAdaptor *)self computeMedian:self->_jitterBufferResidencyTimeArray];
  v33 = [v7 numberWithUnsignedInt:v8];
  v9 = MEMORY[0x277CCABA8];
  [(AWDAdaptor *)self compute95thPercentile:self->_jitterBufferResidencyTimeArray];
  v32 = [v9 numberWithUnsignedInt:v10];
  [(AWDAdaptor *)self computeMean:self->_timescaleRateArray];
  v31 = [(AWDAdaptor *)self transformStats:?];
  [(AWDAdaptor *)self compute95thPercentile:self->_timescaleRateArray];
  v30 = [(AWDAdaptor *)self transformStats:?];
  [(AWDAdaptor *)self computeMean:self->_speechTimescaleRateArray];
  v29 = [(AWDAdaptor *)self transformStats:?];
  [(AWDAdaptor *)self compute95thPercentile:self->_speechTimescaleRateArray];
  v11 = [(AWDAdaptor *)self transformStats:?];
  [(AWDAdaptor *)self computeMean:self->_silenceTimescaleRateArray];
  v12 = [(AWDAdaptor *)self transformStats:?];
  [(AWDAdaptor *)self compute95thPercentile:self->_silenceTimescaleRateArray];
  v13 = [(AWDAdaptor *)self transformStats:?];
  v14 = MEMORY[0x277CCABA8];
  [(AWDAdaptor *)self computeMean:self->_averagePacketLifetimeArray];
  v16 = [v14 numberWithUnsignedInt:v15];
  v17 = MEMORY[0x277CCABA8];
  [(AWDAdaptor *)self computeMax:self->_maxPacketLifetimeArray];
  v19 = [v17 numberWithUnsignedInt:v18];
  v20 = MEMORY[0x277CCABA8];
  [(AWDAdaptor *)self compute95thPercentile:self->_averagePacketLifetimeArray];
  v22 = [v20 numberWithUnsignedInt:v21];
  v23 = [(AWDAdaptor *)self computeLossRate:self->_rtpPacketsLost totalPackets:self->_rtpPacketsReceived + self->_rtpPacketsLost];
  v24 = [(AWDAdaptor *)self computeLossRate:self->_jitterBufferLossCount totalPackets:self->_totalFramesPlayed];
  v38[0] = @"vocoderType";
  v38[1] = @"vocoderBandwidth";
  v38[2] = @"ulVocoderBitRate";
  v38[3] = @"dlVocoderBitRate";
  v25 = *&self->_ulBitRate;
  v39[0] = *&self->_payloadType;
  v39[1] = v25;
  v38[4] = @"callType";
  v38[5] = @"rtpPacketsLossRate";
  ratType = self->_ratType;
  v41 = v23;
  v38[6] = @"jitterBufferLossCount";
  v42 = [MEMORY[0x277CCABA8] numberWithUnsignedInt:self->_jitterBufferLossCount];
  v38[7] = @"maxInterArrivalJitter";
  v43 = [MEMORY[0x277CCABA8] numberWithUnsignedInt:self->_maxInterArrivalJitter];
  v38[8] = @"averageInterArrivalJitter";
  v44 = [MEMORY[0x277CCABA8] numberWithUnsignedInt:self->_averageInterArrivalJitter];
  v45 = v37;
  v38[9] = @"rtpPacketLossRateMean";
  v38[10] = @"jitterBufferLossRateMean";
  v46 = v24;
  v47 = v36;
  v38[11] = @"jitterBufferUnderflowRateMean";
  v38[12] = @"frameErasureRateMean";
  v48 = v35;
  v49 = v34;
  v38[13] = @"jitterBufferResidencyTimeMean";
  v38[14] = @"jitterBufferResidencyTimeMedian";
  v50 = v33;
  v51 = v32;
  v38[15] = @"jitterBufferResidencyTime95Percentile";
  v38[16] = @"timescaleRateMean";
  v52 = v31;
  v53 = v30;
  v38[17] = @"timescaleRate95Percentile";
  v38[18] = @"speechTimescaleRateMean";
  v54 = v29;
  v55 = v11;
  v38[19] = @"speechTimescaleRate95Percentile";
  v38[20] = @"silenceTimescaleRateMean";
  v56 = v12;
  v57 = v13;
  v38[21] = @"silenceTimescaleRate95Percentile";
  v38[22] = @"packetLifetimeMean";
  v58 = v16;
  v59 = v19;
  v38[23] = @"packetLifetimeMax";
  v38[24] = @"packetLifetime95Percentile";
  v38[25] = @"jitterBufferMode";
  jitterBufferMode = self->_jitterBufferMode;
  v60 = v22;
  v61 = jitterBufferMode;
  result = +[GKSCoreAnalyticsAdaptor analyticsSendEventWrapper:withPayload:hasHistogram:](GKSCoreAnalyticsAdaptor, "analyticsSendEventWrapper:withPayload:hasHistogram:", @"IMSCallSummaryStats", [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:v38 count:26], 0);
  v28 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)wifiCallingAddSamplesGenerateAndSendCallEndReport:(id)report
{
  v54 = *MEMORY[0x277D85DE8];
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  v6 = MEMORY[0x277CE5818];
  if (ErrorLogLevelForModule >= 7)
  {
    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *v6;
    if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
    {
      v38 = 136315650;
      v39 = v7;
      v40 = 2080;
      v41 = "[AWDAdaptor wifiCallingAddSamplesGenerateAndSendCallEndReport:]";
      v42 = 1024;
      v43 = 966;
      _os_log_impl(&dword_23D482000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Generating call end report for submission to AWD", &v38, 0x1Cu);
    }
  }

  v9 = [report objectForKeyedSubscript:@"CallID"];
  if (!v9)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
      {
        [AWDAdaptor wifiCallingAddSamplesGenerateAndSendCallEndReport:];
      }
    }

    v9 = @"0";
  }

  v10 = [objc_alloc(MEMORY[0x277D7BC58]) initWithComponentId:43 andBlockOnConfiguration:1];
  [v10 registerConfigChangeCallback:&__block_literal_global_0];
  v11 = [v10 newMetricContainerWithIdentifier:2818049];
  v12 = v11;
  if (v10)
  {
    v13 = v11 == 0;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
    v31 = 0;
    v14 = 0;
  }

  else
  {
    v15 = [(AWDAdaptor *)self allocHistogramForValues:self->_rtpPacketLossRateArray withBinBoundaries:&unk_284F7EE98];
    v16 = [(AWDAdaptor *)self allocHistogramForValues:self->_jitterBufferUnderflowRateArray withBinBoundaries:&unk_284F7EEB0];
    v17 = [(AWDAdaptor *)self allocHistogramForValues:self->_frameErasureRateArray withBinBoundaries:&unk_284F7EEC8];
    v18 = [(AWDAdaptor *)self allocHistogramForValues:self->_jitterBufferResidencyTimeArray withBinBoundaries:&unk_284F7EEE0];
    [(AWDAdaptor *)self computeMean:self->_rtpPacketLossRateArray];
    v20 = v19;
    [(AWDAdaptor *)self computeMean:self->_jitterBufferUnderflowRateArray];
    v22 = v21;
    [(AWDAdaptor *)self computeMean:self->_frameErasureRateArray];
    v24 = v23;
    [(AWDAdaptor *)self computeMean:self->_jitterBufferResidencyTimeArray];
    v26 = v25;
    [(AWDAdaptor *)self computeMedian:self->_jitterBufferResidencyTimeArray];
    v28 = v27;
    [(AWDAdaptor *)self compute95thPercentile:self->_jitterBufferResidencyTimeArray];
    v30 = v29;
    v31 = objc_alloc_init(MEMORY[0x277D81940]);
    [v31 setTimestamp:{objc_msgSend(v10, "getAWDTimestamp")}];
    [v31 setCallID:v9];
    if (v15)
    {
      [v31 setRtpPacketLossRateHistograms:v15 count:{objc_msgSend(&unk_284F7EEF8, "count") + 1}];
    }

    if (v16)
    {
      [v31 setJitterBufferUnderflowRateHistograms:v16 count:{objc_msgSend(&unk_284F7EF10, "count") + 1}];
    }

    if (v17)
    {
      [v31 setFrameErasureRateHistograms:v17 count:{objc_msgSend(&unk_284F7EF28, "count") + 1}];
    }

    if (v18)
    {
      [v31 setJitterBufferResidencyTimeHistograms:v18 count:{objc_msgSend(&unk_284F7EF40, "count") + 1}];
    }

    [v31 setRtpPacketLossRateMean:(v20 * 1000.0)];
    [v31 setJitterBufferUnderflowRateMean:(v22 * 1000.0)];
    [v31 setFrameErasureRateMean:(v24 * 1000.0)];
    [v31 setJitterBufferResidencyTimeMean:(v26 * 1000.0)];
    [v31 setJitterBufferResidencyTimeMedian:(v28 * 1000.0)];
    [v31 setJitterBufferResidencyTime95Percentile:(v30 * 1000.0)];
    [v31 setVocoderType:{-[NSNumber unsignedIntValue](self->_payloadType, "unsignedIntValue")}];
    [v31 setVocoderSampleRate:{-[NSNumber unsignedIntValue](self->_sampleRate, "unsignedIntValue")}];
    [v31 setDlVocoderBitRate:{-[NSNumber unsignedIntValue](self->_dlBitRate, "unsignedIntValue")}];
    [v31 setUlVocoderBitRate:{-[NSNumber unsignedIntValue](self->_ulBitRate, "unsignedIntValue")}];
    [v31 setRatType:{-[NSNumber unsignedIntValue](self->_ratType, "unsignedIntValue")}];
    if (v31)
    {
      [v12 setMetric:v31];
      v14 = [v10 submitMetric:v12];
    }

    else
    {
      v14 = 0;
    }

    free(v15);
    free(v16);
    free(v17);
    free(v18);
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v32 = VRTraceErrorLogLevelToCSTR();
    v33 = *v6;
    if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
    {
      if (v14)
      {
        v34 = "Successfully reported";
      }

      else
      {
        v34 = "Failed to report";
      }

      v35 = [objc_msgSend(v31 "description")];
      v38 = 136316930;
      v39 = v32;
      v40 = 2080;
      v41 = "[AWDAdaptor wifiCallingAddSamplesGenerateAndSendCallEndReport:]";
      v42 = 1024;
      v43 = 1041;
      v44 = 2048;
      v45 = v10;
      v46 = 2048;
      v47 = v12;
      v48 = 1024;
      v49 = 2818049;
      v50 = 2080;
      v51 = v34;
      v52 = 2080;
      v53 = v35;
      _os_log_impl(&dword_23D482000, v33, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d AWD Server (%p) / Container (%p) / Metric ID (%x) -- %s:\n%s", &v38, 0x4Au);
    }
  }

  v36 = *MEMORY[0x277D85DE8];
  return v14;
}

void __64__AWDAdaptor_wifiCallingAddSamplesGenerateAndSendCallEndReport___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136316162;
      v9 = v5;
      v10 = 2080;
      v11 = "[AWDAdaptor wifiCallingAddSamplesGenerateAndSendCallEndReport:]_block_invoke";
      v12 = 1024;
      v13 = 978;
      v14 = 2080;
      v15 = [objc_msgSend(a2 "description")];
      v16 = 2080;
      v17 = [objc_msgSend(a3 "description")];
      _os_log_impl(&dword_23D482000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d AWD server configuration changed: queriables=%s triggers=%s", &v8, 0x30u);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (BOOL)sendAnalyticsAudioFrameCountStatisticsEvent:(id)event
{
  v5 = [event objectForKeyedSubscript:@"AudioTotalFrameCount"];
  [v5 doubleValue];
  if (v6 <= 0.0)
  {
    [(AWDAdaptor *)v5 sendAnalyticsAudioFrameCountStatisticsEvent:?];
    return v57;
  }

  else
  {
    selfCopy = self;
    v7 = [event objectForKeyedSubscript:@"AudioNoDataFrameCount"];
    v8 = [event objectForKeyedSubscript:@"AudioSilenceFrameCount"];
    v9 = [event objectForKeyedSubscript:@"AudioSpeechFrameCount"];
    v10 = [event objectForKeyedSubscript:@"AudioSpeechLostFrameCount"];
    v11 = [event objectForKeyedSubscript:@"AudioSpeechBadFrameCount"];
    v12 = MEMORY[0x277CCABA8];
    [v9 doubleValue];
    v14 = v13;
    [v10 doubleValue];
    v16 = v14 - v15;
    [v11 doubleValue];
    v18 = [v12 numberWithDouble:v16 - v17];
    v19 = MEMORY[0x277CCABA8];
    [v8 doubleValue];
    v21 = v20;
    [v7 doubleValue];
    v23 = [v19 numberWithDouble:v21 - v22];
    v24 = MEMORY[0x277CCABA8];
    [v7 doubleValue];
    v26 = v25 * 100.0;
    [v5 doubleValue];
    v53 = [v24 numberWithDouble:v26 / v27];
    v28 = MEMORY[0x277CCABA8];
    [v10 doubleValue];
    v30 = v29 * 100.0;
    [v5 doubleValue];
    v54 = [v28 numberWithDouble:v30 / v31];
    v32 = MEMORY[0x277CCABA8];
    [v11 doubleValue];
    v34 = v33 * 100.0;
    [v5 doubleValue];
    v52 = [v32 numberWithDouble:v34 / v35];
    v36 = MEMORY[0x277CCABA8];
    v55 = v18;
    [v18 doubleValue];
    v38 = v37 * 100.0;
    [v5 doubleValue];
    v51 = [v36 numberWithDouble:v38 / v39];
    v40 = MEMORY[0x277CCABA8];
    [v23 doubleValue];
    v42 = v41 * 100.0;
    [v5 doubleValue];
    v50 = [v40 numberWithDouble:v42 / v43];
    if ([event objectForKeyedSubscript:@"Payload"])
    {
      payloadType = [event objectForKeyedSubscript:@"Payload"];
    }

    else
    {
      payloadType = selfCopy->_payloadType;
    }

    v45 = [event objectForKeyedSubscript:@"AudioStatDirection"];
    if ([v45 integerValue])
    {
      v46 = @"DownlinkCodecBitRate";
    }

    else
    {
      v46 = @"UplinkCodecBitRate";
    }

    v47 = [event objectForKeyedSubscript:v46];
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    [dictionary setObject:v45 forKeyedSubscript:@"statDirection"];
    [dictionary setObject:v47 forKeyedSubscript:@"vocoderBitRate"];
    [dictionary setObject:payloadType forKeyedSubscript:@"vocoderType"];
    [dictionary setObject:v5 forKeyedSubscript:@"totalFrameCount"];
    [dictionary setObject:v7 forKeyedSubscript:@"noDataFrameCount"];
    [dictionary setObject:v23 forKeyedSubscript:@"silenceDataFrameCount"];
    [dictionary setObject:v55 forKeyedSubscript:@"speechGoodFrameCount"];
    [dictionary setObject:v10 forKeyedSubscript:@"speechLostFrameCount"];
    [dictionary setObject:v11 forKeyedSubscript:@"speechBadFrameCount"];
    [dictionary setObject:v53 forKeyedSubscript:@"noDataFramePercent"];
    [dictionary setObject:v50 forKeyedSubscript:@"silenceDataFramePercent"];
    [dictionary setObject:v51 forKeyedSubscript:@"speechGoodFramePercent"];
    [dictionary setObject:v54 forKeyedSubscript:@"speechLostFramePercent"];
    [dictionary setObject:v52 forKeyedSubscript:@"speechBadFramePercent"];
    [dictionary setObject:objc_msgSend(event forKeyedSubscript:{"objectForKeyedSubscript:", @"RATType", @"callType"}];
    [dictionary setObject:objc_msgSend(event forKeyedSubscript:{"objectForKeyedSubscript:", @"CodecSampleRate", @"codecSampleRate"}];
    [dictionary setObject:objc_msgSend(event forKeyedSubscript:{"objectForKeyedSubscript:", @"AudioTop1UsedBitrate", @"top1UsedBitRate"}];
    [dictionary setObject:objc_msgSend(event forKeyedSubscript:{"objectForKeyedSubscript:", @"AudioTop2UsedBitrate", @"top2UsedBitRate"}];
    [dictionary setObject:objc_msgSend(event forKeyedSubscript:{"objectForKeyedSubscript:", @"AudioTop3UsedBitrate", @"top3UsedBitRate"}];
    [dictionary setObject:selfCopy->_jitterBufferMode forKeyedSubscript:@"jitterBufferMode"];

    return [GKSCoreAnalyticsAdaptor analyticsSendEventWrapper:@"IMSCallAudioFrameStats" withPayload:dictionary hasHistogram:0];
  }
}

- (BOOL)sendAnalyticsAudioDistortionStatisticsEvent:(id)event
{
  v32 = *MEMORY[0x277D85DE8];
  v22 = [event objectForKeyedSubscript:@"AudioStatDirection"];
  if ([v22 integerValue])
  {
    v5 = @"DownlinkCodecBitRate";
  }

  else
  {
    v5 = @"UplinkCodecBitRate";
  }

  v21 = [event objectForKeyedSubscript:v5];
  selfCopy = self;
  if ([event objectForKeyedSubscript:@"Payload"])
  {
    payloadType = [event objectForKeyedSubscript:@"Payload"];
  }

  else
  {
    payloadType = self->_payloadType;
  }

  v6 = [objc_msgSend(event objectForKeyedSubscript:{@"AudioTotalFrameCount", "intValue"}];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v30[0] = @"AudioDistortionContinuousSpeechLoss";
  v30[1] = @"AudioDistortionAverageSpeechLoss";
  v30[2] = @"AudioDistortionRxLinkBroken";
  v30[3] = @"AudioDistortionRxSilence";
  v30[4] = @"AudioDistortionTxSilence";
  v30[5] = @"AudioDistortionZerosTx";
  v30[6] = @"AudioDistortionZerosRx";
  v30[7] = @"AudioDistortionLowEnergyTx";
  v30[8] = @"AudioDistortionLowEnergyRx";
  v30[9] = @"AudioDistortionHighNoiseTx";
  v30[10] = @"AudioDistortionHighNoiseRx";
  v30[11] = @"AudioDistortionDownlinkRtpTimeout";
  obj = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:12];
  v7 = [obj countByEnumeratingWithState:&v24 objects:v31 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = (20 * v6);
    v10 = *v25;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v25 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v24 + 1) + 8 * i);
        v13 = [event objectForKeyedSubscript:{objc_msgSend(MEMORY[0x277CCACA0], "stringWithFormat:", @"%@Count", v12)}];
        v14 = [event objectForKeyedSubscript:{objc_msgSend(MEMORY[0x277CCACA0], "stringWithFormat:", @"%@Duration", v12)}];
        if ([v14 integerValue])
        {
          v28[0] = @"codecSampleRate";
          v29[0] = [event objectForKeyedSubscript:@"CodecSampleRate"];
          v28[1] = @"callType";
          v29[1] = [event objectForKeyedSubscript:@"RATType"];
          v29[2] = v21;
          v28[2] = @"vocoderBitRate";
          v28[3] = @"vocoderType";
          v29[3] = payloadType;
          v29[4] = v22;
          v28[4] = @"statDirection";
          v28[5] = @"distortionType";
          v29[5] = v12;
          v29[6] = v14;
          v28[6] = @"distortionDuration";
          v28[7] = @"distortionCount";
          v29[7] = v13;
          v28[8] = @"totalCallDuration";
          v15 = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v9];
          v28[9] = @"jitterBufferMode";
          jitterBufferMode = selfCopy->_jitterBufferMode;
          v29[8] = v15;
          v29[9] = jitterBufferMode;
          +[GKSCoreAnalyticsAdaptor analyticsSendEventWrapper:withPayload:hasHistogram:](GKSCoreAnalyticsAdaptor, "analyticsSendEventWrapper:withPayload:hasHistogram:", @"IMSCallAudioDistortionStats", [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:10], 0);
        }
      }

      v8 = [obj countByEnumeratingWithState:&v24 objects:v31 count:16];
    }

    while (v8);
  }

  v17 = *MEMORY[0x277D85DE8];
  return 1;
}

- (BOOL)sendAnalyticsAudioDistortionSummaryEvent:(id)event
{
  v42[2] = *MEMORY[0x277D85DE8];
  v42[0] = @"AudioDistortionRxSilence";
  v42[1] = @"AudioDistortionTxSilence";
  v35 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:2];
  v30 = [event objectForKeyedSubscript:@"AudioStatDirection"];
  if ([v30 integerValue])
  {
    v5 = @"DownlinkCodecBitRate";
  }

  else
  {
    v5 = @"UplinkCodecBitRate";
  }

  v29 = [event objectForKeyedSubscript:v5];
  if ([event objectForKeyedSubscript:@"Payload"])
  {
    payloadType = [event objectForKeyedSubscript:@"Payload"];
  }

  else
  {
    payloadType = self->_payloadType;
  }

  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v31 = [objc_msgSend(event objectForKeyedSubscript:{@"AudioTotalFrameCount", "intValue"}];
  v32 = 20 * v31;
  v40[0] = @"AudioDistortionContinuousSpeechLoss";
  v40[1] = @"AudioDistortionAverageSpeechLoss";
  v40[2] = @"AudioDistortionRxLinkBroken";
  v40[3] = @"AudioDistortionRxSilence";
  v40[4] = @"AudioDistortionTxSilence";
  v40[5] = @"AudioDistortionZerosTx";
  v40[6] = @"AudioDistortionZerosRx";
  v40[7] = @"AudioDistortionLowEnergyTx";
  v40[8] = @"AudioDistortionLowEnergyRx";
  v40[9] = @"AudioDistortionHighNoiseTx";
  v40[10] = @"AudioDistortionHighNoiseRx";
  v40[11] = @"AudioDistortionDownlinkRtpTimeout";
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:12];
  v7 = [v6 countByEnumeratingWithState:&v36 objects:v41 count:16];
  selfCopy = self;
  if (v7)
  {
    v8 = v7;
    integerValue = 0;
    v10 = 0;
    v11 = *v37;
    v34 = @"NoAudioDistortion";
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v37 != v11)
        {
          objc_enumerationMutation(v6);
        }

        v13 = *(*(&v36 + 1) + 8 * i);
        v14 = [event objectForKeyedSubscript:{objc_msgSend(MEMORY[0x277CCACA0], "stringWithFormat:", @"%@Duration", v13)}];
        if ([v14 integerValue] >= 260)
        {
          ++v10;
          if ([v14 integerValue] > integerValue && (objc_msgSend(v35, "containsObject:", v13) & 1) == 0)
          {
            integerValue = [v14 integerValue];
            v34 = v13;
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v36 objects:v41 count:16];
    }

    while (v8);
  }

  else
  {
    integerValue = 0;
    v10 = 0;
    v34 = @"NoAudioDistortion";
  }

  v15 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v15 setObject:objc_msgSend(event forKeyedSubscript:{"objectForKeyedSubscript:", @"CodecSampleRate", @"codecSampleRate"}];
  [v15 setObject:objc_msgSend(event forKeyedSubscript:{"objectForKeyedSubscript:", @"RATType", @"callType"}];
  [v15 setObject:v30 forKeyedSubscript:@"statDirection"];
  [v15 setObject:v29 forKeyedSubscript:@"vocoderBitRate"];
  [v15 setObject:payloadType forKeyedSubscript:@"vocoderType"];
  [v15 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithInteger:", v10), @"distortionTypesSeenCount"}];
  [v15 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithInteger:", integerValue), @"largestDistortionDuration"}];
  [v15 setObject:v34 forKeyedSubscript:@"largestDistortionType"];
  [v15 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", v32), @"totalCallDuration"}];
  v16 = [event objectForKeyedSubscript:{objc_msgSend(MEMORY[0x277CCACA0], "stringWithFormat:", @"%@Duration", @"AudioDistortionContinuousSpeechLoss"}];
  v17 = [event objectForKeyedSubscript:{objc_msgSend(MEMORY[0x277CCACA0], "stringWithFormat:", @"%@Duration", @"AudioDistortionAverageSpeechLoss"}];
  v18 = [event objectForKeyedSubscript:{objc_msgSend(MEMORY[0x277CCACA0], "stringWithFormat:", @"%@Duration", @"AudioDistortionRxLinkBroken"}];
  [v15 setObject:v16 forKeyedSubscript:@"continuousSpeechLossDuration"];
  [v15 setObject:v17 forKeyedSubscript:@"averageSpeechLossDuration"];
  [v15 setObject:v18 forKeyedSubscript:@"rxLinkBrokenDuration"];
  if (v31)
  {
    v19 = MEMORY[0x277CCABA8];
    [v16 doubleValue];
    [v15 setObject:objc_msgSend(v19 forKeyedSubscript:{"numberWithDouble:", v20 * 100.0 / v32), @"continuousSpeechLossDurationPercentage"}];
    v21 = MEMORY[0x277CCABA8];
    [v17 doubleValue];
    [v15 setObject:objc_msgSend(v21 forKeyedSubscript:{"numberWithDouble:", v22 * 100.0 / v32), @"averageSpeechLossDurationPercentage"}];
    v23 = MEMORY[0x277CCABA8];
    [v18 doubleValue];
    [v15 setObject:objc_msgSend(v23 forKeyedSubscript:{"numberWithDouble:", v24 * 100.0 / v32), @"rxLinkBrokenDurationPercentage"}];
  }

  [v15 setObject:selfCopy->_jitterBufferMode forKeyedSubscript:@"jitterBufferMode"];
  v25 = [(AWDAdaptor *)selfCopy newDistortionCounters:event];
  [v15 addEntriesFromDictionary:v25];

  LOBYTE(v25) = [GKSCoreAnalyticsAdaptor analyticsSendEventWrapper:@"IMSCallAudioDistortionSummary" withPayload:v15 hasHistogram:0];
  v26 = *MEMORY[0x277D85DE8];
  return v25;
}

- (BOOL)sendAnalyticsAudioDistortionRadioHistogramEvent:(id)event
{
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v5 setObject:objc_msgSend(event forKeyedSubscript:{"objectForKeyedSubscript:", @"AudioDistortionType", @"distortionType"}];
  [v5 setObject:objc_msgSend(event forKeyedSubscript:{"objectForKeyedSubscript:", @"RATType", @"callType"}];
  [v5 setObject:objc_msgSend(event forKeyedSubscript:{"objectForKeyedSubscript:", @"RsrpHistogram", @"rsrpHistogram"}];
  [v5 setObject:objc_msgSend(event forKeyedSubscript:{"objectForKeyedSubscript:", @"RssiHistogram", @"rssiHistogram"}];
  [v5 setObject:objc_msgSend(event forKeyedSubscript:{"objectForKeyedSubscript:", @"SnrHistogram", @"snrHistogram"}];
  [v5 setObject:objc_msgSend(event forKeyedSubscript:{"objectForKeyedSubscript:", @"UlBlerHistogram", @"ulBlerHistogram"}];
  [v5 setObject:objc_msgSend(event forKeyedSubscript:{"objectForKeyedSubscript:", @"DlBlerHistogram", @"dlBlerHistogram"}];
  [v5 setObject:objc_msgSend(event forKeyedSubscript:{"objectForKeyedSubscript:", @"TtiHistogram", @"ttiHistogram"}];
  [v5 setObject:objc_msgSend(event forKeyedSubscript:{"objectForKeyedSubscript:", @"CdrxStateHistogram", @"cdrxStateHistogram"}];
  [v5 setObject:objc_msgSend(event forKeyedSubscript:{"objectForKeyedSubscript:", @"CdrxCycleHistogram", @"cdrxCycleHistogram"}];
  [v5 setObject:objc_msgSend(event forKeyedSubscript:{"objectForKeyedSubscript:", @"OutageStateHistogram", @"outageStateHistogram"}];
  [v5 setObject:objc_msgSend(event forKeyedSubscript:{"objectForKeyedSubscript:", @"OutagePeriodHistogram", @"outagePeriodHistogram"}];
  [v5 setObject:self->_jitterBufferMode forKeyedSubscript:@"jitterBufferMode"];
  LOBYTE(self) = [GKSCoreAnalyticsAdaptor analyticsSendEventWrapper:@"IMSCallAudioDistortionRadioHistogram" withPayload:v5 hasHistogram:1];

  return self;
}

- (void)resetAudioCallHistograms
{
  [(NSMutableArray *)self->_rtpPacketLossRateArray removeAllObjects];
  [(NSMutableArray *)self->_jitterBufferLossRateArray removeAllObjects];
  [(NSMutableArray *)self->_jitterBufferUnderflowRateArray removeAllObjects];
  [(NSMutableArray *)self->_frameErasureRateArray removeAllObjects];
  [(NSMutableArray *)self->_jitterBufferResidencyTimeArray removeAllObjects];
  [(NSMutableArray *)self->_timescaleRateArray removeAllObjects];
  [(NSMutableArray *)self->_speechTimescaleRateArray removeAllObjects];
  [(NSMutableArray *)self->_silenceTimescaleRateArray removeAllObjects];
  [(NSMutableArray *)self->_averagePacketLifetimeArray removeAllObjects];
  maxPacketLifetimeArray = self->_maxPacketLifetimeArray;

  [(NSMutableArray *)maxPacketLifetimeArray removeAllObjects];
}

- (id)newDistortionCounters:(id)counters
{
  v22 = *MEMORY[0x277D85DE8];
  v15 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20[0] = @"AudioDistortionContinuousSpeechLoss";
  v20[1] = @"AudioDistortionAverageSpeechLoss";
  v20[2] = @"AudioDistortionRxLinkBroken";
  v20[3] = @"AudioDistortionRxSilence";
  v20[4] = @"AudioDistortionTxSilence";
  v20[5] = @"AudioDistortionZerosTx";
  v20[6] = @"AudioDistortionZerosRx";
  v20[7] = @"AudioDistortionLowEnergyTx";
  v20[8] = @"AudioDistortionLowEnergyRx";
  v20[9] = @"AudioDistortionHighNoiseTx";
  v20[10] = @"AudioDistortionHighNoiseRx";
  v20[11] = @"AudioDistortionDownlinkRtpTimeout";
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:12];
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        v10 = [counters objectForKeyedSubscript:{objc_msgSend(MEMORY[0x277CCACA0], "stringWithFormat:", @"%@Count", v9)}];
        if (v10)
        {
          v11 = v10;
          v12 = [objc_alloc(MEMORY[0x277CCACA0]) initWithFormat:@"%@Count", objc_msgSend(v9, "stringByReplacingOccurrencesOfString:withString:", @"AudioDistortion", &stru_284F7AB18)];
          [v15 setObject:v11 forKeyedSubscript:v12];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v16 objects:v21 count:16];
    }

    while (v6);
  }

  v13 = *MEMORY[0x277D85DE8];
  return v15;
}

- (void)computeMean:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_23D482000, v0, v1, " [%s] %s:%d Cannot compute mean for empty array", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)computeMax:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_23D482000, v0, v1, " [%s] %s:%d Cannot compute max for empty array", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)computeMedian:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_23D482000, v0, v1, " [%s] %s:%d Cannot compute median for empty array", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)compute95thPercentile:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_23D482000, v0, v1, " [%s] %s:%d Cannot compute 95th percentile for empty array", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)allocHistogramForValues:(NSObject *)a3 withBinBoundaries:.cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = 136315906;
  v6 = a1;
  v7 = 2080;
  v8 = "[AWDAdaptor allocHistogramForValues:withBinBoundaries:]";
  v9 = 1024;
  v10 = 782;
  v11 = 2080;
  v12 = [objc_msgSend(a2 "description")];
  _os_log_error_impl(&dword_23D482000, a3, OS_LOG_TYPE_ERROR, " [%s] %s:%d Invalid histogram bin boundaries (not monotonically increasing) %s", &v5, 0x26u);
  v4 = *MEMORY[0x277D85DE8];
}

- (void)allocHistogramForValues:withBinBoundaries:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_23D482000, v0, v1, " [%s] %s:%d Empty array passed to histogram generation", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)allocHistogramForValues:withBinBoundaries:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_23D482000, v0, v1, " [%s] %s:%d Empty histogram bin boundary list", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)computeLossRate:totalPackets:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_23D482000, v0, v1, " [%s] %s:%d No received packets. Cannot compute loss rate", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)wifiCallingAddSamplesGenerateAndSendCallEndReport:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_23D482000, v0, v1, " [%s] %s:%d Call ID is nil - substituting with '0'", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)sendAnalyticsAudioFrameCountStatisticsEvent:(uint64_t)a1 .cold.1(uint64_t a1, _BYTE *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
    {
      v7 = 136315906;
      v8 = v4;
      v9 = 2080;
      v10 = "[AWDAdaptor sendAnalyticsAudioFrameCountStatisticsEvent:]";
      v11 = 1024;
      v12 = 1053;
      v13 = 2112;
      v14 = a1;
      _os_log_error_impl(&dword_23D482000, v5, OS_LOG_TYPE_ERROR, " [%s] %s:%d audioTotalFrameCount=%@ must be > 0", &v7, 0x26u);
    }
  }

  *a2 = 0;
  v6 = *MEMORY[0x277D85DE8];
}

@end