@interface AVAudioEngine
- (AVAudioConnectionPoint)inputConnectionPointForNode:(AVAudioNode *)node inputBus:(AVAudioNodeBus)bus;
- (AVAudioEngine)init;
- (AVAudioEngineManualRenderingBlock)manualRenderingBlock;
- (AVAudioEngineManualRenderingMode)manualRenderingMode;
- (AVAudioFormat)manualRenderingFormat;
- (AVAudioFrameCount)manualRenderingMaximumFrameCount;
- (AVAudioFramePosition)manualRenderingSampleTime;
- (AVAudioInputNode)inputNode;
- (AVAudioMixerNode)mainMixerNode;
- (AVAudioOutputNode)outputNode;
- (BOOL)isAutoShutdownEnabled;
- (BOOL)isInManualRenderingMode;
- (BOOL)isRunning;
- (BOOL)startAndReturnError:(NSError *)outError;
- (MusicSequence)musicSequence;
- (NSArray)outputConnectionPointsForNode:(AVAudioNode *)node outputBus:(AVAudioNodeBus)bus;
- (NSSet)attachedNodes;
- (id)audioSession;
- (id)description;
- (void)attachNode:(AVAudioNode *)node;
- (void)connect:(AVAudioNode *)node1 to:(AVAudioNode *)node2 format:(AVAudioFormat *)format;
- (void)connect:(AVAudioNode *)node1 to:(AVAudioNode *)node2 fromBus:(AVAudioNodeBus)bus1 toBus:(AVAudioNodeBus)bus2 format:(AVAudioFormat *)format;
- (void)connect:(AVAudioNode *)sourceNode toConnectionPoints:(NSArray *)destNodes fromBus:(AVAudioNodeBus)sourceBus format:(AVAudioFormat *)format;
- (void)connectMIDI:(AVAudioNode *)sourceNode to:(AVAudioNode *)destinationNode format:(AVAudioFormat *)format block:(AUMIDIOutputEventBlock)tapBlock;
- (void)connectMIDI:(AVAudioNode *)sourceNode to:(AVAudioNode *)destinationNode format:(AVAudioFormat *)format eventListBlock:(AUMIDIEventListBlock)tapBlock;
- (void)connectMIDI:(AVAudioNode *)sourceNode toNodes:(NSArray *)destinationNodes format:(AVAudioFormat *)format block:(AUMIDIOutputEventBlock)tapBlock;
- (void)connectMIDI:(AVAudioNode *)sourceNode toNodes:(NSArray *)destinationNodes format:(AVAudioFormat *)format eventListBlock:(AUMIDIEventListBlock)tapBlock;
- (void)dealloc;
- (void)detachNode:(AVAudioNode *)node;
- (void)disableManualRenderingMode;
- (void)disconnectMIDI:(AVAudioNode *)sourceNode from:(AVAudioNode *)destinationNode;
- (void)disconnectMIDI:(AVAudioNode *)sourceNode fromNodes:(NSArray *)destinationNodes;
- (void)disconnectMIDIInput:(AVAudioNode *)node;
- (void)disconnectMIDIOutput:(AVAudioNode *)node;
- (void)disconnectNodeInput:(AVAudioNode *)node;
- (void)disconnectNodeInput:(AVAudioNode *)node bus:(AVAudioNodeBus)bus;
- (void)disconnectNodeOutput:(AVAudioNode *)node;
- (void)disconnectNodeOutput:(AVAudioNode *)node bus:(AVAudioNodeBus)bus;
- (void)pause;
- (void)prepare;
- (void)reset;
- (void)setAudioSession:(id)session;
- (void)setAutoShutdownEnabled:(BOOL)autoShutdownEnabled;
- (void)setMusicSequence:(MusicSequence)musicSequence;
- (void)stop;
@end

@implementation AVAudioEngine

- (NSSet)attachedNodes
{
  impl = self->_impl;
  std::recursive_mutex::lock((impl + 112));
  v4 = [*(self->_impl + 3) copy];
  std::recursive_mutex::unlock((impl + 112));
  return v4;
}

- (void)disconnectMIDIOutput:(AVAudioNode *)node
{
  v21 = *MEMORY[0x1E69E9840];
  impl = self->_impl;
  std::recursive_mutex::lock((impl + 112));
  v6 = self->_impl;
  if (AVAudioEngineLogCategory(void)::once != -1)
  {
    dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
  }

  v7 = *AVAudioEngineLogCategory(void)::category;
  if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_DEBUG))
  {
    v8 = *v6;
    *buf = 136315906;
    v12 = "AVAudioEngine.mm";
    v13 = 1024;
    v14 = 1132;
    v15 = 2048;
    v16 = v8;
    v17 = 2048;
    *v18 = node;
    _os_log_impl(&dword_1BA5AC000, v7, OS_LOG_TYPE_DEBUG, "%25s:%-5d Engine@%p: disconnect MIDI outputs on node: %p", buf, 0x26u);
  }

  if (node)
  {
    AVAudioEngineGraph::DisconnectAllMIDIOutputs(v6[1], node);
  }

  else
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v9 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      v12 = "AVAEInternal.h";
      v13 = 1024;
      v14 = 71;
      v15 = 2080;
      v16 = "AVAudioEngine.mm";
      v17 = 1024;
      *v18 = 1134;
      *&v18[4] = 2080;
      *&v18[6] = "DisconnectAllMIDIOutputs";
      v19 = 2080;
      v20 = "node != nil";
      _os_log_impl(&dword_1BA5AC000, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "node != nil"}];
    AVAudioEngineGraph::DisconnectAllMIDIOutputs(v6[1], 0);
  }

  v10 = *MEMORY[0x1E69E9840];

  std::recursive_mutex::unlock((impl + 112));
}

- (void)disconnectMIDIInput:(AVAudioNode *)node
{
  v21 = *MEMORY[0x1E69E9840];
  impl = self->_impl;
  std::recursive_mutex::lock((impl + 112));
  v6 = self->_impl;
  if (AVAudioEngineLogCategory(void)::once != -1)
  {
    dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
  }

  v7 = *AVAudioEngineLogCategory(void)::category;
  if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_DEBUG))
  {
    v8 = *v6;
    *buf = 136315906;
    v12 = "AVAudioEngine.mm";
    v13 = 1024;
    v14 = 1123;
    v15 = 2048;
    v16 = v8;
    v17 = 2048;
    *v18 = node;
    _os_log_impl(&dword_1BA5AC000, v7, OS_LOG_TYPE_DEBUG, "%25s:%-5d Engine@%p: disconnect MIDI inputs on node: %p", buf, 0x26u);
  }

  if (node)
  {
    AVAudioEngineGraph::DisconnectAllMIDIInputs(v6[1], node);
  }

  else
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v9 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      v12 = "AVAEInternal.h";
      v13 = 1024;
      v14 = 71;
      v15 = 2080;
      v16 = "AVAudioEngine.mm";
      v17 = 1024;
      *v18 = 1125;
      *&v18[4] = 2080;
      *&v18[6] = "DisconnectAllMIDIInputs";
      v19 = 2080;
      v20 = "node != nil";
      _os_log_impl(&dword_1BA5AC000, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "node != nil"}];
    AVAudioEngineGraph::DisconnectAllMIDIInputs(v6[1], 0);
  }

  v10 = *MEMORY[0x1E69E9840];

  std::recursive_mutex::unlock((impl + 112));
}

- (void)disconnectMIDI:(AVAudioNode *)sourceNode fromNodes:(NSArray *)destinationNodes
{
  v42 = *MEMORY[0x1E69E9840];
  impl = self->_impl;
  std::recursive_mutex::lock((impl + 112));
  v6 = self->_impl;
  if (AVAudioEngineLogCategory(void)::once != -1)
  {
    dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
  }

  v7 = *AVAudioEngineLogCategory(void)::category;
  if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_DEBUG))
  {
    v8 = *v6;
    *buf = 136316162;
    v23 = "AVAudioEngine.mm";
    v24 = 1024;
    v25 = 1111;
    v26 = 2048;
    v27 = v8;
    v28 = 2048;
    *v29 = sourceNode;
    *&v29[8] = 2080;
    *&v29[10] = [(NSString *)[(NSArray *)destinationNodes description] UTF8String];
    _os_log_impl(&dword_1BA5AC000, v7, OS_LOG_TYPE_DEBUG, "%25s:%-5d Engine@%p: disconnect MIDI node: %p from nodes: %s", buf, 0x30u);
  }

  if (!sourceNode || !destinationNodes || ![(NSArray *)destinationNodes count])
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v9 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      v23 = "AVAEInternal.h";
      v24 = 1024;
      v25 = 71;
      v26 = 2080;
      v27 = "AVAudioEngine.mm";
      v28 = 1024;
      *v29 = 1113;
      *&v29[4] = 2080;
      *&v29[6] = "DisconnectMIDI";
      *&v29[14] = 2080;
      *&v29[16] = "sourceNode != nil && destNodes != nil && destNodes.count > 0";
      _os_log_impl(&dword_1BA5AC000, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "sourceNode != nil && destNodes != nil && destNodes.count > 0"}];
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v10 = [(NSArray *)destinationNodes countByEnumeratingWithState:&v18 objects:buf count:16];
  v15 = v6;
  if (v10)
  {
    v11 = *v19;
    do
    {
      v12 = 0;
      do
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(destinationNodes);
        }

        if (!*(*(&v18 + 1) + 8 * v12) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          if (AVAudioEngineLogCategory(void)::once != -1)
          {
            dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
          }

          v13 = *AVAudioEngineLogCategory(void)::category;
          if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
          {
            *v30 = 136316418;
            v31 = "AVAEInternal.h";
            v32 = 1024;
            v33 = 71;
            v34 = 2080;
            v35 = "AVAudioEngine.mm";
            v36 = 1024;
            v37 = 1115;
            v38 = 2080;
            v39 = "DisconnectMIDI";
            v40 = 2080;
            v41 = "object && [object isKindOfClass: [AVAudioNode class]]";
            _os_log_impl(&dword_1BA5AC000, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", v30, 0x36u);
          }

          [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "object && [object isKindOfClass: [AVAudioNode class]]"}];
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [(NSArray *)destinationNodes countByEnumeratingWithState:&v18 objects:buf count:16];
    }

    while (v10);
  }

  AVAudioEngineGraph::DisconnectMIDI(v15[1], sourceNode, destinationNodes);
  v14 = *MEMORY[0x1E69E9840];

  std::recursive_mutex::unlock((impl + 112));
}

