@interface OSACrashReport
+ (id)decode_syndrome:(unsigned int)a3;
+ (id)loadBuildInfo:(id)a3;
+ (id)loadStoreInfo:(id)a3 atURL:(id)a4 forPlatform:(unsigned int)a5;
+ (id)parentBundleURLForAppExtensionBundleURL:(id)a3 error:(id)a4;
+ (void)observedMTECrashWithProcessName:(id)a3;
- (BOOL)_isMemorySafeAtAddress:(unint64_t)a3;
- (BOOL)isActionable;
- (BOOL)isExceptionNonFatal;
- (BOOL)isMTECrash;
- (BOOL)saveWithOptions:(id)a3;
- (_CSRange)_getObjCReadOnlyRange:(_CSTypeRef)a3;
- (_CSTypeRef)_getSymbolicator:(BOOL)a3;
- (_VMURange)_regionAtAddress:(unint64_t)a3 immutableCheck:(BOOL *)a4 isInSharedCache:(BOOL *)a5;
- (char)_copyStringFromTask:(unsigned int)a3 atAddress:(unint64_t)a4 maxLength:(unint64_t)a5 immutableCheck:(BOOL *)a6 isInSharedCache:(BOOL *)a7;
- (id)_descriptionForException:(id)a3;
- (id)_extractMallocTraceInfo:(id *)a3 withSymbolicator:(_CSTypeRef)a4 usingCatalog:(id)a5;
- (id)_findContainingRegion:(id)a3 address:(unint64_t)a4;
- (id)_findContainingTextSegmentRegion:(id)a3 address:(unint64_t)a4;
- (id)_objcSelectorNameForMessenger:(id)a3;
- (id)_readDataAtAddress:(unint64_t)a3 size:(unint64_t)a4;
- (id)_readIndirectSafeStringFromSymbol:(const char *)a3 symbolOwner:(_CSTypeRef)a4;
- (id)_readMallocZoneArray:(_CSTypeRef)a3;
- (id)_readMallocZoneArrayFromMemory:(mapped_memory_t *)a3 usingSymbolicator:(_CSTypeRef)a4;
- (id)_readStringAtTaskAddress:(unint64_t)a3 maxLength:(unint64_t)a4 immutableCheck:(BOOL *)a5 isInSharedCache:(BOOL *)a6;
- (id)_symbolicateRegister:(unint64_t)a3 inRange:(_CSRange)a4 withSymbolicator:(_CSTypeRef)a5 usingCatalog:(id)a6;
- (id)additionalIPSMetadata;
- (id)appleCareDetails;
- (id)bls_aggregatePayload:(id *)a3;
- (id)bls_backlightChangeEventPayload:(id *)a3;
- (id)bls_backlightChangeRequestPayload:(id *)a3;
- (id)bls_environmentStateMachinePayload:(id *)a3;
- (id)bls_presentationPayload:(id *)a3;
- (id)bls_transitionPayload:(id *)a3;
- (id)composeFrame:(id)a3 info:(id)a4;
- (id)create_os_fault_section;
- (id)decode_cpuType;
- (id)decode_crashingThreadStateWithSymbolicator:(_CSTypeRef)a3 usingCatalog:(id)a4;
- (id)decode_esr:(unsigned int *)a3 exceptionStateCount:(unsigned int)a4;
- (id)decode_exceptionCodes;
- (id)decode_exceptionType;
- (id)decode_reasonBTC;
- (id)decode_reasonBacklightServices;
- (id)decode_reasonCodeSigning;
- (id)decode_reasonCoreAnimation;
- (id)decode_reasonExec;
- (id)decode_reasonLibSystem;
- (id)decode_reasonLibxpc;
- (id)decode_reasonMetal;
- (id)decode_reasonNamespace;
- (id)decode_reasonPortSpace;
- (id)decode_reasonRealityKit;
- (id)decode_reasonRosetta;
- (id)decode_reasonSandbox;
- (id)decode_reasonTcc;
- (id)decode_reasonWatchKit;
- (id)decode_reasonWatchdog;
- (id)decode_signal;
- (id)decode_versionCodes:(unsigned __int16)a3[4];
- (id)getNotificationInfo;
- (id)getObserverInfo;
- (id)getTrialCache;
- (id)nameFromPid:(int)a3;
- (id)pathFromPid:(int)a3;
- (id)patternInfo;
- (id)problemType;
- (id)reportNamePrefix;
- (id)safe_encoder:(unsigned int)a3;
- (id)slice_uuid;
- (id)terminationReasonExceptionCode;
- (int)_regionInfoAtAddress:(unint64_t)a3 regionInfo:(vm_region_submap_short_info_64 *)a4 regionAddress:(unint64_t *)a5 regionSize:(unint64_t *)a6;
- (int)sRouteID;
- (int)shouldEnableUrgentSubmission;
- (int64_t)codeZeroForGuardException;
- (unint64_t)_findMallocZone:(id)a3 usingSymbolicator:(_CSTypeRef)a4;
- (unint64_t)_objcSelectorAddressForMessenger:(id)a3 memory:(mapped_memory_t *)a4;
- (unint64_t)_readAddressFromMemory:(mapped_memory_t *)a3 atSymbol:(_CSTypeRef)a4;
- (unsigned)_extractBacktraceInfoUsingSymbolicator:(_CSTypeRef)a3 usingCatalog:(id)a4;
- (void)_addASILine:(id)a3 fromOwner:(id)a4 isSafe:(BOOL)a5;
- (void)_extractBinaryImageInfoUsingSymbolicator:(_CSTypeRef)a3 usingCatalog:(id)a4;
- (void)_extractCrashReporterAnnotationsFromSymbolOwner:(_CSTypeRef)a3 withMemory:(mapped_memory_t *)a4;
- (void)_extractExceptionReasonUsingSymbolicator:(_CSTypeRef)a3 usingCatalog:(id)a4;
- (void)_extractInfoPlistFromSymbolOwner:(_CSTypeRef)a3;
- (void)_extractLastExceptionBacktraceUsingSymbolicator:(_CSTypeRef)a3 usingCatalog:(id)a4;
- (void)_extractMemoryErrorReportUsingSymbolicator:(_CSTypeRef)a3 usingCatalog:(id)a4;
- (void)_extractPGMLibpasReportUsingSymbolicator:(_CSTypeRef)a3 usingCatalog:(id)a4;
- (void)_extractPGMReportUsingSymbolicator:(_CSTypeRef)a3 usingCatalog:(id)a4;
- (void)_extractRosettaRuntimeInfo:(_CSTypeRef)a3 withBlock:(id)a4;
- (void)_extractSanitizerReportUsingSymbolicator:(_CSTypeRef)a3 usingCatalog:(id)a4;
- (void)_extractVMMap:(_CSTypeRef)a3;
- (void)_extractWorkQueueLimitsFromData:(proc_workqueueinfo *)a3;
- (void)_mergeFormattedASI;
- (void)addFieldsToCrashEvent:(id)a3;
- (void)addFieldsToHeader:(id)a3;
- (void)autopsyCorpse;
- (void)autopsyLightweightCorpse:(unint64_t)a3 size:(unint64_t)a4;
- (void)captureDiagInfo:(id)a3;
- (void)checkIfNeedsUrgentSubmission;
- (void)dealloc;
- (void)decode_os_log_fault_payload;
- (void)decode_reasonDyldWithInfo:(id)a3;
- (void)donateToBiome;
- (void)dumpProgramCounterBytes;
- (void)extractTerminationReason;
- (void)finishExtraction;
- (void)finishExtractionUsingCorpse;
- (void)generateLogAtLevel:(BOOL)a3 withBlock:(id)a4;
- (void)loadBundleInfo;
- (void)parseCorpse:(unint64_t)a3 size:(unint64_t)a4;
- (void)sendToCoreAnalyticsWithDidWriteReport:(BOOL)a3;
- (void)sendToMetricKit;
- (void)setApplicationSpecificInformation:(const char *)a3;
- (void)setTriggeredThread;
- (void)stashStatus:(id)a3 note:(id)a4;
- (void)symbolicateFrame:(unint64_t)a3 adjusted:(unint64_t)a4 withSymbolicator:(_CSTypeRef)a5 usingCatalog:(id)a6 andBlock:(id)a7;
- (void)unpackExceptionCodes;
- (void)updateCrashHistory;
- (void)updateLogWritingSignatureWithSymbol:(id)a3 address:(unint64_t)a4;
- (void)validateProcName;
- (void)writeReportBodyWithSectionWriter:(id)a3;
- (void)writeReportToSerial;
@end

@implementation OSACrashReport

- (void)updateLogWritingSignatureWithSymbol:(id)a3 address:(unint64_t)a4
{
  v7 = a3;
  v8 = self;
  sub_100003B70(a3, a4);
}

- (void)finishExtractionUsingCorpse
{
  v3 = [[VMUProcInfo alloc] initWithPid:self->_ppid];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 name];
    v6 = [v5 copy];
    parentProcessName = self->_parentProcessName;
    self->_parentProcessName = v6;
  }

  else
  {
    [*&self->OSAReport_opaque[OBJC_IVAR___OSAReport__notes] addObject:@"Failed to create NSProcInfo for parent process"];
  }

  if (!self->_parentProcessName)
  {
    v8 = [(OSACrashReport *)self nameFromPid:self->_ppid];
    v9 = self->_parentProcessName;
    self->_parentProcessName = v8;
  }

  v10 = &selRef_arrayForKey_;
  v95 = v4;
  if (self->_task + 1 >= 2)
  {
    v13 = [[TaskOperator alloc] initWithTask:self->_task];
    taskOperator = self->_taskOperator;
    self->_taskOperator = v13;

    v117[0] = 0;
    task = self->_task;
    if (_dyld_process_info_create())
    {
      self->_platform = _dyld_process_info_get_platform();
      _dyld_process_info_release();
    }

    else
    {
      v16 = *&self->OSAReport_opaque[OBJC_IVAR___OSAReport__notes];
      v17 = [NSString stringWithFormat:@"_dyld_process_info_create failed with %d", v117[0]];
      [v16 addObject:v17];
    }

    v18 = self->_task;
    if (dyld_process_create_for_task())
    {
      if (dyld_process_snapshot_create_for_process())
      {
        if (dyld_process_snapshot_get_shared_cache())
        {
          self->_sharedCacheBase = dyld_shared_cache_get_base_address();
          mapped_size = dyld_shared_cache_get_mapped_size();
          self->_sharedCacheSize = mapped_size;
          if (self->_sharedCacheBase + mapped_size <= self->_sharedCacheBase)
          {
            v24 = *&self->OSAReport_opaque[OBJC_IVAR___OSAReport__notes];
            v25 = [NSString stringWithFormat:@"shared cache base 0x%llX + size 0x%llX overflow", self->_sharedCacheBase, mapped_size];
            [v24 addObject:v25];

            self->_sharedCacheBase = 0;
            self->_sharedCacheSize = 0;
          }

          else
          {
            dyld_shared_cache_copy_uuid();
          }
        }

        else
        {
          [*&self->OSAReport_opaque[OBJC_IVAR___OSAReport__notes] addObject:@"dyld_process_snapshot_get_shared_cache failed"];
        }

        dyld_process_snapshot_dispose();
      }

      else
      {
        v22 = *&self->OSAReport_opaque[OBJC_IVAR___OSAReport__notes];
        v23 = [NSString stringWithFormat:@"dyld_process_snapshot_create_for_process failed with %d", v117[0]];
        [v22 addObject:v23];
      }

      dyld_process_dispose();
    }

    else
    {
      v20 = *&self->OSAReport_opaque[OBJC_IVAR___OSAReport__notes];
      v21 = [NSString stringWithFormat:@"dyld_process_create_for_task failed with %d", v117[0]];
      [v20 addObject:v21];
    }

    get_default[0] = 0;
    policy_infoCnt = 1;
    policy_info = 0;
    if (!task_policy_get(self->_task, 1u, &policy_info, &policy_infoCnt, get_default))
    {
      self->_task_role = policy_info;
    }

    CSSymbolicatorSetForceGlobalSafeMachVMReads();
    v26 = objc_autoreleasePoolPush();
    v27 = objc_alloc_init(OSABinaryImageCatalog);
    v28 = [(OSACrashReport *)self _getSymbolicator:1];
    v30 = v29;
    context = v26;
    if (CSIsNull())
    {
      v93 = v30;
      v94 = v28;
      v91 = 0;
    }

    else
    {
      [(OSACrashReport *)self _extractBinaryImageInfoUsingSymbolicator:v28 usingCatalog:v30, v27];
      [(OSACrashReport *)self _extractVMMap:v28, v30];
      CSRelease();
      v31 = [(OSACrashReport *)self _getSymbolicator:0];
      v33 = v32;
      v34 = +[NSMutableString string];
      [(OSACrashReport *)self setLogWritingSignatureFrames:v34];

      v91 = [(OSACrashReport *)self _extractBacktraceInfoUsingSymbolicator:v31 usingCatalog:v33, v27];
      if ([(OSACrashReport *)self _isPGMCrashType])
      {
        [(OSACrashReport *)self _extractPGMReportUsingSymbolicator:v31 usingCatalog:v33, v27];
        [(OSACrashReport *)self _extractPGMLibpasReportUsingSymbolicator:v31 usingCatalog:v33, v27];
      }

      [(OSACrashReport *)self _extractSanitizerReportUsingSymbolicator:v31 usingCatalog:v33, v27];
      [(OSACrashReport *)self _extractMemoryErrorReportUsingSymbolicator:v31 usingCatalog:v33, v27];
      [(OSACrashReport *)self _extractLastExceptionBacktraceUsingSymbolicator:v31 usingCatalog:v33, v27];
      v93 = v33;
      v94 = v31;
      [(OSACrashReport *)self _extractExceptionReasonUsingSymbolicator:v31 usingCatalog:v33, v27];
    }

    v109 = 0u;
    v110 = 0u;
    v107 = 0u;
    v108 = 0u;
    obj = self->_exclaveThreadNumbers;
    v99 = [(NSMutableArray *)obj countByEnumeratingWithState:&v107 objects:v121 count:16];
    if (v99)
    {
      v97 = *v108;
      v98 = v27;
      do
      {
        for (i = 0; i != v99; i = i + 1)
        {
          if (*v108 != v97)
          {
            objc_enumerationMutation(obj);
          }

          v36 = -[NSMutableArray objectAtIndexedSubscript:](self->_threadInfos, "objectAtIndexedSubscript:", [*(*(&v107 + 1) + 8 * i) intValue]);
          v37 = [v36 objectForKeyedSubscript:@"frames"];
          v38 = [v36 objectForKeyedSubscript:@"id"];
          if (!v37)
          {
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
            {
              sub_100030288(v119, v38, &v120);
            }

            v37 = objc_alloc_init(NSMutableArray);
          }

          v100 = v38;
          v101 = v36;
          v39 = [(OSAExclaveContainer *)self->_exclaveContainer getFramesForThread:v38 usingCatalog:v27];
          v103 = 0u;
          v104 = 0u;
          v105 = 0u;
          v106 = 0u;
          v40 = [v39 countByEnumeratingWithState:&v103 objects:v118 count:16];
          if (v40)
          {
            v41 = v40;
            v42 = 0;
            v43 = *v104;
            do
            {
              for (j = 0; j != v41; j = j + 1)
              {
                if (*v104 != v43)
                {
                  objc_enumerationMutation(v39);
                }

                v45 = [(OSACrashReport *)self composeFrame:*(*(&v103 + 1) + 8 * j) info:&off_10004E238];
                [v37 insertObject:v45 atIndex:v42];

                ++v42;
              }

              v41 = [v39 countByEnumeratingWithState:&v103 objects:v118 count:16];
            }

            while (v41);
          }

          [v101 setObject:v37 forKeyedSubscript:@"frames"];
          v46 = [(OSAExclaveContainer *)self->_exclaveContainer threadIdToScId];
          v47 = [v46 objectForKeyedSubscript:v100];

          if (v47)
          {
            [v101 setObject:v47 forKeyedSubscript:@"exclaveScid"];
          }

          v27 = v98;
        }

        v99 = [(NSMutableArray *)obj countByEnumeratingWithState:&v107 objects:v121 count:16];
      }

      while (v99);
    }

    if (self->_exceptionType == 1)
    {
      self->_crashingAddress = self->_exceptionCode[1];
      v48 = [[VMUVMRegionIdentifier alloc] initWithTask:self->_task pid:self->_proc_id options:4352];
      v49 = [v48 descriptionOfRegionsAroundAddress:self->_crashingAddress options:4096];
      v50 = v49;
      v4 = v95;
      if (v49)
      {
        v51 = [v49 componentsSeparatedByString:@"\n"];
        [NSPredicate predicateWithFormat:@"SELF != ''"];
        v53 = v52 = v27;
        v54 = [v51 filteredArrayUsingPredicate:v53];

        v27 = v52;
        v55 = [v54 componentsJoinedByString:@"\n"];
        vmregion_info = self->_vmregion_info;
        self->_vmregion_info = v55;
      }

      v57 = [v48 regions];
      v58 = [(OSACrashReport *)self _findContainingRegion:v57 address:self->_crashingAddress];

      if (v58 && *&v58[OBJC_IVAR___VMUVMRegion_user_tag] == 30 && !*&v58[OBJC_IVAR___VMUVMRegion_prot])
      {
        self->_isStackGuardPageBadAccess = 1;
        if ([*&v58[OBJC_IVAR___VMUVMRegion_path] rangeOfString:@"stack guard for thread "] == 0x7FFFFFFFFFFFFFFFLL)
        {
          v60 = -1;
        }

        else
        {
          v60 = atoi([*&v58[OBJC_IVAR___VMUVMRegion_path] UTF8String] + v59);
        }

        self->_stackGuardPageBadAccessThreadNumber = v60;
      }

      v10 = &selRef_arrayForKey_;
    }

    else
    {
      v4 = v95;
      v10 = &selRef_arrayForKey_;
      if ((self->_cs_status & 0x1000000) != 0 && self->_exceptionStateCount)
      {
        self->_crashingAddress = *self->_exceptionState;
      }
    }

    crashingAddress = self->_crashingAddress;
    if (crashingAddress)
    {
      taskImages = self->_taskImages;
      v102 = 0;
      v63 = [v27 searchFrame:crashingAddress in:taskImages regions:0 result:&v102];
    }

    v64 = [v27 reportUsedImagesFullInfoUsingBlock:&stru_1000452E0];
    usedImages = self->_usedImages;
    self->_usedImages = v64;

    v66 = OBJC_IVAR___OSAReport__notes;
    [v27 appendNotesTo:*&self->OSAReport_opaque[OBJC_IVAR___OSAReport__notes]];

    [(OSAExclaveContainer *)self->_exclaveContainer appendNotesTo:*&self->OSAReport_opaque[v66]];
    threadPortOriginal = v91;
    if (!v91)
    {
      threadPortOriginal = self->_threadPortOriginal;
    }

    [(OSACrashReport *)self extractThreadStateInfo:threadPortOriginal];
    v68 = [(OSACrashReport *)self decode_crashingThreadStateWithSymbolicator:v94 usingCatalog:v93, 0];
    threadStateDecoded = self->_threadStateDecoded;
    self->_threadStateDecoded = v68;

    [(OSACrashReport *)self setTriggeredThread];
    self->_sroute_id = [(OSACrashReport *)self sRouteID];
    [(OSACrashReport *)self checkIfNeedsUrgentSubmission];
    if (v91)
    {
      mach_port_deallocate(mach_task_self_, v91);
    }

    if ((CSIsNull() & 1) == 0)
    {
      CSRelease();
    }

    objc_autoreleasePoolPop(context);
    [(OSACrashReport *)self dumpProgramCounterBytes];
  }

  else
  {
    v11 = *&self->OSAReport_opaque[OBJC_IVAR___OSAReport__notes];
    v12 = [NSString stringWithFormat:@"Failed to determine task_t for %@[%d], so no last exception, backtraces, binary images, or dyld info", self->_procName, self->_proc_id];
    [v11 addObject:v12];
  }

  proc_id = self->_proc_id;
  if (!sandbox_container_path_for_pid())
  {
    v71 = [NSString stringWithUTF8String:v117];
    sandboxContainer = self->_sandboxContainer;
    self->_sandboxContainer = v71;
  }

  v73 = [(OSACrashReport *)self logWritingSignatureFrames];
  v74 = [v73 length];

  if (v74)
  {
    v75 = *&self->OSAReport_opaque[*(v10 + 929)];
    v76 = *self->_exceptionCode;
    exceptionType = self->_exceptionType;
    v78 = [(OSACrashReport *)self logWritingSignatureFrames];
    v79 = +[OSASystemConfiguration sharedInstance];
    v80 = [v79 productNameVersionBuildString];
    v81 = [NSString stringWithFormat:@"%@ %s 0x%X 0x%qx %@ %@ %u", v75, self->_slice_uuid, exceptionType, v76, v78, v80, self->_sroute_id];

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_1000302EC();
    }

    *get_default = 0;
    v115 = 0;
    v116 = 0;
    CC_SHA1([v81 UTF8String], objc_msgSend(v81, "length"), get_default);
    v82 = [NSString stringWithFormat:@"%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x", LOBYTE(get_default[0]), BYTE1(get_default[0]), BYTE2(get_default[0]), HIBYTE(get_default[0]), LOBYTE(get_default[1]), BYTE1(get_default[1]), BYTE2(get_default[1]), HIBYTE(get_default[1]), v115, BYTE1(v115), BYTE2(v115), BYTE3(v115), BYTE4(v115), BYTE5(v115), BYTE6(v115), HIBYTE(v115), v116, BYTE1(v116), BYTE2(v116), HIBYTE(v116)];
    [*&self->OSAReport_opaque[OBJC_IVAR___OSAReport__logWritingOptions] setObject:v82 forKeyedSubscript:kOSALogOptionSignature];
    objc_storeStrong(&self->_logWritingSignature, v82);
    v4 = v95;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
    {
      policy_infoCnt = 138412290;
      v113 = v82;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "crash signature: %@", &policy_infoCnt, 0xCu);
    }
  }

  v83 = *self->_exceptionCode;
  if (self->_exceptionType != 11 || (v83 & 0xE000000000000000) != 0x6000000000000000 || !self->_proc_id)
  {
    if (v83 == 3238382097)
    {
      v84 = &off_10004E448;
    }

    else if (v83 == 3134085662)
    {
      v84 = &off_10004E430;
    }

    else
    {
      if (self->_abort_cause != 1414810708 && (v83 != 1414810708 || !self->_is_simulated))
      {
        goto LABEL_102;
      }

      v84 = &off_10004E460;
    }

    [(OSACrashReport *)self captureDiagInfo:v84];
    goto LABEL_102;
  }

  if (os_variant_is_darwinos())
  {
    [(OSACrashReport *)self captureDiagInfo:&off_10004E418];
  }

  else
  {
    v85 = +[OSASystemConfiguration sharedInstance];
    v86 = [v85 appleInternal];

    if (v86)
    {
      v87 = [NSMutableDictionary dictionaryWithCapacity:1];
      spewage_diag = self->_spewage_diag;
      self->_spewage_diag = v87;
    }
  }

  v89 = self->_task;
  v90 = self->_procPath;
  if (byte_1000540D3 == 1)
  {
    if (qword_100054178 != -1)
    {
      sub_100030364();
    }

    if (off_100054170)
    {
      (off_100054170)(v89, 0, [(NSString *)v90 UTF8String], 0, 0);
    }
  }

LABEL_102:
  [(OSACrashReport *)self stashStatus:@"Capture Complete" note:0];
}

- (void)loadBundleInfo
{
  self->_is_first_party = 1;
  procPath = self->_procPath;
  if (procPath)
  {
    v44[0] = @"CFBundleIdentifier";
    v44[1] = kCFBundleVersionKey;
    v44[2] = @"CFBundleShortVersionString";
    v44[3] = @"DTAppStoreToolsBuild";
    v44[4] = @"LSUIElement";
    v44[5] = @"LSBackgroundOnly";
    v44[6] = @"CFBundlePackageType";
    v4 = [NSArray arrayWithObjects:v44 count:7];
    v41 = 0;
    v5 = [OSACrashReport findBundleAtPath:procPath withKeys:v4 bundleURL:&v41];
    v6 = v41;
    v7 = v41;
    bundle_info = self->_bundle_info;
    self->_bundle_info = v5;

    v9 = self->_bundle_info;
    if (v9)
    {
      v10 = [(NSDictionary *)v9 objectForKeyedSubscript:@"CFBundleIdentifier"];
      bundle_id = self->_bundle_id;
      self->_bundle_id = v10;

      if (self->_bundle_id)
      {
        objc_storeStrong(&self->_bundle_url, v6);
        v12 = [OSACrashReport loadStoreInfo:self->_bundle_id atURL:v7 forPlatform:self->_platform];
        store_info = self->_store_info;
        self->_store_info = v12;

        v14 = [(NSDictionary *)self->_store_info objectForKeyedSubscript:@"itemID"];
        adam_id = self->_adam_id;
        self->_adam_id = v14;

        v16 = [(NSDictionary *)self->_store_info objectForKeyedSubscript:@"thirdParty"];
        self->_is_first_party = [v16 BOOLValue] ^ 1;

        v17 = [(NSDictionary *)self->_store_info objectForKeyedSubscript:@"entitledBeta"];

        if (v17)
        {
          self->_is_beta = 1;
          [*&self->OSAReport_opaque[OBJC_IVAR___OSAReport__logWritingOptions] setObject:@"beta" forKeyedSubscript:kOSALogOptionRouting];
        }
      }

      v18 = [(NSDictionary *)self->_bundle_info objectForKeyedSubscript:@"LSUIElement"];
      v19 = [(NSDictionary *)self->_bundle_info objectForKeyedSubscript:@"LSBackgroundOnly"];
      v20 = [(NSDictionary *)self->_bundle_info objectForKeyedSubscript:@"CFBundlePackageType"];
      v21 = (!v18 || (objc_opt_respondsToSelector() & 1) == 0 || (-[NSDictionary BOOLValue](v18, "BOOLValue") & 1) == 0) && (!v19 || (objc_opt_respondsToSelector() & 1) == 0 || ([v19 BOOLValue] & 1) == 0) && (!v20 || (objc_opt_respondsToSelector() & 1) == 0 || (objc_msgSend(v20, "isEqualToString:", @"XPC!") & 1) == 0);
      self->_bundleVisibility = v21;
      v22 = self->_bundle_info;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(NSDictionary *)self->_bundle_info removeObjectsForKeys:&off_10004E4A8];
      }
    }

    else
    {
      if (!self->_info_plist)
      {
        goto LABEL_24;
      }

      v36 = v7;
      v18 = objc_opt_new();
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      v40 = 0u;
      v42[0] = kCFBundleVersionKey;
      v42[1] = @"CFBundleShortVersionString";
      v29 = [NSArray arrayWithObjects:v42 count:2];
      v30 = [v29 countByEnumeratingWithState:&v37 objects:v43 count:16];
      if (v30)
      {
        v31 = v30;
        v32 = *v38;
        do
        {
          for (i = 0; i != v31; i = i + 1)
          {
            if (*v38 != v32)
            {
              objc_enumerationMutation(v29);
            }

            v34 = *(*(&v37 + 1) + 8 * i);
            v35 = [(NSDictionary *)self->_info_plist objectForKeyedSubscript:v34, v36];
            [(NSDictionary *)v18 setObject:v35 forKeyedSubscript:v34];
          }

          v31 = [v29 countByEnumeratingWithState:&v37 objects:v43 count:16];
        }

        while (v31);
      }

      if (![(NSDictionary *)v18 count])
      {
        v7 = v36;
        goto LABEL_23;
      }

      v18 = v18;
      v19 = self->_bundle_info;
      self->_bundle_info = v18;
      v7 = v36;
    }

LABEL_23:
LABEL_24:
    v23 = [(NSDictionary *)self->_bundle_info objectForKeyedSubscript:@"CFBundleShortVersionString", v36];
    short_vers = self->_short_vers;
    self->_short_vers = v23;

    v25 = [(NSDictionary *)self->_bundle_info objectForKeyedSubscript:kCFBundleVersionKey];
    bundleVersion = self->_bundleVersion;
    self->_bundleVersion = v25;

    v27 = [OSACrashReport loadBuildInfo:v7];
    build_info = self->_build_info;
    self->_build_info = v27;

    goto LABEL_25;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_100030740();
  }

LABEL_25:
  [(OSACrashReport *)self captureLSInfo];
}

- (id)getNotificationInfo
{
  v3 = objc_opt_new();
  [v3 setBundleVersion:self->_bundleVersion];
  [v3 setIsBeta:self->_is_beta];
  if (!self->_is_simulated)
  {
    goto LABEL_22;
  }

  exit_snapshot = self->_exit_snapshot;
  if (!exit_snapshot || exit_snapshot->ers_namespace != 18 || self->_crashedThreadNumber < 0)
  {
    goto LABEL_22;
  }

  [(NSMutableArray *)self->_threadInfos objectAtIndexedSubscript:?];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v19 = v25 = 0u;
  obj = [v19 objectForKeyedSubscript:@"frames"];
  v5 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (!v5)
  {
    goto LABEL_21;
  }

  v6 = v5;
  v20 = 0;
  v7 = *v23;
  v8 = -1;
  while (2)
  {
    v9 = 0;
    v10 = v20;
    v20 += v6;
    do
    {
      if (*v23 != v7)
      {
        objc_enumerationMutation(obj);
      }

      v11 = *(*(&v22 + 1) + 8 * v9);
      v12 = [v11 objectForKeyedSubscript:@"imageIndex"];
      v13 = [v12 intValue];

      if (v10 == 1)
      {
        v8 = v13;
        goto LABEL_17;
      }

      if (v10)
      {
        if (v10 > 6)
        {
          goto LABEL_21;
        }
      }

      else
      {
        v14 = [v11 objectForKeyedSubscript:@"symbol"];
        v15 = [@"os_fault_with_payload" isEqualToString:v14];

        if (v15)
        {
          goto LABEL_17;
        }
      }

      if (v13 != v8)
      {
        v16 = [(NSArray *)self->_usedImages objectAtIndex:v13];
        v17 = [v16 objectForKeyedSubscript:@"name"];
        [v3 setFaultingImage:v17];

        goto LABEL_21;
      }

LABEL_17:
      ++v10;
      v9 = v9 + 1;
    }

    while (v6 != v9);
    v6 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v6)
    {
      continue;
    }

    break;
  }

LABEL_21:

LABEL_22:

  return v3;
}

- (id)getObserverInfo
{
  v3 = objc_opt_new();
  lastExceptionBacktrace = self->_lastExceptionBacktrace;
  if (lastExceptionBacktrace && [(NSArray *)lastExceptionBacktrace count])
  {
    [v3 setObject:self->_lastExceptionBacktrace forKeyedSubscript:@"frames"];
  }

  else if ((self->_crashedThreadNumber & 0x80000000) == 0)
  {
    v5 = [(NSMutableArray *)self->_threadInfos objectAtIndexedSubscript:?];
    v6 = [v5 objectForKeyedSubscript:@"frames"];
    [v3 setObject:v6 forKeyedSubscript:@"frames"];
  }

  [v3 setObject:self->_usedImages forKeyedSubscript:@"images"];
  v7 = [NSNumber numberWithInt:self->_proc_id];
  [v3 setObject:v7 forKeyedSubscript:@"pid"];

  [v3 setObject:self->_procName forKeyedSubscript:@"name"];
  v8 = [NSNumber numberWithDouble:*&self->OSAReport_opaque[OBJC_IVAR___OSAReport__capture_time]];
  [v3 setObject:v8 forKeyedSubscript:@"time"];

  if ([(NSMutableDictionary *)self->_applicationSpecificInfoFullSensitive count])
  {
    [v3 setObject:self->_applicationSpecificInfoFullSensitive forKeyedSubscript:@"asi"];
  }

  v9 = [NSNumber numberWithBool:self->_is_simulated];
  [v3 setObject:v9 forKeyedSubscript:@"isSimulated"];

  if ([(NSDictionary *)self->_terminationReason count])
  {
    [v3 setObject:self->_terminationReason forKeyedSubscript:@"terminationReason"];
  }

  return v3;
}

- (BOOL)isActionable
{
  v3 = [(OSACrashReport *)self problemType];
  if (([v3 isEqualToString:@"385"] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"309") & 1) != 0 || objc_msgSend(v3, "isEqualToString:", @"308"))
  {
    procName = self->_procName;
    if (self->_is_simulated)
    {
      v5 = @"_sim";
    }

    else
    {
      v5 = &stru_1000463C0;
    }

    v6 = [NSString stringWithFormat:@"%@_%@%@", v3, self->_procName, v5];
    [*&self->OSAReport_opaque[OBJC_IVAR___OSAReport__logWritingOptions] setObject:v6 forKeyedSubscript:kOSALogOptionCountKey];
  }

  exit_snapshot = self->_exit_snapshot;
  v8 = !exit_snapshot || exit_snapshot->ers_namespace != 7 || exit_snapshot->ers_code != 3;
  if (self->_exceptionType == 11 && *self->_exceptionCode >> 61 == 3)
  {
    v9 = +[OSASystemConfiguration sharedInstance];
    if ([v9 appleInternal])
    {
      v10 = v8 | byte_1000540D4;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = v8 | byte_1000540D4;
  }

  return v10 & 1;
}

- (id)reportNamePrefix
{
  exceptionType = self->_exceptionType;
  if (exceptionType == 12)
  {
    if (*self->_exceptionCode >> 61 == 3)
    {
      v6 = @"ExcUserFault_";
    }

    else
    {
      v6 = &stru_1000463C0;
    }
  }

  else
  {
    v5 = exceptionType == 11;
    v6 = @"ExcResource_";
    if (!v5)
    {
      v6 = &stru_1000463C0;
    }
  }

  return [NSString stringWithFormat:@"%@%@", v6, self->_procName, v2, v3];
}

- (id)additionalIPSMetadata
{
  procName = self->_procName;
  v30[0] = kOSALogMetadataAppName;
  v30[1] = @"app_name";
  v31[0] = procName;
  v31[1] = procName;
  v30[2] = @"slice_uuid";
  v29 = [(OSACrashReport *)self slice_uuid];
  v31[2] = v29;
  v30[3] = @"build_version";
  v4 = [(NSDictionary *)self->_bundle_info objectForKeyedSubscript:kCFBundleVersionKey];
  if (v4)
  {
    v5 = [(NSDictionary *)self->_bundle_info objectForKeyedSubscript:kCFBundleVersionKey];
  }

  else
  {
    v5 = &stru_1000463C0;
  }

  v28 = v5;
  v31[3] = v5;
  v30[4] = @"app_version";
  v6 = [(OSACrashReport *)self short_vers];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = &stru_1000463C0;
  }

  v31[4] = v8;
  v30[5] = @"is_first_party";
  v9 = [NSNumber numberWithBool:self->_is_first_party];
  v31[5] = v9;
  v30[6] = @"share_with_app_devs";
  is_simulated = self->_is_simulated;
  if (is_simulated)
  {
    v11 = 0;
  }

  else
  {
    v27 = +[OSASystemConfiguration sharedInstance];
    v11 = [v27 optIn3rdParty];
  }

  v12 = [NSNumber numberWithBool:v11];
  v31[6] = v12;
  v30[7] = kOSALogMetadataIncidentID;
  v13 = [(OSACrashReport *)self incidentID];
  v31[7] = v13;
  v30[8] = @"platform";
  v14 = [NSNumber numberWithUnsignedInt:self->_platform];
  v31[8] = v14;
  v15 = [NSDictionary dictionaryWithObjects:v31 forKeys:v30 count:9];
  v16 = [v15 mutableCopy];

  if (!is_simulated)
  {
  }

  if (v4)
  {
  }

  v17 = [(OSACrashReport *)self etlKey];

  if (v17)
  {
    v18 = [(OSACrashReport *)self etlKey];
    [v16 setObject:v18 forKeyedSubscript:@"etl_key"];
  }

  bundle_id = self->_bundle_id;
  if (bundle_id)
  {
    [v16 setObject:bundle_id forKeyedSubscript:kOSALogMetadataBundleID];
  }

  if (self->_is_simulated)
  {
    [v16 setObject:&__kCFBooleanTrue forKeyedSubscript:@"is_simulated"];
  }

  if (self->_is_beta)
  {
    [v16 setObject:&__kCFBooleanTrue forKeyedSubscript:@"is_beta"];
    v20 = [(NSDictionary *)self->_store_info objectForKeyedSubscript:@"storeCohortMetadata"];

    if (v20)
    {
      v21 = [(NSDictionary *)self->_store_info objectForKeyedSubscript:@"storeCohortMetadata"];
      [v16 setObject:v21 forKeyedSubscript:@"app_cohort"];
    }
  }

  adam_id = self->_adam_id;
  if (adam_id)
  {
    [v16 setObject:adam_id forKeyedSubscript:@"adam_id"];
  }

  exit_snapshot = self->_exit_snapshot;
  if (exit_snapshot && exit_snapshot->ers_namespace == 20 && self->_exit_payload && self->_exit_payload_length == 37)
  {
    v24 = [NSString stringWithUTF8String:?];
    [v16 setObject:v24 forKeyedSubscript:@"correlationID"];
  }

  if (self->_sroute_id)
  {
    v25 = [NSNumber numberWithUnsignedInt:?];
    [v16 setObject:v25 forKeyedSubscript:@"sroute_id"];
  }

  [(OSACrashReport *)self addFieldsToHeader:v16];

  return v16;
}

- (id)slice_uuid
{
  if (self->_slice_uuid[0])
  {
    slice_uuid = self->_slice_uuid;
  }

  else
  {
    slice_uuid = "";
  }

  return [NSString stringWithUTF8String:slice_uuid];
}

