@interface AWDStats
+ (id)statsSingleton;
+ (void)initialize;
- (AWDStats)init;
- (int)sendAggregationReportToAWD;
- (int)sendAudioTierHistogramToAWD;
- (int)sendBasebandStatsToAWD;
- (int)sendConnectivityTimingToAWD;
- (int)sendDTXStatsToAWD;
- (int)sendHistogramsToAWD;
- (int)sendHomeKitIPCameraNetworkStatistics;
- (int)sendInterfaceStatusToAWD;
- (int)sendModeRoleTransportToAWD;
- (int)sendRTCSessionEndMetricToAWD;
- (int)sendRTStatsToAWD;
- (int)sendVideoQualityStatsToAWD;
- (int)sendVideoStatusToAWD;
- (void)accumulateRxFrameRate:(unsigned int)rate min:(unsigned int)min max:(unsigned int)max;
- (void)accumulateTxFrameRate:(unsigned int)rate min:(unsigned int)min max:(unsigned int)max;
- (void)addConnectivityTimingDictionary:(id)dictionary;
- (void)addFloatValue:(float)value toHistogram:(id)histogram;
- (void)addRTStatsDictionary:(id)dictionary;
- (void)addVRAWidth:(unsigned int)width;
- (void)callEnd;
- (void)callEndAppleCalling;
- (void)callEndFaceTime;
- (void)callEndHomeKitIPCamera;
- (void)callEndSecondDisplay;
- (void)callStartIsSender:(BOOL)sender forTime:(int64_t)time mode:(unsigned int)mode;
- (void)dealloc;
- (void)duplicationStopEvent;
- (void)finishVRA;
- (void)generateAggregatedCallStats:(id)stats;
- (void)generateSecondDisplayAggregatedCallStats:(id)stats;
- (void)mergeAggregatedSegmentStats:(id)stats;
- (void)printHistograms;
- (void)processSecondDisplayLogTransportInfoStats;
- (void)reset;
- (void)setInterface:(id)interface;
- (void)setInterfaceOUI:(id)i;
- (void)setLocalWidth:(unsigned int)width height:(unsigned int)height framerate:(unsigned int)framerate;
- (void)setModeRoleTransport:(unsigned int)transport deviceRole:(unsigned int)role transportType:(unsigned int)type;
- (void)setRXExcessICEBytes:(unsigned int)bytes TXExcessICEBytes:(unsigned int)eBytes RXExcessRTPBytes:(unsigned int)pBytes TXExcessRTPBytes:(unsigned int)tPBytes;
- (void)setRemoteInterface:(id)interface;
- (void)startHomeKitSessionWithCallID:(id)d RTCPSendInterval:(double)interval startTime:(int64_t)time;
- (void)startPIPState;
- (void)stopPIPState;
- (void)updateCellTech:(id)tech;
- (void)updateLocalPrimaryInterface:(id)interface;
- (void)updateMediaRecorderStats:(id)stats;
@end

@implementation AWDStats

+ (void)initialize
{
  if (!_gAWDStatsSingleton)
  {
    _gAWDStatsSingleton = objc_alloc_init(AWDStats);
  }
}

+ (id)statsSingleton
{
  if (statsSingleton_onceToken != -1)
  {
    +[AWDStats statsSingleton];
  }

  return _gAWDStatsSingleton;
}

void __26__AWDStats_statsSingleton__block_invoke()
{
  if (!_gAWDStatsSingleton)
  {
    _gAWDStatsSingleton = objc_alloc_init(AWDStats);
  }
}

- (AWDStats)init
{
  v20.receiver = self;
  v20.super_class = AWDStats;
  v2 = [(AWDStats *)&v20 init];
  if (v2)
  {
    v19 = [[AWDHistogram alloc] initWithBuckets:&PLRBuckets size:8];
    v18 = [[AWDHistogram alloc] initWithBuckets:&RTTBuckets size:10];
    v17 = [[AWDHistogram alloc] initWithBuckets:&targetTxBuckets size:8];
    v16 = [[AWDHistogram alloc] initWithBuckets:&AudioWindowLossBuckets size:8];
    v15 = [[AWDHistogram alloc] initWithFloatBuckets:&MaxJitterBuckets size:8];
    v14 = [[AWDHistogram alloc] initWithBuckets:&queueDelayBuckets size:8];
    v13 = [[AWDHistogram alloc] initWithBuckets:&targetTxBuckets size:8];
    v12 = [[AWDHistogram alloc] initWithBuckets:&targetTxBuckets size:8];
    v4 = [[AWDHistogram alloc] initWithBuckets:&targetTxBuckets size:8];
    v5 = [[AWDHistogram alloc] initWithBuckets:&framerateBuckets size:10];
    v6 = [[AWDHistogram alloc] initWithBuckets:&framerateBuckets size:10];
    v7 = [[AWDHistogram alloc] initWithBuckets:&VRABuckets size:7];
    v8 = [[AWDHistogram alloc] initWithBuckets:&videoJitterBuckets size:10];
    v10 = [[AWDHistogram alloc] initWithBuckets:&targetTxBuckets size:8];
    v9 = [[AWDHistogram alloc] initWithBuckets:&targetTxBuckets size:8];
    v11 = [[AWDHistogram alloc] initWithBuckets:&MaxJitterBuckets size:8];
    *(v2 + 1) = [objc_alloc(MEMORY[0x277CBEAC0]) initWithObjectsAndKeys:{v19, @"PLRHistogram", v18, @"RTTHistogram", v17, @"TargetTxRateHistogram", v16, @"AudioWindowLossHistogram", v15, @"MaxJitterHistogram", v14, @"BasebandQueueDelayHistogram", v13, @"BasebandInstantBitrateHistogram", v12, @"BasebandAverageBitrateHistogram", v4, @"BasebandTargetBitrateHistogram", v5, @"VideoTxFramerateHistogram", v6, @"VideoRxFramerateHistogram", v7, @"VideoVRAHistogram", v8, @"VideoJitterHistogram", v10, @"RTCEndCallAverageTransmitRateHistogram", v9, @"RTCEndCallAverageReceiveRateHistogram", v11, @"RTCEndTargetJitterBufferHistogram", 0}];

    *(v2 + 2) = objc_alloc_init(MEMORY[0x277CBEB38]);
    *(v2 + 3) = 0;
    *(v2 + 4) = 0;
    *(v2 + 5) = 0;
    *(v2 + 12) = 0;
    *(v2 + 52) = xmmword_23D48EC70;
    *(v2 + 17) = 30;
    *(v2 + 25) = 0;
    *(v2 + 52) = 0;
    *(v2 + 72) = 0u;
    *(v2 + 88) = 0u;
    *(v2 + 26) = 0;
    *(v2 + 116) = 0u;
    *(v2 + 132) = 0u;
    *(v2 + 148) = 0u;
    *(v2 + 164) = 0;
    *(v2 + 22) = 0;
    *(v2 + 23) = 0;
    *(v2 + 48) = 0;
    *(v2 + 27) = 0;
    *(v2 + 28) = 0;
    *(v2 + 31) = 0;
    *(v2 + 32) = 0;
    *(v2 + 30) = 0;
    v2[264] = -1;
    *(v2 + 34) = 0;
    *(v2 + 35) = 0;
    *(v2 + 36) = objc_alloc_init(AudioTierHistogram);
    *(v2 + 52) = 0;
    *(v2 + 106) = 0;
    *(v2 + 296) = 0u;
    *(v2 + 312) = 0u;
    *(v2 + 164) = 0;
    *(v2 + 332) = 0;
    *(v2 + 170) = 0;
    *(v2 + 344) = 0u;
    *(v2 + 360) = 0u;
    v2[376] = 0;
    *(v2 + 49) = 0;
    *(v2 + 50) = 0;
    *(v2 + 48) = 0;
    *(v2 + 55) = 0;
    *(v2 + 56) = 0;
    *(v2 + 54) = 0;
    *(v2 + 114) = 0;
    *(v2 + 58) = [[AWDHistogram alloc] initWithBuckets:&HomeKitPLRBuckets size:17];
    *(v2 + 59) = [[AWDHistogram alloc] initWithBuckets:&HomeKitRTTBuckets size:10];
    *(v2 + 60) = [[AWDHistogram alloc] initWithBuckets:&HomeKitNOWRDBuckets size:11];
    *(v2 + 61) = [[AWDHistogram alloc] initWithBuckets:&HomeKitRecommendedRxBitrateBuckets size:22];
    *(v2 + 62) = [[AWDHistogram alloc] initWithBuckets:&HomeKitActualRxBitrateBuckets size:22];
    *(v2 + 63) = [[AWDHistogram alloc] initWithBuckets:&MomentsMediaTypeBuckets size:5];
    *(v2 + 64) = [[AWDHistogram alloc] initWithBuckets:&MomentsResultsBuckets size:2];
    *(v2 + 65) = [[AWDHistogram alloc] initWithBuckets:&MomentsFileSizeBuckets size:10];
    *(v2 + 51) = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:36];
    *(v2 + 69) = dispatch_queue_create("com.apple.RTCReporting.AWDSubmitQueue", 0);
  }

  return v2;
}

- (void)dealloc
{
  dispatch_release(self->submitQueue);
  v3.receiver = self;
  v3.super_class = AWDStats;
  [(AWDStats *)&v3 dealloc];
}

