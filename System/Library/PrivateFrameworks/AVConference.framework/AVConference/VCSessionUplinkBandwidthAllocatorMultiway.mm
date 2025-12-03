@interface VCSessionUplinkBandwidthAllocatorMultiway
- (BOOL)isEnabledStreamToken:(int64_t)token;
- (BOOL)peerSubscription:(BOOL)subscription streamID:(unsigned __int16)d;
- (VCSessionUplinkBandwidthAllocatorMultiway)init;
- (id)getBitrateToStreamTable;
- (id)repairStreamIDsForStreamToken:(int64_t)token;
- (id)streamIDsForStreamToken:(int64_t)token;
- (id)streamIDsForStreamToken:(int64_t)token targetBitrate:(unsigned int)bitrate;
- (id)streamIDsForStreamToken:(int64_t)token targetBitrateCap:(unsigned int)cap;
- (id)tableEntriesForStreamToken:(int64_t)token targetBitrate:(unsigned int)bitrate remainingBitrate:(unsigned int *)remainingBitrate isLastEntryForStreamToken:(BOOL *)streamToken;
- (id)targetBitratesForStreamToken:(int64_t)token targetNetworkBitrate:(unsigned int)bitrate preferNetworkBitrates:(BOOL)bitrates;
- (void)addBandwidthAllocationTableEntry:(id)entry updateNow:(BOOL)now;
- (void)dealloc;
- (void)init;
- (void)setCamera1080pAvailable:(BOOL)available;
- (void)setRedundancyEnabled:(BOOL)enabled;
- (void)setRedundancyEnabledFor720Stream:(BOOL)stream;
- (void)streamToken:(int64_t)token enabled:(BOOL)enabled;
@end

@implementation VCSessionUplinkBandwidthAllocatorMultiway

- (VCSessionUplinkBandwidthAllocatorMultiway)init
{
  v7 = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = VCSessionUplinkBandwidthAllocatorMultiway;
  v2 = [(VCObject *)&v6 init];
  if (v2)
  {
    v3 = [[VCSessionBandwidthAllocationTable alloc] initWithType:1];
    v2->_table = v3;
    if (v3)
    {
      v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v2->_streamTokenToEnableMap = v4;
      if (v4)
      {
        v2->_camera1080pAvailable = [+[VCVideoCaptureServer VCVideoCaptureServerSingleton](VCVideoCaptureServer "VCVideoCaptureServerSingleton")];
        return v2;
      }

      [VCSessionUplinkBandwidthAllocatorMultiway init];
    }

    else
    {
      [VCSessionUplinkBandwidthAllocatorMultiway init];
    }

    return 0;
  }

  return v2;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = VCSessionUplinkBandwidthAllocatorMultiway;
  [(VCObject *)&v3 dealloc];
}

- (void)addBandwidthAllocationTableEntry:(id)entry updateNow:(BOOL)now
{
  nowCopy = now;
  [(VCObject *)self lock];
  if (entry)
  {
    [(VCSessionBandwidthAllocationTable *)self->_table addBandwidthAllocationTableEntry:entry];
    streamTokenToEnableMap = self->_streamTokenToEnableMap;
    streamToken = [entry streamToken];
    [(NSMutableDictionary *)streamTokenToEnableMap setObject:MEMORY[0x1E695E110] forKeyedSubscript:streamToken];
  }

  if (nowCopy)
  {
    [(VCSessionUplinkBandwidthAllocatorMultiway *)self _recomputeCurrentTable];
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
    [(VCSessionUplinkBandwidthAllocatorMultiway *)self _recomputeCurrentTable];
  }

  [(VCObject *)self unlock];
}