- (void)addFieldsToHeader:(id)a3
{
  v4 = a3;
  v6 = self;
  if (sub_100005D54())
  {
    isa = Bool._bridgeToObjectiveC()().super.super.isa;
    [v4 __swift_setObject:isa forKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

- (void)autopsyCorpse
{
  self->_is_full_corpse = 1;
  v3 = +[NSMutableArray array];
  taskImages = self->_taskImages;
  self->_taskImages = v3;

  kcd_addr_begin = 0;
  v7 = 0;
  if (task_map_corpse_info_64(mach_task_self_, self->_task, &kcd_addr_begin, &v7))
  {
    v5 = 1;
  }

  else
  {
    v5 = kcd_addr_begin == 0;
  }

  if (v5 || v7 == 0)
  {
    [*&self->OSAReport_opaque[OBJC_IVAR___OSAReport__notes] addObject:{@"Couldn't map kcdata from kernel", v7}];
  }

  else
  {
    [OSACrashReport parseCorpse:"parseCorpse:size:" size:?];
    mach_vm_deallocate(mach_task_self_, kcd_addr_begin, v7);
    [(OSACrashReport *)self finishExtraction];
  }
}

- (void)extractTerminationReason
{
  v3 = objc_opt_new();
  v4 = [(OSACrashReport *)self decode_reasonNamespace];
  if (self->_terminator_reason)
  {
    v5 = +[OSASystemConfiguration sharedInstance];
    if (([v5 appleInternal] & 1) != 0 || ((ers_namespace = self->_exit_snapshot->ers_namespace, ers_namespace <= 0x16) ? (v7 = ((1 << ers_namespace) & 0x700440) == 0) : (v7 = 1), !v7))
    {

LABEL_8:
      v8 = [(NSString *)self->_terminator_reason componentsSeparatedByString:@"\n"];
      v9 = [v8 valueForKey:@"stringByTrimming"];
      v10 = [NSPredicate predicateWithFormat:@"SELF != ''"];
      v11 = [v9 filteredArrayUsingPredicate:v10];
      [v3 setObject:v11 forKeyedSubscript:@"reasons"];

      goto LABEL_9;
    }

    if (ers_namespace == 39)
    {
      goto LABEL_8;
    }
  }

LABEL_9:
  if (self->_exit_snapshot)
  {
    [v3 setObject:v4 forKeyedSubscript:@"namespace"];
    v12 = [NSNumber numberWithUnsignedLongLong:self->_exit_snapshot->ers_code];
    [v3 setObject:v12 forKeyedSubscript:@"code"];

    v13 = [NSNumber numberWithUnsignedLongLong:self->_exit_snapshot->ers_flags];
    [v3 setObject:v13 forKeyedSubscript:@"flags"];

    exit_snapshot = self->_exit_snapshot;
    if ((exit_snapshot->ers_flags & 0x10) != 0)
    {
      v21 = v4;
      AnalyticsSendEventLazy();

      exit_snapshot = self->_exit_snapshot;
    }

    switch(exit_snapshot->ers_namespace)
    {
      case 2u:
        v15 = [NSString stringWithFormat:@"%s", strsignal(exit_snapshot->ers_code)];
        [v3 setObject:v15 forKeyedSubscript:@"indicator"];
        goto LABEL_34;
      case 3u:
        v16 = [(OSACrashReport *)self decode_reasonCodeSigning];
        goto LABEL_33;
      case 6u:
        [(OSACrashReport *)self decode_reasonDyldWithInfo:v3];
        break;
      case 7u:
        v16 = [(OSACrashReport *)self decode_reasonLibxpc];
        goto LABEL_33;
      case 9u:
        v16 = [(OSACrashReport *)self decode_reasonExec];
        goto LABEL_33;
      case 0xAu:
        v16 = [(OSACrashReport *)self decode_reasonCarousel];
        goto LABEL_33;
      case 0xBu:
        v16 = [(OSACrashReport *)self decode_reasonTcc];
        goto LABEL_33;
      case 0xDu:
        v16 = [(OSACrashReport *)self decode_reasonCoreAnimation];
        goto LABEL_33;
      case 0x12u:
        v16 = [(OSACrashReport *)self decode_reasonLibSystem];
        goto LABEL_33;
      case 0x14u:
        v16 = [(OSACrashReport *)self decode_reasonWatchdog];
        goto LABEL_33;
      case 0x15u:
        v16 = [(OSACrashReport *)self decode_reasonMetal];
        goto LABEL_33;
      case 0x16u:
        v16 = [(OSACrashReport *)self decode_reasonWatchKit];
        goto LABEL_33;
      case 0x19u:
        v16 = [(OSACrashReport *)self decode_reasonSandbox];
        goto LABEL_33;
      case 0x1Du:
        v16 = [(OSACrashReport *)self decode_reasonBTC];
        goto LABEL_33;
      case 0x1Eu:
        v16 = [(OSACrashReport *)self decode_reasonPortSpace];
        goto LABEL_33;
      case 0x20u:
        v16 = [(OSACrashReport *)self decode_reasonBacklightServices];
        goto LABEL_33;
      case 0x22u:
        v16 = [(OSACrashReport *)self decode_reasonRosetta];
        goto LABEL_33;
      case 0x26u:
        v16 = [(OSACrashReport *)self decode_reasonRealityKit];
LABEL_33:
        v15 = v16;
        [v3 addEntriesFromDictionary:v16];
LABEL_34:

        break;
      default:
        break;
    }
  }

  if (self->_terminator_pid)
  {
    v17 = [NSNumber numberWithInt:?];
    [v3 setObject:v17 forKeyedSubscript:@"byPid"];

    terminator_proc = self->_terminator_proc;
    if (terminator_proc)
    {
      [v3 setObject:terminator_proc forKeyedSubscript:@"byProc"];
    }
  }

  v19 = [NSDictionary dictionaryWithDictionary:v3];
  terminationReason = self->_terminationReason;
  self->_terminationReason = v19;
}

- (void)finishExtraction
{
  v2 = self;
  sub_100006564();
}

- (void)validateProcName
{
  procName = self->_procName;
  v4 = [NSCharacterSet characterSetWithRange:0, 1];
  v5 = [(NSString *)procName rangeOfCharacterFromSet:v4];

  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = [(NSString *)self->_procName substringToIndex:v5];
    v7 = self->_procName;
    self->_procName = v6;
  }

  v8 = [(NSString *)self->_procName length];
  v9 = self->_procName;
  if (v8)
  {
    if ([(NSString *)v9 length]< 0x41)
    {
      return;
    }

    v10 = [(NSString *)self->_procName substringToIndex:64];
    v9 = self->_procName;
  }

  else
  {
    v10 = @"Unknown";
  }

  self->_procName = &v10->isa;
}

- (id)decode_reasonNamespace
{
  if (self->_exit_snapshot)
  {
    v7[0] = &off_10004D9E8;
    v7[1] = &off_10004DA00;
    v8[0] = @"JETSAM";
    v8[1] = @"SIGNAL";
    v7[2] = &off_10004DA18;
    v7[3] = &off_10004DA30;
    v8[2] = @"CODESIGNING";
    v8[3] = @"HANGTRACER";
    v7[4] = &off_10004DA48;
    v7[5] = &off_10004DA60;
    v8[4] = @"TEST";
    v8[5] = @"DYLD";
    v7[6] = &off_10004DA78;
    v7[7] = &off_10004DA90;
    v8[6] = @"LIBXPC";
    v8[7] = @"OBJC";
    v7[8] = &off_10004DAA8;
    v7[9] = &off_10004DAC0;
    v8[8] = @"EXEC";
    v8[9] = @"FRONTBOARD";
    v7[10] = &off_10004DAD8;
    v7[11] = &off_10004DAF0;
    v8[10] = @"TCC";
    v8[11] = @"REPORTCRASH";
    v7[12] = &off_10004DB08;
    v7[13] = &off_10004DB20;
    v8[12] = @"COREANIMATION";
    v8[13] = @"AGGREGATED";
    v7[14] = &off_10004DB38;
    v7[15] = &off_10004DB50;
    v8[14] = @"RUNNINGBOARD";
    v8[15] = @"SKYWALK";
    v7[16] = &off_10004DB68;
    v7[17] = &off_10004DB80;
    v8[16] = @"SETTINGS";
    v8[17] = @"LIBSYSTEM";
    v7[18] = &off_10004DB98;
    v7[19] = &off_10004DBB0;
    v8[18] = @"FOUNDATION";
    v8[19] = @"WATCHDOG";
    v7[20] = &off_10004DBC8;
    v7[21] = &off_10004DBE0;
    v8[20] = @"METAL";
    v8[21] = @"WATCHKIT";
    v7[22] = &off_10004DBF8;
    v7[23] = &off_10004DC10;
    v8[22] = @"GUARD";
    v8[23] = @"ANALYTICS";
    v7[24] = &off_10004DC28;
    v7[25] = &off_10004DC40;
    v8[24] = @"SANDBOX";
    v8[25] = @"SECURITY";
    v7[26] = &off_10004DC58;
    v7[27] = &off_10004DC70;
    v8[26] = @"ENDPOINTSECURITY";
    v8[27] = @"PAC_EXCEPTION";
    v7[28] = &off_10004DC88;
    v7[29] = &off_10004DCA0;
    v8[28] = @"BLUETOOTH_CHIP";
    v8[29] = @"PORT_SPACE";
    v7[30] = &off_10004DCB8;
    v7[31] = &off_10004DCD0;
    v8[30] = @"WEBKIT";
    v8[31] = @"BACKLIGHTSERVICES";
    v7[32] = &off_10004DCE8;
    v7[33] = &off_10004DD00;
    v8[32] = @"ROSETTA";
    v8[33] = @"OS_REASON_AUDIO";
    v7[34] = &off_10004DD18;
    v7[35] = &off_10004DD30;
    v8[34] = @"REALITYKIT";
    v8[35] = @"MTE_FAIL";
    v3 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:36];
    v4 = [NSNumber numberWithUnsignedInt:self->_exit_snapshot->ers_namespace];
    v5 = [v3 objectForKeyedSubscript:v4];

    if (!v5)
    {
      v5 = [NSString stringWithFormat:@"<0x%X>", self->_exit_snapshot->ers_namespace];
    }
  }

  else
  {
    v5 = @"<NO_NS>";
  }

  return v5;
}

- (void)decode_os_log_fault_payload
{
  if (!self->_new_payload && self->_exit_payload)
  {
    v3 = objc_opt_new();
    new_payload = self->_new_payload;
    self->_new_payload = v3;

    exit_payload = self->_exit_payload;
    v6 = +[OSASystemConfiguration sharedInstance];
    v7 = [v6 appleInternal];

    if (v7)
    {
      v8 = [(OSACrashReport *)self safe_encoder:exit_payload[4]];
      if (v8)
      {
        [(NSMutableDictionary *)self->_new_payload setObject:v8 forKeyedSubscript:@"message"];
      }

      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Missing input data for os_log_fault message string", buf, 2u);
      }
    }

    v9 = [(OSACrashReport *)self safe_encoder:exit_payload[3]];
    if (v9)
    {
      [(NSMutableDictionary *)self->_new_payload setObject:v9 forKeyedSubscript:@"category"];
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Missing input data for os_log_fault category string", v12, 2u);
    }

    v10 = [(OSACrashReport *)self safe_encoder:exit_payload[2]];
    if (v10)
    {
      [(NSMutableDictionary *)self->_new_payload setObject:v10 forKeyedSubscript:@"subsystem"];
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Missing input data for os_log_fault subsystem string", v11, 2u);
    }
  }
}

- (id)problemType
{
  if (self->_is_lightweight_corpse)
  {
    v2 = @"308";
  }

  else
  {
    v2 = @"309";
  }

  if (self->_exceptionType == 11)
  {
    if (*self->_exceptionCode >> 61 == 5)
    {
      return @"327";
    }

    v2 = @"385";
  }

  return v2;
}

- (id)decode_reasonLibSystem
{
  v3 = objc_opt_new();
  v22[0] = &off_10004DD48;
  v22[1] = &off_10004DD60;
  v23[0] = @"Thread parking or terminating still owning a workloop";
  v23[1] = @"Application Triggered Fault";
  v22[2] = &off_10004DD78;
  v22[3] = &off_10004DD90;
  v23[2] = @"Application Triggered Fault";
  v23[3] = @"SecInit Initializer";
  v22[4] = &off_10004DDA8;
  v23[4] = @"PThread Corruption";
  v4 = [NSDictionary dictionaryWithObjects:v23 forKeys:v22 count:5];
  v5 = [NSNumber numberWithUnsignedLongLong:self->_exit_snapshot->ers_code];
  v6 = [v4 objectForKeyedSubscript:v5];
  [v3 setObject:v6 forKeyedSubscript:@"indicator"];

  v7 = objc_opt_new();
  if (self->_workloop_id)
  {
    v8 = [NSString stringWithFormat:@"Workloop: %#llx", self->_workloop_id];
    [v7 addObject:v8];
  }

  if (self->_queue_serial_no)
  {
    v9 = [NSString stringWithFormat:@"Dispatch Queue: #%lld", self->_queue_serial_no];
    [v7 addObject:v9];
  }

  v10 = +[OSASystemConfiguration sharedInstance];
  if (![v10 appleInternal] || !self->_exit_payload || !self->_exit_payload_length)
  {

    goto LABEL_11;
  }

  ers_code = self->_exit_snapshot->ers_code;
  if (ers_code == 2)
  {
  }

  else
  {

    if (ers_code != 5)
    {
      goto LABEL_11;
    }
  }

  v13 = self->_exit_snapshot->ers_code;
  if (v13 == 5)
  {
    [(OSACrashReport *)self decode_os_log_fault_payload];
    v20 = [(NSMutableDictionary *)self->_new_payload objectForKeyedSubscript:@"message"];

    if (v20)
    {
      v21 = [(NSMutableDictionary *)self->_new_payload objectForKeyedSubscript:@"message"];
      [v7 addObject:v21];
    }
  }

  else if (v13 == 2)
  {
    v14 = (4 * self->_exit_payload_length) | 1;
    v15 = malloc_type_malloc(v14, 0xDE85036EuLL);
    v16 = v15;
    exit_payload = self->_exit_payload;
    exit_payload_length = self->_exit_payload_length;
    if (!exit_payload[exit_payload_length - 1])
    {
      self->_exit_payload_length = --exit_payload_length;
    }

    if (v15)
    {
      if (strnvisx(v15, v14, exit_payload, exit_payload_length, 18) != -1)
      {
        v19 = [NSString stringWithUTF8String:v16];
        [v7 addObject:v19];
      }

      free(v16);
    }
  }

LABEL_11:
  if ([v7 count])
  {
    [v3 setObject:v7 forKeyedSubscript:@"details"];
  }

  return v3;
}

- (id)decode_cpuType
{
  cpuType = self->_cpuType;
  if (self->_is64Bit && cpuType == 12)
  {
    cpuType = 16777228;
    self->_cpuType = 16777228;
  }

  return _OSACPUTypeToString(cpuType, a2);
}

- (BOOL)isExceptionNonFatal
{
  exceptionType = self->_exceptionType;
  if (exceptionType == 12)
  {
    return *self->_exceptionCode >> 61 == 3;
  }

  if (exceptionType != 11 || self->_exit_snapshot)
  {
    return 0;
  }

  v4 = *self->_exceptionCode;
  return v4 >> 61 != 1 || (v4 & 0x1C00000000000000) != 0x800000000000000;
}

- (id)decode_signal
{
  signal = self->_signal;
  v4 = &stru_1000463C0;
  switch(signal)
  {
    case 0:
      break;
    case 1:
      v4 = @"SIGHUP";
      break;
    case 2:
      v4 = @"SIGINT";
      break;
    case 3:
      v4 = @"SIGQUIT";
      break;
    case 4:
      v4 = @"SIGILL";
      break;
    case 5:
      v4 = @"SIGTRAP";
      break;
    case 6:
      v4 = @"SIGABRT";
      break;
    case 7:
      v4 = @"SIGEMT";
      break;
    case 8:
      v4 = @"SIGFPE";
      break;
    case 9:
      if ((self->_cs_status & 0x1000000) != 0)
      {
        v5 = @"SIGKILL - CODESIGNING";
      }

      else
      {
        v5 = @"SIGKILL";
      }

      v4 = v5;
      break;
    case 10:
      v4 = @"SIGBUS";
      break;
    case 11:
      v4 = @"SIGSEGV";
      break;
    case 12:
      v4 = @"SIGSYS";
      break;
    case 13:
      v4 = @"SIGPIPE";
      break;
    case 14:
      v4 = @"SIGALRM";
      break;
    case 15:
      v4 = @"SIGTRM";
      break;
    case 16:
      v4 = @"SIGURG";
      break;
    case 17:
      v4 = @"SIGSTOP";
      break;
    case 18:
      v4 = @"SIGTSTP";
      break;
    case 19:
      v4 = @"SIGCONT";
      break;
    case 20:
      v4 = @"SIGCHLD";
      break;
    case 21:
      v4 = @"SIGTTIN";
      break;
    case 22:
      v4 = @"SIGTTOU";
      break;
    case 23:
      v4 = @"SIGIO";
      break;
    case 24:
      v4 = @"SIGXCPU";
      break;
    case 25:
      v4 = @"SIGXFSZ";
      break;
    case 26:
      v4 = @"SIGVTALRM";
      break;
    case 27:
      v4 = @"SIGPROF";
      break;
    case 28:
      v4 = @"SIGWINCH";
      break;
    case 29:
      v4 = @"SIGINFO";
      break;
    case 30:
      v4 = @"SIGUSR1";
      break;
    case 31:
      v4 = @"SIGUSR2";
      break;
    default:
      v4 = [NSString stringWithFormat:@"Signal %d", signal];
      break;
  }

  return v4;
}

- (void)_mergeFormattedASI
{
  v3 = self->_asiFormattedFiltered;
  if (self->_is_first_party)
  {
    v4 = self->_asiFormattedSafe;

    v3 = v4;
  }

  v5 = +[OSASystemConfiguration sharedInstance];
  v6 = [v5 appleInternal];

  if (v6)
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100014A9C;
    v11[3] = &unk_1000453A8;
    v11[4] = self;
    [(NSMutableDictionary *)v3 enumerateKeysAndObjectsUsingBlock:v11];
    v7 = self->_asiFormattedInternal;

    v3 = v7;
  }

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100014B7C;
  v10[3] = &unk_1000453A8;
  v10[4] = self;
  [(NSMutableDictionary *)v3 enumerateKeysAndObjectsUsingBlock:v10];
  asiFormattedInternal = self->_asiFormattedInternal;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100014C5C;
  v9[3] = &unk_1000453A8;
  v9[4] = self;
  [(NSMutableDictionary *)asiFormattedInternal enumerateKeysAndObjectsUsingBlock:v9];
}

- (void)writeReportBodyWithSectionWriter:(id)a3
{
  v4 = _Block_copy(a3);
  _Block_copy(v4);
  v5 = self;
  sub_100028044(v5, v4);
  _Block_release(v4);
  _Block_release(v4);
}

- (id)getTrialCache
{
  if (qword_100054108 != -1)
  {
    sub_1000308A4();
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000870C;
  block[3] = &unk_100045258;
  block[4] = self;
  dispatch_sync(qword_100054100, block);
  return qword_1000540F8;
}

- (id)decode_exceptionType
{
  exceptionType = self->_exceptionType;
  if ((exceptionType - 1) >= 0xD)
  {
    v4 = [NSString stringWithFormat:@"%08X", exceptionType];
  }

  else
  {
    v4 = off_1000457F0[(exceptionType - 1)];
  }

  return v4;
}

- (id)appleCareDetails
{
  v3 = [(OSACrashReport *)self decode_exceptionCodes];
  v4 = [v3 allValues];
  v5 = [v4 componentsJoinedByString:@" "];
  v6 = [v5 stringByReplacingOccurrencesOfString:@" withString:{", @"-"}];

  procName = self->_procName;
  v12 = &off_10004D9D0;
  v13 = procName;
  bundle_id = self->_bundle_id;
  if (!bundle_id)
  {
    bundle_id = &stru_1000463C0;
  }

  v9 = [NSNumber numberWithBool:self->_is_simulated, v12, v13, bundle_id, v6];
  v14 = v9;
  v10 = [NSArray arrayWithObjects:&v12 count:5];

  return v10;
}

- (id)create_os_fault_section
{
  v3 = objc_opt_new();
  [v3 setObject:self->_procName forKeyedSubscript:@"process"];
  terminator_reason = self->_terminator_reason;
  if (terminator_reason)
  {
    [v3 setObject:terminator_reason forKeyedSubscript:@"format"];
  }

  [(OSACrashReport *)self decode_os_log_fault_payload];
  v5 = [(NSMutableDictionary *)self->_new_payload objectForKeyedSubscript:@"message"];

  if (v5)
  {
    v6 = [(NSMutableDictionary *)self->_new_payload objectForKeyedSubscript:@"message"];
    [v3 setObject:v6 forKeyedSubscript:@"message"];
  }

  v7 = [(NSMutableDictionary *)self->_new_payload objectForKeyedSubscript:@"category"];
  [v3 setObject:v7 forKeyedSubscript:@"category"];

  v8 = [(NSMutableDictionary *)self->_new_payload objectForKeyedSubscript:@"subsystem"];
  [v3 setObject:v8 forKeyedSubscript:@"subsystem"];

  return v3;
}

- (id)decode_exceptionCodes
{
  v3 = objc_opt_new();
  v4 = [(OSACrashReport *)self decode_exceptionType];
  [v3 setObject:v4 forKeyedSubscript:@"type"];

  if (self->_signal)
  {
    v5 = [(OSACrashReport *)self decode_signal];
    [v3 setObject:v5 forKeyedSubscript:@"signal"];
  }

  exceptionType = self->_exceptionType;
  switch(exceptionType)
  {
    case 12:
      v14 = [(OSACrashReport *)self codeZeroForGuardException];
      if (*self->_exceptionCode != v14 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v15 = *self->_exceptionCode;
        *buf = 134218240;
        *v70 = v15;
        *&v70[8] = 2048;
        *&v70[10] = v14;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "EXC_GUARD code zero: 0x%llX -> 0x%llX", buf, 0x16u);
      }

      v16 = v14 >> 61;
      if (v14 >> 61 <= 3)
      {
        if (v16 != 1)
        {
          if (v16 != 2)
          {
            if (v16 == 3)
            {
              [v3 setObject:@"GUARD_TYPE_USER" forKeyedSubscript:@"subtype"];
              v17 = [NSNumber numberWithUnsignedInt:v14];
              [v3 setObject:v17 forKeyedSubscript:@"namespc"];

              v18 = [NSNumber numberWithLongLong:self->_exceptionCode[1]];
              [v3 setObject:v18 forKeyedSubscript:@"reason"];

              [NSString stringWithFormat:@"namespc %u reason_code 0x%016qx", v14, self->_exceptionCode[1], v61];
              goto LABEL_103;
            }

LABEL_66:
            v33 = [NSString stringWithFormat:@"GUARD_TYPE_0x%llX", v14 >> 61];
            [v3 setObject:v33 forKeyedSubscript:@"subtype"];

            [NSString stringWithFormat:@"unknown guard type (0x%016qx, 0x%016qx)", v14, self->_exceptionCode[1], v61];
            goto LABEL_103;
          }

          [v3 setObject:@"GUARD_TYPE_FD" forKeyedSubscript:@"subtype"];
          v34 = HIDWORD(v14) & 0x1FFFFFFF;
          if ((HIDWORD(v14) & 0x1FFFFFFFu) <= 7)
          {
            switch(v34)
            {
              case 1:
                v31 = @"CLOSE";
                goto LABEL_138;
              case 2:
                v31 = @"DUP";
                goto LABEL_138;
              case 4:
                v31 = @"NOCLOEXEC";
                goto LABEL_138;
            }
          }

          else if ((HIDWORD(v14) & 0x1FFFFFFFu) > 0x1F)
          {
            if (v34 == 32)
            {
              v31 = @"MISMATCH";
              goto LABEL_138;
            }

            if (v34 == 64)
            {
              v31 = @"WRITE";
              goto LABEL_138;
            }
          }

          else
          {
            if (v34 == 8)
            {
              v31 = @"SOCKET_IPC";
              goto LABEL_138;
            }

            if (v34 == 16)
            {
              v31 = @"FILEPORT";
LABEL_138:
              v72 = v31;
              v38 = [NSArray arrayWithObjects:&v72 count:1];
              [v3 setObject:v38 forKeyedSubscript:@"violations"];

              v39 = [NSNumber numberWithUnsignedInt:v14];
              [v3 setObject:v39 forKeyedSubscript:@"fd"];

              v40 = [NSNumber numberWithLongLong:self->_exceptionCode[1]];
              [v3 setObject:v40 forKeyedSubscript:@"guardId"];

              [NSString stringWithFormat:@" %@ on file descriptor %u (guarded with 0x%016qx)", v31, v14, self->_exceptionCode[1]];
              v52 = LABEL_218:;
              [v3 setObject:v52 forKeyedSubscript:@"message"];

LABEL_219:
              break;
            }
          }

          v31 = [NSString stringWithFormat:@"Unknown GUARD_TYPE_FD flavor %d", HIDWORD(v14) & 0x1FFFFFFF];
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109376;
            *v70 = HIDWORD(v14) & 0x1FFFFFFF;
            *&v70[4] = 2048;
            *&v70[6] = v14;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Unknown GUARD_TYPE_FD flavor %d in code %lld", buf, 0x12u);
          }

          goto LABEL_138;
        }

        [v3 setObject:@"GUARD_TYPE_MACH_PORT" forKeyedSubscript:@"subtype"];
        v30 = HIDWORD(v14) & 0x1FFFFFFF;
        if ((HIDWORD(v14) & 0x1FFFFFFFu) > 0x1FF)
        {
          if ((HIDWORD(v14) & 0x1FFFFFFFu) >= 0x40000)
          {
            if ((HIDWORD(v14) & 0x1FFFFFFFu) <= 0x100001)
            {
              if ((HIDWORD(v14) & 0x1FFFFFFFu) < 0x100000)
              {
                if (v30 == 0x40000)
                {
                  v31 = @"SEND_INVALID_RIGHT";
                  goto LABEL_214;
                }

                if (v30 == 0x80000)
                {
                  v31 = @"RCV_INVALID_NAME";
                  goto LABEL_214;
                }

                goto LABEL_212;
              }

              if (v30 == 0x100000)
              {
                v31 = @"RCV_GUARDED_DESC";
              }

              else
              {
                v31 = @"SERVICE_PORT_VIOLATION_NON_FATAL";
              }

              goto LABEL_214;
            }

            if ((HIDWORD(v14) & 0x1FFFFFFFu) <= 0x100004)
            {
              if (v30 == 1048578)
              {
                v31 = @"PROVISIONAL_REPLY_PORT";
                goto LABEL_214;
              }

              if (v30 == 1048579)
              {
                v31 = @"OOL_PORT_ARRAY_CREATION";
                goto LABEL_214;
              }
            }

            else
            {
              switch(v30)
              {
                case 0x100005:
                  v31 = @"REPLY_PORT_SINGLE_SO_RIGHT";
                  goto LABEL_214;
                case 0x200000:
                  v31 = @"OVERDEALLOC_SOFT";
                  goto LABEL_214;
                case 0x400000:
                  v31 = @"ILLEGALMOVE_SOFT";
                  goto LABEL_214;
              }
            }
          }

          else if ((HIDWORD(v14) & 0x1FFFFFFFu) < 0x2000)
          {
            if ((HIDWORD(v14) & 0x1FFFFFFFu) > 0x7FF)
            {
              if (v30 == 2048)
              {
                v31 = @"INVALID_ARGUMENT";
                goto LABEL_214;
              }

              if (v30 == 4096)
              {
                v31 = @"RIGHT_EXISTS";
                goto LABEL_214;
              }
            }

            else
            {
              if (v30 == 512)
              {
                v31 = @"INVALID_NAME";
                goto LABEL_214;
              }

              if (v30 == 1024)
              {
                v31 = @"INVALID_VALUE";
                goto LABEL_214;
              }
            }
          }

          else if ((HIDWORD(v14) & 0x1FFFFFFFu) < 0x8000)
          {
            if (v30 == 0x2000)
            {
              v31 = @"KERN_NO_SPACE";
              goto LABEL_214;
            }

            if (v30 == 0x4000)
            {
              v31 = @"KERN_FAILURE";
              goto LABEL_214;
            }
          }

          else
          {
            switch(v30)
            {
              case 0x8000:
                v31 = @"KERN_RESOURCE";
                goto LABEL_214;
              case 0x10000:
                v31 = @"SEND_INVALID_REPLY";
                goto LABEL_214;
              case 0x20000:
                v31 = @"SEND_INVALID_VOUCHER";
                goto LABEL_214;
            }
          }
        }

        else
        {
          if ((HIDWORD(v14) & 0x1FFFFFFFu) <= 9)
          {
            if ((HIDWORD(v14) & 0x1FFFFFFFu) > 4)
            {
              if ((HIDWORD(v14) & 0x1FFFFFFFu) <= 6)
              {
                if (v30 == 5)
                {
                  v31 = @"THREAD_SET_STATE";
                }

                else
                {
                  v31 = @"SET_EXCEPTION_BEHAVIOR";
                }
              }

              else if (v30 == 7)
              {
                v31 = @"SERVICE_PORT_VIOLATION_FATAL";
              }

              else if (v30 == 8)
              {
                v31 = @"UNGUARDED";
              }

              else
              {
                v31 = @"KOBJECT_REPLY_PORT_SEMANTICS";
              }

              goto LABEL_214;
            }

            if ((HIDWORD(v14) & 0x1FFFFFFFu) <= 2)
            {
              if (v30 == 1)
              {
                v31 = @"DESTROY";
                goto LABEL_214;
              }

              if (v30 == 2)
              {
                v31 = @"MOD_REFS";
                goto LABEL_214;
              }

              goto LABEL_212;
            }

            if (v30 == 3)
            {
              v31 = @"INVALID_OPTIONS";
            }

            else
            {
              v31 = @"SET_CONTEXT";
            }

LABEL_214:
            v71 = v31;
            v49 = [NSArray arrayWithObjects:&v71 count:1];
            [v3 setObject:v49 forKeyedSubscript:@"violations"];

            v50 = [NSNumber numberWithUnsignedInt:v14];
            [v3 setObject:v50 forKeyedSubscript:@"port"];

            v51 = [NSNumber numberWithLongLong:self->_exceptionCode[1]];
            [v3 setObject:v51 forKeyedSubscript:@"guardId"];

            if (v14 && v30 == 3)
            {
              [NSString stringWithFormat:@"mach_msg_trap() called with msgh_id %u. The trap is not allowed on this platform.", v14, v60, v61];
            }

            else
            {
              [NSString stringWithFormat:@" %@ on mach port %u (guarded with 0x%016qx)", v31, v14, self->_exceptionCode[1]];
            }

            goto LABEL_218;
          }

          if ((HIDWORD(v14) & 0x1FFFFFFFu) <= 0x40)
          {
            if ((HIDWORD(v14) & 0x1FFFFFFFu) > 0x1F)
            {
              if (v30 == 32)
              {
                v31 = @"ILLEGAL_MOVE";
                goto LABEL_214;
              }

              if (v30 == 64)
              {
                v31 = @"STRICT_REPLY";
                goto LABEL_214;
              }
            }

            else
            {
              if (v30 == 10)
              {
                v31 = @"REQUIRE_REPLY_PORT_SEMANTICS";
                goto LABEL_214;
              }

              if (v30 == 16)
              {
                v31 = @"INCORRECT_GUARD";
                goto LABEL_214;
              }
            }

            goto LABEL_212;
          }

          if ((HIDWORD(v14) & 0x1FFFFFFFu) <= 0x42)
          {
            if (v30 == 65)
            {
              v31 = @"INVALID_NOTIFICATION_REQ";
            }

            else
            {
              v31 = @"INVALID_MPO_ENTITLEMENT";
            }

            goto LABEL_214;
          }

          switch(v30)
          {
            case 0x43:
              v31 = @"DESCRIPTOR_VIOLATION";
              goto LABEL_214;
            case 0x80:
              v31 = @"MSG_FILTERED";
              goto LABEL_214;
            case 0x100:
              v31 = @"INVALID_RIGHT";
              goto LABEL_214;
          }
        }

LABEL_212:
        v31 = [NSString stringWithFormat:@"Unknown GUARD_TYPE_MACH_PORT flavor %d", HIDWORD(v14) & 0x1FFFFFFF];
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109376;
          *v70 = HIDWORD(v14) & 0x1FFFFFFF;
          *&v70[4] = 2048;
          *&v70[6] = v14;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Unknown GUARD_TYPE_MACH_PORT flavor %d in code %lld", buf, 0x12u);
        }

        goto LABEL_214;
      }

      if (v16 != 4)
      {
        if (v16 != 5)
        {
          if (v16 == 6)
          {
            [v3 setObject:@"GUARD_TYPE_REJECTED_SC" forKeyedSubscript:@"subtype"];
            if (v14)
            {
              v21 = [NSNumber numberWithUnsignedInt:v14];
              [v3 setObject:v21 forKeyedSubscript:@"machTrap"];

              v22 = [NSNumber numberWithLongLong:self->_exceptionCode[1]];
              [v3 setObject:v22 forKeyedSubscript:@"number"];

              [NSString stringWithFormat:@"mach_trap %u number 0x%016qx", v14, self->_exceptionCode[1], v61];
            }

            else
            {
              v37 = [NSNumber numberWithLongLong:self->_exceptionCode[1]];
              [v3 setObject:v37 forKeyedSubscript:@"syscall"];

              [NSString stringWithFormat:@"syscall 0x%016qx", self->_exceptionCode[1], v60, v61];
            }

            goto LABEL_103;
          }

          goto LABEL_66;
        }

        [v3 setObject:@"GUARD_TYPE_VIRT_MEMORY" forKeyedSubscript:@"subtype"];
        v35 = HIDWORD(v14) & 0x1FFFFFFF;
        if ((HIDWORD(v14) & 0x1FFFFFFFu) <= 7)
        {
          if ((HIDWORD(v14) & 0x1FFFFFFFu) > 3)
          {
            if (v35 == 4)
            {
              v31 = @"RECLAIM_INDEX_FAILURE";
              goto LABEL_171;
            }

            if (v35 == 7)
            {
              v31 = @"GUARD_EXC_SEC_ACCESS_FAULT";
              goto LABEL_171;
            }
          }

          else
          {
            if (v35 == 1)
            {
              v31 = @"DEALLOC_GAP";
              goto LABEL_171;
            }

            if (v35 == 2)
            {
              v31 = @"RECLAIM_COPYIO_FAILURE";
              goto LABEL_171;
            }
          }
        }

        else if ((HIDWORD(v14) & 0x1FFFFFFFu) <= 0xC7)
        {
          if (v35 == 8)
          {
            v31 = @"RECLAIM_DEALLOCATE_FAILURE";
            goto LABEL_171;
          }

          if (v35 == 64)
          {
            v31 = @"GUARD_EXC_SEC_ASYNC_ACCESS_FAULT";
            goto LABEL_171;
          }
        }

        else
        {
          switch(v35)
          {
            case 0xC8:
              v31 = @"GUARD_EXC_MTE_SYNC_FAULT";
              goto LABEL_171;
            case 0xC9:
              v31 = @"GUARD_EXC_MTE_ASYNC_USER_FAULT";
              goto LABEL_171;
            case 0xCA:
              v31 = @"kGUARD_EXC_MTE_ASYNC_KERN_FAULT";
LABEL_171:
              v63 = v31;
              v47 = [NSArray arrayWithObjects:&v63 count:1];
              [v3 setObject:v47 forKeyedSubscript:@"flavors"];

              v48 = [NSNumber numberWithLongLong:self->_exceptionCode[1]];
              [v3 setObject:v48 forKeyedSubscript:@"offset"];

              [NSString stringWithFormat:@"offset=0x%016qx, flavor=0x%08x (%@)", self->_exceptionCode[1], v35, v31];
              goto LABEL_218;
          }
        }

        v31 = [NSString stringWithFormat:@"Unknown GUARD_TYPE_VIRT_MEMORY flavor %d", HIDWORD(v14) & 0x1FFFFFFF];
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109376;
          *v70 = HIDWORD(v14) & 0x1FFFFFFF;
          *&v70[4] = 2048;
          *&v70[6] = v14;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Unknown GUARD_TYPE_VIRT_MEMORY flavor %d in code %lld", buf, 0x12u);
        }

        goto LABEL_171;
      }

      [v3 setObject:@"GUARD_TYPE_VN" forKeyedSubscript:@"subtype"];
      buf[0] = 0;
      proc_name(v14, buf, 0x400u);
      v32 = HIDWORD(v14) & 0x1FFFFFFF;
      if ((HIDWORD(v14) & 0x1FFFFFFFu) > 0xF)
      {
        if ((HIDWORD(v14) & 0x1FFFFFFFu) > 0x3F)
        {
          if (v32 == 64)
          {
            v31 = @"VNG_EXCHDATA";
            goto LABEL_161;
          }

          if (v32 == 128)
          {
            v31 = @"VNG_PERMISSIONS";
            goto LABEL_161;
          }
        }

        else
        {
          if (v32 == 16)
          {
            v31 = @"VNG_TRUNC_OTHER";
            goto LABEL_161;
          }

          if (v32 == 32)
          {
            v31 = @"VNG_LINK";
            goto LABEL_161;
          }
        }
      }

      else if ((HIDWORD(v14) & 0x1FFFFFFFu) > 3)
      {
        if (v32 == 4)
        {
          v31 = @"VNG_UNLINK";
          goto LABEL_161;
        }

        if (v32 == 8)
        {
          v31 = @"VNG_WRITE_OTHER";
          goto LABEL_161;
        }
      }

      else
      {
        if (v32 == 1)
        {
          v31 = @"VNG_RENAME_TO";
          goto LABEL_161;
        }

        if (v32 == 2)
        {
          v31 = @"VNG_RENAME_FROM";
LABEL_161:
          v41 = [NSMutableString stringWithFormat:@"id=0x%016qx, pid=%u", self->_exceptionCode[1], v14];
          v42 = v41;
          if (buf[0])
          {
            [v41 appendFormat:@", process=%s", buf];
            v43 = [NSString stringWithUTF8String:buf];
            [v3 setObject:v43 forKeyedSubscript:@"process"];
          }

          [v42 appendFormat:@", flavor=0x%08x", HIDWORD(v14) & 0x1FFFFFFF];
          [v42 appendFormat:@" (%@)", v31];
          v64 = v31;
          v44 = [NSArray arrayWithObjects:&v64 count:1];
          [v3 setObject:v44 forKeyedSubscript:@"flavors"];

          v45 = [NSNumber numberWithUnsignedInt:v14];
          [v3 setObject:v45 forKeyedSubscript:@"pid"];

          v46 = [NSNumber numberWithLongLong:self->_exceptionCode[1]];
          [v3 setObject:v46 forKeyedSubscript:@"guardId"];

          [v3 setObject:v42 forKeyedSubscript:@"message"];
          goto LABEL_219;
        }
      }

      v31 = [NSString stringWithFormat:@"Unknown GUARD_TYPE_VN flavor %d", HIDWORD(v14) & 0x1FFFFFFF];
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *v65 = 67109376;
        v66 = HIDWORD(v14) & 0x1FFFFFFF;
        v67 = 2048;
        v68 = v14;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Unknown GUARD_TYPE_VN flavor %d in code %lld", v65, 0x12u);
      }

      goto LABEL_161;
    case 11:
      v11 = *self->_exceptionCode;
      v12 = v11 >> 61;
      if (v11 >> 61 > 3)
      {
        switch(v12)
        {
          case 4uLL:
            [v3 setObject:@"IO" forKeyedSubscript:@"subtype"];
            [NSString stringWithFormat:@" (Limit %u MB) Observed %u MB over %u secs", *self->_exceptionCode & 0x7FFF, self->_exceptionCode[1] & 0x7FFF, *self->_exceptionCode >> 15];
            break;
          case 5uLL:
            [v3 setObject:@"THREADS" forKeyedSubscript:@"subtype"];
            [NSString stringWithFormat:@" (Limit %u threads) Crossed Thread Limit", *self->_exceptionCode & 0x7FFF, v60, v61];
            break;
          case 6uLL:
            [v3 setObject:@"PORTS" forKeyedSubscript:@"subtype"];
            [NSString stringWithFormat:@" (Limit %u ports) Crossed system-wide per-process Port Limit", *self->_exceptionCode & 0xFFFFFF, v60, v61];
            break;
          default:
            goto LABEL_220;
        }
      }

      else
      {
        v13 = (v11 >> 58) & 7;
        switch(v12)
        {
          case 1uLL:
            if (v13 == 2)
            {
              v29 = @"CPU_FATAL";
            }

            else
            {
              v29 = @"CPU";
            }

            [v3 setObject:v29 forKeyedSubscript:@"subtype"];
            [NSString stringWithFormat:@" (Limit %u%%) Observed %u%% over %u secs", *self->_exceptionCode & 0x7F, self->_exceptionCode[1] & 0x7F, *self->_exceptionCode >> 7];
            break;
          case 2uLL:
            [v3 setObject:@"WAKEUPS" forKeyedSubscript:@"subtype"];
            [NSString stringWithFormat:@" (Limit %u/sec) Observed %u/sec over %u secs", *self->_exceptionCode & 0xFFF, self->_exceptionCode[1] & 0xFFFFF, (*self->_exceptionCode >> 20) & 0xFFFFF];
            break;
          case 3uLL:
            [v3 setObject:@"MEMORY" forKeyedSubscript:@"subtype"];
            if ((v13 - 1) > 2)
            {
              v36 = @"Unknown memory exception type";
LABEL_104:
              [v3 setObject:v36 forKeyedSubscript:@"message"];

              goto LABEL_220;
            }

            [NSString stringWithFormat:off_100045858[v13 - 1], *self->_exceptionCode, v60, v61];
            break;
          default:
            goto LABEL_220;
        }
      }

      v36 = LABEL_103:;
      goto LABEL_104;
    case 1:
      v7 = [(OSACrashReport *)self isMTECrash];
      self->_crashingAddress = self->_exceptionCode[1];
      v8 = +[_TtC11ReportCrash11Environment hasFPAC];
      exceptionCode = self->_exceptionCode;
      if ((v8 & 1) != 0 || (v7 & 1) != 0 || self->_crashingAddress == exceptionCode[1])
      {
        v10 = sub_10001A0B0(*exceptionCode);
        [NSString stringWithFormat:@"%@ at 0x%016qx", v10, self->_exceptionCode[1], v61];
      }

      else
      {
        v10 = sub_10001A0B0(*exceptionCode);
        v23 = self->_exceptionCode[1];
        [NSString stringWithFormat:@"%@ at 0x%016qx -> 0x%016qx (possible pointer authentication failure)", v10, v23, self->_crashingAddress];
      }
      v24 = ;
      [v3 setObject:v24 forKeyedSubscript:@"subtype"];

      if (*self->_exceptionCode == 10)
      {
        if (self->_pageinStateCount)
        {
          v25 = self->_pageinState[0];
          if (v25)
          {
            v26 = [NSString stringWithFormat:@" FS pagein error: %d %s", v25, strerror(self->_pageinState[0])];
            [v3 setObject:v26 forKeyedSubscript:@"subtype"];
          }
        }
      }

      if (self->_isStackGuardPageBadAccess)
      {
        stackGuardPageBadAccessThreadNumber = self->_stackGuardPageBadAccessThreadNumber;
        if (stackGuardPageBadAccessThreadNumber != -1)
        {
          crashedThreadNumber = self->_crashedThreadNumber;
          if (stackGuardPageBadAccessThreadNumber == crashedThreadNumber)
          {
            if (self->_recursionOnCrashedThread)
            {
              v20 = @"Thread stack size exceeded due to excessive recursion";
            }

            else
            {
              v20 = @"Thread stack size exceeded";
            }

            goto LABEL_81;
          }

          [NSString stringWithFormat:@"Bad access in stack guard region for thread %d but crash was associated with thread %d - possible stray access?", self->_stackGuardPageBadAccessThreadNumber, crashedThreadNumber, v62];
          goto LABEL_103;
        }

        v20 = @"Could not determine thread index for stack guard region";
LABEL_81:
        [v3 setObject:v20 forKeyedSubscript:@"message"];
      }

      break;
    default:
      exit_snapshot = self->_exit_snapshot;
      if (exit_snapshot && exit_snapshot->ers_namespace == 7 && exit_snapshot->ers_code == 3)
      {
        [v3 setObject:@"LAUNCH_HANG" forKeyedSubscript:@"subtype"];
        v20 = @"The extension took too much time to initialize";
        goto LABEL_81;
      }

      break;
  }

