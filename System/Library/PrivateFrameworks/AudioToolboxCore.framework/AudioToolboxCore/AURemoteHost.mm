@interface AURemoteHost
+ (void)_staticInit;
- ($115C4C562B26FF47E01F9F4EA65B5887)hostAuditToken;
- (AURemoteHost)initWithConnection:(id)a3 config:(id)a4;
- (AURemoteHost)initWithConnection:(id)a3 config:(id)a4 timeOutHandler:(function<void)(;
- (BOOL)_identifyBus:(id)a3 scope:(unsigned int *)a4 element:(unsigned int *)a5;
- (id).cxx_construct;
- (id)_fetchAndClearPendingChangedProperties;
- (id)_getBus:(unsigned int)a3 scope:(unsigned int)a4 error:(id *)a5;
- (id)_getSpeechSynthesisProviderAudioUnit;
- (id)currentParameterTree;
- (id)getParameter:(NSObject  *){objcproto17OS_dispatch_queue} sequenceNumber:(id)&& reply:;
- (id)getParameter:(id *)a1 sequenceNumber:reply:;
- (id)readHostEntitlement:(id)a3;
- (void)addPropertyObserver:(id)a3 context:(unint64_t)a4 reply:(id)a5;
- (void)cancelSpeechRequest:(id)a3;
- (void)close:(id)a3;
- (void)createRenderPipe:(int)a3 formats:(id)a4 maxFrames:(unsigned int)a5 midiOutSizeHint:(unsigned int)a6 resources:(id)a7 reply:(id)a8;
- (void)dealloc;
- (void)deleteUserPreset:(id)a3 reply:(id)a4;
- (void)destroyRenderPipe:(unsigned int)a3 reply:(id)a4;
- (void)getBusses:(unsigned int)a3 reply:(id)a4;
- (void)getCustomMessageChannelFor:(id)a3 reply:(id)a4;
- (void)getParameter:(unint64_t)a3 sequenceNumber:(unsigned int)a4 reply:(id)a5;
- (void)getParameterTree:(id)a3;
- (void)getSpeechVoices:(id)a3;
- (void)initialize:(unint64_t)a3 reply:(id)a4;
- (void)initialize:reply:;
- (void)loadUserPresets:(id)a3;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)open:(AudioComponentDescription *)a3 instanceUUID:(id)a4 reply:(id)a5;
- (void)openImpl:(id)a3 reply:(id)a4;
- (void)parameterNode:(id)a3 displayNameWithLength:(int64_t)a4 reply:(id)a5;
- (void)parameterStringFromValue:(float)a3 currentValue:(BOOL)a4 address:(unint64_t)a5 reply:(id)a6;
- (void)parameterValueFromString:(id)a3 address:(unint64_t)a4 reply:(id)a5;
- (void)parametersForOverviewWithCount:(int64_t)a3 reply:(id)a4;
- (void)presetStateFor:(id)a3 reply:(id)a4;
- (void)removePropertyObserver:(id)a3 context:(unint64_t)a4 reply:(id)a5;
- (void)reset:(id)a3;
- (void)retrieveInstanceUUID:(id)a3;
- (void)saveUserPreset:(id)a3 state:(id)a4 reply:(id)a5;
- (void)selectViewConfiguration:(id)a3 reply:(id)a4;
- (void)setBlocks;
- (void)setBusCount:(unint64_t)a3 scope:(unsigned int)a4 reply:(id)a5;
- (void)setValue:(id)a3 forKey:(id)a4 reply:(id)a5;
- (void)setValue:(id)a3 forProperty:(id)a4 propagateError:(BOOL)a5 reply:(id)a6;
- (void)startUserPresetFolderMonitoring;
- (void)supportedViewConfigurations:(id)a3 reply:(id)a4;
- (void)synthesizeSpeechRequest:(id)a3 reply:(id)a4;
- (void)uninitialize:(id)a3;
- (void)updateHostCallbacks:(unint64_t)a3 reply:(id)a4;
- (void)updateWorkgroupMirror:(id)a3 reply:(id)a4;
- (void)valueForKey:(id)a3 reply:(id)a4;
- (void)valueForProperty:(id)a3 propagateError:(BOOL)a4 reply:(id)a5;
@end

@implementation AURemoteHost

- (id).cxx_construct
{
  self->_renderServerUser.var0.__null_state_ = 0;
  self->_renderServerUser.__engaged_ = 0;
  caulk::xpc::reply_watchdog_factory::reply_watchdog_factory(&self->_replyWatchdogFactory);
  self->_transactorIO.__ptr_ = 0;
  *&self->_kvoAggregator.mRecords.__cap_ = 0u;
  *&self->_remoteMessageChannels.var0 = 0u;
  self->_workgroupMirror = 0u;
  *&self->_kvoAggregator.mRecords.__begin_ = 0u;
  return self;
}

- ($115C4C562B26FF47E01F9F4EA65B5887)hostAuditToken
{
  result = self->_remoteHostXPCConnection;
  if (result)
  {
    return [($115C4C562B26FF47E01F9F4EA65B5887 *)result auditToken];
  }

  *retstr->var0 = 0u;
  *&retstr->var0[4] = 0u;
  return result;
}

- (id)readHostEntitlement:(id)a3
{
  v3 = [(NSXPCConnection *)self->_remoteHostXPCConnection valueForEntitlement:a3];

  return v3;
}

- (void)retrieveInstanceUUID:(id)a3
{
  v4 = a3;
  v7 = caulk::xpc::reply_watchdog_factory::reply_with_timeout<NSError * {__strong},NSString * {__strong}>(&self->_replyWatchdogFactory, v4);

  v5 = [(AURemoteHost *)self audioUnitUUID];
  v6 = [v5 UUIDString];

  v7[2](v7, 0, v6);
}

- (void)getCustomMessageChannelFor:(id)a3 reply:(id)a4
{
  v27 = a3;
  v6 = a4;
  v7 = [(AUAudioUnit *)self->_audioUnit messageChannelFor:v27];
  if (v7)
  {
    v8 = [[AURemoteMessageChannel alloc] initWithMessageChannel:v7];
    v9 = v8;
    var0 = self->_remoteMessageChannels.var0;
    var1 = self->_remoteMessageChannels.var1;
    if (var0 >= var1)
    {
      begin = self->_remoteMessageChannels.__begin_;
      v14 = var0 - begin;
      if ((v14 + 1) >> 61)
      {
        std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
      }

      v15 = var1 - begin;
      v16 = v15 >> 2;
      if (v15 >> 2 <= (v14 + 1))
      {
        v16 = v14 + 1;
      }

      if (v15 >= 0x7FFFFFFFFFFFFFF8)
      {
        v17 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v17 = v16;
      }

      if (v17)
      {
        if (!(v17 >> 61))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v18 = (8 * v14);
      *v18 = v8;
      v12 = (8 * v14 + 8);
      v19 = self->_remoteMessageChannels.__begin_;
      v20 = self->_remoteMessageChannels.var0;
      v21 = (v18 + v19 - v20);
      if (v19 != v20)
      {
        v22 = self->_remoteMessageChannels.__begin_;
        v23 = v21;
        do
        {
          v24 = *v22;
          *v22++ = 0;
          *v23++ = v24;
        }

        while (v22 != v20);
        do
        {
          v25 = *v19++;
        }

        while (v19 != v20);
        v19 = self->_remoteMessageChannels.__begin_;
      }

      self->_remoteMessageChannels.__begin_ = v21;
      self->_remoteMessageChannels.var0 = v12;
      self->_remoteMessageChannels.var1 = 0;
      if (v19)
      {
        operator delete(v19);
      }
    }

    else
    {
      *var0 = v8;
      v12 = var0 + 1;
    }

    self->_remoteMessageChannels.var0 = v12;
    v26 = [(AURemoteMessageChannel *)v9 endpoint];
    v6[2](v6, 0, v26);
  }

  else
  {
    v6[2](v6, 0, 0);
  }
}

- (void)getSpeechVoices:(id)a3
{
  v4 = a3;
  v8 = caulk::xpc::reply_watchdog_factory::reply_with_timeout<NSError * {__strong},NSArray * {__strong}>(&self->_replyWatchdogFactory, v4);

  v5 = [(AURemoteHost *)self _getSpeechSynthesisProviderAudioUnit];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 speechVoices];
    v8[2](v8, 0, v7);
  }

  else
  {
    v8[2](v8, 0, 0);
  }
}