- (void)disconnectMIDI:(AVAudioNode *)sourceNode from:(AVAudioNode *)destinationNode
{
  v21 = *MEMORY[0x1E69E9840];
  impl = self->_impl;
  std::recursive_mutex::lock((impl + 112));
  v8 = self->_impl;
  if (AVAudioEngineLogCategory(void)::once != -1)
  {
    dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
  }

  v9 = *AVAudioEngineLogCategory(void)::category;
  if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_DEBUG))
  {
    v10 = *v8;
    *buf = 136316162;
    v14 = "AVAudioEngine.mm";
    v15 = 1024;
    v16 = 1102;
    v17 = 2048;
    v18 = v10;
    v19 = 2048;
    *v20 = sourceNode;
    *&v20[8] = 2048;
    *&v20[10] = destinationNode;
    _os_log_impl(&dword_1BA5AC000, v9, OS_LOG_TYPE_DEBUG, "%25s:%-5d Engine@%p: disconnect MIDI node: %p from node: %p", buf, 0x30u);
  }

  if (!sourceNode || !destinationNode)
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v11 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      v14 = "AVAEInternal.h";
      v15 = 1024;
      v16 = 71;
      v17 = 2080;
      v18 = "AVAudioEngine.mm";
      v19 = 1024;
      *v20 = 1104;
      *&v20[4] = 2080;
      *&v20[6] = "DisconnectMIDI";
      *&v20[14] = 2080;
      *&v20[16] = "sourceNode != nil && destNode != nil";
      _os_log_impl(&dword_1BA5AC000, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "sourceNode != nil && destNode != nil"}];
  }

  AVAudioEngineGraph::DisconnectMIDI(v8[1], sourceNode, [MEMORY[0x1E695DEC8] arrayWithObjects:{destinationNode, 0}]);
  v12 = *MEMORY[0x1E69E9840];

  std::recursive_mutex::unlock((impl + 112));
}

- (void)connectMIDI:(AVAudioNode *)sourceNode toNodes:(NSArray *)destinationNodes format:(AVAudioFormat *)format eventListBlock:(AUMIDIEventListBlock)tapBlock
{
  impl = self->_impl;
  std::recursive_mutex::lock((impl + 112));
  AVAudioEngineImpl::ConnectMIDI(self->_impl, sourceNode, destinationNodes, format, tapBlock, 1);

  std::recursive_mutex::unlock((impl + 112));
}

- (void)connectMIDI:(AVAudioNode *)sourceNode to:(AVAudioNode *)destinationNode format:(AVAudioFormat *)format eventListBlock:(AUMIDIEventListBlock)tapBlock
{
  impl = self->_impl;
  std::recursive_mutex::lock((impl + 112));
  AVAudioEngineImpl::ConnectMIDI(self->_impl, sourceNode, destinationNode, format, tapBlock, 1);

  std::recursive_mutex::unlock((impl + 112));
}

- (void)connectMIDI:(AVAudioNode *)sourceNode toNodes:(NSArray *)destinationNodes format:(AVAudioFormat *)format block:(AUMIDIOutputEventBlock)tapBlock
{
  impl = self->_impl;
  std::recursive_mutex::lock((impl + 112));
  AVAudioEngineImpl::ConnectMIDI(self->_impl, sourceNode, destinationNodes, format, tapBlock, 0);

  std::recursive_mutex::unlock((impl + 112));
}

- (void)connectMIDI:(AVAudioNode *)sourceNode to:(AVAudioNode *)destinationNode format:(AVAudioFormat *)format block:(AUMIDIOutputEventBlock)tapBlock
{
  impl = self->_impl;
  std::recursive_mutex::lock((impl + 112));
  AVAudioEngineImpl::ConnectMIDI(self->_impl, sourceNode, destinationNode, format, tapBlock, 0);

  std::recursive_mutex::unlock((impl + 112));
}

- (void)setAudioSession:(id)session
{
  v31 = *MEMORY[0x1E69E9840];
  impl = self->_impl;
  std::recursive_mutex::lock((impl + 112));
  v6 = self->_impl;
  if (session)
  {
    opaqueSessionID = [session opaqueSessionID];
    if (*(*(v6 + 1) + 187) == 1)
    {
      if (AVAudioEngineLogCategory(void)::once != -1)
      {
        dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
      }

      v11 = *AVAudioEngineLogCategory(void)::category;
      if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_DEFAULT))
      {
        v12 = *v6;
        v23 = 136315906;
        v24 = "AVAudioEngine.mm";
        v25 = 1024;
        v26 = 531;
        v27 = 2048;
        v28 = v12;
        v29 = 1024;
        v30 = opaqueSessionID;
        v13 = "%25s:%-5d Engine@%p: not associating with an audio session (0x%x) in manual rendering mode";
LABEL_17:
        v16 = v11;
        v17 = OS_LOG_TYPE_DEFAULT;
        v18 = 34;
        goto LABEL_18;
      }
    }

    else
    {
      v19 = *(v6 + 2);
      if (v19 && [v19 opaqueSessionID] == opaqueSessionID)
      {
        if (AVAudioEngineLogCategory(void)::once != -1)
        {
          dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
        }

        v11 = *AVAudioEngineLogCategory(void)::category;
        if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_DEFAULT))
        {
          v20 = *v6;
          v23 = 136315906;
          v24 = "AVAudioEngine.mm";
          v25 = 1024;
          v26 = 538;
          v27 = 2048;
          v28 = v20;
          v29 = 1024;
          v30 = opaqueSessionID;
          v13 = "%25s:%-5d Engine@%p: already associated with audio session (0x%x), no-op";
          goto LABEL_17;
        }
      }

      else
      {
        v21 = *(v6 + 7);
        if (v21)
        {
          if (AVAudioIOUnit::OverrideAudioSession(v21, session))
          {
            goto LABEL_24;
          }
        }

        else
        {
          AVAudioEngineImpl::GetIOUnit(v6, session, v7, v8, v9);
        }

        *(v6 + 2) = session;
      }
    }
  }

  else
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v14 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      v15 = *v6;
      v23 = 136315650;
      v24 = "AVAudioEngine.mm";
      v25 = 1024;
      v26 = 523;
      v27 = 2048;
      v28 = v15;
      v13 = "%25s:%-5d Engine@%p: cannot associate with a nil audio session";
      v16 = v14;
      v17 = OS_LOG_TYPE_ERROR;
      v18 = 28;
LABEL_18:
      _os_log_impl(&dword_1BA5AC000, v16, v17, v13, &v23, v18);
    }
  }

LABEL_24:
  v22 = *MEMORY[0x1E69E9840];

  std::recursive_mutex::unlock((impl + 112));
}

- (id)audioSession
{
  impl = self->_impl;
  std::recursive_mutex::lock((impl + 112));
  AudioSession = AVAudioEngineImpl::GetAudioSession(self->_impl);
  std::recursive_mutex::unlock((impl + 112));
  return AudioSession;
}

- (AVAudioEngineManualRenderingBlock)manualRenderingBlock
{
  impl = self->_impl;
  std::recursive_mutex::lock((impl + 112));
  v4 = self->_impl;
  v5 = *(v4 + 13);
  if (!v5)
  {
    v8 = MEMORY[0x1E69E9820];
    v9 = 3221225472;
    v10 = ___ZN17AVAudioEngineImpl23GetManualRenderingBlockEv_block_invoke;
    v11 = &__block_descriptor_48_e55_q28__0I8__AudioBufferList_I_1_AudioBuffer_II_v___12_i20l;
    v12 = v4;
    v13 = v4;
    operator new();
  }

  v6 = *v5;
  std::recursive_mutex::unlock((impl + 112));
  return v6;
}