LABEL_220:
  if (self->_exceptionCodeCount)
  {
    v53 = +[NSMutableArray array];
    v54 = +[NSMutableArray array];
    if (self->_exceptionCodeCount)
    {
      v55 = 0;
      do
      {
        v56 = [NSNumber numberWithLongLong:self->_exceptionCode[v55]];
        [v53 addObject:v56];

        v57 = [NSString stringWithFormat:@"0x%016qx", self->_exceptionCode[v55]];
        [v54 addObject:v57];

        ++v55;
      }

      while (v55 < self->_exceptionCodeCount);
    }

    [v3 setObject:v53 forKeyedSubscript:@"rawCodes"];
    v58 = [v54 componentsJoinedByString:{@", "}];
    [v3 setObject:v58 forKeyedSubscript:@"codes"];
  }

  return v3;
}

- (int64_t)codeZeroForGuardException
{
  exit_snapshot = self->_exit_snapshot;
  if (exit_snapshot && exit_snapshot->ers_namespace == 23)
  {
    p_ers_code = &exit_snapshot->ers_code;
  }

  else
  {
    p_ers_code = self->_exceptionCode;
  }

  return *p_ers_code;
}

- (BOOL)isMTECrash
{
  v2 = self;
  v3 = sub_10000A51C();

  return v3 & 1;
}

- (void)setTriggeredThread
{
  if ([(NSMutableArray *)self->_threadInfos count])
  {
    crashedThreadNumber = self->_crashedThreadNumber;
    if ((crashedThreadNumber & 0x80000000) == 0 && [(NSMutableArray *)self->_threadInfos count]> crashedThreadNumber)
    {
      v4 = [(NSMutableArray *)self->_threadInfos objectAtIndexedSubscript:self->_crashedThreadNumber];
      [v4 setObject:&__kCFBooleanTrue forKeyedSubscript:@"triggered"];
    }
  }
}

- (int)sRouteID
{
  if ((+[OSAReport isSecurityResearchDeviceERM]& 1) != 0)
  {
    return 18;
  }

  result = [(OSACrashReport *)self shouldEnableUrgentSubmission];
  if (result != 17)
  {
    if (self->_probGuardReport)
    {
      return 1;
    }

    else
    {
      v4 = result;
      if ([(OSACrashReport *)self isMTECrash])
      {
        [OSACrashReport observedMTECrashWithProcessName:self->_procName];
        return 15;
      }

      else if (self->_sanitizerReport)
      {
        return 11;
      }

      else if (!self->_exceptionStateCount || ((v5 = self->_exceptionState[2], v6 = v5 & 0xFC01FFFF, v7 = v5 & 0xFC01FF00, v6 != -268413671) ? (result = 2) : (result = 14), v7 != -268413696))
      {
        exit_snapshot = self->_exit_snapshot;
        if (exit_snapshot && exit_snapshot->ers_code == 3367907150)
        {
          return 2;
        }

        else
        {
          v9 = [(NSMutableDictionary *)self->_applicationSpecificInfo objectForKeyedSubscript:@"libsystem_c.dylib"];
          v10 = [v9 containsObject:@"detected buffer overflow"];

          if (v10)
          {
            return 3;
          }

          v11 = [(NSMutableDictionary *)self->_applicationSpecificInfo objectForKeyedSubscript:@"libsystem_c.dylib"];
          v12 = [v11 containsObject:@"detected source and destination buffer overlap"];

          if (v12)
          {
            return 3;
          }

          else
          {
            v13 = [(NSMutableDictionary *)self->_applicationSpecificInfo objectForKeyedSubscript:@"libsystem_c.dylib"];
            v14 = [v13 containsObject:@"stack buffer overflow"];

            if (v14)
            {
              return 4;
            }

            else if (self->_exceptionType == 12 && [(OSACrashReport *)self codeZeroForGuardException]>> 61 == 1)
            {
              return 12;
            }

            else
            {
              v15 = self->_exit_snapshot;
              if (v15 && (v15->ers_flags & 0x1000) != 0)
              {
                return 13;
              }

              else
              {
                return 16 * (v4 == 16);
              }
            }
          }
        }
      }
    }
  }

  return result;
}

- (int)shouldEnableUrgentSubmission
{
  v2 = self;
  v3 = sub_10000AAE4();

  return v3;
}

- (id)patternInfo
{
  v2 = self;
  v3 = sub_10000B7E0();

  return v3;
}

- (void)sendToMetricKit
{
  v2 = self;
  v74 = [(OSACrashReport *)self problemType];
  if (![v74 isEqualToString:@"309"] || !v2->_bundle_id)
  {
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_63;
    }

    procName = v2->_procName;
    bundle_id = v2->_bundle_id;
    *buf = 138543874;
    v103 = procName;
    v104 = 2114;
    v105 = v74;
    v106 = 2114;
    v107 = bundle_id;
    v53 = "no MetricKit for process %{public}@ type %{public}@ bundleId %{public}@";
    v54 = 32;
LABEL_47:
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v53, buf, v54);
    goto LABEL_63;
  }

  if (qword_100054160 != -1)
  {
    sub_1000308B8();
  }

  if (!qword_100054110 || !qword_100054118 || !qword_100054120 || !qword_100054128 || !qword_100054130 || !qword_100054138 || !qword_100054140 || !qword_100054148 || !qword_100054150 || !qword_100054158)
  {
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_63;
    }

    *buf = 0;
    v53 = "failed to dynamically load MetricKit classes";
    v54 = 2;
    goto LABEL_47;
  }

  v73 = v2->_bundle_id;
  if ([qword_100054110 isMetricKitClient:?])
  {
    v76 = objc_opt_new();
    v98 = 0u;
    v99 = 0u;
    v100 = 0u;
    v101 = 0u;
    obj = v2->_threadInfos;
    v85 = v2;
    v78 = [(NSMutableArray *)obj countByEnumeratingWithState:&v98 objects:v115 count:16];
    if (v78)
    {
      v77 = *v99;
      do
      {
        v3 = 0;
        do
        {
          if (*v99 != v77)
          {
            objc_enumerationMutation(obj);
          }

          v4 = *(*(&v98 + 1) + 8 * v3);
          v94 = 0u;
          v95 = 0u;
          v96 = 0u;
          v97 = 0u;
          v79 = v4;
          v81 = v3;
          v5 = [v4 objectForKeyedSubscript:@"frames"];
          v6 = [v5 reverseObjectEnumerator];

          v83 = v6;
          v88 = [v6 countByEnumeratingWithState:&v94 objects:v114 count:16];
          if (v88)
          {
            v92 = 0;
            v7 = 0;
            v86 = *v95;
            do
            {
              v8 = 0;
              v9 = v7;
              do
              {
                if (*v95 != v86)
                {
                  objc_enumerationMutation(v83);
                }

                v10 = *(*(&v94 + 1) + 8 * v8);
                v11 = [v10 objectForKeyedSubscript:@"imageIndex"];
                v12 = [v11 intValue];

                v13 = [v10 objectForKeyedSubscript:@"imageOffset"];
                v14 = [v13 longLongValue];

                v15 = [(NSArray *)v2->_usedImages objectAtIndex:v12];
                v16 = [v15 objectForKeyedSubscript:@"base"];
                v17 = [v16 longLongValue];

                v18 = [qword_100054120 alloc];
                v19 = [v15 objectForKeyedSubscript:@"name"];
                v20 = [NSUUID alloc];
                v90 = [v15 objectForKeyedSubscript:@"uuid"];
                v21 = [v20 initWithUUIDString:?];
                v22 = [NSNumber numberWithUnsignedLongLong:&v14[v17]];
                v23 = [NSNumber numberWithUnsignedLongLong:v14];
                if (v9)
                {
                  v113 = v9;
                  v24 = [NSArray arrayWithObjects:&v113 count:1];
                }

                else
                {
                  v24 = objc_opt_new();
                }

                v25 = v24;
                v26 = v19;
                v7 = [v18 initWithBinaryName:v19 binaryUUID:v21 address:v22 binaryOffset:v23 sampleCount:&off_10004D9E8 withDepth:v92 subFrameArray:v24];

                ++v92;
                v8 = v8 + 1;
                v9 = v7;
                v2 = v85;
              }

              while (v88 != v8);
              v88 = [v83 countByEnumeratingWithState:&v94 objects:v114 count:16];
            }

            while (v88);
          }

          else
          {
            v7 = 0;
          }

          v27 = [qword_100054118 alloc];
          if (v7)
          {
            v112 = v7;
            v28 = [NSArray arrayWithObjects:&v112 count:1];
          }

          else
          {
            v28 = objc_opt_new();
          }

          v29 = v28;
          v30 = [v79 objectForKeyedSubscript:@"triggered"];
          v31 = [v27 initWithTopCallStackFrames:v29 isAttributedThread:{objc_msgSend(v30, "BOOLValue")}];

          if (v31)
          {
            [v76 addObject:v31];
          }

          v3 = v81 + 1;
        }

        while ((v81 + 1) != v78);
        v78 = [(NSMutableArray *)obj countByEnumeratingWithState:&v98 objects:v115 count:16];
      }

      while (v78);
    }

    v32 = +[OSASystemConfiguration sharedInstance];
    v33 = [(NSDictionary *)v2->_bundle_info objectForKeyedSubscript:kCFBundleVersionKey];
    v93 = [(NSDictionary *)v2->_bundle_info objectForKeyedSubscript:@"CFBundleShortVersionString"];
    v34 = [qword_100054128 alloc];
    v35 = [v32 buildVersion];
    v89 = v32;
    v36 = [v32 modelCode];
    v37 = &stru_1000463C0;
    v87 = v33;
    if (v33)
    {
      v38 = v33;
    }

    else
    {
      v38 = &stru_1000463C0;
    }

    v84 = [v34 initWithRegionFormat:&stru_1000463C0 osVersion:v35 deviceType:v36 appBuildVersion:v38 bundleID:v2->_bundle_id];

    v39 = qword_100054110;
    proc_id = v2->_proc_id;
    v41 = v2->_bundle_id;
    v80 = OBJC_IVAR___OSAReport__capture_time;
    v42 = [NSDate dateWithTimeIntervalSinceReferenceDate:*&v2->OSAReport_opaque[OBJC_IVAR___OSAReport__capture_time]];
    v91 = [v39 getSignpostDataforPid:proc_id forClient:v41 andEventTimestamp:v42];

    if (v2->_exceptionReasonDetails)
    {
      v43 = [qword_100054158 alloc];
      v44 = [(NSDictionary *)v2->_exceptionReasonDetails objectForKeyedSubscript:@"composed_message"];
      v45 = [(NSDictionary *)v2->_exceptionReasonDetails objectForKeyedSubscript:@"format_string"];
      v46 = [(NSDictionary *)v2->_exceptionReasonDetails objectForKeyedSubscript:@"arguments"];
      v47 = [(NSDictionary *)v2->_exceptionReasonDetails objectForKeyedSubscript:@"type"];
      v48 = [(NSDictionary *)v2->_exceptionReasonDetails objectForKeyedSubscript:@"class"];
      v49 = [(NSDictionary *)v2->_exceptionReasonDetails objectForKeyedSubscript:@"name"];
      v50 = [v43 initWithComposedMessage:v44 formatString:v45 arguments:v46 type:v47 className:v48 exceptionName:v49];

      v2 = v85;
      v37 = &stru_1000463C0;
    }

    else
    {
      v50 = 0;
    }

    v55 = [qword_100054138 alloc];
    v56 = v2->_proc_id;
    mxTerminationReason = v2->_mxTerminationReason;
    vmregion_info = v2->_vmregion_info;
    if (v93)
    {
      v37 = v93;
    }

    v59 = [NSNumber numberWithInt:v2->_exceptionType];
    v60 = [NSNumber numberWithLongLong:*v2->_exceptionCode];
    v61 = [NSNumber numberWithInt:v2->_signal];
    v62 = [[qword_100054130 alloc] initWithThreadArray:v76 aggregatedByProcess:0];
    v82 = v50;
    v63 = [v55 initWithMetaData:v84 applicationVersion:v37 signpostData:v91 pid:v56 terminationReason:mxTerminationReason applicationSpecificInfo:0 virtualMemoryRegionInfo:vmregion_info exceptionType:v59 exceptionCode:v60 exceptionReason:v50 signal:v61 stackTrace:v62];

    v64 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
    if (v63)
    {
      v66 = v87;
      v65 = v89;
      if (v64)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "sending MXCrashDiagnostic to MetricKit", buf, 2u);
      }

      v67 = [qword_100054148 sharedManager];
      v110 = v73;
      v68 = [qword_100054140 alloc];
      v108 = @"crashDiagnostic";
      v109 = v63;
      v69 = [NSDictionary dictionaryWithObjects:&v109 forKeys:&v108 count:1];
      v70 = [v68 initPayloadDataWithDiagnostics:v69];
      v111 = v70;
      v71 = [NSDictionary dictionaryWithObjects:&v111 forKeys:&v110 count:1];
      v72 = [NSDate dateWithTimeIntervalSinceReferenceDate:*&v85->OSAReport_opaque[v80]];
      [v67 sendDiagnostic:v71 forDate:v72 andSourceID:5];
    }

    else
    {
      v66 = v87;
      v65 = v89;
      if (v64)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "failed to create MXCrashDiagnostic", buf, 2u);
      }
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v103 = v73;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%{public}@ is not a MetricKit client", buf, 0xCu);
  }

LABEL_63:
}

- (void)donateToBiome
{
  if (objc_opt_class() && objc_opt_class() && objc_opt_class() && ![(OSACrashReport *)self isSimulated]&& [(OSACrashReport *)self exceptionType]!= 11)
  {
    v29 = [(OSACrashReport *)self decode_exceptionCodes];
    v3 = [BMProcessCrashException alloc];
    v4 = [v29 objectForKeyedSubscript:@"codes"];
    v5 = [v29 objectForKeyedSubscript:@"type"];
    v6 = [v29 objectForKeyedSubscript:@"signal"];
    v7 = [v29 objectForKeyedSubscript:@"subtype"];
    v27 = [v3 initWithCodes:v4 type:v5 signal:v6 subtype:v7];

    v8 = [BMProcessCrashTerminationReason alloc];
    v9 = [(OSACrashReport *)self terminationReasonExceptionCode];
    v10 = [(OSACrashReport *)self decode_reasonNamespace];
    v28 = [v8 initWithCode:v9 namespaceName:v10];

    v26 = [BMProcessCrash alloc];
    v11 = [(OSACrashReport *)self incidentID];
    v12 = [(OSACrashReport *)self procName];
    v13 = [(OSACrashReport *)self bundle_id];
    v14 = [(OSACrashReport *)self short_vers];
    bundleVersion = self->_bundleVersion;
    v16 = [(OSACrashReport *)self responsibleProc];
    v17 = [(OSACrashReport *)self coalitionName];
    v18 = [NSNumber numberWithBool:self->_is_first_party];
    v19 = [NSNumber numberWithBool:self->_is_beta];
    v20 = [v26 initWithIncidentID:v11 processName:v12 bundleID:v13 appVersion:v14 bundleVersion:bundleVersion exception:v27 terminationReason:v28 responsibleApp:v16 coalitionName:v17 isFirstParty:v18 isBeta:v19];

    v21 = BiomeLibrary();
    v22 = [v21 OSAnalytics];
    v23 = [v22 Stability];
    v24 = [v23 Crash];
    v25 = [v24 source];
    [v25 sendEvent:v20];
  }
}

- (id)terminationReasonExceptionCode
{
  exit_snapshot = self->_exit_snapshot;
  if (exit_snapshot)
  {
    v4 = [NSString stringWithFormat:@"0x%llx", exit_snapshot->ers_code];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)addFieldsToCrashEvent:(id)a3
{
  v4 = a3;
  v6 = self;
  if (sub_100005D54())
  {
    isa = Bool._bridgeToObjectiveC()().super.super.isa;
    [v4 __swift_setObject:isa forKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

- (void)sendToCoreAnalyticsWithDidWriteReport:(BOOL)a3
{
  v4 = self;
  sub_10000DDA4();
  sub_10000E718(a3);
}

- (void)updateCrashHistory
{
  v2 = self;
  sub_10000E8FC();
}

- (void)dealloc
{
  exceptionCode = self->_exceptionCode;
  if (exceptionCode)
  {
    free(exceptionCode);
  }

  exit_snapshot = self->_exit_snapshot;
  if (exit_snapshot)
  {
    free(exit_snapshot);
  }

  exit_payload = self->_exit_payload;
  if (exit_payload)
  {
    free(exit_payload);
  }

  [(OSACrashReport *)self stashStatus:0 note:0];
  v6.receiver = self;
  v6.super_class = OSACrashReport;
  [(OSACrashReport *)&v6 dealloc];
}

- (void)stashStatus:(id)a3 note:(id)a4
{
  v6 = a3;
  v7 = a4;
  pthread_mutex_lock(&stru_100053928);
  v8 = qword_100054098;
  if (!qword_100054098)
  {
    v9 = objc_opt_new();
    v10 = qword_100054098;
    qword_100054098 = v9;

    v8 = qword_100054098;
  }

  v11 = [NSNumber numberWithInt:self->_proc_id];
  v12 = [v8 objectForKeyedSubscript:v11];

  if (!v12)
  {
    v12 = objc_opt_new();
    v13 = qword_100054098;
    v14 = [NSNumber numberWithInt:self->_proc_id];
    [v13 setObject:v12 forKeyedSubscript:v14];
  }

  if (v6 | v7)
  {
    v15 = [v12 objectForKeyedSubscript:@"process"];
    if (!v15)
    {
      procName = self->_procName;
      if (!procName)
      {
        procName = @"<unknown>";
      }

      if (self->_is_full_corpse)
      {
        v17 = @"CORPSE";
      }

      else if (self->_is_lightweight_corpse)
      {
        v17 = @"LWCORPSE";
      }

      else
      {
        v17 = @"OTHER?";
      }

      v15 = [NSString stringWithFormat:@"Pid %d '%@' %@", self->_proc_id, procName, v17];
      [v12 setObject:v15 forKeyedSubscript:@"process"];
    }

    if (v6)
    {
      [v12 setObject:v6 forKeyedSubscript:@"status"];
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
      {
        *buf = 138543618;
        v47 = v15;
        v48 = 2114;
        v49 = v6;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "osa_update: %{public}@: %{public}@", buf, 0x16u);
      }
    }

    if (v7)
    {
      v21 = [v12 objectForKeyedSubscript:@"notes"];
      if (!v21)
      {
        v21 = objc_opt_new();
        [v12 setObject:v21 forKeyedSubscript:@"notes"];
      }

      [v21 addObject:v7];
    }
  }

  else
  {
    ++dword_1000540A8;
    v18 = [v12 objectForKeyedSubscript:@"process"];
    if (v18)
    {
      objc_storeStrong(&qword_1000540A0, v18);
    }

    v19 = qword_100054098;
    v20 = [NSNumber numberWithInt:self->_proc_id];
    [v19 removeObjectForKey:v20];
  }

  if (qword_1000540B0 || (qword_1000540B8 = 2 * vm_page_size, (qword_1000540B0 = malloc_type_malloc(2 * vm_page_size, 0x49562147uLL)) != 0))
  {
    v37 = v12;
    v38 = v7;
    v39 = v6;
    v22 = objc_opt_new();
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    obj = qword_100054098;
    v23 = [obj countByEnumeratingWithState:&v41 objects:v45 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v42;
      do
      {
        for (i = 0; i != v24; i = i + 1)
        {
          if (*v42 != v25)
          {
            objc_enumerationMutation(obj);
          }

          v27 = [qword_100054098 objectForKeyedSubscript:*(*(&v41 + 1) + 8 * i)];
          v28 = [v27 objectForKeyedSubscript:@"process"];
          v29 = [v27 objectForKeyedSubscript:@"status"];
          v30 = &stru_1000463C0;
          if (v29)
          {
            v30 = v29;
          }

          v31 = [NSString stringWithFormat:@"%@: %@", v28, v30];
          [v22 addObject:v31];

          v32 = [v27 objectForKeyedSubscript:@"notes"];
          if (v32)
          {
            [v22 addObjectsFromArray:v32];
          }
        }

        v24 = [obj countByEnumeratingWithState:&v41 objects:v45 count:16];
      }

      while (v24);
    }

    if (qword_1000540A0)
    {
      v33 = [NSString stringWithFormat:@"Completed %u, Recent: %@", dword_1000540A8, qword_1000540A0];
      [v22 addObject:v33];
    }

    v34 = [v22 componentsJoinedByString:@"\n"];
    v35 = qword_1000540B0;
    v36 = [v34 UTF8String];
    strlcpy(v35, v36, qword_1000540B8);
    v7 = v38;
    v6 = v39;
    v12 = v37;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_10002FFC0();
    }

    qword_100053F30 = qword_1000540B0;
  }

  pthread_mutex_unlock(&stru_100053928);
}

- (void)unpackExceptionCodes
{
  exceptionCode = self->_exceptionCode;
  v3 = *exceptionCode;
  v4 = (*exceptionCode >> 20) & 0xF;
  if (v4)
  {
    self->_exceptionType = v4;
  }

  self->_signal = BYTE3(v3);
  *exceptionCode = v3 & 0xFFFFF;
}

- (void)_extractRosettaRuntimeInfo:(_CSTypeRef)a3 withBlock:(id)a4
{
  v4 = a4;
  if (&_rosetta_get_runtime_location)
  {
    v6 = [NSString stringWithUTF8String:rosetta_get_runtime_location()];
    v7 = v4;
    v5 = v6;
    CSSymbolicatorForeachSymbolOwnerAtTime();
  }
}

- (void)_extractWorkQueueLimitsFromData:(proc_workqueueinfo *)a3
{
  if ((a3->pwq_state & 3) != 0)
  {
    v13 = v3;
    v14 = v4;
    v7 = [[NSMutableDictionary alloc] initWithCapacity:2];
    pwq_state = a3->pwq_state;
    if (pwq_state)
    {
      v12 = 0;
      v11 = 4;
      sysctlbyname("kern.wq_max_constrained_threads", &v12, &v11, 0, 0);
      v9 = [NSNumber numberWithUnsignedInt:v12];
      [v7 setObject:v9 forKeyedSubscript:@"Dispatch Thread Soft Limit"];

      pwq_state = a3->pwq_state;
    }

    if ((pwq_state & 2) != 0)
    {
      v12 = 0;
      v11 = 4;
      sysctlbyname("kern.wq_max_threads", &v12, &v11, 0, 0);
      v10 = [NSNumber numberWithUnsignedInt:v12];
      [v7 setObject:v10 forKeyedSubscript:@"Dispatch Thread Hard Limit"];
    }

    if ([v7 count])
    {
      objc_storeStrong(&self->_workQueueLimits, v7);
    }
  }
}

- (id)pathFromPid:(int)a3
{
  bzero(buffer, 0x400uLL);
  v4 = proc_pidpath(a3, buffer, 0x400u);
  if (v4 >= 1)
  {
    buffer[v4] = 0;
LABEL_4:
    v5 = [NSString stringWithUTF8String:buffer];
    goto LABEL_5;
  }

  if (v4)
  {
    goto LABEL_4;
  }

  v5 = 0;
LABEL_5:

  return v5;
}

- (id)nameFromPid:(int)a3
{
  bzero(buffer, 0x400uLL);
  v4 = proc_name(a3, buffer, 0x400u);
  v5 = v4;
  if (v4 >= 1)
  {
    buffer[v4] = 0;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v6 = "<error>";
    v9[0] = 67109634;
    v9[1] = a3;
    if (v5 > 0)
    {
      v6 = buffer;
    }

    v10 = 1024;
    v11 = v5;
    v12 = 2080;
    v13 = v6;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "proc_name(%d) = [%d] %s", v9, 0x18u);
  }

  if (v5 < 1)
  {
    v7 = 0;
  }

  else
  {
    v7 = [NSString stringWithUTF8String:buffer];
  }

  return v7;
}

- (_CSTypeRef)_getSymbolicator:(BOOL)a3
{
  if (a3)
  {
    CSSymbolicatorGetFlagsForNoSymbolOrSourceInfoData();
  }

  task = self->_task;
  v5 = CSSymbolicatorCreateWithTaskFlagsAndNotification();
  v7 = v6;
  if (CSIsNull())
  {
    v8 = self->_task;
    if (_dyld_process_info_create())
    {
      _dyld_process_info_release();
    }

    v9 = OBJC_IVAR___OSAReport__notes;
    v10 = *&self->OSAReport_opaque[OBJC_IVAR___OSAReport__notes];
    v11 = [NSString stringWithFormat:@"Corpse is incomplete (_dyld_process_info_create failed with %d)", 5];
    [v10 addObject:v11];

    [*&self->OSAReport_opaque[v9] addObject:{@"Backtraces may be be unvailable or truncated to only leaf frames, and the binary image list may not be available"}];
  }

  v12 = v5;
  v13 = v7;
  result.var1 = v13;
  result.var0 = v12;
  return result;
}

- (void)dumpProgramCounterBytes
{
  data = 0;
  dataCnt = 0;
  v28 = 0;
  v29 = 0;
  threadStateDecoded = self->_threadStateDecoded;
  if (!threadStateDecoded || ([(NSDictionary *)threadStateDecoded objectForKeyedSubscript:@"pc"], v4 = objc_claimAutoreleasedReturnValue(), v4, !v4))
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100030244();
    }

    return;
  }

  v5 = [(NSDictionary *)self->_threadStateDecoded objectForKeyedSubscript:@"pc"];
  v6 = [v5 objectForKeyedSubscript:@"value"];
  v7 = [v6 unsignedLongValue];

  if (v7 <= 0xFC0000000 && v7 >= vm_page_size)
  {
    v35 = 0u;
    v36 = 0u;
    v34 = 0u;
    if ([(OSACrashReport *)self _regionInfoAtAddress:v7 regionInfo:&v34 regionAddress:&v29 regionSize:&v28])
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_100030044();
      }

      return;
    }

    v11 = v29;
    v12 = &v7[-v29];
    if (v7 < v29)
    {
      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      *buf = 134217984;
      *v33 = v7;
      v9 = "Crashing program counter 0x%llx was unmapped";
      goto LABEL_21;
    }

    if ((v34 & 4) == 0)
    {
      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      *buf = 134217984;
      *v33 = v7;
      v9 = "Crashing pc 0x%llx was not executable";
LABEL_21:
      v10 = buf;
      goto LABEL_22;
    }

    v14 = v29;
    v15 = v28;
    if (v34 == 7 || DWORD1(v35) == 64)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        *v33 = v7;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Crashing pc 0x%llx was JIT", buf, 0xCu);
      }

      v16 = 800;
    }

    else
    {
      v16 = 80;
    }

    v17 = v16 >> 1;
    v18 = &v7[-(v16 >> 1)];
    if ([OSACrashReport isAddress:v18 inRange:v11, v15])
    {
      v14 = &v7[-(v16 >> 1)];
      goto LABEL_36;
    }

    if ([(OSACrashReport *)self _regionInfoAtAddress:v18 regionInfo:&v34 regionAddress:&v29 regionSize:&v28])
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_1000300C8();
      }

      goto LABEL_35;
    }

    if (v29 <= v18)
    {
      if ((v34 & 4) != 0)
      {
        v14 = &v7[-(v16 >> 1)];
LABEL_36:
        if ([OSACrashReport isAddress:&v18[v16 - 1] inRange:v11, v15])
        {
          goto LABEL_41;
        }

        if ([(OSACrashReport *)self _regionInfoAtAddress:&v18[v16 - 1] regionInfo:&v34 regionAddress:&v29 regionSize:&v28])
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            sub_100030140();
          }

          goto LABEL_40;
        }

        if (v29 <= &v18[v16 - 1])
        {
          if ((v34 & 4) != 0)
          {
LABEL_41:
            v19 = mach_vm_read(self->_task, v14, v16, &data, &dataCnt);
            if (v19)
            {
              v20 = v19;
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 67109632;
                *v33 = v20;
                *&v33[4] = 2048;
                *&v33[6] = v16;
                *&v33[14] = 2048;
                *&v33[16] = v14;
                v9 = "Error %d reading 0x%zx bytes at 0x%llx from remote task";
                v10 = buf;
                v13 = 28;
                goto LABEL_23;
              }
            }

            else
            {
              if (v17 <= dataCnt)
              {
                v24 = [NSData dataWithBytes:data length:v17];
                pc_bytes_before = self->_pc_bytes_before;
                self->_pc_bytes_before = v24;

                v26 = [NSData dataWithBytes:data + v17 length:dataCnt - v17];
                pc_bytes = self->_pc_bytes;
                self->_pc_bytes = v26;
              }

              else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
              {
                sub_1000301B8(&dataCnt);
              }

              mach_vm_deallocate(mach_task_self_, data, dataCnt);
            }

            return;
          }

          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134218240;
            *v33 = v29;
            *&v33[8] = 2048;
            *&v33[10] = &v18[v16 - 1];
            v23 = "region 0x%llx after crashing pc 0x%llx was not executable";
            goto LABEL_62;
          }
        }

        else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218240;
          *v33 = v29;
          *&v33[8] = 2048;
          *&v33[10] = &v18[v16 - 1];
          v23 = "VM region 0x%llx after crashing pc 0x%llx was unmapped";
LABEL_62:
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v23, buf, 0x16u);
        }

LABEL_40:
        v16 = v15 + v11 - v14;
        goto LABEL_41;
      }

      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        *v33 = &v7[-(v16 >> 1)];
        v21 = "region before crashing pc 0x%llx was not executable";
        v22 = 12;
        goto LABEL_58;
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      *v33 = v29;
      *&v33[8] = 2048;
      *&v33[10] = &v7[-(v16 >> 1)];
      v21 = "VM region 0x%llx before crashing pc 0x%llx was unmapped";
      v22 = 22;
LABEL_58:
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v21, buf, v22);
    }

LABEL_35:
    v17 = v12;
    goto LABEL_36;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v34) = 134217984;
    *(&v34 + 4) = v7;
    v9 = "Invalid crashing program counter 0x%llx could not be dumped";
    v10 = &v34;
LABEL_22:
    v13 = 12;
LABEL_23:
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v9, v10, v13);
  }
}

- (void)autopsyLightweightCorpse:(unint64_t)a3 size:(unint64_t)a4
{
  self->_is_lightweight_corpse = 1;
  self->_is_simulated = 1;
  v7 = +[NSMutableArray array];
  taskImages = self->_taskImages;
  self->_taskImages = v7;

  [(OSACrashReport *)self parseCorpse:a3 size:a4];

  [(OSACrashReport *)self finishExtraction];
}

