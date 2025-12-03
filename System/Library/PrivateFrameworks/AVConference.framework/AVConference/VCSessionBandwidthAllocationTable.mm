@interface VCSessionBandwidthAllocationTable
- (BOOL)shouldAddBackupEntry:(id)entry referenceTable:(id)table referenceQualityIndices:(id)indices;
- (BOOL)shouldAppendEntry:(id)entry appendedVideoEncoderGroups:(id)groups;
- (BOOL)shouldAppendEntry:(id)entry appendedVideoEncoderGroups:(id)groups is1080pCameraAvailable:(BOOL)available;
- (BOOL)shouldUseRepairBitrateForEntry:(id)entry isRedundancyEnabled:(BOOL)enabled isRedundancyEnabledFor720Stream:(BOOL)stream;
- (VCSessionBandwidthAllocationTable)initWithType:(unsigned __int8)type;
- (id)entryForStreamID:(id)d;
- (id)newAggregatedBandwidthTableWithRedundancy:(BOOL)redundancy redundancyEnabledFor720Stream:(BOOL)stream enableMap:(id)map is1080pCameraAvailable:(BOOL)available;
- (id)tableEntriesForStreamToken:(int64_t)token;
- (void)addBandwidthAllocationTableEntry:(id)entry;
- (void)appendEntry:(id)entry streamTokenEntries:(id)entries currentNetworkBitrate:(unsigned int *)bitrate shouldUseRepairBitrate:(BOOL)repairBitrate appendedVideoEncoderGroups:(id)groups;
- (void)cleanupStreamTokenEntries:(id)entries currentNetworkBitrate:(unsigned int *)bitrate isRedundancyEnabled:(BOOL)enabled appendedVideoEncoderGroups:(id)groups;
- (void)dealloc;
- (void)printTable:(id)table;
@end

@implementation VCSessionBandwidthAllocationTable

- (VCSessionBandwidthAllocationTable)initWithType:(unsigned __int8)type
{
  v8 = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = VCSessionBandwidthAllocationTable;
  v4 = [(VCObject *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->_type = type;
    v4->_streamTokenEntries = objc_alloc_init(MEMORY[0x1E695DF90]);
    v5->_streamIDToEntryTable = objc_alloc_init(MEMORY[0x1E695DF90]);
    v5->_maxActiveScreenEncoders = +[VCHardwareSettings maxActiveScreenEncoders];
    v5->_maxActiveCameraEncoders = +[VCHardwareSettings maxActiveVideoEncoders];
  }

  return v5;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = VCSessionBandwidthAllocationTable;
  [(VCObject *)&v3 dealloc];
}

- (id)entryForStreamID:(id)d
{
  if (d)
  {
    return [(NSMutableDictionary *)self->_streamIDToEntryTable objectForKeyedSubscript:?];
  }

  else
  {
    return 0;
  }
}

- (void)addBandwidthAllocationTableEntry:(id)entry
{
  v5 = -[NSMutableDictionary objectForKeyedSubscript:](self->_streamTokenEntries, "objectForKeyedSubscript:", [entry streamToken]);
  if (!v5)
  {
    v5 = objc_alloc_init(VCSessionBandwidthAllocationTableStreamInfo);
    -[NSMutableDictionary setObject:forKeyedSubscript:](self->_streamTokenEntries, "setObject:forKeyedSubscript:", v5, [entry streamToken]);
  }

  [(VCSessionBandwidthAllocationTableStreamInfo *)v5 addTableEntry:entry];
  streamIDToEntryTable = self->_streamIDToEntryTable;
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(entry, "streamID")}];

  [(NSMutableDictionary *)streamIDToEntryTable setObject:entry forKeyedSubscript:v7];
}

