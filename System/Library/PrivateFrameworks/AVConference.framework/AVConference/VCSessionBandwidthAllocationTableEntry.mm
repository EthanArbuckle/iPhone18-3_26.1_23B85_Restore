@interface VCSessionBandwidthAllocationTableEntry
+ (int64_t)compareAudioEntry:(id)a3 audioEntry:(id)a4;
+ (int64_t)compareAudioEntry:(id)a3 videoEntry:(id)a4;
+ (int64_t)compareVideoEntry:(id)a3 videoEntry:(id)a4;
+ (unsigned)entryTypeForMediaType:(unsigned int)a3;
- (VCSessionBandwidthAllocationTableEntry)initWithClient:(id)a3 type:(unsigned __int8)a4 streamToken:(int64_t)a5 minNetworkBitrate:(unsigned int)a6 maxNetworkBitrate:(unsigned int)a7 mediaBitrate:(unsigned int)a8 qualityIndex:(unsigned int)a9 streamID:(unsigned int)a10 hasRepairStreamID:(BOOL)a11 repairStreamID:(unsigned int)a12 repairMaxNetworkBitrate:(unsigned int)a13 subscribedTo:(BOOL)a14 startOnDemand:(BOOL)a15 streamGroupID:(unsigned int)a16 encoderGroupID:(unsigned int)a17 v2StreamID:(unsigned int)a18;
- (VCSessionBandwidthAllocationTableEntry)initWithClient:(id)a3 type:(unsigned __int8)a4 streamToken:(int64_t)a5 networkBitrate:(unsigned int)a6 mediaBitrate:(unsigned int)a7 qualityIndex:(unsigned int)a8 streamID:(unsigned int)a9 streamGroupID:(unsigned int)a10 v2StreamID:(unsigned int)a11;
- (VCSessionBandwidthAllocationTableEntry)initWithClient:(id)a3 type:(unsigned __int8)a4 streamToken:(int64_t)a5 streamID:(unsigned int)a6 streamGroupID:(unsigned int)a7;
- (int64_t)compare:(id)a3;
- (void)dealloc;
@end

@implementation VCSessionBandwidthAllocationTableEntry

- (VCSessionBandwidthAllocationTableEntry)initWithClient:(id)a3 type:(unsigned __int8)a4 streamToken:(int64_t)a5 networkBitrate:(unsigned int)a6 mediaBitrate:(unsigned int)a7 qualityIndex:(unsigned int)a8 streamID:(unsigned int)a9 streamGroupID:(unsigned int)a10 v2StreamID:(unsigned int)a11
{
  LODWORD(v14) = a11;
  WORD2(v13) = 1;
  LODWORD(v13) = 0;
  LOBYTE(v12) = 0;
  return [VCSessionBandwidthAllocationTableEntry initWithClient:"initWithClient:type:streamToken:minNetworkBitrate:maxNetworkBitrate:mediaBitrate:qualityIndex:streamID:hasRepairStreamID:repairStreamID:repairMaxNetworkBitrate:subscribedTo:startOnDemand:streamGroupID:encoderGroupID:v2StreamID:" type:a3 streamToken:a4 minNetworkBitrate:a5 maxNetworkBitrate:*&a6 mediaBitrate:*&a6 qualityIndex:*&a7 streamID:__PAIR64__(a9 hasRepairStreamID:a8) repairStreamID:v12 repairMaxNetworkBitrate:v13 subscribedTo:a10 startOnDemand:v14 streamGroupID:? encoderGroupID:? v2StreamID:?];
}