- (void)parseCorpse:(unint64_t)a3 size:(unint64_t)a4
{
  v7 = objc_alloc_init(KcdataParser);
  v8 = 16504;
  kcdataParser = self->_kcdataParser;
  self->_kcdataParser = v7;

  memset(v178, 0, sizeof(v178));
  v10 = a4 + a3;
  v11 = a3 + 16;
  if (a3 + 16 > a4 + a3 || v11 + *(a3 + 4) > v10)
  {
    goto LABEL_368;
  }

  v12 = *a3;
  if ((*a3 & 0xFFFFFFF0) == 0x20)
  {
    v12 = 17;
  }

  if (v12 != 1178684999 && v12 != -559025833)
  {
LABEL_368:
    [*&self->OSAReport_opaque[OBJC_IVAR___OSAReport__notes] addObject:@"invalid corpse info provided for EXC_CORPSE_NOTIFY"];
    v151 = 0;
    goto LABEL_369;
  }

  v173 = 0;
  v14 = 0;
  v174 = 0;
  key = XPC_COALITION_INFO_KEY_BUNDLE_IDENTIFIER;
  v171 = XPC_COALITION_INFO_KEY_NAME;
  v15 = &create_gcore_with_options_ptr;
  do
  {
    v16 = *(a3 + 4);
    if (v11 + v16 > v10 || *a3 == -242132755)
    {
      break;
    }

    if ((*a3 & 0xFFFFFFF0) == 0x20)
    {
      v17 = 17;
    }

    else
    {
      v17 = *a3;
    }

    if (v17 > 2388)
    {
      if (v17 > 2814)
      {
        if (v17 == 2815)
        {
          if ([(OSACrashReport *)self validKcdataItem:a3 min_size:v10, 4])
          {
            v87 = *(a3 + 16);
            if (v87)
            {
              [*&self->OSAReport_opaque[OBJC_IVAR___OSAReport__notes] addObject:@"The backtrace is truncated"];
              if ((v87 & 2) != 0)
              {
                goto LABEL_320;
              }

LABEL_170:
              if ((v87 & 8) == 0)
              {
                goto LABEL_171;
              }

LABEL_321:
              [*&self->OSAReport_opaque[OBJC_IVAR___OSAReport__notes] addObject:@"This crash report is incomplete"];
              if ((v87 & 4) == 0)
              {
                goto LABEL_356;
              }
            }

            else
            {
              if ((v87 & 2) == 0)
              {
                goto LABEL_170;
              }

LABEL_320:
              [*&self->OSAReport_opaque[OBJC_IVAR___OSAReport__notes] addObject:@"The async backtrace is truncated"];
              if ((v87 & 8) != 0)
              {
                goto LABEL_321;
              }

LABEL_171:
              if ((v87 & 4) == 0)
              {
                goto LABEL_356;
              }
            }

            [*&self->OSAReport_opaque[OBJC_IVAR___OSAReport__notes] addObject:@"This crash report may be incomplete because the faulting thread was terminated."];
            goto LABEL_356;
          }
        }

        else
        {
          if (v17 != 4097)
          {
            goto LABEL_143;
          }

          if ([(OSACrashReport *)self validKcdataItem:a3 min_size:v10, 20])
          {
            v27 = *a3;
            if ((*a3 & 0xFFFFFFF0) == 0x20)
            {
              v27 = 17;
            }

            if (v27 <= 2309)
            {
              if (v27 == 17 || v27 == 19)
              {
                v28 = *(a3 + 4);
                goto LABEL_354;
              }

LABEL_348:
              v139 = *(a3 + 4);
              goto LABEL_352;
            }

            if (v27 == 2310)
            {
              v139 = *(a3 + 4);
              if (v139 != 112)
              {
                goto LABEL_352;
              }

              if ((*(a3 + 8) & 0x8F) != 0)
              {
                v139 = 112;
                goto LABEL_352;
              }

              v28 = 104;
            }

            else
            {
              if (v27 != 2312)
              {
                goto LABEL_348;
              }

              v139 = *(a3 + 4);
              if (v139 != 32)
              {
LABEL_352:
                v80 = v139 >= (*(a3 + 8) & 0xFu);
                v28 = v139 - (*(a3 + 8) & 0xF);
                if (!v80)
                {
                  v28 = 0;
                }

                goto LABEL_354;
              }

              if ((*(a3 + 8) & 0x8F) != 0)
              {
                v139 = 32;
                goto LABEL_352;
              }

              v28 = 24;
            }

LABEL_354:
            self->_exit_snapshot_length = v28;
            v148 = malloc_type_malloc(v28, 0x327A0317uLL);
            self->_exit_snapshot = v148;
            if (v148)
            {
              memcpy(v148, (a3 + 16), self->_exit_snapshot_length);
            }

            goto LABEL_356;
          }
        }
      }

      else
      {
        switch(v17)
        {
          case 2561:
LABEL_23:
            if (![(OSACrashReport *)self validKcdataItem:a3 min_size:v10, 4])
            {
              break;
            }

            self->_proc_id = *(a3 + 16);
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
            {
              proc_id = self->_proc_id;
              *buf = 67109120;
              *&buf[4] = proc_id;
              _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Parsing corpse data for pid %d", buf, 8u);
            }

            v21 = sub_100003790();
            if (os_signpost_enabled(v21))
            {
              v22 = self->_proc_id;
              *buf = 67109120;
              *&buf[4] = v22;
              _os_signpost_emit_with_name_impl(&_mh_execute_header, v21, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CorpseReceived", "pid %d enableTelemetry=YES ", buf, 8u);
            }

LABEL_211:

            goto LABEL_335;
          case 2562:
LABEL_125:
            if (![(OSACrashReport *)self validKcdataItem:a3 min_size:v10, 4])
            {
              break;
            }

            v59 = *(a3 + 16);
            v60 = 15776;
            goto LABEL_219;
          case 2563:
LABEL_134:
            if (self->_procName)
            {
              goto LABEL_356;
            }

            v176[0] = 0;
            v176[1] = 0;
            v177 = 0;
            v74 = *a3;
            if ((*a3 & 0xFFFFFFF0) == 0x20)
            {
              v74 = 17;
            }

            if (v74 <= 2309)
            {
              if (v74 == 17 || v74 == 19)
              {
                v75 = *(a3 + 4);
                goto LABEL_332;
              }

LABEL_328:
              v140 = *(a3 + 4);
LABEL_331:
              *(a3 + 8);
              goto LABEL_332;
            }

            if (v74 == 2310)
            {
              if (*(a3 + 4) != 112 || (*(a3 + 8) & 0x8F) != 0)
              {
                goto LABEL_331;
              }
            }

            else
            {
              if (v74 != 2312)
              {
                goto LABEL_328;
              }

              if (*(a3 + 4) != 32 || (*(a3 + 8) & 0x8F) != 0)
              {
                goto LABEL_331;
              }
            }

LABEL_332:
            __memcpy_chk();
            v141 = sub_100003790();
            if (os_signpost_enabled(v141))
            {
              v142 = self->_proc_id;
              *buf = 136446466;
              *&buf[4] = v176;
              *&buf[12] = 1024;
              *&buf[14] = v142;
              _os_signpost_emit_with_name_impl(&_mh_execute_header, v141, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CorpseReceived", "process: %{public}s [pid %d] enableTelemetry=YES ", buf, 0x12u);
            }

            v143 = [NSString stringWithUTF8String:v176];
            procName = self->_procName;
            self->_procName = v143;

            [(OSACrashReport *)self stashStatus:@"Parsing KCData" note:0];
LABEL_335:
            v15 = &create_gcore_with_options_ptr;
            break;
          case 2564:
LABEL_112:
            if (v17 == 2312)
            {
              if (v16 == 32)
              {
                v58 = *(a3 + 8);
                if ((v58 & 0x8F) != 0)
                {
                  goto LABEL_241;
                }

                goto LABEL_300;
              }
            }

            else if (v17 == 2310 && v16 == 112)
            {
              v58 = *(a3 + 8);
              if ((v58 & 0x8F) == 0)
              {
                goto LABEL_246;
              }

LABEL_241:
              v58 = *(a3 + 8);
LABEL_243:
              if (v17 != 2312)
              {
                if (v17 == 2310 && v16 == 112)
                {
LABEL_246:
                  if ((v58 & 0x8F) == 0)
                  {
                    v121 = 103;
LABEL_304:
                    *(a3 + 16 + v121) = 0;
                    v134 = [NSString stringWithUTF8String:?];
                    procPath = self->_procPath;
                    self->_procPath = v134;

                    v136 = [(NSString *)self->_procPath lastPathComponent];
                    if ([v136 length])
                    {
                      objc_storeStrong(&self->_procName, v136);
                    }

                    v15 = &create_gcore_with_options_ptr;
                    break;
                  }
                }

                goto LABEL_301;
              }

              if (v16 != 32)
              {
                goto LABEL_301;
              }

LABEL_300:
              if ((v58 & 0x8F) == 0)
              {
                v121 = 23;
                goto LABEL_304;
              }

LABEL_301:
              v132 = v58 & 0xF;
              v80 = v16 >= v132;
              v133 = v16 - v132;
              if (!v80)
              {
                v133 = 0;
              }

              v121 = (v133 - 1);
              goto LABEL_304;
            }

            v58 = *(a3 + 8);
            if (v16 > (*(a3 + 8) & 0xFu))
            {
              goto LABEL_243;
            }

            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "proc path string is NULL or malformed", buf, 2u);
            }

            break;
          case 2565:
LABEL_117:
            if (![(OSACrashReport *)self validKcdataItem:a3 min_size:v10, 4])
            {
              break;
            }

            v59 = *(a3 + 16);
            v60 = 15780;
            goto LABEL_219;
          case 2566:
          case 2573:
          case 2574:
            break;
          case 2567:
LABEL_132:
            if ([(OSACrashReport *)self validKcdataItem:a3 min_size:v10, 4])
            {
              v71 = *(a3 + 16);
              self->_is64Bit = (v71 & 4) != 0;
              v72 = 16184;
              v73 = (v71 >> 17) & 1;
LABEL_198:
              self->OSAReport_opaque[v72] = v73;
            }

            break;
          case 2568:
LABEL_123:
            if (![(OSACrashReport *)self validKcdataItem:a3 min_size:v10, 4])
            {
              break;
            }

            v59 = *(a3 + 16);
            v60 = 96;
            goto LABEL_219;
          case 2569:
LABEL_127:
            if (v17 == 2312)
            {
              if (v16 == 32)
              {
                v69 = *(a3 + 8);
                if ((v69 & 0x8F) == 0)
                {
                  v70 = 3;
                  goto LABEL_255;
                }
              }
            }

            else if (v17 == 2310 && v16 == 112)
            {
              v69 = *(a3 + 8);
              if ((v69 & 0x8F) == 0)
              {
                v70 = 13;
                goto LABEL_255;
              }
            }

            v69 = *(a3 + 8);
            v80 = v16 >= (v69 & 0xFu);
            v122 = v16 - (v69 & 0xF);
            if (!v80)
            {
              v122 = 0;
            }

            v70 = v122 >> 3;
LABEL_255:
            self->_exceptionCodeCount = v70;
            v123 = *a3;
            if ((*a3 & 0xFFFFFFF0) == 0x20)
            {
              v123 = 17;
            }

            if (v123 <= 2309)
            {
              if (v123 == 17 || v123 == 19)
              {
                v124 = *(a3 + 4);
                goto LABEL_272;
              }

LABEL_266:
              v125 = *(a3 + 4);
              goto LABEL_270;
            }

            if (v123 == 2310)
            {
              v125 = *(a3 + 4);
              if (v125 == 112)
              {
                if ((v69 & 0x8F) == 0)
                {
                  v124 = 104;
                  goto LABEL_272;
                }

                v125 = 112;
              }
            }

            else
            {
              if (v123 != 2312)
              {
                goto LABEL_266;
              }

              v125 = *(a3 + 4);
              if (v125 == 32)
              {
                if ((v69 & 0x8F) == 0)
                {
                  v124 = 24;
                  goto LABEL_272;
                }

                v125 = 32;
              }
            }

LABEL_270:
            v126 = v69 & 0xF;
            v80 = v125 >= v126;
            v124 = v125 - v126;
            if (!v80)
            {
              v124 = 0;
            }

LABEL_272:
            if (v124 <= 0x10)
            {
              v127 = 16;
            }

            else
            {
              v127 = v124;
            }

            v128 = malloc_type_calloc(1uLL, v127, 0xE0F37035uLL);
            self->_exceptionCode = v128;
            v129 = *a3;
            if ((*a3 & 0xFFFFFFF0) == 0x20)
            {
              v129 = 17;
            }

            if (v129 <= 2309)
            {
              if (v129 == 17 || v129 == 19)
              {
                v130 = *(a3 + 4);
                goto LABEL_292;
              }

LABEL_286:
              v131 = *(a3 + 4);
              goto LABEL_290;
            }

            if (v129 == 2310)
            {
              v131 = *(a3 + 4);
              if (v131 == 112)
              {
                if ((*(a3 + 8) & 0x8F) == 0)
                {
                  v130 = 104;
                  goto LABEL_292;
                }

                v131 = 112;
              }
            }

            else
            {
              if (v129 != 2312)
              {
                goto LABEL_286;
              }

              v131 = *(a3 + 4);
              if (v131 == 32)
              {
                if ((*(a3 + 8) & 0x8F) == 0)
                {
                  v130 = 24;
                  goto LABEL_292;
                }

                v131 = 32;
              }
            }

LABEL_290:
            v80 = v131 >= (*(a3 + 8) & 0xFu);
            v130 = v131 - (*(a3 + 8) & 0xF);
            if (!v80)
            {
              v130 = 0;
            }

LABEL_292:
            memcpy(v128, (a3 + 16), v130);
            if ((self->_exceptionType - 11) >= 2)
            {
              [(OSACrashReport *)self unpackExceptionCodes];
            }

            break;
          case 2570:
            if (![(OSACrashReport *)self validKcdataItem:a3 min_size:v10, 4])
            {
              break;
            }

            v59 = *(a3 + 16);
            v60 = 0x4000;
            goto LABEL_219;
          case 2571:
LABEL_119:
            if ([(OSACrashReport *)self validKcdataItem:a3 min_size:v10, 96])
            {
              memset(&buf[64], 0, 32);
              memset(&buf[32], 0, 32);
              *&buf[16] = 0u;
              v61 = *(a3 + 16);
              v62 = *(a3 + 32);
              v63 = *(a3 + 48);
              v64 = *(a3 + 64);
              v65 = *(a3 + 96);
              *&buf[64] = *(a3 + 80);
              *&buf[80] = v65;
              *&buf[32] = v63;
              *&buf[48] = v64;
              *buf = v61;
              *&buf[16] = v62;
              uuid_unparse_lower(buf, self->_slice_uuid);
              *&self->_proc_start_abstime = *&buf[80];
            }

            break;
          case 2572:
          case 2575:
          case 2576:
          case 2577:
          case 2578:
          case 2579:
          case 2580:
          case 2581:
          case 2582:
          case 2583:
          case 2584:
          case 2585:
          case 2586:
          case 2587:
          case 2588:
          case 2589:
          case 2590:
          case 2591:
          case 2596:
          case 2597:
          case 2598:
          case 2599:
            goto LABEL_143;
          case 2592:
LABEL_121:
            if ([(OSACrashReport *)self validKcdataItem:a3 min_size:v10, 8])
            {
              v66 = *(a3 + 16);
              self->_threadId = v66;
              threadPortPedigree = self->_threadPortPedigree;
              v68 = [NSString stringWithFormat:@"override via KCDATA ID(0x%llX)", v66];
              [(NSMutableArray *)threadPortPedigree addObject:v68];
            }

            break;
          case 2593:
            v80 = v16 >= (*(a3 + 8) & 0xFu);
            v81 = v16 - (*(a3 + 8) & 0xF);
            if (v81 != 0 && v80)
            {
              if (!v80)
              {
                v81 = 0;
              }

              *(a3 + 16 + (v81 - 1)) = 0;
              if (*(a3 + 16))
              {
                v82 = [NSString stringWithUTF8String:?];
                v83 = OSASanitizePath();

                v174 = v83;
              }
            }

            break;
          case 2594:
            if (![(OSACrashReport *)self validKcdataItem:a3 min_size:v10, 8])
            {
              break;
            }

            v78 = *(a3 + 16);
            v79 = HIDWORD(v78);
            if (HIDWORD(v78) < 0x511)
            {
              self->_threadStateFlavor = v78;
              v138 = 5364;
              goto LABEL_318;
            }

            if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_356;
            }

            *buf = 67109376;
            *&buf[4] = v79;
            *&buf[8] = 2048;
            *&buf[10] = 5184;
            v26 = "Unexpected count for TASK_BTINFO_THREAD_STATE %u > %lu";
            goto LABEL_315;
          case 2595:
            if (![(OSACrashReport *)self validKcdataItem:a3 min_size:v10, 8])
            {
              break;
            }

            v79 = HIDWORD(*(a3 + 16));
            if (v79 < 0x511)
            {
              v138 = 15748;
LABEL_318:
              *&self->OSAReport_opaque[v138] = v79;
              goto LABEL_356;
            }

            if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_356;
            }

            *buf = 67109376;
            *&buf[4] = v79;
            *&buf[8] = 2048;
            *&buf[10] = 5184;
            v26 = "Unexpected count for TASK_BTINFO_THREAD_EXCEPTION_STATE %u > %lu";
            goto LABEL_315;
          case 2600:
            if (![(OSACrashReport *)self validKcdataItem:a3 min_size:v10, 4])
            {
              break;
            }

            v59 = *(a3 + 16);
            v60 = 16124;
LABEL_219:
            *&self->OSAReport_opaque[v60] = v59;
            break;
          case 2601:
            if (![(OSACrashReport *)self validKcdataItem:a3 min_size:v10, 24])
            {
              break;
            }

            v86 = *(a3 + 36);
            *&v178[0] = *(a3 + 16);
            *(&v178[1] + 1) = v86;
            v85 = *(a3 + 20);
            goto LABEL_164;
          case 2602:
            if (![(OSACrashReport *)self validKcdataItem:a3 min_size:v10, 32])
            {
              break;
            }

            v84 = *(a3 + 40);
            *&v178[0] = *(a3 + 16);
            *(&v178[1] + 1) = v84;
            v85 = *(a3 + 24);
LABEL_164:
            *(v178 + 8) = v85;
            break;
          default:
            if (v17 != 2389)
            {
              goto LABEL_143;
            }

            v76 = [v15[451] numberWithUnsignedLongLong:*(a3 + 16)];
            v77 = [v15[451] numberWithUnsignedLongLong:*(a3 + 24)];
            [(OSAExclaveContainer *)self->_exclaveContainer setThreadId:v77 withScId:v76];

            break;
        }
      }
    }

    else
    {
      if (v17 <= 18)
      {
        if ((v17 - 1) < 3 || v17 == -559025833)
        {
          goto LABEL_357;
        }

        if (v17 == 17)
        {
          v24 = *(a3 + 8);
          if (SHIDWORD(v24) > 2074)
          {
            if (HIDWORD(v24) == 2572 || HIDWORD(v24) == 2075)
            {
              if (v24)
              {
                if ([(OSACrashReport *)self validKcdataItem:a3 min_size:v10, 8])
                {
                  v115 = *(a3 + 16);
                  self->_coalition_id = v115;
                  if (v115)
                  {
                    v116 = xpc_coalition_copy_info();
                    v117 = v116;
                    if (v116)
                    {
                      if (xpc_get_type(v116) == &_xpc_type_dictionary)
                      {
                        string = xpc_dictionary_get_string(v117, key);
                        if (string || (string = xpc_dictionary_get_string(v117, v171)) != 0)
                        {
                          v119 = [NSString stringWithUTF8String:string];
                          coalition_name = self->_coalition_name;
                          self->_coalition_name = v119;
                        }
                      }
                    }

                    v15 = &create_gcore_with_options_ptr;
                    goto LABEL_357;
                  }
                }
              }

              goto LABEL_356;
            }
          }

          else
          {
            if (HIDWORD(v24) == 48)
            {
              if (v16 / 0x14 >= v24)
              {
                if (v24)
                {
                  v145 = v8;
                  v24 = v24;
                  v147 = a3 + 20;
                  do
                  {
                    [(NSMutableArray *)self->_taskImages addImage:v147 address:*(v147 - 4) size:0];
                    v147 += 20;
                    --v24;
                  }

                  while (v24);
                  goto LABEL_344;
                }
              }

              else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
              {
                v137 = sub_10000391C(a3);
                *buf = 67109376;
                *&buf[4] = v24;
                *&buf[8] = 2048;
                *&buf[10] = v137 / 0x14uLL;
                v26 = "Unexpected count for TASK_BTINFO_DYLD_LOADINFO %u > %lu";
LABEL_315:
                _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, v26, buf, 0x12u);
              }

LABEL_356:
              v15 = &create_gcore_with_options_ptr;
              goto LABEL_357;
            }

            if (HIDWORD(v24) == 49)
            {
              if (v16 / 0x18 >= v24)
              {
                if (v24)
                {
                  v145 = v8;
                  v24 = v24;
                  v146 = a3 + 24;
                  do
                  {
                    [(NSMutableArray *)self->_taskImages addImage:v146 address:*(v146 - 8) size:0];
                    v146 += 24;
                    --v24;
                  }

                  while (v24);
LABEL_344:
                  v8 = v145;
                  v15 = &create_gcore_with_options_ptr;
                  goto LABEL_357;
                }
              }

              else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
              {
                v25 = sub_10000391C(a3);
                *buf = 67109376;
                *&buf[4] = v24;
                *&buf[8] = 2048;
                *&buf[10] = v25 / 0x18uLL;
                v26 = "Unexpected count for TASK_BTINFO_DYLD_LOADINFO64 %u > %lu";
                goto LABEL_315;
              }

              goto LABEL_356;
            }
          }

          if ((HIDWORD(v24) & 0xFFFFFFFE) == 0xA24)
          {
            if (v24 <= sub_10000391C(a3) >> 3)
            {
              v14 = (a3 + 16);
              v173 = v24;
            }

            else
            {
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
              {
                v150 = sub_10000391C(a3);
                *buf = 67109376;
                *&buf[4] = v24;
                *&buf[8] = 2048;
                *&buf[10] = v150 >> 3;
                _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Unexpected count for TASK_BTINFO_BACKTRACE %u > %lu", buf, 0x12u);
              }

              v173 = 0;
            }
          }

          goto LABEL_356;
        }

LABEL_143:
        [*&self->OSAReport_opaque[v8] parseElement:? from:?];
        goto LABEL_357;
      }

      switch(v17)
      {
        case 2049:
        case 2051:
        case 2052:
        case 2055:
        case 2060:
        case 2061:
        case 2065:
        case 2067:
        case 2068:
        case 2073:
        case 2077:
          break;
        case 2050:
          if (![(OSACrashReport *)self validKcdataItem:a3 min_size:v10, 56])
          {
            break;
          }

          v18 = *(a3 + 32);
          v19 = 160;
          goto LABEL_216;
        case 2053:
          goto LABEL_23;
        case 2054:
          goto LABEL_125;
        case 2056:
          goto LABEL_119;
        case 2057:
          goto LABEL_134;
        case 2058:
        case 2070:
        case 2075:
        case 2076:
        case 2078:
        case 2079:
        case 2080:
        case 2081:
        case 2082:
        case 2083:
        case 2084:
        case 2085:
        case 2086:
        case 2087:
        case 2088:
        case 2089:
        case 2090:
        case 2091:
        case 2092:
        case 2093:
        case 2094:
        case 2095:
        case 2096:
        case 2097:
        case 2098:
        case 2099:
        case 2100:
        case 2101:
        case 2104:
          goto LABEL_143;
        case 2059:
          if ([(OSACrashReport *)self validKcdataItem:a3 min_size:v10, 16])
          {
            self->_proc_starttime = *(a3 + 16);
          }

          break;
        case 2062:
          goto LABEL_127;
        case 2063:
          goto LABEL_112;
        case 2064:
          if (![(OSACrashReport *)self validKcdataItem:a3 min_size:v10, 4])
          {
            break;
          }

          v59 = *(a3 + 16);
          v60 = 152;
          goto LABEL_219;
        case 2066:
          goto LABEL_117;
        case 2069:
          goto LABEL_132;
        case 2071:
          if ([(OSACrashReport *)self validKcdataItem:a3 min_size:v10, 16])
          {
            *buf = *(a3 + 16);
            [(OSACrashReport *)self _extractWorkQueueLimitsFromData:buf];
          }

          break;
        case 2072:
          if ([(OSACrashReport *)self validKcdataItem:a3 min_size:v10, 4])
          {
            self->_responsible_pid = *(a3 + 16);
            v88 = [(OSACrashReport *)self nameFromPid:?];
            responsibleProc = self->_responsibleProc;
            self->_responsibleProc = v88;
          }

          break;
        case 2074:
          goto LABEL_121;
        case 2102:
          if (![(OSACrashReport *)self validKcdataItem:a3 min_size:v10, 640])
          {
            break;
          }

          memset(buf, 0, 512);
          memcpy(buf, (a3 + 16), 0x280uLL);
          v21 = objc_opt_new();
          if (buf[0])
          {
            v103 = [NSString stringWithUTF8String:buf];
            [v21 addObject:v103];
          }

          if (buf[128])
          {
            v104 = [NSString stringWithUTF8String:&buf[128]];
            [v21 addObject:v104];
          }

          if (buf[256])
          {
            v105 = [NSString stringWithUTF8String:&buf[256]];
            [v21 addObject:v105];
          }

          if (buf[384])
          {
            v106 = [NSString stringWithUTF8String:&buf[384]];
            [v21 addObject:v106];
          }

          if (buf[512])
          {
            v107 = [NSString stringWithUTF8String:&buf[512]];
            [v21 addObject:v107];
          }

          v108 = [v21 componentsJoinedByString:&stru_1000463C0];
          ktriage_info = self->_ktriage_info;
          self->_ktriage_info = v108;

          goto LABEL_211;
        case 2103:
          if (![(OSACrashReport *)self validKcdataItem:a3 min_size:v10, 4])
          {
            break;
          }

          LOBYTE(v73) = *(a3 + 16) != 0;
          v72 = 16376;
          goto LABEL_198;
        case 2105:
          v59 = *(a3 + 16);
          v60 = 16392;
          goto LABEL_219;
        case 2106:
          v59 = *(a3 + 16);
          v60 = 16396;
          if (v59 == 0x7FFFFFFF)
          {
            v59 = 0;
          }

          goto LABEL_219;
        case 2107:
          v80 = v16 >= (*(a3 + 8) & 0xFu);
          v98 = v16 - (*(a3 + 8) & 0xF);
          if (v80)
          {
            v99 = v98;
          }

          else
          {
            v99 = 0;
          }

          if (strnlen((a3 + 16), v99) >= v99)
          {
            break;
          }

          v100 = [NSString stringWithUTF8String:a3 + 16];
          v101 = 16488;
          goto LABEL_225;
        case 2108:
          v80 = v16 >= (*(a3 + 8) & 0xFu);
          v111 = v16 - (*(a3 + 8) & 0xF);
          if (v80)
          {
            v112 = v111;
          }

          else
          {
            v112 = 0;
          }

          if (strnlen((a3 + 16), v112) >= v112)
          {
            break;
          }

          v100 = [NSString stringWithUTF8String:a3 + 16];
          v101 = 16272;
LABEL_225:
          v113 = *&self->OSAReport_opaque[v101];
          *&self->OSAReport_opaque[v101] = v100;

          break;
        case 2109:
          v59 = *(a3 + 16);
          v60 = 16280;
          goto LABEL_219;
        case 2110:
          v59 = *(a3 + 16);
          v60 = 16284;
          goto LABEL_219;
        case 2111:
          goto LABEL_123;
        case 2112:
          v102 = *(a3 + 24);
          self->_jit_start_address = *(a3 + 16);
          self->_jit_end_address = v102;
          [(NSMutableArray *)self->_taskImages addJITImage:self->_jit_start_address size:v102 - self->_jit_start_address];
          break;
        case 2113:
          if ([(OSACrashReport *)self validKcdataItem:a3 min_size:v10, 520])
          {
            v169 = v8;
            if (!self->_mteTags)
            {
              v90 = [[NSMutableArray alloc] initWithCapacity:1024];
              mteTags = self->_mteTags;
              self->_mteTags = v90;
            }

            for (i = 24; i != 536; ++i)
            {
              v93 = *(a3 + i);
              v94 = self->_mteTags;
              v95 = [NSNumber numberWithInt:v93 & 0xF];
              [(NSMutableArray *)v94 addObject:v95];

              v96 = self->_mteTags;
              v97 = [NSNumber numberWithInt:v93 >> 4];
              [(NSMutableArray *)v96 addObject:v97];
            }

            v8 = v169;
            v15 = &create_gcore_with_options_ptr;
          }

          break;
        case 2114:
          v80 = v16 >= (*(a3 + 8) & 0xFu);
          v110 = v16 - (*(a3 + 8) & 0xF);
          if (!v80)
          {
            v110 = 0;
          }

          if (v110 < 8)
          {
            break;
          }

          v18 = *(a3 + 16);
          v19 = 16336;
LABEL_216:
          *&self->OSAReport_opaque[v19] = v18;
          break;
        default:
          if (v17 != 19)
          {
            if (v17 != 56)
            {
              goto LABEL_143;
            }

            v29 = (a3 + 16);
            v80 = v16 >= (*(a3 + 8) & 0xFu);
            LODWORD(v16) = v16 - (*(a3 + 8) & 0xF);
            if (v80)
            {
              v16 = v16;
            }

            else
            {
              v16 = 0;
            }

            v30 = v29 + v16;
            v31 = a3 + 32;
            if (a3 + 32 > v29 + v16)
            {
              goto LABEL_111;
            }

            v168 = v8;
            v170 = v29 + v16;
LABEL_55:
            v32 = v29[1];
            if (v31 + v32 > v30 || (v33 = *v29, *v29 == -242132755))
            {
LABEL_110:
              v8 = v168;
LABEL_111:
              v15 = &create_gcore_with_options_ptr;
              break;
            }

            if ((v33 & 0xFFFFFFF0) == 0x20)
            {
              v33 = 17;
            }

            if (v33 > 4098)
            {
              if (v33 > 4101)
              {
                if (v33 == 4102)
                {
                  v50 = [(OSACrashReport *)self validKcdataItem:v29 min_size:v170, 8];
                  v30 = v170;
                  if (v50)
                  {
                    v35 = *(v29 + 2);
                    v36 = 15864;
LABEL_94:
                    *&self->OSAReport_opaque[v36] = v35;
                  }

LABEL_109:
                  v29 = (v31 + v29[1]);
                  v31 = (v29 + 4);
                  if ((v29 + 4) > v30)
                  {
                    goto LABEL_110;
                  }

                  goto LABEL_55;
                }

                if (v33 == 1403128064)
                {
                  goto LABEL_109;
                }
              }

              else
              {
                if (v33 == 4099)
                {
                  v46 = v29[2] & 0xF;
                  v80 = v32 >= v46;
                  v48 = v32 - v46;
                  v47 = v48 != 0 && v80;
                  if (!v80)
                  {
                    v48 = 0;
                  }

                  self->_exit_payload_length = v48;
                  if (v47)
                  {
                    v49 = malloc_type_malloc(v48 + 1, 0x32C06272uLL);
                    v30 = v170;
                    self->_exit_payload = v49;
                    if (v49)
                    {
                      memcpy(v49, v29 + 4, self->_exit_payload_length);
                      v30 = v170;
                      *(self->_exit_payload + self->_exit_payload_length) = 0;
                    }
                  }

                  goto LABEL_109;
                }

                if (v33 == 4101)
                {
                  v34 = [(OSACrashReport *)self validKcdataItem:v29 min_size:v170, 8];
                  v30 = v170;
                  if (v34)
                  {
                    v35 = *(v29 + 2);
                    v36 = 16024;
                    goto LABEL_94;
                  }

                  goto LABEL_109;
                }
              }

LABEL_79:
              v42 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG);
              v30 = v170;
              if (!v42)
              {
                goto LABEL_109;
              }

              if ((*v29 & 0xFFFFFFF0) == 0x20)
              {
                v43 = 17;
              }

              else
              {
                v43 = *v29;
              }

              v44 = sub_10000391C(v29);
              *buf = 67109376;
              *&buf[4] = v43;
              *&buf[8] = 1024;
              *&buf[10] = v44;
              _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "unknown nested kcdata type: 0x%x, size: %d", buf, 0xEu);
LABEL_108:
              v30 = v170;
              goto LABEL_109;
            }

            switch(v33)
            {
              case 54:
                v45 = [(OSACrashReport *)self validKcdataItem:v29 min_size:v170, 4];
                v30 = v170;
                if (v45)
                {
                  self->_terminator_pid = v29[4];
                }

                goto LABEL_109;
              case 55:
                v51 = v29[2] & 0xF;
                if (v32 >= v51)
                {
                  v52 = v32 - (v29[2] & 0xF);
                }

                else
                {
                  v52 = 0;
                }

                if (strnlen(v29 + 16, v52) >= v52 || v32 <= v51)
                {
                  v54 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
                  v30 = v170;
                  if (!v54)
                  {
                    goto LABEL_109;
                  }

                  *buf = 0;
                  v41 = "terminator proc string is NULL or malformed";
                  goto LABEL_104;
                }

                *(v29 + (v52 - 1) + 16) = 0;
                v55 = [NSString stringWithUTF8String:v29 + 4];
                v56 = 15944;
                break;
              case 4098:
                v37 = v29[2] & 0xF;
                if (v32 >= v37)
                {
                  v38 = v32 - (v29[2] & 0xF);
                }

                else
                {
                  v38 = 0;
                }

                if (strnlen(v29 + 16, v38) >= v38 || v32 <= v37)
                {
                  v40 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
                  v30 = v170;
                  if (!v40)
                  {
                    goto LABEL_109;
                  }

                  *buf = 0;
                  v41 = "exit reason string is NULL or malformed";
LABEL_104:
                  _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v41, buf, 2u);
                  goto LABEL_108;
                }

                *(v29 + (v38 - 1) + 16) = 0;
                v55 = [NSString stringWithUTF8String:v29 + 4];
                v56 = 15936;
                break;
              default:
                goto LABEL_79;
            }

            v57 = *&self->OSAReport_opaque[v56];
            *&self->OSAReport_opaque[v56] = v55;

            goto LABEL_108;
          }

          if (*(a3 + 16) == 2377)
          {
            a3 = [(OSAExclaveContainer *)self->_exclaveContainer parseKCdata:a3, v10];
            v10 = v114;
          }

          break;
      }
    }

LABEL_357:
    v149 = a3 + *(a3 + 4);
    a3 = v149 + 16;
    v11 = v149 + 32;
  }

  while (v149 + 32 <= v10);
  if (!self->_is_lightweight_corpse || v173 < 1)
  {
    v151 = v174;
  }

  else
  {
    v153 = objc_alloc_init(OSABinaryImageCatalog);
    if (!uuid_is_null(v178 + 8))
    {
      [v153 targetSharedCache:v178 + 8 withSlide:*&v178[0] atBaseAddress:*(&v178[1] + 1)];
    }

    [(NSMutableArray *)self->_taskImages sortByAddressAndSetInferredSizes];
    v154 = [[NSMutableArray alloc] initWithCapacity:1];
    threadInfos = self->_threadInfos;
    self->_threadInfos = v154;

    v156 = v173;
    v157 = [NSMutableArray arrayWithCapacity:v173];
    do
    {
      v159 = *v14++;
      v158 = v159;
      if (v159)
      {
        v160 = [v153 searchFrame:v158 in:self->_taskImages regions:0 result:0];
        v161 = [(OSACrashReport *)self composeFrame:v160 info:0];
        [v157 addObject:v161];
      }

      --v156;
    }

    while (v156);
    self->_crashedThreadNumber = 0;
    v162 = objc_opt_new();
    [v162 setObject:v157 forKeyedSubscript:@"frames"];
    v163 = [NSNumber numberWithUnsignedLongLong:self->_threadId];
    [v162 setObject:v163 forKeyedSubscript:@"id"];

    v151 = v174;
    [v162 setObject:v174 forKeyedSubscript:@"name"];
    [(NSMutableArray *)self->_threadInfos addObject:v162];
    v164 = [v153 reportUsedImagesFullInfoUsingBlock:0];
    usedImages = self->_usedImages;
    self->_usedImages = v164;

    v166 = [(OSACrashReport *)self decode_crashingThreadStateWithSymbolicator:0 usingCatalog:0, v153];
    threadStateDecoded = self->_threadStateDecoded;
    self->_threadStateDecoded = v166;
  }

LABEL_369:
}

- (void)_extractLastExceptionBacktraceUsingSymbolicator:(_CSTypeRef)a3 usingCatalog:(id)a4
{
  var1 = a3.var1;
  var0 = a3.var0;
  v7 = a4;
  CSSymbolicatorGetSymbolOwnerWithNameAtTime();
  if ((CSIsNull() & 1) == 0)
  {
    CSSymbolOwnerGetSymbolWithName();
    if ((CSIsNull() & 1) == 0)
    {
      v8 = [(OSACrashReport *)self _copyStringFromTask:self->_task atAddress:CSSymbolGetRange() maxLength:0 immutableCheck:0 isInSharedCache:0];
      if (v8)
      {
        v9 = v8;
        v10 = strlen(v8);
        if (v10 && *v9 == 40 && v9[v10 - 1] == 41)
        {
          v11 = objc_opt_new();
          v12 = v9 + 1;
          while (1)
          {
            v13 = *v12;
            if (v13 == 32)
            {
              goto LABEL_13;
            }

            if (!*v12 || v13 == 41)
            {
              lastExceptionBacktrace = self->_lastExceptionBacktrace;
              self->_lastExceptionBacktrace = v11;

              break;
            }

            v21 = 0;
            v20 = 0;
            if (!sscanf(v12, "0x%llx%n", &v21, &v20))
            {
LABEL_13:
              ++v12;
            }

            else
            {
              v12 += v20;
              v14 = v21;
              v16[0] = _NSConcreteStackBlock;
              v16[1] = 3221225472;
              v16[2] = sub_100013C70;
              v16[3] = &unk_100045308;
              v17 = v11;
              v18 = self;
              v19 = v21;
              [(OSACrashReport *)self symbolicateFrame:v14 adjusted:v14 withSymbolicator:var0 usingCatalog:var1 andBlock:v7, v16];
            }
          }
        }

        free(v9);
      }
    }
  }
}