- (void)disableManualRenderingMode
{
  v14 = *MEMORY[0x1E69E9840];
  impl = self->_impl;
  std::recursive_mutex::lock((impl + 112));
  v4 = self->_impl;
  if (*(*(v4 + 1) + 187) == 1)
  {
    std::lock[abi:ne200100]<std::recursive_mutex,caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>>((v4 + 112), (v4 + 176));
    AVAudioEngineImpl::Stop(v4, 0);
    AVAudioEngineImpl::Reset(v4);
    AVAudioEngineGraph::SetManualRenderingMode(*(v4 + 1), 0, AVAudioEngineManualRenderingModeRealtime, 0);
    if (*(*(v4 + 1) + 187) == 1)
    {
      if (AVAudioEngineLogCategory(void)::once != -1)
      {
        dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
      }

      v5 = *AVAudioEngineLogCategory(void)::category;
      if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
      {
        v6 = *v4;
        v8 = 136315650;
        v9 = "AVAudioEngine.mm";
        v10 = 1024;
        v11 = 1349;
        v12 = 2048;
        v13 = v6;
        _os_log_impl(&dword_1BA5AC000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d Engine@%p: could not disable manual rendering mode", &v8, 0x1Cu);
      }
    }

    if (*(*(v4 + 1) + 187) == 1)
    {
      *(v4 + 2) = 0;
    }

    AVAudioEngineImpl::UpdateIONodes(v4);
    caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock((v4 + 176));
    std::recursive_mutex::unlock((v4 + 112));
  }

  v7 = *MEMORY[0x1E69E9840];

  std::recursive_mutex::unlock((impl + 112));
}

- (AVAudioFramePosition)manualRenderingSampleTime
{
  impl = self->_impl;
  std::recursive_mutex::lock((impl + 112));
  v4 = *(self->_impl + 1);
  if (*(v4 + 187) == 1)
  {
    v5 = *(v4 + 200);
  }

  else
  {
    v5 = 0;
  }

  std::recursive_mutex::unlock((impl + 112));
  return v5;
}

- (AVAudioFrameCount)manualRenderingMaximumFrameCount
{
  impl = self->_impl;
  std::recursive_mutex::lock((impl + 112));
  v4 = self->_impl;
  if (*(*(v4 + 1) + 187) == 1)
  {
    manualRenderingMaximumFrameCount = [AVAudioEngineImpl::GetOutputNode(v4) manualRenderingMaximumFrameCount];
  }

  else
  {
    manualRenderingMaximumFrameCount = 0;
  }

  std::recursive_mutex::unlock((impl + 112));
  return manualRenderingMaximumFrameCount;
}

- (AVAudioFormat)manualRenderingFormat
{
  impl = self->_impl;
  std::recursive_mutex::lock((impl + 112));
  ManualRenderingFormat = AVAudioEngineImpl::GetManualRenderingFormat(self->_impl);
  std::recursive_mutex::unlock((impl + 112));
  return ManualRenderingFormat;
}

- (AVAudioEngineManualRenderingMode)manualRenderingMode
{
  impl = self->_impl;
  std::recursive_mutex::lock((impl + 112));
  v4 = *(*(self->_impl + 1) + 192);
  std::recursive_mutex::unlock((impl + 112));
  return v4;
}

- (BOOL)isInManualRenderingMode
{
  selfCopy = self;
  impl = self->_impl;
  std::recursive_mutex::lock((impl + 112));
  LOBYTE(selfCopy) = *(*(selfCopy->_impl + 1) + 187);
  std::recursive_mutex::unlock((impl + 112));
  return selfCopy;
}

- (void)setAutoShutdownEnabled:(BOOL)autoShutdownEnabled
{
  v3 = autoShutdownEnabled;
  impl = self->_impl;
  std::recursive_mutex::lock((impl + 112));
  v6 = *(self->_impl + 1);
  v7 = *v6;
  std::recursive_mutex::lock((*v6 + 112));
  if (v6[208] != v3)
  {
    v6[208] = v3;
    AVAudioEngineGraph::MonitorState(v6);
  }

  std::recursive_mutex::unlock((v7 + 112));

  std::recursive_mutex::unlock((impl + 112));
}

- (BOOL)isAutoShutdownEnabled
{
  impl = self->_impl;
  std::recursive_mutex::lock((impl + 112));
  v4 = *(self->_impl + 1);
  if (v4)
  {
    v5 = *(v4 + 208);
  }

  else
  {
    v5 = 0;
  }

  std::recursive_mutex::unlock((impl + 112));
  return v5 & 1;
}

- (BOOL)isRunning
{
  impl = self->_impl;
  std::recursive_mutex::lock((impl + 112));
  v4 = self->_impl;
  v5 = *(v4 + 1);
  if (v5)
  {
    v6 = *(v5 + 208);
    v7 = (v5 + 184);
    v8 = v4 + 64;
    if (!v6)
    {
      v8 = v7;
    }

    v9 = *v8;
  }

  else
  {
    v9 = 0;
  }

  std::recursive_mutex::unlock((impl + 112));
  return v9 & 1;
}

- (MusicSequence)musicSequence
{
  impl = self->_impl;
  std::recursive_mutex::lock((impl + 112));
  v4 = *(self->_impl + 1);
  v5 = *v4;
  std::recursive_mutex::lock((*v4 + 112));
  v6 = v4[10];
  if (v6)
  {
    v7 = *(v6 + 8);
  }

  else
  {
    v7 = 0;
  }

  std::recursive_mutex::unlock((v5 + 112));
  std::recursive_mutex::unlock((impl + 112));
  return v7;
}

- (void)setMusicSequence:(MusicSequence)musicSequence
{
  v29 = *MEMORY[0x1E69E9840];
  impl = self->_impl;
  std::recursive_mutex::lock((impl + 112));
  v6 = *(self->_impl + 1);
  v7 = *v6;
  std::recursive_mutex::lock((*v6 + 112));
  v8 = v6[10];
  if (!v8)
  {
    operator new();
  }

  v10 = (v8 + 8);
  v9 = *(v8 + 8);
  if (v9 == musicSequence)
  {
    goto LABEL_20;
  }

  if (v9)
  {
    MusicSequenceSetAudioGraph();
    *v10 = 0;
  }

  if (!musicSequence)
  {
    goto LABEL_20;
  }

  if (!*(v8 + 16))
  {
    operator new();
  }

  v11 = MusicSequenceSetAudioGraph();
  if (!v11)
  {
    *v10 = musicSequence;
LABEL_20:
    std::recursive_mutex::unlock((v7 + 112));
    goto LABEL_21;
  }

  if (AVAudioEngineLogCategory(void)::once != -1)
  {
    dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
  }

  v12 = *AVAudioEngineLogCategory(void)::category;
  if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
  {
    *buf = 136316674;
    v16 = "AVAEInternal.h";
    v17 = 1024;
    v18 = 104;
    v19 = 2080;
    v20 = "AVAudioEngineGraph.mm";
    v21 = 1024;
    v22 = 4519;
    v23 = 2080;
    v24 = "SetSequence";
    v25 = 2080;
    v26 = "err = MusicSequenceSetAudioGraph(inSequence, _seqGraphImpl)";
    v27 = 1024;
    v28 = v11;
    _os_log_impl(&dword_1BA5AC000, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d [%s:%d:%s: (%s): error %d", buf, 0x3Cu);
  }

  [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"error %d", v11}];
  std::recursive_mutex::unlock((v7 + 112));
  if (AVAudioEngineLogCategory(void)::once != -1)
  {
    dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
  }

  v13 = *AVAudioEngineLogCategory(void)::category;
  if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
  {
    *buf = 136316674;
    v16 = "AVAEInternal.h";
    v17 = 1024;
    v18 = 104;
    v19 = 2080;
    v20 = "AVAudioEngine.mm";
    v21 = 1024;
    v22 = 1552;
    v23 = 2080;
    v24 = "SetSequence";
    v25 = 2080;
    v26 = "_graph->SetSequence(inSequence)";
    v27 = 1024;
    v28 = v11;
    _os_log_impl(&dword_1BA5AC000, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d [%s:%d:%s: (%s): error %d", buf, 0x3Cu);
  }

  [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"error %d", v11}];
LABEL_21:
  v14 = *MEMORY[0x1E69E9840];

  std::recursive_mutex::unlock((impl + 112));
}

- (id)description
{
  v100 = *MEMORY[0x1E69E9840];
  impl = self->_impl;
  std::recursive_mutex::lock((impl + 112));
  v4 = *(self->_impl + 1);
  if (v4)
  {
    v5 = *v4;
    v70 = impl;
    std::recursive_mutex::lock((*v4 + 112));
    v69 = v5;
    v72 = 0;
    v73 = 0;
    v74 = 0;
    v6 = funopen(&v71, 0, CAMemoryStream::Write, 0, 0);
    v71 = v6;
    __stream = v6;
    fprintf(v6, "\n________ %s ________\n", "GraphDescription");
    fprintf(v6, "AVAudioEngineGraph %p: initialized = %d, running = %d, number of nodes = %d\n", v4, *(v4 + 185), *(v4 + 184), *(*(v4 + 8) + 16));
    v7 = *(v4 + 8);
    v77 = 0;
    v78 = 0;
    v76 = &v77;
    v8 = *v7;
    if (*v7 != v7 + 1)
    {
      if (v76 != &v77)
      {
        v9 = &v77;
        do
        {
          v10 = v9[2];
          v11 = *v10 == v9;
          v9 = v10;
        }

        while (v11);
        v10[4];
        v8[4];
      }

      operator new();
    }

    v12 = v7 + 1;
    if (v8 != v12)
    {
      do
      {
        *(v8[5] + 32) &= 0xFFFFFFE7;
        v13 = v8[1];
        if (v13)
        {
          do
          {
            v14 = v13;
            v13 = *v13;
          }

          while (v13);
        }

        else
        {
          do
          {
            v14 = v8[2];
            v11 = *v14 == v8;
            v8 = v14;
          }

          while (!v11);
        }

        v8 = v14;
      }

      while (v14 != v12);
    }

    if (AVAudioEngineGraph::GetNodeFromMap(v4, *(v4 + 24)))
    {
      fwrite("\n\t ******** output chain ********\n", 0x22uLL, 1uLL, __stream);
      NodeFromMap = AVAudioEngineGraph::GetNodeFromMap(v4, *(v4 + 24));
      *v84 = &unk_1F384D780;
      *&v84[8] = &__stream;
      *&v85 = &v76;
      *(&v85 + 1) = v84;
      AUGraphParser::TraverseGraphNodesBFS(1, NodeFromMap, 0, v84);
      std::__function::__value_func<ETraversalStatus ()(AUGraphNodeBaseV3 &,AUGraphConnection *)>::~__value_func[abi:ne200100](v84);
    }

    if (AVAudioEngineGraph::GetNodeFromMap(v4, *(v4 + 16)))
    {
      fwrite("\n\t ******** input chain ********\n", 0x21uLL, 1uLL, __stream);
      v16 = AVAudioEngineGraph::GetNodeFromMap(v4, *(v4 + 16));
      *v84 = &unk_1F384D7C8;
      *&v84[8] = &__stream;
      *&v85 = &v76;
      *(&v85 + 1) = v84;
      AUGraphParser::TraverseGraphNodesBFS(0, v16, 0, v84);
      std::__function::__value_func<ETraversalStatus ()(AUGraphNodeBaseV3 &,AUGraphConnection *)>::~__value_func[abi:ne200100](v84);
    }

    if (*(v4 + 152))
    {
      fwrite("\n\t ******** pending connections - output ********\n", 0x32uLL, 1uLL, __stream);
      v17 = *(v4 + 144);
      if (v17 != (v4 + 136))
      {
        while (1)
        {
          v98 = 0u;
          v99 = 0u;
          v96 = 0u;
          v97 = 0u;
          v94 = 0u;
          v95 = 0u;
          v92 = 0u;
          v93 = 0u;
          v90 = 0u;
          v91 = 0u;
          v88 = 0u;
          v89 = 0u;
          v86 = 0u;
          v87 = 0u;
          *v84 = 0u;
          v85 = 0u;
          v19 = v17 + 2;
          v18 = v17[2];
          memset(&v75, 0, sizeof(v75));
          if (v18)
          {
            break;
          }

          v23 = v17[4];
          if (v23)
          {
            v24 = *(v23 + 24);
            v21 = (v17 + 5);
            v22 = (*v24 + 72);
LABEL_25:
            v25 = *v21;
            v26 = (*v22)();
            if (v26)
            {
              streamDescription = [v26 streamDescription];
              v28 = *(streamDescription + 16);
              *&v75.var0 = *streamDescription;
              *&v75.var3 = v28;
              *&v75.var7 = *(streamDescription + 32);
            }
          }

          v29 = __stream;
          AVAudioEngineGraph::ConnAsString(&__p, v4, (v17 + 2));
          v30 = SHIBYTE(v82);
          v31 = __p;
          CAStreamBasicDescription::AsString(&v75, v84, 0x100uLL, v32, v33);
          if (v30 >= 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = v31;
          }

          fprintf(v29, "\n\t %s, [%s]\n", p_p, v84);
          if (SHIBYTE(v82) < 0)
          {
            operator delete(__p);
          }

          v35 = *v19;
          if (*v19)
          {
            __p = &unk_1F384D810;
            p_stream = &__stream;
            v82 = &v76;
            v83 = &__p;
            AUGraphParser::TraverseGraphNodesBFS(1, v35, 0, &__p);
            std::__function::__value_func<ETraversalStatus ()(AUGraphNodeBaseV3 &,AUGraphConnection *)>::~__value_func[abi:ne200100](&__p);
          }

          v17 = v17[1];
          if (v17 == (v4 + 136))
          {
            goto LABEL_35;
          }
        }

        v20 = *(v18 + 24);
        v21 = (v17 + 3);
        v22 = (*v20 + 48);
        goto LABEL_25;
      }
    }

LABEL_35:
    if (*(v4 + 176))
    {
      fwrite("\n\t ******** pending connections - input ********\n", 0x31uLL, 1uLL, __stream);
      v36 = *(v4 + 168);
      if (v36 != (v4 + 160))
      {
        while (1)
        {
          v98 = 0u;
          v99 = 0u;
          v96 = 0u;
          v97 = 0u;
          v94 = 0u;
          v95 = 0u;
          v92 = 0u;
          v93 = 0u;
          v90 = 0u;
          v91 = 0u;
          v88 = 0u;
          v89 = 0u;
          v86 = 0u;
          v87 = 0u;
          *v84 = 0u;
          v85 = 0u;
          v37 = v36[2];
          memset(&v75, 0, sizeof(v75));
          if (v37)
          {
            break;
          }

          v41 = v36[4];
          if (v41)
          {
            v42 = *(v41 + 24);
            v39 = (v36 + 5);
            v40 = (*v42 + 72);
LABEL_41:
            v43 = *v39;
            v44 = (*v40)();
            if (v44)
            {
              streamDescription2 = [v44 streamDescription];
              v46 = *(streamDescription2 + 16);
              *&v75.var0 = *streamDescription2;
              *&v75.var3 = v46;
              *&v75.var7 = *(streamDescription2 + 32);
            }
          }

          v47 = __stream;
          AVAudioEngineGraph::ConnAsString(&__p, v4, (v36 + 2));
          v48 = SHIBYTE(v82);
          v49 = __p;
          CAStreamBasicDescription::AsString(&v75, v84, 0x100uLL, v50, v51);
          if (v48 >= 0)
          {
            v52 = &__p;
          }

          else
          {
            v52 = v49;
          }

          fprintf(v47, "\n\t %s, [%s]\n", v52, v84);
          if (SHIBYTE(v82) < 0)
          {
            operator delete(__p);
          }

          v53 = v36[4];
          if (v53)
          {
            __p = &unk_1F384D858;
            p_stream = &__stream;
            v82 = &v76;
            v83 = &__p;
            AUGraphParser::TraverseGraphNodesBFS(0, v53, 0, &__p);
            std::__function::__value_func<ETraversalStatus ()(AUGraphNodeBaseV3 &,AUGraphConnection *)>::~__value_func[abi:ne200100](&__p);
          }

          v36 = v36[1];
          if (v36 == (v4 + 160))
          {
            goto LABEL_51;
          }
        }

        v38 = *(v37 + 24);
        v39 = (v36 + 3);
        v40 = (*v38 + 48);
        goto LABEL_41;
      }
    }

LABEL_51:
    if (v78)
    {
      fwrite("\n\t ******** other nodes ********\n", 0x21uLL, 1uLL, __stream);
      v55 = v76;
      if (v76 != &v77)
      {
        do
        {
          AUGraphNodeBase::PrintNodeObject(v55[5], __stream, v54);
          v56 = v55[1];
          if (v56)
          {
            do
            {
              v57 = v56;
              v56 = *v56;
            }

            while (v56);
          }

          else
          {
            do
            {
              v57 = v55[2];
              v11 = *v57 == v55;
              v55 = v57;
            }

            while (!v11);
          }

          v55 = v57;
        }

        while (v57 != &v77);
      }
    }

    v58 = *(v4 + 8);
    v61 = *v58;
    v59 = v58 + 1;
    v60 = v61;
    impl = v70;
    if (v61 != v59)
    {
      do
      {
        *(v60[5] + 32) &= 0xFFFFFFE7;
        v62 = v60[1];
        if (v62)
        {
          do
          {
            v63 = v62;
            v62 = *v62;
          }

          while (v62);
        }

        else
        {
          do
          {
            v63 = v60[2];
            v11 = *v63 == v60;
            v60 = v63;
          }

          while (!v11);
        }

        v60 = v63;
      }

      while (v63 != v59);
    }

    fwrite("______________________________________\n\n", 0x28uLL, 1uLL, __stream);
    std::__tree<std::__value_type<AUGraphNodeBaseV3 *,std::pair<AUGraphNodeBaseV3 *,unsigned int>>,std::__map_value_compare<AUGraphNodeBaseV3 *,std::__value_type<AUGraphNodeBaseV3 *,std::pair<AUGraphNodeBaseV3 *,unsigned int>>,std::less<AUGraphNodeBaseV3 *>,true>,std::allocator<std::__value_type<AUGraphNodeBaseV3 *,std::pair<AUGraphNodeBaseV3 *,unsigned int>>>>::destroy(v77);
    fflush(v71);
    v64 = v72;
    if (!v72)
    {
      v64 = malloc_type_malloc(1uLL, 0x100004077774924uLL);
      v72 = v64;
    }

    *(v64 + v73) = 0;
    v65 = v72;
    v72 = 0;
    v73 = 0;
    v74 = 0;
    fclose(v71);
    free(v72);
    std::recursive_mutex::unlock((v69 + 112));
    v66 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v65];
    free(v65);
  }

  else
  {
    v66 = @"<AVAudioEngine: nil graph>";
  }

  std::recursive_mutex::unlock((impl + 112));
  v67 = *MEMORY[0x1E69E9840];
  return v66;
}

- (NSArray)outputConnectionPointsForNode:(AVAudioNode *)node outputBus:(AVAudioNodeBus)bus
{
  impl = self->_impl;
  std::recursive_mutex::lock((impl + 112));
  OutputConnectionPointsForNode = AVAudioEngineImpl::GetOutputConnectionPointsForNode(self->_impl, node, bus);
  std::recursive_mutex::unlock((impl + 112));
  return OutputConnectionPointsForNode;
}

- (AVAudioConnectionPoint)inputConnectionPointForNode:(AVAudioNode *)node inputBus:(AVAudioNodeBus)bus
{
  impl = self->_impl;
  std::recursive_mutex::lock((impl + 112));
  InputConnectionPointForNode = AVAudioEngineImpl::GetInputConnectionPointForNode(self->_impl, node, bus);
  std::recursive_mutex::unlock((impl + 112));
  return InputConnectionPointForNode;
}

- (void)stop
{
  impl = self->_impl;
  std::recursive_mutex::lock((impl + 112));
  AVAudioEngineImpl::Stop(self->_impl, 0);

  std::recursive_mutex::unlock((impl + 112));
}

- (void)reset
{
  impl = self->_impl;
  std::recursive_mutex::lock((impl + 112));
  AVAudioEngineImpl::Reset(self->_impl);

  std::recursive_mutex::unlock((impl + 112));
}

- (void)pause
{
  impl = self->_impl;
  std::recursive_mutex::lock((impl + 112));
  AVAudioEngineImpl::Pause(self->_impl, 0);

  std::recursive_mutex::unlock((impl + 112));
}

- (void)prepare
{
  v16 = *MEMORY[0x1E69E9840];
  impl = self->_impl;
  std::recursive_mutex::lock((impl + 112));
  v7 = 0;
  AVAudioEngineImpl::Initialize(self->_impl, &v7);
  if (v7)
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v4 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      code = [(NSError *)v7 code];
      *buf = 136315906;
      v9 = "AVAudioEngine.mm";
      v10 = 1024;
      v11 = 192;
      v12 = 2048;
      selfCopy = self;
      v14 = 1024;
      v15 = code;
      _os_log_impl(&dword_1BA5AC000, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d Engine@%p: could not initialize, error = %d", buf, 0x22u);
    }
  }

  std::recursive_mutex::unlock((impl + 112));
  v6 = *MEMORY[0x1E69E9840];
}

- (BOOL)startAndReturnError:(NSError *)outError
{
  v27 = *MEMORY[0x1E69E9840];
  impl = self->_impl;
  std::recursive_mutex::lock((impl + 112));
  v6 = self->_impl;
  if (AVAudioEngineLogCategory(void)::once != -1)
  {
    dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
  }

  v7 = *AVAudioEngineLogCategory(void)::category;
  if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *v6;
    v9 = *(v6 + 1);
    if (v9)
    {
      v10 = v9[208];
      v9 += 184;
      if (v10)
      {
        v9 = (v6 + 64);
      }

      LODWORD(v9) = *v9;
    }

    *v20 = 136315906;
    *&v20[4] = "AVAudioEngine.mm";
    v21 = 1024;
    v22 = 1182;
    v23 = 2048;
    v24 = v8;
    v25 = 1024;
    v26 = v9;
    _os_log_impl(&dword_1BA5AC000, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Engine@%p: start, was running %d", v20, 0x22u);
  }

  v11 = *(v6 + 1);
  if (v11)
  {
    v12 = *(v11 + 208) ? v6 + 64 : (v11 + 184);
    if (*v12 == 1)
    {
      v13 = 1;
      v6[64] = 1;
      if (outError)
      {
        *outError = 0;
      }

      goto LABEL_25;
    }
  }

  *v20 = 0;
  AVAudioEngineImpl::Initialize(v6, v20);
  v14 = *v20;
  if (!*v20)
  {
    v15 = *(v6 + 7);
    if (!v15)
    {
LABEL_22:
      AVAudioEngineGraph::Start(*(v6 + 1), v20);
      v14 = *v20;
      goto LABEL_23;
    }

    if (*(v6 + 5))
    {
      CanPerformIO = AVAudioIOUnit::CanPerformIO(v15, 0);
      if (!*(v6 + 4))
      {
        goto LABEL_21;
      }
    }

    else
    {
      v19 = *(v6 + 4);
      CanPerformIO = v19 != 0;
      if (!v19)
      {
LABEL_21:
        _AVAE_CheckAndReturnErr("/Library/Caches/com.apple.xbs/Sources/AVFAudio/Source/AVFAudio/AVAudioEngine/AVAudioEngine.mm", 1269, "CheckCanPerformIO", "canPerformIO", CanPerformIO, 560227702, v20);
        v14 = *v20;
        if (*v20)
        {
          goto LABEL_23;
        }

        goto LABEL_22;
      }
    }

    CanPerformIO &= AVAudioIOUnit::CanPerformIO(*(v6 + 7), 1);
    goto LABEL_21;
  }

LABEL_23:
  v13 = v14 == 0;
  v6[64] = v14 == 0;
  if (outError)
  {
    *outError = v14;
  }

LABEL_25:
  std::recursive_mutex::unlock((impl + 112));
  v17 = *MEMORY[0x1E69E9840];
  return v13;
}

- (void)disconnectNodeOutput:(AVAudioNode *)node
{
  v39 = *MEMORY[0x1E69E9840];
  impl = self->_impl;
  std::recursive_mutex::lock((impl + 112));
  v5 = self->_impl;
  if (!node)
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v6 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      v28 = "AVAEInternal.h";
      v29 = 1024;
      v30 = 71;
      v31 = 2080;
      v32 = "AVAudioEngine.mm";
      v33 = 1024;
      *v34 = 1059;
      *&v34[4] = 2080;
      *&v34[6] = "DisconnectAllOutputs";
      v35 = 2080;
      v36 = "node != nil";
      _os_log_impl(&dword_1BA5AC000, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "node != nil"}];
  }

  if (([*(v5 + 3) containsObject:node] & 1) == 0)
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v7 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      v28 = "AVAEInternal.h";
      v29 = 1024;
      v30 = 71;
      v31 = 2080;
      v32 = "AVAudioEngine.mm";
      v33 = 1024;
      *v34 = 1060;
      *&v34[4] = 2080;
      *&v34[6] = "DisconnectAllOutputs";
      v35 = 2080;
      v36 = "[_nodes containsObject: node]";
      _os_log_impl(&dword_1BA5AC000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "[_nodes containsObject: node]"}];
  }

  if (AVAudioEngineLogCategory(void)::once != -1)
  {
    dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
  }

  v8 = *AVAudioEngineLogCategory(void)::category;
  if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_DEBUG))
  {
    v9 = *v5;
    *buf = 136315906;
    v28 = "AVAudioEngine.mm";
    v29 = 1024;
    v30 = 1062;
    v31 = 2048;
    v32 = v9;
    v33 = 2048;
    *v34 = node;
    _os_log_impl(&dword_1BA5AC000, v8, OS_LOG_TYPE_DEBUG, "%25s:%-5d Engine@%p: disconnect all outputs on node: %p", buf, 0x26u);
  }

  v10 = *(v5 + 1);
  if (!node)
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v11 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      v28 = "AVAEInternal.h";
      v29 = 1024;
      v30 = 71;
      v31 = 2080;
      v32 = "AVAudioEngineGraph.mm";
      v33 = 1024;
      *v34 = 2864;
      *&v34[4] = 2080;
      *&v34[6] = "DisconnectAllOutputs";
      v35 = 2080;
      v36 = "inAVNode";
      _os_log_impl(&dword_1BA5AC000, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "inAVNode"}];
  }

  impl = [(AVAudioNode *)node impl];
  if (!impl)
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v13 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      v28 = "AVAEInternal.h";
      v29 = 1024;
      v30 = 71;
      v31 = 2080;
      v32 = "AVAudioEngineGraph.mm";
      v33 = 1024;
      *v34 = 2867;
      *&v34[4] = 2080;
      *&v34[6] = "DisconnectAllOutputs";
      v35 = 2080;
      v36 = "inImpl";
      _os_log_impl(&dword_1BA5AC000, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "inImpl"}];
  }

  v14 = *v10;
  std::recursive_mutex::lock((*v10 + 112));
  if (!AVAudioEngineGraph::IsNodeInGraph(v10, impl))
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v15 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      v28 = "AVAEInternal.h";
      v29 = 1024;
      v30 = 71;
      v31 = 2080;
      v32 = "AVAudioEngineGraph.mm";
      v33 = 1024;
      *v34 = 2872;
      *&v34[4] = 2080;
      *&v34[6] = "DisconnectAllOutputs";
      v35 = 2080;
      v36 = "IsNodeInGraph(inImpl)";
      _os_log_impl(&dword_1BA5AC000, v15, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "IsNodeInGraph(inImpl)"}];
  }

  NodeFromMap = AVAudioEngineGraph::GetNodeFromMap(v10, impl);
  v24 = &v24;
  v25 = &v24;
  v26 = 0;
  AUGraphNodeBase::GetValidConnections(NodeFromMap, 0, &v24);
  v17 = v25;
  if (v25 == &v24)
  {
    v18 = 0;
  }

  else
  {
    v18 = 0;
    do
    {
      v19 = AVAudioEngineGraph::_DisconnectInput(v10, *(v17[4] + 24), *(v17 + 10));
      if (v19)
      {
        if (AVAudioEngineLogCategory(void)::once != -1)
        {
          dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
        }

        v20 = *AVAudioEngineLogCategory(void)::category;
        if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
        {
          *buf = 136316674;
          v28 = "AVAEInternal.h";
          v29 = 1024;
          v30 = 104;
          v31 = 2080;
          v32 = "AVAudioEngineGraph.mm";
          v33 = 1024;
          *v34 = 2884;
          *&v34[4] = 2080;
          *&v34[6] = "DisconnectAllOutputs";
          v35 = 2080;
          v36 = "tmpErr = _DisconnectInput(conn.destNode->NodeImpl(), conn.destBus)";
          v37 = 1024;
          v38 = v19;
          _os_log_impl(&dword_1BA5AC000, v20, OS_LOG_TYPE_ERROR, "%25s:%-5d [%s:%d:%s: (%s): error %d", buf, 0x3Cu);
        }

        [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"error %d", v19}];
        v18 = v19;
      }

      v17 = v17[1];
    }

    while (v17 != &v24);
  }

  std::__list_imp<AUGraphConnection>::clear(&v24);
  std::recursive_mutex::unlock((v14 + 112));
  if (v18)
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v21 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316674;
      v28 = "AVAEInternal.h";
      v29 = 1024;
      v30 = 104;
      v31 = 2080;
      v32 = "AVAudioEngine.mm";
      v33 = 1024;
      *v34 = 1064;
      *&v34[4] = 2080;
      *&v34[6] = "DisconnectAllOutputs";
      v35 = 2080;
      v36 = "_graph->DisconnectAllOutputs(node)";
      v37 = 1024;
      v38 = v18;
      _os_log_impl(&dword_1BA5AC000, v21, OS_LOG_TYPE_ERROR, "%25s:%-5d [%s:%d:%s: (%s): error %d", buf, 0x3Cu);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"error %d", v18}];
  }

  v22 = *MEMORY[0x1E69E9840];

  std::recursive_mutex::unlock((impl + 112));
}

