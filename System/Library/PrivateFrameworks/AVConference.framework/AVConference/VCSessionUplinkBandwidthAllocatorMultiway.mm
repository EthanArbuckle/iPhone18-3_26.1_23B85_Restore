@interface VCSessionUplinkBandwidthAllocatorMultiway
- (BOOL)isEnabledStreamToken:(int64_t)a3;
- (BOOL)peerSubscription:(BOOL)a3 streamID:(unsigned __int16)a4;
- (VCSessionUplinkBandwidthAllocatorMultiway)init;
- (id)getBitrateToStreamTable;
- (id)repairStreamIDsForStreamToken:(int64_t)a3;
- (id)streamIDsForStreamToken:(int64_t)a3;
- (id)streamIDsForStreamToken:(int64_t)a3 targetBitrate:(unsigned int)a4;
- (id)streamIDsForStreamToken:(int64_t)a3 targetBitrateCap:(unsigned int)a4;
- (id)tableEntriesForStreamToken:(int64_t)a3 targetBitrate:(unsigned int)a4 remainingBitrate:(unsigned int *)a5 isLastEntryForStreamToken:(BOOL *)a6;
- (id)targetBitratesForStreamToken:(int64_t)a3 targetNetworkBitrate:(unsigned int)a4 preferNetworkBitrates:(BOOL)a5;
- (void)addBandwidthAllocationTableEntry:(id)a3 updateNow:(BOOL)a4;
- (void)dealloc;
- (void)init;
- (void)setCamera1080pAvailable:(BOOL)a3;
- (void)setRedundancyEnabled:(BOOL)a3;
- (void)setRedundancyEnabledFor720Stream:(BOOL)a3;
- (void)streamToken:(int64_t)a3 enabled:(BOOL)a4;
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

- (void)addBandwidthAllocationTableEntry:(id)a3 updateNow:(BOOL)a4
{
  v4 = a4;
  [(VCObject *)self lock];
  if (a3)
  {
    [(VCSessionBandwidthAllocationTable *)self->_table addBandwidthAllocationTableEntry:a3];
    streamTokenToEnableMap = self->_streamTokenToEnableMap;
    v8 = [a3 streamToken];
    [(NSMutableDictionary *)streamTokenToEnableMap setObject:MEMORY[0x1E695E110] forKeyedSubscript:v8];
  }

  if (v4)
  {
    [(VCSessionUplinkBandwidthAllocatorMultiway *)self _recomputeCurrentTable];
  }

  [(VCObject *)self unlock];
}