- (void)_extractExceptionReasonUsingSymbolicator:(_CSTypeRef)a3 usingCatalog:(id)a4
{
  SymbolOwnerWithNameAtTime = CSSymbolicatorGetSymbolOwnerWithNameAtTime();
  v7 = v6;
  if ((CSIsNull() & 1) == 0)
  {
    CSSymbolOwnerGetSymbolWithName();
    if ((CSIsNull() & 1) == 0)
    {
      task = self->_task;
      Range = CSSymbolGetRange();
      v10 = sub_10000A614(task, Range, 0x400uLL);
      if (v10)
      {
        v11 = v10;
        v12 = [NSData dataWithBytes:v10 length:1024];
        free(v11);
        bzero(v43, 0x400uLL);
        v13 = [NSData dataWithBytes:v43 length:1024];
        v14 = [v12 isEqualToData:v13];

        if ((v14 & 1) == 0)
        {
          v15 = [[VMUVMRegionIdentifier alloc] initWithTask:self->_task pid:self->_proc_id options:1];
          v16 = [v15 regions];
          v17 = [[OSAOsLogPackParser alloc] initWithMaxNumAruments:8];
          v40[0] = _NSConcreteStackBlock;
          v40[1] = 3221225472;
          v40[2] = sub_1000141FC;
          v40[3] = &unk_100045330;
          v40[4] = self;
          [v17 setPointerPointsToSafeMemory:v40];
          v38[0] = _NSConcreteStackBlock;
          v38[1] = 3221225472;
          v38[2] = sub_100014208;
          v38[3] = &unk_100045358;
          v38[4] = self;
          v18 = v16;
          v39 = v18;
          [v17 setModulePathForMemoryPointer:v38];
          v37[0] = _NSConcreteStackBlock;
          v37[1] = 3221225472;
          v37[2] = sub_100014260;
          v37[3] = &unk_100045380;
          v37[4] = self;
          [v17 setReadCStringFromTarget:v37];
          v19 = [v17 parse:v12];
          if ([v19 count])
          {
            v20 = [v17 formatString];

            if (v20)
            {
              v21 = [NSSet setWithArray:&off_10004E478];
              v22 = [v17 formatStringOriginatingModulePath];

              if (v22)
              {
                v36 = v21;
                v23 = [v17 formatStringOriginatingModulePath];
                v24 = [v23 hasPrefix:@"/System/"];

                if (v24)
                {
                  v25 = [v17 formatStringOriginatingModulePath];
                  v26 = [v25 lastPathComponent];

                  v21 = v36;
                  if ([v36 containsObject:v26])
                  {
                    v27 = [v17 filterOutSensitiveParts:v19 withFormats:0];

                    v41[0] = @"composed_message";
                    v34 = v27;
                    v35 = [v17 compose:v27];
                    v42[0] = v35;
                    v41[1] = @"format_string";
                    v33 = [v17 formatString];
                    v42[1] = v33;
                    v41[2] = @"arguments";
                    v28 = [v17 extractArguments:v27];
                    v42[2] = v28;
                    v42[3] = @"objc-exception";
                    v41[3] = @"type";
                    v41[4] = @"class";
                    v29 = [(OSACrashReport *)self _readIndirectSafeStringFromSymbol:"__last_exception_class_name__" symbolOwner:SymbolOwnerWithNameAtTime, v7];
                    v42[4] = v29;
                    v41[5] = @"name";
                    v30 = [(OSACrashReport *)self _readIndirectSafeStringFromSymbol:"__last_exception_name__" symbolOwner:SymbolOwnerWithNameAtTime, v7];
                    v42[5] = v30;
                    v31 = [NSDictionary dictionaryWithObjects:v42 forKeys:v41 count:6];
                    exceptionReasonDetails = self->_exceptionReasonDetails;
                    self->_exceptionReasonDetails = v31;

                    v21 = v36;
                    v19 = v34;
                  }
                }

                else
                {
                  v21 = v36;
                }
              }
            }
          }
        }
      }
    }
  }
}

- (unint64_t)_readAddressFromMemory:(mapped_memory_t *)a3 atSymbol:(_CSTypeRef)a4
{
  CSSymbolGetRange();
  mapped_memory_read_pointer();
  return 0;
}

- (id)_readStringAtTaskAddress:(unint64_t)a3 maxLength:(unint64_t)a4 immutableCheck:(BOOL *)a5 isInSharedCache:(BOOL *)a6
{
  v6 = [(OSACrashReport *)self _copyStringFromTask:self->_task atAddress:a3 maxLength:a4 immutableCheck:a5 isInSharedCache:a6];
  if (v6)
  {
    v7 = v6;
    v8 = [NSString stringWithUTF8String:v6];
    free(v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_readIndirectSafeStringFromSymbol:(const char *)a3 symbolOwner:(_CSTypeRef)a4
{
  CSSymbolOwnerGetSymbolWithName();
  if ((CSIsNull() & 1) != 0 || (task = self->_task, Range = CSSymbolGetRange(), (v7 = sub_10000A614(task, Range, 8uLL)) == 0))
  {
    v10 = @"<not available>";
  }

  else
  {
    v8 = v7;
    v12 = 0;
    v9 = [(OSACrashReport *)self _readStringAtTaskAddress:*v7 maxLength:0 immutableCheck:&v12 + 1 isInSharedCache:&v12];
    v10 = v9;
    if (HIBYTE(v12) != 1 || (v12 & 1) == 0)
    {

      v10 = @"<redacted>";
    }

    free(v8);
  }

  return v10;
}

- (char)_copyStringFromTask:(unsigned int)a3 atAddress:(unint64_t)a4 maxLength:(unint64_t)a5 immutableCheck:(BOOL *)a6 isInSharedCache:(BOOL *)a7
{
  v10 = [(OSACrashReport *)self _regionAtAddress:a4 immutableCheck:a6 isInSharedCache:a7];
  v12 = 2 * vm_page_size;
  if (a5)
  {
    v12 = a5;
  }

  if (v12 + a4 <= v10 + v11)
  {
    v13 = v12;
  }

  else
  {
    v13 = v10 + v11 - a4;
  }

  return sub_10000A614(a3, a4, v13);
}

- (int)_regionInfoAtAddress:(unint64_t)a3 regionInfo:(vm_region_submap_short_info_64 *)a4 regionAddress:(unint64_t *)a5 regionSize:(unint64_t *)a6
{
  nesting_depth = 999999;
  v8 = a3;
  if (a5)
  {
    if (a6)
    {
      infoCnt = 12;
      result = mach_vm_region_recurse(self->_task, &v8, a6, &nesting_depth, &a4->protection, &infoCnt);
      *a5 = v8;
      return result;
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_1000303A0();
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000303E4();
  }

  return 1;
}

- (_VMURange)_regionAtAddress:(unint64_t)a3 immutableCheck:(BOOL *)a4 isInSharedCache:(BOOL *)a5
{
  memset(v14, 0, sizeof(v14));
  v12 = 0;
  v13 = a3;
  if ([(OSACrashReport *)self _regionInfoAtAddress:a3 regionInfo:v14 regionAddress:&v13 regionSize:&v12]|| (v14[0] & 1) == 0)
  {
    v12 = 0;
    v13 = 0;
  }

  if (a4)
  {
    *a4 = (BYTE4(v14[0]) & 2) == 0;
  }

  v8 = v13;
  if (a5)
  {
    sharedCacheBase = self->_sharedCacheBase;
    v10 = v13 >= sharedCacheBase && v12 + v13 <= self->_sharedCacheSize + sharedCacheBase;
    *a5 = v10;
  }

  v11 = v12;
  result.var1 = v11;
  result.var0 = v8;
  return result;
}

- (BOOL)_isMemorySafeAtAddress:(unint64_t)a3
{
  v4 = 0;
  [(OSACrashReport *)self _regionAtAddress:a3 immutableCheck:&v4 + 1 isInSharedCache:&v4];
  return HIBYTE(v4) & v4 & 1;
}

- (id)_readDataAtAddress:(unint64_t)a3 size:(unint64_t)a4
{
  is64Bit = self->_is64Bit;
  v8 = [NSMutableData dataWithCapacity:a4];
  if (v8)
  {
    if (!is64Bit)
    {
      a3 = a3;
    }

    for (i = a3 + a4; a3 < i; a3 += v13)
    {
      v10 = [(OSACrashReport *)self _regionAtAddress:a3 immutableCheck:0 isInSharedCache:0];
      if (!v10)
      {
        break;
      }

      v12 = &v10[v11];
      if (i < &v10[v11])
      {
        v12 = i;
      }

      v13 = &v12[-a3] >= a4 ? a4 : &v12[-a3];
      data[0] = 0;
      dataCnt = 0;
      if (vm_read(self->_task, a3, &v12[-a3], data, &dataCnt))
      {
        break;
      }

      v14 = [NSData dataWithBytes:data[0] length:dataCnt];
      vm_deallocate(mach_task_self_, data[0], dataCnt);
      if (!v14)
      {
        break;
      }

      [v8 appendData:v14];
    }
  }

  if ([v8 length])
  {
    v15 = v8;
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;

  return v15;
}

- (void)_addASILine:(id)a3 fromOwner:(id)a4 isSafe:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  if (![v8 length])
  {
    goto LABEL_12;
  }

  [(NSMutableDictionary *)self->_applicationSpecificInfoFullSensitive addLines:v8 fromOwner:v9];
  if (v5)
  {
    [(NSMutableDictionary *)self->_applicationSpecificInfo addLines:v8 fromOwner:v9];
    v10 = +[OSASystemConfiguration sharedInstance];
    v11 = [v10 appleInternal];

    if (!v11)
    {
      goto LABEL_8;
    }

    v12 = &OBJC_IVAR___OSACrashReport__applicationSpecificInfoRedacted;
  }

  else
  {
    v13 = +[OSASystemConfiguration sharedInstance];
    v14 = [v13 appleInternal];

    if ((v14 & 1) == 0)
    {
      goto LABEL_8;
    }

    v12 = &OBJC_IVAR___OSACrashReport__applicationSpecificInfo;
  }

  [*&self->OSAReport_opaque[*v12] addLines:v8 fromOwner:v9];
LABEL_8:
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v15 = @"sensitive";
    v16 = 138543874;
    v17 = v9;
    if (v5)
    {
      v15 = @"safe";
    }

    v18 = 2112;
    v19 = v15;
    v20 = 2114;
    v21 = v8;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "ASI found [%{public}@] (%@) '%{public}@'", &v16, 0x20u);
  }

LABEL_12:
}

- (void)_extractInfoPlistFromSymbolOwner:(_CSTypeRef)a3
{
  Name = CSSymbolOwnerGetName();
  if (Name)
  {
    v5 = Name;
    v6 = [(OSACrashReport *)self procName];
    v7 = [NSString stringWithUTF8String:v5];
    v8 = [v6 isEqualToString:v7];

    if (v8)
    {
      CSSymbolOwnerGetSectionWithName();
      Range = CSRegionGetRange();
      v11 = [(OSACrashReport *)self _readDataAtAddress:Range size:v10];
      if (v11)
      {
        v15 = 0;
        v12 = [NSPropertyListSerialization propertyListWithData:v11 options:0 format:0 error:&v15];
        v13 = v15;
        if (!v12 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_100030428();
        }
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_1000304A0();
        }

        v12 = 0;
      }

      info_plist = self->_info_plist;
      self->_info_plist = v12;
    }
  }
}

- (void)_extractCrashReporterAnnotationsFromSymbolOwner:(_CSTypeRef)a3 withMemory:(mapped_memory_t *)a4
{
  if (qword_1000540E0 != -1)
  {
    sub_1000304E4();
  }

  Name = CSSymbolOwnerGetName();
  if (Name)
  {
    v6 = [(OSACrashReport *)self procName];
    v7 = [NSString stringWithUTF8String:Name];
    v8 = [v6 isEqualToString:v7];

    if (v8)
    {
      v9 = self->_cs_validation_category == 1;
    }
  }

  CSSymbolOwnerForeachSection();
}

- (void)_extractBinaryImageInfoUsingSymbolicator:(_CSTypeRef)a3 usingCatalog:(id)a4
{
  v5 = a4;
  self->_sharedCacheAddress = CSSymbolicatorGetSharedCacheBaseAddress();
  v6 = objc_autoreleasePoolPush();
  v7 = +[NSMutableArray array];
  task = self->_task;
  mapped_memory_cache_for_task = create_mapped_memory_cache_for_task();
  v20 = _NSConcreteStackBlock;
  v21 = 3221225472;
  v22 = sub_1000159E0;
  v23 = &unk_1000454A8;
  v24 = self;
  v25 = v7;
  v26 = mapped_memory_cache_for_task;
  CSSymbolicatorForeachSymbolOwnerAtTime();
  [(NSMutableArray *)self->_taskImages sortByAddressAndSetInferredSizes];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v10 = v25;
  v11 = [v10 countByEnumeratingWithState:&v16 objects:v27 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v17;
    do
    {
      v14 = 0;
      do
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [v5 searchFrame:objc_msgSend(*(*(&v16 + 1) + 8 * v14) in:"unsignedLongLongValue" result:{v16), self->_taskImages, 0}];
        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v16 objects:v27 count:16];
    }

    while (v12);
  }

  if (mapped_memory_cache_for_task)
  {
    destroy_mapped_memory_cache();
  }

  objc_autoreleasePoolPop(v6);
}

- (unint64_t)_objcSelectorAddressForMessenger:(id)a3 memory:(mapped_memory_t *)a4
{
  v6 = a3;
  v7 = [v6 rangeOfString:@"stret"];
  v8 = [v6 rangeOfString:@"fixup"];
  v9 = [v6 rangeOfString:@"vtable"];

  if (self->_threadStateFlavor != 1 || self->_threadState[0] != 6)
  {
    return 0;
  }

  if (!self->_isTranslated || self->_cpuType != 16777223)
  {
    return *&self->_threadState[4];
  }

  if (v8 == 0x7FFFFFFFFFFFFFFFLL && v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (v7 == 0x7FFFFFFFFFFFFFFFLL)
    {
      return *&self->_threadState[14];
    }

    else
    {
      return *&self->_threadState[6];
    }
  }

  else
  {
    v11 = *&self->_threadState[14] + 8;

    return [(OSACrashReport *)self _readAddressFromMemory:a4 atAddress:v11];
  }
}

- (id)_objcSelectorNameForMessenger:(id)a3
{
  v4 = a3;
  task = self->_task;
  v6 = [(OSACrashReport *)self _objcSelectorAddressForMessenger:v4 memory:create_mapped_memory_cache_for_task()];
  if (v6)
  {
    if (self->_is64Bit)
    {
      v7 = -86000;
    }

    else
    {
      v7 = 4294881296;
    }

    if (v6 == v7)
    {
      v8 = @"_ignoredSelector";
    }

    else
    {
      v8 = [(OSACrashReport *)self _readStringAtTaskAddress:v6 maxLength:0 immutableCheck:0 isInSharedCache:0];
    }
  }

  else
  {
    v8 = 0;
  }

  destroy_mapped_memory_cache();

  return v8;
}

- (void)symbolicateFrame:(unint64_t)a3 adjusted:(unint64_t)a4 withSymbolicator:(_CSTypeRef)a5 usingCatalog:(id)a6 andBlock:(id)a7
{
  v42 = a6;
  v9 = a7;
  v10 = objc_opt_new();
  if (dword_1000540C8)
  {
    CSSymbolicatorGetSymbolOwnerWithAddressAtTime();
    v49 = _NSConcreteStackBlock;
    v50 = 3221225472;
    v51 = sub_100016364;
    v52 = &unk_1000454D0;
    v54 = a3;
    v53 = v10;
    CSSymbolOwnerForEachStackFrameAtAddress();
  }

  if ([v10 count])
  {
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v11 = [v10 reverseObjectEnumerator];
    v12 = [v11 countByEnumeratingWithState:&v45 objects:v55 count:16];
    if (v12)
    {
      v13 = v12;
      v40 = v10;
      v14 = 0;
      v15 = *v46;
      do
      {
        v16 = v11;
        v17 = 0;
        v18 = v14;
        do
        {
          if (*v46 != v15)
          {
            objc_enumerationMutation(v16);
          }

          v19 = *(*(&v45 + 1) + 8 * v17);
          v20 = [v19 objectAtIndexedSubscript:0];
          v21 = [v20 unsignedLongLongValue];

          taskImages = self->_taskImages;
          v44 = v18;
          v23 = [v42 searchFrame:v21 in:taskImages regions:0 result:&v44];
          v14 = v44;

          v24 = 0;
          if ([v19 count] >= 2)
          {
            v24 = [v19 objectAtIndexedSubscript:1];
          }

          v9[2](v9, v23, v24, v14);

          v17 = v17 + 1;
          v18 = v14;
        }

        while (v13 != v17);
        v11 = v16;
        v13 = [v16 countByEnumeratingWithState:&v45 objects:v55 count:16];
      }

      while (v13);
      v10 = v40;
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v25 = self->_taskImages;
    rosettaRegions = self->_rosettaRegions;
    v43 = 0;
    v11 = [v42 searchFrame:a3 in:v25 regions:rosettaRegions result:&v43];
    v27 = v43;
    v14 = v27;
    v28 = !self->_isTranslated || v27 == 0;
    if (v28 || ([v27 symbolInfo], v29 = objc_claimAutoreleasedReturnValue(), is_null = uuid_is_null(&v29[OBJC_IVAR___OSASymbolInfo__uuid]), v29, !is_null))
    {
      v32 = 0;
    }

    else
    {
      v31 = v11;
      v32 = objc_opt_new();
      if (self->_isTranslated)
      {
        v33 = [v14 symbolInfo];
        v34 = [v33 cpuArch];
        v35 = [v34 hasPrefix:@"arm"];

        if (v35)
        {
          v36 = [v14 symbolInfo];
          v37 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", a3 - [v36 start]);
          [v32 setObject:v37 forKeyedSubscript:@"symbolLocation"];
        }
      }

      v38 = [v14 symbolInfo];
      v39 = [v38 name];
      [v32 setObject:v39 forKeyedSubscript:@"region"];

      v11 = v31;
    }

    v9[2](v9, v11, v32, v14);
  }
}

- (id)composeFrame:(id)a3 info:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_opt_new();
  v8 = [v6 objectAtIndexedSubscript:0];
  [v7 setObject:v8 forKeyedSubscript:@"imageIndex"];

  v9 = [v6 objectAtIndexedSubscript:1];

  [v7 setObject:v9 forKeyedSubscript:@"imageOffset"];
  if ([v5 count])
  {
    [v7 addEntriesFromDictionary:v5];
  }

  return v7;
}

- (unsigned)_extractBacktraceInfoUsingSymbolicator:(_CSTypeRef)a3 usingCatalog:(id)a4
{
  var1 = a3.var1;
  var0 = a3.var0;
  v75 = a4;
  v97 = 0;
  v98 = &v97;
  v99 = 0x2020000000;
  v100 = 0;
  v96[0] = 0;
  v96[1] = v96;
  v96[2] = 0x2020000000;
  v96[3] = 0;
  v95[0] = _NSConcreteStackBlock;
  v95[1] = 3221225472;
  v95[2] = sub_10001719C;
  v95[3] = &unk_1000454F8;
  v95[4] = v96;
  v74 = var0;
  v7 = var1;
  [(OSACrashReport *)self _extractRosettaRuntimeInfo:var0 withBlock:var1, v95];
  context = objc_autoreleasePoolPush();
  LODWORD(var0) = _os_feature_enabled_impl();
  v8 = [VMUSampler alloc];
  if (var0)
  {
    v9 = 4097;
  }

  else
  {
    v9 = 1;
  }

  v66 = [v8 initWithPID:self->_proc_id task:self->_task processName:self->_procName is64Bit:self->_is64Bit options:v9];
  v67 = [v66 sampleAllThreadsOnce];
  if (![v67 count])
  {
    [*&self->OSAReport_opaque[OBJC_IVAR___OSAReport__notes] addObject:@"[VMUSampler sampleAllThreadsOfTask:withSymbolicator] returned no stacks"];
  }

  v10 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v67, "count")}];
  threadInfos = self->_threadInfos;
  self->_threadInfos = v10;

  v72 = 0;
  v65 = 0;
  v63 = -1;
  v64 = 0;
  while ([v67 count] > v72)
  {
    v70 = objc_opt_new();
    v73 = [v67 objectAtIndexedSubscript:v72];
    v12 = [v73 thread];
    *thread_info_out = 0;
    v93 = 0;
    v94 = 0;
    thread_info_outCnt = 6;
    if (thread_info(v12, 4u, thread_info_out, &thread_info_outCnt))
    {
      v13 = -1;
    }

    else
    {
      v13 = *thread_info_out;
    }

    if (v13 != -1)
    {
      v14 = [NSNumber numberWithUnsignedLongLong:v13];
      [v70 setObject:v14 forKeyedSubscript:@"id"];

      exclaveContainer = self->_exclaveContainer;
      if (exclaveContainer)
      {
        v16 = [(OSAExclaveContainer *)exclaveContainer threadIdToScId];
        v17 = [NSNumber numberWithUnsignedLongLong:v13];
        v18 = [v16 objectForKeyedSubscript:v17];
        v19 = v18 == 0;

        if (!v19)
        {
          exclaveThreadNumbers = self->_exclaveThreadNumbers;
          if (!exclaveThreadNumbers)
          {
            v21 = objc_alloc_init(NSMutableArray);
            v22 = self->_exclaveThreadNumbers;
            self->_exclaveThreadNumbers = v21;

            exclaveThreadNumbers = self->_exclaveThreadNumbers;
          }

          v23 = [NSNumber numberWithInt:v72];
          [(NSMutableArray *)exclaveThreadNumbers addObject:v23];
        }
      }
    }

    if (self->_crashedThreadNumber < 0)
    {
      if ([v73 backtraceLength] > v65)
      {
        v65 = [v73 backtraceLength];
        self->_highlightedThreadNumber = v72;
        v63 = v13;
        v64 = v12;
      }

      threadId = self->_threadId;
      if (threadId != -1 && v13 == threadId || threadId == -1 && v12 == self->_threadPortOriginal)
      {
        threadPortPedigree = self->_threadPortPedigree;
        v26 = [NSString stringWithFormat:@"thread match 0x%x ID(0x%llX)", v12, threadId];
        [(NSMutableArray *)threadPortPedigree addObject:v26];

        self->_crashedThreadNumber = v72;
        *(v98 + 6) = v12;
        self->_highlightedThreadNumber = -1;
      }
    }

    v27 = [v66 threadNameForThread:v12];
    if ([v27 length])
    {
      v68 = [v27 stringByReplacingOccurrencesOfString:@"\n" withString:@" "];

      v28 = OSASanitizePath();
      [v70 setObject:v28 forKeyedSubscript:@"name"];
    }

    else
    {
      v68 = v27;
    }

    v69 = [v66 dispatchQueueNameForSerialNumber:{objc_msgSend(v73, "dispatchQueueSerialNumber")}];
    if ([v69 length])
    {
      v29 = OSASanitizePath();
      [v70 setObject:v29 forKeyedSubscript:@"queue"];
    }

    v30 = [v73 backtrace];
    v71 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v73 backtraceLength]);
    for (i = 0; i < [v73 backtraceLength]; ++i)
    {
      v32 = v30[i];
      v82[0] = _NSConcreteStackBlock;
      if (i)
      {
        v33 = v32 == 0;
      }

      else
      {
        v33 = 1;
      }

      v82[1] = 3221225472;
      v34 = !v33;
      v35 = v32 - v34;
      v82[2] = sub_1000171FC;
      v82[3] = &unk_100045520;
      v88 = i;
      v89 = v72;
      v90 = v12;
      v82[4] = self;
      v84 = &v97;
      v85 = v96;
      v86 = v13;
      v87 = v32;
      v83 = v71;
      [(OSACrashReport *)self symbolicateFrame:v32 adjusted:v35 withSymbolicator:v74 usingCatalog:v7 andBlock:v75, v82];
    }

    [v70 setObject:v71 forKeyedSubscript:@"frames"];
    v36 = [(OSACrashReport *)self decode_threadState:v12 withSymbolicator:v74 usingCatalog:v7, v75];
    [v70 setObject:v36 forKeyedSubscript:@"threadState"];

    v37 = [v73 recursionInfoArray];

    if (v37)
    {
      v38 = objc_opt_new();
      v80 = 0u;
      v81 = 0u;
      v78 = 0u;
      v79 = 0u;
      v39 = [v73 recursionInfoArray];
      v40 = [v39 countByEnumeratingWithState:&v78 objects:v105 count:16];
      if (v40)
      {
        v41 = *v79;
        do
        {
          for (j = 0; j != v40; j = j + 1)
          {
            if (*v79 != v41)
            {
              objc_enumerationMutation(v39);
            }

            v43 = *(*(&v78 + 1) + 8 * j);
            v44 = [v43 objectForKeyedSubscript:@"keyPC"];
            v45 = [v44 unsignedLongLongValue];

            v76[0] = _NSConcreteStackBlock;
            v76[1] = 3221225472;
            v76[2] = sub_100017580;
            v76[3] = &unk_100045548;
            v76[4] = self;
            v76[5] = v43;
            v77 = v38;
            [(OSACrashReport *)self symbolicateFrame:v45 adjusted:v45 - 1 withSymbolicator:v74 usingCatalog:v7 andBlock:v75, v76];
          }

          v40 = [v39 countByEnumeratingWithState:&v78 objects:v105 count:16];
        }

        while (v40);
      }

      v46 = [v38 count];
      v47 = [v73 recursionInfoArray];
      v48 = v46 == [v47 count];

      if (!v48)
      {
        v49 = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          v51 = [v73 recursionInfoArray];
          v52 = [v51 count];
          v53 = [v38 count];
          *buf = 134218240;
          v102 = v52;
          v103 = 2048;
          v104 = v53;
          _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "thread's original recursionInfoArray.count is %zu but after processing inline frames recursionInfoArray.count is %zu", buf, 0x16u);
        }
      }

      [v70 setObject:v38 forKeyedSubscript:@"recursionInfoArray"];
      v50 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v73 originalLength]);
      [v70 setObject:v50 forKeyedSubscript:@"originalLength"];

      if (v72 == self->_crashedThreadNumber)
      {
        self->_recursionOnCrashedThread = 1;
      }
    }

    [(NSMutableArray *)self->_threadInfos addObject:v70];

    ++v72;
  }

  v54 = *(v98 + 6);
  if (v54)
  {
    goto LABEL_57;
  }

  v55 = self->_threadPortPedigree;
  v56 = [NSString stringWithFormat:@"override via deepest 0x%x ID(0x%llX)", v64, v63];
  [(NSMutableArray *)v55 addObject:v56];

  self->_threadId = v63;
  *(v98 + 6) = v64;
  v54 = v64;
  if (v64)
  {
LABEL_57:
    v57 = mach_port_mod_refs(mach_task_self_, v54, 0, 1);
    v58 = self->_threadPortPedigree;
    v59 = [NSString stringWithFormat:@"port retain 0x%x result 0x%x (%s)", *(v98 + 6), v57, mach_error_string(v57)];
    [(NSMutableArray *)v58 addObject:v59];
  }

  objc_autoreleasePoolPop(context);
  v60 = *(v98 + 6);
  _Block_object_dispose(v96, 8);
  _Block_object_dispose(&v97, 8);

  return v60;
}

- (id)_findContainingRegion:(id)a3 address:(unint64_t)a4
{
  v5 = a3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100017724;
  v9[3] = &unk_100045568;
  v9[4] = a4;
  v6 = [v5 indexOfObjectPassingTest:v9];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = 0;
  }

  else
  {
    v7 = [v5 objectAtIndex:v6];
  }

  return v7;
}

- (id)_findContainingTextSegmentRegion:(id)a3 address:(unint64_t)a4
{
  v5 = a3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100017838;
  v9[3] = &unk_100045568;
  v9[4] = a4;
  v6 = [v5 indexOfObjectPassingTest:v9];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = 0;
  }

  else
  {
    v7 = [v5 objectAtIndex:v6];
  }

  return v7;
}

- (id)_readMallocZoneArrayFromMemory:(mapped_memory_t *)a3 usingSymbolicator:(_CSTypeRef)a4
{
  SymbolWithNameFromSymbolOwnerWithNameAtTime = CSSymbolicatorGetSymbolWithNameFromSymbolOwnerWithNameAtTime();
  v8 = v7;
  CSSymbolicatorGetSymbolWithNameFromSymbolOwnerWithNameAtTime();
  if ((CSIsNull() & 1) != 0 || CSIsNull()) && ((SymbolWithNameFromSymbolOwnerWithNameAtTime = CSSymbolicatorGetSymbolWithNameAtTime(), v8 = v9, CSSymbolicatorGetSymbolWithNameAtTime(), (CSIsNull()) || CSIsNull()))
  {
    v10 = +[NSData data];
  }

  else
  {
    v11 = [(OSACrashReport *)self _readDataAtAddress:CSSymbolGetRange() size:4];
    v10 = -[OSACrashReport _readDataAtAddress:size:](self, "_readDataAtAddress:size:", -[OSACrashReport _readAddressFromMemory:atSymbol:](self, "_readAddressFromMemory:atSymbol:", a3, SymbolWithNameFromSymbolOwnerWithNameAtTime, v8), 8 * *[v11 bytes]);
  }

  return v10;
}

- (id)_readMallocZoneArray:(_CSTypeRef)a3
{
  task = self->_task;
  v5 = [(OSACrashReport *)self _readMallocZoneArrayFromMemory:create_mapped_memory_cache_for_task() usingSymbolicator:a3.var0, a3.var1];
  destroy_mapped_memory_cache();

  return v5;
}

- (unint64_t)_findMallocZone:(id)a3 usingSymbolicator:(_CSTypeRef)a4
{
  var1 = a4.var1;
  var0 = a4.var0;
  v7 = a3;
  task = self->_task;
  mapped_memory_cache_for_task = create_mapped_memory_cache_for_task();
  v10 = [(OSACrashReport *)self _readMallocZoneArrayFromMemory:mapped_memory_cache_for_task usingSymbolicator:var0, var1];
  v11 = [v10 bytes];
  v12 = [v10 length];
  if (v12 < 8)
  {
LABEL_5:
    v14 = 0;
  }

  else
  {
    v13 = v12 >> 3;
    while (1)
    {
      v14 = *v11;
      v15 = [(OSACrashReport *)self _readStringAtTaskAddress:[(OSACrashReport *)self _readAddressFromMemory:mapped_memory_cache_for_task atAddress:*v11 + 72] maxLength:1024 immutableCheck:0 isInSharedCache:0];
      v16 = [v15 isEqualToString:v7];

      if (v16)
      {
        break;
      }

      ++v11;
      if (!--v13)
      {
        goto LABEL_5;
      }
    }
  }

  destroy_mapped_memory_cache();

  return v14;
}

- (id)_extractMallocTraceInfo:(id *)a3 withSymbolicator:(_CSTypeRef)a4 usingCatalog:(id)a5
{
  var1 = a4.var1;
  var0 = a4.var0;
  v9 = a5;
  v19 = [NSMutableArray arrayWithCapacity:a3->var2];
  if (a3->var2)
  {
    v10 = 0;
    do
    {
      v11 = v9;
      v12 = a3->var3[v10];
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_100017E04;
      v21[3] = &unk_100045590;
      v22 = v19;
      v23 = self;
      v13 = v12;
      v14 = v12;
      v9 = v11;
      [(OSACrashReport *)self symbolicateFrame:v13 adjusted:v14 withSymbolicator:var0 usingCatalog:var1 andBlock:v11, v21];

      ++v10;
    }

    while (v10 < a3->var2);
  }

  v24[0] = @"id";
  v15 = [NSNumber numberWithUnsignedLongLong:a3->var0, v19];
  v25[0] = v15;
  v24[1] = @"time";
  v16 = [NSNumber numberWithUnsignedLongLong:a3->var1];
  v24[2] = @"frames";
  v25[1] = v16;
  v25[2] = v20;
  v17 = [NSDictionary dictionaryWithObjects:v25 forKeys:v24 count:3];

  return v17;
}

- (void)_extractPGMReportUsingSymbolicator:(_CSTypeRef)a3 usingCatalog:(id)a4
{
  var1 = a3.var1;
  var0 = a3.var0;
  v7 = a4;
  v8 = [[VMUVMRegionIdentifier alloc] initWithTask:self->_task pid:self->_proc_id options:1];
  v9 = [v8 regions];
  v10 = [(OSACrashReport *)self _findContainingRegion:v9 address:self->_exceptionCode[1]];
  v11 = v10;
  if (v10 && *(v10 + OBJC_IVAR___VMUVMRegion_user_tag) == 13)
  {
    v24 = v7;
    v12 = [(OSACrashReport *)self _readMallocZoneArray:var0, var1];
    [v12 bytes];
    v26 = v12;
    [v12 length];
    memset(v27, 0, 464);
    task = self->_task;
    if (pgm_extract_report_from_corpse())
    {
      probGuardReport = self->_probGuardReport;
      self->_probGuardReport = &off_10004E260;
      v7 = v24;
    }

    else
    {
      if (LODWORD(v27[0]))
      {
        v7 = v24;
        probGuardReport = [(OSACrashReport *)self _extractMallocTraceInfo:v27 + 8 withSymbolicator:var0 usingCatalog:var1, v24];
        if (LODWORD(v27[0]) < 2)
        {
          v15 = @"<unavailable>";
        }

        else
        {
          v15 = [(OSACrashReport *)self _extractMallocTraceInfo:&v28 withSymbolicator:var0 usingCatalog:var1, v24];
        }
      }

      else
      {
        probGuardReport = @"<unavailable>";
        v15 = @"<unavailable>";
        v7 = v24;
      }

      v25 = v15;
      v29[0] = @"allocationTrace";
      v29[1] = @"deallocationTrace";
      v30[0] = probGuardReport;
      v30[1] = v15;
      v29[2] = @"errorType";
      v23 = [NSString stringWithUTF8String:0];
      v30[2] = v23;
      v29[3] = @"confidence";
      v22 = [NSString stringWithUTF8String:0];
      v30[3] = v22;
      v29[4] = @"faultAddress";
      v21 = [NSNumber numberWithUnsignedLong:0];
      v30[4] = v21;
      v29[5] = @"nearestAllocation";
      v16 = [NSNumber numberWithUnsignedLong:0];
      v30[5] = v16;
      v29[6] = @"allocationSize";
      v17 = [NSNumber numberWithUnsignedLong:0];
      v30[6] = v17;
      v29[7] = @"allocationState";
      v18 = [NSString stringWithUTF8String:0];
      v30[7] = v18;
      v19 = [NSDictionary dictionaryWithObjects:v30 forKeys:v29 count:8];
      v20 = self->_probGuardReport;
      self->_probGuardReport = v19;
    }
  }
}

- (void)_extractPGMLibpasReportUsingSymbolicator:(_CSTypeRef)a3 usingCatalog:(id)a4
{
  v5 = [[VMUVMRegionIdentifier alloc] initWithTask:self->_task pid:self->_proc_id options:1];
  v6 = [v5 regions];
  v7 = [(OSACrashReport *)self _findContainingRegion:v6 address:self->_exceptionCode[1]];
  v8 = v7;
  if (v7 && *(v7 + OBJC_IVAR___VMUVMRegion_user_tag) == 53)
  {
    task = self->_task;
    mapped_memory_cache_for_task = create_mapped_memory_cache_for_task();
    SymbolWithNameFromSymbolOwnerWithNameAtTime = CSSymbolicatorGetSymbolWithNameFromSymbolOwnerWithNameAtTime();
    if ([(OSACrashReport *)self _readAddressFromMemory:mapped_memory_cache_for_task atSymbol:SymbolWithNameFromSymbolOwnerWithNameAtTime, v12])
    {
      if (!&_PASReportCrashExtractResults)
      {
        v15 = *&self->OSAReport_opaque[OBJC_IVAR___OSAReport__notes];
        v16 = @"Could not locate PASReportCrashExtractResults in JavaScriptCore.";
        goto LABEL_9;
      }

      v13 = self->_task;
      Results = PASReportCrashExtractResults();
      if (!Results)
      {
        v23[0] = @"allocationTrace";
        v23[1] = @"deallocationTrace";
        v24[0] = @"<unknown>";
        v24[1] = @"<unknown>";
        v23[2] = @"errorType";
        v17 = [NSString stringWithUTF8String:0];
        v24[2] = v17;
        v23[3] = @"confidence";
        v18 = [NSString stringWithUTF8String:0];
        v24[3] = v18;
        v23[4] = @"faultAddress";
        v19 = [NSNumber numberWithUnsignedLong:0];
        v24[4] = v19;
        v24[5] = &off_10004D9D0;
        v23[5] = @"nearestAllocation";
        v23[6] = @"allocationSize";
        v20 = [NSNumber numberWithUnsignedLong:0];
        v23[7] = @"allocationState";
        v24[6] = v20;
        v24[7] = @"unknown";
        v21 = [NSDictionary dictionaryWithObjects:v24 forKeys:v23 count:8];
        probGuardReport = self->_probGuardReport;
        self->_probGuardReport = v21;

        goto LABEL_11;
      }

      if (Results == 5)
      {
        v15 = *&self->OSAReport_opaque[OBJC_IVAR___OSAReport__notes];
        v16 = @"Extracting libpas PGM metadata failed.";
LABEL_9:
        [v15 addObject:{v16, 0}];
      }
    }

LABEL_11:
    destroy_mapped_memory_cache();
  }
}

