@interface AUAudioUnitV2Bridge
+ (BOOL)automaticallyNotifiesObserversForKey:(id)key;
- (AUAudioUnitV2Bridge)initWithAudioUnit:(OpaqueAudioComponentInstance *)unit description:(AudioComponentDescription *)description;
- (BOOL)_elementCountWritable:(unsigned int)writable;
- (BOOL)_setElementCount:(unsigned int)count count:(unsigned int)a4 error:(id *)error;
- (BOOL)allocateRenderResourcesAndReturnError:(id *)error;
- (BOOL)providesUserInterface;
- (__n128)_valueForProperty:error:;
- (id).cxx_construct;
- (id)MIDIOutputEventBlock;
- (id)MIDIOutputEventListBlock;
- (id)_buildNewParameterTree;
- (id)_createParameterTree;
- (id)_valueForProperty:(id)property error:(id *)error;
- (id)channelCapabilities;
- (id)internalRenderBlock;
- (id)osWorkgroup;
- (id)parameterTree;
- (id)parametersForOverviewWithCount:(int64_t)count;
- (int)enableBus:(unsigned int)bus scope:(unsigned int)scope enable:(BOOL)enable;
- (uint64_t)invalidateAudioUnit;
- (unsigned)_elementCount:(unsigned int)count;
- (void)_createEventListenerQueue;
- (void)_invalidateParameterTree:(unsigned int)tree;
- (void)_notifyParameterChange:(unint64_t)change;
- (void)_setValue:(id)value forKey:(id)key error:(id *)error;
- (void)_valueForProperty:error:;
- (void)addObserver:(id)observer forKeyPath:(id)path options:(unint64_t)options context:(void *)context;
- (void)dealloc;
- (void)deliverV2Parameters:(const AURenderEvent *)parameters;
- (void)init2;
- (void)internalDeallocateRenderResources;
- (void)invalidateAudioUnit;
- (void)removeObserver:(id)observer forKeyPath:(id)path;
- (void)removeObserver:(id)observer forKeyPath:(id)path context:(void *)context;
- (void)requestViewControllerWithCompletionHandler:(id)handler;
- (void)setCurrentPreset:(id)preset;
- (void)setFullState:(id)state;
- (void)setFullStateForDocument:(id)document;
- (void)setMIDIOutputEventBlock:(id)block;
- (void)setMIDIOutputEventListBlock:(id)block;
- (void)setMusicalContextBlock:(id)block;
- (void)setTransportStateBlock:(id)block;
@end

@implementation AUAudioUnitV2Bridge

- (id).cxx_construct
{
  *(self + 601) = 0;
  *(self + 151) = 0;
  *(self + 82) = 0;
  return self;
}

- (id)osWorkgroup
{
  outData = 0;
  ioDataSize = 8;
  Property = AudioUnitGetProperty([(AUAudioUnitV2Bridge *)self audioUnit], 0x7DFu, 0, 0, &outData, &ioDataSize);
  if (outData)
  {
    v3 = Property == 0;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    v4 = outData;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_setValue:(id)value forKey:(id)key error:(id *)error
{
  valueCopy = value;
  keyCopy = key;
  if ([keyCopy isEqualToString:@"fullStateForDocument"])
  {
    setStateAndNotify(valueCopy, self);
  }

  if ([keyCopy isEqualToString:@"fullState"])
  {
    setStateAndNotify(valueCopy, self);
  }

  if ([keyCopy isEqualToString:@"currentPreset"])
  {
    v10 = setPresentPresetAndNotify(self, valueCopy);
    if (!error)
    {
      goto LABEL_16;
    }

    if (v10)
    {
      v11 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:v10 userInfo:0];
LABEL_14:
      v15 = v11;
      *error = v15;

      goto LABEL_16;
    }

LABEL_15:
    *error = 0;
    goto LABEL_16;
  }

  v12 = AUAudioUnitProperties::infoForKey(keyCopy, v9);
  if (v12)
  {
    audioUnit = self->_audioUnit;
    v17 = valueCopy;
    v13 = v12[18];
    if (!v13)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    v14 = (*(*v13 + 48))(v13, &audioUnit, &v17);

    if (error)
    {
      if (v14)
      {
        v11 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:v14 userInfo:0];
        goto LABEL_14;
      }

      goto LABEL_15;
    }
  }

  else
  {
    [(AUAudioUnitV2Bridge *)self setValue:valueCopy forKey:keyCopy];
  }

LABEL_16:
}

