@interface AUAudioUnit
+ (BOOL)_deleteUserPreset:(id)a3 error:(id *)a4;
+ (BOOL)_saveUserPreset:(id)a3 state:(id)a4 error:(id *)a5;
+ (id)__presetFromPath:(id)a3;
+ (id)__sanitizeFileName:(id)a3;
+ (id)__userPresetPath:(id)a3 error:(id *)a4;
+ (id)_monitorUserPresets:(id)a3 callback:(id)a4;
+ (id)_presetStateFor:(id)a3 error:(id *)a4;
+ (id)auAudioUnitForAudioUnit:(OpaqueAudioComponentInstance *)a3;
+ (void)__sanitizePresetNumber:(id)a3;
+ (void)_loadUserPresets:(id)a3 error:(id *)a4;
+ (void)registerSubclass:(Class)cls asComponentDescription:(AudioComponentDescription *)componentDescription name:(NSString *)name version:(UInt32)version;
- ($115C4C562B26FF47E01F9F4EA65B5887)remoteProcessAuditToken;
- (AUAudioUnit)init;
- (AUAudioUnit)initWithComponentDescription:(AudioComponentDescription *)componentDescription options:(AudioComponentInstantiationOptions)options error:(NSError *)outError;
- (AUMIDIEventListBlock)MIDIOutputEventListBlock;
- (AUMIDIEventListBlock)scheduleMIDIEventListBlock;
- (AUMIDIOutputEventBlock)MIDIOutputEventBlock;
- (AURenderBlock)renderBlock;
- (AUScheduleMIDIEventBlock)scheduleMIDIEventBlock;
- (AUScheduleParameterBlock)scheduleParameterBlock;
- (AudioComponent)component;
- (BOOL)allocateRenderResourcesAndReturnError:(NSError *)outError;
- (BOOL)deleteUserPreset:(AUAudioUnitPreset *)userPreset error:(NSError *)outError;
- (BOOL)disableProfile:(MIDICIProfile *)profile cable:(uint8_t)cable onChannel:(MIDIChannelNumber)channel error:(NSError *)outError;
- (BOOL)enableProfile:(MIDICIProfile *)profile cable:(uint8_t)cable onChannel:(MIDIChannelNumber)channel error:(NSError *)outError;
- (BOOL)isMusicDeviceOrEffect;
- (BOOL)isSpeechSynthesisProvider;
- (BOOL)saveUserPreset:(AUAudioUnitPreset *)userPreset error:(NSError *)outError;
- (NSArray)userPresets;
- (NSDictionary)fullState;
- (NSDictionary)presetStateFor:(AUAudioUnitPreset *)userPreset error:(NSError *)outError;
- (NSIndexSet)supportedViewConfigurations:(NSArray *)availableViewConfigurations;
- (NSInteger)tokenByAddingRenderObserver:(AURenderObserver)observer;
- (NSString)audioUnitName;
- (NSString)componentName;
- (NSString)manufacturerName;
- (id).cxx_construct;
- (id)_valueForProperty:(id)a3 error:(id *)a4;
- (uint32_t)componentVersion;
- (void)addRenderObserver:(void *)a3 userData:(void *)a4;
- (void)dealloc;
- (void)deallocateRenderResources;
- (void)deliverV2Parameters:(const AURenderEvent *)next;
- (void)flushEventSchedule;
- (void)internalDeallocateRenderResources;
- (void)invalidateAudioUnit;
- (void)removeRenderObserver:(NSInteger)token;
- (void)removeRenderObserver:(void *)a3 userData:(void *)a4;
- (void)resolveComponent;
- (void)scheduledParameterRefresher;
- (void)setCachedViewController:(id)a3;
- (void)setFullState:(NSDictionary *)fullState;
- (void)setMIDIOutputEventBlock:(AUMIDIOutputEventBlock)MIDIOutputEventBlock;
- (void)setMIDIOutputEventListBlock:(AUMIDIEventListBlock)MIDIOutputEventListBlock;
- (void)setMaximumFramesToRender:(AUAudioFrameCount)maximumFramesToRender;
- (void)setV2Parameter:(unint64_t)a3 value:(float)a4 bufferOffset:(unsigned int)a5 sequenceNumber:(unsigned int)a6;
- (void)setupMIDIConversion;
- (void)startUserPresetFolderMonitoring;
@end

@implementation AUAudioUnit

+ (id)_monitorUserPresets:(id)a3 callback:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if (!v5)
  {
    __assert_rtn("+[AUAudioUnit(PresetHandling) _monitorUserPresets:callback:]", "AUAudioUnitPresetHandling.mm", 177, "presetMonitoringQueue");
  }

  v7 = [AUAudioUnit __userPresetPath:0 error:0];
  v8 = open([v7 fileSystemRepresentation], 0x8000);
  v9 = v8;
  if ((v8 & 0x80000000) == 0)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __60__AUAudioUnit_PresetHandling___monitorUserPresets_callback___block_invoke;
    aBlock[3] = &__block_descriptor_36_e5_v8__0l;
    v18 = v8;
    v10 = _Block_copy(aBlock);
    v11 = dispatch_source_create(MEMORY[0x1E69E9728], v9, 2uLL, v5);
    if (v11)
    {
LABEL_19:
      dispatch_source_set_event_handler(v11, v6);
      dispatch_source_set_cancel_handler(v11, v10);
      dispatch_resume(v11);
      goto LABEL_20;
    }

    if (kAUExtensionScope)
    {
      v12 = *kAUExtensionScope;
      if (!v12)
      {
LABEL_18:
        (v10[2].isa)(v10);
        goto LABEL_19;
      }
    }

    else
    {
      v12 = MEMORY[0x1E69E9C10];
      v14 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v20 = "AUAudioUnitPresetHandling.mm";
      v21 = 1024;
      v22 = 191;
      v23 = 2112;
      v24 = v7;
      _os_log_impl(&dword_18F5DF000, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d Error: Could not create dispatch source to monitor folder: %@", buf, 0x1Cu);
    }

    goto LABEL_18;
  }

  if (kAUExtensionScope)
  {
    v10 = *kAUExtensionScope;
    if (!v10)
    {
      v11 = 0;
      goto LABEL_21;
    }
  }

  else
  {
    v10 = MEMORY[0x1E69E9C10];
    v13 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v20 = "AUAudioUnitPresetHandling.mm";
    v21 = 1024;
    v22 = 181;
    v23 = 2112;
    v24 = v7;
    _os_log_impl(&dword_18F5DF000, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d Error: Could not open preset folder: %@", buf, 0x1Cu);
  }

  v11 = 0;
LABEL_20:

LABEL_21:
  v15 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (void)_loadUserPresets:(id)a3 error:(id *)a4
{
  v5 = a3;
  if (a4)
  {
    v6 = [AUAudioUnit __userPresetPath:0 error:a4];
    v7 = [MEMORY[0x1E696AC08] defaultManager];
    v8 = [v7 contentsOfDirectoryAtPath:v6 error:a4];

    if (!*a4)
    {
      v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"SELF ENDSWITH '.aupreset'"];
      v10 = [v8 filteredArrayUsingPredicate:v9];

      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __54__AUAudioUnit_PresetHandling___loadUserPresets_error___block_invoke;
      v15[3] = &unk_1E72B9F30;
      v11 = v6;
      v16 = v11;
      v8 = [v10 sortedArrayUsingComparator:v15];

      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __54__AUAudioUnit_PresetHandling___loadUserPresets_error___block_invoke_2;
      v12[3] = &unk_1E72B9F58;
      v13 = v11;
      v14 = v5;
      [v8 enumerateObjectsUsingBlock:v12];
    }
  }
}

uint64_t __54__AUAudioUnit_PresetHandling___loadUserPresets_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [MEMORY[0x1E696AC08] defaultManager];
  v8 = [*(a1 + 32) stringByAppendingPathComponent:v5];
  v22 = 0;
  v9 = [v7 attributesOfItemAtPath:v8 error:&v22];
  v10 = v22;

  v11 = [MEMORY[0x1E696AC08] defaultManager];
  v12 = [*(a1 + 32) stringByAppendingPathComponent:v6];
  v21 = v10;
  v13 = [v11 attributesOfItemAtPath:v12 error:&v21];
  v14 = v21;

  if (v14)
  {
    v15 = -1;
  }

  else
  {
    v16 = *MEMORY[0x1E696A308];
    v17 = [v9 objectForKey:*MEMORY[0x1E696A308]];
    v18 = [v13 objectForKey:v16];
    v19 = [v17 compare:v18];

    if (v19 == 1)
    {
      v15 = -1;
    }

    else
    {
      v15 = 1;
    }
  }

  return v15;
}

void __54__AUAudioUnit_PresetHandling___loadUserPresets_error___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) stringByAppendingPathComponent:a2];
  v4 = [AUAudioUnit __presetFromPath:v3];

  if (v4)
  {
    [*(a1 + 40) addObject:v4];
  }
}

+ (id)_presetStateFor:(id)a3 error:(id *)a4
{
  v5 = a3;
  if (a4)
  {
    v6 = [AUAudioUnit __userPresetPath:v5 error:a4];
    v7 = MEMORY[0x1E695DFD8];
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = [v7 setWithObjects:{v8, v9, v10, v11, v12, objc_opt_class(), 0}];
    v14 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:v6 options:0 error:a4];
    if (*a4)
    {
      a4 = 0;
    }

    else
    {
      a4 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClasses:v13 fromData:v14 error:a4];
    }
  }

  return a4;
}

+ (BOOL)_deleteUserPreset:(id)a3 error:(id *)a4
{
  v13[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a4)
  {
    v6 = [AUAudioUnit __userPresetPath:v5 error:a4];
    if (v6)
    {
      v7 = [MEMORY[0x1E696AC08] defaultManager];
      LOBYTE(a4) = [v7 removeItemAtPath:v6 error:a4];
    }

    else
    {
      v8 = MEMORY[0x1E696ABC0];
      v12 = *MEMORY[0x1E696A578];
      v13[0] = @"Illegal file name for user preset!";
      v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
      *a4 = [v8 errorWithDomain:*MEMORY[0x1E696A768] code:-66742 userInfo:v9];

      LOBYTE(a4) = 0;
    }
  }

  v10 = *MEMORY[0x1E69E9840];
  return a4;
}

+ (BOOL)_saveUserPreset:(id)a3 state:(id)a4 error:(id *)a5
{
  v28[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (a5)
  {
    v10 = [v8 mutableCopy];
    v11 = [v10 allKeys];
    v12 = [MEMORY[0x1E695DFD8] setWithArray:&unk_1F034DE60];
    v13 = [MEMORY[0x1E695DFD8] setWithArray:v11];
    v14 = [v12 isSubsetOfSet:v13];

    if (v14)
    {
      v15 = [AUAudioUnit __userPresetPath:v7 error:a5];
      if (v15)
      {
        v16 = [v7 name];
        [v10 setObject:v16 forKeyedSubscript:@"name"];

        v17 = [MEMORY[0x1E696AD98] numberWithLong:{objc_msgSend(v7, "number")}];
        [v10 setObject:v17 forKeyedSubscript:@"preset-number"];

        v18 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v10 requiringSecureCoding:1 error:a5];
        [v18 writeToFile:v15 options:1 error:a5];

        v19 = *a5 == 0;
      }

      else
      {
        v21 = MEMORY[0x1E696ABC0];
        v25 = *MEMORY[0x1E696A578];
        v26 = @"Illegal file name for user preset!";
        v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
        *a5 = [v21 errorWithDomain:*MEMORY[0x1E696A768] code:-66742 userInfo:v22];

        v15 = 0;
        v19 = 0;
      }
    }

    else
    {
      v20 = MEMORY[0x1E696ABC0];
      v27 = *MEMORY[0x1E696A578];
      v28[0] = @"Missing key in preset state map!";
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:&v27 count:1];
      [v20 errorWithDomain:*MEMORY[0x1E696A768] code:-66741 userInfo:v15];
      *a5 = v19 = 0;
    }
  }

  else
  {
    v19 = 0;
  }

  v23 = *MEMORY[0x1E69E9840];
  return v19;
}

+ (id)__userPresetPath:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, 1uLL, 1);
  v7 = [v6 objectAtIndex:0];
  v8 = [v7 stringByAppendingPathComponent:@"/AUPresets"];
  v9 = [MEMORY[0x1E696AC08] defaultManager];
  v10 = [v9 fileExistsAtPath:v8];

  if (v10 & 1) != 0 || (([MEMORY[0x1E696AC08] defaultManager], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "createDirectoryAtPath:withIntermediateDirectories:attributes:error:", v8, 0, 0, a4), v11, !a4) ? (v13 = v12) : (v13 = 0), (v13))
  {
    if (v5)
    {
      v14 = [v5 name];
      v15 = [AUAudioUnit __sanitizeFileName:v14];

      if (v15 && [v15 length])
      {
        [AUAudioUnit __sanitizePresetNumber:v5];
        v16 = MEMORY[0x1E696AEC0];
        if ([v5 number] < 0)
        {
          v17 = -[v5 number];
        }

        else
        {
          v17 = [v5 number];
        }

        v18 = [v16 stringWithFormat:@"%@/%@_%ld.aupreset", v8, v15, v17];
      }

      else
      {
        v18 = 0;
      }

      v19 = v8;
      v8 = v18;
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v19 = v8;
    v8 = 0;
  }

  return v8;
}

+ (void)__sanitizePresetNumber:(id)a3
{
  v4 = a3;
  if ([v4 number])
  {
    if ([v4 number] < 1)
    {
      goto LABEL_6;
    }

    v3 = -[v4 number];
  }

  else
  {
    v3 = -1;
  }

  [v4 setNumber:v3];
LABEL_6:
}

+ (id)__sanitizeFileName:(id)a3
{
  v3 = a3;
  if ([v3 length] <= 0x50)
  {
    v5 = [MEMORY[0x1E696AB08] newlineCharacterSet];
    v6 = [v5 mutableCopy];

    v7 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"/\\""];
    [v6 formUnionWithCharacterSet:v7];

    v8 = [MEMORY[0x1E696AB08] illegalCharacterSet];
    [v6 formUnionWithCharacterSet:v8];

    v9 = [MEMORY[0x1E696AB08] controlCharacterSet];
    [v6 formUnionWithCharacterSet:v9];

    if ([v3 rangeOfCharacterFromSet:v6] == 0x7FFFFFFFFFFFFFFFLL)
    {
      v10 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
      [v6 formUnionWithCharacterSet:v10];

      v11 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"|$()<>{}.#'"];
      [v6 formUnionWithCharacterSet:v11];

      v12 = [v6 invertedSet];
      v4 = [v3 stringByAddingPercentEncodingWithAllowedCharacters:v12];
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)__presetFromPath:(id)a3
{
  v3 = a3;
  v4 = [v3 pathExtension];
  if (([v4 isEqualToString:@"aupreset"] & 1) == 0)
  {
    __assert_rtn("+[AUAudioUnit(PresetHandling) __presetFromPath:]", "AUAudioUnitPresetHandling.mm", 14, "[[pathString pathExtension] isEqualToString:@aupreset]");
  }

  v5 = [v3 lastPathComponent];
  v6 = [v5 stringByDeletingPathExtension];

  v7 = [v6 componentsSeparatedByString:@"_"];
  v8 = [v7 mutableCopy];

  if ([v8 count] <= 1)
  {
    __assert_rtn("+[AUAudioUnit(PresetHandling) __presetFromPath:]", "AUAudioUnitPresetHandling.mm", 18, "chunks.count > 1");
  }

  v9 = [v8 lastObject];
  [v8 removeObjectAtIndex:{objc_msgSend(v8, "count") - 1}];
  v10 = [v8 componentsJoinedByString:@"_"];
  v11 = [v10 stringByRemovingPercentEncoding];

  v12 = objc_opt_new();
  [v12 setName:v11];
  [v12 setNumber:{-objc_msgSend(v9, "intValue")}];

  return v12;
}

float __32__AUAudioUnit_XPC_parameterTree__block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  caulk::xpc::sync_message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong},float>::sync_message(&v11, WeakRetained);

  v5 = caulk::xpc::message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong},float>::sync_proxy(&v11);
  v6 = [v3 address];
  v7 = caulk::xpc::message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong},float>::reply(&v11);
  [v5 getParameter:v6 sequenceNumber:0 reply:v7];

  v8 = v13;
  std::__function::__value_func<void ()(NSError *,std::tuple<float> &&)>::~__value_func[abi:ne200100](v12);

  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

id __32__AUAudioUnit_XPC_parameterTree__block_invoke_2(uint64_t a1, void *a2, int *a3)
{
  v16[6] = *MEMORY[0x1E69E9840];
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  caulk::xpc::sync_message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong},NSString * {__strong}>::sync_message(&v15, WeakRetained);

  v7 = caulk::xpc::message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong},NSString * {__strong}>::sync_proxy(&v15);
  if (a3)
  {
    v8 = *a3;
  }

  else
  {
    v8 = 0;
  }

  v9 = [v5 address];
  v10 = caulk::xpc::message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong},NSString * {__strong}>::reply(&v15);
  LODWORD(v11) = v8;
  [v7 parameterStringFromValue:a3 == 0 currentValue:v9 address:v10 reply:v11];

  v12 = v16[5];
  std::__function::__value_func<void ()(NSError *,std::tuple<NSString * {__strong}> &&)>::~__value_func[abi:ne200100](v16);

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