- (void)_extractMemoryErrorReportUsingSymbolicator:(_CSTypeRef)a3 usingCatalog:(id)a4
{
  var1 = a3.var1;
  var0 = a3.var0;
  v7 = a4;
  if ([(OSACrashReport *)self isMTECrash])
  {
    v8 = self->_exceptionCode[1];
    CSSymbolicatorGetSymbolWithNameFromSymbolOwnerWithNameAtTime();
    if ((CSIsNull() & 1) == 0)
    {
      CSSymbolGetRange();
      memset(v24, 0, 480);
      v22 = 0u;
      v23 = 0u;
      task = self->_task;
      v10 = sanitizers_diagnose_memory_error();
      if (v10)
      {
        v30 = @"error";
        v11 = [NSString stringWithUTF8String:v10];
        v31 = v11;
        v12 = [NSDictionary dictionaryWithObjects:&v31 forKeys:&v30 count:1];
        memoryErrorReport = self->_memoryErrorReport;
        self->_memoryErrorReport = v12;
      }

      else
      {
        v11 = [(OSACrashReport *)self _extractMallocTraceInfo:v24 + 8 withSymbolicator:var0 usingCatalog:var1, v7];
        if (LOBYTE(v24[0]) == 1)
        {
          memoryErrorReport = [(OSACrashReport *)self _extractMallocTraceInfo:&v25 withSymbolicator:var0 usingCatalog:var1, v7];
        }

        else
        {
          memoryErrorReport = @"<unavailable>";
        }

        v28[0] = @"errorType";
        v21 = [NSString stringWithUTF8String:v22];
        v29[0] = v21;
        v28[1] = @"faultAddress";
        v14 = [NSNumber numberWithUnsignedLong:*(&v22 + 1)];
        v29[1] = v14;
        v28[2] = @"blamedAllocation";
        v26[0] = @"address";
        v15 = [NSNumber numberWithUnsignedLong:v23];
        v27[0] = v15;
        v26[1] = @"size";
        v16 = [NSNumber numberWithUnsignedLong:*(&v23 + 1)];
        v27[1] = v16;
        v26[2] = @"isFreed";
        v17 = [NSNumber numberWithBool:LOBYTE(v24[0])];
        v27[2] = v17;
        v27[3] = v11;
        v26[3] = @"allocationTrace";
        v26[4] = @"deallocationTrace";
        v27[4] = memoryErrorReport;
        v18 = [NSDictionary dictionaryWithObjects:v27 forKeys:v26 count:5];
        v29[2] = v18;
        v19 = [NSDictionary dictionaryWithObjects:v29 forKeys:v28 count:3];
        v20 = self->_memoryErrorReport;
        self->_memoryErrorReport = v19;
      }
    }
  }
}

- (void)_extractSanitizerReportUsingSymbolicator:(_CSTypeRef)a3 usingCatalog:(id)a4
{
  var1 = a3.var1;
  var0 = a3.var0;
  v7 = a4;
  if (*self->_exceptionCode == 63470 && [(OSACrashReport *)self _findMallocZone:@"SanitizerMallocZone" usingSymbolicator:var0, var1])
  {
    v8 = self->_exceptionCode[1];
    memset(v17, 0, 496);
    task = self->_task;
    if (sanitizer_diagnose_fault_from_crash_reporter())
    {
      [*&self->OSAReport_opaque[OBJC_IVAR___OSAReport__notes] addObject:@"sanitizer_diagnose_fault_from_crash_reporter() failed.  This should never happen!"];
    }

    else
    {
      v10 = [(OSACrashReport *)self _extractMallocTraceInfo:v17 + 8 withSymbolicator:var0 usingCatalog:var1, v7];
      v11 = [(OSACrashReport *)self _extractMallocTraceInfo:&v18 withSymbolicator:var0 usingCatalog:var1, v7];
      v19[0] = @"allocationTrace";
      v19[1] = @"deallocationTrace";
      v20[0] = v10;
      v20[1] = v11;
      v19[2] = @"faultAddress";
      v12 = [NSNumber numberWithUnsignedLong:0];
      v20[2] = v12;
      v19[3] = @"nearestAllocation";
      v13 = [NSNumber numberWithUnsignedLong:0];
      v20[3] = v13;
      v19[4] = @"allocationSize";
      v14 = [NSNumber numberWithUnsignedLong:*&v17[0]];
      v20[4] = v14;
      v15 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:5];
      sanitizerReport = self->_sanitizerReport;
      self->_sanitizerReport = v15;
    }
  }
}

- (void)setApplicationSpecificInformation:(const char *)a3
{
  if (a3)
  {
    v4 = [NSString stringWithUTF8String:?];
    [(OSACrashReport *)self _addASILine:v4 fromOwner:@"internal" isSafe:1];
  }
}

+ (id)parentBundleURLForAppExtensionBundleURL:(id)a3 error:(id)a4
{
  v10 = a4;
  v4 = a3;
  v5 = [[LSApplicationExtensionRecord alloc] initWithURL:v4 error:&v10];

  v6 = [v5 containingBundleRecord];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 URL];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)loadStoreInfo:(id)a3 atURL:(id)a4 forPlatform:(unsigned int)a5
{
  v7 = a3;
  v8 = a4;
  v9 = objc_opt_new();
  v10 = [v8 pathExtension];
  v11 = [v10 isEqualToString:@"appex"];

  if (v11)
  {
    v12 = [objc_opt_class() parentBundleURLForAppExtensionBundleURL:v8 error:0];
    v13 = v12;
    if (v12)
    {
      v14 = v12;

      v8 = v14;
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100030580();
    }
  }

  v45 = 0;
  v15 = [[LSApplicationRecord alloc] initWithURL:v8 allowPlaceholder:1 error:&v45];
  v16 = v45;
  v17 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
  if (v15)
  {
    if (v17)
    {
      *buf = 67109634;
      *v47 = a5;
      *&v47[4] = 2114;
      *&v47[6] = v7;
      *&v47[14] = 2114;
      *&v47[16] = v8;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "loadStoreInfo [platform %d] %{public}@ from %{public}@", buf, 0x1Cu);
    }

    v18 = [v15 iTunesMetadata];
    v19 = [v18 storeItemIdentifier];

    if (v19)
    {
      v20 = [NSNumber numberWithUnsignedLongLong:v19];
      v21 = [v20 stringValue];
      [v9 setObject:v21 forKeyedSubscript:@"itemID"];
    }

    v22 = [v15 deviceIdentifierForVendor];
    v23 = [v22 UUIDString];

    if (v23)
    {
      [v9 setObject:v23 forKeyedSubscript:@"deviceIdentifierForVendor"];
    }

    v24 = [v15 iTunesMetadata];
    v44 = v16;
    v25 = [v24 storeCohortWithError:&v44];
    v26 = v44;

    if (v25)
    {
      [v9 setObject:v25 forKeyedSubscript:@"storeCohortMetadata"];
    }

    else if (v26 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v43 = [v26 localizedDescription];
      *buf = 138412290;
      *v47 = v43;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "unable to retrieve storeCohort: %@", buf, 0xCu);
    }

    v27 = [v15 iTunesMetadata];
    v28 = [v27 variantID];

    if (v28)
    {
      [v9 setObject:v28 forKeyedSubscript:@"applicationVariant"];
    }

    if ([v15 developerType] != 1)
    {
      [v9 setObject:&__kCFBooleanTrue forKeyedSubscript:@"thirdParty"];
    }

    if ([v15 isBeta])
    {
      [v9 setObject:&__kCFBooleanTrue forKeyedSubscript:@"entitledBeta"];
      v29 = [v15 iTunesMetadata];
      v30 = [v29 betaVersionIdentifier];
    }

    else
    {
      v29 = [v15 iTunesMetadata];
      v30 = [v29 versionIdentifier];
    }

    v31 = v30;

    if (v31)
    {
      v32 = [NSNumber numberWithUnsignedLongLong:v31];
      v33 = [v32 stringValue];
      [v9 setObject:v33 forKeyedSubscript:@"softwareVersionExternalIdentifier"];
    }

    v34 = [v15 iTunesMetadata];
    v35 = [v34 distributorInfo];
    v36 = [v35 distributorID];

    if (v36)
    {
      v37 = +[OSASystemConfiguration sharedInstance];
      v38 = [v37 getTaskingKey:@"disableDistributorID"];
      v39 = [v38 BOOLValue];

      if ((v39 & 1) == 0)
      {
        [v9 setObject:v36 forKeyedSubscript:@"distributorID"];
      }
    }
  }

  else
  {
    if (v17)
    {
      *buf = 138543618;
      *v47 = v8;
      *&v47[8] = 2114;
      *&v47[10] = v16;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Unable to find store record for '%{public}@': %{public}@", buf, 0x16u);
    }

    v26 = v16;
  }

  if ([v9 count])
  {
    v40 = v9;
  }

  else
  {
    v40 = 0;
  }

  v41 = v40;

  return v40;
}

+ (id)loadBuildInfo:(id)a3
{
  v3 = a3;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_100030604();
  }

  v4 = [v3 URLByAppendingPathComponent:@"Contents"];
  v5 = [v4 URLByAppendingPathComponent:@"version.plist"];

  if (v5)
  {
    v6 = [[NSDictionary alloc] initWithContentsOfURL:v5];
    v7 = objc_opt_new();
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v8 = [&off_10004E490 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v18;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(&off_10004E490);
          }

          v12 = *(*(&v17 + 1) + 8 * i);
          v13 = [v6 objectForKeyedSubscript:v12];
          if (v13)
          {
            [v7 setObject:v13 forKeyedSubscript:v12];
          }
        }

        v9 = [&off_10004E490 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v9);
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_10003067C(v7);
    }
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_1000306FC();
    }

    v7 = 0;
  }

  if ([v7 count])
  {
    v14 = v7;
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;

  return v14;
}

- (void)_extractVMMap:(_CSTypeRef)a3
{
  var1 = a3.var1;
  var0 = a3.var0;
  v6 = [[VMUVMRegionIdentifier alloc] initWithTask:self->_task pid:self->_proc_id options:1];
  v41 = self;
  if (self->_isTranslated)
  {
    v40 = v6;
    v7 = [v6 regions];
    v8 = objc_opt_new();
    rosettaRegions = self->_rosettaRegions;
    self->_rosettaRegions = v8;

    memset(uu, 0, sizeof(uu));
    uuid_clear(uu);
    v51 = 0;
    v52 = &v51;
    v53 = 0x2020000000;
    v54 = 0;
    v50[0] = _NSConcreteStackBlock;
    v50[1] = 3221225472;
    v50[2] = sub_100019804;
    v50[3] = &unk_1000454F8;
    v50[4] = &v51;
    [(OSACrashReport *)self _extractRosettaRuntimeInfo:var0 withBlock:var1, v50];
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v10 = v7;
    v11 = [v10 countByEnumeratingWithState:&v46 objects:v60 count:16];
    if (!v11)
    {
      goto LABEL_10;
    }

    v12 = *v47;
    while (1)
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v47 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v46 + 1) + 8 * i);
        v15 = v52[3];
        v16 = [v14 range];
        if ([OSACrashReport isAddress:v15 inRange:v16, v17])
        {
          v18 = *&v14[OBJC_IVAR___VMUVMRegion_object_id];
LABEL_12:

          v44 = 0u;
          v45 = 0u;
          v42 = 0u;
          v43 = 0u;
          v19 = v10;
          v20 = [v19 countByEnumeratingWithState:&v42 objects:v59 count:16];
          if (!v20)
          {
            goto LABEL_27;
          }

          v21 = *v43;
          while (2)
          {
            v22 = 0;
LABEL_15:
            if (*v43 != v21)
            {
              objc_enumerationMutation(v19);
            }

            v23 = *(*(&v42 + 1) + 8 * v22);
            if (*&v23[OBJC_IVAR___VMUVMRegion_object_id] == v18)
            {
              v24 = v41->_rosettaRegions;
              v25 = [*(*(&v42 + 1) + 8 * v22) range];
              [v23 range];
              [(NSMutableArray *)v24 addImageLegacy:uu address:v25 size:v26 name:"Rosetta Runtime Routines" path:0 arch:"arm64e"];
              v27 = &_os_log_default;
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
              {
                v28 = [v23 range];
                [v23 range];
                *buf = 134218240;
                v56 = v28;
                v57 = 2048;
                v58 = v29;
                v30 = "cached rosetta Runtime region %p + %llu";
                goto LABEL_23;
              }

              goto LABEL_24;
            }

            if (*&v23[OBJC_IVAR___VMUVMRegion_user_tag] == 234)
            {
              v31 = v41->_rosettaRegions;
              v32 = [*(*(&v42 + 1) + 8 * v22) range];
              [v23 range];
              [(NSMutableArray *)v31 addImageLegacy:uu address:v32 size:v33 name:"<translation info unavailable>" path:0 arch:"x86_64"];
              v34 = &_os_log_default;
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
              {
                v35 = [v23 range];
                [v23 range];
                *buf = 134218240;
                v56 = v35;
                v57 = 2048;
                v58 = v36;
                v30 = "cached rosetta JIT exec region %p + %llu";
LABEL_23:
                _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, v30, buf, 0x16u);
              }

LABEL_24:
            }

            if (v20 == ++v22)
            {
              v20 = [v19 countByEnumeratingWithState:&v42 objects:v59 count:16];
              if (!v20)
              {
LABEL_27:

                _Block_object_dispose(&v51, 8);
                v6 = v40;
                goto LABEL_28;
              }

              continue;
            }

            goto LABEL_15;
          }
        }
      }

      v11 = [v10 countByEnumeratingWithState:&v46 objects:v60 count:16];
      if (!v11)
      {
LABEL_10:
        v18 = 0;
        goto LABEL_12;
      }
    }
  }

LABEL_28:
  v37 = v6;
  v38 = [v6 descriptionForRegionTotals:1];
  vmSummary = v41->_vmSummary;
  v41->_vmSummary = v38;
}

- (id)_descriptionForException:(id)a3
{
  v3 = a3;
  v4 = +[NSMutableString string];
  v5 = [v3 description];
  [v4 appendString:v5];

  [v4 appendString:@"\n"];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [v3 callStackReturnAddresses];
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [v4 appendFormat:@"0x%08x\n", objc_msgSend(*(*(&v12 + 1) + 8 * i), "intValue")];
      }

      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  return v4;
}

- (void)captureDiagInfo:(id)a3
{
  v4 = a3;
  v5 = +[OSASystemConfiguration sharedInstance];
  v6 = [v5 appleInternal];
  v7 = byte_1000540D0;

  if (v6 && (v7 & 1) == 0)
  {
    v8 = objc_opt_new();
    spewage_diag = self->_spewage_diag;
    self->_spewage_diag = v8;

    init_port_set = 0;
    init_port_setCnt = 0;
    if (qword_1000540F0 != -1)
    {
      sub_100030784();
    }

    v10 = &unk_100054000;
    if (dispatch_semaphore_wait(qword_1000540E8, 0))
    {
      v11 = self->_spewage_diag;
      v12 = [v4 componentsJoinedByString:{@", "}];
      [(NSMutableDictionary *)v11 setObject:@"concurrent diagnostic collection underway" forKeyedSubscript:v12];

      goto LABEL_38;
    }

    if (mach_ports_lookup(mach_task_self_, &init_port_set, &init_port_setCnt))
    {
      v13 = self->_spewage_diag;
      v14 = [v4 componentsJoinedByString:{@", "}];
      [(NSMutableDictionary *)v13 setObject:@"mach_ports_lookup failed" forKeyedSubscript:v14];

LABEL_37:
      dispatch_semaphore_signal(v10[29]);
      goto LABEL_38;
    }

    task = self->_task;
    if (mach_ports_register(mach_task_self_, &task, 1u))
    {
      v15 = self->_spewage_diag;
      v16 = [v4 componentsJoinedByString:{@", "}];
      [(NSMutableDictionary *)v15 setObject:@"mach_ports_register failed" forKeyedSubscript:v16];

LABEL_29:
      v30 = init_port_setCnt;
      if (init_port_setCnt)
      {
        v31 = 0;
        do
        {
          v32 = init_port_set[v31];
          if (v32)
          {
            mach_port_deallocate(mach_task_self_, v32);
            v30 = init_port_setCnt;
          }

          ++v31;
        }

        while (v31 < v30);
        v33 = 4 * v30;
      }

      else
      {
        v33 = 0;
      }

      mig_deallocate(init_port_set, v33);
      goto LABEL_37;
    }

    v17 = byte_1000540D1;
    if (byte_1000540D2 == 1)
    {
      if ([(NSString *)self->_procName isEqualToString:@"SpringBoard"]|| [(NSString *)self->_procName isEqualToString:@"CommCenter"]|| [(NSString *)self->_procName isEqualToString:@"aggregated"]|| [(NSString *)self->_procName isEqualToString:@"addaily"]|| [(NSString *)self->_procName isEqualToString:@"coreduetd"]|| (v17 & 1) != 0)
      {
LABEL_20:
        if (*self->_exceptionCode == 3134085662)
        {
          v18 = "sysmemreset";
        }

        else
        {
          v18 = "resource";
        }

        procName = self->_procName;
        v20 = *&self->OSAReport_opaque[OBJC_IVAR___OSAReport__capture_time];
        v21 = OSADateFormat();
        v22 = [NSMutableString stringWithFormat:@"/var/mobile/Library/Logs/CrashReporter/MemoryGraph_%@_%@-%s", procName, v21, v18];

        v23 = [(OSACrashReport *)self incidentID];
        v24 = [NSString stringWithFormat:@"--outputGraph %@ --nonIPSMemgraphCount %lu --ipsIncidentID %@ --rateLimit --getCorpseFromParent %d", v22, 0, v23, self->_proc_id];

        v25 = sub_10000D580("/usr/bin/leaks", v24, dword_1000540CC, 0);
        self->_spewage_diag_total_length += [v25 length];
        [(NSMutableDictionary *)self->_spewage_diag setObject:v25 forKeyedSubscript:@"/usr/bin/leaks"];
        v26 = [v25 rangeOfString:@"'.*MemoryGraph_.+\\..+'" options:1024];
        if (v26 == 0x7FFFFFFFFFFFFFFFLL)
        {
          [*&self->OSAReport_opaque[OBJC_IVAR___OSAReport__notes] addObject:@"memgraph unable to parse filename from results"];
        }

        else
        {
          v28 = [v25 substringWithRange:{v26 + 1, v27 - 2}];
          memgraph_filename = self->_memgraph_filename;
          self->_memgraph_filename = v28;

          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
          {
            sub_100030798(&self->_memgraph_filename);
          }
        }

LABEL_28:
        mach_ports_register(mach_task_self_, init_port_set, init_port_setCnt);
        goto LABEL_29;
      }
    }

    else if (byte_1000540D1)
    {
      goto LABEL_20;
    }

    v34 = [v4 count];
    if ([(NSArray *)self->_diagToolExtras count])
    {
      v35 = [v4 arrayByAddingObjectsFromArray:self->_diagToolExtras];

      v4 = v35;
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v56 = v4;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "diag tools include: %@", buf, 0xCu);
    }

    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v22 = v4;
    v36 = [v22 countByEnumeratingWithState:&v47 objects:v54 count:16];
    if (v36)
    {
      v37 = v36;
      obj = v22;
      v38 = 0;
      v39 = *v48;
      do
      {
        for (i = 0; i != v37; i = i + 1)
        {
          if (*v48 != v39)
          {
            objc_enumerationMutation(obj);
          }

          v41 = *(*(&v47 + 1) + 8 * i);
          if (v38 >= v34)
          {
            v42 = &stru_1000463C0;
          }

          else
          {
            if (self->_exceptionType == 11)
            {
              v42 = @"--excResource";
            }

            else
            {
              v42 = @"--shortenedOutput";
            }

            ++v38;
          }

          v43 = [v41 UTF8String];
          v44 = [NSString stringWithFormat:@"%@ --getCorpseFromParent %d", v42, self->_proc_id];
          v45 = sub_10000D580(v43, v44, dword_1000540CC, self->_spewage_diag_total_length);

          [(NSMutableDictionary *)self->_spewage_diag setObject:v45 forKeyedSubscript:v41];
          self->_spewage_diag_total_length += [v45 length];
        }

        v37 = [obj countByEnumeratingWithState:&v47 objects:v54 count:16];
      }

      while (v37);
      v22 = obj;
      v4 = obj;
      v10 = &unk_100054000;
    }

    else
    {
      v4 = v22;
    }

    goto LABEL_28;
  }

LABEL_38:
}

- (void)decode_reasonDyldWithInfo:(id)a3
{
  v4 = a3;
  v49[0] = &off_10004D9E8;
  v49[1] = &off_10004DA00;
  v50[0] = @"Library missing";
  v50[1] = @"Wrong architecture";
  v49[2] = &off_10004DA18;
  v49[3] = &off_10004DA30;
  v50[2] = @"Wrong version";
  v50[3] = @"Symbol missing";
  v49[4] = &off_10004DA48;
  v49[5] = &off_10004DA60;
  v50[4] = @"Code Signature";
  v50[5] = @"Filesystem Sandbox";
  v49[6] = &off_10004DA78;
  v50[6] = @"Malformed Mach-O";
  v5 = [NSDictionary dictionaryWithObjects:v50 forKeys:v49 count:7];
  v6 = [NSNumber numberWithUnsignedLongLong:self->_exit_snapshot->ers_code];
  v7 = [v5 objectForKeyedSubscript:v6];
  [v4 setObject:v7 forKeyedSubscript:@"indicator"];

  exit_payload = self->_exit_payload;
  if (exit_payload)
  {
    if (self->_exit_payload_length < 0x14)
    {
      [*&self->OSAReport_opaque[OBJC_IVAR___OSAReport__notes] addObject:@"Failed to extract dyld error info: The size of the data is not what is expected"];
    }

    else
    {
      if (exit_payload[4])
      {
        self->_fatalDyldErrorOnLaunch = 1;
        [v4 setObject:&off_10004E4C0 forKeyedSubscript:@"details"];
      }

      v34 = v5;
      v38 = objc_opt_new();
      v9 = *(exit_payload + 2);
      if (v9 && v9 < self->_exit_payload_length)
      {
        v10 = [NSString stringWithUTF8String:&exit_payload[v9]];
        v11 = OSASanitizePath();
        v12 = [NSString stringWithUTF8String:&exit_payload[v9]];
        [v38 setObject:v11 forKeyedSubscript:v12];
      }

      v13 = *(exit_payload + 3);
      if (v13 && v13 < self->_exit_payload_length)
      {
        v14 = [NSString stringWithUTF8String:&exit_payload[v13]];
        v15 = OSASanitizePath();
        v16 = [NSString stringWithUTF8String:&exit_payload[v13]];
        [v38 setObject:v15 forKeyedSubscript:v16];
      }

      v35 = v4;
      v17 = [v4 objectForKeyedSubscript:@"reasons"];
      v37 = objc_opt_new();
      v43 = 0u;
      v44 = 0u;
      v45 = 0u;
      v46 = 0u;
      obj = v17;
      v18 = [obj countByEnumeratingWithState:&v43 objects:v48 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v44;
        do
        {
          for (i = 0; i != v19; i = i + 1)
          {
            if (*v44 != v20)
            {
              objc_enumerationMutation(obj);
            }

            v22 = *(*(&v43 + 1) + 8 * i);
            v39 = 0u;
            v40 = 0u;
            v41 = 0u;
            v42 = 0u;
            v23 = v38;
            v24 = [v23 countByEnumeratingWithState:&v39 objects:v47 count:16];
            if (v24)
            {
              v25 = v24;
              v26 = *v40;
              do
              {
                v27 = 0;
                v28 = v22;
                do
                {
                  if (*v40 != v26)
                  {
                    objc_enumerationMutation(v23);
                  }

                  v29 = *(*(&v39 + 1) + 8 * v27);
                  v30 = [v23 objectForKeyedSubscript:v29];
                  v22 = [v28 stringByReplacingOccurrencesOfString:v29 withString:v30];

                  v27 = v27 + 1;
                  v28 = v22;
                }

                while (v25 != v27);
                v25 = [v23 countByEnumeratingWithState:&v39 objects:v47 count:16];
              }

              while (v25);
            }

            [v37 addObject:v22];
          }

          v19 = [obj countByEnumeratingWithState:&v43 objects:v48 count:16];
        }

        while (v19);
      }

      v31 = +[OSASystemConfiguration sharedInstance];
      v32 = [v31 appleInternal];

      if (v32)
      {
        v33 = @"signatureReasons";
      }

      else
      {
        v33 = @"reasons";
      }

      v4 = v35;
      [v35 setObject:v37 forKeyedSubscript:v33];

      v5 = v34;
    }
  }
}

- (id)decode_versionCodes:(unsigned __int16)a3[4]
{
  v4 = [NSNumber numberWithUnsignedShort:*a3];
  v11[0] = v4;
  v5 = [NSNumber numberWithUnsignedShort:a3[1]];
  v11[1] = v5;
  v6 = [NSNumber numberWithUnsignedShort:a3[2]];
  v11[2] = v6;
  v7 = [NSNumber numberWithUnsignedShort:a3[3]];
  v11[3] = v7;
  v8 = [NSArray arrayWithObjects:v11 count:4];

  v9 = [v8 componentsJoinedByString:@"."];

  return v9;
}

- (id)decode_reasonBTC
{
  v3 = objc_opt_new();
  exit_payload = self->_exit_payload;
  if (exit_payload)
  {
    if (self->_exit_payload_length < 0x800)
    {
      [*&self->OSAReport_opaque[OBJC_IVAR___OSAReport__notes] addObject:@"Failed to extract BTC error info: The size of the data is not what is expected"];
    }

    else
    {
      v115 = (exit_payload + 269);
      memset(out, 0, 37);
      uuid_unparse(exit_payload + 5, out);
      v140[0] = @"bin_id";
      [NSNumber numberWithUnsignedInt:*(exit_payload + 1)];
      v5 = v118 = exit_payload;
      v141[0] = v5;
      v140[1] = @"uuid";
      v6 = [NSString stringWithUTF8String:out];
      v141[1] = v6;
      v140[2] = @"mac_version";
      v7 = [(OSACrashReport *)self decode_versionCodes:v118 + 21];
      v141[2] = v7;
      v140[3] = @"phy_version";
      v8 = [(OSACrashReport *)self decode_versionCodes:v118 + 29];
      v141[3] = v8;
      v9 = [NSDictionary dictionaryWithObjects:v141 forKeys:v140 count:4];
      [v3 setObject:v9 forKeyedSubscript:@"sw_version"];

      v138[0] = @"id";
      v10 = [NSNumber numberWithUnsignedInt:*(v118 + 37)];
      v138[1] = @"params";
      v139[0] = v10;
      v11 = [NSNumber numberWithUnsignedInt:*(v118 + 41)];
      v137[0] = v11;
      v12 = [NSNumber numberWithUnsignedInt:*(v118 + 45)];
      v137[1] = v12;
      v13 = [NSNumber numberWithUnsignedInt:*(v118 + 49)];
      v137[2] = v13;
      v14 = [NSNumber numberWithUnsignedInt:*(v118 + 53)];
      v137[3] = v14;
      v15 = [NSArray arrayWithObjects:v137 count:4];
      v139[1] = v15;
      v16 = [NSDictionary dictionaryWithObjects:v139 forKeys:v138 count:2];
      v117 = v3;
      [v3 setObject:v16 forKeyedSubscript:@"reason"];

      v17 = objc_opt_new();
      for (i = 0; i != 20; i += 4)
      {
        v19 = [NSNumber numberWithUnsignedInt:*&v118[i + 61]];
        [v17 addObject:v19];
      }

      v135[0] = @"pc";
      v20 = [NSNumber numberWithUnsignedInt:*(v118 + 57)];
      v136[0] = v20;
      v108 = v17;
      v136[1] = v17;
      v135[1] = @"lr";
      v135[2] = @"cpsr";
      v21 = [NSNumber numberWithUnsignedInt:*(v118 + 81)];
      v136[2] = v21;
      v135[3] = @"dfar";
      v22 = [NSNumber numberWithUnsignedInt:*(v118 + 85)];
      v136[3] = v22;
      v135[4] = @"dfsr";
      v23 = [NSNumber numberWithUnsignedInt:*(v118 + 89)];
      v136[4] = v23;
      v135[5] = @"ifar";
      v24 = [NSNumber numberWithUnsignedInt:*(v118 + 93)];
      v136[5] = v24;
      v135[6] = @"ifsr";
      v25 = [NSNumber numberWithUnsignedInt:*(v118 + 97)];
      v136[6] = v25;
      v114 = [NSDictionary dictionaryWithObjects:v136 forKeys:v135 count:7];

      v133[0] = @"vic0_vicrawintr";
      v111 = [NSNumber numberWithUnsignedInt:*(v118 + 101)];
      v134[0] = v111;
      v133[1] = @"vic1_vicrawintr";
      v109 = [NSNumber numberWithUnsignedInt:*(v118 + 105)];
      v134[1] = v109;
      v133[2] = @"vic2_vicrawintr";
      v106 = [NSNumber numberWithUnsignedInt:*(v118 + 109)];
      v134[2] = v106;
      v133[3] = @"irq_vic_0";
      v103 = [NSNumber numberWithUnsignedInt:*(v118 + 113)];
      v134[3] = v103;
      v133[4] = @"irq_vic_1";
      v100 = [NSNumber numberWithUnsignedInt:*(v118 + 117)];
      v134[4] = v100;
      v133[5] = @"irq_vic_2";
      v97 = [NSNumber numberWithUnsignedInt:*(v118 + 121)];
      v134[5] = v97;
      v133[6] = @"fiq_vic_0";
      v94 = [NSNumber numberWithUnsignedInt:*(v118 + 125)];
      v134[6] = v94;
      v133[7] = @"fiq_vic_1";
      v26 = [NSNumber numberWithUnsignedInt:*(v118 + 129)];
      v134[7] = v26;
      v133[8] = @"fiq_vic_2";
      v27 = [NSNumber numberWithUnsignedInt:*(v118 + 133)];
      v134[8] = v27;
      v133[9] = @"vic3_vicrawintr";
      v28 = [NSNumber numberWithUnsignedInt:*(v118 + 137)];
      v134[9] = v28;
      v133[10] = @"irq_vic_3";
      v29 = [NSNumber numberWithUnsignedInt:*(v118 + 141)];
      v134[10] = v29;
      v133[11] = @"fiq_vic_3";
      v30 = [NSNumber numberWithUnsignedInt:*(v118 + 145)];
      v134[11] = v30;
      v133[12] = @"raw_irq_status";
      v31 = [NSNumber numberWithUnsignedLongLong:*(v118 + 149)];
      v134[12] = v31;
      v133[13] = @"prev_raw_irq_status";
      v32 = [NSNumber numberWithUnsignedLongLong:*(v118 + 157)];
      v134[13] = v32;
      v113 = [NSDictionary dictionaryWithObjects:v134 forKeys:v133 count:14];

      v131[0] = @"local_bt_clk";
      v33 = [NSNumber numberWithUnsignedInt:*(v118 + 165)];
      v132[0] = v33;
      v131[1] = @"coex_activity_bits";
      v34 = [NSNumber numberWithUnsignedInt:*(v118 + 169)];
      v132[1] = v34;
      v131[2] = @"coex_envelop_bits";
      v35 = [NSNumber numberWithUnsignedInt:*(v118 + 173)];
      v132[2] = v35;
      v131[3] = @"top_semaphores_lock_status_hw";
      v36 = [NSNumber numberWithUnsignedInt:*(v118 + 177)];
      v132[3] = v36;
      v131[4] = @"top_semaphores_lock_status_fw";
      v37 = [NSNumber numberWithUnsignedInt:*(v118 + 181)];
      v132[4] = v37;
      v112 = [NSDictionary dictionaryWithObjects:v132 forKeys:v131 count:5];

      v38 = objc_opt_new();
      v39 = (v118 + 204);
      v40 = 3;
      do
      {
        v129[0] = @"syndrome";
        v41 = [NSNumber numberWithUnsignedInt:*(v39 - 4)];
        v130[0] = v41;
        v129[1] = @"far";
        v42 = [NSNumber numberWithUnsignedInt:*(v39 - 3)];
        v130[1] = v42;
        v129[2] = @"pc";
        v43 = [NSNumber numberWithUnsignedInt:*(v39 - 2)];
        v130[2] = v43;
        v129[3] = @"lr";
        v44 = [NSNumber numberWithUnsignedInt:*(v39 - 1)];
        v130[3] = v44;
        v129[4] = @"psr";
        v45 = *v39;
        v39 += 5;
        v46 = [NSNumber numberWithUnsignedInt:v45];
        v130[4] = v46;
        v47 = [NSDictionary dictionaryWithObjects:v130 forKeys:v129 count:5];
        [v38 addObject:v47];

        --v40;
      }

      while (v40);
      v127[0] = @"registers";
      v125[0] = @"arm";
      v125[1] = @"soc";
      v126[0] = v114;
      v126[1] = v113;
      v125[2] = @"bt";
      v126[2] = v112;
      v48 = [NSDictionary dictionaryWithObjects:v126 forKeys:v125 count:3];
      v128[0] = v48;
      v127[1] = @"context";
      v49 = [NSNumber numberWithUnsignedChar:v118[185]];
      v128[1] = v49;
      v127[2] = @"abort_counter";
      v50 = [NSNumber numberWithUnsignedChar:v118[186]];
      v128[2] = v50;
      v127[3] = @"unhandled_exception_counter";
      v51 = [NSNumber numberWithUnsignedChar:v118[187]];
      v128[3] = v51;
      v52 = v38;
      v128[4] = v38;
      v127[4] = @"unhandled_exception_info";
      v127[5] = @"system_exit_status";
      v53 = [NSNumber numberWithUnsignedChar:v118[248]];
      v128[5] = v53;
      v54 = [NSDictionary dictionaryWithObjects:v128 forKeys:v127 count:6];
      [v117 setObject:v54 forKeyedSubscript:@"trace"];

      v55 = objc_opt_new();
      for (j = 0; j != 12; j += 4)
      {
        v57 = [NSNumber numberWithUnsignedInt:*&v118[j + 283]];
        [v55 addObject:v57];
      }

      v107 = v52;
      v58 = objc_opt_new();
      for (k = 0; k != 6; k += 2)
      {
        v60 = [NSNumber numberWithUnsignedShort:*&v118[k + 295]];
        [v58 addObject:v60];
      }

      v123[0] = @"rx_header_status";
      v104 = [NSNumber numberWithUnsignedInt:*(v118 + 249)];
      v124[0] = v104;
      v123[1] = @"tx_header_status";
      v101 = [NSNumber numberWithUnsignedShort:*(v118 + 253)];
      v124[1] = v101;
      v123[2] = @"sync_valid";
      v98 = [NSNumber numberWithUnsignedChar:v118[255]];
      v124[2] = v98;
      v123[3] = @"hw_machine_sig";
      v95 = [NSNumber numberWithUnsignedChar:v118[256]];
      v124[3] = v95;
      v123[4] = @"general_status";
      v92 = [NSNumber numberWithUnsignedChar:v118[257]];
      v124[4] = v92;
      v123[5] = @"esco_tx_en_state";
      v90 = [NSNumber numberWithUnsignedShort:*(v118 + 129)];
      v124[5] = v90;
      v123[6] = @"sch_current_mrl";
      v88 = [NSNumber numberWithUnsignedChar:v118[260]];
      v124[6] = v88;
      v123[7] = @"rx_data_type";
      v86 = [NSNumber numberWithUnsignedChar:v118[261]];
      v124[7] = v86;
      v123[8] = @"tx_data_type";
      v84 = [NSNumber numberWithUnsignedChar:v118[262]];
      v124[8] = v84;
      v123[9] = @"rx_packet_length";
      v82 = [NSNumber numberWithUnsignedChar:v118[263]];
      v124[9] = v82;
      v123[10] = @"tx_packet_length";
      v81 = [NSNumber numberWithUnsignedChar:v118[264]];
      v124[10] = v81;
      v123[11] = @"total_rx_tx_length";
      v80 = [NSNumber numberWithUnsignedChar:v118[265]];
      v124[11] = v80;
      v123[12] = @"rx_watchdog_timer_counter";
      v79 = [NSNumber numberWithUnsignedChar:v118[266]];
      v124[12] = v79;
      v123[13] = @"rx_watchdog_occured";
      v78 = [NSNumber numberWithUnsignedChar:v118[267]];
      v124[13] = v78;
      v123[14] = @"dbl_buf_index";
      v77 = [NSNumber numberWithUnsignedChar:v118[268]];
      v124[14] = v77;
      v123[15] = @"Block_activity_bitmask";
      v76 = [NSNumber numberWithUnsignedInt:*v115];
      v124[15] = v76;
      v123[16] = @"last_scheduled_btclk";
      v61 = [NSNumber numberWithUnsignedInt:v115[1]];
      v124[16] = v61;
      v123[17] = @"prev_scheduled_btclk";
      v62 = [NSNumber numberWithUnsignedInt:v115[2]];
      v124[17] = v62;
      v123[18] = @"prev_activity_type";
      v63 = [NSNumber numberWithUnsignedChar:v118[281]];
      v124[18] = v63;
      v123[19] = @"prev_virtual_clock_domain";
      v64 = [NSNumber numberWithUnsignedChar:v118[282]];
      v124[19] = v64;
      v124[20] = v55;
      v123[20] = @"bt_clk_freeze";
      v123[21] = @"pt_freeze";
      v124[21] = v58;
      v123[22] = @"sm_clk_freeze";
      v65 = [NSNumber numberWithUnsignedInt:v115[8]];
      v124[22] = v65;
      v110 = [NSDictionary dictionaryWithObjects:v124 forKeys:v123 count:23];

      v66 = objc_opt_new();
      for (m = 0; m != 256; ++m)
      {
        v68 = [NSNumber numberWithUnsignedChar:v118[m + 315]];
        [v66 addObject:v68];
      }

      v122[0] = v110;
      v121[0] = @"current_frame_status";
      v121[1] = @"max_dram_wakeup_duration";
      v116 = [NSNumber numberWithUnsignedShort:*(v115 + 18)];
      v122[1] = v116;
      v121[2] = @"dram_protection_mode";
      v105 = [NSNumber numberWithUnsignedChar:v118[307]];
      v122[2] = v105;
      v121[3] = @"dram_access_allowed";
      v102 = [NSNumber numberWithUnsignedChar:v118[308] & 1];
      v122[3] = v102;
      v121[4] = @"dram_is_enable";
      v99 = [NSNumber numberWithUnsignedChar:(v118[308] >> 1) & 1];
      v122[4] = v99;
      v121[5] = @"force_dram_awake_bit";
      v96 = [NSNumber numberWithUnsignedChar:(v118[308] >> 2) & 1];
      v122[5] = v96;
      v121[6] = @"etm_etb_enabled";
      v93 = [NSNumber numberWithUnsignedChar:(v118[308] >> 3) & 1];
      v122[6] = v93;
      v121[7] = @"trx_timers_supported";
      v91 = [NSNumber numberWithUnsignedChar:(v118[308] >> 4) & 1];
      v122[7] = v91;
      v121[8] = @"dart_error_occurred";
      v89 = [NSNumber numberWithUnsignedChar:(v118[308] >> 5) & 1];
      v122[8] = v89;
      v121[9] = @"syncrhonous_external_abort_occured";
      v87 = [NSNumber numberWithUnsignedChar:(v118[308] >> 6) & 1];
      v122[9] = v87;
      v121[10] = @"init_state";
      v85 = [NSNumber numberWithUnsignedChar:v118[309]];
      v122[10] = v85;
      v121[11] = @"recovery_state";
      v83 = [NSNumber numberWithUnsignedChar:v118[310]];
      v122[11] = v83;
      v121[12] = @"sleep_wakeup_state";
      v69 = [NSNumber numberWithUnsignedChar:v118[311]];
      v122[12] = v69;
      v121[13] = @"sleep_go_to_deep_sleep_state";
      v70 = [NSNumber numberWithUnsignedChar:v118[312]];
      v122[13] = v70;
      v121[14] = @"rtkit_assert_state";
      v71 = [NSNumber numberWithUnsignedChar:v118[313]];
      v122[14] = v71;
      v121[15] = @"rtkit_power_off_state";
      v72 = [NSNumber numberWithUnsignedChar:v118[314]];
      v121[16] = @"bulk_status_block";
      v122[15] = v72;
      v122[16] = v66;
      v73 = [NSDictionary dictionaryWithObjects:v122 forKeys:v121 count:17];
      v3 = v117;
      [v117 setObject:v73 forKeyedSubscript:@"debug"];
    }
  }

  v119 = @"btc_info";
  v120 = v3;
  v74 = [NSDictionary dictionaryWithObjects:&v120 forKeys:&v119 count:1];

  return v74;
}