- (VCSessionBandwidthAllocationTableEntry)initWithClient:(id)a3 type:(unsigned __int8)a4 streamToken:(int64_t)a5 minNetworkBitrate:(unsigned int)a6 maxNetworkBitrate:(unsigned int)a7 mediaBitrate:(unsigned int)a8 qualityIndex:(unsigned int)a9 streamID:(unsigned int)a10 hasRepairStreamID:(BOOL)a11 repairStreamID:(unsigned int)a12 repairMaxNetworkBitrate:(unsigned int)a13 subscribedTo:(BOOL)a14 startOnDemand:(BOOL)a15 streamGroupID:(unsigned int)a16 encoderGroupID:(unsigned int)a17 v2StreamID:(unsigned int)a18
{
  v28 = *MEMORY[0x1E69E9840];
  v27.receiver = self;
  v27.super_class = VCSessionBandwidthAllocationTableEntry;
  v24 = [(VCSessionBandwidthAllocationTableEntry *)&v27 init];
  v25 = v24;
  if (v24)
  {
    v24->_client = a3;
    v24->_minNetworkBitrate = a6;
    v24->_maxNetworkBitrate = a7;
    v24->_maxMediaBitrate = a8;
    v24->_qualityIndex = a9;
    v24->_type = a4;
    v24->_streamToken = [MEMORY[0x1E696AD98] numberWithInteger:a5];
    v25->_streamID = a10;
    v25->_v2StreamID = a18;
    v25->_actualNetworkBitrate = a7;
    v25->_hasRepairStreamID = a11;
    v25->_repairStreamID = a12;
    v25->_repairMaxNetworkBitrate = a13;
    v25->_subscribedTo = a14;
    v25->_startOnDemand = a15;
    v25->_streamGroupID = a16;
    v25->_encoderGroupID = a17;
  }

  return v25;
}

- (VCSessionBandwidthAllocationTableEntry)initWithClient:(id)a3 type:(unsigned __int8)a4 streamToken:(int64_t)a5 streamID:(unsigned int)a6 streamGroupID:(unsigned int)a7
{
  v16 = *MEMORY[0x1E69E9840];
  v15.receiver = self;
  v15.super_class = VCSessionBandwidthAllocationTableEntry;
  v12 = [(VCSessionBandwidthAllocationTableEntry *)&v15 init];
  v13 = v12;
  if (v12)
  {
    v12->_uplinkClient = a3;
    v12->_type = a4;
    v12->_streamToken = [objc_alloc(MEMORY[0x1E696AD98]) initWithInteger:a5];
    v13->_streamID = a6;
    v13->_streamGroupID = a7;
  }

  return v13;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = VCSessionBandwidthAllocationTableEntry;
  [(VCSessionBandwidthAllocationTableEntry *)&v3 dealloc];
}

+ (unsigned)entryTypeForMediaType:(unsigned int)a3
{
  if (a3 == 1835365473)
  {
    return 3;
  }

  if (a3 == 1936684398)
  {
    return 1;
  }

  if (a3 != 1986618469 && VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [(VCSessionBandwidthAllocationTableEntry *)v4 entryTypeForMediaType:a3, v5];
    }
  }

  return 2;
}

- (int64_t)compare:(id)a3
{
  if ([(VCSessionBandwidthAllocationTableEntry *)self type]== 1)
  {
    if ([a3 type] == 1)
    {
      result = [VCSessionBandwidthAllocationTableEntry compareAudioEntry:self audioEntry:a3];
      if (result)
      {
        return result;
      }
    }

    else if ([a3 type] == 2 || objc_msgSend(a3, "type") == 3)
    {
      result = [VCSessionBandwidthAllocationTableEntry compareAudioEntry:self videoEntry:a3];
      if (result)
      {
        return result;
      }
    }
  }

  else if ([(VCSessionBandwidthAllocationTableEntry *)self type]== 2 || [(VCSessionBandwidthAllocationTableEntry *)self type]== 3)
  {
    if ([a3 type] == 1)
    {
      result = [VCSessionBandwidthAllocationTableEntry compareAudioEntry:a3];
      if (result)
      {
        return result;
      }
    }

    else if ([a3 type] == 2 || objc_msgSend(a3, "type") == 3)
    {
      result = [VCSessionBandwidthAllocationTableEntry compareVideoEntry:self videoEntry:a3];
      if (result)
      {
        return result;
      }
    }
  }

  result = [-[VCSessionDownlinkBandwidthAllocatorClient uuid](-[VCSessionBandwidthAllocationTableEntry client](self "client")];
  if (!result)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [(VCSessionBandwidthAllocationTableEntry *)v6 compare:v7];
      }
    }

    return 0;
  }

  return result;
}