- (id)tableEntriesForStreamToken:(int64_t)token
{
  v3 = -[NSMutableDictionary objectForKeyedSubscript:](self->_streamTokenEntries, "objectForKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithInteger:token]);

  return [v3 sortedEntries];
}

- (BOOL)shouldUseRepairBitrateForEntry:(id)entry isRedundancyEnabled:(BOOL)enabled isRedundancyEnabledFor720Stream:(BOOL)stream
{
  if (enabled)
  {
    hasRepairStreamID = [entry hasRepairStreamID];
    if (hasRepairStreamID)
    {
      LOBYTE(hasRepairStreamID) = [entry qualityIndex] != 1000 || stream;
    }
  }

  else
  {
    LOBYTE(hasRepairStreamID) = 0;
  }

  return hasRepairStreamID;
}

- (id)newAggregatedBandwidthTableWithRedundancy:(BOOL)redundancy redundancyEnabledFor720Stream:(BOOL)stream enableMap:(id)map is1080pCameraAvailable:(BOOL)available
{
  availableCopy = available;
  streamCopy = stream;
  redundancyCopy = redundancy;
  v74 = *MEMORY[0x1E69E9840];
  v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
  streamTokenEntries = self->_streamTokenEntries;
  v51[0] = MEMORY[0x1E69E9820];
  v51[1] = 3221225472;
  v51[2] = __142__VCSessionBandwidthAllocationTable_newAggregatedBandwidthTableWithRedundancy_redundancyEnabledFor720Stream_enableMap_is1080pCameraAvailable___block_invoke;
  v51[3] = &unk_1E85F9CF8;
  v51[4] = v11;
  v51[5] = map;
  v51[6] = v10;
  [(NSMutableDictionary *)streamTokenEntries enumerateKeysAndObjectsUsingBlock:v51];
  v13 = [objc_msgSend(v10 "allKeys")];
  v43 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v50 = 0;
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  obj = v13;
  v48 = [v13 countByEnumeratingWithState:&v70 objects:v69 count:16];
  if (v48)
  {
    v47 = *v71;
    selfCopy = self;
    v39 = availableCopy;
    v40 = redundancyCopy;
    v37 = v14;
    v38 = v10;
    do
    {
      v15 = 0;
      do
      {
        if (*v71 != v47)
        {
          objc_enumerationMutation(obj);
        }

        v49 = v15;
        v16 = *(*(&v70 + 1) + 8 * v15);
        v17 = [v10 objectForKeyedSubscript:v16];
        if (![v17 isStartOnDemand] || (objc_msgSend(v17, "isSubscribedTo") & 1) != 0 || -[VCSessionBandwidthAllocationTable shouldAddBackupEntry:referenceTable:referenceQualityIndices:](self, "shouldAddBackupEntry:referenceTable:referenceQualityIndices:", v16, v10, obj))
        {
          v18 = [v11 objectForKeyedSubscript:{objc_msgSend(v17, "streamToken")}];
          [(VCSessionBandwidthAllocationTable *)self cleanupStreamTokenEntries:v18 currentNetworkBitrate:&v50 isRedundancyEnabled:redundancyCopy appendedVideoEncoderGroups:v14];
          if ([(VCSessionBandwidthAllocationTable *)self shouldAppendEntry:v17 appendedVideoEncoderGroups:v14 is1080pCameraAvailable:availableCopy])
          {
            v44 = v17;
            v46 = [(VCSessionBandwidthAllocationTable *)self shouldUseRepairBitrateForEntry:v17 isRedundancyEnabled:redundancyCopy isRedundancyEnabledFor720Stream:streamCopy];
            [VCSessionBandwidthAllocationTable appendEntry:"appendEntry:streamTokenEntries:currentNetworkBitrate:shouldUseRepairBitrate:appendedVideoEncoderGroups:" streamTokenEntries:v17 currentNetworkBitrate:v18 shouldUseRepairBitrate:&v50 appendedVideoEncoderGroups:?];
            v19 = objc_alloc_init(MEMORY[0x1E695DF90]);
            v65 = 0u;
            v66 = 0u;
            v67 = 0u;
            v68 = 0u;
            allKeys = [(NSMutableDictionary *)self->_streamTokenEntries allKeys];
            v21 = [allKeys countByEnumeratingWithState:&v65 objects:v64 count:16];
            if (v21)
            {
              v22 = v21;
              v23 = *v66;
              do
              {
                for (i = 0; i != v22; ++i)
                {
                  if (*v66 != v23)
                  {
                    objc_enumerationMutation(allKeys);
                  }

                  [v19 setObject:objc_msgSend(MEMORY[0x1E695DEC8] forKeyedSubscript:{"arrayWithArray:", objc_msgSend(v11, "objectForKeyedSubscript:", *(*(&v65 + 1) + 8 * i))), *(*(&v65 + 1) + 8 * i)}];
                }

                v22 = [allKeys countByEnumeratingWithState:&v65 objects:v64 count:16];
              }

              while (v22);
            }

            [v43 setObject:v19 forKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", v50)}];
            if (!v46)
            {
              maxNetworkBitrate = [v44 maxNetworkBitrate];
              minNetworkBitrate = [v44 minNetworkBitrate];
              v50 += maxNetworkBitrate - minNetworkBitrate;
            }

            self = selfCopy;
            availableCopy = v39;
            redundancyCopy = v40;
            v14 = v37;
            v10 = v38;
          }
        }

        v15 = v49 + 1;
      }

      while (v49 + 1 != v48);
      v48 = [obj countByEnumeratingWithState:&v70 objects:v69 count:16];
    }

    while (v48);
  }

  if (objc_opt_class() == self)
  {
    v28 = v43;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v29 = VRTraceErrorLogLevelToCSTR();
      v30 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v53 = v29;
        v54 = 2080;
        v55 = "[VCSessionBandwidthAllocationTable newAggregatedBandwidthTableWithRedundancy:redundancyEnabledFor720Stream:enableMap:is1080pCameraAvailable:]";
        v56 = 1024;
        v57 = 178;
        v58 = 1024;
        LODWORD(v59) = redundancyCopy;
        v31 = " [%s] %s:%d Recomputed tier table. isRedundancyEnabled=%d";
        v32 = v30;
        v33 = 34;
LABEL_32:
        _os_log_impl(&dword_1DB56E000, v32, OS_LOG_TYPE_DEFAULT, v31, buf, v33);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v27 = [(VCSessionBandwidthAllocationTable *)self performSelector:sel_logPrefix];
    }

    else
    {
      v27 = &stru_1F570E008;
    }

    v28 = v43;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v34 = VRTraceErrorLogLevelToCSTR();
      v35 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316418;
        v53 = v34;
        v54 = 2080;
        v55 = "[VCSessionBandwidthAllocationTable newAggregatedBandwidthTableWithRedundancy:redundancyEnabledFor720Stream:enableMap:is1080pCameraAvailable:]";
        v56 = 1024;
        v57 = 178;
        v58 = 2112;
        v59 = v27;
        v60 = 2048;
        selfCopy2 = self;
        v62 = 1024;
        v63 = redundancyCopy;
        v31 = " [%s] %s:%d %@(%p) Recomputed tier table. isRedundancyEnabled=%d";
        v32 = v35;
        v33 = 54;
        goto LABEL_32;
      }
    }
  }

  [(VCSessionBandwidthAllocationTable *)self printTable:v28];
  return v28;
}

