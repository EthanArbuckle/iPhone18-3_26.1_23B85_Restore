@interface _ADPBProxyGetMetricsResponse
- (BOOL)isEqual:(id)equal;
- (BOOL)readFrom:(id)from;
- (SiriCoreConnectionMetrics)_ad_metrics;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)_ad_setMetrics:(id)metrics;
- (void)addTcpInfoMetrics:(id)metrics;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasAttemptCount:(BOOL)count;
- (void)setHasConnectedSubflowCount:(BOOL)count;
- (void)setHasConnectionFallbackReason:(BOOL)reason;
- (void)setHasMetricsCount:(BOOL)count;
- (void)setHasOpenInterval:(BOOL)interval;
- (void)setHasPingCount:(BOOL)count;
- (void)setHasPingMean:(BOOL)mean;
- (void)setHasPrimarySubflowSwitchCount:(BOOL)count;
- (void)setHasRttBest:(BOOL)best;
- (void)setHasRttCurrent:(BOOL)current;
- (void)setHasRttSmoothed:(BOOL)smoothed;
- (void)setHasRttVariance:(BOOL)variance;
- (void)setHasRxBytes:(BOOL)bytes;
- (void)setHasRxDuplicateBytes:(BOOL)bytes;
- (void)setHasRxOooBytes:(BOOL)bytes;
- (void)setHasRxPackets:(BOOL)packets;
- (void)setHasSndBandwidth:(BOOL)bandwidth;
- (void)setHasSubflowCount:(BOOL)count;
- (void)setHasSynRetransmits:(BOOL)retransmits;
- (void)setHasTuscanyConnectionDelay:(BOOL)delay;
- (void)setHasTxBytes:(BOOL)bytes;
- (void)setHasTxPackets:(BOOL)packets;
- (void)setHasTxRetransmitBytes:(BOOL)bytes;
- (void)setHasTxUnacked:(BOOL)unacked;
- (void)setHasUnacknowledgedPingCount:(BOOL)count;
- (void)writeTo:(id)to;
@end

@implementation _ADPBProxyGetMetricsResponse

- (void)_ad_setMetrics:(id)metrics
{
  metricsCopy = metrics;
  timeUntilOpen = [metricsCopy timeUntilOpen];
  v6 = timeUntilOpen;
  if (timeUntilOpen)
  {
    [timeUntilOpen doubleValue];
    [(_ADPBProxyGetMetricsResponse *)self setOpenInterval:?];
  }

  timeUntilFirstByteRead = [metricsCopy timeUntilFirstByteRead];
  v8 = timeUntilFirstByteRead;
  if (timeUntilFirstByteRead)
  {
    [timeUntilFirstByteRead doubleValue];
    [(_ADPBProxyGetMetricsResponse *)self setFirstByteReadInterval:?];
  }

  attemptCount = [metricsCopy attemptCount];
  v10 = attemptCount;
  if (attemptCount)
  {
    -[_ADPBProxyGetMetricsResponse setAttemptCount:](self, "setAttemptCount:", [attemptCount intValue]);
  }

  metricsCount = [metricsCopy metricsCount];
  v12 = metricsCount;
  if (metricsCount)
  {
    -[_ADPBProxyGetMetricsResponse setMetricsCount:](self, "setMetricsCount:", [metricsCount intValue]);
  }

  pingCount = [metricsCopy pingCount];
  v14 = pingCount;
  if (pingCount)
  {
    -[_ADPBProxyGetMetricsResponse setPingCount:](self, "setPingCount:", [pingCount intValue]);
  }

  meanPing = [metricsCopy meanPing];
  v16 = meanPing;
  if (meanPing)
  {
    [meanPing doubleValue];
    [(_ADPBProxyGetMetricsResponse *)self setPingMean:?];
  }

  unacknowledgedPingCount = [metricsCopy unacknowledgedPingCount];
  v18 = unacknowledgedPingCount;
  if (unacknowledgedPingCount)
  {
    -[_ADPBProxyGetMetricsResponse setUnacknowledgedPingCount:](self, "setUnacknowledgedPingCount:", [unacknowledgedPingCount intValue]);
  }

  subflowCount = [metricsCopy subflowCount];
  v20 = subflowCount;
  if (subflowCount)
  {
    -[_ADPBProxyGetMetricsResponse setSubflowCount:](self, "setSubflowCount:", [subflowCount intValue]);
  }

  connectedSubflowCount = [metricsCopy connectedSubflowCount];
  v22 = connectedSubflowCount;
  if (connectedSubflowCount)
  {
    -[_ADPBProxyGetMetricsResponse setConnectedSubflowCount:](self, "setConnectedSubflowCount:", [connectedSubflowCount intValue]);
  }

  primarySubflowInterfaceName = [metricsCopy primarySubflowInterfaceName];
  if (primarySubflowInterfaceName)
  {
    [(_ADPBProxyGetMetricsResponse *)self setPrimarySubflowIface:primarySubflowInterfaceName];
  }

  primarySubflowInterfaceName2 = [metricsCopy primarySubflowInterfaceName];
  if (primarySubflowInterfaceName2)
  {
    subflowSwitchCounts = [metricsCopy subflowSwitchCounts];
    v26 = [subflowSwitchCounts objectForKeyedSubscript:primarySubflowInterfaceName2];

    if (v26)
    {
      -[_ADPBProxyGetMetricsResponse setPrimarySubflowSwitchCount:](self, "setPrimarySubflowSwitchCount:", [v26 intValue]);
    }
  }

  tcpInfoMetricsByInterfaceName = [metricsCopy tcpInfoMetricsByInterfaceName];
  v72[0] = _NSConcreteStackBlock;
  v72[1] = 3221225472;
  v72[2] = sub_1001922DC;
  v72[3] = &unk_100514550;
  v72[4] = self;
  [tcpInfoMetricsByInterfaceName enumerateKeysAndObjectsUsingBlock:v72];
  if ([tcpInfoMetricsByInterfaceName count] == 1)
  {
    allValues = [tcpInfoMetricsByInterfaceName allValues];
    firstObject = [allValues firstObject];

    v30 = firstObject;
    selfCopy = self;
    v32 = selfCopy;
    if (v30)
    {
      if (selfCopy)
      {
LABEL_28:
        rttCurrent = [v30 rttCurrent];
        v34 = rttCurrent;
        if (rttCurrent)
        {
          -[_ADPBProxyGetMetricsResponse setRttCurrent:](v32, "setRttCurrent:", [rttCurrent unsignedIntValue]);
        }

        rttSmoothed = [v30 rttSmoothed];
        v36 = rttSmoothed;
        if (rttSmoothed)
        {
          -[_ADPBProxyGetMetricsResponse setRttSmoothed:](v32, "setRttSmoothed:", [rttSmoothed unsignedIntValue]);
        }

        rttVariance = [v30 rttVariance];
        v38 = rttVariance;
        if (rttVariance)
        {
          -[_ADPBProxyGetMetricsResponse setRttVariance:](v32, "setRttVariance:", [rttVariance unsignedIntValue]);
        }

        rttBest = [v30 rttBest];
        v40 = rttBest;
        if (rttBest)
        {
          -[_ADPBProxyGetMetricsResponse setRttBest:](v32, "setRttBest:", [rttBest unsignedIntValue]);
        }

        packetsSent = [v30 packetsSent];
        v42 = packetsSent;
        if (packetsSent)
        {
          -[_ADPBProxyGetMetricsResponse setTxPackets:](v32, "setTxPackets:", [packetsSent unsignedLongLongValue]);
        }

        bytesSent = [v30 bytesSent];
        v44 = bytesSent;
        if (bytesSent)
        {
          -[_ADPBProxyGetMetricsResponse setTxBytes:](v32, "setTxBytes:", [bytesSent unsignedLongLongValue]);
        }

        bytesRetransmitted = [v30 bytesRetransmitted];
        v46 = bytesRetransmitted;
        if (bytesRetransmitted)
        {
          -[_ADPBProxyGetMetricsResponse setTxRetransmitBytes:](v32, "setTxRetransmitBytes:", [bytesRetransmitted unsignedLongLongValue]);
        }

        bytesUnacked = [v30 bytesUnacked];
        v48 = bytesUnacked;
        if (bytesUnacked)
        {
          -[_ADPBProxyGetMetricsResponse setTxUnacked:](v32, "setTxUnacked:", [bytesUnacked unsignedLongLongValue]);
        }

        packetsReceived = [v30 packetsReceived];
        v50 = packetsReceived;
        if (packetsReceived)
        {
          -[_ADPBProxyGetMetricsResponse setRxPackets:](v32, "setRxPackets:", [packetsReceived unsignedLongLongValue]);
        }

        bytesReceived = [v30 bytesReceived];
        v52 = bytesReceived;
        if (bytesReceived)
        {
          -[_ADPBProxyGetMetricsResponse setRxBytes:](v32, "setRxBytes:", [bytesReceived unsignedLongLongValue]);
        }

        duplicateBytesReceived = [v30 duplicateBytesReceived];
        v54 = duplicateBytesReceived;
        if (duplicateBytesReceived)
        {
          -[_ADPBProxyGetMetricsResponse setRxDuplicateBytes:](v32, "setRxDuplicateBytes:", [duplicateBytesReceived unsignedLongLongValue]);
        }

        outOfOrderBytesReceived = [v30 outOfOrderBytesReceived];
        v56 = outOfOrderBytesReceived;
        if (outOfOrderBytesReceived)
        {
          -[_ADPBProxyGetMetricsResponse setRxOooBytes:](v32, "setRxOooBytes:", [outOfOrderBytesReceived unsignedLongLongValue]);
        }

        sendBandwidth = [v30 sendBandwidth];
        v58 = sendBandwidth;
        if (sendBandwidth)
        {
          -[_ADPBProxyGetMetricsResponse setSndBandwidth:](v32, "setSndBandwidth:", [sendBandwidth unsignedLongLongValue]);
        }

        synRetransmits = [v30 synRetransmits];
        v60 = synRetransmits;
        if (synRetransmits)
        {
          -[_ADPBProxyGetMetricsResponse setSynRetransmits:](v32, "setSynRetransmits:", [synRetransmits unsignedIntValue]);
        }

        goto LABEL_57;
      }
    }

    else
    {
      v68 = +[NSAssertionHandler currentHandler];
      v69 = [NSString stringWithUTF8String:"void ADConnectionTCPInfoMetricsConfigureLegacyProtocolBufferProxy(SiriCoreConnectionTCPInfoMetrics *__strong, _ADPBProxyGetMetricsResponse *__strong)"];
      [v68 handleFailureInFunction:v69 file:@"ADConnectionTCPInfoMetricsUtilities.m" lineNumber:141 description:{@"Invalid parameter not satisfying: %@", @"tcpInfoMetrics != nil"}];

      if (v32)
      {
        goto LABEL_28;
      }
    }

    v70 = +[NSAssertionHandler currentHandler];
    v71 = [NSString stringWithUTF8String:"void ADConnectionTCPInfoMetricsConfigureLegacyProtocolBufferProxy(SiriCoreConnectionTCPInfoMetrics *__strong, _ADPBProxyGetMetricsResponse *__strong)"];
    [v70 handleFailureInFunction:v71 file:@"ADConnectionTCPInfoMetricsUtilities.m" lineNumber:142 description:{@"Invalid parameter not satisfying: %@", @"legacyProtocolBufferProxy != nil"}];

    goto LABEL_28;
  }

LABEL_57:
  connectionMethod = [metricsCopy connectionMethod];
  if (connectionMethod)
  {
    [(_ADPBProxyGetMetricsResponse *)self setConnectionMethodName:connectionMethod];
  }

  connectionEdgeType = [metricsCopy connectionEdgeType];
  if (connectionEdgeType)
  {
    [(_ADPBProxyGetMetricsResponse *)self setConnectionEdgeType:connectionEdgeType];
  }

  connectionEdgeID = [metricsCopy connectionEdgeID];
  if (connectionEdgeID)
  {
    [(_ADPBProxyGetMetricsResponse *)self setConnectionEdgeIDName:connectionEdgeID];
  }

  connectionFallbackReason = [metricsCopy connectionFallbackReason];
  v65 = connectionFallbackReason;
  if (connectionFallbackReason)
  {
    -[_ADPBProxyGetMetricsResponse setHasConnectionFallbackReason:](self, "setHasConnectionFallbackReason:", [connectionFallbackReason intValue] != 0);
  }

  connectionDelay = [metricsCopy connectionDelay];
  v67 = connectionDelay;
  if (connectionDelay)
  {
    [connectionDelay doubleValue];
    [(_ADPBProxyGetMetricsResponse *)self setTuscanyConnectionDelay:?];
  }
}