- (void)cancelSpeechRequest:(id)a3
{
  v4 = a3;
  v7 = caulk::xpc::reply_watchdog_factory::reply_with_timeout<NSError * {__strong}>(&self->_replyWatchdogFactory, v4);

  v5 = [(AURemoteHost *)self _getSpeechSynthesisProviderAudioUnit];
  v6 = v5;
  if (v5)
  {
    [v5 cancelSpeechRequest];
  }

  v7[2](v7, 0);
}

- (void)synthesizeSpeechRequest:(id)a3 reply:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = caulk::xpc::reply_watchdog_factory::reply_with_timeout<NSError * {__strong}>(&self->_replyWatchdogFactory, v6);

  v8 = [(AURemoteHost *)self _getSpeechSynthesisProviderAudioUnit];
  v9 = v8;
  if (v8)
  {
    [v8 synthesizeSpeechRequest:v10];
  }

  v7[2](v7, 0);
}

- (void)startUserPresetFolderMonitoring
{
  if (!self->_presetFolderWatcher)
  {
    if (!self->_presetMonitoringQueue)
    {
      v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
      v4 = dispatch_queue_create("AUExtension.PresetMonitoring", v3);
      presetMonitoringQueue = self->_presetMonitoringQueue;
      self->_presetMonitoringQueue = v4;
    }

    objc_initWeak(&location, self);
    v6 = self->_presetMonitoringQueue;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __47__AURemoteHost_startUserPresetFolderMonitoring__block_invoke;
    v9[3] = &unk_1E72C2DF8;
    objc_copyWeak(&v10, &location);
    v7 = [AUAudioUnit _monitorUserPresets:v6 callback:v9];
    presetFolderWatcher = self->_presetFolderWatcher;
    self->_presetFolderWatcher = v7;

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }
}

void __47__AURemoteHost_startUserPresetFolderMonitoring__block_invoke(uint64_t a1)
{
  v12[4] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = WeakRetained[24];
    WeakRetained[24] = 0;

    v4 = v2[2];
    v10[0] = &unk_1F033F978;
    v10[1] = &__block_literal_global_40;
    v10[3] = v10;
    caulk::xpc::message<objc_object  {objcproto23AUAudioUnitHostProtocol}* {__strong}>::message(&v11, v4, v10);
    _ZNSt3__110__function12__value_funcIFvP7NSErrorONS_5tupleIJEEEEED2B8ne200100Ev(v10);
    v5 = caulk::xpc::message<objc_object  {objcproto23AUAudioUnitHostProtocol}* {__strong}>::async_proxy(&v11);
    v6 = MEMORY[0x1E695DEC8];
    v7 = [AUAudioUnitProperty propertyWithKey:@"userPresets"];
    v8 = [v6 arrayWithObjects:{v7, 0}];
    [v5 propertiesChanged:v8];

    _ZNSt3__110__function12__value_funcIFvP7NSErrorONS_5tupleIJEEEEED2B8ne200100Ev(v12);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)presetStateFor:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (!self->_replyWatchdogFactory.mDebugging)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3321888768;
    aBlock[2] = ___ZN5caulk3xpc22reply_watchdog_factory18reply_with_timeoutIJU8__strongP7NSErrorU8__strongP12NSDictionaryIP8NSStringP11objc_objectEEEEU13block_pointerFvDpT_ESH_i_block_invoke;
    aBlock[3] = &__block_descriptor_48_ea8_32c174_ZTSKZN5caulk3xpc22reply_watchdog_factory18reply_with_timeoutIJU8__strongP7NSErrorU8__strongP12NSDictionaryIP8NSStringP11objc_objectEEEEU13block_pointerFvDpT_ESH_iEUlS4_SC_E__e34_v24__0__NSError_8__NSDictionary_16l;
    caulk::xpc::reply_watchdog_factory::make_timer(&self->_replyWatchdogFactory);
    v16 = _Block_copy(v7);
    v18 = v15;
    v19 = _Block_copy(v16);
    v8 = _Block_copy(aBlock);

    v9 = v18;
    v18 = 0;

    v10 = v15;
    v15 = 0;
  }

  audioUnit = self->_audioUnit;
  if (audioUnit)
  {
    v14 = 0;
    v12 = [(AUAudioUnit *)audioUnit presetStateFor:v6 error:&v14];
    v13 = v14;
  }

  else
  {
    v12 = 0;
    v13 = 0;
  }

  v8[2](v8, v13, v12);
}

- (void)deleteUserPreset:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = caulk::xpc::reply_watchdog_factory::reply_with_timeout<NSError * {__strong}>(&self->_replyWatchdogFactory, v7);

  audioUnit = self->_audioUnit;
  if (audioUnit)
  {
    v11 = 0;
    [(AUAudioUnit *)audioUnit deleteUserPreset:v6 error:&v11];
    v10 = v11;
    (v8)[2](v8, v10);
  }

  else
  {
    v10 = 0;
    v8[2](v8, 0);
  }
}

- (void)saveUserPreset:(id)a3 state:(id)a4 reply:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = caulk::xpc::reply_watchdog_factory::reply_with_timeout<NSError * {__strong}>(&self->_replyWatchdogFactory, v8);

  audioUnit = self->_audioUnit;
  if (audioUnit)
  {
    v12 = 0;
    [(AUAudioUnit *)audioUnit saveUserPreset:v7 error:&v12];
    v11 = v12;
    (v9)[2](v9, v11);
  }

  else
  {
    v11 = 0;
    v9[2](v9, 0);
  }
}

- (void)loadUserPresets:(id)a3
{
  v4 = a3;
  v11 = v4;
  if (!self->_replyWatchdogFactory.mDebugging)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3321888768;
    aBlock[2] = ___ZN5caulk3xpc22reply_watchdog_factory18reply_with_timeoutIJU8__strongP7NSErrorU8__strongP7NSArrayIP17AUAudioUnitPresetEEEEU13block_pointerFvDpT_ESF_i_block_invoke;
    aBlock[3] = &__block_descriptor_48_ea8_32c164_ZTSKZN5caulk3xpc22reply_watchdog_factory18reply_with_timeoutIJU8__strongP7NSErrorU8__strongP7NSArrayIP17AUAudioUnitPresetEEEEU13block_pointerFvDpT_ESF_iEUlS4_SA_E__e29_v24__0__NSError_8__NSArray_16l;
    caulk::xpc::reply_watchdog_factory::make_timer(&self->_replyWatchdogFactory);
    v13 = _Block_copy(v4);
    v15 = v12;
    v16 = _Block_copy(v13);
    v11 = _Block_copy(aBlock);

    v5 = v15;
    v15 = 0;
  }

  audioUnit = self->_audioUnit;
  if (audioUnit)
  {
    v7 = [(AUAudioUnit *)audioUnit userPresets];
    v8 = [v7 mutableCopy];
    userPresets = self->_userPresets;
    p_userPresets = &self->_userPresets;
    *p_userPresets = v8;
  }

  else
  {
    p_userPresets = &self->_userPresets;
  }

  v11[2](v11, 0, *p_userPresets);
}

- (void)selectViewConfiguration:(id)a3 reply:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = caulk::xpc::reply_watchdog_factory::reply_with_timeout<NSError * {__strong}>(&self->_replyWatchdogFactory, v6);

  [(AUAudioUnit *)self->_audioUnit selectViewConfiguration:v8];
  v7[2](v7, 0);
}

