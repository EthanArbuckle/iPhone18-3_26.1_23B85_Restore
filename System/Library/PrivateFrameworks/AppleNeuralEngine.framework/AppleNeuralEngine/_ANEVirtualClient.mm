@interface _ANEVirtualClient
+ (BOOL)setCodeSigningIdentity:(__CFDictionary *)identity;
+ (BOOL)shouldUsePrecompiledPath:(id)path options:(id)options shouldUseChunking:(BOOL *)chunking chunkingThreshold:(unint64_t)threshold;
+ (BOOL)updateError:(__IOSurface *)error errorLength:(unint64_t)length error:(id *)a5;
+ (BOOL)updateError:(__IOSurface *)error errorLength:(unint64_t)length errorCode:(int64_t)code error:(id *)a6;
+ (__CFDictionary)getCFDictionaryFromIOSurface:(__IOSurface *)surface dataLength:(unint64_t)length;
+ (__IOSurface)copyLLIRBundleToIOSurface:(id)surface writtenDataSize:(unint64_t *)size;
+ (__IOSurface)createIOSurface:(unint64_t)surface ioSID:(unsigned int *)d;
+ (char)dictionaryGetInt8ForKey:(__CFDictionary *)key key:(__CFString *)a4;
+ (id)dictionaryGetNSStringForKey:(__CFDictionary *)key key:(__CFString *)a4;
+ (id)getCodeSigningIdentity;
+ (id)getDictionaryWithJSONEncodingFromIOSurface:(__IOSurface *)surface withArchivedDataSize:(unint64_t)size;
+ (id)getObjectFromIOSurface:(__IOSurface *)surface classType:(Class)type length:(unint64_t)length;
+ (id)sharedConnection;
+ (id)updatePerformanceStats:(__IOSurface *)stats performanceStatsLength:(unint64_t)length perfStatsRawIOSurfaceRef:(__IOSurface *)ref performanceStatsRawLength:(unint64_t)rawLength hwExecutionTime:(unint64_t)time;
+ (int64_t)dictionaryGetInt64ForKey:(__CFDictionary *)key key:(__CFString *)a4;
+ (unint64_t)dictionaryGetUInt64ForKey:(__CFDictionary *)key key:(__CFString *)a4;
+ (unsigned)dictionaryGetUInt32ForKey:(__CFDictionary *)key key:(__CFString *)a4;
+ (void)copyDictionaryDataToStruct:(VirtANEModel *)struct dictionary:(__CFDictionary *)dictionary;
+ (void)freeModelFileIOSurfaces:(__CFArray *)surfaces;
+ (void)getCodeSigningIdentity;
+ (void)printIOSurfaceDataInBytes:(__IOSurface *)bytes;
+ (void)printStruct:(VirtANEModel *)struct;
- (BOOL)beginRealTimeTask;
- (BOOL)compileModel:(id)model options:(id)options qos:(unsigned int)qos error:(id *)error;
- (BOOL)compiledModelExistsFor:(id)for;
- (BOOL)compiledModelExistsMatchingHash:(id)hash;
- (BOOL)copyAllModelFiles:(id)files dictionary:(__CFDictionary *)dictionary ioSurfaceRefs:(__CFArray *)refs;
- (BOOL)copyFilesInDirectoryToIOSurfaces:(id)surfaces ioSurfaceRefs:(__CFArray *)refs ioSurfaceSizes:(id)sizes fileNames:(id)names;
- (BOOL)doEvaluateWithModel:(id)model options:(id)options request:(id)request qos:(unsigned int)qos completionEvent:(id)event error:(id *)error;
- (BOOL)doEvaluateWithModelLegacy:(id)legacy options:(id)options request:(id)request qos:(unsigned int)qos completionEvent:(id)event error:(id *)error;
- (BOOL)doMapIOSurfacesWithModel:(id)model request:(id)request cacheInference:(BOOL)inference error:(id *)error;
- (BOOL)echo:(id)echo;
- (BOOL)endRealTimeTask;
- (BOOL)evaluateWithModel:(id)model options:(id)options request:(id)request qos:(unsigned int)qos error:(id *)error;
- (BOOL)hasANE;
- (BOOL)isInternalBuild;
- (BOOL)loadModelNewInstance:(id)instance options:(id)options modelInstParams:(id)params qos:(unsigned int)qos error:(id *)error;
- (BOOL)mapIOSurfacesWithModel:(id)model request:(id)request cacheInference:(BOOL)inference error:(id *)error;
- (BOOL)sessionHintWithModel:(id)model hint:(id)hint options:(id)options report:(id)report error:(id *)error;
- (BOOL)transferFileToHostWithPath:(id)path withChunkSize:(unsigned int)size withUUID:(id)d withModelInputPath:(id)inputPath overWriteFileNameWith:(id)with;
- (BOOL)unloadModel:(id)model options:(id)options qos:(unsigned int)qos error:(id *)error;
- (BOOL)updateError:(VMData *)error error:(id *)a4;
- (BOOL)validateEnvironmentForPrecompiledBinarySupport;
- (BuildVersionInfo)exchangeBuildVersionInfo;
- (DeviceExtendedInfo)getDeviceInfo;
- (_ANEVirtualClient)initWithSingletonAccess;
- (__CFDictionary)callIOUserClientWithDictionary:(unsigned int)dictionary inDictionary:(__CFDictionary *)inDictionary error:(id *)error;
- (__CFDictionary)validateNetworkCreate:(unint64_t)create uuid:(id)uuid function:(id)function directoryPath:(id)path scratchPadPath:(id)padPath milTextData:(id)data;
- (__CFDictionary)validateNetworkCreateMLIR:(unint64_t)r validation_params:(__CFDictionary *)validation_params;
- (__IOSurface)copyDictionaryToIOSurface:(id)surface copiedDataSize:(unint64_t *)size createdIOSID:(unsigned int *)d;
- (__IOSurface)copyToIOSurface:(char *)surface size:(unint64_t)size ioSID:(unsigned int *)d;
- (__IOSurface)copyToIOSurface:(id)surface length:(unint64_t)length ioSID:(unsigned int *)d;
- (id)aneArchitectureTypeStr;
- (id)doJsonParsingMatchWeightName:(id)name;
- (id)getModelAttribute:(VMData *)attribute;
- (id)hostBuildVersionStr;
- (id)parallelDecompressedData:(id)data;
- (id)readWeightFilename:(id)filename;
- (id)updatePerformanceStats:(VMData *)stats;
- (int64_t)aneBoardtype;
- (unint64_t)getValidateNetworkVersion;
- (unint64_t)negotiatedCapabilityMask;
- (unint64_t)outputDictIOSurfaceSize;
- (unsigned)negotiatedDataInterfaceVersion;
- (unsigned)numANECores;
- (unsigned)numANEs;
- (void)checkKernReturnValue:(int)value selector:(unsigned int)selector outParams:(VirtANEModel *)params;
- (void)copyErrorValue:(VMData *)value;
- (void)copyErrorValue:(__CFDictionary *)value vmData:(VMData *)data;
- (void)copyModel:(id)model options:(id)options vmData:(VMData *)data;
- (void)copyModelMetaData:(id)data options:(id)options dictionary:(__CFDictionary *)dictionary vmData:(VMData *)vmData;
- (void)copyModelOptionFiles:(id)files options:(id)options dictionary:(__CFDictionary *)dictionary vmData:(VMData *)data;
- (void)copyModelOptionFiles:(id)files options:(id)options vmData:(VMData *)data;
- (void)copyOptions:(id)options dictionary:(__CFDictionary *)dictionary vmData:(VMData *)data;
- (void)copyOptions:(id)options vmData:(VMData *)data;
- (void)dealloc;
- (void)exchangeBuildVersionInfo;
- (void)getDeviceInfo;
- (void)initWithSingletonAccess;
- (void)purgeCompiledModel:(id)model;
- (void)purgeCompiledModelMatchingHash:(id)hash;
- (void)releaseIOSurfaces:(VMData *)surfaces;
- (void)sendGuestBuildVersion;
@end

@implementation _ANEVirtualClient

+ (id)sharedConnection
{
  if (+[_ANEVirtualClient sharedConnection]::onceToken != -1)
  {
    +[_ANEVirtualClient sharedConnection];
  }

  v3 = +[_ANEVirtualClient sharedConnection]::client;

  return v3;
}

- (_ANEVirtualClient)initWithSingletonAccess
{
  v23 = *MEMORY[0x1E69E9840];
  v22.receiver = self;
  v22.super_class = _ANEVirtualClient;
  v3 = [(_ANEVirtualClient *)&v22 init];
  if (!v3)
  {
    goto LABEL_32;
  }

  v4 = +[_ANELog framework];
  v5 = gLogger;
  gLogger = v4;

  if (!+[_ANEDeviceInfo isVirtualMachine])
  {
    if (os_log_type_enabled(gLogger, OS_LOG_TYPE_DEBUG))
    {
      [_ANEVirtualClient initWithSingletonAccess];
    }

    goto LABEL_8;
  }

  v6 = dispatch_queue_create("com.apple.ane.avc", 0);
  queue = v3->_queue;
  v3->_queue = v6;

  v3->_connect = 0;
  existing = 0;
  v8 = IOServiceMatching("AppleVirtIONeuralEngineDevice");
  if (!IOServiceGetMatchingServices(*MEMORY[0x1E696CD60], v8, &existing))
  {
    if (!existing)
    {
      if (os_log_type_enabled(gLogger, OS_LOG_TYPE_DEBUG))
      {
        [_ANEVirtualClient initWithSingletonAccess];
      }

      goto LABEL_8;
    }

    v10 = 0;
    v11 = MEMORY[0x1E69E9A60];
    while (1)
    {
      v12 = IOIteratorNext(existing);
      if (!v12)
      {
        break;
      }

      if (os_log_type_enabled(gLogger, OS_LOG_TYPE_DEBUG))
      {
        [(_ANEVirtualClient *)&v19 initWithSingletonAccess];
      }

      if (IOServiceOpen(v12, *v11, 0, &v3->_connect))
      {
        if (os_log_type_enabled(gLogger, OS_LOG_TYPE_DEBUG))
        {
          [_ANEVirtualClient initWithSingletonAccess];
        }

        v10 = 1;
        break;
      }

      v10 = 1;
      IOObjectRelease(v12);
    }

    IOObjectRelease(existing);
    v13 = os_log_type_enabled(gLogger, OS_LOG_TYPE_DEBUG);
    if ((v10 & 1) == 0)
    {
      if (v13)
      {
        [_ANEVirtualClient initWithSingletonAccess];
      }

      goto LABEL_8;
    }

    if (v13)
    {
      [_ANEVirtualClient initWithSingletonAccess];
    }

    output = 0;
    outputCnt = 1;
    if (IOConnectCallScalarMethod(v3->_connect, 0, 0, 0, &output, &outputCnt))
    {
      v14 = gLogger;
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        [_ANEVirtualClient initWithSingletonAccess];
      }

      goto LABEL_8;
    }

    if (os_log_type_enabled(gLogger, OS_LOG_TYPE_DEBUG))
    {
      [_ANEVirtualClient initWithSingletonAccess];
    }

LABEL_32:
    [(_ANEVirtualClient *)v3 exchangeBuildVersionInfo];
    v9 = v3;
    goto LABEL_33;
  }

  if (os_log_type_enabled(gLogger, OS_LOG_TYPE_DEBUG))
  {
    [_ANEVirtualClient initWithSingletonAccess];
  }

LABEL_8:
  v9 = 0;
LABEL_33:

  v15 = *MEMORY[0x1E69E9840];
  return v9;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = _ANEVirtualClient;
  [(_ANEVirtualClient *)&v2 dealloc];
}

- (BOOL)doEvaluateWithModelLegacy:(id)legacy options:(id)options request:(id)request qos:(unsigned int)qos completionEvent:(id)event error:(id *)error
{
  v385 = *MEMORY[0x1E69E9840];
  legacyCopy = legacy;
  optionsCopy = options;
  requestCopy = request;
  eventCopy = event;
  bzero(v296, 0x1728uLL);
  v235 = requestCopy;
  selfCopy = self;
  v233 = optionsCopy;
  if (([(_ANEVirtualClient *)self negotiatedCapabilityMask]& 4) != 0)
  {
    v231 = legacyCopy;
    if (os_log_type_enabled(0, OS_LOG_TYPE_DEBUG))
    {
      [_ANEVirtualClient(Private) doEvaluateWithModelLegacy:options:request:qos:completionEvent:error:];
    }

    v325[0] = 0;
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v24 = *MEMORY[0x1E695E480];
    v25 = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    modelURL = [v231 modelURL];

    if (modelURL)
    {
      [(_ANEVirtualClient *)self copyAllModelFiles:v231 dictionary:Mutable ioSurfaceRefs:v25];
    }

    v229 = v25;
    [(_ANEVirtualClient *)self copyModelMetaData:v231 options:v233 dictionary:Mutable vmData:v296];
    [(_ANEVirtualClient *)self copyOptions:v233 dictionary:Mutable vmData:v296];
    [(_ANEVirtualClient *)self copyErrorValue:Mutable vmData:v296];
    valuePtr = 0;
    v291 = 0u;
    v292 = 0u;
    v293 = 0u;
    v294 = 0u;
    inputArray = [requestCopy inputArray];
    v28 = [inputArray countByEnumeratingWithState:&v291 objects:v384 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v292;
      do
      {
        for (i = 0; i != v29; ++i)
        {
          if (*v292 != v30)
          {
            objc_enumerationMutation(inputArray);
          }

          ID = IOSurfaceGetID([*(*(&v291 + 1) + 8 * i) ioSurface]);
          v33 = valuePtr;
          v308[valuePtr] = ID;
          v34 = CFStringCreateWithFormat(0, 0, @"inputArray%d", v33);
          v35 = CFNumberCreate(v24, kCFNumberSInt32Type, &v308[valuePtr]);
          CFDictionarySetValue(Mutable, v34, v35);
          CFRelease(v35);
          CFRelease(v34);
          if (os_log_type_enabled(0, OS_LOG_TYPE_DEBUG))
          {
            [_ANEVirtualClient(Private) doEvaluateWithModelLegacy:&valuePtr options:v308 request:? qos:? completionEvent:? error:?];
          }

          ++valuePtr;
        }

        v29 = [inputArray countByEnumeratingWithState:&v291 objects:v384 count:16];
      }

      while (v29);
    }

    v36 = CFNumberCreate(v24, kCFNumberSInt32Type, &valuePtr);
    CFDictionarySetValue(Mutable, @"inputArrayCount", v36);
    CFRelease(v36);
    valuePtr = 0;
    v287 = 0u;
    v288 = 0u;
    v289 = 0u;
    v290 = 0u;
    obja = [v235 inputIndexArray];
    v37 = [obja countByEnumeratingWithState:&v287 objects:v381 count:16];
    if (v37)
    {
      v38 = v37;
      v39 = *v288;
      do
      {
        for (j = 0; j != v38; ++j)
        {
          if (*v288 != v39)
          {
            objc_enumerationMutation(obja);
          }

          v41 = *(*(&v287 + 1) + 8 * j);
          unsignedIntValue = [v41 unsignedIntValue];
          v43 = valuePtr;
          v308[valuePtr + 64] = unsignedIntValue;
          v44 = CFStringCreateWithFormat(0, 0, @"inputIndexArray%d", v43);
          v45 = CFNumberCreate(v24, kCFNumberSInt32Type, &v308[valuePtr + 64]);
          CFDictionarySetValue(Mutable, v44, v45);
          CFRelease(v45);
          CFRelease(v44);
          if (os_log_type_enabled(0, OS_LOG_TYPE_DEBUG))
          {
            [_ANEVirtualClient(Private) doEvaluateWithModelLegacy:v380 options:v41 request:? qos:? completionEvent:? error:?];
          }

          ++valuePtr;
        }

        v38 = [obja countByEnumeratingWithState:&v287 objects:v381 count:16];
      }

      while (v38);
    }

    v46 = CFNumberCreate(v24, kCFNumberSInt32Type, &valuePtr);
    CFDictionarySetValue(Mutable, @"inputIndexArrayCount", v46);
    CFRelease(v46);
    valuePtr = 0;
    v283 = 0u;
    v284 = 0u;
    v285 = 0u;
    v286 = 0u;
    outputArray = [v235 outputArray];
    v48 = [outputArray countByEnumeratingWithState:&v283 objects:v379 count:16];
    if (v48)
    {
      v49 = v48;
      v50 = *v284;
      do
      {
        for (k = 0; k != v49; ++k)
        {
          if (*v284 != v50)
          {
            objc_enumerationMutation(outputArray);
          }

          v52 = IOSurfaceGetID([*(*(&v283 + 1) + 8 * k) ioSurface]);
          v53 = valuePtr;
          v309[valuePtr] = v52;
          v54 = CFStringCreateWithFormat(0, 0, @"outputArray%d", v53);
          v55 = CFNumberCreate(v24, kCFNumberSInt32Type, &v309[valuePtr]);
          CFDictionarySetValue(Mutable, v54, v55);
          CFRelease(v55);
          CFRelease(v54);
          if (os_log_type_enabled(0, OS_LOG_TYPE_DEBUG))
          {
            [_ANEVirtualClient(Private) doEvaluateWithModelLegacy:&valuePtr options:v309 request:? qos:? completionEvent:? error:?];
          }

          ++valuePtr;
        }

        v49 = [outputArray countByEnumeratingWithState:&v283 objects:v379 count:16];
      }

      while (v49);
    }

    v56 = CFNumberCreate(v24, kCFNumberSInt32Type, &valuePtr);
    CFDictionarySetValue(Mutable, @"outputArrayCount", v56);
    CFRelease(v56);
    valuePtr = 0;
    v279 = 0u;
    v280 = 0u;
    v281 = 0u;
    v282 = 0u;
    objb = [v235 outputIndexArray];
    v57 = [objb countByEnumeratingWithState:&v279 objects:v376 count:16];
    if (v57)
    {
      v58 = v57;
      v59 = *v280;
      do
      {
        for (m = 0; m != v58; ++m)
        {
          if (*v280 != v59)
          {
            objc_enumerationMutation(objb);
          }

          v61 = *(*(&v279 + 1) + 8 * m);
          unsignedIntValue2 = [v61 unsignedIntValue];
          v63 = valuePtr;
          v309[valuePtr + 64] = unsignedIntValue2;
          v64 = CFStringCreateWithFormat(0, 0, @"outputIndexArray%d", v63);
          v65 = CFNumberCreate(v24, kCFNumberSInt32Type, &v309[valuePtr + 64]);
          CFDictionarySetValue(Mutable, v64, v65);
          CFRelease(v65);
          CFRelease(v64);
          if (os_log_type_enabled(0, OS_LOG_TYPE_DEBUG))
          {
            [_ANEVirtualClient(Private) doEvaluateWithModelLegacy:v61 options:? request:? qos:? completionEvent:? error:?];
          }

          ++valuePtr;
        }

        v58 = [objb countByEnumeratingWithState:&v279 objects:v376 count:16];
      }

      while (v58);
    }

    v66 = CFNumberCreate(v24, kCFNumberSInt32Type, &valuePtr);
    CFDictionarySetValue(Mutable, @"outputIndexArrayCount", v66);
    CFRelease(v66);
    if (os_log_type_enabled(0, OS_LOG_TYPE_DEBUG))
    {
      [_ANEVirtualClient(Private) doEvaluateWithModelLegacy:v235 options:? request:? qos:? completionEvent:? error:?];
    }

    weightsBuffer = [v235 weightsBuffer];
    ioSurface = [weightsBuffer ioSurface];

    if (ioSurface)
    {
      weightsBuffer2 = [v235 weightsBuffer];
      v310 = IOSurfaceGetID([weightsBuffer2 ioSurface]);

      v70 = CFNumberCreate(v24, kCFNumberSInt32Type, &v310);
      CFDictionarySetValue(Mutable, @"ioSIDWeightsBufferIndex", v70);
      CFRelease(v70);
      if (os_log_type_enabled(0, OS_LOG_TYPE_DEBUG))
      {
        [_ANEVirtualClient(Private) doEvaluateWithModelLegacy:? options:? request:? qos:? completionEvent:? error:?];
      }
    }

    else
    {
      v310 = 0;
    }

    procedureIndex = [v235 procedureIndex];
    unsignedLongLongValue = [procedureIndex unsignedLongLongValue];

    v79 = CFNumberCreate(v24, kCFNumberSInt64Type, &unsignedLongLongValue);
    CFDictionarySetValue(Mutable, @"procedureIndex", v79);
    CFRelease(v79);
    transactionHandle = [v235 transactionHandle];
    unsignedLongLongValue2 = [transactionHandle unsignedLongLongValue];

    v81 = CFNumberCreate(v24, kCFNumberSInt64Type, &unsignedLongLongValue2);
    CFDictionarySetValue(Mutable, @"transactionHandle", v81);
    CFRelease(v81);
    valuePtr = 0;
    v275 = 0u;
    v276 = 0u;
    v277 = 0u;
    v278 = 0u;
    objc = [v235 perfStatsArray];
    v82 = [objc countByEnumeratingWithState:&v275 objects:v373 count:16];
    if (v82)
    {
      v83 = v82;
      v84 = *v276;
      do
      {
        for (n = 0; n != v83; ++n)
        {
          if (*v276 != v84)
          {
            objc_enumerationMutation(objc);
          }

          v86 = *(*(&v275 + 1) + 8 * n);
          stats = [v86 stats];
          v88 = IOSurfaceGetID([stats ioSurface]);
          v313[valuePtr] = v88;

          v89 = CFStringCreateWithFormat(0, 0, @"ioSIDPerfStats%d", valuePtr);
          v90 = CFNumberCreate(v24, kCFNumberSInt32Type, &v313[valuePtr]);
          CFDictionarySetValue(Mutable, v89, v90);
          CFRelease(v90);
          CFRelease(v89);
          statType = [v86 statType];
          v92 = valuePtr;
          v314[valuePtr] = statType;
          v93 = CFStringCreateWithFormat(0, 0, @"perfStatsType%d", v92);
          v94 = CFNumberCreate(v24, kCFNumberSInt32Type, &v314[valuePtr]);
          CFDictionarySetValue(Mutable, v93, v94);
          CFRelease(v94);
          CFRelease(v93);
          if (os_log_type_enabled(0, OS_LOG_TYPE_DEBUG))
          {
            [_ANEVirtualClient(Private) doEvaluateWithModelLegacy:&valuePtr options:v313 request:? qos:? completionEvent:? error:?];
          }

          if (os_log_type_enabled(0, OS_LOG_TYPE_DEBUG))
          {
            [_ANEVirtualClient(Private) doEvaluateWithModelLegacy:&valuePtr options:v314 request:? qos:? completionEvent:? error:?];
          }

          ++valuePtr;
        }

        v83 = [objc countByEnumeratingWithState:&v275 objects:v373 count:16];
      }

      while (v83);
    }

    v95 = CFNumberCreate(v24, kCFNumberSInt32Type, &valuePtr);
    CFDictionarySetValue(Mutable, @"perfStatsCount", v95);
    CFRelease(v95);
    v321 = 0;
    v322 = 0;
    v323 = 0;
    v96 = MEMORY[0x1E695DF20];
    v97 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:4096];
    v98 = [v96 dictionaryWithObjectsAndKeys:{v97, *MEMORY[0x1E696CE30], 0}];

    v99 = IOSurfaceCreate(v98);
    buffer = v99;
    if (!v99)
    {
      if (os_log_type_enabled(0, OS_LOG_TYPE_ERROR))
      {
        [_ANEVirtualClient(Private) doEvaluateWithModelLegacy:a2 options:? request:? qos:? completionEvent:? error:?];
      }

      legacyCopy = v231;
      v163 = v233;
      v164 = eventCopy;
      v165 = v235;
      goto LABEL_199;
    }

    v322 = IOSurfaceGetID(v99);
    v100 = CFNumberCreate(v24, kCFNumberSInt32Type, &v322);
    CFDictionarySetValue(Mutable, @"ioSIDPerformanceStatsIndex", v100);
    CFRelease(v100);
    if (os_log_type_enabled(0, OS_LOG_TYPE_DEBUG))
    {
      [_ANEVirtualClient(Private) doEvaluateWithModelLegacy:a2 options:&v322 request:? qos:? completionEvent:? error:?];
    }

    sharedEvents = [v235 sharedEvents];

    if (sharedEvents)
    {
      bzero(&v339, 0x1460uLL);
      sharedEvents2 = [v235 sharedEvents];
      signalEvents = [sharedEvents2 signalEvents];
      v340 = [signalEvents count];

      if (v340)
      {
        v104 = CFStringCreateWithFormat(0, 0, @"signalEventsCount");
        v105 = CFNumberCreate(v24, kCFNumberSInt64Type, &v340);
        CFDictionarySetValue(Mutable, v104, v105);
        CFRelease(v105);
        CFRelease(v104);
      }

      if (os_log_type_enabled(0, OS_LOG_TYPE_DEBUG))
      {
        [_ANEVirtualClient(Private) doEvaluateWithModelLegacy:a2 options:&v340 request:? qos:? completionEvent:? error:?];
      }

      v273 = 0u;
      v274 = 0u;
      v271 = 0u;
      v272 = 0u;
      sharedEvents3 = [v235 sharedEvents];
      signalEvents2 = [sharedEvents3 signalEvents];

      v237 = signalEvents2;
      objd = [signalEvents2 countByEnumeratingWithState:&v271 objects:v338 count:16];
      if (objd)
      {
        v108 = 0;
        v239 = *v272;
        do
        {
          for (ii = 0; ii != objd; ++ii)
          {
            if (*v272 != v239)
            {
              objc_enumerationMutation(v237);
            }

            v110 = *(*(&v271 + 1) + 8 * ii);
            sharedEvent = [v110 sharedEvent];
            v112 = &v362[5 * v108];
            *v112 = [sharedEvent eventPort];

            *(v112 + 1) = [v110 eventType];
            v113 = v112 + 4;
            v112[1] = [v110 value];
            v114 = v112 + 1;
            *(v112 + 4) = [v110 symbolIndex];
            v115 = v112 + 2;
            v112[3] = [v110 agentMask];
            v116 = v112 + 3;
            *(v112 + 32) = 0;
            if (os_log_type_enabled(0, OS_LOG_TYPE_DEBUG))
            {
              v127 = NSStringFromSelector(a2);
              v128 = *v112;
              v129 = v112[1];
              v332 = 138412802;
              v333 = v127;
              v334 = 1024;
              v335 = v128;
              v336 = 2048;
              v337 = v129;
              _os_log_debug_impl(&dword_1AD246000, 0, OS_LOG_TYPE_DEBUG, "%@: ANEVirtualClient signal events port is %#x and value is %llu\n", &v332, 0x1Cu);
            }

            v117 = CFStringCreateWithFormat(0, 0, @"signalEvents%dport", v108);
            v118 = CFNumberCreate(v24, kCFNumberSInt32Type, v112);
            CFDictionarySetValue(Mutable, v117, v118);
            CFRelease(v118);
            CFRelease(v117);
            v119 = CFStringCreateWithFormat(0, 0, @"signalEvents%dtype", v108);
            v120 = CFNumberCreate(v24, kCFNumberSInt32Type, v113);
            CFDictionarySetValue(Mutable, v119, v120);
            CFRelease(v120);
            CFRelease(v119);
            v121 = CFStringCreateWithFormat(0, 0, @"signalEvents%dValue", v108);
            v122 = CFNumberCreate(v24, kCFNumberSInt64Type, v114);
            CFDictionarySetValue(Mutable, v121, v122);
            CFRelease(v122);
            CFRelease(v121);
            v123 = CFStringCreateWithFormat(0, 0, @"signalEvents%dSymbolIndex", v108);
            v124 = CFNumberCreate(v24, kCFNumberSInt32Type, v115);
            CFDictionarySetValue(Mutable, v123, v124);
            CFRelease(v124);
            CFRelease(v123);
            v125 = CFStringCreateWithFormat(0, 0, @"signalEvents%dAgentMask", v108);
            v126 = CFNumberCreate(v24, kCFNumberSInt64Type, v116);
            CFDictionarySetValue(Mutable, v125, v126);
            CFRelease(v126);
            CFRelease(v125);
            v108 = (v108 + 1);
          }

          objd = [v237 countByEnumeratingWithState:&v271 objects:v338 count:16];
        }

        while (objd);
      }

      if (eventCopy)
      {
        signalEvents3 = [eventCopy signalEvents];
        v131 = [signalEvents3 count];

        if (v131 != 2 && os_log_type_enabled(0, OS_LOG_TYPE_ERROR))
        {
          [_ANEVirtualClient(Private) doEvaluateWithModelLegacy:options:request:qos:completionEvent:error:];
        }

        v132 = 0;
        v133 = 1;
        while (1)
        {
          v134 = v133;
          signalEvents4 = [eventCopy signalEvents];
          v136 = [signalEvents4 objectAtIndexedSubscript:v132];
          value = [v136 value];

          signalEvents5 = [eventCopy signalEvents];
          v139 = [signalEvents5 objectAtIndexedSubscript:v132];
          sharedEvent2 = [v139 sharedEvent];
          eventPort = [sharedEvent2 eventPort];
          if (value == 4097)
          {
            v363[0] = eventPort;

            signalEvents6 = [eventCopy signalEvents];
            v143 = [signalEvents6 objectAtIndexedSubscript:v132];
            v363[1] = [v143 eventType];

            signalEvents7 = [eventCopy signalEvents];
            v145 = [signalEvents7 objectAtIndexedSubscript:v132];
            value2 = [v145 value];

            signalEvents8 = [eventCopy signalEvents];
            v147 = [signalEvents8 objectAtIndexedSubscript:v132];
            symbolIndex = [v147 symbolIndex];

            v366 = 0;
            if (os_log_type_enabled(0, OS_LOG_TYPE_DEBUG))
            {
              v148 = NSStringFromSelector(a2);
              v332 = 138412802;
              v333 = v148;
              v334 = 1024;
              v335 = v363[0];
              v336 = 2048;
              v337 = value2;
              v149 = "%@: ANEVirtualClient success completionEvent signal events port is %#x and value is %llu\n";
LABEL_111:
              _os_log_debug_impl(&dword_1AD246000, 0, OS_LOG_TYPE_DEBUG, v149, &v332, 0x1Cu);
            }
          }

          else
          {
            v367[0] = eventPort;

            signalEvents9 = [eventCopy signalEvents];
            v151 = [signalEvents9 objectAtIndexedSubscript:v132];
            v367[1] = [v151 eventType];

            signalEvents10 = [eventCopy signalEvents];
            v153 = [signalEvents10 objectAtIndexedSubscript:v132];
            value3 = [v153 value];

            signalEvents11 = [eventCopy signalEvents];
            v155 = [signalEvents11 objectAtIndexedSubscript:v132];
            symbolIndex2 = [v155 symbolIndex];

            v370 = 0;
            if (os_log_type_enabled(0, OS_LOG_TYPE_DEBUG))
            {
              v148 = NSStringFromSelector(a2);
              v332 = 138412802;
              v333 = v148;
              v334 = 1024;
              v335 = v367[0];
              v336 = 2048;
              v337 = value3;
              v149 = "%@: ANEVirtualClient error completionEvent signal events port is %#x and value is %llu\n";
              goto LABEL_111;
            }
          }

          v133 = 0;
          v132 = 1;
          if ((v134 & 1) == 0)
          {
            v196 = CFStringCreateWithFormat(0, 0, @"successEventport");
            v197 = CFNumberCreate(v24, kCFNumberSInt32Type, v363);
            CFDictionarySetValue(Mutable, v196, v197);
            CFRelease(v197);
            CFRelease(v196);
            v198 = CFStringCreateWithFormat(0, 0, @"errorEventport");
            v199 = CFNumberCreate(v24, kCFNumberSInt32Type, v367);
            CFDictionarySetValue(Mutable, v198, v199);
            CFRelease(v199);
            CFRelease(v198);
            break;
          }
        }
      }

      sharedEvents4 = [v235 sharedEvents];
      waitEvents = [sharedEvents4 waitEvents];
      v339 = [waitEvents count];

      v202 = v339 != 0;
      if (v339)
      {
        v203 = CFStringCreateWithFormat(0, 0, @"waitEventsCount");
        v204 = CFNumberCreate(v24, kCFNumberSInt64Type, &v339);
        CFDictionarySetValue(Mutable, v203, v204);
        CFRelease(v204);
        CFRelease(v203);
        if (os_log_type_enabled(0, OS_LOG_TYPE_DEBUG))
        {
          [_ANEVirtualClient(Private) doEvaluateWithModelLegacy:a2 options:? request:? qos:? completionEvent:? error:?];
        }
      }

      v238 = v202;
      if (os_log_type_enabled(0, OS_LOG_TYPE_DEBUG))
      {
        [_ANEVirtualClient(Private) doEvaluateWithModelLegacy:a2 options:&v339 request:? qos:? completionEvent:? error:?];
      }

      v269 = 0u;
      v270 = 0u;
      v267 = 0u;
      v268 = 0u;
      sharedEvents5 = [v235 sharedEvents];
      waitEvents2 = [sharedEvents5 waitEvents];

      v240 = waitEvents2;
      v207 = [waitEvents2 countByEnumeratingWithState:&v267 objects:v331 count:16];
      if (v207)
      {
        v208 = v207;
        v209 = 0;
        obje = *v268;
        do
        {
          for (jj = 0; jj != v208; ++jj)
          {
            if (*v268 != obje)
            {
              objc_enumerationMutation(v240);
            }

            v211 = *(*(&v267 + 1) + 8 * jj);
            sharedEvent3 = [v211 sharedEvent];
            v213 = &v341 + 10 * v209;
            *v213 = [sharedEvent3 eventPort];

            v213[1] = [v211 eventType];
            v214 = v213 + 1;
            *(v213 + 1) = [v211 value];
            v215 = v213 + 2;
            v213[4] = 0;
            *(v213 + 3) = 0;
            *(v213 + 32) = 0;
            v216 = CFStringCreateWithFormat(0, 0, @"waitEvents%dport", v209);
            v217 = CFNumberCreate(v24, kCFNumberSInt32Type, v213);
            CFDictionarySetValue(Mutable, v216, v217);
            CFRelease(v217);
            CFRelease(v216);
            v218 = CFStringCreateWithFormat(0, 0, @"waitEvents%dtype", v209);
            v219 = CFNumberCreate(v24, kCFNumberSInt32Type, v214);
            CFDictionarySetValue(Mutable, v218, v219);
            CFRelease(v219);
            CFRelease(v218);
            v220 = CFStringCreateWithFormat(0, 0, @"waitEvents%dValue", v209);
            v221 = CFNumberCreate(v24, kCFNumberSInt64Type, v215);
            CFDictionarySetValue(Mutable, v220, v221);
            CFRelease(v221);
            CFRelease(v220);
            v209 = (v209 + 1);
          }

          v208 = [v240 countByEnumeratingWithState:&v267 objects:v331 count:16];
        }

        while (v208);
      }

      v222 = v238;
    }

    else
    {
      v222 = 0;
    }

    v193 = selfCopy;
    errorCopy2 = error;
    v223 = [(_ANEVirtualClient *)selfCopy callIOUserClientWithDictionary:4 inDictionary:Mutable error:error];
    CFRelease(Mutable);
    legacyCopy = v231;
    modelURL2 = [v231 modelURL];

    v163 = v233;
    v164 = eventCopy;
    if (modelURL2)
    {
      [_ANEVirtualClient freeModelFileIOSurfaces:v229];
      CFRelease(v229);
    }

    v225 = os_log_type_enabled(0, OS_LOG_TYPE_DEBUG);
    if (v223)
    {
      if (v225)
      {
        [_ANEVirtualClient(Private) doEvaluateWithModelLegacy:a2 options:? request:? qos:? completionEvent:? error:?];
      }

      [_ANEVirtualClient copyDictionaryDataToStruct:&v324 dictionary:v223];
      v195 = v325[0] == 1;
      if (os_log_type_enabled(0, OS_LOG_TYPE_DEBUG))
      {
        [_ANEVirtualClient(Private) doEvaluateWithModelLegacy:a2 options:v325 request:? qos:? completionEvent:? error:?];
      }

      v165 = v235;
      goto LABEL_196;
    }

    if (v225)
    {
      [_ANEVirtualClient(Private) doEvaluateWithModelLegacy:a2 options:? request:? qos:? completionEvent:? error:?];
    }

    v165 = v235;
    if (v222)
    {
      if (os_log_type_enabled(0, OS_LOG_TYPE_DEBUG))
      {
        [_ANEVirtualClient(Private) doEvaluateWithModelLegacy:a2 options:? request:? qos:? completionEvent:? error:?];
      }

      v195 = 1;
      goto LABEL_196;
    }

    [(_ANEVirtualClient *)selfCopy releaseIOSurfaces:v296];
    if (os_log_type_enabled(0, OS_LOG_TYPE_ERROR))
    {
      [_ANEVirtualClient(Private) doEvaluateWithModelLegacy:error options:? request:? qos:? completionEvent:? error:?];
    }

LABEL_199:
    v195 = 0;
    goto LABEL_200;
  }

  [(_ANEVirtualClient *)self copyModel:legacyCopy options:optionsCopy vmData:v296];
  [(_ANEVirtualClient *)self copyErrorValue:v296];
  obj = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:optionsCopy requiringSecureCoding:1 error:0];
  v297 = -[_ANEVirtualClient copyToIOSurface:length:ioSID:](self, "copyToIOSurface:length:ioSID:", obj, [obj length], v307);
  string_id = [legacyCopy string_id];
  programHandle = [legacyCopy programHandle];
  intermediateBufferHandle = [legacyCopy intermediateBufferHandle];
  queueDepth = [legacyCopy queueDepth];
  perfStatsMask = [legacyCopy perfStatsMask];
  qosCopy = qos;
  if (os_log_type_enabled(0, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(v339) = 67112192;
    HIDWORD(v339) = v299[4];
    LOWORD(v340) = 1024;
    *(&v340 + 2) = v299[5];
    HIWORD(v340) = 1024;
    v341 = v299[6];
    v342 = 1024;
    v343 = v299[7];
    v344 = 2048;
    v345 = string_id;
    v346 = 2048;
    v347 = programHandle;
    v348 = 2048;
    v349 = intermediateBufferHandle;
    v350 = 1024;
    v351 = queueDepth;
    v352 = 1024;
    v353 = v304;
    v354 = 1024;
    v355 = perfStatsMask;
    v356 = 1024;
    v357 = qosCopy;
    v358 = 1024;
    v359 = v307[0];
    v360 = 1024;
    v361 = v320;
    _os_log_debug_impl(&dword_1AD246000, 0, OS_LOG_TYPE_DEBUG, "ANEVirtualClient Evaluate: virtualANEModel.ioSIDModelNet=%u virtualANEModel.ioSIDModelShape=%u virtualANEModel.ioSIDModelWeight=%u virtualANEModel.ioSIDKey=%u virtualANEModel.string_id=%lld virtualANEModel.programHandle=%lld virtualANEModel.intermediateBufferHandle=%lld virtualANEModel.queueDepth=%d virtualANEModel.ioSIDModelAttributes=%u virtualANEModel.perfStatsMask=%u virtualANEModel.qos=%u virtualANEModel.ioSIDOptions=%u virtualANEModel.ioSIDErrorValue=%u", &v339, 0x5Cu);
  }

  v265 = 0u;
  v266 = 0u;
  v263 = 0u;
  v264 = 0u;
  inputArray2 = [requestCopy inputArray];
  v17 = [inputArray2 countByEnumeratingWithState:&v263 objects:v330 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = 0;
    v20 = *v264;
    do
    {
      for (kk = 0; kk != v18; ++kk)
      {
        if (*v264 != v20)
        {
          objc_enumerationMutation(inputArray2);
        }

        v22 = IOSurfaceGetID([*(*(&v263 + 1) + 8 * kk) ioSurface]);
        v308[v19] = v22;
        if (os_log_type_enabled(0, OS_LOG_TYPE_DEBUG))
        {
          [_ANEVirtualClient(Private) doEvaluateWithModelLegacy:v22 options:v375 request:? qos:? completionEvent:? error:?];
        }

        ++v19;
      }

      v18 = [inputArray2 countByEnumeratingWithState:&v263 objects:v330 count:16];
    }

    while (v18);
  }

  else
  {
    v19 = 0;
  }

  v316 = v19;
  v259 = 0u;
  v260 = 0u;
  v261 = 0u;
  v262 = 0u;
  inputIndexArray = [v235 inputIndexArray];
  v72 = [inputIndexArray countByEnumeratingWithState:&v259 objects:v329 count:16];
  if (v72)
  {
    v73 = v72;
    v74 = 0;
    v75 = *v260;
    do
    {
      for (mm = 0; mm != v73; ++mm)
      {
        if (*v260 != v75)
        {
          objc_enumerationMutation(inputIndexArray);
        }

        v77 = *(*(&v259 + 1) + 8 * mm);
        v308[v74 + 64] = [v77 unsignedIntValue];
        if (os_log_type_enabled(0, OS_LOG_TYPE_DEBUG))
        {
          [_ANEVirtualClient(Private) doEvaluateWithModelLegacy:v77 options:? request:? qos:? completionEvent:? error:?];
        }

        ++v74;
      }

      v73 = [inputIndexArray countByEnumeratingWithState:&v259 objects:v329 count:16];
    }

    while (v73);
  }

  else
  {
    v74 = 0;
  }

  v317 = v74;
  v255 = 0u;
  v256 = 0u;
  v257 = 0u;
  v258 = 0u;
  outputArray2 = [v235 outputArray];
  v157 = [outputArray2 countByEnumeratingWithState:&v255 objects:v328 count:16];
  if (v157)
  {
    v158 = v157;
    v159 = 0;
    v160 = *v256;
    do
    {
      for (nn = 0; nn != v158; ++nn)
      {
        if (*v256 != v160)
        {
          objc_enumerationMutation(outputArray2);
        }

        v162 = IOSurfaceGetID([*(*(&v255 + 1) + 8 * nn) ioSurface]);
        v309[v159] = v162;
        if (os_log_type_enabled(0, OS_LOG_TYPE_DEBUG))
        {
          [_ANEVirtualClient(Private) doEvaluateWithModelLegacy:v162 options:&v383 request:? qos:? completionEvent:? error:?];
        }

        ++v159;
      }

      v158 = [outputArray2 countByEnumeratingWithState:&v255 objects:v328 count:16];
    }

    while (v158);
  }

  else
  {
    v159 = 0;
  }

  v318 = v159;
  v251 = 0u;
  v252 = 0u;
  v253 = 0u;
  v254 = 0u;
  outputIndexArray = [v235 outputIndexArray];
  v167 = [outputIndexArray countByEnumeratingWithState:&v251 objects:v327 count:16];
  if (v167)
  {
    v168 = v167;
    v169 = 0;
    v170 = *v252;
    do
    {
      for (i1 = 0; i1 != v168; ++i1)
      {
        if (*v252 != v170)
        {
          objc_enumerationMutation(outputIndexArray);
        }

        v172 = *(*(&v251 + 1) + 8 * i1);
        v309[v169 + 64] = [v172 unsignedIntValue];
        if (os_log_type_enabled(0, OS_LOG_TYPE_DEBUG))
        {
          [_ANEVirtualClient(Private) doEvaluateWithModelLegacy:v172 options:? request:? qos:? completionEvent:? error:?];
        }

        ++v169;
      }

      v168 = [outputIndexArray countByEnumeratingWithState:&v251 objects:v327 count:16];
    }

    while (v168);
  }

  else
  {
    v169 = 0;
  }

  v319 = v169;
  v165 = v235;
  if (os_log_type_enabled(0, OS_LOG_TYPE_DEBUG))
  {
    [_ANEVirtualClient(Private) doEvaluateWithModelLegacy:v235 options:? request:? qos:? completionEvent:? error:?];
  }

  weightsBuffer3 = [v235 weightsBuffer];
  ioSurface2 = [weightsBuffer3 ioSurface];

  if (ioSurface2)
  {
    weightsBuffer4 = [v235 weightsBuffer];
    v176 = IOSurfaceGetID([weightsBuffer4 ioSurface]);

    v310 = v176;
    if (os_log_type_enabled(0, OS_LOG_TYPE_DEBUG))
    {
      [_ANEVirtualClient(Private) doEvaluateWithModelLegacy:options:request:qos:completionEvent:error:];
    }
  }

  else
  {
    v310 = 0;
  }

  procedureIndex2 = [v235 procedureIndex];
  unsignedLongLongValue = [procedureIndex2 unsignedLongLongValue];

  transactionHandle2 = [v235 transactionHandle];
  unsignedLongLongValue2 = [transactionHandle2 unsignedLongLongValue];

  v249 = 0u;
  v250 = 0u;
  v247 = 0u;
  v248 = 0u;
  perfStatsArray = [v235 perfStatsArray];
  v180 = [perfStatsArray countByEnumeratingWithState:&v247 objects:v326 count:16];
  if (!v180)
  {

LABEL_158:
    v315 = 0;
    goto LABEL_159;
  }

  v181 = v180;
  v182 = 0;
  v183 = *v248;
  do
  {
    v184 = 0;
    v185 = v182;
    do
    {
      if (*v248 != v183)
      {
        objc_enumerationMutation(perfStatsArray);
      }

      v186 = *(*(&v247 + 1) + 8 * v184);
      stats2 = [v186 stats];
      v188 = IOSurfaceGetID([stats2 ioSurface]);

      v313[v185] = v188;
      v182 = v185 + 1;
      v314[v185] = [v186 statType];
      v315 = v185 + 1;
      if (os_log_type_enabled(0, OS_LOG_TYPE_DEBUG))
      {
        [_ANEVirtualClient(Private) doEvaluateWithModelLegacy:v188 options:v378 request:? qos:? completionEvent:? error:?];
      }

      if (os_log_type_enabled(0, OS_LOG_TYPE_DEBUG))
      {
        [_ANEVirtualClient(Private) doEvaluateWithModelLegacy:v380 options:v186 request:? qos:? completionEvent:? error:?];
      }

      ++v184;
      ++v185;
    }

    while (v181 != v184);
    v181 = [perfStatsArray countByEnumeratingWithState:&v247 objects:v326 count:16];
  }

  while (v181);

  v165 = v235;
  if (!v182)
  {
    goto LABEL_158;
  }

LABEL_159:
  v321 = 0;
  v322 = 0;
  v323 = 0;
  v189 = MEMORY[0x1E695DF20];
  v190 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:4096];
  v191 = [v189 dictionaryWithObjectsAndKeys:{v190, *MEMORY[0x1E696CE30], 0}];

  v192 = IOSurfaceCreate(v191);
  buffer = v192;
  v163 = optionsCopy;
  v164 = eventCopy;
  v193 = selfCopy;
  errorCopy2 = error;
  if (!v192)
  {
    if (os_log_type_enabled(0, OS_LOG_TYPE_ERROR))
    {
      [_ANEVirtualClient(Private) doEvaluateWithModelLegacy:a2 options:? request:? qos:? completionEvent:? error:?];
    }

    goto LABEL_199;
  }

  IOSurfaceLock(v192, 0, 0);
  v322 = IOSurfaceGetID(buffer);
  if (os_log_type_enabled(0, OS_LOG_TYPE_DEBUG))
  {
    [_ANEVirtualClient(Private) doEvaluateWithModelLegacy:a2 options:&v322 request:? qos:? completionEvent:? error:?];
  }

  IOSurfaceUnlock(buffer, 0, 0);

  [v165 sharedEvents];
  if (os_log_type_enabled(0, OS_LOG_TYPE_DEBUG))
  {
    [_ANEVirtualClient(Private) doEvaluateWithModelLegacy:options:request:qos:completionEvent:error:];
  }

  v195 = [(_ANEVirtualClient *)selfCopy callIOUserClient:4 inParams:v299 outParams:&v324];