- (id)_valueForProperty:(id)property error:(id *)error
{
  v19 = *MEMORY[0x1E69E9840];
  propertyCopy = property;
  if ([*(propertyCopy + 1) isEqualToString:@"_v2fwd_PropertySize"])
  {
    outDataSize = 0;
    outWritable[0] = 0;
    PropertyInfo = AudioUnitGetPropertyInfo(self->_audioUnit, *(propertyCopy + 4), *(propertyCopy + 5), *(propertyCopy + 6), &outDataSize, outWritable);
    if (error)
    {
      if (PropertyInfo)
      {
        v8 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:PropertyInfo userInfo:0];
        *error = v8;
      }

      else
      {
        *error = 0;
      }
    }

    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:outDataSize];
  }

  else if ([*(propertyCopy + 1) isEqualToString:@"_v2bridge_providesUserInterface"])
  {
    v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[AUAudioUnitV2Bridge providesUserInterface](self, "providesUserInterface")}];
  }

  else
  {
    v11 = AUAudioUnitProperties::infoForKey(*(propertyCopy + 1), v9);
    v12 = *(propertyCopy + 1);
    if (v11)
    {
      if (([*(propertyCopy + 1) isEqualToString:@"fullState"] & 1) != 0 || objc_msgSend(*(propertyCopy + 1), "isEqualToString:", @"fullStateForDocument"))
      {
        [(AUAudioUnitV2Bridge *)self audioUnit:0];
        v18 = 0;
        operator new();
      }

      v10 = std::function<objc_object * ()(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)>::operator()(v11[14], [(AUAudioUnitV2Bridge *)self audioUnit], error);
    }

    else
    {
      v10 = [(AUAudioUnitV2Bridge *)self valueForKey:*(propertyCopy + 1)];
    }
  }

  v13 = v10;

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (void)_valueForProperty:error:
{
  v3 = self[2];
  v2 = self[3];
  v4 = self[1];
  if (v3)
  {
    obj = *v3;
    v5 = std::function<objc_object * ()(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)>::operator()(*(v2 + 112), v4, &obj);
    objc_storeStrong(v3, obj);
  }

  else
  {
    v5 = std::function<objc_object * ()(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)>::operator()(*(v2 + 112), v4, 0);
  }

  v6 = self[4];
  v7 = *v6;
  *v6 = v5;
}

- (__n128)_valueForProperty:error:
{
  *a2 = &unk_1F0334838;
  result = *(self + 8);
  *(a2 + 24) = *(self + 24);
  *(a2 + 8) = result;
  return result;
}

- (void)setCurrentPreset:(id)preset
{
  presetCopy = preset;
  [(AUAudioUnit *)self flushEventSchedule];
  setPresentPresetAndNotify(self, presetCopy);
}

- (void)setFullStateForDocument:(id)document
{
  documentCopy = document;
  [(AUAudioUnit *)self flushEventSchedule];
  setStateAndNotify(documentCopy, self);
}

- (void)setFullState:(id)state
{
  stateCopy = state;
  [(AUAudioUnit *)self flushEventSchedule];
  setStateAndNotify(stateCopy, self);
}

- (BOOL)providesUserInterface
{
  outDataSize = 0;
  outWritable = 0;
  PropertyInfo = AudioUnitGetPropertyInfo(self->_audioUnit, 0x38u, 0, 0, &outDataSize, &outWritable);
  result = 0;
  if (PropertyInfo)
  {
    v4 = 0;
  }

  else
  {
    v4 = outDataSize == 8;
  }

  if (v4)
  {
    return outWritable != 0;
  }

  return result;
}

- (void)requestViewControllerWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  inData = handlerCopy;
  if ([(AUAudioUnitV2Bridge *)self providesUserInterface])
  {
    v5 = AudioUnitSetProperty(self->_audioUnit, 0x38u, 0, 0, &inData, 8u);
    handlerCopy = inData;
    if (v5)
    {
      inData[2](inData, 0);
      handlerCopy = inData;
    }
  }

  else
  {
    handlerCopy[2](handlerCopy, 0);
  }
}

- (void)removeObserver:(id)observer forKeyPath:(id)path
{
  observerCopy = observer;
  pathCopy = path;
  v9 = pathCopy;
  if (!self->_removingObserverWithContext)
  {
    v10 = AUAudioUnitProperties::infoForKey(pathCopy, v8);
    if (v10)
    {
      AudioUnitRemovePropertyListenerWithUserData(self->_audioUnit, v10[5], V2BridgePropertyListener, self);
    }

    else if ([(AUAudioUnitProperties *)v9 isEqualToString:@"allParameterValues"])
    {
      inEvent.mEventType = kAudioUnitEvent_ParameterValueChange;
      *&inEvent.mArgument.mParameter.mAudioUnit = self->_audioUnit;
      inEvent.mArgument.mParameter.mElement = 0;
      AUEventListenerRemoveEventType(self->_eventListener, observerCopy, &inEvent);
    }
  }

  v11.receiver = self;
  v11.super_class = AUAudioUnitV2Bridge;
  [(AUAudioUnitV2Bridge *)&v11 removeObserver:observerCopy forKeyPath:v9];
}

- (void)removeObserver:(id)observer forKeyPath:(id)path context:(void *)context
{
  observerCopy = observer;
  pathCopy = path;
  self->_removingObserverWithContext = 1;
  v11 = AUAudioUnitProperties::infoForKey(pathCopy, v10);
  if (v11)
  {
    AudioUnitRemovePropertyListenerWithUserData(self->_audioUnit, v11[5], V2BridgePropertyListener, self);
  }

  else if ([(AUAudioUnitProperties *)pathCopy isEqualToString:@"allParameterValues"])
  {
    inEvent.mEventType = kAudioUnitEvent_ParameterValueChange;
    *&inEvent.mArgument.mParameter.mAudioUnit = self->_audioUnit;
    inEvent.mArgument.mParameter.mElement = 0;
    AUEventListenerRemoveEventType(self->_eventListener, observerCopy, &inEvent);
  }

  v12.receiver = self;
  v12.super_class = AUAudioUnitV2Bridge;
  [(AUAudioUnitV2Bridge *)&v12 removeObserver:observerCopy forKeyPath:pathCopy context:context];
  self->_removingObserverWithContext = 0;
}