- (void)addRTStatsDictionary:(id)dictionary
{
  if (dictionary)
  {
    -[AWDStats addValue:toHistogram:](self, "addValue:toHistogram:", [objc_msgSend(dictionary valueForKey:{@"PLR", "intValue"}], @"PLRHistogram");
    -[AWDStats addValue:toHistogram:](self, "addValue:toHistogram:", [objc_msgSend(dictionary valueForKey:{@"RTT", "intValue"}], @"RTTHistogram");
    -[AWDStats addValue:toHistogram:](self, "addValue:toHistogram:", [objc_msgSend(dictionary valueForKey:{@"TTxR", "intValue"}], @"TargetTxRateHistogram");
    -[AWDStats addValue:toHistogram:](self, "addValue:toHistogram:", [objc_msgSend(dictionary valueForKey:{@"AWL", "intValue"}], @"AudioWindowLossHistogram");
    *&v5 = [objc_msgSend(dictionary valueForKey:{@"XJoW", "intValue"}];
    [(AWDStats *)self addFloatValue:@"MaxJitterHistogram" toHistogram:v5];
    -[AWDStats accumulateAverageRate:](self, "accumulateAverageRate:", [objc_msgSend(dictionary valueForKey:{@"BbTx", "intValue"}]);
    -[AWDStats accumulateAvgLossRate:](self, "accumulateAvgLossRate:", [objc_msgSend(dictionary valueForKey:{@"AAL", "intValue"}]);
    -[AWDStats accumulateDownlinkEstimate:](self, "accumulateDownlinkEstimate:", [objc_msgSend(dictionary valueForKey:{@"DBE", "intValue"}]);
    -[AWDStats accumulateJitterBufferSize:](self, "accumulateJitterBufferSize:", [objc_msgSend(dictionary valueForKey:{@"AJQS", "intValue"}]);
    -[AWDStats accumulateRxFrameRate:min:max:](self, "accumulateRxFrameRate:min:max:", [objc_msgSend(dictionary valueForKey:{@"ARFr", "intValue"}], objc_msgSend(objc_msgSend(dictionary, "valueForKey:", @"NRFr"), "intValue"), objc_msgSend(objc_msgSend(dictionary, "valueForKey:", @"XRFr"), "intValue"));
    -[AWDStats accumulateTxFrameRate:min:max:](self, "accumulateTxFrameRate:min:max:", [objc_msgSend(dictionary valueForKey:{@"ATFr", "intValue"}], objc_msgSend(objc_msgSend(dictionary, "valueForKey:", @"NTFr"), "intValue"), objc_msgSend(objc_msgSend(dictionary, "valueForKey:", @"XTFr"), "intValue"));
    -[AWDStats accumulateUplinkEstimate:](self, "accumulateUplinkEstimate:", [objc_msgSend(dictionary valueForKey:{@"UBE", "intValue"}]);
    -[AWDStats accumulateAverageInterarrivalTime:](self, "accumulateAverageInterarrivalTime:", [objc_msgSend(dictionary valueForKey:{@"AIaT", "intValue"}]);
    -[AWDStats accumulateAudioFlush:](self, "accumulateAudioFlush:", [objc_msgSend(dictionary valueForKey:{@"AFL", "intValue"}]);
    -[AWDStats accumulateVideoFlush:](self, "accumulateVideoFlush:", [objc_msgSend(dictionary valueForKey:{@"VFL", "intValue"}]);
    -[AWDStats accumulateAudioPauseTime:](self, "accumulateAudioPauseTime:", [objc_msgSend(dictionary valueForKey:{@"APT", "intValue"}]);
    -[AWDStats addValue:toHistogram:](self, "addValue:toHistogram:", [objc_msgSend(dictionary objectForKeyedSubscript:{@"BbD", "intValue"}], @"BasebandQueueDelayHistogram");
    -[AWDStats addValue:toHistogram:](self, "addValue:toHistogram:", [objc_msgSend(dictionary objectForKeyedSubscript:{@"InTxR", "intValue"}], @"BasebandInstantBitrateHistogram");
    -[AWDStats addValue:toHistogram:](self, "addValue:toHistogram:", [objc_msgSend(dictionary objectForKeyedSubscript:{@"BbTx", "intValue"}], @"BasebandAverageBitrateHistogram");
    -[AWDStats addValue:toHistogram:](self, "addValue:toHistogram:", [objc_msgSend(dictionary objectForKeyedSubscript:{@"TTxR", "intValue"}], @"BasebandTargetBitrateHistogram");
    [(AWDStats *)self incrementBasebandCount];
    -[AWDStats addValue:toHistogram:](self, "addValue:toHistogram:", [objc_msgSend(dictionary valueForKey:{@"ATFr", "intValue"}], @"VideoTxFramerateHistogram");
    -[AWDStats addValue:toHistogram:](self, "addValue:toHistogram:", [objc_msgSend(dictionary valueForKey:{@"ARFr", "intValue"}], @"VideoRxFramerateHistogram");
    -[AWDStats addValue:toHistogram:](self, "addValue:toHistogram:", [objc_msgSend(dictionary valueForKey:{@"VJ", "intValue"}], @"VideoJitterHistogram");
    v6 = [objc_msgSend(dictionary valueForKey:{@"VTxR", "intValue"}];
    v7 = [objc_msgSend(dictionary valueForKey:{@"ATxR", "intValue"}];
    v8 = [objc_msgSend(dictionary valueForKey:{@"VRxR", "intValue"}];
    v9 = [objc_msgSend(dictionary valueForKey:{@"ARxR", "intValue"}];
    [(AWDStats *)self accumulateAverageTransmitRate:(v7 + v6)];
    [(AWDStats *)self accumulateAverageReceiveRate:(v9 + v8)];
    [(AWDStats *)self addValue:(v7 + v6) toHistogram:@"RTCEndCallAverageTransmitRateHistogram"];
    [(AWDStats *)self addValue:(v9 + v8) toHistogram:@"RTCEndCallAverageReceiveRateHistogram"];
    -[AWDStats addValue:toHistogram:](self, "addValue:toHistogram:", [objc_msgSend(dictionary valueForKey:{@"NJB", "intValue"}], @"RTCEndTargetJitterBufferHistogram");
    v10 = [objc_msgSend(dictionary valueForKey:{@"NJB", "intValue"}];

    [(AWDStats *)self accumulateTargetJitterBufferSize:v10];
  }
}

- (void)addConnectivityTimingDictionary:(id)dictionary
{
  if (dictionary)
  {
    context = objc_autoreleasePoolPush();
    v4 = [dictionary objectForKeyedSubscript:{objc_msgSend(MEMORY[0x277CCACA0], "stringWithUTF8String:", &kPerfTimersKeys)}];
    v5 = [dictionary objectForKeyedSubscript:{objc_msgSend(MEMORY[0x277CCACA0], "stringWithUTF8String:", &unk_23D48ECD6)}];
    v6 = [dictionary objectForKeyedSubscript:{objc_msgSend(MEMORY[0x277CCACA0], "stringWithUTF8String:", &unk_23D48ED14)}];
    v7 = [dictionary objectForKeyedSubscript:{objc_msgSend(MEMORY[0x277CCACA0], "stringWithUTF8String:", &unk_23D48ED33)}];
    v12 = [dictionary objectForKeyedSubscript:{objc_msgSend(MEMORY[0x277CCACA0], "stringWithUTF8String:", &unk_23D48ED52)}];
    v8 = [dictionary objectForKeyedSubscript:{objc_msgSend(MEMORY[0x277CCACA0], "stringWithUTF8String:", &unk_23D48ED71)}];
    v9 = [dictionary objectForKeyedSubscript:{objc_msgSend(MEMORY[0x277CCACA0], "stringWithUTF8String:", &unk_23D48ED90)}];
    v10 = [dictionary objectForKeyedSubscript:{objc_msgSend(MEMORY[0x277CCACA0], "stringWithUTF8String:", &unk_23D48EDAF)}];
    v11 = [dictionary objectForKeyedSubscript:{objc_msgSend(MEMORY[0x277CCACA0], "stringWithUTF8String:", &unk_23D48EDCE)}];
    if (v4 && [v4 intValue] != 0x7FFFFFFF)
    {
      [(NSMutableDictionary *)self->timingDict setObject:v4 forKeyedSubscript:@"FaceTimeConnectivityTimingICECheck"];
    }

    if (v5 && [v5 intValue] != 0x7FFFFFFF)
    {
      [(NSMutableDictionary *)self->timingDict setObject:v5 forKeyedSubscript:@"FaceTimeConnectivityTimingSIPComplete"];
    }

    if (v6 && [v6 intValue] != 0x7FFFFFFF)
    {
      [(NSMutableDictionary *)self->timingDict setObject:v6 forKeyedSubscript:@"FaceTimeConnectivityTimingSKECompleted"];
    }

    if (v7 && [v7 intValue] != 0x7FFFFFFF)
    {
      [(NSMutableDictionary *)self->timingDict setObject:v7 forKeyedSubscript:@"FaceTimeConnectivityTimingAudioStarted"];
    }

    if (v12 && [v12 intValue] != 0x7FFFFFFF)
    {
      [(NSMutableDictionary *)self->timingDict setObject:v12 forKeyedSubscript:@"FaceTimeConnectivityTimingVideoStarted"];
    }

    if (v8 && [v8 intValue] != 0x7FFFFFFF)
    {
      [(NSMutableDictionary *)self->timingDict setObject:v8 forKeyedSubscript:@"FaceTimeConnectivityTimingFirstRemoteFrame"];
    }

    if (v9 && [v9 intValue] != 0x7FFFFFFF)
    {
      [(NSMutableDictionary *)self->timingDict setObject:v9 forKeyedSubscript:@"FaceTimeConnectivityTimingGetConnectionData"];
    }

    if (v10 && [v10 intValue] != 0x7FFFFFFF)
    {
      [(NSMutableDictionary *)self->timingDict setObject:v10 forKeyedSubscript:@"FaceTimeConnectivityTimingGetConnectionDataRelay"];
    }

    if (v11 && [v11 intValue] != 0x7FFFFFFF)
    {
      [(NSMutableDictionary *)self->timingDict setObject:v11 forKeyedSubscript:@"FaceTimeConnectivityTimingICECheckRelay"];
    }

    objc_autoreleasePoolPop(context);
  }
}

- (void)addFloatValue:(float)value toHistogram:(id)histogram
{
  v5 = [(NSDictionary *)self->histogramDict objectForKeyedSubscript:histogram];
  if (v5)
  {
    *&v6 = value;

    [v5 addFloatValue:v6];
  }
}

- (void)accumulateTxFrameRate:(unsigned int)rate min:(unsigned int)min max:(unsigned int)max
{
  *&self->txFrameRateAvg = vadd_s32(*&self->txFrameRateAvg, (rate | 0x100000000));
  if (self->txFrameRateMax < max)
  {
    self->txFrameRateMax = max;
  }

  if (self->txFrameRateMin > min)
  {
    self->txFrameRateMin = min;
  }
}

- (void)accumulateRxFrameRate:(unsigned int)rate min:(unsigned int)min max:(unsigned int)max
{
  *&self->rxFrameRateAvg = vadd_s32(*&self->rxFrameRateAvg, (rate | 0x100000000));
  if (self->rxFrameRateMax < max)
  {
    self->rxFrameRateMax = max;
  }

  if (self->rxFrameRateMin > min)
  {
    self->rxFrameRateMin = min;
  }
}

- (void)setLocalWidth:(unsigned int)width height:(unsigned int)height framerate:(unsigned int)framerate
{
  self->txWidth = width;
  self->txHeight = height;
  self->targetFramerate = framerate;
}

- (void)setInterface:(id)interface
{
  interfaceName = self->interfaceName;
  self->interfaceName = interface;

  currentInterface = self->currentInterface;
  self->currentInterface = interface;

  self->timeSinceLastCellTech = micro();
}

- (void)setRemoteInterface:(id)interface
{
  remoteInterfaceName = self->remoteInterfaceName;
  self->remoteInterfaceName = interface;
}

- (void)setInterfaceOUI:(id)i
{
  currentInterfaceOUI = self->currentInterfaceOUI;
  self->currentInterfaceOUI = i;
}

- (void)setRXExcessICEBytes:(unsigned int)bytes TXExcessICEBytes:(unsigned int)eBytes RXExcessRTPBytes:(unsigned int)pBytes TXExcessRTPBytes:(unsigned int)tPBytes
{
  self->rxExcessICEBytes = bytes;
  self->txExcessICEBytes = eBytes;
  self->rxExcessRTPBytes = pBytes;
  self->txExcessRTPBytes = tPBytes;
}

- (void)setModeRoleTransport:(unsigned int)transport deviceRole:(unsigned int)role transportType:(unsigned int)type
{
  self->mode = transport;
  self->deviceRole = role;
  self->transportType = type;
}

- (void)mergeAggregatedSegmentStats:(id)stats
{
  v5 = [objc_alloc(MEMORY[0x277CE57E8]) initWithDictionary:stats];
  if (v5)
  {
    v9 = v5;
    segmentName = [v5 segmentName];
    v7 = [(NSMutableDictionary *)self->aggregatedStats objectForKeyedSubscript:segmentName];
    aggregatedStats = self->aggregatedStats;
    if (v7)
    {
      [-[NSMutableDictionary objectForKeyedSubscript:](aggregatedStats objectForKeyedSubscript:{segmentName), "merge:", v9}];
      NSLog(&cfstr_AwdstatsSegmen_0.isa, segmentName);
    }

    else
    {
      [(NSMutableDictionary *)aggregatedStats setObject:v9 forKeyedSubscript:segmentName];
      NSLog(&cfstr_AwdstatsSegmen.isa, segmentName);
    }

    self->mode = [v9 callMode];
    self->deviceRole = [v9 callDeviceRole];
    self->transportType = [v9 callTransportType];
  }

  else
  {
    NSLog(&cfstr_AwdstatsCanNot.isa, stats);
  }
}

- (void)generateAggregatedCallStats:(id)stats
{
  v68 = *MEMORY[0x277D85DE8];
  v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:5];
  v6 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:3];
  [(NSDictionary *)v6 setObject:v5 forKeyedSubscript:@"AggregationReportSegments"];

  -[NSDictionary setObject:forKeyedSubscript:](v6, "setObject:forKeyedSubscript:", [MEMORY[0x277CCABA8] numberWithUnsignedInt:self->operatingMode], @"AggregationReportCallType");
  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  obj = self->aggregatedStats;
  v7 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v63 objects:v67 count:16];
  if (v7)
  {
    v8 = v7;
    statsCopy = stats;
    v61 = v6;
    v9 = *v64;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v64 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = [(NSMutableDictionary *)self->aggregatedStats objectForKeyedSubscript:*(*(&v63 + 1) + 8 * i)];
        v12 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:25];
        [v12 setObject:objc_msgSend(v11 forKeyedSubscript:{"segmentName"), @"SegmentName"}];
        [v12 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithInt:", objc_msgSend(v11, "duration")), @"SegmentDuration"}];
        [v12 setObject:objc_msgSend(objc_msgSend(v11 forKeyedSubscript:{"latency"), "array"), @"SegmentLatencyHistogram"}];
        [v12 setObject:objc_msgSend(objc_msgSend(v11 forKeyedSubscript:{"RTT"), "array"), @"SegmentRTTHistogram"}];
        [v12 setObject:objc_msgSend(objc_msgSend(v11 forKeyedSubscript:{"JBQSize"), "array"), @"SegmentJBQSizeHistogram"}];
        [v12 setObject:objc_msgSend(objc_msgSend(v11 forKeyedSubscript:{"JBTarget"), "array"), @"SegmentJBTargetHistogram"}];
        [v12 setObject:objc_msgSend(objc_msgSend(v11 forKeyedSubscript:{"PLR"), "array"), @"SegmentPLRHistogram"}];
        [v12 setObject:objc_msgSend(objc_msgSend(v11 forKeyedSubscript:{"TBR"), "array"), @"SegmentTBRHistogram"}];
        [v12 setObject:objc_msgSend(objc_msgSend(v11 forKeyedSubscript:{"RBR"), "array"), @"SegmentRBRHistogram"}];
        [v12 setObject:objc_msgSend(objc_msgSend(v11 forKeyedSubscript:{"SBR"), "array"), @"SegmentSBRHistogram"}];
        [v12 setObject:objc_msgSend(objc_msgSend(v11 forKeyedSubscript:{"videoJitter"), "array"), @"SegmentVideoJitterHistogram"}];
        [v12 setObject:objc_msgSend(objc_msgSend(v11 forKeyedSubscript:{"REDErasureCompensationRate"), "array"), @"SegmentREDErasureCompensationRate"}];
        [v12 setObject:objc_msgSend(objc_msgSend(v11 forKeyedSubscript:{"REDReceivedCount"), "array"), @"SegmentREDReceivedCount"}];
        [v12 setObject:objc_msgSend(objc_msgSend(v11 forKeyedSubscript:{"REDDiscardedCount"), "array"), @"SegmentREDDiscardedCount"}];
        [v12 setObject:objc_msgSend(objc_msgSend(v11 forKeyedSubscript:{"REDNumPayloadsUsed"), "array"), @"SegmentREDNumPayloadsUsed"}];
        [v12 setObject:objc_msgSend(objc_msgSend(v11 forKeyedSubscript:{"REDMaxDelay"), "array"), @"SegmentREDMaxDelay"}];
        [v12 setObject:objc_msgSend(objc_msgSend(v11 forKeyedSubscript:{"framerate"), "array"), @"SegmentFramerateHistogram"}];
        [v12 setObject:objc_msgSend(objc_msgSend(v11 forKeyedSubscript:{"audioErasures"), "array"), @"SegmentAudioErasuresHistogram"}];
        [v12 setObject:objc_msgSend(objc_msgSend(v11 forKeyedSubscript:{"videoQualityScore"), "array"), @"SegmentVideoQualityScoreHistogram"}];
        [v12 setObject:objc_msgSend(objc_msgSend(v11 forKeyedSubscript:{"poorConnection"), "array"), @"SegmentPoorConnectionHistogram"}];
        [v12 setObject:objc_msgSend(objc_msgSend(v11 forKeyedSubscript:{"videoResolution"), "array"), @"SegmentVideoResolutionHistogram"}];
        [v12 setObject:objc_msgSend(objc_msgSend(v11 forKeyedSubscript:{"videoEncodingBitrate"), "array"), @"SegmentVideoEncodingBitrateHistogram"}];
        v13 = MEMORY[0x277CCABA8];
        if ([v11 adjustedDuration])
        {
          [v11 totalVideoStallTime];
          v15 = v14;
          adjustedDuration = [v11 adjustedDuration];
          v17 = (v15 / ([v11 RTPeriod] * adjustedDuration) * 10000.0);
        }

        else
        {
          v17 = 0;
        }

        [v12 setObject:objc_msgSend(v13 forKeyedSubscript:{"numberWithUnsignedInt:", v17), @"SegmentTotalVideoStallTimePercentage"}];
        v18 = MEMORY[0x277CCABA8];
        [v11 maxVideoStallInterval];
        [v12 setObject:objc_msgSend(v18 forKeyedSubscript:{"numberWithUnsignedInt:", (v19 * 100.0)), @"SegmentMaxVideoStallInterval"}];
        v20 = MEMORY[0x277CCABA8];
        if ([v11 adjustedDuration])
        {
          [v11 totalAudioStallTime];
          v22 = v21;
          adjustedDuration2 = [v11 adjustedDuration];
          v24 = (v22 / ([v11 RTPeriod] * adjustedDuration2) * 10000.0);
        }

        else
        {
          v24 = 0;
        }

        [v12 setObject:objc_msgSend(v20 forKeyedSubscript:{"numberWithUnsignedInt:", v24), @"SegmentTotalAudioStallTimePercentage"}];
        v25 = MEMORY[0x277CCABA8];
        [v11 maxAudioStallInterval];
        [v12 setObject:objc_msgSend(v25 forKeyedSubscript:{"numberWithUnsignedInt:", (v26 * 100.0)), @"SegmentMaxAudioStallInterval"}];
        v27 = MEMORY[0x277CCABA8];
        [v11 maxNoRemotePacketsInterval];
        [v12 setObject:objc_msgSend(v27 forKeyedSubscript:{"numberWithUnsignedInt:", (v28 * 100.0)), @"SegmentMaxNoRemotePacketsInterval"}];
        v29 = MEMORY[0x277CCABA8];
        if ([v11 adjustedDuration])
        {
          [v11 totalNoRemotePacketsTime];
          v31 = v30;
          adjustedDuration3 = [v11 adjustedDuration];
          v33 = (v31 / ([v11 RTPeriod] * adjustedDuration3) * 10000.0);
        }

        else
        {
          v33 = 0;
        }

        [v12 setObject:objc_msgSend(v29 forKeyedSubscript:{"numberWithUnsignedInt:", v33), @"SegmentTotalNoRemotePacketsPercentage"}];
        v34 = MEMORY[0x277CCABA8];
        if ([v11 adjustedDuration])
        {
          bBQueueTooLargeCount = [v11 BBQueueTooLargeCount];
          adjustedDuration4 = [v11 adjustedDuration];
          v37 = (bBQueueTooLargeCount / ([v11 RTPeriod] * adjustedDuration4) * 10000.0);
        }

        else
        {
          v37 = 0;
        }

        [v12 setObject:objc_msgSend(v34 forKeyedSubscript:{"numberWithUnsignedInt:", v37), @"SegmentBBQueueTooLarge"}];
        v38 = MEMORY[0x277CCABA8];
        if ([v11 adjustedDuration])
        {
          bBRateTooLowCount = [v11 BBRateTooLowCount];
          adjustedDuration5 = [v11 adjustedDuration];
          v41 = (bBRateTooLowCount / ([v11 RTPeriod] * adjustedDuration5) * 10000.0);
        }

        else
        {
          v41 = 0;
        }

        [v12 setObject:objc_msgSend(v38 forKeyedSubscript:{"numberWithUnsignedInt:", v41), @"SegmentBBRateTooLow"}];
        v42 = MEMORY[0x277CCABA8];
        if ([v11 audioSentPacketCount])
        {
          audioFlushPacketCount = [v11 audioFlushPacketCount];
          v44 = (audioFlushPacketCount / [v11 audioSentPacketCount] * 10000.0);
        }

        else
        {
          v44 = 0;
        }

        [v12 setObject:objc_msgSend(v42 forKeyedSubscript:{"numberWithUnsignedInt:", v44), @"SegmentAudioFlushPercentage"}];
        v45 = MEMORY[0x277CCABA8];
        if ([v11 videoSentPacketCount])
        {
          videoFlushPacketCount = [v11 videoFlushPacketCount];
          v47 = (videoFlushPacketCount / [v11 videoSentPacketCount] * 10000.0);
        }

        else
        {
          v47 = 0;
        }

        [v12 setObject:objc_msgSend(v45 forKeyedSubscript:{"numberWithUnsignedInt:", v47), @"SegmentVideoFlushPercentage"}];
        [v5 addObject:v12];

        rTPeriod = [v11 RTPeriod];
      }

      v49 = rTPeriod;
      v8 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v63 objects:v67 count:16];
    }

    while (v8);
    stats = statsCopy;
    v6 = v61;
  }

  else
  {
    v49 = 0;
  }

  v50 = [objc_msgSend(stats objectForKeyedSubscript:{@"DRTN", "intValue"}];
  if (v49)
  {
    v51 = (v50 / v49);
  }

  else
  {
    v51 = 0;
  }

  -[NSDictionary setObject:forKeyedSubscript:](v6, "setObject:forKeyedSubscript:", [MEMORY[0x277CCABA8] numberWithInt:v51], @"AggregationReportDuration");
  v52 = [objc_msgSend(stats objectForKeyedSubscript:{@"DUPSWCNT", "intValue"}];
  -[NSDictionary setObject:forKeyedSubscript:](v6, "setObject:forKeyedSubscript:", [MEMORY[0x277CCABA8] numberWithInt:v52], @"AggregationReportDuplicationSwitchCounter");
  v53 = [objc_msgSend(stats objectForKeyedSubscript:{@"TT", "intValue"}];
  self->transportType = v53;
  -[NSDictionary setObject:forKeyedSubscript:](v6, "setObject:forKeyedSubscript:", [MEMORY[0x277CCABA8] numberWithUnsignedInt:v53], @"AggregationReportTransportType");
  v54 = [objc_msgSend(stats objectForKeyedSubscript:{@"MLRN", "intValue"}];
  -[NSDictionary setObject:forKeyedSubscript:](v6, "setObject:forKeyedSubscript:", [MEMORY[0x277CCABA8] numberWithUnsignedInt:v54], @"AggregationAdaptiveLearningState");
  v55 = [objc_msgSend(stats objectForKeyedSubscript:{@"REDST", "intValue"}];
  -[NSDictionary setObject:forKeyedSubscript:](v6, "setObject:forKeyedSubscript:", [MEMORY[0x277CCABA8] numberWithUnsignedInt:v55], @"AggregationREDState");
  v56 = [objc_alloc(MEMORY[0x277CE57F8]) initWithType:31 bucketValues:{objc_msgSend(stats, "objectForKeyedSubscript:", @"RSWP"}];
  -[NSDictionary setObject:forKeyedSubscript:](v6, "setObject:forKeyedSubscript:", [v56 array], @"AggregationResSwitchPeriod");

  v57 = [objc_msgSend(stats objectForKeyedSubscript:{@"IRUT", "intValue"}];
  -[NSDictionary setObject:forKeyedSubscript:](v6, "setObject:forKeyedSubscript:", [MEMORY[0x277CCABA8] numberWithUnsignedInt:v57], @"AggregationInitialRampUpTime");
  v58 = [objc_msgSend(stats objectForKeyedSubscript:{@"ISBD", "intValue"}];
  -[NSDictionary setObject:forKeyedSubscript:](v6, "setObject:forKeyedSubscript:", [MEMORY[0x277CCABA8] numberWithInt:v58], @"AggregationSettledBitrateDelta");
  [(NSDictionary *)v6 setObject:[(AWDHistogram *)self->momentsMediaTypeHistogram array] forKeyedSubscript:@"AggregationMomentsMediaTypeHistogram"];
  [(NSDictionary *)v6 setObject:[(AWDHistogram *)self->momentsResultsHistogram array] forKeyedSubscript:@"AggregationMomentsResultsHistogram"];
  [(NSDictionary *)v6 setObject:[(AWDHistogram *)self->momentsFileSizeHistogram array] forKeyedSubscript:@"AggregationMomentsFileSizeHistogram"];

  self->aggregatedReport = v6;
  v59 = *MEMORY[0x277D85DE8];
}

- (void)processSecondDisplayLogTransportInfoStats
{
  if (!self->operatingMode)
  {
    self->operatingMode = 8;
  }
}

- (void)generateSecondDisplayAggregatedCallStats:(id)stats
{
  self->operatingMode = 8;
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if ([stats objectForKeyedSubscript:@"CallID"])
  {
    -[NSDictionary setObject:forKeyedSubscript:](v5, "setObject:forKeyedSubscript:", [stats objectForKeyedSubscript:@"CallID"], @"SessionID");
  }

  if ([stats objectForKeyedSubscript:@"TT"])
  {
    -[NSDictionary setObject:forKeyedSubscript:](v5, "setObject:forKeyedSubscript:", [stats objectForKeyedSubscript:@"TT"], @"ConnectionTech");
  }

  if ([stats objectForKeyedSubscript:@"DRCT"])
  {
    -[NSDictionary setObject:forKeyedSubscript:](v5, "setObject:forKeyedSubscript:", [stats objectForKeyedSubscript:@"DRCT"], @"IsSender");
  }

  if ([stats objectForKeyedSubscript:@"DRTN"])
  {
    -[NSDictionary setObject:forKeyedSubscript:](v5, "setObject:forKeyedSubscript:", [stats objectForKeyedSubscript:@"DRTN"], @"Duration");
  }

  if ([stats objectForKeyedSubscript:@"VW"] && objc_msgSend(stats, "objectForKeyedSubscript:", @"VH"))
  {
    -[NSDictionary setObject:forKeyedSubscript:](v5, "setObject:forKeyedSubscript:", [MEMORY[0x277CCACA0] stringWithFormat:@"%@x%@", objc_msgSend(stats, "objectForKeyedSubscript:", @"VW", objc_msgSend(stats, "objectForKeyedSubscript:", @"VH"], @"Resolution");
  }

  if ([stats objectForKeyedSubscript:@"CDC"])
  {
    -[NSDictionary setObject:forKeyedSubscript:](v5, "setObject:forKeyedSubscript:", [stats objectForKeyedSubscript:@"CDC"], @"CodecType");
  }

  if ([stats objectForKeyedSubscript:@"VRFR"])
  {
    -[NSDictionary setObject:forKeyedSubscript:](v5, "setObject:forKeyedSubscript:", [stats objectForKeyedSubscript:@"VRFR"], @"VideoDisplayedFramerate");
  }

  if ([stats objectForKeyedSubscript:@"VREFR"])
  {
    -[NSDictionary setObject:forKeyedSubscript:](v5, "setObject:forKeyedSubscript:", [stats objectForKeyedSubscript:@"VREFR"], @"VideoEnqueuedFramerate");
  }

  if ([stats objectForKeyedSubscript:@"VRRFR"])
  {
    -[NSDictionary setObject:forKeyedSubscript:](v5, "setObject:forKeyedSubscript:", [stats objectForKeyedSubscript:@"VRRFR"], @"VideoReceivedFrameRate");
  }

  if ([stats objectForKeyedSubscript:@"VRExFR"])
  {
    -[NSDictionary setObject:forKeyedSubscript:](v5, "setObject:forKeyedSubscript:", [stats objectForKeyedSubscript:@"VRExFR"], @"VideoExpectedFrameRate");
  }

  if ([stats objectForKeyedSubscript:@"AEXT"])
  {
    -[NSDictionary setObject:forKeyedSubscript:](v5, "setObject:forKeyedSubscript:", [stats objectForKeyedSubscript:@"AEXT"], @"AvgExpiryTime");
  }

  if ([stats objectForKeyedSubscript:@"MEXT"])
  {
    -[NSDictionary setObject:forKeyedSubscript:](v5, "setObject:forKeyedSubscript:", [stats objectForKeyedSubscript:@"MEXT"], @"MaxExpiryTime");
  }

  if ([stats objectForKeyedSubscript:@"PLR"])
  {
    v6 = [objc_alloc(MEMORY[0x277CE57F8]) initWithType:2 bucketValues:{objc_msgSend(stats, "objectForKeyedSubscript:", @"PLR"}];
    -[NSDictionary setObject:forKeyedSubscript:](v5, "setObject:forKeyedSubscript:", [v6 array], @"PLRHisto");
  }

  if ([objc_msgSend(stats objectForKeyedSubscript:{@"DRCT", "integerValue"}] == 2)
  {
    if ([stats objectForKeyedSubscript:@"RBR"])
    {
      v7 = [objc_alloc(MEMORY[0x277CE57F8]) initWithType:7 bucketValues:{objc_msgSend(stats, "objectForKeyedSubscript:", @"RBR"}];
      -[NSDictionary setObject:forKeyedSubscript:](v5, "setObject:forKeyedSubscript:", [v7 array], @"BitrateHisto");
    }

    v8 = @"VS";
    if ([stats objectForKeyedSubscript:@"VS"])
    {
      v9 = @"VideoStallLengthhisto";
      v10 = 30;
LABEL_40:
      v13 = [objc_alloc(MEMORY[0x277CE57F8]) initWithType:v10 bucketValues:{objc_msgSend(stats, "objectForKeyedSubscript:", v8)}];
      -[NSDictionary setObject:forKeyedSubscript:](v5, "setObject:forKeyedSubscript:", [v13 array], v9);
    }
  }

  else if ([objc_msgSend(stats objectForKeyedSubscript:{@"DRCT", "integerValue"}] == 1)
  {
    if ([stats objectForKeyedSubscript:@"SBR"])
    {
      v11 = [objc_alloc(MEMORY[0x277CE57F8]) initWithType:8 bucketValues:{objc_msgSend(stats, "objectForKeyedSubscript:", @"SBR"}];
      -[NSDictionary setObject:forKeyedSubscript:](v5, "setObject:forKeyedSubscript:", [v11 array], @"BitrateHisto");
    }

    if ([stats objectForKeyedSubscript:@"TBR"])
    {
      v12 = [objc_alloc(MEMORY[0x277CE57F8]) initWithType:6 bucketValues:{objc_msgSend(stats, "objectForKeyedSubscript:", @"TBR"}];
      -[NSDictionary setObject:forKeyedSubscript:](v5, "setObject:forKeyedSubscript:", [v12 array], @"TBRHisto");
    }

    v8 = @"RTT";
    if ([stats objectForKeyedSubscript:@"RTT"])
    {
      v10 = 0;
      v9 = @"RTTHisto";
      goto LABEL_40;
    }
  }

  self->aggregatedReport = v5;
}

- (void)updateMediaRecorderStats:(id)stats
{
  if ([objc_msgSend(stats objectForKeyedSubscript:{@"VCMRState", "intValue"}] == 4)
  {
    -[AWDHistogram addValue:](self->momentsMediaTypeHistogram, "addValue:", [objc_msgSend(stats objectForKeyedSubscript:{@"VCMRMediaType", "intValue"}]);
    -[AWDHistogram addValue:](self->momentsResultsHistogram, "addValue:", [objc_msgSend(stats objectForKeyedSubscript:{@"VCMRFinishDidSucceed", "intValue"}]);
    v5 = [objc_msgSend(stats objectForKeyedSubscript:{@"VCMRFileSize", "intValue"}];
    momentsFileSizeHistogram = self->momentsFileSizeHistogram;

    [(AWDHistogram *)momentsFileSizeHistogram addValue:v5];
  }
}

- (void)startHomeKitSessionWithCallID:(id)d RTCPSendInterval:(double)interval startTime:(int64_t)time
{
  self->startTime = time;
  self->RTCPSendInterval = interval;
  if (!self->operatingMode)
  {
    self->operatingMode = 5;
  }

  [(AWDStats *)self setCallID:d];
}

- (void)updateCellTech:(id)tech
{
  if (![(NSString *)self->currentInterface isEqualToString:?])
  {
    v5 = micro();
    previousInterface = self->previousInterface;
    if (previousInterface)
    {
    }

    self->previousInterface = self->currentInterface;
    self->previousCellTechDuration = v5 - self->timeSinceLastCellTech;
    self->currentInterface = tech;
    self->timeSinceLastCellTech = v5;
  }
}

- (void)addVRAWidth:(unsigned int)width
{
  if (self->lastVRAWidth || self->timeSinceLastVRA != 0.0)
  {
    v5 = micro();
    timeSinceLastVRA = self->timeSinceLastVRA;
    v7 = [(NSDictionary *)self->histogramDict objectForKeyedSubscript:@"VideoVRAHistogram"];
    if (v7)
    {
      [v7 addValue:self->lastVRAWidth withIncrements:(v5 - timeSinceLastVRA)];
      self->timeSinceLastVRA = v5;
      self->lastVRAWidth = width;
    }
  }

  else
  {
    self->lastVRAWidth = width;
    self->timeSinceLastVRA = micro();
  }
}

- (void)finishVRA
{
  if (self->lastVRAWidth || self->timeSinceLastVRA != 0.0)
  {
    [(AWDStats *)self addVRAWidth:0];
    v3 = [(NSDictionary *)self->histogramDict objectForKeyedSubscript:@"VideoVRAHistogram"];
    if (v3)
    {

      [v3 reduceFrequencyByFactor:5];
    }
  }
}

- (void)startPIPState
{
  if (self->pipRunningSince <= 0.0)
  {
    self->pipRunningSince = micro();
  }
}

- (void)stopPIPState
{
  if (self->pipRunningSince > 0.0)
  {
    self->pipDuration = self->pipDuration + micro() - self->pipRunningSince;
    self->pipRunningSince = 0.0;
  }
}

- (int)sendConnectivityTimingToAWD
{
  timingDict = self->timingDict;
  callNonce = self->callNonce;
  isSender = self->isSender;
  startTime = self->startTime;
  v7 = GKSFacetimeSubmitMetric(987140);
  NSLog(&cfstr_SMetrictypeFac.isa, "[AWDStats sendConnectivityTimingToAWD]", self->timingDict);
  return v7;
}

- (int)sendHistogramsToAWD
{
  selfCopy = self;
  v33 = [-[NSDictionary objectForKeyedSubscript:](self->histogramDict objectForKeyedSubscript:{@"PLRHistogram", "newArray"}];
  v32 = [-[NSDictionary objectForKeyedSubscript:](selfCopy->histogramDict objectForKeyedSubscript:{@"RTTHistogram", "newArray"}];
  v31 = [-[NSDictionary objectForKeyedSubscript:](selfCopy->histogramDict objectForKeyedSubscript:{@"TargetTxRateHistogram", "newArray"}];
  v30 = [-[NSDictionary objectForKeyedSubscript:](selfCopy->histogramDict objectForKeyedSubscript:{@"AudioWindowLossHistogram", "newArray"}];
  v29 = [-[NSDictionary objectForKeyedSubscript:](selfCopy->histogramDict objectForKeyedSubscript:{@"MaxJitterHistogram", "newArray"}];
  v3 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithObjectsAndKeys:{v33, @"PLRHistogram", 0}];
  v4 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithObjectsAndKeys:{v32, @"RTTHistogram", 0}];
  v5 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithObjectsAndKeys:{v31, @"TargetTxRateHistogram", 0}];
  v6 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithObjectsAndKeys:{v30, @"AudioWindowLossHistogram", 0}];
  v7 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithObjectsAndKeys:{v29, @"MaxJitterHistogram", 0}];
  callNonce = selfCopy->callNonce;
  isSender = selfCopy->isSender;
  startTime = selfCopy->startTime;
  v28 = GKSFacetimeSubmitMetric(987142);
  v11 = selfCopy->callNonce;
  v12 = selfCopy->isSender;
  v13 = selfCopy->startTime;
  v14 = GKSFacetimeSubmitMetric(987143);
  v15 = selfCopy->callNonce;
  v16 = selfCopy->isSender;
  v17 = selfCopy->startTime;
  v18 = GKSFacetimeSubmitMetric(987144);
  v19 = selfCopy->callNonce;
  v20 = selfCopy->isSender;
  v21 = selfCopy->startTime;
  v22 = GKSFacetimeSubmitMetric(987145);
  v23 = selfCopy->callNonce;
  v24 = selfCopy->isSender;
  v25 = selfCopy->startTime;
  LODWORD(selfCopy) = GKSFacetimeSubmitMetric(987146);
  NSLog(&cfstr_SMetrictypeFac_0.isa, "[AWDStats sendHistogramsToAWD]", v3);
  NSLog(&cfstr_SMetrictypeFac_1.isa, "[AWDStats sendHistogramsToAWD]", v4);
  NSLog(&cfstr_SMetrictypeFac_2.isa, "[AWDStats sendHistogramsToAWD]", v5);
  NSLog(&cfstr_SMetrictypeFac_3.isa, "[AWDStats sendHistogramsToAWD]", v6);
  NSLog(&cfstr_SMetrictypeFac_4.isa, "[AWDStats sendHistogramsToAWD]", v7);
  if (v28 | v14 | v18 | v22 | selfCopy)
  {
    v26 = -1;
  }

  else
  {
    v26 = 0;
  }

  return v26;
}

- (int)sendBasebandStatsToAWD
{
  v3 = [-[NSDictionary objectForKeyedSubscript:](self->histogramDict objectForKeyedSubscript:{@"BasebandTargetBitrateHistogram", "newArray"}];
  v4 = [-[NSDictionary objectForKeyedSubscript:](self->histogramDict objectForKeyedSubscript:{@"BasebandInstantBitrateHistogram", "newArray"}];
  v5 = [-[NSDictionary objectForKeyedSubscript:](self->histogramDict objectForKeyedSubscript:{@"BasebandAverageBitrateHistogram", "newArray"}];
  v6 = [-[NSDictionary objectForKeyedSubscript:](self->histogramDict objectForKeyedSubscript:{@"BasebandQueueDelayHistogram", "newArray"}];
  basebandCount = self->basebandCount;
  if (basebandCount)
  {
    LODWORD(v8) = self->audioPauseTime;
    LODWORD(v7) = self->audioFlush;
    *&v10 = v7;
    v11 = basebandCount * 5.0;
    v12 = *&v10 / v11;
    LODWORD(v10) = self->videoFlush;
    v13 = v10 / v11;
    v14 = v8 / v11;
  }

  else
  {
    v13 = 0.0;
    v12 = 0.0;
    v14 = 0.0;
  }

  v15 = [objc_alloc(MEMORY[0x277CCABA8]) initWithDouble:round(v12)];
  v16 = [objc_alloc(MEMORY[0x277CCABA8]) initWithDouble:round(v13)];
  v17 = [objc_alloc(MEMORY[0x277CCABA8]) initWithDouble:round(v14)];
  v18 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithObjectsAndKeys:{v3, @"BasebandTargetBitrateHistogram", v4, @"BasebandInstantBitrateHistogram", v5, @"BasebandAverageBitrateHistogram", v6, @"BasebandQueueDelayHistogram", v15, @"BasebandAudioFlush", v16, @"BasebandVideoFlush", v17, @"BasebandAudioPause", 0}];
  callNonce = self->callNonce;
  isSender = self->isSender;
  startTime = self->startTime;
  v22 = GKSFacetimeSubmitMetric(987148);
  NSLog(&cfstr_SMetrictypeFac_5.isa, "[AWDStats sendBasebandStatsToAWD]", v18);

  return v22;
}

- (int)sendVideoStatusToAWD
{
  selfCopy = self;
  [(AWDStats *)self finishVRA];
  v3 = [-[NSDictionary objectForKeyedSubscript:](selfCopy->histogramDict objectForKeyedSubscript:{@"VideoTxFramerateHistogram", "newArray"}];
  v4 = [-[NSDictionary objectForKeyedSubscript:](selfCopy->histogramDict objectForKeyedSubscript:{@"VideoRxFramerateHistogram", "newArray"}];
  v5 = [-[NSDictionary objectForKeyedSubscript:](selfCopy->histogramDict objectForKeyedSubscript:{@"VideoVRAHistogram", "newArray"}];
  v6 = [-[NSDictionary objectForKeyedSubscript:](selfCopy->histogramDict objectForKeyedSubscript:{@"VideoJitterHistogram", "newArray"}];
  v7 = [objc_alloc(MEMORY[0x277CCABA8]) initWithUnsignedInt:selfCopy->targetFramerate];
  v8 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithObjectsAndKeys:{v3, @"VideoTxFramerateHistogram", v4, @"VideoRxFramerateHistogram", v5, @"VideoVRAHistogram", v6, @"VideoJitterHistogram", v7, @"VideoTargetFramerate", 0}];
  callNonce = selfCopy->callNonce;
  isSender = selfCopy->isSender;
  startTime = selfCopy->startTime;
  LODWORD(selfCopy) = GKSFacetimeSubmitMetric(987149);
  NSLog(&cfstr_SMetrictypeFac_6.isa, "[AWDStats sendVideoStatusToAWD]", v8);

  return selfCopy;
}

- (int)sendRTStatsToAWD
{
  v59 = [objc_alloc(MEMORY[0x277CCABA8]) initWithUnsignedInt:self->txWidth];
  v58 = [objc_alloc(MEMORY[0x277CCABA8]) initWithUnsignedInt:self->txHeight];
  v56 = [objc_alloc(MEMORY[0x277CCABA8]) initWithUnsignedInt:self->rxWidth];
  v3 = [objc_alloc(MEMORY[0x277CCABA8]) initWithUnsignedInt:self->rxHeight];
  remoteInterfaceName = self->remoteInterfaceName;
  interfaceName = self->interfaceName;
  v55 = v3;
  v5 = objc_alloc(MEMORY[0x277CCABA8]);
  avgLossRateCount = self->avgLossRateCount;
  if (avgLossRateCount)
  {
    v7 = self->avgLossRate / avgLossRateCount;
  }

  else
  {
    v7 = 0;
  }

  v52 = [v5 initWithUnsignedInt:v7];
  v8 = objc_alloc(MEMORY[0x277CCABA8]);
  avgJitterBufferSizeCount = self->avgJitterBufferSizeCount;
  if (avgJitterBufferSizeCount)
  {
    v10 = self->avgJitterBufferSize / avgJitterBufferSizeCount;
  }

  else
  {
    v10 = 0;
  }

  v50 = [v8 initWithUnsignedInt:v10];
  v11 = objc_alloc(MEMORY[0x277CCABA8]);
  targetJitterBufferSizeCount = self->targetJitterBufferSizeCount;
  if (targetJitterBufferSizeCount)
  {
    v13 = self->targetJitterBufferSize / targetJitterBufferSizeCount;
  }

  else
  {
    v13 = 0;
  }

  v61 = [v11 initWithUnsignedInt:v13];
  v14 = objc_alloc(MEMORY[0x277CCABA8]);
  avgInterarrivalTimeCount = self->avgInterarrivalTimeCount;
  if (avgInterarrivalTimeCount)
  {
    v16 = self->avgInterarrivalTime / avgInterarrivalTimeCount;
  }

  else
  {
    v16 = 0;
  }

  v57 = [v14 initWithUnsignedInt:v16];
  v49 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{v57, 0}];
  v17 = objc_alloc(MEMORY[0x277CCABA8]);
  txFrameRateAvgCount = self->txFrameRateAvgCount;
  if (txFrameRateAvgCount)
  {
    v19 = self->txFrameRateAvg / txFrameRateAvgCount;
  }

  else
  {
    v19 = 0;
  }

  v51 = [v17 initWithUnsignedInt:v19];
  v63 = [objc_alloc(MEMORY[0x277CCABA8]) initWithUnsignedInt:self->txFrameRateMin];
  v62 = [objc_alloc(MEMORY[0x277CCABA8]) initWithUnsignedInt:self->txFrameRateMax];
  v20 = objc_alloc(MEMORY[0x277CCABA8]);
  rxFrameRateAvgCount = self->rxFrameRateAvgCount;
  if (rxFrameRateAvgCount)
  {
    v22 = self->rxFrameRateAvg / rxFrameRateAvgCount;
  }

  else
  {
    v22 = 0;
  }

  v60 = [v20 initWithUnsignedInt:v22];
  v23 = [objc_alloc(MEMORY[0x277CCABA8]) initWithUnsignedInt:self->rxFrameRateMin];
  v24 = [objc_alloc(MEMORY[0x277CCABA8]) initWithUnsignedInt:self->rxFrameRateMax];
  v25 = objc_alloc(MEMORY[0x277CCABA8]);
  downlinkEstimateAvgCount = self->downlinkEstimateAvgCount;
  if (downlinkEstimateAvgCount)
  {
    v27 = self->downlinkEstimateAvg / downlinkEstimateAvgCount;
  }

  else
  {
    v27 = 0;
  }

  v28 = [v25 initWithUnsignedInt:v27];
  v29 = objc_alloc(MEMORY[0x277CCABA8]);
  uplinkEstimateAvgCount = self->uplinkEstimateAvgCount;
  if (uplinkEstimateAvgCount)
  {
    v31 = self->uplinkEstimateAvg / uplinkEstimateAvgCount;
  }

  else
  {
    v31 = 0;
  }

  v32 = [v29 initWithUnsignedInt:v31];
  v33 = objc_alloc(MEMORY[0x277CCABA8]);
  avgRateCount = self->avgRateCount;
  if (avgRateCount)
  {
    v35 = self->avgRate / avgRateCount;
  }

  else
  {
    v35 = 0;
  }

  v36 = [v33 initWithUnsignedInt:v35];
  v37 = [objc_alloc(MEMORY[0x277CCABA8]) initWithInt:(self->pipDuration * 1000.0)];
  v38 = objc_alloc(MEMORY[0x277CCABA8]);
  callDuration = self->callDuration;
  if (callDuration)
  {
    v40 = (self->pipDuration * 100.0 / callDuration);
  }

  else
  {
    v40 = 0;
  }

  if (remoteInterfaceName)
  {
    v41 = remoteInterfaceName;
  }

  else
  {
    v41 = &stru_284F7AB18;
  }

  if (interfaceName)
  {
    v42 = interfaceName;
  }

  else
  {
    v42 = &stru_284F7AB18;
  }

  v54 = [v38 initWithInt:v40];
  v43 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithObjectsAndKeys:{v59, @"RTStatsTxWidth", v58, @"RTStatsTxHeight", v56, @"RTStatsRxWidth", v55, @"RTStatsRxHeight", v42, @"RTStatsinterfaceName", v41, @"RTStatsRemoteInterfaceName", v52, @"RTStatswAvgLossRate", v50, @"RTStatswAvgJitterBufferSize", v61, @"RTStatsTargetJitterBufferSize", v49, @"RTStatswAvgInterArrivalTime", v51, @"RTStatsTxFrameRateAvg", v63, @"RTStatsTxFrameRateMin", v62, @"RTStatsTxFrameRateMax", v60, @"RTStatsRxFrameRateAvg", v23, @"RTStatsRxFrameRateMin", v24, @"RTStatsRxFrameRateMax", v28, @"RTStatsDownlinkEstimateAvg", v32, @"RTStatsUplinkEstimateAvg", v36, @"RTStatsAvgRate", v37, @"RTStatsPIPDuration", v54, @"RTStatsPIPPercent", 0}];
  callNonce = self->callNonce;
  isSender = self->isSender;
  startTime = self->startTime;
  v47 = GKSFacetimeSubmitMetric(987141);
  NSLog(&cfstr_SMetrictypeFac_7.isa, "[AWDStats sendRTStatsToAWD]", v43);

  return v47;
}

- (int)sendVideoQualityStatsToAWD
{
  selfCopy = self;
  *&v2 = roundf(self->localVideoDegradeTime);
  v4 = [MEMORY[0x277CCABA8] numberWithFloat:v2];
  *&v5 = roundf(selfCopy->remoteVideoDegradeTime);
  v6 = [MEMORY[0x277CCABA8] numberWithFloat:v5];
  v7 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithObjectsAndKeys:{v4, @"VideoQualityStatsLocalVideoDegradeTime", v6, @"VideoQualityStatsRemoteVideoDegradeTime", 0}];
  callNonce = selfCopy->callNonce;
  isSender = selfCopy->isSender;
  startTime = selfCopy->startTime;
  LODWORD(selfCopy) = GKSFacetimeSubmitMetric(987147);
  NSLog(&cfstr_SMetrictypeFac_8.isa, "[AWDStats sendVideoQualityStatsToAWD]", v7);

  return selfCopy;
}

- (int)sendInterfaceStatusToAWD
{
  [(AWDStats *)self finishCellTech];
  v23 = [objc_alloc(MEMORY[0x277CCABA8]) initWithDouble:round(self->currentCellTechDuration)];
  v25 = [objc_alloc(MEMORY[0x277CCABA8]) initWithDouble:round(self->previousCellTechDuration)];
  v22 = [objc_alloc(MEMORY[0x277CCABA8]) initWithUnsignedInt:self->terminationReason];
  v21 = [objc_alloc(MEMORY[0x277CCABA8]) initWithUnsignedInt:self->handoverCellCount];
  v20 = [objc_alloc(MEMORY[0x277CCABA8]) initWithUnsignedInt:self->handoverWifiCount];
  v3 = [objc_alloc(MEMORY[0x277CCABA8]) initWithUnsignedInt:self->handoverWithDuplicationCount];
  v4 = [objc_alloc(MEMORY[0x277CCABA8]) initWithUnsignedInt:self->handoverWithoutDuplicationCount];
  v5 = [objc_alloc(MEMORY[0x277CCABA8]) initWithUnsignedInt:self->duplicationWithoutHandoverCount];
  v6 = [objc_alloc(MEMORY[0x277CCABA8]) initWithUnsignedInt:self->duplicationPercent];
  v7 = [objc_alloc(MEMORY[0x277CCABA8]) initWithUnsignedInt:self->rxExcessICEBytes];
  v8 = [objc_alloc(MEMORY[0x277CCABA8]) initWithUnsignedInt:self->txExcessICEBytes];
  v9 = [objc_alloc(MEMORY[0x277CCABA8]) initWithUnsignedInt:self->rxExcessRTPBytes];
  v10 = [objc_alloc(MEMORY[0x277CCABA8]) initWithUnsignedInt:self->txExcessRTPBytes];
  v11 = [objc_alloc(MEMORY[0x277CCABA8]) initWithBool:self->isRoaming];
  v24 = v7;
  v12 = [objc_alloc(MEMORY[0x277CBEB38]) initWithObjectsAndKeys:{self->currentInterface, @"InterfaceCurrentCellTech", v23, @"InterfaceCurrentDuration", v22, @"InterfaceTermination", v21, @"FailOverToCellCount", v20, @"HandOverToWifiCount", v3, @"HandOverWithDuplicationCount", v4, @"HandOverWithoutDuplicationCount", v5, @"DuplicationWithoutHandoverCount", v6, @"CallDuplicationPercentage", self->currentInterfaceOUI, @"InterfaceCurrentOUI", v7, @"InterfaceRXExcessICEBytes", v8, @"InterfaceTXExcessICEBytes", v9, @"InterfaceRXExcessRTPBytes", v10, @"InterfaceTXExcessRTPBytes", v11, @"InterfaceIsRoaming", 0}];
  v13 = v12;
  previousInterface = self->previousInterface;
  if (previousInterface)
  {
    [v12 setObject:previousInterface forKeyedSubscript:@"InterfacePreviousCellTech"];
    [v13 setObject:v25 forKeyedSubscript:@"InterfacePreviousDuration"];
  }

  callNonce = self->callNonce;
  isSender = self->isSender;
  startTime = self->startTime;
  v18 = GKSFacetimeSubmitMetric(987150);
  NSLog(&cfstr_SMetrictypeFac_9.isa, "[AWDStats sendInterfaceStatusToAWD]", v13);

  return v18;
}

- (int)sendAudioTierHistogramToAWD
{
  selfCopy = self;
  [(AudioTierHistogram *)self->audioTiers end];
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  newReport = [(AudioTierHistogram *)selfCopy->audioTiers newReport];
  [v3 setObject:newReport forKeyedSubscript:@"AudioTierReportAudioTiers"];
  callNonce = selfCopy->callNonce;
  isSender = selfCopy->isSender;
  startTime = selfCopy->startTime;
  LODWORD(selfCopy) = GKSFacetimeSubmitMetric(987151);
  NSLog(&cfstr_SMetrictypeFac_10.isa, "[AWDStats sendAudioTierHistogramToAWD]", v3);

  return selfCopy;
}

- (int)sendDTXStatsToAWD
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = [objc_alloc(MEMORY[0x277CCABA8]) initWithDouble:self->silenceCompressionRatio];
  v5 = [objc_alloc(MEMORY[0x277CCABA8]) initWithUnsignedInteger:self->bytesSaved];
  [v3 setObject:v4 forKeyedSubscript:@"SilenceCompressionRatio"];
  [v3 setObject:v5 forKeyedSubscript:@"BytesSaved"];
  callNonce = self->callNonce;
  isSender = self->isSender;
  startTime = self->startTime;
  LODWORD(self) = GKSFacetimeSubmitMetric(987154);
  NSLog(&cfstr_SMetrictypeFac_11.isa, "[AWDStats sendDTXStatsToAWD]", v3);

  return self;
}

- (int)sendModeRoleTransportToAWD
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v3 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", self->mode), @"Mode"}];
  [v3 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", self->deviceRole), @"Role"}];
  [v3 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", self->transportType), @"Transport"}];
  callNonce = self->callNonce;
  isSender = self->isSender;
  startTime = self->startTime;
  LODWORD(self) = GKSFacetimeSubmitMetric(987155);
  NSLog(&cfstr_SMetrictypeFac_12.isa, "[AWDStats sendModeRoleTransportToAWD]", v3);

  return self;
}

- (int)sendRTCSessionEndMetricToAWD
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  interfaceName = self->interfaceName;
  remoteInterfaceName = self->remoteInterfaceName;
  v53 = [objc_alloc(MEMORY[0x277CCABA8]) initWithUnsignedInt:self->relayType];
  v6 = objc_alloc(MEMORY[0x277CCABA8]);
  avgLossRateCount = self->avgLossRateCount;
  if (avgLossRateCount)
  {
    v8 = self->avgLossRate / avgLossRateCount;
  }

  else
  {
    v8 = 0;
  }

  v52 = [v6 initWithUnsignedInt:v8];
  v9 = objc_alloc(MEMORY[0x277CCABA8]);
  avgJitterBufferSizeCount = self->avgJitterBufferSizeCount;
  if (avgJitterBufferSizeCount)
  {
    v11 = self->avgJitterBufferSize / avgJitterBufferSizeCount;
  }

  else
  {
    v11 = 0;
  }

  v51 = [v9 initWithUnsignedInt:v11];
  v12 = objc_alloc(MEMORY[0x277CCABA8]);
  avgInterarrivalTimeCount = self->avgInterarrivalTimeCount;
  if (avgInterarrivalTimeCount)
  {
    v14 = self->avgInterarrivalTime / avgInterarrivalTimeCount;
  }

  else
  {
    v14 = 0;
  }

  v50 = [v12 initWithUnsignedInt:v14];
  v15 = objc_alloc(MEMORY[0x277CCABA8]);
  avgRateCount = self->avgRateCount;
  if (avgRateCount)
  {
    v17 = self->avgRate / avgRateCount;
  }

  else
  {
    v17 = 0;
  }

  v49 = [v15 initWithUnsignedInt:v17];
  v18 = objc_alloc(MEMORY[0x277CCABA8]);
  callAvgTxRateCount = self->callAvgTxRateCount;
  if (callAvgTxRateCount)
  {
    v20 = self->callAvgTxRate / callAvgTxRateCount;
  }

  else
  {
    v20 = 0;
  }

  v48 = [v18 initWithUnsignedInt:v20];
  v21 = objc_alloc(MEMORY[0x277CCABA8]);
  callAvgRxRateCount = self->callAvgRxRateCount;
  if (callAvgRxRateCount)
  {
    v23 = self->callAvgRxRate / callAvgRxRateCount;
  }

  else
  {
    v23 = 0;
  }

  v24 = &stru_284F7AB18;
  if (remoteInterfaceName)
  {
    v25 = remoteInterfaceName;
  }

  else
  {
    v25 = &stru_284F7AB18;
  }

  v42 = v25;
  if (interfaceName)
  {
    v24 = interfaceName;
  }

  v39 = v24;
  v41 = [v21 initWithUnsignedInt:v23];
  v40 = [-[NSDictionary objectForKeyedSubscript:](self->histogramDict objectForKeyedSubscript:{@"RTCEndCallAverageTransmitRateHistogram", "newArray"}];
  v46 = [-[NSDictionary objectForKeyedSubscript:](self->histogramDict objectForKeyedSubscript:{@"RTCEndCallAverageReceiveRateHistogram", "newArray"}];
  v45 = [-[NSDictionary objectForKeyedSubscript:](self->histogramDict objectForKeyedSubscript:{@"PLRHistogram", "newArray"}];
  v44 = [-[NSDictionary objectForKeyedSubscript:](self->histogramDict objectForKeyedSubscript:{@"RTTHistogram", "newArray"}];
  v38 = [-[NSDictionary objectForKeyedSubscript:](self->histogramDict objectForKeyedSubscript:{@"TargetTxRateHistogram", "newArray"}];
  v43 = [-[NSDictionary objectForKeyedSubscript:](self->histogramDict objectForKeyedSubscript:{@"AudioWindowLossHistogram", "newArray"}];
  v47 = [-[NSDictionary objectForKeyedSubscript:](self->histogramDict objectForKeyedSubscript:{@"MaxJitterHistogram", "newArray"}];
  v37 = [-[NSDictionary objectForKeyedSubscript:](self->histogramDict objectForKeyedSubscript:{@"RTCEndTargetJitterBufferHistogram", "newArray"}];
  v36 = [-[NSDictionary objectForKeyedSubscript:](self->histogramDict objectForKeyedSubscript:{@"BasebandAverageBitrateHistogram", "newArray"}];
  v26 = [objc_alloc(MEMORY[0x277CCABA8]) initWithLong:self->callDuration];
  v27 = [objc_alloc(MEMORY[0x277CCABA8]) initWithUnsignedInt:self->connectionType];
  [v3 setObject:v39 forKeyedSubscript:@"RTCEndInterfaceName"];
  [v3 setObject:v42 forKeyedSubscript:@"RTCEndRemoteInterfaceName"];
  [v3 setObject:v53 forKeyedSubscript:@"RTCEndRelayType"];
  [v3 setObject:v52 forKeyedSubscript:@"RTCEndAverageLossRate"];
  [v3 setObject:v51 forKeyedSubscript:@"RTCEndAverageJitterBufferSize"];
  [v3 setObject:v50 forKeyedSubscript:@"RTCEndAverageInterArrivalTime"];
  [v3 setObject:v49 forKeyedSubscript:@"RTCEndBasebandAverageRate"];
  [v3 setObject:v48 forKeyedSubscript:@"RTCEndCallAverageTransmitRate"];
  [v3 setObject:v41 forKeyedSubscript:@"RTCEndCallAverageReceiveRate"];
  [v3 setObject:v40 forKeyedSubscript:@"RTCEndCallAverageTransmitRateHistogram"];
  [v3 setObject:v46 forKeyedSubscript:@"RTCEndCallAverageReceiveRateHistogram"];
  [v3 setObject:v45 forKeyedSubscript:@"RTCEndPLRHistogram"];
  [v3 setObject:v44 forKeyedSubscript:@"RTCEndRTTHistogram"];
  [v3 setObject:v38 forKeyedSubscript:@"RTCEndTargetTxRateHistogram"];
  [v3 setObject:v43 forKeyedSubscript:@"RTCEndAudioWindowLossHistogram"];
  [v3 setObject:v47 forKeyedSubscript:@"RTCEndMaxJitterHistogram"];
  [v3 setObject:v37 forKeyedSubscript:@"RTCEndTargetJitterBufferHistogram"];
  [v3 setObject:v36 forKeyedSubscript:@"RTCEndBasebandAverageRateHistogram"];
  [v3 setObject:v26 forKeyedSubscript:@"RTCEndCallDuration"];
  v28 = v27;
  [v3 setObject:v27 forKeyedSubscript:@"RTCEndRelayType"];
  v29 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v30 = objc_alloc_init(MEMORY[0x277CBEB18]);
  [v30 addObject:v3];
  [v29 setValue:v30 forKey:@"RTCEndCallStats"];
  callNonce = self->callNonce;
  isSender = self->isSender;
  startTime = self->startTime;
  v34 = GKSFacetimeSubmitMetric(987153);
  NSLog(&cfstr_SMetrictypeFac_13.isa, "[AWDStats sendRTCSessionEndMetricToAWD]", v29);

  return v34;
}

- (int)sendAggregationReportToAWD
{
  aggregatedReport = self->aggregatedReport;
  if (aggregatedReport && [-[NSDictionary objectForKeyedSubscript:](aggregatedReport objectForKeyedSubscript:{@"AggregationReportSegments", "count"}])
  {
    v4 = self->aggregatedReport;
    callNonce = self->callNonce;
    isSender = self->isSender;
    startTime = self->startTime;
    v8 = GKSFacetimeSubmitMetric(987157);
    NSLog(&cfstr_SMetrictypeFac_14.isa, "[AWDStats sendAggregationReportToAWD]", self->aggregatedReport);
    return v8;
  }

  else
  {
    NSLog(&cfstr_SMetrictypeFac_15.isa, a2, "[AWDStats sendAggregationReportToAWD]");
    return -1;
  }
}

- (void)callStartIsSender:(BOOL)sender forTime:(int64_t)time mode:(unsigned int)mode
{
  self->callNonce = arc4random() & 0x7FFFFFFF;
  self->isSender = sender;
  self->startTime = time;
  self->operatingMode = mode;
  if (!mode)
  {
    submitQueue = self->submitQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __43__AWDStats_callStartIsSender_forTime_mode___block_invoke;
    block[3] = &unk_278BD2248;
    block[4] = self;
    dispatch_async(submitQueue, block);
  }
}

uint64_t __43__AWDStats_callStartIsSender_forTime_mode___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 260);
  v3 = *(v1 + 264);
  v4 = *(v1 + 272);
  return GKSFacetimeSubmitMetric(987138);
}

- (void)callEndAppleCalling
{
  submitQueue = self->submitQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __31__AWDStats_callEndAppleCalling__block_invoke;
  block[3] = &unk_278BD2248;
  block[4] = self;
  dispatch_async(submitQueue, block);
}

uint64_t __31__AWDStats_callEndAppleCalling__block_invoke(uint64_t a1)
{
  [*(a1 + 32) sendAudioTierHistogramToAWD];
  [*(a1 + 32) sendRTCSessionEndMetricToAWD];
  [*(a1 + 32) sendInterfaceStatusToAWD];
  [*(a1 + 32) sendConnectivityTimingToAWD];
  v2 = *(a1 + 32);

  return [v2 sendAggregationReportToAWD];
}

- (void)callEndFaceTime
{
  submitQueue = self->submitQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __27__AWDStats_callEndFaceTime__block_invoke;
  block[3] = &unk_278BD2248;
  block[4] = self;
  dispatch_async(submitQueue, block);
}

void __27__AWDStats_callEndFaceTime__block_invoke(uint64_t a1)
{
  v16 = [*(a1 + 32) sendConnectivityTimingToAWD];
  if (v16)
  {
    NSLog(&cfstr_AwdstatsSendco_1.isa);
  }

  else
  {
    NSLog(&cfstr_AwdstatsSendco_0.isa);
  }

  v15 = [*(a1 + 32) sendRTStatsToAWD];
  if (v15)
  {
    NSLog(&cfstr_AwdstatsSendrt_2.isa);
  }

  else
  {
    NSLog(&cfstr_AwdstatsSendrt_1.isa);
  }

  v2 = [*(a1 + 32) sendHistogramsToAWD];
  if (v2)
  {
    NSLog(&cfstr_AwdstatsSendhi_1.isa);
  }

  else
  {
    NSLog(&cfstr_AwdstatsSendhi_0.isa);
  }

  v3 = [*(a1 + 32) sendVideoQualityStatsToAWD];
  if (v3)
  {
    NSLog(&cfstr_AwdstatsSendvi_2.isa);
  }

  else
  {
    NSLog(&cfstr_AwdstatsSendvi_1.isa);
  }

  v4 = [*(a1 + 32) sendBasebandStatsToAWD];
  if (v4)
  {
    NSLog(&cfstr_AwdstatsSendba_1.isa);
  }

  else
  {
    NSLog(&cfstr_AwdstatsSendba_0.isa);
  }

  v5 = [*(a1 + 32) sendVideoStatusToAWD];
  if (v5)
  {
    NSLog(&cfstr_AwdstatsSendvi_4.isa);
  }

  else
  {
    NSLog(&cfstr_AwdstatsSendvi_3.isa);
  }

  v6 = [*(a1 + 32) sendInterfaceStatusToAWD];
  if (v6)
  {
    NSLog(&cfstr_AwdstatsSendin_1.isa);
  }

  else
  {
    NSLog(&cfstr_AwdstatsSendin_0.isa);
  }

  v7 = [*(a1 + 32) sendAudioTierHistogramToAWD];
  if (v7)
  {
    NSLog(&cfstr_AwdstatsSendau_1.isa);
  }

  else
  {
    NSLog(&cfstr_AwdstatsSendau_0.isa);
  }

  v8 = [*(a1 + 32) sendDTXStatsToAWD];
  if (v8)
  {
    NSLog(&cfstr_AwdstatsSenddt_1.isa);
  }

  else
  {
    NSLog(&cfstr_AwdstatsSenddt_0.isa);
  }

  v9 = [*(a1 + 32) sendModeRoleTransportToAWD];
  if (v9)
  {
    NSLog(&cfstr_AwdstatsSendmo_1.isa);
  }

  else
  {
    NSLog(&cfstr_AwdstatsSendmo_0.isa);
  }

  v10 = *(a1 + 32);
  v11 = *(v10 + 260);
  v12 = *(v10 + 264);
  v13 = *(v10 + 272);
  v14 = GKSFacetimeSubmitMetric(987139);
  if (v14)
  {
    NSLog(&cfstr_AwdstatsSendfa_0.isa);
  }

  else
  {
    NSLog(&cfstr_AwdstatsSendfa.isa);
  }

  if ([*(a1 + 32) sendAggregationReportToAWD])
  {
    NSLog(&cfstr_AwdstatsSendag_1.isa);
  }

  else
  {
    NSLog(&cfstr_AwdstatsSendag_0.isa);
    if (!(v14 | v9 | v8 | v7 | v6 | v5 | v4 | v3 | v2 | v15 | v16))
    {
      return;
    }
  }

  NSLog(&cfstr_AwdstatsCallen.isa);
}

- (int)sendHomeKitIPCameraNetworkStatistics
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  avgFrameRateSampleCount = self->avgFrameRateSampleCount;
  if (avgFrameRateSampleCount)
  {
    avgFrameRateSampleCount = [MEMORY[0x277CCABA8] numberWithDouble:self->avgFrameRateSum / avgFrameRateSampleCount];
  }

  else
  {
    avgFrameRateSampleCount = &unk_284F7E908;
  }

  [v3 setObject:avgFrameRateSampleCount forKeyedSubscript:@"AverageFramerate"];
  [v3 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithDouble:", self->minFrameRate), @"MinFramerate"}];
  [v3 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithDouble:", self->maxFrameRate), @"MaxFramerate"}];
  RTCPSendInterval = self->RTCPSendInterval;
  if (RTCPSendInterval == 0.0 || (v7 = (self->callDuration / RTCPSendInterval)) == 0)
  {
    v8 = 0;
  }

  else
  {
    v8 = 100 * self->PLICounter / v7;
  }

  [v3 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", v8), @"PLIEventsCount"}];
  callDuration = self->callDuration;
  if (callDuration)
  {
    v10 = 100 * self->keyframeCounter / callDuration;
  }

  else
  {
    v10 = 0;
  }

  [v3 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", v10), @"KeyframeCount"}];
  v11 = self->callDuration;
  if (v11)
  {
    v12 = 100 * self->videoStallDuration / (1000 * v11);
  }

  else
  {
    v12 = 0;
  }

  [v3 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", v12), @"VideoStallDuration"}];
  callID = self->callID;
  if (callID)
  {
    [v3 setObject:callID forKeyedSubscript:@"CallID"];
  }

  newArray = [(AWDHistogram *)self->PLRHistogram newArray];
  [v3 setObject:newArray forKeyedSubscript:@"PLRHistogram"];
  newArray2 = [(AWDHistogram *)self->RTTHistogram newArray];
  [v3 setObject:newArray2 forKeyedSubscript:@"RTTHistogram"];
  newArray3 = [(AWDHistogram *)self->NOWRDHistogram newArray];
  [v3 setObject:newArray3 forKeyedSubscript:@"NOWRDHistogram"];
  newArray4 = [(AWDHistogram *)self->RecommendedRxBitrateHistogram newArray];
  [v3 setObject:newArray4 forKeyedSubscript:@"RecommendedRxBitrateHistogram"];
  newArray5 = [(AWDHistogram *)self->ActualRxBitrateHistogram newArray];
  [v3 setObject:newArray5 forKeyedSubscript:@"ActualRxBitrateHistogram"];
  callNonce = self->callNonce;
  isSender = self->isSender;
  startTime = self->startTime;
  v22 = GKSFacetimeSubmitMetric(987156);
  NSLog(&cfstr_SMetrictypeFac_16.isa, "[AWDStats sendHomeKitIPCameraNetworkStatistics]", v3);

  return v22;
}

- (void)callEndHomeKitIPCamera
{
  submitQueue = self->submitQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__AWDStats_callEndHomeKitIPCamera__block_invoke;
  block[3] = &unk_278BD2248;
  block[4] = self;
  dispatch_async(submitQueue, block);
}

- (void)callEndSecondDisplay
{
  submitQueue = self->submitQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __32__AWDStats_callEndSecondDisplay__block_invoke;
  block[3] = &unk_278BD2248;
  block[4] = self;
  dispatch_async(submitQueue, block);
}

void __32__AWDStats_callEndSecondDisplay__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 544))
  {
    v3 = *(v1 + 260);
    v4 = *(v1 + 264);
    v5 = *(v1 + 272);
    GKSFacetimeSubmitMetric(987158);
    NSLog(&cfstr_SMetrictypeFac_17.isa, "[AWDStats callEndSecondDisplay]_block_invoke", *(*(a1 + 32) + 544));

    *(*(a1 + 32) + 544) = 0;
  }
}

- (void)callEnd
{
  self->callDuration = time(0) - self->startTime;
  [(AWDStats *)self stopPIPState];
  operatingMode = self->operatingMode;
  if (operatingMode <= 4)
  {
    if (operatingMode != 1)
    {
      if (operatingMode != 2)
      {
        return;
      }

LABEL_10:

      [(AWDStats *)self callEndAppleCalling];
      return;
    }

    [(AWDStats *)self callEndFaceTime];
  }

  else
  {
    if (operatingMode != 5)
    {
      if (operatingMode != 7)
      {
        if (operatingMode == 8)
        {

          [(AWDStats *)self callEndSecondDisplay];
        }

        return;
      }

      goto LABEL_10;
    }

    [(AWDStats *)self callEndHomeKitIPCamera];
  }
}

- (void)reset
{
  v20 = *MEMORY[0x277D85DE8];
  objectEnumerator = [(NSDictionary *)self->histogramDict objectEnumerator];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = [(NSEnumerator *)objectEnumerator countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    do
    {
      v7 = 0;
      do
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        [*(*(&v15 + 1) + 8 * v7++) reset];
      }

      while (v5 != v7);
      v5 = [(NSEnumerator *)objectEnumerator countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v5);
  }

  [(NSMutableDictionary *)self->timingDict removeAllObjects];
  *&self->txWidth = 0;
  *&self->rxWidth = 0;
  self->txFrameRateMax = 0;
  *&self->txFrameRateAvg = 0;
  *&self->txFrameRateMin = xmmword_23D48EC70;
  self->rxFrameRateMin = 30;
  *&self->avgJitterBufferSize = 0;
  *&self->avgLossRate = 0;
  *&self->targetJitterBufferSize = 0u;
  *&self->uplinkEstimateAvg = 0u;
  interfaceName = self->interfaceName;
  if (interfaceName)
  {
  }

  self->interfaceName = 0;
  remoteInterfaceName = self->remoteInterfaceName;
  if (remoteInterfaceName)
  {
  }

  self->remoteInterfaceName = 0;
  self->connectionType = 0;
  self->timeSinceLastVRA = 0.0;
  self->lastVRAWidth = 0;
  *&self->localVideoDegradeTime = 0;
  *&self->videoFlush = 0;
  *&self->audioPauseTime = 0;
  self->pipDuration = 0.0;
  self->pipRunningSince = 0.0;
  self->targetFramerate = 0;
  self->previousCellTechDuration = 0.0;
  self->currentCellTechDuration = 0.0;
  currentInterface = self->currentInterface;
  if (currentInterface)
  {
  }

  self->currentInterface = 0;
  previousInterface = self->previousInterface;
  if (previousInterface)
  {
  }

  self->previousInterface = 0;
  *&self->terminationReason = 0;
  self->isSender = -1;
  self->startTime = 0;
  currentInterfaceOUI = self->currentInterfaceOUI;
  if (currentInterfaceOUI)
  {
  }

  self->currentInterfaceOUI = 0;
  audioTiers = self->audioTiers;
  if (audioTiers)
  {

    self->audioTiers = objc_alloc_init(AudioTierHistogram);
  }

  *&self->initialPrimaryInterfaceFound = 0;
  *&self->operatingMode = 0u;
  *&self->callAvgRxRate = 0u;
  *&self->currentDuplicationStateOn = 0;
  *&self->handoverCellCount = 0;
  self->isRoaming = 0;
  *&self->handoverWithDuplicationCount = 0u;
  *&self->rxExcessICEBytes = 0u;
  v14 = *MEMORY[0x277D85DE8];
}

- (void)printHistograms
{
  v15 = *MEMORY[0x277D85DE8];
  NSLog(&cfstr_PrintingAllHis.isa, a2);
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  histogramDict = self->histogramDict;
  v4 = [(NSDictionary *)histogramDict countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(histogramDict);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        NSLog(&stru_284F7B8D8.isa, v8);
        [-[NSDictionary objectForKeyedSubscript:](self->histogramDict objectForKeyedSubscript:{v8), "print"}];
      }

      v5 = [(NSDictionary *)histogramDict countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)updateLocalPrimaryInterface:(id)interface
{
  v4 = [interface isEqualToString:@"NON_CELLULAR"];
  v5 = v4 ^ 1;
  if (self->initialPrimaryInterfaceFound)
  {
    v6 = 332;
    if (v4)
    {
      v6 = 336;
    }

    ++*(&self->super.isa + v6);
    if (self->currentDuplicationStateOn)
    {
      self->handoverDuringDuplication = 1;
      v7 = 344;
    }

    else
    {
      v7 = 348;
    }

    ++*(&self->super.isa + v7);
    self->currentPrimaryInterfaceIsCell = v5;
  }

  else
  {
    self->currentPrimaryInterfaceIsCell = v5;
    self->initialPrimaryInterfaceFound = 1;
  }
}

- (void)duplicationStopEvent
{
  if (!self->handoverDuringDuplication && self->currentDuplicationStateOn)
  {
    ++self->duplicationWithoutHandoverCount;
    self->handoverDuringDuplication = 0;
  }

  self->currentDuplicationStateOn = 0;
}

@end