uint64_t __142__VCSessionBandwidthAllocationTable_newAggregatedBandwidthTableWithRedundancy_redundancyEnabledFor720Stream_enableMap_is1080pCameraAvailable___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  if (![*(a1 + 32) objectForKeyedSubscript:a2])
  {
    [*(a1 + 32) setObject:objc_msgSend(MEMORY[0x1E695DF70] forKeyedSubscript:{"array"), a2}];
  }

  result = [objc_msgSend(*(a1 + 40) objectForKeyedSubscript:{a2), "BOOLValue"}];
  if (result)
  {
    v7 = *(a1 + 48);
    v8 = [a3 qualityIndexToTableEntry];

    return [v7 addEntriesFromDictionary:v8];
  }

  return result;
}

- (BOOL)shouldAppendEntry:(id)entry appendedVideoEncoderGroups:(id)groups
{
  v45 = *MEMORY[0x1E69E9840];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v6 = [groups objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", objc_msgSend(entry, "streamGroupID"))}];
  v7 = [v6 countByEnumeratingWithState:&v41 objects:v40 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v42;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v42 != v10)
        {
          objc_enumerationMutation(v6);
        }

        if ([objc_msgSend(objc_msgSend(groups objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", objc_msgSend(entry, "streamGroupID"))), "objectForKeyedSubscript:", *(*(&v41 + 1) + 8 * i)), "count"}])
        {
          ++v9;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v41 objects:v40 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  if ([entry streamGroupID] == 1935897189)
  {
    v12 = &OBJC_IVAR___VCSessionBandwidthAllocationTable__maxActiveScreenEncoders;
    selfCopy2 = self;
  }

  else
  {
    selfCopy2 = self;
    if ([entry streamGroupID] != 1667329381)
    {
      v14 = -1;
      goto LABEL_18;
    }

    v12 = &OBJC_IVAR___VCSessionBandwidthAllocationTable__maxActiveCameraEncoders;
  }

  v14 = *(&selfCopy2->super.super.isa + *v12);
LABEL_18:
  if (v9 < v14 || (v15 = [groups objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", objc_msgSend(entry, "streamGroupID"))}], objc_msgSend(objc_msgSend(v15, "objectForKeyedSubscript:", objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", objc_msgSend(entry, "encoderGroupID"))), "count")))
  {
    LOBYTE(v16) = 1;
    return v16;
  }

  if (objc_opt_class() != selfCopy2)
  {
    if (objc_opt_respondsToSelector())
    {
      v17 = [(VCSessionBandwidthAllocationTable *)selfCopy2 performSelector:sel_logPrefix];
    }

    else
    {
      v17 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_33;
    }

    v23 = VRTraceErrorLogLevelToCSTR();
    v24 = *MEMORY[0x1E6986650];
    v16 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT);
    if (!v16)
    {
      return v16;
    }

    *buf = 136316674;
    v28 = v23;
    v29 = 2080;
    v30 = "[VCSessionBandwidthAllocationTable shouldAppendEntry:appendedVideoEncoderGroups:]";
    v31 = 1024;
    v32 = 205;
    v33 = 2112;
    *v34 = v17;
    *&v34[8] = 2048;
    v35 = selfCopy2;
    v36 = 1024;
    v37 = v9;
    v38 = 1024;
    qualityIndex = [entry qualityIndex];
    v20 = " [%s] %s:%d %@(%p) Reached max screen encoders=%d Not adding streamQualityIndex=%d";
    v21 = v24;
    v22 = 60;
    goto LABEL_32;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v18 = VRTraceErrorLogLevelToCSTR();
    v19 = *MEMORY[0x1E6986650];
    v16 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT);
    if (!v16)
    {
      return v16;
    }

    *buf = 136316162;
    v28 = v18;
    v29 = 2080;
    v30 = "[VCSessionBandwidthAllocationTable shouldAppendEntry:appendedVideoEncoderGroups:]";
    v31 = 1024;
    v32 = 205;
    v33 = 1024;
    *v34 = v9;
    *&v34[4] = 1024;
    *&v34[6] = [entry qualityIndex];
    v20 = " [%s] %s:%d Reached max screen encoders=%d Not adding streamQualityIndex=%d";
    v21 = v19;
    v22 = 40;
LABEL_32:
    _os_log_impl(&dword_1DB56E000, v21, OS_LOG_TYPE_DEFAULT, v20, buf, v22);
  }

LABEL_33:
  LOBYTE(v16) = 0;
  return v16;
}

- (BOOL)shouldAppendEntry:(id)entry appendedVideoEncoderGroups:(id)groups is1080pCameraAvailable:(BOOL)available
{
  v20 = *MEMORY[0x1E69E9840];
  if ([entry streamGroupID] == 1667329381 && objc_msgSend(entry, "qualityIndex") == 1800 && !available)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v12 = 136315906;
        v13 = v9;
        v14 = 2080;
        v15 = "[VCSessionBandwidthAllocationTable shouldAppendEntry:appendedVideoEncoderGroups:is1080pCameraAvailable:]";
        v16 = 1024;
        v17 = 219;
        v18 = 1024;
        qualityIndex = [entry qualityIndex];
        _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Skipping stream [1080x1080] with qualityIndex=%d as camera doesn't support", &v12, 0x22u);
      }
    }

    return 0;
  }

  else
  {

    return [(VCSessionBandwidthAllocationTable *)self shouldAppendEntry:entry appendedVideoEncoderGroups:groups];
  }
}

