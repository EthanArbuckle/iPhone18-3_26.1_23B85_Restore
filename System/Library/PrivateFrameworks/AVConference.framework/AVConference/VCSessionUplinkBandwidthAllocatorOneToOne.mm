@interface VCSessionUplinkBandwidthAllocatorOneToOne
+ (id)valueForNetworkBitrate:(id)bitrate networkBitrate:(unsigned int)networkBitrate;
- (BOOL)isEnabledStreamToken:(int64_t)token;
- (BOOL)isRedundancyEnabled;
- (BOOL)isStreamGroupEnabled:(unsigned int)enabled;
- (BOOL)shouldUseMinMicBitrate:(unint64_t)bitrate streamToken:(int64_t)token remainderBitrate:(int64_t)remainderBitrate;
- (BOOL)shouldUseMultipleStreamGroupAlgorithm;
- (VCSessionUplinkBandwidthAllocatorOneToOne)init;
- (id)baseNetworkBitrateSplitForTargetBitrate:(unsigned int)bitrate baseNetworkBitrate:(unint64_t *)networkBitrate;
- (id)findBitrateSplitForStreamToken:(int64_t)token targetBitrate:(unsigned int)bitrate;
- (id)streamIDsForStreamToken:(int64_t)token targetBitrate:(unsigned int)bitrate;
- (id)streamIDsIfStreamTokenIsEnabled:(int64_t)enabled;
- (id)streamIDsIfStreamTokenIsPresent:(int64_t)present;
- (id)targetBitratesForStreamToken:(int64_t)token targetNetworkBitrate:(unsigned int)bitrate preferNetworkBitrates:(BOOL)bitrates;
- (unint64_t)findAndSplitExtraBitrateFromCappedStreams:(id)streams remainderBitrate:(int64_t)bitrate currentStreamGroupBitrate:(unint64_t)groupBitrate streamToken:(int64_t)token totalRemainderBitrateWeight:(unint64_t)weight;
- (void)addBandwidthAllocationTableEntry:(id)entry updateNow:(BOOL)now;
- (void)dealloc;
- (void)generateBandwidthAllocationTableWithTierTables:(id)tables qualityIndices:(id)indices qualityIndexToStreamToken:(id)token;
- (void)getCurrentEnabledTierTables:(id)tables qualityIndices:(id)indices qualityIndexToStreamToken:(id)token;
- (void)init;
- (void)recomputeAllocationTableIfRequired;
- (void)setRedundancyEnabled:(BOOL)enabled;
- (void)streamToken:(int64_t)token enabled:(BOOL)enabled;
@end

@implementation VCSessionUplinkBandwidthAllocatorOneToOne