LABEL_196:
  [(_ANEVirtualClient *)v193 updateError:v296 error:errorCopy2];
  v226 = [(_ANEVirtualClient *)v193 updatePerformanceStats:v296];
  [v165 setPerfStats:v226];

  [(_ANEVirtualClient *)v193 releaseIOSurfaces:v296];
LABEL_200:

  v227 = *MEMORY[0x1E69E9840];
  return v195;
}

- (BOOL)compileModel:(id)model options:(id)options qos:(unsigned int)qos error:(id *)error
{
  v54[9] = *MEMORY[0x1E69E9840];
  modelCopy = model;
  optionsCopy = options;
  v11 = gLogger;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    [_ANEVirtualClient compileModel:options:qos:error:];
  }

  bzero(v44, 0x1728uLL);
  if (([(_ANEVirtualClient *)self negotiatedCapabilityMask]& 4) == 0)
  {
    [(_ANEVirtualClient *)self copyModel:modelCopy options:optionsCopy vmData:v44];
    [(_ANEVirtualClient *)self copyOptions:optionsCopy vmData:v44];
    [(_ANEVirtualClient *)self copyModelOptionFiles:modelCopy options:optionsCopy vmData:v44];
    [(_ANEVirtualClient *)self copyErrorValue:v44];
    v47[0] = qos;
    [(_ANEVirtualClient *)self callIOUserClient:1 inParams:&v46 outParams:&v48];
    v12 = 0;
LABEL_11:
    if (v49)
    {
      v18 = [_ANEVirtualClient dictionaryGetNSStringForKey:v12 key:@"modelCacheURLIdentifier"];
      if (v18)
      {
        [modelCopy setCacheURLIdentifier:v18];
      }

      v19 = [(_ANEVirtualClient *)self getModelAttribute:v44];
      [modelCopy updateModelAttributes:v19 state:2];
      v20 = gLogger;
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        [_ANEVirtualClient compileModel:options:qos:error:];
      }
    }

    if (error && v51)
    {
      IOSurfaceLock(buffer, 0, 0);
      BaseAddress = IOSurfaceGetBaseAddress(buffer);
      v22 = objc_alloc(MEMORY[0x1E695DEF0]);
      v40 = [v22 initWithBytes:BaseAddress length:v51];
      v23 = MEMORY[0x1E695DFD8];
      v54[0] = objc_opt_class();
      v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v54 count:1];
      v38 = [v23 setWithArray:v24];

      v43 = 0;
      v25 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:v40 error:&v43];
      v26 = v43;
      if (v26)
      {
        v27 = gLogger;
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
        {
          NSStringFromSelector(a2);
          objc_claimAutoreleasedReturnValue();
          [_ANEVirtualClient compileModel:options:qos:error:];
        }
      }

      v28 = [v25 decodeObjectOfClasses:v38 forKey:{*MEMORY[0x1E696A508], v38}];
      IOSurfaceUnlock(buffer, 0, 0);
      v29 = MEMORY[0x1E696ABC0];
      v30 = +[_ANEStrings errorDomainVirtIO];
      v31 = v50;
      v52 = *MEMORY[0x1E696A578];
      v53 = v28;
      v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v53 forKeys:&v52 count:1];
      v33 = [v29 errorWithDomain:v30 code:v31 userInfo:v32];

      v34 = v33;
      *error = v33;
    }

    [(_ANEVirtualClient *)self updateError:v44 error:error];
    [(_ANEVirtualClient *)self releaseIOSurfaces:v44];
    if (v12)
    {
      CFRelease(v12);
    }

    v35 = v49 != 0;
    goto LABEL_27;
  }

  if (os_log_type_enabled(gLogger, OS_LOG_TYPE_DEBUG))
  {
    [_ANEVirtualClient compileModel:options:qos:error:];
  }

  v49 = 0;
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v14 = *MEMORY[0x1E695E480];
  v15 = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  [(_ANEVirtualClient *)self copyAllModelFiles:modelCopy dictionary:Mutable ioSurfaceRefs:v15];
  [(_ANEVirtualClient *)self copyModelMetaData:modelCopy options:optionsCopy dictionary:Mutable vmData:v44];
  [(_ANEVirtualClient *)self copyOptions:optionsCopy dictionary:Mutable vmData:v44];
  [(_ANEVirtualClient *)self copyModelOptionFiles:modelCopy options:optionsCopy dictionary:Mutable vmData:v44];
  [(_ANEVirtualClient *)self copyErrorValue:Mutable vmData:v44];
  v47[0] = qos;
  v16 = CFNumberCreate(v14, kCFNumberSInt32Type, v47);
  CFDictionarySetValue(Mutable, @"qos", v16);
  CFRelease(v16);
  [_ANEVirtualClient setCodeSigningIdentity:Mutable];
  [(_ANEVirtualClient *)self printDictionary:Mutable];
  v12 = [(_ANEVirtualClient *)self callIOUserClientWithDictionary:1 inDictionary:Mutable error:error];
  CFRelease(Mutable);
  [(_ANEVirtualClient *)self printDictionary:v12];
  [_ANEVirtualClient freeModelFileIOSurfaces:v15];
  CFRelease(v15);
  if (v12)
  {
    v17 = gLogger;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualClient compileModel:options:qos:error:];
    }

    [_ANEVirtualClient copyDictionaryDataToStruct:&v48 dictionary:v12];
    goto LABEL_11;
  }

  if (os_log_type_enabled(gLogger, OS_LOG_TYPE_ERROR))
  {
    [_ANEVirtualClient compileModel:options:qos:error:];
  }

  [(_ANEVirtualClient *)self releaseIOSurfaces:v44];
  v35 = 0;
LABEL_27:

  v36 = *MEMORY[0x1E69E9840];
  return v35;
}

+ (void)printStruct:(VirtANEModel *)struct
{
  if (struct)
  {
    if (os_log_type_enabled(gLogger, OS_LOG_TYPE_DEBUG))
    {
      [_ANEVirtualClient printStruct:struct];
    }
  }
}

- (BOOL)transferFileToHostWithPath:(id)path withChunkSize:(unsigned int)size withUUID:(id)d withModelInputPath:(id)inputPath overWriteFileNameWith:(id)with
{
  v98 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  dCopy = d;
  inputPathCopy = inputPath;
  withCopy = with;
  v78 = 0;
  v79 = &v78;
  v80 = 0x4012000000;
  v81 = __Block_byref_object_copy__2;
  v82 = __Block_byref_object_dispose__2;
  v83 = &unk_1AD2A047D;
  v84 = 0;
  v85 = 0;
  v77[0] = MEMORY[0x1E69E9820];
  v77[1] = 3221225472;
  v77[2] = __112___ANEVirtualClient_transferFileToHostWithPath_withChunkSize_withUUID_withModelInputPath_overWriteFileNameWith___block_invoke;
  v77[3] = &unk_1E79BA3B8;
  v77[4] = &v78;
  v15 = MEMORY[0x1B26F37D0](v77);
  if (!size)
  {
    v19 = gLogger;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualClient transferFileToHostWithPath:withChunkSize:withUUID:withModelInputPath:overWriteFileNameWith:];
    }

    goto LABEL_11;
  }

  if (!pathCopy || ![pathCopy length])
  {
    v19 = gLogger;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualClient transferFileToHostWithPath:withChunkSize:withUUID:withModelInputPath:overWriteFileNameWith:];
    }

LABEL_11:

LABEL_18:
    v20 = 0;
    goto LABEL_19;
  }

  v76 = 0;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v17 = [defaultManager fileExistsAtPath:pathCopy isDirectory:&v76];

  if ((v17 & 1) == 0)
  {
    v18 = gLogger;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualClient transferFileToHostWithPath:withChunkSize:withUUID:withModelInputPath:overWriteFileNameWith:];
    }

    goto LABEL_17;
  }

  if (v76 == 1)
  {
    v18 = gLogger;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualClient transferFileToHostWithPath:withChunkSize:withUUID:withModelInputPath:overWriteFileNameWith:];
    }

LABEL_17:

    goto LABEL_18;
  }

  v97 = 0;
  memset(v96, 0, sizeof(v96));
  inputStruct = 0u;
  v95 = 0u;
  v23 = +[_ANEStrings hwxExtension];
  v24 = [pathCopy hasSuffix:v23];

  if (v24)
  {
    v25 = 1;
  }

  else
  {
    v26 = +[_ANEStrings binExtension];
    v27 = [pathCopy hasSuffix:v26];

    if (!v27)
    {
      v96[0] = 0;
      goto LABEL_26;
    }

    v25 = 2;
  }

  v96[0] = v25;
LABEL_26:
  lastPathComponent = [pathCopy lastPathComponent];
  if (withCopy && [withCopy length])
  {
    v29 = withCopy;

    lastPathComponent = v29;
  }

  else if (!lastPathComponent)
  {
    goto LABEL_34;
  }

  if (![lastPathComponent length])
  {
LABEL_34:
    v30 = gLogger;
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      v31 = v30;
      [_ANEVirtualClient transferFileToHostWithPath:withChunkSize:withUUID:withModelInputPath:overWriteFileNameWith:];
      goto LABEL_36;
    }

LABEL_44:
    v20 = 0;
    goto LABEL_69;
  }

  if (([lastPathComponent lengthOfBytesUsingEncoding:4] + 1) >= 0x101)
  {
    v30 = gLogger;
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      v31 = v30;
      [_ANEVirtualClient transferFileToHostWithPath:withChunkSize:withUUID:withModelInputPath:overWriteFileNameWith:];
LABEL_36:
      v20 = 0;
      v30 = v31;
      goto LABEL_69;
    }

    goto LABEL_44;
  }

  if (([lastPathComponent getCString:&v96[1] maxLength:256 encoding:4] & 1) == 0)
  {
    v30 = gLogger;
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      v31 = v30;
      [_ANEVirtualClient transferFileToHostWithPath:withChunkSize:withUUID:withModelInputPath:overWriteFileNameWith:];
      goto LABEL_36;
    }

    goto LABEL_44;
  }

  v69 = [MEMORY[0x1E696AC00] fileHandleForReadingAtPath:pathCopy];
  defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
  v75 = 0;
  v68 = [defaultManager2 attributesOfItemAtPath:pathCopy error:&v75];
  v70 = v75;

  if (v70)
  {
    v33 = gLogger;
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualClient transferFileToHostWithPath:withChunkSize:withUUID:withModelInputPath:overWriteFileNameWith:];
    }

    v20 = 0;
    goto LABEL_68;
  }

  fileSize = [v68 fileSize];
  v34 = gLogger;
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
  {
    v60 = NSStringFromSelector(a2);
    *buf = 138413058;
    v87 = v60;
    v88 = 2048;
    *v89 = fileSize;
    *&v89[8] = 1024;
    *&v89[10] = size;
    v90 = 2112;
    *v91 = pathCopy;
    _os_log_debug_impl(&dword_1AD246000, v34, OS_LOG_TYPE_DEBUG, "%@: Begin file transfer to host with fileSize=%llu chunkSize=%u at path=%@", buf, 0x26u);
  }

  v35 = +[_ANEVirtualClient getCodeSigningIdentity];
  v36 = v35;
  v63 = v35;
  if (!v35)
  {
    v37 = gLogger;
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualClient transferFileToHostWithPath:withChunkSize:withUUID:withModelInputPath:overWriteFileNameWith:];
    }

    goto LABEL_66;
  }

  if (([v35 lengthOfBytesUsingEncoding:4]+ 1) >= 0x81)
  {
    v37 = gLogger;
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualClient transferFileToHostWithPath:withChunkSize:withUUID:withModelInputPath:overWriteFileNameWith:];
    }

LABEL_66:

    v20 = 0;
    goto LABEL_67;
  }

  if (([v36 getCString:&v96[257] maxLength:128 encoding:4]& 1) == 0)
  {
    v37 = gLogger;
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualClient transferFileToHostWithPath:withChunkSize:withUUID:withModelInputPath:overWriteFileNameWith:];
    }

    goto LABEL_66;
  }

  if (inputPathCopy && [inputPathCopy length])
  {
    v38 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:pathCopy requiringSecureCoding:1 error:0];
    v39 = v38;
    if (!v38)
    {
      v37 = gLogger;
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        [_ANEVirtualClient transferFileToHostWithPath:withChunkSize:withUUID:withModelInputPath:overWriteFileNameWith:];
      }

      goto LABEL_66;
    }

    v40 = -[_ANEVirtualClient copyToIOSurface:length:ioSID:](self, "copyToIOSurface:length:ioSID:", v38, [v38 length], &inputStruct + 8);
    v79[6] = v40;
    *(&v95 + 1) = [v39 length];
  }

  if (v96[0] == 2)
  {
    if (!dCopy)
    {
      v37 = gLogger;
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        [_ANEVirtualClient transferFileToHostWithPath:withChunkSize:withUUID:withModelInputPath:overWriteFileNameWith:];
      }

      goto LABEL_66;
    }

    if (([dCopy lengthOfBytesUsingEncoding:4] + 1) >= 0x26)
    {
      v37 = gLogger;
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        [_ANEVirtualClient transferFileToHostWithPath:withChunkSize:withUUID:withModelInputPath:overWriteFileNameWith:];
      }

      goto LABEL_66;
    }

    if (([dCopy getCString:&v96[385] maxLength:37 encoding:4] & 1) == 0)
    {
      v37 = gLogger;
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        [_ANEVirtualClient transferFileToHostWithPath:withChunkSize:withUUID:withModelInputPath:overWriteFileNameWith:];
      }

      goto LABEL_66;
    }
  }

  else
  {
    v96[385] = 0;
  }

  v61 = 0;
  v62 = 0;
  v20 = 1;
  while (fileSize > v62)
  {
    context = objc_autoreleasePoolPush();
    v41 = gLogger;
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
    {
      v67 = v41;
      v53 = NSStringFromSelector(a2);
      *buf = 138413314;
      v87 = v53;
      v88 = 1024;
      *v89 = v61;
      *&v89[4] = 2048;
      *&v89[6] = fileSize;
      v90 = 1024;
      *v91 = size;
      *&v91[4] = 2112;
      *&v91[6] = pathCopy;
      _os_log_debug_impl(&dword_1AD246000, v67, OS_LOG_TYPE_DEBUG, "%@: Transferring chunkSeq=%d to host with fileSize=%llu chunkSize=%u at path=%@", buf, 0x2Cu);

      v41 = v67;
    }

    if (fileSize - v62 >= size)
    {
      sizeCopy = size;
    }

    else
    {
      sizeCopy = fileSize - v62;
    }

    v43 = [v69 readDataOfLength:sizeCopy];
    v44 = v43;
    v66 = v43;
    if (!v43)
    {
      v49 = gLogger;
      if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
      {
        v54 = NSStringFromSelector(a2);
        *buf = 138413314;
        v87 = v54;
        v88 = 1024;
        *v89 = v61;
        *&v89[4] = 2048;
        *&v89[6] = fileSize;
        v90 = 1024;
        *v91 = size;
        *&v91[4] = 2112;
        *&v91[6] = pathCopy;
        _os_log_error_impl(&dword_1AD246000, v49, OS_LOG_TYPE_ERROR, "%@: ERROR failed to get segment=%d for fileSize=%llu chunkSize=%u at path=%@", buf, 0x2Cu);
      }

      goto LABEL_90;
    }

    v45 = -[_ANEVirtualClient copyToIOSurface:length:ioSID:](self, "copyToIOSurface:length:ioSID:", v43, [v43 length], &inputStruct + 4);
    v79[7] = v45;
    if (v45)
    {
      LODWORD(inputStruct) = v61;
      *&v95 = [v44 length];
      outputStruct = 0;
      outputStructCnt = 1;
      v46 = IOConnectCallMethod(self->_connect, 0x16u, 0, 0, &inputStruct, 0x1C8uLL, 0, 0, &outputStruct, &outputStructCnt);
      if (v46)
      {
        v47 = v46;
        v48 = gLogger;
        if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
        {
          v55 = NSStringFromSelector(a2);
          *buf = 138412546;
          v87 = v55;
          v88 = 1024;
          *v89 = v47;
          _os_log_error_impl(&dword_1AD246000, v48, OS_LOG_TYPE_ERROR, "%@: ERROR kernel call failed with ret=0x%x", buf, 0x12u);
        }

        goto LABEL_90;
      }

      if (outputStruct)
      {
        v52 = v79[7];
        if (v52)
        {
          CFRelease(v52);
          v79[7] = 0;
        }

        *&v95 = 0;
        DWORD1(inputStruct) = 0;
        v62 += [v44 length];
        ++v61;
        v51 = 1;
        goto LABEL_91;
      }

      v50 = gLogger;
      if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
      {
        v58 = NSStringFromSelector(a2);
        v59 = [v66 length];
        *buf = 138413570;
        v87 = v58;
        v88 = 1024;
        *v89 = v61;
        *&v89[4] = 2048;
        *&v89[6] = fileSize;
        v90 = 1024;
        *v91 = size;
        *&v91[4] = 2048;
        *&v91[6] = v59;
        v92 = 2112;
        v93 = pathCopy;
        _os_log_error_impl(&dword_1AD246000, v50, OS_LOG_TYPE_ERROR, "%@: ERROR failed to transfer segment=%d for fileSize=%llu chunkSize=%u chunkDataLength=%llu at path=%@", buf, 0x36u);
      }
    }

    else
    {
      v50 = gLogger;
      if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
      {
        v56 = NSStringFromSelector(a2);
        v57 = [v66 length];
        *buf = 138413570;
        v87 = v56;
        v88 = 1024;
        *v89 = v61;
        *&v89[4] = 2048;
        *&v89[6] = fileSize;
        v90 = 1024;
        *v91 = size;
        *&v91[4] = 2048;
        *&v91[6] = v57;
        v92 = 2112;
        v93 = pathCopy;
        _os_log_error_impl(&dword_1AD246000, v50, OS_LOG_TYPE_ERROR, "%@: ERROR failed to write segment=%d to IOSurface for fileSize=%llu chunkSize=%u chunkDataLength=%llu at path=%@", buf, 0x36u);
      }
    }

LABEL_90:
    v20 = 0;
    v51 = 0;
LABEL_91:

    objc_autoreleasePoolPop(context);
    if ((v51 & 1) == 0)
    {
      break;
    }
  }

  v15[2](v15);
LABEL_67:
  v33 = v63;
LABEL_68:

  v30 = v69;
LABEL_69:

LABEL_19:
  _Block_object_dispose(&v78, 8);

  v21 = *MEMORY[0x1E69E9840];
  return v20 & 1;
}