float __32__AUAudioUnit_XPC_parameterTree__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  caulk::xpc::sync_message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong},float>::sync_message(&v14, WeakRetained);

  v8 = caulk::xpc::message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong},float>::sync_proxy(&v14);
  v9 = [v5 address];
  v10 = caulk::xpc::message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong},float>::reply(&v14);
  [v8 parameterValueFromString:v6 address:v9 reply:v10];

  v11 = v16;
  std::__function::__value_func<void ()(NSError *,std::tuple<float> &&)>::~__value_func[abi:ne200100](v15);

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

id __32__AUAudioUnit_XPC_parameterTree__block_invoke_4(uint64_t a1, void *a2, uint64_t a3)
{
  v14[6] = *MEMORY[0x1E69E9840];
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  caulk::xpc::sync_message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong},NSString * {__strong}>::sync_message(&v13, WeakRetained);

  v7 = caulk::xpc::message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong},NSString * {__strong}>::sync_proxy(&v13);
  v8 = [v5 keyPath];
  v9 = caulk::xpc::message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong},NSString * {__strong}>::reply(&v13);
  [v7 parameterNode:v8 displayNameWithLength:a3 reply:v9];

  v10 = v14[5];
  std::__function::__value_func<void ()(NSError *,std::tuple<NSString * {__strong}> &&)>::~__value_func[abi:ne200100](v14);

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

uint64_t __38__AUAudioUnit_XPC_internalRenderBlock__block_invoke(uint64_t a1, int *a2, const AudioTimeStamp *a3, uint64_t a4, unsigned int a5, AudioBufferList *a6, AURenderEventAllocator *a7, uint64_t a8)
{
  v8 = *(a1 + 32);
  if (*(v8 + 72) != 1)
  {
    return 4294956429;
  }

  v15 = *(a1 + 40);
  v16 = audioipc::current_render_context(a1);
  v97 = v16;
  v96 = *v8;
  v17 = auoop::PipeSubPool::acquirePipeSlot(*v8, &v97, 1);
  v18 = v17;
  if (v19)
  {
    if (!v17)
    {
      v90 = CAAssertRtn();
      caulk::pooled_semaphore_mutex::_unlock((v93 + 160));
      __clang_call_terminate(v90);
    }

    v20 = *(v17 + 8);
    if (*v20 != 1)
    {
      v23 = 4294956429;
LABEL_15:
      atomic_store(0, v18);
      caulk::semaphore::signal((v96 + 100));
      return v23;
    }

    v21 = atomic_load((v20 + 2));
    if (v21)
    {
      mNumberBuffers = a6->mNumberBuffers;
      v23 = 4294900547;
      if (mNumberBuffers)
      {
        v24 = 0;
        p_mData = &a6->mBuffers[0].mData;
        do
        {
          if (*p_mData)
          {
            bzero(*p_mData, *(p_mData - 1));
            mNumberBuffers = a6->mNumberBuffers;
          }

          ++v24;
          p_mData += 2;
        }

        while (v24 < mNumberBuffers);
      }

      goto LABEL_15;
    }

    if (*(v20 + 220) <= a5)
    {
      v23 = 4294956419;
      goto LABEL_15;
    }

    v27 = *(v20 + 80);
    v28 = *(v8 + 56);
    *(v27 + 4108) = v28;
    *(v27 + 4112) = v16;
    v29 = *a2;
    if ((*a2 & 0x8000) != 0)
    {
      v30 = 300.0;
      if ((*(v8 + 60) & 1) == 0)
      {
        v30 = 3.0;
      }

      if (*(v20 + 1))
      {
        v30 = 0.0;
      }

      *(v27 + 4 * *(v20 + 216) + 4316) = v29;
      v31 = *&a3->mSampleTime;
      v32 = *&a3->mRateScalar;
      v33 = *&a3->mSMPTETime.mHours;
      *(v27 + 4200) = *&a3->mSMPTETime.mSubframes;
      *(v27 + 4216) = v33;
      *(v27 + 4168) = v31;
      *(v27 + 4184) = v32;
      *(v27 + 4312) = a4;
      AUOOPRenderingClient::copyEventsToSharedMemory(v20, a7, v30, 1);
      v23 = 0;
      goto LABEL_15;
    }

    v92 = v27;
    if (*(v20 + 224) < a4)
    {
      v23 = 4294956422;
      goto LABEL_15;
    }

    v94 = v20;
    if (a3->mSampleTime == *(v20 + 232) && v28 == *(v20 + 240))
    {
      v34 = 0;
LABEL_30:
      AUOOPRenderingClient::copySharedOutput(v94, a5, a6, a4, v34 & 1);
      AUOOPRenderingClient::readMidiOut(*(v94 + 11), (v8 + 8));
      AUOOPRenderingClient::readMidiEventListOut(*(v94 + 12), (v8 + 8));
      v23 = 0;
      *a2 = *(v92 + 4 * (*(v94 + 54) + a5) + 4316);
      goto LABEL_15;
    }

    *(v20 + 208) = a8;
    v35 = a5;
    v36 = v20;
    if (v15)
    {
      caulk::pooled_semaphore_mutex::_lock((v20 + 164));
      *(v36 + 232) = a3->mSampleTime;
      *(v36 + 240) = *(v8 + 56);
      if (*(v36 + 216))
      {
        v37 = 0;
        v38 = 0;
        do
        {
          v37 |= AUOOPRenderingClient::pullOneInput(v36, v38++, a3, a4) == 0;
          v39 = *(v36 + 216);
        }

        while (v38 < v39);
        if (!((v39 == 0) | v37 & 1) && *(v8 + 61) != 1)
        {
          caulk::pooled_semaphore_mutex::_unlock((v36 + 164));
          v23 = 4294956420;
          goto LABEL_15;
        }
      }

      caulk::pooled_semaphore_mutex::_unlock((v36 + 164));
      v29 = *a2;
      v35 = -1;
    }

    *(v92 + 4 * (*(v36 + 216) + a5) + 4316) = v29;
    caulk::pooled_semaphore_mutex::_lock((v36 + 160));
    if (*v36 != 1)
    {
      v23 = 4294956421;
      goto LABEL_42;
    }

    v40 = v36;
    v91 = v35;
    v23 = 4294900551;
    v41 = *(v40 + 80);
    if (*(v41 + 4304))
    {
      v23 = 4294900549;
LABEL_42:
      caulk::pooled_semaphore_mutex::_unlock((v94 + 160));
      goto LABEL_15;
    }

    *(v41 + 4248) = 0;
    v42 = *(v8 + 24);
    if (v42)
    {
      v98.mSampleTime = 4.0;
      v101[0] = 0;
      v100 = 0;
      if (!(*(v42 + 16))(v42, v41 + 4240, &v98, v101, v41 + 4232, &v100, v41 + 4264))
      {
        goto LABEL_53;
      }

      mSampleTime = v98.mSampleTime;
      *(v41 + 4256) = mSampleTime;
      *(v41 + 4260) = v101[0];
      *(v41 + 4252) = v100;
      v44 = *(v41 + 4248) | 0x300;
    }

    else
    {
      v45 = v94;
      v46 = *(v94 + 22);
      if (v46)
      {
        v47 = v46(*(v94 + 21), v41 + 4232, v41 + 4240);
        v45 = v94;
        if (!v47)
        {
          *(v41 + 4248) |= 0x100u;
        }
      }

      v48 = *(v45 + 23);
      if (!v48 || v48(*(v94 + 21), v41 + 4252, v41 + 4256, v41 + 4260, v41 + 4264))
      {
LABEL_53:
        v49 = *(v8 + 32);
        if (v49)
        {
          v98.mSampleTime = 0.0;
          if (!(*(v49 + 16))(v49, &v98, v41 + 4272, v41 + 4280, v41 + 4288))
          {
            goto LABEL_73;
          }

          v50 = *(v41 + 4248) | LOBYTE(v98.mSampleTime) & 0xF | 0x400;
          goto LABEL_72;
        }

        LOBYTE(v98.mSampleTime) = 0;
        LOBYTE(v101[0]) = 0;
        LOBYTE(v100) = 0;
        v99 = 0;
        v51 = v94;
        v52 = *(v94 + 25);
        if (v52 && (v53 = v52(*(v94 + 21), &v98, v101, &v100, v41 + 4272, &v99, v41 + 4280, v41 + 4288), v51 = v94, !v53))
        {
          v57 = *(v41 + 4248);
          v56 = v57 | 0x400;
          *(v41 + 4248) = v57 | 0x400;
          if (LOBYTE(v98.mSampleTime))
          {
            v56 = v57 | 0x402;
            *(v41 + 4248) = v57 | 0x402;
          }

          if (LOBYTE(v101[0]))
          {
            v56 |= 4u;
            goto LABEL_67;
          }
        }

        else
        {
          v54 = *(v51 + 24);
          if (!v54 || v54(*(v94 + 21), &v98, &v100, v41 + 4272, &v99, v41 + 4280, v41 + 4288))
          {
            goto LABEL_73;
          }

          v55 = *(v41 + 4248);
          v56 = v55 | 0x400;
          *(v41 + 4248) = v55 | 0x400;
          if (LOBYTE(v98.mSampleTime))
          {
            v56 = v55 | 0x402;
LABEL_67:
            *(v41 + 4248) = v56;
          }
        }

        if (v100)
        {
          v56 |= 1u;
          *(v41 + 4248) = v56;
        }

        if (v99)
        {
          v50 = v56 | 8;
LABEL_72:
          *(v41 + 4248) = v50;
        }

LABEL_73:
        *(v41 + 4296) = mach_absolute_time();
        v58 = *&a3->mSampleTime;
        v59 = *&a3->mRateScalar;
        v60 = *&a3->mSMPTETime.mHours;
        *(v41 + 4200) = *&a3->mSMPTETime.mSubframes;
        *(v41 + 4216) = v60;
        *(v41 + 4168) = v58;
        *(v41 + 4184) = v59;
        *(v41 + 4312) = a4;
        v61 = 300.0;
        if ((*(v8 + 60) & 1) == 0)
        {
          v61 = 3.0;
        }

        if (*(v94 + 1))
        {
          v62 = 0.0;
        }

        else
        {
          v62 = v61;
        }

        AUOOPRenderingClient::copyEventsToSharedMemory(v94, a7, v62, 0);
        if ((v91 & 0x80000000) == 0)
        {
          kdebug_trace();
          v63 = *(v94 + 10);
          can_send = audioipc::ipc_node_base<(audioipc::ipcnode_options)0,audioipc::eventlink_primitive,caulk::ipc::mapped_memory>::can_send(v94 + 8, v64);
          v66 = HIDWORD(can_send);
          if (can_send & 0x100000000) != 0 && (can_send)
          {
            *(v63 + 4104) = 2;
            *(v63 + 4120) = v91;
            if (v62 <= 0.0)
            {
              can_send = audioipc::ipc_node_base<(audioipc::ipcnode_options)0,audioipc::eventlink_primitive,caulk::ipc::mapped_memory>::signal_wait(v94 + 8);
            }

            else
            {
              can_send = audioipc::ipc_node_base<(audioipc::ipcnode_options)0,audioipc::eventlink_primitive,caulk::ipc::mapped_memory>::signal_wait_with_timeout(v94 + 8, v62);
            }

            v66 = HIDWORD(can_send);
          }

          if (can_send)
          {
            v71 = v63 + 4104;
          }

          else
          {
            v71 = 0;
          }

          if ((v66 & 1) == 0 || (can_send & 1) == 0)
          {
            v77 = _os_log_pack_size();
            message = caulk::deferred_logger::create_message(gCADefaultDeferredLog, v77 + 88, 2);
            if (message)
            {
              v79 = message;
              v80 = _os_log_pack_fill();
              *v80 = 67109120;
              v80[1] = -66745;
              caulk::concurrent::messenger::enqueue(*(gCADefaultDeferredLog + 16), v79);
            }

            kdebug_trace();
            goto LABEL_42;
          }

          kdebug_trace();
          while (1)
          {
            v72 = *(v71 + 1);
            if (v72 != 102)
            {
              break;
            }

            *&v98.mFlags = 0;
            memset(&v98.mWordClockTime, 0, 32);
            v98.mSampleTime = *(v71 + 32);
            v98.mHostTime = *(v71 + 40);
            v98.mRateScalar = *(v71 + 48);
            v98.mFlags = *(v71 + 56);
            AUOOPRenderingClient::pullOneInput(v94, *(v71 + 24), &v98, *(v71 + 28));
            v73 = *(v94 + 10);
            v75 = audioipc::ipc_node_base<(audioipc::ipcnode_options)0,audioipc::eventlink_primitive,caulk::ipc::mapped_memory>::can_send(v94 + 8, v74);
            v76 = HIDWORD(v75);
            if (v75 & 0x100000000) != 0 && (v75)
            {
              *(v73 + 4104) = 3;
              if (v62 <= 0.0)
              {
                v75 = audioipc::ipc_node_base<(audioipc::ipcnode_options)0,audioipc::eventlink_primitive,caulk::ipc::mapped_memory>::signal_wait(v94 + 8);
              }

              else
              {
                v75 = audioipc::ipc_node_base<(audioipc::ipcnode_options)0,audioipc::eventlink_primitive,caulk::ipc::mapped_memory>::signal_wait_with_timeout(v94 + 8, v62);
              }

              v76 = HIDWORD(v75);
            }

            if (!v76 || (v75 & 1) == 0)
            {
              goto LABEL_42;
            }
          }

          if (v72 != 101)
          {
            v87 = _os_log_pack_size();
            v88 = caulk::deferred_logger::create_message(gCADefaultDeferredLog, v87 + 88, 2);
            if (v88)
            {
              v89 = v88;
              *_os_log_pack_fill() = 0;
              caulk::concurrent::messenger::enqueue(*(gCADefaultDeferredLog + 16), v89);
            }

            v34 = 0;
            v81 = 4294967246;
            goto LABEL_126;
          }

          v34 = 0;
          v81 = *(v71 + 20);
LABEL_121:
          if (v81 == -66745)
          {
            goto LABEL_42;
          }

LABEL_126:
          *(*(v94 + 10) + 4) = 0;
          caulk::pooled_semaphore_mutex::_unlock((v94 + 160));
          v23 = v81;
          if (v81)
          {
            goto LABEL_15;
          }

          goto LABEL_30;
        }

        kdebug_trace();
        v67 = *(v94 + 10);
        v69 = audioipc::ipc_node_base<(audioipc::ipcnode_options)0,audioipc::eventlink_primitive,caulk::ipc::mapped_memory>::can_send(v94 + 8, v68);
        v70 = HIDWORD(v69);
        if (v69 & 0x100000000) != 0 && (v69)
        {
          *(v67 + 4104) = 1;
          if (v62 <= 0.0)
          {
            v69 = audioipc::ipc_node_base<(audioipc::ipcnode_options)0,audioipc::eventlink_primitive,caulk::ipc::mapped_memory>::signal_wait(v94 + 8);
          }

          else
          {
            v69 = audioipc::ipc_node_base<(audioipc::ipcnode_options)0,audioipc::eventlink_primitive,caulk::ipc::mapped_memory>::signal_wait_with_timeout(v94 + 8, v62);
          }

          v70 = HIDWORD(v69);
        }

        if (v70 && (v69 & 1) != 0)
        {
          v81 = *(v67 + 4124);
          v34 = *(v67 + 4106);
          if (!v81)
          {
LABEL_120:
            kdebug_trace();
            goto LABEL_121;
          }

          v82 = *(v67 + 4106);
        }

        else
        {
          v82 = 0;
          v81 = 4294900551;
        }

        v83 = _os_log_pack_size();
        v84 = caulk::deferred_logger::create_message(gCADefaultDeferredLog, v83 + 88, 2);
        if (v84)
        {
          v85 = v84;
          v86 = _os_log_pack_fill();
          *v86 = 67109120;
          v86[1] = v81;
          caulk::concurrent::messenger::enqueue(*(gCADefaultDeferredLog + 16), v85);
        }

        v34 = v82;
        goto LABEL_120;
      }

      v44 = *(v41 + 4248) | 0x200;
    }

    *(v41 + 4248) = v44;
    goto LABEL_53;
  }

  return v17;
}

void __45__AUAudioUnit_XPC__invalidatePipePoolAndUser__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained[107];
    if (v2)
    {
      v8 = WeakRetained;
      std::recursive_mutex::lock(v2);
      v3 = *(v2 + 80);
      for (i = *(v2 + 88); v3 != i; v3 += 8)
      {
        v5 = *(*v3 + 120);
        v6 = *(*v3 + 128);
        while (v5 != v6)
        {
          v7 = *(v5 + 8);
          if (v7)
          {
            atomic_store(1u, (v7 + 2));
            audioipc::rt_sender<(audioipc::ipcnode_options)0,audioipc::eventlink_primitive,caulk::ipc::mapped_memory>::stop(v7 + 8);
          }

          v5 += 32;
        }
      }

      std::recursive_mutex::unlock(v2);
      WeakRetained = v8;
    }
  }
}

