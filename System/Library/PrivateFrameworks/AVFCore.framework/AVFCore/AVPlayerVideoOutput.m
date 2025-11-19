@interface AVPlayerVideoOutput
- (AVPlayerVideoOutput)initWithSpecification:(id)a3;
- (BOOL)_attachToPlayer:(id)a3 exceptionReason:(id *)a4;
- (BOOL)_setupWithOutputSpecification:(id)a3 exceptionReasonOut:(id *)a4;
- (BOOL)hasNewTaggedBufferGroupForHostTime:(id *)a3;
- (OpaqueCMTaggedBufferGroup)_copyTaggedBufferGroupForHostTimeInternal:(id *)a3 doNotConsume:(BOOL)a4 presentationTimeStamp:(id *)a5 activeConfiguration:(id *)a6 lastSeenTaggedBufferGroup:(OpaqueCMTaggedBufferGroup *)a7;
- (id)_playerItemWithIdentifier:(id)a3;
- (id)attachedPlayer;
- (id)resourceLifeCycleHandler;
- (int)_createAndConfigureVideoReceiverIfNecessaryOnStateQueue;
- (int)_setUpVideoReceiverEventHandlers:(OpaqueFigVideoReceiver *)a3;
- (void)_detachFromPlayer:(id)a3;
- (void)_handleVideoReceiverActiveConfigurationChanged:(FigVideoReceiverConfigurationInfo *)a3;
- (void)_setResourceLifeCycleHandler:(id)a3;
- (void)dealloc;
@end

@implementation AVPlayerVideoOutput

- (BOOL)_setupWithOutputSpecification:(id)a3 exceptionReasonOut:(id *)a4
{
  if (a3)
  {
    if ([a3 preferredTagCollections] && objc_msgSend(objc_msgSend(a3, "preferredTagCollections"), "count"))
    {
      self->_outputSpecification = [a3 copy];
      self->_receiverState.stateQueue = dispatch_queue_create("com.apple.avfoundation.avplayervideooutput.state", 0);
      self->_iVarAccessQueue = av_readwrite_dispatch_queue_create("com.apple.avfoundation.avplayervideooutput.ivars");
      return 1;
    }

    if (a4)
    {
      v13 = @"AVPlayerVideoOutput: Received malformed outputSpecification";
LABEL_9:
      v14 = AVMethodExceptionReasonWithObjectAndSelector(self, a2, v13, a4, v4, v5, v6, v7, v15);
      result = 0;
      *a4 = v14;
      return result;
    }
  }

  else if (a4)
  {
    v13 = @"AVPlayerVideoOutput: outputSpecification cannot be nil.";
    goto LABEL_9;
  }

  return 0;
}

- (AVPlayerVideoOutput)initWithSpecification:(id)a3
{
  v17.receiver = self;
  v17.super_class = AVPlayerVideoOutput;
  v5 = [(AVPlayerVideoOutput *)&v17 init];
  v6 = v5;
  if (v5)
  {
    v16 = 0;
    if (![(AVPlayerVideoOutput *)v5 _setupWithOutputSpecification:a3 exceptionReasonOut:&v16])
    {
      v7 = v6;
      if (v16)
      {
        v14 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(v6 userInfo:{a2, v16, v8, v9, v10, v11, v12, v15), 0}];
        objc_exception_throw(v14);
      }

      return 0;
    }
  }

  return v6;
}

- (void)dealloc
{
  videoReceiver = self->_receiverState.videoReceiver;
  if (videoReceiver)
  {
    CFRelease(videoReceiver);
    self->_receiverState.videoReceiver = 0;
  }

  videoTarget = self->_receiverState.videoTarget;
  if (videoTarget)
  {
    CFRelease(videoTarget);
    self->_receiverState.videoTarget = 0;
  }

  stateQueue = self->_receiverState.stateQueue;
  if (stateQueue)
  {
    dispatch_release(stateQueue);
    self->_receiverState.stateQueue = 0;
  }

  iVarAccessQueue = self->_iVarAccessQueue;
  if (iVarAccessQueue)
  {
    dispatch_release(iVarAccessQueue);
    self->_iVarAccessQueue = 0;
  }

  lastSeenTaggedBufferGroup = self->_receiverState.lastSeenTaggedBufferGroup;
  if (lastSeenTaggedBufferGroup)
  {
    CFRelease(lastSeenTaggedBufferGroup);
    self->_receiverState.lastSeenTaggedBufferGroup = 0;
  }

  v8.receiver = self;
  v8.super_class = AVPlayerVideoOutput;
  [(AVPlayerVideoOutput *)&v8 dealloc];
}