- (void)streamToken:(int64_t)a3 enabled:(BOOL)a4
{
  v4 = a4;
  [(VCObject *)self lock];
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v8 = [(NSMutableDictionary *)self->_streamTokenToEnableMap objectForKeyedSubscript:v7];
  if (v8 && [v8 BOOLValue] != v4)
  {
    -[NSMutableDictionary setObject:forKeyedSubscript:](self->_streamTokenToEnableMap, "setObject:forKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithBool:v4], v7);
    [(VCSessionUplinkBandwidthAllocatorMultiway *)self _recomputeCurrentTable];
  }

  [(VCObject *)self unlock];
}

- (BOOL)isEnabledStreamToken:(int64_t)a3
{
  v3 = -[NSMutableDictionary objectForKeyedSubscript:](self->_streamTokenToEnableMap, "objectForKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithInteger:a3]);

  return [v3 BOOLValue];
}

- (void)setRedundancyEnabled:(BOOL)a3
{
  v3 = a3;
  [(VCObject *)self lock];
  if (self->_redundancyEnabled != v3)
  {
    self->_redundancyEnabled = v3;
    [(VCSessionUplinkBandwidthAllocatorMultiway *)self _recomputeCurrentTable];
  }

  [(VCObject *)self unlock];
}

- (void)setRedundancyEnabledFor720Stream:(BOOL)a3
{
  v3 = a3;
  [(VCObject *)self lock];
  if (self->_redundancyEnabledFor720Stream != v3)
  {
    self->_redundancyEnabledFor720Stream = v3;
    [(VCSessionUplinkBandwidthAllocatorMultiway *)self _recomputeCurrentTable];
  }

  [(VCObject *)self unlock];
}

- (void)setCamera1080pAvailable:(BOOL)a3
{
  v3 = a3;
  [(VCObject *)self lock];
  if (self->_camera1080pAvailable != v3)
  {
    self->_camera1080pAvailable = v3;
    [(VCSessionUplinkBandwidthAllocatorMultiway *)self _recomputeCurrentTable];
  }

  [(VCObject *)self unlock];
}

- (BOOL)peerSubscription:(BOOL)a3 streamID:(unsigned __int16)a4
{
  v4 = a4;
  v5 = a3;
  [(VCObject *)self lock];
  v7 = -[VCSessionBandwidthAllocationTable entryForStreamID:](self->_table, "entryForStreamID:", [MEMORY[0x1E696AD98] numberWithUnsignedShort:v4]);
  if (!v7 || (v8 = v7, v9 = [v7 isSubscribedTo], objc_msgSend(v8, "setSubscribedTo:", v5), v9 == v5))
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

- (id)tableEntriesForStreamToken:(int64_t)a3 targetBitrate:(unsigned int)a4 remainingBitrate:(unsigned int *)a5 isLastEntryForStreamToken:(BOOL *)a6
{
  v33 = *MEMORY[0x1E69E9840];
  obj = [(NSArray *)[(NSDictionary *)self->_currentTable allKeys] sortedArrayUsingSelector:sel_compare_];
  v26 = a6;
  *a6 = 0;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v9 = [(NSArray *)obj countByEnumeratingWithState:&v29 objects:v28 count:16];
  v23 = a4;
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = *v30;
    v15 = a4;
LABEL_3:
    v16 = 0;
    while (1)
    {
      if (*v30 != v14)
      {
        objc_enumerationMutation(obj);
      }

      v17 = *(*(&v29 + 1) + 8 * v16);
      if ([v17 unsignedIntegerValue] > v15)
      {
        break;
      }

      v18 = [(NSDictionary *)self->_currentTable objectForKeyedSubscript:v17];
      v13 = [v18 objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInteger:", a3)}];
      v12 = [v17 unsignedIntValue];
      v19 = [v13 lastObject];
      if (v19)
      {
        v20 = v19;
        if (v11 == [v19 streamID])
        {
          v21 = 0;
        }

        else
        {
          v11 = [v20 streamID];
          v21 = 1;
        }

        *v26 = v21;
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
    v12 = 0;
    v13 = 0;
  }

  if (a5)
  {
    *a5 = v23 - v12;
  }

  return v13;
}

- (id)targetBitratesForStreamToken:(int64_t)a3 targetNetworkBitrate:(unsigned int)a4 preferNetworkBitrates:(BOOL)a5
{
  v5 = a5;
  v6 = *&a4;
  v54 = *MEMORY[0x1E69E9840];
  v34 = 0;
  v32 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v33 = 0;
  [(VCObject *)self lock];
  v9 = [(VCSessionUplinkBandwidthAllocatorMultiway *)self tableEntriesForStreamToken:a3 targetBitrate:v6 remainingBitrate:&v34 isLastEntryForStreamToken:&v33];
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

    v20 = [obj lastObject];
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
      if (v5)
      {
        v15 = [v14 maxNetworkBitrate];
      }

      else
      {
        v15 = [v14 maxMediaBitrate];
      }

      v16 = v15;
      v17 = [(VCSessionBandwidthAllocationTable *)self->_table shouldUseRepairBitrateForEntry:v14 isRedundancyEnabled:self->_redundancyEnabled isRedundancyEnabledFor720Stream:self->_redundancyEnabledFor720Stream];
      v18 = v17;
      if (v17)
      {
        v19 = [v14 repairMaxNetworkBitrate];
        if (!v5)
        {
          v16 = (v19 / 1.1);
        }
      }

      [v32 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", v16)}];
    }

    v11 = [obj countByEnumeratingWithState:&v50 objects:v49 count:16];
  }

  while (v11);
  if (v33)
  {
    v20 = [obj lastObject];
    if (!v18)
    {
LABEL_19:
      v21 = v20;
      v22 = [v20 minNetworkBitrate];
      if (v22 != [v21 maxNetworkBitrate])
      {
        [v32 removeLastObject];
        v23 = [v21 maxNetworkBitrate];
        v24 = [v21 minNetworkBitrate];
        if (v23 >= v34 + v24)
        {
          v25 = v34 + v24;
        }

        else
        {
          v25 = v23;
        }

        v26 = v25;
        if (!v5)
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

- (id)streamIDsForStreamToken:(int64_t)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [(VCObject *)self lock];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [(VCSessionBandwidthAllocationTable *)self->_table tableEntriesForStreamToken:a3];
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

- (id)repairStreamIDsForStreamToken:(int64_t)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [(VCObject *)self lock];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [(VCSessionBandwidthAllocationTable *)self->_table tableEntriesForStreamToken:a3];
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

- (id)streamIDsForStreamToken:(int64_t)a3 targetBitrate:(unsigned int)a4
{
  v4 = *&a4;
  v21 = *MEMORY[0x1E69E9840];
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v15 = 0;
  [(VCObject *)self lock];
  v8 = [(VCSessionUplinkBandwidthAllocatorMultiway *)self tableEntriesForStreamToken:a3 targetBitrate:v4 remainingBitrate:0 isLastEntryForStreamToken:&v15];
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

- (id)streamIDsForStreamToken:(int64_t)a3 targetBitrateCap:(unsigned int)a4
{
  v23 = a3;
  v35 = *MEMORY[0x1E69E9840];
  v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  [(VCObject *)self lock];
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v24 = self;
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
    v12 = a4;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v32 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v31 + 1) + 8 * i);
        if ([v14 unsignedIntegerValue] <= v12)
        {
          v15 = [(NSDictionary *)v24->_currentTable objectForKeyedSubscript:v14];
          [v7 addObjectsFromArray:{objc_msgSend(v15, "objectForKeyedSubscript:", objc_msgSend(MEMORY[0x1E696AD98], "numberWithInteger:", v23))}];
        }
      }

      v10 = [(NSArray *)v8 countByEnumeratingWithState:&v31 objects:v30 count:16];
    }

    while (v10);
  }

  [(VCObject *)v24 unlock];
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

  v21 = [v6 allObjects];
  return v21;
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