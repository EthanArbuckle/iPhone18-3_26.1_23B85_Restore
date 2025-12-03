@interface VCSessionDownlinkBandwidthAllocator
+ (id)sortMediaEntriesGroupIds:(id)ids;
- (VCSessionDownlinkBandwidthAllocator)initWithReportingAgent:(opaqueRTCReporting *)agent;
- (id)distributeBitrate:(unsigned int)bitrate;
- (unint64_t)simultaneousTalkers;
- (unsigned)requiredAudioBitrate:(unsigned int)bitrate highestAudioBitrates:(id)bitrates;
- (void)client:(id)client didActualNetworkBitrateChangeForStreamGroupID:(unsigned int)d;
- (void)dealloc;
- (void)deregisterForBandwidthAllocationWithClient:(id)client;
- (void)registerForBandwidthAllocationWithClient:(id)client;
- (void)reportingSessionParticipantEventBitrateChanged:(id)changed optedInNetworkBitrate:(unsigned int)bitrate actualNetworkBitrate:(unsigned int)networkBitrate optedInStreamID:(id)d actualStreamID:(id)iD;
- (void)reset;
- (void)sortMediaEntries;
- (void)updateHighestAudioBitrates:(id)bitrates bitrate:(unsigned int)bitrate;
- (void)updateSelectedMediaEntriesForClientWithUUID:(id)d;
@end

@implementation VCSessionDownlinkBandwidthAllocator

- (VCSessionDownlinkBandwidthAllocator)initWithReportingAgent:(opaqueRTCReporting *)agent
{
  v8 = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = VCSessionDownlinkBandwidthAllocator;
  v4 = [(VCSessionDownlinkBandwidthAllocator *)&v7 init];
  if (v4)
  {
    v4->_clients = objc_alloc_init(MEMORY[0x1E695DF70]);
    v4->_reportingAgent = agent;
    if (agent)
    {
      CFRetain(agent);
    }

    CustomRootQueue = VCDispatchQueue_GetCustomRootQueue(37);
    v4->_clientQueue = dispatch_queue_create_with_target_V2("com.apple.AVConference.DOWN.VCBandwidth.clientQueue", 0, CustomRootQueue);
    v4->_sortedMediaEntries = objc_alloc_init(MEMORY[0x1E695DF70]);
    v4->_allocatedMediaEntriesForClients = objc_alloc_init(MEMORY[0x1E695DF90]);
    v4->_selectedMediaEntriesForClients = objc_alloc_init(MEMORY[0x1E695DF90]);
    v4->_maxConcurrentVideoClients = [+[VCHardwareSettingsEmbedded sharedInstance](VCHardwareSettingsEmbedded maxActiveVideoDecoders];
  }

  return v4;
}

- (void)dealloc
{
  v5 = *MEMORY[0x1E69E9840];

  dispatch_release(self->_clientQueue);
  reportingAgent = self->_reportingAgent;
  if (reportingAgent)
  {
    CFRelease(reportingAgent);
  }

  v4.receiver = self;
  v4.super_class = VCSessionDownlinkBandwidthAllocator;
  [(VCSessionDownlinkBandwidthAllocator *)&v4 dealloc];
}

+ (id)sortMediaEntriesGroupIds:(id)ids
{
  array = [MEMORY[0x1E695DF70] array];
  v5 = [MEMORY[0x1E695DF70] arrayWithArray:ids];
  if ([ids containsObject:&unk_1F579B2E0])
  {
    [array addObject:&unk_1F579B2E0];
  }

  if ([ids containsObject:&unk_1F579B2F8])
  {
    [array addObject:&unk_1F579B2F8];
  }

  if ([ids containsObject:&unk_1F579B310])
  {
    [array addObject:&unk_1F579B310];
  }

  if ([ids containsObject:&unk_1F579B328])
  {
    [array addObject:&unk_1F579B328];
  }

  [v5 removeObjectsInArray:array];
  [v5 sortUsingSelector:sel_compare_];
  [array addObjectsFromArray:v5];
  return array;
}

- (void)sortMediaEntries
{
  selfCopy = self;
  v84 = *MEMORY[0x1E69E9840];
  [(VCSessionDownlinkBandwidthAllocator *)self reset];
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  obj = selfCopy->_clients;
  v51 = [(NSMutableArray *)obj countByEnumeratingWithState:&v80 objects:v79 count:16];
  v52 = selfCopy;
  if (!v51)
  {
    v49 = 0;
    goto LABEL_31;
  }

  v49 = 0;
  v50 = *v81;
  *&v4 = 136316162;
  v47 = v4;
  do
  {
    for (i = 0; i != v51; ++i)
    {
      if (*v81 != v50)
      {
        objc_enumerationMutation(obj);
      }

      v6 = *(*(&v80 + 1) + 8 * i);
      v75 = 0u;
      v76 = 0u;
      v77 = 0u;
      v78 = 0u;
      v53 = v6;
      mediaEntries = [v6 mediaEntries];
      v8 = [mediaEntries countByEnumeratingWithState:&v75 objects:v74 count:16];
      if (v8)
      {
        v9 = v8;
        v54 = i;
        v10 = 0;
        v11 = *v76;
        do
        {
          for (j = 0; j != v9; ++j)
          {
            if (*v76 != v11)
            {
              objc_enumerationMutation(mediaEntries);
            }

            v13 = *(*(&v75 + 1) + 8 * j);
            v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v13, "streamGroupID")}];
            v15 = [v3 objectForKeyedSubscript:v14];
            if (!v15)
            {
              v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
              [v3 setObject:v15 forKeyedSubscript:v14];
            }

            v10 |= [v13 type] == 1;
            [v15 addObject:v13];
          }

          v9 = [mediaEntries countByEnumeratingWithState:&v75 objects:v74 count:16];
        }

        while (v9);
        i = v54;
        if (v10)
        {
          ++v49;
          selfCopy = v52;
          continue;
        }
      }

      selfCopy = v52;
      if (objc_opt_class() == v52)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 5)
        {
          v24 = VRTraceErrorLogLevelToCSTR();
          v25 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            uuid = [v53 uuid];
            mediaEntries2 = [v53 mediaEntries];
            *buf = v47;
            v61 = v24;
            v62 = 2080;
            v63 = "[VCSessionDownlinkBandwidthAllocator sortMediaEntries]";
            v64 = 1024;
            v65 = 122;
            v66 = 2112;
            v67 = uuid;
            v68 = 2112;
            v69 = mediaEntries2;
            v21 = v25;
            v22 = "VCBandwidth [%s] %s:%d No audio entry for client=%@ mediaEntries=%@";
            v23 = 48;
            goto LABEL_26;
          }
        }
      }

      else
      {
        v16 = &stru_1F570E008;
        if (objc_opt_respondsToSelector())
        {
          v16 = [(VCSessionDownlinkBandwidthAllocator *)v52 performSelector:sel_logPrefix];
        }

        if (VRTraceGetErrorLogLevelForModule() >= 5)
        {
          v17 = VRTraceErrorLogLevelToCSTR();
          v18 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            uuid2 = [v53 uuid];
            mediaEntries3 = [v53 mediaEntries];
            *buf = 136316674;
            v61 = v17;
            v62 = 2080;
            v63 = "[VCSessionDownlinkBandwidthAllocator sortMediaEntries]";
            v64 = 1024;
            v65 = 122;
            v66 = 2112;
            v67 = v16;
            v68 = 2048;
            v69 = v52;
            v70 = 2112;
            v71 = uuid2;
            v72 = 2112;
            v73 = mediaEntries3;
            v21 = v18;
            v22 = "VCBandwidth [%s] %s:%d %@(%p) No audio entry for client=%@ mediaEntries=%@";
            v23 = 68;
LABEL_26:
            _os_log_impl(&dword_1DB56E000, v21, OS_LOG_TYPE_DEFAULT, v22, buf, v23);
            continue;
          }
        }
      }
    }

    v51 = [(NSMutableArray *)obj countByEnumeratingWithState:&v80 objects:v79 count:16];
  }

  while (v51);