- (BOOL)isEnabledStreamToken:(int64_t)token
{
  v3 = -[NSMutableDictionary objectForKeyedSubscript:](self->_streamTokenToEnableMap, "objectForKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithInteger:token]);

  return [v3 BOOLValue];
}

- (void)setRedundancyEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  [(VCObject *)self lock];
  if (self->_redundancyEnabled != enabledCopy)
  {
    self->_redundancyEnabled = enabledCopy;
    [(VCSessionUplinkBandwidthAllocatorMultiway *)self _recomputeCurrentTable];
  }

  [(VCObject *)self unlock];
}

- (void)setRedundancyEnabledFor720Stream:(BOOL)stream
{
  streamCopy = stream;
  [(VCObject *)self lock];
  if (self->_redundancyEnabledFor720Stream != streamCopy)
  {
    self->_redundancyEnabledFor720Stream = streamCopy;
    [(VCSessionUplinkBandwidthAllocatorMultiway *)self _recomputeCurrentTable];
  }

  [(VCObject *)self unlock];
}

- (void)setCamera1080pAvailable:(BOOL)available
{
  availableCopy = available;
  [(VCObject *)self lock];
  if (self->_camera1080pAvailable != availableCopy)
  {
    self->_camera1080pAvailable = availableCopy;
    [(VCSessionUplinkBandwidthAllocatorMultiway *)self _recomputeCurrentTable];
  }

  [(VCObject *)self unlock];
}

- (BOOL)peerSubscription:(BOOL)subscription streamID:(unsigned __int16)d
{
  dCopy = d;
  subscriptionCopy = subscription;
  [(VCObject *)self lock];
  v7 = -[VCSessionBandwidthAllocationTable entryForStreamID:](self->_table, "entryForStreamID:", [MEMORY[0x1E696AD98] numberWithUnsignedShort:dCopy]);
  if (!v7 || (v8 = v7, v9 = [v7 isSubscribedTo], objc_msgSend(v8, "setSubscribedTo:", subscriptionCopy), v9 == subscriptionCopy))
  {
    v10 = 0;
  }

  else
  {
    [(VCSessionUplinkBandwidthAllocatorMultiway *)self _recomputeCurrentTable];
    v10 = 1;
  }

  [(VCObject *)self unlock];
  return v10;
}