- (void)supportedViewConfigurations:(id)a3 reply:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = v6;
  if (!self->_replyWatchdogFactory.mDebugging)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3321888768;
    aBlock[2] = ___ZN5caulk3xpc22reply_watchdog_factory18reply_with_timeoutIJU8__strongP7NSErrorU8__strongP10NSIndexSetEEEU13block_pointerFvDpT_ESC_i_block_invoke;
    aBlock[3] = &__block_descriptor_48_ea8_32c146_ZTSKZN5caulk3xpc22reply_watchdog_factory18reply_with_timeoutIJU8__strongP7NSErrorU8__strongP10NSIndexSetEEEU13block_pointerFvDpT_ESC_iEUlS4_S7_E__e32_v24__0__NSError_8__NSIndexSet_16l;
    caulk::xpc::reply_watchdog_factory::make_timer(&self->_replyWatchdogFactory);
    v12 = _Block_copy(v6);
    v14 = v11;
    v15 = _Block_copy(v12);
    v7 = _Block_copy(aBlock);

    v8 = v14;
    v14 = 0;
  }

  v9 = [(AUAudioUnit *)self->_audioUnit supportedViewConfigurations:v10];
  v7[2](v7, 0, v9);
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v8 = a3;
  v9 = a4;
  propertyObserverQueue = self->_propertyObserverQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__AURemoteHost_observeValueForKeyPath_ofObject_change_context___block_invoke;
  block[3] = &unk_1E72BA918;
  v14 = v8;
  v15 = self;
  v16 = v9;
  v11 = v9;
  v12 = v8;
  dispatch_sync(propertyObserverQueue, block);
}

void __63__AURemoteHost_observeValueForKeyPath_ofObject_change_context___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = [AUAudioUnitProperty propertyWithKey:*(a1 + 32)];
  if ([*(a1 + 40) _identifyBus:*(a1 + 48) scope:v2 + 20 element:v2 + 24])
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v3 = *(*(a1 + 40) + 296);
    v4 = [v3 countByEnumeratingWithState:&v13 objects:v20 count:16];
    if (v4)
    {
      v5 = *v14;
      while (2)
      {
        v6 = 0;
        do
        {
          if (*v14 != v5)
          {
            objc_enumerationMutation(v3);
          }

          v7 = *(*(&v13 + 1) + 8 * v6);
          if (*(v2 + 20) == *(v7 + 20) && *(v2 + 24) == *(v7 + 24) && ([*(v2 + 8) isEqualToString:{*(v7 + 8), v13}] & 1) != 0)
          {

            goto LABEL_16;
          }

          ++v6;
        }

        while (v4 != v6);
        v4 = [v3 countByEnumeratingWithState:&v13 objects:v20 count:16];
        if (v4)
        {
          continue;
        }

        break;
      }
    }

    [*(*(a1 + 40) + 296) addObject:v2];
    v8 = *(a1 + 40);
    if (!*(v8 + 284) && [*(v8 + 296) count])
    {
      v9 = *(*(a1 + 40) + 16);
      v17[0] = &unk_1F033F978;
      v17[1] = &__block_literal_global_37;
      v17[3] = v17;
      caulk::xpc::message<objc_object  {objcproto23AUAudioUnitHostProtocol}* {__strong}>::message(&v18, v9, v17);
      _ZNSt3__110__function12__value_funcIFvP7NSErrorONS_5tupleIJEEEEED2B8ne200100Ev(v17);
      v10 = caulk::xpc::message<objc_object  {objcproto23AUAudioUnitHostProtocol}* {__strong}>::async_proxy(&v18);
      v11 = [*(a1 + 40) _fetchAndClearPendingChangedProperties];
      [v10 propertiesChanged:v11];

      _ZNSt3__110__function12__value_funcIFvP7NSErrorONS_5tupleIJEEEEED2B8ne200100Ev(&v19);
    }
  }

LABEL_16:

  v12 = *MEMORY[0x1E69E9840];
}

- (id)_fetchAndClearPendingChangedProperties
{
  v3 = self->_pendingChangedProperties;
  v4 = objc_opt_new();
  pendingChangedProperties = self->_pendingChangedProperties;
  self->_pendingChangedProperties = v4;

  return v3;
}

- (void)parameterNode:(id)a3 displayNameWithLength:(int64_t)a4 reply:(id)a5
{
  v13 = a3;
  v8 = a5;
  v9 = caulk::xpc::reply_watchdog_factory::reply_with_timeout<NSError * {__strong},NSString * {__strong}>(&self->_replyWatchdogFactory, v8);

  v10 = [(AURemoteHost *)self currentParameterTree];
  v11 = [v10 valueForKeyPath:v13];

  if (v11)
  {
    v12 = [v11 displayNameWithLength:a4];
  }

  else
  {
    v12 = 0;
  }

  (v9)[2](v9, 0, v12);
}

- (void)parameterValueFromString:(id)a3 address:(unint64_t)a4 reply:(id)a5
{
  v13 = a3;
  v8 = a5;
  v9 = caulk::xpc::reply_watchdog_factory::reply_with_timeout<NSError * {__strong},float>(&self->_replyWatchdogFactory, v8);

  v10 = [(AURemoteHost *)self currentParameterTree];
  v11 = [v10 parameterWithAddress:a4];

  if (v11)
  {
    [v11 valueFromString:v13];
  }

  else
  {
    v12.n128_u64[0] = 0;
  }

  v9[2](v9, 0, v12);
}

- (void)parameterStringFromValue:(float)a3 currentValue:(BOOL)a4 address:(unint64_t)a5 reply:(id)a6
{
  v7 = a4;
  v15 = a3;
  v9 = a6;
  v10 = caulk::xpc::reply_watchdog_factory::reply_with_timeout<NSError * {__strong},NSString * {__strong}>(&self->_replyWatchdogFactory, v9);

  v11 = [(AURemoteHost *)self currentParameterTree];
  v12 = [v11 parameterWithAddress:a5];

  if (v12)
  {
    if (v7)
    {
      v13 = 0;
    }

    else
    {
      v13 = &v15;
    }

    v14 = [v12 stringFromValue:v13];
  }

  else
  {
    v14 = 0;
  }

  (v10)[2](v10, 0, v14);
}

- (void)getParameter:(unint64_t)a3 sequenceNumber:(unsigned int)a4 reply:(id)a5
{
  v8 = a5;
  v9 = caulk::xpc::reply_watchdog_factory::reply_with_timeout<NSError * {__strong},float>(&self->_replyWatchdogFactory, v8);

  v10 = self;
  v11 = _Block_copy(v9);
  if (a4)
  {
    objc_initWeak(&location, v10);
    {
      {
        v14 = dispatch_get_global_queue(25, 0);
        AUv2GetParameterSynchronizer::parameterSyncQueue(void)::global = dispatch_queue_create_with_target_V2("AUv2GetParameterSynchronizer", 0, v14);
      }
    }

    v12 = AUv2GetParameterSynchronizer::parameterSyncQueue(void)::global;
    applesauce::dispatch::v1::queue::operator*(AUv2GetParameterSynchronizer::parameterSyncQueue(void)::global);
    objc_claimAutoreleasedReturnValue();
    objc_copyWeak(v15, &location);
    v15[1] = v10;
    v15[2] = a3;
    v16 = a4;
    v17 = _Block_copy(v11);
    v18 = _Block_copy(v9);
    v13 = v12;
    operator new();
  }

  [(AUAudioUnit *)v10->_audioUnit getV2Parameter:a3 sequenceNumber:0];
  (*(v11 + 2))(v11, 0);
}

- (id)getParameter:(id *)a1 sequenceNumber:reply:
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {

    objc_destroyWeak(v2);
    MEMORY[0x193ADF220](v2, 0x10C0C4089E62035);
  }

  return a1;
}

