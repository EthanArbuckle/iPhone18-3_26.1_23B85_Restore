@interface VCSessionBandwidthAllocationTable
- (BOOL)shouldAddBackupEntry:(id)a3 referenceTable:(id)a4 referenceQualityIndices:(id)a5;
- (BOOL)shouldAppendEntry:(id)a3 appendedVideoEncoderGroups:(id)a4;
- (BOOL)shouldAppendEntry:(id)a3 appendedVideoEncoderGroups:(id)a4 is1080pCameraAvailable:(BOOL)a5;
- (BOOL)shouldUseRepairBitrateForEntry:(id)a3 isRedundancyEnabled:(BOOL)a4 isRedundancyEnabledFor720Stream:(BOOL)a5;
- (VCSessionBandwidthAllocationTable)initWithType:(unsigned __int8)a3;
- (id)entryForStreamID:(id)a3;
- (id)newAggregatedBandwidthTableWithRedundancy:(BOOL)a3 redundancyEnabledFor720Stream:(BOOL)a4 enableMap:(id)a5 is1080pCameraAvailable:(BOOL)a6;
- (id)tableEntriesForStreamToken:(int64_t)a3;
- (void)addBandwidthAllocationTableEntry:(id)a3;
- (void)appendEntry:(id)a3 streamTokenEntries:(id)a4 currentNetworkBitrate:(unsigned int *)a5 shouldUseRepairBitrate:(BOOL)a6 appendedVideoEncoderGroups:(id)a7;
- (void)cleanupStreamTokenEntries:(id)a3 currentNetworkBitrate:(unsigned int *)a4 isRedundancyEnabled:(BOOL)a5 appendedVideoEncoderGroups:(id)a6;
- (void)dealloc;
- (void)printTable:(id)a3;
@end

@implementation VCSessionBandwidthAllocationTable

- (VCSessionBandwidthAllocationTable)initWithType:(unsigned __int8)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = VCSessionBandwidthAllocationTable;
  v4 = [(VCObject *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->_type = a3;
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

- (id)entryForStreamID:(id)a3
{
  if (a3)
  {
    return [(NSMutableDictionary *)self->_streamIDToEntryTable objectForKeyedSubscript:?];
  }

  else
  {
    return 0;
  }
}

- (void)addBandwidthAllocationTableEntry:(id)a3
{
  v5 = -[NSMutableDictionary objectForKeyedSubscript:](self->_streamTokenEntries, "objectForKeyedSubscript:", [a3 streamToken]);
  if (!v5)
  {
    v5 = objc_alloc_init(VCSessionBandwidthAllocationTableStreamInfo);
    -[NSMutableDictionary setObject:forKeyedSubscript:](self->_streamTokenEntries, "setObject:forKeyedSubscript:", v5, [a3 streamToken]);
  }

  [(VCSessionBandwidthAllocationTableStreamInfo *)v5 addTableEntry:a3];
  streamIDToEntryTable = self->_streamIDToEntryTable;
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(a3, "streamID")}];

  [(NSMutableDictionary *)streamIDToEntryTable setObject:a3 forKeyedSubscript:v7];
}