- (id)attachedPlayer
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__21;
  v10 = __Block_byref_object_dispose__21;
  v11 = 0;
  stateQueue = self->_receiverState.stateQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __37__AVPlayerVideoOutput_attachedPlayer__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(stateQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

id __37__AVPlayerVideoOutput_attachedPlayer__block_invoke(uint64_t a1)
{
  result = objc_loadWeakRetained((*(a1 + 32) + 16));
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (OpaqueCMTaggedBufferGroup)_copyTaggedBufferGroupForHostTimeInternal:(id *)a3 doNotConsume:(BOOL)a4 presentationTimeStamp:(id *)a5 activeConfiguration:(id *)a6 lastSeenTaggedBufferGroup:(OpaqueCMTaggedBufferGroup *)a7
{
  v12 = 0;
  v50[1] = *MEMORY[0x1E69E9840];
  v45 = 0;
  v46 = &v45;
  v47 = 0x2020000000;
  v48 = 0;
  v39 = 0;
  v40 = &v39;
  v41 = 0x3810000000;
  v42 = &unk_19626E495;
  v43 = *MEMORY[0x1E6960C70];
  v44 = *(MEMORY[0x1E6960C70] + 16);
  v33 = 0;
  v34 = &v33;
  v35 = 0x3052000000;
  v36 = __Block_byref_object_copy__21;
  v37 = __Block_byref_object_dispose__21;
  v38 = 0;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  if (a4)
  {
    v49 = *MEMORY[0x1E6973DD0];
    v50[0] = MEMORY[0x1E695E118];
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v50 forKeys:&v49 count:1];
  }

  stateQueue = self->_receiverState.stateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __146__AVPlayerVideoOutput__copyTaggedBufferGroupForHostTimeInternal_doNotConsume_presentationTimeStamp_activeConfiguration_lastSeenTaggedBufferGroup___block_invoke;
  block[3] = &unk_1E74647D0;
  v22 = *&a3->var0;
  var3 = a3->var3;
  block[4] = self;
  block[5] = v12;
  block[6] = &v45;
  block[7] = &v29;
  block[8] = &v39;
  block[9] = &v33;
  block[10] = &v25;
  v24 = a4;
  dispatch_sync(stateQueue, block);
  if (v30[3] && !*(v46 + 6))
  {
    if (a5)
    {
      v14 = v40[6];
      *&a5->var0 = *(v40 + 2);
      a5->var3 = v14;
    }

    if (a6)
    {
      *a6 = v34[5];
    }

    if (a7)
    {
      v15 = v26;
      *a7 = v26[3];
      v15[3] = 0;
    }
  }

  v16 = v34[5];
  v17 = v26[3];
  if (v17)
  {
    CFRelease(v17);
  }

  v18 = v30[3];
  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v29, 8);
  _Block_object_dispose(&v33, 8);
  _Block_object_dispose(&v39, 8);
  _Block_object_dispose(&v45, 8);
  return v18;
}