- (void)addObserver:(id)observer forKeyPath:(id)path options:(unint64_t)options context:(void *)context
{
  observerCopy = observer;
  pathCopy = path;
  v13 = AUAudioUnitProperties::infoForKey(pathCopy, v12);
  if (v13)
  {
    AudioUnitAddPropertyListener(self->_audioUnit, v13[5], V2BridgePropertyListener, self);
  }

  else if ([(AUAudioUnitProperties *)pathCopy isEqualToString:@"allParameterValues"])
  {
    eventListener = self->_eventListener;
    if (!eventListener)
    {
      [(AUAudioUnitV2Bridge *)self _createEventListenerQueue];
      *&inEvent.mEventType = 0;
      inEvent.mArgument.mParameter.mAudioUnit = &inEvent;
      *&inEvent.mArgument.mProperty.mPropertyID = 0x3032000000;
      *&inEvent.mArgument.mProperty.mElement = __Block_byref_object_copy__9486;
      v19 = __Block_byref_object_dispose__9487;
      selfCopy = self;
      eventListenerQueue = selfCopy->_eventListenerQueue;
      inBlock[0] = MEMORY[0x1E69E9820];
      inBlock[1] = 3221225472;
      inBlock[2] = __62__AUAudioUnitV2Bridge_addObserver_forKeyPath_options_context___block_invoke;
      inBlock[3] = &unk_1E72C1980;
      inBlock[4] = &inEvent;
      AUEventListenerCreateWithDispatchQueue(&self->_eventListener, 0.05, 0.05, eventListenerQueue, inBlock);
      _Block_object_dispose(&inEvent, 8);

      eventListener = self->_eventListener;
    }

    inEvent.mEventType = kAudioUnitEvent_ParameterValueChange;
    inEvent.mArgument.mParameter.mAudioUnit = self->_audioUnit;
    *&inEvent.mArgument.mProperty.mPropertyID = 0xFFFFFFFFLL;
    inEvent.mArgument.mParameter.mElement = 0;
    AUEventListenerAddEventType(eventListener, observerCopy, &inEvent);
  }

  v16.receiver = self;
  v16.super_class = AUAudioUnitV2Bridge;
  [(AUAudioUnitV2Bridge *)&v16 addObserver:observerCopy forKeyPath:pathCopy options:options context:context];
}

uint64_t __62__AUAudioUnitV2Bridge_addObserver_forKeyPath_options_context___block_invoke(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16) == -1)
  {
    v4 = result;
    [*(*(*(result + 32) + 8) + 40) willChangeValueForKey:@"allParameterValues"];
    v5 = *(*(*(v4 + 32) + 8) + 40);

    return [v5 didChangeValueForKey:@"allParameterValues"];
  }

  return result;
}

- (id)channelCapabilities
{
  outDataSize = 0;
  v3 = 0;
  if (!AudioUnitGetPropertyInfo(self->_audioUnit, 0xDu, 0, 0, &outDataSize, 0))
  {
    if (outDataSize >= 2)
    {
      std::allocator<APAC::UI13>::allocate_at_least[abi:ne200100](outDataSize >> 1);
    }

    if (AudioUnitGetProperty(self->_audioUnit, 0xDu, 0, 0, 0, &outDataSize))
    {
      v3 = 0;
    }

    else
    {
      v3 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:0];
    }
  }

  return v3;
}

- (id)parameterTree
{
  selfCopy = self;
  cachedParameterTree = self->_cachedParameterTree;
  if (!cachedParameterTree)
  {
    _buildNewParameterTree = [(AUAudioUnitV2Bridge *)self _buildNewParameterTree];
    parameterTreeRebuildQueue = self->_parameterTreeRebuildQueue;
    v6[0] = &selfCopy;
    v6[1] = &_buildNewParameterTree;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = ___ZN10applesauce8dispatch2v19sync_implIZ36__AUAudioUnitV2Bridge_parameterTree_E3__7EEvPU28objcproto17OS_dispatch_queue8NSObjectOT_NSt3__117integral_constantIbLb1EEE_block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = v6;
    dispatch_sync(parameterTreeRebuildQueue, block);

    cachedParameterTree = selfCopy->_cachedParameterTree;
  }

  return cachedParameterTree;
}