- (SiriCoreConnectionMetrics)_ad_metrics
{
  v3 = objc_alloc_init(SiriCoreConnectionMetrics);
  if ([(_ADPBProxyGetMetricsResponse *)self hasOpenInterval])
  {
    [(_ADPBProxyGetMetricsResponse *)self openInterval];
    v4 = [NSNumber numberWithDouble:?];
    [v3 setTimeUntilOpen:v4];
  }

  if ([(_ADPBProxyGetMetricsResponse *)self hasFirstByteReadInterval])
  {
    [(_ADPBProxyGetMetricsResponse *)self firstByteReadInterval];
    v5 = [NSNumber numberWithDouble:?];
    [v3 setTimeUntilFirstByteRead:v5];
  }

  if ([(_ADPBProxyGetMetricsResponse *)self hasAttemptCount])
  {
    v6 = [NSNumber numberWithUnsignedInt:[(_ADPBProxyGetMetricsResponse *)self attemptCount]];
    [v3 setAttemptCount:v6];
  }

  if ([(_ADPBProxyGetMetricsResponse *)self hasMetricsCount])
  {
    v7 = [NSNumber numberWithUnsignedInt:[(_ADPBProxyGetMetricsResponse *)self metricsCount]];
    [v3 setMetricsCount:v7];
  }

  if ([(_ADPBProxyGetMetricsResponse *)self hasPingCount])
  {
    v8 = [NSNumber numberWithUnsignedInt:[(_ADPBProxyGetMetricsResponse *)self pingCount]];
    [v3 setPingCount:v8];
  }

  else
  {
    [v3 setPingCount:&off_100533A10];
  }

  if ([(_ADPBProxyGetMetricsResponse *)self hasPingMean])
  {
    [(_ADPBProxyGetMetricsResponse *)self pingMean];
    v9 = [NSNumber numberWithDouble:?];
    [v3 setMeanPing:v9];
  }

  else
  {
    [v3 setMeanPing:&off_100533A10];
  }

  if ([(_ADPBProxyGetMetricsResponse *)self hasUnacknowledgedPingCount])
  {
    v10 = [NSNumber numberWithUnsignedInt:[(_ADPBProxyGetMetricsResponse *)self unacknowledgedPingCount]];
    [v3 setUnacknowledgedPingCount:v10];
  }

  else
  {
    [v3 setUnacknowledgedPingCount:&off_100533A10];
  }

  if ([(_ADPBProxyGetMetricsResponse *)self hasSubflowCount])
  {
    v11 = [NSNumber numberWithUnsignedInt:[(_ADPBProxyGetMetricsResponse *)self subflowCount]];
    [v3 setSubflowCount:v11];
  }

  if ([(_ADPBProxyGetMetricsResponse *)self hasConnectedSubflowCount])
  {
    v12 = [NSNumber numberWithUnsignedInt:[(_ADPBProxyGetMetricsResponse *)self connectedSubflowCount]];
    [v3 setConnectedSubflowCount:v12];
  }

  if ([(_ADPBProxyGetMetricsResponse *)self hasPrimarySubflowIface])
  {
    primarySubflowIface = [(_ADPBProxyGetMetricsResponse *)self primarySubflowIface];
    [v3 setPrimarySubflowInterfaceName:primarySubflowIface];
  }

  if ([(_ADPBProxyGetMetricsResponse *)self hasPrimarySubflowSwitchCount])
  {
    v108 = @"primary";
    v14 = [NSNumber numberWithUnsignedInt:[(_ADPBProxyGetMetricsResponse *)self primarySubflowSwitchCount]];
    v109 = v14;
    v15 = [NSDictionary dictionaryWithObjects:&v109 forKeys:&v108 count:1];
    [v3 setSubflowSwitchCounts:v15];
  }

  if ([(_ADPBProxyGetMetricsResponse *)self hasConnectionMethodName])
  {
    connectionMethodName = [(_ADPBProxyGetMetricsResponse *)self connectionMethodName];
    [v3 setConnectionMethod:connectionMethodName];
  }

  if ([(_ADPBProxyGetMetricsResponse *)self hasConnectionEdgeType])
  {
    connectionEdgeType = [(_ADPBProxyGetMetricsResponse *)self connectionEdgeType];
    [v3 setConnectionEdgeType:connectionEdgeType];
  }

  if ([(_ADPBProxyGetMetricsResponse *)self hasConnectionEdgeIDName])
  {
    connectionEdgeIDName = [(_ADPBProxyGetMetricsResponse *)self connectionEdgeIDName];
    [v3 setConnectionEdgeID:connectionEdgeIDName];
  }

  if ([(_ADPBProxyGetMetricsResponse *)self hasConnectionFallbackReason])
  {
    v19 = [NSNumber numberWithUnsignedInt:[(_ADPBProxyGetMetricsResponse *)self connectionFallbackReason]];
    [v3 setConnectionFallbackReason:v19];
  }

  if ([(_ADPBProxyGetMetricsResponse *)self hasTuscanyConnectionDelay])
  {
    [(_ADPBProxyGetMetricsResponse *)self tuscanyConnectionDelay];
    v20 = [NSNumber numberWithDouble:?];
    [v3 setConnectionDelay:v20];
  }

  tcpInfoMetricsCount = [(_ADPBProxyGetMetricsResponse *)self tcpInfoMetricsCount];
  v57 = v3;
  if (tcpInfoMetricsCount)
  {
    v22 = tcpInfoMetricsCount;
    v23 = [[NSMutableDictionary alloc] initWithCapacity:tcpInfoMetricsCount];
    v24 = 0;
    v25 = &CRCopyCountryCode_ptr;
    v58 = v22;
    selfCopy = self;
    while (1)
    {
      v79 = v24;
      v26 = [(_ADPBProxyGetMetricsResponse *)self tcpInfoMetricsAtIndex:?];
      if (!v26)
      {
        v37 = +[NSAssertionHandler currentHandler];
        v38 = [NSString stringWithUTF8String:"SiriCoreConnectionTCPInfoMetrics *ADConnectionTCPInfoMetricsCreateWithProtocolBufferProxy(_ADPBProxyTCPInfoMetrics *__strong)"];
        [v37 handleFailureInFunction:v38 file:@"ADConnectionTCPInfoMetricsUtilities.m" lineNumber:27 description:{@"Invalid parameter not satisfying: %@", @"protocolBufferProxy != nil"}];

        v22 = v58;
      }

      v69 = [SiriCoreConnectionTCPInfoMetrics alloc];
      hasInterfaceName = [v26 hasInterfaceName];
      if (hasInterfaceName)
      {
        interfaceName = [v26 interfaceName];
      }

      else
      {
        interfaceName = 0;
      }

      hasRttCurrent = [v26 hasRttCurrent];
      if (hasRttCurrent)
      {
        v102 = [v25[394] numberWithUnsignedInt:{objc_msgSend(v26, "rttCurrent")}];
      }

      else
      {
        v102 = 0;
      }

      hasRttSmoothed = [v26 hasRttSmoothed];
      if (hasRttSmoothed)
      {
        v100 = [v25[394] numberWithUnsignedInt:{objc_msgSend(v26, "rttSmoothed")}];
      }

      else
      {
        v100 = 0;
      }

      hasRttVariance = [v26 hasRttVariance];
      if (hasRttVariance)
      {
        v98 = [v25[394] numberWithUnsignedInt:{objc_msgSend(v26, "rttVariance")}];
      }

      else
      {
        v98 = 0;
      }

      hasRttBest = [v26 hasRttBest];
      if (hasRttBest)
      {
        v96 = [v25[394] numberWithUnsignedInt:{objc_msgSend(v26, "rttBest")}];
      }

      else
      {
        v96 = 0;
      }

      hasTxPackets = [v26 hasTxPackets];
      if (hasTxPackets)
      {
        v94 = [v25[394] numberWithUnsignedLongLong:{objc_msgSend(v26, "txPackets")}];
      }

      else
      {
        v94 = 0;
      }

      hasTxBytes = [v26 hasTxBytes];
      if (hasTxBytes)
      {
        v92 = [v25[394] numberWithUnsignedLongLong:{objc_msgSend(v26, "txBytes")}];
      }

      else
      {
        v92 = 0;
      }

      hasTxRetransmitBytes = [v26 hasTxRetransmitBytes];
      if (hasTxRetransmitBytes)
      {
        v90 = [v25[394] numberWithUnsignedLongLong:{objc_msgSend(v26, "txRetransmitBytes")}];
      }

      else
      {
        v90 = 0;
      }

      hasTxUnacked = [v26 hasTxUnacked];
      if (hasTxUnacked)
      {
        v88 = [v25[394] numberWithUnsignedLongLong:{objc_msgSend(v26, "txUnacked")}];
      }

      else
      {
        v88 = 0;
      }

      hasRxPackets = [v26 hasRxPackets];
      if (hasRxPackets)
      {
        v85 = [v25[394] numberWithUnsignedLongLong:{objc_msgSend(v26, "rxPackets")}];
      }

      else
      {
        v85 = 0;
      }

      hasRxBytes = [v26 hasRxBytes];
      if (hasRxBytes)
      {
        v83 = [v25[394] numberWithUnsignedLongLong:{objc_msgSend(v26, "rxBytes")}];
      }

      else
      {
        v83 = 0;
      }

      hasRxDuplicateBytes = [v26 hasRxDuplicateBytes];
      if (hasRxDuplicateBytes)
      {
        v81 = [v25[394] numberWithUnsignedLongLong:{objc_msgSend(v26, "rxDuplicateBytes")}];
      }

      else
      {
        v81 = 0;
      }

      hasRxOooBytes = [v26 hasRxOooBytes];
      if (hasRxOooBytes)
      {
        v28 = [v25[394] numberWithUnsignedLongLong:{objc_msgSend(v26, "rxOooBytes")}];
      }

      else
      {
        v28 = 0;
      }

      hasSndBandwidth = [v26 hasSndBandwidth];
      if (hasSndBandwidth)
      {
        v30 = [v25[394] numberWithUnsignedLongLong:{objc_msgSend(v26, "sndBandwidth")}];
      }

      else
      {
        v30 = 0;
      }

      hasSynRetransmits = [v26 hasSynRetransmits];
      if (hasSynRetransmits)
      {
        v32 = [v25[394] numberWithUnsignedInt:{objc_msgSend(v26, "synRetransmits")}];
      }

      else
      {
        v32 = 0;
      }

      if (([v26 hasTfoSynDataAcked] & 1) == 0)
      {
        break;
      }

      [v25[394] numberWithUnsignedInt:{objc_msgSend(v26, "tfoSynDataAcked")}];
      v34 = v33 = v23;
      v35 = [v69 initWithInterfaceName:interfaceName rttCurrent:v102 rttSmoothed:v100 rttVariance:v98 rttBest:v96 packetsSent:v94 bytesSent:v92 bytesRetransmitted:v90 bytesUnacked:v88 packetsReceived:v85 bytesReceived:v83 duplicateBytesReceived:v81 outOfOrderBytesReceived:v28 sendBufferBytes:0 sendBandwidth:v30 synRetransmits:v32 tfoSynDataAcked:v34];

      v23 = v33;
      v22 = v58;
      if (hasSynRetransmits)
      {
        goto LABEL_87;
      }

LABEL_88:
      if (hasSndBandwidth)
      {
      }

      self = selfCopy;
      if (hasRxOooBytes)
      {
      }

      if (hasRxDuplicateBytes)
      {
      }

      if (hasRxBytes)
      {
      }

      if (hasRxPackets)
      {
      }

      if (hasTxUnacked)
      {
      }

      if (hasTxRetransmitBytes)
      {
      }

      if (hasTxBytes)
      {
      }

      if (hasTxPackets)
      {
      }

      if (hasRttBest)
      {
      }

      if (hasRttVariance)
      {
      }

      if (hasRttSmoothed)
      {
      }

      if (hasRttCurrent)
      {
      }

      if (hasInterfaceName)
      {
      }

      interfaceName2 = [v35 interfaceName];
      [v23 setObject:v35 forKey:interfaceName2];

      v24 = v79 + 1;
      v25 = &CRCopyCountryCode_ptr;
      if (v22 == v79 + 1)
      {
        v39 = v23;
        v3 = v57;
        [v57 setTCPInfoMetricsByInterfaceName:v39];
        goto LABEL_203;
      }
    }

    v35 = [v69 initWithInterfaceName:interfaceName rttCurrent:v102 rttSmoothed:v100 rttVariance:v98 rttBest:v96 packetsSent:v94 bytesSent:v92 bytesRetransmitted:v90 bytesUnacked:v88 packetsReceived:v85 bytesReceived:v83 duplicateBytesReceived:v81 outOfOrderBytesReceived:v28 sendBufferBytes:0 sendBandwidth:v30 synRetransmits:v32 tfoSynDataAcked:0];
    if (!hasSynRetransmits)
    {
      goto LABEL_88;
    }

LABEL_87:

    goto LABEL_88;
  }

  selfCopy2 = self;
  if (!selfCopy2)
  {
    v55 = +[NSAssertionHandler currentHandler];
    v56 = [NSString stringWithUTF8String:"SiriCoreConnectionTCPInfoMetrics *ADConnectionTCPInfoMetricsCreateWithLegacyProtocolBufferProxy(_ADPBProxyGetMetricsResponse *__strong)"];
    [v55 handleFailureInFunction:v56 file:@"ADConnectionTCPInfoMetricsUtilities.m" lineNumber:50 description:{@"Invalid parameter not satisfying: %@", @"legacyProtocolBufferProxy != nil"}];
  }

  if (![(_ADPBProxyGetMetricsResponse *)selfCopy2 hasRttCurrent]&& ![(_ADPBProxyGetMetricsResponse *)selfCopy2 hasRttSmoothed]&& ![(_ADPBProxyGetMetricsResponse *)selfCopy2 hasRttVariance]&& ![(_ADPBProxyGetMetricsResponse *)selfCopy2 hasRttBest]&& ![(_ADPBProxyGetMetricsResponse *)selfCopy2 hasTxPackets]&& ![(_ADPBProxyGetMetricsResponse *)selfCopy2 hasTxBytes]&& ![(_ADPBProxyGetMetricsResponse *)selfCopy2 hasTxRetransmitBytes]&& ![(_ADPBProxyGetMetricsResponse *)selfCopy2 hasTxUnacked]&& ![(_ADPBProxyGetMetricsResponse *)selfCopy2 hasRxPackets]&& ![(_ADPBProxyGetMetricsResponse *)selfCopy2 hasRxBytes]&& ![(_ADPBProxyGetMetricsResponse *)selfCopy2 hasRxDuplicateBytes]&& ![(_ADPBProxyGetMetricsResponse *)selfCopy2 hasRxOooBytes]&& ![(_ADPBProxyGetMetricsResponse *)selfCopy2 hasSndBandwidth]&& ![(_ADPBProxyGetMetricsResponse *)selfCopy2 hasSynRetransmits])
  {

    v39 = 0;
    goto LABEL_203;
  }

  v86 = [SiriCoreConnectionTCPInfoMetrics alloc];
  hasRttCurrent2 = [(_ADPBProxyGetMetricsResponse *)selfCopy2 hasRttCurrent];
  if (hasRttCurrent2)
  {
    v105 = [NSNumber numberWithUnsignedInt:[(_ADPBProxyGetMetricsResponse *)selfCopy2 rttCurrent]];
  }

  else
  {
    v105 = 0;
  }

  hasRttSmoothed2 = [(_ADPBProxyGetMetricsResponse *)selfCopy2 hasRttSmoothed];
  if (hasRttSmoothed2)
  {
    v43 = [NSNumber numberWithUnsignedInt:[(_ADPBProxyGetMetricsResponse *)selfCopy2 rttSmoothed]];
  }

  else
  {
    v43 = 0;
  }

  hasRttVariance2 = [(_ADPBProxyGetMetricsResponse *)selfCopy2 hasRttVariance];
  if (hasRttVariance2)
  {
    v45 = [NSNumber numberWithUnsignedInt:[(_ADPBProxyGetMetricsResponse *)selfCopy2 rttVariance]];
  }

  else
  {
    v45 = 0;
  }

  hasRttBest2 = [(_ADPBProxyGetMetricsResponse *)selfCopy2 hasRttBest];
  if (hasRttBest2)
  {
    v103 = [NSNumber numberWithUnsignedInt:[(_ADPBProxyGetMetricsResponse *)selfCopy2 rttBest]];
  }

  else
  {
    v103 = 0;
  }

  hasTxPackets2 = [(_ADPBProxyGetMetricsResponse *)selfCopy2 hasTxPackets];
  if (hasTxPackets2)
  {
    v101 = [NSNumber numberWithUnsignedLongLong:[(_ADPBProxyGetMetricsResponse *)selfCopy2 txPackets]];
  }

  else
  {
    v101 = 0;
  }

  hasTxBytes2 = [(_ADPBProxyGetMetricsResponse *)selfCopy2 hasTxBytes];
  if (hasTxBytes2)
  {
    v99 = [NSNumber numberWithUnsignedLongLong:[(_ADPBProxyGetMetricsResponse *)selfCopy2 txBytes]];
  }

  else
  {
    v99 = 0;
  }

  hasTxRetransmitBytes2 = [(_ADPBProxyGetMetricsResponse *)selfCopy2 hasTxRetransmitBytes];
  if (hasTxRetransmitBytes2)
  {
    v97 = [NSNumber numberWithUnsignedLongLong:[(_ADPBProxyGetMetricsResponse *)selfCopy2 txRetransmitBytes]];
  }

  else
  {
    v97 = 0;
  }

  hasTxUnacked2 = [(_ADPBProxyGetMetricsResponse *)selfCopy2 hasTxUnacked];
  if (hasTxUnacked2)
  {
    v95 = [NSNumber numberWithUnsignedLongLong:[(_ADPBProxyGetMetricsResponse *)selfCopy2 txUnacked]];
  }

  else
  {
    v95 = 0;
  }

  hasRxPackets2 = [(_ADPBProxyGetMetricsResponse *)selfCopy2 hasRxPackets];
  if (hasRxPackets2)
  {
    v93 = [NSNumber numberWithUnsignedLongLong:[(_ADPBProxyGetMetricsResponse *)selfCopy2 rxPackets]];
  }

  else
  {
    v93 = 0;
  }

  hasRxBytes2 = [(_ADPBProxyGetMetricsResponse *)selfCopy2 hasRxBytes];
  if (hasRxBytes2)
  {
    v91 = [NSNumber numberWithUnsignedLongLong:[(_ADPBProxyGetMetricsResponse *)selfCopy2 rxBytes]];
  }

  else
  {
    v91 = 0;
  }

  hasRxDuplicateBytes2 = [(_ADPBProxyGetMetricsResponse *)selfCopy2 hasRxDuplicateBytes];
  if (hasRxDuplicateBytes2)
  {
    v89 = [NSNumber numberWithUnsignedLongLong:[(_ADPBProxyGetMetricsResponse *)selfCopy2 rxDuplicateBytes]];
  }

  else
  {
    v89 = 0;
  }

  hasRxOooBytes2 = [(_ADPBProxyGetMetricsResponse *)selfCopy2 hasRxOooBytes];
  if (hasRxOooBytes2)
  {
    v47 = [NSNumber numberWithUnsignedLongLong:[(_ADPBProxyGetMetricsResponse *)selfCopy2 rxOooBytes]];
  }

  else
  {
    v47 = 0;
  }

  hasSndBandwidth2 = [(_ADPBProxyGetMetricsResponse *)selfCopy2 hasSndBandwidth];
  if (hasSndBandwidth2)
  {
    v49 = [NSNumber numberWithUnsignedLongLong:[(_ADPBProxyGetMetricsResponse *)selfCopy2 sndBandwidth]];
  }

  else
  {
    v49 = 0;
  }

  if (![(_ADPBProxyGetMetricsResponse *)selfCopy2 hasSynRetransmits])
  {
    v87 = [v86 initWithInterfaceName:@"default" rttCurrent:v105 rttSmoothed:v43 rttVariance:v45 rttBest:v103 packetsSent:v101 bytesSent:v99 bytesRetransmitted:v97 bytesUnacked:v95 packetsReceived:v93 bytesReceived:v91 duplicateBytesReceived:v89 outOfOrderBytesReceived:v47 sendBufferBytes:0 sendBandwidth:v49 synRetransmits:0 tfoSynDataAcked:0];
    if (!hasSndBandwidth2)
    {
      goto LABEL_180;
    }

    goto LABEL_179;
  }

  v68 = hasRttSmoothed2;
  v50 = hasRttCurrent2;
  v51 = [NSNumber numberWithUnsignedInt:[(_ADPBProxyGetMetricsResponse *)selfCopy2 synRetransmits]];
  v87 = [v86 initWithInterfaceName:@"default" rttCurrent:v105 rttSmoothed:v43 rttVariance:v45 rttBest:v103 packetsSent:v101 bytesSent:v99 bytesRetransmitted:v97 bytesUnacked:v95 packetsReceived:v93 bytesReceived:v91 duplicateBytesReceived:v89 outOfOrderBytesReceived:v47 sendBufferBytes:0 sendBandwidth:v49 synRetransmits:v51 tfoSynDataAcked:0];

  hasRttCurrent2 = v50;
  hasRttSmoothed2 = v68;
  if (hasSndBandwidth2)
  {
LABEL_179:
  }

LABEL_180:
  if (hasRxOooBytes2)
  {
  }

  if (hasRxDuplicateBytes2)
  {
  }

  if (hasRxBytes2)
  {
  }

  if (hasRxPackets2)
  {
  }

  v3 = v57;
  if (hasTxUnacked2)
  {
  }

  if (hasTxRetransmitBytes2)
  {
  }

  if (hasTxBytes2)
  {
  }

  if (hasTxPackets2)
  {
  }

  if (hasRttBest2)
  {

    if (!hasRttVariance2)
    {
LABEL_198:
      if (!hasRttSmoothed2)
      {
        goto LABEL_199;
      }

      goto LABEL_208;
    }
  }

  else if (!hasRttVariance2)
  {
    goto LABEL_198;
  }

  if (!hasRttSmoothed2)
  {
LABEL_199:
    if (!hasRttCurrent2)
    {
      goto LABEL_201;
    }

    goto LABEL_200;
  }

LABEL_208:

  if (hasRttCurrent2)
  {
LABEL_200:
  }

LABEL_201:

  v39 = v87;
  if (v87)
  {
    interfaceName3 = [v87 interfaceName];
    v106 = interfaceName3;
    v107 = v87;
    v53 = [NSDictionary dictionaryWithObjects:&v107 forKeys:&v106 count:1];

    [v57 setTCPInfoMetricsByInterfaceName:v53];
  }

LABEL_203:

  return v3;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  v6 = *(fromCopy + 53);
  if ((v6 & 2) != 0)
  {
    self->_openInterval = *(fromCopy + 2);
    *&self->_has |= 2u;
    v6 = *(fromCopy + 53);
    if ((v6 & 1) == 0)
    {
LABEL_3:
      if ((v6 & 0x2000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_49;
    }
  }

  else if ((v6 & 1) == 0)
  {
    goto LABEL_3;
  }

  self->_firstByteReadInterval = *(fromCopy + 1);
  *&self->_has |= 1u;
  v6 = *(fromCopy + 53);
  if ((v6 & 0x2000) == 0)
  {
LABEL_4:
    if ((v6 & 0x10000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_50;
  }

LABEL_49:
  self->_attemptCount = *(fromCopy + 28);
  *&self->_has |= 0x2000u;
  v6 = *(fromCopy + 53);
  if ((v6 & 0x10000) == 0)
  {
LABEL_5:
    if ((v6 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_51;
  }

LABEL_50:
  self->_metricsCount = *(fromCopy + 38);
  *&self->_has |= 0x10000u;
  v6 = *(fromCopy + 53);
  if ((v6 & 4) == 0)
  {
LABEL_6:
    if ((v6 & 0x20000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_52;
  }

LABEL_51:
  self->_pingMean = *(fromCopy + 3);
  *&self->_has |= 4u;
  v6 = *(fromCopy + 53);
  if ((v6 & 0x20000) == 0)
  {
LABEL_7:
    if ((v6 & 0x2000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_53;
  }

LABEL_52:
  self->_pingCount = *(fromCopy + 39);
  *&self->_has |= 0x20000u;
  v6 = *(fromCopy + 53);
  if ((v6 & 0x2000000) == 0)
  {
LABEL_8:
    if ((v6 & 0x100000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_54;
  }

LABEL_53:
  self->_unacknowledgedPingCount = *(fromCopy + 52);
  *&self->_has |= 0x2000000u;
  v6 = *(fromCopy + 53);
  if ((v6 & 0x100000) == 0)
  {
LABEL_9:
    if ((v6 & 0x200000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_55;
  }

LABEL_54:
  self->_rttCurrent = *(fromCopy + 44);
  *&self->_has |= 0x100000u;
  v6 = *(fromCopy + 53);
  if ((v6 & 0x200000) == 0)
  {
LABEL_10:
    if ((v6 & 0x400000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_56;
  }

LABEL_55:
  self->_rttSmoothed = *(fromCopy + 45);
  *&self->_has |= 0x200000u;
  v6 = *(fromCopy + 53);
  if ((v6 & 0x400000) == 0)
  {
LABEL_11:
    if ((v6 & 0x80000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_57;
  }

LABEL_56:
  self->_rttVariance = *(fromCopy + 46);
  *&self->_has |= 0x400000u;
  v6 = *(fromCopy + 53);
  if ((v6 & 0x80000) == 0)
  {
LABEL_12:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_58;
  }

LABEL_57:
  self->_rttBest = *(fromCopy + 43);
  *&self->_has |= 0x80000u;
  v6 = *(fromCopy + 53);
  if ((v6 & 0x400) == 0)
  {
LABEL_13:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_59;
  }

LABEL_58:
  self->_txPackets = *(fromCopy + 11);
  *&self->_has |= 0x400u;
  v6 = *(fromCopy + 53);
  if ((v6 & 0x200) == 0)
  {
LABEL_14:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_60;
  }

LABEL_59:
  self->_txBytes = *(fromCopy + 10);
  *&self->_has |= 0x200u;
  v6 = *(fromCopy + 53);
  if ((v6 & 0x800) == 0)
  {
LABEL_15:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_61;
  }

LABEL_60:
  self->_txRetransmitBytes = *(fromCopy + 12);
  *&self->_has |= 0x800u;
  v6 = *(fromCopy + 53);
  if ((v6 & 0x1000) == 0)
  {
LABEL_16:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_62;
  }

LABEL_61:
  self->_txUnacked = *(fromCopy + 13);
  *&self->_has |= 0x1000u;
  v6 = *(fromCopy + 53);
  if ((v6 & 0x40) == 0)
  {
LABEL_17:
    if ((v6 & 8) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_63;
  }

LABEL_62:
  self->_rxPackets = *(fromCopy + 7);
  *&self->_has |= 0x40u;
  v6 = *(fromCopy + 53);
  if ((v6 & 8) == 0)
  {
LABEL_18:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_64;
  }

LABEL_63:
  self->_rxBytes = *(fromCopy + 4);
  *&self->_has |= 8u;
  v6 = *(fromCopy + 53);
  if ((v6 & 0x10) == 0)
  {
LABEL_19:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_65;
  }

LABEL_64:
  self->_rxDuplicateBytes = *(fromCopy + 5);
  *&self->_has |= 0x10u;
  v6 = *(fromCopy + 53);
  if ((v6 & 0x20) == 0)
  {
LABEL_20:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_66;
  }

LABEL_65:
  self->_rxOooBytes = *(fromCopy + 6);
  *&self->_has |= 0x20u;
  v6 = *(fromCopy + 53);
  if ((v6 & 0x80) == 0)
  {
LABEL_21:
    if ((v6 & 0x1000000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_67;
  }

LABEL_66:
  self->_sndBandwidth = *(fromCopy + 8);
  *&self->_has |= 0x80u;
  v6 = *(fromCopy + 53);
  if ((v6 & 0x1000000) == 0)
  {
LABEL_22:
    if ((v6 & 0x800000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_68;
  }

LABEL_67:
  self->_synRetransmits = *(fromCopy + 48);
  *&self->_has |= 0x1000000u;
  v6 = *(fromCopy + 53);
  if ((v6 & 0x800000) == 0)
  {
LABEL_23:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

LABEL_68:
  self->_subflowCount = *(fromCopy + 47);
  *&self->_has |= 0x800000u;
  if ((*(fromCopy + 53) & 0x4000) != 0)
  {
LABEL_24:
    self->_connectedSubflowCount = *(fromCopy + 29);
    *&self->_has |= 0x4000u;
  }

LABEL_25:
  if (*(fromCopy + 20))
  {
    [(_ADPBProxyGetMetricsResponse *)self setPrimarySubflowIface:?];
  }

  if ((*(v5 + 214) & 4) != 0)
  {
    self->_primarySubflowSwitchCount = *(v5 + 42);
    *&self->_has |= 0x40000u;
  }

  if (*(v5 + 18))
  {
    [(_ADPBProxyGetMetricsResponse *)self setConnectionMethodName:?];
  }

  if (*(v5 + 15))
  {
    [(_ADPBProxyGetMetricsResponse *)self setConnectionEdgeIDName:?];
  }

  if (*(v5 + 16))
  {
    [(_ADPBProxyGetMetricsResponse *)self setConnectionEdgeType:?];
  }

  v7 = *(v5 + 53);
  if ((v7 & 0x8000) != 0)
  {
    self->_connectionFallbackReason = *(v5 + 34);
    *&self->_has |= 0x8000u;
    v7 = *(v5 + 53);
  }

  if ((v7 & 0x100) != 0)
  {
    self->_tuscanyConnectionDelay = *(v5 + 9);
    *&self->_has |= 0x100u;
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v8 = *(v5 + 25);
  v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [(_ADPBProxyGetMetricsResponse *)self addTcpInfoMetrics:*(*(&v13 + 1) + 8 * i), v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }
}

- (unint64_t)hash
{
  has = self->_has;
  if ((*&has & 2) != 0)
  {
    openInterval = self->_openInterval;
    if (openInterval < 0.0)
    {
      openInterval = -openInterval;
    }

    *v2.i64 = floor(openInterval + 0.5);
    v8 = (openInterval - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v9.f64[0] = NAN;
    v9.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v9), v3, v2);
    v6 = 2654435761u * *v2.i64;
    if (v8 >= 0.0)
    {
      if (v8 > 0.0)
      {
        v6 += v8;
      }
    }

    else
    {
      v6 -= fabs(v8);
    }
  }

  else
  {
    v6 = 0;
  }

  if (*&has)
  {
    firstByteReadInterval = self->_firstByteReadInterval;
    if (firstByteReadInterval < 0.0)
    {
      firstByteReadInterval = -firstByteReadInterval;
    }

    *v2.i64 = floor(firstByteReadInterval + 0.5);
    v12 = (firstByteReadInterval - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v13.f64[0] = NAN;
    v13.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v13), v3, v2);
    v10 = 2654435761u * *v2.i64;
    if (v12 >= 0.0)
    {
      if (v12 > 0.0)
      {
        v10 += v12;
      }
    }

    else
    {
      v10 -= fabs(v12);
    }
  }

  else
  {
    v10 = 0;
  }

  if ((*&has & 0x2000) == 0)
  {
    v51 = 0;
    if ((*&has & 0x10000) != 0)
    {
      goto LABEL_19;
    }

LABEL_25:
    v50 = 0;
    if ((*&has & 4) != 0)
    {
      goto LABEL_20;
    }

LABEL_26:
    v17 = 0;
    goto LABEL_27;
  }

  v51 = 2654435761 * self->_attemptCount;
  if ((*&has & 0x10000) == 0)
  {
    goto LABEL_25;
  }

LABEL_19:
  v50 = 2654435761 * self->_metricsCount;
  if ((*&has & 4) == 0)
  {
    goto LABEL_26;
  }

LABEL_20:
  pingMean = self->_pingMean;
  if (pingMean < 0.0)
  {
    pingMean = -pingMean;
  }

  *v2.i64 = floor(pingMean + 0.5);
  v15 = (pingMean - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v16.f64[0] = NAN;
  v16.f64[1] = NAN;
  v17 = 2654435761u * *vbslq_s8(vnegq_f64(v16), v3, v2).i64;
  if (v15 >= 0.0)
  {
    if (v15 > 0.0)
    {
      v17 += v15;
    }
  }

  else
  {
    v17 -= fabs(v15);
  }

LABEL_27:
  if ((*&has & 0x20000) != 0)
  {
    v49 = 2654435761 * self->_pingCount;
    if ((*&has & 0x2000000) != 0)
    {
LABEL_29:
      v48 = 2654435761 * self->_unacknowledgedPingCount;
      if ((*&has & 0x100000) != 0)
      {
        goto LABEL_30;
      }

      goto LABEL_48;
    }
  }

  else
  {
    v49 = 0;
    if ((*&has & 0x2000000) != 0)
    {
      goto LABEL_29;
    }
  }

  v48 = 0;
  if ((*&has & 0x100000) != 0)
  {
LABEL_30:
    v47 = 2654435761 * self->_rttCurrent;
    if ((*&has & 0x200000) != 0)
    {
      goto LABEL_31;
    }

    goto LABEL_49;
  }

LABEL_48:
  v47 = 0;
  if ((*&has & 0x200000) != 0)
  {
LABEL_31:
    v46 = 2654435761 * self->_rttSmoothed;
    if ((*&has & 0x400000) != 0)
    {
      goto LABEL_32;
    }

    goto LABEL_50;
  }

LABEL_49:
  v46 = 0;
  if ((*&has & 0x400000) != 0)
  {
LABEL_32:
    v45 = 2654435761 * self->_rttVariance;
    if ((*&has & 0x80000) != 0)
    {
      goto LABEL_33;
    }

    goto LABEL_51;
  }

LABEL_50:
  v45 = 0;
  if ((*&has & 0x80000) != 0)
  {
LABEL_33:
    v44 = 2654435761 * self->_rttBest;
    if ((*&has & 0x400) != 0)
    {
      goto LABEL_34;
    }

    goto LABEL_52;
  }

LABEL_51:
  v44 = 0;
  if ((*&has & 0x400) != 0)
  {
LABEL_34:
    v43 = 2654435761u * self->_txPackets;
    if ((*&has & 0x200) != 0)
    {
      goto LABEL_35;
    }

    goto LABEL_53;
  }

LABEL_52:
  v43 = 0;
  if ((*&has & 0x200) != 0)
  {
LABEL_35:
    v42 = 2654435761u * self->_txBytes;
    if ((*&has & 0x800) != 0)
    {
      goto LABEL_36;
    }

    goto LABEL_54;
  }

LABEL_53:
  v42 = 0;
  if ((*&has & 0x800) != 0)
  {
LABEL_36:
    v41 = 2654435761u * self->_txRetransmitBytes;
    if ((*&has & 0x1000) != 0)
    {
      goto LABEL_37;
    }

    goto LABEL_55;
  }

LABEL_54:
  v41 = 0;
  if ((*&has & 0x1000) != 0)
  {
LABEL_37:
    v40 = 2654435761u * self->_txUnacked;
    if ((*&has & 0x40) != 0)
    {
      goto LABEL_38;
    }

    goto LABEL_56;
  }

LABEL_55:
  v40 = 0;
  if ((*&has & 0x40) != 0)
  {
LABEL_38:
    v39 = 2654435761u * self->_rxPackets;
    if ((*&has & 8) != 0)
    {
      goto LABEL_39;
    }

    goto LABEL_57;
  }

LABEL_56:
  v39 = 0;
  if ((*&has & 8) != 0)
  {
LABEL_39:
    v38 = 2654435761u * self->_rxBytes;
    if ((*&has & 0x10) != 0)
    {
      goto LABEL_40;
    }

    goto LABEL_58;
  }

LABEL_57:
  v38 = 0;
  if ((*&has & 0x10) != 0)
  {
LABEL_40:
    v37 = 2654435761u * self->_rxDuplicateBytes;
    if ((*&has & 0x20) != 0)
    {
      goto LABEL_41;
    }

    goto LABEL_59;
  }

LABEL_58:
  v37 = 0;
  if ((*&has & 0x20) != 0)
  {
LABEL_41:
    v36 = 2654435761u * self->_rxOooBytes;
    if ((*&has & 0x80) != 0)
    {
      goto LABEL_42;
    }

    goto LABEL_60;
  }

LABEL_59:
  v36 = 0;
  if ((*&has & 0x80) != 0)
  {
LABEL_42:
    v35 = 2654435761u * self->_sndBandwidth;
    if ((*&has & 0x1000000) != 0)
    {
      goto LABEL_43;
    }

    goto LABEL_61;
  }

LABEL_60:
  v35 = 0;
  if ((*&has & 0x1000000) != 0)
  {
LABEL_43:
    v34 = 2654435761 * self->_synRetransmits;
    if ((*&has & 0x800000) != 0)
    {
      goto LABEL_44;
    }

LABEL_62:
    v33 = 0;
    if ((*&has & 0x4000) != 0)
    {
      goto LABEL_45;
    }

    goto LABEL_63;
  }

LABEL_61:
  v34 = 0;
  if ((*&has & 0x800000) == 0)
  {
    goto LABEL_62;
  }

LABEL_44:
  v33 = 2654435761 * self->_subflowCount;
  if ((*&has & 0x4000) != 0)
  {
LABEL_45:
    v32 = 2654435761 * self->_connectedSubflowCount;
    goto LABEL_64;
  }

LABEL_63:
  v32 = 0;
LABEL_64:
  v18 = [(NSString *)self->_primarySubflowIface hash];
  if ((*(&self->_has + 2) & 4) != 0)
  {
    v19 = 2654435761 * self->_primarySubflowSwitchCount;
  }

  else
  {
    v19 = 0;
  }

  v20 = [(NSString *)self->_connectionMethodName hash];
  v21 = [(NSString *)self->_connectionEdgeIDName hash];
  v22 = [(NSString *)self->_connectionEdgeType hash];
  v25 = self->_has;
  if ((*&v25 & 0x8000) != 0)
  {
    v26 = 2654435761 * self->_connectionFallbackReason;
    if ((*&v25 & 0x100) != 0)
    {
      goto LABEL_69;
    }

LABEL_74:
    v30 = 0;
    return v10 ^ v6 ^ v51 ^ v50 ^ v17 ^ v49 ^ v48 ^ v47 ^ v46 ^ v45 ^ v44 ^ v43 ^ v42 ^ v41 ^ v40 ^ v39 ^ v38 ^ v37 ^ v36 ^ v35 ^ v34 ^ v33 ^ v32 ^ v19 ^ v18 ^ v20 ^ v21 ^ v22 ^ v26 ^ v30 ^ [(NSMutableArray *)self->_tcpInfoMetrics hash];
  }

  v26 = 0;
  if ((*&v25 & 0x100) == 0)
  {
    goto LABEL_74;
  }

LABEL_69:
  tuscanyConnectionDelay = self->_tuscanyConnectionDelay;
  if (tuscanyConnectionDelay < 0.0)
  {
    tuscanyConnectionDelay = -tuscanyConnectionDelay;
  }

  *v23.i64 = floor(tuscanyConnectionDelay + 0.5);
  v28 = (tuscanyConnectionDelay - *v23.i64) * 1.84467441e19;
  *v24.i64 = *v23.i64 - trunc(*v23.i64 * 5.42101086e-20) * 1.84467441e19;
  v29.f64[0] = NAN;
  v29.f64[1] = NAN;
  v30 = 2654435761u * *vbslq_s8(vnegq_f64(v29), v24, v23).i64;
  if (v28 >= 0.0)
  {
    if (v28 > 0.0)
    {
      v30 += v28;
    }
  }

  else
  {
    v30 -= fabs(v28);
  }

  return v10 ^ v6 ^ v51 ^ v50 ^ v17 ^ v49 ^ v48 ^ v47 ^ v46 ^ v45 ^ v44 ^ v43 ^ v42 ^ v41 ^ v40 ^ v39 ^ v38 ^ v37 ^ v36 ^ v35 ^ v34 ^ v33 ^ v32 ^ v19 ^ v18 ^ v20 ^ v21 ^ v22 ^ v26 ^ v30 ^ [(NSMutableArray *)self->_tcpInfoMetrics hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_143;
  }

  has = self->_has;
  v6 = *(equalCopy + 53);
  if ((*&has & 2) != 0)
  {
    if ((v6 & 2) == 0 || self->_openInterval != *(equalCopy + 2))
    {
      goto LABEL_143;
    }
  }

  else if ((v6 & 2) != 0)
  {
    goto LABEL_143;
  }

  if (*&has)
  {
    if ((v6 & 1) == 0 || self->_firstByteReadInterval != *(equalCopy + 1))
    {
      goto LABEL_143;
    }
  }

  else if (v6)
  {
    goto LABEL_143;
  }

  if ((*&has & 0x2000) != 0)
  {
    if ((v6 & 0x2000) == 0 || self->_attemptCount != *(equalCopy + 28))
    {
      goto LABEL_143;
    }
  }

  else if ((v6 & 0x2000) != 0)
  {
    goto LABEL_143;
  }

  if ((*&has & 0x10000) != 0)
  {
    if ((v6 & 0x10000) == 0 || self->_metricsCount != *(equalCopy + 38))
    {
      goto LABEL_143;
    }
  }

  else if ((v6 & 0x10000) != 0)
  {
    goto LABEL_143;
  }

  if ((*&has & 4) != 0)
  {
    if ((v6 & 4) == 0 || self->_pingMean != *(equalCopy + 3))
    {
      goto LABEL_143;
    }
  }

  else if ((v6 & 4) != 0)
  {
    goto LABEL_143;
  }

  if ((*&has & 0x20000) != 0)
  {
    if ((v6 & 0x20000) == 0 || self->_pingCount != *(equalCopy + 39))
    {
      goto LABEL_143;
    }
  }

  else if ((v6 & 0x20000) != 0)
  {
    goto LABEL_143;
  }

  if ((*&has & 0x2000000) != 0)
  {
    if ((v6 & 0x2000000) == 0 || self->_unacknowledgedPingCount != *(equalCopy + 52))
    {
      goto LABEL_143;
    }
  }

  else if ((v6 & 0x2000000) != 0)
  {
    goto LABEL_143;
  }

  if ((*&has & 0x100000) != 0)
  {
    if ((v6 & 0x100000) == 0 || self->_rttCurrent != *(equalCopy + 44))
    {
      goto LABEL_143;
    }
  }

  else if ((v6 & 0x100000) != 0)
  {
    goto LABEL_143;
  }

  if ((*&has & 0x200000) != 0)
  {
    if ((v6 & 0x200000) == 0 || self->_rttSmoothed != *(equalCopy + 45))
    {
      goto LABEL_143;
    }
  }

  else if ((v6 & 0x200000) != 0)
  {
    goto LABEL_143;
  }

  if ((*&has & 0x400000) != 0)
  {
    if ((v6 & 0x400000) == 0 || self->_rttVariance != *(equalCopy + 46))
    {
      goto LABEL_143;
    }
  }

  else if ((v6 & 0x400000) != 0)
  {
    goto LABEL_143;
  }

  if ((*&has & 0x80000) != 0)
  {
    if ((v6 & 0x80000) == 0 || self->_rttBest != *(equalCopy + 43))
    {
      goto LABEL_143;
    }
  }

  else if ((v6 & 0x80000) != 0)
  {
    goto LABEL_143;
  }

  if ((*&has & 0x400) != 0)
  {
    if ((v6 & 0x400) == 0 || self->_txPackets != *(equalCopy + 11))
    {
      goto LABEL_143;
    }
  }

  else if ((v6 & 0x400) != 0)
  {
    goto LABEL_143;
  }

  if ((*&has & 0x200) != 0)
  {
    if ((v6 & 0x200) == 0 || self->_txBytes != *(equalCopy + 10))
    {
      goto LABEL_143;
    }
  }

  else if ((v6 & 0x200) != 0)
  {
    goto LABEL_143;
  }

  if ((*&has & 0x800) != 0)
  {
    if ((v6 & 0x800) == 0 || self->_txRetransmitBytes != *(equalCopy + 12))
    {
      goto LABEL_143;
    }
  }

  else if ((v6 & 0x800) != 0)
  {
    goto LABEL_143;
  }

  if ((*&has & 0x1000) != 0)
  {
    if ((v6 & 0x1000) == 0 || self->_txUnacked != *(equalCopy + 13))
    {
      goto LABEL_143;
    }
  }

  else if ((v6 & 0x1000) != 0)
  {
    goto LABEL_143;
  }

  if ((*&has & 0x40) != 0)
  {
    if ((v6 & 0x40) == 0 || self->_rxPackets != *(equalCopy + 7))
    {
      goto LABEL_143;
    }
  }

  else if ((v6 & 0x40) != 0)
  {
    goto LABEL_143;
  }

  if ((*&has & 8) != 0)
  {
    if ((v6 & 8) == 0 || self->_rxBytes != *(equalCopy + 4))
    {
      goto LABEL_143;
    }
  }

  else if ((v6 & 8) != 0)
  {
    goto LABEL_143;
  }

  if ((*&has & 0x10) != 0)
  {
    if ((v6 & 0x10) == 0 || self->_rxDuplicateBytes != *(equalCopy + 5))
    {
      goto LABEL_143;
    }
  }

  else if ((v6 & 0x10) != 0)
  {
    goto LABEL_143;
  }

  if ((*&has & 0x20) != 0)
  {
    if ((v6 & 0x20) == 0 || self->_rxOooBytes != *(equalCopy + 6))
    {
      goto LABEL_143;
    }
  }

  else if ((v6 & 0x20) != 0)
  {
    goto LABEL_143;
  }

  if ((*&has & 0x80) != 0)
  {
    if ((v6 & 0x80) == 0 || self->_sndBandwidth != *(equalCopy + 8))
    {
      goto LABEL_143;
    }
  }

  else if ((v6 & 0x80) != 0)
  {
    goto LABEL_143;
  }

  if ((*&has & 0x1000000) != 0)
  {
    if ((v6 & 0x1000000) == 0 || self->_synRetransmits != *(equalCopy + 48))
    {
      goto LABEL_143;
    }
  }

  else if ((v6 & 0x1000000) != 0)
  {
    goto LABEL_143;
  }

  if ((*&has & 0x800000) != 0)
  {
    if ((v6 & 0x800000) == 0 || self->_subflowCount != *(equalCopy + 47))
    {
      goto LABEL_143;
    }
  }

  else if ((v6 & 0x800000) != 0)
  {
    goto LABEL_143;
  }

  if ((*&has & 0x4000) != 0)
  {
    if ((v6 & 0x4000) == 0 || self->_connectedSubflowCount != *(equalCopy + 29))
    {
      goto LABEL_143;
    }
  }

  else if ((v6 & 0x4000) != 0)
  {
    goto LABEL_143;
  }

  primarySubflowIface = self->_primarySubflowIface;
  if (primarySubflowIface | *(equalCopy + 20))
  {
    if (![(NSString *)primarySubflowIface isEqual:?])
    {
LABEL_143:
      v14 = 0;
      goto LABEL_144;
    }

    has = self->_has;
    v6 = *(equalCopy + 53);
  }

  if ((*&has & 0x40000) != 0)
  {
    if ((v6 & 0x40000) == 0 || self->_primarySubflowSwitchCount != *(equalCopy + 42))
    {
      goto LABEL_143;
    }
  }

  else if ((v6 & 0x40000) != 0)
  {
    goto LABEL_143;
  }

  connectionMethodName = self->_connectionMethodName;
  if (connectionMethodName | *(equalCopy + 18) && ![(NSString *)connectionMethodName isEqual:?])
  {
    goto LABEL_143;
  }

  connectionEdgeIDName = self->_connectionEdgeIDName;
  if (connectionEdgeIDName | *(equalCopy + 15))
  {
    if (![(NSString *)connectionEdgeIDName isEqual:?])
    {
      goto LABEL_143;
    }
  }

  connectionEdgeType = self->_connectionEdgeType;
  if (connectionEdgeType | *(equalCopy + 16))
  {
    if (![(NSString *)connectionEdgeType isEqual:?])
    {
      goto LABEL_143;
    }
  }

  v11 = self->_has;
  v12 = *(equalCopy + 53);
  if ((*&v11 & 0x8000) != 0)
  {
    if ((v12 & 0x8000) == 0 || self->_connectionFallbackReason != *(equalCopy + 34))
    {
      goto LABEL_143;
    }
  }

  else if ((v12 & 0x8000) != 0)
  {
    goto LABEL_143;
  }

  if ((*&v11 & 0x100) != 0)
  {
    if ((v12 & 0x100) == 0 || self->_tuscanyConnectionDelay != *(equalCopy + 9))
    {
      goto LABEL_143;
    }
  }

  else if ((v12 & 0x100) != 0)
  {
    goto LABEL_143;
  }

  tcpInfoMetrics = self->_tcpInfoMetrics;
  if (tcpInfoMetrics | *(equalCopy + 25))
  {
    v14 = [(NSMutableArray *)tcpInfoMetrics isEqual:?];
  }

  else
  {
    v14 = 1;
  }

LABEL_144:

  return v14;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  has = self->_has;
  if ((*&has & 2) != 0)
  {
    v5[2] = *&self->_openInterval;
    *(v5 + 53) |= 2u;
    has = self->_has;
    if ((*&has & 1) == 0)
    {
LABEL_3:
      if ((*&has & 0x2000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_41;
    }
  }

  else if ((*&has & 1) == 0)
  {
    goto LABEL_3;
  }

  v5[1] = *&self->_firstByteReadInterval;
  *(v5 + 53) |= 1u;
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_4:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_42;
  }

LABEL_41:
  *(v5 + 28) = self->_attemptCount;
  *(v5 + 53) |= 0x2000u;
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_5:
    if ((*&has & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_43;
  }

LABEL_42:
  *(v5 + 38) = self->_metricsCount;
  *(v5 + 53) |= 0x10000u;
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_6:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_44;
  }

LABEL_43:
  v5[3] = *&self->_pingMean;
  *(v5 + 53) |= 4u;
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_7:
    if ((*&has & 0x2000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_45;
  }

LABEL_44:
  *(v5 + 39) = self->_pingCount;
  *(v5 + 53) |= 0x20000u;
  has = self->_has;
  if ((*&has & 0x2000000) == 0)
  {
LABEL_8:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_46;
  }

LABEL_45:
  *(v5 + 52) = self->_unacknowledgedPingCount;
  *(v5 + 53) |= 0x2000000u;
  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_9:
    if ((*&has & 0x200000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_47;
  }

LABEL_46:
  *(v5 + 44) = self->_rttCurrent;
  *(v5 + 53) |= 0x100000u;
  has = self->_has;
  if ((*&has & 0x200000) == 0)
  {
LABEL_10:
    if ((*&has & 0x400000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_48;
  }

LABEL_47:
  *(v5 + 45) = self->_rttSmoothed;
  *(v5 + 53) |= 0x200000u;
  has = self->_has;
  if ((*&has & 0x400000) == 0)
  {
LABEL_11:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_49;
  }

LABEL_48:
  *(v5 + 46) = self->_rttVariance;
  *(v5 + 53) |= 0x400000u;
  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_12:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_50;
  }

LABEL_49:
  *(v5 + 43) = self->_rttBest;
  *(v5 + 53) |= 0x80000u;
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_13:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_51;
  }

LABEL_50:
  v5[11] = self->_txPackets;
  *(v5 + 53) |= 0x400u;
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_14:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_52;
  }

LABEL_51:
  v5[10] = self->_txBytes;
  *(v5 + 53) |= 0x200u;
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_15:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_53;
  }

LABEL_52:
  v5[12] = self->_txRetransmitBytes;
  *(v5 + 53) |= 0x800u;
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_16:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_54;
  }

LABEL_53:
  v5[13] = self->_txUnacked;
  *(v5 + 53) |= 0x1000u;
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_17:
    if ((*&has & 8) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_55;
  }

LABEL_54:
  v5[7] = self->_rxPackets;
  *(v5 + 53) |= 0x40u;
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_18:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_56;
  }

LABEL_55:
  v5[4] = self->_rxBytes;
  *(v5 + 53) |= 8u;
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_19:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_57;
  }

LABEL_56:
  v5[5] = self->_rxDuplicateBytes;
  *(v5 + 53) |= 0x10u;
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_20:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_58;
  }

LABEL_57:
  v5[6] = self->_rxOooBytes;
  *(v5 + 53) |= 0x20u;
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_21:
    if ((*&has & 0x1000000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_59;
  }

LABEL_58:
  v5[8] = self->_sndBandwidth;
  *(v5 + 53) |= 0x80u;
  has = self->_has;
  if ((*&has & 0x1000000) == 0)
  {
LABEL_22:
    if ((*&has & 0x800000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_60;
  }

LABEL_59:
  *(v5 + 48) = self->_synRetransmits;
  *(v5 + 53) |= 0x1000000u;
  has = self->_has;
  if ((*&has & 0x800000) == 0)
  {
LABEL_23:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

LABEL_60:
  *(v5 + 47) = self->_subflowCount;
  *(v5 + 53) |= 0x800000u;
  if ((*&self->_has & 0x4000) != 0)
  {
LABEL_24:
    *(v5 + 29) = self->_connectedSubflowCount;
    *(v5 + 53) |= 0x4000u;
  }

LABEL_25:
  v8 = [(NSString *)self->_primarySubflowIface copyWithZone:zone];
  v9 = v6[20];
  v6[20] = v8;

  if ((*(&self->_has + 2) & 4) != 0)
  {
    *(v6 + 42) = self->_primarySubflowSwitchCount;
    *(v6 + 53) |= 0x40000u;
  }

  v10 = [(NSString *)self->_connectionMethodName copyWithZone:zone];
  v11 = v6[18];
  v6[18] = v10;

  v12 = [(NSString *)self->_connectionEdgeIDName copyWithZone:zone];
  v13 = v6[15];
  v6[15] = v12;

  v14 = [(NSString *)self->_connectionEdgeType copyWithZone:zone];
  v15 = v6[16];
  v6[16] = v14;

  v16 = self->_has;
  if ((*&v16 & 0x8000) != 0)
  {
    *(v6 + 34) = self->_connectionFallbackReason;
    *(v6 + 53) |= 0x8000u;
    v16 = self->_has;
  }

  if ((*&v16 & 0x100) != 0)
  {
    v6[9] = *&self->_tuscanyConnectionDelay;
    *(v6 + 53) |= 0x100u;
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v17 = self->_tcpInfoMetrics;
  v18 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v25;
    do
    {
      v21 = 0;
      do
      {
        if (*v25 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = [*(*(&v24 + 1) + 8 * v21) copyWithZone:{zone, v24}];
        [v6 addTcpInfoMetrics:v22];

        v21 = v21 + 1;
      }

      while (v19 != v21);
      v19 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v19);
  }

  return v6;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((*&has & 2) != 0)
  {
    toCopy[2] = *&self->_openInterval;
    *(toCopy + 53) |= 2u;
    has = self->_has;
    if ((*&has & 1) == 0)
    {
LABEL_3:
      if ((*&has & 0x2000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_48;
    }
  }

  else if ((*&has & 1) == 0)
  {
    goto LABEL_3;
  }

  toCopy[1] = *&self->_firstByteReadInterval;
  *(toCopy + 53) |= 1u;
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_4:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_49;
  }

LABEL_48:
  *(toCopy + 28) = self->_attemptCount;
  *(toCopy + 53) |= 0x2000u;
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_5:
    if ((*&has & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_50;
  }

LABEL_49:
  *(toCopy + 38) = self->_metricsCount;
  *(toCopy + 53) |= 0x10000u;
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_6:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_51;
  }

LABEL_50:
  toCopy[3] = *&self->_pingMean;
  *(toCopy + 53) |= 4u;
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_7:
    if ((*&has & 0x2000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_52;
  }

LABEL_51:
  *(toCopy + 39) = self->_pingCount;
  *(toCopy + 53) |= 0x20000u;
  has = self->_has;
  if ((*&has & 0x2000000) == 0)
  {
LABEL_8:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_53;
  }

LABEL_52:
  *(toCopy + 52) = self->_unacknowledgedPingCount;
  *(toCopy + 53) |= 0x2000000u;
  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_9:
    if ((*&has & 0x200000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_54;
  }

LABEL_53:
  *(toCopy + 44) = self->_rttCurrent;
  *(toCopy + 53) |= 0x100000u;
  has = self->_has;
  if ((*&has & 0x200000) == 0)
  {
LABEL_10:
    if ((*&has & 0x400000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_55;
  }

LABEL_54:
  *(toCopy + 45) = self->_rttSmoothed;
  *(toCopy + 53) |= 0x200000u;
  has = self->_has;
  if ((*&has & 0x400000) == 0)
  {
LABEL_11:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_56;
  }

LABEL_55:
  *(toCopy + 46) = self->_rttVariance;
  *(toCopy + 53) |= 0x400000u;
  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_12:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_57;
  }

LABEL_56:
  *(toCopy + 43) = self->_rttBest;
  *(toCopy + 53) |= 0x80000u;
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_13:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_58;
  }

LABEL_57:
  toCopy[11] = self->_txPackets;
  *(toCopy + 53) |= 0x400u;
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_14:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_59;
  }

LABEL_58:
  toCopy[10] = self->_txBytes;
  *(toCopy + 53) |= 0x200u;
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_15:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_60;
  }

LABEL_59:
  toCopy[12] = self->_txRetransmitBytes;
  *(toCopy + 53) |= 0x800u;
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_16:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_61;
  }

LABEL_60:
  toCopy[13] = self->_txUnacked;
  *(toCopy + 53) |= 0x1000u;
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_17:
    if ((*&has & 8) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_62;
  }

LABEL_61:
  toCopy[7] = self->_rxPackets;
  *(toCopy + 53) |= 0x40u;
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_18:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_63;
  }

LABEL_62:
  toCopy[4] = self->_rxBytes;
  *(toCopy + 53) |= 8u;
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_19:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_64;
  }

LABEL_63:
  toCopy[5] = self->_rxDuplicateBytes;
  *(toCopy + 53) |= 0x10u;
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_20:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_65;
  }

LABEL_64:
  toCopy[6] = self->_rxOooBytes;
  *(toCopy + 53) |= 0x20u;
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_21:
    if ((*&has & 0x1000000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_66;
  }

LABEL_65:
  toCopy[8] = self->_sndBandwidth;
  *(toCopy + 53) |= 0x80u;
  has = self->_has;
  if ((*&has & 0x1000000) == 0)
  {
LABEL_22:
    if ((*&has & 0x800000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_67;
  }

LABEL_66:
  *(toCopy + 48) = self->_synRetransmits;
  *(toCopy + 53) |= 0x1000000u;
  has = self->_has;
  if ((*&has & 0x800000) == 0)
  {
LABEL_23:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

LABEL_67:
  *(toCopy + 47) = self->_subflowCount;
  *(toCopy + 53) |= 0x800000u;
  if ((*&self->_has & 0x4000) != 0)
  {
LABEL_24:
    *(toCopy + 29) = self->_connectedSubflowCount;
    *(toCopy + 53) |= 0x4000u;
  }

LABEL_25:
  v11 = toCopy;
  if (self->_primarySubflowIface)
  {
    [toCopy setPrimarySubflowIface:?];
    toCopy = v11;
  }

  if ((*(&self->_has + 2) & 4) != 0)
  {
    *(toCopy + 42) = self->_primarySubflowSwitchCount;
    *(toCopy + 53) |= 0x40000u;
  }

  if (self->_connectionMethodName)
  {
    [v11 setConnectionMethodName:?];
    toCopy = v11;
  }

  if (self->_connectionEdgeIDName)
  {
    [v11 setConnectionEdgeIDName:?];
    toCopy = v11;
  }

  if (self->_connectionEdgeType)
  {
    [v11 setConnectionEdgeType:?];
    toCopy = v11;
  }

  v6 = self->_has;
  if ((*&v6 & 0x8000) != 0)
  {
    *(toCopy + 34) = self->_connectionFallbackReason;
    *(toCopy + 53) |= 0x8000u;
    v6 = self->_has;
  }

  if ((*&v6 & 0x100) != 0)
  {
    toCopy[9] = *&self->_tuscanyConnectionDelay;
    *(toCopy + 53) |= 0x100u;
  }

  if ([(_ADPBProxyGetMetricsResponse *)self tcpInfoMetricsCount])
  {
    [v11 clearTcpInfoMetrics];
    tcpInfoMetricsCount = [(_ADPBProxyGetMetricsResponse *)self tcpInfoMetricsCount];
    if (tcpInfoMetricsCount)
    {
      v8 = tcpInfoMetricsCount;
      for (i = 0; i != v8; ++i)
      {
        v10 = [(_ADPBProxyGetMetricsResponse *)self tcpInfoMetricsAtIndex:i];
        [v11 addTcpInfoMetrics:v10];
      }
    }
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((*&has & 2) != 0)
  {
    PBDataWriterWriteDoubleField();
    has = self->_has;
    if ((*&has & 1) == 0)
    {
LABEL_3:
      if ((*&has & 0x2000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_49;
    }
  }

  else if ((*&has & 1) == 0)
  {
    goto LABEL_3;
  }

  PBDataWriterWriteDoubleField();
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_4:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_50;
  }

LABEL_49:
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_5:
    if ((*&has & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_51;
  }

LABEL_50:
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_6:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_52;
  }

LABEL_51:
  PBDataWriterWriteDoubleField();
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_7:
    if ((*&has & 0x2000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_53;
  }

LABEL_52:
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x2000000) == 0)
  {
LABEL_8:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_54;
  }

LABEL_53:
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_9:
    if ((*&has & 0x200000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_55;
  }

LABEL_54:
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x200000) == 0)
  {
LABEL_10:
    if ((*&has & 0x400000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_56;
  }

LABEL_55:
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x400000) == 0)
  {
LABEL_11:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_57;
  }

LABEL_56:
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_12:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_58;
  }

LABEL_57:
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_13:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_59;
  }

LABEL_58:
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_14:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_60;
  }

LABEL_59:
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_15:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_61;
  }

LABEL_60:
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_16:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_62;
  }

LABEL_61:
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_17:
    if ((*&has & 8) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_63;
  }

LABEL_62:
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_18:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_64;
  }

LABEL_63:
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_19:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_65;
  }

LABEL_64:
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_20:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_66;
  }

LABEL_65:
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_21:
    if ((*&has & 0x1000000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_67;
  }

LABEL_66:
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x1000000) == 0)
  {
LABEL_22:
    if ((*&has & 0x800000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_68;
  }

LABEL_67:
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x800000) == 0)
  {
LABEL_23:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

LABEL_68:
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 0x4000) != 0)
  {
LABEL_24:
    PBDataWriterWriteUint32Field();
  }

LABEL_25:
  if (self->_primarySubflowIface)
  {
    PBDataWriterWriteStringField();
  }

  if ((*(&self->_has + 2) & 4) != 0)
  {
    PBDataWriterWriteUint32Field();
  }

  if (self->_connectionMethodName)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_connectionEdgeIDName)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_connectionEdgeType)
  {
    PBDataWriterWriteStringField();
  }

  v6 = self->_has;
  if ((*&v6 & 0x8000) != 0)
  {
    PBDataWriterWriteUint32Field();
    v6 = self->_has;
  }

  if ((*&v6 & 0x100) != 0)
  {
    PBDataWriterWriteDoubleField();
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = self->_tcpInfoMetrics;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        PBDataWriterWriteSubmessage();
        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

- (BOOL)readFrom:(id)from
{
  fromCopy2 = from;
  while (2)
  {
    position = [fromCopy2 position];
    if (position >= [from length] || (objc_msgSend(from, "hasError") & 1) != 0)
    {
      return [from hasError] ^ 1;
    }

    v7 = 0;
    v8 = 0;
    v9 = 0;
    while (1)
    {
      LOBYTE(v170[0]) = 0;
      v10 = [from position] + 1;
      if (v10 >= [from position] && (v11 = objc_msgSend(from, "position") + 1, v11 <= objc_msgSend(from, "length")))
      {
        data = [from data];
        [data getBytes:v170 range:{objc_msgSend(from, "position"), 1}];

        [from setPosition:{objc_msgSend(from, "position") + 1}];
      }

      else
      {
        [from _setError];
      }

      v9 |= (v170[0] & 0x7F) << v7;
      if ((v170[0] & 0x80) == 0)
      {
        break;
      }

      v7 += 7;
      v13 = v8++ >= 9;
      if (v13)
      {
        v14 = 0;
        goto LABEL_16;
      }
    }

    v14 = [from hasError] ? 0 : v9;
LABEL_16:
    if (([from hasError] & 1) != 0 || (v14 & 7) == 4)
    {
      return [from hasError] ^ 1;
    }

    switch((v14 >> 3))
    {
      case 1u:
        *&self->_has |= 2u;
        v170[0] = 0;
        v15 = [from position] + 8;
        if (v15 >= [from position] && (v16 = objc_msgSend(from, "position") + 8, v16 <= objc_msgSend(from, "length")))
        {
          data2 = [from data];
          [data2 getBytes:v170 range:{objc_msgSend(from, "position"), 8}];

          [from setPosition:{objc_msgSend(from, "position") + 8}];
        }

        else
        {
          [from _setError];
        }

        v164 = v170[0];
        v165 = 16;
        goto LABEL_337;
      case 2u:
        *&self->_has |= 1u;
        v170[0] = 0;
        v95 = [from position] + 8;
        if (v95 >= [from position] && (v96 = objc_msgSend(from, "position") + 8, v96 <= objc_msgSend(from, "length")))
        {
          data3 = [from data];
          [data3 getBytes:v170 range:{objc_msgSend(from, "position"), 8}];

          [from setPosition:{objc_msgSend(from, "position") + 8}];
        }

        else
        {
          [from _setError];
        }

        v164 = v170[0];
        v165 = 8;
        goto LABEL_337;
      case 3u:
        v69 = 0;
        v70 = 0;
        v71 = 0;
        *&self->_has |= 0x2000u;
        while (1)
        {
          LOBYTE(v170[0]) = 0;
          v72 = [from position] + 1;
          if (v72 >= [from position] && (v73 = objc_msgSend(from, "position") + 1, v73 <= objc_msgSend(from, "length")))
          {
            data4 = [from data];
            [data4 getBytes:v170 range:{objc_msgSend(from, "position"), 1}];

            [from setPosition:{objc_msgSend(from, "position") + 1}];
          }

          else
          {
            [from _setError];
          }

          v71 |= (v170[0] & 0x7F) << v69;
          if ((v170[0] & 0x80) == 0)
          {
            break;
          }

          v69 += 7;
          v13 = v70++ >= 9;
          if (v13)
          {
            v30 = 0;
            goto LABEL_274;
          }
        }

        if ([from hasError])
        {
          v30 = 0;
        }

        else
        {
          v30 = v71;
        }

LABEL_274:
        v162 = 112;
        goto LABEL_328;
      case 4u:
        v122 = 0;
        v123 = 0;
        v124 = 0;
        *&self->_has |= 0x10000u;
        while (1)
        {
          LOBYTE(v170[0]) = 0;
          v125 = [from position] + 1;
          if (v125 >= [from position] && (v126 = objc_msgSend(from, "position") + 1, v126 <= objc_msgSend(from, "length")))
          {
            data5 = [from data];
            [data5 getBytes:v170 range:{objc_msgSend(from, "position"), 1}];

            [from setPosition:{objc_msgSend(from, "position") + 1}];
          }

          else
          {
            [from _setError];
          }

          v124 |= (v170[0] & 0x7F) << v122;
          if ((v170[0] & 0x80) == 0)
          {
            break;
          }

          v122 += 7;
          v13 = v123++ >= 9;
          if (v13)
          {
            v30 = 0;
            goto LABEL_306;
          }
        }

        if ([from hasError])
        {
          v30 = 0;
        }

        else
        {
          v30 = v124;
        }

LABEL_306:
        v162 = 152;
        goto LABEL_328;
      case 5u:
        *&self->_has |= 4u;
        v170[0] = 0;
        v128 = [from position] + 8;
        if (v128 >= [from position] && (v129 = objc_msgSend(from, "position") + 8, v129 <= objc_msgSend(from, "length")))
        {
          data6 = [from data];
          [data6 getBytes:v170 range:{objc_msgSend(from, "position"), 8}];

          [from setPosition:{objc_msgSend(from, "position") + 8}];
        }

        else
        {
          [from _setError];
        }

        v164 = v170[0];
        v165 = 24;
        goto LABEL_337;
      case 6u:
        v77 = 0;
        v78 = 0;
        v79 = 0;
        *&self->_has |= 0x20000u;
        while (1)
        {
          LOBYTE(v170[0]) = 0;
          v80 = [from position] + 1;
          if (v80 >= [from position] && (v81 = objc_msgSend(from, "position") + 1, v81 <= objc_msgSend(from, "length")))
          {
            data7 = [from data];
            [data7 getBytes:v170 range:{objc_msgSend(from, "position"), 1}];

            [from setPosition:{objc_msgSend(from, "position") + 1}];
          }

          else
          {
            [from _setError];
          }

          v79 |= (v170[0] & 0x7F) << v77;
          if ((v170[0] & 0x80) == 0)
          {
            break;
          }

          v77 += 7;
          v13 = v78++ >= 9;
          if (v13)
          {
            v30 = 0;
            goto LABEL_278;
          }
        }

        if ([from hasError])
        {
          v30 = 0;
        }

        else
        {
          v30 = v79;
        }

LABEL_278:
        v162 = 156;
        goto LABEL_328;
      case 7u:
        v97 = 0;
        v98 = 0;
        v99 = 0;
        *&self->_has |= 0x2000000u;
        while (1)
        {
          LOBYTE(v170[0]) = 0;
          v100 = [from position] + 1;
          if (v100 >= [from position] && (v101 = objc_msgSend(from, "position") + 1, v101 <= objc_msgSend(from, "length")))
          {
            data8 = [from data];
            [data8 getBytes:v170 range:{objc_msgSend(from, "position"), 1}];

            [from setPosition:{objc_msgSend(from, "position") + 1}];
          }

          else
          {
            [from _setError];
          }

          v99 |= (v170[0] & 0x7F) << v97;
          if ((v170[0] & 0x80) == 0)
          {
            break;
          }

          v97 += 7;
          v13 = v98++ >= 9;
          if (v13)
          {
            v30 = 0;
            goto LABEL_290;
          }
        }

        if ([from hasError])
        {
          v30 = 0;
        }

        else
        {
          v30 = v99;
        }

LABEL_290:
        v162 = 208;
        goto LABEL_328;
      case 0xAu:
        v103 = 0;
        v104 = 0;
        v105 = 0;
        *&self->_has |= 0x100000u;
        while (1)
        {
          LOBYTE(v170[0]) = 0;
          v106 = [from position] + 1;
          if (v106 >= [from position] && (v107 = objc_msgSend(from, "position") + 1, v107 <= objc_msgSend(from, "length")))
          {
            data9 = [from data];
            [data9 getBytes:v170 range:{objc_msgSend(from, "position"), 1}];

            [from setPosition:{objc_msgSend(from, "position") + 1}];
          }

          else
          {
            [from _setError];
          }

          v105 |= (v170[0] & 0x7F) << v103;
          if ((v170[0] & 0x80) == 0)
          {
            break;
          }

          v103 += 7;
          v13 = v104++ >= 9;
          if (v13)
          {
            v30 = 0;
            goto LABEL_294;
          }
        }

        if ([from hasError])
        {
          v30 = 0;
        }

        else
        {
          v30 = v105;
        }

LABEL_294:
        v162 = 176;
        goto LABEL_328;
      case 0xBu:
        v136 = 0;
        v137 = 0;
        v138 = 0;
        *&self->_has |= 0x200000u;
        while (1)
        {
          LOBYTE(v170[0]) = 0;
          v139 = [from position] + 1;
          if (v139 >= [from position] && (v140 = objc_msgSend(from, "position") + 1, v140 <= objc_msgSend(from, "length")))
          {
            data10 = [from data];
            [data10 getBytes:v170 range:{objc_msgSend(from, "position"), 1}];

            [from setPosition:{objc_msgSend(from, "position") + 1}];
          }

          else
          {
            [from _setError];
          }

          v138 |= (v170[0] & 0x7F) << v136;
          if ((v170[0] & 0x80) == 0)
          {
            break;
          }

          v136 += 7;
          v13 = v137++ >= 9;
          if (v13)
          {
            v30 = 0;
            goto LABEL_314;
          }
        }

        if ([from hasError])
        {
          v30 = 0;
        }

        else
        {
          v30 = v138;
        }

LABEL_314:
        v162 = 180;
        goto LABEL_328;
      case 0xCu:
        v130 = 0;
        v131 = 0;
        v132 = 0;
        *&self->_has |= 0x400000u;
        while (1)
        {
          LOBYTE(v170[0]) = 0;
          v133 = [from position] + 1;
          if (v133 >= [from position] && (v134 = objc_msgSend(from, "position") + 1, v134 <= objc_msgSend(from, "length")))
          {
            data11 = [from data];
            [data11 getBytes:v170 range:{objc_msgSend(from, "position"), 1}];

            [from setPosition:{objc_msgSend(from, "position") + 1}];
          }

          else
          {
            [from _setError];
          }

          v132 |= (v170[0] & 0x7F) << v130;
          if ((v170[0] & 0x80) == 0)
          {
            break;
          }

          v130 += 7;
          v13 = v131++ >= 9;
          if (v13)
          {
            v30 = 0;
            goto LABEL_310;
          }
        }

        if ([from hasError])
        {
          v30 = 0;
        }

        else
        {
          v30 = v132;
        }

LABEL_310:
        v162 = 184;
        goto LABEL_328;
      case 0xDu:
        v39 = 0;
        v40 = 0;
        v41 = 0;
        *&self->_has |= 0x80000u;
        while (1)
        {
          LOBYTE(v170[0]) = 0;
          v42 = [from position] + 1;
          if (v42 >= [from position] && (v43 = objc_msgSend(from, "position") + 1, v43 <= objc_msgSend(from, "length")))
          {
            data12 = [from data];
            [data12 getBytes:v170 range:{objc_msgSend(from, "position"), 1}];

            [from setPosition:{objc_msgSend(from, "position") + 1}];
          }

          else
          {
            [from _setError];
          }

          v41 |= (v170[0] & 0x7F) << v39;
          if ((v170[0] & 0x80) == 0)
          {
            break;
          }

          v39 += 7;
          v13 = v40++ >= 9;
          if (v13)
          {
            v30 = 0;
            goto LABEL_254;
          }
        }

        if ([from hasError])
        {
          v30 = 0;
        }

        else
        {
          v30 = v41;
        }

LABEL_254:
        v162 = 172;
        goto LABEL_328;
      case 0x14u:
        v83 = 0;
        v84 = 0;
        v85 = 0;
        *&self->_has |= 0x400u;
        while (1)
        {
          LOBYTE(v170[0]) = 0;
          v86 = [from position] + 1;
          if (v86 >= [from position] && (v87 = objc_msgSend(from, "position") + 1, v87 <= objc_msgSend(from, "length")))
          {
            data13 = [from data];
            [data13 getBytes:v170 range:{objc_msgSend(from, "position"), 1}];

            [from setPosition:{objc_msgSend(from, "position") + 1}];
          }

          else
          {
            [from _setError];
          }

          v85 |= (v170[0] & 0x7F) << v83;
          if ((v170[0] & 0x80) == 0)
          {
            break;
          }

          v83 += 7;
          v13 = v84++ >= 9;
          if (v13)
          {
            v23 = 0;
            goto LABEL_282;
          }
        }

        if ([from hasError])
        {
          v23 = 0;
        }

        else
        {
          v23 = v85;
        }

LABEL_282:
        v161 = 88;
        goto LABEL_323;
      case 0x15u:
        v57 = 0;
        v58 = 0;
        v59 = 0;
        *&self->_has |= 0x200u;
        while (1)
        {
          LOBYTE(v170[0]) = 0;
          v60 = [from position] + 1;
          if (v60 >= [from position] && (v61 = objc_msgSend(from, "position") + 1, v61 <= objc_msgSend(from, "length")))
          {
            data14 = [from data];
            [data14 getBytes:v170 range:{objc_msgSend(from, "position"), 1}];

            [from setPosition:{objc_msgSend(from, "position") + 1}];
          }

          else
          {
            [from _setError];
          }

          v59 |= (v170[0] & 0x7F) << v57;
          if ((v170[0] & 0x80) == 0)
          {
            break;
          }

          v57 += 7;
          v13 = v58++ >= 9;
          if (v13)
          {
            v23 = 0;
            goto LABEL_266;
          }
        }

        if ([from hasError])
        {
          v23 = 0;
        }

        else
        {
          v23 = v59;
        }

LABEL_266:
        v161 = 80;
        goto LABEL_323;
      case 0x16u:
        v31 = 0;
        v32 = 0;
        v33 = 0;
        *&self->_has |= 0x800u;
        while (1)
        {
          LOBYTE(v170[0]) = 0;
          v34 = [from position] + 1;
          if (v34 >= [from position] && (v35 = objc_msgSend(from, "position") + 1, v35 <= objc_msgSend(from, "length")))
          {
            data15 = [from data];
            [data15 getBytes:v170 range:{objc_msgSend(from, "position"), 1}];

            [from setPosition:{objc_msgSend(from, "position") + 1}];
          }

          else
          {
            [from _setError];
          }

          v33 |= (v170[0] & 0x7F) << v31;
          if ((v170[0] & 0x80) == 0)
          {
            break;
          }

          v31 += 7;
          v13 = v32++ >= 9;
          if (v13)
          {
            v23 = 0;
            goto LABEL_250;
          }
        }

        if ([from hasError])
        {
          v23 = 0;
        }

        else
        {
          v23 = v33;
        }

LABEL_250:
        v161 = 96;
        goto LABEL_323;
      case 0x17u:
        v109 = 0;
        v110 = 0;
        v111 = 0;
        *&self->_has |= 0x1000u;
        while (1)
        {
          LOBYTE(v170[0]) = 0;
          v112 = [from position] + 1;
          if (v112 >= [from position] && (v113 = objc_msgSend(from, "position") + 1, v113 <= objc_msgSend(from, "length")))
          {
            data16 = [from data];
            [data16 getBytes:v170 range:{objc_msgSend(from, "position"), 1}];

            [from setPosition:{objc_msgSend(from, "position") + 1}];
          }

          else
          {
            [from _setError];
          }

          v111 |= (v170[0] & 0x7F) << v109;
          if ((v170[0] & 0x80) == 0)
          {
            break;
          }

          v109 += 7;
          v13 = v110++ >= 9;
          if (v13)
          {
            v23 = 0;
            goto LABEL_298;
          }
        }

        if ([from hasError])
        {
          v23 = 0;
        }

        else
        {
          v23 = v111;
        }

LABEL_298:
        v161 = 104;
        goto LABEL_323;
      case 0x1Eu:
        v115 = 0;
        v116 = 0;
        v117 = 0;
        *&self->_has |= 0x40u;
        while (1)
        {
          LOBYTE(v170[0]) = 0;
          v118 = [from position] + 1;
          if (v118 >= [from position] && (v119 = objc_msgSend(from, "position") + 1, v119 <= objc_msgSend(from, "length")))
          {
            data17 = [from data];
            [data17 getBytes:v170 range:{objc_msgSend(from, "position"), 1}];

            [from setPosition:{objc_msgSend(from, "position") + 1}];
          }

          else
          {
            [from _setError];
          }

          v117 |= (v170[0] & 0x7F) << v115;
          if ((v170[0] & 0x80) == 0)
          {
            break;
          }

          v115 += 7;
          v13 = v116++ >= 9;
          if (v13)
          {
            v23 = 0;
            goto LABEL_302;
          }
        }

        if ([from hasError])
        {
          v23 = 0;
        }

        else
        {
          v23 = v117;
        }

LABEL_302:
        v161 = 56;
        goto LABEL_323;
      case 0x1Fu:
        v148 = 0;
        v149 = 0;
        v150 = 0;
        *&self->_has |= 8u;
        while (1)
        {
          LOBYTE(v170[0]) = 0;
          v151 = [from position] + 1;
          if (v151 >= [from position] && (v152 = objc_msgSend(from, "position") + 1, v152 <= objc_msgSend(from, "length")))
          {
            data18 = [from data];
            [data18 getBytes:v170 range:{objc_msgSend(from, "position"), 1}];

            [from setPosition:{objc_msgSend(from, "position") + 1}];
          }

          else
          {
            [from _setError];
          }

          v150 |= (v170[0] & 0x7F) << v148;
          if ((v170[0] & 0x80) == 0)
          {
            break;
          }

          v148 += 7;
          v13 = v149++ >= 9;
          if (v13)
          {
            v23 = 0;
            goto LABEL_322;
          }
        }

        if ([from hasError])
        {
          v23 = 0;
        }

        else
        {
          v23 = v150;
        }

LABEL_322:
        v161 = 32;
        goto LABEL_323;
      case 0x20u:
        v142 = 0;
        v143 = 0;
        v144 = 0;
        *&self->_has |= 0x10u;
        while (1)
        {
          LOBYTE(v170[0]) = 0;
          v145 = [from position] + 1;
          if (v145 >= [from position] && (v146 = objc_msgSend(from, "position") + 1, v146 <= objc_msgSend(from, "length")))
          {
            data19 = [from data];
            [data19 getBytes:v170 range:{objc_msgSend(from, "position"), 1}];

            [from setPosition:{objc_msgSend(from, "position") + 1}];
          }

          else
          {
            [from _setError];
          }

          v144 |= (v170[0] & 0x7F) << v142;
          if ((v170[0] & 0x80) == 0)
          {
            break;
          }

          v142 += 7;
          v13 = v143++ >= 9;
          if (v13)
          {
            v23 = 0;
            goto LABEL_318;
          }
        }

        if ([from hasError])
        {
          v23 = 0;
        }

        else
        {
          v23 = v144;
        }

LABEL_318:
        v161 = 40;
        goto LABEL_323;
      case 0x21u:
        v17 = 0;
        v18 = 0;
        v19 = 0;
        *&self->_has |= 0x20u;
        while (1)
        {
          LOBYTE(v170[0]) = 0;
          v20 = [from position] + 1;
          if (v20 >= [from position] && (v21 = objc_msgSend(from, "position") + 1, v21 <= objc_msgSend(from, "length")))
          {
            data20 = [from data];
            [data20 getBytes:v170 range:{objc_msgSend(from, "position"), 1}];

            [from setPosition:{objc_msgSend(from, "position") + 1}];
          }

          else
          {
            [from _setError];
          }

          v19 |= (v170[0] & 0x7F) << v17;
          if ((v170[0] & 0x80) == 0)
          {
            break;
          }

          v17 += 7;
          v13 = v18++ >= 9;
          if (v13)
          {
            v23 = 0;
            goto LABEL_242;
          }
        }

        if ([from hasError])
        {
          v23 = 0;
        }

        else
        {
          v23 = v19;
        }

LABEL_242:
        v161 = 48;
        goto LABEL_323;
      case 0x28u:
        v63 = 0;
        v64 = 0;
        v65 = 0;
        *&self->_has |= 0x80u;
        while (1)
        {
          LOBYTE(v170[0]) = 0;
          v66 = [from position] + 1;
          if (v66 >= [from position] && (v67 = objc_msgSend(from, "position") + 1, v67 <= objc_msgSend(from, "length")))
          {
            data21 = [from data];
            [data21 getBytes:v170 range:{objc_msgSend(from, "position"), 1}];

            [from setPosition:{objc_msgSend(from, "position") + 1}];
          }

          else
          {
            [from _setError];
          }

          v65 |= (v170[0] & 0x7F) << v63;
          if ((v170[0] & 0x80) == 0)
          {
            break;
          }

          v63 += 7;
          v13 = v64++ >= 9;
          if (v13)
          {
            v23 = 0;
            goto LABEL_270;
          }
        }

        if ([from hasError])
        {
          v23 = 0;
        }

        else
        {
          v23 = v65;
        }

LABEL_270:
        v161 = 64;
LABEL_323:
        *&self->PBCodable_opaque[v161] = v23;
        goto LABEL_338;
      case 0x29u:
        v154 = 0;
        v155 = 0;
        v156 = 0;
        *&self->_has |= 0x1000000u;
        while (1)
        {
          LOBYTE(v170[0]) = 0;
          v157 = [from position] + 1;
          if (v157 >= [from position] && (v158 = objc_msgSend(from, "position") + 1, v158 <= objc_msgSend(from, "length")))
          {
            data22 = [from data];
            [data22 getBytes:v170 range:{objc_msgSend(from, "position"), 1}];

            [from setPosition:{objc_msgSend(from, "position") + 1}];
          }

          else
          {
            [from _setError];
          }

          v156 |= (v170[0] & 0x7F) << v154;
          if ((v170[0] & 0x80) == 0)
          {
            break;
          }

          v154 += 7;
          v13 = v155++ >= 9;
          if (v13)
          {
            v30 = 0;
            goto LABEL_327;
          }
        }

        if ([from hasError])
        {
          v30 = 0;
        }

        else
        {
          v30 = v156;
        }

LABEL_327:
        v162 = 192;
        goto LABEL_328;
      case 0x32u:
        v24 = 0;
        v25 = 0;
        v26 = 0;
        *&self->_has |= 0x800000u;
        while (1)
        {
          LOBYTE(v170[0]) = 0;
          v27 = [from position] + 1;
          if (v27 >= [from position] && (v28 = objc_msgSend(from, "position") + 1, v28 <= objc_msgSend(from, "length")))
          {
            data23 = [from data];
            [data23 getBytes:v170 range:{objc_msgSend(from, "position"), 1}];

            [from setPosition:{objc_msgSend(from, "position") + 1}];
          }

          else
          {
            [from _setError];
          }

          v26 |= (v170[0] & 0x7F) << v24;
          if ((v170[0] & 0x80) == 0)
          {
            break;
          }

          v24 += 7;
          v13 = v25++ >= 9;
          if (v13)
          {
            v30 = 0;
            goto LABEL_246;
          }
        }

        if ([from hasError])
        {
          v30 = 0;
        }

        else
        {
          v30 = v26;
        }

LABEL_246:
        v162 = 188;
        goto LABEL_328;
      case 0x33u:
        v51 = 0;
        v52 = 0;
        v53 = 0;
        *&self->_has |= 0x4000u;
        while (1)
        {
          LOBYTE(v170[0]) = 0;
          v54 = [from position] + 1;
          if (v54 >= [from position] && (v55 = objc_msgSend(from, "position") + 1, v55 <= objc_msgSend(from, "length")))
          {
            data24 = [from data];
            [data24 getBytes:v170 range:{objc_msgSend(from, "position"), 1}];

            [from setPosition:{objc_msgSend(from, "position") + 1}];
          }

          else
          {
            [from _setError];
          }

          v53 |= (v170[0] & 0x7F) << v51;
          if ((v170[0] & 0x80) == 0)
          {
            break;
          }

          v51 += 7;
          v13 = v52++ >= 9;
          if (v13)
          {
            v30 = 0;
            goto LABEL_262;
          }
        }

        if ([from hasError])
        {
          v30 = 0;
        }

        else
        {
          v30 = v53;
        }

LABEL_262:
        v162 = 116;
        goto LABEL_328;
      case 0x34u:
        v37 = PBReaderReadString();
        v38 = 160;
        goto LABEL_238;
      case 0x35u:
        v89 = 0;
        v90 = 0;
        v91 = 0;
        *&self->_has |= 0x40000u;
        while (1)
        {
          LOBYTE(v170[0]) = 0;
          v92 = [from position] + 1;
          if (v92 >= [from position] && (v93 = objc_msgSend(from, "position") + 1, v93 <= objc_msgSend(from, "length")))
          {
            data25 = [from data];
            [data25 getBytes:v170 range:{objc_msgSend(from, "position"), 1}];

            [from setPosition:{objc_msgSend(from, "position") + 1}];
          }

          else
          {
            [from _setError];
          }

          v91 |= (v170[0] & 0x7F) << v89;
          if ((v170[0] & 0x80) == 0)
          {
            break;
          }

          v89 += 7;
          v13 = v90++ >= 9;
          if (v13)
          {
            v30 = 0;
            goto LABEL_286;
          }
        }

        if ([from hasError])
        {
          v30 = 0;
        }

        else
        {
          v30 = v91;
        }

LABEL_286:
        v162 = 168;
        goto LABEL_328;
      case 0x36u:
        v37 = PBReaderReadString();
        v38 = 144;
        goto LABEL_238;
      case 0x37u:
        v37 = PBReaderReadString();
        v38 = 120;
        goto LABEL_238;
      case 0x38u:
        v37 = PBReaderReadString();
        v38 = 128;
LABEL_238:
        v160 = *&self->PBCodable_opaque[v38];
        *&self->PBCodable_opaque[v38] = v37;

        goto LABEL_338;
      case 0x39u:
        v45 = 0;
        v46 = 0;
        v47 = 0;
        *&self->_has |= 0x8000u;
        while (1)
        {
          LOBYTE(v170[0]) = 0;
          v48 = [from position] + 1;
          if (v48 >= [from position] && (v49 = objc_msgSend(from, "position") + 1, v49 <= objc_msgSend(from, "length")))
          {
            data26 = [from data];
            [data26 getBytes:v170 range:{objc_msgSend(from, "position"), 1}];

            [from setPosition:{objc_msgSend(from, "position") + 1}];
          }

          else
          {
            [from _setError];
          }

          v47 |= (v170[0] & 0x7F) << v45;
          if ((v170[0] & 0x80) == 0)
          {
            break;
          }

          v45 += 7;
          v13 = v46++ >= 9;
          if (v13)
          {
            v30 = 0;
            goto LABEL_258;
          }
        }

        if ([from hasError])
        {
          v30 = 0;
        }

        else
        {
          v30 = v47;
        }

LABEL_258:
        v162 = 136;
LABEL_328:
        *&self->PBCodable_opaque[v162] = v30;
        goto LABEL_338;
      case 0x3Au:
        *&self->_has |= 0x100u;
        v170[0] = 0;
        v75 = [from position] + 8;
        if (v75 >= [from position] && (v76 = objc_msgSend(from, "position") + 8, v76 <= objc_msgSend(from, "length")))
        {
          data27 = [from data];
          [data27 getBytes:v170 range:{objc_msgSend(from, "position"), 8}];

          [from setPosition:{objc_msgSend(from, "position") + 8}];
        }

        else
        {
          [from _setError];
        }

        v164 = v170[0];
        v165 = 72;
LABEL_337:
        *&self->PBCodable_opaque[v165] = v164;
        goto LABEL_338;
      case 0x3Cu:
        v121 = objc_alloc_init(_ADPBProxyTCPInfoMetrics);
        [(_ADPBProxyGetMetricsResponse *)self addTcpInfoMetrics:v121];
        v170[0] = 0;
        v170[1] = 0;
        if (PBReaderPlaceMark() && sub_1000912DC(v121, from))
        {
          PBReaderRecallMark();

LABEL_338:
          fromCopy2 = from;
          continue;
        }

        return 0;
      default:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_338;
    }
  }
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  has = self->_has;
  if ((*&has & 2) != 0)
  {
    v23 = [NSNumber numberWithDouble:self->_openInterval];
    [v3 setObject:v23 forKey:@"open_interval"];

    has = self->_has;
    if ((*&has & 1) == 0)
    {
LABEL_3:
      if ((*&has & 0x2000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_51;
    }
  }

  else if ((*&has & 1) == 0)
  {
    goto LABEL_3;
  }

  v24 = [NSNumber numberWithDouble:self->_firstByteReadInterval];
  [v3 setObject:v24 forKey:@"first_byte_read_interval"];

  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_4:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_52;
  }

LABEL_51:
  v25 = [NSNumber numberWithUnsignedInt:self->_attemptCount];
  [v3 setObject:v25 forKey:@"attempt_count"];

  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_5:
    if ((*&has & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_53;
  }

LABEL_52:
  v26 = [NSNumber numberWithUnsignedInt:self->_metricsCount];
  [v3 setObject:v26 forKey:@"metrics_count"];

  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_6:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_54;
  }

LABEL_53:
  v27 = [NSNumber numberWithDouble:self->_pingMean];
  [v3 setObject:v27 forKey:@"ping_mean"];

  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_7:
    if ((*&has & 0x2000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_55;
  }

LABEL_54:
  v28 = [NSNumber numberWithUnsignedInt:self->_pingCount];
  [v3 setObject:v28 forKey:@"ping_count"];

  has = self->_has;
  if ((*&has & 0x2000000) == 0)
  {
LABEL_8:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_56;
  }

LABEL_55:
  v29 = [NSNumber numberWithUnsignedInt:self->_unacknowledgedPingCount];
  [v3 setObject:v29 forKey:@"unacknowledged_ping_count"];

  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_9:
    if ((*&has & 0x200000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_57;
  }

LABEL_56:
  v30 = [NSNumber numberWithUnsignedInt:self->_rttCurrent];
  [v3 setObject:v30 forKey:@"rtt_current"];

  has = self->_has;
  if ((*&has & 0x200000) == 0)
  {
LABEL_10:
    if ((*&has & 0x400000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_58;
  }

LABEL_57:
  v31 = [NSNumber numberWithUnsignedInt:self->_rttSmoothed];
  [v3 setObject:v31 forKey:@"rtt_smoothed"];

  has = self->_has;
  if ((*&has & 0x400000) == 0)
  {
LABEL_11:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_59;
  }

LABEL_58:
  v32 = [NSNumber numberWithUnsignedInt:self->_rttVariance];
  [v3 setObject:v32 forKey:@"rtt_variance"];

  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_12:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_60;
  }

LABEL_59:
  v33 = [NSNumber numberWithUnsignedInt:self->_rttBest];
  [v3 setObject:v33 forKey:@"rtt_best"];

  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_13:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_61;
  }

LABEL_60:
  v34 = [NSNumber numberWithUnsignedLongLong:self->_txPackets];
  [v3 setObject:v34 forKey:@"tx_packets"];

  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_14:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_62;
  }

LABEL_61:
  v35 = [NSNumber numberWithUnsignedLongLong:self->_txBytes];
  [v3 setObject:v35 forKey:@"tx_bytes"];

  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_15:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_63;
  }

LABEL_62:
  v36 = [NSNumber numberWithUnsignedLongLong:self->_txRetransmitBytes];
  [v3 setObject:v36 forKey:@"tx_retransmit_bytes"];

  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_16:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_64;
  }

LABEL_63:
  v37 = [NSNumber numberWithUnsignedLongLong:self->_txUnacked];
  [v3 setObject:v37 forKey:@"tx_unacked"];

  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_17:
    if ((*&has & 8) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_65;
  }

LABEL_64:
  v38 = [NSNumber numberWithUnsignedLongLong:self->_rxPackets];
  [v3 setObject:v38 forKey:@"rx_packets"];

  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_18:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_66;
  }

LABEL_65:
  v39 = [NSNumber numberWithUnsignedLongLong:self->_rxBytes];
  [v3 setObject:v39 forKey:@"rx_bytes"];

  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_19:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_67;
  }

LABEL_66:
  v40 = [NSNumber numberWithUnsignedLongLong:self->_rxDuplicateBytes];
  [v3 setObject:v40 forKey:@"rx_duplicate_bytes"];

  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_20:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_68;
  }

LABEL_67:
  v41 = [NSNumber numberWithUnsignedLongLong:self->_rxOooBytes];
  [v3 setObject:v41 forKey:@"rx_ooo_bytes"];

  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_21:
    if ((*&has & 0x1000000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_69;
  }

LABEL_68:
  v42 = [NSNumber numberWithUnsignedLongLong:self->_sndBandwidth];
  [v3 setObject:v42 forKey:@"snd_bandwidth"];

  has = self->_has;
  if ((*&has & 0x1000000) == 0)
  {
LABEL_22:
    if ((*&has & 0x800000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_70;
  }

LABEL_69:
  v43 = [NSNumber numberWithUnsignedInt:self->_synRetransmits];
  [v3 setObject:v43 forKey:@"syn_retransmits"];

  has = self->_has;
  if ((*&has & 0x800000) == 0)
  {
LABEL_23:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

LABEL_70:
  v44 = [NSNumber numberWithUnsignedInt:self->_subflowCount];
  [v3 setObject:v44 forKey:@"subflow_count"];

  if ((*&self->_has & 0x4000) != 0)
  {
LABEL_24:
    v5 = [NSNumber numberWithUnsignedInt:self->_connectedSubflowCount];
    [v3 setObject:v5 forKey:@"connected_subflow_count"];
  }

LABEL_25:
  primarySubflowIface = self->_primarySubflowIface;
  if (primarySubflowIface)
  {
    [v3 setObject:primarySubflowIface forKey:@"primary_subflow_iface"];
  }

  if ((*(&self->_has + 2) & 4) != 0)
  {
    v7 = [NSNumber numberWithUnsignedInt:self->_primarySubflowSwitchCount];
    [v3 setObject:v7 forKey:@"primary_subflow_switch_count"];
  }

  connectionMethodName = self->_connectionMethodName;
  if (connectionMethodName)
  {
    [v3 setObject:connectionMethodName forKey:@"connectionMethodName"];
  }

  connectionEdgeIDName = self->_connectionEdgeIDName;
  if (connectionEdgeIDName)
  {
    [v3 setObject:connectionEdgeIDName forKey:@"connectionEdgeIDName"];
  }

  connectionEdgeType = self->_connectionEdgeType;
  if (connectionEdgeType)
  {
    [v3 setObject:connectionEdgeType forKey:@"connectionEdgeType"];
  }

  v11 = self->_has;
  if ((*&v11 & 0x8000) != 0)
  {
    v12 = [NSNumber numberWithUnsignedInt:self->_connectionFallbackReason];
    [v3 setObject:v12 forKey:@"connectionFallbackReason"];

    v11 = self->_has;
  }

  if ((*&v11 & 0x100) != 0)
  {
    v13 = [NSNumber numberWithDouble:self->_tuscanyConnectionDelay];
    [v3 setObject:v13 forKey:@"tuscanyConnectionDelay"];
  }

  if ([(NSMutableArray *)self->_tcpInfoMetrics count])
  {
    v14 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_tcpInfoMetrics, "count")}];
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v15 = self->_tcpInfoMetrics;
    v16 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v45 objects:v49 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v46;
      do
      {
        for (i = 0; i != v17; i = i + 1)
        {
          if (*v46 != v18)
          {
            objc_enumerationMutation(v15);
          }

          dictionaryRepresentation = [*(*(&v45 + 1) + 8 * i) dictionaryRepresentation];
          [v14 addObject:dictionaryRepresentation];
        }

        v17 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v45 objects:v49 count:16];
      }

      while (v17);
    }

    [v3 setObject:v14 forKey:@"tcp_info_metrics"];
  }

  v21 = v3;

  return v3;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = _ADPBProxyGetMetricsResponse;
  v3 = [(_ADPBProxyGetMetricsResponse *)&v7 description];
  dictionaryRepresentation = [(_ADPBProxyGetMetricsResponse *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (void)addTcpInfoMetrics:(id)metrics
{
  metricsCopy = metrics;
  tcpInfoMetrics = self->_tcpInfoMetrics;
  v8 = metricsCopy;
  if (!tcpInfoMetrics)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_tcpInfoMetrics;
    self->_tcpInfoMetrics = v6;

    metricsCopy = v8;
    tcpInfoMetrics = self->_tcpInfoMetrics;
  }

  [(NSMutableArray *)tcpInfoMetrics addObject:metricsCopy];
}

- (void)setHasTuscanyConnectionDelay:(BOOL)delay
{
  if (delay)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFEFF | v3);
}

- (void)setHasConnectionFallbackReason:(BOOL)reason
{
  if (reason)
  {
    v3 = 0x8000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFF7FFF | v3);
}

- (void)setHasPrimarySubflowSwitchCount:(BOOL)count
{
  if (count)
  {
    v3 = 0x40000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFBFFFF | v3);
}

- (void)setHasConnectedSubflowCount:(BOOL)count
{
  if (count)
  {
    v3 = 0x4000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFBFFF | v3);
}

- (void)setHasSubflowCount:(BOOL)count
{
  if (count)
  {
    v3 = 0x800000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFF7FFFFF | v3);
}

- (void)setHasSynRetransmits:(BOOL)retransmits
{
  if (retransmits)
  {
    v3 = 0x1000000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFEFFFFFF | v3);
}

- (void)setHasSndBandwidth:(BOOL)bandwidth
{
  if (bandwidth)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFF7F | v3);
}

- (void)setHasRxOooBytes:(BOOL)bytes
{
  if (bytes)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFDF | v3);
}

- (void)setHasRxDuplicateBytes:(BOOL)bytes
{
  if (bytes)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFEF | v3);
}

- (void)setHasRxBytes:(BOOL)bytes
{
  if (bytes)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFF7 | v3);
}

- (void)setHasRxPackets:(BOOL)packets
{
  if (packets)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFBF | v3);
}

- (void)setHasTxUnacked:(BOOL)unacked
{
  if (unacked)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFEFFF | v3);
}

- (void)setHasTxRetransmitBytes:(BOOL)bytes
{
  if (bytes)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFF7FF | v3);
}

- (void)setHasTxBytes:(BOOL)bytes
{
  if (bytes)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFDFF | v3);
}

- (void)setHasTxPackets:(BOOL)packets
{
  if (packets)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFBFF | v3);
}

- (void)setHasRttBest:(BOOL)best
{
  if (best)
  {
    v3 = 0x80000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFF7FFFF | v3);
}

- (void)setHasRttVariance:(BOOL)variance
{
  if (variance)
  {
    v3 = 0x400000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFBFFFFF | v3);
}

- (void)setHasRttSmoothed:(BOOL)smoothed
{
  if (smoothed)
  {
    v3 = 0x200000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFDFFFFF | v3);
}

- (void)setHasRttCurrent:(BOOL)current
{
  if (current)
  {
    v3 = 0x100000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFEFFFFF | v3);
}

- (void)setHasUnacknowledgedPingCount:(BOOL)count
{
  if (count)
  {
    v3 = 0x2000000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFDFFFFFF | v3);
}

- (void)setHasPingCount:(BOOL)count
{
  if (count)
  {
    v3 = 0x20000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFDFFFF | v3);
}

- (void)setHasPingMean:(BOOL)mean
{
  if (mean)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFB | v3);
}

- (void)setHasMetricsCount:(BOOL)count
{
  if (count)
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFEFFFF | v3);
}

- (void)setHasAttemptCount:(BOOL)count
{
  if (count)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFDFFF | v3);
}

- (void)setHasOpenInterval:(BOOL)interval
{
  if (interval)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFD | v3);
}

@end