- (BOOL)loadModelNewInstance:(id)instance options:(id)options modelInstParams:(id)params qos:(unsigned int)qos error:(id *)error
{
  v162 = *MEMORY[0x1E69E9840];
  instanceCopy = instance;
  optionsCopy = options;
  paramsCopy = params;
  v108 = paramsCopy;
  v109 = instanceCopy;
  if (instanceCopy)
  {
    if (paramsCopy)
    {
      v107 = [optionsCopy objectForKeyedSubscript:kANEFBaseModelIdentifierKey[0]];
      if (v107)
      {
        if ([(_ANEVirtualClient *)self negotiatedDataInterfaceVersion]<= 0x20405)
        {
          v11 = [(_ANEVirtualClient *)self loadModelNewInstanceLegacy:instanceCopy options:optionsCopy modelInstParams:v108 qos:qos error:error];
LABEL_177:

          goto LABEL_178;
        }

        getCacheURLIdentifier = [instanceCopy getCacheURLIdentifier];

        v17 = gLogger;
        v18 = v17;
        if (getCacheURLIdentifier)
        {
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
          {
            NSStringFromSelector(a2);
            objc_claimAutoreleasedReturnValue();
            [_ANEVirtualClient loadModelNewInstance:options:modelInstParams:qos:error:];
          }

          uUID = [instanceCopy UUID];
          v20 = uUID == 0;

          if (v20)
          {
            [MEMORY[0x1E696AFB0] UUID];
          }

          else
          {
            [instanceCopy UUID];
          }
          v21 = ;
          uUIDString = [v21 UUIDString];

          v22 = gLogger;
          v23 = v22;
          if (!uUIDString)
          {
            if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              NSStringFromSelector(a2);
              objc_claimAutoreleasedReturnValue();
              [_ANEVirtualClient loadModelNewInstance:options:modelInstParams:qos:error:];
            }

            if (error)
            {
              v25 = NSStringFromSelector(a2);
              [_ANEErrors dataNotFoundForMethod:v25];
              *error = v11 = 0;
              goto LABEL_175;
            }

            v11 = 0;
LABEL_176:

            goto LABEL_177;
          }

          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
          {
            v80 = NSStringFromSelector(a2);
            procedureArray = [v108 procedureArray];
            *buf = 138412546;
            *&buf[4] = v80;
            *&buf[12] = 2048;
            *&buf[14] = [procedureArray count];
            _os_log_debug_impl(&dword_1AD246000, v23, OS_LOG_TYPE_DEBUG, "%@: Procedures to load=%lu", buf, 0x16u);
          }

          v124 = objc_alloc_init(MEMORY[0x1E695DF70]);
          v144 = 0u;
          v145 = 0u;
          v142 = 0u;
          v143 = 0u;
          obj = [v108 procedureArray];
          v24 = [obj countByEnumeratingWithState:&v142 objects:v161 count:16];
          if (!v24)
          {

            v25 = 0;
            goto LABEL_105;
          }

          v123 = 0;
          v118 = 0;
          v25 = 0;
          v121 = 1;
          v113 = *v143;
          v119 = *MEMORY[0x1E696A3B8];
LABEL_36:
          v117 = 0;
          v114 = v24;
          while (1)
          {
            if (*v143 != v113)
            {
              objc_enumerationMutation(obj);
            }

            v26 = *(*(&v142 + 1) + 8 * v117);
            v138 = 0u;
            v139 = 0u;
            v140 = 0u;
            v141 = 0u;
            weightArray = [v26 weightArray];
            v27 = [weightArray countByEnumeratingWithState:&v138 objects:v160 count:16];
            if (v27)
            {
              break;
            }

LABEL_95:

            ++v118;
            if (++v117 == v114)
            {
              v24 = [obj countByEnumeratingWithState:&v142 objects:v161 count:16];
              if (!v24)
              {

                if ((v121 & 1) == 0)
                {
                  if (error)
                  {
                    v64 = v25;
                    v11 = 0;
                    *error = v25;
                  }

                  else
                  {
                    v11 = 0;
                  }

LABEL_174:

LABEL_175:
                  goto LABEL_176;
                }

LABEL_105:
                v128 = 0;
                v129 = &v128;
                v130 = 0x5812000000;
                v131 = __Block_byref_object_copy__47;
                v132 = __Block_byref_object_dispose__48;
                v133 = &unk_1AD2A047D;
                v134 = 0u;
                v135 = 0u;
                v136 = 0;
                v127[0] = MEMORY[0x1E69E9820];
                v127[1] = 3221225472;
                v127[2] = __76___ANEVirtualClient_loadModelNewInstance_options_modelInstParams_qos_error___block_invoke;
                v127[3] = &unk_1E79BA3B8;
                v127[4] = &v128;
                v65 = MEMORY[0x1B26F37D0](v127);
                v159 = 0;
                memset(v158, 0, sizeof(v158));
                memset(v157, 0, sizeof(v157));
                v156 = 0u;
                memset(buf, 0, sizeof(buf));
                if (([uUIDString lengthOfBytesUsingEncoding:4] + 1) >= 0x26)
                {
                  v66 = gLogger;
                  if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
                  {
                    NSStringFromSelector(a2);
                    objc_claimAutoreleasedReturnValue();
                    v67 = v66;
                    [_ANEVirtualClient loadModelNewInstance:options:modelInstParams:qos:error:];
                    goto LABEL_126;
                  }

LABEL_141:
                  v11 = 0;
LABEL_173:

                  _Block_object_dispose(&v128, 8);
                  goto LABEL_174;
                }

                if (([uUIDString getCString:v158 maxLength:37 encoding:4] & 1) == 0)
                {
                  v66 = gLogger;
                  if (!os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
                  {
                    goto LABEL_141;
                  }

                  NSStringFromSelector(a2);
                  objc_claimAutoreleasedReturnValue();
                  v67 = v66;
                  [_ANEVirtualClient loadModelNewInstance:options:modelInstParams:qos:error:];
LABEL_126:
                  v11 = 0;
                  v66 = v67;
                  goto LABEL_173;
                }

                *&buf[20] = qos;
                getCacheURLIdentifier2 = [v109 getCacheURLIdentifier];
                v69 = [getCacheURLIdentifier2 dataUsingEncoding:4];

                if (!v69)
                {
                  v82 = gLogger;
                  if (os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
                  {
                    NSStringFromSelector(a2);
                    objc_claimAutoreleasedReturnValue();
                    [_ANEVirtualClient loadModelNewInstance:options:modelInstParams:qos:error:];
                  }

                  if (error)
                  {
                    v75 = NSStringFromSelector(a2);
                    [_ANEErrors dataNotFoundForMethod:v75];
                    *error = v11 = 0;
                    goto LABEL_171;
                  }

                  v11 = 0;
LABEL_172:
                  v66 = v69;
                  goto LABEL_173;
                }

                v70 = [(_ANEVirtualClient *)self copyToIOSurface:v69 length:[v69 length] ioSID:&buf[4]];
                v129[7] = v70;
                if (v70 && *&buf[4])
                {
                  *&buf[32] = [v69 length];
                  v71 = [(_ANEVirtualClient *)self copyDictionaryToIOSurface:optionsCopy copiedDataSize:&buf[40] createdIOSID:&buf[8]];
                  v129[8] = v71;
                  if (v71 && *&buf[8])
                  {
                    v72 = [_ANEVirtualClient createIOSurface:256 ioSID:buf | 0xC];
                    v129[9] = v72;
                    *&v156 = 256;
                    v73 = [_ANEVirtualClient createIOSurface:0x100000 ioSID:&buf[16]];
                    v129[10] = v73;
                    *(&v156 + 1) = 0x100000;
                    v126 = 0;
                    v74 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v108 requiringSecureCoding:1 error:&v126];
                    v75 = v126;
                    if (v74)
                    {
                      v76 = -[_ANEVirtualClient copyToIOSurface:length:ioSID:](self, "copyToIOSurface:length:ioSID:", v74, [v74 length], buf);
                      v129[6] = v76;
                      if (v76 && *buf)
                      {
                        *&buf[24] = [v74 length];
                        v77 = +[_ANEVirtualClient getCodeSigningIdentity];
                        v78 = v77;
                        if (!v77)
                        {
                          v89 = gLogger;
                          if (os_log_type_enabled(v89, OS_LOG_TYPE_ERROR))
                          {
                            NSStringFromSelector(a2);
                            objc_claimAutoreleasedReturnValue();
                            [_ANEVirtualClient transferFileToHostWithPath:withChunkSize:withUUID:withModelInputPath:overWriteFileNameWith:];
                          }

                          if (error)
                          {
                            v90 = NSStringFromSelector(a2);
                            *error = [_ANEErrors dataNotFoundForMethod:v90];
                          }

                          goto LABEL_168;
                        }

                        if (([v77 lengthOfBytesUsingEncoding:4] + 1) >= 0x81)
                        {
                          v79 = gLogger;
                          if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
                          {
                            NSStringFromSelector(a2);
                            objc_claimAutoreleasedReturnValue();
                            [_ANEVirtualClient transferFileToHostWithPath:withChunkSize:withUUID:withModelInputPath:overWriteFileNameWith:];
                          }

                          if (error)
                          {
                            goto LABEL_167;
                          }

                          goto LABEL_168;
                        }

                        if ([v78 getCString:v157 maxLength:128 encoding:4])
                        {
                          v153 = 0u;
                          v154 = 0u;
                          outputStruct = 0u;
                          v125 = 48;
                          v91 = IOConnectCallMethod(self->_connect, 0x17u, 0, 0, buf, 0xE8uLL, 0, 0, &outputStruct, &v125);
                          if (v91)
                          {
                            v92 = gLogger;
                            if (os_log_type_enabled(v92, OS_LOG_TYPE_ERROR))
                            {
                              NSStringFromSelector(a2);
                              objc_claimAutoreleasedReturnValue();
                              [_ANEVirtualClient loadModelNewInstance:options:modelInstParams:qos:error:];
                            }

                            if (!error)
                            {
                              goto LABEL_168;
                            }

                            v93 = NSStringFromSelector(a2);
                            v94 = [_ANEErrors virtualizationKernelError:v93 kernelErrorCode:v91];
LABEL_186:
                            v11 = 0;
                            *error = v94;
                          }

                          else
                          {
                            if ((outputStruct & 1) == 0)
                            {
                              if (!error)
                              {
                                goto LABEL_168;
                              }

                              v93 = NSStringFromSelector(a2);
                              v94 = [_ANEErrors virtualizationHostError:v93];
                              goto LABEL_186;
                            }

                            v93 = [_ANEVirtualClient getDictionaryWithJSONEncodingFromIOSurface:v129[10] withArchivedDataSize:*(&v154 + 1)];
                            if (v93)
                            {
                              v65[2](v65);
                              [v109 updateModelAttributes:v93 state:HIDWORD(v153) programHandle:*(&outputStruct + 1) intermediateBufferHandle:v153 queueDepth:SBYTE8(v153)];
                              v100 = [_ANEProgramForEvaluation programWithHandle:*(&outputStruct + 1) intermediateBufferHandle:v153 queueDepth:SBYTE8(v153)];
                              [v109 setProgram:v100];

                              v101 = [_ANEDeviceController controllerWithProgramHandle:*(&outputStruct + 1)];
                              v102 = [_ANEProgramIOSurfacesMapper mapperWithController:v101];
                              [v109 setMapper:v102];

                              v103 = gLogger;
                              if (os_log_type_enabled(v103, OS_LOG_TYPE_DEBUG))
                              {
                                v105 = NSStringFromSelector(a2);
                                *v146 = 138412802;
                                v147 = v105;
                                v148 = 1024;
                                v149 = outputStruct;
                                v150 = 2112;
                                v151 = v109;
                                _os_log_debug_impl(&dword_1AD246000, v103, OS_LOG_TYPE_DEBUG, "%@: END loadModelNewInstance success=%d updatedModel=%@", v146, 0x1Cu);
                              }

                              v11 = outputStruct;
                            }

                            else
                            {
                              v104 = gLogger;
                              if (os_log_type_enabled(v104, OS_LOG_TYPE_ERROR))
                              {
                                NSStringFromSelector(a2);
                                objc_claimAutoreleasedReturnValue();
                                [_ANEVirtualClient loadModelNewInstance:options:modelInstParams:qos:error:];
                              }

                              v11 = outputStruct;
                            }
                          }
                        }

                        else
                        {
                          v96 = gLogger;
                          if (os_log_type_enabled(v96, OS_LOG_TYPE_ERROR))
                          {
                            NSStringFromSelector(a2);
                            objc_claimAutoreleasedReturnValue();
                            [_ANEVirtualClient transferFileToHostWithPath:withChunkSize:withUUID:withModelInputPath:overWriteFileNameWith:];
                          }

                          if (error)
                          {
LABEL_167:
                            v97 = NSStringFromSelector(a2);
                            *error = [_ANEErrors virtualizationDataError:v97];
                          }

LABEL_168:
                          v11 = 0;
                        }

LABEL_170:
LABEL_171:

                        goto LABEL_172;
                      }

                      v88 = gLogger;
                      if (os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
                      {
                        NSStringFromSelector(a2);
                        objc_claimAutoreleasedReturnValue();
                        [_ANEVirtualClient loadModelNewInstance:options:modelInstParams:qos:error:];
                      }

                      if (error)
                      {
LABEL_162:
                        v95 = NSStringFromSelector(a2);
                        *error = [_ANEErrors dataNotFoundForMethod:v95];
                      }
                    }

                    else
                    {
                      v86 = gLogger;
                      if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
                      {
                        NSStringFromSelector(a2);
                        objc_claimAutoreleasedReturnValue();
                        [_ANEVirtualClient loadModelNewInstance:options:modelInstParams:qos:error:];
                      }

                      if (error)
                      {
                        if (!v75)
                        {
                          goto LABEL_162;
                        }

                        v87 = v75;
                        *error = v75;
                      }
                    }

                    v65[2](v65);
                    v11 = 0;
                    goto LABEL_170;
                  }

                  v84 = gLogger;
                  if (os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
                  {
                    NSStringFromSelector(a2);
                    objc_claimAutoreleasedReturnValue();
                    [_ANEVirtualClient loadModelNewInstance:options:modelInstParams:qos:error:];
                  }

                  if (error)
                  {
LABEL_139:
                    v85 = NSStringFromSelector(a2);
                    *error = [_ANEErrors dataNotFoundForMethod:v85];
                  }
                }

                else
                {
                  v83 = gLogger;
                  if (os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
                  {
                    NSStringFromSelector(a2);
                    objc_claimAutoreleasedReturnValue();
                    [_ANEVirtualClient loadModelNewInstance:options:modelInstParams:qos:error:];
                  }

                  if (error)
                  {
                    goto LABEL_139;
                  }
                }

                v66 = v69;
                v65[2](v65);
                goto LABEL_141;
              }

              goto LABEL_36;
            }
          }

          v28 = *v139;
LABEL_41:
          v29 = 0;
          while (1)
          {
            if (*v139 != v28)
            {
              objc_enumerationMutation(weightArray);
            }

            v30 = *(*(&v138 + 1) + 8 * v29);
            v31 = objc_autoreleasePoolPush();
            weightURL = [v30 weightURL];
            path = [weightURL path];

            if ([v124 containsObject:path])
            {
              v34 = gLogger;
              if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
              {
                v48 = NSStringFromSelector(a2);
                *buf = 138413058;
                *&buf[4] = v48;
                *&buf[12] = 1024;
                *&buf[14] = v118;
                *&buf[18] = 1024;
                *&buf[20] = v123;
                *&buf[24] = 2112;
                *&buf[26] = path;
                _os_log_debug_impl(&dword_1AD246000, v34, OS_LOG_TYPE_DEBUG, "%@: For procedure=%u weight=%u weight file already transferred at path=%@", buf, 0x22u);
              }

              v35 = 5;
              goto LABEL_71;
            }

            defaultManager = [MEMORY[0x1E696AC08] defaultManager];
            v137 = v25;
            v34 = [defaultManager attributesOfItemAtPath:path error:&v137];
            v37 = v137;

            if (v34)
            {
              if (!v37)
              {
                break;
              }
            }

            v43 = gLogger;
            if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
            {
              v54 = NSStringFromSelector(a2);
              *buf = 138412802;
              *&buf[4] = v54;
              *&buf[12] = 2112;
              *&buf[14] = v37;
              *&buf[22] = 2112;
              *&buf[24] = path;
              _os_log_error_impl(&dword_1AD246000, v43, OS_LOG_TYPE_ERROR, "%@: ERROR loadModelNewInstance failed, error=%@ trying to get attributes of weight file at path=%@!", buf, 0x20u);
            }

            if (!v37)
            {
              v39 = NSStringFromSelector(a2);
              v25 = [_ANEErrors dataNotFoundForMethod:v39];
LABEL_69:
              v121 = 0;
              v35 = 4;
LABEL_70:

              goto LABEL_71;
            }

            v121 = 0;
            v35 = 4;
            v25 = v37;
LABEL_71:

            objc_autoreleasePoolPop(v31);
            if (v35 != 5)
            {
              if (v35)
              {
                goto LABEL_95;
              }

              ++v123;
            }

            if (v27 == ++v29)
            {
              v63 = [weightArray countByEnumeratingWithState:&v138 objects:v160 count:16];
              v27 = v63;
              if (!v63)
              {
                goto LABEL_95;
              }

              goto LABEL_41;
            }
          }

          v38 = [v34 objectForKeyedSubscript:v119];
          v39 = v38;
          if (v38 && [v38 unsignedLongLongValue])
          {
            v40 = gLogger;
            if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
            {
              v56 = NSStringFromSelector(a2);
              *buf = 138413314;
              *&buf[4] = v56;
              *&buf[12] = 1024;
              *&buf[14] = v118;
              *&buf[18] = 1024;
              *&buf[20] = v123;
              *&buf[24] = 2112;
              *&buf[26] = v39;
              *&buf[34] = 2112;
              *&buf[36] = path;
              _os_log_debug_impl(&dword_1AD246000, v40, OS_LOG_TYPE_DEBUG, "%@: For procedure=%u transferring weight=%u transferring weight file with size=%@ at path=%@", buf, 0x2Cu);
            }

            v41 = [path rangeOfString:@".asset"];
            if (v41 == 0x7FFFFFFFFFFFFFFFLL)
            {
              v42 = gLogger;
              if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
              {
                v58 = NSStringFromSelector(a2);
                *buf = 138412546;
                *&buf[4] = v58;
                *&buf[12] = 2112;
                *&buf[14] = path;
                _os_log_debug_impl(&dword_1AD246000, v42, OS_LOG_TYPE_DEBUG, "%@: using weightFile only, could not find .asset directory in path=%@!", buf, 0x16u);
              }

              if (-[_ANEVirtualClient transferFileToHostWithPath:withChunkSize:withUUID:withModelInputPath:overWriteFileNameWith:](self, "transferFileToHostWithPath:withChunkSize:withUUID:withModelInputPath:overWriteFileNameWith:", path, [v39 unsignedIntValue], uUIDString, 0, 0))
              {
                goto LABEL_58;
              }

              v50 = gLogger;
              if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
              {
                v60 = NSStringFromSelector(a2);
                *buf = 138412546;
                *&buf[4] = v60;
                *&buf[12] = 2112;
                *&buf[14] = path;
                _os_log_error_impl(&dword_1AD246000, v50, OS_LOG_TYPE_ERROR, "%@: ERROR loadModelNewInstance failed, could not transfer file at path=%@!", buf, 0x16u);
              }

              v45 = NSStringFromSelector(a2);
              v46 = [_ANEErrors virtualizationDataError:v45];
              goto LABEL_66;
            }

            v47 = [path rangeOfString:@"/" options:4 range:{0, v41}];
            if (v47 != 0x7FFFFFFFFFFFFFFFLL)
            {
              v49 = [path substringFromIndex:v47 + 1];
              v45 = v49;
              if (v49 && [v49 length])
              {
                if (-[_ANEVirtualClient transferFileToHostWithPath:withChunkSize:withUUID:withModelInputPath:overWriteFileNameWith:](self, "transferFileToHostWithPath:withChunkSize:withUUID:withModelInputPath:overWriteFileNameWith:", path, [v39 unsignedIntValue], uUIDString, 0, v45))
                {

LABEL_58:
                  [v124 addObject:path];
                  v25 = 0;
                  v35 = 0;
                  goto LABEL_70;
                }

                v57 = gLogger;
                if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
                {
                  v62 = NSStringFromSelector(a2);
                  *buf = 138412546;
                  *&buf[4] = v62;
                  *&buf[12] = 2112;
                  *&buf[14] = path;
                  _os_log_error_impl(&dword_1AD246000, v57, OS_LOG_TYPE_ERROR, "%@: ERROR loadModelNewInstance failed, could not transfer file at path=%@!", buf, 0x16u);
                }

                v52 = NSStringFromSelector(a2);
                v53 = [_ANEErrors virtualizationDataError:v52];
              }

              else
              {
                v51 = gLogger;
                if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
                {
                  v61 = NSStringFromSelector(a2);
                  *buf = 138412546;
                  *&buf[4] = v61;
                  *&buf[12] = 2112;
                  *&buf[14] = path;
                  _os_log_error_impl(&dword_1AD246000, v51, OS_LOG_TYPE_ERROR, "%@: ERROR loadModelNewInstance failed, get overWriteFileName from path=%@!", buf, 0x16u);
                }

                v52 = NSStringFromSelector(a2);
                v53 = [_ANEErrors dataNotFoundForMethod:v52];
              }

              v25 = v53;

LABEL_67:
              goto LABEL_69;
            }

            v44 = gLogger;
            if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
            {
              v59 = NSStringFromSelector(a2);
              *buf = 138412546;
              *&buf[4] = v59;
              *&buf[12] = 2112;
              *&buf[14] = path;
              _os_log_error_impl(&dword_1AD246000, v44, OS_LOG_TYPE_ERROR, "%@: ERROR loadModelNewInstance failed, could not get complete name of .asset directory in path=%@!", buf, 0x16u);
            }
          }

          else
          {
            v44 = gLogger;
            if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
            {
              v55 = NSStringFromSelector(a2);
              *buf = 138412546;
              *&buf[4] = v55;
              *&buf[12] = 2112;
              *&buf[14] = path;
              _os_log_error_impl(&dword_1AD246000, v44, OS_LOG_TYPE_ERROR, "%@: ERROR loadModelNewInstance failed, could not get fileSize for file at path=%@!", buf, 0x16u);
            }
          }

          v45 = NSStringFromSelector(a2);
          v46 = [_ANEErrors dataNotFoundForMethod:v45];
LABEL_66:
          v25 = v46;
          goto LABEL_67;
        }

        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          NSStringFromSelector(a2);
          objc_claimAutoreleasedReturnValue();
          [_ANEVirtualClient loadModelNewInstance:options:modelInstParams:qos:error:];
        }

        if (error)
        {
          uUIDString = NSStringFromSelector(a2);
          v15 = [_ANEErrors dataNotFoundForMethod:?];
          goto LABEL_28;
        }
      }

      else
      {
        v14 = gLogger;
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          NSStringFromSelector(a2);
          objc_claimAutoreleasedReturnValue();
          [_ANEVirtualClient loadModelNewInstance:options:modelInstParams:qos:error:];
        }

        if (error)
        {
          uUIDString = NSStringFromSelector(a2);
          v15 = [_ANEErrors baseModelIdentifierNotFoundForNewInstanceMethod:?];
LABEL_28:
          v11 = 0;
          *error = v15;
          goto LABEL_176;
        }
      }

      v11 = 0;
      goto LABEL_177;
    }

    v13 = gLogger;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualClient loadModelNewInstance:options:modelInstParams:qos:error:];
    }

    if (error)
    {
LABEL_13:
      v107 = NSStringFromSelector(a2);
      [_ANEErrors invalidModelInstanceErrorForMethod:?];
      *error = v11 = 0;
      goto LABEL_177;
    }
  }

  else
  {
    v12 = gLogger;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualClient loadModel:options:qos:error:];
    }

    if (error)
    {
      goto LABEL_13;
    }
  }

  v11 = 0;
LABEL_178:

  v98 = *MEMORY[0x1E69E9840];
  return v11;
}

- (BOOL)unloadModel:(id)model options:(id)options qos:(unsigned int)qos error:(id *)error
{
  v97 = *MEMORY[0x1E69E9840];
  modelCopy = model;
  optionsCopy = options;
  v10 = gLogger;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v44 = NSStringFromSelector(a2);
    *buf = 138413058;
    v75 = v44;
    v76 = 2112;
    v77 = modelCopy;
    v78 = 2112;
    v79 = optionsCopy;
    LOWORD(v80) = 1024;
    *(&v80 + 2) = qos;
    _os_log_debug_impl(&dword_1AD246000, v10, OS_LOG_TYPE_DEBUG, "%@: Model=%@ options=%@ qos=%d\n", buf, 0x26u);
  }

  bzero(buf, 0x1728uLL);
  if (([(_ANEVirtualClient *)self negotiatedCapabilityMask]& 4) == 0)
  {
    [(_ANEVirtualClient *)self copyErrorValue:buf];
    v11 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:optionsCopy requiringSecureCoding:1 error:0];
    v12 = MEMORY[0x1E696ACC8];
    v13 = [modelCopy key];
    v14 = [v13 length];
    if (v14)
    {
      path = [modelCopy key];
      modelURL = path;
    }

    else
    {
      modelURL = [modelCopy modelURL];
      path = [modelURL path];
    }

    v27 = [v12 archivedDataWithRootObject:path requiringSecureCoding:1 error:0];
    if (!v14)
    {
    }

    v80 = -[_ANEVirtualClient copyToIOSurface:length:ioSID:](self, "copyToIOSurface:length:ioSID:", v11, [v11 length], v94);
    v81 = -[_ANEVirtualClient copyToIOSurface:length:ioSID:](self, "copyToIOSurface:length:ioSID:", v27, [v27 length], v85);
    v83 = 0;
    v84 = 0;
    string_id = [modelCopy string_id];
    programHandle = [modelCopy programHandle];
    intermediateBufferHandle = [modelCopy intermediateBufferHandle];
    v90[0] = [modelCopy queueDepth];
    v91 = 0;
    perfStatsMask = [modelCopy perfStatsMask];
    qosCopy2 = qos;
    v28 = gLogger;
    if (os_log_type_enabled(gLogger, OS_LOG_TYPE_DEBUG))
    {
      *v48 = 67112192;
      v49 = v83;
      v50 = 1024;
      v51 = HIDWORD(v83);
      v52 = 1024;
      v53 = v84;
      v54 = 1024;
      v55 = v85[0];
      v56 = 2048;
      v57 = string_id;
      v58 = 2048;
      v59 = programHandle;
      v60 = 2048;
      v61 = intermediateBufferHandle;
      v62 = 1024;
      v63 = v90[0];
      v64 = 1024;
      v65 = v91;
      v66 = 1024;
      v67 = perfStatsMask;
      v68 = 1024;
      v69 = qosCopy2;
      v70 = 1024;
      v71 = v94[0];
      v72 = 1024;
      v73 = v94[413];
      _os_log_debug_impl(&dword_1AD246000, v28, OS_LOG_TYPE_DEBUG, "ANEVirtualClient virtualANEModel.ioSIDModelNet=%u virtualANEModel.ioSIDModelShape=%u virtualANEModel.ioSIDModelWeight=%u virtualANEModel.ioSIDKey=%u virtualANEModel.string_id=%lld virtualANEModel.programHandle=%lld virtualANEModel.intermediateBufferHandle=%lld virtualANEModel.queueDepth=%d virtualANEModel.ioSIDModelAttributes=%u virtualANEModel.perfStatsMask=%u virtualANEModel.qos=%u virtualANEModel.ioSIDOptions=%u virtualANEModel.ioSIDErrorValue=%u", v48, 0x5Cu);
    }

    v29 = [(_ANEVirtualClient *)self callIOUserClient:3 inParams:&v82 outParams:&v95];
    if (os_log_type_enabled(gLogger, OS_LOG_TYPE_DEBUG))
    {
      [_ANEVirtualClient unloadModel:options:qos:error:];
    }

LABEL_31:
    [(_ANEVirtualClient *)self updateError:buf error:error];
    [(_ANEVirtualClient *)self releaseIOSurfaces:buf];
    goto LABEL_32;
  }

  if (os_log_type_enabled(gLogger, OS_LOG_TYPE_DEBUG))
  {
    [_ANEVirtualClient unloadModel:options:qos:error:];
  }

  v96 = 0;
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  [(_ANEVirtualClient *)self copyModelMetaData:modelCopy options:MEMORY[0x1E695E0F8] dictionary:Mutable vmData:buf];
  getCacheURLIdentifier = [modelCopy getCacheURLIdentifier];
  v19 = getCacheURLIdentifier == 0;

  if (!v19)
  {
    cacheURLIdentifier = [modelCopy cacheURLIdentifier];

    v21 = gLogger;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualClient loadModel:options:qos:error:];
    }

    CFDictionarySetValue(Mutable, @"modelCacheURLIdentifier", cacheURLIdentifier);
  }

  [(_ANEVirtualClient *)self copyErrorValue:Mutable vmData:buf];
  [(_ANEVirtualClient *)self copyOptions:optionsCopy dictionary:Mutable vmData:buf];
  v22 = MEMORY[0x1E696ACC8];
  v23 = [modelCopy key];
  v24 = [v23 length];
  if (v24)
  {
    path2 = [modelCopy key];
    modelURL2 = path2;
  }

  else
  {
    modelURL2 = [modelCopy modelURL];
    path2 = [modelURL2 path];
  }

  v11 = [v22 archivedDataWithRootObject:path2 requiringSecureCoding:1 error:0];
  if (!v24)
  {
  }

  v81 = -[_ANEVirtualClient copyToIOSurface:length:ioSID:](self, "copyToIOSurface:length:ioSID:", v11, [v11 length], v85);
  v30 = *MEMORY[0x1E695E480];
  v31 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, v85);
  CFDictionarySetValue(Mutable, @"ioSIDKey", v31);
  CFRelease(v31);
  v86[0] = [v11 length];
  v32 = CFNumberCreate(v30, kCFNumberSInt64Type, v86);
  CFDictionarySetValue(Mutable, @"keyLength", v32);
  CFRelease(v32);
  string_id = [modelCopy string_id];
  v33 = CFNumberCreate(v30, kCFNumberSInt64Type, &string_id);
  CFDictionarySetValue(Mutable, @"string_id", v33);
  CFRelease(v33);
  programHandle = [modelCopy programHandle];
  v34 = CFNumberCreate(v30, kCFNumberSInt64Type, &programHandle);
  CFDictionarySetValue(Mutable, @"programHandle", v34);
  CFRelease(v34);
  intermediateBufferHandle = [modelCopy intermediateBufferHandle];
  v35 = CFNumberCreate(v30, kCFNumberSInt64Type, &intermediateBufferHandle);
  CFDictionarySetValue(Mutable, @"intermediateBufferHandle", v35);
  CFRelease(v35);
  v90[0] = [modelCopy queueDepth];
  v36 = CFNumberCreate(v30, kCFNumberSInt8Type, v90);
  CFDictionarySetValue(Mutable, @"queueDepth", v36);
  CFRelease(v36);
  perfStatsMask = [modelCopy perfStatsMask];
  v37 = CFNumberCreate(v30, kCFNumberSInt32Type, &perfStatsMask);
  CFDictionarySetValue(Mutable, @"perfStatsMask", v37);
  CFRelease(v37);
  qosCopy2 = qos;
  v38 = CFNumberCreate(v30, kCFNumberSInt32Type, &qosCopy2);
  CFDictionarySetValue(Mutable, @"qos", v38);
  CFRelease(v38);
  [(_ANEVirtualClient *)self printDictionary:Mutable];
  v39 = [(_ANEVirtualClient *)self callIOUserClientWithDictionary:3 inDictionary:Mutable error:error];
  CFRelease(Mutable);
  [(_ANEVirtualClient *)self printDictionary:v39];
  if (v39)
  {
    v40 = gLogger;
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualClient unloadModel:options:qos:error:];
    }

    [_ANEVirtualClient copyDictionaryDataToStruct:&v95 dictionary:v39];
    v29 = v96 == 1;
    v41 = gLogger;
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualClient unloadModel:options:qos:error:];
    }

    CFRelease(v39);
    goto LABEL_31;
  }

  if (os_log_type_enabled(gLogger, OS_LOG_TYPE_ERROR))
  {
    [_ANEVirtualClient unloadModel:options:qos:error:];
  }

  [(_ANEVirtualClient *)self releaseIOSurfaces:buf];

  v29 = 0;
LABEL_32:

  v42 = *MEMORY[0x1E69E9840];
  return v29;
}

- (BOOL)evaluateWithModel:(id)model options:(id)options request:(id)request qos:(unsigned int)qos error:(id *)error
{
  v70 = *MEMORY[0x1E69E9840];
  modelCopy = model;
  optionsCopy = options;
  requestCopy = request;
  v16 = requestCopy;
  v59 = 0;
  v60 = &v59;
  v61 = 0x2020000000;
  v62 = 0;
  if (!modelCopy)
  {
    goto LABEL_15;
  }

  completionHandler = [requestCopy completionHandler];
  v18 = completionHandler == 0;

  if (!v18)
  {
    v37 = dispatch_queue_create("com.apple.ane.vmclient-async", 0);
    if (v37)
    {
      v38 = [objc_alloc(MEMORY[0x1E696CE08]) initWithDispatchQueue:v37];
      if (!v38 && os_log_type_enabled(gLogger, OS_LOG_TYPE_ERROR))
      {
        [_ANEVirtualClient evaluateWithModel:options:request:qos:error:];
      }

      v19 = objc_opt_new();
      v35 = [_ANESharedSignalEvent signalEventWithValue:4097 symbolIndex:0 eventType:0 sharedEvent:v19, v19];
      v56[0] = MEMORY[0x1E69E9820];
      v56[1] = 3221225472;
      v56[2] = __65___ANEVirtualClient_evaluateWithModel_options_request_qos_error___block_invoke;
      v56[3] = &unk_1E79BA3E0;
      v57 = v19;
      v20 = v16;
      v58 = v20;
      v34 = v57;
      [v57 notifyListener:v38 atValue:4097 block:v56];
      v21 = objc_opt_new();
      v36 = [_ANESharedSignalEvent signalEventWithValue:1 symbolIndex:0 eventType:0 sharedEvent:v21];
      v53[0] = MEMORY[0x1E69E9820];
      v53[1] = 3221225472;
      v53[2] = __65___ANEVirtualClient_evaluateWithModel_options_request_qos_error___block_invoke_82;
      v53[3] = &unk_1E79BA3E0;
      v22 = v21;
      v54 = v22;
      v23 = v20;
      v55 = v23;
      [v22 notifyListener:v38 atValue:1 block:v53];
      v24 = gLogger;
      if (os_log_type_enabled(gLogger, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134218498;
        v65 = v35;
        v66 = 2048;
        v67 = v36;
        v68 = 2112;
        v69 = modelCopy;
        _os_log_debug_impl(&dword_1AD246000, v24, OS_LOG_TYPE_DEBUG, "[_ANEVirtualClient] completionEvent success event %p error event %p for model %@\n", buf, 0x20u);
      }

      v63[0] = v35;
      v63[1] = v36;
      v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v63 count:2];
      v26 = [_ANESharedEvents sharedEventsWithSignalEvents:v25 waitEvents:MEMORY[0x1E695E0F0]];

      queue = [(_ANEVirtualClient *)self queue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __65___ANEVirtualClient_evaluateWithModel_options_request_qos_error___block_invoke_90;
      block[3] = &unk_1E79BA408;
      v51 = &v59;
      block[4] = self;
      v47 = modelCopy;
      v48 = optionsCopy;
      qosCopy = qos;
      v49 = v23;
      v50 = v26;
      v28 = v26;
      dispatch_sync(queue, block);

      *(v60 + 24) = 1;
      goto LABEL_11;
    }

    v31 = gLogger;
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualClient evaluateWithModel:options:request:qos:error:];
    }

LABEL_15:
    v30 = 0;
    goto LABEL_16;
  }

  queue2 = [(_ANEVirtualClient *)self queue];
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __65___ANEVirtualClient_evaluateWithModel_options_request_qos_error___block_invoke_2;
  v39[3] = &unk_1E79BA430;
  v43 = &v59;
  v39[4] = self;
  v40 = modelCopy;
  v41 = optionsCopy;
  qosCopy2 = qos;
  v42 = v16;
  errorCopy = error;
  dispatch_sync(queue2, v39);

LABEL_11:
  v30 = *(v60 + 24);
LABEL_16:
  _Block_object_dispose(&v59, 8);

  v32 = *MEMORY[0x1E69E9840];
  return v30 & 1;
}

- (BOOL)doEvaluateWithModel:(id)model options:(id)options request:(id)request qos:(unsigned int)qos completionEvent:(id)event error:(id *)error
{
  v256 = *MEMORY[0x1E69E9840];
  modelCopy = model;
  optionsCopy = options;
  requestCopy = request;
  eventCopy = event;
  bzero(&programHandle, 0x1AC0uLL);
  v217 = 0u;
  v218 = 0u;
  v215 = 0u;
  outputStruct = 0u;
  v208 = 0;
  v209 = &v208;
  v210 = 0x5012000000;
  v211 = __Block_byref_object_copy__91;
  v212 = __Block_byref_object_dispose__92;
  v213 = &unk_1AD2A047D;
  v214 = 0u;
  v207[0] = MEMORY[0x1E69E9820];
  v207[1] = 3221225472;
  v207[2] = __83___ANEVirtualClient_doEvaluateWithModel_options_request_qos_completionEvent_error___block_invoke;
  v207[3] = &unk_1E79BA3B8;
  v207[4] = &v208;
  v169 = MEMORY[0x1B26F37D0](v207);
  programHandle = [modelCopy programHandle];
  qosCopy = qos;
  if (optionsCopy)
  {
    v12 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:optionsCopy requiringSecureCoding:1 error:0];
    v13 = v12;
    if (v12)
    {
      v14 = [v12 length];
      v222[1] = v14;
      if (v14)
      {
        v15 = [(_ANEVirtualClient *)self copyToIOSurface:v13 length:v14 ioSID:&v220];
        v209[8] = v15;

        goto LABEL_5;
      }

      v52 = gLogger;
      if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
      {
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        [_ANEVirtualClient doEvaluateWithModel:options:request:qos:completionEvent:error:];
      }
    }

    else
    {
      v52 = gLogger;
      if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
      {
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        [_ANEVirtualClient doEvaluateWithModel:options:request:qos:completionEvent:error:];
      }
    }

LABEL_128:
    v144 = 0;
    goto LABEL_129;
  }

LABEL_5:
  v205 = 0u;
  v206 = 0u;
  v203 = 0u;
  v204 = 0u;
  inputArray = [requestCopy inputArray];
  v17 = [inputArray countByEnumeratingWithState:&v203 objects:v255 count:16];
  v18 = 0;
  if (v17)
  {
    v19 = *v204;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v204 != v19)
        {
          objc_enumerationMutation(inputArray);
        }

        ID = IOSurfaceGetID([*(*(&v203 + 1) + 8 * i) ioSurface]);
        v231[v18] = ID;
        v22 = gLogger;
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          v23 = NSStringFromSelector(a2);
          v247 = 138412546;
          v248 = v23;
          v249 = 1024;
          *v250 = ID;
          _os_log_debug_impl(&dword_1AD246000, v22, OS_LOG_TYPE_DEBUG, "%@: request.inputArray ioSID: %u", &v247, 0x12u);
        }

        ++v18;
      }

      v17 = [inputArray countByEnumeratingWithState:&v203 objects:v255 count:16];
    }

    while (v17);
  }

  v224 = v18;
  v199 = 0u;
  v200 = 0u;
  v201 = 0u;
  v202 = 0u;
  inputIndexArray = [requestCopy inputIndexArray];
  v25 = 0;
  v26 = [inputIndexArray countByEnumeratingWithState:&v199 objects:v254 count:16];
  if (v26)
  {
    v27 = *v200;
    do
    {
      for (j = 0; j != v26; ++j)
      {
        if (*v200 != v27)
        {
          objc_enumerationMutation(inputIndexArray);
        }

        v29 = *(*(&v199 + 1) + 8 * j);
        v231[v25 + 64] = [v29 unsignedIntValue];
        v30 = gLogger;
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
        {
          v31 = NSStringFromSelector(a2);
          unsignedLongLongValue = [v29 unsignedLongLongValue];
          v247 = 138412546;
          v248 = v31;
          v249 = 2048;
          *v250 = unsignedLongLongValue;
          _os_log_debug_impl(&dword_1AD246000, v30, OS_LOG_TYPE_DEBUG, "%@: request.inputIndexArray : %llu", &v247, 0x16u);
        }

        ++v25;
      }

      v26 = [inputIndexArray countByEnumeratingWithState:&v199 objects:v254 count:16];
    }

    while (v26);
  }

  v225 = v25;
  v195 = 0u;
  v196 = 0u;
  v197 = 0u;
  v198 = 0u;
  outputArray = [requestCopy outputArray];
  v34 = 0;
  v35 = [outputArray countByEnumeratingWithState:&v195 objects:v253 count:16];
  if (v35)
  {
    v36 = *v196;
    do
    {
      for (k = 0; k != v35; ++k)
      {
        if (*v196 != v36)
        {
          objc_enumerationMutation(outputArray);
        }

        v38 = IOSurfaceGetID([*(*(&v195 + 1) + 8 * k) ioSurface]);
        v231[v34 + 128] = v38;
        v39 = gLogger;
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
        {
          v40 = NSStringFromSelector(a2);
          v247 = 138412546;
          v248 = v40;
          v249 = 1024;
          *v250 = v38;
          _os_log_debug_impl(&dword_1AD246000, v39, OS_LOG_TYPE_DEBUG, "%@: request.outputArray ioSID: %u", &v247, 0x12u);
        }

        ++v34;
      }

      v35 = [outputArray countByEnumeratingWithState:&v195 objects:v253 count:16];
    }

    while (v35);
  }

  v226 = v34;
  v191 = 0u;
  v192 = 0u;
  v193 = 0u;
  v194 = 0u;
  outputIndexArray = [requestCopy outputIndexArray];
  v42 = 0;
  v43 = [outputIndexArray countByEnumeratingWithState:&v191 objects:v252 count:16];
  if (v43)
  {
    v44 = *v192;
    do
    {
      for (m = 0; m != v43; ++m)
      {
        if (*v192 != v44)
        {
          objc_enumerationMutation(outputIndexArray);
        }

        v46 = *(*(&v191 + 1) + 8 * m);
        v231[v42 + 192] = [v46 unsignedIntValue];
        v47 = gLogger;
        if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
        {
          v48 = NSStringFromSelector(a2);
          unsignedLongLongValue2 = [v46 unsignedLongLongValue];
          v247 = 138412546;
          v248 = v48;
          v249 = 2048;
          *v250 = unsignedLongLongValue2;
          _os_log_debug_impl(&dword_1AD246000, v47, OS_LOG_TYPE_DEBUG, "%@: request.outputIndexArray : %llu", &v247, 0x16u);
        }

        ++v42;
      }

      v43 = [outputIndexArray countByEnumeratingWithState:&v191 objects:v252 count:16];
    }

    while (v43);
  }

  v227 = v42;
  weightsBuffer = [requestCopy weightsBuffer];
  if ([weightsBuffer ioSurface])
  {
    weightsBuffer2 = [requestCopy weightsBuffer];
    HIDWORD(v220) = IOSurfaceGetID([weightsBuffer2 ioSurface]);
  }

  else
  {
    HIDWORD(v220) = 0;
  }

  v53 = gLogger;
  if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
  {
    v54 = NSStringFromSelector(a2);
    [_ANEVirtualClient doEvaluateWithModel:v54 options:? request:? qos:? completionEvent:? error:?];
  }

  procedureIndex = [requestCopy procedureIndex];
  unsignedLongLongValue3 = [procedureIndex unsignedLongLongValue];

  transactionHandle = [requestCopy transactionHandle];
  unsignedLongLongValue4 = [transactionHandle unsignedLongLongValue];

  v189 = 0u;
  v190 = 0u;
  v187 = 0u;
  v188 = 0u;
  obj = [requestCopy perfStatsArray];
  v57 = 0;
  v58 = [obj countByEnumeratingWithState:&v187 objects:v251 count:16];
  if (v58)
  {
    v59 = *v188;
    do
    {
      for (n = 0; n != v58; ++n)
      {
        if (*v188 != v59)
        {
          objc_enumerationMutation(obj);
        }

        v61 = *(*(&v187 + 1) + 8 * n);
        stats = [v61 stats];
        v63 = IOSurfaceGetID([stats ioSurface]);

        v231[v57 + 256] = v63;
        v231[v57 + 320] = [v61 statType];
        v64 = gLogger;
        if (os_log_type_enabled(v64, OS_LOG_TYPE_DEBUG))
        {
          v65 = NSStringFromSelector(a2);
          statType = [v61 statType];
          v247 = 138412802;
          v248 = v65;
          v249 = 1024;
          *v250 = v63;
          *&v250[4] = 2048;
          *&v250[6] = statType;
          _os_log_debug_impl(&dword_1AD246000, v64, OS_LOG_TYPE_DEBUG, "%@: ioSIDPerStats ioSID: %u statsType : %ld", &v247, 0x1Cu);
        }

        ++v57;
      }

      v58 = [obj countByEnumeratingWithState:&v187 objects:v251 count:16];
    }

    while (v58);
  }

  v228 = v57;
  v67 = [_ANEVirtualClient createIOSurface:4096 ioSID:&v221];
  v209[6] = v67;
  if (!v67)
  {
    v142 = gLogger;
    if (os_log_type_enabled(v142, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualClient doEvaluateWithModel:options:request:qos:completionEvent:error:];
    }

    goto LABEL_128;
  }

  v68 = [_ANEVirtualClient createIOSurface:4096 ioSID:&v221 + 4];
  v209[9] = v68;
  if (!v68)
  {
    v69 = gLogger;
    if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
    {
      v70 = NSStringFromSelector(a2);
      [_ANEVirtualClient doEvaluateWithModel:v70 options:? request:? qos:? completionEvent:? error:?];
    }
  }

  sharedEvents = [requestCopy sharedEvents];
  v72 = sharedEvents == 0;

  if (!v72)
  {
    sharedEvents2 = [requestCopy sharedEvents];
    signalEvents = [sharedEvents2 signalEvents];
    v233 = [signalEvents count];

    v185 = 0u;
    v186 = 0u;
    v183 = 0u;
    v184 = 0u;
    sharedEvents3 = [requestCopy sharedEvents];
    signalEvents2 = [sharedEvents3 signalEvents];

    v77 = [signalEvents2 countByEnumeratingWithState:&v183 objects:v246 count:16];
    if (v77)
    {
      v78 = 0;
      v79 = *v184;
      do
      {
        for (ii = 0; ii != v77; ++ii)
        {
          if (*v184 != v79)
          {
            objc_enumerationMutation(signalEvents2);
          }

          v81 = *(*(&v183 + 1) + 8 * ii);
          sharedEvent = [v81 sharedEvent];
          v83 = &v234[5 * v78 + 320];
          *v83 = [sharedEvent eventPort];

          *(v83 + 1) = [v81 eventType];
          v83[1] = [v81 value];
          *(v83 + 4) = [v81 symbolIndex];
          v83[3] = [v81 agentMask];
          *(v83 + 32) = 0;
          v84 = gLogger;
          if (os_log_type_enabled(v84, OS_LOG_TYPE_DEBUG))
          {
            v85 = NSStringFromSelector(a2);
            v86 = *v83;
            v87 = v83[1];
            v247 = 138412802;
            v248 = v85;
            v249 = 1024;
            *v250 = v86;
            *&v250[4] = 2048;
            *&v250[6] = v87;
            _os_log_debug_impl(&dword_1AD246000, v84, OS_LOG_TYPE_DEBUG, "%@: signal events port is %#x and value is %llu\n", &v247, 0x1Cu);
          }

          ++v78;
        }

        v77 = [signalEvents2 countByEnumeratingWithState:&v183 objects:v246 count:16];
      }

      while (v77);
    }

    if (eventCopy)
    {
      signalEvents3 = [eventCopy signalEvents];
      v89 = [signalEvents3 count] == 2;

      if (!v89)
      {
        v90 = gLogger;
        if (os_log_type_enabled(v90, OS_LOG_TYPE_ERROR))
        {
          v91 = NSStringFromSelector(a2);
          [_ANEVirtualClient doEvaluateWithModel:v91 options:? request:? qos:? completionEvent:? error:?];
        }
      }

      v92 = 0;
      v93 = 1;
      do
      {
        v94 = v93;
        signalEvents4 = [eventCopy signalEvents];
        v96 = [signalEvents4 objectAtIndexedSubscript:v92];
        v97 = [v96 value] == 4097;

        if (v97)
        {
          signalEvents5 = [eventCopy signalEvents];
          v99 = [signalEvents5 objectAtIndexedSubscript:v92];
          sharedEvent2 = [v99 sharedEvent];
          eventPort = [sharedEvent2 eventPort];

          signalEvents6 = [eventCopy signalEvents];
          v102 = [signalEvents6 objectAtIndexedSubscript:v92];
          eventType = [v102 eventType];

          signalEvents7 = [eventCopy signalEvents];
          v104 = [signalEvents7 objectAtIndexedSubscript:v92];
          value = [v104 value];

          signalEvents8 = [eventCopy signalEvents];
          v106 = [signalEvents8 objectAtIndexedSubscript:v92];
          symbolIndex = [v106 symbolIndex];

          v239 = 0;
          v107 = gLogger;
          if (os_log_type_enabled(v107, OS_LOG_TYPE_DEBUG))
          {
            v108 = NSStringFromSelector(a2);
            v247 = 138412802;
            v248 = v108;
            v249 = 1024;
            *v250 = eventPort;
            *&v250[4] = 2048;
            *&v250[6] = value;
            _os_log_debug_impl(&dword_1AD246000, v107, OS_LOG_TYPE_DEBUG, "%@: ANEVirtualClient success completionEvent signal events port is %#x and value is %llu\n", &v247, 0x1Cu);
          }
        }

        else
        {
          signalEvents9 = [eventCopy signalEvents];
          v110 = [signalEvents9 objectAtIndexedSubscript:v92];
          sharedEvent3 = [v110 sharedEvent];
          eventPort2 = [sharedEvent3 eventPort];

          signalEvents10 = [eventCopy signalEvents];
          v113 = [signalEvents10 objectAtIndexedSubscript:v92];
          eventType2 = [v113 eventType];

          signalEvents11 = [eventCopy signalEvents];
          v115 = [signalEvents11 objectAtIndexedSubscript:v92];
          value2 = [v115 value];

          signalEvents12 = [eventCopy signalEvents];
          v117 = [signalEvents12 objectAtIndexedSubscript:v92];
          symbolIndex2 = [v117 symbolIndex];

          v244 = 0;
          v107 = gLogger;
          if (os_log_type_enabled(v107, OS_LOG_TYPE_DEBUG))
          {
            v118 = NSStringFromSelector(a2);
            v247 = 138412802;
            v248 = v118;
            v249 = 1024;
            *v250 = eventPort2;
            *&v250[4] = 2048;
            *&v250[6] = value2;
            _os_log_debug_impl(&dword_1AD246000, v107, OS_LOG_TYPE_DEBUG, "%@: ANEVirtualClient error completionEvent signal events port is %#x and value is %llu\n", &v247, 0x1Cu);
          }
        }

        v93 = 0;
        v92 = 1;
      }

      while ((v94 & 1) != 0);
    }

    sharedEvents4 = [requestCopy sharedEvents];
    waitEvents = [sharedEvents4 waitEvents];
    v232 = [waitEvents count];

    if (v232)
    {
      v121 = gLogger;
      if (os_log_type_enabled(v121, OS_LOG_TYPE_DEBUG))
      {
        v122 = NSStringFromSelector(a2);
        [_ANEVirtualClient doEvaluateWithModel:v122 options:? request:? qos:? completionEvent:? error:?];
      }
    }

    v123 = gLogger;
    if (os_log_type_enabled(v123, OS_LOG_TYPE_DEBUG))
    {
      v124 = NSStringFromSelector(a2);
      [_ANEVirtualClient doEvaluateWithModel:v124 options:? request:? qos:? completionEvent:? error:?];
    }

    v181 = 0u;
    v182 = 0u;
    v179 = 0u;
    v180 = 0u;
    sharedEvents5 = [requestCopy sharedEvents];
    waitEvents2 = [sharedEvents5 waitEvents];

    v127 = [waitEvents2 countByEnumeratingWithState:&v179 objects:v245 count:16];
    if (v127)
    {
      v128 = 0;
      v129 = *v180;
      do
      {
        for (jj = 0; jj != v127; ++jj)
        {
          if (*v180 != v129)
          {
            objc_enumerationMutation(waitEvents2);
          }

          v131 = *(*(&v179 + 1) + 8 * jj);
          sharedEvent4 = [v131 sharedEvent];
          v133 = &v234[5 * v128];
          *v133 = [sharedEvent4 eventPort];

          *(v133 + 1) = [v131 eventType];
          v133[1] = [v131 value];
          *(v133 + 4) = 0;
          v133[3] = 0;
          *(v133 + 32) = 0;
          ++v128;
        }

        v127 = [waitEvents2 countByEnumeratingWithState:&v179 objects:v245 count:16];
      }

      while (v127);
    }
  }

  v134 = [_ANEVirtualClient createIOSurface:256 ioSID:v222];
  v209[7] = v134;
  if (!v134)
  {
    v135 = gLogger;
    if (os_log_type_enabled(v135, OS_LOG_TYPE_ERROR))
    {
      v136 = NSStringFromSelector(a2);
      [_ANEVirtualClient doEvaluateWithModel:v136 options:? request:? qos:? completionEvent:? error:?];
    }
  }

  inputStruct[0] = &programHandle;
  inputStruct[1] = 6848;
  v177 = 48;
  v137 = IOConnectCallMethod(self->_connect, 0x13u, 0, 0, inputStruct, 0x10uLL, 0, 0, &outputStruct, &v177);
  if (v137)
  {
    v137 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Kernel call failed with error=0x%x", v137];
    v139 = [_ANEErrors programInferenceOtherErrorForMethod:v137];
    v140 = gLogger;
    if (os_log_type_enabled(v140, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualClient doEvaluateWithModel:options:request:qos:completionEvent:error:];
    }

    if (error)
    {
      v141 = v139;
      *error = v139;
    }

    v169[2]();

LABEL_127:
    goto LABEL_128;
  }

  if ((outputStruct & 1) == 0)
  {
    v145 = v209[7];
    v176 = 0;
    v146 = [_ANEVirtualClient updateError:v145 errorLength:v217 errorCode:*(&outputStruct + 1) error:&v176];
    v139 = v176;
    if (!v146)
    {
      v147 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Inferences failed with unknown host error"];
      v148 = [_ANEErrors programInferenceOtherErrorForMethod:v147];

      v139 = v148;
    }

    v149 = gLogger;
    if (os_log_type_enabled(v149, OS_LOG_TYPE_ERROR))
    {
      v150 = NSStringFromSelector(a2);
      [_ANEVirtualClient doEvaluateWithModel:v150 options:? request:? qos:? completionEvent:? error:?];
    }

    if (error)
    {
      v151 = v139;
      *error = v139;
    }

    v152 = +[_ANEStrings vm_debugDumpBootArg];
    v153 = [_ANEDeviceInfo isBoolBootArgSetTrue:v152];

    if (v153)
    {
      v154 = NSTemporaryDirectory();
      v155 = objc_alloc_init(MEMORY[0x1E696AB78]);
      [v155 setDateFormat:@"yyyyMMdd_HHmmss"];
      date = [MEMORY[0x1E695DF00] date];
      v157 = [v155 stringFromDate:date];

      v158 = [v154 stringByAppendingPathComponent:@"model_dump.txt"];
      v157 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_%@.txt", v158, v157];

      v160 = [modelCopy description];
      [v160 writeToFile:v157 atomically:1 encoding:4 error:0];
      v161 = [v154 stringByAppendingPathComponent:@"request_dump.txt"];
      v1572 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_%@.txt", v161, v157];

      v163 = [requestCopy description];
      [v163 writeToFile:v1572 atomically:1 encoding:4 error:0];

      v164 = gLogger;
      if (os_log_type_enabled(v164, OS_LOG_TYPE_ERROR))
      {
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        [_ANEVirtualClient doEvaluateWithModel:options:request:qos:completionEvent:error:];
      }
    }

    v169[2]();
    goto LABEL_127;
  }

  v143 = [_ANEVirtualClient updatePerformanceStats:v209[6] performanceStatsLength:v218 perfStatsRawIOSurfaceRef:v209[9] performanceStatsRawLength:*(&v218 + 1) hwExecutionTime:*(&v217 + 1)];
  [requestCopy setPerfStats:v143];

  v169[2]();
  v144 = 1;