- (void)disconnectNodeInput:(AVAudioNode *)node
{
  v39 = *MEMORY[0x1E69E9840];
  impl = self->_impl;
  std::recursive_mutex::lock((impl + 112));
  v5 = self->_impl;
  if (AVAudioEngineLogCategory(void)::once != -1)
  {
    dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
  }

  v6 = *AVAudioEngineLogCategory(void)::category;
  if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_DEBUG))
  {
    v7 = *v5;
    *buf = 136315906;
    v28 = "AVAudioEngine.mm";
    v29 = 1024;
    v30 = 1049;
    v31 = 2048;
    v32 = v7;
    v33 = 2048;
    *v34 = node;
    _os_log_impl(&dword_1BA5AC000, v6, OS_LOG_TYPE_DEBUG, "%25s:%-5d Engine@%p: disconnect all inputs on node: %p", buf, 0x26u);
  }

  if (!node)
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v8 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      v28 = "AVAEInternal.h";
      v29 = 1024;
      v30 = 71;
      v31 = 2080;
      v32 = "AVAudioEngine.mm";
      v33 = 1024;
      *v34 = 1051;
      *&v34[4] = 2080;
      *&v34[6] = "DisconnectAllInputs";
      v35 = 2080;
      v36 = "node != nil";
      _os_log_impl(&dword_1BA5AC000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "node != nil"}];
  }

  if (([*(v5 + 3) containsObject:node] & 1) == 0)
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v9 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      v28 = "AVAEInternal.h";
      v29 = 1024;
      v30 = 71;
      v31 = 2080;
      v32 = "AVAudioEngine.mm";
      v33 = 1024;
      *v34 = 1052;
      *&v34[4] = 2080;
      *&v34[6] = "DisconnectAllInputs";
      v35 = 2080;
      v36 = "[_nodes containsObject: node]";
      _os_log_impl(&dword_1BA5AC000, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "[_nodes containsObject: node]"}];
  }

  v10 = *(v5 + 1);
  if (!node)
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v11 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      v28 = "AVAEInternal.h";
      v29 = 1024;
      v30 = 71;
      v31 = 2080;
      v32 = "AVAudioEngineGraph.mm";
      v33 = 1024;
      *v34 = 2835;
      *&v34[4] = 2080;
      *&v34[6] = "DisconnectAllInputs";
      v35 = 2080;
      v36 = "inAVNode";
      _os_log_impl(&dword_1BA5AC000, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "inAVNode"}];
  }

  impl = [(AVAudioNode *)node impl];
  if (!impl)
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v13 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      v28 = "AVAEInternal.h";
      v29 = 1024;
      v30 = 71;
      v31 = 2080;
      v32 = "AVAudioEngineGraph.mm";
      v33 = 1024;
      *v34 = 2838;
      *&v34[4] = 2080;
      *&v34[6] = "DisconnectAllInputs";
      v35 = 2080;
      v36 = "inImpl";
      _os_log_impl(&dword_1BA5AC000, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "inImpl"}];
  }

  v14 = *v10;
  std::recursive_mutex::lock((*v10 + 112));
  if (!AVAudioEngineGraph::IsNodeInGraph(v10, impl))
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v15 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      v28 = "AVAEInternal.h";
      v29 = 1024;
      v30 = 71;
      v31 = 2080;
      v32 = "AVAudioEngineGraph.mm";
      v33 = 1024;
      *v34 = 2843;
      *&v34[4] = 2080;
      *&v34[6] = "DisconnectAllInputs";
      v35 = 2080;
      v36 = "IsNodeInGraph(inImpl)";
      _os_log_impl(&dword_1BA5AC000, v15, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "IsNodeInGraph(inImpl)"}];
  }

  NodeFromMap = AVAudioEngineGraph::GetNodeFromMap(v10, impl);
  v24 = &v24;
  v25 = &v24;
  v26 = 0;
  AUGraphNodeBase::GetValidConnections(NodeFromMap, 1, &v24);
  v17 = v25;
  if (v25 == &v24)
  {
    v18 = 0;
  }

  else
  {
    v18 = 0;
    do
    {
      v19 = AVAudioEngineGraph::_DisconnectInput(v10, *(v17[4] + 24), *(v17 + 10));
      if (v19)
      {
        if (AVAudioEngineLogCategory(void)::once != -1)
        {
          dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
        }

        v20 = *AVAudioEngineLogCategory(void)::category;
        if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
        {
          *buf = 136316674;
          v28 = "AVAEInternal.h";
          v29 = 1024;
          v30 = 104;
          v31 = 2080;
          v32 = "AVAudioEngineGraph.mm";
          v33 = 1024;
          *v34 = 2855;
          *&v34[4] = 2080;
          *&v34[6] = "DisconnectAllInputs";
          v35 = 2080;
          v36 = "tmpErr = _DisconnectInput(conn.destNode->NodeImpl(), conn.destBus)";
          v37 = 1024;
          v38 = v19;
          _os_log_impl(&dword_1BA5AC000, v20, OS_LOG_TYPE_ERROR, "%25s:%-5d [%s:%d:%s: (%s): error %d", buf, 0x3Cu);
        }

        [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"error %d", v19}];
        v18 = v19;
      }

      v17 = v17[1];
    }

    while (v17 != &v24);
  }

  std::__list_imp<AUGraphConnection>::clear(&v24);
  std::recursive_mutex::unlock((v14 + 112));
  if (v18)
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v21 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316674;
      v28 = "AVAEInternal.h";
      v29 = 1024;
      v30 = 104;
      v31 = 2080;
      v32 = "AVAudioEngine.mm";
      v33 = 1024;
      *v34 = 1054;
      *&v34[4] = 2080;
      *&v34[6] = "DisconnectAllInputs";
      v35 = 2080;
      v36 = "_graph->DisconnectAllInputs(node)";
      v37 = 1024;
      v38 = v18;
      _os_log_impl(&dword_1BA5AC000, v21, OS_LOG_TYPE_ERROR, "%25s:%-5d [%s:%d:%s: (%s): error %d", buf, 0x3Cu);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"error %d", v18}];
  }

  v22 = *MEMORY[0x1E69E9840];

  std::recursive_mutex::unlock((impl + 112));
}