+ (int64_t)compareAudioEntry:(id)a3 audioEntry:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  if ([a3 isLowestQuality] && !objc_msgSend(a4, "isLowestQuality"))
  {
    v6 = -1;
  }

  else if (([a3 isLowestQuality] & 1) != 0 || (objc_msgSend(a4, "isLowestQuality") & 1) == 0)
  {
    v7 = [a3 qualityIndex];
    if (v7 == [a4 qualityIndex])
    {
      v6 = 0;
    }

    else
    {
      v8 = [a3 qualityIndex];
      if (v8 < [a4 qualityIndex])
      {
        v6 = -1;
      }

      else
      {
        v6 = 1;
      }
    }
  }

  else
  {
    v6 = 1;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v9 = VRTraceErrorLogLevelToCSTR();
    v10 = *MEMORY[0x1E6986650];
    v11 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 136316418;
        v14 = v9;
        v15 = 2080;
        v16 = "+[VCSessionBandwidthAllocationTableEntry compareAudioEntry:audioEntry:]";
        v17 = 1024;
        v18 = 155;
        v19 = 1024;
        v20 = v6;
        v21 = 2112;
        v22 = a3;
        v23 = 2112;
        v24 = a4;
        _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d result=%d (%@ vs. %@)", &v13, 0x36u);
      }
    }

    else if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v13 = 136316418;
      v14 = v9;
      v15 = 2080;
      v16 = "+[VCSessionBandwidthAllocationTableEntry compareAudioEntry:audioEntry:]";
      v17 = 1024;
      v18 = 155;
      v19 = 1024;
      v20 = v6;
      v21 = 2112;
      v22 = a3;
      v23 = 2112;
      v24 = a4;
      _os_log_debug_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEBUG, " [%s] %s:%d result=%d (%@ vs. %@)", &v13, 0x36u);
    }
  }

  return v6;
}

+ (int64_t)compareVideoEntry:(id)a3 videoEntry:(id)a4
{
  v35 = *MEMORY[0x1E69E9840];
  if ([objc_msgSend(a3 "client")] && !objc_msgSend(objc_msgSend(a4, "client"), "isVisible"))
  {
    v6 = -1;
    goto LABEL_19;
  }

  if ([objc_msgSend(a3 "client")] & 1) == 0 && (objc_msgSend(objc_msgSend(a4, "client"), "isVisible"))
  {
    v6 = 1;
    goto LABEL_19;
  }

  if (![objc_msgSend(a3 "client")] || !objc_msgSend(objc_msgSend(a4, "client"), "isVisible"))
  {
    v12 = [objc_msgSend(a3 "client")];
    if (v12 == [objc_msgSend(a4 "client")])
    {
      goto LABEL_13;
    }

    v10 = [objc_msgSend(a3 "client")];
    v11 = [objc_msgSend(a4 "client")];
    goto LABEL_16;
  }

  v7 = [objc_msgSend(a4 "client")];
  if (v7 == [objc_msgSend(a3 "client")])
  {
    v8 = [a3 qualityIndex];
    if (v8 == [a4 qualityIndex])
    {
      v9 = [objc_msgSend(a3 "client")];
      if (v9 != [objc_msgSend(a4 "client")])
      {
        v10 = [objc_msgSend(a3 "client")];
        v11 = [objc_msgSend(a4 "client")];
        goto LABEL_16;
      }

LABEL_13:
      v6 = 0;
      goto LABEL_19;
    }

    v10 = [a3 qualityIndex];
    v11 = [a4 qualityIndex];
LABEL_16:
    if (v10 < v11)
    {
      v6 = -1;
    }

    else
    {
      v6 = 1;
    }

    goto LABEL_19;
  }

  v17 = [objc_msgSend(a4 "client")];
  v18 = [objc_msgSend(a3 "client")];
  v19 = v17 >= v18;
  if (v17 < v18)
  {
    v6 = -1;
  }

  else
  {
    v6 = 1;
  }

  if (v19)
  {
    v20 = a4;
  }

  else
  {
    v20 = a3;
  }

  if (v19)
  {
    v21 = a3;
  }

  else
  {
    v21 = a4;
  }

  if ([objc_msgSend(v20 "client")] == 5 && !objc_msgSend(objc_msgSend(v21, "client"), "videoQuality") && objc_msgSend(v21, "qualityIndex") <= 0x3E)
  {
    v22 = [v21 qualityIndex];
    if (v22 < [v20 qualityIndex])
    {
      v6 = -v6;
    }
  }

LABEL_19:
  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v13 = VRTraceErrorLogLevelToCSTR();
    v14 = *MEMORY[0x1E6986650];
    v15 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v23 = 136316418;
        v24 = v13;
        v25 = 2080;
        v26 = "+[VCSessionBandwidthAllocationTableEntry compareVideoEntry:videoEntry:]";
        v27 = 1024;
        v28 = 195;
        v29 = 1024;
        v30 = v6;
        v31 = 2112;
        v32 = a3;
        v33 = 2112;
        v34 = a4;
        _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d result=%d (%@ vs. %@)", &v23, 0x36u);
      }
    }

    else if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v23 = 136316418;
      v24 = v13;
      v25 = 2080;
      v26 = "+[VCSessionBandwidthAllocationTableEntry compareVideoEntry:videoEntry:]";
      v27 = 1024;
      v28 = 195;
      v29 = 1024;
      v30 = v6;
      v31 = 2112;
      v32 = a3;
      v33 = 2112;
      v34 = a4;
      _os_log_debug_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEBUG, " [%s] %s:%d result=%d (%@ vs. %@)", &v23, 0x36u);
    }
  }

  return v6;
}