LABEL_129:

  _Block_object_dispose(&v208, 8);
  v165 = *MEMORY[0x1E69E9840];
  return v144;
}

- (BOOL)compiledModelExistsFor:(id)for
{
  v28 = *MEMORY[0x1E69E9840];
  forCopy = for;
  v6 = gLogger;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    [_ANEVirtualClient compileModel:options:qos:error:];
  }

  bzero(v24, 0x1728uLL);
  if (([(_ANEVirtualClient *)self negotiatedCapabilityMask]& 4) != 0)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v9 = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    modelURL = [forCopy modelURL];
    v11 = modelURL == 0;

    if (!v11)
    {
      [(_ANEVirtualClient *)self copyAllModelFiles:forCopy dictionary:Mutable ioSurfaceRefs:v9];
      [(_ANEVirtualClient *)self copyModelMetaData:forCopy options:MEMORY[0x1E695E0F8] dictionary:Mutable vmData:v24];
    }

    getCacheURLIdentifier = [forCopy getCacheURLIdentifier];
    v13 = getCacheURLIdentifier == 0;

    if (!v13)
    {
      cacheURLIdentifier = [forCopy cacheURLIdentifier];

      v15 = gLogger;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        [_ANEVirtualClient loadModel:options:qos:error:];
      }

      CFDictionarySetValue(Mutable, @"modelCacheURLIdentifier", cacheURLIdentifier);
    }

    [_ANEVirtualClient setCodeSigningIdentity:Mutable];
    [(_ANEVirtualClient *)self printDictionary:Mutable];
    v16 = [(_ANEVirtualClient *)self callIOUserClientWithDictionary:5 inDictionary:Mutable error:0];
    CFRelease(Mutable);
    [(_ANEVirtualClient *)self printDictionary:v16];
    modelURL2 = [forCopy modelURL];
    v18 = modelURL2 == 0;

    if (!v18)
    {
      [_ANEVirtualClient freeModelFileIOSurfaces:v9];
      CFRelease(v9);
    }

    if (v16)
    {
      v19 = gLogger;
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        [_ANEVirtualClient compiledModelExistsFor:];
      }

      [_ANEVirtualClient copyDictionaryDataToStruct:&v26 dictionary:v16];
      v7 = v27 == 1;
      if (v27 == 1)
      {
        v20 = [_ANEVirtualClient dictionaryGetNSStringForKey:v16 key:@"modelCacheURLIdentifier"];
        if (v20)
        {
          [forCopy setCacheURLIdentifier:v20];
        }
      }

      v21 = gLogger;
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        [_ANEVirtualClient compiledModelExistsFor:];
      }

      CFRelease(v16);
    }

    else
    {
      if (os_log_type_enabled(gLogger, OS_LOG_TYPE_ERROR))
      {
        [_ANEVirtualClient compiledModelExistsFor:];
      }

      v7 = 0;
    }
  }

  else
  {
    [(_ANEVirtualClient *)self copyModel:forCopy options:MEMORY[0x1E695E0F8] vmData:v24];
    v7 = [(_ANEVirtualClient *)self callIOUserClient:5 inParams:&v25 outParams:0];
  }

  [(_ANEVirtualClient *)self releaseIOSurfaces:v24];

  v22 = *MEMORY[0x1E69E9840];
  return v7;
}

- (void)purgeCompiledModel:(id)model
{
  v21[671] = *MEMORY[0x1E69E9840];
  modelCopy = model;
  v6 = gLogger;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    [_ANEVirtualClient compileModel:options:qos:error:];
  }

  bzero(v20, 0x1728uLL);
  if (([(_ANEVirtualClient *)self negotiatedCapabilityMask]& 4) != 0)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v8 = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    modelURL = [modelCopy modelURL];
    v10 = modelURL == 0;

    if (!v10)
    {
      [(_ANEVirtualClient *)self copyAllModelFiles:modelCopy dictionary:Mutable ioSurfaceRefs:v8];
    }

    [(_ANEVirtualClient *)self copyModelMetaData:modelCopy options:MEMORY[0x1E695E0F8] dictionary:Mutable vmData:v20];
    getCacheURLIdentifier = [modelCopy getCacheURLIdentifier];
    v12 = getCacheURLIdentifier == 0;

    if (!v12)
    {
      cacheURLIdentifier = [modelCopy cacheURLIdentifier];

      v14 = gLogger;
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        [_ANEVirtualClient loadModel:options:qos:error:];
      }

      CFDictionarySetValue(Mutable, @"modelCacheURLIdentifier", cacheURLIdentifier);
    }

    [_ANEVirtualClient setCodeSigningIdentity:Mutable];
    [(_ANEVirtualClient *)self printDictionary:Mutable];
    v15 = [(_ANEVirtualClient *)self callIOUserClientWithDictionary:6 inDictionary:Mutable error:0];
    CFRelease(Mutable);
    [(_ANEVirtualClient *)self printDictionary:v15];
    modelURL2 = [modelCopy modelURL];
    v17 = modelURL2 == 0;

    if (!v17)
    {
      [_ANEVirtualClient freeModelFileIOSurfaces:v8];
      CFRelease(v8);
    }

    if (v15)
    {
      v18 = gLogger;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        [_ANEVirtualClient purgeCompiledModel:];
      }

      CFRelease(v15);
    }

    else if (os_log_type_enabled(gLogger, OS_LOG_TYPE_ERROR))
    {
      [_ANEVirtualClient purgeCompiledModel:];
    }
  }

  else
  {
    [(_ANEVirtualClient *)self copyModel:modelCopy options:MEMORY[0x1E695E0F8] vmData:v20];
    [(_ANEVirtualClient *)self callIOUserClient:6 inParams:v21 outParams:0];
  }

  [(_ANEVirtualClient *)self releaseIOSurfaces:v20];

  v19 = *MEMORY[0x1E69E9840];
}

- (BOOL)compiledModelExistsMatchingHash:(id)hash
{
  v34 = *MEMORY[0x1E69E9840];
  hashCopy = hash;
  v6 = gLogger;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    [_ANEVirtualClient compiledModelExistsMatchingHash:];
  }

  bzero(v23, 0x1728uLL);
  v7 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:hashCopy requiringSecureCoding:1 error:0];
  if (([(_ANEVirtualClient *)self negotiatedCapabilityMask]& 4) != 0)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v23[0] = -[_ANEVirtualClient copyToIOSurface:length:ioSID:](self, "copyToIOSurface:length:ioSID:", v7, [v7 length], v25);
    v11 = *MEMORY[0x1E695E480];
    v12 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, v25);
    CFDictionarySetValue(Mutable, @"ioSIDHashString", v12);
    CFRelease(v12);
    v26[0] = [v7 length];
    v13 = CFNumberCreate(v11, kCFNumberSInt64Type, v26);
    CFDictionarySetValue(Mutable, @"hashStringLength", v13);
    CFRelease(v13);
    v14 = gLogger;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v21 = NSStringFromSelector(a2);
      v22 = [v7 length];
      *buf = 138412802;
      v29 = v21;
      v30 = 2048;
      v31 = v22;
      v32 = 2112;
      v33 = hashCopy;
      _os_log_debug_impl(&dword_1AD246000, v14, OS_LOG_TYPE_DEBUG, "%@:ANEVirtualClient length=%lu hashString=%@ \n", buf, 0x20u);
    }

    v15 = [(_ANEVirtualClient *)self callIOUserClientWithDictionary:7 inDictionary:Mutable error:0];
    CFRelease(Mutable);
    if (v15)
    {
      [_ANEVirtualClient copyDictionaryDataToStruct:v27 dictionary:v15];
      v9 = v27[1] == 1;
      v16 = gLogger;
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        [_ANEVirtualClient compiledModelExistsMatchingHash:];
      }

      CFRelease(v15);
    }

    else
    {
      if (os_log_type_enabled(gLogger, OS_LOG_TYPE_ERROR))
      {
        [_ANEVirtualClient compiledModelExistsMatchingHash:];
      }

      v9 = 0;
    }
  }

  else
  {
    v23[0] = -[_ANEVirtualClient copyToIOSurface:length:ioSID:](self, "copyToIOSurface:length:ioSID:", v7, [v7 length], v25);
    v26[0] = [v7 length];
    v8 = gLogger;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v19 = NSStringFromSelector(a2);
      v20 = [v7 length];
      *buf = 138412802;
      v29 = v19;
      v30 = 2048;
      v31 = v20;
      v32 = 2112;
      v33 = hashCopy;
      _os_log_debug_impl(&dword_1AD246000, v8, OS_LOG_TYPE_DEBUG, "%@:ANEVirtualClient length=%lu hashString=%@ \n", buf, 0x20u);
    }

    v9 = [(_ANEVirtualClient *)self callIOUserClient:7 inParams:&v24 outParams:0];
  }

  [(_ANEVirtualClient *)self releaseIOSurfaces:v23];

  v17 = *MEMORY[0x1E69E9840];
  return v9;
}

- (void)purgeCompiledModelMatchingHash:(id)hash
{
  v27 = *MEMORY[0x1E69E9840];
  hashCopy = hash;
  v6 = gLogger;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    [_ANEVirtualClient compileModel:options:qos:error:];
  }

  bzero(v17, 0x1728uLL);
  v7 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:hashCopy requiringSecureCoding:1 error:0];
  if (([(_ANEVirtualClient *)self negotiatedCapabilityMask]& 4) != 0)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v17[0] = -[_ANEVirtualClient copyToIOSurface:length:ioSID:](self, "copyToIOSurface:length:ioSID:", v7, [v7 length], v19);
    v10 = *MEMORY[0x1E695E480];
    v11 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, v19);
    CFDictionarySetValue(Mutable, @"ioSIDHashString", v11);
    CFRelease(v11);
    v20[0] = [v7 length];
    v12 = CFNumberCreate(v10, kCFNumberSInt64Type, v20);
    CFDictionarySetValue(Mutable, @"hashStringLength", v12);
    CFRelease(v12);
    v13 = [(_ANEVirtualClient *)self callIOUserClientWithDictionary:8 inDictionary:Mutable error:0];
    CFRelease(Mutable);
    if (v13)
    {
      if (os_log_type_enabled(gLogger, OS_LOG_TYPE_DEBUG))
      {
        [_ANEVirtualClient purgeCompiledModelMatchingHash:];
      }

      CFRelease(v13);
    }

    else if (os_log_type_enabled(gLogger, OS_LOG_TYPE_ERROR))
    {
      [_ANEVirtualClient purgeCompiledModelMatchingHash:];
    }
  }

  else
  {
    v17[0] = -[_ANEVirtualClient copyToIOSurface:length:ioSID:](self, "copyToIOSurface:length:ioSID:", v7, [v7 length], v19);
    v20[0] = [v7 length];
    v8 = gLogger;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v15 = NSStringFromSelector(a2);
      v16 = [v7 length];
      *buf = 138412802;
      v22 = v15;
      v23 = 2048;
      v24 = v16;
      v25 = 2112;
      v26 = hashCopy;
      _os_log_debug_impl(&dword_1AD246000, v8, OS_LOG_TYPE_DEBUG, "%@:ANEVirtualClient length=%lu hashString=%@ \n", buf, 0x20u);
    }

    [(_ANEVirtualClient *)self callIOUserClient:8 inParams:&v18 outParams:0];
  }

  [(_ANEVirtualClient *)self releaseIOSurfaces:v17];

  v14 = *MEMORY[0x1E69E9840];
}

- (BOOL)beginRealTimeTask
{
  v7 = *MEMORY[0x1E69E9840];
  v4 = gLogger;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    [_ANEVirtualClient compileModel:options:qos:error:];
  }

  result = [(_ANEVirtualClient *)self callIOUserClient:9 inParams:0 outParams:0];
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)endRealTimeTask
{
  v7 = *MEMORY[0x1E69E9840];
  v4 = gLogger;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    [_ANEVirtualClient compileModel:options:qos:error:];
  }

  result = [(_ANEVirtualClient *)self callIOUserClient:10 inParams:0 outParams:0];
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)echo:(id)echo
{
  v21[339] = *MEMORY[0x1E69E9840];
  echoCopy = echo;
  v6 = gLogger;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    [_ANEVirtualClient compileModel:options:qos:error:];
  }

  v7 = [echoCopy dataUsingEncoding:4];
  bzero(v17, 0x1728uLL);
  if (([(_ANEVirtualClient *)self negotiatedCapabilityMask]& 4) != 0)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v17[0] = -[_ANEVirtualClient copyToIOSurface:length:ioSID:](self, "copyToIOSurface:length:ioSID:", v7, [v7 length], v19);
    v10 = *MEMORY[0x1E695E480];
    v11 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, v19);
    CFDictionarySetValue(Mutable, @"ioSIDHashString", v11);
    CFRelease(v11);
    v20[0] = [v7 length];
    v12 = CFNumberCreate(v10, kCFNumberSInt64Type, v20);
    CFDictionarySetValue(Mutable, @"hashStringLength", v12);
    CFRelease(v12);
    v13 = [(_ANEVirtualClient *)self callIOUserClientWithDictionary:11 inDictionary:Mutable error:0];
    CFRelease(Mutable);
    if (v13)
    {
      [_ANEVirtualClient copyDictionaryDataToStruct:v21 dictionary:v13];
      v8 = v21[1] == 1;
      v14 = gLogger;
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        [_ANEVirtualClient echo:];
      }

      CFRelease(v13);
    }

    else
    {
      if (os_log_type_enabled(gLogger, OS_LOG_TYPE_ERROR))
      {
        [_ANEVirtualClient echo:];
      }

      v8 = 0;
    }
  }

  else
  {
    v17[0] = -[_ANEVirtualClient copyToIOSurface:length:ioSID:](self, "copyToIOSurface:length:ioSID:", v7, [v7 length], v19);
    v20[0] = [v7 length];
    v8 = [(_ANEVirtualClient *)self callIOUserClient:11 inParams:&v18 outParams:0];
  }

  [(_ANEVirtualClient *)self releaseIOSurfaces:v17];

  v15 = *MEMORY[0x1E69E9840];
  return v8;
}

- (DeviceExtendedInfo)getDeviceInfo
{
  v22 = *MEMORY[0x1E69E9840];
  *&retstr->var4[4] = 0u;
  *&retstr->var4[20] = 0u;
  *&retstr->var0.var2 = 0u;
  *&retstr->var1 = 0u;
  *&retstr->var0.var0 = 0u;
  v13 = 80;
  v5 = IOConnectCallMethod([(_ANEVirtualClient *)self connect], 0x12u, 0, 0, 0, 0, 0, 0, retstr, &v13);
  v6 = gLogger;
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a3);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualClient getDeviceInfo];
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v8 = NSStringFromSelector(a3);
    var3 = retstr->var0.var3;
    var2 = retstr->var0.var2;
    *buf = 138413058;
    v15 = v8;
    v16 = 1024;
    v17 = 18;
    v18 = 1024;
    v19 = var3;
    v20 = 2048;
    v21 = var2;
    _os_log_impl(&dword_1AD246000, v7, OS_LOG_TYPE_INFO, "%@: ANEVirtualClient Successfully called method %d with result=%d %llx.\n", buf, 0x22u);
  }

  v12 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)hasANE
{
  v5 = *MEMORY[0x1E69E9840];
  [(_ANEVirtualClient *)self getDeviceInfo];
  result = v4;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

- (int64_t)aneBoardtype
{
  v5 = *MEMORY[0x1E69E9840];
  [(_ANEVirtualClient *)self getDeviceInfo];
  result = v4;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)isInternalBuild
{
  v5 = *MEMORY[0x1E69E9840];
  [(_ANEVirtualClient *)self getDeviceInfo];
  result = v4;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)aneArchitectureTypeStr
{
  *&v6[36] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696AEC0];
  [(_ANEVirtualClient *)self getDeviceInfo];
  v3 = [v2 stringWithUTF8String:v6];
  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

- (unsigned)numANEs
{
  v5 = *MEMORY[0x1E69E9840];
  [(_ANEVirtualClient *)self getDeviceInfo];
  result = v4;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

- (unsigned)numANECores
{
  v5 = *MEMORY[0x1E69E9840];
  [(_ANEVirtualClient *)self getDeviceInfo];
  result = v4;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

- (unint64_t)getValidateNetworkVersion
{
  v5 = *MEMORY[0x1E69E9840];
  [(_ANEVirtualClient *)self exchangeBuildVersionInfo];
  result = v4;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)validateEnvironmentForPrecompiledBinarySupport
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = +[_ANEDeviceInfo isInternalBuild];
  isInternalBuild = [(_ANEVirtualClient *)self isInternalBuild];
  negotiatedDataInterfaceVersion = [(_ANEVirtualClient *)self negotiatedDataInterfaceVersion];
  negotiatedCapabilityMask = [(_ANEVirtualClient *)self negotiatedCapabilityMask];
  v8 = +[_ANEStrings vm_allowPrecompiledBinaryBootArg];
  v9 = [_ANEDeviceInfo isBootArgPresent:v8];

  if (v9)
  {
    v10 = +[_ANEStrings vm_allowPrecompiledBinaryBootArg];
    v11 = [_ANEDeviceInfo isBoolBootArgSetTrue:v10];
  }

  else
  {
    v11 = 1;
  }

  v12 = negotiatedCapabilityMask & 2;
  v13 = v4 && isInternalBuild;
  if (negotiatedDataInterfaceVersion <= 0x20401)
  {
    v13 = 0;
  }

  if ((negotiatedCapabilityMask & 2) == 0)
  {
    v13 = 0;
  }

  v14 = v13 && v11;
  if (!v13 || !v11)
  {
    v15 = gLogger;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v18 = NSStringFromSelector(a2);
      v19 = 138413570;
      v20 = v18;
      v21 = 1024;
      v22 = v4;
      v23 = 1024;
      v24 = isInternalBuild;
      v25 = 1024;
      v26 = negotiatedDataInterfaceVersion > 0x20401;
      v27 = 1024;
      v28 = v12 >> 1;
      v29 = 1024;
      v30 = v11;
      _os_log_error_impl(&dword_1AD246000, v15, OS_LOG_TYPE_ERROR, "%@: ERROR : conditions for precompiled binary support not met! isGuestInternalBuild=%d isHostInternalBuild=%d minimumInterfaceRequirementsMet=%d minimumCapabilityRequirementsMet=%d isPrecompiledBinaryBootArgSet=%d", &v19, 0x2Au);
    }
  }

  v16 = *MEMORY[0x1E69E9840];
  return v14;
}

- (__CFDictionary)validateNetworkCreateMLIR:(unint64_t)r validation_params:(__CFDictionary *)validation_params
{
  v31 = *MEMORY[0x1E69E9840];
  if ([(_ANEVirtualClient *)self negotiatedDataInterfaceVersion]> 0x20403)
  {
    inputStruct = 0u;
    v24 = 0u;
    outputStruct = 0;
    v22 = 0;
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x4012000000;
    v26 = __Block_byref_object_copy__120;
    v27 = __Block_byref_object_dispose__121;
    v28 = &unk_1AD2A047D;
    v29 = 0;
    v30 = 0;
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __65___ANEVirtualClient_validateNetworkCreateMLIR_validation_params___block_invoke;
    v20[3] = &unk_1E79BA3B8;
    v20[4] = buf;
    v11 = MEMORY[0x1B26F37D0](v20);
    v12 = [(_ANEVirtualClient *)self copyDictionaryToIOSurface:validation_params copiedDataSize:&v24 createdIOSID:&inputStruct + 8];
    *(*&buf[8] + 48) = v12;
    if (v12 && v24)
    {
      v13 = [_ANEVirtualClient createIOSurface:512 ioSID:&inputStruct | 0xC];
      *(*&buf[8] + 56) = v13;
      if (v13)
      {
        *(&v24 + 1) = 512;
        *&inputStruct = r;
        v19 = 16;
        if (IOConnectCallMethod(self->_connect, 0x15u, 0, 0, &inputStruct, 0x20uLL, 0, 0, &outputStruct, &v19))
        {
          v14 = gLogger;
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            NSStringFromSelector(a2);
            objc_claimAutoreleasedReturnValue();
            [_ANEVirtualClient validateNetworkCreateMLIR:validation_params:];
          }

LABEL_12:
          v11[2](v11);
LABEL_18:
          v10 = 0;
LABEL_19:

          _Block_object_dispose(buf, 8);
          goto LABEL_20;
        }

        if (outputStruct)
        {
          if (v22)
          {
LABEL_28:
            if (outputStruct == 1 && v22)
            {
              v10 = [_ANEVirtualClient getCFDictionaryFromIOSurface:*(*&buf[8] + 56) dataLength:?];
              v11[2](v11);
              goto LABEL_19;
            }

            goto LABEL_12;
          }

          v18 = gLogger;
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            NSStringFromSelector(a2);
            objc_claimAutoreleasedReturnValue();
            [_ANEVirtualClient validateNetworkCreateMLIR:validation_params:];
          }
        }

        else
        {
          v18 = gLogger;
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            NSStringFromSelector(a2);
            objc_claimAutoreleasedReturnValue();
            [_ANEVirtualClient validateNetworkCreateMLIR:validation_params:];
          }
        }

        goto LABEL_28;
      }

      v15 = gLogger;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        [_ANEVirtualClient validateNetworkCreateMLIR:validation_params:];
      }
    }

    else
    {
      v15 = gLogger;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        [_ANEVirtualClient validateNetworkCreateMLIR:validation_params:];
      }
    }

    v11[2](v11);
    goto LABEL_18;
  }

  v8 = gLogger;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = NSStringFromSelector(a2);
    *buf = 138412546;
    *&buf[4] = v9;
    *&buf[12] = 1024;
    *&buf[14] = [(_ANEVirtualClient *)self negotiatedDataInterfaceVersion];
    _os_log_impl(&dword_1AD246000, v8, OS_LOG_TYPE_INFO, "%@: Host too old to support validateNetworkCreateMLIR. NegotiatedDataInterfaceVersion=%u", buf, 0x12u);
  }

  v10 = 0;
LABEL_20:
  v16 = *MEMORY[0x1E69E9840];
  return v10;
}

- (__CFDictionary)validateNetworkCreate:(unint64_t)create uuid:(id)uuid function:(id)function directoryPath:(id)path scratchPadPath:(id)padPath milTextData:(id)data
{
  v62 = *MEMORY[0x1E69E9840];
  uuidCopy = uuid;
  functionCopy = function;
  pathCopy = path;
  padPathCopy = padPath;
  dataCopy = data;
  if (dataCopy || [(_ANEVirtualClient *)self negotiatedDataInterfaceVersion]< 0x20401)
  {
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    aSelector = a2;
    array = [MEMORY[0x1E695DF70] array];
    array2 = [MEMORY[0x1E695DF70] array];
    bzero(v55, 0x7F0uLL);
    inputStruct = create;
    if (dataCopy)
    {
      cf = -[_ANEVirtualClient copyToIOSurface:length:ioSID:](self, "copyToIOSurface:length:ioSID:", dataCopy, [dataCopy length], v61);
      v21 = [dataCopy length];
    }

    else
    {
      v21 = 0;
      cf = 0;
    }

    *&v61[4] = v21;
    v22 = uuidCopy;
    v23 = [uuidCopy cStringUsingEncoding:4];
    v24 = strlen(v23);
    memcpy(v55, v23, v24);
    v25 = functionCopy;
    v26 = [functionCopy cStringUsingEncoding:4];
    v27 = strlen(v26);
    memcpy(&v56, v26, v27);
    v28 = padPathCopy;
    v29 = [padPathCopy cStringUsingEncoding:4];
    v30 = strlen(v29);
    memcpy(v57, v29, v30);
    if (![(_ANEVirtualClient *)self copyFilesInDirectoryToIOSurfaces:pathCopy ioSurfaceRefs:Mutable ioSurfaceSizes:array fileNames:array2])
    {
      if (os_log_type_enabled(gLogger, OS_LOG_TYPE_ERROR))
      {
        [_ANEVirtualClient validateNetworkCreate:uuid:function:directoryPath:scratchPadPath:milTextData:];
      }

      v18 = 0;
      goto LABEL_29;
    }

    v60 = [array count];
    if (v60)
    {
      v31 = 0;
      v32 = 744;
      do
      {
        v33 = [array objectAtIndexedSubscript:v31];
        v59[v31] = [v33 unsignedLongLongValue];

        ValueAtIndex = CFArrayGetValueAtIndex(Mutable, v31);
        v57[v31 + 65] = IOSurfaceGetID(ValueAtIndex);
        v35 = [array2 objectAtIndexedSubscript:v31];
        v36 = v35;
        strlcpy(&v55[v32 - 8], [v35 UTF8String], 0x28uLL);

        ++v31;
        v32 += 40;
      }

      while (v31 < v60);
    }

    v37 = MEMORY[0x1E695DF20];
    v38 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:10485760];
    v39 = [v37 dictionaryWithObjectsAndKeys:{v38, *MEMORY[0x1E696CE30], 0}];

    v40 = IOSurfaceCreate(v39);
    v41 = v40;
    if (v40)
    {
      v57[64] = IOSurfaceGetID(v40);
      v58 = 10485760;
      output = 0;
      outputCnt = 1;
      v42 = IOConnectCallMethod([(_ANEVirtualClient *)self connect], 0x11u, 0, 0, &inputStruct, 0x7F8uLL, &output, &outputCnt, 0, 0);
      if (cf)
      {
        CFRelease(cf);
      }

      [_ANEVirtualClient freeModelFileIOSurfaces:Mutable];
      if (!v42)
      {
        v18 = [_ANEVirtualClient getCFDictionaryFromIOSurface:v41 dataLength:output];
        CFRelease(v41);
        goto LABEL_28;
      }

      v43 = gLogger;
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        NSStringFromSelector(aSelector);
        objc_claimAutoreleasedReturnValue();
        [_ANEVirtualClient validateNetworkCreate:uuid:function:directoryPath:scratchPadPath:milTextData:];
      }
    }

    else
    {
      v44 = gLogger;
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        NSStringFromSelector(aSelector);
        objc_claimAutoreleasedReturnValue();
        [_ANEVirtualClient validateNetworkCreate:uuid:function:directoryPath:scratchPadPath:milTextData:];
      }
    }

    v18 = 0;
LABEL_28:

LABEL_29:
    goto LABEL_30;
  }

  array = gLogger;
  if (os_log_type_enabled(array, OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    [(_ANEVirtualClient *)self negotiatedDataInterfaceVersion];
    [_ANEVirtualClient validateNetworkCreate:uuid:function:directoryPath:scratchPadPath:milTextData:];
  }

  v18 = 0;
LABEL_30:

  v45 = *MEMORY[0x1E69E9840];
  return v18;
}

- (void)sendGuestBuildVersion
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v1, v2, 5.778e-34);
  *(v3 + 12) = 1024;
  *(v3 + 14) = 14;
  OUTLINED_FUNCTION_15();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x12u);
}

- (BuildVersionInfo)exchangeBuildVersionInfo
{
  v27 = *MEMORY[0x1E69E9840];
  *&retstr->var7[11] = 0u;
  *&retstr->var7[13] = 0u;
  *&retstr->var7[7] = 0u;
  *&retstr->var7[9] = 0u;
  *&retstr->var7[3] = 0u;
  *&retstr->var7[5] = 0u;
  *&retstr->var6 = 0u;
  *&retstr->var7[1] = 0u;
  *&retstr->var3[16] = 0u;
  *&retstr->var4 = 0u;
  *&retstr->var0 = 0u;
  *retstr->var3 = 0u;
  v6 = +[_ANEDeviceInfo productName];
  v7 = v6;
  if (!v6 || [v6 isEqualToString:&stru_1F224D6A0])
  {
    v8 = gLogger;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a3);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualClient exchangeBuildVersionInfo];
    }

    v7 = 0;
  }

  v9 = +[_ANEDeviceInfo buildVersion];
  v10 = v9;
  if (!v9 || [v9 isEqualToString:&stru_1F224D6A0])
  {
    v11 = gLogger;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a3);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualClient exchangeBuildVersionInfo];
    }

    v10 = 0;
    goto LABEL_11;
  }

  if (!v7)
  {
LABEL_11:
    v12 = @"UnknownBuild";
    goto LABEL_12;
  }

  v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", v7, v10];
LABEL_12:
  v13 = v12;
  uTF8String = [(__CFString *)v12 UTF8String];
  v15 = strlen(uTF8String);
  v22 = 192;
  v16 = IOConnectCallMethod([(_ANEVirtualClient *)self connect], 0xFu, 0, 0, uTF8String, v15 + 1, 0, 0, retstr, &v22);
  v17 = gLogger;
  v18 = v17;
  if (v16)
  {
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a3);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualClient exchangeBuildVersionInfo];
    }
  }

  else if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v19 = NSStringFromSelector(a3);
    *buf = 138412546;
    v24 = v19;
    v25 = 1024;
    v26 = 15;
    _os_log_impl(&dword_1AD246000, v18, OS_LOG_TYPE_INFO, "%@: ANEVirtualClient Successfully called method %d", buf, 0x12u);
  }

  v21 = *MEMORY[0x1E69E9840];
  return result;
}

