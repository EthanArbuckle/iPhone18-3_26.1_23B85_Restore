@interface _ADPBProxyGetMetricsResponse
- (BOOL)isEqual:(id)a3;
- (BOOL)readFrom:(id)a3;
- (SiriCoreConnectionMetrics)_ad_metrics;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)_ad_setMetrics:(id)a3;
- (void)addTcpInfoMetrics:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasAttemptCount:(BOOL)a3;
- (void)setHasConnectedSubflowCount:(BOOL)a3;
- (void)setHasConnectionFallbackReason:(BOOL)a3;
- (void)setHasMetricsCount:(BOOL)a3;
- (void)setHasOpenInterval:(BOOL)a3;
- (void)setHasPingCount:(BOOL)a3;
- (void)setHasPingMean:(BOOL)a3;
- (void)setHasPrimarySubflowSwitchCount:(BOOL)a3;
- (void)setHasRttBest:(BOOL)a3;
- (void)setHasRttCurrent:(BOOL)a3;
- (void)setHasRttSmoothed:(BOOL)a3;
- (void)setHasRttVariance:(BOOL)a3;
- (void)setHasRxBytes:(BOOL)a3;
- (void)setHasRxDuplicateBytes:(BOOL)a3;
- (void)setHasRxOooBytes:(BOOL)a3;
- (void)setHasRxPackets:(BOOL)a3;
- (void)setHasSndBandwidth:(BOOL)a3;
- (void)setHasSubflowCount:(BOOL)a3;
- (void)setHasSynRetransmits:(BOOL)a3;
- (void)setHasTuscanyConnectionDelay:(BOOL)a3;
- (void)setHasTxBytes:(BOOL)a3;
- (void)setHasTxPackets:(BOOL)a3;
- (void)setHasTxRetransmitBytes:(BOOL)a3;
- (void)setHasTxUnacked:(BOOL)a3;
- (void)setHasUnacknowledgedPingCount:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation _ADPBProxyGetMetricsResponse