LABEL_31:
  v28 = +[VCSessionDownlinkBandwidthAllocator sortMediaEntriesGroupIds:](VCSessionDownlinkBandwidthAllocator, "sortMediaEntriesGroupIds:", [v3 allKeys]);
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v29 = [v28 countByEnumeratingWithState:&v56 objects:v55 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v57;
    v32 = v49;
    do
    {
      for (k = 0; k != v30; ++k)
      {
        if (*v57 != v31)
        {
          objc_enumerationMutation(v28);
        }

        v34 = [v3 objectForKeyedSubscript:*(*(&v56 + 1) + 8 * k)];
        [v34 sortUsingSelector:sel_compare_];
        [(NSMutableArray *)selfCopy->_sortedMediaEntries addObjectsFromArray:v34];
      }

      v30 = [v28 countByEnumeratingWithState:&v56 objects:v55 count:16];
    }

    while (v30);
  }

  else
  {
    v32 = v49;
  }

  [(NSMutableArray *)selfCopy->_sortedMediaEntries sortUsingSelector:sel_compare_];
  if (v32)
  {
    v35 = 0;
    v36 = v32;
    do
    {
      if ([-[NSMutableArray objectAtIndexedSubscript:](selfCopy->_sortedMediaEntries objectAtIndexedSubscript:{v35), "type"}] != 1)
      {
        if (objc_opt_class() == v52)
        {
          if (VRTraceGetErrorLogLevelForModule() < 5)
          {
            goto LABEL_53;
          }

          v44 = VRTraceErrorLogLevelToCSTR();
          v45 = *MEMORY[0x1E6986650];
          if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_53;
          }

          sortedMediaEntries = v52->_sortedMediaEntries;
          *buf = 136315906;
          v61 = v44;
          v62 = 2080;
          v63 = "[VCSessionDownlinkBandwidthAllocator sortMediaEntries]";
          v64 = 1024;
          v65 = 140;
          v66 = 2112;
          v67 = sortedMediaEntries;
          v41 = v45;
          v42 = "VCBandwidth [%s] %s:%d Missing audio entries in sortedMediaEntries=%@";
          v43 = 38;
        }

        else
        {
          v37 = &stru_1F570E008;
          if (objc_opt_respondsToSelector())
          {
            v37 = [(VCSessionDownlinkBandwidthAllocator *)v52 performSelector:sel_logPrefix];
          }

          if (VRTraceGetErrorLogLevelForModule() < 5)
          {
            goto LABEL_53;
          }

          v38 = VRTraceErrorLogLevelToCSTR();
          v39 = *MEMORY[0x1E6986650];
          if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_53;
          }

          v40 = v52->_sortedMediaEntries;
          *buf = 136316418;
          v61 = v38;
          v62 = 2080;
          v63 = "[VCSessionDownlinkBandwidthAllocator sortMediaEntries]";
          v64 = 1024;
          v65 = 140;
          v66 = 2112;
          v67 = v37;
          v68 = 2048;
          v69 = v52;
          v70 = 2112;
          v71 = v40;
          v41 = v39;
          v42 = "VCBandwidth [%s] %s:%d %@(%p) Missing audio entries in sortedMediaEntries=%@";
          v43 = 58;
        }

        _os_log_impl(&dword_1DB56E000, v41, OS_LOG_TYPE_DEFAULT, v42, buf, v43);
      }

LABEL_53:
      ++v35;
      selfCopy = v52;
    }

    while (v36 != v35);
  }
}

- (unsigned)requiredAudioBitrate:(unsigned int)bitrate highestAudioBitrates:(id)bitrates
{
  v6 = [bitrates count];
  if (v6)
  {
    if ([objc_msgSend(bitrates objectAtIndexedSubscript:{0), "unsignedIntValue"}] >= bitrate)
    {
      LODWORD(v6) = 0;
    }

    else
    {
      LODWORD(v6) = bitrate - [objc_msgSend(bitrates objectAtIndexedSubscript:{0), "unsignedIntValue"}];
    }
  }

  return v6;
}

- (void)updateHighestAudioBitrates:(id)bitrates bitrate:(unsigned int)bitrate
{
  v4 = *&bitrate;
  if ([(VCSessionDownlinkBandwidthAllocator *)self requiredAudioBitrate:*&bitrate highestAudioBitrates:bitrates])
  {
    [bitrates setObject:objc_msgSend(MEMORY[0x1E696AD98] atIndexedSubscript:{"numberWithUnsignedInt:", v4), 0}];

    [bitrates sortUsingSelector:sel_compare_];
  }
}