- (unsigned)negotiatedDataInterfaceVersion
{
  v5 = *MEMORY[0x1E69E9840];
  [(_ANEVirtualClient *)self exchangeBuildVersionInfo];
  result = v4;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

- (unint64_t)negotiatedCapabilityMask
{
  v5 = *MEMORY[0x1E69E9840];
  [(_ANEVirtualClient *)self exchangeBuildVersionInfo];
  result = v4;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)hostBuildVersionStr
{
  v6[22] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696AEC0];
  [(_ANEVirtualClient *)self exchangeBuildVersionInfo];
  v3 = [v2 stringWithUTF8String:v6];
  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

- (unint64_t)outputDictIOSurfaceSize
{
  v5 = *MEMORY[0x1E69E9840];
  [(_ANEVirtualClient *)self exchangeBuildVersionInfo];
  result = v4;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)mapIOSurfacesWithModel:(id)model request:(id)request cacheInference:(BOOL)inference error:(id *)error
{
  modelCopy = model;
  requestCopy = request;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  if (modelCopy)
  {
    if (os_log_type_enabled(gLogger, OS_LOG_TYPE_DEBUG))
    {
      [_ANEVirtualClient mapIOSurfacesWithModel:request:cacheInference:error:];
    }

    completionHandler = [requestCopy completionHandler];

    [(_ANEVirtualClient *)self queue];
    if (completionHandler)
      v13 = {;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __73___ANEVirtualClient_mapIOSurfacesWithModel_request_cacheInference_error___block_invoke;
      block[3] = &unk_1E79BA458;
      v26[1] = &v28;
      block[4] = self;
      v14 = &v25;
      v25 = modelCopy;
      v15 = v26;
      v26[0] = requestCopy;
      inferenceCopy = inference;
      dispatch_sync(v13, block);

      *(v29 + 24) = 1;
    }

    else
      v17 = {;
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __73___ANEVirtualClient_mapIOSurfacesWithModel_request_cacheInference_error___block_invoke_2;
      v20[3] = &unk_1E79BA480;
      v22[1] = &v28;
      v20[4] = self;
      v14 = &v21;
      v21 = modelCopy;
      v15 = v22;
      v18 = requestCopy;
      inferenceCopy2 = inference;
      v22[0] = v18;
      v22[2] = error;
      dispatch_sync(v17, v20);
    }

    v16 = *(v29 + 24);
  }

  else
  {
    v16 = 0;
  }

  _Block_object_dispose(&v28, 8);

  return v16 & 1;
}

- (BOOL)doMapIOSurfacesWithModel:(id)model request:(id)request cacheInference:(BOOL)inference error:(id *)error
{
  v151 = *MEMORY[0x1E69E9840];
  modelCopy = model;
  requestCopy = request;
  if (os_log_type_enabled(gLogger, OS_LOG_TYPE_DEBUG))
  {
    [_ANEVirtualClient doMapIOSurfacesWithModel:request:cacheInference:error:];
  }

  if (os_log_type_enabled(gLogger, OS_LOG_TYPE_DEBUG))
  {
    [_ANEVirtualClient doMapIOSurfacesWithModel:request:cacheInference:error:];
  }

  if (os_log_type_enabled(gLogger, OS_LOG_TYPE_DEBUG))
  {
    [_ANEVirtualClient doMapIOSurfacesWithModel:request:cacheInference:error:];
  }

  bzero(v101, 0x1728uLL);
  [(_ANEVirtualClient *)self copyModel:modelCopy options:MEMORY[0x1E695E0F8] vmData:v101];
  [(_ANEVirtualClient *)self copyErrorValue:v101];
  string_id = [modelCopy string_id];
  programHandle = [modelCopy programHandle];
  intermediateBufferHandle = [modelCopy intermediateBufferHandle];
  queueDepth = [modelCopy queueDepth];
  perfStatsMask = [modelCopy perfStatsMask];
  inferenceCopy = inference;
  v8 = gLogger;
  if (os_log_type_enabled(gLogger, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67112192;
    *v134 = v103[4];
    *&v134[4] = 1024;
    *&v134[6] = v103[5];
    LOWORD(v135) = 1024;
    *(&v135 + 2) = v103[6];
    HIWORD(v135) = 1024;
    *v136 = v103[7];
    *&v136[4] = 2048;
    *&v136[6] = string_id;
    *&v136[14] = 2048;
    *&v136[16] = programHandle;
    v137 = 2048;
    v138 = intermediateBufferHandle;
    v139 = 1024;
    v140 = queueDepth;
    v141 = 1024;
    v142 = v109;
    v143 = 1024;
    v144 = perfStatsMask;
    v145 = 1024;
    v146 = v111;
    v147 = 1024;
    v148 = v112;
    v149 = 1024;
    v150 = v123;
    _os_log_debug_impl(&dword_1AD246000, v8, OS_LOG_TYPE_DEBUG, "ANEVirtualClient mapIOSurfacesWithModel: virtualANEModel.ioSIDModelNet=%u virtualANEModel.ioSIDModelShape=%u virtualANEModel.ioSIDModelWeight=%u virtualANEModel.ioSIDKey=%u virtualANEModel.string_id=%lld virtualANEModel.programHandle=%lld virtualANEModel.intermediateBufferHandle=%lld virtualANEModel.queueDepth=%d virtualANEModel.ioSIDModelAttributes=%u virtualANEModel.perfStatsMask=%u virtualANEModel.qos=%u virtualANEModel.ioSIDOptions=%u virtualANEModel.ioSIDErrorValue=%u", buf, 0x5Cu);
  }

  v99 = 0u;
  v100 = 0u;
  v97 = 0u;
  v98 = 0u;
  inputArray = [requestCopy inputArray];
  v10 = [inputArray countByEnumeratingWithState:&v97 objects:v132 count:16];
  v11 = 0;
  if (v10)
  {
    v12 = *v98;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v98 != v12)
        {
          objc_enumerationMutation(inputArray);
        }

        ID = IOSurfaceGetID([*(*(&v97 + 1) + 8 * i) ioSurface]);
        v113[v11] = ID;
        v15 = gLogger;
        if (os_log_type_enabled(gLogger, OS_LOG_TYPE_DEBUG))
        {
          *buf = 67109120;
          *v134 = ID;
          _os_log_debug_impl(&dword_1AD246000, v15, OS_LOG_TYPE_DEBUG, "ANEVirtualClient mapIOSurfacesWithModel request1 ioSID: %u", buf, 8u);
        }

        ++v11;
      }

      v10 = [inputArray countByEnumeratingWithState:&v97 objects:v132 count:16];
    }

    while (v10);
  }

  v119 = v11;
  v93 = 0u;
  v94 = 0u;
  v95 = 0u;
  v96 = 0u;
  inputIndexArray = [requestCopy inputIndexArray];
  v17 = [inputIndexArray countByEnumeratingWithState:&v93 objects:v131 count:16];
  v18 = 0;
  if (v17)
  {
    v19 = *v94;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v94 != v19)
        {
          objc_enumerationMutation(inputIndexArray);
        }

        v21 = *(*(&v93 + 1) + 8 * j);
        v113[v18 + 64] = [v21 unsignedIntValue];
        v22 = gLogger;
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          unsignedLongLongValue = [v21 unsignedLongLongValue];
          *buf = 134217984;
          *v134 = unsignedLongLongValue;
          _os_log_debug_impl(&dword_1AD246000, v22, OS_LOG_TYPE_DEBUG, "ANEVirtualClient mapIOSurfacesWithModel request2 ioSID: %llu", buf, 0xCu);
        }

        ++v18;
      }

      v17 = [inputIndexArray countByEnumeratingWithState:&v93 objects:v131 count:16];
    }

    while (v17);
  }

  v120 = v18;
  v89 = 0u;
  v90 = 0u;
  v91 = 0u;
  v92 = 0u;
  outputArray = [requestCopy outputArray];
  v25 = 0;
  v26 = [outputArray countByEnumeratingWithState:&v89 objects:v130 count:16];
  if (v26)
  {
    v27 = *v90;
    do
    {
      for (k = 0; k != v26; ++k)
      {
        if (*v90 != v27)
        {
          objc_enumerationMutation(outputArray);
        }

        v29 = IOSurfaceGetID([*(*(&v89 + 1) + 8 * k) ioSurface]);
        v113[v25 + 128] = v29;
        v30 = gLogger;
        if (os_log_type_enabled(gLogger, OS_LOG_TYPE_DEBUG))
        {
          *buf = 67109120;
          *v134 = v29;
          _os_log_debug_impl(&dword_1AD246000, v30, OS_LOG_TYPE_DEBUG, "ANEVirtualClient mapIOSurfacesWithModel request3 ioSID: %u", buf, 8u);
        }

        ++v25;
      }

      v26 = [outputArray countByEnumeratingWithState:&v89 objects:v130 count:16];
    }

    while (v26);
  }

  v121 = v25;
  v85 = 0u;
  v86 = 0u;
  v87 = 0u;
  v88 = 0u;
  outputIndexArray = [requestCopy outputIndexArray];
  v32 = 0;
  v33 = [outputIndexArray countByEnumeratingWithState:&v85 objects:v129 count:16];
  if (v33)
  {
    v34 = *v86;
    do
    {
      for (m = 0; m != v33; ++m)
      {
        if (*v86 != v34)
        {
          objc_enumerationMutation(outputIndexArray);
        }

        v36 = *(*(&v85 + 1) + 8 * m);
        v113[v32 + 192] = [v36 unsignedIntValue];
        v37 = gLogger;
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
        {
          unsignedLongLongValue2 = [v36 unsignedLongLongValue];
          *buf = 134217984;
          *v134 = unsignedLongLongValue2;
          _os_log_debug_impl(&dword_1AD246000, v37, OS_LOG_TYPE_DEBUG, "ANEVirtualClient mapIOSurfacesWithModel request4 ioSID: %llu", buf, 0xCu);
        }

        ++v32;
      }

      v33 = [outputIndexArray countByEnumeratingWithState:&v85 objects:v129 count:16];
    }

    while (v33);
  }

  v122 = v32;
  v39 = gLogger;
  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
  {
    inputArray2 = [requestCopy inputArray];
    v68 = [inputArray2 count];
    inputIndexArray2 = [requestCopy inputIndexArray];
    v70 = [inputIndexArray2 count];
    outputArray2 = [requestCopy outputArray];
    v72 = [outputArray2 count];
    outputIndexArray2 = [requestCopy outputIndexArray];
    v74 = [outputIndexArray2 count];
    *buf = 134218752;
    *v134 = v68;
    *&v134[8] = 2048;
    v135 = v70;
    *v136 = 2048;
    *&v136[2] = v72;
    *&v136[10] = 2048;
    *&v136[12] = v74;
    _os_log_debug_impl(&dword_1AD246000, v39, OS_LOG_TYPE_DEBUG, "ANEVirtualClient mapIOSurfacesWithModel: request.inputArray %lu request.inputIndexArray %lu request.outputArray %lu request.outputIndexArray %lu", buf, 0x2Au);
  }

  weightsBuffer = [requestCopy weightsBuffer];
  v41 = [weightsBuffer ioSurface] == 0;

  if (v41)
  {
    v114 = 0;
  }

  else
  {
    weightsBuffer2 = [requestCopy weightsBuffer];
    v43 = IOSurfaceGetID([weightsBuffer2 ioSurface]);

    v114 = v43;
    if (os_log_type_enabled(gLogger, OS_LOG_TYPE_DEBUG))
    {
      [_ANEVirtualClient doMapIOSurfacesWithModel:request:cacheInference:error:];
    }
  }

  procedureIndex = [requestCopy procedureIndex];
  unsignedLongLongValue3 = [procedureIndex unsignedLongLongValue];

  transactionHandle = [requestCopy transactionHandle];
  unsignedLongLongValue4 = [transactionHandle unsignedLongLongValue];

  v83 = 0u;
  v84 = 0u;
  v81 = 0u;
  v82 = 0u;
  obj = [requestCopy perfStatsArray];
  v46 = [obj countByEnumeratingWithState:&v81 objects:v128 count:16];
  if (!v46)
  {

LABEL_65:
    v118 = 0;
    goto LABEL_66;
  }

  v47 = 0;
  v48 = *v82;
  do
  {
    v49 = 0;
    v50 = v47;
    do
    {
      if (*v82 != v48)
      {
        objc_enumerationMutation(obj);
      }

      v51 = *(*(&v81 + 1) + 8 * v49);
      stats = [v51 stats];
      v53 = IOSurfaceGetID([stats ioSurface]);

      v117[v50] = v53;
      v47 = v50 + 1;
      v117[v50 + 64] = [v51 statType];
      v118 = v50 + 1;
      v54 = gLogger;
      if (os_log_type_enabled(gLogger, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67109120;
        *v134 = v53;
        _os_log_debug_impl(&dword_1AD246000, v54, OS_LOG_TYPE_DEBUG, "ANEVirtualClient mapIOSurfacesWithModel request6 ioSID: %u", buf, 8u);
      }

      v55 = gLogger;
      if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
      {
        statType = [v51 statType];
        *buf = 134217984;
        *v134 = statType;
        _os_log_debug_impl(&dword_1AD246000, v55, OS_LOG_TYPE_DEBUG, "ANEVirtualClient mapIOSurfacesWithModel request7 ioSID: %ld", buf, 0xCu);
      }

      ++v49;
      ++v50;
    }

    while (v46 != v49);
    v46 = [obj countByEnumeratingWithState:&v81 objects:v128 count:16];
  }

  while (v46);

  if (!v47)
  {
    goto LABEL_65;
  }

LABEL_66:
  v124 = 0;
  v125 = 0;
  v126 = 0;
  v57 = MEMORY[0x1E695DF20];
  v58 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:4096];
  v59 = [v57 dictionaryWithObjectsAndKeys:{v58, *MEMORY[0x1E696CE30], 0}];

  v60 = IOSurfaceCreate(v59);
  buffer = v60;
  if (v60)
  {
    IOSurfaceLock(v60, 0, 0);
    v125 = IOSurfaceGetID(buffer);
    v61 = gLogger;
    if (os_log_type_enabled(v61, OS_LOG_TYPE_DEBUG))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualClient doMapIOSurfacesWithModel:request:cacheInference:error:];
    }

    IOSurfaceUnlock(buffer, 0, 0);
    [requestCopy sharedEvents];

    if (os_log_type_enabled(gLogger, OS_LOG_TYPE_DEBUG))
    {
      [_ANEVirtualClient doMapIOSurfacesWithModel:request:cacheInference:error:];
    }

    v62 = [(_ANEVirtualClient *)self callIOUserClient:13 inParams:v103 outParams:&v127];
    [(_ANEVirtualClient *)self updateError:v101 error:error];
    v63 = [(_ANEVirtualClient *)self updatePerformanceStats:v101];
    [requestCopy setPerfStats:v63];

    [(_ANEVirtualClient *)self releaseIOSurfaces:v101];
  }

  else
  {
    v64 = gLogger;
    if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualClient doMapIOSurfacesWithModel:request:cacheInference:error:];
    }

    v62 = 0;
  }

  v65 = *MEMORY[0x1E69E9840];
  return v62;
}

- (BOOL)sessionHintWithModel:(id)model hint:(id)hint options:(id)options report:(id)report error:(id *)error
{
  v67 = *MEMORY[0x1E69E9840];
  modelCopy = model;
  hintCopy = hint;
  optionsCopy = options;
  reportCopy = report;
  if (hintCopy)
  {
    if ([modelCopy programHandle])
    {
      if ([(_ANEVirtualClient *)self negotiatedDataInterfaceVersion]<= 0x20402)
      {
        v17 = gLogger;
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          v18 = NSStringFromSelector(a2);
          *buf = 138412546;
          *&buf[4] = v18;
          *&buf[12] = 1024;
          *&buf[14] = [(_ANEVirtualClient *)self negotiatedDataInterfaceVersion];
          _os_log_impl(&dword_1AD246000, v17, OS_LOG_TYPE_INFO, "%@: Host too old to support sending sessionHint. NegotiatedDataInterfaceVersion=%u", buf, 0x12u);
        }

LABEL_16:
        LOBYTE(error) = 1;
        goto LABEL_58;
      }

      v66 = 0;
      memset(v65, 0, sizeof(v65));
      memset(buf, 0, sizeof(buf));
      outputStruct = 0;
      v56 = 0;
      v57 = 0;
      v46 = 0;
      v47 = &v46;
      v48 = 0x4812000000;
      v49 = __Block_byref_object_copy__129;
      v50 = __Block_byref_object_dispose__130;
      v51 = &unk_1AD2A047D;
      v53 = 0;
      v54 = 0;
      v52 = 0;
      v45[0] = MEMORY[0x1E69E9820];
      v45[1] = 3221225472;
      v45[2] = __68___ANEVirtualClient_sessionHintWithModel_hint_options_report_error___block_invoke;
      v45[3] = &unk_1E79BA3B8;
      v45[4] = &v46;
      v43 = MEMORY[0x1B26F37D0](v45);
      *buf = [modelCopy programHandle];
      *&buf[8] = [modelCopy intermediateBufferHandle];
      buf[16] = [modelCopy queueDepth];
      v23 = hintCopy;
      strcpy(&v65[1] + 8, [hintCopy UTF8String]);
      if (optionsCopy)
      {
        v24 = [(_ANEVirtualClient *)self copyDictionaryToIOSurface:optionsCopy copiedDataSize:v65 createdIOSID:&buf[20]];
        v47[6] = v24;
        if (!v24)
        {
          v31 = gLogger;
          if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
          {
            NSStringFromSelector(a2);
            objc_claimAutoreleasedReturnValue();
            [_ANEVirtualClient sessionHintWithModel:hint:options:report:error:];
          }

          if (!error)
          {
            goto LABEL_57;
          }

          v32 = NSStringFromSelector(a2);
          *error = [_ANEErrors virtualizationDataError:v32];

          goto LABEL_56;
        }
      }

      if (reportCopy)
      {
        v25 = [_ANEVirtualClient createIOSurface:512 ioSID:&buf[24]];
        v47[7] = v25;
        if (!v25)
        {
          v33 = gLogger;
          if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
          {
            NSStringFromSelector(a2);
            objc_claimAutoreleasedReturnValue();
            [_ANEVirtualClient sessionHintWithModel:hint:options:report:error:];
          }

          if (!error)
          {
            goto LABEL_48;
          }

          v34 = NSStringFromSelector(a2);
          v35 = [_ANEErrors virtualizationDataError:v34];
LABEL_47:
          *error = v35;

LABEL_48:
          v43[2]();
LABEL_56:
          LOBYTE(error) = 0;
LABEL_57:

          _Block_object_dispose(&v46, 8);
          goto LABEL_58;
        }

        DWORD2(v65[0]) = 512;
      }

      if (!error)
      {
        goto LABEL_25;
      }

      v26 = [_ANEVirtualClient createIOSurface:256 ioSID:&buf[28]];
      v47[8] = v26;
      if (v26)
      {
        *&v65[1] = 256;
LABEL_25:
        v44 = 24;
        v27 = IOConnectCallMethod(self->_connect, 0x14u, 0, 0, buf, 0x138uLL, 0, 0, &outputStruct, &v44);
        if (v27)
        {
          v28 = gLogger;
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            NSStringFromSelector(a2);
            objc_claimAutoreleasedReturnValue();
            [_ANEVirtualClient validateNetworkCreateMLIR:validation_params:];
          }

          if (error)
          {
            v29 = NSStringFromSelector(a2);
            *error = [_ANEErrors virtualizationKernelError:v29 kernelErrorCode:v27];

LABEL_55:
            v43[2]();
            goto LABEL_56;
          }

          if ((outputStruct & 1) == 0)
          {
            goto LABEL_55;
          }
        }

        else if ((outputStruct & 1) == 0)
        {
          if (error)
          {
            [_ANEVirtualClient updateError:v47[8] errorLength:v56 error:error];
          }

          goto LABEL_55;
        }

        if (reportCopy)
        {
          v37 = [_ANEVirtualClient getCFDictionaryFromIOSurface:v47[7] dataLength:v57];
          v38 = gLogger;
          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
          {
            v42 = NSStringFromSelector(a2);
            *v58 = 138412802;
            v59 = v42;
            v60 = 2048;
            v61 = v57;
            v62 = 2112;
            v63 = v37;
            _os_log_debug_impl(&dword_1AD246000, v38, OS_LOG_TYPE_DEBUG, "%@: ERROR : reportDataSize=%llu report=%@", v58, 0x20u);
          }

          if ([v37 count])
          {
            [reportCopy addEntriesFromDictionary:v37];
          }

          else
          {
            v41 = gLogger;
            if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
            {
              NSStringFromSelector(a2);
              objc_claimAutoreleasedReturnValue();
              [_ANEVirtualClient sessionHintWithModel:hint:options:report:error:];
            }
          }
        }

        v43[2]();
        LOBYTE(error) = 1;
        goto LABEL_57;
      }

      v36 = gLogger;
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        [_ANEVirtualClient sessionHintWithModel:hint:options:report:error:];
      }

      v34 = NSStringFromSelector(a2);
      v35 = [_ANEErrors virtualizationDataError:v34];
      goto LABEL_47;
    }

    v21 = gLogger;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualClient sessionHintWithModel:hint:options:report:error:];
    }

    if ([hintCopy isEqualToString:kANEFHintSessionInfo])
    {
      if (reportCopy)
      {
        v22 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:1];
        [reportCopy setObject:v22 forKeyedSubscript:kANEFHintReportSessionStatusKey];
      }

      goto LABEL_16;
    }

    if (!error)
    {
      goto LABEL_58;
    }

    v30 = NSStringFromSelector(a2);
    *error = [_ANEErrors invalidModelErrorForMethod:v30];

LABEL_32:
    LOBYTE(error) = 0;
    goto LABEL_58;
  }

  v19 = gLogger;
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    [_ANEVirtualClient sessionHintWithModel:hint:options:report:error:];
  }

  if (error)
  {
    v20 = NSStringFromSelector(a2);
    *error = [_ANEErrors badArgumentForMethod:v20];

    goto LABEL_32;
  }

LABEL_58:

  v39 = *MEMORY[0x1E69E9840];
  return error;
}

+ (__IOSurface)createIOSurface:(unint64_t)surface ioSID:(unsigned int *)d
{
  v5 = MEMORY[0x1E695DF20];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:surface];
  v7 = [v5 dictionaryWithObjectsAndKeys:{v6, *MEMORY[0x1E696CE30], 0}];

  v8 = IOSurfaceCreate(v7);
  v9 = v8;
  if (d && v8)
  {
    IOSurfaceLock(v8, 0, 0);
    *d = IOSurfaceGetID(v9);
    IOSurfaceUnlock(v9, 0, 0);
  }

  return v9;
}

- (void)copyModel:(id)model options:(id)options vmData:(VMData *)data
{
  v119 = *MEMORY[0x1E69E9840];
  modelCopy = model;
  optionsCopy = options;
  v107 = modelCopy;
  if (data)
  {
    modelURL = [modelCopy modelURL];
    path = [modelURL path];
    lastPathComponent = [path lastPathComponent];

    v93 = lastPathComponent;
    v109 = [lastPathComponent componentsSeparatedByString:@"."];
    lastObject = [v109 lastObject];
    modelURL2 = [v107 modelURL];
    path2 = [modelURL2 path];

    if ([lastObject isEqual:@"hwx"])
    {
      v12 = gLogger;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        [_ANEVirtualClient copyModel:options:vmData:];
      }

      lastPathComponent2 = [path2 lastPathComponent];
      v14 = [path2 stringByReplacingOccurrencesOfString:lastPathComponent2 withString:&stru_1F224D6A0];

      v15 = gLogger;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        [_ANEVirtualClient copyModel:options:vmData:];
      }

      path2 = v14;
    }

    v16 = gLogger;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualClient copyModel:options:vmData:];
    }

    v17 = path2;
    if ([lastObject isEqual:@"net"])
    {
      v18 = objc_opt_new();
      for (i = 0; i < [v109 count] - 1; ++i)
      {
        v20 = [v109 objectAtIndexedSubscript:i];
        [v18 appendString:v20];

        [v18 appendString:@"."];
      }

      if ([v18 length])
      {
        v23 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@net", v18];
        v24 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@shape", v18];
        v96 = [(_ANEVirtualClient *)self readWeightFilename:path2];
        v87 = v23;
        v89 = v24;
        lastPathComponent3 = [path2 lastPathComponent];
        v26 = [path2 stringByReplacingOccurrencesOfString:lastPathComponent3 withString:&stru_1F224D6A0];

        if (v96)
        {
          v27 = gLogger;
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
          {
            NSStringFromSelector(a2);
            objc_claimAutoreleasedReturnValue();
            [_ANEVirtualClient copyModel:options:vmData:];
          }

          v28 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@/%@", v26, v96];
          defaultManager = [MEMORY[0x1E696AC08] defaultManager];
          v30 = [defaultManager attributesOfItemAtPath:v28 error:0];

          fileType = [v30 fileType];
          LODWORD(defaultManager) = fileType == *MEMORY[0x1E696A3F0];

          if (defaultManager)
          {
            v32 = gLogger;
            if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
            {
              NSStringFromSelector(a2);
              objc_claimAutoreleasedReturnValue();
              [_ANEVirtualClient copyModel:options:vmData:];
            }

            defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
            v34 = [defaultManager2 destinationOfSymbolicLinkAtPath:v28 error:0];

            lastPathComponent4 = [v34 lastPathComponent];

            v96 = lastPathComponent4;
          }
        }

        else
        {
          v96 = @"model.espresso.weights";
        }

        v36 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v87 requiringSecureCoding:1 error:0];
        v37 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v89 requiringSecureCoding:1 error:0];
        v38 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v96 requiringSecureCoding:1 error:0];
        data->var12 = -[_ANEVirtualClient copyToIOSurface:length:ioSID:](self, "copyToIOSurface:length:ioSID:", v36, [v36 length], &data->var17.var54);
        data->var13 = -[_ANEVirtualClient copyToIOSurface:length:ioSID:](self, "copyToIOSurface:length:ioSID:", v37, [v37 length], &data->var17.var56);
        data->var14 = -[_ANEVirtualClient copyToIOSurface:length:ioSID:](self, "copyToIOSurface:length:ioSID:", v38, [v38 length], &data->var17.var58);
        data->var17.var55 = [v36 length];
        data->var17.var57 = [v37 length];
        data->var17.var59 = [v38 length];
        lastPathComponent5 = [path2 lastPathComponent];
        v40 = [path2 stringByReplacingOccurrencesOfString:lastPathComponent5 withString:&stru_1F224D6A0];

        v41 = gLogger;
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
        {
          v76 = NSStringFromSelector(a2);
          *buf = 138413314;
          *v112 = v76;
          *&v112[8] = 2112;
          *v113 = v40;
          *&v113[8] = 2112;
          v114 = v87;
          v115 = 2112;
          v116 = v89;
          v117 = 2112;
          v118 = v96;
          _os_log_debug_impl(&dword_1AD246000, v41, OS_LOG_TYPE_DEBUG, "%@: ANEVirtualClient: .net filepath=%@ : netname=%@ : shapename=%@ : weightname=%@ ", buf, 0x34u);
        }

        path2 = v40;
      }

      else
      {
        v87 = @"model.espresso.net";
        v89 = @"model.espresso.shape";
        v96 = @"model.espresso.weights";
      }

      v17 = path2;
      v21 = v87;
      v22 = v89;
    }

    else
    {
      v21 = @"model.espresso.net";
      v22 = @"model.espresso.shape";
      v96 = @"model.espresso.weights";
    }

    v106 = v17;
    v88 = v21;
    v90 = v22;
    v80 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@/%@", v17, v21];
    v79 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@/%@", v17, v22];
    v78 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@/%@", v17, v96];
    v77 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@/net.plist", v17];
    v42 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithContentsOfFile:v80];
    v91 = v42;
    v103 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithContentsOfFile:v79];
    v102 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithContentsOfFile:v78];
    v100 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithContentsOfFile:v77];
    v43 = MEMORY[0x1E696ACC8];
    v44 = [v107 key];
    v45 = [v44 length];
    if (v45)
    {
      v46 = [v107 key];
    }

    else
    {
      v46 = v106;
    }

    v101 = [v43 archivedDataWithRootObject:v46 requiringSecureCoding:1 error:0];
    if (v45)
    {
    }

    v47 = MEMORY[0x1E696ACC8];
    modelAttributes = [v107 modelAttributes];
    v94 = [v47 archivedDataWithRootObject:modelAttributes requiringSecureCoding:1 error:0];

    v49 = MEMORY[0x1E696ACC8];
    modelURL3 = [v107 modelURL];
    path3 = [modelURL3 path];
    v52 = [v49 archivedDataWithRootObject:path3 requiringSecureCoding:1 error:0];

    data->var19 = 0;
    v92 = v52;
    data->var0 = -[_ANEVirtualClient copyToIOSurface:length:ioSID:](self, "copyToIOSurface:length:ioSID:", v42, [v42 length], &data->var17.var2);
    data->var1 = -[_ANEVirtualClient copyToIOSurface:length:ioSID:](self, "copyToIOSurface:length:ioSID:", v103, [v103 length], &data->var17.var3);
    data->var2 = -[_ANEVirtualClient copyToIOSurface:length:ioSID:](self, "copyToIOSurface:length:ioSID:", v102, [v102 length], &data->var17.var4);
    data->var8 = -[_ANEVirtualClient copyToIOSurface:length:ioSID:](self, "copyToIOSurface:length:ioSID:", v100, [v100 length], &data->var17.var28);
    data->var6 = -[_ANEVirtualClient copyToIOSurface:length:ioSID:](self, "copyToIOSurface:length:ioSID:", v101, [v101 length], &data->var17.var5);
    data->var7 = [(_ANEVirtualClient *)self copyToIOSurface:v94 length:0x100000 ioSID:&data->var17.var19];
    data->var11 = -[_ANEVirtualClient copyToIOSurface:length:ioSID:](self, "copyToIOSurface:length:ioSID:", v52, [v52 length], &data->var17.var52);
    data->var17.var61 = 0;
    data->var17.var6 = [v42 length];
    data->var17.var7 = [v103 length];
    data->var17.var8 = [v102 length];
    data->var17.var9 = [v101 length];
    data->var17.var20 = [v94 length];
    data->var17.var14 = [v107 string_id];
    data->var17.var15 = [v107 programHandle];
    data->var17.var16 = [v107 intermediateBufferHandle];
    data->var17.var17 = [v107 queueDepth];
    data->var17.var21 = [v107 perfStatsMask];
    data->var17.var29 = [v100 length];
    data->var17.var53 = [v52 length];
    v110 = [optionsCopy objectForKey:kANEFEspressoFileResourcesKey[0]];
    if ([v110 count])
    {
      v53 = 0;
      v104 = 0;
      v54 = 0;
      var16 = data->var16;
      var12 = data->var17.var12;
      var15 = data->var15;
      var10 = data->var17.var10;
      var11 = data->var17.var11;
      var13 = data->var17.var13;
      while (v53 < [v110 count])
      {
        v55 = [v110 objectAtIndexedSubscript:v53];

        v56 = gLogger;
        if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
        {
          v68 = NSStringFromSelector(a2);
          *buf = 138412546;
          *v112 = v68;
          *&v112[8] = 2112;
          *v113 = v55;
          _os_log_debug_impl(&dword_1AD246000, v56, OS_LOG_TYPE_DEBUG, "%@: ANEVirtualClient: %@ \n", buf, 0x16u);
        }

        v57 = [v55 componentsSeparatedByString:@"."];
        lastObject2 = [v57 lastObject];
        if (([lastObject2 isEqual:@"net"] & 1) == 0 && (objc_msgSend(lastObject2, "isEqual:", @"shape") & 1) == 0 && (objc_msgSend(lastObject2, "isEqual:", @"weights") & 1) == 0)
        {
          v59 = v104;
          if (v104 >= 32)
          {
            v60 = gLogger;
            if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
            {
              v73 = NSStringFromSelector(a2);
              v74 = [v110 count];
              *buf = 138412802;
              *v112 = v73;
              *&v112[8] = 2048;
              *v113 = v74;
              *&v113[8] = 1024;
              LODWORD(v114) = 32;
              _os_log_error_impl(&dword_1AD246000, v60, OS_LOG_TYPE_ERROR, "%@: ANEVirtualClient: %lu execeed max number of reference expresso files %d \n", buf, 0x1Cu);
            }

            v59 = v104;
          }

          v99 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v55 requiringSecureCoding:1 error:0];
          v61 = v59;
          var16[v59] = -[_ANEVirtualClient copyToIOSurface:length:ioSID:](self, "copyToIOSurface:length:ioSID:", v99, [v99 length], &var12[v59]);
          var13[v59] = [v99 length];
          v62 = gLogger;
          if (os_log_type_enabled(gLogger, OS_LOG_TYPE_DEBUG))
          {
            v69 = var12[v59];
            v70 = var13[v59];
            *buf = 67109632;
            *v112 = v59;
            *&v112[4] = 1024;
            *&v112[6] = v69;
            *v113 = 2048;
            *&v113[2] = v70;
            _os_log_debug_impl(&dword_1AD246000, v62, OS_LOG_TYPE_DEBUG, "ioSModelEspressoRefFileName[%d] surface ID: %d length: %llu\n", buf, 0x18u);
          }

          v63 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@/%@", v106, v55];
          v64 = gLogger;
          if (os_log_type_enabled(gLogger, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            *v112 = v63;
            _os_log_debug_impl(&dword_1AD246000, v64, OS_LOG_TYPE_DEBUG, " fileEspresso %@\n", buf, 0xCu);
          }

          v65 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithContentsOfFile:v63];
          v66 = &var10[v59];
          var15[v59] = -[_ANEVirtualClient copyToIOSurface:length:ioSID:](self, "copyToIOSurface:length:ioSID:", v65, [v65 length], v66);
          var11[v59] = [v65 length];
          v67 = gLogger;
          if (os_log_type_enabled(gLogger, OS_LOG_TYPE_DEBUG))
          {
            v71 = *v66;
            v72 = var11[v61];
            *buf = 67109632;
            *v112 = v104;
            *&v112[4] = 1024;
            *&v112[6] = v71;
            *v113 = 2048;
            *&v113[2] = v72;
            _os_log_debug_impl(&dword_1AD246000, v67, OS_LOG_TYPE_DEBUG, "ioSIDModelEspressoRefFile[%d] surface ID: %d length: %llu\n", buf, 0x18u);
          }

          v42 = v91;
          v52 = v92;

          ++v104;
        }

        ++v53;
        v54 = v55;
      }
    }
  }

  else
  {
    v93 = gLogger;
    if (os_log_type_enabled(v93, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualClient copyModel:options:vmData:];
    }
  }

  v75 = *MEMORY[0x1E69E9840];
}