- (id).cxx_construct
{
  self->_component.__ptr_ = 0;
  self->_component.__cntrl_ = 0;
  caulk::pooled_semaphore_mutex::pooled_semaphore_mutex(&self->_realtimeState);
  caulk::pooled_semaphore_mutex::pooled_semaphore_mutex((&self->_realtimeState.renderObserverList.mObservers.mActiveList.mHead + 4));
  self->_realtimeState.eventSchedule.mScheduledParameterRefresher = &self->_anon_f8[24];
  self->_realtimeState.renderObserverList.mObservers.mPendingList.mHead = 0;
  LOBYTE(self->_realtimeState.eventSchedule.mAUv2GetParameterSynchronizer) = 0;
  self->_realtimeState.renderObserverList.mObservers.mFreeList.mHead = 0;
  *&self->_realtimeState.renderObserverList.mTouched = 0;
  v3 = CADeprecated::TSingleton<AURenderEventAllocator>::instance();
  self->_realtimeState.eventSchedule.mScheduleHead = 0;
  LOBYTE(self->_realtimeState.auv2GetParameterSynchronizer.mSyncGetParamSema.mMachSem) = 0;
  *&self->_anon_f8[8] = 0;
  *&self->_anon_f8[16] = 0;
  *self->_realtimeState.eventSchedule.mAddedEventQueue.mDequeueHead.padding = 0;
  *&self->_realtimeState.eventSchedule.mAddedEventQueue.mDequeueHead.padding[8] = 0;
  self->_realtimeState.eventSchedule.mAddedEventQueue.mEnqueueHead.__a_.__a_value = v3;
  self->_realtimeState.contextChangeGenerator.var0 = 0u;
  *&self->_realtimeState.contextChangeGenerator.__engaged_ = 0u;
  MEMORY[0x193ADE7E0]();
  *&self->_anon_f8[24] = 0;
  caulk::semaphore::semaphore(&self->_anon_f8[32]);
  self->_anon_f8[48] = 0;
  self->_anon_f8[64] = 0;
  *&self->_anon_f8[72] = 0;
  return self;
}

- (BOOL)isSpeechSynthesisProvider
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2050000000;
  v2 = getAVSpeechSynthesisProviderAudioUnitClass(void)::softClass;
  v9 = getAVSpeechSynthesisProviderAudioUnitClass(void)::softClass;
  if (!getAVSpeechSynthesisProviderAudioUnitClass(void)::softClass)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = ___ZL42getAVSpeechSynthesisProviderAudioUnitClassv_block_invoke;
    v5[3] = &unk_1E72C2B68;
    v5[4] = &v6;
    ___ZL42getAVSpeechSynthesisProviderAudioUnitClassv_block_invoke(v5);
    v2 = v7[3];
  }

  v3 = v2;
  _Block_object_dispose(&v6, 8);
  return objc_opt_isKindOfClass() & 1;
}

- ($115C4C562B26FF47E01F9F4EA65B5887)remoteProcessAuditToken
{
  *retstr->var0 = 0u;
  *&retstr->var0[4] = 0u;
  return self;
}

- (NSArray)userPresets
{
  if ([(AUAudioUnit *)self supportsUserPresets])
  {
    userPresets = self->_userPresets;
    if (self->_isLoadedInProcess || userPresets)
    {
      v4 = userPresets;
    }

    else
    {
      v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v7 = self->_userPresets;
      self->_userPresets = v6;

      v8 = self->_userPresets;
      v10 = 0;
      [AUAudioUnit _loadUserPresets:v8 error:&v10];
      v9 = v10;
      [(AUAudioUnit *)self startUserPresetFolderMonitoring];
      v4 = self->_userPresets;
    }
  }

  else
  {
    v4 = MEMORY[0x1E695E0F0];
  }

  return v4;
}

- (void)startUserPresetFolderMonitoring
{
  v17 = *MEMORY[0x1E69E9840];
  if (!self->_presetFolderWatcher)
  {
    if (self->_presetMonitoringQueue)
    {
LABEL_5:
      objc_initWeak(location, self);
      presetMonitoringQueue = self->_presetMonitoringQueue;
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __46__AUAudioUnit_startUserPresetFolderMonitoring__block_invoke;
      v12[3] = &unk_1E72C2DF8;
      objc_copyWeak(&v13, location);
      v7 = [AUAudioUnit _monitorUserPresets:presetMonitoringQueue callback:v12];
      presetFolderWatcher = self->_presetFolderWatcher;
      self->_presetFolderWatcher = v7;

      objc_destroyWeak(&v13);
      objc_destroyWeak(location);
      goto LABEL_6;
    }

    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
    v4 = dispatch_queue_create("AUExtension.PresetMonitoring", v3);
    v5 = self->_presetMonitoringQueue;
    self->_presetMonitoringQueue = v4;

    if (self->_presetMonitoringQueue)
    {

      goto LABEL_5;
    }

    if (kAUExtensionScope)
    {
      v10 = *kAUExtensionScope;
      if (!v10)
      {
LABEL_14:

        goto LABEL_6;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E9C10];
      v11 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *location = 136315394;
      *&location[4] = "AUAudioUnit.mm";
      v15 = 1024;
      v16 = 1676;
      _os_log_impl(&dword_18F5DF000, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to create AUExtension.PresetMonitoring queue!", location, 0x12u);
    }

    goto LABEL_14;
  }

LABEL_6:
  v9 = *MEMORY[0x1E69E9840];
}

void __46__AUAudioUnit_startUserPresetFolderMonitoring__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v1 = WeakRetained[43];
    WeakRetained[43] = 0;

    [WeakRetained willChangeValueForKey:@"userPresets"];
    [WeakRetained didChangeValueForKey:@"userPresets"];
  }
}

- (BOOL)deleteUserPreset:(AUAudioUnitPreset *)userPreset error:(NSError *)outError
{
  v6 = userPreset;
  if ([(AUAudioUnit *)self supportsUserPresets])
  {
    if (self->_isLoadedInProcess)
    {
      LOBYTE(outError) = 1;
    }

    else
    {
      [(AUAudioUnit *)self startUserPresetFolderMonitoring];
      LOBYTE(outError) = [AUAudioUnit _deleteUserPreset:v6 error:outError];
    }
  }

  else if (outError)
  {
    v7 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-10850 userInfo:0];
    *outError = v7;

    LOBYTE(outError) = 0;
  }

  return outError;
}

- (NSDictionary)presetStateFor:(AUAudioUnitPreset *)userPreset error:(NSError *)outError
{
  v6 = userPreset;
  if ([(AUAudioUnit *)self supportsUserPresets])
  {
    if (!self->_isLoadedInProcess)
    {
      outError = [AUAudioUnit _presetStateFor:v6 error:outError];
      goto LABEL_7;
    }
  }

  else
  {
    if (!outError)
    {
      goto LABEL_7;
    }

    v7 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-10850 userInfo:0];
    *outError = v7;
  }

  outError = 0;
LABEL_7:

  return outError;
}

- (BOOL)saveUserPreset:(AUAudioUnitPreset *)userPreset error:(NSError *)outError
{
  v6 = userPreset;
  if (![(AUAudioUnit *)self supportsUserPresets])
  {
    if (!outError)
    {
      v7 = 0;
      goto LABEL_9;
    }

    v8 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-10850 userInfo:0];
    v7 = 0;
    *outError = v8;
    goto LABEL_7;
  }

  if (!self->_isLoadedInProcess)
  {
    [(AUAudioUnit *)self startUserPresetFolderMonitoring];
    v8 = [(AUAudioUnit *)self fullStateForDocument];
    v7 = [AUAudioUnit _saveUserPreset:v6 state:v8 error:outError];
LABEL_7:

    goto LABEL_9;
  }

  v7 = 1;
LABEL_9:

  return v7;
}

- (BOOL)disableProfile:(MIDICIProfile *)profile cable:(uint8_t)cable onChannel:(MIDIChannelNumber)channel error:(NSError *)outError
{
  if (outError)
  {
    v7 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-10850 userInfo:0];
    *outError = v7;
  }

  return 0;
}

- (BOOL)enableProfile:(MIDICIProfile *)profile cable:(uint8_t)cable onChannel:(MIDIChannelNumber)channel error:(NSError *)outError
{
  if (outError)
  {
    v7 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-10850 userInfo:0];
    *outError = v7;
  }

  return 0;
}

- (NSIndexSet)supportedViewConfigurations:(NSArray *)availableViewConfigurations
{
  v3 = [MEMORY[0x1E696AC90] indexSet];

  return v3;
}

- (id)_valueForProperty:(id)a3 error:(id *)a4
{
  v4 = [(AUAudioUnit *)self valueForKey:*(a3 + 1), a4];

  return v4;
}