- (void)_ad_setMetrics:(id)a3
{
  v4 = a3;
  v5 = [v4 timeUntilOpen];
  v6 = v5;
  if (v5)
  {
    [v5 doubleValue];
    [(_ADPBProxyGetMetricsResponse *)self setOpenInterval:?];
  }

  v7 = [v4 timeUntilFirstByteRead];
  v8 = v7;
  if (v7)
  {
    [v7 doubleValue];
    [(_ADPBProxyGetMetricsResponse *)self setFirstByteReadInterval:?];
  }

  v9 = [v4 attemptCount];
  v10 = v9;
  if (v9)
  {
    -[_ADPBProxyGetMetricsResponse setAttemptCount:](self, "setAttemptCount:", [v9 intValue]);
  }

  v11 = [v4 metricsCount];
  v12 = v11;
  if (v11)
  {
    -[_ADPBProxyGetMetricsResponse setMetricsCount:](self, "setMetricsCount:", [v11 intValue]);
  }

  v13 = [v4 pingCount];
  v14 = v13;
  if (v13)
  {
    -[_ADPBProxyGetMetricsResponse setPingCount:](self, "setPingCount:", [v13 intValue]);
  }

  v15 = [v4 meanPing];
  v16 = v15;
  if (v15)
  {
    [v15 doubleValue];
    [(_ADPBProxyGetMetricsResponse *)self setPingMean:?];
  }

  v17 = [v4 unacknowledgedPingCount];
  v18 = v17;
  if (v17)
  {
    -[_ADPBProxyGetMetricsResponse setUnacknowledgedPingCount:](self, "setUnacknowledgedPingCount:", [v17 intValue]);
  }

  v19 = [v4 subflowCount];
  v20 = v19;
  if (v19)
  {
    -[_ADPBProxyGetMetricsResponse setSubflowCount:](self, "setSubflowCount:", [v19 intValue]);
  }

  v21 = [v4 connectedSubflowCount];
  v22 = v21;
  if (v21)
  {
    -[_ADPBProxyGetMetricsResponse setConnectedSubflowCount:](self, "setConnectedSubflowCount:", [v21 intValue]);
  }

  v23 = [v4 primarySubflowInterfaceName];
  if (v23)
  {
    [(_ADPBProxyGetMetricsResponse *)self setPrimarySubflowIface:v23];
  }

  v24 = [v4 primarySubflowInterfaceName];
  if (v24)
  {
    v25 = [v4 subflowSwitchCounts];
    v26 = [v25 objectForKeyedSubscript:v24];

    if (v26)
    {
      -[_ADPBProxyGetMetricsResponse setPrimarySubflowSwitchCount:](self, "setPrimarySubflowSwitchCount:", [v26 intValue]);
    }
  }

  v27 = [v4 tcpInfoMetricsByInterfaceName];
  v72[0] = _NSConcreteStackBlock;
  v72[1] = 3221225472;
  v72[2] = sub_1001922DC;
  v72[3] = &unk_100514550;
  v72[4] = self;
  [v27 enumerateKeysAndObjectsUsingBlock:v72];
  if ([v27 count] == 1)
  {
    v28 = [v27 allValues];
    v29 = [v28 firstObject];

    v30 = v29;
    v31 = self;
    v32 = v31;
    if (v30)
    {
      if (v31)
      {
LABEL_28:
        v33 = [v30 rttCurrent];
        v34 = v33;
        if (v33)
        {
          -[_ADPBProxyGetMetricsResponse setRttCurrent:](v32, "setRttCurrent:", [v33 unsignedIntValue]);
        }

        v35 = [v30 rttSmoothed];
        v36 = v35;
        if (v35)
        {
          -[_ADPBProxyGetMetricsResponse setRttSmoothed:](v32, "setRttSmoothed:", [v35 unsignedIntValue]);
        }

        v37 = [v30 rttVariance];
        v38 = v37;
        if (v37)
        {
          -[_ADPBProxyGetMetricsResponse setRttVariance:](v32, "setRttVariance:", [v37 unsignedIntValue]);
        }

        v39 = [v30 rttBest];
        v40 = v39;
        if (v39)
        {
          -[_ADPBProxyGetMetricsResponse setRttBest:](v32, "setRttBest:", [v39 unsignedIntValue]);
        }

        v41 = [v30 packetsSent];
        v42 = v41;
        if (v41)
        {
          -[_ADPBProxyGetMetricsResponse setTxPackets:](v32, "setTxPackets:", [v41 unsignedLongLongValue]);
        }

        v43 = [v30 bytesSent];
        v44 = v43;
        if (v43)
        {
          -[_ADPBProxyGetMetricsResponse setTxBytes:](v32, "setTxBytes:", [v43 unsignedLongLongValue]);
        }

        v45 = [v30 bytesRetransmitted];
        v46 = v45;
        if (v45)
        {
          -[_ADPBProxyGetMetricsResponse setTxRetransmitBytes:](v32, "setTxRetransmitBytes:", [v45 unsignedLongLongValue]);
        }

        v47 = [v30 bytesUnacked];
        v48 = v47;
        if (v47)
        {
          -[_ADPBProxyGetMetricsResponse setTxUnacked:](v32, "setTxUnacked:", [v47 unsignedLongLongValue]);
        }

        v49 = [v30 packetsReceived];
        v50 = v49;
        if (v49)
        {
          -[_ADPBProxyGetMetricsResponse setRxPackets:](v32, "setRxPackets:", [v49 unsignedLongLongValue]);
        }

        v51 = [v30 bytesReceived];
        v52 = v51;
        if (v51)
        {
          -[_ADPBProxyGetMetricsResponse setRxBytes:](v32, "setRxBytes:", [v51 unsignedLongLongValue]);
        }

        v53 = [v30 duplicateBytesReceived];
        v54 = v53;
        if (v53)
        {
          -[_ADPBProxyGetMetricsResponse setRxDuplicateBytes:](v32, "setRxDuplicateBytes:", [v53 unsignedLongLongValue]);
        }

        v55 = [v30 outOfOrderBytesReceived];
        v56 = v55;
        if (v55)
        {
          -[_ADPBProxyGetMetricsResponse setRxOooBytes:](v32, "setRxOooBytes:", [v55 unsignedLongLongValue]);
        }

        v57 = [v30 sendBandwidth];
        v58 = v57;
        if (v57)
        {
          -[_ADPBProxyGetMetricsResponse setSndBandwidth:](v32, "setSndBandwidth:", [v57 unsignedLongLongValue]);
        }

        v59 = [v30 synRetransmits];
        v60 = v59;
        if (v59)
        {
          -[_ADPBProxyGetMetricsResponse setSynRetransmits:](v32, "setSynRetransmits:", [v59 unsignedIntValue]);
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
  v61 = [v4 connectionMethod];
  if (v61)
  {
    [(_ADPBProxyGetMetricsResponse *)self setConnectionMethodName:v61];
  }

  v62 = [v4 connectionEdgeType];
  if (v62)
  {
    [(_ADPBProxyGetMetricsResponse *)self setConnectionEdgeType:v62];
  }

  v63 = [v4 connectionEdgeID];
  if (v63)
  {
    [(_ADPBProxyGetMetricsResponse *)self setConnectionEdgeIDName:v63];
  }

  v64 = [v4 connectionFallbackReason];
  v65 = v64;
  if (v64)
  {
    -[_ADPBProxyGetMetricsResponse setHasConnectionFallbackReason:](self, "setHasConnectionFallbackReason:", [v64 intValue] != 0);
  }

  v66 = [v4 connectionDelay];
  v67 = v66;
  if (v66)
  {
    [v66 doubleValue];
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
    v13 = [(_ADPBProxyGetMetricsResponse *)self primarySubflowIface];
    [v3 setPrimarySubflowInterfaceName:v13];
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
    v16 = [(_ADPBProxyGetMetricsResponse *)self connectionMethodName];
    [v3 setConnectionMethod:v16];
  }

  if ([(_ADPBProxyGetMetricsResponse *)self hasConnectionEdgeType])
  {
    v17 = [(_ADPBProxyGetMetricsResponse *)self connectionEdgeType];
    [v3 setConnectionEdgeType:v17];
  }

  if ([(_ADPBProxyGetMetricsResponse *)self hasConnectionEdgeIDName])
  {
    v18 = [(_ADPBProxyGetMetricsResponse *)self connectionEdgeIDName];
    [v3 setConnectionEdgeID:v18];
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

  v21 = [(_ADPBProxyGetMetricsResponse *)self tcpInfoMetricsCount];
  v57 = v3;
  if (v21)
  {
    v22 = v21;
    v23 = [[NSMutableDictionary alloc] initWithCapacity:v21];
    v24 = 0;
    v25 = &CRCopyCountryCode_ptr;
    v58 = v22;
    v59 = self;
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
      v77 = [v26 hasInterfaceName];
      if (v77)
      {
        v104 = [v26 interfaceName];
      }

      else
      {
        v104 = 0;
      }

      v75 = [v26 hasRttCurrent];
      if (v75)
      {
        v102 = [v25[394] numberWithUnsignedInt:{objc_msgSend(v26, "rttCurrent")}];
      }

      else
      {
        v102 = 0;
      }

      v73 = [v26 hasRttSmoothed];
      if (v73)
      {
        v100 = [v25[394] numberWithUnsignedInt:{objc_msgSend(v26, "rttSmoothed")}];
      }

      else
      {
        v100 = 0;
      }

      v71 = [v26 hasRttVariance];
      if (v71)
      {
        v98 = [v25[394] numberWithUnsignedInt:{objc_msgSend(v26, "rttVariance")}];
      }

      else
      {
        v98 = 0;
      }

      v67 = [v26 hasRttBest];
      if (v67)
      {
        v96 = [v25[394] numberWithUnsignedInt:{objc_msgSend(v26, "rttBest")}];
      }

      else
      {
        v96 = 0;
      }

      v66 = [v26 hasTxPackets];
      if (v66)
      {
        v94 = [v25[394] numberWithUnsignedLongLong:{objc_msgSend(v26, "txPackets")}];
      }

      else
      {
        v94 = 0;
      }

      v65 = [v26 hasTxBytes];
      if (v65)
      {
        v92 = [v25[394] numberWithUnsignedLongLong:{objc_msgSend(v26, "txBytes")}];
      }

      else
      {
        v92 = 0;
      }

      v64 = [v26 hasTxRetransmitBytes];
      if (v64)
      {
        v90 = [v25[394] numberWithUnsignedLongLong:{objc_msgSend(v26, "txRetransmitBytes")}];
      }

      else
      {
        v90 = 0;
      }

      v63 = [v26 hasTxUnacked];
      if (v63)
      {
        v88 = [v25[394] numberWithUnsignedLongLong:{objc_msgSend(v26, "txUnacked")}];
      }

      else
      {
        v88 = 0;
      }

      v62 = [v26 hasRxPackets];
      if (v62)
      {
        v85 = [v25[394] numberWithUnsignedLongLong:{objc_msgSend(v26, "rxPackets")}];
      }

      else
      {
        v85 = 0;
      }

      v61 = [v26 hasRxBytes];
      if (v61)
      {
        v83 = [v25[394] numberWithUnsignedLongLong:{objc_msgSend(v26, "rxBytes")}];
      }

      else
      {
        v83 = 0;
      }

      v60 = [v26 hasRxDuplicateBytes];
      if (v60)
      {
        v81 = [v25[394] numberWithUnsignedLongLong:{objc_msgSend(v26, "rxDuplicateBytes")}];
      }

      else
      {
        v81 = 0;
      }

      v27 = [v26 hasRxOooBytes];
      if (v27)
      {
        v28 = [v25[394] numberWithUnsignedLongLong:{objc_msgSend(v26, "rxOooBytes")}];
      }

      else
      {
        v28 = 0;
      }

      v29 = [v26 hasSndBandwidth];
      if (v29)
      {
        v30 = [v25[394] numberWithUnsignedLongLong:{objc_msgSend(v26, "sndBandwidth")}];
      }

      else
      {
        v30 = 0;
      }

      v31 = [v26 hasSynRetransmits];
      if (v31)
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
      v35 = [v69 initWithInterfaceName:v104 rttCurrent:v102 rttSmoothed:v100 rttVariance:v98 rttBest:v96 packetsSent:v94 bytesSent:v92 bytesRetransmitted:v90 bytesUnacked:v88 packetsReceived:v85 bytesReceived:v83 duplicateBytesReceived:v81 outOfOrderBytesReceived:v28 sendBufferBytes:0 sendBandwidth:v30 synRetransmits:v32 tfoSynDataAcked:v34];

      v23 = v33;
      v22 = v58;
      if (v31)
      {
        goto LABEL_87;
      }

LABEL_88:
      if (v29)
      {
      }

      self = v59;
      if (v27)
      {
      }

      if (v60)
      {
      }

      if (v61)
      {
      }

      if (v62)
      {
      }

      if (v63)
      {
      }

      if (v64)
      {
      }

      if (v65)
      {
      }

      if (v66)
      {
      }

      if (v67)
      {
      }

      if (v71)
      {
      }

      if (v73)
      {
      }

      if (v75)
      {
      }

      if (v77)
      {
      }

      v36 = [v35 interfaceName];
      [v23 setObject:v35 forKey:v36];

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

    v35 = [v69 initWithInterfaceName:v104 rttCurrent:v102 rttSmoothed:v100 rttVariance:v98 rttBest:v96 packetsSent:v94 bytesSent:v92 bytesRetransmitted:v90 bytesUnacked:v88 packetsReceived:v85 bytesReceived:v83 duplicateBytesReceived:v81 outOfOrderBytesReceived:v28 sendBufferBytes:0 sendBandwidth:v30 synRetransmits:v32 tfoSynDataAcked:0];
    if (!v31)
    {
      goto LABEL_88;
    }

LABEL_87:

    goto LABEL_88;
  }

  v40 = self;
  if (!v40)
  {
    v55 = +[NSAssertionHandler currentHandler];
    v56 = [NSString stringWithUTF8String:"SiriCoreConnectionTCPInfoMetrics *ADConnectionTCPInfoMetricsCreateWithLegacyProtocolBufferProxy(_ADPBProxyGetMetricsResponse *__strong)"];
    [v55 handleFailureInFunction:v56 file:@"ADConnectionTCPInfoMetricsUtilities.m" lineNumber:50 description:{@"Invalid parameter not satisfying: %@", @"legacyProtocolBufferProxy != nil"}];
  }

  if (![(_ADPBProxyGetMetricsResponse *)v40 hasRttCurrent]&& ![(_ADPBProxyGetMetricsResponse *)v40 hasRttSmoothed]&& ![(_ADPBProxyGetMetricsResponse *)v40 hasRttVariance]&& ![(_ADPBProxyGetMetricsResponse *)v40 hasRttBest]&& ![(_ADPBProxyGetMetricsResponse *)v40 hasTxPackets]&& ![(_ADPBProxyGetMetricsResponse *)v40 hasTxBytes]&& ![(_ADPBProxyGetMetricsResponse *)v40 hasTxRetransmitBytes]&& ![(_ADPBProxyGetMetricsResponse *)v40 hasTxUnacked]&& ![(_ADPBProxyGetMetricsResponse *)v40 hasRxPackets]&& ![(_ADPBProxyGetMetricsResponse *)v40 hasRxBytes]&& ![(_ADPBProxyGetMetricsResponse *)v40 hasRxDuplicateBytes]&& ![(_ADPBProxyGetMetricsResponse *)v40 hasRxOooBytes]&& ![(_ADPBProxyGetMetricsResponse *)v40 hasSndBandwidth]&& ![(_ADPBProxyGetMetricsResponse *)v40 hasSynRetransmits])
  {

    v39 = 0;
    goto LABEL_203;
  }

  v86 = [SiriCoreConnectionTCPInfoMetrics alloc];
  v41 = [(_ADPBProxyGetMetricsResponse *)v40 hasRttCurrent];
  if (v41)
  {
    v105 = [NSNumber numberWithUnsignedInt:[(_ADPBProxyGetMetricsResponse *)v40 rttCurrent]];
  }

  else
  {
    v105 = 0;
  }

  v42 = [(_ADPBProxyGetMetricsResponse *)v40 hasRttSmoothed];
  if (v42)
  {
    v43 = [NSNumber numberWithUnsignedInt:[(_ADPBProxyGetMetricsResponse *)v40 rttSmoothed]];
  }

  else
  {
    v43 = 0;
  }

  v44 = [(_ADPBProxyGetMetricsResponse *)v40 hasRttVariance];
  if (v44)
  {
    v45 = [NSNumber numberWithUnsignedInt:[(_ADPBProxyGetMetricsResponse *)v40 rttVariance]];
  }

  else
  {
    v45 = 0;
  }

  v84 = [(_ADPBProxyGetMetricsResponse *)v40 hasRttBest];
  if (v84)
  {
    v103 = [NSNumber numberWithUnsignedInt:[(_ADPBProxyGetMetricsResponse *)v40 rttBest]];
  }

  else
  {
    v103 = 0;
  }

  v82 = [(_ADPBProxyGetMetricsResponse *)v40 hasTxPackets];
  if (v82)
  {
    v101 = [NSNumber numberWithUnsignedLongLong:[(_ADPBProxyGetMetricsResponse *)v40 txPackets]];
  }

  else
  {
    v101 = 0;
  }

  v80 = [(_ADPBProxyGetMetricsResponse *)v40 hasTxBytes];
  if (v80)
  {
    v99 = [NSNumber numberWithUnsignedLongLong:[(_ADPBProxyGetMetricsResponse *)v40 txBytes]];
  }

  else
  {
    v99 = 0;
  }

  v78 = [(_ADPBProxyGetMetricsResponse *)v40 hasTxRetransmitBytes];
  if (v78)
  {
    v97 = [NSNumber numberWithUnsignedLongLong:[(_ADPBProxyGetMetricsResponse *)v40 txRetransmitBytes]];
  }

  else
  {
    v97 = 0;
  }

  v76 = [(_ADPBProxyGetMetricsResponse *)v40 hasTxUnacked];
  if (v76)
  {
    v95 = [NSNumber numberWithUnsignedLongLong:[(_ADPBProxyGetMetricsResponse *)v40 txUnacked]];
  }

  else
  {
    v95 = 0;
  }

  v74 = [(_ADPBProxyGetMetricsResponse *)v40 hasRxPackets];
  if (v74)
  {
    v93 = [NSNumber numberWithUnsignedLongLong:[(_ADPBProxyGetMetricsResponse *)v40 rxPackets]];
  }

  else
  {
    v93 = 0;
  }

  v72 = [(_ADPBProxyGetMetricsResponse *)v40 hasRxBytes];
  if (v72)
  {
    v91 = [NSNumber numberWithUnsignedLongLong:[(_ADPBProxyGetMetricsResponse *)v40 rxBytes]];
  }

  else
  {
    v91 = 0;
  }

  v70 = [(_ADPBProxyGetMetricsResponse *)v40 hasRxDuplicateBytes];
  if (v70)
  {
    v89 = [NSNumber numberWithUnsignedLongLong:[(_ADPBProxyGetMetricsResponse *)v40 rxDuplicateBytes]];
  }

  else
  {
    v89 = 0;
  }

  v46 = [(_ADPBProxyGetMetricsResponse *)v40 hasRxOooBytes];
  if (v46)
  {
    v47 = [NSNumber numberWithUnsignedLongLong:[(_ADPBProxyGetMetricsResponse *)v40 rxOooBytes]];
  }

  else
  {
    v47 = 0;
  }

  v48 = [(_ADPBProxyGetMetricsResponse *)v40 hasSndBandwidth];
  if (v48)
  {
    v49 = [NSNumber numberWithUnsignedLongLong:[(_ADPBProxyGetMetricsResponse *)v40 sndBandwidth]];
  }

  else
  {
    v49 = 0;
  }

  if (![(_ADPBProxyGetMetricsResponse *)v40 hasSynRetransmits])
  {
    v87 = [v86 initWithInterfaceName:@"default" rttCurrent:v105 rttSmoothed:v43 rttVariance:v45 rttBest:v103 packetsSent:v101 bytesSent:v99 bytesRetransmitted:v97 bytesUnacked:v95 packetsReceived:v93 bytesReceived:v91 duplicateBytesReceived:v89 outOfOrderBytesReceived:v47 sendBufferBytes:0 sendBandwidth:v49 synRetransmits:0 tfoSynDataAcked:0];
    if (!v48)
    {
      goto LABEL_180;
    }

    goto LABEL_179;
  }

  v68 = v42;
  v50 = v41;
  v51 = [NSNumber numberWithUnsignedInt:[(_ADPBProxyGetMetricsResponse *)v40 synRetransmits]];
  v87 = [v86 initWithInterfaceName:@"default" rttCurrent:v105 rttSmoothed:v43 rttVariance:v45 rttBest:v103 packetsSent:v101 bytesSent:v99 bytesRetransmitted:v97 bytesUnacked:v95 packetsReceived:v93 bytesReceived:v91 duplicateBytesReceived:v89 outOfOrderBytesReceived:v47 sendBufferBytes:0 sendBandwidth:v49 synRetransmits:v51 tfoSynDataAcked:0];

  v41 = v50;
  v42 = v68;
  if (v48)
  {
LABEL_179:
  }

LABEL_180:
  if (v46)
  {
  }

  if (v70)
  {
  }

  if (v72)
  {
  }

  if (v74)
  {
  }

  v3 = v57;
  if (v76)
  {
  }

  if (v78)
  {
  }

  if (v80)
  {
  }

  if (v82)
  {
  }

  if (v84)
  {

    if (!v44)
    {
LABEL_198:
      if (!v42)
      {
        goto LABEL_199;
      }

      goto LABEL_208;
    }
  }

  else if (!v44)
  {
    goto LABEL_198;
  }

  if (!v42)
  {
LABEL_199:
    if (!v41)
    {
      goto LABEL_201;
    }

    goto LABEL_200;
  }

LABEL_208:

  if (v41)
  {
LABEL_200:
  }

LABEL_201:

  v39 = v87;
  if (v87)
  {
    v52 = [v87 interfaceName];
    v106 = v52;
    v107 = v87;
    v53 = [NSDictionary dictionaryWithObjects:&v107 forKeys:&v106 count:1];

    [v57 setTCPInfoMetricsByInterfaceName:v53];
  }

LABEL_203:

  return v3;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  v6 = *(v4 + 53);
  if ((v6 & 2) != 0)
  {
    self->_openInterval = *(v4 + 2);
    *&self->_has |= 2u;
    v6 = *(v4 + 53);
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

  self->_firstByteReadInterval = *(v4 + 1);
  *&self->_has |= 1u;
  v6 = *(v4 + 53);
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
  self->_attemptCount = *(v4 + 28);
  *&self->_has |= 0x2000u;
  v6 = *(v4 + 53);
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
  self->_metricsCount = *(v4 + 38);
  *&self->_has |= 0x10000u;
  v6 = *(v4 + 53);
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
  self->_pingMean = *(v4 + 3);
  *&self->_has |= 4u;
  v6 = *(v4 + 53);
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
  self->_pingCount = *(v4 + 39);
  *&self->_has |= 0x20000u;
  v6 = *(v4 + 53);
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
  self->_unacknowledgedPingCount = *(v4 + 52);
  *&self->_has |= 0x2000000u;
  v6 = *(v4 + 53);
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
  self->_rttCurrent = *(v4 + 44);
  *&self->_has |= 0x100000u;
  v6 = *(v4 + 53);
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
  self->_rttSmoothed = *(v4 + 45);
  *&self->_has |= 0x200000u;
  v6 = *(v4 + 53);
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
  self->_rttVariance = *(v4 + 46);
  *&self->_has |= 0x400000u;
  v6 = *(v4 + 53);
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
  self->_rttBest = *(v4 + 43);
  *&self->_has |= 0x80000u;
  v6 = *(v4 + 53);
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
  self->_txPackets = *(v4 + 11);
  *&self->_has |= 0x400u;
  v6 = *(v4 + 53);
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
  self->_txBytes = *(v4 + 10);
  *&self->_has |= 0x200u;
  v6 = *(v4 + 53);
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
  self->_txRetransmitBytes = *(v4 + 12);
  *&self->_has |= 0x800u;
  v6 = *(v4 + 53);
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
  self->_txUnacked = *(v4 + 13);
  *&self->_has |= 0x1000u;
  v6 = *(v4 + 53);
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
  self->_rxPackets = *(v4 + 7);
  *&self->_has |= 0x40u;
  v6 = *(v4 + 53);
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
  self->_rxBytes = *(v4 + 4);
  *&self->_has |= 8u;
  v6 = *(v4 + 53);
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
  self->_rxDuplicateBytes = *(v4 + 5);
  *&self->_has |= 0x10u;
  v6 = *(v4 + 53);
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
  self->_rxOooBytes = *(v4 + 6);
  *&self->_has |= 0x20u;
  v6 = *(v4 + 53);
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
  self->_sndBandwidth = *(v4 + 8);
  *&self->_has |= 0x80u;
  v6 = *(v4 + 53);
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
  self->_synRetransmits = *(v4 + 48);
  *&self->_has |= 0x1000000u;
  v6 = *(v4 + 53);
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
  self->_subflowCount = *(v4 + 47);
  *&self->_has |= 0x800000u;
  if ((*(v4 + 53) & 0x4000) != 0)
  {
LABEL_24:
    self->_connectedSubflowCount = *(v4 + 29);
    *&self->_has |= 0x4000u;
  }

LABEL_25:
  if (*(v4 + 20))
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_143;
  }

  has = self->_has;
  v6 = *(v4 + 53);
  if ((*&has & 2) != 0)
  {
    if ((v6 & 2) == 0 || self->_openInterval != *(v4 + 2))
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
    if ((v6 & 1) == 0 || self->_firstByteReadInterval != *(v4 + 1))
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
    if ((v6 & 0x2000) == 0 || self->_attemptCount != *(v4 + 28))
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
    if ((v6 & 0x10000) == 0 || self->_metricsCount != *(v4 + 38))
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
    if ((v6 & 4) == 0 || self->_pingMean != *(v4 + 3))
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
    if ((v6 & 0x20000) == 0 || self->_pingCount != *(v4 + 39))
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
    if ((v6 & 0x2000000) == 0 || self->_unacknowledgedPingCount != *(v4 + 52))
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
    if ((v6 & 0x100000) == 0 || self->_rttCurrent != *(v4 + 44))
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
    if ((v6 & 0x200000) == 0 || self->_rttSmoothed != *(v4 + 45))
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
    if ((v6 & 0x400000) == 0 || self->_rttVariance != *(v4 + 46))
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
    if ((v6 & 0x80000) == 0 || self->_rttBest != *(v4 + 43))
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
    if ((v6 & 0x400) == 0 || self->_txPackets != *(v4 + 11))
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
    if ((v6 & 0x200) == 0 || self->_txBytes != *(v4 + 10))
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
    if ((v6 & 0x800) == 0 || self->_txRetransmitBytes != *(v4 + 12))
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
    if ((v6 & 0x1000) == 0 || self->_txUnacked != *(v4 + 13))
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
    if ((v6 & 0x40) == 0 || self->_rxPackets != *(v4 + 7))
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
    if ((v6 & 8) == 0 || self->_rxBytes != *(v4 + 4))
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
    if ((v6 & 0x10) == 0 || self->_rxDuplicateBytes != *(v4 + 5))
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
    if ((v6 & 0x20) == 0 || self->_rxOooBytes != *(v4 + 6))
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
    if ((v6 & 0x80) == 0 || self->_sndBandwidth != *(v4 + 8))
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
    if ((v6 & 0x1000000) == 0 || self->_synRetransmits != *(v4 + 48))
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
    if ((v6 & 0x800000) == 0 || self->_subflowCount != *(v4 + 47))
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
    if ((v6 & 0x4000) == 0 || self->_connectedSubflowCount != *(v4 + 29))
    {
      goto LABEL_143;
    }
  }

  else if ((v6 & 0x4000) != 0)
  {
    goto LABEL_143;
  }

  primarySubflowIface = self->_primarySubflowIface;
  if (primarySubflowIface | *(v4 + 20))
  {
    if (![(NSString *)primarySubflowIface isEqual:?])
    {
LABEL_143:
      v14 = 0;
      goto LABEL_144;
    }

    has = self->_has;
    v6 = *(v4 + 53);
  }

  if ((*&has & 0x40000) != 0)
  {
    if ((v6 & 0x40000) == 0 || self->_primarySubflowSwitchCount != *(v4 + 42))
    {
      goto LABEL_143;
    }
  }

  else if ((v6 & 0x40000) != 0)
  {
    goto LABEL_143;
  }

  connectionMethodName = self->_connectionMethodName;
  if (connectionMethodName | *(v4 + 18) && ![(NSString *)connectionMethodName isEqual:?])
  {
    goto LABEL_143;
  }

  connectionEdgeIDName = self->_connectionEdgeIDName;
  if (connectionEdgeIDName | *(v4 + 15))
  {
    if (![(NSString *)connectionEdgeIDName isEqual:?])
    {
      goto LABEL_143;
    }
  }

  connectionEdgeType = self->_connectionEdgeType;
  if (connectionEdgeType | *(v4 + 16))
  {
    if (![(NSString *)connectionEdgeType isEqual:?])
    {
      goto LABEL_143;
    }
  }

  v11 = self->_has;
  v12 = *(v4 + 53);
  if ((*&v11 & 0x8000) != 0)
  {
    if ((v12 & 0x8000) == 0 || self->_connectionFallbackReason != *(v4 + 34))
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
    if ((v12 & 0x100) == 0 || self->_tuscanyConnectionDelay != *(v4 + 9))
    {
      goto LABEL_143;
    }
  }

  else if ((v12 & 0x100) != 0)
  {
    goto LABEL_143;
  }

  tcpInfoMetrics = self->_tcpInfoMetrics;
  if (tcpInfoMetrics | *(v4 + 25))
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
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
  v8 = [(NSString *)self->_primarySubflowIface copyWithZone:a3];
  v9 = v6[20];
  v6[20] = v8;

  if ((*(&self->_has + 2) & 4) != 0)
  {
    *(v6 + 42) = self->_primarySubflowSwitchCount;
    *(v6 + 53) |= 0x40000u;
  }

  v10 = [(NSString *)self->_connectionMethodName copyWithZone:a3];
  v11 = v6[18];
  v6[18] = v10;

  v12 = [(NSString *)self->_connectionEdgeIDName copyWithZone:a3];
  v13 = v6[15];
  v6[15] = v12;

  v14 = [(NSString *)self->_connectionEdgeType copyWithZone:a3];
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

        v22 = [*(*(&v24 + 1) + 8 * v21) copyWithZone:{a3, v24}];
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

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((*&has & 2) != 0)
  {
    v4[2] = *&self->_openInterval;
    *(v4 + 53) |= 2u;
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

  v4[1] = *&self->_firstByteReadInterval;
  *(v4 + 53) |= 1u;
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
  *(v4 + 28) = self->_attemptCount;
  *(v4 + 53) |= 0x2000u;
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
  *(v4 + 38) = self->_metricsCount;
  *(v4 + 53) |= 0x10000u;
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
  v4[3] = *&self->_pingMean;
  *(v4 + 53) |= 4u;
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
  *(v4 + 39) = self->_pingCount;
  *(v4 + 53) |= 0x20000u;
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
  *(v4 + 52) = self->_unacknowledgedPingCount;
  *(v4 + 53) |= 0x2000000u;
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
  *(v4 + 44) = self->_rttCurrent;
  *(v4 + 53) |= 0x100000u;
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
  *(v4 + 45) = self->_rttSmoothed;
  *(v4 + 53) |= 0x200000u;
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
  *(v4 + 46) = self->_rttVariance;
  *(v4 + 53) |= 0x400000u;
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
  *(v4 + 43) = self->_rttBest;
  *(v4 + 53) |= 0x80000u;
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
  v4[11] = self->_txPackets;
  *(v4 + 53) |= 0x400u;
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
  v4[10] = self->_txBytes;
  *(v4 + 53) |= 0x200u;
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
  v4[12] = self->_txRetransmitBytes;
  *(v4 + 53) |= 0x800u;
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
  v4[13] = self->_txUnacked;
  *(v4 + 53) |= 0x1000u;
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
  v4[7] = self->_rxPackets;
  *(v4 + 53) |= 0x40u;
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
  v4[4] = self->_rxBytes;
  *(v4 + 53) |= 8u;
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
  v4[5] = self->_rxDuplicateBytes;
  *(v4 + 53) |= 0x10u;
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
  v4[6] = self->_rxOooBytes;
  *(v4 + 53) |= 0x20u;
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
  v4[8] = self->_sndBandwidth;
  *(v4 + 53) |= 0x80u;
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
  *(v4 + 48) = self->_synRetransmits;
  *(v4 + 53) |= 0x1000000u;
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
  *(v4 + 47) = self->_subflowCount;
  *(v4 + 53) |= 0x800000u;
  if ((*&self->_has & 0x4000) != 0)
  {
LABEL_24:
    *(v4 + 29) = self->_connectedSubflowCount;
    *(v4 + 53) |= 0x4000u;
  }

LABEL_25:
  v11 = v4;
  if (self->_primarySubflowIface)
  {
    [v4 setPrimarySubflowIface:?];
    v4 = v11;
  }

  if ((*(&self->_has + 2) & 4) != 0)
  {
    *(v4 + 42) = self->_primarySubflowSwitchCount;
    *(v4 + 53) |= 0x40000u;
  }

  if (self->_connectionMethodName)
  {
    [v11 setConnectionMethodName:?];
    v4 = v11;
  }

  if (self->_connectionEdgeIDName)
  {
    [v11 setConnectionEdgeIDName:?];
    v4 = v11;
  }

  if (self->_connectionEdgeType)
  {
    [v11 setConnectionEdgeType:?];
    v4 = v11;
  }

  v6 = self->_has;
  if ((*&v6 & 0x8000) != 0)
  {
    *(v4 + 34) = self->_connectionFallbackReason;
    *(v4 + 53) |= 0x8000u;
    v6 = self->_has;
  }

  if ((*&v6 & 0x100) != 0)
  {
    v4[9] = *&self->_tuscanyConnectionDelay;
    *(v4 + 53) |= 0x100u;
  }

  if ([(_ADPBProxyGetMetricsResponse *)self tcpInfoMetricsCount])
  {
    [v11 clearTcpInfoMetrics];
    v7 = [(_ADPBProxyGetMetricsResponse *)self tcpInfoMetricsCount];
    if (v7)
    {
      v8 = v7;
      for (i = 0; i != v8; ++i)
      {
        v10 = [(_ADPBProxyGetMetricsResponse *)self tcpInfoMetricsAtIndex:i];
        [v11 addTcpInfoMetrics:v10];
      }
    }
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
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

- (BOOL)readFrom:(id)a3
{
  v5 = a3;
  while (2)
  {
    v6 = [v5 position];
    if (v6 >= [a3 length] || (objc_msgSend(a3, "hasError") & 1) != 0)
    {
      return [a3 hasError] ^ 1;
    }

    v7 = 0;
    v8 = 0;
    v9 = 0;
    while (1)
    {
      LOBYTE(v170[0]) = 0;
      v10 = [a3 position] + 1;
      if (v10 >= [a3 position] && (v11 = objc_msgSend(a3, "position") + 1, v11 <= objc_msgSend(a3, "length")))
      {
        v12 = [a3 data];
        [v12 getBytes:v170 range:{objc_msgSend(a3, "position"), 1}];

        [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
      }

      else
      {
        [a3 _setError];
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

    v14 = [a3 hasError] ? 0 : v9;
LABEL_16:
    if (([a3 hasError] & 1) != 0 || (v14 & 7) == 4)
    {
      return [a3 hasError] ^ 1;
    }

    switch((v14 >> 3))
    {
      case 1u:
        *&self->_has |= 2u;
        v170[0] = 0;
        v15 = [a3 position] + 8;
        if (v15 >= [a3 position] && (v16 = objc_msgSend(a3, "position") + 8, v16 <= objc_msgSend(a3, "length")))
        {
          v166 = [a3 data];
          [v166 getBytes:v170 range:{objc_msgSend(a3, "position"), 8}];

          [a3 setPosition:{objc_msgSend(a3, "position") + 8}];
        }

        else
        {
          [a3 _setError];
        }

        v164 = v170[0];
        v165 = 16;
        goto LABEL_337;
      case 2u:
        *&self->_has |= 1u;
        v170[0] = 0;
        v95 = [a3 position] + 8;
        if (v95 >= [a3 position] && (v96 = objc_msgSend(a3, "position") + 8, v96 <= objc_msgSend(a3, "length")))
        {
          v167 = [a3 data];
          [v167 getBytes:v170 range:{objc_msgSend(a3, "position"), 8}];

          [a3 setPosition:{objc_msgSend(a3, "position") + 8}];
        }

        else
        {
          [a3 _setError];
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
          v72 = [a3 position] + 1;
          if (v72 >= [a3 position] && (v73 = objc_msgSend(a3, "position") + 1, v73 <= objc_msgSend(a3, "length")))
          {
            v74 = [a3 data];
            [v74 getBytes:v170 range:{objc_msgSend(a3, "position"), 1}];

            [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
          }

          else
          {
            [a3 _setError];
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

        if ([a3 hasError])
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
          v125 = [a3 position] + 1;
          if (v125 >= [a3 position] && (v126 = objc_msgSend(a3, "position") + 1, v126 <= objc_msgSend(a3, "length")))
          {
            v127 = [a3 data];
            [v127 getBytes:v170 range:{objc_msgSend(a3, "position"), 1}];

            [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
          }

          else
          {
            [a3 _setError];
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

        if ([a3 hasError])
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
        v128 = [a3 position] + 8;
        if (v128 >= [a3 position] && (v129 = objc_msgSend(a3, "position") + 8, v129 <= objc_msgSend(a3, "length")))
        {
          v168 = [a3 data];
          [v168 getBytes:v170 range:{objc_msgSend(a3, "position"), 8}];

          [a3 setPosition:{objc_msgSend(a3, "position") + 8}];
        }

        else
        {
          [a3 _setError];
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
          v80 = [a3 position] + 1;
          if (v80 >= [a3 position] && (v81 = objc_msgSend(a3, "position") + 1, v81 <= objc_msgSend(a3, "length")))
          {
            v82 = [a3 data];
            [v82 getBytes:v170 range:{objc_msgSend(a3, "position"), 1}];

            [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
          }

          else
          {
            [a3 _setError];
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

        if ([a3 hasError])
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
          v100 = [a3 position] + 1;
          if (v100 >= [a3 position] && (v101 = objc_msgSend(a3, "position") + 1, v101 <= objc_msgSend(a3, "length")))
          {
            v102 = [a3 data];
            [v102 getBytes:v170 range:{objc_msgSend(a3, "position"), 1}];

            [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
          }

          else
          {
            [a3 _setError];
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

        if ([a3 hasError])
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
          v106 = [a3 position] + 1;
          if (v106 >= [a3 position] && (v107 = objc_msgSend(a3, "position") + 1, v107 <= objc_msgSend(a3, "length")))
          {
            v108 = [a3 data];
            [v108 getBytes:v170 range:{objc_msgSend(a3, "position"), 1}];

            [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
          }

          else
          {
            [a3 _setError];
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

        if ([a3 hasError])
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
          v139 = [a3 position] + 1;
          if (v139 >= [a3 position] && (v140 = objc_msgSend(a3, "position") + 1, v140 <= objc_msgSend(a3, "length")))
          {
            v141 = [a3 data];
            [v141 getBytes:v170 range:{objc_msgSend(a3, "position"), 1}];

            [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
          }

          else
          {
            [a3 _setError];
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

        if ([a3 hasError])
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
          v133 = [a3 position] + 1;
          if (v133 >= [a3 position] && (v134 = objc_msgSend(a3, "position") + 1, v134 <= objc_msgSend(a3, "length")))
          {
            v135 = [a3 data];
            [v135 getBytes:v170 range:{objc_msgSend(a3, "position"), 1}];

            [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
          }

          else
          {
            [a3 _setError];
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

        if ([a3 hasError])
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
          v42 = [a3 position] + 1;
          if (v42 >= [a3 position] && (v43 = objc_msgSend(a3, "position") + 1, v43 <= objc_msgSend(a3, "length")))
          {
            v44 = [a3 data];
            [v44 getBytes:v170 range:{objc_msgSend(a3, "position"), 1}];

            [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
          }

          else
          {
            [a3 _setError];
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

        if ([a3 hasError])
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
          v86 = [a3 position] + 1;
          if (v86 >= [a3 position] && (v87 = objc_msgSend(a3, "position") + 1, v87 <= objc_msgSend(a3, "length")))
          {
            v88 = [a3 data];
            [v88 getBytes:v170 range:{objc_msgSend(a3, "position"), 1}];

            [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
          }

          else
          {
            [a3 _setError];
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

        if ([a3 hasError])
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
          v60 = [a3 position] + 1;
          if (v60 >= [a3 position] && (v61 = objc_msgSend(a3, "position") + 1, v61 <= objc_msgSend(a3, "length")))
          {
            v62 = [a3 data];
            [v62 getBytes:v170 range:{objc_msgSend(a3, "position"), 1}];

            [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
          }

          else
          {
            [a3 _setError];
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

        if ([a3 hasError])
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
          v34 = [a3 position] + 1;
          if (v34 >= [a3 position] && (v35 = objc_msgSend(a3, "position") + 1, v35 <= objc_msgSend(a3, "length")))
          {
            v36 = [a3 data];
            [v36 getBytes:v170 range:{objc_msgSend(a3, "position"), 1}];

            [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
          }

          else
          {
            [a3 _setError];
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

        if ([a3 hasError])
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
          v112 = [a3 position] + 1;
          if (v112 >= [a3 position] && (v113 = objc_msgSend(a3, "position") + 1, v113 <= objc_msgSend(a3, "length")))
          {
            v114 = [a3 data];
            [v114 getBytes:v170 range:{objc_msgSend(a3, "position"), 1}];

            [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
          }

          else
          {
            [a3 _setError];
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

        if ([a3 hasError])
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
          v118 = [a3 position] + 1;
          if (v118 >= [a3 position] && (v119 = objc_msgSend(a3, "position") + 1, v119 <= objc_msgSend(a3, "length")))
          {
            v120 = [a3 data];
            [v120 getBytes:v170 range:{objc_msgSend(a3, "position"), 1}];

            [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
          }

          else
          {
            [a3 _setError];
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

        if ([a3 hasError])
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
          v151 = [a3 position] + 1;
          if (v151 >= [a3 position] && (v152 = objc_msgSend(a3, "position") + 1, v152 <= objc_msgSend(a3, "length")))
          {
            v153 = [a3 data];
            [v153 getBytes:v170 range:{objc_msgSend(a3, "position"), 1}];

            [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
          }

          else
          {
            [a3 _setError];
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

        if ([a3 hasError])
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
          v145 = [a3 position] + 1;
          if (v145 >= [a3 position] && (v146 = objc_msgSend(a3, "position") + 1, v146 <= objc_msgSend(a3, "length")))
          {
            v147 = [a3 data];
            [v147 getBytes:v170 range:{objc_msgSend(a3, "position"), 1}];

            [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
          }

          else
          {
            [a3 _setError];
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

        if ([a3 hasError])
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
          v20 = [a3 position] + 1;
          if (v20 >= [a3 position] && (v21 = objc_msgSend(a3, "position") + 1, v21 <= objc_msgSend(a3, "length")))
          {
            v22 = [a3 data];
            [v22 getBytes:v170 range:{objc_msgSend(a3, "position"), 1}];

            [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
          }

          else
          {
            [a3 _setError];
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

        if ([a3 hasError])
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
          v66 = [a3 position] + 1;
          if (v66 >= [a3 position] && (v67 = objc_msgSend(a3, "position") + 1, v67 <= objc_msgSend(a3, "length")))
          {
            v68 = [a3 data];
            [v68 getBytes:v170 range:{objc_msgSend(a3, "position"), 1}];

            [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
          }

          else
          {
            [a3 _setError];
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

        if ([a3 hasError])
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
          v157 = [a3 position] + 1;
          if (v157 >= [a3 position] && (v158 = objc_msgSend(a3, "position") + 1, v158 <= objc_msgSend(a3, "length")))
          {
            v159 = [a3 data];
            [v159 getBytes:v170 range:{objc_msgSend(a3, "position"), 1}];

            [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
          }

          else
          {
            [a3 _setError];
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

        if ([a3 hasError])
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
          v27 = [a3 position] + 1;
          if (v27 >= [a3 position] && (v28 = objc_msgSend(a3, "position") + 1, v28 <= objc_msgSend(a3, "length")))
          {
            v29 = [a3 data];
            [v29 getBytes:v170 range:{objc_msgSend(a3, "position"), 1}];

            [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
          }

          else
          {
            [a3 _setError];
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

        if ([a3 hasError])
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
          v54 = [a3 position] + 1;
          if (v54 >= [a3 position] && (v55 = objc_msgSend(a3, "position") + 1, v55 <= objc_msgSend(a3, "length")))
          {
            v56 = [a3 data];
            [v56 getBytes:v170 range:{objc_msgSend(a3, "position"), 1}];

            [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
          }

          else
          {
            [a3 _setError];
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

        if ([a3 hasError])
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
          v92 = [a3 position] + 1;
          if (v92 >= [a3 position] && (v93 = objc_msgSend(a3, "position") + 1, v93 <= objc_msgSend(a3, "length")))
          {
            v94 = [a3 data];
            [v94 getBytes:v170 range:{objc_msgSend(a3, "position"), 1}];

            [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
          }

          else
          {
            [a3 _setError];
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

        if ([a3 hasError])
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
          v48 = [a3 position] + 1;
          if (v48 >= [a3 position] && (v49 = objc_msgSend(a3, "position") + 1, v49 <= objc_msgSend(a3, "length")))
          {
            v50 = [a3 data];
            [v50 getBytes:v170 range:{objc_msgSend(a3, "position"), 1}];

            [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
          }

          else
          {
            [a3 _setError];
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

        if ([a3 hasError])
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
        v75 = [a3 position] + 8;
        if (v75 >= [a3 position] && (v76 = objc_msgSend(a3, "position") + 8, v76 <= objc_msgSend(a3, "length")))
        {
          v163 = [a3 data];
          [v163 getBytes:v170 range:{objc_msgSend(a3, "position"), 8}];

          [a3 setPosition:{objc_msgSend(a3, "position") + 8}];
        }

        else
        {
          [a3 _setError];
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
        if (PBReaderPlaceMark() && sub_1000912DC(v121, a3))
        {
          PBReaderRecallMark();

LABEL_338:
          v5 = a3;
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

          v20 = [*(*(&v45 + 1) + 8 * i) dictionaryRepresentation];
          [v14 addObject:v20];
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
  v4 = [(_ADPBProxyGetMetricsResponse *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (void)addTcpInfoMetrics:(id)a3
{
  v4 = a3;
  tcpInfoMetrics = self->_tcpInfoMetrics;
  v8 = v4;
  if (!tcpInfoMetrics)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_tcpInfoMetrics;
    self->_tcpInfoMetrics = v6;

    v4 = v8;
    tcpInfoMetrics = self->_tcpInfoMetrics;
  }

  [(NSMutableArray *)tcpInfoMetrics addObject:v4];
}

- (void)setHasTuscanyConnectionDelay:(BOOL)a3
{
  if (a3)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFEFF | v3);
}

- (void)setHasConnectionFallbackReason:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x8000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFF7FFF | v3);
}

- (void)setHasPrimarySubflowSwitchCount:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x40000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFBFFFF | v3);
}

- (void)setHasConnectedSubflowCount:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x4000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFBFFF | v3);
}

- (void)setHasSubflowCount:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x800000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFF7FFFFF | v3);
}

- (void)setHasSynRetransmits:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x1000000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFEFFFFFF | v3);
}

- (void)setHasSndBandwidth:(BOOL)a3
{
  if (a3)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFF7F | v3);
}

- (void)setHasRxOooBytes:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFDF | v3);
}

- (void)setHasRxDuplicateBytes:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFEF | v3);
}

- (void)setHasRxBytes:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFF7 | v3);
}

- (void)setHasRxPackets:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFBF | v3);
}

- (void)setHasTxUnacked:(BOOL)a3
{
  if (a3)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFEFFF | v3);
}

- (void)setHasTxRetransmitBytes:(BOOL)a3
{
  if (a3)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFF7FF | v3);
}

- (void)setHasTxBytes:(BOOL)a3
{
  if (a3)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFDFF | v3);
}

- (void)setHasTxPackets:(BOOL)a3
{
  if (a3)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFBFF | v3);
}

- (void)setHasRttBest:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x80000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFF7FFFF | v3);
}

- (void)setHasRttVariance:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x400000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFBFFFFF | v3);
}

- (void)setHasRttSmoothed:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x200000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFDFFFFF | v3);
}

- (void)setHasRttCurrent:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x100000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFEFFFFF | v3);
}

- (void)setHasUnacknowledgedPingCount:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x2000000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFDFFFFFF | v3);
}

- (void)setHasPingCount:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x20000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFDFFFF | v3);
}

- (void)setHasPingMean:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFB | v3);
}

- (void)setHasMetricsCount:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFEFFFF | v3);
}

- (void)setHasAttemptCount:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFDFFF | v3);
}

- (void)setHasOpenInterval:(BOOL)a3
{
  if (a3)
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