- (BOOL)hasNewTaggedBufferGroupForHostTime:(id *)a3
{
  v7 = *a3;
  cf = 0;
  v3 = [(AVPlayerVideoOutput *)self _copyTaggedBufferGroupForHostTimeInternal:&v7 doNotConsume:1 presentationTimeStamp:0 activeConfiguration:0 lastSeenTaggedBufferGroup:&cf];
  if (v3)
  {
    v4 = v3;
    v5 = FigCFEqual() == 0;
    CFRelease(v4);
  }

  else
  {
    v5 = 0;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v5;
}

- (id)_playerItemWithIdentifier:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  Weak = objc_loadWeak(&self->_receiverState.weakPlayer);
  v5 = 0;
  if (a3 && Weak)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v6 = [Weak _items];
    v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v13;
LABEL_5:
      v10 = 0;
      while (1)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v5 = *(*(&v12 + 1) + 8 * v10);
        if ([objc_msgSend(v5 "identifier")])
        {
          break;
        }

        if (v8 == ++v10)
        {
          v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
          v5 = 0;
          if (v8)
          {
            goto LABEL_5;
          }

          return v5;
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return v5;
}

- (void)_handleVideoReceiverActiveConfigurationChanged:(FigVideoReceiverConfigurationInfo *)a3
{
  v19 = 0;
  v5 = *(MEMORY[0x1E695EFD0] + 16);
  v16 = *MEMORY[0x1E695EFD0];
  v17 = v5;
  v18 = *(MEMORY[0x1E695EFD0] + 32);
  v6 = [(AVPlayerVideoOutput *)self _playerItemWithIdentifier:a3->var0];
  v7 = FigCFDictionaryCopyArrayOfValues();
  v8 = 0;
  while (1)
  {
    v9 = v7 ? CFArrayGetCount(v7) : 0;
    if (v8 >= v9)
    {
      break;
    }

    CFArrayGetValueAtIndex(v7, v8++);
    if (FigCFDictionaryGetValueIfPresent())
    {
      FigGetCGAffineTransformFrom3x3MatrixArray();
      break;
    }
  }

  if (v7)
  {
    CFRelease(v7);
  }

  if (v6)
  {
    v10 = [AVPlayerVideoOutputConfiguration alloc];
    var1 = a3->var1;
    v15[0] = v16;
    v15[1] = v17;
    v15[2] = v18;
    v13 = *&a3->var3.var0;
    var3 = a3->var3.var3;
    v12 = [(AVPlayerVideoOutputConfiguration *)v10 initWithSourcePlayerItem:v6 dataChannelDescriptions:var1 transform:v15 activationTime:&v13];
  }

  else
  {
    v12 = 0;
  }

  self->_receiverState.activeConfiguration = v12;
}

- (int)_setUpVideoReceiverEventHandlers:(OpaqueFigVideoReceiver *)a3
{
  objc_initWeak(&location, self);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __56__AVPlayerVideoOutput__setUpVideoReceiverEventHandlers___block_invoke;
  v7[3] = &unk_1E74647F8;
  objc_copyWeak(&v8, &location);
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 192);
  if (v4)
  {
    v5 = v4(a3, v7);
  }

  else
  {
    v5 = -12782;
  }

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
  return v5;
}

void *__56__AVPlayerVideoOutput__setUpVideoReceiverEventHandlers___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = objc_loadWeak((a1 + 32));
  if (result)
  {
    if (result[4] == a2)
    {
      v6 = *(a3 + 16);
      v7[0] = *a3;
      v7[1] = v6;
      v7[2] = *(a3 + 32);
      v8 = *(a3 + 48);
      return [result _handleVideoReceiverActiveConfigurationChanged:v7];
    }
  }

  return result;
}