- (id)decode_reasonTcc
{
  if (self->_terminator_reason)
  {
    v3 = +[OSASystemConfiguration sharedInstance];
    v4 = [v3 appleInternal];

    if (v4)
    {
      goto LABEL_10;
    }
  }

  if (!self->_exit_payload)
  {
    goto LABEL_10;
  }

  exit_payload_length = self->_exit_payload_length;
  if (!exit_payload_length)
  {
    goto LABEL_10;
  }

  v6 = exit_payload_length >= 0x4F ? 79 : self->_exit_payload_length;
  __memcpy_chk();
  v15[v6] = 0;
  v7 = [NSString stringWithUTF8String:v15];
  v8 = [NSString stringWithFormat:@"This app has crashed because it attempted to access privacy-sensitive data without a usage description. The app's Info.plist must contain an %@ key with a string value explaining to the user how the app uses this data.", v7];

  if (v8)
  {
    v12 = v8;
    v13 = @"details";
    v9 = [NSArray arrayWithObjects:&v12 count:1];
    v14 = v9;
    v10 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  }

  else
  {
LABEL_10:
    v10 = &__NSDictionary0__struct;
  }

  return v10;
}

- (id)decode_reasonExec
{
  v3 = objc_opt_new();
  v8[0] = &off_10004D9E8;
  v8[1] = &off_10004DA00;
  v9[0] = @"Bad Mach-O";
  v9[1] = @"SUGID Failure";
  v8[2] = &off_10004DA18;
  v8[3] = &off_10004DA30;
  v9[2] = @"Activation ThreadState";
  v9[3] = @"Stack Allocation";
  v8[4] = &off_10004DA48;
  v8[5] = &off_10004DA60;
  v9[4] = @"String Intialization";
  v9[5] = @"Copyout Strings";
  v8[6] = &off_10004DA78;
  v8[7] = &off_10004DA90;
  v9[6] = @"Copyout DynLinker";
  v9[7] = @"Security Policy";
  v8[8] = &off_10004DAA8;
  v8[9] = &off_10004DAC0;
  v9[8] = @"Task Gated";
  v9[9] = @"Fairplay Decryption";
  v8[10] = &off_10004DAD8;
  v8[11] = &off_10004DAF0;
  v9[10] = @"Decryption";
  v9[11] = @"This UPX compressed binary contains an invalid Mach-O header and cannot be loaded.";
  v8[12] = &off_10004DB08;
  v8[13] = &off_10004DB20;
  v9[12] = @"No 32-bit Execution";
  v9[13] = @"Binary with wrong platform";
  v8[14] = &off_10004DB38;
  v8[15] = &off_10004DB50;
  v9[14] = @"Main FD Allocation";
  v9[15] = @"Copyout Rosetta";
  v8[16] = &off_10004DBB0;
  v9[16] = @"x86 process execution is disabled via nox86exec boot-arg";
  v4 = [NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:17];
  v5 = [NSNumber numberWithUnsignedLongLong:self->_exit_snapshot->ers_code];
  v6 = [v4 objectForKeyedSubscript:v5];
  [v3 setObject:v6 forKeyedSubscript:@"indicator"];

  return v3;
}

- (id)decode_reasonCoreAnimation
{
  if (self->_exit_payload && self->_exit_payload_length)
  {
    v2 = [NSString stringWithUTF8String:?];
    v3 = [v2 componentsSeparatedByString:@"\n"];

    v4 = [v3 valueForKey:@"stringByTrimmingColumnSensitive"];
    v5 = [NSPredicate predicateWithFormat:@"SELF != ''"];
    v6 = [v4 filteredArrayUsingPredicate:v5];
  }

  else
  {
    v6 = 0;
  }

  if ([v6 count])
  {
    v9 = @"details";
    v10 = v6;
    v7 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  }

  else
  {
    v7 = &__NSDictionary0__struct;
  }

  return v7;
}

- (id)decode_reasonMetal
{
  if (self->_exit_payload && self->_exit_payload_length)
  {
    v2 = [NSString stringWithUTF8String:?];
    v3 = [v2 componentsSeparatedByString:@"\n"];

    v4 = [v3 valueForKey:@"stringByTrimming"];
    v5 = [NSPredicate predicateWithFormat:@"SELF != ''"];
    v6 = [v4 filteredArrayUsingPredicate:v5];
  }

  else
  {
    v6 = 0;
  }

  if ([v6 count])
  {
    v9 = @"details";
    v10 = v6;
    v7 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  }

  else
  {
    v7 = &__NSDictionary0__struct;
  }

  return v7;
}

- (id)decode_reasonWatchKit
{
  v2 = objc_opt_new();

  return v2;
}

- (id)decode_reasonRealityKit
{
  v3 = objc_opt_new();
  v8[0] = &off_10004D9D0;
  v8[1] = &off_10004D9E8;
  v9[0] = @"RealityKit scene is too complex: SynchronizationComponent limit exceeded";
  v9[1] = @"RealityKit scene is too complex: ModelComponent limit exceeded";
  v8[2] = &off_10004DA00;
  v8[3] = &off_10004DA18;
  v9[2] = @"RealityKit scene is too complex: GroundingShadowComponent limit exceeded";
  v9[3] = @"RealityKit scene is too complex: (Directional + Spot + Point) LightComponent limit exceeded";
  v8[4] = &off_10004DA30;
  v9[4] = @"RealityKit scene is too complex: AudioPlaybackController limit exceeded";
  v4 = [NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:5];
  v5 = [NSNumber numberWithUnsignedLongLong:self->_exit_snapshot->ers_code];
  v6 = [v4 objectForKeyedSubscript:v5];
  [v3 setObject:v6 forKeyedSubscript:@"indicator"];

  return v3;
}

- (id)decode_reasonWatchdog
{
  v3 = objc_opt_new();
  v4 = [_TtC11ReportCrash25WatchdogTerminationReason descriptionFromCode:LODWORD(self->_exit_snapshot->ers_code)];
  [v3 setObject:v4 forKeyedSubscript:@"indicator"];

  terminator_reason = self->_terminator_reason;
  if (terminator_reason)
  {
    v6 = [(NSString *)terminator_reason componentsSeparatedByString:@"\n"];
    v7 = [v6 valueForKey:@"stringByTrimming"];
    v8 = [NSPredicate predicateWithFormat:@"SELF != ''"];
    v9 = [v7 filteredArrayUsingPredicate:v8];

    if ([v9 count])
    {
      [v3 setObject:v9 forKeyedSubscript:@"details"];
    }
  }

  return v3;
}

- (id)decode_reasonLibxpc
{
  ers_code_low = LODWORD(self->_exit_snapshot->ers_code);
  label = xpc_exit_reason_get_label();
  v7 = @"indicator";
  if (label)
  {
    v4 = [NSString stringWithUTF8String:label];
  }

  else
  {
    v4 = @"<unknown>";
  }

  v8 = v4;
  v5 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];
  if (label)
  {
  }

  return v5;
}

- (id)decode_reasonPortSpace
{
  v3 = objc_opt_new();
  if ((self->_exit_snapshot->ers_code & 0x1C00000000000000) == 0x400000000000000)
  {
    v4 = [NSString stringWithFormat:@"(Limit %u ports) Exceeded system-wide per-process Port Limit", self->_exit_snapshot->ers_code & 0xFFFFFF];
    [v3 setObject:v4 forKeyedSubscript:@"indicator"];
  }

  return v3;
}

- (id)decode_reasonCodeSigning
{
  v3 = objc_opt_new();
  v8[0] = &off_10004DA00;
  v8[1] = &off_10004DA18;
  v9[0] = @"Invalid Page";
  v9[1] = @"Task Access Port";
  v8[2] = &off_10004D9E8;
  v8[3] = &off_10004DA30;
  v9[2] = @"Taskgated Invalid Signature";
  v9[3] = @"Launch Constraint Violation";
  v4 = [NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:4];
  v5 = [NSNumber numberWithUnsignedLongLong:self->_exit_snapshot->ers_code];
  v6 = [v4 objectForKeyedSubscript:v5];
  [v3 setObject:v6 forKeyedSubscript:@"indicator"];

  return v3;
}

- (id)decode_reasonSandbox
{
  v3 = objc_opt_new();
  if (self->_exit_payload && self->_exit_payload_length)
  {
    v4 = [NSString stringWithUTF8String:?];
    v7 = v4;
    v5 = [NSArray arrayWithObjects:&v7 count:1];
    [v3 setObject:v5 forKeyedSubscript:@"details"];
  }

  return v3;
}

- (id)decode_reasonRosetta
{
  v3 = objc_opt_new();
  if (&_rosetta_create_exit_payload_string)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Attempting to decode Rosetta abort payload", v11, 2u);
    }

    exit_payload = self->_exit_payload;
    if (exit_payload)
    {
      if (self->_exit_payload_length < 0x800)
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_100030818(&self->_exit_payload_length);
        }
      }

      else
      {
        v5 = [NSString stringWithUTF8String:exit_payload + 1024];
        v6 = v5;
        if (v5)
        {
          v7 = [v5 cStringUsingEncoding:4];
          if (v7)
          {
            strlen(v7);
            v8 = [NSString stringWithUTF8String:rosetta_create_exit_payload_string()];
            v12 = v8;
            v9 = [NSArray arrayWithObjects:&v12 count:1];
            [v3 setObject:v9 forKeyedSubscript:@"details"];
          }
        }
      }
    }
  }

  return v3;
}

- (id)bls_presentationPayload:(id *)a3
{
  v14[0] = @"isNonNil";
  v4 = [NSNumber numberWithInt:-(*a3 & 1)];
  v15[0] = v4;
  v14[1] = @"flipbookContext_wantsTransform";
  v5 = [NSNumber numberWithInt:(*a3 << 30 >> 31)];
  v15[1] = v5;
  v14[2] = @"flipbookContext_inverted";
  v6 = [NSNumber numberWithInt:(*a3 << 29 >> 31)];
  v15[2] = v6;
  v14[3] = @"num_presentationEntries";
  v7 = [NSNumber numberWithUnsignedInt:a3->var3];
  v15[3] = v7;
  v14[4] = @"presentationEntry0_identifier";
  v8 = [NSNumber numberWithUnsignedInt:a3->var4];
  v15[4] = v8;
  v14[5] = @"presentationEntry1_identifier";
  v9 = [NSNumber numberWithUnsignedInt:a3->var5];
  v15[5] = v9;
  v14[6] = @"presentationEntry2_identifier";
  v10 = [NSNumber numberWithUnsignedInt:a3->var6];
  v15[6] = v10;
  v14[7] = @"presentationEntry3_identifier";
  v11 = [NSNumber numberWithUnsignedInt:a3->var7];
  v15[7] = v11;
  v12 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:8];

  return v12;
}

- (id)bls_aggregatePayload:(id *)a3
{
  v9[0] = @"displayMode";
  p_var1 = &a3->var1;
  v5 = [NSNumber numberWithInt:a3->var0];
  v9[1] = @"presentation";
  v10[0] = v5;
  v6 = [(OSACrashReport *)self bls_presentationPayload:p_var1];
  v10[1] = v6;
  v7 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:2];

  return v7;
}

- (id)bls_transitionPayload:(id *)a3
{
  v11[0] = @"isNonNil";
  v4 = [NSNumber numberWithInt:-(*a3 & 1)];
  v12[0] = v4;
  v11[1] = @"environmentIdentifier";
  v5 = [NSNumber numberWithUnsignedInt:a3->var1];
  v12[1] = v5;
  v11[2] = @"updatingInitialState";
  v6 = [NSNumber numberWithInt:-(*(a3 + 8) & 1)];
  v12[2] = v6;
  v11[3] = @"updatingVisualState";
  v7 = [NSNumber numberWithInt:(*(a3 + 8) << 30 >> 31)];
  v12[3] = v7;
  v11[4] = @"animating";
  v8 = [NSNumber numberWithInt:(*(a3 + 8) << 29 >> 31)];
  v12[4] = v8;
  v9 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:5];

  return v9;
}

- (id)bls_environmentStateMachinePayload:(id *)a3
{
  v24[0] = @"isNonNil";
  v23 = [NSNumber numberWithInt:-(*a3 & 1)];
  v25[0] = v23;
  v24[1] = @"presentation";
  v22 = [(OSACrashReport *)self bls_presentationPayload:&a3->var1];
  v25[1] = v22;
  v24[2] = @"num_updatingVisualStateTransitionStates";
  v21 = [NSNumber numberWithUnsignedInt:a3->var2];
  v25[2] = v21;
  v24[3] = @"updatingVisualStateTransitionState0";
  v20 = [(OSACrashReport *)self bls_transitionPayload:&a3->var3];
  v25[3] = v20;
  v24[4] = @"updatingVisualStateTransitionState1";
  v19 = [(OSACrashReport *)self bls_transitionPayload:&a3->var4];
  v25[4] = v19;
  v24[5] = @"updatingVisualStateTransitionState2";
  v18 = [(OSACrashReport *)self bls_transitionPayload:&a3->var5];
  v25[5] = v18;
  v24[6] = @"updatingVisualStateTransitionState3";
  v17 = [(OSACrashReport *)self bls_transitionPayload:&a3->var6];
  v25[6] = v17;
  v24[7] = @"num_updatingDateSpecifierTransitionStates";
  v16 = [NSNumber numberWithUnsignedInt:a3->var7];
  v25[7] = v16;
  v24[8] = @"updatingDateSpecifierTransitionState0";
  v5 = [(OSACrashReport *)self bls_transitionPayload:&a3->var8];
  v25[8] = v5;
  v24[9] = @"updatingDateSpecifierTransitionState1";
  v6 = [(OSACrashReport *)self bls_transitionPayload:&a3->var9];
  v25[9] = v6;
  v24[10] = @"updatingDateSpecifierTransitionState2";
  v7 = [(OSACrashReport *)self bls_transitionPayload:&a3->var10];
  v25[10] = v7;
  v24[11] = @"updatingDateSpecifierTransitionState3";
  v8 = [(OSACrashReport *)self bls_transitionPayload:&a3->var11];
  v25[11] = v8;
  v24[12] = @"backlightState";
  v9 = [NSNumber numberWithInt:a3->var12];
  v25[12] = v9;
  v24[13] = @"previousBacklightState";
  v10 = [NSNumber numberWithInt:a3->var13];
  v25[13] = v10;
  v24[14] = @"pendingNotifyBeganUpdatingState";
  v11 = [NSNumber numberWithInt:-(*(a3 + 140) & 1)];
  v25[14] = v11;
  v24[15] = @"updatingState";
  v12 = [NSNumber numberWithInt:(*(a3 + 140) << 30 >> 31)];
  v25[15] = v12;
  v24[16] = @"updatingPresentation";
  v13 = [NSNumber numberWithInt:(*(a3 + 140) << 29 >> 31)];
  v25[16] = v13;
  v14 = [NSDictionary dictionaryWithObjects:v25 forKeys:v24 count:17];

  return v14;
}

- (id)bls_backlightChangeRequestPayload:(id *)a3
{
  if (*a3)
  {
    v10[0] = @"requestedActivityState";
    v5 = [NSNumber numberWithInt:a3->var1];
    v11[0] = v5;
    v10[1] = @"explanation";
    v6 = [NSNumber numberWithUnsignedInt:a3->var2];
    v11[1] = v6;
    v10[2] = @"timestamp";
    v7 = [NSNumber numberWithUnsignedLongLong:a3->var3];
    v11[2] = v7;
    v10[3] = @"sourceEvent";
    v8 = [NSNumber numberWithInt:a3->var4];
    v11[3] = v8;
    v3 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:4];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)bls_backlightChangeEventPayload:(id *)a3
{
  if (*a3)
  {
    v3 = objc_opt_new();
    v6 = [NSNumber numberWithUnsignedLongLong:a3->var1];
    [v3 setObject:v6 forKeyedSubscript:@"eventID"];

    v7 = [NSNumber numberWithInt:a3->var2];
    [v3 setObject:v7 forKeyedSubscript:@"state"];

    v8 = [NSNumber numberWithInt:a3->var3];
    [v3 setObject:v8 forKeyedSubscript:@"previousState"];

    v9 = [(OSACrashReport *)self bls_backlightChangeRequestPayload:&a3->var4];
    [v3 setObject:v9 forKeyedSubscript:@"changeRequest"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)decode_reasonBacklightServices
{
  v3 = objc_opt_new();
  v105[0] = &off_10004D9E8;
  v105[1] = &off_10004DA00;
  v106[0] = @"Watchdog Transition State Machine";
  v106[1] = @"Watchdog Display State Machine";
  v105[2] = &off_10004DA18;
  v106[2] = @"Assert Critical Operation Completed Mismatched Backlight States";
  v4 = &create_gcore_with_options_ptr;
  v5 = [NSDictionary dictionaryWithObjects:v106 forKeys:v105 count:3];
  v6 = [NSNumber numberWithUnsignedLongLong:self->_exit_snapshot->ers_code];
  v7 = [v5 objectForKeyedSubscript:v6];
  [v3 setObject:v7 forKeyedSubscript:@"indicator"];

  exit_payload = self->_exit_payload;
  if (exit_payload)
  {
    ers_code = self->_exit_snapshot->ers_code;
    if (ers_code == 3)
    {
      if (self->_exit_payload_length < 0x290)
      {
        goto LABEL_29;
      }

      v75 = v3;
      v93[0] = @"version";
      v40 = [NSNumber numberWithUnsignedInt:*exit_payload];
      v94[0] = v40;
      v93[1] = @"state";
      v41 = [NSNumber numberWithInt:exit_payload[1]];
      v94[1] = v41;
      v93[2] = @"target_state";
      v42 = [NSNumber numberWithInt:exit_payload[2]];
      v94[2] = v42;
      v43 = [NSDictionary dictionaryWithObjects:v94 forKeys:v93 count:3];
      v10 = [v43 mutableCopy];

      v78 = v10;
      v81 = v5;
      v72 = self;
      if (exit_payload[3])
      {
        v84 = +[NSMutableArray array];
        if (exit_payload[3])
        {
          v44 = 0;
          v45 = exit_payload + 6;
          do
          {
            v91[0] = @"version";
            v46 = [NSNumber numberWithUnsignedInt:*(v45 - 2), v72];
            v92[0] = v46;
            v91[1] = @"state_machine_old_state";
            v47 = [NSNumber numberWithInt:*v45];
            v92[1] = v47;
            v91[2] = @"event_previous_state";
            v48 = [NSNumber numberWithInt:v45[1]];
            v92[2] = v48;
            v91[3] = @"event_new_state";
            v49 = [NSNumber numberWithInt:v45[2]];
            v92[3] = v49;
            v91[4] = @"started_time";
            v50 = [NSNumber numberWithUnsignedLongLong:*(v45 + 2)];
            v92[4] = v50;
            v51 = [NSDictionary dictionaryWithObjects:v92 forKeys:v91 count:5];
            [v84 addObject:v51];

            v4 = &create_gcore_with_options_ptr;
            ++v44;
            v45 += 8;
          }

          while (v44 < exit_payload[3]);
        }

        v10 = v78;
        [v78 setObject:v84 forKeyedSubscript:{@"perform_event_history", v72}];

        v5 = v81;
        self = v72;
      }

      if (exit_payload[44])
      {
        v85 = +[NSMutableArray array];
        if (exit_payload[44])
        {
          v52 = 0;
          v53 = (exit_payload + 52);
          do
          {
            v89[0] = @"version";
            v54 = [NSNumber numberWithUnsignedInt:*(v53 - 6), v72];
            v90[0] = v54;
            v89[1] = @"environment_identifier";
            v55 = [NSNumber numberWithUnsignedInt:*(v53 - 4)];
            v90[1] = v55;
            v89[2] = @"new_state";
            v56 = [NSNumber numberWithInt:*(v53 - 3)];
            v90[2] = v56;
            v89[3] = @"pending_transition_state_count";
            v57 = [NSNumber numberWithUnsignedInt:*(v53 - 2)];
            v90[3] = v57;
            v89[4] = @"time";
            v58 = *v53;
            v53 += 4;
            v59 = [NSNumber numberWithUnsignedLongLong:v58];
            v90[4] = v59;
            v60 = [NSDictionary dictionaryWithObjects:v90 forKeys:v89 count:5];
            [v85 addObject:v60];

            v4 = &create_gcore_with_options_ptr;
            ++v52;
          }

          while (v52 < exit_payload[44]);
        }

        v10 = v78;
        [v78 setObject:v85 forKeyedSubscript:{@"did_begin_update_history", v72}];

        v5 = v81;
        self = v72;
      }

      if (exit_payload[86])
      {
        v86 = +[NSMutableArray array];
        if (exit_payload[86])
        {
          v61 = 0;
          v62 = (exit_payload + 94);
          do
          {
            v87[0] = @"version";
            v63 = [NSNumber numberWithUnsignedInt:*(v62 - 6), v72];
            v88[0] = v63;
            v87[1] = @"environment_identifier";
            v64 = [NSNumber numberWithUnsignedInt:*(v62 - 4)];
            v88[1] = v64;
            v87[2] = @"new_state";
            v65 = [NSNumber numberWithInt:*(v62 - 3)];
            v88[2] = v65;
            v87[3] = @"pending_transition_state_count";
            v66 = [NSNumber numberWithUnsignedInt:*(v62 - 2)];
            v88[3] = v66;
            v87[4] = @"time";
            v67 = *v62;
            v62 += 4;
            v68 = [NSNumber numberWithUnsignedLongLong:v67];
            v88[4] = v68;
            v69 = [v4[475] dictionaryWithObjects:v88 forKeys:v87 count:5];
            [v86 addObject:v69];

            v4 = &create_gcore_with_options_ptr;
            ++v61;
          }

          while (v61 < exit_payload[86]);
        }

        v10 = v78;
        [v78 setObject:v86 forKeyedSubscript:{@"did_complete_update_history", v72}];

        v5 = v81;
        self = v72;
      }

      v70 = [(OSACrashReport *)self bls_environmentStateMachinePayload:exit_payload + 128, v72];
      [v10 setObject:v70 forKeyedSubscript:@"environmentStateMachine"];

      v3 = v75;
      [v75 setObject:v10 forKeyedSubscript:@"operation_complete"];
      goto LABEL_28;
    }

    if (ers_code == 2)
    {
      if (self->_exit_payload_length < 0x14)
      {
        goto LABEL_29;
      }

      v95[0] = @"version";
      v77 = [NSNumber numberWithUnsignedInt:*exit_payload];
      v96[0] = v77;
      v95[1] = @"displayMode";
      v83 = [NSNumber numberWithInt:exit_payload[1]];
      v96[1] = v83;
      v95[2] = @"transitioningToDisplayMode";
      v74 = [NSNumber numberWithInt:exit_payload[2]];
      v96[2] = v74;
      v95[3] = @"lastSteadyStateDisplayMode";
      v32 = [NSNumber numberWithInt:exit_payload[3]];
      v96[3] = v32;
      v95[4] = @"isFlipbookEnabled";
      [NSNumber numberWithInt:-(exit_payload[4] & 1)];
      v34 = v33 = v3;
      v96[4] = v34;
      v95[5] = @"showingBlankingWindow";
      [NSNumber numberWithInt:(*(exit_payload + 16) << 30 >> 31)];
      v35 = v80 = v5;
      v96[5] = v35;
      v95[6] = @"backlightFactorOn";
      v36 = [NSNumber numberWithInt:(*(exit_payload + 16) << 29 >> 31)];
      v96[6] = v36;
      v95[7] = @"isCABlanked";
      v37 = [NSNumber numberWithInt:(*(exit_payload + 16) << 28 >> 31)];
      v96[7] = v37;
      v95[8] = @"displayIsOff";
      v38 = [NSNumber numberWithInt:(*(exit_payload + 16) << 27 >> 31)];
      v96[8] = v38;
      v39 = [NSDictionary dictionaryWithObjects:v96 forKeys:v95 count:9];
      [v33 setObject:v39 forKeyedSubscript:@"display"];

      v10 = v77;
      v5 = v80;

      v3 = v33;
      goto LABEL_28;
    }

    if (ers_code == 1 && self->_exit_payload_length >= 0x178)
    {
      v79 = v5;
      v73 = v3;
      v10 = objc_opt_new();
      v11 = [NSNumber numberWithUnsignedInt:*exit_payload];
      [v10 setObject:v11 forKeyedSubscript:@"version"];

      v12 = [(OSACrashReport *)self bls_aggregatePayload:exit_payload + 1];
      [v10 setObject:v12 forKeyedSubscript:@"currentState"];

      v13 = [(OSACrashReport *)self bls_aggregatePayload:exit_payload + 8];
      [v10 setObject:v13 forKeyedSubscript:@"targetState"];

      v103[0] = @"isNonNil";
      v82 = [NSNumber numberWithInt:-(exit_payload[16] & 1)];
      v104[0] = v82;
      v103[1] = @"updatedInitialState";
      v76 = [NSNumber numberWithInt:(*(exit_payload + 64) << 30 >> 31)];
      v104[1] = v76;
      v103[2] = @"triggerEvent_eventID";
      v14 = [NSNumber numberWithUnsignedLongLong:*(exit_payload + 9)];
      v104[2] = v14;
      v103[3] = @"triggerEvent_state";
      v15 = [NSNumber numberWithInt:exit_payload[20]];
      v104[3] = v15;
      v103[4] = @"triggerEvent_previousState";
      [NSNumber numberWithInt:exit_payload[21]];
      v17 = v16 = self;
      v104[4] = v17;
      v103[5] = @"initialSpecifier_presentationDate";
      v18 = [NSNumber numberWithDouble:*(exit_payload + 11)];
      v104[5] = v18;
      v103[6] = @"initialSpecifier_presentationDate_num_specifiers";
      v19 = [NSNumber numberWithUnsignedInt:exit_payload[24]];
      v104[6] = v19;
      v20 = [NSDictionary dictionaryWithObjects:v104 forKeys:v103 count:7];
      [v10 setObject:v20 forKeyedSubscript:@"pendingEventToPerform"];

      v21 = v16;
      v101 = @"isNonNil";
      v22 = [NSNumber numberWithInt:-(exit_payload[26] & 1)];
      v102 = v22;
      v23 = [NSDictionary dictionaryWithObjects:&v102 forKeys:&v101 count:1];
      [v10 setObject:v23 forKeyedSubscript:@"pendingUpdatePresentation"];

      v99 = @"isNonNil";
      v24 = [NSNumber numberWithInt:-(exit_payload[27] & 1)];
      v100 = v24;
      v25 = [NSDictionary dictionaryWithObjects:&v100 forKeys:&v99 count:1];
      [v10 setObject:v25 forKeyedSubscript:@"pendingUpdateToSpecifier"];

      v97[0] = @"isNonNil";
      v26 = [NSNumber numberWithInt:-(exit_payload[28] & 1)];
      v97[1] = @"displayMode";
      v98[0] = v26;
      v27 = [NSNumber numberWithInt:exit_payload[29]];
      v98[1] = v27;
      v28 = [NSDictionary dictionaryWithObjects:v98 forKeys:v97 count:2];
      [v10 setObject:v28 forKeyedSubscript:@"pendingUpdateDisplayMode"];

      v29 = [(OSACrashReport *)v21 bls_environmentStateMachinePayload:exit_payload + 30];
      [v10 setObject:v29 forKeyedSubscript:@"environmentStateMachine"];

      if (*exit_payload >= 2)
      {
        v30 = [(OSACrashReport *)v21 bls_backlightChangeEventPayload:exit_payload + 66];
        [v10 setObject:v30 forKeyedSubscript:@"queuedEventToPerform"];

        v31 = [(OSACrashReport *)v21 bls_backlightChangeEventPayload:exit_payload + 80];
        [v10 setObject:v31 forKeyedSubscript:@"pendingPrewarmedEvent"];
      }

      v3 = v73;
      [v73 setObject:v10 forKeyedSubscript:@"transition"];
      v5 = v79;
LABEL_28:
    }
  }

LABEL_29:

  return v3;
}

- (id)safe_encoder:(unsigned int)a3
{
  if (!a3)
  {
LABEL_9:
    v10 = 0;
    goto LABEL_10;
  }

  exit_payload_length = self->_exit_payload_length;
  if (exit_payload_length <= a3)
  {
    goto LABEL_8;
  }

  v13 = a3;
  exit_payload = self->_exit_payload;
  v6 = &exit_payload[a3];
  v7 = exit_payload;
  while (*v6)
  {
LABEL_7:
    ++v6;
    LODWORD(exit_payload) = exit_payload + 1;
    if (v6 >= &v7[exit_payload_length])
    {
      goto LABEL_8;
    }
  }

  v8 = (exit_payload - v7);
  v9 = malloc_type_malloc((4 * v8) | 1, 0x13D883AAuLL);
  v7 = self->_exit_payload;
  if (!v9)
  {
    exit_payload_length = self->_exit_payload_length;
    goto LABEL_7;
  }

  v12 = v9;
  if (strnvisx(v9, (4 * v8) | 1, &v7[v13], v8, 18) == -1)
  {
    free(v12);
    goto LABEL_8;
  }

  v10 = [NSString stringWithUTF8String:v12];
  free(v12);
  if (!v10)
  {
LABEL_8:
    AnalyticsSendEventLazy();
    goto LABEL_9;
  }

LABEL_10:

  return v10;
}

+ (id)decode_syndrome:(unsigned int)a3
{
  if ((a3 & 0x3F) == 0x3F)
  {
    return 0;
  }

  else
  {
    return off_100045870[a3 & 0x3F];
  }
}

- (id)decode_esr:(unsigned int *)a3 exceptionStateCount:(unsigned int)a4
{
  if (!a4)
  {
    v7 = 0;
    goto LABEL_35;
  }

  v6 = objc_opt_new();
  v7 = v6;
  v8 = a3[2];
  v9 = v8 >> 26;
  if (v8 >> 26 <= 0x21)
  {
    if (v9 - 32 < 2)
    {
      [v6 setString:@"(Instruction Abort)"];
      if ((v8 & 0x1000000) == 0)
      {
        goto LABEL_25;
      }

LABEL_28:
      v13 = @" No valid info";
LABEL_29:
      [v7 appendFormat:v13, v16];
      goto LABEL_35;
    }

    if (v9 != 17 && v9 != 21)
    {
      goto LABEL_35;
    }

    v12 = @"(Syscall)";
LABEL_34:
    [v6 setString:v12];
    goto LABEL_35;
  }

  if (v8 >> 26 <= 0x25)
  {
    if (v9 - 36 < 2)
    {
      [v6 setString:@"(Data Abort)"];
      if ((v8 & 0x1000000) == 0)
      {
        [v7 appendFormat:*(&off_100045A68 + ((v8 >> 22) & 3))];
        if ((v8 & 0x40) != 0)
        {
          v10 = @" write";
        }

        else
        {
          v10 = @" read";
        }

        [v7 appendFormat:v10];
LABEL_25:
        v14 = [OSACrashReport decode_syndrome:v8 & 0xFFFFFF];
        if (v14)
        {
          [v7 appendString:v14];
        }

        goto LABEL_27;
      }

      goto LABEL_28;
    }

    if (v9 != 34)
    {
      goto LABEL_35;
    }

    v12 = @"(PC alignment)";
    goto LABEL_34;
  }

  if (v9 == 38)
  {
    v12 = @"(Stack alignment)";
    goto LABEL_34;
  }

  if (v9 != 60)
  {
    goto LABEL_35;
  }

  [v6 setString:@"(Breakpoint)"];
  if ((v8 & 0xFFFC) == 0xC470)
  {
    [v7 appendFormat:@" pointer authentication trap"];
    if ((v8 & 3) > 1)
    {
      if ((v8 & 3) == 2)
      {
        v13 = @" DA";
      }

      else
      {
        v13 = @" DB";
      }
    }

    else if ((v8 & 3) != 0)
    {
      v13 = @" IB";
    }

    else
    {
      v13 = @" IA";
    }

    goto LABEL_29;
  }

  if ((v8 & 0x1FFFF) == 0x5519)
  {
    v13 = @" -fbounds-safety trap";
    goto LABEL_29;
  }

  if ((v8 & 0x1FF00) == 0x5500)
  {
    v14 = [(OSACrashReport *)self decode_ubsanCode:v8];
    [v7 appendFormat:@" UBSAN %@", v14];
LABEL_27:

    goto LABEL_35;
  }

  [v7 appendFormat:@" brk %d", v8 & 0x1FFFFFF];
LABEL_35:

  return v7;
}

- (id)decode_crashingThreadStateWithSymbolicator:(_CSTypeRef)a3 usingCatalog:(id)a4
{
  var1 = a3.var1;
  var0 = a3.var0;
  v7 = a4;
  if (self->_crashedThreadNumber < 0 || [(NSMutableArray *)self->_threadInfos count]<= self->_crashedThreadNumber)
  {
    v9 = 0;
    goto LABEL_19;
  }

  v8 = [(NSMutableArray *)self->_threadInfos objectAtIndexedSubscript:?];
  v9 = [v8 objectForKeyedSubscript:@"threadState"];

  if (![v9 count])
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Falling back to fetching thread state from stored values", buf, 2u);
    }

    v10 = [(OSACrashReport *)self decode_threadState:self->_threadState threadStateCount:self->_threadStateCount threadStateFlavor:self->_threadStateFlavor threadPort:self->_threadPortOriginal exceptionState:self->_exceptionState exceptionStateCount:self->_exceptionStateCount withSymbolicator:var0 usingCatalog:var1, v7];

    v9 = v10;
  }

  v11 = [(NSMutableArray *)self->_threadInfos objectAtIndexedSubscript:self->_crashedThreadNumber];
  v12 = [v11 objectForKeyedSubscript:@"frames"];

  if (![v12 count])
  {
    goto LABEL_18;
  }

  v13 = [v12 objectAtIndexedSubscript:0];
  usedImages = self->_usedImages;
  v15 = [v13 objectForKeyedSubscript:@"imageIndex"];
  v16 = -[NSArray objectAtIndex:](usedImages, "objectAtIndex:", [v15 intValue]);

  v17 = [v16 objectForKeyedSubscript:@"base"];
  v18 = [v17 longLongValue];
  v19 = [v13 objectForKeyedSubscript:@"imageOffset"];
  v20 = [v19 longLongValue];

  if (v9)
  {
    v21 = &v18[v20];
    if (&v18[v20])
    {
      if (self->_isTranslated)
      {
        v22 = @"pc";
        v23 = "PC";
        if (self->_cpuType == 16777223 && !self->_isCrashInRosettaRuntime)
        {
          v23 = "RIP";
          v22 = @"rip";
        }
      }

      else
      {
        v22 = @"pc";
        v23 = "PC";
      }

      v24 = [v9 objectForKeyedSubscript:v22];
      v25 = [v24 objectForKeyedSubscript:@"value"];
      v26 = [v25 longLongValue];

      v27 = [v9 objectForKeyedSubscript:v22];
      v12 = [v27 mutableCopy];

      v28 = [NSNumber numberWithInt:v21 == v26];
      [v12 setObject:v28 forKeyedSubscript:@"matchesCrashFrame"];

      [v9 setObject:v12 forKeyedSubscript:v22];
      if (v21 != v26)
      {
        v29 = *&self->OSAReport_opaque[OBJC_IVAR___OSAReport__notes];
        v30 = [NSString stringWithFormat:@"%s register does not match crashing frame (0x%llX vs 0x%llX)", v23, v26, v21];
        [v29 addObject:v30];
      }

LABEL_18:
    }
  }

LABEL_19:

  return v9;
}