- (id)_createParameterTree
{
  v31 = *MEMORY[0x1E69E9840];
  if (self->_audioUnit)
  {
    [(AUAudioUnitV2Bridge *)self _createEventListenerQueue];
    if (!self->_parameterListener)
    {
      objc_initWeak(location, self);
      eventListenerQueue = self->_eventListenerQueue;
      inBlock[0] = MEMORY[0x1E69E9820];
      inBlock[1] = 3221225472;
      inBlock[2] = __43__AUAudioUnitV2Bridge__createParameterTree__block_invoke;
      inBlock[3] = &unk_1E72C18B8;
      objc_copyWeak(&v24, location);
      AUEventListenerCreateWithDispatchQueue(&self->_parameterListener, 0.0, 0.0, eventListenerQueue, inBlock);
      objc_destroyWeak(&v24);
      objc_destroyWeak(location);
    }

    selfCopy = self;
    inUnit = [(AUAudioUnitV2Bridge *)selfCopy audioUnit];
    v13 = selfCopy;

    audioUnit = self->_audioUnit;
    v14 = objc_opt_new();
    for (i = 0; i != 8; ++i)
    {
      v15 = [(AUAudioUnitV2Bridge *)selfCopy _elementCount:i];
      if (!i || v15)
      {
        outDataSize = 4;
        if (!AudioUnitGetPropertyInfo(inUnit, 3u, i, 0, &outDataSize, 0) && outDataSize >= 4)
        {
          v7 = outDataSize >> 2;
          std::vector<unsigned int>::vector[abi:ne200100](outData, v7);
          if (!AudioUnitGetProperty(inUnit, 3u, i, 0, outData[0], &outDataSize))
          {
            v25 = 0uLL;
            v26 = 0;
            v29 = &v25;
            std::allocator<ParameterTreeBuilder::ClumpableParam>::allocate_at_least[abi:ne200100](v7);
          }

          if (outData[0])
          {
            outData[1] = outData[0];
            operator delete(outData[0]);
          }
        }
      }
    }

    v8 = [AUParameterTree createTreeWithChildren:v14];

    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __43__AUAudioUnitV2Bridge__createParameterTree__block_invoke_59;
    v20[3] = &__block_descriptor_40_e24_v20__0__AUParameter_8f16l;
    v20[4] = audioUnit;
    [v8 setImplementorValueObserver:v20];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __43__AUAudioUnitV2Bridge__createParameterTree__block_invoke_62;
    v19[3] = &__block_descriptor_40_e21_f16__0__AUParameter_8l;
    v19[4] = audioUnit;
    [v8 setImplementorValueProvider:v19];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __43__AUAudioUnitV2Bridge__createParameterTree__block_invoke_65;
    v18[3] = &__block_descriptor_40_e36___NSString_24__0__AUParameter_8r_f16l;
    v18[4] = audioUnit;
    [v8 setImplementorStringFromValueCallback:v18];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __43__AUAudioUnitV2Bridge__createParameterTree__block_invoke_2;
    v17[3] = &__block_descriptor_40_e34_f24__0__AUParameter_8__NSString_16l;
    v17[4] = audioUnit;
    [v8 setImplementorValueFromStringCallback:v17];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __43__AUAudioUnitV2Bridge__createParameterTree__block_invoke_3;
    v16[3] = &__block_descriptor_40_e38___NSString_24__0__AUParameterNode_8q16l;
    v16[4] = audioUnit;
    [v8 setImplementorDisplayNameWithLengthCallback:v16];
    v9 = atomic_load(&v13->_eventsTriggeringParameterTreeInvalidation.__a_.__a_value);
    if (v9 <= 1)
    {
      v10 = 1;
    }

    else
    {
      v10 = v9;
    }

    [v8 set_autoCreatedForV2AU:v10];
  }

  else
  {
    v8 = 0;
  }

  v11 = *MEMORY[0x1E69E9840];

  return v8;
}