+ (int64_t)compareAudioEntry:(id)a3 videoEntry:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  if (![objc_msgSend(a4 "client")])
  {
    goto LABEL_13;
  }

  v6 = [a3 qualityIndex];
  if (v6 == [a4 qualityIndex])
  {
    v7 = 0;
  }

  else
  {
    v8 = [a3 qualityIndex];
    if (v8 < [a4 qualityIndex])
    {
      v7 = -1;
    }

    else
    {
      v7 = 1;
    }
  }

  if ([a3 qualityIndex] == 200 && !objc_msgSend(objc_msgSend(a4, "client"), "videoQuality"))
  {
    if ([a4 streamGroupID] == 1667329381)
    {
      if ([a4 maxNetworkBitrate] < 0x7D01)
      {
        v7 = 1;
      }

      else
      {
        v7 = -1;
      }

      goto LABEL_14;
    }

LABEL_13:
    v7 = -1;
  }

LABEL_14:
  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v9 = VRTraceErrorLogLevelToCSTR();
    v10 = *MEMORY[0x1E6986650];
    v11 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 136316418;
        v14 = v9;
        v15 = 2080;
        v16 = "+[VCSessionBandwidthAllocationTableEntry compareAudioEntry:videoEntry:]";
        v17 = 1024;
        v18 = 217;
        v19 = 1024;
        v20 = v7;
        v21 = 2112;
        v22 = a3;
        v23 = 2112;
        v24 = a4;
        _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d result=%d (%@ vs. %@)", &v13, 0x36u);
      }
    }

    else if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v13 = 136316418;
      v14 = v9;
      v15 = 2080;
      v16 = "+[VCSessionBandwidthAllocationTableEntry compareAudioEntry:videoEntry:]";
      v17 = 1024;
      v18 = 217;
      v19 = 1024;
      v20 = v7;
      v21 = 2112;
      v22 = a3;
      v23 = 2112;
      v24 = a4;
      _os_log_debug_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEBUG, " [%s] %s:%d result=%d (%@ vs. %@)", &v13, 0x36u);
    }
  }

  return v7;
}

+ (void)entryTypeForMediaType:(NSObject *)a3 .cold.1(uint64_t a1, int a2, NSObject *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = 136315906;
  v5 = a1;
  v6 = 2080;
  v7 = "+[VCSessionBandwidthAllocationTableEntry entryTypeForMediaType:]";
  v8 = 1024;
  v9 = 108;
  v10 = 2080;
  v11 = FourccToCStr(a2);
  _os_log_error_impl(&dword_1DB56E000, a3, OS_LOG_TYPE_ERROR, " [%s] %s:%d Unsupported media type:%s", &v4, 0x26u);
}

- (void)compare:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = 136315650;
  v3 = a1;
  v4 = 2080;
  v5 = "[VCSessionBandwidthAllocationTableEntry compare:]";
  v6 = 1024;
  v7 = 139;
  _os_log_error_impl(&dword_1DB56E000, a2, OS_LOG_TYPE_ERROR, " [%s] %s:%d compare method returning NSOrderedSame -- sort result will be indeterministic", &v2, 0x1Cu);
}

@end