- (id)_symbolicateRegister:(unint64_t)a3 inRange:(_CSRange)a4 withSymbolicator:(_CSTypeRef)a5 usingCatalog:(id)a6
{
  var1 = a5.var1;
  var0 = a5.var0;
  v8 = a4.var1;
  v9 = a4.var0;
  v12 = a6;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_10001FCC4;
  v23 = sub_10001FCD4;
  v25 = @"value";
  v13 = [NSNumber numberWithUnsignedLongLong:a3];
  v26 = v13;
  v14 = [NSDictionary dictionaryWithObjects:&v26 forKeys:&v25 count:1];
  v24 = [v14 mutableCopy];

  if (a3 - v9 < v8)
  {
    v15 = [(OSACrashReport *)self _readStringAtTaskAddress:a3 maxLength:0 immutableCheck:0 isInSharedCache:0];
    [v20[5] setObject:v15 forKeyedSubscript:@"objc-selector"];
  }

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10001FCDC;
  v18[3] = &unk_100045660;
  v18[4] = &v19;
  [(OSACrashReport *)self symbolicateFrame:a3 adjusted:a3 withSymbolicator:var0 usingCatalog:var1 andBlock:v12, v18];
  v16 = v20[5];
  _Block_object_dispose(&v19, 8);

  return v16;
}

- (_CSRange)_getObjCReadOnlyRange:(_CSTypeRef)a3
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3010000000;
  v13 = 0;
  v14 = 0;
  v12 = "";
  if ((CSIsNull() & 1) == 0)
  {
    CSSymbolicatorGetSymbolOwnerWithNameAtTime();
    if ((CSIsNull() & 1) == 0)
    {
      v7[0] = 0;
      v7[1] = v7;
      v7[2] = 0x2020000000;
      v8 = 0;
      CSSymbolOwnerForeachSegment();
      _Block_object_dispose(v7, 8);
    }
  }

  v3 = v10[4];
  v4 = v10[5];
  _Block_object_dispose(&v9, 8);
  v5 = v3;
  v6 = v4;
  result.var1 = v6;
  result.var0 = v5;
  return result;
}

- (void)generateLogAtLevel:(BOOL)a3 withBlock:(id)a4
{
  v5 = a4;
  [(OSACrashReport *)self stashStatus:@"Persisting" note:0];
  v6 = +[OSASystemConfiguration sharedInstance];
  v215 = [v6 appleInternal];

  v359[0] = @"incident";
  v213 = [(OSACrashReport *)self incidentID];
  v360[0] = v213;
  v360[1] = &off_10004DA00;
  v359[1] = @"version";
  v359[2] = @"deployVersion";
  v360[2] = &off_10004DDC0;
  v359[3] = @"modelCode";
  v211 = +[OSASystemConfiguration sharedInstance];
  v209 = [v211 modelCode];
  v360[3] = v209;
  v359[4] = @"pid";
  v207 = [NSNumber numberWithInt:self->_proc_id];
  v360[4] = v207;
  v359[5] = @"cpuType";
  v205 = [(OSACrashReport *)self decode_cpuType];
  v360[5] = v205;
  v359[6] = @"translated";
  v204 = [NSNumber numberWithBool:self->_isTranslated];
  v360[6] = v204;
  v359[7] = @"procRole";
  task_role = self->_task_role;
  if (task_role > 7)
  {
    v8 = @"unknown";
  }

  else
  {
    v8 = *(&off_100045A88 + task_role);
  }

  v360[7] = v8;
  v359[8] = @"coalitionID";
  v203 = [NSNumber numberWithUnsignedLongLong:self->_coalition_id];
  v360[8] = v203;
  v359[9] = @"osVersion";
  v358[0] = &__kCFBooleanTrue;
  v357[0] = @"isEmbedded";
  v357[1] = @"train";
  v202 = +[OSASystemConfiguration sharedInstance];
  v201 = [v202 osTrain];
  v358[1] = v201;
  v357[2] = @"build";
  v200 = +[OSASystemConfiguration sharedInstance];
  v199 = [v200 buildVersion];
  v358[2] = v199;
  v357[3] = @"releaseType";
  v198 = +[OSASystemConfiguration sharedInstance];
  v9 = [v198 releaseType];
  v358[3] = v9;
  v10 = [NSDictionary dictionaryWithObjects:v358 forKeys:v357 count:4];
  v360[9] = v10;
  v359[10] = @"captureTime";
  v11 = *&self->OSAReport_opaque[OBJC_IVAR___OSAReport__capture_time];
  v12 = OSADateFormat();
  v360[10] = v12;
  v359[11] = @"uptime";
  v13 = [objc_opt_class() reduceToTwoSigFigures:self->_awakeSystemUptime];
  v360[11] = v13;
  v359[12] = @"userID";
  v14 = [NSNumber numberWithUnsignedInt:self->_uid];
  v360[12] = v14;
  v359[13] = @"codeSigningMonitor";
  v15 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [objc_opt_class() codeSigningMonitor]);
  v360[13] = v15;
  v16 = [NSDictionary dictionaryWithObjects:v360 forKeys:v359 count:14];
  v5[2](v5, v16);

  v17 = &create_gcore_with_options_ptr;
  v18 = [(OSACrashReport *)self problemType];
  v19 = [OSALog commonFieldsForBody:v18];
  v5[2](v5, v19);

  if (self->_proc_starttime.tv_sec >= 1)
  {
    v355 = @"procLaunch";
    v20 = self->_proc_starttime.tv_usec / 1000000.0;
    v21 = OSADateFormat();
    v356 = v21;
    v22 = [NSDictionary dictionaryWithObjects:&v356 forKeys:&v355 count:1];
    v5[2](v5, v22);
  }

  if (self->_proc_start_abstime)
  {
    v353 = @"procStartAbsTime";
    v23 = [NSNumber numberWithUnsignedLongLong:?];
    v354 = v23;
    v24 = [NSDictionary dictionaryWithObjects:&v354 forKeys:&v353 count:1];
    v5[2](v5, v24);
  }

  if (self->_proc_exit_abstime)
  {
    v351 = @"procExitAbsTime";
    v25 = [NSNumber numberWithUnsignedLongLong:?];
    v352 = v25;
    v26 = [NSDictionary dictionaryWithObjects:&v352 forKeys:&v351 count:1];
    v5[2](v5, v26);
  }

  if ([(NSString *)self->_procName length])
  {
    v349 = @"procName";
    procName = self->_procName;
    v27 = [NSDictionary dictionaryWithObjects:&procName forKeys:&v349 count:1];
    v5[2](v5, v27);
  }

  if ([(NSString *)self->_procPath length])
  {
    v28 = self->_procPath;
    v347 = @"procPath";
    v348 = v28;
    v29 = [NSDictionary dictionaryWithObjects:&v348 forKeys:&v347 count:1];
    v5[2](v5, v29);
  }

  if ([(NSDictionary *)self->_bundle_info count])
  {
    v345 = @"bundleInfo";
    bundle_info = self->_bundle_info;
    v30 = [NSDictionary dictionaryWithObjects:&bundle_info forKeys:&v345 count:1];
    v5[2](v5, v30);
  }

  if ([(NSDictionary *)self->_build_info count])
  {
    v343 = @"buildInfo";
    build_info = self->_build_info;
    v31 = [NSDictionary dictionaryWithObjects:&build_info forKeys:&v343 count:1];
    v5[2](v5, v31);
  }

  if ([(NSDictionary *)self->_store_info count])
  {
    v341 = @"storeInfo";
    store_info = self->_store_info;
    v32 = [NSDictionary dictionaryWithObjects:&store_info forKeys:&v341 count:1];
    v5[2](v5, v32);
  }

  if ([(NSString *)self->_parentProcessName length])
  {
    v339 = @"parentProc";
    parentProcessName = self->_parentProcessName;
    v33 = [NSDictionary dictionaryWithObjects:&parentProcessName forKeys:&v339 count:1];
    v5[2](v5, v33);
  }

  if (self->_ppid)
  {
    v337 = @"parentPid";
    v34 = [NSNumber numberWithInt:?];
    v338 = v34;
    v35 = [NSDictionary dictionaryWithObjects:&v338 forKeys:&v337 count:1];
    v5[2](v5, v35);
  }

  if ([(NSString *)self->_coalition_name length])
  {
    v335 = @"coalitionName";
    coalition_name = self->_coalition_name;
    v36 = [NSDictionary dictionaryWithObjects:&coalition_name forKeys:&v335 count:1];
    v5[2](v5, v36);
  }

  if (self->_is_beta)
  {
    v5[2](v5, &off_10004E2D8);
  }

  else
  {
    v333 = @"crashReporterKey";
    v37 = +[OSASystemConfiguration sharedInstance];
    v38 = [v37 crashReporterKey];
    v334 = v38;
    v39 = [NSDictionary dictionaryWithObjects:&v334 forKeys:&v333 count:1];
    v5[2](v5, v39);
  }

  if ([objc_opt_class() isInLDM])
  {
    v5[2](v5, &off_10004E300);
  }

  v40 = +[NSProcessInfo processInfo];
  v41 = [v40 isLowPowerModeEnabled];

  if (v41)
  {
    v5[2](v5, &off_10004E328);
  }

  v42 = [(OSACrashReport *)self problemType];
  v43 = [v42 isEqualToString:@"309"];

  if (v43)
  {
    v44 = +[_TtC11ReportCrash21GenerativeModelsState getGMAvailability];
    if ([v44 count])
    {
      v331 = @"appleIntelligenceStatus";
      v332 = v44;
      v45 = [NSDictionary dictionaryWithObjects:&v332 forKeys:&v331 count:1];
      v5[2](v5, v45);
    }
  }

  if (!+[_TtC11ReportCrash11Environment isCustomerFused])
  {
    v5[2](v5, &off_10004E350);
  }

  if ([objc_opt_class() isDeveloperMode])
  {
    v5[2](v5, &off_10004E378);
  }

  v46 = [objc_opt_class() bootProgressRegister];
  v47 = v46;
  if (v46)
  {
    v329 = @"bootProgressRegister";
    v48 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"0x%llx", [v46 unsignedLongLongValue]);
    v330 = v48;
    v49 = [NSDictionary dictionaryWithObjects:&v330 forKeys:&v329 count:1];
    v5[2](v5, v49);
  }

  v214 = v47;
  device_lock_state = self->_device_lock_state;
  if ((device_lock_state & 0x80000000) == 0 && device_lock_state != 3)
  {
    device_unlocked_since_boot = self->_device_unlocked_since_boot;
    if ((device_unlocked_since_boot & 0x80000000) == 0)
    {
      v327 = @"wasUnlockedSinceBoot";
      v52 = [NSNumber numberWithInt:device_unlocked_since_boot != 0];
      v328 = v52;
      v53 = [NSDictionary dictionaryWithObjects:&v328 forKeys:&v327 count:1];
      v5[2](v5, v53);

      device_lock_state = self->_device_lock_state;
    }

    v325 = @"isLocked";
    v54 = [NSNumber numberWithInt:device_lock_state == 1];
    v326 = v54;
    v55 = [NSDictionary dictionaryWithObjects:&v326 forKeys:&v325 count:1];
    v5[2](v5, v55);
  }

  if (v215)
  {
    v56 = +[OSASystemConfiguration sharedInstance];
    v57 = [v56 hwModel];

    v324[0] = v57;
    v323[0] = @"codeName";
    v323[1] = @"systemID";
    v58 = +[OSASystemConfiguration sharedInstance];
    v59 = [v58 systemId];
    v324[1] = v59;
    v60 = [NSDictionary dictionaryWithObjects:v324 forKeys:v323 count:2];
    v5[2](v5, v60);

    v61 = +[OSASystemConfiguration sharedInstance];
    v62 = [v61 automatedDeviceGroup];

    if (v62)
    {
      v321 = @"AutomatedDeviceGroup";
      v322 = v62;
      v63 = [NSDictionary dictionaryWithObjects:&v322 forKeys:&v321 count:1];
      v5[2](v5, v63);
    }
  }

  responsible_pid = self->_responsible_pid;
  if (responsible_pid && responsible_pid != self->_proc_id)
  {
    if (self->_responsibleProc)
    {
      v319[0] = @"responsiblePid";
      v65 = [NSNumber numberWithInt:?];
      v319[1] = @"responsibleProc";
      responsibleProc = self->_responsibleProc;
      v320[0] = v65;
      v320[1] = responsibleProc;
      v67 = v320;
      v68 = v319;
      v69 = 2;
    }

    else
    {
      v317 = @"responsiblePid";
      v65 = [NSNumber numberWithInt:?];
      v318 = v65;
      v67 = &v318;
      v68 = &v317;
      v69 = 1;
    }

    v70 = [NSDictionary dictionaryWithObjects:v67 forKeys:v68 count:v69];
    v5[2](v5, v70);
  }

  if (self->_consecutiveCrashCount)
  {
    v315 = @"consecutiveCrashCount";
    v71 = [NSNumber numberWithUnsignedInt:?];
    v316 = v71;
    v72 = [NSDictionary dictionaryWithObjects:&v316 forKeys:&v315 count:1];
    v5[2](v5, v72);
  }

  if (self->_throttleTimeout)
  {
    v313 = @"throttleTimeout";
    v73 = [NSNumber numberWithUnsignedInt:?];
    v314 = v73;
    v74 = [NSDictionary dictionaryWithObjects:&v314 forKeys:&v313 count:1];
    v5[2](v5, v74);
  }

  cs_signing_id = self->_cs_signing_id;
  if (cs_signing_id)
  {
    v311 = @"codeSigningID";
    v312 = cs_signing_id;
    v76 = [NSDictionary dictionaryWithObjects:&v312 forKeys:&v311 count:1];
    v5[2](v5, v76);
  }

  cs_team_id = self->_cs_team_id;
  if (cs_team_id)
  {
    v309 = @"codeSigningTeamID";
    v310 = cs_team_id;
    v78 = [NSDictionary dictionaryWithObjects:&v310 forKeys:&v309 count:1];
    v5[2](v5, v78);
  }

  if (self->_cs_status)
  {
    v307 = @"codeSigningFlags";
    v79 = [NSNumber numberWithUnsignedInt:?];
    v308 = v79;
    v80 = [NSDictionary dictionaryWithObjects:&v308 forKeys:&v307 count:1];
    v5[2](v5, v80);
  }

  v305 = @"codeSigningValidationCategory";
  v81 = [NSNumber numberWithUnsignedInt:self->_cs_validation_category];
  v306 = v81;
  v82 = [NSDictionary dictionaryWithObjects:&v306 forKeys:&v305 count:1];
  v5[2](v5, v82);

  v303 = @"codeSigningTrustLevel";
  v83 = [NSNumber numberWithUnsignedInt:self->_cs_trust_level];
  v304 = v83;
  v84 = [NSDictionary dictionaryWithObjects:&v304 forKeys:&v303 count:1];
  v5[2](v5, v84);

  v85 = [(OSACrashReport *)self problemType];
  LODWORD(v84) = [v85 isEqualToString:@"309"];

  if (v84)
  {
    v301 = @"codeSigningAuxiliaryInfo";
    v86 = [NSNumber numberWithUnsignedLongLong:self->_cs_auxiliary_info];
    v302 = v86;
    v87 = [NSDictionary dictionaryWithObjects:&v302 forKeys:&v301 count:1];
    v5[2](v5, v87);
  }

  if (self->_pc_bytes)
  {
    v299[0] = @"beforePC";
    v88 = [(NSData *)self->_pc_bytes_before base64EncodedStringWithOptions:0];
    v300[0] = v88;
    v299[1] = @"atPC";
    v89 = [(NSData *)self->_pc_bytes base64EncodedStringWithOptions:0];
    v300[1] = v89;
    v90 = [NSDictionary dictionaryWithObjects:v300 forKeys:v299 count:2];

    v297 = @"instructionByteStream";
    v298 = v90;
    v91 = [NSDictionary dictionaryWithObjects:&v298 forKeys:&v297 count:1];
    v5[2](v5, v91);
  }

  v92 = [objc_opt_class() bootSessionUUID];
  v93 = v92;
  if (v92)
  {
    v295 = @"bootSessionUUID";
    v296 = v92;
    v94 = [NSDictionary dictionaryWithObjects:&v296 forKeys:&v295 count:1];
    v5[2](v5, v94);
  }

  v212 = v93;
  if (self->_jit_start_address && self->_jit_end_address)
  {
    v293 = @"jitStartAddress";
    v95 = [NSNumber numberWithUnsignedLongLong:?];
    v294 = v95;
    v96 = [NSDictionary dictionaryWithObjects:&v294 forKeys:&v293 count:1];
    v5[2](v5, v96);

    v291 = @"jitEndAddress";
    v97 = [NSNumber numberWithUnsignedLongLong:self->_jit_end_address];
    v292 = v97;
    v98 = [NSDictionary dictionaryWithObjects:&v292 forKeys:&v291 count:1];
    v5[2](v5, v98);
  }

  if ([(NSMutableArray *)self->_mteTags count]&& [(OSACrashReport *)self isMTECrash])
  {
    v289 = @"mtePageTags";
    mteTags = self->_mteTags;
    v99 = [NSDictionary dictionaryWithObjects:&mteTags forKeys:&v289 count:1];
    v5[2](v5, v99);
  }

  if (![(NSString *)self->_procName isEqualToString:@"CommCenter"])
  {
    v100 = MGCopyAnswer();
    v101 = v100;
    if (v100)
    {
      v287 = @"basebandVersion";
      v288 = v100;
      v102 = [NSDictionary dictionaryWithObjects:&v288 forKeys:&v287 count:1];
      v5[2](v5, v102);
    }
  }

  vmregion_info = self->_vmregion_info;
  if (vmregion_info)
  {
    v285 = @"vmRegionInfo";
    v286 = vmregion_info;
    v104 = [NSDictionary dictionaryWithObjects:&v286 forKeys:&v285 count:1];
    v5[2](v5, v104);
  }

  if (self->_is_lightweight_corpse)
  {
    v5[2](v5, &off_10004E3A0);
  }

  else if (self->_is_simulated)
  {
    v5[2](v5, &off_10004E3C8);
    caller_name = self->_caller_name;
    if (caller_name)
    {
      v283 = @"simulatedCaller";
      v284 = caller_name;
      v144 = [NSDictionary dictionaryWithObjects:&v284 forKeys:&v283 count:1];
      v5[2](v5, v144);
    }
  }

  else if ([(OSACrashReport *)self isExceptionNonFatal])
  {
    v5[2](v5, &off_10004E3F0);
  }

  v281 = @"exception";
  v105 = [(OSACrashReport *)self decode_exceptionCodes];
  v282 = v105;
  v106 = [NSDictionary dictionaryWithObjects:&v282 forKeys:&v281 count:1];
  v5[2](v5, v106);

  v107 = [(OSACrashReport *)self terminationReason];
  if ([v107 count])
  {
    v279 = @"termination";
    v280 = v107;
    v108 = [NSDictionary dictionaryWithObjects:&v280 forKeys:&v279 count:1];
    v5[2](v5, v108);

    v109 = [v107 objectForKeyedSubscript:@"reasons"];
    if (![v109 count])
    {
      v110 = [v107 objectForKeyedSubscript:@"details"];

      v109 = v110;
    }

    if ([v109 count])
    {
      v111 = [v109 componentsJoinedByString:@"\n"];
      mxTerminationReason = self->_mxTerminationReason;
      self->_mxTerminationReason = v111;
    }
  }

  exit_snapshot = self->_exit_snapshot;
  if (exit_snapshot && exit_snapshot->ers_code == 5)
  {
    v114 = [(OSACrashReport *)self create_os_fault_section];
    if ([v114 count])
    {
      v277 = @"os_fault";
      v278 = v114;
      v115 = [NSDictionary dictionaryWithObjects:&v278 forKeys:&v277 count:1];
      v5[2](v5, v115);
    }
  }

  if ([(NSString *)self->_ktriage_info length])
  {
    v275 = @"ktriageinfo";
    ktriage_info = self->_ktriage_info;
    v116 = [NSDictionary dictionaryWithObjects:&ktriage_info forKeys:&v275 count:1];
    v5[2](v5, v116);
  }

  v117 = self->_vmregion_info;
  if (v117)
  {
    v273 = @"vmregioninfo";
    v274 = v117;
    v118 = [NSDictionary dictionaryWithObjects:&v274 forKeys:&v273 count:1];
    v5[2](v5, v118);
  }

  [(OSACrashReport *)self _mergeFormattedASI];
  if ([(NSMutableDictionary *)self->_applicationSpecificInfo count])
  {
    v271 = @"asi";
    applicationSpecificInfo = self->_applicationSpecificInfo;
    v119 = [NSDictionary dictionaryWithObjects:&applicationSpecificInfo forKeys:&v271 count:1];
    v5[2](v5, v119);
  }

  if (v215 && [(NSMutableDictionary *)self->_applicationSpecificInfoRedacted count])
  {
    v269 = @"asiRedacted";
    applicationSpecificInfoRedacted = self->_applicationSpecificInfoRedacted;
    v120 = [NSDictionary dictionaryWithObjects:&applicationSpecificInfoRedacted forKeys:&v269 count:1];
    v5[2](v5, v120);
  }

  if ([(NSDictionary *)self->_exceptionReasonDetails count])
  {
    v267 = @"exceptionReason";
    exceptionReasonDetails = self->_exceptionReasonDetails;
    v121 = [NSDictionary dictionaryWithObjects:&exceptionReasonDetails forKeys:&v267 count:1];
    v5[2](v5, v121);
  }

  v122 = &off_10004D9E8;
  if ([(NSDictionary *)self->_workQueueLimits count])
  {
    workQueueLimits = self->_workQueueLimits;
    v265[0] = @"workQueueLimits";
    v265[1] = &off_10004DDD8;
    v266[0] = workQueueLimits;
    v266[1] = &off_10004D9E8;
    v124 = [NSDictionary dictionaryWithObjects:v266 forKeys:v265 count:2];
    v5[2](v5, v124);
  }

  v210 = v107;
  if ([(NSArray *)self->_lastExceptionBacktrace count])
  {
    v263 = @"lastExceptionBacktrace";
    lastExceptionBacktrace = self->_lastExceptionBacktrace;
    v125 = [NSDictionary dictionaryWithObjects:&lastExceptionBacktrace forKeys:&v263 count:1];
    v5[2](v5, v125);
  }

  if ([(NSMutableArray *)self->_threadInfos count])
  {
    if ((self->_crashedThreadNumber & 0x80000000) == 0)
    {
      v261 = @"faultingThread";
      v126 = [NSNumber numberWithInt:?];
      v262 = v126;
      v127 = [NSDictionary dictionaryWithObjects:&v262 forKeys:&v261 count:1];
      v5[2](v5, v127);

      v122 = &off_10004D9E8;
      v128 = [(NSMutableArray *)self->_threadInfos objectAtIndexedSubscript:self->_crashedThreadNumber];
      [v128 setObject:self->_threadStateDecoded forKeyedSubscript:@"threadState"];
    }

    v259 = @"threads";
    threadInfos = self->_threadInfos;
    v129 = [NSDictionary dictionaryWithObjects:&threadInfos forKeys:&v259 count:1];
    v5[2](v5, v129);
  }

  if ([(NSArray *)self->_usedImages count])
  {
    usedImages = self->_usedImages;
    v257[0] = @"usedImages";
    v257[1] = &off_10004DDD8;
    v258[0] = usedImages;
    v258[1] = &off_10004D9E8;
    v131 = [NSDictionary dictionaryWithObjects:v258 forKeys:v257 count:2];
    v5[2](v5, v131);
  }

  if (self->_sharedCacheBase)
  {
    memset(out, 0, 37);
    uuid_unparse_lower(self->_sharedCacheUuid, out);
    v254[0] = @"sharedCache";
    v252[0] = @"base";
    v132 = [NSNumber numberWithUnsignedLongLong:self->_sharedCacheBase];
    v253[0] = v132;
    v252[1] = @"size";
    v122 = [NSNumber numberWithUnsignedLongLong:self->_sharedCacheSize];
    v253[1] = v122;
    v252[2] = @"uuid";
    v133 = [NSString stringWithUTF8String:out];
    v253[2] = v133;
    v134 = [NSDictionary dictionaryWithObjects:v253 forKeys:v252 count:3];
    v254[1] = &off_10004DDD8;
    v255[0] = v134;
    v255[1] = &off_10004D9E8;
    v135 = [NSDictionary dictionaryWithObjects:v255 forKeys:v254 count:2];
    v5[2](v5, v135);

    v17 = &create_gcore_with_options_ptr;
  }

  v136 = objc_opt_new();
  if (self->_crashedThreadNumber < 0)
  {
    if (self->_highlightedThreadNumber < 0)
    {
      goto LABEL_134;
    }

    v137 = [NSNumber numberWithInt:?];
    [v136 setObject:v137 forKeyedSubscript:@"threadHighlighted"];
  }

  else
  {
    v137 = objc_opt_new();
    v138 = [(NSMutableArray *)self->_threadInfos objectAtIndexedSubscript:self->_crashedThreadNumber];
    v139 = [v138 objectForKeyedSubscript:@"name"];

    if (v139)
    {
      v140 = [v138 objectForKeyedSubscript:@"name"];
      [v137 setObject:v140 forKeyedSubscript:@"name"];
    }

    v141 = [v138 objectForKeyedSubscript:@"queue"];

    if (v141)
    {
      v142 = [v138 objectForKeyedSubscript:@"queue"];
      [v137 setObject:v142 forKeyedSubscript:@"queue"];
    }

    [v136 setObject:v137 forKeyedSubscript:@"threadTriggered"];

    v17 = &create_gcore_with_options_ptr;
  }

LABEL_134:
  vmSummary = self->_vmSummary;
  if (vmSummary)
  {
    v250 = @"vmSummary";
    v251 = vmSummary;
    v146 = [v17[475] dictionaryWithObjects:&v251 forKeys:&v250 count:1];
    v5[2](v5, v146);
  }

  probGuardReport = self->_probGuardReport;
  if (probGuardReport)
  {
    v248 = @"probGuardReport";
    v249 = probGuardReport;
    v148 = [v17[475] dictionaryWithObjects:&v249 forKeys:&v248 count:1];
    v5[2](v5, v148);
  }

  memoryErrorReport = self->_memoryErrorReport;
  if (memoryErrorReport)
  {
    v246 = @"memoryErrorReport";
    v247 = memoryErrorReport;
    v150 = [v17[475] dictionaryWithObjects:&v247 forKeys:&v246 count:1];
    v5[2](v5, v150);
  }

  sanitizerReport = self->_sanitizerReport;
  if (sanitizerReport)
  {
    v244 = @"quarantineReport";
    v245 = sanitizerReport;
    v152 = [v17[475] dictionaryWithObjects:&v245 forKeys:&v244 count:1];
    v5[2](v5, v152);
  }

  if ([v136 count])
  {
    v242[0] = @"legacyInfo";
    v242[1] = &off_10004DDD8;
    v243[0] = v136;
    v243[1] = &off_10004D9E8;
    v153 = [v17[475] dictionaryWithObjects:v243 forKeys:v242 count:2];
    v5[2](v5, v153);
  }

  logWritingSignature = self->_logWritingSignature;
  if (logWritingSignature)
  {
    v240 = @"logWritingSignature";
    v241 = logWritingSignature;
    v155 = [v17[475] dictionaryWithObjects:&v241 forKeys:&v240 count:1];
    v5[2](v5, v155);
  }

  v156 = [(OSACrashReport *)self patternUUIDs];
  v157 = [v156 count];

  if (v157)
  {
    v238 = @"patternUUIDs";
    v158 = [(OSACrashReport *)self patternUUIDs];
    v239 = v158;
    v159 = [v17[475] dictionaryWithObjects:&v239 forKeys:&v238 count:1];
    v5[2](v5, v159);
  }

  [(OSACrashReport *)self writeReportBodyWithSectionWriter:v5];
  v160 = [(OSACrashReport *)self getTrialCache];
  v161 = v160;
  if (v160)
  {
    v162 = [v160 dictionaryWithValuesForKeys:&off_10004E508];
    v163 = [v161 objectForKeyedSubscript:@"errors"];
    if ([v162 count])
    {
      v236[0] = @"trialInfo";
      v236[1] = &off_10004DDD8;
      v237[0] = v162;
      v237[1] = &off_10004D9E8;
      v164 = [NSDictionary dictionaryWithObjects:v237 forKeys:v236 count:2];
      v5[2](v5, v164);
    }

    else
    {
      if (![v163 count])
      {
LABEL_156:

        v17 = &create_gcore_with_options_ptr;
        goto LABEL_157;
      }

      v165 = *&self->OSAReport_opaque[OBJC_IVAR___OSAReport__notes];
      v164 = [v163 componentsJoinedByString:@" "];;
      v166 = [NSString stringWithFormat:@"Unable to retrieve Trial info: %@", v164];
      [v165 addObject:v166];
    }

    goto LABEL_156;
  }

LABEL_157:
  if (!v215)
  {
    goto LABEL_201;
  }

  if ((!self->_is_simulated || self->_is_lightweight_corpse) && self->_exceptionType != 11)
  {
    v167 = objc_autoreleasePoolPush();
    if ((byte_1000540D5 & 1) != 0 || [(NSString *)self->_procName isEqualToString:@"ReportCrash"])
    {
LABEL_192:
      objc_autoreleasePoolPop(v167);
      goto LABEL_193;
    }

    v216 = v167;
    v168 = [NSPredicate predicateWithFormat:@"(processID == 0) AND (senderImagePath CONTAINS '/Sandbox')"];
    v235[0] = v168;
    v169 = [NSPredicate predicateWithFormat:@"subsystem == 'com.apple.sandbox.reporting'"];
    v235[1] = v169;
    v170 = [NSArray arrayWithObjects:v235 count:2];

    if (self->_signal == 6)
    {
      v171 = [&__NSArray0__struct arrayByAddingObject:@"hangtracerd"];
    }

    else
    {
      v171 = &__NSArray0__struct;
    }

    if ([(NSString *)self->_procName isEqualToString:@"wifid"])
    {
LABEL_167:
      v172 = @"kernel";
LABEL_179:
      v173 = [v171 arrayByAddingObject:v172];
LABEL_180:
      v174 = v173;

      v171 = v174;
LABEL_181:
      if (self->_is_driverkit)
      {
        v175 = &off_10004E5B0;
      }

      else
      {
        v176 = [NSNumber numberWithInt:self->_proc_id];
        v234 = v176;
        v175 = [NSArray arrayWithObjects:&v234 count:1];
      }

      v208 = v170;
      v177 = [(OSACrashReport *)self getSyslogForPids:v175 andOptionalSenders:v171 additionalPredicates:v170];
      v178 = v177;
      v232[0] = @"filteredLog";
      v206 = v171;
      if (v177)
      {
        if ([v177 count])
        {
          v122 = [v178 reverseObjectEnumerator];
          v179 = [v122 allObjects];
          v180 = 1;
        }

        else
        {
          v180 = 0;
          v179 = &off_10004E5E0;
        }
      }

      else
      {
        v180 = 0;
        v179 = &off_10004E5C8;
      }

      v232[1] = &off_10004DDD8;
      v233[0] = v179;
      v233[1] = &off_10004D9E8;
      v181 = [NSDictionary dictionaryWithObjects:v233 forKeys:v232 count:2];
      v5[2](v5, v181);

      if (v180)
      {
      }

      v167 = v216;
      v17 = &create_gcore_with_options_ptr;
      goto LABEL_192;
    }

    if ([(NSString *)self->_procName isEqualToString:@"Camera"])
    {
      goto LABEL_169;
    }

    if ([(NSString *)self->_procName isEqualToString:@"SpringBoard"])
    {
      v172 = @"backboardd";
      goto LABEL_179;
    }

    if ([(NSString *)self->_procName isEqualToString:@"backboardd"])
    {
      v172 = @"SpringBoard";
      goto LABEL_179;
    }

    if ([(NSString *)self->_procName isEqualToString:@"tzd"])
    {
      v172 = @"mobileassetd";
      goto LABEL_179;
    }

    if ([(NSString *)self->_procName isEqualToString:@"Carousel"]|| [(NSString *)self->_procName isEqualToString:@"nanotimekitd"])
    {
      v172 = @"assetsd";
      goto LABEL_179;
    }

    if ([(NSString *)self->_procName isEqualToString:@"com.apple.photos.ImageConversionService"]|| [(NSString *)self->_procName isEqualToString:@"com.apple.photos.VideoConversionService"])
    {
LABEL_169:
      v172 = @"mediaserverd";
      goto LABEL_179;
    }

    if ([(NSString *)self->_procName isEqualToString:@"mediaserverd"])
    {
      v197 = &off_10004E520;
    }

    else if ([(NSString *)self->_procName isEqualToString:@"audiomxd"])
    {
      v197 = &off_10004E538;
    }

    else if ([(NSString *)self->_procName isEqualToString:@"mediaplaybackd"])
    {
      v197 = &off_10004E550;
    }

    else if ([(NSString *)self->_procName isEqualToString:@"mediaparserd"])
    {
      v197 = &off_10004E568;
    }

    else if ([(NSString *)self->_procName isEqualToString:@"videocodecd"])
    {
      v197 = &off_10004E580;
    }

    else
    {
      if (![(NSString *)self->_procName isEqualToString:@"airplayd"])
      {
        if (![(NSString *)self->_procName isEqualToString:@"zprint"])
        {
          goto LABEL_181;
        }

        goto LABEL_167;
      }

      v197 = &off_10004E598;
    }

    v173 = [v171 arrayByAddingObjectsFromArray:v197];
    goto LABEL_180;
  }

LABEL_193:
  if (self->_proc_id && ([(NSMutableDictionary *)self->_spewage_diag count]|| self->_memgraph_filename))
  {
    v230 = &off_10004DDF0;
    v231 = @"diagnosticOutput";
    v182 = [v17[475] dictionaryWithObjects:&v231 forKeys:&v230 count:1];
    v5[2](v5, v182);

    if ([(NSMutableDictionary *)self->_spewage_diag count])
    {
      v5[2](v5, self->_spewage_diag);
    }

    memgraph_filename = self->_memgraph_filename;
    if (memgraph_filename)
    {
      v228 = @"memgraph/vmmap";
      v184 = sub_10000D580("/usr/bin/vmmap", memgraph_filename, dword_1000540CC, 0);
      v227 = v184;
      v185 = [NSArray arrayWithObjects:&v227 count:1];
      v229 = v185;
      v186 = [NSDictionary dictionaryWithObjects:&v229 forKeys:&v228 count:1];
      v5[2](v5, v186);

      v225 = @"memgraph/heap";
      v187 = sub_10000D580("/usr/bin/heap", self->_memgraph_filename, dword_1000540CC, 0);
      v224 = v187;
      v188 = [NSArray arrayWithObjects:&v224 count:1];
      v226 = v188;
      v189 = [NSDictionary dictionaryWithObjects:&v226 forKeys:&v225 count:1];
      v5[2](v5, v189);

      v222 = @"memgraph/leaks";
      v190 = sub_10000D580("/usr/bin/leaks", self->_memgraph_filename, dword_1000540CC, 0);
      v221 = v190;
      v191 = [NSArray arrayWithObjects:&v221 count:1];
      v223 = v191;
      v192 = [NSDictionary dictionaryWithObjects:&v223 forKeys:&v222 count:1];
      v5[2](v5, v192);
    }

    v219 = &off_10004DE08;
    v220 = &stru_1000463C0;
    v193 = [NSDictionary dictionaryWithObjects:&v220 forKeys:&v219 count:1];
    v5[2](v5, v193);

    v17 = &create_gcore_with_options_ptr;
  }

LABEL_201:
  v194 = OBJC_IVAR___OSAReport__notes;
  if ([*&self->OSAReport_opaque[OBJC_IVAR___OSAReport__notes] count])
  {
    v195 = *&self->OSAReport_opaque[v194];
    v217[0] = @"reportNotes";
    v217[1] = &off_10004DDD8;
    v218[0] = v195;
    v218[1] = &off_10004D9E8;
    v196 = [v17[475] dictionaryWithObjects:v218 forKeys:v217 count:2];
    v5[2](v5, v196);
  }
}

- (BOOL)saveWithOptions:(id)a3
{
  v4 = a3;
  if ([(OSACrashReport *)self needsUrgentSubmission])
  {
    [*&self->OSAReport_opaque[OBJC_IVAR___OSAReport__logWritingOptions] setObject:&__kCFBooleanTrue forKeyedSubscript:kOSALogOptionUrgent];
  }

  v7.receiver = self;
  v7.super_class = OSACrashReport;
  v5 = [(OSACrashReport *)&v7 saveWithOptions:v4];
  if (!self->_is_simulated)
  {
    [(OSACrashReport *)self sendToMetricKit];
  }

  return v5;
}

- (void)checkIfNeedsUrgentSubmission
{
  v3 = +[OSASystemConfiguration sharedInstance];
  v4 = [v3 getTaskingKey:@"disableUrgentSubmission"];
  v5 = [v4 BOOLValue];

  if (v5)
  {
    v6 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
    v7 = 0;
    if (v6)
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Urgent submission has been disabled", v8, 2u);
      v7 = 0;
    }
  }

  else
  {
    if (!self->_sroute_id)
    {
      return;
    }

    v7 = 1;
  }

  self->_needsUrgentSubmission = v7;
}

+ (void)observedMTECrashWithProcessName:(id)a3
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  if (qword_100053AA0 != -1)
  {
    swift_once();
  }

  v11 = off_100053D60;
  if (off_100053D60)
  {
    v12 = *(off_100053D60 + 4);
    v13 = static DispatchWorkItemFlags.barrier.getter();
    __chkstk_darwin(v13);
    *&v14[-32] = v11;
    *&v14[-24] = v8;
    *&v14[-16] = v10;
    OS_dispatch_queue.sync<A>(flags:execute:)();

    (*(v4 + 8))(v7, v3);
  }

  else
  {
  }
}

- (void)writeReportToSerial
{
  v2 = self;
  sub_10002FB28();
}

@end