- (id)getParameter:(NSObject  *){objcproto17OS_dispatch_queue} sequenceNumber:(id)&& reply:
{
  v6 = a1;
  WeakRetained = objc_loadWeakRetained(a1);
  if (WeakRetained)
  {
    [*(*(a1 + 8) + 8) getV2Parameter:*(a1 + 16) sequenceNumber:*(a1 + 24)];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v3 = *(a1 + 40);
    v4 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-66749 userInfo:0];
    (*(v3 + 16))(v3, v4, 0.0);
  }

  return std::unique_ptr<-[AURemoteHost getParameter:sequenceNumber:reply:]::$_4>::~unique_ptr[abi:ne200100](&v6);
}

- (void)parametersForOverviewWithCount:(int64_t)a3 reply:(id)a4
{
  v6 = a4;
  v9 = v6;
  if (!self->_replyWatchdogFactory.mDebugging)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3321888768;
    aBlock[2] = ___ZN5caulk3xpc22reply_watchdog_factory18reply_with_timeoutIJU8__strongP7NSErrorU8__strongP7NSArrayIP8NSNumberEEEEU13block_pointerFvDpT_ESF_i_block_invoke;
    aBlock[3] = &__block_descriptor_48_ea8_32c154_ZTSKZN5caulk3xpc22reply_watchdog_factory18reply_with_timeoutIJU8__strongP7NSErrorU8__strongP7NSArrayIP8NSNumberEEEEU13block_pointerFvDpT_ESF_iEUlS4_SA_E__e29_v24__0__NSError_8__NSArray_16l;
    caulk::xpc::reply_watchdog_factory::make_timer(&self->_replyWatchdogFactory);
    v11 = _Block_copy(v6);
    v13 = v10;
    v14 = _Block_copy(v11);
    v9 = _Block_copy(aBlock);

    v7 = v13;
    v13 = 0;
  }

  v8 = [(AUAudioUnit *)self->_audioUnit parametersForOverviewWithCount:a3];
  v9[2](v9, 0, v8);
}

- (void)getParameterTree:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (!self->_replyWatchdogFactory.mDebugging)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3321888768;
    aBlock[2] = ___ZN5caulk3xpc22reply_watchdog_factory18reply_with_timeoutIJU8__strongP7NSErrorU8__strongP15AUParameterTreeEEEU13block_pointerFvDpT_ESC_i_block_invoke;
    aBlock[3] = &__block_descriptor_48_ea8_32c151_ZTSKZN5caulk3xpc22reply_watchdog_factory18reply_with_timeoutIJU8__strongP7NSErrorU8__strongP15AUParameterTreeEEEU13block_pointerFvDpT_ESC_iEUlS4_S7_E__e37_v24__0__NSError_8__AUParameterTree_16l;
    caulk::xpc::reply_watchdog_factory::make_timer(&self->_replyWatchdogFactory);
    v9 = _Block_copy(v4);
    v11 = v8;
    v12 = _Block_copy(v9);
    v7 = _Block_copy(aBlock);

    v5 = v11;
    v11 = 0;
  }

  v6 = [(AURemoteHost *)self currentParameterTree];
  v7[2](v7, 0, v6);
}

- (id)currentParameterTree
{
  v3 = [(AUAudioUnit *)self->_audioUnit parameterTree];
  cachedParameterTree = self->_cachedParameterTree;
  if (v3 != cachedParameterTree)
  {
    objc_storeStrong(&self->_cachedParameterTree, v3);
    [(AUParameterTree *)v3 setRemoteParameterSynchronizerXPCConnection:self->_remoteHostXPCConnection];
    cachedParameterTree = self->_cachedParameterTree;
  }

  v5 = cachedParameterTree;

  return cachedParameterTree;
}

- (void)setBusCount:(unint64_t)a3 scope:(unsigned int)a4 reply:(id)a5
{
  v8 = a5;
  v9 = caulk::xpc::reply_watchdog_factory::reply_with_timeout<NSError * {__strong},NSArray * {__strong}>(&self->_replyWatchdogFactory, v8);

  PropertyNotificationDeferrer::PropertyNotificationDeferrer(v16, self);
  if (a4 == 2)
  {
    v10 = [(AUAudioUnit *)self->_audioUnit outputBusses];
    v14 = 0;
    v11 = &v14;
    [v10 setBusCount:a3 error:&v14];
  }

  else
  {
    if (a4 != 1)
    {
      v12 = 0;
      goto LABEL_7;
    }

    v10 = [(AUAudioUnit *)self->_audioUnit inputBusses];
    v15 = 0;
    v11 = &v15;
    [v10 setBusCount:a3 error:&v15];
  }

  v12 = *v11;

LABEL_7:
  v13 = PropertyNotificationDeferrer::changedProperties(v16);
  (v9)[2](v9, v12, v13);

  PropertyNotificationDeferrer::~PropertyNotificationDeferrer(v16);
}

- (void)removePropertyObserver:(id)a3 context:(unint64_t)a4 reply:(id)a5
{
  v7 = a3;
  v8 = a5;
  if (*(v7 + 20))
  {
    v11 = 0;
    v9 = [AURemoteHost _getBus:"_getBus:scope:error:" scope:? error:?];
    v10 = v11;
    if (v9)
    {
      KVOAggregator::removeObserver(&self->_kvoAggregator, &self->super, v9, *(v7 + 1));
    }
  }

  else
  {
    KVOAggregator::removeObserver(&self->_kvoAggregator, &self->super, &self->_audioUnit->super, *(v7 + 1));
  }

  v8[2](v8, 0);
}

- (void)addPropertyObserver:(id)a3 context:(unint64_t)a4 reply:(id)a5
{
  v7 = a3;
  v8 = a5;
  if (*(v7 + 20))
  {
    v11 = 0;
    v9 = [AURemoteHost _getBus:"_getBus:scope:error:" scope:? error:?];
    v10 = v11;
    if (v9)
    {
      KVOAggregator::addObserver(&self->_kvoAggregator, &self->super, v9, *(v7 + 1));
    }
  }

  else
  {
    KVOAggregator::addObserver(&self->_kvoAggregator, &self->super, &self->_audioUnit->super, *(v7 + 1));
  }

  v8[2](v8, 0);
}

- (void)setValue:(id)a3 forProperty:(id)a4 propagateError:(BOOL)a5 reply:(id)a6
{
  v7 = a5;
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = caulk::xpc::reply_watchdog_factory::reply_with_timeout<NSError * {__strong},NSArray * {__strong}>(&self->_replyWatchdogFactory, v12);

  PropertyNotificationDeferrer::PropertyNotificationDeferrer(v20, self);
  if (*(v11 + 20))
  {
    v17 = [AURemoteHost _getBus:"_getBus:scope:error:" scope:? error:?];
    v16 = 0;
    if (v17)
    {
      [v17 setValue:v10 forKey:v11[1]];
    }
  }

  else
  {
    audioUnit = self->_audioUnit;
    v15 = v11[1];
    if (v7)
    {
      v19 = 0;
      [(AUAudioUnit *)audioUnit _setValue:v10 forKey:v15 error:&v19];
      v16 = v19;
    }

    else
    {
      v16 = 0;
      [(AUAudioUnit *)audioUnit setValue:v10 forKey:v15];
    }
  }

  v18 = PropertyNotificationDeferrer::changedProperties(v20);
  (v13)[2](v13, v16, v18);

  PropertyNotificationDeferrer::~PropertyNotificationDeferrer(v20);
}