- (unint64_t)simultaneousTalkers
{
  v3 = [(NSMutableArray *)self->_clients count];
  minParticipantCountSendVoiceActiveOnly = [+[VCDefaults sharedInstance](VCDefaults minParticipantCountSendVoiceActiveOnly];
  result = [(NSMutableArray *)self->_clients count];
  v6 = (result + 1) >> 1;
  if (v6 >= 4)
  {
    LODWORD(v6) = 4;
  }

  if (v3 >= minParticipantCountSendVoiceActiveOnly)
  {
    return v6;
  }

  return result;
}

- (id)distributeBitrate:(unsigned int)bitrate
{
  v49 = *MEMORY[0x1E69E9840];
  if (self->_forceFullBandwidth)
  {
    bitrateCopy = 2000000;
  }

  else
  {
    bitrateCopy = bitrate;
  }

  if (!bitrateCopy)
  {
    return 0;
  }

  v25 = 0;
  v26 = &v25;
  v27 = 0x3052000000;
  v28 = __Block_byref_object_copy__33;
  v29 = __Block_byref_object_dispose__33;
  v30 = 0;
  clientQueue = self->_clientQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__VCSessionDownlinkBandwidthAllocator_distributeBitrate___block_invoke;
  block[3] = &unk_1E85F64A0;
  v24 = bitrateCopy;
  block[4] = self;
  block[5] = &v25;
  dispatch_sync(clientQueue, block);
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v32 = v5;
      v33 = 2080;
      v34 = "[VCSessionDownlinkBandwidthAllocator distributeBitrate:]";
      v35 = 1024;
      v36 = 310;
      v37 = 1024;
      LODWORD(v38) = bitrateCopy;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, "VCBandwidth [%s] %s:%d bitrate=%d, selectedMediaEntries", buf, 0x22u);
    }
  }

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = v26[5];
  v7 = [obj countByEnumeratingWithState:&v45 objects:v44 count:16];
  if (v7)
  {
    v20 = *v46;
    do
    {
      v8 = 0;
      v21 = v7;
      do
      {
        if (*v46 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v45 + 1) + 8 * v8);
        v10 = [MEMORY[0x1E696AD60] stringWithFormat:@" %@", v9];
        v22 = v8;
        v11 = [v26[5] objectForKey:v9];
        v42 = 0u;
        v43 = 0u;
        v40 = 0u;
        v41 = 0u;
        v12 = [v11 countByEnumeratingWithState:&v40 objects:v39 count:16];
        if (v12)
        {
          v13 = *v41;
          do
          {
            for (i = 0; i != v12; ++i)
            {
              if (*v41 != v13)
              {
                objc_enumerationMutation(v11);
              }

              [v10 appendFormat:@" [streamGroupID=%s, qualityIndex=%u, maxNetworkBitrate=%u, streamID=%u]", FourccToCStr(objc_msgSend(*(*(&v40 + 1) + 8 * i), "streamGroupID")), objc_msgSend(*(*(&v40 + 1) + 8 * i), "qualityIndex"), objc_msgSend(*(*(&v40 + 1) + 8 * i), "maxNetworkBitrate"), objc_msgSend(*(*(&v40 + 1) + 8 * i), "streamID")];
            }

            v12 = [v11 countByEnumeratingWithState:&v40 objects:v39 count:16];
          }

          while (v12);
        }

        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v15 = VRTraceErrorLogLevelToCSTR();
          v16 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315906;
            v32 = v15;
            v33 = 2080;
            v34 = "[VCSessionDownlinkBandwidthAllocator distributeBitrate:]";
            v35 = 1024;
            v36 = 317;
            v37 = 2112;
            v38 = v10;
            _os_log_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_DEFAULT, "VCBandwidth [%s] %s:%d %@", buf, 0x26u);
          }
        }

        ++v8;
      }

      while (v22 + 1 != v21);
      v7 = [obj countByEnumeratingWithState:&v45 objects:v44 count:16];
    }

    while (v7);
  }

  v17 = v26[5];
  _Block_object_dispose(&v25, 8);
  return v17;
}

id __57__VCSessionDownlinkBandwidthAllocator_distributeBitrate___block_invoke(uint64_t a1)
{
  v187 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) sortMediaEntries];
  v2 = [*(a1 + 32) simultaneousTalkers];
  v3 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v2];
  if (v2)
  {
    for (i = 0; i != v2; ++i)
    {
      [v3 setObject:&unk_1F579B340 atIndexedSubscript:i];
    }
  }

  v158 = v3;
  if (objc_opt_class() == *(a1 + 32))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      v8 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] != 1)
      {
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          __57__VCSessionDownlinkBandwidthAllocator_distributeBitrate___block_invoke_cold_1(v6);
        }

        goto LABEL_21;
      }

      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v173 = v6;
        v174 = 2080;
        v175 = "[VCSessionDownlinkBandwidthAllocator distributeBitrate:]_block_invoke";
        v176 = 1024;
        v177 = 199;
        v9 = "VCBandwidth [%s] %s:%d Sorted media entries:";
        v10 = v7;
        v11 = 28;
LABEL_16:
        _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, v9, buf, v11);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v5 = [*(a1 + 32) performSelector:sel_logPrefix];
    }

    else
    {
      v5 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v12 = VRTraceErrorLogLevelToCSTR();
      v13 = *MEMORY[0x1E6986650];
      v14 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] != 1)
      {
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          v16 = *(a1 + 32);
          *buf = 136316162;
          v173 = v12;
          v174 = 2080;
          v175 = "[VCSessionDownlinkBandwidthAllocator distributeBitrate:]_block_invoke";
          v176 = 1024;
          v177 = 199;
          v178 = 2112;
          *v179 = v5;
          *&v179[8] = 2048;
          *&v179[10] = v16;
          _os_log_debug_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEBUG, "VCBandwidth [%s] %s:%d %@(%p) Sorted media entries:", buf, 0x30u);
        }

        goto LABEL_21;
      }

      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = *(a1 + 32);
        *buf = 136316162;
        v173 = v12;
        v174 = 2080;
        v175 = "[VCSessionDownlinkBandwidthAllocator distributeBitrate:]_block_invoke";
        v176 = 1024;
        v177 = 199;
        v178 = 2112;
        *v179 = v5;
        *&v179[8] = 2048;
        *&v179[10] = v15;
        v9 = "VCBandwidth [%s] %s:%d %@(%p) Sorted media entries:";
        v10 = v13;
        v11 = 48;
        goto LABEL_16;
      }
    }
  }

LABEL_21:
  v185 = 0u;
  v186 = 0u;
  v183 = 0u;
  v184 = 0u;
  v17 = *(*(a1 + 32) + 48);
  v18 = [v17 countByEnumeratingWithState:&v183 objects:v182 count:16];
  if (!v18)
  {
    goto LABEL_46;
  }

  v19 = v18;
  v20 = *v184;
  do
  {
    v21 = 0;
    do
    {
      if (*v184 != v20)
      {
        objc_enumerationMutation(v17);
      }

      v22 = *(*(&v183 + 1) + 8 * v21);
      if (objc_opt_class() == *(a1 + 32))
      {
        if (VRTraceGetErrorLogLevelForModule() < 8)
        {
          goto LABEL_41;
        }

        v31 = VRTraceErrorLogLevelToCSTR();
        v32 = *MEMORY[0x1E6986650];
        v33 = *MEMORY[0x1E6986650];
        if (*MEMORY[0x1E6986640] == 1)
        {
          if (!os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_41;
          }

          *buf = 136315906;
          v173 = v31;
          v174 = 2080;
          v175 = "[VCSessionDownlinkBandwidthAllocator distributeBitrate:]_block_invoke";
          v176 = 1024;
          v177 = 201;
          v178 = 2112;
          *v179 = v22;
          v28 = v32;
          v29 = "VCBandwidth [%s] %s:%d %@";
          v30 = 38;
          goto LABEL_37;
        }

        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315906;
          v173 = v31;
          v174 = 2080;
          v175 = "[VCSessionDownlinkBandwidthAllocator distributeBitrate:]_block_invoke";
          v176 = 1024;
          v177 = 201;
          v178 = 2112;
          *v179 = v22;
          v35 = v32;
          v36 = "VCBandwidth [%s] %s:%d %@";
          v37 = 38;
          goto LABEL_44;
        }
      }

      else
      {
        v23 = &stru_1F570E008;
        if (objc_opt_respondsToSelector())
        {
          v23 = [*(a1 + 32) performSelector:sel_logPrefix];
        }

        if (VRTraceGetErrorLogLevelForModule() >= 8)
        {
          v24 = VRTraceErrorLogLevelToCSTR();
          v25 = *MEMORY[0x1E6986650];
          v26 = *MEMORY[0x1E6986650];
          if (*MEMORY[0x1E6986640] == 1)
          {
            if (!os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_41;
            }

            v27 = *(a1 + 32);
            *buf = 136316418;
            v173 = v24;
            v174 = 2080;
            v175 = "[VCSessionDownlinkBandwidthAllocator distributeBitrate:]_block_invoke";
            v176 = 1024;
            v177 = 201;
            v178 = 2112;
            *v179 = v23;
            *&v179[8] = 2048;
            *&v179[10] = v27;
            *&v179[18] = 2112;
            *&v179[20] = v22;
            v28 = v25;
            v29 = "VCBandwidth [%s] %s:%d %@(%p) %@";
            v30 = 58;
LABEL_37:
            _os_log_impl(&dword_1DB56E000, v28, OS_LOG_TYPE_DEFAULT, v29, buf, v30);
            goto LABEL_41;
          }

          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
          {
            v34 = *(a1 + 32);
            *buf = 136316418;
            v173 = v24;
            v174 = 2080;
            v175 = "[VCSessionDownlinkBandwidthAllocator distributeBitrate:]_block_invoke";
            v176 = 1024;
            v177 = 201;
            v178 = 2112;
            *v179 = v23;
            *&v179[8] = 2048;
            *&v179[10] = v34;
            *&v179[18] = 2112;
            *&v179[20] = v22;
            v35 = v25;
            v36 = "VCBandwidth [%s] %s:%d %@(%p) %@";
            v37 = 58;
LABEL_44:
            _os_log_debug_impl(&dword_1DB56E000, v35, OS_LOG_TYPE_DEBUG, v36, buf, v37);
          }
        }
      }

LABEL_41:
      ++v21;
    }

    while (v19 != v21);
    v38 = [v17 countByEnumeratingWithState:&v183 objects:v182 count:16];
    v19 = v38;
  }

  while (v38);