- (void)disconnectNodeOutput:(AVAudioNode *)node bus:(AVAudioNodeBus)bus
{
  v33 = *MEMORY[0x1E69E9840];
  impl = self->_impl;
  std::recursive_mutex::lock((impl + 112));
  v8 = self->_impl;
  if (AVAudioEngineLogCategory(void)::once != -1)
  {
    dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
  }

  v9 = *AVAudioEngineLogCategory(void)::category;
  if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_DEBUG))
  {
    v10 = *v8;
    *buf = 136316162;
    *&buf[4] = "AVAudioEngine.mm";
    v25 = 1024;
    v26 = 1039;
    v27 = 2048;
    v28 = v10;
    v29 = 2048;
    *v30 = bus;
    *&v30[8] = 2048;
    *&v30[10] = node;
    _os_log_impl(&dword_1BA5AC000, v9, OS_LOG_TYPE_DEBUG, "%25s:%-5d Engine@%p: disconnect output bus: %lu on node: %p", buf, 0x30u);
  }

  if (!node)
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v11 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      *&buf[4] = "AVAEInternal.h";
      v25 = 1024;
      v26 = 71;
      v27 = 2080;
      v28 = "AVAudioEngine.mm";
      v29 = 1024;
      *v30 = 1041;
      *&v30[4] = 2080;
      *&v30[6] = "DisconnectOutput";
      *&v30[14] = 2080;
      *&v30[16] = "node != nil";
      _os_log_impl(&dword_1BA5AC000, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "node != nil"}];
  }

  if (([*(v8 + 3) containsObject:node] & 1) == 0)
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v12 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      *&buf[4] = "AVAEInternal.h";
      v25 = 1024;
      v26 = 71;
      v27 = 2080;
      v28 = "AVAudioEngine.mm";
      v29 = 1024;
      *v30 = 1042;
      *&v30[4] = 2080;
      *&v30[6] = "DisconnectOutput";
      *&v30[14] = 2080;
      *&v30[16] = "[_nodes containsObject: node]";
      _os_log_impl(&dword_1BA5AC000, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "[_nodes containsObject: node]"}];
  }

  v13 = *(v8 + 1);
  if (!node)
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v14 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      *&buf[4] = "AVAEInternal.h";
      v25 = 1024;
      v26 = 71;
      v27 = 2080;
      v28 = "AVAudioEngineGraph.mm";
      v29 = 1024;
      *v30 = 2808;
      *&v30[4] = 2080;
      *&v30[6] = "DisconnectOutput";
      *&v30[14] = 2080;
      *&v30[16] = "inSrcAVNode";
      _os_log_impl(&dword_1BA5AC000, v14, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "inSrcAVNode"}];
  }

  impl = [(AVAudioNode *)node impl];
  if (!impl)
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v16 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      *&buf[4] = "AVAEInternal.h";
      v25 = 1024;
      v26 = 71;
      v27 = 2080;
      v28 = "AVAudioEngineGraph.mm";
      v29 = 1024;
      *v30 = 2811;
      *&v30[4] = 2080;
      *&v30[6] = "DisconnectOutput";
      *&v30[14] = 2080;
      *&v30[16] = "inSrcImpl";
      _os_log_impl(&dword_1BA5AC000, v16, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "inSrcImpl"}];
  }

  v17 = (*(*impl + 240))(impl, bus);
  v18 = *v13;
  std::recursive_mutex::lock((*v13 + 112));
  if (!AVAudioEngineGraph::IsNodeInGraph(v13, impl))
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v19 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      *&buf[4] = "AVAEInternal.h";
      v25 = 1024;
      v26 = 71;
      v27 = 2080;
      v28 = "AVAudioEngineGraph.mm";
      v29 = 1024;
      *v30 = 2821;
      *&v30[4] = 2080;
      *&v30[6] = "_DisconnectOutput";
      *&v30[14] = 2080;
      *&v30[16] = "IsNodeInGraph(inSrcImpl)";
      _os_log_impl(&dword_1BA5AC000, v19, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "IsNodeInGraph(inSrcImpl)"}];
  }

  NodeFromMap = AVAudioEngineGraph::GetNodeFromMap(v13, impl);
  *buf = 0;
  *&buf[8] = -1;
  if ((*(*NodeFromMap + 40))(NodeFromMap, 0, v17, buf))
  {
    v21 = AVAudioEngineGraph::_DisconnectInput(v13, *(*buf + 24), *&buf[8]);
    std::recursive_mutex::unlock((v18 + 112));
    if (v21)
    {
      if (AVAudioEngineLogCategory(void)::once != -1)
      {
        dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
      }

      v22 = *AVAudioEngineLogCategory(void)::category;
      if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
      {
        *buf = 136316674;
        *&buf[4] = "AVAEInternal.h";
        v25 = 1024;
        v26 = 104;
        v27 = 2080;
        v28 = "AVAudioEngine.mm";
        v29 = 1024;
        *v30 = 1044;
        *&v30[4] = 2080;
        *&v30[6] = "DisconnectOutput";
        *&v30[14] = 2080;
        *&v30[16] = "_graph->DisconnectOutput(node, bus)";
        v31 = 1024;
        v32 = v21;
        _os_log_impl(&dword_1BA5AC000, v22, OS_LOG_TYPE_ERROR, "%25s:%-5d [%s:%d:%s: (%s): error %d", buf, 0x3Cu);
      }

      [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"error %d", v21}];
    }
  }

  else
  {
    std::recursive_mutex::unlock((v18 + 112));
  }

  v23 = *MEMORY[0x1E69E9840];

  std::recursive_mutex::unlock((impl + 112));
}