void __43__AUAudioUnitV2Bridge__createParameterTree__block_invoke(uint64_t a1, void *a2, int *a3, float a4)
{
  v23 = *MEMORY[0x1E69E9840];
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v10 = WeakRetained;
  if ((*a3 - 1) >= 2)
  {
    if (*a3)
    {
      if (kAUExtensionScope)
      {
        v13 = *kAUExtensionScope;
        if (!v13)
        {
          goto LABEL_15;
        }
      }

      else
      {
        v13 = MEMORY[0x1E69E9C10];
        v14 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v15 = *a3;
        v17 = 136315650;
        v18 = "AUAudioUnitV2Bridge.mm";
        v19 = 1024;
        v20 = 1286;
        v21 = 1024;
        v22 = v15;
        _os_log_impl(&dword_18F5DF000, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d AUEventListener encountered unknown AUEventType: %d", &v17, 0x18u);
      }
    }

    else
    {
      v11 = atomic_load(WeakRetained + 601);
      if (v11)
      {
        v12 = 8;
      }

      else
      {
        v12 = 4;
      }

      *&v9 = a4;
      [v7 setValue:v12 originator:v9];
    }
  }

  else
  {
    *&v9 = a4;
    [v7 setValue:4 originator:0 atHostTime:v9 eventType:?];
  }

LABEL_15:

  v16 = *MEMORY[0x1E69E9840];
}

void __43__AUAudioUnitV2Bridge__createParameterTree__block_invoke_59(uint64_t a1, void *a2, AudioUnitParameterValue a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = [v5 address];
  v7 = v6;
  v8 = v6 >> 61;
  v9 = HIDWORD(v6) & 0x1FFFFFFF;
  v10 = AudioUnitSetParameter(*(a1 + 32), v6, v6 >> 61, v9, a3, 0);
  if (v10)
  {
    if (kAUExtensionScope)
    {
      v11 = *kAUExtensionScope;
      if (!v11)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v11 = MEMORY[0x1E69E9C10];
      v12 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v14 = 136316418;
      v15 = "AUAudioUnitV2Bridge.mm";
      v16 = 1024;
      v17 = 1305;
      v18 = 1024;
      v19 = v7;
      v20 = 1024;
      v21 = v8;
      v22 = 1024;
      v23 = v9;
      v24 = 1024;
      v25 = v10;
      _os_log_impl(&dword_18F5DF000, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d AUParameterSet %d (%d/%d): err %d", &v14, 0x2Au);
    }
  }

LABEL_9:

  v13 = *MEMORY[0x1E69E9840];
}

float __43__AUAudioUnitV2Bridge__createParameterTree__block_invoke_62(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = a2;
  outValue = 0.0;
  v4 = [v3 address];
  v5 = v4;
  v6 = v4 >> 61;
  v7 = HIDWORD(v4) & 0x1FFFFFFF;
  Parameter = AudioUnitGetParameter(*(a1 + 32), v4, v4 >> 61, v7, &outValue);
  if (Parameter)
  {
    if (kAUExtensionScope)
    {
      v9 = *kAUExtensionScope;
      if (!v9)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v9 = MEMORY[0x1E69E9C10];
      v10 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      v16 = "AUAudioUnitV2Bridge.mm";
      v17 = 1024;
      v18 = 1315;
      v19 = 1024;
      v20 = v5;
      v21 = 1024;
      v22 = v6;
      v23 = 1024;
      v24 = v7;
      v25 = 1024;
      v26 = Parameter;
      _os_log_impl(&dword_18F5DF000, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d AudioGetParameter %d (%d/%d): err %d", buf, 0x2Au);
    }
  }

LABEL_9:
  v11 = outValue;

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

id __43__AUAudioUnitV2Bridge__createParameterTree__block_invoke_65(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [v5 address];
  outData[1] = a3;
  v13 = 0;
  ioDataSize = 24;
  outData[0] = v6;
  Property = AudioUnitGetProperty(*(a1 + 32), 0x21u, v6 >> 61, HIDWORD(v6) & 0x1FFFFFFF, outData, &ioDataSize);
  if (v13)
  {
    v8 = Property == 0;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    v9 = v13;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

float __43__AUAudioUnitV2Bridge__createParameterTree__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 address];
  outData[1] = v6;
  v12 = 0;
  ioDataSize = 24;
  outData[0] = v7;
  AudioUnitGetProperty(*(a1 + 32), 0x26u, v7 >> 61, HIDWORD(v7) & 0x1FFFFFFF, outData, &ioDataSize);
  v8 = *&v12;

  return v8;
}

id __43__AUAudioUnitV2Bridge__createParameterTree__block_invoke_3(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  outData[0] = 0;
  v16 = 0;
  outData[1] = a3;
  ioDataSize = 16;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v5 address];
    outData[0] = v6;
    Property = AudioUnitGetProperty(*(a1 + 32), 0x22u, v6 >> 61, HIDWORD(v6) & 0x1FFFFFFF, outData, &ioDataSize);
  }

  else
  {
    v8 = [v5 identifier];
    v9 = [v8 hasPrefix:@"clump_"];

    if (!v9)
    {
      v12 = 0;
      goto LABEL_9;
    }

    v10 = [v5 identifier];
    v11 = [v10 substringFromIndex:6];
    outData[0] = [v11 intValue];

    Property = AudioUnitGetProperty(*(a1 + 32), 0x23u, 0, 0, outData, &ioDataSize);
  }

  if (Property)
  {
    v12 = 0;
  }

  else
  {
    v12 = v16;
  }

LABEL_9:

  return v12;
}

- (void)_createEventListenerQueue
{
  if (!self->_eventListenerQueue)
  {
    v3 = dispatch_queue_create("AUAudioUnitV2Bridge.eventListener", 0);
    eventListenerQueue = self->_eventListenerQueue;
    self->_eventListenerQueue = v3;

    MEMORY[0x1EEE66BB8]();
  }
}

- (id)parametersForOverviewWithCount:(int64_t)count
{
  ioDataSize = 24 * count;
  if (count)
  {
    if (count < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
  }

  if (AudioUnitGetProperty(self->_audioUnit, 0x39u, 0, 0, 0, &ioDataSize))
  {
    array = [MEMORY[0x1E695DEC8] array];
  }

  else
  {
    array = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:0];
  }

  return array;
}

- (void)internalDeallocateRenderResources
{
  AudioUnitUninitialize(self->_audioUnit);
  [(AUAudioUnitV2Bridge *)self setMIDIOutputEventBlock:0];
  [(AUAudioUnitV2Bridge *)self setMIDIOutputEventListBlock:0];
  v3.receiver = self;
  v3.super_class = AUAudioUnitV2Bridge;
  [(AUAudioUnit *)&v3 internalDeallocateRenderResources];
}

- (BOOL)allocateRenderResourcesAndReturnError:(id *)error
{
  v12.receiver = self;
  v12.super_class = AUAudioUnitV2Bridge;
  v5 = [(AUAudioUnit *)&v12 allocateRenderResourcesAndReturnError:?];
  if (v5)
  {
    v6 = AudioUnitInitialize(self->_audioUnit);
    if (v6)
    {
      if (error)
      {
        v7 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:v6 userInfo:0];
        *error = v7;
      }

      LOBYTE(v5) = 0;
    }

    else
    {
      ptr = self->_renderer.__ptr_;
      musicalContextBlock = [(AUAudioUnit *)self musicalContextBlock];
      transportStateBlock = [(AUAudioUnit *)self transportStateBlock];
      AUAudioUnitV2Bridge_Renderer::prepareHostCallbacks(ptr, musicalContextBlock, transportStateBlock);

      if (error)
      {
        *error = 0;
      }

      LOBYTE(v5) = 1;
    }
  }

  return v5;
}

- (void)setTransportStateBlock:(id)block
{
  blockCopy = block;
  v8.receiver = self;
  v8.super_class = AUAudioUnitV2Bridge;
  [(AUAudioUnit *)&v8 setTransportStateBlock:blockCopy];
  ptr = self->_renderer.__ptr_;
  musicalContextBlock = [(AUAudioUnit *)self musicalContextBlock];
  transportStateBlock = [(AUAudioUnit *)self transportStateBlock];
  AUAudioUnitV2Bridge_Renderer::prepareHostCallbacks(ptr, musicalContextBlock, transportStateBlock);
}

- (void)setMusicalContextBlock:(id)block
{
  blockCopy = block;
  v8.receiver = self;
  v8.super_class = AUAudioUnitV2Bridge;
  [(AUAudioUnit *)&v8 setMusicalContextBlock:blockCopy];
  ptr = self->_renderer.__ptr_;
  musicalContextBlock = [(AUAudioUnit *)self musicalContextBlock];
  transportStateBlock = [(AUAudioUnit *)self transportStateBlock];
  AUAudioUnitV2Bridge_Renderer::prepareHostCallbacks(ptr, musicalContextBlock, transportStateBlock);
}

- (void)setMIDIOutputEventListBlock:(id)block
{
  blockCopy = block;
  MIDIOutputEventListBlock = self->_MIDIOutputEventListBlock;
  v9 = blockCopy;
  if (MIDIOutputEventListBlock)
  {
    v6 = MIDIOutputEventListBlock == blockCopy;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    self->_MIDIOutputEventListBlock = 0;
  }

  v7 = [v9 copy];
  v8 = self->_MIDIOutputEventListBlock;
  self->_MIDIOutputEventListBlock = v7;

  AudioUnitSetProperty(self->_audioUnit, 0x3Fu, 0, 0, &self->_MIDIOutputEventListBlock, 8u);
}

- (void)setMIDIOutputEventBlock:(id)block
{
  blockCopy = block;
  v5 = blockCopy;
  MIDIOutputEventBlock = self->_MIDIOutputEventBlock;
  if (MIDIOutputEventBlock)
  {
    v7 = MIDIOutputEventBlock == blockCopy;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    self->_MIDIOutputEventBlock = 0;
  }

  v8 = [v5 copy];
  v9 = self->_MIDIOutputEventBlock;
  self->_MIDIOutputEventBlock = v8;

  v10 = self->_MIDIOutputEventBlock;
  if (v10)
  {
    v11 = _auV2midiOutCallback;
  }

  else
  {
    v11 = 0;
  }

  v12[0] = v11;
  v12[1] = v10;
  AudioUnitSetProperty(self->_audioUnit, 0x30u, 0, 0, v12, 0x10u);
}

- (id)MIDIOutputEventListBlock
{
  v2 = _Block_copy(self->_MIDIOutputEventListBlock);

  return v2;
}

- (id)MIDIOutputEventBlock
{
  v2 = _Block_copy(self->_MIDIOutputEventBlock);

  return v2;
}

- (void)deliverV2Parameters:(const AURenderEvent *)parameters
{
  if (parameters)
  {
    next = parameters;
    do
    {
      if (next->head.eventType == AURenderEventParameter)
      {
        if (next->MIDIEventsList.eventList.packet[0].wordCount)
        {
          AudioUnitSetParameter(self->_audioUnit, next->parameter.parameterAddress, next->parameter.parameterAddress >> 61, HIDWORD(next->parameter.parameterAddress) & 0x1FFFFFFF, next->parameter.value, 0);
        }
      }

      next = next->head.next;
    }

    while (next);
  }
}

- (id)internalRenderBlock
{
  ptr = self->_renderer.__ptr_;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = ___ZN28AUAudioUnitV2Bridge_Renderer11renderBlockEv_block_invoke;
  aBlock[3] = &__block_descriptor_40_e433_i60__0_I8r__AudioTimeStamp_dQdQ_SMPTETime_ssIIIssss_II_16I24q28__AudioBufferList_I_1_AudioBuffer_II_v___36r__AURenderEvent__AURenderEventHeader___AURenderEvent_qCC__AUParameterEvent___AURenderEvent_qC_3C_IQf__AUMIDIEvent___AURenderEvent_qCCSC_3C___AUMIDIEventList___AURenderEvent_qCCC_MIDIEventList_iI_1_MIDIEventPacket_QI_64I______44___i___I__AudioTimeStamp_dQdQ_SMPTETime_ssIIIssss_II_Iq__AudioBufferList_I_1_AudioBuffer_II_v____52l;
  aBlock[4] = ptr;
  v3 = _Block_copy(aBlock);
  v4 = _Block_copy(v3);

  return v4;
}

- (void)dealloc
{
  [(AUAudioUnitV2Bridge *)self invalidateAudioUnit];
  v3.receiver = self;
  v3.super_class = AUAudioUnitV2Bridge;
  [(AUAudioUnit *)&v3 dealloc];
}

- (void)invalidateAudioUnit
{
  selfCopy = self;
  v20[4] = *MEMORY[0x1E69E9840];
  selfCopy2 = self;
  audioUnit = self->_audioUnit;
  if (audioUnit)
  {
    AudioUnitRemovePropertyListenerWithUserData(audioUnit, 0xBu, ElementCountPropertyListener, selfCopy);
    AudioUnitRemovePropertyListenerWithUserData(selfCopy->_audioUnit, 3u, ParameterListPropertyListener, selfCopy);
    AudioUnitRemovePropertyListenerWithUserData(selfCopy->_audioUnit, 4u, ParameterListPropertyListener, selfCopy);
  }

  inputBusses = selfCopy->_inputBusses;
  selfCopy->_inputBusses = 0;

  outputBusses = selfCopy->_outputBusses;
  selfCopy->_outputBusses = 0;

  cachedParameterTree = selfCopy->_cachedParameterTree;
  selfCopy->_cachedParameterTree = 0;

  [(AUAudioUnitV2Bridge *)selfCopy setMIDIOutputEventBlock:0];
  [(AUAudioUnitV2Bridge *)selfCopy setMIDIOutputEventListBlock:0];
  ptr = selfCopy->_renderer.__ptr_;
  if (ptr)
  {
    v8 = *(ptr + 2);
    *(ptr + 1) = 0;
    *(ptr + 2) = 0;

    v9 = *(ptr + 3);
    *(ptr + 3) = 0;
  }

  eventListener = selfCopy->_eventListener;
  if (eventListener)
  {
    AUListenerDispose(eventListener);
    selfCopy->_eventListener = 0;
  }

  if (selfCopy->_parameterListener)
  {
    parameterTreeRebuildQueue = selfCopy->_parameterTreeRebuildQueue;
    v17 = &selfCopy2;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = ___ZN10applesauce8dispatch2v19sync_implIZ42__AUAudioUnitV2Bridge_invalidateAudioUnit_E3__6EEvPU28objcproto17OS_dispatch_queue8NSObjectOT_NSt3__117integral_constantIbLb1EEE_block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = &v17;
    dispatch_sync(parameterTreeRebuildQueue, block);
    selfCopy = selfCopy2;
  }

  eventListenerQueue = selfCopy->_eventListenerQueue;
  if (eventListenerQueue)
  {
    selfCopy->_eventListenerQueue = 0;

    selfCopy = selfCopy2;
  }

  v16.receiver = selfCopy;
  v16.super_class = AUAudioUnitV2Bridge;
  [(AUAudioUnit *)&v16 invalidateAudioUnit];
  v13 = selfCopy2;
  if (selfCopy2->_audioUnitIsOwned)
  {
    v14 = selfCopy2->_audioUnit;
    if (v14)
    {
      v20[0] = &unk_1F03347F0;
      v20[1] = v14;
      v20[3] = v20;
      dispatch_to_main_queue_with_timeout(v20);
      std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v20);
      v13 = selfCopy2;
    }
  }

  v13->_audioUnit = 0;
  std::unique_ptr<AUAudioUnitV2Bridge_Renderer>::reset[abi:ne200100](&selfCopy2->_renderer, 0);
  v15 = *MEMORY[0x1E69E9840];
}

