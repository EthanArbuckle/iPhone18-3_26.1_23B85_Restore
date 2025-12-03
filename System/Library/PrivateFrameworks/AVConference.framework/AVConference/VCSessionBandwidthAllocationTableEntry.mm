@interface VCSessionBandwidthAllocationTableEntry
+ (int64_t)compareAudioEntry:(id)entry audioEntry:(id)audioEntry;
+ (int64_t)compareAudioEntry:(id)entry videoEntry:(id)videoEntry;
+ (int64_t)compareVideoEntry:(id)entry videoEntry:(id)videoEntry;
+ (unsigned)entryTypeForMediaType:(unsigned int)type;
- (VCSessionBandwidthAllocationTableEntry)initWithClient:(id)client type:(unsigned __int8)type streamToken:(int64_t)token minNetworkBitrate:(unsigned int)bitrate maxNetworkBitrate:(unsigned int)networkBitrate mediaBitrate:(unsigned int)mediaBitrate qualityIndex:(unsigned int)index streamID:(unsigned int)self0 hasRepairStreamID:(BOOL)self1 repairStreamID:(unsigned int)self2 repairMaxNetworkBitrate:(unsigned int)self3 subscribedTo:(BOOL)self4 startOnDemand:(BOOL)self5 streamGroupID:(unsigned int)self6 encoderGroupID:(unsigned int)self7 v2StreamID:(unsigned int)self8;
- (VCSessionBandwidthAllocationTableEntry)initWithClient:(id)client type:(unsigned __int8)type streamToken:(int64_t)token networkBitrate:(unsigned int)bitrate mediaBitrate:(unsigned int)mediaBitrate qualityIndex:(unsigned int)index streamID:(unsigned int)d streamGroupID:(unsigned int)self0 v2StreamID:(unsigned int)self1;
- (VCSessionBandwidthAllocationTableEntry)initWithClient:(id)client type:(unsigned __int8)type streamToken:(int64_t)token streamID:(unsigned int)d streamGroupID:(unsigned int)iD;
- (int64_t)compare:(id)compare;
- (void)dealloc;
@end

@implementation VCSessionBandwidthAllocationTableEntry

- (VCSessionBandwidthAllocationTableEntry)initWithClient:(id)client type:(unsigned __int8)type streamToken:(int64_t)token networkBitrate:(unsigned int)bitrate mediaBitrate:(unsigned int)mediaBitrate qualityIndex:(unsigned int)index streamID:(unsigned int)d streamGroupID:(unsigned int)self0 v2StreamID:(unsigned int)self1
{
  LODWORD(v14) = streamID;
  WORD2(v13) = 1;
  LODWORD(v13) = 0;
  LOBYTE(v12) = 0;
  return [VCSessionBandwidthAllocationTableEntry initWithClient:"initWithClient:type:streamToken:minNetworkBitrate:maxNetworkBitrate:mediaBitrate:qualityIndex:streamID:hasRepairStreamID:repairStreamID:repairMaxNetworkBitrate:subscribedTo:startOnDemand:streamGroupID:encoderGroupID:v2StreamID:" type:client streamToken:type minNetworkBitrate:token maxNetworkBitrate:*&bitrate mediaBitrate:*&bitrate qualityIndex:*&mediaBitrate streamID:__PAIR64__(d hasRepairStreamID:index) repairStreamID:v12 repairMaxNetworkBitrate:v13 subscribedTo:iD startOnDemand:v14 streamGroupID:? encoderGroupID:? v2StreamID:?];
}