- (void)disconnectNodeInput:(AVAudioNode *)node bus:(AVAudioNodeBus)bus
{
  v31 = *MEMORY[0x1E69E9840];
  impl = self->_impl;
  std::recursive_mutex::lock((impl + 112));
  v8 = self->_impl;
  if (AVAudioEngineLogCategory(void)::once != -1)
  {
    dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
  }

  v9 = *AVAudioEngineLogCategory(void)::category;
  if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_DEBUG))
  {
    v10 = *v8;
    *buf = 136316162;
    v22 = "AVAudioEngine.mm";
    v23 = 1024;
    v24 = 1029;
    v25 = 2048;
    v26 = v10;
    v27 = 2048;
    *v28 = bus;
    *&v28[8] = 2048;
    *&v28[10] = node;
    _os_log_impl(&dword_1BA5AC000, v9, OS_LOG_TYPE_DEBUG, "%25s:%-5d Engine@%p: disconnect input bus: %lu on node: %p", buf, 0x30u);
  }

  if (!node)
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v11 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      v22 = "AVAEInternal.h";
      v23 = 1024;
      v24 = 71;
      v25 = 2080;
      v26 = "AVAudioEngine.mm";
      v27 = 1024;
      *v28 = 1031;
      *&v28[4] = 2080;
      *&v28[6] = "DisconnectInput";
      *&v28[14] = 2080;
      *&v28[16] = "node != nil";
      _os_log_impl(&dword_1BA5AC000, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "node != nil"}];
  }

  if (([*(v8 + 3) containsObject:node] & 1) == 0)
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v12 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      v22 = "AVAEInternal.h";
      v23 = 1024;
      v24 = 71;
      v25 = 2080;
      v26 = "AVAudioEngine.mm";
      v27 = 1024;
      *v28 = 1032;
      *&v28[4] = 2080;
      *&v28[6] = "DisconnectInput";
      *&v28[14] = 2080;
      *&v28[16] = "[_nodes containsObject: node]";
      _os_log_impl(&dword_1BA5AC000, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "[_nodes containsObject: node]"}];
  }

  v13 = *(v8 + 1);
  if (!node)
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v14 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      v22 = "AVAEInternal.h";
      v23 = 1024;
      v24 = 71;
      v25 = 2080;
      v26 = "AVAudioEngineGraph.mm";
      v27 = 1024;
      *v28 = 2685;
      *&v28[4] = 2080;
      *&v28[6] = "DisconnectInput";
      *&v28[14] = 2080;
      *&v28[16] = "inDestAVNode";
      _os_log_impl(&dword_1BA5AC000, v14, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "inDestAVNode"}];
  }

  impl = [(AVAudioNode *)node impl];
  if (!impl)
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v16 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      v22 = "AVAEInternal.h";
      v23 = 1024;
      v24 = 71;
      v25 = 2080;
      v26 = "AVAudioEngineGraph.mm";
      v27 = 1024;
      *v28 = 2688;
      *&v28[4] = 2080;
      *&v28[6] = "DisconnectInput";
      *&v28[14] = 2080;
      *&v28[16] = "inDestImpl";
      _os_log_impl(&dword_1BA5AC000, v16, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "inDestImpl"}];
  }

  v17 = (*(*impl + 240))(impl, bus);
  v18 = AVAudioEngineGraph::_DisconnectInput(v13, impl, v17);
  if (v18)
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v19 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316674;
      v22 = "AVAEInternal.h";
      v23 = 1024;
      v24 = 104;
      v25 = 2080;
      v26 = "AVAudioEngine.mm";
      v27 = 1024;
      *v28 = 1034;
      *&v28[4] = 2080;
      *&v28[6] = "DisconnectInput";
      *&v28[14] = 2080;
      *&v28[16] = "_graph->DisconnectInput(node, bus)";
      v29 = 1024;
      v30 = v18;
      _os_log_impl(&dword_1BA5AC000, v19, OS_LOG_TYPE_ERROR, "%25s:%-5d [%s:%d:%s: (%s): error %d", buf, 0x3Cu);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"error %d", v18}];
  }

  v20 = *MEMORY[0x1E69E9840];

  std::recursive_mutex::unlock((impl + 112));
}