- (void)valueForProperty:(id)a3 propagateError:(BOOL)a4 reply:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  v10 = caulk::xpc::reply_watchdog_factory::reply_with_timeout<NSError * {__strong},objc_object * {__strong}>(&self->_replyWatchdogFactory, v9);

  if (v6)
  {
    audioUnit = self->_audioUnit;
    v18 = 0;
    v12 = [(AUAudioUnit *)audioUnit _valueForProperty:v8 error:&v18];
    v13 = v18;
    v14 = v12;
  }

  else if (*(v8 + 20))
  {
    v17 = 0;
    v15 = [AURemoteHost _getBus:"_getBus:scope:error:" scope:? error:?];
    v16 = v17;
    if (v15)
    {
      v14 = [v15 valueForKey:v8[1]];
    }

    else
    {
      v14 = 0;
    }

    v13 = 0;
  }

  else
  {
    v13 = 0;
    v14 = [(AUAudioUnit *)self->_audioUnit valueForKey:v8[1]];
  }

  (v10)[2](v10, v13, v14);
}

- (void)setValue:(id)a3 forKey:(id)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = caulk::xpc::reply_watchdog_factory::reply_with_timeout<NSError * {__strong},NSArray * {__strong}>(&self->_replyWatchdogFactory, v10);

  PropertyNotificationDeferrer::PropertyNotificationDeferrer(v13, self);
  [(AUAudioUnit *)self->_audioUnit setValue:v8 forKey:v9];
  v12 = PropertyNotificationDeferrer::changedProperties(v13);
  (v11)[2](v11, 0, v12);

  PropertyNotificationDeferrer::~PropertyNotificationDeferrer(v13);
}

- (void)valueForKey:(id)a3 reply:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = caulk::xpc::reply_watchdog_factory::reply_with_timeout<NSError * {__strong},objc_object * {__strong}>(&self->_replyWatchdogFactory, v6);

  v8 = [(AUAudioUnit *)self->_audioUnit valueForKey:v9];
  (v7)[2](v7, 0, v8);
}

- (void)reset:(id)a3
{
  v4 = a3;
  [(AUAudioUnit *)self->_audioUnit reset];
  v4[2](v4, 0);
}

- (void)uninitialize:(id)a3
{
  v4 = a3;
  v7 = caulk::xpc::reply_watchdog_factory::reply_with_timeout<NSError * {__strong}>(&self->_replyWatchdogFactory, v4);

  [(AUAudioUnit *)self->_audioUnit deallocateRenderResources];
  v5 = v7;
  if (self->_renderServerUser.__engaged_)
  {
    AUOOPRenderingServerUser::~AUOOPRenderingServerUser(&self->_renderServerUser);
    v5 = v7;
    self->_renderServerUser.__engaged_ = 0;
  }

  initializationVoucher = self->_initializationVoucher;
  if (initializationVoucher)
  {
    self->_initializationVoucher = 0;

    maintainWakeMonitor(0);
    v5 = v7;
  }

  if (v5)
  {
    (v5)[2](v7, 0);
    v5 = v7;
  }
}

- (void)destroyRenderPipe:(unsigned int)a3 reply:(id)a4
{
  v5 = a4;
  v7 = caulk::xpc::reply_watchdog_factory::reply_with_timeout<NSError * {__strong}>(&self->_replyWatchdogFactory, v5);

  v6 = BaseOpaqueObject::ResolveOpaqueRef();
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7[2](v7, 0);
}

- (void)createRenderPipe:(int)a3 formats:(id)a4 maxFrames:(unsigned int)a5 midiOutSizeHint:(unsigned int)a6 resources:(id)a7 reply:(id)a8
{
  v28 = *MEMORY[0x1E69E9840];
  v22 = a4;
  v21 = a7;
  v11 = a8;
  if (!self->_replyWatchdogFactory.mDebugging)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3321888768;
    aBlock[2] = ___ZN5caulk3xpc22reply_watchdog_factory18reply_with_timeoutIJU8__strongP7NSErrorjEEEU13block_pointerFvDpT_ES9_i_block_invoke;
    aBlock[3] = &__block_descriptor_48_ea8_32c122_ZTSKZN5caulk3xpc22reply_watchdog_factory18reply_with_timeoutIJU8__strongP7NSErrorjEEEU13block_pointerFvDpT_ES9_iEUlS4_jE__e20_v20__0__NSError_8I16l;
    caulk::xpc::reply_watchdog_factory::make_timer(&self->_replyWatchdogFactory);
    v24 = _Block_copy(v11);
    v26 = v23;
    v27 = _Block_copy(v24);
    _Block_copy(aBlock);

    v12 = v26;
    v26 = 0;
  }

  [v22 bytes];
  v13 = [v22 length];
  if (v13)
  {
    v14 = 0xCCCCCCCCCCCCCCCDLL * (v13 >> 3);
    if (v14 < 0x666666666666667)
    {
      std::allocator<AudioStreamBasicDescription>::allocate_at_least[abi:ne200100](v14);
    }

    std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
  }

  v15 = [(AUAudioUnit *)self->_audioUnit inputBusses];
  [v15 count];

  v16 = [(AUAudioUnit *)self->_audioUnit outputBusses];
  [v16 count];

  v17 = v21;
  v18 = v17;
  if (!v17)
  {
    v18 = xpc_null_create();
  }

  v19 = v18;
  v20 = v19;
  if (!v19 || object_getClass(v19) != MEMORY[0x1E69E9E80])
  {
    xpc_null_create();
  }

  operator new();
}

- (void)updateWorkgroupMirror:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  ptr = self->_workgroupMirror.__ptr_;
  v9 = v6;
  v10 = v9;
  if (!v9)
  {
    v10 = xpc_null_create();
  }

  v11 = v10;
  v12 = v11;
  v14 = v11;
  if (!v11 || object_getClass(v11) != MEMORY[0x1E69E9E80])
  {
    v14 = xpc_null_create();
  }

  auoop::WorkgroupMirror::update(ptr, &v14);
  v13 = v14;
  v14 = 0;

  v7[2](v7, 0);
}

- (void)updateHostCallbacks:(unint64_t)a3 reply:(id)a4
{
  v4 = a3;
  v6 = a4;
  if (self->_renderServerUser.__engaged_)
  {
    AUOOPRenderingServerUser::updateHostCallbacks(&self->_renderServerUser, v4);
  }

  v6[2](v6, 0);
}