LABEL_46:
  v39 = *(a1 + 48);
  v40 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:*(*(a1 + 32) + 16)];
  v41 = v158;
  if ([*(*(a1 + 32) + 48) count] >= 1)
  {
    v42 = 0;
    v160 = 0;
    v159 = v40;
    while (1)
    {
      v43 = [*(*(a1 + 32) + 48) objectAtIndexedSubscript:v42];
      if (![*(*(a1 + 32) + 8) objectForKeyedSubscript:{objc_msgSend(objc_msgSend(v43, "client"), "uuid")}])
      {
        v44 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:2];
        [*(*(a1 + 32) + 8) setObject:v44 forKeyedSubscript:{objc_msgSend(objc_msgSend(v43, "client"), "uuid")}];
      }

      if ([v43 type] != 1)
      {
        break;
      }

      if ([v43 streamGroupID] == 1835623287 || objc_msgSend(v43, "streamGroupID") == 1835623282)
      {
        v45 = [*(a1 + 32) requiredAudioBitrate:objc_msgSend(v43 highestAudioBitrates:{"maxNetworkBitrate"), v41}];
        if (!v45 || ([v43 isLowestQuality] & 1) != 0)
        {
          v46 = v45;
LABEL_56:
          v39 -= v45;
          [*(a1 + 32) updateHighestAudioBitrates:v41 bitrate:{objc_msgSend(v43, "maxNetworkBitrate")}];
LABEL_113:
          [objc_msgSend(*(*(a1 + 32) + 8) objectForKeyedSubscript:{objc_msgSend(objc_msgSend(v43, "client"), "uuid")), "setObject:forKeyedSubscript:", v43, objc_msgSend(v43, "streamToken")}];
          if (objc_opt_class() != *(a1 + 32))
          {
            v73 = &stru_1F570E008;
            if (objc_opt_respondsToSelector())
            {
              v73 = [*(a1 + 32) performSelector:sel_logPrefix];
            }

            if (VRTraceGetErrorLogLevelForModule() < 8)
            {
              goto LABEL_143;
            }

            v74 = VRTraceErrorLogLevelToCSTR();
            v75 = *MEMORY[0x1E6986650];
            v76 = *MEMORY[0x1E6986650];
            if (*MEMORY[0x1E6986640] == 1)
            {
              if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
              {
                v77 = *(a1 + 32);
                v78 = [objc_msgSend(v43 "client")];
                *buf = 136317186;
                v173 = v74;
                v174 = 2080;
                v175 = "[VCSessionDownlinkBandwidthAllocator distributeBitrate:]_block_invoke";
                v176 = 1024;
                v177 = 288;
                v178 = 2112;
                *v179 = v73;
                *&v179[8] = 2048;
                *&v179[10] = v77;
                v41 = v158;
                *&v179[18] = 1024;
                *&v179[20] = v46;
                *&v179[24] = 2112;
                *&v179[26] = v78;
                *&v179[34] = 2112;
                *&v179[36] = v43;
                v180 = 1024;
                v181 = v39;
                v79 = v75;
                v80 = "VCBandwidth [%s] %s:%d %@(%p) Opt in [%d] to client[%@] to upgrade to stream %@ remaining %d";
                v81 = 80;
                goto LABEL_131;
              }

              goto LABEL_142;
            }

            if (!os_log_type_enabled(v76, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_142;
            }

            v96 = *(a1 + 32);
            v97 = [objc_msgSend(v43 "client")];
            *buf = 136317186;
            v173 = v74;
            v174 = 2080;
            v175 = "[VCSessionDownlinkBandwidthAllocator distributeBitrate:]_block_invoke";
            v176 = 1024;
            v177 = 288;
            v178 = 2112;
            *v179 = v73;
            *&v179[8] = 2048;
            *&v179[10] = v96;
            v41 = v158;
            *&v179[18] = 1024;
            *&v179[20] = v46;
            *&v179[24] = 2112;
            *&v179[26] = v97;
            *&v179[34] = 2112;
            *&v179[36] = v43;
            v180 = 1024;
            v181 = v39;
            v98 = v75;
            v99 = "VCBandwidth [%s] %s:%d %@(%p) Opt in [%d] to client[%@] to upgrade to stream %@ remaining %d";
            v100 = 80;
            goto LABEL_152;
          }

          if (VRTraceGetErrorLogLevelForModule() >= 8)
          {
            v88 = VRTraceErrorLogLevelToCSTR();
            v89 = *MEMORY[0x1E6986650];
            v90 = *MEMORY[0x1E6986650];
            if (*MEMORY[0x1E6986640] == 1)
            {
              if (os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT))
              {
                v91 = [objc_msgSend(v43 "client")];
                *buf = 136316674;
                v173 = v88;
                v174 = 2080;
                v175 = "[VCSessionDownlinkBandwidthAllocator distributeBitrate:]_block_invoke";
                v176 = 1024;
                v177 = 288;
                v178 = 1024;
                *v179 = v46;
                *&v179[4] = 2112;
                *&v179[6] = v91;
                *&v179[14] = 2112;
                *&v179[16] = v43;
                *&v179[24] = 1024;
                *&v179[26] = v39;
                v79 = v89;
                v80 = "VCBandwidth [%s] %s:%d Opt in [%d] to client[%@] to upgrade to stream %@ remaining %d";
                v81 = 60;
LABEL_131:
                _os_log_impl(&dword_1DB56E000, v79, OS_LOG_TYPE_DEFAULT, v80, buf, v81);
              }

LABEL_142:
              v40 = v159;
              goto LABEL_143;
            }

            if (!os_log_type_enabled(v90, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_142;
            }

            v111 = [objc_msgSend(v43 "client")];
            *buf = 136316674;
            v173 = v88;
            v174 = 2080;
            v175 = "[VCSessionDownlinkBandwidthAllocator distributeBitrate:]_block_invoke";
            v176 = 1024;
            v177 = 288;
            v178 = 1024;
            *v179 = v46;
            *&v179[4] = 2112;
            *&v179[6] = v111;
            *&v179[14] = 2112;
            *&v179[16] = v43;
            *&v179[24] = 1024;
            *&v179[26] = v39;
            v98 = v89;
            v99 = "VCBandwidth [%s] %s:%d Opt in [%d] to client[%@] to upgrade to stream %@ remaining %d";
            v100 = 60;
LABEL_152:
            _os_log_debug_impl(&dword_1DB56E000, v98, OS_LOG_TYPE_DEBUG, v99, buf, v100);
            goto LABEL_142;
          }

          goto LABEL_143;
        }

        if (v160)
        {
          v46 = 0;
          v61 = 1;
LABEL_96:
          if (v39 >= v45)
          {
            v160 = 1;
            goto LABEL_56;
          }
        }

        else
        {
          v46 = v45 * [v41 count];
          v61 = v46 <= v39;
          if (v46 <= v39)
          {
            goto LABEL_96;
          }
        }

        v160 = v61;
        goto LABEL_120;
      }

      v46 = [v43 maxMediaBitrate];
      v58 = [v43 isLowestQuality];
      if (v46 <= v39)
      {
        v59 = 1;
      }

      else
      {
        v59 = v58;
      }

      if (v59)
      {
        v60 = v46;
      }

      else
      {
        v60 = 0;
      }

      v39 -= v60;
      if (v59)
      {
        goto LABEL_113;
      }

LABEL_120:
      if (objc_opt_class() == *(a1 + 32))
      {
        if (VRTraceGetErrorLogLevelForModule() >= 8)
        {
          v92 = VRTraceErrorLogLevelToCSTR();
          v93 = *MEMORY[0x1E6986650];
          v94 = *MEMORY[0x1E6986650];
          if (*MEMORY[0x1E6986640] == 1)
          {
            if (os_log_type_enabled(v94, OS_LOG_TYPE_DEFAULT))
            {
              v95 = [objc_msgSend(v43 "client")];
              *buf = 136316418;
              v173 = v92;
              v174 = 2080;
              v175 = "[VCSessionDownlinkBandwidthAllocator distributeBitrate:]_block_invoke";
              v176 = 1024;
              v177 = 290;
              v178 = 1024;
              *v179 = v39;
              *&v179[4] = 2112;
              *&v179[6] = v95;
              *&v179[14] = 2112;
              *&v179[16] = v43;
              v67 = v93;
              v68 = "VCBandwidth [%s] %s:%d Bitrate distribution completed; remaining %d (candidate: %@ %@)";
              v69 = 54;
              goto LABEL_136;
            }
          }

          else if (os_log_type_enabled(v94, OS_LOG_TYPE_DEBUG))
          {
            v106 = [objc_msgSend(v43 "client")];
            *buf = 136316418;
            v173 = v92;
            v174 = 2080;
            v175 = "[VCSessionDownlinkBandwidthAllocator distributeBitrate:]_block_invoke";
            v176 = 1024;
            v177 = 290;
            v178 = 1024;
            *v179 = v39;
            *&v179[4] = 2112;
            *&v179[6] = v106;
            *&v179[14] = 2112;
            *&v179[16] = v43;
            v103 = v93;
            v104 = "VCBandwidth [%s] %s:%d Bitrate distribution completed; remaining %d (candidate: %@ %@)";
            v105 = 54;
            goto LABEL_147;
          }
        }
      }

      else
      {
        v82 = &stru_1F570E008;
        if (objc_opt_respondsToSelector())
        {
          v82 = [*(a1 + 32) performSelector:sel_logPrefix];
        }

        if (VRTraceGetErrorLogLevelForModule() < 8)
        {
          goto LABEL_143;
        }

        v83 = VRTraceErrorLogLevelToCSTR();
        v84 = *MEMORY[0x1E6986650];
        v85 = *MEMORY[0x1E6986650];
        if (*MEMORY[0x1E6986640] == 1)
        {
          if (os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT))
          {
            v86 = *(a1 + 32);
            v87 = [objc_msgSend(v43 "client")];
            *buf = 136316930;
            v173 = v83;
            v174 = 2080;
            v175 = "[VCSessionDownlinkBandwidthAllocator distributeBitrate:]_block_invoke";
            v176 = 1024;
            v177 = 290;
            v178 = 2112;
            *v179 = v82;
            *&v179[8] = 2048;
            *&v179[10] = v86;
            v41 = v158;
            *&v179[18] = 1024;
            *&v179[20] = v39;
            *&v179[24] = 2112;
            *&v179[26] = v87;
            *&v179[34] = 2112;
            *&v179[36] = v43;
            v67 = v84;
            v68 = "VCBandwidth [%s] %s:%d %@(%p) Bitrate distribution completed; remaining %d (candidate: %@ %@)";
            v69 = 74;
LABEL_136:
            _os_log_impl(&dword_1DB56E000, v67, OS_LOG_TYPE_DEFAULT, v68, buf, v69);
          }
        }

        else if (os_log_type_enabled(v85, OS_LOG_TYPE_DEBUG))
        {
          v101 = *(a1 + 32);
          v102 = [objc_msgSend(v43 "client")];
          *buf = 136316930;
          v173 = v83;
          v174 = 2080;
          v175 = "[VCSessionDownlinkBandwidthAllocator distributeBitrate:]_block_invoke";
          v176 = 1024;
          v177 = 290;
          v178 = 2112;
          *v179 = v82;
          *&v179[8] = 2048;
          *&v179[10] = v101;
          v41 = v158;
          *&v179[18] = 1024;
          *&v179[20] = v39;
          *&v179[24] = 2112;
          *&v179[26] = v102;
          *&v179[34] = 2112;
          *&v179[36] = v43;
          v103 = v84;
          v104 = "VCBandwidth [%s] %s:%d %@(%p) Bitrate distribution completed; remaining %d (candidate: %@ %@)";
          v105 = 74;
LABEL_147:
          _os_log_debug_impl(&dword_1DB56E000, v103, OS_LOG_TYPE_DEBUG, v104, buf, v105);
        }
      }

LABEL_143:
      if (++v42 >= [*(*(a1 + 32) + 48) count])
      {
        goto LABEL_153;
      }
    }

    if ([v43 type] != 2 && objc_msgSend(v43, "type") != 3)
    {
      goto LABEL_120;
    }

    v47 = [v43 streamToken];
    v48 = [objc_msgSend(*(*(a1 + 32) + 8) objectForKeyedSubscript:{objc_msgSend(objc_msgSend(v43, "client"), "uuid")), "objectForKeyedSubscript:", v47}];
    v49 = [v43 streamGroupID];
    if ([v43 type] == 2 && objc_msgSend(v40, "count") >= *(*(a1 + 32) + 16) && (objc_msgSend(v40, "containsObject:", v47) & 1) == 0 && v49 != 1935897189)
    {
      if (objc_opt_class() == *(a1 + 32))
      {
        if (VRTraceGetErrorLogLevelForModule() < 5)
        {
          goto LABEL_143;
        }

        v107 = VRTraceErrorLogLevelToCSTR();
        v108 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_143;
        }

        v109 = *(*(a1 + 32) + 16);
        v110 = [objc_msgSend(v43 "client")];
        *buf = 136316162;
        v173 = v107;
        v174 = 2080;
        v175 = "[VCSessionDownlinkBandwidthAllocator distributeBitrate:]_block_invoke";
        v176 = 1024;
        v177 = 256;
        v178 = 1024;
        *v179 = v109;
        *&v179[4] = 2112;
        *&v179[6] = v110;
        v67 = v108;
        v68 = "VCBandwidth [%s] %s:%d Reached max number of decoder streams (%d). Unable to display video for client:%@";
        v69 = 44;
      }

      else
      {
        v62 = &stru_1F570E008;
        if (objc_opt_respondsToSelector())
        {
          v62 = [*(a1 + 32) performSelector:sel_logPrefix];
        }

        if (VRTraceGetErrorLogLevelForModule() < 5)
        {
          goto LABEL_143;
        }

        v63 = VRTraceErrorLogLevelToCSTR();
        v64 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_143;
        }

        v65 = *(a1 + 32);
        v157 = *(v65 + 16);
        v66 = [objc_msgSend(v43 "client")];
        *buf = 136316674;
        v173 = v63;
        v174 = 2080;
        v175 = "[VCSessionDownlinkBandwidthAllocator distributeBitrate:]_block_invoke";
        v176 = 1024;
        v177 = 256;
        v178 = 2112;
        *v179 = v62;
        *&v179[8] = 2048;
        *&v179[10] = v65;
        v40 = v159;
        *&v179[18] = 1024;
        *&v179[20] = v157;
        *&v179[24] = 2112;
        *&v179[26] = v66;
        v67 = v64;
        v68 = "VCBandwidth [%s] %s:%d %@(%p) Reached max number of decoder streams (%d). Unable to display video for client:%@";
        v69 = 64;
      }

      goto LABEL_136;
    }

    v50 = [v43 maxNetworkBitrate];
    v46 = v50 - [v48 maxNetworkBitrate];
    if (v49 > 1667329398)
    {
      if (v49 != 1667329399 && v49 != 1935897189)
      {
        v51 = 1718909044;
        goto LABEL_67;
      }

      goto LABEL_68;
    }

    if (v49 == 1650745716)
    {
      goto LABEL_68;
    }

    v51 = 1667329381;