- (void)connect:(AVAudioNode *)sourceNode toConnectionPoints:(NSArray *)destNodes fromBus:(AVAudioNodeBus)sourceBus format:(AVAudioFormat *)format
{
  impl = self->_impl;
  std::recursive_mutex::lock((impl + 112));
  AVAudioEngineImpl::ConnectMultipleOutputs(self->_impl, sourceNode, destNodes, sourceBus, format);

  std::recursive_mutex::unlock((impl + 112));
}

- (void)connect:(AVAudioNode *)node1 to:(AVAudioNode *)node2 format:(AVAudioFormat *)format
{
  impl = self->_impl;
  std::recursive_mutex::lock((impl + 112));
  v10 = self->_impl;
  if (node2 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    nextAvailableInputBus = [(AVAudioNode *)node2 nextAvailableInputBus];
  }

  else
  {
    nextAvailableInputBus = 0;
  }

  AVAudioEngineImpl::Connect(v10, node1, node2, 0, nextAvailableInputBus, format);

  std::recursive_mutex::unlock((impl + 112));
}

- (void)connect:(AVAudioNode *)node1 to:(AVAudioNode *)node2 fromBus:(AVAudioNodeBus)bus1 toBus:(AVAudioNodeBus)bus2 format:(AVAudioFormat *)format
{
  impl = self->_impl;
  std::recursive_mutex::lock((impl + 112));
  AVAudioEngineImpl::Connect(self->_impl, node1, node2, bus1, bus2, format);

  std::recursive_mutex::unlock((impl + 112));
}