- (id)tableEntriesForStreamToken:(int64_t)a3
{
  v3 = -[NSMutableDictionary objectForKeyedSubscript:](self->_streamTokenEntries, "objectForKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithInteger:a3]);

  return [v3 sortedEntries];
}

- (BOOL)shouldUseRepairBitrateForEntry:(id)a3 isRedundancyEnabled:(BOOL)a4 isRedundancyEnabledFor720Stream:(BOOL)a5
{
  if (a4)
  {
    v7 = [a3 hasRepairStreamID];
    if (v7)
    {
      LOBYTE(v7) = [a3 qualityIndex] != 1000 || a5;
    }
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (id)newAggregatedBandwidthTableWithRedundancy:(BOOL)a3 redundancyEnabledFor720Stream:(BOOL)a4 enableMap:(id)a5 is1080pCameraAvailable:(BOOL)a6
{
  v6 = a6;
  v42 = a4;
  v8 = a3;
  v74 = *MEMORY[0x1E69E9840];
  v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
  streamTokenEntries = self->_streamTokenEntries;
  v51[0] = MEMORY[0x1E69E9820];
  v51[1] = 3221225472;
  v51[2] = __142__VCSessionBandwidthAllocationTable_newAggregatedBandwidthTableWithRedundancy_redundancyEnabledFor720Stream_enableMap_is1080pCameraAvailable___block_invoke;
  v51[3] = &unk_1E85F9CF8;
  v51[4] = v11;
  v51[5] = a5;
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
    v41 = self;
    v39 = v6;
    v40 = v8;
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
          [(VCSessionBandwidthAllocationTable *)self cleanupStreamTokenEntries:v18 currentNetworkBitrate:&v50 isRedundancyEnabled:v8 appendedVideoEncoderGroups:v14];
          if ([(VCSessionBandwidthAllocationTable *)self shouldAppendEntry:v17 appendedVideoEncoderGroups:v14 is1080pCameraAvailable:v6])
          {
            v44 = v17;
            v46 = [(VCSessionBandwidthAllocationTable *)self shouldUseRepairBitrateForEntry:v17 isRedundancyEnabled:v8 isRedundancyEnabledFor720Stream:v42];
            [VCSessionBandwidthAllocationTable appendEntry:"appendEntry:streamTokenEntries:currentNetworkBitrate:shouldUseRepairBitrate:appendedVideoEncoderGroups:" streamTokenEntries:v17 currentNetworkBitrate:v18 shouldUseRepairBitrate:&v50 appendedVideoEncoderGroups:?];
            v19 = objc_alloc_init(MEMORY[0x1E695DF90]);
            v65 = 0u;
            v66 = 0u;
            v67 = 0u;
            v68 = 0u;
            v20 = [(NSMutableDictionary *)self->_streamTokenEntries allKeys];
            v21 = [v20 countByEnumeratingWithState:&v65 objects:v64 count:16];
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
                    objc_enumerationMutation(v20);
                  }

                  [v19 setObject:objc_msgSend(MEMORY[0x1E695DEC8] forKeyedSubscript:{"arrayWithArray:", objc_msgSend(v11, "objectForKeyedSubscript:", *(*(&v65 + 1) + 8 * i))), *(*(&v65 + 1) + 8 * i)}];
                }

                v22 = [v20 countByEnumeratingWithState:&v65 objects:v64 count:16];
              }

              while (v22);
            }

            [v43 setObject:v19 forKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", v50)}];
            if (!v46)
            {
              v25 = [v44 maxNetworkBitrate];
              v26 = [v44 minNetworkBitrate];
              v50 += v25 - v26;
            }

            self = v41;
            v6 = v39;
            v8 = v40;
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
        LODWORD(v59) = v8;
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
        v61 = self;
        v62 = 1024;
        v63 = v8;
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

- (BOOL)shouldAppendEntry:(id)a3 appendedVideoEncoderGroups:(id)a4
{
  v45 = *MEMORY[0x1E69E9840];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v6 = [a4 objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", objc_msgSend(a3, "streamGroupID"))}];
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

        if ([objc_msgSend(objc_msgSend(a4 objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", objc_msgSend(a3, "streamGroupID"))), "objectForKeyedSubscript:", *(*(&v41 + 1) + 8 * i)), "count"}])
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

  if ([a3 streamGroupID] == 1935897189)
  {
    v12 = &OBJC_IVAR___VCSessionBandwidthAllocationTable__maxActiveScreenEncoders;
    v13 = self;
  }

  else
  {
    v13 = self;
    if ([a3 streamGroupID] != 1667329381)
    {
      v14 = -1;
      goto LABEL_18;
    }

    v12 = &OBJC_IVAR___VCSessionBandwidthAllocationTable__maxActiveCameraEncoders;
  }

  v14 = *(&v13->super.super.isa + *v12);
LABEL_18:
  if (v9 < v14 || (v15 = [a4 objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", objc_msgSend(a3, "streamGroupID"))}], objc_msgSend(objc_msgSend(v15, "objectForKeyedSubscript:", objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", objc_msgSend(a3, "encoderGroupID"))), "count")))
  {
    LOBYTE(v16) = 1;
    return v16;
  }

  if (objc_opt_class() != v13)
  {
    if (objc_opt_respondsToSelector())
    {
      v17 = [(VCSessionBandwidthAllocationTable *)v13 performSelector:sel_logPrefix];
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
    v35 = v13;
    v36 = 1024;
    v37 = v9;
    v38 = 1024;
    v39 = [a3 qualityIndex];
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
    *&v34[6] = [a3 qualityIndex];
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

- (BOOL)shouldAppendEntry:(id)a3 appendedVideoEncoderGroups:(id)a4 is1080pCameraAvailable:(BOOL)a5
{
  v20 = *MEMORY[0x1E69E9840];
  if ([a3 streamGroupID] == 1667329381 && objc_msgSend(a3, "qualityIndex") == 1800 && !a5)
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
        v19 = [a3 qualityIndex];
        _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Skipping stream [1080x1080] with qualityIndex=%d as camera doesn't support", &v12, 0x22u);
      }
    }

    return 0;
  }

  else
  {

    return [(VCSessionBandwidthAllocationTable *)self shouldAppendEntry:a3 appendedVideoEncoderGroups:a4];
  }
}

- (void)cleanupStreamTokenEntries:(id)a3 currentNetworkBitrate:(unsigned int *)a4 isRedundancyEnabled:(BOOL)a5 appendedVideoEncoderGroups:(id)a6
{
  v7 = a5;
  v10 = [a3 lastObject];
  if ([v10 isStartOnDemand] && (objc_msgSend(v10, "isSubscribedTo") & 1) == 0)
  {
    if (v7 && [v10 hasRepairStreamID])
    {
      v11 = [v10 repairMaxNetworkBitrate];
    }

    else
    {
      v11 = [v10 maxNetworkBitrate];
    }

    *a4 -= v11;
    if ([v10 streamGroupID] == 1935897189 || objc_msgSend(v10, "streamGroupID") == 1667329381)
    {
      v12 = [a6 objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", objc_msgSend(v10, "streamGroupID"))}];
      v13 = [v12 objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", objc_msgSend(v10, "encoderGroupID"))}];
      [v13 removeObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", objc_msgSend(v10, "streamID"))}];
    }

    [a3 removeLastObject];
  }
}

- (void)appendEntry:(id)a3 streamTokenEntries:(id)a4 currentNetworkBitrate:(unsigned int *)a5 shouldUseRepairBitrate:(BOOL)a6 appendedVideoEncoderGroups:(id)a7
{
  v8 = a6;
  [a4 addObject:?];
  if (v8)
  {
    v11 = [a3 repairMaxNetworkBitrate];
  }

  else
  {
    v11 = [a3 minNetworkBitrate];
  }

  *a5 += v11;
  if ([a3 streamGroupID] == 1935897189 || objc_msgSend(a3, "streamGroupID") == 1667329381)
  {
    if (![a7 objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", objc_msgSend(a3, "streamGroupID"))}])
    {
      v12 = [MEMORY[0x1E695DF90] dictionary];
      [a7 setObject:v12 forKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", objc_msgSend(a3, "streamGroupID"))}];
    }

    v13 = [a7 objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", objc_msgSend(a3, "streamGroupID"))}];
    if (![v13 objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", objc_msgSend(a3, "encoderGroupID"))}])
    {
      v14 = [MEMORY[0x1E695DFA8] set];
      v15 = [a7 objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", objc_msgSend(a3, "streamGroupID"))}];
      [v15 setObject:v14 forKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", objc_msgSend(a3, "encoderGroupID"))}];
    }

    v16 = [a7 objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", objc_msgSend(a3, "streamGroupID"))}];
    v17 = [v16 objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", objc_msgSend(a3, "encoderGroupID"))}];
    v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(a3, "streamID")}];

    [v17 addObject:v18];
  }
}

- (BOOL)shouldAddBackupEntry:(id)a3 referenceTable:(id)a4 referenceQualityIndices:(id)a5
{
  v22 = *MEMORY[0x1E69E9840];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = [a5 countByEnumeratingWithState:&v18 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v19;
    v12 = 1;
    do
    {
      v13 = 0;
      do
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(a5);
        }

        v14 = *(*(&v18 + 1) + 8 * v13);
        v15 = [a4 objectForKeyedSubscript:v14];
        if ([v14 isEqualToNumber:a3])
        {
          v10 = [v15 streamToken];
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
      v8 = [a5 countByEnumeratingWithState:&v18 objects:v17 count:16];
      v9 = v8;
    }

    while (v8);
  }

  return v8;
}

- (void)printTable:(id)a3
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
        v38 = self;
        v8 = " [%s] %s:%d %@(%p) downlink bandwidth alloctor table ########### ";
        v9 = v12;
        v10 = 48;
        goto LABEL_11;
      }
    }
  }

  v13 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"self" ascending:1];
  v14 = [a3 allKeys];
  v28 = v13;
  v15 = [v14 sortedArrayUsingDescriptors:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", &v28, 1)}];
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
        v21 = [a3 objectForKeyedSubscript:v20];
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