LABEL_67:
    if (v49 == v51)
    {
LABEL_68:
      if ([v43 isLowestQuality])
      {
        if (VRTraceGetErrorLogLevelForModule() >= 8)
        {
          v52 = VRTraceErrorLogLevelToCSTR();
          v53 = *MEMORY[0x1E6986650];
          v54 = *MEMORY[0x1E6986650];
          if (*MEMORY[0x1E6986640] == 1)
          {
            if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
            {
              v55 = [v43 qualityIndex];
              *buf = 136316418;
              v173 = v52;
              v174 = 2080;
              v175 = "[VCSessionDownlinkBandwidthAllocator distributeBitrate:]_block_invoke";
              v176 = 1024;
              v177 = 266;
              v178 = 1024;
              *v179 = v55;
              *&v179[4] = 1024;
              *&v179[6] = v39;
              *&v179[10] = 1024;
              *&v179[12] = v46;
              _os_log_impl(&dword_1DB56E000, v53, OS_LOG_TYPE_DEFAULT, "VCBandwidth [%s] %s:%d Always opt into Video Stream with Quality Index:%d availableBitrate %d requiredBitrate %d", buf, 0x2Eu);
            }
          }

          else if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
          {
            v112 = [v43 qualityIndex];
            *buf = 136316418;
            v173 = v52;
            v174 = 2080;
            v175 = "[VCSessionDownlinkBandwidthAllocator distributeBitrate:]_block_invoke";
            v176 = 1024;
            v177 = 266;
            v178 = 1024;
            *v179 = v112;
            *&v179[4] = 1024;
            *&v179[6] = v39;
            *&v179[10] = 1024;
            *&v179[12] = v46;
            _os_log_debug_impl(&dword_1DB56E000, v53, OS_LOG_TYPE_DEBUG, "VCBandwidth [%s] %s:%d Always opt into Video Stream with Quality Index:%d availableBitrate %d requiredBitrate %d", buf, 0x2Eu);
          }
        }

        v70 = __OFSUB__(v39, v46);
        v39 -= v46;
        if (v39 < 0 != v70)
        {
          if (VRTraceGetErrorLogLevelForModule() >= 5)
          {
            v71 = VRTraceErrorLogLevelToCSTR();
            v72 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315650;
              v173 = v71;
              v174 = 2080;
              v175 = "[VCSessionDownlinkBandwidthAllocator distributeBitrate:]_block_invoke";
              v176 = 1024;
              v177 = 269;
              _os_log_impl(&dword_1DB56E000, v72, OS_LOG_TYPE_DEFAULT, "VCBandwidth [%s] %s:%d We do not have available bandwidth to support the lowest quality video stream, but we are forcing it on anyways.", buf, 0x1Cu);
            }
          }

          v39 = 0;
        }

        v56 = 1;
LABEL_108:
        if ([v43 type] == 2 && (objc_msgSend(v40, "containsObject:", objc_msgSend(v43, "streamToken")) & 1) == 0 && v56)
        {
          [v40 addObject:{objc_msgSend(v43, "streamToken")}];
        }

        v160 = 0;
        if (v56)
        {
          goto LABEL_113;
        }

        goto LABEL_120;
      }
    }

    v56 = v39 >= v46;
    if (v39 < v46)
    {
      v57 = 0;
    }

    else
    {
      v57 = v46;
    }

    v39 -= v57;
    goto LABEL_108;
  }