- (BOOL)copyFilesInDirectoryToIOSurfaces:(id)surfaces ioSurfaceRefs:(__CFArray *)refs ioSurfaceSizes:(id)sizes fileNames:(id)names
{
  v70 = *MEMORY[0x1E69E9840];
  surfacesCopy = surfaces;
  sizesCopy = sizes;
  namesCopy = names;
  v53 = surfacesCopy;
  if ([surfacesCopy hasSuffix:@"/"])
  {
    v9 = [surfacesCopy substringToIndex:{objc_msgSend(surfacesCopy, "length") - 1}];

    v53 = v9;
  }

  [MEMORY[0x1E696AC08] defaultManager];
  v52 = v62 = 0;
  [v52 fileExistsAtPath:v53 isDirectory:&v62];
  if ((v62 & 1) == 0)
  {
    if (os_log_type_enabled(gLogger, OS_LOG_TYPE_ERROR))
    {
      [_ANEVirtualClient copyFilesInDirectoryToIOSurfaces:ioSurfaceRefs:ioSurfaceSizes:fileNames:];
    }

    v40 = 0;
    goto LABEL_61;
  }

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v61 = 0;
  v45 = [defaultManager contentsOfDirectoryAtPath:v53 error:&v61];
  v49 = v61;

  if (v49 || !v45)
  {
    if (os_log_type_enabled(gLogger, OS_LOG_TYPE_ERROR))
    {
      [_ANEVirtualClient copyFilesInDirectoryToIOSurfaces:ioSurfaceRefs:ioSurfaceSizes:fileNames:];
    }

LABEL_55:
    v40 = 0;
    goto LABEL_60;
  }

  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  obj = v45;
  v11 = [obj countByEnumeratingWithState:&v57 objects:v69 count:16];
  if (!v11)
  {

    v49 = 0;
    goto LABEL_57;
  }

  v12 = 0;
  v49 = 0;
  v51 = 1;
  v13 = *v58;
  do
  {
    v14 = 0;
    do
    {
      if (*v58 != v13)
      {
        objc_enumerationMutation(obj);
      }

      v15 = *(*(&v57 + 1) + 8 * v14);
      v16 = objc_autoreleasePoolPush();
      if (v12 < 0x20)
      {
        v19 = [v53 stringByAppendingPathComponent:v15];
        v56 = 0;
        if ([v52 fileExistsAtPath:v19 isDirectory:&v56])
        {
          v20 = gLogger;
          if (v56 == 1)
          {
            if (os_log_type_enabled(gLogger, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              v64 = "[_ANEVirtualClient copyFilesInDirectoryToIOSurfaces:ioSurfaceRefs:ioSurfaceSizes:fileNames:]";
              v65 = 2112;
              v66 = v19;
              v21 = v20;
              v22 = "%s: Sub-directory found at location=%@ cannot be traversed (unsupported), SKIPPING";
              v23 = 22;
              goto LABEL_43;
            }

            goto LABEL_20;
          }

          if (os_log_type_enabled(gLogger, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315394;
            v64 = "[_ANEVirtualClient copyFilesInDirectoryToIOSurfaces:ioSurfaceRefs:ioSurfaceSizes:fileNames:]";
            v65 = 2112;
            v66 = v19;
            _os_log_debug_impl(&dword_1AD246000, v20, OS_LOG_TYPE_DEBUG, "%s: Copying %@", buf, 0x16u);
          }

          v25 = objc_alloc(MEMORY[0x1E695DEF0]);
          v55 = 0;
          v26 = [v25 initWithContentsOfFile:v19 options:0 error:&v55];
          v49 = v55;
          if (v26)
          {
            v54 = 0;
            v27 = [v26 length];
            v28 = [(_ANEVirtualClient *)self copyToIOSurface:v26 length:v27 ioSID:&v54];
            if (v28)
            {
              if (v54)
              {
                CFArrayAppendValue(refs, v28);
                v29 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v27];
                [sizesCopy addObject:v29];

                [namesCopy addObject:v15];
                CFRelease(v28);
                v18 = 0;
                ++v12;
                goto LABEL_36;
              }

              v35 = gLogger;
              if (os_log_type_enabled(gLogger, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                v64 = "[_ANEVirtualClient copyFilesInDirectoryToIOSurfaces:ioSurfaceRefs:ioSurfaceSizes:fileNames:]";
                v65 = 2112;
                v66 = v19;
                v31 = v35;
                v32 = "%s: FAILED to get IOSID for %@";
LABEL_33:
                v33 = 22;
LABEL_34:
                _os_log_error_impl(&dword_1AD246000, v31, OS_LOG_TYPE_ERROR, v32, buf, v33);
              }
            }

            else
            {
              v34 = gLogger;
              if (os_log_type_enabled(gLogger, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                v64 = "[_ANEVirtualClient copyFilesInDirectoryToIOSurfaces:ioSurfaceRefs:ioSurfaceSizes:fileNames:]";
                v65 = 2112;
                v66 = v19;
                v31 = v34;
                v32 = "%s: FAILED to write data to IOSurface for %@";
                goto LABEL_33;
              }
            }
          }

          else
          {
            v30 = gLogger;
            if (os_log_type_enabled(gLogger, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315650;
              v64 = "[_ANEVirtualClient copyFilesInDirectoryToIOSurfaces:ioSurfaceRefs:ioSurfaceSizes:fileNames:]";
              v65 = 2112;
              v66 = v19;
              v67 = 2112;
              v68 = v49;
              v31 = v30;
              v32 = "%s: Could not extract data from %@ with error %@, copy FAILED";
              v33 = 32;
              goto LABEL_34;
            }
          }

          v51 = 0;
          v18 = 2;
LABEL_36:
        }

        else
        {
          v24 = gLogger;
          if (os_log_type_enabled(gLogger, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            v64 = "[_ANEVirtualClient copyFilesInDirectoryToIOSurfaces:ioSurfaceRefs:ioSurfaceSizes:fileNames:]";
            v65 = 2112;
            v66 = v15;
            v67 = 2112;
            v68 = v19;
            v21 = v24;
            v22 = "%s: file=%@ does not exists at location=%@, SKIPPING";
            v23 = 32;
LABEL_43:
            _os_log_error_impl(&dword_1AD246000, v21, OS_LOG_TYPE_ERROR, v22, buf, v23);
          }

LABEL_20:
          v18 = 3;
        }

        goto LABEL_38;
      }

      v17 = gLogger;
      if (os_log_type_enabled(gLogger, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v64 = "[_ANEVirtualClient copyFilesInDirectoryToIOSurfaces:ioSurfaceRefs:ioSurfaceSizes:fileNames:]";
        v65 = 1024;
        LODWORD(v66) = 32;
        _os_log_error_impl(&dword_1AD246000, v17, OS_LOG_TYPE_ERROR, "%s: max file count reached %d, copy FAILED", buf, 0x12u);
      }

      v51 = 0;
      v18 = 2;
LABEL_38:
      objc_autoreleasePoolPop(v16);
      if (v18 != 3 && v18)
      {
        goto LABEL_45;
      }

      ++v14;
    }

    while (v11 != v14);
    v36 = [obj countByEnumeratingWithState:&v57 objects:v69 count:16];
    v11 = v36;
  }

  while (v36);
LABEL_45:

  if ((v51 & 1) == 0)
  {
    Count = CFArrayGetCount(refs);
    if (Count >= 1)
    {
      for (i = 0; i != Count; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(refs, i);
        CFRelease(ValueAtIndex);
      }
    }

    goto LABEL_55;
  }

LABEL_57:
  v41 = gLogger;
  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
  {
    -[_ANEVirtualClient copyFilesInDirectoryToIOSurfaces:ioSurfaceRefs:ioSurfaceSizes:fileNames:].cold.2(buf, [namesCopy count]);
  }

  v40 = 1;
LABEL_60:

LABEL_61:
  v42 = *MEMORY[0x1E69E9840];
  return v40;
}

- (BOOL)copyAllModelFiles:(id)files dictionary:(__CFDictionary *)dictionary ioSurfaceRefs:(__CFArray *)refs
{
  v105 = *MEMORY[0x1E69E9840];
  filesCopy = files;
  if (!filesCopy || !dictionary || !refs)
  {
    if (os_log_type_enabled(gLogger, OS_LOG_TYPE_ERROR))
    {
      [_ANEVirtualClient copyAllModelFiles:dictionary:ioSurfaceRefs:];
    }

    v78 = 0;
    goto LABEL_112;
  }

  modelURL = [filesCopy modelURL];
  path = [modelURL path];

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  validateEnvironmentForPrecompiledBinarySupport = [(_ANEVirtualClient *)self validateEnvironmentForPrecompiledBinarySupport];
  if (os_log_type_enabled(gLogger, OS_LOG_TYPE_DEBUG))
  {
    [_ANEVirtualClient copyAllModelFiles:dictionary:ioSurfaceRefs:];
  }

  v98 = 0;
  v6 = &stru_1F224D6A0;
  [defaultManager fileExistsAtPath:path isDirectory:&v98];
  if (v98)
  {
    goto LABEL_7;
  }

  v55 = [path componentsSeparatedByString:@"/"];
  lastObject = [v55 lastObject];
  v57 = [lastObject componentsSeparatedByString:@"."];
  lastObject2 = [v57 lastObject];
  v59 = [lastObject2 isEqual:@"hwx"] ^ 1 | validateEnvironmentForPrecompiledBinarySupport;
  if (v59)
  {
    v60 = [path containsString:@"/System"];
    if (v60)
    {
      if (os_log_type_enabled(gLogger, OS_LOG_TYPE_DEBUG))
      {
        [_ANEVirtualClient copyAllModelFiles:dictionary:ioSurfaceRefs:];
      }

      obja = [v55 lastObject];
      v61 = [obja componentsSeparatedByString:@"."];
      v62 = [v61 mutableCopy];
      [v62 removeLastObject];
      v6 = [v62 componentsJoinedByString:@"."];
      if (os_log_type_enabled(gLogger, OS_LOG_TYPE_DEBUG))
      {
        [_ANEVirtualClient copyAllModelFiles:dictionary:ioSurfaceRefs:];
      }
    }

    v81 = v6;
    v63 = [v55 mutableCopy];
    [v63 removeLastObject];
    v64 = [v63 componentsJoinedByString:@"/"];

    if (os_log_type_enabled(gLogger, OS_LOG_TYPE_DEBUG))
    {
      [_ANEVirtualClient copyAllModelFiles:dictionary:ioSurfaceRefs:];
    }

    path = v64;
  }

  else
  {
    if (os_log_type_enabled(gLogger, OS_LOG_TYPE_ERROR))
    {
      [_ANEVirtualClient copyAllModelFiles:dictionary:ioSurfaceRefs:];
    }

    v60 = 0;
    v81 = &stru_1F224D6A0;
  }

  if ((v59 & 1) == 0)
  {
LABEL_109:
    v78 = 0;
    goto LABEL_110;
  }

  v6 = v81;
  if (!v60)
  {
LABEL_7:
    v83 = 0;
    goto LABEL_8;
  }

  if (![(__CFString *)v81 length])
  {
    if (!os_log_type_enabled(gLogger, OS_LOG_TYPE_ERROR))
    {
      v78 = 0;
      goto LABEL_111;
    }

    [_ANEVirtualClient copyAllModelFiles:dictionary:ioSurfaceRefs:];
    goto LABEL_109;
  }

  v83 = 1;
LABEL_8:
  v81 = v6;
  defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
  v97 = 0;
  v74 = [defaultManager2 contentsOfDirectoryAtPath:path error:&v97];
  v73 = v97;

  if (v73 || !v74)
  {
    if (os_log_type_enabled(gLogger, OS_LOG_TYPE_ERROR))
    {
      [_ANEVirtualClient copyAllModelFiles:dictionary:ioSurfaceRefs:];
    }

LABEL_91:
    v78 = 0;
    goto LABEL_106;
  }

  v96 = 0;
  v92 = 0u;
  v93 = 0u;
  v94 = 0u;
  v95 = 0u;
  obj = v74;
  v8 = [obj countByEnumeratingWithState:&v92 objects:v104 count:16];
  if (!v8)
  {
    v78 = 1;
    goto LABEL_100;
  }

  v78 = 1;
  v9 = *v93;
  allocator = *MEMORY[0x1E695E480];
  while (2)
  {
    v10 = 0;
    do
    {
      if (*v93 != v9)
      {
        objc_enumerationMutation(obj);
      }

      v11 = *(*(&v92 + 1) + 8 * v10);
      v12 = objc_autoreleasePoolPush();
      if (v96 < 0x20)
      {
        if (v83 && ![v11 containsString:v81])
        {
          v14 = 3;
          goto LABEL_41;
        }

        v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@/%@", path, v11];
        v16 = [v11 componentsSeparatedByString:@"."];
        lastObject3 = [v16 lastObject];
        if (!(validateEnvironmentForPrecompiledBinarySupport | (([lastObject3 isEqual:@"hwx"] & 1) == 0)))
        {
          if (os_log_type_enabled(gLogger, OS_LOG_TYPE_DEBUG))
          {
            [_ANEVirtualClient copyAllModelFiles:v91 dictionary:? ioSurfaceRefs:?];
          }

          goto LABEL_39;
        }

        v18 = +[_ANEStrings llirBundleExtension];
        v19 = [v11 hasSuffix:v18];

        if (v19)
        {
          if ([(_ANEVirtualClient *)self negotiatedDataInterfaceVersion]> 0x20404)
          {
            *buf = 0;
            v24 = [_ANEVirtualClient copyLLIRBundleToIOSurface:v15 writtenDataSize:buf];
            if (v24 && *buf)
            {
              CFArrayAppendValue(refs, v24);
              v25 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:IOSurfaceGetID(v24)];
              [(__CFDictionary *)dictionary setObject:v25 forKey:@"ioSIDLLIRBundle"];

              v26 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*buf];
              [(__CFDictionary *)dictionary setObject:v26 forKey:@"llirDataSize"];
              v14 = 3;
            }

            else
            {
              v26 = gLogger;
              if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
              {
                NSStringFromSelector(a2);
                objc_claimAutoreleasedReturnValue();
                [_ANEVirtualClient copyAllModelFiles:dictionary:ioSurfaceRefs:];
              }

              v14 = 2;
            }

            goto LABEL_40;
          }

          v20 = gLogger;
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            v51 = NSStringFromSelector(a2);
            negotiatedDataInterfaceVersion = [(_ANEVirtualClient *)self negotiatedDataInterfaceVersion];
            *buf = 138412546;
            *&buf[4] = v51;
            v100 = 1024;
            *v101 = negotiatedDataInterfaceVersion;
            _os_log_error_impl(&dword_1AD246000, v20, OS_LOG_TYPE_ERROR, "%@: LLIR bundle not supported negotiatedInterfaceVersion=0x%x", buf, 0x12u);
          }

          goto LABEL_39;
        }

        v89 = 0;
        if (([defaultManager fileExistsAtPath:v15 isDirectory:&v89] & 1) == 0)
        {
          v27 = gLogger;
          if (os_log_type_enabled(gLogger, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            *&buf[4] = v11;
            v100 = 2112;
            *v101 = v15;
            _os_log_error_impl(&dword_1AD246000, v27, OS_LOG_TYPE_ERROR, "copyAllModelFiles file=%@ does not exist at location=%@, SKIPPING\n", buf, 0x16u);
          }

          goto LABEL_39;
        }

        v21 = v89;
        v22 = gLogger;
        v23 = os_log_type_enabled(gLogger, OS_LOG_TYPE_DEBUG);
        if (v21 == 1)
        {
          if (v23)
          {
            *buf = 138412290;
            *&buf[4] = v15;
            _os_log_debug_impl(&dword_1AD246000, v22, OS_LOG_TYPE_DEBUG, "copyAllModelFiles Sub-directory traversal unsupported, SKIPPING %@", buf, 0xCu);
          }

LABEL_39:
          v14 = 3;
LABEL_40:

          goto LABEL_41;
        }

        if (v23)
        {
          *buf = 138412802;
          *&buf[4] = v11;
          v100 = 2112;
          *v101 = path;
          *&v101[8] = 2112;
          *&v101[10] = v15;
          _os_log_debug_impl(&dword_1AD246000, v22, OS_LOG_TYPE_DEBUG, "copyAllModelFiles file=%@ directoryPath=%@ fullFilePath=%@", buf, 0x20u);
        }

        v28 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithContentsOfFile:v15];
        v29 = v28;
        if (!v28)
        {
          v33 = gLogger;
          if (os_log_type_enabled(gLogger, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            *&buf[4] = v11;
            _os_log_debug_impl(&dword_1AD246000, v33, OS_LOG_TYPE_DEBUG, "copyAllModelFiles could not get data for file=%@, SKIPPING", buf, 0xCu);
          }

          v14 = 3;
          goto LABEL_70;
        }

        valuePtr = 0;
        v30 = -[_ANEVirtualClient copyToIOSurface:length:ioSID:](self, "copyToIOSurface:length:ioSID:", v28, [v28 length], &valuePtr);
        if (v30)
        {
          if (valuePtr)
          {
            CFArrayAppendValue(refs, v30);
            if ([lastObject3 isEqual:@"hwx"])
            {
              v31 = CFNumberCreate(allocator, kCFNumberSInt32Type, &valuePtr);
              CFDictionarySetValue(dictionary, @"ioSIDModelHWX", v31);
              CFRelease(v31);
              CFDictionarySetValue(dictionary, @"hwxFileName", v11);
              *buf = [v29 length];
              v32 = CFNumberCreate(allocator, kCFNumberSInt64Type, buf);
              CFDictionarySetValue(dictionary, @"modelHWXLength", v32);
              CFRelease(v32);
              v14 = 0;
            }

            else
            {
              v69 = v29;
              v70 = v96;
              v38 = CFStringCreateWithFormat(0, 0, @"fileIOSID%u", v96);
              v39 = CFNumberCreate(allocator, kCFNumberSInt32Type, &valuePtr);
              CFDictionarySetValue(dictionary, v38, v39);
              CFRelease(v39);
              CFRelease(v38);
              v40 = CFStringCreateWithFormat(0, 0, @"fileName%u", v70);
              CFDictionarySetValue(dictionary, v40, v11);
              CFRelease(v40);
              v41 = CFStringCreateWithFormat(0, 0, @"fileLength%u", v70);
              v87 = [v69 length];
              v42 = CFNumberCreate(allocator, kCFNumberSInt64Type, &v87);
              CFDictionarySetValue(dictionary, v41, v42);
              CFRelease(v42);
              CFRelease(v41);
              defaultManager3 = [MEMORY[0x1E696AC08] defaultManager];
              v44 = [defaultManager3 attributesOfItemAtPath:v15 error:0];
              fileModificationDate = [v44 fileModificationDate];

              v46 = fileModificationDate;
              if (fileModificationDate)
              {
                v47 = MEMORY[0x1E696AD98];
                [fileModificationDate timeIntervalSince1970];
                v68 = [v47 numberWithDouble:?];
                stringValue = [v68 stringValue];
                v49 = CFStringCreateWithFormat(0, 0, @"FileLastModificationTimeStamp%u", v70);
                CFDictionarySetValue(dictionary, v49, stringValue);
                CFRelease(v49);
                v50 = gLogger;
                if (os_log_type_enabled(gLogger, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 136315650;
                  *&buf[4] = "[_ANEVirtualClient copyAllModelFiles:dictionary:ioSurfaceRefs:]";
                  v100 = 1024;
                  *v101 = v70;
                  *&v101[4] = 2112;
                  *&v101[6] = stringValue;
                  _os_log_debug_impl(&dword_1AD246000, v50, OS_LOG_TYPE_DEBUG, "%s fileCounter:%u lastModificationTimeStampString:%@", buf, 0x1Cu);
                }

                v46 = fileModificationDate;
              }

              else
              {
                v53 = gLogger;
                if (os_log_type_enabled(gLogger, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136315394;
                  *&buf[4] = "[_ANEVirtualClient copyAllModelFiles:dictionary:ioSurfaceRefs:]";
                  v100 = 2112;
                  *v101 = v15;
                  _os_log_error_impl(&dword_1AD246000, v53, OS_LOG_TYPE_ERROR, "%s lastModificationDate not available for %@", buf, 0x16u);
                }
              }

              v96 = v70 + 1;

              v14 = 0;
              v29 = v69;
            }

            goto LABEL_70;
          }

          v37 = gLogger;
          if (!os_log_type_enabled(gLogger, OS_LOG_TYPE_ERROR))
          {
LABEL_62:
            v78 = 0;
            v14 = 2;
LABEL_70:

            goto LABEL_40;
          }

          *buf = 138412290;
          *&buf[4] = v11;
          v35 = v37;
          v36 = "copyAllModelFiles failed to IOSurfaceID for file=%@\n";
        }

        else
        {
          v34 = gLogger;
          if (!os_log_type_enabled(gLogger, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_62;
          }

          *buf = 138412290;
          *&buf[4] = v11;
          v35 = v34;
          v36 = "copyAllModelFiles failed to write file data to IOSurface for file=%@\n";
        }

        _os_log_error_impl(&dword_1AD246000, v35, OS_LOG_TYPE_ERROR, v36, buf, 0xCu);
        goto LABEL_62;
      }

      v13 = gLogger;
      if (os_log_type_enabled(gLogger, OS_LOG_TYPE_ERROR))
      {
        [_ANEVirtualClient copyAllModelFiles:v102 dictionary:&v103 ioSurfaceRefs:v13];
      }

      v14 = 1;
LABEL_41:
      objc_autoreleasePoolPop(v12);
      if (v14 != 3 && v14)
      {

        if (v14 == 2)
        {
          goto LABEL_101;
        }

        goto LABEL_91;
      }

      ++v10;
    }

    while (v8 != v10);
    v54 = [obj countByEnumeratingWithState:&v92 objects:v104 count:16];
    v8 = v54;
    if (v54)
    {
      continue;
    }

    break;
  }

LABEL_100:

LABEL_101:
  if ((v78 & 1) != 0 && v96)
  {
    v65 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &v96);
    CFDictionarySetValue(dictionary, @"numModelFiles", v65);
    CFRelease(v65);
    v78 = 1;
  }

  else if (os_log_type_enabled(gLogger, OS_LOG_TYPE_ERROR))
  {
    [_ANEVirtualClient copyAllModelFiles:dictionary:ioSurfaceRefs:];
  }

LABEL_106:

LABEL_110:
  v6 = v81;
LABEL_111:

LABEL_112:
  v66 = *MEMORY[0x1E69E9840];
  return v78 & 1;
}

+ (__IOSurface)copyLLIRBundleToIOSurface:(id)surface writtenDataSize:(unint64_t *)size
{
  v35[3] = *MEMORY[0x1E69E9840];
  surfaceCopy = surface;
  if (surfaceCopy)
  {
    if (size)
    {
      defaultManager = [MEMORY[0x1E696AC08] defaultManager];
      if (!defaultManager)
      {
        data = gLogger;
        if (os_log_type_enabled(data, OS_LOG_TYPE_ERROR))
        {
          NSStringFromSelector(a2);
          objc_claimAutoreleasedReturnValue();
          +[_ANEVirtualClient copyLLIRBundleToIOSurface:writtenDataSize:];
        }

        v17 = 0;
        goto LABEL_44;
      }

      data = [MEMORY[0x1E695DF88] data];
      if (data)
      {
        v9 = [defaultManager fileExistsAtPath:surfaceCopy];
        if ((([surfaceCopy length] != 0) & v9) != 0)
        {
          lastPathComponent = [surfaceCopy lastPathComponent];
          v10 = [lastPathComponent dataUsingEncoding:4];
          v27 = v10;
          v32 = [v10 length];
          if (v32)
          {
            [data appendBytes:&v32 length:4];
            [data appendData:v10];
            v29 = [defaultManager enumeratorAtPath:surfaceCopy];
            for (i = 0; ; i = nextObject)
            {
              nextObject = [v29 nextObject];

              if (!nextObject)
              {
                break;
              }

              v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@/%@", surfaceCopy, nextObject];
              v31 = 0;
              if ([defaultManager fileExistsAtPath:v13 isDirectory:&v31])
              {
                if (v31 == 1)
                {
                  v30 = [nextObject length];
                  [data appendBytes:&v30 length:4];
                  v14 = [nextObject dataUsingEncoding:4];
                  [data appendData:v14];

                  v35[0] = 0;
                  [data appendBytes:v35 length:8];
                }

                else
                {
                  v15 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:v13];
                  if (!v15)
                  {
                    v24 = gLogger;
                    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
                    {
                      NSStringFromSelector(a2);
                      objc_claimAutoreleasedReturnValue();
                      +[_ANEVirtualClient copyLLIRBundleToIOSurface:writtenDataSize:];
                    }

                    goto LABEL_40;
                  }

                  v30 = [nextObject length];
                  [data appendBytes:&v30 length:4];
                  v16 = [nextObject dataUsingEncoding:4];
                  [data appendData:v16];

                  v35[0] = [v15 length];
                  [data appendBytes:v35 length:8];
                  [data appendData:v15];
                }
              }
            }

            v33 = *MEMORY[0x1E696CE30];
            v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[NSObject length](data, "length")}];
            v34 = v18;
            v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v34 forKeys:&v33 count:1];

            v19 = IOSurfaceCreate(v13);
            v17 = v19;
            if (v19)
            {
              AllocSize = IOSurfaceGetAllocSize(v19);
              if (AllocSize >= [data length])
              {
                IOSurfaceLock(v17, 0, 0);
                BaseAddress = IOSurfaceGetBaseAddress(v17);
                v23 = data;
                memcpy(BaseAddress, [data bytes], [data length]);
                IOSurfaceUnlock(v17, 0, 0);
                *size = [data length];
                goto LABEL_41;
              }
            }

            v21 = gLogger;
            if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
            {
              NSStringFromSelector(a2);
              objc_claimAutoreleasedReturnValue();
              [data length];
              +[_ANEVirtualClient copyLLIRBundleToIOSurface:writtenDataSize:];
            }

LABEL_40:
            v17 = 0;
LABEL_41:
          }

          else
          {
            v29 = gLogger;
            if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
            {
              NSStringFromSelector(a2);
              objc_claimAutoreleasedReturnValue();
              +[_ANEVirtualClient copyLLIRBundleToIOSurface:writtenDataSize:];
            }

            v17 = 0;
          }

          goto LABEL_43;
        }

        lastPathComponent = gLogger;
        if (os_log_type_enabled(lastPathComponent, OS_LOG_TYPE_ERROR))
        {
          NSStringFromSelector(a2);
          objc_claimAutoreleasedReturnValue();
          +[_ANEVirtualClient copyLLIRBundleToIOSurface:writtenDataSize:];
        }
      }

      else
      {
        lastPathComponent = gLogger;
        if (os_log_type_enabled(lastPathComponent, OS_LOG_TYPE_ERROR))
        {
          NSStringFromSelector(a2);
          objc_claimAutoreleasedReturnValue();
          +[_ANEVirtualClient copyLLIRBundleToIOSurface:writtenDataSize:];
        }
      }

      v17 = 0;
LABEL_43:

LABEL_44:
      goto LABEL_45;
    }

    defaultManager = gLogger;
    if (os_log_type_enabled(defaultManager, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      +[_ANEVirtualClient copyLLIRBundleToIOSurface:writtenDataSize:];
    }
  }

  else
  {
    defaultManager = gLogger;
    if (os_log_type_enabled(defaultManager, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      +[_ANEVirtualClient copyLLIRBundleToIOSurface:writtenDataSize:];
    }
  }

  v17 = 0;
LABEL_45:

  v25 = *MEMORY[0x1E69E9840];
  return v17;
}

+ (void)freeModelFileIOSurfaces:(__CFArray *)surfaces
{
  Count = CFArrayGetCount(surfaces);
  if (Count >= 1)
  {
    v5 = Count;
    for (i = 0; i != v5; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(surfaces, i);
      CFRelease(ValueAtIndex);
    }
  }
}

- (void)copyModelMetaData:(id)data options:(id)options dictionary:(__CFDictionary *)dictionary vmData:(VMData *)vmData
{
  v60 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  optionsCopy = options;
  if (vmData)
  {
    uUID = [dataCopy UUID];

    if (uUID)
    {
      [dataCopy UUID];
    }

    else
    {
      [MEMORY[0x1E696AFB0] UUID];
    }
    v13 = ;
    uUIDString = [v13 UUIDString];

    [(__CFDictionary *)dictionary setValue:uUIDString forKey:@"uuid"];
    v14 = [dataCopy key];
    v15 = [v14 length];

    v16 = MEMORY[0x1E695E480];
    if (v15)
    {
      v17 = MEMORY[0x1E696ACC8];
      v18 = [dataCopy key];
      v19 = [v17 archivedDataWithRootObject:v18 requiringSecureCoding:1 error:0];

      vmData->var6 = -[_ANEVirtualClient copyToIOSurface:length:ioSID:](self, "copyToIOSurface:length:ioSID:", v19, [v19 length], &vmData->var17.var5);
      v20 = *v16;
      v21 = CFNumberCreate(*v16, kCFNumberSInt32Type, &vmData->var17.var5);
      CFDictionarySetValue(dictionary, @"ioSIDKey", v21);
      CFRelease(v21);
      vmData->var17.var9 = [v19 length];
      v22 = CFNumberCreate(v20, kCFNumberSInt64Type, &vmData->var17.var9);
      CFDictionarySetValue(dictionary, @"keyLength", v22);
      CFRelease(v22);
    }

    v23 = MEMORY[0x1E696ACC8];
    modelAttributes = [dataCopy modelAttributes];
    v25 = [v23 archivedDataWithRootObject:modelAttributes requiringSecureCoding:1 error:0];
    aSelector = a2;

    v54 = v25;
    vmData->var7 = [(_ANEVirtualClient *)self copyToIOSurface:v25 length:0x100000 ioSID:&vmData->var17.var19];
    v26 = *v16;
    v27 = CFNumberCreate(*v16, kCFNumberSInt32Type, &vmData->var17.var19);
    CFDictionarySetValue(dictionary, @"ioSIDModelAttributes", v27);
    CFRelease(v27);
    vmData->var17.var20 = [v25 length];
    v28 = CFNumberCreate(v26, kCFNumberSInt64Type, &vmData->var17.var20);
    CFDictionarySetValue(dictionary, @"modelAttributeLength", v28);
    CFRelease(v28);
    v29 = MEMORY[0x1E696ACC8];
    modelURL = [dataCopy modelURL];
    path = [modelURL path];
    v32 = [v29 archivedDataWithRootObject:path requiringSecureCoding:1 error:0];

    vmData->var11 = -[_ANEVirtualClient copyToIOSurface:length:ioSID:](self, "copyToIOSurface:length:ioSID:", v32, [v32 length], &vmData->var17.var52);
    v33 = CFNumberCreate(v26, kCFNumberSInt32Type, &vmData->var17.var52);
    CFDictionarySetValue(dictionary, @"ioSIDModelInputPath", v33);
    CFRelease(v33);
    vmData->var17.var53 = [v32 length];
    v34 = CFNumberCreate(v26, kCFNumberSInt64Type, &vmData->var17.var53);
    CFDictionarySetValue(dictionary, @"modelInputPathLength", v34);
    CFRelease(v34);
    sourceURL = [dataCopy sourceURL];

    if (sourceURL)
    {
      v36 = gLogger;
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
      {
        v37 = NSStringFromSelector(aSelector);
        sourceURL2 = [dataCopy sourceURL];
        [_ANEVirtualClient copyModelMetaData:v37 options:sourceURL2 dictionary:v59 vmData:?];
      }

      v39 = MEMORY[0x1E696ACC8];
      sourceURL3 = [dataCopy sourceURL];
      path2 = [sourceURL3 path];
      v42 = [v39 archivedDataWithRootObject:path2 requiringSecureCoding:1 error:0];

      valuePtr = 0;
      vmData->var20 = -[_ANEVirtualClient copyToIOSurface:length:ioSID:](self, "copyToIOSurface:length:ioSID:", v42, [v42 length], &valuePtr);
      v43 = CFNumberCreate(v26, kCFNumberSInt32Type, &valuePtr);
      CFDictionarySetValue(dictionary, @"ioSIDModelSourceURLPath", v43);
      CFRelease(v43);
      identifierSource = [v42 length];
      v44 = gLogger;
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
      {
        NSStringFromSelector(aSelector);
        objc_claimAutoreleasedReturnValue();
        [_ANEVirtualClient copyModelMetaData:options:dictionary:vmData:];
      }

      v45 = CFNumberCreate(v26, kCFNumberSInt64Type, &identifierSource);
      CFDictionarySetValue(dictionary, @"sourceURLPathLength", v45);
      CFRelease(v45);
    }

    identifierSource = [dataCopy identifierSource];
    v46 = CFNumberCreate(v26, kCFNumberSInt64Type, &identifierSource);
    CFDictionarySetValue(dictionary, @"modelCacheURLIdentifierSource", v46);
    CFRelease(v46);
    vmData->var17.var14 = [dataCopy string_id];
    v47 = CFNumberCreate(v26, kCFNumberSInt64Type, &vmData->var17.var14);
    CFDictionarySetValue(dictionary, @"string_id", v47);
    CFRelease(v47);
    vmData->var17.var15 = [dataCopy programHandle];
    v48 = CFNumberCreate(v26, kCFNumberSInt64Type, &vmData->var17.var15);
    CFDictionarySetValue(dictionary, @"programHandle", v48);
    CFRelease(v48);
    vmData->var17.var16 = [dataCopy intermediateBufferHandle];
    v49 = CFNumberCreate(v26, kCFNumberSInt64Type, &vmData->var17.var16);
    CFDictionarySetValue(dictionary, @"intermediateBufferHandle", v49);
    CFRelease(v49);
    vmData->var17.var17 = [dataCopy queueDepth];
    v50 = CFNumberCreate(v26, kCFNumberSInt8Type, &vmData->var17.var17);
    CFDictionarySetValue(dictionary, @"queueDepth", v50);
    CFRelease(v50);
    vmData->var17.var21 = [dataCopy perfStatsMask];
    v51 = CFNumberCreate(v26, kCFNumberSInt32Type, &vmData->var17.var21);
    CFDictionarySetValue(dictionary, @"perfStatsMask", v51);
    CFRelease(v51);
  }

  else
  {
    uUIDString = gLogger;
    if (os_log_type_enabled(uUIDString, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualClient copyModel:options:vmData:];
    }
  }

  v52 = *MEMORY[0x1E69E9840];
}

- (id)readWeightFilename:(id)filename
{
  v14 = *MEMORY[0x1E69E9840];
  filenameCopy = filename;
  v6 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithContentsOfFile:filenameCopy];
  if (v6)
  {
    v7 = [(_ANEVirtualClient *)self doJsonParsingMatchWeightName:v6];
    if (v7)
    {
      v8 = gLogger;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        [_ANEVirtualClient readWeightFilename:];
      }
    }

    else
    {
      v10 = [(_ANEVirtualClient *)self parallelDecompressedData:v6];
      v11 = [(_ANEVirtualClient *)self doJsonParsingMatchWeightName:v10];

      v7 = v11;
    }
  }

  else
  {
    v9 = gLogger;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualClient readWeightFilename:];
    }

    v7 = @"model.espresso.weights";
  }

  v12 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)doJsonParsingMatchWeightName:(id)name
{
  v11 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  v5 = [MEMORY[0x1E696ACB0] JSONObjectWithData:nameCopy options:0 error:0];
  if (!v5)
  {
    v7 = gLogger;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualClient doJsonParsingMatchWeightName:];
    }

    goto LABEL_12;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v7 = gLogger;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualClient doJsonParsingMatchWeightName:];
    }

    goto LABEL_12;
  }

  v6 = [v5 objectForKeyedSubscript:@"storage"];
  v7 = gLogger;
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
  if (!v6)
  {
    if (v8)
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualClient doJsonParsingMatchWeightName:];
    }

LABEL_12:
    v6 = 0;
    goto LABEL_13;
  }

  if (v8)
  {
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    [_ANEVirtualClient doJsonParsingMatchWeightName:];
  }

LABEL_13:

  v9 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)parallelDecompressedData:(id)data
{
  v29 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v5 = dataCopy;
  if (!dataCopy || [dataCopy length] < 0x1D || (v6 = objc_msgSend(v5, "bytes"), v7 = v6, *v6 != 112) || v6[1] != 98 || v6[2] != 122)
  {
    v9 = 0;
    goto LABEL_11;
  }

  v8 = v6[3];
  if (v8 <= 0x77)
  {
    if (v8 == 52)
    {
      v12 = COMPRESSION_LZ4;
      goto LABEL_23;
    }

    if (v8 == 101)
    {
      goto LABEL_20;
    }

    goto LABEL_17;
  }

  if (v8 == 122)
  {
    v12 = COMPRESSION_ZLIB;
    goto LABEL_23;
  }

  if (v8 != 120)
  {
LABEL_17:
    v13 = gLogger;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualClient parallelDecompressedData:];
    }

LABEL_20:
    v12 = COMPRESSION_LZFSE;
    goto LABEL_23;
  }

  v12 = COMPRESSION_LZMA;
LABEL_23:
  v14 = bswap64(*(v7 + 12));
  if (v14 >= 0x80000001)
  {
    v15 = gLogger;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualClient parallelDecompressedData:];
    }
  }

  v9 = [MEMORY[0x1E695DF88] dataWithLength:v14];
  v16 = v9;
  mutableBytes = [v9 mutableBytes];
  v18 = [v9 length];
  v19 = v5;
  v20 = compression_decode_buffer(mutableBytes, v18, ([v5 bytes] + 28), objc_msgSend(v5, "length") - 28, 0, v12);
  if (v20 != [v9 length])
  {
    v21 = gLogger;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = NSStringFromSelector(a2);
      v23 = 138412802;
      v24 = v22;
      v25 = 2048;
      v26 = v20;
      v27 = 2048;
      v28 = [v9 length];
      _os_log_error_impl(&dword_1AD246000, v21, OS_LOG_TYPE_ERROR, "%@: Mismatching decompression size %zu %zu ", &v23, 0x20u);
    }
  }

LABEL_11:

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (void)copyOptions:(id)options vmData:(VMData *)data
{
  v6 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:options requiringSecureCoding:1 error:0];
  if (v6)
  {
    v7 = v6;
    data->var17.var24 = [v6 length];
    data->var4 = -[_ANEVirtualClient copyToIOSurface:length:ioSID:](self, "copyToIOSurface:length:ioSID:", v7, [v7 length], &data->var17.var23);
    v6 = v7;
  }

  else
  {
    data->var17.var23 = 0;
    data->var17.var24 = 0;
  }
}

- (void)copyOptions:(id)options dictionary:(__CFDictionary *)dictionary vmData:(VMData *)data
{
  optionsCopy = options;
  v8 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:? requiringSecureCoding:? error:?];
  v9 = v8;
  if (v8)
  {
    data->var17.var24 = [v8 length];
    data->var4 = -[_ANEVirtualClient copyToIOSurface:length:ioSID:](self, "copyToIOSurface:length:ioSID:", v9, [v9 length], &data->var17.var23);
    v10 = *MEMORY[0x1E695E480];
    v11 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &data->var17.var23);
    CFDictionarySetValue(dictionary, @"ioSIDOptions", v11);
    CFRelease(v11);
  }

  else
  {
    data->var17.var23 = 0;
    data->var17.var24 = 0;
    v10 = *MEMORY[0x1E695E480];
  }

  v12 = CFNumberCreate(v10, kCFNumberSInt64Type, &data->var17.var24);
  CFDictionarySetValue(dictionary, @"optionsLength", v12);
  CFRelease(v12);
}

- (void)copyModelOptionFiles:(id)files options:(id)options vmData:(VMData *)data
{
  v21 = *MEMORY[0x1E69E9840];
  filesCopy = files;
  optionsCopy = options;
  v11 = optionsCopy;
  if (optionsCopy)
  {
    v12 = [optionsCopy objectForKeyedSubscript:kANEFCompilerOptionsFilenameKey[0]];
    if (v12)
    {
      v13 = objc_alloc(MEMORY[0x1E696AEC0]);
      modelURL = [filesCopy modelURL];
      path = [modelURL path];
      v16 = [v13 initWithFormat:@"%@/%@", path, v12];

      v17 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithContentsOfFile:v16];
      v18 = gLogger;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        [v17 length];
        [_ANEVirtualClient copyModelOptionFiles:options:vmData:];
      }

      data->var17.var27 = [v17 length];
      data->var3 = -[_ANEVirtualClient copyToIOSurface:length:ioSID:](self, "copyToIOSurface:length:ioSID:", v17, [v17 length], &data->var17.var26);
    }

    else
    {
      data->var17.var26 = 0;
      data->var17.var27 = 0;
    }
  }

  else
  {
    v19 = gLogger;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualClient copyModelOptionFiles:options:vmData:];
    }

    data->var17.var26 = 0;
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (void)copyModelOptionFiles:(id)files options:(id)options dictionary:(__CFDictionary *)dictionary vmData:(VMData *)data
{
  v25 = *MEMORY[0x1E69E9840];
  filesCopy = files;
  optionsCopy = options;
  v13 = optionsCopy;
  if (optionsCopy)
  {
    v14 = [optionsCopy objectForKeyedSubscript:kANEFCompilerOptionsFilenameKey[0]];
    if (v14)
    {
      v15 = objc_alloc(MEMORY[0x1E696AEC0]);
      modelURL = [filesCopy modelURL];
      path = [modelURL path];
      v18 = [v15 initWithFormat:@"%@/%@", path, v14];

      v19 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithContentsOfFile:v18];
      v20 = gLogger;
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        [v19 length];
        [_ANEVirtualClient copyModelOptionFiles:options:vmData:];
      }

      data->var17.var27 = [v19 length];
      data->var3 = -[_ANEVirtualClient copyToIOSurface:length:ioSID:](self, "copyToIOSurface:length:ioSID:", v19, [v19 length], &data->var17.var26);
      v21 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &data->var17.var26);
      CFDictionarySetValue(dictionary, @"ioSIDCompilerOptionFile", v21);
      CFRelease(v21);
    }

    else
    {
      data->var17.var26 = 0;
      data->var17.var27 = 0;
    }
  }

  else
  {
    v22 = gLogger;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualClient copyModelOptionFiles:options:vmData:];
    }

    data->var17.var26 = 0;
    data->var17.var27 = 0;
  }

  v23 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, &data->var17.var27);
  CFDictionarySetValue(dictionary, @"compilerOptionFileLength", v23);
  CFRelease(v23);

  v24 = *MEMORY[0x1E69E9840];
}

- (void)copyErrorValue:(VMData *)value
{
  v12 = *MEMORY[0x1E69E9840];
  *&value->var17.var46 = 0u;
  v5 = MEMORY[0x1E695DF20];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:256];
  v7 = [v5 dictionaryWithObjectsAndKeys:{v6, *MEMORY[0x1E696CE30], 0}];

  v8 = IOSurfaceCreate(v7);
  value->var9 = v8;
  if (v8)
  {
    IOSurfaceLock(v8, 0, 0);
    value->var17.var48 = IOSurfaceGetID(value->var9);
    v9 = gLogger;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualClient copyErrorValue:];
    }

    IOSurfaceUnlock(value->var9, 0, 0);
  }

  else
  {
    v10 = gLogger;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualClient copyErrorValue:];
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)copyErrorValue:(__CFDictionary *)value vmData:(VMData *)data
{
  v15 = *MEMORY[0x1E69E9840];
  *&data->var17.var46 = 0u;
  v7 = MEMORY[0x1E695DF20];
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:256];
  v9 = [v7 dictionaryWithObjectsAndKeys:{v8, *MEMORY[0x1E696CE30], 0}];

  v10 = IOSurfaceCreate(v9);
  data->var9 = v10;
  if (v10)
  {
    IOSurfaceLock(v10, 0, 0);
    data->var17.var48 = IOSurfaceGetID(data->var9);
    v11 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &data->var17.var48);
    CFDictionarySetValue(value, @"ioSIDErrorValue", v11);
    CFRelease(v11);
    v12 = gLogger;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualClient copyErrorValue:];
    }

    IOSurfaceUnlock(data->var9, 0, 0);
  }

  else
  {
    v13 = gLogger;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualClient copyErrorValue:];
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (__IOSurface)copyToIOSurface:(id)surface length:(unint64_t)length ioSID:(unsigned int *)d
{
  v30 = *MEMORY[0x1E69E9840];
  surfaceCopy = surface;
  if (!d)
  {
    v11 = gLogger;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualClient copyToIOSurface:length:ioSID:];
    }

    goto LABEL_11;
  }

  if (!length)
  {
    v11 = gLogger;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualClient copyToIOSurface:length:ioSID:];
    }