- (void)initialize:(unint64_t)a3 reply:(id)a4
{
  v4 = a3;
  v6 = a4;
  v40 = v6;
  if (!self->_replyWatchdogFactory.mDebugging)
  {
    aBlock = MEMORY[0x1E69E9820];
    v46 = 3321888768;
    v47 = ___ZN5caulk3xpc22reply_watchdog_factory18reply_with_timeoutIJU8__strongP7NSErrormmmU8__strongP6NSDatabjEEEU13block_pointerFvDpT_ESC_i_block_invoke;
    v48 = &__block_descriptor_48_ea8_32c151_ZTSKZN5caulk3xpc22reply_watchdog_factory18reply_with_timeoutIJU8__strongP7NSErrormmmU8__strongP6NSDatabjEEEU13block_pointerFvDpT_ESC_iEUlS4_mmmS7_bjE__e43_v56__0__NSError_8Q16Q24Q32__NSData_40B48I52l;
    caulk::xpc::reply_watchdog_factory::make_timer(&self->_replyWatchdogFactory);
    v52 = _Block_copy(v6);
    p_renderServerUser = v51;
    v50 = _Block_copy(v52);
    v40 = _Block_copy(&aBlock);

    v7 = p_renderServerUser;
    p_renderServerUser = 0;

    v8 = v51;
    v51 = 0;
  }

  PropertyNotificationDeferrer::PropertyNotificationDeferrer(v44, self);
  if (self->_renderServerUser.__engaged_)
  {
    AUOOPRenderingServerUser::~AUOOPRenderingServerUser(&self->_renderServerUser);
    self->_renderServerUser.__engaged_ = 0;
  }

  v39 = self->_audioUnit;
  BaseOpaqueObject::BaseOpaqueObject(&self->_renderServerUser);
  self->_renderServerUser.var0.__val_.mRetainedRenderBlock = 0;
  self->_renderServerUser.var0.__val_._vptr$CAPrint = &unk_1F0336398;
  self->_renderServerUser.var0.__val_.mAUAudioUnit = v39;
  self->_renderServerUser.var0.__val_.mRenderBlock = 0;
  v9 = v39;
  if (![(AUAudioUnit *)v9 canProcessInPlace])
  {
    goto LABEL_11;
  }

  v10 = [(AUAudioUnit *)v9 inputBusses];
  v11 = [v10 count];
  v12 = [(AUAudioUnit *)v9 outputBusses];
  v13 = [v12 count];

  if (v11 == v13)
  {
    v14 = 0;
    while (1)
    {
      v15 = [(AUAudioUnit *)v9 inputBusses];
      v16 = [v15 count];

      v17 = v16 > v14;
      v18 = v16 <= v14;
      if (!v17)
      {
        break;
      }

      v19 = [(AUAudioUnit *)v9 inputBusses];
      v20 = [v19 objectAtIndexedSubscript:v14];
      v21 = [v20 format];

      v22 = [(AUAudioUnit *)v9 outputBusses];
      v23 = [v22 objectAtIndexedSubscript:v14];
      v24 = [v23 format];

      LOBYTE(v23) = [v21 isEqual:v24];
      ++v14;
      if ((v23 & 1) == 0)
      {
        goto LABEL_11;
      }
    }
  }

  else
  {
LABEL_11:
    v18 = 0;
  }

  self->_renderServerUser.var0.__val_.mCanProcessInPlace = v18;
  objc_opt_class();
  self->_renderServerUser.var0.__val_.mIsV2AudioUnit = objc_opt_isKindOfClass() & 1;
  self->_renderServerUser.var0.__val_.mMIDIOutBaseSampleTime = 0;
  self->_renderServerUser.var0.__val_.mEventSchedule = [(AUAudioUnit *)v9 eventSchedule];
  self->_renderServerUser.var0.__val_.mSharedBuffers = 0;
  self->_renderServerUser.var0.__val_.mRenderThreadId.var0.__null_state_ = 0;
  self->_renderServerUser.var0.__val_.mRenderThreadId.__engaged_ = 0;
  AUOOPRenderingServerUser::updateHostCallbacks(&self->_renderServerUser, v4);
  if ((v4 & 4) != 0)
  {
    aBlock = MEMORY[0x1E69E9820];
    v46 = 3221225472;
    v47 = ___ZN24AUOOPRenderingServerUserC2EP11AUAudioUnitm_block_invoke;
    v48 = &__block_descriptor_40_e18_i36__0q8C16q20r_28l;
    p_renderServerUser = &self->_renderServerUser;
    [self->_renderServerUser.var0.__val_.mAUAudioUnit setMIDIOutputEventBlock:&aBlock];
  }

  else
  {
    [self->_renderServerUser.var0.__val_.mAUAudioUnit setMIDIOutputEventBlock:0];
  }

  if ((v4 & 8) != 0)
  {
    v51 = MEMORY[0x1E69E9820];
    v52 = 3221225472;
    v53 = ___ZN24AUOOPRenderingServerUserC2EP11AUAudioUnitm_block_invoke_2;
    v54 = &__block_descriptor_40_e61_i28__0q8C16r__MIDIEventList_iI_1_MIDIEventPacket_QI_64I____20l;
    v55 = &self->_renderServerUser;
    [self->_renderServerUser.var0.__val_.mAUAudioUnit setMIDIOutputEventListBlock:&v51];
  }

  else
  {
    [self->_renderServerUser.var0.__val_.mAUAudioUnit setMIDIOutputEventListBlock:0];
  }

  v25 = [self->_renderServerUser.var0.__val_.mAUAudioUnit internalRenderBlock];
  mRetainedRenderBlock = self->_renderServerUser.var0.__val_.mRetainedRenderBlock;
  self->_renderServerUser.var0.__val_.mRetainedRenderBlock = v25;

  self->_renderServerUser.var0.__val_.mRenderBlock = self->_renderServerUser.var0.__val_.mRetainedRenderBlock;
  self->_renderServerUser.__engaged_ = 1;
  audioUnit = self->_audioUnit;
  v43 = 0;
  [(AUAudioUnit *)audioUnit allocateRenderResourcesAndReturnError:&v43];
  v28 = v43;
  v51 = 0;
  v42 = 0;
  if (v28)
  {
    v29 = 0;
    v30 = 0;
    v31 = 0;
    v32 = 0;
  }

  else
  {
    LODWORD(v31) = [(AUAudioUnit *)self->_audioUnit maximumFramesToRender];
    v33 = [(AUAudioUnit *)self->_audioUnit inputBusses];
    v51 = [v33 count];

    v34 = [(AUAudioUnit *)self->_audioUnit outputBusses];
    v42 = [v34 count];

    aBlock = 0;
    v46 = 0;
    v47 = 0;
    p_aBlock = &aBlock;
    v35 = [(AUAudioUnit *)self->_audioUnit inputBusses];
    [AURemoteHost initialize:reply:]::$_2::operator()(&p_aBlock, v35, &v51);

    v36 = [(AUAudioUnit *)self->_audioUnit outputBusses];
    [AURemoteHost initialize:reply:]::$_2::operator()(&p_aBlock, v36, &v42);

    v32 = [MEMORY[0x1E695DEF0] dataWithBytes:aBlock length:v46 - aBlock];
    v37 = voucher_copy();
    initializationVoucher = self->_initializationVoucher;
    self->_initializationVoucher = v37;

    maintainWakeMonitor(1);
    v31 = v31;
    if (aBlock)
    {
      v46 = aBlock;
      operator delete(aBlock);
    }

    v30 = v51;
    v29 = v42;
  }

  v40[2](v40, v28, v31, v30, v29, v32, [(AUAudioUnit *)self->_audioUnit canProcessInPlace], self->_renderServerUser.var0.__val_.mSerialNum);

  PropertyNotificationDeferrer::~PropertyNotificationDeferrer(v44);
}

- (void)initialize:reply:
{
  v35 = *MEMORY[0x1E69E9840];
  v5 = a2;
  *a3 = [v5 count];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = v5;
  v6 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v6)
  {
    v7 = *v31;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v31 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v30 + 1) + 8 * i);
        v10 = [v9 format];
        v11 = v10;
        v29 = 0;
        v27 = 0u;
        v28 = 0u;
        if (v10)
        {
          v12 = [v10 streamDescription];
          v27 = *v12;
          v28 = *(v12 + 16);
          v29 = *(v12 + 32);
        }

        v13 = *a1;
        v14 = *(*a1 + 8);
        v15 = *(*a1 + 16);
        if (v14 >= v15)
        {
          v17 = 0xCCCCCCCCCCCCCCCDLL * ((v14 - *v13) >> 3);
          v18 = v17 + 1;
          if (v17 + 1 > 0x666666666666666)
          {
            std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
          }

          v19 = 0xCCCCCCCCCCCCCCCDLL * ((v15 - *v13) >> 3);
          if (2 * v19 > v18)
          {
            v18 = 2 * v19;
          }

          if (v19 >= 0x333333333333333)
          {
            v20 = 0x666666666666666;
          }

          else
          {
            v20 = v18;
          }

          if (v20)
          {
            std::allocator<AudioStreamBasicDescription>::allocate_at_least[abi:ne200100](v20);
          }

          v21 = 40 * v17;
          *v21 = v27;
          *(v21 + 16) = v28;
          *(v21 + 32) = v29;
          v16 = 40 * v17 + 40;
          v22 = *(v13 + 8) - *v13;
          v23 = 40 * v17 - v22;
          memcpy((v21 - v22), *v13, v22);
          v24 = *v13;
          *v13 = v23;
          *(v13 + 8) = v16;
          *(v13 + 16) = 0;
          if (v24)
          {
            operator delete(v24);
          }
        }

        else
        {
          *v14 = v27;
          *(v14 + 16) = v28;
          *(v14 + 32) = v29;
          v16 = v14 + 40;
        }

        *(v13 + 8) = v16;
      }

      v6 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v6);
  }

  v25 = *MEMORY[0x1E69E9840];
}