LABEL_153:

  [*(*(a1 + 32) + 40) removeAllObjects];
  v170 = 0u;
  v171 = 0u;
  v168 = 0u;
  v169 = 0u;
  v113 = *(*(a1 + 32) + 32);
  v114 = [v113 countByEnumeratingWithState:&v168 objects:v167 count:16];
  if (v114)
  {
    v115 = v114;
    v116 = *v169;
    do
    {
      for (j = 0; j != v115; ++j)
      {
        if (*v169 != v116)
        {
          objc_enumerationMutation(v113);
        }

        [*(a1 + 32) updateSelectedMediaEntriesForClientWithUUID:{objc_msgSend(*(*(&v168 + 1) + 8 * j), "uuid")}];
      }

      v115 = [v113 countByEnumeratingWithState:&v168 objects:v167 count:16];
    }

    while (v115);
  }

  if (objc_opt_class() == *(a1 + 32))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v119 = VRTraceErrorLogLevelToCSTR();
      v120 = *MEMORY[0x1E6986650];
      v121 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v121, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v173 = v119;
          v174 = 2080;
          v175 = "[VCSessionDownlinkBandwidthAllocator distributeBitrate:]_block_invoke";
          v176 = 1024;
          v177 = 303;
          v122 = "VCBandwidth [%s] %s:%d Allocated media entries for clients:";
          v123 = v120;
          v124 = 28;
          goto LABEL_172;
        }
      }

      else if (os_log_type_enabled(v121, OS_LOG_TYPE_DEBUG))
      {
        __57__VCSessionDownlinkBandwidthAllocator_distributeBitrate___block_invoke_cold_2(v119);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v118 = [*(a1 + 32) performSelector:sel_logPrefix];
    }

    else
    {
      v118 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v125 = VRTraceErrorLogLevelToCSTR();
      v126 = *MEMORY[0x1E6986650];
      v127 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v127, OS_LOG_TYPE_DEFAULT))
        {
          v128 = *(a1 + 32);
          *buf = 136316162;
          v173 = v125;
          v174 = 2080;
          v175 = "[VCSessionDownlinkBandwidthAllocator distributeBitrate:]_block_invoke";
          v176 = 1024;
          v177 = 303;
          v178 = 2112;
          *v179 = v118;
          *&v179[8] = 2048;
          *&v179[10] = v128;
          v122 = "VCBandwidth [%s] %s:%d %@(%p) Allocated media entries for clients:";
          v123 = v126;
          v124 = 48;
LABEL_172:
          _os_log_impl(&dword_1DB56E000, v123, OS_LOG_TYPE_DEFAULT, v122, buf, v124);
        }
      }

      else if (os_log_type_enabled(v127, OS_LOG_TYPE_DEBUG))
      {
        v129 = *(a1 + 32);
        *buf = 136316162;
        v173 = v125;
        v174 = 2080;
        v175 = "[VCSessionDownlinkBandwidthAllocator distributeBitrate:]_block_invoke";
        v176 = 1024;
        v177 = 303;
        v178 = 2112;
        *v179 = v118;
        *&v179[8] = 2048;
        *&v179[10] = v129;
        _os_log_debug_impl(&dword_1DB56E000, v126, OS_LOG_TYPE_DEBUG, "VCBandwidth [%s] %s:%d %@(%p) Allocated media entries for clients:", buf, 0x30u);
      }
    }
  }

  v165 = 0u;
  v166 = 0u;
  v163 = 0u;
  v164 = 0u;
  v130 = [*(*(a1 + 32) + 8) allKeys];
  v131 = [v130 countByEnumeratingWithState:&v163 objects:v162 count:16];
  if (!v131)
  {
    goto LABEL_202;
  }

  v132 = v131;
  v133 = *v164;
  v161 = v130;
  while (2)
  {
    v134 = 0;
    while (2)
    {
      if (*v164 != v133)
      {
        objc_enumerationMutation(v130);
      }

      v135 = *(*(&v163 + 1) + 8 * v134);
      if (objc_opt_class() != *(a1 + 32))
      {
        v136 = &stru_1F570E008;
        if (objc_opt_respondsToSelector())
        {
          v136 = [*(a1 + 32) performSelector:sel_logPrefix];
        }

        if (VRTraceGetErrorLogLevelForModule() < 8)
        {
          goto LABEL_197;
        }

        v137 = VRTraceErrorLogLevelToCSTR();
        v138 = *MEMORY[0x1E6986650];
        v139 = *MEMORY[0x1E6986650];
        if (*MEMORY[0x1E6986640] == 1)
        {
          if (os_log_type_enabled(v139, OS_LOG_TYPE_DEFAULT))
          {
            v140 = *(a1 + 32);
            v141 = [*(v140 + 8) objectForKeyedSubscript:v135];
            *buf = 136316674;
            v173 = v137;
            v174 = 2080;
            v175 = "[VCSessionDownlinkBandwidthAllocator distributeBitrate:]_block_invoke";
            v176 = 1024;
            v177 = 305;
            v178 = 2112;
            *v179 = v136;
            *&v179[8] = 2048;
            *&v179[10] = v140;
            v130 = v161;
            *&v179[18] = 2112;
            *&v179[20] = v135;
            *&v179[28] = 2112;
            *&v179[30] = v141;
            v142 = v138;
            v143 = "VCBandwidth [%s] %s:%d %@(%p) %@: %@";
            v144 = 68;
            goto LABEL_193;
          }

          goto LABEL_197;
        }

        if (!os_log_type_enabled(v139, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_197;
        }

        v149 = *(a1 + 32);
        v150 = [*(v149 + 8) objectForKeyedSubscript:v135];
        *buf = 136316674;
        v173 = v137;
        v174 = 2080;
        v175 = "[VCSessionDownlinkBandwidthAllocator distributeBitrate:]_block_invoke";
        v176 = 1024;
        v177 = 305;
        v178 = 2112;
        *v179 = v136;
        *&v179[8] = 2048;
        *&v179[10] = v149;
        v130 = v161;
        *&v179[18] = 2112;
        *&v179[20] = v135;
        *&v179[28] = 2112;
        *&v179[30] = v150;
        v151 = v138;
        v152 = "VCBandwidth [%s] %s:%d %@(%p) %@: %@";
        v153 = 68;
LABEL_200:
        _os_log_debug_impl(&dword_1DB56E000, v151, OS_LOG_TYPE_DEBUG, v152, buf, v153);
        goto LABEL_197;
      }

      if (VRTraceGetErrorLogLevelForModule() < 8)
      {
        goto LABEL_197;
      }

      v145 = VRTraceErrorLogLevelToCSTR();
      v146 = *MEMORY[0x1E6986650];
      v147 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] != 1)
      {
        if (!os_log_type_enabled(v147, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_197;
        }

        v154 = [*(*(a1 + 32) + 8) objectForKeyedSubscript:v135];
        *buf = 136316162;
        v173 = v145;
        v174 = 2080;
        v175 = "[VCSessionDownlinkBandwidthAllocator distributeBitrate:]_block_invoke";
        v176 = 1024;
        v177 = 305;
        v178 = 2112;
        *v179 = v135;
        *&v179[8] = 2112;
        *&v179[10] = v154;
        v151 = v146;
        v152 = "VCBandwidth [%s] %s:%d %@: %@";
        v153 = 48;
        goto LABEL_200;
      }

      if (os_log_type_enabled(v147, OS_LOG_TYPE_DEFAULT))
      {
        v148 = [*(*(a1 + 32) + 8) objectForKeyedSubscript:v135];
        *buf = 136316162;
        v173 = v145;
        v174 = 2080;
        v175 = "[VCSessionDownlinkBandwidthAllocator distributeBitrate:]_block_invoke";
        v176 = 1024;
        v177 = 305;
        v178 = 2112;
        *v179 = v135;
        *&v179[8] = 2112;
        *&v179[10] = v148;
        v142 = v146;
        v143 = "VCBandwidth [%s] %s:%d %@: %@";
        v144 = 48;
LABEL_193:
        _os_log_impl(&dword_1DB56E000, v142, OS_LOG_TYPE_DEFAULT, v143, buf, v144);
      }

LABEL_197:
      if (v132 != ++v134)
      {
        continue;
      }

      break;
    }

    v155 = [v130 countByEnumeratingWithState:&v163 objects:v162 count:16];
    v132 = v155;
    if (v155)
    {
      continue;
    }

    break;
  }