LABEL_11:
    v13 = 0;
    goto LABEL_12;
  }

  v9 = MEMORY[0x1E695DF20];
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:length];
  v11 = [v9 dictionaryWithObjectsAndKeys:{v10, *MEMORY[0x1E696CE30], 0}];

  v12 = IOSurfaceCreate(v11);
  v13 = v12;
  if (v12)
  {
    IOSurfaceLock(v12, 0, 0);
    BaseAddress = IOSurfaceGetBaseAddress(v13);
    memcpy(BaseAddress, [surfaceCopy bytes], objc_msgSend(surfaceCopy, "length"));
    *d = IOSurfaceGetID(v13);
    v15 = gLogger;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v19 = NSStringFromSelector(a2);
      v20 = [surfaceCopy length];
      v21 = *d;
      *buf = 138413058;
      v23 = v19;
      v24 = 2048;
      v25 = v20;
      v26 = 2048;
      lengthCopy = length;
      v28 = 1024;
      v29 = v21;
      _os_log_debug_impl(&dword_1AD246000, v15, OS_LOG_TYPE_DEBUG, "%@ ANEVirtualClient data in bytes %lu IOSurfaceLength %lu IOSID: %u\n", buf, 0x26u);
    }

    IOSurfaceUnlock(v13, 0, 0);
  }

  else
  {
    v18 = gLogger;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualClient copyToIOSurface:length:ioSID:];
    }
  }

LABEL_12:

  v16 = *MEMORY[0x1E69E9840];
  return v13;
}

- (__IOSurface)copyToIOSurface:(char *)surface size:(unint64_t)size ioSID:(unsigned int *)d
{
  v27 = *MEMORY[0x1E69E9840];
  if (!d)
  {
    v11 = gLogger;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualClient copyToIOSurface:size:ioSID:];
    }

    goto LABEL_11;
  }

  if (!size)
  {
    v11 = gLogger;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualClient copyToIOSurface:size:ioSID:];
    }

LABEL_11:
    v13 = 0;
    goto LABEL_12;
  }

  v9 = MEMORY[0x1E695DF20];
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:size];
  v11 = [v9 dictionaryWithObjectsAndKeys:{v10, *MEMORY[0x1E696CE30], 0}];

  v12 = IOSurfaceCreate(v11);
  v13 = v12;
  if (v12)
  {
    IOSurfaceLock(v12, 0, 0);
    BaseAddress = IOSurfaceGetBaseAddress(v13);
    memcpy(BaseAddress, surface, size);
    *d = IOSurfaceGetID(v13);
    v15 = gLogger;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v19 = NSStringFromSelector(a2);
      v20 = *d;
      *buf = 138412802;
      v22 = v19;
      v23 = 2048;
      sizeCopy = size;
      v25 = 1024;
      v26 = v20;
      _os_log_debug_impl(&dword_1AD246000, v15, OS_LOG_TYPE_DEBUG, "%@ ANEVirtualClient data in bytes length %lu IOSID: %u\n", buf, 0x1Cu);
    }

    IOSurfaceUnlock(v13, 0, 0);
  }

  else
  {
    v18 = gLogger;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualClient copyErrorValue:];
    }
  }

LABEL_12:

  v16 = *MEMORY[0x1E69E9840];
  return v13;
}

+ (void)printIOSurfaceDataInBytes:(__IOSurface *)bytes
{
  v19 = *MEMORY[0x1E69E9840];
  if (bytes)
  {
    IOSurfaceLock(bytes, 0, 0);
    AllocSize = IOSurfaceGetAllocSize(bytes);
    BaseAddress = IOSurfaceGetBaseAddress(bytes);
    if (AllocSize)
    {
      v7 = BaseAddress;
      for (i = 0; i != AllocSize; ++i)
      {
        v9 = gLogger;
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          v10 = NSStringFromSelector(a2);
          v11 = v7[i];
          *buf = 138412802;
          v14 = v10;
          v15 = 2048;
          v16 = i;
          v17 = 1024;
          v18 = v11;
          _os_log_debug_impl(&dword_1AD246000, v9, OS_LOG_TYPE_DEBUG, "%@ ANEVirtualClient byte[%llu]=0x%x\n", buf, 0x1Cu);
        }
      }
    }

    IOSurfaceUnlock(bytes, 0, 0);
  }

  else if (os_log_type_enabled(gLogger, OS_LOG_TYPE_ERROR))
  {
    +[_ANEVirtualClient printIOSurfaceDataInBytes:];
  }

  v12 = *MEMORY[0x1E69E9840];
}

+ (id)getDictionaryWithJSONEncodingFromIOSurface:(__IOSurface *)surface withArchivedDataSize:(unint64_t)size
{
  v26 = *MEMORY[0x1E69E9840];
  if (!surface)
  {
    v13 = gLogger;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      +[_ANEVirtualClient getDictionaryWithJSONEncodingFromIOSurface:withArchivedDataSize:];
    }

    goto LABEL_9;
  }

  if (!size)
  {
    v13 = gLogger;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      +[_ANEVirtualClient getDictionaryWithJSONEncodingFromIOSurface:withArchivedDataSize:];
    }

LABEL_9:

LABEL_16:
    v12 = 0;
    goto LABEL_21;
  }

  IOSurfaceLock(surface, 0, 0);
  BaseAddress = IOSurfaceGetBaseAddress(surface);
  if (!BaseAddress)
  {
    v14 = gLogger;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      +[_ANEVirtualClient getDictionaryWithJSONEncodingFromIOSurface:withArchivedDataSize:];
    }

    IOSurfaceUnlock(surface, 0, 0);
    goto LABEL_16;
  }

  v8 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:BaseAddress length:size];
  v19 = 0;
  v9 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v8 options:1 error:&v19];
  v10 = v19;
  v11 = v10;
  if (!v9 || v10)
  {
    v15 = gLogger;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v18 = NSStringFromSelector(a2);
      *buf = 138412802;
      v21 = v18;
      v22 = 2048;
      sizeCopy = size;
      v24 = 2112;
      v25 = v11;
      _os_log_error_impl(&dword_1AD246000, v15, OS_LOG_TYPE_ERROR, "%@: ERROR : failed to extract archived dictionary with archivedDataSize=%llu err=%@!", buf, 0x20u);
    }

    IOSurfaceUnlock(surface, 0, 0);
    v12 = 0;
  }

  else
  {
    IOSurfaceUnlock(surface, 0, 0);
    v12 = v9;
  }

LABEL_21:
  v16 = *MEMORY[0x1E69E9840];

  return v12;
}

- (id)getModelAttribute:(VMData *)attribute
{
  v21 = *MEMORY[0x1E69E9840];
  IOSurfaceLock(attribute->var7, 0, 0);
  v5 = MEMORY[0x1E695E0F8];
  BaseAddress = IOSurfaceGetBaseAddress(attribute->var7);
  if (BaseAddress)
  {
    v7 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:BaseAddress length:attribute->var18.var20];
    v14 = 0;
    v5 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v7 options:1 error:&v14];
    v8 = v14;
  }

  else
  {
    if (os_log_type_enabled(gLogger, OS_LOG_TYPE_ERROR))
    {
      [_ANEVirtualClient getModelAttribute:];
    }

    if (!attribute->var7 && os_log_type_enabled(gLogger, OS_LOG_TYPE_ERROR))
    {
      [_ANEVirtualClient getModelAttribute:];
    }

    v8 = 0;
  }

  v9 = gLogger;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v12 = NSStringFromSelector(a2);
    var20 = attribute->var18.var20;
    *buf = 138412802;
    v16 = v12;
    v17 = 2048;
    v18 = var20;
    v19 = 2112;
    v20 = v5;
    _os_log_debug_impl(&dword_1AD246000, v9, OS_LOG_TYPE_DEBUG, "%@: ANEVirtualClient Model Attribute Length %llu Model Attribute value %@\n", buf, 0x20u);
  }

  IOSurfaceUnlock(attribute->var7, 0, 0);
  v10 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)getObjectFromIOSurface:(__IOSurface *)surface classType:(Class)type length:(unint64_t)length
{
  v18[4] = *MEMORY[0x1E69E9840];
  if (!surface)
  {
    v10 = gLogger;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      +[_ANEVirtualClient getObjectFromIOSurface:classType:length:];
    }

    goto LABEL_16;
  }

  lengthCopy = length;
  if (!length)
  {
    v10 = gLogger;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      +[_ANEVirtualClient getObjectFromIOSurface:classType:length:];
    }

    goto LABEL_16;
  }

  IOSurfaceLock(surface, 0, 0);
  BaseAddress = IOSurfaceGetBaseAddress(surface);
  if (!BaseAddress)
  {
    IOSurfaceUnlock(surface, 0, 0);
    v10 = gLogger;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      +[_ANEVirtualClient getObjectFromIOSurface:classType:length:];
    }

LABEL_16:
    v14 = 0;
    goto LABEL_23;
  }

  v10 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:BaseAddress length:lengthCopy];
  IOSurfaceUnlock(surface, 0, 0);
  if (!v10)
  {
    v12 = gLogger;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      +[_ANEVirtualClient getObjectFromIOSurface:classType:length:];
    }

    v14 = 0;
    goto LABEL_22;
  }

  v18[0] = 0;
  v11 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:v10 error:v18];
  v12 = v18[0];
  if (v12)
  {
    v13 = gLogger;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      +[_ANEVirtualClient getObjectFromIOSurface:classType:length:];
    }

    v14 = 0;
  }

  else
  {
    v15 = [MEMORY[0x1E695DFD8] setWithObject:type];
    v14 = [v11 decodeObjectOfClasses:v15 forKey:*MEMORY[0x1E696A508]];

    if (v14)
    {
      goto LABEL_21;
    }

    v13 = gLogger;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      +[_ANEVirtualClient getObjectFromIOSurface:classType:length:];
    }
  }

LABEL_21:
LABEL_22:

LABEL_23:
  v16 = *MEMORY[0x1E69E9840];

  return v14;
}

+ (unsigned)dictionaryGetUInt32ForKey:(__CFDictionary *)key key:(__CFString *)a4
{
  Value = CFDictionaryGetValue(key, a4);
  valuePtr = 0;
  if (Value)
  {
    CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr);
    LODWORD(Value) = valuePtr;
  }

  return Value;
}

+ (unint64_t)dictionaryGetUInt64ForKey:(__CFDictionary *)key key:(__CFString *)a4
{
  result = CFDictionaryGetValue(key, a4);
  valuePtr = 0;
  if (result)
  {
    CFNumberGetValue(result, kCFNumberSInt64Type, &valuePtr);
    return valuePtr;
  }

  return result;
}

+ (int64_t)dictionaryGetInt64ForKey:(__CFDictionary *)key key:(__CFString *)a4
{
  result = CFDictionaryGetValue(key, a4);
  valuePtr = 0;
  if (result)
  {
    CFNumberGetValue(result, kCFNumberSInt64Type, &valuePtr);
    return valuePtr;
  }

  return result;
}

+ (char)dictionaryGetInt8ForKey:(__CFDictionary *)key key:(__CFString *)a4
{
  Value = CFDictionaryGetValue(key, a4);
  valuePtr = 0;
  if (!Value)
  {
    return 0;
  }

  CFNumberGetValue(Value, kCFNumberSInt8Type, &valuePtr);
  return valuePtr;
}

+ (id)dictionaryGetNSStringForKey:(__CFDictionary *)key key:(__CFString *)a4
{
  Value = CFDictionaryGetValue(key, a4);
  v5 = Value;
  if (Value)
  {
    v6 = Value;
  }

  return v5;
}

+ (__CFDictionary)getCFDictionaryFromIOSurface:(__IOSurface *)surface dataLength:(unint64_t)length
{
  if (!surface)
  {
    if (os_log_type_enabled(gLogger, OS_LOG_TYPE_ERROR))
    {
      +[_ANEVirtualClient getCFDictionaryFromIOSurface:dataLength:];
    }

    return 0;
  }

  IOSurfaceLock(surface, 0, 0);
  v6 = operator new[](length, MEMORY[0x1E69E5398]);
  v7 = v6;
  if (length && !v6)
  {
    if (os_log_type_enabled(gLogger, OS_LOG_TYPE_ERROR))
    {
      +[_ANEVirtualClient getCFDictionaryFromIOSurface:dataLength:];
    }

    return 0;
  }

  BaseAddress = IOSurfaceGetBaseAddress(surface);
  if (BaseAddress)
  {
    memcpy(v7, BaseAddress, length);
    IOSurfaceUnlock(surface, 0, 0);
    v10 = *MEMORY[0x1E695E480];
    v11 = CFDataCreate(*MEMORY[0x1E695E480], v7, length);
    if (v11)
    {
      v8 = CFPropertyListCreateWithData(v10, v11, 0, 0, 0);
      CFRelease(v11);
      if (v8)
      {
        goto LABEL_20;
      }

      if (os_log_type_enabled(gLogger, OS_LOG_TYPE_ERROR))
      {
        +[_ANEVirtualClient getCFDictionaryFromIOSurface:dataLength:];
      }
    }

    else if (os_log_type_enabled(gLogger, OS_LOG_TYPE_ERROR))
    {
      +[_ANEVirtualClient getCFDictionaryFromIOSurface:dataLength:];
    }
  }

  else
  {
    if (os_log_type_enabled(gLogger, OS_LOG_TYPE_ERROR))
    {
      +[_ANEVirtualClient getCFDictionaryFromIOSurface:dataLength:];
    }

    IOSurfaceUnlock(surface, 0, 0);
  }

  v8 = 0;
LABEL_20:
  if (v7)
  {
    MEMORY[0x1B26F3360](v7, 0x1000C4077774924);
  }

  return v8;
}

+ (void)copyDictionaryDataToStruct:(VirtANEModel *)struct dictionary:(__CFDictionary *)dictionary
{
  v9 = *MEMORY[0x1E69E9840];
  if (struct && dictionary)
  {
    bzero(struct, 0xA50uLL);
    struct->var1 = [_ANEVirtualClient dictionaryGetInt64ForKey:dictionary key:@"success"];
    struct->var20 = [_ANEVirtualClient dictionaryGetUInt64ForKey:dictionary key:@"modelAttributeLength"];
    struct->var47 = [_ANEVirtualClient dictionaryGetUInt64ForKey:dictionary key:@"errorLength"];
    struct->var46 = [_ANEVirtualClient dictionaryGetInt64ForKey:dictionary key:@"errorCode"];
    struct->var25 = [_ANEVirtualClient dictionaryGetUInt64ForKey:dictionary key:@"state"];
    struct->var15 = [_ANEVirtualClient dictionaryGetUInt64ForKey:dictionary key:@"programHandle"];
    struct->var16 = [_ANEVirtualClient dictionaryGetUInt64ForKey:dictionary key:@"intermediateBufferHandle"];
    struct->var17 = [_ANEVirtualClient dictionaryGetInt8ForKey:dictionary key:@"queueDepth"];
    struct->var49 = [_ANEVirtualClient dictionaryGetUInt64ForKey:dictionary key:@"hwExecutionTime"];
    struct->var51 = [_ANEVirtualClient dictionaryGetUInt64ForKey:dictionary key:@"performanceStatsLength"];
  }

  else
  {
    v7 = gLogger;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      +[_ANEVirtualClient copyDictionaryDataToStruct:dictionary:];
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

+ (id)getCodeSigningIdentity
{
  v13 = *MEMORY[0x1E69E9840];
  task_info_outCnt = 8;
  if (task_info(*MEMORY[0x1E69E9A60], 0xFu, task_info_out, &task_info_outCnt))
  {
    v3 = gLogger;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      +[_ANEVirtualClient getCodeSigningIdentity];
    }

    v4 = 0;
  }

  else
  {
    v12[0] = *task_info_out;
    v12[1] = v11;
    v5 = [_ANEModelToken codeSigningIDFor:v12 processIdentifier:getpid()];
    v4 = v5;
    if (v5)
    {
      v3 = v5;
      v4 = v3;
    }

    else
    {
      v6 = gLogger;
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        +[_ANEVirtualClient getCodeSigningIdentity];
      }

      v3 = 0;
    }
  }

  v7 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (BOOL)setCodeSigningIdentity:(__CFDictionary *)identity
{
  v4 = +[_ANEVirtualClient getCodeSigningIdentity];
  if (v4)
  {
    if (os_log_type_enabled(gLogger, OS_LOG_TYPE_DEBUG))
    {
      +[_ANEVirtualClient setCodeSigningIdentity:];
    }

    CFDictionarySetValue(identity, @"csIdentity", v4);
  }

  return v4 != 0;
}

- (__CFDictionary)callIOUserClientWithDictionary:(unsigned int)dictionary inDictionary:(__CFDictionary *)inDictionary error:(id *)error
{
  v26 = *MEMORY[0x1E69E9840];
  valuePtr = dictionary;
  if (!inDictionary)
  {
LABEL_15:
    error = 0;
    goto LABEL_24;
  }

  v9 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
  CFDictionarySetValue(inDictionary, @"command", v9);
  CFRelease(v9);
  v10 = IOCFSerialize(inDictionary, 0);
  if (!v10)
  {
    v17 = gLogger;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualClient callIOUserClientWithDictionary:inDictionary:error:];
    }

    goto LABEL_15;
  }

  v24 = 4096;
  v11 = operator new[](0x1000uLL, MEMORY[0x1E69E5398]);
  if (!v11)
  {
    if (os_log_type_enabled(gLogger, OS_LOG_TYPE_ERROR))
    {
      [_ANEVirtualClient callIOUserClientWithDictionary:inDictionary:error:];
    }

    goto LABEL_15;
  }

  outputStruct = v11;
  BytePtr = CFDataGetBytePtr(v10);
  Length = CFDataGetLength(v10);
  v15 = IOConnectCallMethod([(_ANEVirtualClient *)self connect], 0x10u, 0, 0, BytePtr, Length, 0, 0, outputStruct, &v24);
  CFRelease(v10);
  if (v15)
  {
    if (error)
    {
      if (v15 == -536870160 || v15 == -536870911)
      {
        v16 = NSStringFromSelector(a2);
        *error = [_ANEErrors fileNotFoundErrorForMethod:v16];
      }

      error = 0;
    }
  }

  else
  {
    v18 = *outputStruct;
    errorString = 0;
    error = IOCFUnserializeBinary(outputStruct + 8, v18, 0, 0, &errorString);
    v19 = errorString;
    if (error && errorString)
    {
      v20 = gLogger;
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        [_ANEVirtualClient callIOUserClientWithDictionary:inDictionary:error:];
      }

      v19 = errorString;
    }

    if (v19)
    {
      CFRelease(v19);
    }
  }

  MEMORY[0x1B26F3360](outputStruct, 0x1000C4077774924);
LABEL_24:
  v21 = *MEMORY[0x1E69E9840];
  return error;
}

- (void)checkKernReturnValue:(int)value selector:(unsigned int)selector outParams:(VirtANEModel *)params
{
  v17 = *MEMORY[0x1E69E9840];
  if (value)
  {
    if (params)
    {
      params->var1 = 0;
    }

    v8 = gLogger;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = NSStringFromSelector(a2);
      v11 = 138412802;
      v12 = v9;
      v13 = 1024;
      selectorCopy = selector;
      v15 = 1024;
      valueCopy = value;
      _os_log_error_impl(&dword_1AD246000, v8, OS_LOG_TYPE_ERROR, "%@: Failed to call method %d with error %d", &v11, 0x18u);
    }
  }

  else
  {
    v8 = gLogger;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualClient checkKernReturnValue:selector:outParams:];
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

+ (BOOL)updateError:(__IOSurface *)error errorLength:(unint64_t)length error:(id *)a5
{
  v12 = *MEMORY[0x1E69E9840];
  if (a5)
  {
    v7 = [_ANEVirtualClient getObjectFromIOSurface:error classType:objc_opt_class() length:length];
    v8 = NSStringFromSelector(a2);
    if (v7)
    {
      [_ANEErrors virtualizationHostError:v8 error:v7];
    }

    else
    {
      [_ANEErrors virtualizationHostError:v8];
    }
    *a5 = ;
  }

  else
  {
    v9 = gLogger;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      +[_ANEVirtualClient updateError:errorLength:error:];
    }
  }

  result = a5 != 0;
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

+ (BOOL)updateError:(__IOSurface *)error errorLength:(unint64_t)length errorCode:(int64_t)code error:(id *)a6
{
  v28[1] = *MEMORY[0x1E69E9840];
  if (!error)
  {
    v12 = gLogger;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      +[_ANEVirtualClient updateError:errorLength:errorCode:error:];
    }

    goto LABEL_17;
  }

  if (!length)
  {
    v12 = gLogger;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      +[_ANEVirtualClient updateError:errorLength:errorCode:error:];
    }

    goto LABEL_17;
  }

  if (!a6)
  {
    v12 = gLogger;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      +[_ANEVirtualClient updateError:errorLength:errorCode:error:];
    }

    goto LABEL_17;
  }

  IOSurfaceLock(error, 0, 0);
  BaseAddress = IOSurfaceGetBaseAddress(error);
  if (!BaseAddress)
  {
    IOSurfaceUnlock(error, 0, 0);
    v12 = gLogger;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      +[_ANEVirtualClient updateError:errorLength:errorCode:error:];
    }

LABEL_17:
    v18 = 0;
    goto LABEL_18;
  }

  v12 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:BaseAddress length:length];
  v13 = MEMORY[0x1E695DFD8];
  v28[0] = objc_opt_class();
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:1];
  v24 = [v13 setWithArray:v14];

  v25 = 0;
  v15 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:v12 error:&v25];
  v16 = v25;
  if (v16)
  {
    IOSurfaceUnlock(error, 0, 0);
    v17 = gLogger;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      +[_ANEVirtualClient updateError:errorLength:errorCode:error:];
    }

    v18 = 0;
  }

  else
  {
    v17 = [v15 decodeObjectOfClasses:v24 forKey:*MEMORY[0x1E696A508]];
    IOSurfaceUnlock(error, 0, 0);
    v18 = v17 != 0;
    if (v17)
    {
      v21 = MEMORY[0x1E696ABC0];
      v22 = +[_ANEStrings errorDomainVirtIO];
      v26 = *MEMORY[0x1E696A578];
      v27 = v17;
      v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
      *a6 = [v21 errorWithDomain:v22 code:code userInfo:v23];
    }

    else
    {
      v22 = gLogger;
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        +[_ANEVirtualClient updateError:errorLength:errorCode:error:];
      }
    }
  }

LABEL_18:
  v19 = *MEMORY[0x1E69E9840];
  return v18;
}

- (BOOL)updateError:(VMData *)error error:(id *)a4
{
  v33[1] = *MEMORY[0x1E69E9840];
  if (a4)
  {
    v4 = error->var18.var47 == 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = v4;
  if (!v4)
  {
    IOSurfaceLock(error->var9, 0, 0);
    BaseAddress = IOSurfaceGetBaseAddress(error->var9);
    if (BaseAddress)
    {
      v26 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:BaseAddress length:error->var18.var47];
      v10 = MEMORY[0x1E695DFD8];
      v31 = objc_opt_class();
      v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v31 count:1];
      v12 = [v10 setWithArray:v11];

      v28 = 0;
      v13 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:v26 error:&v28];
      v14 = v28;
      if (v14)
      {
        v15 = gLogger;
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          NSStringFromSelector(a2);
          objc_claimAutoreleasedReturnValue();
          [_ANEVirtualClient compileModel:options:qos:error:];
        }
      }

      v16 = [v13 decodeObjectOfClasses:v12 forKey:{*MEMORY[0x1E696A508], v26}];
      IOSurfaceUnlock(error->var9, 0, 0);
      v17 = MEMORY[0x1E696ABC0];
      v18 = +[_ANEStrings errorDomainVirtIO];
      var46 = error->var18.var46;
      v29 = *MEMORY[0x1E696A578];
      v30 = v16;
      v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
      *a4 = [v17 errorWithDomain:v18 code:var46 userInfo:v20];
    }

    else
    {
      v21 = gLogger;
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        [_ANEVirtualClient updateError:error:];
      }

      v22 = MEMORY[0x1E696ABC0];
      v27 = +[_ANEStrings errorDomainVirtIO];
      v23 = error->var18.var46;
      v32 = *MEMORY[0x1E696A578];
      v33[0] = @"Failed with NULL databaseAddress";
      v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:&v32 count:1];
      *a4 = [v22 errorWithDomain:v27 code:v23 userInfo:v12];
    }
  }

  v24 = *MEMORY[0x1E69E9840];
  return v5;
}

+ (id)updatePerformanceStats:(__IOSurface *)stats performanceStatsLength:(unint64_t)length perfStatsRawIOSurfaceRef:(__IOSurface *)ref performanceStatsRawLength:(unint64_t)rawLength hwExecutionTime:(unint64_t)time
{
  v25 = *MEMORY[0x1E69E9840];
  if (!(time | length))
  {
    v19 = gLogger;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      +[_ANEVirtualClient updatePerformanceStats:performanceStatsLength:perfStatsRawIOSurfaceRef:performanceStatsRawLength:hwExecutionTime:];
    }

    goto LABEL_13;
  }

  if (!stats)
  {
    v19 = gLogger;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      +[_ANEVirtualClient updatePerformanceStats:performanceStatsLength:perfStatsRawIOSurfaceRef:performanceStatsRawLength:hwExecutionTime:];
    }

LABEL_13:

LABEL_20:
    v18 = 0;
    goto LABEL_30;
  }

  IOSurfaceLock(stats, 0, 0);
  BaseAddress = IOSurfaceGetBaseAddress(stats);
  if (!BaseAddress)
  {
    v20 = gLogger;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      +[_ANEVirtualClient updatePerformanceStats:performanceStatsLength:perfStatsRawIOSurfaceRef:performanceStatsRawLength:hwExecutionTime:];
    }

    IOSurfaceUnlock(stats, 0, 0);
    goto LABEL_20;
  }

  v14 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:BaseAddress length:length];
  if (!v14)
  {
    v21 = gLogger;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      +[_ANEVirtualClient updatePerformanceStats:performanceStatsLength:perfStatsRawIOSurfaceRef:performanceStatsRawLength:hwExecutionTime:];
    }

    IOSurfaceUnlock(stats, 0, 0);
    v18 = 0;
    goto LABEL_29;
  }

  IOSurfaceUnlock(stats, 0, 0);
  v15 = 0;
  if (!ref || !rawLength)
  {
    goto LABEL_10;
  }

  IOSurfaceLock(ref, 0, 0);
  v16 = IOSurfaceGetBaseAddress(ref);
  if (!v16)
  {
    v22 = gLogger;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      +[_ANEVirtualClient updatePerformanceStats:performanceStatsLength:perfStatsRawIOSurfaceRef:performanceStatsRawLength:hwExecutionTime:];
    }

    goto LABEL_28;
  }

  v17 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v16 length:rawLength];
  if (!v17)
  {
    v22 = gLogger;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      +[_ANEVirtualClient updatePerformanceStats:performanceStatsLength:perfStatsRawIOSurfaceRef:performanceStatsRawLength:hwExecutionTime:];
    }

LABEL_28:

    IOSurfaceUnlock(ref, 0, 0);
    v18 = 0;
    goto LABEL_29;
  }

  v15 = v17;
  IOSurfaceUnlock(ref, 0, 0);
LABEL_10:
  v18 = [_ANEPerformanceStats statsWithReconstructed:v14 hardwareExecutionNS:time aneStatsRawData:v15];

LABEL_29:
LABEL_30:
  v23 = *MEMORY[0x1E69E9840];

  return v18;
}

- (id)updatePerformanceStats:(VMData *)stats
{
  v10 = *MEMORY[0x1E69E9840];
  if (stats->var18.var51 || stats->var18.var49)
  {
    IOSurfaceLock(stats->var10, 0, 0);
    v5 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:IOSurfaceGetBaseAddress(stats->var10) length:stats->var18.var51];
    IOSurfaceUnlock(stats->var10, 0, 0);
    if (v5)
    {
      v6 = [_ANEPerformanceStats statsWithReconstructed:v5 hardwareExecutionNS:stats->var18.var49 aneStatsRawData:0];
    }

    else
    {
      v7 = gLogger;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        [_ANEVirtualClient updatePerformanceStats:];
      }

      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v8 = *MEMORY[0x1E69E9840];

  return v6;
}

- (void)releaseIOSurfaces:(VMData *)surfaces
{
  if (surfaces->var0)
  {
    CFRelease(surfaces->var0);
    surfaces->var0 = 0;
  }

  var1 = surfaces->var1;
  if (var1)
  {
    CFRelease(var1);
    surfaces->var1 = 0;
  }

  var2 = surfaces->var2;
  if (var2)
  {
    CFRelease(var2);
    surfaces->var2 = 0;
  }

  var3 = surfaces->var3;
  if (var3)
  {
    CFRelease(var3);
    surfaces->var3 = 0;
  }

  var4 = surfaces->var4;
  if (var4)
  {
    CFRelease(var4);
    surfaces->var4 = 0;
  }

  var5 = surfaces->var5;
  if (var5)
  {
    CFRelease(var5);
    surfaces->var5 = 0;
  }

  var6 = surfaces->var6;
  if (var6)
  {
    CFRelease(var6);
    surfaces->var6 = 0;
  }

  var7 = surfaces->var7;
  if (var7)
  {
    CFRelease(var7);
    surfaces->var7 = 0;
  }

  var8 = surfaces->var8;
  if (var8)
  {
    CFRelease(var8);
    surfaces->var8 = 0;
  }

  var9 = surfaces->var9;
  if (var9)
  {
    CFRelease(var9);
    surfaces->var9 = 0;
  }

  var10 = surfaces->var10;
  if (var10)
  {
    CFRelease(var10);
    surfaces->var10 = 0;
  }

  var11 = surfaces->var11;
  if (var11)
  {
    CFRelease(var11);
    surfaces->var11 = 0;
  }

  var12 = surfaces->var12;
  if (var12)
  {
    CFRelease(var12);
    surfaces->var12 = 0;
  }

  var13 = surfaces->var13;
  if (var13)
  {
    CFRelease(var13);
    surfaces->var13 = 0;
  }

  var14 = surfaces->var14;
  if (var14)
  {
    CFRelease(var14);
    surfaces->var14 = 0;
  }

  var20 = surfaces->var20;
  if (var20)
  {
    CFRelease(var20);
    surfaces->var20 = 0;
  }
}

- (__IOSurface)copyDictionaryToIOSurface:(id)surface copiedDataSize:(unint64_t *)size createdIOSID:(unsigned int *)d
{
  v17 = *MEMORY[0x1E69E9840];
  surfaceCopy = surface;
  if (!surfaceCopy)
  {
    v11 = gLogger;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualClient copyDictionaryToIOSurface:copiedDataSize:createdIOSID:];
    }

    goto LABEL_18;
  }

  if (!size)
  {
    v11 = gLogger;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualClient copyDictionaryToIOSurface:copiedDataSize:createdIOSID:];
    }

    goto LABEL_18;
  }

  if (!d)
  {
    v11 = gLogger;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualClient copyDictionaryToIOSurface:copiedDataSize:createdIOSID:];
    }

    goto LABEL_18;
  }

  v10 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:surfaceCopy requiringSecureCoding:1 error:0];
  v11 = v10;
  if (!v10)
  {
    v14 = gLogger;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualClient copyDictionaryToIOSurface:copiedDataSize:createdIOSID:];
    }

    goto LABEL_17;
  }

  v12 = [v10 length];
  *size = v12;
  if (!v12)
  {
    v14 = gLogger;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualClient copyDictionaryToIOSurface:copiedDataSize:createdIOSID:];
    }

LABEL_17:

LABEL_18:
    v13 = 0;
    goto LABEL_19;
  }

  v13 = [(_ANEVirtualClient *)self copyToIOSurface:v11 length:v12 ioSID:d];
LABEL_19:

  v15 = *MEMORY[0x1E69E9840];
  return v13;
}

+ (BOOL)shouldUsePrecompiledPath:(id)path options:(id)options shouldUseChunking:(BOOL *)chunking chunkingThreshold:(unint64_t)threshold
{
  v43 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  optionsCopy = options;
  v12 = optionsCopy;
  if (pathCopy)
  {
    if (optionsCopy)
    {
      if (chunking)
      {
        v36 = 0;
        defaultManager = [MEMORY[0x1E696AC08] defaultManager];
        modelURL = [pathCopy modelURL];
        path = [modelURL path];
        v16 = [defaultManager fileExistsAtPath:path isDirectory:&v36];

        if (v16)
        {
          if (v36 == 1)
          {
            modelURL4 = gLogger;
            if (os_log_type_enabled(modelURL4, OS_LOG_TYPE_DEBUG))
            {
              NSStringFromSelector(a2);
              objc_claimAutoreleasedReturnValue();
              +[_ANEVirtualClient shouldUsePrecompiledPath:options:shouldUseChunking:chunkingThreshold:];
            }
          }

          else
          {
            *chunking = 0;
            defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
            modelURL2 = [pathCopy modelURL];
            path2 = [modelURL2 path];
            v35 = 0;
            v23 = [defaultManager2 attributesOfItemAtPath:path2 error:&v35];
            modelURL4 = v35;

            if (modelURL4)
            {
              v24 = gLogger;
              if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
              {
                v32 = NSStringFromSelector(a2);
                modelURL3 = [pathCopy modelURL];
                path3 = [modelURL3 path];
                *buf = 138412802;
                v38 = v32;
                v39 = 2112;
                v40 = path3;
                v41 = 2112;
                v42 = modelURL4;
                _os_log_error_impl(&dword_1AD246000, v24, OS_LOG_TYPE_ERROR, "%@: FAILED to get attributes for file at path=%@ with error=%@", buf, 0x20u);
              }
            }

            else
            {
              v27 = [v23 objectForKeyedSubscript:*MEMORY[0x1E696A3B8]];
              if ([v27 unsignedLongLongValue] > threshold)
              {
                *chunking = 1;
              }

              v28 = [v12 objectForKeyedSubscript:kANEFModelTypeKey[0]];
              v29 = [v28 isEqualToString:kANEFModelPreCompiledValue[0]];

              if (v29)
              {
                modelURL4 = [pathCopy modelURL];
                path4 = [modelURL4 path];
                v31 = +[_ANEStrings hwxExtension];
                v19 = [path4 hasSuffix:v31];

                goto LABEL_24;
              }

              modelURL4 = gLogger;
              if (os_log_type_enabled(modelURL4, OS_LOG_TYPE_ERROR))
              {
                NSStringFromSelector(a2);
                objc_claimAutoreleasedReturnValue();
                +[_ANEVirtualClient shouldUsePrecompiledPath:options:shouldUseChunking:chunkingThreshold:];
              }
            }
          }
        }

        else
        {
          modelURL4 = gLogger;
          if (os_log_type_enabled(modelURL4, OS_LOG_TYPE_ERROR))
          {
            NSStringFromSelector(a2);
            objc_claimAutoreleasedReturnValue();
            +[_ANEVirtualClient shouldUsePrecompiledPath:options:shouldUseChunking:chunkingThreshold:];
          }
        }

        v19 = 0;
LABEL_24:

        goto LABEL_25;
      }

      v18 = gLogger;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        +[_ANEVirtualClient shouldUsePrecompiledPath:options:shouldUseChunking:chunkingThreshold:];
      }
    }

    else
    {
      v18 = gLogger;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        +[_ANEVirtualClient shouldUsePrecompiledPath:options:shouldUseChunking:chunkingThreshold:];
      }
    }
  }

  else
  {
    v18 = gLogger;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      +[_ANEVirtualClient shouldUsePrecompiledPath:options:shouldUseChunking:chunkingThreshold:];
    }
  }

  v19 = 0;
LABEL_25:

  v25 = *MEMORY[0x1E69E9840];
  return v19;
}

- (void)initWithSingletonAccess
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_19();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)compileModel:options:qos:error:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_13(&dword_1AD246000, v3, v4, "%@:ANEVirtualClient start\n", v5);
}

- (void)compileModel:options:qos:error:.cold.2()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_19();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)compileModel:options:qos:error:.cold.3()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_13(&dword_1AD246000, v3, v4, "%@: ANEVirtualClient compileModel dictionary call succeeded", v5);
}

- (void)compileModel:options:qos:error:.cold.5()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_8(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_11_0(&dword_1AD246000, "%@: ANEVirtualClient CompileModel succeeded for MODEL: %@ \n", v4, v5);
}

- (void)compileModel:options:qos:error:.cold.6()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_8(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_11_0(&dword_1AD246000, "%@: ANEVirtualClient unarchive error %@ \n", v4, v5);
}

+ (void)printStruct:(int *)a1 .cold.1(int *a1)
{
  v58 = *MEMORY[0x1E69E9840];
  v7 = *a1;
  v8 = *(a1 + 1);
  v9 = a1[4];
  v10 = a1[5];
  v11 = a1[6];
  v24 = a1[219];
  v26 = *(a1 + 111);
  v28 = a1[225];
  v29 = *(a1 + 113);
  v30 = a1[228];
  v31 = *(a1 + 115);
  v32 = a1[488];
  v33 = *(a1 + 245);
  v34 = *(a1 + 246);
  v36 = a1[623];
  v38 = a1[625];
  v40 = a1[627];
  v12 = a1[7];
  v41 = *(a1 + 314);
  v42 = *(a1 + 315);
  v44 = a1[633];
  v45 = *(a1 + 317);
  v46 = a1[636];
  v47 = *(a1 + 319);
  v48 = a1[640];
  v49 = *(a1 + 321);
  v50 = a1[644];
  v51 = *(a1 + 323);
  v52 = a1[648];
  v53 = *(a1 + 325);
  v54 = a1[652];
  v55 = *(a1 + 327);
  v56 = a1[656];
  v57 = *(a1 + 329);
  v13 = *(a1 + 4);
  v14 = *(a1 + 5);
  v15 = *(a1 + 6);
  v16 = *(a1 + 104);
  v17 = *(a1 + 105);
  v18 = *(a1 + 106);
  v19 = *(a1 + 856);
  v20 = *(a1 + 857);
  v21 = a1[215];
  v22 = *(a1 + 108);
  v23 = a1[218];
  v25 = a1[220];
  v27 = a1[224];
  v35 = a1[622];
  v37 = a1[624];
  v39 = a1[626];
  v43 = a1[632];
  OUTLINED_FUNCTION_19();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x18Cu);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)transferFileToHostWithPath:withChunkSize:withUUID:withModelInputPath:overWriteFileNameWith:.cold.1()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_8(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_12_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

- (void)transferFileToHostWithPath:withChunkSize:withUUID:withModelInputPath:overWriteFileNameWith:.cold.2()
{
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_1_7(v1, v2, v3, 5.7781e-34);
  *(v4 + 24) = 256;
  OUTLINED_FUNCTION_12_0();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x1Cu);
}

- (void)transferFileToHostWithPath:withChunkSize:withUUID:withModelInputPath:overWriteFileNameWith:.cold.3()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_8(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_12_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

- (void)transferFileToHostWithPath:withChunkSize:withUUID:withModelInputPath:overWriteFileNameWith:.cold.4()
{
  OUTLINED_FUNCTION_6_1();
  v4 = OUTLINED_FUNCTION_1_7(v1, v2, v3, 5.7781e-34);
  OUTLINED_FUNCTION_27(v4, v5);
  OUTLINED_FUNCTION_12_0();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x1Cu);
}