- (VCSessionBandwidthAllocationTableEntry)initWithClient:(id)client type:(unsigned __int8)type streamToken:(int64_t)token minNetworkBitrate:(unsigned int)bitrate maxNetworkBitrate:(unsigned int)networkBitrate mediaBitrate:(unsigned int)mediaBitrate qualityIndex:(unsigned int)index streamID:(unsigned int)self0 hasRepairStreamID:(BOOL)self1 repairStreamID:(unsigned int)self2 repairMaxNetworkBitrate:(unsigned int)self3 subscribedTo:(BOOL)self4 startOnDemand:(BOOL)self5 streamGroupID:(unsigned int)self6 encoderGroupID:(unsigned int)self7 v2StreamID:(unsigned int)self8
{
  v28 = *MEMORY[0x1E69E9840];
  v27.receiver = self;
  v27.super_class = VCSessionBandwidthAllocationTableEntry;
  v24 = [(VCSessionBandwidthAllocationTableEntry *)&v27 init];
  v25 = v24;
  if (v24)
  {
    v24->_client = client;
    v24->_minNetworkBitrate = bitrate;
    v24->_maxNetworkBitrate = networkBitrate;
    v24->_maxMediaBitrate = mediaBitrate;
    v24->_qualityIndex = index;
    v24->_type = type;
    v24->_streamToken = [MEMORY[0x1E696AD98] numberWithInteger:token];
    v25->_streamID = d;
    v25->_v2StreamID = v2StreamID;
    v25->_actualNetworkBitrate = networkBitrate;
    v25->_hasRepairStreamID = iD;
    v25->_repairStreamID = streamID;
    v25->_repairMaxNetworkBitrate = maxNetworkBitrate;
    v25->_subscribedTo = to;
    v25->_startOnDemand = demand;
    v25->_streamGroupID = groupID;
    v25->_encoderGroupID = encoderGroupID;
  }

  return v25;
}