- (int)_createAndConfigureVideoReceiverIfNecessaryOnStateQueue
{
  v50 = *MEMORY[0x1E69E9840];
  cf = 0;
  v46 = 0;
  if (self->_receiverState.videoReceiver)
  {
    v29 = 0;
    goto LABEL_39;
  }

  v3 = MEMORY[0x19A8CAF10](*MEMORY[0x1E695E480], 0, &v46);
  if (v3)
  {
    goto LABEL_38;
  }

  v4 = [MEMORY[0x1E695DF70] array];
  v5 = [(AVVideoOutputSpecification *)self->_outputSpecification preferredTagCollections];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v41 objects:v49 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v42;
LABEL_5:
    v9 = 0;
    while (1)
    {
      if (*v42 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v3 = FigDataChannelGroupCreate();
      if (v3)
      {
        goto LABEL_38;
      }

      v3 = FigDataChannelGroupAddDataChannel();
      if (v3)
      {
        goto LABEL_38;
      }

      [v4 addObject:cf];
      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }

      if (v7 == ++v9)
      {
        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v41 objects:v49 count:16];
        if (v7)
        {
          goto LABEL_5;
        }

        break;
      }
    }
  }

  v10 = v46;
  v11 = *(*(CMBaseObjectGetVTable() + 16) + 72);
  if (!v11)
  {
LABEL_37:
    v29 = -12782;
    goto LABEL_39;
  }

  v3 = v11(v10, v4, 0);
  if (v3)
  {
    goto LABEL_38;
  }

  v40 = [MEMORY[0x1E695DF70] array];
  if ([(NSArray *)v5 count])
  {
    v12 = 0;
    v39 = *MEMORY[0x1E6973DB8];
    v38 = *MEMORY[0x1E6973DC0];
    v37 = *MEMORY[0x1E6973DC8];
    v36 = *MEMORY[0x1E6973DA0];
    v35 = *MEMORY[0x1E695E4D0];
    v34 = *MEMORY[0x1E695E4C0];
    v33 = *MEMORY[0x1E6973D98];
    v32 = *MEMORY[0x1E6973DA8];
    v31 = *MEMORY[0x1E6973D88];
    v13 = *MEMORY[0x1E6973D90];
    do
    {
      v14 = [(NSArray *)v5 objectAtIndex:v12];
      v15 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:3];
      v16 = [(AVVideoOutputSpecification *)self->_outputSpecification _videoColorPropertiesForTagCollection:v14];
      if (v16)
      {
        v17 = v16;
        v18 = [v16 objectForKeyedSubscript:@"ColorPrimaries"];
        v19 = [v17 objectForKeyedSubscript:@"TransferFunction"];
        v20 = [v17 objectForKeyedSubscript:@"YCbCrMatrix"];
        v47[0] = v39;
        v47[1] = v38;
        v48[0] = v18;
        v48[1] = v19;
        v47[2] = v37;
        v48[2] = v20;
        [v15 setObject:objc_msgSend(MEMORY[0x1E695DF20] forKeyedSubscript:{"dictionaryWithObjects:forKeys:count:", v48, v47, 3), v36}];
      }

      v21 = [(AVVideoOutputSpecification *)self->_outputSpecification _allowWideColorForTagCollection:v14];
      if (v21)
      {
        if ([v21 BOOLValue])
        {
          v22 = v35;
        }

        else
        {
          v22 = v34;
        }

        [v15 setObject:v22 forKeyedSubscript:v33];
      }

      v23 = [(AVVideoOutputSpecification *)self->_outputSpecification _pixelBufferAttributesForTagCollection:v14];
      if (v23)
      {
        [v15 setObject:v23 forKeyedSubscript:v32];
      }

      if ([v15 count])
      {
        v24 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:2];
        [v24 setObject:v14 forKeyedSubscript:v31];
        [v24 setObject:v15 forKeyedSubscript:v13];
        [v40 addObject:v24];
      }

      ++v12;
    }

    while (v12 < [(NSArray *)v5 count]);
  }

  if ([v40 count])
  {
    v25 = v46;
    v26 = *(*(CMBaseObjectGetVTable() + 16) + 80);
    if (v26)
    {
      v3 = v26(v25, v40, 0);
      if (!v3)
      {
        goto LABEL_33;
      }

LABEL_38:
      v29 = v3;
      goto LABEL_39;
    }

    goto LABEL_37;
  }

LABEL_33:
  v27 = v46;
  v28 = *(*(CMBaseObjectGetVTable() + 16) + 144);
  if (!v28)
  {
    goto LABEL_37;
  }

  v3 = v28(v27, metadataSupplierResourceLifeCycleCallback, self);
  if (v3)
  {
    goto LABEL_38;
  }

  v29 = [(AVPlayerVideoOutput *)self _setUpVideoReceiverEventHandlers:v46];
  if (!v29)
  {
    self->_receiverState.videoReceiver = v46;
    v46 = 0;
    goto LABEL_41;
  }

LABEL_39:
  if (v46)
  {
    CFRelease(v46);
  }

LABEL_41:
  if (cf)
  {
    CFRelease(cf);
  }

  return v29;
}

- (BOOL)_attachToPlayer:(id)a3 exceptionReason:(id *)a4
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  stateQueue = self->_receiverState.stateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__AVPlayerVideoOutput__attachToPlayer_exceptionReason___block_invoke;
  block[3] = &unk_1E7464820;
  block[4] = self;
  block[5] = a3;
  block[6] = &v8;
  block[7] = a4;
  block[8] = a2;
  dispatch_sync(stateQueue, block);
  v5 = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  return v5;
}

uint64_t __55__AVPlayerVideoOutput__attachToPlayer_exceptionReason___block_invoke(uint64_t a1)
{
  v12[1] = *MEMORY[0x1E69E9840];
  Weak = objc_loadWeak((*(a1 + 32) + 16));
  if (!Weak)
  {
    objc_storeWeak((*(a1 + 32) + 16), *(a1 + 40));
    result = [*(a1 + 32) _createAndConfigureVideoReceiverIfNecessaryOnStateQueue];
    if (result || !*(*(a1 + 32) + 24) && (v11 = *MEMORY[0x1E6973DD8], v12[0] = *MEMORY[0x1E695E4D0], [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1], result = FigVideoTargetCreateWithVideoReceiver(), result))
    {
      *(*(*(a1 + 48) + 8) + 24) = 0;
      goto LABEL_12;
    }

    result = [objc_msgSend(*(a1 + 40) "videoTargets")];
    if ((result & 1) == 0)
    {
      result = [*(a1 + 40) addVideoTarget:*(*(a1 + 32) + 24)];
    }

    v9 = *(*(a1 + 48) + 8);
LABEL_11:
    *(v9 + 24) = 1;
    goto LABEL_12;
  }

  result = [Weak isEqual:*(a1 + 40)];
  v9 = *(*(a1 + 48) + 8);
  if (result)
  {
    goto LABEL_11;
  }

  *(v9 + 24) = 0;
  if (*(a1 + 56))
  {
    result = AVMethodExceptionReasonWithObjectAndSelector(*(a1 + 32), *(a1 + 64), @"This output is already attached to a player, and AVPlayerVideoOutput cannot be attached to more than one player at a time", v4, v5, v6, v7, v8, v10);
    **(a1 + 56) = result;
  }

LABEL_12:
  if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
  {
    return objc_storeWeak((*(a1 + 32) + 16), 0);
  }

  return result;
}