- (void)setMaximumFramesToRender:(AUAudioFrameCount)maximumFramesToRender
{
  v10 = *MEMORY[0x1E69E9840];
  if (self->_renderResourcesAllocated)
  {
    if (kAUExtensionScope)
    {
      v3 = *kAUExtensionScope;
      if (!v3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v3 = MEMORY[0x1E69E9C10];
      v4 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v6 = 136315394;
      v7 = "AUAudioUnit.mm";
      v8 = 1024;
      v9 = 1425;
      _os_log_impl(&dword_18F5DF000, v3, OS_LOG_TYPE_ERROR, "%25s:%-5d Cannot set maximumFramesToRender while render resources allocated.", &v6, 0x12u);
    }
  }

  else
  {
    self->_maximumFramesToRender = maximumFramesToRender;
  }

LABEL_10:
  v5 = *MEMORY[0x1E69E9840];
}

- (AUMIDIEventListBlock)MIDIOutputEventListBlock
{
  v2 = _Block_copy(self->_MIDIOutputEventListBlock);

  return v2;
}

- (void)setMIDIOutputEventListBlock:(AUMIDIEventListBlock)MIDIOutputEventListBlock
{
  v4 = MIDIOutputEventListBlock;
  v13 = v4;
  if (self->_shouldUseMIDI2)
  {
    MIDIOutputEventListHostBlock = self->_MIDIOutputEventListHostBlock;
    if (MIDIOutputEventListHostBlock)
    {
      v6 = MIDIOutputEventListHostBlock == v4;
    }

    else
    {
      v6 = 1;
    }

    if (!v6)
    {
      self->_MIDIOutputEventListHostBlock = 0;

      v4 = v13;
    }

    v7 = [v4 copy];
    v8 = self->_MIDIOutputEventListHostBlock;
    self->_MIDIOutputEventListHostBlock = v7;

    [(AUAudioUnit *)self setupMIDIConversion];
  }

  else
  {
    v9 = self->_MIDIOutputEventListBlock;
    if (v9)
    {
      v10 = v9 == v4;
    }

    else
    {
      v10 = 1;
    }

    if (!v10)
    {
      self->_MIDIOutputEventListBlock = 0;

      v4 = v13;
    }

    v11 = [v4 copy];
    v12 = self->_MIDIOutputEventListBlock;
    self->_MIDIOutputEventListBlock = v11;
  }
}

- (AUMIDIOutputEventBlock)MIDIOutputEventBlock
{
  v2 = _Block_copy(self->_MIDIOutputEventBlock);

  return v2;
}

- (void)setMIDIOutputEventBlock:(AUMIDIOutputEventBlock)MIDIOutputEventBlock
{
  v4 = MIDIOutputEventBlock;
  v13 = v4;
  if (self->_shouldUseMIDI2)
  {
    MIDIOutputEventHostBlock = self->_MIDIOutputEventHostBlock;
    if (MIDIOutputEventHostBlock)
    {
      v6 = MIDIOutputEventHostBlock == v4;
    }

    else
    {
      v6 = 1;
    }

    if (!v6)
    {
      self->_MIDIOutputEventHostBlock = 0;

      v4 = v13;
    }

    v7 = [v4 copy];
    v8 = self->_MIDIOutputEventHostBlock;
    self->_MIDIOutputEventHostBlock = v7;

    [(AUAudioUnit *)self setupMIDIConversion];
  }

  else
  {
    v9 = self->_MIDIOutputEventBlock;
    if (v9)
    {
      v10 = v9 == v4;
    }

    else
    {
      v10 = 1;
    }

    if (!v10)
    {
      self->_MIDIOutputEventBlock = 0;

      v4 = v13;
    }

    v11 = [v4 copy];
    v12 = self->_MIDIOutputEventBlock;
    self->_MIDIOutputEventBlock = v11;
  }
}

- (void)setupMIDIConversion
{
  v3 = [(AUAudioUnit *)self hostMIDIProtocol];
  v4 = _Block_copy(self->_MIDIOutputEventHostBlock);
  v5 = _Block_copy(self->_MIDIOutputEventListHostBlock);
  MIDIOutputEventBlock = self->_MIDIOutputEventBlock;
  if (MIDIOutputEventBlock)
  {
    self->_MIDIOutputEventBlock = 0;
  }

  if (v3 == kMIDIProtocol_2_0)
  {
    if (v5)
    {
      operator new();
    }
  }

  else if (v3 == kMIDIProtocol_1_0)
  {
    if (v5)
    {
      operator new();
    }
  }

  else
  {
    if (v3)
    {
      v9 = self->_MIDIOutputEventBlock;
      self->_MIDIOutputEventBlock = &__block_literal_global_73;
    }

    else
    {
      if (!v4)
      {
        goto LABEL_14;
      }

      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __34__AUAudioUnit_setupMIDIConversion__block_invoke;
      aBlock[3] = &unk_1E72C1220;
      v17 = v4;
      v7 = _Block_copy(aBlock);
      v8 = self->_MIDIOutputEventBlock;
      self->_MIDIOutputEventBlock = v7;

      v9 = v17;
    }
  }

LABEL_14:
  MIDIOutputEventListBlock = self->_MIDIOutputEventListBlock;
  if (MIDIOutputEventListBlock)
  {
    self->_MIDIOutputEventListBlock = 0;
  }

  if ((v3 - 1) >= 2)
  {
    if (v3)
    {
      v13 = self->_MIDIOutputEventListBlock;
      self->_MIDIOutputEventListBlock = &__block_literal_global_77;
    }

    else
    {
      if (!v4)
      {
        goto LABEL_24;
      }

      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __34__AUAudioUnit_setupMIDIConversion__block_invoke_2_74;
      v14[3] = &unk_1E72C1268;
      v15 = v4;
      v11 = _Block_copy(v14);
      v12 = self->_MIDIOutputEventListBlock;
      self->_MIDIOutputEventListBlock = v11;

      v13 = v15;
    }

    goto LABEL_24;
  }

  if (v5)
  {
    operator new();
  }

LABEL_24:
}

uint64_t __34__AUAudioUnit_setupMIDIConversion__block_invoke_2(uint64_t a1, void *a2, char a3, unsigned int a4, uint64_t a5)
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0;
  v8 = a4;
  v9 = _Block_copy(*(a1 + 32));
  v13 = _ZN5caulk16inplace_functionIFvPKN4MIDI9EventListEELm48ELm8ENS_23inplace_function_detail9rt_vtableEE16k_wrapper_vtableIZZ34__AUAudioUnit_setupMIDIConversion_EUb3_E3__5EE;
  v14[0] = _Block_copy(v9);
  v14[1] = a2;
  v15 = a3;
  v16 = &v12;
  MIDI::LegacyMIDIConverter<MIDI::IdentityTranslator>::convertLegacyDataToEventList(a5, v8, 0, &v13);
  (v13[3])(v14);

  result = v12;
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __34__AUAudioUnit_setupMIDIConversion__block_invoke_70(uint64_t a1, void *a2, char a3, unsigned int a4, uint64_t a5)
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0;
  v8 = a4;
  v9 = *(a1 + 40);
  v10 = _Block_copy(*(a1 + 32));
  v14 = _ZN5caulk16inplace_functionIFvPKN4MIDI9EventListEELm48ELm8ENS_23inplace_function_detail9rt_vtableEE16k_wrapper_vtableIZZ34__AUAudioUnit_setupMIDIConversion_EUb4_E3__6EE;
  v15[0] = _Block_copy(v10);
  v15[1] = a2;
  v16 = a3;
  v17 = &v13;
  MIDI::LegacyMIDIConverter<MIDI::MIDI_1_to_2_Translator>::convertLegacyDataToEventList(v9, a5, v8, 0, &v14);
  (v14[3])(v15);

  result = v13;
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __34__AUAudioUnit_setupMIDIConversion__block_invoke_2_74(uint64_t a1, uint64_t a2, char a3, _DWORD *a4)
{
  v20[102] = *MEMORY[0x1E69E9840];
  v10 = 0;
  v7 = _Block_copy(*(a1 + 32));
  v11 = _ZN5caulk16inplace_functionIFvPKN4MIDI16LegacyPacketListEELm48ELm8ENS_23inplace_function_detail9rt_vtableEE16k_wrapper_vtableIZZ34__AUAudioUnit_setupMIDIConversion_EUb5_E3__7EE;
  *&v12 = &v10;
  BYTE8(v12) = a3;
  v13 = a2;
  v14 = _Block_copy(v7);
  v15 = _ZN5caulk16inplace_functionIFvPKN4MIDI16LegacyPacketListEELm48ELm8ENS_23inplace_function_detail9rt_vtableEE16k_wrapper_vtableIZZ34__AUAudioUnit_setupMIDIConversion_EUb5_E3__7EE;
  v16 = v12;
  v17 = v13;
  v18 = _Block_copy(v14);
  MIDI::MIDIPacketList_Deliverer::MIDIPacketList_Deliverer(v19, &v15);
  (v15[3])(&v16);
  MIDI::MIDIPacketList_Deliverer::operator()(v19, a4);
  v19[0] = &unk_1F033BC30;
  (*(v19[1] + 24))(v20);
  (v11[3])(&v12);

  result = v10;
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __34__AUAudioUnit_setupMIDIConversion__block_invoke_3(uint64_t a1, uint64_t a2, unsigned int a3, int *a4)
{
  v5 = *(a1 + 56);
  v117 = *(a1 + 40);
  aBlock = _Block_copy(*(a1 + 32));
  v6 = *a4;
  if (*a4 == v5)
  {
    v7 = a4[1];
    if (v7)
    {
      if (v7 == 1 && a4[4] <= 0x40)
      {
        v7 = aBlock[2](aBlock, a2, a3, a4);
      }

      else
      {
        v7 = 0;
        v101 = 0;
        v102 = a4 + 2;
        do
        {
          v103 = v102[2];
          v125 = v102 + 3;
          v126 = v103;
          v127 = *v102;
          v128 = 0;
          v104 = _Block_copy(aBlock);
          v105 = MIDIEventListInit(&evtlist, v5);
          *words = 0;
          *v132 = 0;
          v133 = 0;
          while (MIDI::EventList::PacketReader::read(&v125, words, v132))
          {
            v105 = MIDIEventListAdd(&evtlist, 0x114uLL, v105, *words, MIDI::UniversalPacket::word_sizes[v132[0] >> 28], v132);
            if (!v105)
            {
              if (!v7)
              {
                v7 = v104[2](v104, a2, a3, &evtlist);
              }

              memset(&evtlist, 0, sizeof(evtlist));
              v106 = MIDIEventListInit(&evtlist, v5);
              v105 = MIDIEventListAdd(&evtlist, 0x114uLL, v106, *words, MIDI::UniversalPacket::word_sizes[v132[0] >> 28], v132);
            }
          }

          if (evtlist.numPackets)
          {
            v107 = v7 == 0;
          }

          else
          {
            v107 = 0;
          }

          if (v107)
          {
            v7 = v104[2](v104, a2, a3, &evtlist);
          }

          v102 += v102[2] + 3;
          ++v101;
        }

        while (v101 < a4[1]);
      }
    }

    goto LABEL_260;
  }

  if (v5 != kMIDIProtocol_2_0 || v6 != 1)
  {
    v9 = v5 == kMIDIProtocol_1_0 && v6 == 2;
    if (v9 && a4[1])
    {
      v7 = 0;
      v10 = 0;
      v11 = a4 + 2;
      v109 = v117 + 521;
      while (1)
      {
        v115 = v10;
        v12 = v11[2];
        v112 = v11 + 3;
        v113 = v11;
        v125 = v11 + 3;
        v126 = v12;
        v127 = *v11;
        v128 = 0;
        v13 = _Block_copy(aBlock);
        v14 = MIDIEventListInit(&evtlist, kMIDIProtocol_1_0);
        time[0] = 0;
        v118 = v13;
        *words = 0;
        v130 = 0;
        while (MIDI::EventList::PacketReader::read(&v125, time, words))
        {
          v15 = words[0] >> 28;
          if (((1 << v15) & 0xA02F) != 0)
          {
            v14 = MIDIEventListAdd(&evtlist, 0x114uLL, v14, time[0], MIDI::UniversalPacket::word_sizes[v15], words);
            if (!v14)
            {
              if (!v7)
              {
                v7 = (v118)[2](v118, a2, a3, &evtlist);
              }

              memset(&evtlist, 0, sizeof(evtlist));
              v16 = MIDIEventListInit(&evtlist, kMIDIProtocol_1_0);
              v14 = MIDIEventListAdd(&evtlist, 0x114uLL, v16, time[0], MIDI::UniversalPacket::word_sizes[words[0] >> 28], words);
            }
          }

          else if (v15 == 4)
          {
            v17 = HIBYTE(words[0]) & 0xF | 0x20;
            v18 = words[1];
            v19 = BYTE2(words[0]) >> 4;
            if (v19 > 0xB)
            {
              switch(v19)
              {
                case 0xCu:
                  if (words[0])
                  {
                    v133 = 0;
                    v32 = BYTE2(words[0]) << 16;
                    v41 = (v32 - 0x100000) | (v17 << 24);
                    *v132 = (v32 - 0x100000) & 0xFFFFFF80 | (v17 << 24) | (words[1] >> 8) & 0x7F;
                    v42 = MIDI::UniversalPacket::word_sizes[v41 >> 28];
                    v43 = MIDIEventListAdd(&evtlist, 0x114uLL, v14, time[0], v42, v132);
                    if (v43)
                    {
                      v33 = time[0];
                    }

                    else
                    {
                      if (!v7)
                      {
                        v7 = (v118)[2](v118, a2, a3, &evtlist);
                      }

                      memset(&evtlist, 0, sizeof(evtlist));
                      v44 = MIDIEventListInit(&evtlist, kMIDIProtocol_1_0);
                      v33 = time[0];
                      v43 = MIDIEventListAdd(&evtlist, 0x114uLL, v44, time[0], MIDI::UniversalPacket::word_sizes[v132[0] >> 28], v132);
                    }

                    v133 = 0;
                    *v132 = v41 | v18 & 0x7F | 0x2000;
                    v14 = MIDIEventListAdd(&evtlist, 0x114uLL, v43, v33, v42, v132);
                    if (!v14)
                    {
                      if (!v7)
                      {
                        v7 = (v118)[2](v118, a2, a3, &evtlist);
                      }

                      memset(&evtlist, 0, sizeof(evtlist));
                      v45 = MIDIEventListInit(&evtlist, kMIDIProtocol_1_0);
                      v14 = MIDIEventListAdd(&evtlist, 0x114uLL, v45, v33, MIDI::UniversalPacket::word_sizes[v132[0] >> 28], v132);
                    }

                    v31 = v17 << 24;
                  }

                  else
                  {
                    v31 = v17 << 24;
                    v32 = BYTE2(words[0]) << 16;
                    v33 = time[0];
                  }

                  v133 = 0;
                  *v132 = v32 | HIWORD(v18) & 0x7F00 | v31;
                  v14 = MIDIEventListAdd(&evtlist, 0x114uLL, v14, v33, 1uLL, v132);
                  if (!v14)
                  {
                    if (!v7)
                    {
                      v7 = (v118)[2](v118, a2, a3, &evtlist);
                    }

                    goto LABEL_90;
                  }

                  break;
                case 0xDu:
                  v133 = 0;
                  *v132 = (BYTE2(words[0]) << 16) | (v17 << 24) | (words[1] >> 25 << 8);
                  v14 = MIDIEventListAdd(&evtlist, 0x114uLL, v14, time[0], 1uLL, v132);
                  if (!v14)
                  {
                    if (!v7)
                    {
                      v7 = (v118)[2](v118, a2, a3, &evtlist);
                    }

                    goto LABEL_90;
                  }

                  break;
                case 0xEu:
                  v133 = 0;
                  *v132 = (words[1] >> 10) & 0x7F00 | (words[1] >> 25) | (BYTE2(words[0]) << 16) | (v17 << 24);
                  v14 = MIDIEventListAdd(&evtlist, 0x114uLL, v14, time[0], 1uLL, v132);
                  if (!v14)
                  {
                    if (!v7)
                    {
                      v7 = (v118)[2](v118, a2, a3, &evtlist);
                    }

                    goto LABEL_90;
                  }

                  break;
              }
            }

            else if (v19 - 8 >= 4)
            {
              if (v19 - 2 < 2)
              {
                v21 = (words[0] >> 16) & 0xF;
                v22 = &v109[12 * (HIBYTE(words[0]) & 0xF)] + 3 * v21;
                v23 = (words[0] >> 8) & 0x7F;
                v114 = words[0] & 0x7F;
                if ((words[0] & 0x100000) != 0)
                {
                  v24 = 2;
                }

                else
                {
                  v24 = 1;
                }

                if (v24 != *v22 || v23 != v22[1])
                {
                  v25 = v21 | 0xB0;
LABEL_49:
                  v110 = v24;
                  if ((words[0] & 0x100000) != 0)
                  {
                    v28 = 25344;
                  }

                  else
                  {
                    v28 = 25856;
                  }

                  v133 = 0;
                  v26 = (v17 << 24) | (v25 << 16);
                  v29 = BYTE1(words[0]) & 0x7F;
                  *v132 = v28 | v23 | v26;
                  v30 = MIDIEventListAdd(&evtlist, 0x114uLL, v14, time[0], 1uLL, v132);
                  if (v30)
                  {
                    v27 = time[0];
                  }

                  else
                  {
                    if (!v7)
                    {
                      v7 = (v118)[2](v118, a2, a3, &evtlist);
                    }

                    memset(&evtlist, 0, sizeof(evtlist));
                    v34 = MIDIEventListInit(&evtlist, kMIDIProtocol_1_0);
                    v27 = time[0];
                    v30 = MIDIEventListAdd(&evtlist, 0x114uLL, v34, time[0], MIDI::UniversalPacket::word_sizes[v132[0] >> 28], v132);
                  }

                  v133 = 0;
                  *v132 = (v28 + v26 + v114 - 256);
                  v14 = MIDIEventListAdd(&evtlist, 0x114uLL, v30, v27, 1uLL, v132);
                  if (!v14)
                  {
                    if (!v7)
                    {
                      v7 = (v118)[2](v118, a2, a3, &evtlist);
                    }

                    memset(&evtlist, 0, sizeof(evtlist));
                    v35 = MIDIEventListInit(&evtlist, kMIDIProtocol_1_0);
                    v14 = MIDIEventListAdd(&evtlist, 0x114uLL, v35, v27, MIDI::UniversalPacket::word_sizes[v132[0] >> 28], v132);
                  }

                  *v22 = v110;
                  v22[1] = v29;
                  v22[2] = v114;
                  goto LABEL_68;
                }

                v25 = v21 | 0xB0;
                if (v114 != v22[2])
                {
                  goto LABEL_49;
                }

                v26 = (v25 << 16) | (v17 << 24);
                v27 = time[0];
LABEL_68:
                v133 = 0;
                *v132 = v26 | (v18 >> 25) | 0x600;
                v14 = MIDIEventListAdd(&evtlist, 0x114uLL, v14, v27, 1uLL, v132);
                if (!v14)
                {
                  if (!v7)
                  {
                    v7 = (v118)[2](v118, a2, a3, &evtlist);
                  }

                  memset(&evtlist, 0, sizeof(evtlist));
                  v36 = MIDIEventListInit(&evtlist, kMIDIProtocol_1_0);
                  v14 = MIDIEventListAdd(&evtlist, 0x114uLL, v36, time[0], MIDI::UniversalPacket::word_sizes[v132[0] >> 28], v132);
                }

                v37 = (v18 >> 18) & 0x7F;
                if (v37)
                {
                  v133 = 0;
                  *v132 = v37 | v26 | 0x2600u;
                  v38 = time[0];
                  v14 = MIDIEventListAdd(&evtlist, 0x114uLL, v14, time[0], 1uLL, v132);
                  if (!v14)
                  {
                    if (!v7)
                    {
                      v7 = (v118)[2](v118, a2, a3, &evtlist);
                    }

                    memset(&evtlist, 0, sizeof(evtlist));
                    v39 = MIDIEventListInit(&evtlist, kMIDIProtocol_1_0);
                    v40 = MIDIEventListAdd(&evtlist, 0x114uLL, v39, v38, MIDI::UniversalPacket::word_sizes[v132[0] >> 28], v132);
LABEL_91:
                    v14 = v40;
                  }
                }
              }
            }

            else
            {
              v20 = v19 == 9;
              if (words[1] >> 25)
              {
                v20 = words[1] >> 25;
              }

              v133 = 0;
              *v132 = words[0] & 0x7F00 | (BYTE2(words[0]) << 16) | (v17 << 24) | v20;
              v14 = MIDIEventListAdd(&evtlist, 0x114uLL, v14, time[0], 1uLL, v132);
              if (!v14)
              {
                if (!v7)
                {
                  v7 = (v118)[2](v118, a2, a3, &evtlist);
                }

LABEL_90:
                memset(&evtlist, 0, sizeof(evtlist));
                v46 = MIDIEventListInit(&evtlist, kMIDIProtocol_1_0);
                v40 = MIDIEventListAdd(&evtlist, 0x114uLL, v46, time[0], MIDI::UniversalPacket::word_sizes[v132[0] >> 28], v132);
                goto LABEL_91;
              }
            }
          }
        }

        if (evtlist.numPackets)
        {
          v47 = v7 == 0;
        }

        else
        {
          v47 = 0;
        }

        v48 = v115;
        if (v47)
        {
          v7 = (v118)[2](v118, a2, a3, &evtlist);
          v48 = v115;
        }

        v11 = &v112[v113[2]];
        v10 = v48 + 1;
        if (v48 + 1 >= a4[1])
        {
          goto LABEL_260;
        }
      }
    }

LABEL_245:
    v7 = 0;
    goto LABEL_260;
  }

  if (!a4[1])
  {
    goto LABEL_245;
  }

  v7 = 0;
  v49 = 0;
  v50 = a4 + 2;
  v111 = v117 + 33;
  do
  {
    v116 = v49;
    v51 = v50[2];
    v125 = v50 + 3;
    v126 = v51;
    v127 = *v50;
    v128 = 0;
    v52 = _Block_copy(aBlock);
    v53 = MIDIEventListInit(&evtlist, kMIDIProtocol_2_0);
    time[1] = 0;
    v124 = 0;
    time[0] = 0;
    while (MIDI::EventList::PacketReader::read(&v125, &v124, time))
    {
      v54 = LODWORD(time[0]);
      if (LODWORD(time[0]) >> 28 == 2)
      {
        *words = 0;
        v130 = 0;
        v56 = HIBYTE(LODWORD(time[0])) & 0xF;
        v57 = HIBYTE(LODWORD(time[0])) & 0xF | 0x40;
        v58 = BYTE2(time[0]);
        v59 = *(v117 + 32);
        v60 = *v117;
        v61 = BYTE2(time[0]) >> 4;
        if (v59)
        {
          goto LABEL_145;
        }

        if ((v60 & 0xFF0000) != 0)
        {
          if (((v60 ^ LODWORD(time[0])) & 0xF0000) != 0)
          {
            v59 = 1;
            *(v117 + 32) = 1;
            goto LABEL_145;
          }

          if (v61 != 11)
          {
            v59 = (v60 & 0xDF00) != 0 || v61 != 12;
LABEL_145:
            if (BYTE2(v60) && v59)
            {
              *(v117 + 32) = 1;
              v133 = 0;
              v132[0] = v60 & 0xFF00 | (BYTE2(v60) << 16) & 0x80FFFFFF | ((BYTE3(v54) & 0xF | 0x40) << 24);
              v65 = v60;
              v66 = v60 << 25;
              if (v65 >= 0x41)
              {
                v67 = (v65 & 0x3F) << 19;
                if (v67)
                {
                  do
                  {
                    v66 |= v67;
                    v68 = v67 > 0x3F;
                    v67 >>= 6;
                  }

                  while (v68);
                }
              }

              v132[1] = v66;
              v53 = MIDIEventListAdd(&evtlist, 0x114uLL, v53, v124, 2uLL, v132);
              if (!v53)
              {
                if (!v7)
                {
                  v7 = v52[2](v52, a2, a3, &evtlist);
                }

                memset(&evtlist, 0, sizeof(evtlist));
                v69 = MIDIEventListInit(&evtlist, kMIDIProtocol_2_0);
                v53 = MIDIEventListAdd(&evtlist, 0x114uLL, v69, v124, MIDI::UniversalPacket::word_sizes[v132[0] >> 28], v132);
              }

              *v117 = 0;
              v133 = 0;
              v70 = v117[4];
              v56 = BYTE3(v54) & 0xF;
              if (BYTE2(v70))
              {
                LOWORD(v132[0]) = v70 & 0xFF00;
                BYTE2(v132[0]) = BYTE2(v70);
                HIBYTE(v132[0]) = v57;
                v71 = v70;
                v72 = v70 << 25;
                if (v71 >= 0x41)
                {
                  v73 = (v71 & 0x3F) << 19;
                  if (v73)
                  {
                    do
                    {
                      v72 |= v73;
                      v68 = v73 > 0x3F;
                      v73 >>= 6;
                    }

                    while (v68);
                  }
                }

                v132[1] = v72;
                v74 = v124;
                v53 = MIDIEventListAdd(&evtlist, 0x114uLL, v53, v124, 2uLL, v132);
                if (!v53)
                {
                  if (!v7)
                  {
                    v7 = v52[2](v52, a2, a3, &evtlist);
                  }

                  memset(&evtlist, 0, sizeof(evtlist));
                  v75 = MIDIEventListInit(&evtlist, kMIDIProtocol_2_0);
                  v53 = MIDIEventListAdd(&evtlist, 0x114uLL, v75, v74, MIDI::UniversalPacket::word_sizes[v132[0] >> 28], v132);
                }

                v117[4] = 0;
                v58 = BYTE2(v54);
                v56 = BYTE3(v54) & 0xF;
              }

              else
              {
                v58 = BYTE2(v54);
              }

              *(v111 + (v56 << 7) + 8 * ((v54 >> 16) & 0xF)) = 0;
            }

            goto LABEL_165;
          }

          v59 = 1;
          if (BYTE1(v60) <= 0x62u)
          {
            if (BYTE1(v60))
            {
              if (BYTE1(v60) == 32)
              {
                if ((time[0] & 0xFF00) != 0)
                {
                  goto LABEL_145;
                }
              }

              else
              {
                if (BYTE1(v60) != 98)
                {
                  goto LABEL_145;
                }

                v62 = time[0] & 0xFF00;
                v63 = 25344;
LABEL_142:
                if (v62 != v63 && (time[0] & 0xF0DF00) != 0xB00600)
                {
                  goto LABEL_144;
                }
              }
            }

            else if ((time[0] & 0xFF00) != 0x2000)
            {
              goto LABEL_144;
            }

            *(v117 + 1) = *time;
            goto LABEL_165;
          }

          switch(BYTE1(v60))
          {
            case 'c':
              v62 = time[0] & 0xFF00;
              v63 = 25088;
              break;
            case 'd':
              v62 = time[0] & 0xFF00;
              v63 = 25856;
              break;
            case 'e':
              v62 = time[0] & 0xFF00;
              v63 = 25600;
              break;
            default:
              goto LABEL_145;
          }

          goto LABEL_142;
        }

        v59 = 1;
        if ((time[0] & 0xF00000) != 0xB00000 || v61 != 11)
        {
          goto LABEL_145;
        }

        if (BYTE1(time[0]) - 98 >= 4 && BYTE1(time[0]) != 32 && BYTE1(time[0]))
        {
LABEL_144:
          v59 = 1;
          goto LABEL_145;
        }

        *v117 = *time;
LABEL_165:
        v76 = (v54 >> 8) & 0x7F;
        v77 = v54 & 0x7F;
        if (BYTE2(v54) >> 4 <= 0xAu)
        {
          switch(v61)
          {
            case 8:
              goto LABEL_197;
            case 9:
              if ((v54 & 0x7F) == 0)
              {
                v58 -= 16;
                v77 = 64;
              }

LABEL_197:
              v80 = (v57 << 24) | (v58 << 16) | (v76 << 8);
              words[0] = v80;
              v91 = v77 << 9;
              if (v77 >= 0x41)
              {
                v92 = 8 * (v77 & 0x3F);
                if (v92)
                {
                  do
                  {
                    v91 |= v92;
                    v68 = v92 > 0x3F;
                    v92 >>= 6;
                  }

                  while (v68);
                }
              }

              v81 = v91 << 16;
LABEL_201:
              words[1] = v81;
              goto LABEL_202;
            case 10:
              v80 = (v58 << 16) | (v57 << 24) | (v76 << 8);
              words[0] = v80;
              v81 = v54 << 25;
              if (v77 >= 0x41)
              {
                v82 = (v54 & 0x3F) << 19;
                if (v82)
                {
                  do
                  {
                    v81 |= v82;
                    v68 = v82 > 0x3F;
                    v82 >>= 6;
                  }

                  while (v68);
                }
              }

              goto LABEL_201;
          }

          goto LABEL_185;
        }

        if (BYTE2(v54) >> 4 > 0xCu)
        {
          if (v61 != 13)
          {
            if (v61 == 14)
            {
              v80 = (v58 << 16) | (v57 << 24);
              words[0] = v80;
              v83 = v76 | (v77 << 7);
              v81 = v83 << 18;
              if (v83 > 0x2000)
              {
                for (i = 32 * (v83 & 0x1FFF); i; i >>= 13)
                {
                  v81 |= i;
                }
              }

              goto LABEL_201;
            }

LABEL_185:
            v80 = words[0];
            goto LABEL_202;
          }

          v80 = (v58 << 16) | (v57 << 24);
          words[0] = v80;
          v89 = v54 >> 8 << 25;
          if (v76 >= 0x41)
          {
            v90 = ((v54 >> 8) & 0x3F) << 19;
            if (v90)
            {
              do
              {
                v89 |= v90;
                v68 = v90 > 0x3F;
                v90 >>= 6;
              }

              while (v68);
            }
          }

          words[1] = v89;
LABEL_202:
          v53 = MIDIEventListAdd(&evtlist, 0x114uLL, v53, v124, MIDI::UniversalPacket::word_sizes[v80 >> 28], words);
          if (!v53)
          {
            if (!v7)
            {
              v7 = v52[2](v52, a2, a3, &evtlist);
            }

            memset(&evtlist, 0, sizeof(evtlist));
            v93 = MIDIEventListInit(&evtlist, kMIDIProtocol_2_0);
            v53 = MIDIEventListAdd(&evtlist, 0x114uLL, v93, v124, MIDI::UniversalPacket::word_sizes[words[0] >> 28], words);
          }
        }

        else
        {
          if (v61 != 11)
          {
            v78 = (v111 + (v56 << 7) + 8 * (WORD1(v54) & 0xF));
            if (*v78)
            {
              v79 = *(v117 + 32) ^ 1;
            }

            else
            {
              v79 = 0;
            }

            v80 = v79 | (v58 << 16) | (v57 << 24);
            words[0] = v80;
            HIBYTE(words[1]) = BYTE1(v54) & 0x7F;
            BYTE1(words[1]) = v78[2];
            LOBYTE(words[1]) = v78[3];
            *v78 = 0;
            *v117 = 0u;
            *(v117 + 1) = 0u;
            goto LABEL_202;
          }

          v85 = v58;
          v86 = (v54 >> 16) & 0xF;
          v87 = (v111 + (v56 << 7) + 8 * v86);
          if (((v54 >> 8) & 0x7F) > 0x61)
          {
            if (((v54 >> 8) & 0x7F) > 0x63)
            {
              if (v76 == 100)
              {
                v87[1] = 1;
                goto LABEL_231;
              }

              if (v76 != 101)
              {
                goto LABEL_233;
              }

              v87[1] = 1;
            }

            else
            {
              if (v76 == 98)
              {
                v87[1] = 2;
LABEL_231:
                v87[5] = v77;
                goto LABEL_232;
              }

              v87[1] = 2;
            }

            v87[4] = v77;
          }

          else
          {
            if (((v54 >> 8) & 0x7F) > 0x1F)
            {
              if (v76 != 32)
              {
                if (v76 != 38)
                {
                  goto LABEL_233;
                }

                v88 = v54 & 0x7F;
                goto LABEL_212;
              }

              v87[3] = v77;
            }

            else
            {
              if (v76)
              {
                if (v76 != 6)
                {
                  goto LABEL_233;
                }

                v88 = 0;
                v87[6] = v77;
LABEL_212:
                v87[7] = v88;
                if ((v117[8] & 1) != 0 || !v87[1])
                {
LABEL_233:
                  v80 = (v85 << 16) | (v57 << 24) | (v76 << 8);
                  words[0] = v80;
                  v81 = v54 << 25;
                  if (v77 >= 0x41)
                  {
                    v98 = (v54 & 0x3F) << 19;
                    if (v98)
                    {
                      do
                      {
                        v81 |= v98;
                        v68 = v98 > 0x3F;
                        v98 >>= 6;
                      }

                      while (v68);
                    }
                  }

                  goto LABEL_201;
                }

                if (v87[1] == 1)
                {
                  v94 = 32;
                }

                else
                {
                  v94 = 48;
                }

                v80 = (v57 << 24) | ((v94 | v86) << 16) | (v87[4] << 8) | v87[5];
                words[0] = v80;
                v95 = v88 | (v87[6] << 7);
                v96 = v95 << 18;
                if (v95 > 0x2000)
                {
                  for (j = 32 * (v95 & 0x1FFF); j; j >>= 13)
                  {
                    v96 |= j;
                  }
                }

                words[1] = v96;
                *v117 = 0u;
                *(v117 + 1) = 0u;
                goto LABEL_202;
              }

              v87[2] = v77;
            }

            *v87 = 1;
          }

LABEL_232:
          if (v117[8])
          {
            goto LABEL_233;
          }
        }
      }

      else
      {
        v53 = MIDIEventListAdd(&evtlist, 0x114uLL, v53, v124, MIDI::UniversalPacket::word_sizes[LODWORD(time[0]) >> 28], time);
        if (!v53)
        {
          if (!v7)
          {
            v7 = v52[2](v52, a2, a3, &evtlist);
          }

          memset(&evtlist, 0, sizeof(evtlist));
          v55 = MIDIEventListInit(&evtlist, kMIDIProtocol_2_0);
          v53 = MIDIEventListAdd(&evtlist, 0x114uLL, v55, v124, MIDI::UniversalPacket::word_sizes[LODWORD(time[0]) >> 28], time);
        }
      }
    }

    if (evtlist.numPackets)
    {
      v99 = v7 == 0;
    }

    else
    {
      v99 = 0;
    }

    v100 = v116;
    if (v99)
    {
      v7 = v52[2](v52, a2, a3, &evtlist);
      v100 = v116;
    }

    v50 += v50[2] + 3;
    v49 = v100 + 1;
  }

  while (v100 + 1 < a4[1]);
LABEL_260:

  return v7;
}

- (void)setCachedViewController:(id)a3
{
  v5 = a3;
  cachedViewController = self->_cachedViewController;
  p_cachedViewController = &self->_cachedViewController;
  if (cachedViewController != v5)
  {
    v8 = v5;
    objc_storeStrong(p_cachedViewController, a3);
    v5 = v8;
  }
}

- (void)setFullState:(NSDictionary *)fullState
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = fullState;
  v5 = [(NSDictionary *)v4 objectForKeyedSubscript:@"type"];
  if ([v5 unsignedIntValue] != self->_componentDescription.componentType)
  {
    goto LABEL_8;
  }

  v6 = [(NSDictionary *)v4 objectForKeyedSubscript:@"subtype"];
  if ([v6 unsignedIntValue] != self->_componentDescription.componentSubType)
  {

LABEL_8:
    goto LABEL_9;
  }

  v7 = [(NSDictionary *)v4 objectForKeyedSubscript:@"manufacturer"];
  v8 = [v7 unsignedIntValue];
  componentManufacturer = self->_componentDescription.componentManufacturer;

  if (v8 != componentManufacturer)
  {
LABEL_9:
    if (kAUExtensionScope)
    {
      v10 = *kAUExtensionScope;
      if (!v10)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E9C10];
      v12 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v15 = 136315394;
      v16 = "AUAudioUnit.mm";
      v17 = 1024;
      v18 = 1168;
      _os_log_impl(&dword_18F5DF000, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d setFullState: preset type/subtype/manufacturer does not match", &v15, 0x12u);
    }

    goto LABEL_15;
  }

  v10 = [(NSDictionary *)v4 objectForKeyedSubscript:@"data"];
  if (v10)
  {
    v11 = [(AUAudioUnit *)self parameterTree];
    [(AUAudioUnit *)self willChangeValueForKey:@"allParameterValues"];
    MEMORY[0x193ADE3C0](&v15, v10);
    [v11 _deserialize:&v15 fromSetFullState:1];
    [(AUAudioUnit *)self didChangeValueForKey:@"allParameterValues"];
    MEMORY[0x193ADE3E0](&v15);
  }

  else
  {
    if (kAUExtensionScope)
    {
      v11 = *kAUExtensionScope;
      if (!v11)
      {
        v10 = 0;
        goto LABEL_15;
      }
    }

    else
    {
      v11 = MEMORY[0x1E69E9C10];
      v14 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v15 = 136315394;
      v16 = "AUAudioUnit.mm";
      v17 = 1024;
      v18 = 1173;
      _os_log_impl(&dword_18F5DF000, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d setFullState: no data", &v15, 0x12u);
    }
  }

LABEL_15:
LABEL_16:

  v13 = *MEMORY[0x1E69E9840];
}

- (NSDictionary)fullState
{
  v3 = objc_opt_new();
  [v3 setObject:&unk_1F034DED8 forKeyedSubscript:@"version"];
  v4 = [MEMORY[0x1E696AD98] numberWithInt:self->_componentDescription.componentType];
  [v3 setObject:v4 forKeyedSubscript:@"type"];

  v5 = [MEMORY[0x1E696AD98] numberWithInt:self->_componentDescription.componentSubType];
  [v3 setObject:v5 forKeyedSubscript:@"subtype"];

  v6 = [MEMORY[0x1E696AD98] numberWithInt:self->_componentDescription.componentManufacturer];
  [v3 setObject:v6 forKeyedSubscript:@"manufacturer"];

  CASerializer::CASerializer(&v9, 0);
  v7 = [(AUAudioUnit *)self parameterTree];
  [v7 _serialize:&v9];

  [v3 setObject:v9.var0 forKeyedSubscript:@"data"];
  MEMORY[0x193ADE2A0](&v9);

  return v3;
}

- (void)flushEventSchedule
{
  v3 = atomic_load(&self->_realtimeState.auv2GetParameterSynchronizer);
  if (v3)
  {
    v19 = 0x8000;
    v16 = 0u;
    v17 = 0u;
    v15 = 0u;
    v14 = 0xC200000000000000;
    v18 = 1;
    memset(v13, 0, sizeof(v13));
    (*(*&self->_realtimeState.contextChangeGenerator.__engaged_ + 16))(*&self->_realtimeState.contextChangeGenerator.__engaged_, &v19, &v14, 0x1000000, 0, v13, 0);
  }

  caulk::pooled_semaphore_mutex::_lock((&self->_realtimeState.renderObserverList.mObservers.mActiveList.mHead + 4));
  v4 = AUEventSchedule::preRender(&self->_realtimeState.eventSchedule.mScheduledParameterRefresher, 0x7FFFFFFFFFFFFFFEuLL, 1u, 0);
  AUEventSchedule::postRender(&self->_realtimeState.eventSchedule.mScheduledParameterRefresher, v4);
  _X0 = 0;
  v6 = *&self->_anon_f8[8];
  do
  {
    _X5 = *&self->_anon_f8[16];
    __asm { CASPAL          X4, X5, X0, X1, [X8] }

    _ZF = _X4 == v6;
    v6 = _X4;
  }

  while (!_ZF);
  caulk::pooled_semaphore_mutex::_unlock((&self->_realtimeState.renderObserverList.mObservers.mActiveList.mHead + 4));
}

- (void)internalDeallocateRenderResources
{
  AUEventSchedule::uninitialize(&self->_realtimeState.eventSchedule.mScheduledParameterRefresher);
  v3 = [(AUAudioUnit *)self scheduledParameterRefresher];
  v4 = self;
  AUScheduledParameterRefresher::performPendingMessages(v3);
  v27 = (v3 + 336);
  v28 = 1;
  std::mutex::lock((v3 + 336));
  v5 = atomic_load(v3 + 37);
  if (v5)
  {
    SlotForKey = caulk::concurrent::guarded_lookup_hash_table<void *,int,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<void *>>::table_impl::findSlotForKey(v5, v4);
    if (SlotForKey)
    {
      v8 = v7;
      atomic_store(0xFFFFFFFFFFFFFFFFLL, (v5 + 8 * HIDWORD(SlotForKey) + 16));
      if (v7)
      {
        v9 = atomic_load(v3 + 76);
        if (v9 >= 1)
        {
          do
          {
            __ns.__rep_ = 50000;
            std::this_thread::sleep_for (&__ns);
            v10 = atomic_load(v3 + 76);
          }

          while (v10 > 0);
        }

        if (atomic_load(v8))
        {
          std::mutex::unlock(v27);
          v28 = 0;
          while (atomic_load(v8))
          {
            __ns.__rep_ = 500000;
            std::this_thread::sleep_for (&__ns);
          }

          std::unique_lock<std::mutex>::lock[abi:ne200100](&v27);
          v5 = atomic_load(v3 + 37);
        }

        caulk::concurrent::guarded_lookup_hash_table<void *,int,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<void *>>::element_t::release(v8);
        v14 = *(v3 + 72) - 1;
        *(v3 + 72) = v14;
        if (v5)
        {
          v15 = 16 * v14;
          v16 = *(v5 + 8);
          if (v15 / v16 <= 2 && v16 >= 9)
          {
            caulk::concurrent::guarded_lookup_hash_table<void *,int,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<void *>>::rehash(v3 + 36, v16 >> 1);
          }
        }
      }
    }
  }

  v18 = atomic_load(v3 + 76);
  if (v18 <= 0)
  {
    v20 = *(v3 + 39);
    for (i = *(v3 + 40); i != v20; std::allocator_traits<std::allocator<std::unique_ptr<caulk::concurrent::guarded_lookup_hash_table<void *,int,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<void *>>::table_impl,std::default_delete<caulk::concurrent::guarded_lookup_hash_table<void *,int,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<void *>>::table_impl>>>>::destroy[abi:ne200100]<std::unique_ptr<caulk::concurrent::guarded_lookup_hash_table<void *,int,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<void *>>::table_impl,std::default_delete<caulk::concurrent::guarded_lookup_hash_table<void *,int,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<void *>>::table_impl>>,void,0>(i))
    {
      --i;
    }

    *(v3 + 40) = v20;
  }

  if (v28 == 1)
  {
    std::mutex::unlock(v27);
  }

  transportStateBlock = v4->_transportStateBlock;
  v4->_transportStateBlock = 0;

  musicalContextBlock = v4->_musicalContextBlock;
  v4->_musicalContextBlock = 0;

  MIDIOutputEventBlock = v4->_MIDIOutputEventBlock;
  v4->_MIDIOutputEventBlock = 0;

  MIDIOutputEventListBlock = v4->_MIDIOutputEventListBlock;
  v4->_MIDIOutputEventListBlock = 0;

  MIDIOutputEventHostBlock = v4->_MIDIOutputEventHostBlock;
  v4->_MIDIOutputEventHostBlock = 0;

  MIDIOutputEventListHostBlock = v4->_MIDIOutputEventListHostBlock;
  v4->_MIDIOutputEventListHostBlock = 0;
}

- (void)deallocateRenderResources
{
  if (self->_renderResourcesAllocated)
  {
    self->_renderResourcesAllocated = 0;
    caulk::pooled_semaphore_mutex::_lock((&self->_realtimeState.renderObserverList.mObservers.mActiveList.mHead + 4));
    [(AUAudioUnit *)self internalDeallocateRenderResources];

    caulk::pooled_semaphore_mutex::_unlock((&self->_realtimeState.renderObserverList.mObservers.mActiveList.mHead + 4));
  }
}

- (BOOL)allocateRenderResourcesAndReturnError:(NSError *)outError
{
  if (self->_renderResourcesAllocated)
  {
    return 1;
  }

  v4 = [(AUAudioUnit *)self outputBusses];
  v5 = v4;
  v6 = 0;
  if (v4 && [v4 count])
  {
    v7 = [v5 objectAtIndexedSubscript:0];
    v8 = [v7 format];
    [v8 sampleRate];
    v6 = v9;
  }

  v10 = [(AUAudioUnit *)self scheduledParameterRefresher];
  std::mutex::lock((v10 + 336));
  v11 = atomic_load(v10 + 37);
  v12 = *(v10 + 72) + 1;
  *(v10 + 72) = v12;
  if (!v11)
  {
    v15 = 8;
    goto LABEL_9;
  }

  v13 = 16 * v12;
  v14 = *(v11 + 8);
  if (v13 / v14 >= 0xB)
  {
    v15 = 2 * v14;
LABEL_9:
    v11 = caulk::concurrent::guarded_lookup_hash_table<void *,int,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<void *>>::rehash(v10 + 36, v15);
  }

  if ((caulk::concurrent::guarded_lookup_hash_table<void *,int,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<void *>>::table_impl::findSlotForKey(v11, self) & 1) == 0)
  {
    operator new();
  }

  --*(v10 + 72);
  std::mutex::unlock((v10 + 336));
  v16 = [(AUAudioUnit *)self scheduledParameterRefresher];
  v17 = self;
  v17->_realtimeState.contextChangeGenerator.var0.__val_.mObserver = v17;
  v18 = [(AUAudioUnit *)v17 renderBlock];
  v19 = *&v17->_realtimeState.contextChangeGenerator.__engaged_;
  *&v17->_realtimeState.contextChangeGenerator.__engaged_ = v18;

  *&v17->_realtimeState.renderBlockType = v6;
  *v17->_realtimeState.eventSchedule.mAddedEventQueue.mDequeueHead.padding = v16;
  a_value = v17->_realtimeState.eventSchedule.mAddedEventQueue.mEnqueueHead.__a_.__a_value;
  if (a_value[24] <= 511)
  {
    do
    {
      XAtomicPoolAllocator::allocChunk(a_value);
    }

    while (a_value[24] < 512);
  }

  if (a_value[52] <= 511)
  {
    do
    {
      XAtomicPoolAllocator::allocChunk((a_value + 28));
    }

    while (a_value[52] < 512);
  }

  if (a_value[80] <= 511)
  {
    do
    {
      XAtomicPoolAllocator::allocChunk((a_value + 56));
    }

    while (a_value[80] < 512);
  }

  _X0 = 0;
  v22 = *&v17->_anon_f8[8];
  do
  {
    _X5 = *&v17->_anon_f8[16];
    __asm { CASPAL          X4, X5, X0, X1, [X8] }

    _ZF = _X4 == v22;
    v22 = _X4;
  }

  while (!_ZF);

  *&v17->_anon_f8[76] = [(AUAudioUnit *)v17 AudioUnitMIDIProtocol];
  self->_renderResourcesAllocated = 1;

  return 1;
}

- (void)removeRenderObserver:(void *)a3 userData:(void *)a4
{
  RenderObserver::RenderObserver(&v6, 0, 0, a3, a4);
  TThreadSafeList<RenderObserver>::deferred_remove(&self->_realtimeState.renderObserverList.mObservers.mPendingList, &v6);
  v5 = v7;
  v7 = 0;
}

- (void)addRenderObserver:(void *)a3 userData:(void *)a4
{
  RenderObserver::RenderObserver(&v6, 0, 0, a3, a4);
  TThreadSafeList<RenderObserver>::deferred_add(&self->_realtimeState.renderObserverList.mObservers.mPendingList, &v6);
  LOBYTE(self->_realtimeState.eventSchedule.mAUv2GetParameterSynchronizer) = 1;
  v5 = v7;
  v7 = 0;
}

- (void)removeRenderObserver:(NSInteger)token
{
  RenderObserver::RenderObserver(&v5, token, 0, 0, 0);
  TThreadSafeList<RenderObserver>::deferred_remove(&self->_realtimeState.renderObserverList.mObservers.mPendingList, &v5);
  v4 = v6;
  v6 = 0;
}

- (NSInteger)tokenByAddingRenderObserver:(AURenderObserver)observer
{
  RenderObserver::RenderObserver(&v7, (atomic_fetch_add_explicit(RenderObserverList::sToken, 1u, memory_order_relaxed) + 1), observer, 0, 0);
  TThreadSafeList<RenderObserver>::deferred_add(&self->_realtimeState.renderObserverList.mObservers.mPendingList, &v7);
  LOBYTE(self->_realtimeState.eventSchedule.mAUv2GetParameterSynchronizer) = 1;
  v5 = v7;
  v4 = v8;
  v8 = 0;

  return v5;
}

- (AUMIDIEventListBlock)scheduleMIDIEventListBlock
{
  if (self->_shouldUseMIDI2 && [(AUAudioUnit *)self isMusicDeviceOrEffect])
  {
    if (self->_renderResourcesAllocated)
    {
      if (*&self->_anon_f8[76])
      {
        goto LABEL_5;
      }
    }

    else if ([(AUAudioUnit *)self AudioUnitMIDIProtocol])
    {
LABEL_5:
      operator new();
    }

    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __41__AUAudioUnit_scheduleMIDIEventListBlock__block_invoke;
    v6[3] = &__block_descriptor_40_e61_i28__0q8C16r__MIDIEventList_iI_1_MIDIEventPacket_QI_64I____20l;
    v6[4] = &self->_realtimeState;
    v5 = _Block_copy(v6);
    v3 = _Block_copy(v5);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t __41__AUAudioUnit_scheduleMIDIEventListBlock__block_invoke(uint64_t a1, uint64_t a2, char a3, _DWORD *a4)
{
  v13[102] = *MEMORY[0x1E69E9840];
  if (a4)
  {
    *&v7 = *(a1 + 32);
    *(&v7 + 1) = a2;
    LOBYTE(v8) = a3;
    v9 = _ZN5caulk16inplace_functionIFvPKN4MIDI16LegacyPacketListEELm48ELm8ENS_23inplace_function_detail9rt_vtableEE16k_wrapper_vtableIZZ41__AUAudioUnit_scheduleMIDIEventListBlock_EUb1_E3__3EE;
    v10 = v7;
    v11 = v8;
    MIDI::MIDIPacketList_Deliverer::MIDIPacketList_Deliverer(v12, &v9);
    (v9[3])(&v10);
    MIDI::MIDIPacketList_Deliverer::operator()(v12, a4);
    v12[0] = &unk_1F033BC30;
    (*(v12[1] + 24))(v13);
    (off_1F032F130)(&v7);
    result = 0;
  }

  else
  {
    result = 4294967246;
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __41__AUAudioUnit_scheduleMIDIEventListBlock__block_invoke_2(uint64_t a1, uint64_t a2, char a3, int *a4)
{
  if (!a4)
  {
    return 4294967246;
  }

  v6 = *(a1 + 56);
  v7 = *(a1 + 48);
  v8 = *a4;
  if (*a4 == v6)
  {
    v9 = a4[1];
    if (v9)
    {
      if (v9 == 1 && a4[4] <= 0x40)
      {
        v136.protocol = *(a1 + 56);
        v136.numPackets = 1;
        memcpy(v136.packet, a4 + 2, sizeof(v136.packet));
        AUEventSchedule::midiEventList((v7 + 48), a2, a3, &v136);
      }

      else
      {
        v87 = 0;
        v88 = a4 + 2;
        __srca = *(a1 + 56);
        do
        {
          v114 = v87;
          v89 = v88[2];
          v109 = v88 + 3;
          v112 = v88;
          v127 = v88 + 3;
          v128 = v89;
          v129 = *v88;
          v130 = 0;
          v90 = MIDIEventListInit(&evtlist, v6);
          *&v135 = 0;
          *words = 0;
          v124 = 0;
          do
          {
            v91 = MIDI::EventList::PacketReader::read(&v127, &v135, words);
            v92 = v91;
            if (v91)
            {
              v90 = MIDIEventListAdd(&evtlist, 0x114uLL, v90, v135, MIDI::UniversalPacket::word_sizes[words[0] >> 28], words);
              if (!v90)
              {
                numPackets = evtlist.numPackets;
                if (evtlist.numPackets)
                {
                  packet = evtlist.packet;
                  do
                  {
                    v136.protocol = evtlist.protocol;
                    v136.numPackets = 1;
                    memcpy(v136.packet, packet, sizeof(v136.packet));
                    AUEventSchedule::midiEventList((v7 + 48), a2, a3, &v136);
                    packet = (packet + 4 * packet->wordCount + 12);
                    --numPackets;
                  }

                  while (numPackets);
                }

                memset(&evtlist, 0, sizeof(evtlist));
                v95 = MIDIEventListInit(&evtlist, __srca);
                v90 = MIDIEventListAdd(&evtlist, 0x114uLL, v95, v135, MIDI::UniversalPacket::word_sizes[words[0] >> 28], words);
              }
            }

            else
            {
              v96 = evtlist.numPackets;
              if (!evtlist.numPackets)
              {
                break;
              }

              v97 = evtlist.packet;
              do
              {
                v136.protocol = evtlist.protocol;
                v136.numPackets = 1;
                memcpy(v136.packet, v97, sizeof(v136.packet));
                AUEventSchedule::midiEventList((v7 + 48), a2, a3, &v136);
                v97 = (v97 + 4 * v97->wordCount + 12);
                --v96;
              }

              while (v96);
            }
          }

          while ((v92 & 1) != 0);
          v88 = &v109[v112[2]];
          v87 = v114 + 1;
          v6 = __srca;
        }

        while (v114 + 1 < a4[1]);
      }
    }

    return 0;
  }

  v117 = *(a1 + 32);
  if (v6 == kMIDIProtocol_2_0 && v8 == 1)
  {
    if (!a4[1])
    {
      return 0;
    }

    v38 = 0;
    v39 = a4 + 2;
    v108 = v117 + 33;
    while (1)
    {
      v104 = v38;
      v40 = v39[2];
      v100 = v39 + 3;
      v102 = v39;
      v127 = v39 + 3;
      v128 = v40;
      v129 = *v39;
      v130 = 0;
      *words = v7;
      v124 = a2;
      v125 = a3;
      *v126 = *v119;
      *&v126[3] = *&v119[3];
      v122 = 2;
      v133 = MIDIEventListInit(&evtlist, kMIDIProtocol_2_0);
      v121 = 0;
      v120 = 0uLL;
      do
      {
        v41 = MIDI::EventList::PacketReader::read(&v127, &v121, &v120);
        v42 = v41;
        if (!v41)
        {
          v50 = evtlist.numPackets;
          if (!evtlist.numPackets)
          {
            break;
          }

          v51 = evtlist.packet;
          do
          {
            v136.protocol = evtlist.protocol;
            v136.numPackets = 1;
            memcpy(v136.packet, v51, sizeof(v136.packet));
            AUEventSchedule::midiEventList((*words + 48), v124, v125, &v136);
            v51 = (v51 + 4 * v51->wordCount + 12);
            --v50;
          }

          while (v50);
          continue;
        }

        *&v136.protocol = &v133;
        v136.packet[0].timeStamp = &evtlist;
        *&v136.packet[0].wordCount = &v121;
        *&v136.packet[0].words[1] = words;
        *&v136.packet[0].words[3] = &v122;
        v43 = v120;
        if (v120 >> 28 != 2)
        {
          v52 = &v120;
          goto LABEL_156;
        }

        *v131 = 0;
        v132 = 0;
        v44 = BYTE3(v120) & 0xF;
        v45 = BYTE3(v120) & 0xF | 0x40;
        v46 = BYTE2(v120);
        v47 = v117[32];
        v48 = *v117;
        v49 = BYTE2(v120) >> 4;
        if (v47)
        {
          goto LABEL_108;
        }

        if ((v48 & 0xFF0000) != 0)
        {
          if (((v48 ^ v120) & 0xF0000) != 0)
          {
            v47 = 1;
            v117[32] = 1;
          }

          else if (v49 == 11)
          {
            v47 = 1;
            if (BYTE1(v48) > 0x62u)
            {
              switch(BYTE1(v48))
              {
                case 'c':
                  v53 = v120 & 0xFF00;
                  v54 = 25088;
                  goto LABEL_105;
                case 'd':
                  v53 = v120 & 0xFF00;
                  v54 = 25856;
                  goto LABEL_105;
                case 'e':
                  v53 = v120 & 0xFF00;
                  v54 = 25600;
                  goto LABEL_105;
              }
            }

            else
            {
              if (!BYTE1(v48))
              {
                if ((v120 & 0xFF00) == 0x2000)
                {
                  goto LABEL_181;
                }

                goto LABEL_107;
              }

              if (BYTE1(v48) == 32)
              {
                if ((v120 & 0xFF00) == 0)
                {
                  goto LABEL_181;
                }
              }

              else if (BYTE1(v48) == 98)
              {
                v53 = v120 & 0xFF00;
                v54 = 25344;
LABEL_105:
                if (v53 == v54 || (v120 & 0xF0DF00) == 0xB00600)
                {
LABEL_181:
                  *(v117 + 1) = v120;
                  goto LABEL_121;
                }

                goto LABEL_107;
              }
            }
          }

          else
          {
            v47 = (v48 & 0xDF00) != 0 || v49 != 12;
          }
        }

        else
        {
          v47 = 1;
          if ((v120 & 0xF00000) == 0xB00000 && v49 == 11)
          {
            if (BYTE1(v120) - 98 < 4 || BYTE1(v120) == 32 || !BYTE1(v120))
            {
              *v117 = v120;
              goto LABEL_121;
            }

LABEL_107:
            v47 = 1;
          }
        }

LABEL_108:
        if (BYTE2(v48) && v47)
        {
          v117[32] = 1;
          *(&v135 + 1) = 0;
          LODWORD(v135) = v48 & 0xFF00 | (BYTE2(v48) << 16) & 0x80FFFFFF | ((BYTE3(v43) & 0xF | 0x40) << 24);
          v56 = v48;
          v57 = v48 << 25;
          if (v56 >= 0x41)
          {
            v58 = (v56 & 0x3F) << 19;
            if (v58)
            {
              do
              {
                v57 |= v58;
                v59 = v58 > 0x3F;
                v58 >>= 6;
              }

              while (v59);
            }
          }

          DWORD1(v135) = v57;
          _ZZN4MIDI27readUMPToSegmentedEventListINS_22MIDI_1_to_2_TranslatorENS_9EventList12PacketReaderEZZ41__AUAudioUnit_scheduleMIDIEventListBlock_EUb2_E3__4EEv14MIDIProtocolIDRT_RT0_T1_ENKUlRKNS_15UniversalPacketEE_clESD_(&v136, &v135);
          *v117 = 0;
          *(&v135 + 1) = 0;
          v60 = *(v117 + 4);
          if (BYTE2(v60))
          {
            LODWORD(v135) = *(v117 + 4) & 0xFF00 | (BYTE2(*(v117 + 4)) << 16) | (v45 << 24);
            v61 = v60;
            v62 = v60 << 25;
            v63 = v61 >= 0x41;
            v64 = (v61 & 0x3F) << 19;
            if (v63 && v64 != 0)
            {
              do
              {
                v62 |= v64;
                v59 = v64 > 0x3F;
                v64 >>= 6;
              }

              while (v59);
            }

            DWORD1(v135) = v62;
            _ZZN4MIDI27readUMPToSegmentedEventListINS_22MIDI_1_to_2_TranslatorENS_9EventList12PacketReaderEZZ41__AUAudioUnit_scheduleMIDIEventListBlock_EUb2_E3__4EEv14MIDIProtocolIDRT_RT0_T1_ENKUlRKNS_15UniversalPacketEE_clESD_(&v136, &v135);
            *(v117 + 4) = 0;
          }

          v44 = BYTE3(v43) & 0xF;
          *&v108[128 * v44 + 8 * ((v43 >> 16) & 0xF)] = 0;
          v46 = BYTE2(v43);
        }

LABEL_121:
        v66 = (v43 >> 8) & 0x7F;
        v67 = v43 & 0x7F;
        if (BYTE2(v43) >> 4 <= 0xAu)
        {
          if (v49 != 8)
          {
            if (v49 != 9)
            {
              if (v49 == 10)
              {
                v131[0] = (v46 << 16) | (v45 << 24) | (v66 << 8);
                v70 = v43 << 25;
                if (v67 >= 0x41)
                {
                  v71 = (v43 & 0x3F) << 19;
                  if (v71)
                  {
                    do
                    {
                      v70 |= v71;
                      v59 = v71 > 0x3F;
                      v71 >>= 6;
                    }

                    while (v59);
                  }
                }

                goto LABEL_154;
              }

              goto LABEL_155;
            }

            if ((v43 & 0x7F) == 0)
            {
              v46 -= 16;
              v67 = 64;
            }
          }

          v131[0] = (v45 << 24) | (v46 << 16) | (v66 << 8);
          v79 = v67 << 9;
          if (v67 >= 0x41)
          {
            v80 = 8 * (v67 & 0x3F);
            if (v80)
            {
              do
              {
                v79 |= v80;
                v59 = v80 > 0x3F;
                v80 >>= 6;
              }

              while (v59);
            }
          }

          v70 = v79 << 16;
          goto LABEL_154;
        }

        if (BYTE2(v43) >> 4 > 0xCu)
        {
          if (v49 == 13)
          {
            v131[0] = (v46 << 16) | (v45 << 24);
            v78 = v43 >> 8 << 25;
            if (v66 >= 0x41)
            {
              v81 = ((v43 >> 8) & 0x3F) << 19;
              if (v81)
              {
                do
                {
                  v78 |= v81;
                  v59 = v81 > 0x3F;
                  v81 >>= 6;
                }

                while (v59);
              }
            }

            v131[1] = v78;
          }

          else if (v49 == 14)
          {
            v131[0] = (v46 << 16) | (v45 << 24);
            v72 = v66 | (v67 << 7);
            v70 = v72 << 18;
            if (v72 > 0x2000)
            {
              for (i = 32 * (v72 & 0x1FFF); i; i >>= 13)
              {
                v70 |= i;
              }
            }

            goto LABEL_154;
          }

          goto LABEL_155;
        }

        if (v49 != 11)
        {
          v68 = &v108[128 * v44 + 8 * (WORD1(v43) & 0xF)];
          if (*v68)
          {
            v69 = v117[32] ^ 1;
          }

          else
          {
            v69 = 0;
          }

          v131[0] = v69 | (v46 << 16) | (v45 << 24);
          HIBYTE(v131[1]) = BYTE1(v43) & 0x7F;
          BYTE1(v131[1]) = v68[2];
          LOBYTE(v131[1]) = v68[3];
          *v68 = 0;
          *v117 = 0u;
          *(v117 + 1) = 0u;
          goto LABEL_155;
        }

        v74 = &v108[128 * v44];
        v75 = (v43 >> 16) & 0xF;
        v76 = &v74[8 * v75];
        if (((v43 >> 8) & 0x7F) <= 0x61)
        {
          if (((v43 >> 8) & 0x7F) > 0x1F)
          {
            if (v66 != 32)
            {
              if (v66 == 38)
              {
                v77 = v43 & 0x7F;
                goto LABEL_168;
              }

LABEL_189:
              v131[0] = (v46 << 16) | (v45 << 24) | (v66 << 8);
              v70 = v43 << 25;
              if (v67 >= 0x41)
              {
                v86 = (v43 & 0x3F) << 19;
                if (v86)
                {
                  do
                  {
                    v70 |= v86;
                    v59 = v86 > 0x3F;
                    v86 >>= 6;
                  }

                  while (v59);
                }
              }

LABEL_154:
              v131[1] = v70;
LABEL_155:
              v52 = v131;
LABEL_156:
              _ZZN4MIDI27readUMPToSegmentedEventListINS_22MIDI_1_to_2_TranslatorENS_9EventList12PacketReaderEZZ41__AUAudioUnit_scheduleMIDIEventListBlock_EUb2_E3__4EEv14MIDIProtocolIDRT_RT0_T1_ENKUlRKNS_15UniversalPacketEE_clESD_(&v136, v52);
              continue;
            }

            v76[3] = v67;
          }

          else
          {
            if (v66)
            {
              if (v66 != 6)
              {
                goto LABEL_189;
              }

              v77 = 0;
              v76[6] = v67;
LABEL_168:
              v76[7] = v77;
              if ((v117[32] & 1) != 0 || !v76[1])
              {
                goto LABEL_189;
              }

              if (v76[1] == 1)
              {
                v82 = 32;
              }

              else
              {
                v82 = 48;
              }

              v131[0] = (v45 << 24) | ((v82 | v75) << 16) | (v76[4] << 8) | v76[5];
              v83 = v77 | (v76[6] << 7);
              v84 = v83 << 18;
              if (v83 > 0x2000)
              {
                for (j = 32 * (v83 & 0x1FFF); j; j >>= 13)
                {
                  v84 |= j;
                }
              }

              v131[1] = v84;
              *v117 = 0u;
              *(v117 + 1) = 0u;
              goto LABEL_155;
            }

            v76[2] = v67;
          }

          *v76 = 1;
          goto LABEL_188;
        }

        if (((v43 >> 8) & 0x7F) > 0x63)
        {
          if (v66 != 100)
          {
            if (v66 != 101)
            {
              goto LABEL_189;
            }

            v76[1] = 1;
            goto LABEL_180;
          }

          v76[1] = 1;
        }

        else
        {
          if (v66 != 98)
          {
            v76[1] = 2;
LABEL_180:
            v76[4] = v67;
            goto LABEL_188;
          }

          v76[1] = 2;
        }

        v76[5] = v67;
LABEL_188:
        if (v117[32])
        {
          goto LABEL_189;
        }
      }

      while ((v42 & 1) != 0);
      v39 = &v100[v102[2]];
      v38 = v104 + 1;
      if (v104 + 1 >= a4[1])
      {
        return 0;
      }
    }
  }

  v12 = v6 == kMIDIProtocol_1_0 && v8 == 2;
  if (v12 && a4[1])
  {
    v13 = 0;
    v14 = (a4 + 2);
    v98 = v117 + 2084;
    do
    {
      v118 = v13;
      v15 = v14[2];
      v113 = v14 + 3;
      __src = v14;
      v127 = v14 + 3;
      v128 = v15;
      v129 = *v14;
      v130 = 0;
      *words = v7;
      v124 = a2;
      v125 = a3;
      *v126 = *v119;
      *&v126[3] = *&v119[3];
      LODWORD(v121) = 1;
      *&v120 = MIDIEventListInit(&evtlist, kMIDIProtocol_1_0);
      v132 = 0;
      v133 = 0;
      *v131 = 0;
      do
      {
        v16 = MIDI::EventList::PacketReader::read(&v127, &v133, v131);
        v17 = v16;
        if (!v16)
        {
          v19 = evtlist.numPackets;
          if (!evtlist.numPackets)
          {
            break;
          }

          v20 = evtlist.packet;
          do
          {
            v136.protocol = evtlist.protocol;
            v136.numPackets = 1;
            memcpy(v136.packet, v20, sizeof(v136.packet));
            AUEventSchedule::midiEventList((*words + 48), v124, v125, &v136);
            v20 = (v20 + 4 * v20->wordCount + 12);
            --v19;
          }

          while (v19);
          continue;
        }

        *&v136.protocol = &v120;
        v136.packet[0].timeStamp = &evtlist;
        *&v136.packet[0].wordCount = &v133;
        *&v136.packet[0].words[1] = words;
        *&v136.packet[0].words[3] = &v121;
        if (((1 << (v131[0] >> 28)) & 0xA02F) != 0)
        {
          v18 = v131;
          goto LABEL_23;
        }

        if (v131[0] >> 28 == 4)
        {
          v21 = HIBYTE(v131[0]) & 0xF | 0x20;
          v22 = v131[1];
          v23 = BYTE2(v131[0]) >> 4;
          if (v23 > 0xB)
          {
            switch(v23)
            {
              case 0xCu:
                v34 = v21 << 24;
                if (v131[0])
                {
                  v107 = BYTE2(v131[0]) << 16;
                  v36 = (v107 - 0x100000) | (v21 << 24);
                  v135 = (v107 - 0x100000) & 0xFFFFFF80 | (v21 << 24) | (v131[1] >> 8) & 0x7F;
                  v37 = v131[1];
                  v111 = v21 << 24;
                  _ZZN4MIDI27readUMPToSegmentedEventListINS_22MIDI_1_to_2_TranslatorENS_9EventList12PacketReaderEZZ41__AUAudioUnit_scheduleMIDIEventListBlock_EUb2_E3__4EEv14MIDIProtocolIDRT_RT0_T1_ENKUlRKNS_15UniversalPacketEE_clESD_(&v136, &v135);
                  v135 = v36 & 0xFFFFFF80 | v37 & 0x7F | 0x2000;
                  _ZZN4MIDI27readUMPToSegmentedEventListINS_22MIDI_1_to_2_TranslatorENS_9EventList12PacketReaderEZZ41__AUAudioUnit_scheduleMIDIEventListBlock_EUb2_E3__4EEv14MIDIProtocolIDRT_RT0_T1_ENKUlRKNS_15UniversalPacketEE_clESD_(&v136, &v135);
                  v35 = v107;
                  v34 = v111;
                  v22 = v37;
                }

                else
                {
                  v35 = BYTE2(v131[0]) << 16;
                }

                HIDWORD(v135) = 0;
                *(&v135 + 4) = 0;
                v25 = v35 | HIWORD(v22) & 0x7F00 | v34;
                goto LABEL_59;
              case 0xDu:
                HIDWORD(v135) = 0;
                *(&v135 + 4) = 0;
                v25 = (BYTE2(v131[0]) << 16) | (v21 << 24) | (v131[1] >> 25 << 8);
                goto LABEL_59;
              case 0xEu:
                HIDWORD(v135) = 0;
                *(&v135 + 4) = 0;
                v25 = (v131[1] >> 10) & 0x7F00 | (BYTE2(v131[0]) << 16) | (v21 << 24) | (v131[1] >> 25);
                goto LABEL_59;
            }
          }

          else
          {
            if (v23 - 8 < 4)
            {
              v24 = v23 == 9;
              if (v131[1] >> 25)
              {
                v24 = v131[1] >> 25;
              }

              HIDWORD(v135) = 0;
              *(&v135 + 4) = 0;
              v25 = v24 | (BYTE2(v131[0]) << 16) | (v21 << 24) | v131[0] & 0x7F00;
LABEL_59:
              LODWORD(v135) = v25;
              v18 = &v135;
LABEL_23:
              _ZZN4MIDI27readUMPToSegmentedEventListINS_22MIDI_1_to_2_TranslatorENS_9EventList12PacketReaderEZZ41__AUAudioUnit_scheduleMIDIEventListBlock_EUb2_E3__4EEv14MIDIProtocolIDRT_RT0_T1_ENKUlRKNS_15UniversalPacketEE_clESD_(&v136, v18);
              continue;
            }

            if (v23 - 2 < 2)
            {
              v26 = (v131[0] >> 16) & 0xF;
              v27 = &v98[48 * (HIBYTE(v131[0]) & 0xF) + 3 * v26];
              v28 = (v131[0] >> 8) & 0x7F;
              v29 = v131[0] & 0x7F;
              if ((v131[0] & 0x100000) != 0)
              {
                v30 = 2;
              }

              else
              {
                v30 = 1;
              }

              if (v30 == *v27 && v28 == v27[1])
              {
                v31 = v26 | 0xB0;
                if (v29 == v27[2])
                {
                  v110 = (v31 << 16) | (v21 << 24);
                  goto LABEL_52;
                }
              }

              else
              {
                v31 = v26 | 0xB0;
              }

              if ((v131[0] & 0x100000) != 0)
              {
                v32 = 25344;
              }

              else
              {
                v32 = 25856;
              }

              v110 = (v21 << 24) | (v31 << 16);
              v99 = v32 | v110;
              v135 = v32 | v110 | v28;
              v106 = v131[1];
              v103 = BYTE1(v131[0]) & 0x7F;
              v101 = v30;
              _ZZN4MIDI27readUMPToSegmentedEventListINS_22MIDI_1_to_2_TranslatorENS_9EventList12PacketReaderEZZ41__AUAudioUnit_scheduleMIDIEventListBlock_EUb2_E3__4EEv14MIDIProtocolIDRT_RT0_T1_ENKUlRKNS_15UniversalPacketEE_clESD_(&v136, &v135);
              v135 = (v99 | v29) - 256;
              _ZZN4MIDI27readUMPToSegmentedEventListINS_22MIDI_1_to_2_TranslatorENS_9EventList12PacketReaderEZZ41__AUAudioUnit_scheduleMIDIEventListBlock_EUb2_E3__4EEv14MIDIProtocolIDRT_RT0_T1_ENKUlRKNS_15UniversalPacketEE_clESD_(&v136, &v135);
              v22 = v106;
              *v27 = v101;
              v27[1] = v103;
              v27[2] = v29;
LABEL_52:
              v33 = (v22 >> 18) & 0x7F;
              v135 = v110 | (v22 >> 25) | 0x600;
              _ZZN4MIDI27readUMPToSegmentedEventListINS_22MIDI_1_to_2_TranslatorENS_9EventList12PacketReaderEZZ41__AUAudioUnit_scheduleMIDIEventListBlock_EUb2_E3__4EEv14MIDIProtocolIDRT_RT0_T1_ENKUlRKNS_15UniversalPacketEE_clESD_(&v136, &v135);
              if (v33)
              {
                HIDWORD(v135) = 0;
                *(&v135 + 4) = 0;
                v25 = v33 | v110 | 0x2600;
                goto LABEL_59;
              }
            }
          }
        }
      }

      while ((v17 & 1) != 0);
      v14 = &v113[__src[2]];
      v13 = v118 + 1;
    }

    while (v118 + 1 < a4[1]);
  }

  return 0;
}

- (AUScheduleMIDIEventBlock)scheduleMIDIEventBlock
{
  if ([(AUAudioUnit *)self isMusicDeviceOrEffect])
  {
    if (self->_renderResourcesAllocated)
    {
      v3 = *&self->_anon_f8[76];
    }

    else
    {
      v3 = [(AUAudioUnit *)self AudioUnitMIDIProtocol];
    }

    if (!self->_shouldUseMIDI2 || v3 == 0)
    {
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __37__AUAudioUnit_scheduleMIDIEventBlock__block_invoke;
      aBlock[3] = &__block_descriptor_40_e18_v36__0q8C16q20r_28l;
      aBlock[4] = &self->_realtimeState;
      v6 = _Block_copy(aBlock);
    }

    else
    {
      if (v3 == kMIDIProtocol_2_0)
      {
        operator new();
      }

      if (v3 == kMIDIProtocol_1_0)
      {
        operator new();
      }

      v6 = &__block_literal_global_6867;
    }

    v4 = _Block_copy(v6);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t __37__AUAudioUnit_scheduleMIDIEventBlock__block_invoke_2(uint64_t a1, uint64_t a2, char a3, unsigned int a4, uint64_t a5)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 48);
  v8 = _ZN5caulk16inplace_functionIFvPKN4MIDI9EventListEELm48ELm8ENS_23inplace_function_detail9rt_vtableEE16k_wrapper_vtableIZZ37__AUAudioUnit_scheduleMIDIEventBlock_EUb_E3__1EE;
  v9[0] = v5;
  v9[1] = a2;
  v10 = a3;
  MIDI::LegacyMIDIConverter<MIDI::IdentityTranslator>::convertLegacyDataToEventList(a5, a4, 0, &v8);
  result = (v8[3])(v9);
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __37__AUAudioUnit_scheduleMIDIEventBlock__block_invoke_29(uint64_t a1, uint64_t a2, char a3, unsigned int a4, uint64_t a5)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  v9 = _ZN5caulk16inplace_functionIFvPKN4MIDI9EventListEELm48ELm8ENS_23inplace_function_detail9rt_vtableEE16k_wrapper_vtableIZZ37__AUAudioUnit_scheduleMIDIEventBlock_EUb0_E3__2EE;
  v10[0] = v6;
  v10[1] = a2;
  v11 = a3;
  MIDI::LegacyMIDIConverter<MIDI::MIDI_1_to_2_Translator>::convertLegacyDataToEventList(v5, a5, a4, 0, &v9);
  result = (v9[3])(v10);
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)isMusicDeviceOrEffect
{
  componentType = self->_componentDescription.componentType;
  result = 1;
  if ((componentType - 1635085670 > 0xF || ((1 << (componentType - 102)) & 0x8009) == 0) && componentType != 1635086953 && componentType != 1635086957)
  {
    return 0;
  }

  return result;
}

- (void)setV2Parameter:(unint64_t)a3 value:(float)a4 bufferOffset:(unsigned int)a5 sequenceNumber:(unsigned int)a6
{
  v11 = XAtomicPoolAllocator::alloc(self->_realtimeState.eventSchedule.mAddedEventQueue.mEnqueueHead.__a_.__a_value);
  *v11 = 0;
  *(v11 + 1) = a5 | 0xFFFFFFFE00000000;
  v11[16] = 1;
  *(v11 + 17) = 0;
  *(v11 + 5) = 0;
  *(v11 + 3) = a3;
  *(v11 + 8) = a4;
  *(v11 + 9) = a6;
  *(v11 + 5) = pthread_self();
  v12 = *&self->_realtimeState.eventSchedule.mAddedEventQueue.mDequeueHead.padding[8];
  atomic_store(v12, v11);
  v13 = v12;
  atomic_compare_exchange_strong(&self->_realtimeState.eventSchedule.mAddedEventQueue.mDequeueHead.padding[8], &v13, v11);
  if (v13 != v12)
  {
    v14 = v13;
    do
    {
      atomic_store(v13, v11);
      atomic_compare_exchange_strong(&self->_realtimeState.eventSchedule.mAddedEventQueue.mDequeueHead.padding[8], &v14, v11);
      v15 = v14 == v13;
      v13 = v14;
    }

    while (!v15);
  }

  if ((atomic_exchange(&self->_realtimeState.auv2GetParameterSynchronizer, 1u) & 1) == 0)
  {
    v16 = *self->_realtimeState.eventSchedule.mAddedEventQueue.mDequeueHead.padding;
    mObserver = self->_realtimeState.contextChangeGenerator.var0.__val_.mObserver;
    v19 = PreviousRenderTime::parameterWatchdogFireTime(&self->_realtimeState.renderBlockType);
    if (*MEMORY[0x1E69E3C08])
    {
      v20 = v18;
      v21 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x1E69E3C08]);
      *(v21 + 16) = 0;
      *(v21 + 24) = v16;
      *(v21 + 32) = mObserver;
      *(v21 + 40) = &self->_realtimeState.eventSchedule.mScheduledParameterRefresher;
      *(v21 + 48) = v19;
      *(v21 + 56) = v20;
      *v21 = &unk_1F032EFB0;
      *(v21 + 8) = 0;

      caulk::concurrent::messenger::enqueue((v16 + 128), v21);
    }

    else
    {
      __break(1u);
    }
  }
}

- (AUScheduleParameterBlock)scheduleParameterBlock
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __37__AUAudioUnit_scheduleParameterBlock__block_invoke;
  aBlock[3] = &__block_descriptor_40_e17_v32__0q8I16Q20f28l;
  aBlock[4] = &self->_realtimeState;
  v2 = _Block_copy(aBlock);
  v3 = _Block_copy(v2);

  return v3;
}

char *__37__AUAudioUnit_scheduleParameterBlock__block_invoke(uint64_t a1, uint64_t a2, int a3, uint64_t a4, float a5)
{
  v9 = *(a1 + 32);
  result = XAtomicPoolAllocator::alloc(*(v9 + 56));
  *result = 0;
  *(result + 1) = a2;
  if (a3)
  {
    v11 = 2;
  }

  else
  {
    v11 = 1;
  }

  result[16] = v11;
  *(result + 17) = 0;
  result[19] = 0;
  *(result + 5) = a3;
  *(result + 3) = a4;
  *(result + 8) = a5;
  *(result + 9) = 0;
  *(result + 5) = 0;
  v12 = *(v9 + 72);
  atomic_store(v12, result);
  v13 = v12;
  atomic_compare_exchange_strong((v9 + 72), &v13, result);
  if (v13 != v12)
  {
    v14 = v13;
    do
    {
      atomic_store(v13, result);
      atomic_compare_exchange_strong((v9 + 72), &v14, result);
      v15 = v14 == v13;
      v13 = v14;
    }

    while (!v15);
  }

  return result;
}

- (void)deliverV2Parameters:(const AURenderEvent *)next
{
  for (i = [(AUAudioUnit *)self parameterTree];
  {
    if (next->head.eventType == AURenderEventParameter && next->MIDIEventsList.eventList.packet[0].wordCount)
    {
      v4 = [i parameterWithAddress:next->parameter.parameterAddress];
      v6 = v4;
      if (v4)
      {
        *&v5 = next->parameter.value;
        [v4 setValue:10 originator:v5];
      }
    }
  }
}

- (AURenderBlock)renderBlock
{
  v3 = [(AUAudioUnit *)self internalRenderBlock];
  if (v3)
  {
    v4 = [(AUAudioUnit *)self renderContextObserver];
    v13 = v4;
    if (v4)
    {
      std::optional<RenderContextChangeGenerator>::emplace[abi:ne200100]<void({block_pointer} {__strong}&)(AudioUnitRenderContext const*),void>(&self->_anon_f8[48], &v13);
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = 1;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v5 = 2;
      }

      else
      {
        v5 = 3;
      }
    }

    *&self->_anon_f8[72] = v5;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __26__AUAudioUnit_renderBlock__block_invoke;
    v9[3] = &unk_1E72C1198;
    p_realtimeState = &self->_realtimeState;
    v12 = self;
    v10 = v3;
    v7 = _Block_copy(v9);
    v6 = _Block_copy(v7);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t __26__AUAudioUnit_renderBlock__block_invoke(uint64_t a1, unsigned int *a2, AudioTimeStamp *a3, uint64_t a4, uint64_t a5, AudioBufferList *a6)
{
  v11 = *a2;
  if ((*a2 & 0x8000) == 0)
  {
    v22 = v11 | 4;
    RenderObserverList::callAll((*(a1 + 40) + 8), &v22, a3, a4, a5, 0);
  }

  v12 = *(a1 + 40);
  caulk::pooled_semaphore_mutex::_lock(v12);
  v13 = *(a1 + 40);
  if (caulk::pooled_semaphore_mutex::try_lock((v13 + 4)))
  {
    v14 = *(a1 + 40);
    if (*(v14 + 248) == 1)
    {
      RenderContextChangeGenerator::checkChange((v14 + 232));
      v14 = *(a1 + 40);
    }

    v16 = AUEventSchedule::preRender((v14 + 48), a3->mSampleTime, a4, *(v14 + 256) == 3);
    if (v15)
    {
      AUEventSchedule::dispatchV2SetParamEvents((*(a1 + 40) + 48), v15, (v11 >> 15) & 1);
    }

    if ((v11 & 0x8000) != 0 && *(*(a1 + 40) + 256) != 1)
    {
      [*(a1 + 48) deliverV2Parameters:v16];
      v17 = 0;
    }

    else
    {
      v17 = (*(*(a1 + 32) + 16))();
    }

    AUEventSchedule::postRender((*(a1 + 40) + 48), v16);
    caulk::pooled_semaphore_mutex::_unlock((v13 + 4));
  }

  else
  {
    v17 = 0;
  }

  caulk::pooled_semaphore_mutex::_unlock(v12);
  if ((v11 & 0x8000) == 0)
  {
    if (v17)
    {
      v18 = 264;
    }

    else
    {
      v18 = 8;
    }

    v21 = *a2 | v18;
    RenderObserverList::callAll((*(a1 + 40) + 8), &v21, a3, a4, a5, a6);
  }

  return v17;
}

- (void)scheduledParameterRefresher
{
  if (self->_isLoadedInProcess)
  {
    {
      {
        AUScheduledParameterRefresher2::AUScheduledParameterRefresher2(&AUScheduledParameterRefresher2::hostInstance(void)::global);
      }
    }

    return &AUScheduledParameterRefresher2::hostInstance(void)::global;
  }

  else
  {
    {
      AUScheduledParameterRefresher2::AUScheduledParameterRefresher2(&AUScheduledParameterRefresher2::remoteServiceInstance(void)::global);
    }

    return &AUScheduledParameterRefresher2::remoteServiceInstance(void)::global;
  }
}

- (uint32_t)componentVersion
{
  result = self->_componentVersion;
  if (!result)
  {
    outVersion = 0;
    AudioComponentGetVersion([(AUAudioUnit *)self component], &outVersion);
    result = outVersion;
    self->_componentVersion = outVersion;
  }

  return result;
}

- (NSString)manufacturerName
{
  v2 = [(AUAudioUnit *)self componentName];
  v3 = [v2 rangeOfString:@": "];
  if (v4)
  {
    v5 = [v2 substringToIndex:v3];
  }

  else
  {
    v5 = &stru_1F0340B48;
  }

  return v5;
}

- (NSString)audioUnitName
{
  v2 = [(AUAudioUnit *)self componentName];
  v3 = [v2 rangeOfString:@": "];
  if (v4)
  {
    v5 = [v2 substringFromIndex:v3 + v4];

    v2 = v5;
  }

  return v2;
}

- (NSString)componentName
{
  componentName = self->_componentName;
  if (!componentName)
  {
    v6 = 0;
    Impl_AudioGetComponentInfo([(AUAudioUnit *)self component], 0, &v6);
    if (v6)
    {
      v4 = self->_componentName;
      self->_componentName = &v6->isa;
    }

    componentName = self->_componentName;
  }

  return componentName;
}

- (AudioComponent)component
{
  [(AUAudioUnit *)self resolveComponent];
  cntrl = self->_component.__cntrl_;
  if (!cntrl)
  {
    return 0;
  }

  v4 = std::__shared_weak_count::lock(cntrl);
  if (!v4)
  {
    return 0;
  }

  ptr = self->_component.__ptr_;
  std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  return ptr;
}

- (void)resolveComponent
{
  cntrl = self->_component.__cntrl_;
  if (!cntrl || (v4 = std::__shared_weak_count::lock(cntrl)) == 0 || (ptr = self->_component.__ptr_, std::__shared_weak_count::__release_shared[abi:ne200100](v4), !ptr))
  {
    Next = AudioComponentFindNext(0, &self->_componentDescription);
    if (Next)
    {
      v7 = (**Next)(Next);
      if (v7)
      {
        v9 = *(v7 + 8);
        v8 = *(v7 + 16);
        if (v8)
        {
          atomic_fetch_add_explicit((v8 + 16), 1uLL, memory_order_relaxed);
        }

        v10 = self->_component.__cntrl_;
        self->_component.__ptr_ = v9;
        self->_component.__cntrl_ = v8;
        if (v10)
        {

          std::__shared_weak_count::__release_weak(v10);
        }
      }
    }
  }
}

- (void)invalidateAudioUnit
{
  caulk::pooled_semaphore_mutex::_lock((&self->_realtimeState.renderObserverList.mObservers.mActiveList.mHead + 4));
  self->_realtimeState.contextChangeGenerator.var0.__val_.mObserver = 0;

  caulk::pooled_semaphore_mutex::_unlock((&self->_realtimeState.renderObserverList.mObservers.mActiveList.mHead + 4));
}

- (void)dealloc
{
  if (self->_renderResourcesAllocated)
  {
    [(AUAudioUnit *)self deallocateRenderResources];
  }

  [(AUAudioUnit *)self resolveComponent];
  cntrl = self->_component.__cntrl_;
  if (cntrl)
  {
    v4 = std::__shared_weak_count::lock(cntrl);
    if (v4)
    {
      ptr = self->_component.__ptr_;
      if (ptr)
      {
        atomic_fetch_add(ptr + 34, 0xFFFFFFFF);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }

  [(AUAudioUnit *)self tearDownExtension];

  v6.receiver = self;
  v6.super_class = AUAudioUnit;
  [(AUAudioUnit *)&v6 dealloc];
}

- (AUAudioUnit)initWithComponentDescription:(AudioComponentDescription *)componentDescription options:(AudioComponentInstantiationOptions)options error:(NSError *)outError
{
  v46 = *MEMORY[0x1E69E9840];
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  if ([(AUAudioUnit *)self isMemberOfClass:objc_opt_class()])
  {

    Next = AudioComponentFindNext(0, componentDescription);
    if (Next)
    {
      memset(&v41, 0, sizeof(v41));
      Impl_AudioGetComponentInfo(Next, &v41, 0);
      componentFlags = v41.componentFlags;
      if ((v41.componentFlags & 8) == 0 || AllowUnsafeMainThreadServicing("[AUAudioUnit initWithComponentDescription:options:error:]"))
      {
        v35 = 0;
        v36 = &v35;
        v37 = 0x3032000000;
        v38 = __Block_byref_object_copy__6886;
        v39 = __Block_byref_object_dispose__6887;
        v40 = 0;
        v29 = 0;
        v30 = &v29;
        v31 = 0x3032000000;
        v32 = __Block_byref_object_copy__6886;
        v33 = __Block_byref_object_dispose__6887;
        v34 = 0;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __58__AUAudioUnit_initWithComponentDescription_options_error___block_invoke;
        aBlock[3] = &unk_1E72C1170;
        componentFlagsMask = componentDescription->componentFlagsMask;
        v26 = *&componentDescription->componentType;
        v27 = componentFlagsMask;
        v28 = options;
        aBlock[4] = &v35;
        aBlock[5] = &v29;
        v12 = _Block_copy(aBlock);
        v13 = v12;
        if ((componentFlags & 8) != 0)
        {
          v14 = Synchronously_ServicingMainRunLoop(v12);
        }

        else
        {
          v14 = Synchronously(v12);
        }

        if (!v14)
        {
          if (!gAudioComponentLogCategory)
          {
            operator new();
          }

          v20 = *gAudioComponentLogCategory;
          if (os_log_type_enabled(*gAudioComponentLogCategory, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v43 = "AUAudioUnit.mm";
            v44 = 1024;
            v45 = 555;
            _os_log_impl(&dword_18F5DF000, v20, OS_LOG_TYPE_ERROR, "%25s:%-5d Timeout running task synchronously", buf, 0x12u);
          }
        }

        if (outError)
        {
          *outError = v30[5];
        }

        v16 = v36[5];

        _Block_object_dispose(&v29, 8);
        _Block_object_dispose(&v35, 8);

        goto LABEL_25;
      }

      if (outError)
      {
        v19 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-10863 userInfo:0];
        goto LABEL_17;
      }
    }

    else if (outError)
    {
      v19 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-3000 userInfo:0];
LABEL_17:
      v16 = 0;
      *outError = v19;
      goto LABEL_25;
    }

    v16 = 0;
    goto LABEL_25;
  }

  v24.receiver = self;
  v24.super_class = AUAudioUnit;
  v15 = [(AUAudioUnit *)&v24 init];
  v16 = v15;
  if (v15)
  {
    v17 = *&componentDescription->componentType;
    *(v15 + 142) = componentDescription->componentFlagsMask;
    *(v15 + 552) = v17;
    *(v15 + 12) = 512;
    *(v15 + 7) = 128;
    v18 = *(v15 + 43);
    *(v15 + 43) = 0;

    v16->_isLoadedInProcess = 1;
    v16->_requestViewControllerSynchronously = 0;
    v16->_hostMIDIProtocol = 0;
    v16->_shouldUseMIDI2 = 1;
  }

LABEL_25:
  v22 = *MEMORY[0x1E69E9840];
  return v16;
}

void __58__AUAudioUnit_initWithComponentDescription_options_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 48);
  v5 = *(a1 + 68);
  v11 = *(a1 + 64);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __58__AUAudioUnit_initWithComponentDescription_options_error___block_invoke_2;
  v7[3] = &unk_1E72C1148;
  v9 = *(a1 + 32);
  v10 = v4;
  v8 = v3;
  v6 = v3;
  [AUAudioUnit instantiateWithComponentDescription:&v10 options:v5 completionHandler:v7];
}

void __58__AUAudioUnit_initWithComponentDescription_options_error___block_invoke_2(void *a1, void *a2, void *a3)
{
  v7 = a2;
  v6 = a3;
  objc_storeStrong((*(a1[5] + 8) + 40), a2);
  objc_storeStrong((*(a1[6] + 8) + 40), a3);
  (*(a1[4] + 16))();
}

- (AUAudioUnit)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[AUAudioUnit init]"];
  [v3 raise:*MEMORY[0x1E695D940] format:{@"Don't call %@.", v4}];

  return 0;
}

+ (id)auAudioUnitForAudioUnit:(OpaqueAudioComponentInstance *)a3
{
  Component = AudioComponentInstanceGetComponent(a3);
  ComponentInfo = Impl_AudioGetComponentInfo(Component, &v15, 0);
  v6 = 0;
  if (!ComponentInfo)
  {
    outData = 0;
    ioDataSize = 8;
    Property = AudioUnitGetProperty(a3, 0x739u, 0, 0, &outData, &ioDataSize);
    if (Property == -10879)
    {
      if (v15.componentType == 1635086197)
      {
        AUOutputUnitClass = getAUOutputUnitClass(v15.componentSubType);
      }

      else
      {
        AUOutputUnitClass = AUAudioUnitV2Bridge;
      }

      v11 = [AUOutputUnitClass alloc];
      v12 = v15;
      v6 = [v11 initWithAudioUnit:a3 description:&v12];
    }

    else
    {
      v9 = Property;
      v6 = 0;
      if (!v9)
      {
        v6 = outData;
      }
    }
  }

  return v6;
}

+ (void)registerSubclass:(Class)cls asComponentDescription:(AudioComponentDescription *)componentDescription name:(NSString *)name version:(UInt32)version
{
  v14[6] = *MEMORY[0x1E69E9840];
  v7 = name;
  GlobalComponentPluginMgr(v14);
  if (EmbeddedComponentManager::isComponentDescriptionVisible(componentDescription->componentFlags, v8))
  {
    v9 = v7;
    v10 = v9;
    if (v9)
    {
      CFRetain(v9);
      v11 = CFGetTypeID(v10);
      if (v11 != CFStringGetTypeID())
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Could not construct");
      }
    }

    operator new();
  }

  if (v14[0])
  {
    std::recursive_mutex::unlock(v14[0]);
  }

  v13 = *MEMORY[0x1E69E9840];
}

void __86__AUAudioUnit_XH__internalInitWithExtension_componentDescription_instance_completion___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setStrongInstance:0];

  (*(*(a1 + 32) + 16))();
}

void __86__AUAudioUnit_XH__internalInitWithExtension_componentDescription_instance_completion___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v13 = a2;
  v7 = a3;
  v8 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v10 = WeakRetained;
  if (v8)
  {
    v11 = [WeakRetained completionBlock];
    (v11)[2](v11, v8);
  }

  else
  {
    [WeakRetained setCachedViewController:v7];

    v10 = objc_loadWeakRetained((a1 + 32));
    v12 = [v10 completionBlock];
    [v10 _open:v13 completion:v12];

    v11 = v10;
  }
}

void __86__AUAudioUnit_XH__internalInitWithExtension_componentDescription_instance_completion___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (v5)
  {
    v8 = [WeakRetained completionBlock];
    v8[2](v8, v5);
  }

  else
  {
    v8 = WeakRetained;
    v9 = [v8 completionBlock];
    [v8 _open:v10 completion:v9];
  }
}

void __99__AUAudioUnit_XH_instantiateWithExtension_componentDescription_instance_options_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6 = v3;
  if (v3)
  {
    (*(v4 + 16))(v4, 0, v3);
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    (*(v4 + 16))(v4, WeakRetained, 0);
  }
}

@end