- (VCSessionBandwidthAllocationTableEntry)initWithClient:(id)client type:(unsigned __int8)type streamToken:(int64_t)token streamID:(unsigned int)d streamGroupID:(unsigned int)iD
{
  v16 = *MEMORY[0x1E69E9840];
  v15.receiver = self;
  v15.super_class = VCSessionBandwidthAllocationTableEntry;
  v12 = [(VCSessionBandwidthAllocationTableEntry *)&v15 init];
  v13 = v12;
  if (v12)
  {
    v12->_uplinkClient = client;
    v12->_type = type;
    v12->_streamToken = [objc_alloc(MEMORY[0x1E696AD98]) initWithInteger:token];
    v13->_streamID = d;
    v13->_streamGroupID = iD;
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

+ (unsigned)entryTypeForMediaType:(unsigned int)type
{
  if (type == 1835365473)
  {
    return 3;
  }

  if (type == 1936684398)
  {
    return 1;
  }

  if (type != 1986618469 && VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [(VCSessionBandwidthAllocationTableEntry *)v4 entryTypeForMediaType:type, v5];
    }
  }

  return 2;
}

- (int64_t)compare:(id)compare
{
  if ([(VCSessionBandwidthAllocationTableEntry *)self type]== 1)
  {
    if ([compare type] == 1)
    {
      result = [VCSessionBandwidthAllocationTableEntry compareAudioEntry:self audioEntry:compare];
      if (result)
      {
        return result;
      }
    }

    else if ([compare type] == 2 || objc_msgSend(compare, "type") == 3)
    {
      result = [VCSessionBandwidthAllocationTableEntry compareAudioEntry:self videoEntry:compare];
      if (result)
      {
        return result;
      }
    }
  }

  else if ([(VCSessionBandwidthAllocationTableEntry *)self type]== 2 || [(VCSessionBandwidthAllocationTableEntry *)self type]== 3)
  {
    if ([compare type] == 1)
    {
      result = [VCSessionBandwidthAllocationTableEntry compareAudioEntry:compare];
      if (result)
      {
        return result;
      }
    }

    else if ([compare type] == 2 || objc_msgSend(compare, "type") == 3)
    {
      result = [VCSessionBandwidthAllocationTableEntry compareVideoEntry:self videoEntry:compare];
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

+ (int64_t)compareAudioEntry:(id)entry audioEntry:(id)audioEntry
{
  v25 = *MEMORY[0x1E69E9840];
  if ([entry isLowestQuality] && !objc_msgSend(audioEntry, "isLowestQuality"))
  {
    v6 = -1;
  }

  else if (([entry isLowestQuality] & 1) != 0 || (objc_msgSend(audioEntry, "isLowestQuality") & 1) == 0)
  {
    qualityIndex = [entry qualityIndex];
    if (qualityIndex == [audioEntry qualityIndex])
    {
      v6 = 0;
    }

    else
    {
      qualityIndex2 = [entry qualityIndex];
      if (qualityIndex2 < [audioEntry qualityIndex])
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
        entryCopy2 = entry;
        v23 = 2112;
        audioEntryCopy2 = audioEntry;
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
      entryCopy2 = entry;
      v23 = 2112;
      audioEntryCopy2 = audioEntry;
      _os_log_debug_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEBUG, " [%s] %s:%d result=%d (%@ vs. %@)", &v13, 0x36u);
    }
  }

  return v6;
}

+ (int64_t)compareVideoEntry:(id)entry videoEntry:(id)videoEntry
{
  v35 = *MEMORY[0x1E69E9840];
  if ([objc_msgSend(entry "client")] && !objc_msgSend(objc_msgSend(videoEntry, "client"), "isVisible"))
  {
    v6 = -1;
    goto LABEL_19;
  }

  if ([objc_msgSend(entry "client")] & 1) == 0 && (objc_msgSend(objc_msgSend(videoEntry, "client"), "isVisible"))
  {
    v6 = 1;
    goto LABEL_19;
  }

  if (![objc_msgSend(entry "client")] || !objc_msgSend(objc_msgSend(videoEntry, "client"), "isVisible"))
  {
    v12 = [objc_msgSend(entry "client")];
    if (v12 == [objc_msgSend(videoEntry "client")])
    {
      goto LABEL_13;
    }

    qualityIndex2 = [objc_msgSend(entry "client")];
    qualityIndex3 = [objc_msgSend(videoEntry "client")];
    goto LABEL_16;
  }

  v7 = [objc_msgSend(videoEntry "client")];
  if (v7 == [objc_msgSend(entry "client")])
  {
    qualityIndex = [entry qualityIndex];
    if (qualityIndex == [videoEntry qualityIndex])
    {
      v9 = [objc_msgSend(entry "client")];
      if (v9 != [objc_msgSend(videoEntry "client")])
      {
        qualityIndex2 = [objc_msgSend(entry "client")];
        qualityIndex3 = [objc_msgSend(videoEntry "client")];
        goto LABEL_16;
      }

LABEL_13:
      v6 = 0;
      goto LABEL_19;
    }

    qualityIndex2 = [entry qualityIndex];
    qualityIndex3 = [videoEntry qualityIndex];
LABEL_16:
    if (qualityIndex2 < qualityIndex3)
    {
      v6 = -1;
    }

    else
    {
      v6 = 1;
    }

    goto LABEL_19;
  }

  v17 = [objc_msgSend(videoEntry "client")];
  v18 = [objc_msgSend(entry "client")];
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
    entryCopy = videoEntry;
  }

  else
  {
    entryCopy = entry;
  }

  if (v19)
  {
    videoEntryCopy2 = entry;
  }

  else
  {
    videoEntryCopy2 = videoEntry;
  }

  if ([objc_msgSend(entryCopy "client")] == 5 && !objc_msgSend(objc_msgSend(videoEntryCopy2, "client"), "videoQuality") && objc_msgSend(videoEntryCopy2, "qualityIndex") <= 0x3E)
  {
    qualityIndex4 = [videoEntryCopy2 qualityIndex];
    if (qualityIndex4 < [entryCopy qualityIndex])
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
        entryCopy4 = entry;
        v33 = 2112;
        videoEntryCopy4 = videoEntry;
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
      entryCopy4 = entry;
      v33 = 2112;
      videoEntryCopy4 = videoEntry;
      _os_log_debug_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEBUG, " [%s] %s:%d result=%d (%@ vs. %@)", &v23, 0x36u);
    }
  }

  return v6;
}

+ (int64_t)compareAudioEntry:(id)entry videoEntry:(id)videoEntry
{
  v25 = *MEMORY[0x1E69E9840];
  if (![objc_msgSend(videoEntry "client")])
  {
    goto LABEL_13;
  }

  qualityIndex = [entry qualityIndex];
  if (qualityIndex == [videoEntry qualityIndex])
  {
    v7 = 0;
  }

  else
  {
    qualityIndex2 = [entry qualityIndex];
    if (qualityIndex2 < [videoEntry qualityIndex])
    {
      v7 = -1;
    }

    else
    {
      v7 = 1;
    }
  }

  if ([entry qualityIndex] == 200 && !objc_msgSend(objc_msgSend(videoEntry, "client"), "videoQuality"))
  {
    if ([videoEntry streamGroupID] == 1667329381)
    {
      if ([videoEntry maxNetworkBitrate] < 0x7D01)
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
        entryCopy2 = entry;
        v23 = 2112;
        videoEntryCopy2 = videoEntry;
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
      entryCopy2 = entry;
      v23 = 2112;
      videoEntryCopy2 = videoEntry;
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