LABEL_202:
  result = [*(*(a1 + 32) + 40) copy];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (void)updateSelectedMediaEntriesForClientWithUUID:(id)d
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:2];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v6 = [-[NSMutableDictionary objectForKeyedSubscript:](self->_allocatedMediaEntriesForClients objectForKeyedSubscript:{d), "allValues"}];
  v7 = [v6 countByEnumeratingWithState:&v26 objects:v25 count:16];
  if (!v7)
  {
    goto LABEL_11;
  }

  v8 = v7;
  v9 = 0;
  v10 = *v27;
  do
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v27 != v10)
      {
        objc_enumerationMutation(v6);
      }

      v12 = *(*(&v26 + 1) + 8 * i);
      if ([v12 type] == 1)
      {
        v9 = v12;
      }

      [v5 addObject:v12];
    }

    v8 = [v6 countByEnumeratingWithState:&v26 objects:v25 count:16];
  }

  while (v8);
  if (!v9)
  {
LABEL_11:
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 5)
      {
        v14 = VRTraceErrorLogLevelToCSTR();
        v15 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *v21 = 136315906;
          *&v21[4] = v14;
          *&v21[12] = 2080;
          *&v21[14] = "[VCSessionDownlinkBandwidthAllocator updateSelectedMediaEntriesForClientWithUUID:]";
          *&v21[22] = 1024;
          LODWORD(v22) = 334;
          WORD2(v22) = 2112;
          *(&v22 + 6) = d;
          v16 = "VCBandwidth [%s] %s:%d No audio entry for client=%@";
          v17 = v15;
          v18 = 38;
LABEL_21:
          _os_log_impl(&dword_1DB56E000, v17, OS_LOG_TYPE_DEFAULT, v16, v21, v18);
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v13 = [(VCSessionDownlinkBandwidthAllocator *)self performSelector:sel_logPrefix];
      }

      else
      {
        v13 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 5)
      {
        v19 = VRTraceErrorLogLevelToCSTR();
        v20 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *v21 = 136316418;
          *&v21[4] = v19;
          *&v21[12] = 2080;
          *&v21[14] = "[VCSessionDownlinkBandwidthAllocator updateSelectedMediaEntriesForClientWithUUID:]";
          *&v21[22] = 1024;
          LODWORD(v22) = 334;
          WORD2(v22) = 2112;
          *(&v22 + 6) = v13;
          HIWORD(v22) = 2048;
          selfCopy = self;
          LOWORD(v24) = 2112;
          *(&v24 + 2) = d;
          v16 = "VCBandwidth [%s] %s:%d %@(%p) No audio entry for client=%@";
          v17 = v20;
          v18 = 58;
          goto LABEL_21;
        }
      }
    }
  }

  [(NSMutableDictionary *)self->_selectedMediaEntriesForClients setObject:v5 forKeyedSubscript:d, *v21, *&v21[16], v22, selfCopy, v24];
}