- (void)_detachFromPlayer:(id)a3
{
  stateQueue = self->_receiverState.stateQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __41__AVPlayerVideoOutput__detachFromPlayer___block_invoke;
  v4[3] = &unk_1E7460DF0;
  v4[4] = self;
  v4[5] = a3;
  dispatch_sync(stateQueue, v4);
}

- (void)_setResourceLifeCycleHandler:(id)a3
{
  v4 = [a3 copy];
  iVarAccessQueue = self->_iVarAccessQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __52__AVPlayerVideoOutput__setResourceLifeCycleHandler___block_invoke;
  v6[3] = &unk_1E74626C8;
  v6[4] = self;
  v6[5] = v4;
  av_readwrite_dispatch_queue_write(iVarAccessQueue, v6);
}

- (id)resourceLifeCycleHandler
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__102;
  v10 = __Block_byref_object_dispose__103;
  v11 = 0;
  iVarAccessQueue = self->_iVarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __47__AVPlayerVideoOutput_resourceLifeCycleHandler__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(iVarAccessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __47__AVPlayerVideoOutput_resourceLifeCycleHandler__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 72) copy];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

void __146__AVPlayerVideoOutput__copyTaggedBufferGroupForHostTimeInternal_doNotConsume_presentationTimeStamp_activeConfiguration_lastSeenTaggedBufferGroup___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = *(*(a1 + 32) + 32);
  if (v1)
  {
    if ((*(a1 + 100) & 0x1D) == 1)
    {
      v3 = *(a1 + 40);
      v4 = *(*(a1 + 56) + 8);
      v5 = *(*(a1 + 64) + 8);
      v13 = *(a1 + 88);
      v14 = *(a1 + 104);
      v6 = *(*(CMBaseObjectGetVTable() + 16) + 88);
      if (v6)
      {
        v15 = v13;
        v16 = v14;
        v7 = v6(v1, &v15, v3, v4 + 24, v5 + 32);
      }

      else
      {
        v7 = -12782;
      }

      *(*(*(a1 + 48) + 8) + 24) = v7;
      if (!*(*(*(a1 + 48) + 8) + 24))
      {
        *(*(*(a1 + 72) + 8) + 40) = *(*(a1 + 32) + 48);
        v8 = *(*(a1 + 32) + 40);
        if (v8)
        {
          v8 = CFRetain(v8);
        }

        *(*(*(a1 + 80) + 8) + 24) = v8;
        if ((*(a1 + 112) & 1) == 0)
        {
          v9 = *(a1 + 32);
          v10 = *(v9 + 40);
          v11 = *(*(*(a1 + 56) + 8) + 24);
          *(v9 + 40) = v11;
          if (v11)
          {
            CFRetain(v11);
          }

          if (v10)
          {
            CFRelease(v10);
          }
        }
      }
    }

    else
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }
}

void __41__AVPlayerVideoOutput__detachFromPlayer___block_invoke(uint64_t a1)
{
  Weak = objc_loadWeak((*(a1 + 32) + 16));
  if (Weak)
  {
    v3 = Weak;
    if ([*(a1 + 40) isEqual:Weak])
    {
      [v3 removeVideoTarget:*(*(a1 + 32) + 24)];
      objc_storeWeak((*(a1 + 32) + 16), 0);
      v4 = *(a1 + 32);
      v5 = *(v4 + 40);
      if (v5)
      {
        CFRelease(v5);
        *(*(a1 + 32) + 40) = 0;
        v4 = *(a1 + 32);
      }

      *(*(a1 + 32) + 48) = 0;
    }
  }
}

@end