- (VCSessionUplinkBandwidthAllocatorOneToOne)init
{
  v8 = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = VCSessionUplinkBandwidthAllocatorOneToOne;
  v2 = [(VCObject *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v2->_streamTokenToEnableMap = v3;
    if (v3)
    {
      v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v2->_streamTokenToTableEntryMap = v4;
      if (v4)
      {
        v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v2->_bandwithAllocationTable = v5;
        if (v5)
        {
          return v2;
        }

        [VCSessionUplinkBandwidthAllocatorOneToOne init];
      }

      else
      {
        [(VCSessionUplinkBandwidthAllocatorOneToOne *)v2 init];
      }
    }

    else
    {
      [(VCSessionUplinkBandwidthAllocatorOneToOne *)v2 init];
    }

    return 0;
  }

  return v2;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = VCSessionUplinkBandwidthAllocatorOneToOne;
  [(VCObject *)&v3 dealloc];
}

- (void)addBandwidthAllocationTableEntry:(id)entry updateNow:(BOOL)now
{
  nowCopy = now;
  [(VCObject *)self lock];
  if (entry)
  {
    streamToken = [entry streamToken];
    [(NSMutableDictionary *)self->_streamTokenToEnableMap setObject:MEMORY[0x1E695E110] forKeyedSubscript:streamToken];
    [(NSMutableDictionary *)self->_streamTokenToTableEntryMap setObject:entry forKeyedSubscript:streamToken];
  }

  if (nowCopy)
  {
    [(VCSessionUplinkBandwidthAllocatorOneToOne *)self recomputeAllocationTableIfRequired];
  }

  [(VCObject *)self unlock];
}

- (void)streamToken:(int64_t)token enabled:(BOOL)enabled
{
  enabledCopy = enabled;
  [(VCObject *)self lock];
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:token];
  v8 = [(NSMutableDictionary *)self->_streamTokenToEnableMap objectForKeyedSubscript:v7];
  if (v8 && [v8 BOOLValue] != enabledCopy)
  {
    -[NSMutableDictionary setObject:forKeyedSubscript:](self->_streamTokenToEnableMap, "setObject:forKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithBool:enabledCopy], v7);
    [(VCSessionUplinkBandwidthAllocatorOneToOne *)self recomputeAllocationTableIfRequired];
  }

  [(VCObject *)self unlock];
}

- (BOOL)isEnabledStreamToken:(int64_t)token
{
  [(VCObject *)self lock];
  LOBYTE(token) = [-[NSMutableDictionary objectForKeyedSubscript:](self->_streamTokenToEnableMap objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInteger:", token)), "BOOLValue"}];
  [(VCObject *)self unlock];
  return token;
}

- (void)getCurrentEnabledTierTables:(id)tables qualityIndices:(id)indices qualityIndexToStreamToken:(id)token
{
  v52 = *MEMORY[0x1E69E9840];
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  obj = [(NSMutableDictionary *)self->_streamTokenToEnableMap allKeys];
  v24 = [obj countByEnumeratingWithState:&v48 objects:v47 count:16];
  if (v24)
  {
    v23 = *v49;
    v6 = "";
    do
    {
      v7 = 0;
      do
      {
        if (*v49 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v26 = v7;
        v8 = *(*(&v48 + 1) + 8 * v7);
        if ([-[NSMutableDictionary objectForKeyedSubscript:](self->_streamTokenToEnableMap objectForKeyedSubscript:{v8), "BOOLValue"}])
        {
          v27 = [(NSMutableDictionary *)self->_streamTokenToTableEntryMap objectForKeyedSubscript:v8];
          v28 = v8;
          [tables setObject:objc_msgSend(objc_msgSend(v27 forKeyedSubscript:{"uplinkClient"), "qualityTierTableForStreamToken:", objc_msgSend(v8, "unsignedIntValue")), v8}];
          v45 = 0u;
          v46 = 0u;
          v43 = 0u;
          v44 = 0u;
          v9 = [objc_msgSend(tables objectForKeyedSubscript:{v8), "allKeys"}];
          v10 = [v9 countByEnumeratingWithState:&v43 objects:v42 count:16];
          if (v10)
          {
            v11 = v10;
            v12 = *v44;
            do
            {
              for (i = 0; i != v11; ++i)
              {
                if (*v44 != v12)
                {
                  objc_enumerationMutation(v9);
                }

                v14 = *(*(&v43 + 1) + 8 * i);
                [indices addObject:v14];
                if ([token objectForKeyedSubscript:v14])
                {
                  if (VRTraceGetErrorLogLevelForModule() >= 5)
                  {
                    v15 = VRTraceErrorLogLevelToCSTR();
                    v16 = *MEMORY[0x1E6986650];
                    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
                    {
                      v17 = v6;
                      unsignedIntValue = [v14 unsignedIntValue];
                      v19 = FourccToCStr([objc_msgSend(token objectForKeyedSubscript:{v14), "unsignedIntValue"}]);
                      v20 = FourccToCStr([v27 streamGroupID]);
                      *buf = 136316418;
                      v31 = v15;
                      v32 = 2080;
                      v33 = "[VCSessionUplinkBandwidthAllocatorOneToOne getCurrentEnabledTierTables:qualityIndices:qualityIndexToStreamToken:]";
                      v34 = 1024;
                      v35 = 110;
                      v36 = 1024;
                      v37 = unsignedIntValue;
                      v6 = v17;
                      v8 = v28;
                      v38 = 2080;
                      v39 = v19;
                      v40 = 2080;
                      v41 = v20;
                      _os_log_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Quality Index collision for index=%u existing streamGroupID=%s other streamGroupID=%s", buf, 0x36u);
                    }
                  }
                }

                else
                {
                  [token setObject:v8 forKeyedSubscript:v14];
                }
              }

              v11 = [v9 countByEnumeratingWithState:&v43 objects:v42 count:16];
            }

            while (v11);
          }
        }

        v7 = v26 + 1;
      }

      while (v26 + 1 != v24);
      v24 = [obj countByEnumeratingWithState:&v48 objects:v47 count:16];
    }

    while (v24);
  }
}

- (void)generateBandwidthAllocationTableWithTierTables:(id)tables qualityIndices:(id)indices qualityIndexToStreamToken:(id)token
{
  v27 = *MEMORY[0x1E69E9840];
  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = [indices sortedArrayUsingSelector:sel_compare_];
  v20 = [obj countByEnumeratingWithState:&v23 objects:v22 count:16];
  if (v20)
  {
    v8 = 0;
    v17 = *v24;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v24 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v23 + 1) + 8 * i);
        v11 = [token objectForKeyedSubscript:v10];
        v12 = [objc_msgSend(tables objectForKeyedSubscript:{v11), "objectForKeyedSubscript:", v10}];
        v21 = 0;
        if ([objc_msgSend(-[NSMutableDictionary objectForKeyedSubscript:](self->_streamTokenToTableEntryMap objectForKeyedSubscript:{v11), "uplinkClient"), "shouldCapStream:cappedBitrate:", objc_msgSend(v11, "unsignedIntValue"), &v21}])
        {
          unsignedIntValue = [v12 unsignedIntValue];
          if (unsignedIntValue > v21)
          {
            continue;
          }
        }

        v14 = [-[NSMutableDictionary objectForKeyedSubscript:](self->_bandwithAllocationTable objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", v8)), "mutableCopy"}];
        if (!v14)
        {
          v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
        }

        v15 = v8 - [objc_msgSend(v7 objectForKeyedSubscript:{v11), "unsignedIntValue"}];
        v8 = v15 + [v12 unsignedIntValue];
        [v14 setObject:v12 forKeyedSubscript:v11];
        -[NSMutableDictionary setObject:forKeyedSubscript:](self->_bandwithAllocationTable, "setObject:forKeyedSubscript:", v14, [MEMORY[0x1E696AD98] numberWithUnsignedInt:v8]);
        [v7 setObject:v12 forKeyedSubscript:v11];
      }

      v20 = [obj countByEnumeratingWithState:&v23 objects:v22 count:16];
    }

    while (v20);
  }
}

- (id)streamIDsIfStreamTokenIsPresent:(int64_t)present
{
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [(VCObject *)self lock];
  if (-[NSMutableDictionary objectForKeyedSubscript:](self->_streamTokenToEnableMap, "objectForKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithInteger:present]))
  {
    [v5 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", objc_msgSend(-[NSMutableDictionary objectForKeyedSubscript:](self->_streamTokenToTableEntryMap, "objectForKeyedSubscript:", objc_msgSend(MEMORY[0x1E696AD98], "numberWithInteger:", present)), "streamID"))}];
    v6 = v5;
  }

  else
  {

    v5 = 0;
  }

  [(VCObject *)self unlock];
  return v5;
}

- (void)setRedundancyEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  [(VCObject *)self lock];
  if (self->_redundancyEnabled != enabledCopy)
  {
    self->_redundancyEnabled = enabledCopy;
    [(VCSessionUplinkBandwidthAllocatorOneToOne *)self recomputeAllocationTableIfRequired];
  }

  [(VCObject *)self unlock];
}

- (BOOL)isRedundancyEnabled
{
  [(VCObject *)self lock];
  redundancyEnabled = self->_redundancyEnabled;
  [(VCObject *)self unlock];
  return redundancyEnabled;
}

- (unint64_t)findAndSplitExtraBitrateFromCappedStreams:(id)streams remainderBitrate:(int64_t)bitrate currentStreamGroupBitrate:(unint64_t)groupBitrate streamToken:(int64_t)token totalRemainderBitrateWeight:(unint64_t)weight
{
  v37 = *MEMORY[0x1E69E9840];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = [streams allKeys];
  v10 = [obj countByEnumeratingWithState:&v33 objects:v32 count:16];
  if (v10)
  {
    v11 = v10;
    tokenCopy = token;
    groupBitrateCopy = groupBitrate;
    v28 = 0;
    v12 = *v34;
    v13 = 0.0;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v34 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v33 + 1) + 8 * i);
        v16 = [-[NSMutableDictionary objectForKeyedSubscript:](self->_streamTokenToTableEntryMap objectForKeyedSubscript:{v15, tokenCopy, groupBitrateCopy), "uplinkClient"}];
        v17 = [v16 remainderBitrateSplitForStreamToken:{objc_msgSend(v15, "unsignedIntValue")}];
        v18 = [objc_msgSend(streams objectForKeyedSubscript:{v15), "unsignedIntValue"}];
        v31 = 0;
        if ([v16 shouldCapStream:objc_msgSend(v15 cappedBitrate:{"unsignedIntValue"), &v31}] && (v19 = v18 + v17 * bitrate / weight, v20 = v19 >= v31, v21 = v19 - v31, v21 != 0 && v20))
        {
          v28 += v21;
        }

        else
        {
          v13 = v13 + v17;
        }
      }

      v11 = [obj countByEnumeratingWithState:&v33 objects:v32 count:16];
    }

    while (v11);
    v22 = v28;
    token = tokenCopy;
    groupBitrate = groupBitrateCopy;
  }

  else
  {
    v13 = 0.0;
    v22 = 0.0;
  }

  if (v13 <= 0.0)
  {
    v13 = 1.0;
  }

  return (groupBitrate + (v22 * ([objc_msgSend(-[NSMutableDictionary objectForKeyedSubscript:](self->_streamTokenToTableEntryMap objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInteger:", token)), "uplinkClient"), "remainderBitrateSplitForStreamToken:", token}] / v13)));
}

- (BOOL)isStreamGroupEnabled:(unsigned int)enabled
{
  v19 = *MEMORY[0x1E69E9840];
  allKeys = [(NSMutableDictionary *)self->_streamTokenToEnableMap allKeys];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = [allKeys countByEnumeratingWithState:&v15 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    while (2)
    {
      v9 = 0;
      do
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(allKeys);
        }

        v10 = *(*(&v15 + 1) + 8 * v9);
        v11 = [-[NSMutableDictionary objectForKeyedSubscript:](self->_streamTokenToTableEntryMap objectForKeyedSubscript:{v10), "streamGroupID"}];
        if ([-[NSMutableDictionary objectForKeyedSubscript:](self->_streamTokenToEnableMap objectForKeyedSubscript:{v10), "BOOLValue"}])
        {
          v12 = v11 == enabled;
        }

        else
        {
          v12 = 0;
        }

        if (v12)
        {
          LOBYTE(v6) = 1;
          return v6;
        }

        ++v9;
      }

      while (v7 != v9);
      v6 = [allKeys countByEnumeratingWithState:&v15 objects:v14 count:16];
      v7 = v6;
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  return v6;
}

- (BOOL)shouldUseMinMicBitrate:(unint64_t)bitrate streamToken:(int64_t)token remainderBitrate:(int64_t)remainderBitrate
{
  if ([-[NSMutableDictionary objectForKeyedSubscript:](self->_streamTokenToTableEntryMap objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInteger:", token)), "streamGroupID"}] != 1835623282)
  {
    return 0;
  }

  v9 = [objc_msgSend(-[NSMutableDictionary objectForKeyedSubscript:](self->_streamTokenToTableEntryMap objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInteger:", token)), "uplinkClient"), "qualityTierTableForStreamToken:", token}];
  v10 = [objc_msgSend(v9 objectForKeyedSubscript:{objc_msgSend(objc_msgSend(objc_msgSend(v9, "allKeys"), "sortedArrayUsingSelector:", sel_compare_), "firstObject")), "unsignedIntegerValue"}];
  return !remainderBitrate && v10 >= bitrate;
}

- (BOOL)shouldUseMultipleStreamGroupAlgorithm
{
  v20 = *MEMORY[0x1E69E9840];
  allKeys = [(NSMutableDictionary *)self->_streamTokenToEnableMap allKeys];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = [allKeys countByEnumeratingWithState:&v16 objects:v15 count:16];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = 0;
  v7 = *v17;
  do
  {
    for (i = 0; i != v5; ++i)
    {
      if (*v17 != v7)
      {
        objc_enumerationMutation(allKeys);
      }

      v9 = *(*(&v16 + 1) + 8 * i);
      v10 = [-[NSMutableDictionary objectForKeyedSubscript:](self->_streamTokenToTableEntryMap objectForKeyedSubscript:{v9), "streamGroupID"}];
      if ([-[NSMutableDictionary objectForKeyedSubscript:](self->_streamTokenToEnableMap objectForKeyedSubscript:{v9), "BOOLValue"}])
      {
        if (v10 > 1935897188)
        {
          v11 = v10 == 1937339233;
          v12 = 1935897189;
        }

        else
        {
          v11 = v10 == 1650745716;
          v12 = 1718909044;
        }

        if (v11 || v10 == v12)
        {
          v6 = 1;
        }
      }
    }

    v5 = [allKeys countByEnumeratingWithState:&v16 objects:v15 count:16];
  }

  while (v5);
  return v6;
}

- (id)baseNetworkBitrateSplitForTargetBitrate:(unsigned int)bitrate baseNetworkBitrate:(unint64_t *)networkBitrate
{
  v20 = *MEMORY[0x1E69E9840];
  v7 = [-[NSMutableDictionary allKeys](self->_bandwithAllocationTable "allKeys")];
  unsignedIntegerValue = [objc_msgSend(v7 "firstObject")];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = [v7 countByEnumeratingWithState:&v16 objects:v15 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
LABEL_3:
    v12 = 0;
    while (1)
    {
      if (*v17 != v11)
      {
        objc_enumerationMutation(v7);
      }

      v13 = *(*(&v16 + 1) + 8 * v12);
      if ([v13 unsignedIntValue] > bitrate)
      {
        break;
      }

      unsignedIntegerValue = [v13 unsignedIntegerValue];
      if (v10 == ++v12)
      {
        v10 = [v7 countByEnumeratingWithState:&v16 objects:v15 count:16];
        if (v10)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  *networkBitrate = unsignedIntegerValue;
  return -[NSMutableDictionary objectForKeyedSubscript:](self->_bandwithAllocationTable, "objectForKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithUnsignedInteger:unsignedIntegerValue]);
}

+ (id)valueForNetworkBitrate:(id)bitrate networkBitrate:(unsigned int)networkBitrate
{
  v4 = *&networkBitrate;
  v6 = [objc_msgSend(bitrate "allKeys")];
  v7 = [v6 count] - 1;
  v8 = +[VCArrayUtils insertionIndexForValue:array:](VCArrayUtils, "insertionIndexForValue:array:", [MEMORY[0x1E696AD98] numberWithUnsignedInt:v4], v6);
  if (v7 >= v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = v7;
  }

  v10 = [v6 objectAtIndexedSubscript:v9];

  return [bitrate objectForKeyedSubscript:v10];
}

- (id)targetBitratesForStreamToken:(int64_t)token targetNetworkBitrate:(unsigned int)bitrate preferNetworkBitrates:(BOOL)bitrates
{
  v5 = *&bitrate;
  v49 = *MEMORY[0x1E69E9840];
  if (!bitrates)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 5)
      {
        v9 = VRTraceErrorLogLevelToCSTR();
        v10 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *v45 = 136315650;
          *&v45[4] = v9;
          *&v45[12] = 2080;
          *&v45[14] = "[VCSessionUplinkBandwidthAllocatorOneToOne targetBitratesForStreamToken:targetNetworkBitrate:preferNetworkBitrates:]";
          *&v45[22] = 1024;
          LODWORD(v46) = 370;
          v11 = " [%s] %s:%d Media bitrate allocation not supported for U+1, calculating network bitrates";
          v12 = v10;
          v13 = 28;
LABEL_12:
          _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, v11, v45, v13);
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v8 = [(VCSessionUplinkBandwidthAllocatorOneToOne *)self performSelector:sel_logPrefix];
      }

      else
      {
        v8 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 5)
      {
        v14 = VRTraceErrorLogLevelToCSTR();
        v15 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *v45 = 136316162;
          *&v45[4] = v14;
          *&v45[12] = 2080;
          *&v45[14] = "[VCSessionUplinkBandwidthAllocatorOneToOne targetBitratesForStreamToken:targetNetworkBitrate:preferNetworkBitrates:]";
          *&v45[22] = 1024;
          LODWORD(v46) = 370;
          WORD2(v46) = 2112;
          *(&v46 + 6) = v8;
          HIWORD(v46) = 2048;
          selfCopy4 = self;
          v11 = " [%s] %s:%d %@(%p) Media bitrate allocation not supported for U+1, calculating network bitrates";
          v12 = v15;
          v13 = 48;
          goto LABEL_12;
        }
      }
    }
  }

  v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (!v16)
  {
    [VCSessionUplinkBandwidthAllocatorOneToOne targetBitratesForStreamToken:? targetNetworkBitrate:? preferNetworkBitrates:?];
    goto LABEL_37;
  }

  [(VCObject *)self lock];
  if (-[NSMutableDictionary objectForKeyedSubscript:](self->_streamTokenToEnableMap, "objectForKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithInteger:token]) && (objc_msgSend(-[NSMutableDictionary objectForKeyedSubscript:](self->_streamTokenToEnableMap, "objectForKeyedSubscript:", objc_msgSend(MEMORY[0x1E696AD98], "numberWithInteger:", token)), "BOOLValue") & 1) != 0)
  {
    if ([(VCSessionUplinkBandwidthAllocatorOneToOne *)self shouldUseMultipleStreamGroupAlgorithm])
    {
      v17 = [(VCSessionUplinkBandwidthAllocatorOneToOne *)self findBitrateSplitForStreamToken:token targetBitrate:v5];
      goto LABEL_18;
    }

    v20 = [-[NSMutableDictionary objectForKeyedSubscript:](self->_streamTokenToTableEntryMap objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInteger:", token)), "uplinkClient"}];
    if ([(VCSessionUplinkBandwidthAllocatorOneToOne *)self isStreamGroupEnabled:1667329381])
    {
      videoCallMicrophoneBandwidthTable = [v20 videoCallMicrophoneBandwidthTable];
    }

    else
    {
      videoCallMicrophoneBandwidthTable = [v20 microphoneOnlyBandwidthTable];
    }

    selfCopy4 = [VCSessionUplinkBandwidthAllocatorOneToOne valueForNetworkBitrate:videoCallMicrophoneBandwidthTable networkBitrate:v5, *v45, *&v45[16], v46, selfCopy4];
    v23 = [-[NSMutableDictionary objectForKeyedSubscript:](self->_streamTokenToTableEntryMap objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInteger:", token)), "streamGroupID"}];
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_34;
      }

      v25 = VRTraceErrorLogLevelToCSTR();
      v26 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_34;
      }

      v27 = FourccToCStr(v23);
      *v45 = 136315906;
      *&v45[4] = v25;
      *&v45[12] = 2080;
      *&v45[14] = "[VCSessionUplinkBandwidthAllocatorOneToOne targetBitratesForStreamToken:targetNetworkBitrate:preferNetworkBitrates:]";
      *&v45[22] = 1024;
      LODWORD(v46) = 390;
      WORD2(v46) = 2080;
      *(&v46 + 6) = v27;
      v28 = " [%s] %s:%d Calculate bitrate for streamGroup=%s";
      v29 = v26;
      v30 = 38;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v24 = [(VCSessionUplinkBandwidthAllocatorOneToOne *)self performSelector:sel_logPrefix];
      }

      else
      {
        v24 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_34;
      }

      v31 = VRTraceErrorLogLevelToCSTR();
      v32 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_34;
      }

      v33 = FourccToCStr(v23);
      *v45 = 136316418;
      *&v45[4] = v31;
      *&v45[12] = 2080;
      *&v45[14] = "[VCSessionUplinkBandwidthAllocatorOneToOne targetBitratesForStreamToken:targetNetworkBitrate:preferNetworkBitrates:]";
      *&v45[22] = 1024;
      LODWORD(v46) = 390;
      WORD2(v46) = 2112;
      *(&v46 + 6) = v24;
      HIWORD(v46) = 2048;
      selfCopy4 = self;
      LOWORD(v48) = 2080;
      *(&v48 + 2) = v33;
      v28 = " [%s] %s:%d %@(%p) Calculate bitrate for streamGroup=%s";
      v29 = v32;
      v30 = 58;
    }

    _os_log_impl(&dword_1DB56E000, v29, OS_LOG_TYPE_DEFAULT, v28, v45, v30);
LABEL_34:
    if (v23 == 1835623282)
    {
      v19 = v16;
      v18 = selfCopy4;
      goto LABEL_36;
    }

    if ([selfCopy4 unsignedIntValue] >= v5)
    {
      v18 = &unk_1F5799E28;
      goto LABEL_19;
    }

    v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{v5 - objc_msgSend(selfCopy4, "unsignedIntValue")}];
LABEL_18:
    v18 = v17;
LABEL_19:
    v19 = v16;
LABEL_36:
    [v19 addObject:{v18, *v45, *&v45[8], v46, selfCopy4, v48}];
    goto LABEL_37;
  }

  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() < 8)
    {
      goto LABEL_37;
    }

    v36 = VRTraceErrorLogLevelToCSTR();
    v37 = *MEMORY[0x1E6986650];
    v38 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (!os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_37;
      }

      *v45 = 136315906;
      *&v45[4] = v36;
      *&v45[12] = 2080;
      *&v45[14] = "[VCSessionUplinkBandwidthAllocatorOneToOne targetBitratesForStreamToken:targetNetworkBitrate:preferNetworkBitrates:]";
      *&v45[22] = 1024;
      LODWORD(v46) = 380;
      WORD2(v46) = 2048;
      *(&v46 + 6) = token;
      v39 = " [%s] %s:%d StreamToken=%ld is disabled";
      v40 = v37;
      v41 = 38;
LABEL_54:
      _os_log_impl(&dword_1DB56E000, v40, OS_LOG_TYPE_DEFAULT, v39, v45, v41);
      goto LABEL_37;
    }

    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
    {
      [VCSessionUplinkBandwidthAllocatorOneToOne targetBitratesForStreamToken:targetNetworkBitrate:preferNetworkBitrates:];
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v35 = [(VCSessionUplinkBandwidthAllocatorOneToOne *)self performSelector:sel_logPrefix];
    }

    else
    {
      v35 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v42 = VRTraceErrorLogLevelToCSTR();
      v43 = *MEMORY[0x1E6986650];
      v44 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (!os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_37;
        }

        *v45 = 136316418;
        *&v45[4] = v42;
        *&v45[12] = 2080;
        *&v45[14] = "[VCSessionUplinkBandwidthAllocatorOneToOne targetBitratesForStreamToken:targetNetworkBitrate:preferNetworkBitrates:]";
        *&v45[22] = 1024;
        LODWORD(v46) = 380;
        WORD2(v46) = 2112;
        *(&v46 + 6) = v35;
        HIWORD(v46) = 2048;
        selfCopy4 = self;
        LOWORD(v48) = 2048;
        *(&v48 + 2) = token;
        v39 = " [%s] %s:%d %@(%p) StreamToken=%ld is disabled";
        v40 = v43;
        v41 = 58;
        goto LABEL_54;
      }

      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
      {
        *v45 = 136316418;
        *&v45[4] = v42;
        *&v45[12] = 2080;
        *&v45[14] = "[VCSessionUplinkBandwidthAllocatorOneToOne targetBitratesForStreamToken:targetNetworkBitrate:preferNetworkBitrates:]";
        *&v45[22] = 1024;
        LODWORD(v46) = 380;
        WORD2(v46) = 2112;
        *(&v46 + 6) = v35;
        HIWORD(v46) = 2048;
        selfCopy4 = self;
        LOWORD(v48) = 2048;
        *(&v48 + 2) = token;
        _os_log_debug_impl(&dword_1DB56E000, v43, OS_LOG_TYPE_DEBUG, " [%s] %s:%d %@(%p) StreamToken=%ld is disabled", v45, 0x3Au);
      }
    }
  }

LABEL_37:
  [(VCObject *)self unlock:*v45];
  return v16;
}

- (id)streamIDsIfStreamTokenIsEnabled:(int64_t)enabled
{
  v29 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  if (-[NSMutableDictionary objectForKeyedSubscript:](self->_streamTokenToEnableMap, "objectForKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithInteger:enabled]) && objc_msgSend(-[NSMutableDictionary objectForKeyedSubscript:](self->_streamTokenToEnableMap, "objectForKeyedSubscript:", objc_msgSend(MEMORY[0x1E696AD98], "numberWithInteger:", enabled)), "BOOLValue"))
  {
    [array addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", objc_msgSend(-[NSMutableDictionary objectForKeyedSubscript:](self->_streamTokenToTableEntryMap, "objectForKeyedSubscript:", objc_msgSend(MEMORY[0x1E696AD98], "numberWithInteger:", enabled)), "streamID"))}];
    return array;
  }

  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() < 8)
    {
      return array;
    }

    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *MEMORY[0x1E6986650];
    v9 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        return array;
      }

      v17 = 136315906;
      v18 = v7;
      v19 = 2080;
      v20 = "[VCSessionUplinkBandwidthAllocatorOneToOne streamIDsIfStreamTokenIsEnabled:]";
      v21 = 1024;
      v22 = 412;
      v23 = 2048;
      enabledCopy = enabled;
      v10 = " [%s] %s:%d StreamToken=%ld is disabled";
      v11 = v8;
      v12 = 38;
LABEL_16:
      _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, v10, &v17, v12);
      return array;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [VCSessionUplinkBandwidthAllocatorOneToOne streamIDsIfStreamTokenIsEnabled:];
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v6 = [(VCSessionUplinkBandwidthAllocatorOneToOne *)self performSelector:sel_logPrefix];
    }

    else
    {
      v6 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v13 = VRTraceErrorLogLevelToCSTR();
      v14 = *MEMORY[0x1E6986650];
      v15 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          return array;
        }

        v17 = 136316418;
        v18 = v13;
        v19 = 2080;
        v20 = "[VCSessionUplinkBandwidthAllocatorOneToOne streamIDsIfStreamTokenIsEnabled:]";
        v21 = 1024;
        v22 = 412;
        v23 = 2112;
        enabledCopy = v6;
        v25 = 2048;
        selfCopy2 = self;
        v27 = 2048;
        enabledCopy3 = enabled;
        v10 = " [%s] %s:%d %@(%p) StreamToken=%ld is disabled";
        v11 = v14;
        v12 = 58;
        goto LABEL_16;
      }

      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        v17 = 136316418;
        v18 = v13;
        v19 = 2080;
        v20 = "[VCSessionUplinkBandwidthAllocatorOneToOne streamIDsIfStreamTokenIsEnabled:]";
        v21 = 1024;
        v22 = 412;
        v23 = 2112;
        enabledCopy = v6;
        v25 = 2048;
        selfCopy2 = self;
        v27 = 2048;
        enabledCopy3 = enabled;
        _os_log_debug_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEBUG, " [%s] %s:%d %@(%p) StreamToken=%ld is disabled", &v17, 0x3Au);
      }
    }
  }

  return array;
}

- (id)streamIDsForStreamToken:(int64_t)token targetBitrate:(unsigned int)bitrate
{
  v4 = *&bitrate;
  [(VCObject *)self lock];
  if (-[VCSessionUplinkBandwidthAllocatorOneToOne shouldUseMultipleStreamGroupAlgorithm](self, "shouldUseMultipleStreamGroupAlgorithm") && ![-[VCSessionUplinkBandwidthAllocatorOneToOne findBitrateSplitForStreamToken:targetBitrate:](self findBitrateSplitForStreamToken:token targetBitrate:{v4), "intValue"}])
  {
    [(VCObject *)self unlock];
    v9 = MEMORY[0x1E695DF70];

    return [v9 array];
  }

  else
  {
    v7 = [(VCSessionUplinkBandwidthAllocatorOneToOne *)self streamIDsIfStreamTokenIsEnabled:token];
    [(VCObject *)self unlock];
    return v7;
  }
}

- (void)recomputeAllocationTableIfRequired
{
  if ([(VCSessionUplinkBandwidthAllocatorOneToOne *)self shouldUseMultipleStreamGroupAlgorithm])
  {
    [(NSMutableDictionary *)self->_bandwithAllocationTable removeAllObjects];
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [OUTLINED_FUNCTION_18_0() getCurrentEnabledTierTables:? qualityIndices:? qualityIndexToStreamToken:?];
    [OUTLINED_FUNCTION_18_0() generateBandwidthAllocationTableWithTierTables:? qualityIndices:? qualityIndexToStreamToken:?];
  }
}

- (id)findBitrateSplitForStreamToken:(int64_t)token targetBitrate:(unsigned int)bitrate
{
  v32 = *MEMORY[0x1E69E9840];
  v26 = 0;
  v7 = [(VCSessionUplinkBandwidthAllocatorOneToOne *)self baseNetworkBitrateSplitForTargetBitrate:*&bitrate baseNetworkBitrate:&v26];
  v8 = 0x1E696A000uLL;
  v9 = [objc_msgSend(v7 objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInteger:", token)), "unsignedIntValue"}];
  v10 = bitrate - v26;
  v11 = [VCSessionUplinkBandwidthAllocatorOneToOne shouldUseMinMicBitrate:"shouldUseMinMicBitrate:streamToken:remainderBitrate:" streamToken:? remainderBitrate:?];
  if (bitrate <= 0x2710)
  {
    bitrateCopy = 10000;
  }

  else
  {
    bitrateCopy = bitrate;
  }

  if (v11)
  {
    v13 = bitrateCopy;
  }

  else
  {
    v13 = v9;
  }

  if (v10 >= 1 && v13)
  {
    v24 = v10 & ~(v10 >> 63);
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    allKeys = [v7 allKeys];
    v15 = [allKeys countByEnumeratingWithState:&v28 objects:v27 count:16];
    if (v15)
    {
      v16 = v15;
      v21 = v7;
      v22 = v13;
      tokenCopy = token;
      v17 = *v29;
      v18 = 0.0;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v29 != v17)
          {
            objc_enumerationMutation(allKeys);
          }

          v18 = v18 + [objc_msgSend(-[NSMutableDictionary objectForKeyedSubscript:](self->_streamTokenToTableEntryMap objectForKeyedSubscript:{*(*(&v28 + 1) + 8 * i), v21, v22, tokenCopy), "uplinkClient"), "remainderBitrateSplitForStreamToken:", objc_msgSend(*(*(&v28 + 1) + 8 * i), "unsignedIntValue")}];
        }

        v16 = [allKeys countByEnumeratingWithState:&v28 objects:v27 count:16];
      }

      while (v16);
      v8 = 0x1E696A000;
      LODWORD(v13) = v22;
      token = tokenCopy;
      v7 = v21;
    }

    else
    {
      v18 = 0.0;
    }

    if (v18 <= 0.0)
    {
      v18 = 1.0;
    }

    v13 = -[VCSessionUplinkBandwidthAllocatorOneToOne findAndSplitExtraBitrateFromCappedStreams:remainderBitrate:currentStreamGroupBitrate:streamToken:totalRemainderBitrateWeight:](self, "findAndSplitExtraBitrateFromCappedStreams:remainderBitrate:currentStreamGroupBitrate:streamToken:totalRemainderBitrateWeight:", v7, v24, (v13 + (v24 * ([objc_msgSend(-[NSMutableDictionary objectForKeyedSubscript:](self->_streamTokenToTableEntryMap objectForKeyedSubscript:{objc_msgSend(*(v8 + 3480), "numberWithInteger:", token)), "uplinkClient"), "remainderBitrateSplitForStreamToken:", token}] / v18))), token, v18);
    v25 = 0;
    if ([objc_msgSend(-[NSMutableDictionary objectForKeyedSubscript:](self->_streamTokenToTableEntryMap objectForKeyedSubscript:{objc_msgSend(*(v8 + 3480), "numberWithInteger:", token)), "uplinkClient"), "shouldCapStream:cappedBitrate:", token, &v25}] && v13 >= v25)
    {
      v13 = v25;
    }
  }

  return [*(v8 + 3480) numberWithUnsignedInteger:v13];
}