- (void)reset
{
  [(NSMutableArray *)self->_sortedMediaEntries removeAllObjects];
  [(NSMutableDictionary *)self->_allocatedMediaEntriesForClients removeAllObjects];
  selectedMediaEntriesForClients = self->_selectedMediaEntriesForClients;

  [(NSMutableDictionary *)selectedMediaEntriesForClients removeAllObjects];
}

- (void)registerForBandwidthAllocationWithClient:(id)client
{
  block[6] = *MEMORY[0x1E69E9840];
  clientQueue = self->_clientQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __80__VCSessionDownlinkBandwidthAllocator_registerForBandwidthAllocationWithClient___block_invoke;
  block[3] = &unk_1E85F37F0;
  block[4] = self;
  block[5] = client;
  dispatch_async(clientQueue, block);
}

uint64_t __80__VCSessionDownlinkBandwidthAllocator_registerForBandwidthAllocationWithClient___block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 32) containsObject:*(a1 + 40)];
  if ((result & 1) == 0)
  {
    [*(*(a1 + 32) + 32) addObject:*(a1 + 40)];
    v3 = *(a1 + 32);

    return [v3 reset];
  }

  return result;
}

- (void)reportingSessionParticipantEventBitrateChanged:(id)changed optedInNetworkBitrate:(unsigned int)bitrate actualNetworkBitrate:(unsigned int)networkBitrate optedInStreamID:(id)d actualStreamID:(id)iD
{
  v9 = *&networkBitrate;
  v10 = *&bitrate;
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionaryAddValue(Mutable, @"VCSPUUID", changed);
  CFDictionaryAddValue(Mutable, @"VCSPActualBitrate", [MEMORY[0x1E696AD98] numberWithUnsignedInt:v9]);
  CFDictionaryAddValue(Mutable, @"VCSPOptedInBitrate", [MEMORY[0x1E696AD98] numberWithUnsignedInt:v10]);
  if (iD)
  {
    iDCopy = iD;
  }

  else
  {
    iDCopy = &unk_1F579B340;
  }

  CFDictionaryAddValue(Mutable, @"VCSPActiveStreamID", iDCopy);
  if (d)
  {
    dCopy = d;
  }

  else
  {
    dCopy = &unk_1F579B340;
  }

  CFDictionaryAddValue(Mutable, @"VCSPOptedInStreamID", dCopy);
  reportingGenericEvent();
  if (Mutable)
  {

    CFRelease(Mutable);
  }
}

- (void)deregisterForBandwidthAllocationWithClient:(id)client
{
  block[6] = *MEMORY[0x1E69E9840];
  clientQueue = self->_clientQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __82__VCSessionDownlinkBandwidthAllocator_deregisterForBandwidthAllocationWithClient___block_invoke;
  block[3] = &unk_1E85F37F0;
  block[4] = self;
  block[5] = client;
  dispatch_async(clientQueue, block);
}

uint64_t __82__VCSessionDownlinkBandwidthAllocator_deregisterForBandwidthAllocationWithClient___block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 32) containsObject:*(a1 + 40)];
  if (result)
  {
    [*(*(a1 + 32) + 32) removeObject:*(a1 + 40)];
    v3 = *(a1 + 32);

    return [v3 reset];
  }

  return result;
}

- (void)client:(id)client didActualNetworkBitrateChangeForStreamGroupID:(unsigned int)d
{
  v4 = *&d;
  v7 = [client optedInStreamIDForStreamGroupID:*&d];
  v8 = [client activeDownlinkStreamIDForStreamGroupID:v4];
  v9 = [client actualNetworkBitrateForStreamGroup:v4];
  v10 = [client optedInNetworkBitrateForStreamGroup:v4];
  uuid = [client uuid];

  [(VCSessionDownlinkBandwidthAllocator *)self reportingSessionParticipantEventBitrateChanged:uuid optedInNetworkBitrate:v10 actualNetworkBitrate:v9 optedInStreamID:v7 actualStreamID:v8];
}

void __57__VCSessionDownlinkBandwidthAllocator_distributeBitrate___block_invoke_cold_1(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = 136315650;
  v3 = a1;
  OUTLINED_FUNCTION_0();
  v4 = 199;
  _os_log_debug_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_DEBUG, "VCBandwidth [%s] %s:%d Sorted media entries:", &v2, 0x1Cu);
}

void __57__VCSessionDownlinkBandwidthAllocator_distributeBitrate___block_invoke_cold_2(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = 136315650;
  v3 = a1;
  OUTLINED_FUNCTION_0();
  v4 = 303;
  _os_log_debug_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_DEBUG, "VCBandwidth [%s] %s:%d Allocated media entries for clients:", &v2, 0x1Cu);
}

@end