- (void)getBusses:(unsigned int)a3 reply:(id)a4
{
  v6 = a4;
  v10 = caulk::xpc::reply_watchdog_factory::reply_with_timeout<NSError * {__strong},NSArray * {__strong}>(&self->_replyWatchdogFactory, v6);

  audioUnit = self->_audioUnit;
  if (a3 == 1)
  {
    [(AUAudioUnit *)audioUnit inputBusses];
  }

  else
  {
    [(AUAudioUnit *)audioUnit outputBusses];
  }
  v8 = ;
  v9 = MarshalBusArray(v8, a3);
  v10[2](v10, 0, v9);
}

- (void)open:(AudioComponentDescription *)a3 instanceUUID:(id)a4 reply:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = v9;
  if (!self->_replyWatchdogFactory.mDebugging)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3321888768;
    aBlock[2] = ___ZN5caulk3xpc22reply_watchdog_factory18reply_with_timeoutIJU8__strongP7NSErrorbbU8__strongP7NSArrayS8_bbimmEEEU13block_pointerFvDpT_ESC_i_block_invoke;
    aBlock[3] = &__block_descriptor_48_ea8_32c162_ZTSKZN5caulk3xpc22reply_watchdog_factory18reply_with_timeoutIJU8__strongP7NSErrorbbU8__strongP7NSArrayS8_bbimmEEEU13block_pointerFvDpT_ESC_iEUlS4_bbS7_S7_bbimmE__e62_v68__0__NSError_8B16B20__NSArray_24__NSArray_32B40B44i48Q52Q60l;
    caulk::xpc::reply_watchdog_factory::make_timer(&self->_replyWatchdogFactory);
    v23 = _Block_copy(v9);
    v25 = v22;
    v26 = _Block_copy(v23);
    v10 = _Block_copy(aBlock);

    v11 = v25;
    v25 = 0;

    v12 = v22;
    v22 = 0;
  }

  v13 = [(AURemoteHost *)self audioUnitUUID];
  if ([v13 isEqual:v8])
  {
    audioUnit = self->_audioUnit;

    if (audioUnit)
    {
      [(AURemoteHost *)self openImpl:self->_audioUnit reply:v10];
      goto LABEL_13;
    }
  }

  else
  {
  }

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __40__AURemoteHost_open_instanceUUID_reply___block_invoke;
  v18[3] = &unk_1E72BA8F0;
  v20 = *&a3->componentType;
  componentFlagsMask = a3->componentFlagsMask;
  v18[4] = self;
  v19 = v10;
  v15 = _Block_copy(v18);
  v16 = [(NSXPCConnection *)self->_remoteHostXPCConnection processIdentifier];
  if (v16 == getpid())
  {
    v15[2](v15);
  }

  else
  {
    v17 = [MEMORY[0x1E696B0B8] currentConnection];

    if (v17)
    {
      [MEMORY[0x1E696B0B8] _handoffCurrentReplyToQueue:MEMORY[0x1E69E96A0] block:v15];
    }

    else
    {
      dispatch_async(MEMORY[0x1E69E96A0], v15);
    }
  }

LABEL_13:
}

void __40__AURemoteHost_open_instanceUUID_reply___block_invoke(uint64_t a1)
{
  v5 = *(a1 + 48);
  v6 = *(a1 + 64);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __40__AURemoteHost_open_instanceUUID_reply___block_invoke_2;
  v3[3] = &unk_1E72BA8C8;
  v2 = *(a1 + 40);
  v3[4] = *(a1 + 32);
  v4 = v2;
  [AUAudioUnit instantiateWithComponentDescription:&v5 options:2147483650 completionHandler:v3];
}

void __40__AURemoteHost_open_instanceUUID_reply___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  if (!v8 || v5)
  {
    v6 = *(a1 + 40);
    v7 = getpid();
    (*(v6 + 16))(v6, v5, 0, 0, 0, 0, 0, 0, v7, 0, 0);
  }

  else
  {
    [*(a1 + 32) openImpl:v8 reply:*(a1 + 40)];
  }
}

- (void)openImpl:(id)a3 reply:(id)a4
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = a3;
  a4;
  objc_storeStrong(&self->_audioUnit, a3);
  [v7 setLoadedOutOfProcess];
  getpid();
  operator new();
}

- (void)setBlocks
{
  objc_initWeak(&location, self->_remoteHostXPCConnection);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __25__AURemoteHost_setBlocks__block_invoke;
  v6[3] = &unk_1E72BA878;
  objc_copyWeak(&v7, &location);
  [(AUAudioUnit *)self->_audioUnit setProfileChangedBlock:v6];
  v3 = [(AURemoteHost *)self _getSpeechSynthesisProviderAudioUnit];
  if (v3)
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __25__AURemoteHost_setBlocks__block_invoke_3;
    v4[3] = &unk_1E72BA8A0;
    objc_copyWeak(&v5, &location);
    [v3 setSpeechSynthesisOutputMetadataBlock:v4];
    objc_destroyWeak(&v5);
  }

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __25__AURemoteHost_setBlocks__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v15[4] = *MEMORY[0x1E69E9840];
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v13[0] = &unk_1F033F978;
  v13[1] = &__block_literal_global_22;
  v13[3] = v13;
  caulk::xpc::message<objc_object  {objcproto23AUAudioUnitHostProtocol}* {__strong}>::message(&v14, WeakRetained, v13);
  _ZNSt3__110__function12__value_funcIFvP7NSErrorONS_5tupleIJEEEEED2B8ne200100Ev(v13);

  v11 = caulk::xpc::message<objc_object  {objcproto23AUAudioUnitHostProtocol}* {__strong}>::async_proxy(&v14);
  [v11 MIDICIProfileChanged:a2 channel:a3 profile:v9 enabled:a5];

  _ZNSt3__110__function12__value_funcIFvP7NSErrorONS_5tupleIJEEEEED2B8ne200100Ev(v15);
  v12 = *MEMORY[0x1E69E9840];
}

void __25__AURemoteHost_setBlocks__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v12[4] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v10[0] = &unk_1F033F978;
  v10[1] = &__block_literal_global_25;
  v10[3] = v10;
  caulk::xpc::message<objc_object  {objcproto23AUAudioUnitHostProtocol}* {__strong}>::message(&v11, WeakRetained, v10);
  _ZNSt3__110__function12__value_funcIFvP7NSErrorONS_5tupleIJEEEEED2B8ne200100Ev(v10);

  v8 = caulk::xpc::message<objc_object  {objcproto23AUAudioUnitHostProtocol}* {__strong}>::async_proxy(&v11);
  [v8 speechSynthesisMetadataAvailable:v5 speechRequest:v6];

  _ZNSt3__110__function12__value_funcIFvP7NSErrorONS_5tupleIJEEEEED2B8ne200100Ev(v12);
  v9 = *MEMORY[0x1E69E9840];
}