- (void)init
{
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_34())
    {
      return;
    }

    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0();
LABEL_11:
    _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    return;
  }

  if (objc_opt_respondsToSelector())
  {
    [OUTLINED_FUNCTION_18_0() performSelector:?];
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_0_0();
      OUTLINED_FUNCTION_3_1();
      goto LABEL_11;
    }
  }
}

- (void)targetBitratesForStreamToken:targetNetworkBitrate:preferNetworkBitrates:.cold.1()
{
  OUTLINED_FUNCTION_3();
  *&v3[6] = "[VCSessionUplinkBandwidthAllocatorOneToOne targetBitratesForStreamToken:targetNetworkBitrate:preferNetworkBitrates:]";
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_9_7(&dword_1DB56E000, v0, v1, " [%s] %s:%d StreamToken=%ld is disabled", v2, *v3, "[VCSessionUplinkBandwidthAllocatorOneToOne targetBitratesForStreamToken:targetNetworkBitrate:preferNetworkBitrates:]" >> 16, v4);
}

- (void)targetBitratesForStreamToken:(uint64_t)a1 targetNetworkBitrate:preferNetworkBitrates:.cold.2(uint64_t a1)
{
  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_34())
    {
      return;
    }

    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0();
LABEL_11:
    _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    return;
  }

  if (objc_opt_respondsToSelector())
  {
    [OUTLINED_FUNCTION_18_0() performSelector:?];
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_0_0();
      OUTLINED_FUNCTION_3_1();
      goto LABEL_11;
    }
  }
}

- (void)streamIDsIfStreamTokenIsEnabled:.cold.1()
{
  OUTLINED_FUNCTION_3();
  *&v3[6] = "[VCSessionUplinkBandwidthAllocatorOneToOne streamIDsIfStreamTokenIsEnabled:]";
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_9_7(&dword_1DB56E000, v0, v1, " [%s] %s:%d StreamToken=%ld is disabled", v2, *v3, "[VCSessionUplinkBandwidthAllocatorOneToOne streamIDsIfStreamTokenIsEnabled:]" >> 16, v4);
}

@end