- (id)tableEntriesForStreamToken:(int64_t)token targetBitrate:(unsigned int)bitrate remainingBitrate:(unsigned int *)remainingBitrate isLastEntryForStreamToken:(BOOL *)streamToken
{
  v33 = *MEMORY[0x1E69E9840];
  obj = [(NSArray *)[(NSDictionary *)self->_currentTable allKeys] sortedArrayUsingSelector:sel_compare_];
  streamTokenCopy = streamToken;
  *streamToken = 0;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v9 = [(NSArray *)obj countByEnumeratingWithState:&v29 objects:v28 count:16];
  bitrateCopy = bitrate;
  if (v9)
  {
    v10 = v9;
    streamID = 0;
    unsignedIntValue = 0;
    v13 = 0;
    v14 = *v30;
    bitrateCopy2 = bitrate;
LABEL_3:
    v16 = 0;
    while (1)
    {
      if (*v30 != v14)
      {
        objc_enumerationMutation(obj);
      }

      v17 = *(*(&v29 + 1) + 8 * v16);
      if ([v17 unsignedIntegerValue] > bitrateCopy2)
      {
        break;
      }

      v18 = [(NSDictionary *)self->_currentTable objectForKeyedSubscript:v17];
      v13 = [v18 objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInteger:", token)}];
      unsignedIntValue = [v17 unsignedIntValue];
      lastObject = [v13 lastObject];
      if (lastObject)
      {
        v20 = lastObject;
        if (streamID == [lastObject streamID])
        {
          v21 = 0;
        }

        else
        {
          streamID = [v20 streamID];
          v21 = 1;
        }

        *streamTokenCopy = v21;
      }

      if (v10 == ++v16)
      {
        v10 = [(NSArray *)obj countByEnumeratingWithState:&v29 objects:v28 count:16];
        if (v10)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  else
  {
    unsignedIntValue = 0;
    v13 = 0;
  }

  if (remainingBitrate)
  {
    *remainingBitrate = bitrateCopy - unsignedIntValue;
  }

  return v13;
}

- (id)targetBitratesForStreamToken:(int64_t)token targetNetworkBitrate:(unsigned int)bitrate preferNetworkBitrates:(BOOL)bitrates
{
  bitratesCopy = bitrates;
  v6 = *&bitrate;
  v54 = *MEMORY[0x1E69E9840];
  v34 = 0;
  v32 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v33 = 0;
  [(VCObject *)self lock];
  v9 = [(VCSessionUplinkBandwidthAllocatorMultiway *)self tableEntriesForStreamToken:token targetBitrate:v6 remainingBitrate:&v34 isLastEntryForStreamToken:&v33];
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  obj = v9;
  v10 = [v9 countByEnumeratingWithState:&v50 objects:v49 count:16];
  if (!v10)
  {
    if (v33 != 1)
    {
      goto LABEL_28;
    }

    lastObject = [obj lastObject];
    goto LABEL_19;
  }

  v11 = v10;
  v12 = *v51;
  do
  {
    for (i = 0; i != v11; ++i)
    {
      if (*v51 != v12)
      {
        objc_enumerationMutation(obj);
      }

      v14 = *(*(&v50 + 1) + 8 * i);
      if (bitratesCopy)
      {
        maxNetworkBitrate = [v14 maxNetworkBitrate];
      }

      else
      {
        maxNetworkBitrate = [v14 maxMediaBitrate];
      }

      v16 = maxNetworkBitrate;
      v17 = [(VCSessionBandwidthAllocationTable *)self->_table shouldUseRepairBitrateForEntry:v14 isRedundancyEnabled:self->_redundancyEnabled isRedundancyEnabledFor720Stream:self->_redundancyEnabledFor720Stream];
      v18 = v17;
      if (v17)
      {
        repairMaxNetworkBitrate = [v14 repairMaxNetworkBitrate];
        if (!bitratesCopy)
        {
          v16 = (repairMaxNetworkBitrate / 1.1);
        }
      }

      [v32 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", v16)}];
    }

    v11 = [obj countByEnumeratingWithState:&v50 objects:v49 count:16];
  }

  while (v11);
  if (v33)
  {
    lastObject = [obj lastObject];
    if (!v18)
    {
LABEL_19:
      v21 = lastObject;
      minNetworkBitrate = [lastObject minNetworkBitrate];
      if (minNetworkBitrate != [v21 maxNetworkBitrate])
      {
        [v32 removeLastObject];
        maxNetworkBitrate2 = [v21 maxNetworkBitrate];
        minNetworkBitrate2 = [v21 minNetworkBitrate];
        if (maxNetworkBitrate2 >= v34 + minNetworkBitrate2)
        {
          v25 = v34 + minNetworkBitrate2;
        }

        else
        {
          v25 = maxNetworkBitrate2;
        }

        v26 = v25;
        if (!bitratesCopy)
        {
          v26 = v25 / 1.1;
        }

        v27 = v26;
        [v32 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", v26)}];
        if (VRTraceGetErrorLogLevelForModule() >= 6)
        {
          v28 = VRTraceErrorLogLevelToCSTR();
          v29 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136316674;
            v36 = v28;
            v37 = 2080;
            v38 = "[VCSessionUplinkBandwidthAllocatorMultiway targetBitratesForStreamToken:targetNetworkBitrate:preferNetworkBitrates:]";
            v39 = 1024;
            v40 = 206;
            v41 = 2112;
            v42 = v21;
            v43 = 1024;
            v44 = v34;
            v45 = 1024;
            v46 = v25;
            v47 = 1024;
            v48 = v27;
            _os_log_impl(&dword_1DB56E000, v29, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Last entry=%@ will use remainingBitrate=%d available networkBitrate=%d bitrate=%d", buf, 0x38u);
          }
        }
      }
    }
  }

LABEL_28:
  [(VCObject *)self unlock];
  return v32;
}

- (id)streamIDsForStreamToken:(int64_t)token
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [(VCObject *)self lock];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [(VCSessionBandwidthAllocationTable *)self->_table tableEntriesForStreamToken:token];
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v12 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [v5 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", objc_msgSend(*(*(&v13 + 1) + 8 * v10++), "streamID"))}];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v13 objects:v12 count:16];
    }

    while (v8);
  }

  [(VCObject *)self unlock];
  return v5;
}

- (id)repairStreamIDsForStreamToken:(int64_t)token
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [(VCObject *)self lock];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [(VCSessionBandwidthAllocationTable *)self->_table tableEntriesForStreamToken:token];
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v12 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [v5 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", objc_msgSend(*(*(&v13 + 1) + 8 * v10++), "repairStreamID"))}];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v13 objects:v12 count:16];
    }

    while (v8);
  }

  [(VCObject *)self unlock];
  return v5;
}

- (id)streamIDsForStreamToken:(int64_t)token targetBitrate:(unsigned int)bitrate
{
  v4 = *&bitrate;
  v21 = *MEMORY[0x1E69E9840];
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v15 = 0;
  [(VCObject *)self lock];
  v8 = [(VCSessionUplinkBandwidthAllocatorMultiway *)self tableEntriesForStreamToken:token targetBitrate:v4 remainingBitrate:0 isLastEntryForStreamToken:&v15];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v16 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        [v7 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", objc_msgSend(v13, "streamID"))}];
        if ([v13 v2StreamID])
        {
          [v7 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", objc_msgSend(v13, "v2StreamID"))}];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v17 objects:v16 count:16];
    }

    while (v10);
  }

  [(VCObject *)self unlock];
  return v7;
}

- (id)streamIDsForStreamToken:(int64_t)token targetBitrateCap:(unsigned int)cap
{
  tokenCopy = token;
  v35 = *MEMORY[0x1E69E9840];
  v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  [(VCObject *)self lock];
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  selfCopy = self;
  v8 = [(NSArray *)[(NSDictionary *)self->_currentTable allKeys] sortedArrayUsingSelector:sel_compare_];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v9 = [(NSArray *)v8 countByEnumeratingWithState:&v31 objects:v30 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v32;
    capCopy = cap;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v32 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v31 + 1) + 8 * i);
        if ([v14 unsignedIntegerValue] <= capCopy)
        {
          v15 = [(NSDictionary *)selfCopy->_currentTable objectForKeyedSubscript:v14];
          [v7 addObjectsFromArray:{objc_msgSend(v15, "objectForKeyedSubscript:", objc_msgSend(MEMORY[0x1E696AD98], "numberWithInteger:", tokenCopy))}];
        }
      }

      v10 = [(NSArray *)v8 countByEnumeratingWithState:&v31 objects:v30 count:16];
    }

    while (v10);
  }

  [(VCObject *)selfCopy unlock];
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v16 = [v7 countByEnumeratingWithState:&v26 objects:v25 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v27;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v27 != v18)
        {
          objc_enumerationMutation(v7);
        }

        v20 = *(*(&v26 + 1) + 8 * j);
        [v6 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", objc_msgSend(v20, "streamID"))}];
        if ([v20 v2StreamID])
        {
          [v6 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", objc_msgSend(v20, "v2StreamID"))}];
        }
      }

      v17 = [v7 countByEnumeratingWithState:&v26 objects:v25 count:16];
    }

    while (v17);
  }

  allObjects = [v6 allObjects];
  return allObjects;
}

- (id)getBitrateToStreamTable
{
  [(VCObject *)self lock];
  v3 = [(NSDictionary *)self->_currentTable copy];
  [(VCObject *)self unlock];
  return v3;
}

- (void)init
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to allocate the uplink bandwidth allocation table", v2, v3, v4, v5, 2u);
    }
  }
}

@end