- (void)dealloc
{
  ptr = self->_transactorIO.__ptr_;
  if (ptr)
  {
    XOSTransactor::endTransaction(ptr);
  }

  presetFolderWatcher = self->_presetFolderWatcher;
  if (presetFolderWatcher)
  {
    dispatch_source_cancel(presetFolderWatcher);
    v5 = self->_presetFolderWatcher;
    self->_presetFolderWatcher = 0;

    presetMonitoringQueue = self->_presetMonitoringQueue;
    self->_presetMonitoringQueue = 0;
  }

  v7 = [AUAudioUnitProperty propertyWithKey:@"inputBusses"];
  [(AURemoteHost *)self removePropertyObserver:v7 context:self reply:&__block_literal_global_12];

  v8 = [AUAudioUnitProperty propertyWithKey:@"outputBusses"];
  [(AURemoteHost *)self removePropertyObserver:v8 context:self reply:&__block_literal_global_17];

  if (self->_renderServerUser.__engaged_)
  {
    AUOOPRenderingServerUser::~AUOOPRenderingServerUser(&self->_renderServerUser);
    self->_renderServerUser.__engaged_ = 0;
  }

  KVOAggregator::removeAllObservations(&self->_kvoAggregator, &self->super);
  begin = self->_remoteMessageChannels.__begin_;
  var0 = self->_remoteMessageChannels.var0;
  if (begin != var0)
  {
    do
    {
      v11 = *begin;
      [(__end_ *)v11 retainSelfIfRequired];

      ++begin;
    }

    while (begin != var0);
    begin = self->_remoteMessageChannels.__begin_;
    var0 = self->_remoteMessageChannels.var0;
  }

  while (var0 != begin)
  {
    v12 = *--var0;
  }

  self->_remoteMessageChannels.var0 = begin;
  v13.receiver = self;
  v13.super_class = AURemoteHost;
  [(AURemoteHost *)&v13 dealloc];
}

- (void)close:(id)a3
{
  v4 = a3;
  v8 = caulk::xpc::reply_watchdog_factory::reply_with_timeout<NSError * {__strong}>(&self->_replyWatchdogFactory, v4);

  KVOAggregator::removeAllObservations(&self->_kvoAggregator, &self->super);
  [(AUAudioUnit *)self->_audioUnit setProfileChangedBlock:0];
  v5 = [(AURemoteHost *)self _getSpeechSynthesisProviderAudioUnit];
  v6 = v5;
  if (v5)
  {
    [v5 setSpeechSynthesisOutputMetadataBlock:0];
  }

  remoteHostXPCConnection = self->_remoteHostXPCConnection;
  self->_remoteHostXPCConnection = 0;

  v8[2](v8, 0);
}

- (id)_getSpeechSynthesisProviderAudioUnit
{
  if ([(AUAudioUnit *)self->_audioUnit isSpeechSynthesisProvider])
  {
    audioUnit = self->_audioUnit;
  }

  else
  {
    audioUnit = 0;
  }

  return audioUnit;
}

- (AURemoteHost)initWithConnection:(id)a3 config:(id)a4
{
  v7[4] = *MEMORY[0x1E69E9840];
  v7[0] = &unk_1F0326C78;
  v7[3] = v7;
  v4 = [(AURemoteHost *)self initWithConnection:a3 config:a4 timeOutHandler:v7];
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v7);
  v5 = *MEMORY[0x1E69E9840];
  return v4;
}

- (AURemoteHost)initWithConnection:(id)a3 config:(id)a4 timeOutHandler:(function<void)(
{
  v25 = *MEMORY[0x1E69E9840];
  v8 = a3;
  +[AURemoteHost _staticInit];
  v23.receiver = self;
  v23.super_class = AURemoteHost;
  v9 = [(AURemoteHost *)&v23 init];
  if (v9)
  {
    v10 = dispatch_queue_create("AUExtension.propertyObserver", 0);
    propertyObserverQueue = v9->_propertyObserverQueue;
    v9->_propertyObserverQueue = v10;

    v12 = objc_opt_new();
    pendingChangedProperties = v9->_pendingChangedProperties;
    v9->_pendingChangedProperties = v12;

    objc_storeStrong(&v9->_remoteHostXPCConnection, a3);
    v14 = objc_opt_new();
    audioUnitUUID = v9->_audioUnitUUID;
    v9->_audioUnitUUID = v14;

    {
      if (v22)
      {
        ServiceProcessGlobals::ServiceProcessGlobals(v22);
      }
    }

    v16 = ServiceProcessGlobals::instance(void)::global;
    v17 = ServiceProcessGlobals::instance(void)::global;
    if (ServiceProcessGlobals::instance(void)::global)
    {
      atomic_fetch_add_explicit((ServiceProcessGlobals::instance(void)::global + 8), 1uLL, memory_order_relaxed);
    }

    cntrl = v9->_workgroupMirror.__cntrl_;
    v9->_workgroupMirror.__ptr_ = v16;
    v9->_workgroupMirror.__cntrl_ = v17;
    if (cntrl)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](cntrl);
    }

    std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](v24, a5);
    caulk::xpc::reply_watchdog_factory::init2();
    std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v24);
    v19 = v9;
  }

  v20 = *MEMORY[0x1E69E9840];
  return v9;
}

- (BOOL)_identifyBus:(id)a3 scope:(unsigned int *)a4 element:(unsigned int *)a5
{
  v35 = *MEMORY[0x1E69E9840];
  v8 = a3;
  audioUnit = self->_audioUnit;
  if (audioUnit == v8)
  {
    *a4 = 0;
    *a5 = 0;
LABEL_22:
    v22 = 1;
  }

  else
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v10 = [(AUAudioUnit *)audioUnit inputBusses];
    v11 = [v10 countByEnumeratingWithState:&v29 objects:v34 count:16];
    if (v11)
    {
      v12 = 0;
      v13 = *v30;
      while (2)
      {
        v14 = 0;
        v15 = v12;
        v12 += v11;
        do
        {
          if (*v30 != v13)
          {
            objc_enumerationMutation(v10);
          }

          if (*(*(&v29 + 1) + 8 * v14) == v8)
          {
            *a4 = 1;
            *a5 = v15;

            goto LABEL_22;
          }

          ++v15;
          ++v14;
        }

        while (v11 != v14);
        v11 = [v10 countByEnumeratingWithState:&v29 objects:v34 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v16 = [(AUAudioUnit *)self->_audioUnit outputBusses];
    v17 = [v16 countByEnumeratingWithState:&v25 objects:v33 count:16];
    if (v17)
    {
      v18 = 0;
      v19 = *v26;
      while (2)
      {
        v20 = 0;
        v21 = v18;
        v18 += v17;
        do
        {
          if (*v26 != v19)
          {
            objc_enumerationMutation(v16);
          }

          if (*(*(&v25 + 1) + 8 * v20) == v8)
          {
            *a4 = 1;
            *a5 = v21;

            goto LABEL_22;
          }

          ++v21;
          ++v20;
        }

        while (v17 != v20);
        v17 = [v16 countByEnumeratingWithState:&v25 objects:v33 count:16];
        if (v17)
        {
          continue;
        }

        break;
      }
    }

    v22 = 0;
  }

  v23 = *MEMORY[0x1E69E9840];
  return v22;
}

- (id)_getBus:(unsigned int)a3 scope:(unsigned int)a4 error:(id *)a5
{
  if (a4 == 2)
  {
    v7 = [(AUAudioUnit *)self->_audioUnit outputBusses];
LABEL_5:
    v8 = v7;
    if ([v7 count] > a3)
    {
      v9 = [v8 objectAtIndexedSubscript:?];
      goto LABEL_13;
    }

    if (a5)
    {
      v10 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-10877 userInfo:0];
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  if (a4 == 1)
  {
    v7 = [(AUAudioUnit *)self->_audioUnit inputBusses];
    goto LABEL_5;
  }

  v8 = 0;
  if (a5)
  {
    v10 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-10866 userInfo:0];
LABEL_11:
    v9 = 0;
    *a5 = v10;
    goto LABEL_13;
  }

LABEL_12:
  v9 = 0;
LABEL_13:

  return v9;
}

+ (void)_staticInit
{
  if (+[AURemoteHost _staticInit]::once[0] != -1)
  {
    dispatch_once(+[AURemoteHost _staticInit]::once, &__block_literal_global_1766);
  }
}

void __27__AURemoteHost__staticInit__block_invoke()
{
  if (initInterAppAudioLogging::once != -1)
  {
    dispatch_once(&initInterAppAudioLogging::once, &__block_literal_global_13285);
  }
}

@end