- (uint64_t)invalidateAudioUnit
{
  v2 = *(result + 8);
  *a2 = &unk_1F03347F0;
  a2[1] = v2;
  return result;
}

- (AUAudioUnitV2Bridge)initWithAudioUnit:(OpaqueAudioComponentInstance *)unit description:(AudioComponentDescription *)description
{
  v9 = *description;
  v8.receiver = self;
  v8.super_class = AUAudioUnitV2Bridge;
  v5 = [(AUAudioUnit *)&v8 initWithComponentDescription:&v9 options:0 error:0];
  v6 = v5;
  if (v5)
  {
    v5->_audioUnit = unit;
    v5->_audioUnitIsOwned = 0;
    [(AUAudioUnitV2Bridge *)v5 init2];
  }

  return v6;
}

- (void)init2
{
  v3 = dispatch_queue_create("parameterTreeBuilderQueue", 0);
  parameterTreeRebuildQueue = self->_parameterTreeRebuildQueue;
  self->_parameterTreeRebuildQueue = v3;

  v5 = [[AUV2BridgeBusArray alloc] initWithOwner:self scope:1];
  inputBusses = self->_inputBusses;
  self->_inputBusses = v5;

  v7 = [[AUV2BridgeBusArray alloc] initWithOwner:self scope:2];
  outputBusses = self->_outputBusses;
  self->_outputBusses = v7;

  [(AUAudioUnitV2Bridge *)self _rebuildBusses:1];
  [(AUAudioUnitV2Bridge *)self _rebuildBusses:2];
  AudioUnitAddPropertyListener(self->_audioUnit, 0xBu, ElementCountPropertyListener, self);
  AudioUnitAddPropertyListener(self->_audioUnit, 3u, ParameterListPropertyListener, self);
  AudioUnitAddPropertyListener(self->_audioUnit, 4u, ParameterListPropertyListener, self);
  operator new();
}