- (AVAudioMixerNode)mainMixerNode
{
  v17 = *MEMORY[0x1E69E9840];
  impl = self->_impl;
  std::recursive_mutex::lock((impl + 112));
  v4 = self->_impl;
  v5 = *(v4 + 6);
  if (!v5)
  {
    OutputNode = AVAudioEngineImpl::GetOutputNode(v4);
    v5 = objc_alloc_init(AVAudioMixerNode);
    AVAudioEngineImpl::AttachNode(v4, &v5->super, 1);

    if (AVAudioEngineImpl::Connect(v4, &v5->super, OutputNode, 0, 0, 0))
    {
      *(v4 + 6) = v5;
    }

    else
    {
      if (AVAudioEngineLogCategory(void)::once != -1)
      {
        dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
      }

      v7 = *AVAudioEngineLogCategory(void)::category;
      if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
      {
        v8 = *v4;
        v11 = 136315650;
        v12 = "AVAudioEngine.mm";
        v13 = 1024;
        v14 = 694;
        v15 = 2048;
        v16 = v8;
        _os_log_impl(&dword_1BA5AC000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d Engine#%p: error: couldn't connect mixer to output node!", &v11, 0x1Cu);
      }

      AVAudioEngineImpl::DetachNode(v4, &v5->super, 1, 0);
      v5 = 0;
    }
  }

  std::recursive_mutex::unlock((impl + 112));
  v9 = *MEMORY[0x1E69E9840];
  return v5;
}

- (AVAudioInputNode)inputNode
{
  v24 = *MEMORY[0x1E69E9840];
  impl = self->_impl;
  std::recursive_mutex::lock((impl + 112));
  v4 = self->_impl;
  v5 = *(v4 + 4);
  if (v5)
  {
    v6 = *(*(v4 + 1) + 187);
    isInManualRenderingMode = [*(v4 + 4) isInManualRenderingMode];
    if ((isInManualRenderingMode & v6) == 1)
    {
      if ([v5 manualRenderingMode] == *(*(v4 + 1) + 192))
      {
        goto LABEL_12;
      }
    }

    else if (isInManualRenderingMode == v6)
    {
      goto LABEL_12;
    }
  }

  AVAudioEngineImpl::UpdateInputNode(v4, 1);
  if (!*(v4 + 4))
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v8 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      v13 = "AVAEInternal.h";
      v14 = 1024;
      v15 = 71;
      v16 = 2080;
      v17 = "AVAudioEngine.mm";
      v18 = 1024;
      v19 = 679;
      v20 = 2080;
      v21 = "GetInputNode";
      v22 = 2080;
      v23 = "_inputNode != nil";
      _os_log_impl(&dword_1BA5AC000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "_inputNode != nil"}];
  }

LABEL_12:
  v9 = *(v4 + 4);
  std::recursive_mutex::unlock((impl + 112));
  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

- (AVAudioOutputNode)outputNode
{
  impl = self->_impl;
  std::recursive_mutex::lock((impl + 112));
  OutputNode = AVAudioEngineImpl::GetOutputNode(self->_impl);
  std::recursive_mutex::unlock((impl + 112));
  return OutputNode;
}

- (void)detachNode:(AVAudioNode *)node
{
  impl = self->_impl;
  std::recursive_mutex::lock((impl + 112));
  AVAudioEngineImpl::DetachNode(self->_impl, node, 0, 0);

  std::recursive_mutex::unlock((impl + 112));
}

- (void)attachNode:(AVAudioNode *)node
{
  impl = self->_impl;
  std::recursive_mutex::lock((impl + 112));
  AVAudioEngineImpl::AttachNode(self->_impl, node, 0);

  std::recursive_mutex::unlock((impl + 112));
}

- (void)dealloc
{
  impl = self->_impl;
  if (impl)
  {
    v12 = 0;
    AVAudioEngineImpl::Stop(impl, &v12);
    std::unique_ptr<AVAEBlock<AVAudioEngineManualRenderingStatus({block_pointer})(unsigned int,AudioBufferList *,int *)>>::reset[abi:ne200100](impl + 13, 0);
    v4 = *(impl + 5);
    if (v4)
    {
      AVAudioEngineGraph::RemoveIONode(*(impl + 1), v4, 0, &v12);
      AVAudioEngineImpl::DetachNode(impl, *(impl + 5), 1, &v12);
      *(impl + 5) = 0;
    }

    v5 = *(impl + 4);
    if (v5)
    {
      AVAudioEngineGraph::RemoveIONode(*(impl + 1), v5, 1, &v12);
      AVAudioEngineImpl::DetachNode(impl, *(impl + 4), 1, &v12);
      *(impl + 4) = 0;
    }

    v6 = *(impl + 6);
    if (v6)
    {
      AVAudioEngineImpl::DetachNode(impl, v6, 1, &v12);
      *(impl + 6) = 0;
    }

    while (1)
    {
      anyObject = [*(impl + 3) anyObject];
      if (!anyObject)
      {
        break;
      }

      AVAudioEngineImpl::DetachNode(impl, anyObject, 0, &v12);
    }

    std::recursive_mutex::lock((impl + 112));
    std::unique_ptr<AVAudioEngineGraph>::reset[abi:ne200100](impl + 1);
    std::recursive_mutex::unlock((impl + 112));
    v8 = *(impl + 7);
    *(impl + 7) = 0;
    if (v8)
    {
      (*(*v8 + 8))(v8);
    }

    v9 = *(impl + 11);
    if (v9)
    {
      dispatch_block_cancel(v9);
    }

    dispatch_sync(*(impl + 9), &__block_literal_global_110);

    dispatch_release(*(impl + 9));
    std::recursive_mutex::~recursive_mutex((impl + 112));
    std::unique_ptr<AVAEBlock<AVAudioEngineManualRenderingStatus({block_pointer})(unsigned int,AudioBufferList *,int *)>>::reset[abi:ne200100](impl + 13, 0);
    v10 = *(impl + 7);
    *(impl + 7) = 0;
    if (v10)
    {
      (*(*v10 + 8))(v10);
    }

    std::unique_ptr<AVAudioEngineGraph>::reset[abi:ne200100](impl + 1);
    MEMORY[0x1BFAF5800](impl, 0x10A0C40461284F8);
  }

  v11.receiver = self;
  v11.super_class = AVAudioEngine;
  [(AVAudioEngine *)&v11 dealloc];
}

- (AVAudioEngine)init
{
  if (AVAudioEngineLogCategory(void)::once != -1)
  {
    dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
  }

  v4.receiver = self;
  v4.super_class = AVAudioEngine;
  if ([(AVAudioEngine *)&v4 init])
  {
    operator new();
  }

  return 0;
}

@end