- (void)cleanupStreamTokenEntries:(id)entries currentNetworkBitrate:(unsigned int *)bitrate isRedundancyEnabled:(BOOL)enabled appendedVideoEncoderGroups:(id)groups
{
  enabledCopy = enabled;
  lastObject = [entries lastObject];
  if ([lastObject isStartOnDemand] && (objc_msgSend(lastObject, "isSubscribedTo") & 1) == 0)
  {
    if (enabledCopy && [lastObject hasRepairStreamID])
    {
      repairMaxNetworkBitrate = [lastObject repairMaxNetworkBitrate];
    }

    else
    {
      repairMaxNetworkBitrate = [lastObject maxNetworkBitrate];
    }

    *bitrate -= repairMaxNetworkBitrate;
    if ([lastObject streamGroupID] == 1935897189 || objc_msgSend(lastObject, "streamGroupID") == 1667329381)
    {
      v12 = [groups objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", objc_msgSend(lastObject, "streamGroupID"))}];
      v13 = [v12 objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", objc_msgSend(lastObject, "encoderGroupID"))}];
      [v13 removeObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", objc_msgSend(lastObject, "streamID"))}];
    }

    [entries removeLastObject];
  }
}

- (void)appendEntry:(id)entry streamTokenEntries:(id)entries currentNetworkBitrate:(unsigned int *)bitrate shouldUseRepairBitrate:(BOOL)repairBitrate appendedVideoEncoderGroups:(id)groups
{
  repairBitrateCopy = repairBitrate;
  [entries addObject:?];
  if (repairBitrateCopy)
  {
    repairMaxNetworkBitrate = [entry repairMaxNetworkBitrate];
  }

  else
  {
    repairMaxNetworkBitrate = [entry minNetworkBitrate];
  }

  *bitrate += repairMaxNetworkBitrate;
  if ([entry streamGroupID] == 1935897189 || objc_msgSend(entry, "streamGroupID") == 1667329381)
  {
    if (![groups objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", objc_msgSend(entry, "streamGroupID"))}])
    {
      dictionary = [MEMORY[0x1E695DF90] dictionary];
      [groups setObject:dictionary forKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", objc_msgSend(entry, "streamGroupID"))}];
    }

    v13 = [groups objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", objc_msgSend(entry, "streamGroupID"))}];
    if (![v13 objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", objc_msgSend(entry, "encoderGroupID"))}])
    {
      v14 = [MEMORY[0x1E695DFA8] set];
      v15 = [groups objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", objc_msgSend(entry, "streamGroupID"))}];
      [v15 setObject:v14 forKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", objc_msgSend(entry, "encoderGroupID"))}];
    }

    v16 = [groups objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", objc_msgSend(entry, "streamGroupID"))}];
    v17 = [v16 objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", objc_msgSend(entry, "encoderGroupID"))}];
    v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(entry, "streamID")}];

    [v17 addObject:v18];
  }
}

- (BOOL)shouldAddBackupEntry:(id)entry referenceTable:(id)table referenceQualityIndices:(id)indices
{
  v22 = *MEMORY[0x1E69E9840];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = [indices countByEnumeratingWithState:&v18 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    streamToken = 0;
    v11 = *v19;
    v12 = 1;
    do
    {
      v13 = 0;
      do
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(indices);
        }

        v14 = *(*(&v18 + 1) + 8 * v13);
        v15 = [table objectForKeyedSubscript:v14];
        if ([v14 isEqualToNumber:entry])
        {
          streamToken = [v15 streamToken];
LABEL_8:
          v12 = 0;
          goto LABEL_11;
        }

        if ((v12 & 1) == 0)
        {
          if ([objc_msgSend(v15 "streamToken")] && (!objc_msgSend(v15, "isStartOnDemand") || (objc_msgSend(v15, "isSubscribedTo") & 1) != 0))
          {
            LOBYTE(v8) = 1;
            return v8;
          }

          goto LABEL_8;
        }

        v12 = 1;
LABEL_11:
        ++v13;
      }

      while (v9 != v13);
      v8 = [indices countByEnumeratingWithState:&v18 objects:v17 count:16];
      v9 = v8;
    }

    while (v8);
  }

  return v8;
}

- (void)printTable:(id)table
{
  v39 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v30 = v6;
        v31 = 2080;
        v32 = "[VCSessionBandwidthAllocationTable printTable:]";
        v33 = 1024;
        v34 = 297;
        v8 = " [%s] %s:%d downlink bandwidth alloctor table ########### ";
        v9 = v7;
        v10 = 28;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, v8, buf, v10);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v5 = [(VCSessionBandwidthAllocationTable *)self performSelector:sel_logPrefix];
    }

    else
    {
      v5 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v11 = VRTraceErrorLogLevelToCSTR();
      v12 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316162;
        v30 = v11;
        v31 = 2080;
        v32 = "[VCSessionBandwidthAllocationTable printTable:]";
        v33 = 1024;
        v34 = 297;
        v35 = 2112;
        v36 = v5;
        v37 = 2048;
        selfCopy = self;
        v8 = " [%s] %s:%d %@(%p) downlink bandwidth alloctor table ########### ";
        v9 = v12;
        v10 = 48;
        goto LABEL_11;
      }
    }
  }

  v13 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"self" ascending:1];
  allKeys = [table allKeys];
  v28 = v13;
  v15 = [allKeys sortedArrayUsingDescriptors:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", &v28, 1)}];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v16 = [v15 countByEnumeratingWithState:&v24 objects:v23 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v25;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v25 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v24 + 1) + 8 * i);
        v21 = [table objectForKeyedSubscript:v20];
        v22[0] = MEMORY[0x1E69E9820];
        v22[1] = 3221225472;
        v22[2] = __48__VCSessionBandwidthAllocationTable_printTable___block_invoke;
        v22[3] = &unk_1E85F9D20;
        v22[4] = self;
        v22[5] = v20;
        [v21 enumerateKeysAndObjectsUsingBlock:v22];
      }

      v17 = [v15 countByEnumeratingWithState:&v24 objects:v23 count:16];
    }

    while (v17);
  }
}

void __48__VCSessionBandwidthAllocationTable_printTable___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v33 = *MEMORY[0x1E69E9840];
  if ([a3 count])
  {
    if (objc_opt_class() == *(a1 + 32))
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v7 = VRTraceErrorLogLevelToCSTR();
        v8 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v9 = *(a1 + 40);
          v17 = 136316418;
          v18 = v7;
          v19 = 2080;
          v20 = "[VCSessionBandwidthAllocationTable printTable:]_block_invoke";
          v21 = 1024;
          v22 = 304;
          v23 = 2112;
          v24 = v9;
          v25 = 2112;
          v26 = a2;
          v27 = 2112;
          v28 = a3;
          v10 = " [%s] %s:%d Bandwidth %@, streamToken:%@, %@";
          v11 = v8;
          v12 = 58;
LABEL_12:
          _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, v10, &v17, v12);
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v6 = [*(a1 + 32) performSelector:sel_logPrefix];
      }

      else
      {
        v6 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v13 = VRTraceErrorLogLevelToCSTR();
        v14 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v15 = *(a1 + 32);
          v16 = *(a1 + 40);
          v17 = 136316930;
          v18 = v13;
          v19 = 2080;
          v20 = "[VCSessionBandwidthAllocationTable printTable:]_block_invoke";
          v21 = 1024;
          v22 = 304;
          v23 = 2112;
          v24 = v6;
          v25 = 2048;
          v26 = v15;
          v27 = 2112;
          v28 = v16;
          v29 = 2112;
          v30 = a2;
          v31 = 2112;
          v32 = a3;
          v10 = " [%s] %s:%d %@(%p) Bandwidth %@, streamToken:%@, %@";
          v11 = v14;
          v12 = 78;
          goto LABEL_12;
        }
      }
    }
  }
}

@end