- (void)_invalidateParameterTree:(unsigned int)tree
{
  selfCopy = self;
  if (tree <= 0xB && ((1 << tree) & 0x818) != 0)
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  atomic_fetch_or(&self->_eventsTriggeringParameterTreeInvalidation, v3);
  if (selfCopy->_cachedParameterTree)
  {
    _buildNewParameterTree = [(AUAudioUnitV2Bridge *)selfCopy _buildNewParameterTree];
    v9 = _buildNewParameterTree;
    if (_buildNewParameterTree)
    {
      if (-[AUAudioUnit renderResourcesAllocated](selfCopy, "renderResourcesAllocated") || ([_buildNewParameterTree allParameters], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "count"), v5, v6))
      {
        [(AUAudioUnitV2Bridge *)selfCopy willChangeValueForKey:@"parameterTree"];
        parameterTreeRebuildQueue = selfCopy->_parameterTreeRebuildQueue;
        v8[0] = &selfCopy;
        v8[1] = &v9;
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = ___ZN10applesauce8dispatch2v19sync_implIZ48__AUAudioUnitV2Bridge__invalidateParameterTree__E3__5EEvPU28objcproto17OS_dispatch_queue8NSObjectOT_NSt3__117integral_constantIbLb1EEE_block_invoke;
        block[3] = &__block_descriptor_40_e5_v8__0l;
        block[4] = v8;
        dispatch_sync(parameterTreeRebuildQueue, block);
        [(AUAudioUnitV2Bridge *)selfCopy didChangeValueForKey:@"parameterTree"];
        _buildNewParameterTree = v9;
      }
    }
  }
}