- (void)transferFileToHostWithPath:withChunkSize:withUUID:withModelInputPath:overWriteFileNameWith:.cold.5()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_2_0(&dword_1AD246000, v3, v4, "%@: ERROR failed to transfer ANE model file to host! Could not read modelInputPath into NSData object", v5);
}

- (void)transferFileToHostWithPath:withChunkSize:withUUID:withModelInputPath:overWriteFileNameWith:.cold.6()
{
  OUTLINED_FUNCTION_6_1();
  v4 = OUTLINED_FUNCTION_1_7(v1, v2, v3, 5.7781e-34);
  OUTLINED_FUNCTION_26(v4, v5);
  OUTLINED_FUNCTION_12_0();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x1Cu);
}

- (void)transferFileToHostWithPath:withChunkSize:withUUID:withModelInputPath:overWriteFileNameWith:.cold.7()
{
  OUTLINED_FUNCTION_6_1();
  v4 = OUTLINED_FUNCTION_1_7(v1, v2, v3, 5.7781e-34);
  OUTLINED_FUNCTION_26(v4, v5);
  OUTLINED_FUNCTION_12_0();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x1Cu);
}

- (void)transferFileToHostWithPath:withChunkSize:withUUID:withModelInputPath:overWriteFileNameWith:.cold.8()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_2_0(&dword_1AD246000, v3, v4, "%@: ERROR failed to transfer file to host! Filetype is kVirtANEFileTypeBin but no uuidString provided", v5);
}

- (void)transferFileToHostWithPath:withChunkSize:withUUID:withModelInputPath:overWriteFileNameWith:.cold.9()
{
  OUTLINED_FUNCTION_6_1();
  v4 = OUTLINED_FUNCTION_1_7(v1, v2, v3, 5.7781e-34);
  OUTLINED_FUNCTION_27(v4, v5);
  OUTLINED_FUNCTION_12_0();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x1Cu);
}

- (void)transferFileToHostWithPath:withChunkSize:withUUID:withModelInputPath:overWriteFileNameWith:.cold.10()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_2_0(&dword_1AD246000, v3, v4, "%@: ERROR failed to transfer ANE model file to host! Could not get csIdentity", v5);
}

- (void)transferFileToHostWithPath:withChunkSize:withUUID:withModelInputPath:overWriteFileNameWith:.cold.11()
{
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_1_7(v1, v2, v3, 5.7781e-34);
  *(v4 + 24) = 256;
  OUTLINED_FUNCTION_12_0();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x1Cu);
}

- (void)transferFileToHostWithPath:withChunkSize:withUUID:withModelInputPath:overWriteFileNameWith:.cold.12()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_8(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_12_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

- (void)transferFileToHostWithPath:withChunkSize:withUUID:withModelInputPath:overWriteFileNameWith:.cold.13()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_8(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_12_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

- (void)transferFileToHostWithPath:withChunkSize:withUUID:withModelInputPath:overWriteFileNameWith:.cold.14()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_2_0(&dword_1AD246000, v3, v4, "%@: ERROR : BAD_ARGUMENT : passed in file path is nil or empty!", v5);
}

- (void)transferFileToHostWithPath:withChunkSize:withUUID:withModelInputPath:overWriteFileNameWith:.cold.15()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_2_0(&dword_1AD246000, v3, v4, "%@: ERROR : BAD_ARGUMENT : chunkSize is 0!", v5);
}

- (void)loadModel:options:qos:error:.cold.1()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_8(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_11_0(&dword_1AD246000, "%@: BEGIN loadModel model=%@", v4, v5);
}

- (void)loadModel:options:qos:error:.cold.2()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_2_0(&dword_1AD246000, v3, v4, "%@: loadModel failed, unable to transfer model files to host", v5);
}

- (void)loadModel:options:qos:error:.cold.3()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_8(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_11_0(&dword_1AD246000, "%@: modelCacheURLIdentifierCFStringRef : %@", v4, v5);
}

- (void)loadModel:options:qos:error:.cold.4()
{
  OUTLINED_FUNCTION_1_1();
  v2 = *v1;
  v3 = v1[1];
  *v4 = 138412802;
  *(v4 + 4) = v5;
  *(v4 + 12) = 1024;
  *(v4 + 14) = v2;
  *(v4 + 18) = 1024;
  *(v4 + 20) = v3;
  OUTLINED_FUNCTION_14();
  _os_log_debug_impl(v6, v7, v8, v9, v10, 0x18u);
}

- (void)loadModel:options:qos:error:.cold.5()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_13(&dword_1AD246000, v3, v4, "%@: ANEVirtualClient loadModel dictionary call succeeded", v5);
}

- (void)loadModel:options:qos:error:.cold.6()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_8(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_11_0(&dword_1AD246000, "%@: ANEVirtualClient loadModel dictionary Model Cache URL from Host %@", v4, v5);
}

- (void)loadModel:options:qos:error:.cold.7()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_8(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_11_0(&dword_1AD246000, "%@: ANEVirtualClient LoadModel success MODEL: %@ \n", v4, v5);
}

- (void)loadModel:options:qos:error:.cold.8()
{
  OUTLINED_FUNCTION_1_1();
  v2 = *(v1 + 4112);
  OUTLINED_FUNCTION_3_3(v3, 5.778e-34, v1, v4);
  OUTLINED_FUNCTION_11_0(&dword_1AD246000, "%@: ANEVirtualClient LoadModel no success %lld.\n", v5, v6);
}

- (void)loadModel:options:qos:error:.cold.9()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_8(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_11_0(&dword_1AD246000, "%@: END loadModel updatedModel=%@", v4, v5);
}

- (void)loadModel:options:qos:error:.cold.11()
{
  OUTLINED_FUNCTION_6_1();
  v3 = OUTLINED_FUNCTION_5_3(v1, v2, 5.7781e-34);
  OUTLINED_FUNCTION_22(v3, v4, v5);
  OUTLINED_FUNCTION_12_0();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x18u);
}

- (void)loadModel:options:qos:error:.cold.12()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_2_0(&dword_1AD246000, v3, v4, "%@: model is nil!", v5);
}

- (void)loadModelNewInstance:options:modelInstParams:qos:error:.cold.1()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_8(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_11_0(&dword_1AD246000, "%@: BEGIN loadModelNewInstance model=%@", v4, v5);
}

- (void)loadModelNewInstance:options:modelInstParams:qos:error:.cold.2()
{
  OUTLINED_FUNCTION_6_1();
  v4 = OUTLINED_FUNCTION_1_7(v1, v2, v3, 5.7781e-34);
  OUTLINED_FUNCTION_26(v4, v5);
  OUTLINED_FUNCTION_12_0();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x1Cu);
}

- (void)loadModelNewInstance:options:modelInstParams:qos:error:.cold.3()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_2_0(&dword_1AD246000, v3, v4, "%@: ERROR failed to transfer adapter metadata to host, unable to write modelCacheURLIdentifierData to IOSurface!", v5);
}

- (void)loadModelNewInstance:options:modelInstParams:qos:error:.cold.4()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_2_0(&dword_1AD246000, v3, v4, "%@: ERROR failed to transfer adapter metadata to host, unable to write options data to IOSurface!", v5);
}

- (void)loadModelNewInstance:options:modelInstParams:qos:error:.cold.5()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_2_0(&dword_1AD246000, v3, v4, "%@: ERROR failed to transfer adapter metadata to host, unable to write modelInstParamsIOSurfaceRef data to IOSurface!", v5);
}

- (void)loadModelNewInstance:options:modelInstParams:qos:error:.cold.7()
{
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_5_3(v1, v2, 5.778e-34);
  *(v3 + 14) = v4;
  OUTLINED_FUNCTION_12_0();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x12u);
}

- (void)loadModelNewInstance:options:modelInstParams:qos:error:.cold.8()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_2_0(&dword_1AD246000, v3, v4, "%@: ERROR failed to extract modelAttributes dictionary!", v5);
}

- (void)loadModelNewInstance:options:modelInstParams:qos:error:.cold.11()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_2_0(&dword_1AD246000, v3, v4, "%@: ERROR failed to transfer adapter metadata to host, unable to serialize modelInstParams to NSData!", v5);
}

- (void)loadModelNewInstance:options:modelInstParams:qos:error:.cold.12()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_2_0(&dword_1AD246000, v3, v4, "%@: ERROR failed to transfer adapter metadata to host, unable to generate modelCacheURLIdentifierData object from cacheURLIdentifier!", v5);
}

- (void)loadModelNewInstance:options:modelInstParams:qos:error:.cold.13()
{
  OUTLINED_FUNCTION_6_1();
  v4 = OUTLINED_FUNCTION_1_7(v1, v2, v3, 5.7781e-34);
  OUTLINED_FUNCTION_26(v4, v5);
  OUTLINED_FUNCTION_12_0();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x1Cu);
}

- (void)loadModelNewInstance:options:modelInstParams:qos:error:.cold.14()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_2_0(&dword_1AD246000, v3, v4, "%@: ERROR loadModelNewInstance failed, could not UUID for model files!", v5);
}

- (void)loadModelNewInstance:options:modelInstParams:qos:error:.cold.15()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_2_0(&dword_1AD246000, v3, v4, "%@: ERROR loadModelNewInstance failed, model cacheURLIdentifier is nil!", v5);
}

- (void)loadModelNewInstance:options:modelInstParams:qos:error:.cold.16()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v1, v2, 5.778e-34);
  *(v3 + 12) = 2112;
  *(v3 + 14) = 0;
  _os_log_error_impl(&dword_1AD246000, v4, OS_LOG_TYPE_ERROR, "%@: modelIdentifier(%@) : missing base model identifier", v5, 0x16u);
}

- (void)loadModelNewInstance:options:modelInstParams:qos:error:.cold.17()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_2_0(&dword_1AD246000, v3, v4, "%@: modelInstParams is nil!", v5);
}

- (void)loadModelNewInstanceLegacy:options:modelInstParams:qos:error:.cold.1()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_19();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)loadModelNewInstanceLegacy:options:modelInstParams:qos:error:.cold.7()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_2_0(&dword_1AD246000, v3, v4, "%@:ANEVirtualClient loadModelNewInstance API Not supported!!\n", v5);
}

- (void)unloadModel:options:qos:error:.cold.1()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_19();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)unloadModel:options:qos:error:.cold.3()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_13(&dword_1AD246000, v3, v4, "%@: ANEVirtualClient unloadModel dictionary call succeeded", v5);
}

- (void)unloadModel:options:qos:error:.cold.4()
{
  OUTLINED_FUNCTION_1_1();
  v2 = *v1;
  OUTLINED_FUNCTION_3_3(v3, 5.778e-34, v1, v4);
  OUTLINED_FUNCTION_11_0(&dword_1AD246000, "%@: ANEVirtualClient unloadModel success=%lld", v5, v6);
}

- (void)unloadModel:options:qos:error:.cold.6()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_19();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)evaluateWithModel:options:request:qos:error:.cold.2()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_2_0(&dword_1AD246000, v3, v4, "%@: Empty dispatch queue\n", v5);
}

- (void)doEvaluateWithModel:options:request:qos:completionEvent:error:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_2_0(&dword_1AD246000, v3, v4, "%@: ERROR optionsArchive length is 0", v5);
}

- (void)doEvaluateWithModel:options:request:qos:completionEvent:error:.cold.2()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_2_0(&dword_1AD246000, v3, v4, "%@: FAILED to get optionsArchive from options dictionary", v5);
}

- (void)doEvaluateWithModel:(void *)a1 options:request:qos:completionEvent:error:.cold.3(void *a1)
{
  v3 = OUTLINED_FUNCTION_25(a1);
  v4 = *v2;
  OUTLINED_FUNCTION_23(v3, 5.778e-34);
  *(v1 + 12) = 1024;
  *(v1 + 14) = v5;
  OUTLINED_FUNCTION_24();
  _os_log_debug_impl(v6, v7, v8, v9, v10, 0x12u);
}

- (void)doEvaluateWithModel:(void *)a1 options:request:qos:completionEvent:error:.cold.4(void *a1)
{
  v1 = OUTLINED_FUNCTION_30(a1);
  OUTLINED_FUNCTION_23(v1, 5.7779e-34);
  OUTLINED_FUNCTION_20();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)doEvaluateWithModel:(void *)a1 options:request:qos:completionEvent:error:.cold.5(void *a1)
{
  v1 = OUTLINED_FUNCTION_30(a1);
  OUTLINED_FUNCTION_23(v1, 5.7779e-34);
  OUTLINED_FUNCTION_20();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)doEvaluateWithModel:(void *)a1 options:request:qos:completionEvent:error:.cold.6(void *a1)
{
  v2 = OUTLINED_FUNCTION_30(a1);
  OUTLINED_FUNCTION_23(v2, 5.778e-34);
  *(v1 + 12) = 1024;
  *(v1 + 14) = 1;
  OUTLINED_FUNCTION_24();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x12u);
}

- (void)doEvaluateWithModel:(void *)a1 options:request:qos:completionEvent:error:.cold.7(void *a1)
{
  v3 = OUTLINED_FUNCTION_25(a1);
  v4 = *v2;
  OUTLINED_FUNCTION_23(v3, 5.778e-34);
  *(v1 + 12) = 2048;
  *(v1 + 14) = v5;
  OUTLINED_FUNCTION_24();
  _os_log_debug_impl(v6, v7, v8, v9, v10, 0x16u);
}

- (void)doEvaluateWithModel:(void *)a1 options:request:qos:completionEvent:error:.cold.8(void *a1)
{
  v1 = OUTLINED_FUNCTION_30(a1);
  OUTLINED_FUNCTION_23(v1, 5.7779e-34);
  OUTLINED_FUNCTION_20();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)doEvaluateWithModel:options:request:qos:completionEvent:error:.cold.9()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_8(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_12_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

- (void)doEvaluateWithModel:(void *)a1 options:request:qos:completionEvent:error:.cold.10(void *a1)
{
  v3 = OUTLINED_FUNCTION_25(a1);
  OUTLINED_FUNCTION_23(v3, 5.778e-34);
  *(v1 + 12) = 2112;
  *(v1 + 14) = v2;
  OUTLINED_FUNCTION_20();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

- (void)doEvaluateWithModel:options:request:qos:completionEvent:error:.cold.11()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_8(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_12_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

- (void)doEvaluateWithModel:options:request:qos:completionEvent:error:.cold.12()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_2_0(&dword_1AD246000, v3, v4, "%@: ERROR Failed to create perfStatsIOSurface", v5);
}

- (void)compiledModelExistsFor:.cold.3()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_13(&dword_1AD246000, v3, v4, "%@: ANEVirtualClient compiledModelExistsFor dictionary call succeeded", v5);
}

- (void)compiledModelExistsFor:.cold.4()
{
  OUTLINED_FUNCTION_1_1();
  v2 = *v1;
  OUTLINED_FUNCTION_3_3(v3, 5.778e-34, v1, v4);
  OUTLINED_FUNCTION_11_0(&dword_1AD246000, "%@: ANEVirtualClient compiledModelExistsFor success=%lld", v5, v6);
}

- (void)purgeCompiledModel:.cold.3()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_13(&dword_1AD246000, v3, v4, "%@: ANEVirtualClient purgeCompiledModel dictionary call succeeded", v5);
}

- (void)compiledModelExistsMatchingHash:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_13(&dword_1AD246000, v3, v4, "%@:ANEVirtualClient compiledModelExistsMatchingHash start\n", v5);
}

- (void)compiledModelExistsMatchingHash:.cold.2()
{
  OUTLINED_FUNCTION_1_1();
  v2 = *v1;
  OUTLINED_FUNCTION_3_3(v3, 5.778e-34, v1, v4);
  OUTLINED_FUNCTION_11_0(&dword_1AD246000, "%@: ANEVirtualClient compiledModelExistsMatchingHash dictionary success=%lld", v5, v6);
}

- (void)purgeCompiledModelMatchingHash:.cold.2()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_19();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)echo:.cold.2()
{
  OUTLINED_FUNCTION_1_1();
  v2 = *v1;
  OUTLINED_FUNCTION_3_3(v3, 5.778e-34, v1, v4);
  OUTLINED_FUNCTION_11_0(&dword_1AD246000, "%@: ANEVirtualClient echo dictionary success=%lld", v5, v6);
}

- (void)getDeviceInfo
{
  OUTLINED_FUNCTION_6_1();
  v3 = OUTLINED_FUNCTION_5_3(v1, v2, 5.7781e-34);
  OUTLINED_FUNCTION_22(v3, v4, v5);
  OUTLINED_FUNCTION_12_0();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x18u);
}

- (void)validateNetworkCreateMLIR:validation_params:.cold.1()
{
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_5_3(v1, v2, 5.778e-34);
  *(v3 + 14) = v4;
  OUTLINED_FUNCTION_12_0();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x12u);
}

- (void)validateNetworkCreateMLIR:validation_params:.cold.2()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_2_0(&dword_1AD246000, v3, v4, "%@: ERROR : Host reported success=0", v5);
}

- (void)validateNetworkCreateMLIR:validation_params:.cold.3()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_2_0(&dword_1AD246000, v3, v4, "%@: ERROR : validationResult data size is 0!", v5);
}

- (void)validateNetworkCreateMLIR:validation_params:.cold.4()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_2_0(&dword_1AD246000, v3, v4, "%@: ERROR : FAILED to create validation_result IOSurface", v5);
}

- (void)validateNetworkCreateMLIR:validation_params:.cold.5()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_2_0(&dword_1AD246000, v3, v4, "%@: ERROR : FAILED to copy input validation_params dictionary to IOSurface", v5);
}

- (void)validateNetworkCreate:uuid:function:directoryPath:scratchPadPath:milTextData:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)validateNetworkCreate:uuid:function:directoryPath:scratchPadPath:milTextData:.cold.2()
{
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_5_3(v1, v2, 5.778e-34);
  *(v3 + 14) = v4;
  OUTLINED_FUNCTION_12_0();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x12u);
}

- (void)validateNetworkCreate:uuid:function:directoryPath:scratchPadPath:milTextData:.cold.3()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_2_0(&dword_1AD246000, v3, v4, "%@: ANEVirtualClient validateNetworkCreate failed to create outValidationDictIOSurfaceRef", v5);
}

- (void)validateNetworkCreate:uuid:function:directoryPath:scratchPadPath:milTextData:.cold.4()
{
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_5_3(v1, v2, 5.778e-34);
  *(v3 + 14) = v4;
  OUTLINED_FUNCTION_12_0();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x12u);
}

- (void)exchangeBuildVersionInfo
{
  OUTLINED_FUNCTION_6_1();
  v3 = OUTLINED_FUNCTION_5_3(v1, v2, 5.7781e-34);
  OUTLINED_FUNCTION_22(v3, v4, v5);
  OUTLINED_FUNCTION_12_0();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x18u);
}

- (void)mapIOSurfacesWithModel:request:cacheInference:error:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_19();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)doMapIOSurfacesWithModel:request:cacheInference:error:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_19();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)doMapIOSurfacesWithModel:request:cacheInference:error:.cold.3()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_19();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)doMapIOSurfacesWithModel:request:cacheInference:error:.cold.4()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_19();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)doMapIOSurfacesWithModel:request:cacheInference:error:.cold.5()
{
  OUTLINED_FUNCTION_1_1();
  v2 = *v1;
  OUTLINED_FUNCTION_0_1(v3, 5.778e-34, v1, v4);
  OUTLINED_FUNCTION_14();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x12u);
}

- (void)doMapIOSurfacesWithModel:request:cacheInference:error:.cold.6()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_19();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)doMapIOSurfacesWithModel:request:cacheInference:error:.cold.7()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_2_0(&dword_1AD246000, v3, v4, "%@: ANEVirtualClient mapIOSurfacesWithModel _ioSPerformanceStats pointer null\n", v5);
}

- (void)sessionHintWithModel:hint:options:report:error:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_2_0(&dword_1AD246000, v3, v4, "%@: ERROR : FAILED to copy options dictionary to IOSurface", v5);
}

- (void)sessionHintWithModel:hint:options:report:error:.cold.2()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_2_0(&dword_1AD246000, v3, v4, "%@: ERROR : FAILED to create report IOSurface", v5);
}

- (void)sessionHintWithModel:hint:options:report:error:.cold.3()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_2_0(&dword_1AD246000, v3, v4, "%@: ERROR : FAILED to create error IOSurface", v5);
}

- (void)sessionHintWithModel:hint:options:report:error:.cold.5()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_2_0(&dword_1AD246000, v3, v4, "%@: ERROR : report from host has no data!", v5);
}

- (void)sessionHintWithModel:hint:options:report:error:.cold.6()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_2_0(&dword_1AD246000, v3, v4, "%@: ERROR : INVALID_MODEL : model.programHandle object is nil!", v5);
}

- (void)sessionHintWithModel:hint:options:report:error:.cold.7()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_2_0(&dword_1AD246000, v3, v4, "%@: ERROR : BAD_ARGUMENT : hint object is nil!", v5);
}

- (void)copyModel:options:vmData:.cold.1()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_8(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_11_0(&dword_1AD246000, "%@: ANEVirtualClient: hwx new filePath=%@", v4, v5);
}

- (void)copyModel:options:vmData:.cold.2()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v1, v2, 5.778e-34);
  *(v3 + 12) = 2112;
  *(v3 + 14) = &stru_1F224D6A0;
  OUTLINED_FUNCTION_15();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);
}

- (void)copyModel:options:vmData:.cold.3()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v1, v2, 5.778e-34);
  *(v3 + 12) = 2112;
  *(v3 + 14) = &stru_1F224D6A0;
  OUTLINED_FUNCTION_15();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);
}

- (void)copyModel:options:vmData:.cold.4()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_8(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_11_0(&dword_1AD246000, "%@: ANEVirtualClient: weightname=%@", v4, v5);
}

- (void)copyModel:options:vmData:.cold.5()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_13(&dword_1AD246000, v3, v4, "%@: ANEVirtualClient: weightname contained symlink", v5);
}

- (void)copyModel:options:vmData:.cold.6()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_2_0(&dword_1AD246000, v3, v4, "%@: VirtualANEModel struct empty.", v5);
}

- (void)copyFilesInDirectoryToIOSurfaces:ioSurfaceRefs:ioSurfaceSizes:fileNames:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)copyFilesInDirectoryToIOSurfaces:(uint64_t)a1 ioSurfaceRefs:(uint64_t)a2 ioSurfaceSizes:fileNames:.cold.2(uint64_t a1, uint64_t a2)
{
  *a1 = 136315394;
  *(a1 + 4) = "[_ANEVirtualClient copyFilesInDirectoryToIOSurfaces:ioSurfaceRefs:ioSurfaceSizes:fileNames:]";
  *(a1 + 12) = 2048;
  *(a1 + 14) = a2;
  OUTLINED_FUNCTION_15();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)copyFilesInDirectoryToIOSurfaces:ioSurfaceRefs:ioSurfaceSizes:fileNames:.cold.3()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)copyAllModelFiles:dictionary:ioSurfaceRefs:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_19();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)copyAllModelFiles:dictionary:ioSurfaceRefs:.cold.2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)copyAllModelFiles:dictionary:ioSurfaceRefs:.cold.3()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_19();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)copyAllModelFiles:dictionary:ioSurfaceRefs:.cold.4()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_19();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)copyAllModelFiles:dictionary:ioSurfaceRefs:.cold.5()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_19();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)copyAllModelFiles:dictionary:ioSurfaceRefs:.cold.6()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)copyAllModelFiles:(_BYTE *)a1 dictionary:(_BYTE *)a2 ioSurfaceRefs:.cold.7(_BYTE *a1, _BYTE *a2)
{
  *a1 = 0;
  *a2 = 0;
  OUTLINED_FUNCTION_15();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 2u);
}

- (void)copyAllModelFiles:dictionary:ioSurfaceRefs:.cold.8()
{
  OUTLINED_FUNCTION_6_1();
  *v1 = 138412290;
  *v3 = v2;
  OUTLINED_FUNCTION_12_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

- (void)copyAllModelFiles:(uint8_t *)buf dictionary:(_DWORD *)a2 ioSurfaceRefs:(os_log_t)log .cold.9(uint8_t *buf, _DWORD *a2, os_log_t log)
{
  *buf = 67109120;
  *a2 = 32;
  _os_log_error_impl(&dword_1AD246000, log, OS_LOG_TYPE_ERROR, "copyAllModelFiles ERROR : Max file count reached %d", buf, 8u);
}

+ (void)copyLLIRBundleToIOSurface:writtenDataSize:.cold.1()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_8(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_12_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

+ (void)copyLLIRBundleToIOSurface:writtenDataSize:.cold.2()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_8(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_12_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

+ (void)copyLLIRBundleToIOSurface:writtenDataSize:.cold.3()
{
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_2_4(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_12_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

+ (void)copyLLIRBundleToIOSurface:writtenDataSize:.cold.4()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_8(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_12_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

+ (void)copyLLIRBundleToIOSurface:writtenDataSize:.cold.5()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_2_0(&dword_1AD246000, v3, v4, "%@: FAILED to create dataBuffer object!", v5);
}

+ (void)copyLLIRBundleToIOSurface:writtenDataSize:.cold.6()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_2_0(&dword_1AD246000, v3, v4, "%@: FAILED to create fileManager object!", v5);
}

+ (void)copyLLIRBundleToIOSurface:writtenDataSize:.cold.7()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_2_0(&dword_1AD246000, v3, v4, "%@: ERROR : BAD_ARGUMENT : return object for writtenDataSize is nil!", v5);
}

+ (void)copyLLIRBundleToIOSurface:writtenDataSize:.cold.8()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_2_0(&dword_1AD246000, v3, v4, "%@: ERROR : BAD_ARGUMENT : bundlePath is nil!", v5);
}

- (void)copyModelMetaData:(uint64_t)a3 options:dictionary:vmData:.cold.1(void *a1, void *a2, uint64_t a3)
{
  OUTLINED_FUNCTION_0_8(a1, a2, a3, 5.778e-34);
  OUTLINED_FUNCTION_11_0(&dword_1AD246000, "%@: model.sourceURL=%@\n", v5, v6);
}

- (void)copyModelMetaData:options:dictionary:vmData:.cold.2()
{
  OUTLINED_FUNCTION_1_1();
  v2 = *v1;
  OUTLINED_FUNCTION_3_3(v3, 5.778e-34, v1, v4);
  OUTLINED_FUNCTION_11_0(&dword_1AD246000, "%@: sourceURLLength=%lld\n", v5, v6);
}

- (void)readWeightFilename:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_13(&dword_1AD246000, v3, v4, "%@: ANEVirtualClient weightfilename is Not empty\n", v5);
}

- (void)readWeightFilename:.cold.2()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_8(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_11_0(&dword_1AD246000, "%@: ANEVirtualClient Cannot read netfilename=%@\n", v4, v5);
}

- (void)doJsonParsingMatchWeightName:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_13(&dword_1AD246000, v3, v4, "%@: ANEVirtualClient no match for weightfilename.\n", v5);
}

- (void)doJsonParsingMatchWeightName:.cold.2()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_8(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_11_0(&dword_1AD246000, "%@: ANEVirtualClient weightfilename=%@\n", v4, v5);
}

- (void)doJsonParsingMatchWeightName:.cold.3()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_13(&dword_1AD246000, v3, v4, "%@: ANEVirtualClient weightfilename does not exists.\n", v5);
}

- (void)doJsonParsingMatchWeightName:.cold.4()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_13(&dword_1AD246000, v3, v4, "%@: ANEVirtualClient could not parse Json.\n", v5);
}

- (void)parallelDecompressedData:.cold.1()
{
  OUTLINED_FUNCTION_1_1();
  v2 = *v1;
  OUTLINED_FUNCTION_0_1(v3, 5.778e-34, v1, v4);
  OUTLINED_FUNCTION_12_0();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x12u);
}

- (void)parallelDecompressedData:.cold.2()
{
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_2_4(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_12_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

- (void)copyModelOptionFiles:options:vmData:.cold.1()
{
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_2_4(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_11_0(&dword_1AD246000, "%@: FILEData wrote %lu\n", v4, v5);
}

- (void)copyModelOptionFiles:options:vmData:.cold.2()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_13(&dword_1AD246000, v3, v4, "%@: ANEVirtualClient options empty\n", v5);
}

- (void)copyErrorValue:.cold.1()
{
  OUTLINED_FUNCTION_1_1();
  v2 = *v1;
  OUTLINED_FUNCTION_0_1(v3, 5.778e-34, v1, v4);
  OUTLINED_FUNCTION_14();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x12u);
}

- (void)copyErrorValue:.cold.2()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_2_0(&dword_1AD246000, v3, v4, "%@: ANEVirtualClient ioSurfaceRef pointer null\n", v5);
}

- (void)copyToIOSurface:length:ioSID:.cold.1()
{
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_2_4(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_12_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

- (void)copyToIOSurface:length:ioSID:.cold.2()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_2_0(&dword_1AD246000, v3, v4, "%@: ERROR passed in length=0", v5);
}

- (void)copyToIOSurface:length:ioSID:.cold.3()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_2_0(&dword_1AD246000, v3, v4, "%@: ERROR passed in ioSID pointer is NULL", v5);
}

- (void)copyToIOSurface:size:ioSID:.cold.2()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_13(&dword_1AD246000, v3, v4, "%@: ANEVirtualClient length==0\n", v5);
}

- (void)copyToIOSurface:size:ioSID:.cold.3()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_2_0(&dword_1AD246000, v3, v4, "%@: ANEVirtualClient ioSID pointer null\n", v5);
}

+ (void)printIOSurfaceDataInBytes:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

+ (void)getDictionaryWithJSONEncodingFromIOSurface:withArchivedDataSize:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_2_0(&dword_1AD246000, v3, v4, "%@: ERROR : failed to get dataBaseAddress for ioSurface!", v5);
}

+ (void)getDictionaryWithJSONEncodingFromIOSurface:withArchivedDataSize:.cold.2()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_2_0(&dword_1AD246000, v3, v4, "%@: ERROR : BAD_ARGUMENT : passed in archivedDataSize is 0!", v5);
}

+ (void)getDictionaryWithJSONEncodingFromIOSurface:withArchivedDataSize:.cold.3()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_2_0(&dword_1AD246000, v3, v4, "%@: ERROR : BAD_ARGUMENT : passed in ioSurfaceRef is nil!", v5);
}

+ (void)getObjectFromIOSurface:classType:length:.cold.1()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_8(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_12_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

+ (void)getObjectFromIOSurface:classType:length:.cold.2()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_2_0(&dword_1AD246000, v3, v4, "%@: ERROR : Failed to get object from unarchiver", v5);
}

+ (void)getObjectFromIOSurface:classType:length:.cold.3()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_2_0(&dword_1AD246000, v3, v4, "%@: ERROR : Failed to get NSData object", v5);
}

+ (void)getObjectFromIOSurface:classType:length:.cold.4()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_2_0(&dword_1AD246000, v3, v4, "%@: ERROR failed to get base address for ioSurfaceRef", v5);
}

+ (void)getObjectFromIOSurface:classType:length:.cold.5()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_2_0(&dword_1AD246000, v3, v4, "%@: ERROR : BAD_ARGUMENT : length is 0!", v5);
}

+ (void)getObjectFromIOSurface:classType:length:.cold.6()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_2_0(&dword_1AD246000, v3, v4, "%@: ERROR : BAD_ARGUMENT : ioSurfaceRef is nil!", v5);
}

+ (void)getCFDictionaryFromIOSurface:dataLength:.cold.4()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

+ (void)copyDictionaryDataToStruct:dictionary:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_2_0(&dword_1AD246000, v3, v4, "%@: copyDictionaryDataToStruct input data NULL", v5);
}

+ (void)getCodeSigningIdentity
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_2_0(&dword_1AD246000, v3, v4, "%@: ERROR failed to get CSIdentity", v5);
}

+ (void)setCodeSigningIdentity:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_19();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)callIOUserClientWithDictionary:inDictionary:error:.cold.1()
{
  OUTLINED_FUNCTION_1_1();
  v2 = *v1;
  *v3 = 138412546;
  *(v3 + 4) = v4;
  *(v3 + 12) = 2112;
  *(v3 + 14) = v2;
  OUTLINED_FUNCTION_12_0();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);
}

- (void)callIOUserClientWithDictionary:inDictionary:error:.cold.2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)callIOUserClientWithDictionary:inDictionary:error:.cold.3()
{
  OUTLINED_FUNCTION_1_1();
  v2 = *v1;
  OUTLINED_FUNCTION_0_1(v3, 5.778e-34, v1, v4);
  OUTLINED_FUNCTION_12_0();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x12u);
}

- (void)checkKernReturnValue:selector:outParams:.cold.1()
{
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_5_3(v1, v2, 5.778e-34);
  *(v3 + 14) = v4;
  OUTLINED_FUNCTION_14();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x12u);
}

+ (void)updateError:errorLength:error:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_2_0(&dword_1AD246000, v3, v4, "%@: ERROR : BAD_ARGUMENT : error object is nil!", v5);
}

+ (void)updateError:errorLength:errorCode:error:.cold.1()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_8(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_12_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

+ (void)updateError:errorLength:errorCode:error:.cold.2()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_2_0(&dword_1AD246000, v3, v4, "%@: ERROR failed to get string from decoder", v5);
}

+ (void)updateError:errorLength:errorCode:error:.cold.3()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_2_0(&dword_1AD246000, v3, v4, "%@: ERROR failed to get base address for errorIOSurface", v5);
}

+ (void)updateError:errorLength:errorCode:error:.cold.4()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_2_0(&dword_1AD246000, v3, v4, "%@: BAD_ARGUMENT error object is nil", v5);
}

+ (void)updateError:errorLength:errorCode:error:.cold.5()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_2_0(&dword_1AD246000, v3, v4, "%@: BAD_ARGUMENT errorLength is 0!", v5);
}

+ (void)updateError:errorLength:errorCode:error:.cold.6()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_2_0(&dword_1AD246000, v3, v4, "%@: BAD_ARGUMENT errorIOSurface is nil!", v5);
}

- (void)updateError:error:.cold.2()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_2_0(&dword_1AD246000, v3, v4, "%@: Failed with NULL databaseAddress", v5);
}

+ (void)updatePerformanceStats:performanceStatsLength:perfStatsRawIOSurfaceRef:performanceStatsRawLength:hwExecutionTime:.cold.1()
{
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_2_4(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_12_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

+ (void)updatePerformanceStats:performanceStatsLength:perfStatsRawIOSurfaceRef:performanceStatsRawLength:hwExecutionTime:.cold.2()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_2_0(&dword_1AD246000, v3, v4, "%@: FAILED to get dataBaseAddress for perfStatsRawIOSurfaceRef", v5);
}

+ (void)updatePerformanceStats:performanceStatsLength:perfStatsRawIOSurfaceRef:performanceStatsRawLength:hwExecutionTime:.cold.3()
{
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_2_4(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_12_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

+ (void)updatePerformanceStats:performanceStatsLength:perfStatsRawIOSurfaceRef:performanceStatsRawLength:hwExecutionTime:.cold.4()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_2_0(&dword_1AD246000, v3, v4, "%@: FAILED to get dataBaseAddress for perfStatsIOSurfaceRef", v5);
}

+ (void)updatePerformanceStats:performanceStatsLength:perfStatsRawIOSurfaceRef:performanceStatsRawLength:hwExecutionTime:.cold.5()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_2_0(&dword_1AD246000, v3, v4, "%@: BAD_ARGUMENT perfStatsIOSurface is NULL!", v5);
}

+ (void)updatePerformanceStats:performanceStatsLength:perfStatsRawIOSurfaceRef:performanceStatsRawLength:hwExecutionTime:.cold.6()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_13(&dword_1AD246000, v3, v4, "%@: perfStatsLength=0 hwExecutionTime=0, no perfStats to report", v5);
}

- (void)updatePerformanceStats:.cold.1()
{
  OUTLINED_FUNCTION_1_1();
  v2 = *v1;
  OUTLINED_FUNCTION_3_3(v3, 5.778e-34, v1, v4);
  OUTLINED_FUNCTION_12_0();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);
}

- (void)copyDictionaryToIOSurface:copiedDataSize:createdIOSID:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_2_0(&dword_1AD246000, v3, v4, "%@: ERROR : FAILED to get valid dataArchive for dictionary. Data archive length is 0!", v5);
}

- (void)copyDictionaryToIOSurface:copiedDataSize:createdIOSID:.cold.2()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_2_0(&dword_1AD246000, v3, v4, "%@: ERROR : FAILED to get dataArchive for dictionary object", v5);
}

- (void)copyDictionaryToIOSurface:copiedDataSize:createdIOSID:.cold.3()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_2_0(&dword_1AD246000, v3, v4, "%@: ERROR : BAD_ARGUMENT : return variable for createdIOSID is nil!", v5);
}

- (void)copyDictionaryToIOSurface:copiedDataSize:createdIOSID:.cold.4()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_2_0(&dword_1AD246000, v3, v4, "%@: ERROR : BAD_ARGUMENT : return variable for copiedDataSize is nil!", v5);
}

- (void)copyDictionaryToIOSurface:copiedDataSize:createdIOSID:.cold.5()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_2_0(&dword_1AD246000, v3, v4, "%@: ERROR : BAD_ARGUMENT : input dictionary is nil!", v5);
}

+ (void)shouldUsePrecompiledPath:options:shouldUseChunking:chunkingThreshold:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_2_0(&dword_1AD246000, v3, v4, "%@: ERROR no file at path", v5);
}

+ (void)shouldUsePrecompiledPath:options:shouldUseChunking:chunkingThreshold:.cold.2()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_2_0(&dword_1AD246000, v3, v4, "%@: ERROR kANEFModelPreCompiledValue not found in options dictionary", v5);
}

+ (void)shouldUsePrecompiledPath:options:shouldUseChunking:chunkingThreshold:.cold.3()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_13(&dword_1AD246000, v3, v4, "%@: Path points to a directory, not a file (should not use precompiled path)", v5);
}

+ (void)shouldUsePrecompiledPath:options:shouldUseChunking:chunkingThreshold:.cold.4()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_2_0(&dword_1AD246000, v3, v4, "%@: ERROR shouldUseChunking return param is nil!", v5);
}

+ (void)shouldUsePrecompiledPath:options:shouldUseChunking:chunkingThreshold:.cold.5()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_2_0(&dword_1AD246000, v3, v4, "%@: ERROR passed in options dictionary is nil", v5);
}

+ (void)shouldUsePrecompiledPath:options:shouldUseChunking:chunkingThreshold:.cold.6()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_2_0(&dword_1AD246000, v3, v4, "%@: ERROR passed in model is nil", v5);
}

@end