- (id)_buildNewParameterTree
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0;
  selfCopy = self;
  __p = 0;
  v12 = 0;
  v13 = 0;
  parameterTreeRebuildQueue = self->_parameterTreeRebuildQueue;
  v10[0] = &v14;
  v10[1] = &selfCopy;
  v10[2] = &__p;
  *block = MEMORY[0x1E69E9820];
  *&block[8] = 3221225472;
  *&block[16] = ___ZN10applesauce8dispatch2v19sync_implIZ45__AUAudioUnitV2Bridge__buildNewParameterTree_E3__3EEvPU28objcproto17OS_dispatch_queue8NSObjectOT_NSt3__117integral_constantIbLb1EEE_block_invoke;
  v17 = &__block_descriptor_40_e5_v8__0l;
  v18 = v10;
  dispatch_sync(parameterTreeRebuildQueue, block);
  v3 = v14;
  if (v14)
  {
    v14 = 0;
    goto LABEL_14;
  }

  if (!kAUExtensionScope)
  {
    v4 = MEMORY[0x1E69E9C10];
    v5 = MEMORY[0x1E69E9C10];
    goto LABEL_7;
  }

  v4 = *kAUExtensionScope;
  if (v4)
  {
LABEL_7:
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *block = 136315650;
      *&block[4] = "AUAudioUnitV2Bridge.mm";
      *&block[12] = 1024;
      *&block[14] = 654;
      *&block[18] = 1024;
      *&block[20] = (v12 - __p) >> 3;
      _os_log_impl(&dword_18F5DF000, v4, OS_LOG_TYPE_INFO, "%25s:%-5d Suppressed redundant parameter tree rebuilding; %d dirty values", block, 0x18u);
    }
  }

  v6 = __p;
  v7 = v12;
  while (v6 != v7)
  {
    [(AUAudioUnitV2Bridge *)selfCopy _notifyParameterChange:*v6++];
  }

  v3 = 0;
LABEL_14:
  if (__p)
  {
    v12 = __p;
    operator delete(__p);
  }

  v8 = *MEMORY[0x1E69E9840];

  return v3;
}

- (void)_notifyParameterChange:(unint64_t)change
{
  changeCopy = change;
  audioUnit = self->_audioUnit;
  v5 = change >> 61;
  v6 = HIDWORD(change) & 0x1FFFFFFF;
  objc_initWeak(&location, self);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __46__AUAudioUnitV2Bridge__notifyParameterChange___block_invoke;
  v7[3] = &unk_1E72C1890;
  objc_copyWeak(&v8, &location);
  v9 = 0;
  v10 = audioUnit;
  v11 = changeCopy;
  v12 = v5;
  v13 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], v7);
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __46__AUAudioUnitV2Bridge__notifyParameterChange___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    AUEventListenerNotify(WeakRetained[74], 0, (a1 + 40));
  }
}

- (int)enableBus:(unsigned int)bus scope:(unsigned int)scope enable:(BOOL)enable
{
  if (scope != 1)
  {
    return 0;
  }

  v11[2] = v5;
  v11[3] = v6;
  ptr = self->_renderer.__ptr_;
  v8 = enable ? AUAudioUnitV2Bridge_Renderer::renderInputProc : 0;
  v9 = enable ? self->_renderer.__ptr_ : 0;
  v11[0] = v8;
  v11[1] = v9;
  result = AudioUnitSetProperty(*ptr, 0x17u, 1u, bus, v11, 0x10u);
  if (!result)
  {
    return 0;
  }

  return result;
}

- (BOOL)_setElementCount:(unsigned int)count count:(unsigned int)a4 error:(id *)error
{
  inData = a4;
  v6 = AudioUnitSetProperty(self->_audioUnit, 0xBu, count, 0, &inData, 4u);
  v7 = v6;
  if (error)
  {
    if (v6)
    {
      v8 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:v6 userInfo:0];
      *error = v8;
    }

    else
    {
      *error = 0;
    }
  }

  return v7 == 0;
}

- (BOOL)_elementCountWritable:(unsigned int)writable
{
  outDataSize = 0;
  outWritable = 0;
  AudioUnitGetPropertyInfo(self->_audioUnit, 0xBu, writable, 0, &outDataSize, &outWritable);
  return outWritable != 0;
}

- (unsigned)_elementCount:(unsigned int)count
{
  outData = 0;
  ioDataSize = 4;
  AudioUnitGetProperty(self->_audioUnit, 0xBu, count, 0, &outData, &ioDataSize);
  return outData;
}

+ (BOOL)automaticallyNotifiesObserversForKey:(id)key
{
  keyCopy = key;
  {
    +[AUAudioUnitV2Bridge automaticallyNotifiesObserversForKey:]::autoNotifying = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"fullState", @"fullStateForDocument", @"currentPreset", 0}];
  }

  v4 = [+[AUAudioUnitV2Bridge automaticallyNotifiesObserversForKey:]::autoNotifying containsObject:keyCopy];

  return v4;
}

@end