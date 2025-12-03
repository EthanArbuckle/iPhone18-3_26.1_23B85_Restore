@interface BGSystemTaskRequest
+ (BGSystemTaskRequest)taskRequestWithDescriptor:(id)descriptor withIdentifier:(id)identifier;
+ (id)descriptorWithTaskRequest:(id)request;
+ (void)initialize;
- (BGSystemTaskRequest)initWithIdentifier:(id)identifier;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (int64_t)requiresProtectionClass;
- (unint64_t)hash;
- (void)setInvolvedProcesses:(id)processes;
- (void)setRelatedApplications:(id)applications;
@end

@implementation BGSystemTaskRequest

- (int64_t)requiresProtectionClass
{
  if (![(NSSet *)self->_dependencies count]&& ![(NSSet *)self->_producedResultIdentifiers count])
  {
    return self->_requiresProtectionClass;
  }

  result = self->_requiresProtectionClass;
  if (result > 4)
  {
    v4 = _log_0;
    if (os_log_type_enabled(_log_0, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_1B236A000, v4, OS_LOG_TYPE_DEFAULT, "Dependencies imply at least Class C unlock, clamping task request accordingly", v5, 2u);
    }

    return 4;
  }

  return result;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    _log_0 = os_log_create("com.apple.BackgroundSystemTasks", "BGSTFramework");

    MEMORY[0x1EEE66BB8]();
  }
}

+ (BGSystemTaskRequest)taskRequestWithDescriptor:(id)descriptor withIdentifier:(id)identifier
{
  v122 = *MEMORY[0x1E69E9840];
  descriptorCopy = descriptor;
  identifierCopy = identifier;
  v7 = MEMORY[0x1B27477C0](descriptorCopy);
  v8 = MEMORY[0x1E69E9E80];
  if (v7 != MEMORY[0x1E69E9E80])
  {
    +[BGSystemTaskRequest taskRequestWithDescriptor:withIdentifier:];
  }

  v9 = xpc_dictionary_get_dictionary(descriptorCopy, "RepeatingTask");
  v10 = v9;
  if (!v9 || MEMORY[0x1B27477C0](v9) != v8)
  {
    p_super = [[BGNonRepeatingSystemTaskRequest alloc] initWithIdentifier:identifierCopy];
    v12 = xpc_dictionary_get_dictionary(descriptorCopy, "NonRepeatingTask");

    if (v12 && MEMORY[0x1B27477C0](v12) == v8)
    {
      v13 = _CFXPCCreateCFObjectFromXPCObject();
      v14 = [v13 objectForKey:@"FastPassTask"];
      if (v14)
      {
        v15 = [[BGFastPassSystemTaskRequest alloc] initWithIdentifier:identifierCopy];
        v16 = [v14 objectForKey:@"ProcessingTaskIdentifiers"];
        if ([v16 count])
        {
          [(BGFastPassSystemTaskRequest *)v15 setProcessingTaskIdentifiers:v16];
        }

        v17 = [v14 objectForKey:@"SemanticVersion"];
        -[BGFastPassSystemTaskRequest setSemanticVersion:](v15, "setSemanticVersion:", [v17 intValue]);

        v18 = [v14 objectForKey:@"ReRun"];
        -[BGFastPassSystemTaskRequest setReRun:](v15, "setReRun:", [v18 BOOLValue]);

        v19 = v15;
        p_super = &v19->super;
      }

      v20 = [v13 objectForKeyedSubscript:@"ScheduleAfter"];
      -[BGNonRepeatingSystemTaskRequest setScheduleAfter:](p_super, "setScheduleAfter:", [v20 intValue]);

      v21 = [v13 objectForKeyedSubscript:@"TrySchedulingBefore"];
      -[BGNonRepeatingSystemTaskRequest setTrySchedulingBefore:](p_super, "setTrySchedulingBefore:", [v21 intValue]);

      [(BGNonRepeatingSystemTaskRequest *)p_super trySchedulingBefore];
      if (v22 != 0.0)
      {
        [(BGNonRepeatingSystemTaskRequest *)p_super trySchedulingBefore];
        v24 = v23;
        [(BGNonRepeatingSystemTaskRequest *)p_super scheduleAfter];
        if (v24 < v25)
        {
          v26 = _log_0;
          if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
          {
            [(BGNonRepeatingSystemTaskRequest *)p_super trySchedulingBefore];
            v28 = v27;
            [(BGNonRepeatingSystemTaskRequest *)p_super scheduleAfter];
            *buf = 138543874;
            *&buf[4] = identifierCopy;
            *&buf[12] = 2048;
            *&buf[14] = v28;
            *&buf[22] = 2048;
            v119 = v29;
            _os_log_impl(&dword_1B236A000, v26, OS_LOG_TYPE_INFO, "%{public}@: trySchedulingBefore %f is earlier than scheduleAfter %f. Adjusting.", buf, 0x20u);
          }

          [(BGNonRepeatingSystemTaskRequest *)p_super scheduleAfter];
          [(BGNonRepeatingSystemTaskRequest *)p_super setTrySchedulingBefore:?];
        }
      }
    }

    v30 = p_super;

    v10 = v12;
    if (v30)
    {
      goto LABEL_17;
    }

LABEL_33:
    if (os_log_type_enabled(_log_0, OS_LOG_TYPE_ERROR))
    {
      +[BGSystemTaskRequest taskRequestWithDescriptor:withIdentifier:];
    }

    goto LABEL_130;
  }

  v39 = [[BGRepeatingSystemTaskRequest alloc] initWithIdentifier:identifierCopy];
  v40 = _CFXPCCreateCFObjectFromXPCObject();
  v41 = [v40 objectForKeyedSubscript:@"Interval"];
  -[BGRepeatingSystemTaskRequest setInterval:](v39, "setInterval:", [v41 intValue]);

  v42 = [v40 objectForKeyedSubscript:@"MinDurationBetweenInstances"];

  if (v42)
  {
    v43 = [v40 objectForKeyedSubscript:@"MinDurationBetweenInstances"];
    -[BGRepeatingSystemTaskRequest setMinDurationBetweenInstances:](v39, "setMinDurationBetweenInstances:", [v43 intValue]);
  }

  v30 = v39;

  if (!v30)
  {
    goto LABEL_33;
  }

LABEL_17:
  v31 = xpc_dictionary_get_array(descriptorCopy, "FeatureCodes");

  v32 = MEMORY[0x1E69E9E50];
  if (v31 && MEMORY[0x1B27477C0](v31) == v32)
  {
    v33 = _CFXPCCreateCFObjectFromXPCObject();
    if (![v33 count])
    {
      if (os_log_type_enabled(_log_0, OS_LOG_TYPE_ERROR))
      {
        +[BGSystemTaskRequest taskRequestWithDescriptor:withIdentifier:];
      }

      goto LABEL_180;
    }

    [(BGSystemTaskRequest *)v30 setFeatureCodes:v33];
  }

  if ([(BGNonRepeatingSystemTaskRequest *)v30 isMemberOfClass:objc_opt_class()])
  {
    featureCodes = [(BGSystemTaskRequest *)v30 featureCodes];
    v35 = featureCodes == 0;

    if (v35)
    {
      if (os_log_type_enabled(_log_0, OS_LOG_TYPE_ERROR))
      {
        +[BGSystemTaskRequest taskRequestWithDescriptor:withIdentifier:];
      }

      goto LABEL_180;
    }
  }

  [(BGSystemTaskRequest *)v30 setPostInstall:xpc_dictionary_get_BOOL(descriptorCopy, "PostInstall")];
  [(BGSystemTaskRequest *)v30 setPriority:1];
  [(BGSystemTaskRequest *)v30 setRequiresExternalPower:1];
  [(BGSystemTaskRequest *)v30 setRequiresExternalPowerIsSetByUser:0];
  string = xpc_dictionary_get_string(descriptorCopy, "Priority");
  v37 = string;
  if (!string)
  {
    if (![(BGNonRepeatingSystemTaskRequest *)v30 isMemberOfClass:objc_opt_class()])
    {
      goto LABEL_44;
    }

    goto LABEL_36;
  }

  if (!strcmp(string, "Maintenance"))
  {
    goto LABEL_44;
  }

  if (!strcmp(v37, "Utility"))
  {
LABEL_36:
    [(BGSystemTaskRequest *)v30 setPriority:2];
    [(BGSystemTaskRequest *)v30 setRequiresExternalPower:0];
    goto LABEL_44;
  }

  if (!strcmp(v37, "UserInitiated"))
  {
    [(BGSystemTaskRequest *)v30 setPriority:3];
    [(BGSystemTaskRequest *)v30 setRequiresExternalPower:0];
  }

  else
  {
    v38 = _log_0;
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      [BGSystemTaskRequest taskRequestWithDescriptor:identifierCopy withIdentifier:v37];
    }
  }

LABEL_44:
  v44 = xpc_dictionary_get_value(descriptorCopy, "RequiresExternalPower");

  if (v44)
  {
    [(BGSystemTaskRequest *)v30 setRequiresExternalPower:xpc_BOOL_get_value(v44)];
    [(BGSystemTaskRequest *)v30 setRequiresExternalPowerIsSetByUser:1];
  }

  [(BGSystemTaskRequest *)v30 setRandomInitialDelay:xpc_dictionary_get_int64(descriptorCopy, "RandomInitialDelay")];
  [(BGSystemTaskRequest *)v30 setExpectedDuration:xpc_dictionary_get_int64(descriptorCopy, "ExpectedDuration")];
  v45 = xpc_dictionary_get_array(descriptorCopy, "RelatedApplications");

  if (v45 && MEMORY[0x1B27477C0](v45) == v32)
  {
    v46 = _CFXPCCreateCFObjectFromXPCObject();
    [(BGSystemTaskRequest *)v30 setRelatedApplications:v46];
  }

  v47 = xpc_dictionary_get_array(descriptorCopy, "InvolvedProcesses");

  if (v47 && MEMORY[0x1B27477C0](v47) == v32)
  {
    v48 = _CFXPCCreateCFObjectFromXPCObject();
    [(BGSystemTaskRequest *)v30 setInvolvedProcesses:v48];
  }

  v10 = xpc_dictionary_get_value(descriptorCopy, "RunOnAppForeground");

  v49 = MEMORY[0x1E69E9E58];
  if (v10 && MEMORY[0x1B27477C0](v10) == v49 && xpc_BOOL_get_value(v10))
  {
    relatedApplications = [(BGSystemTaskRequest *)v30 relatedApplications];
    v51 = [relatedApplications count];

    if (!v51)
    {
      v87 = _log_0;
      if (os_log_type_enabled(_log_0, OS_LOG_TYPE_ERROR))
      {
        [BGSystemTaskRequest taskRequestWithDescriptor:v87 withIdentifier:v30];
      }

      goto LABEL_130;
    }

    [(BGSystemTaskRequest *)v30 setRunOnAppForeground:1];
  }

  v31 = xpc_dictionary_get_value(descriptorCopy, "RequestsApplicationLaunch");

  if (v31 && MEMORY[0x1B27477C0](v31) == v49 && xpc_BOOL_get_value(v31))
  {
    relatedApplications2 = [(BGSystemTaskRequest *)v30 relatedApplications];
    v53 = [relatedApplications2 count];

    if (!v53)
    {
      v88 = _log_0;
      if (os_log_type_enabled(_log_0, OS_LOG_TYPE_ERROR))
      {
        [BGSystemTaskRequest taskRequestWithDescriptor:v88 withIdentifier:v30];
      }

      goto LABEL_180;
    }

    [(BGSystemTaskRequest *)v30 setRequestsApplicationLaunch:1];
  }

  v10 = xpc_dictionary_get_value(descriptorCopy, "BeforeApplicationLaunch");

  if (v10 && MEMORY[0x1B27477C0](v10) == v49 && xpc_BOOL_get_value(v10))
  {
    relatedApplications3 = [(BGSystemTaskRequest *)v30 relatedApplications];
    v55 = [relatedApplications3 count];

    if (!v55)
    {
      v89 = _log_0;
      if (os_log_type_enabled(_log_0, OS_LOG_TYPE_ERROR))
      {
        [BGSystemTaskRequest taskRequestWithDescriptor:v89 withIdentifier:v30];
      }

      goto LABEL_130;
    }

    [(BGSystemTaskRequest *)v30 setBeforeApplicationLaunch:1];
  }

  v31 = xpc_dictionary_get_value(descriptorCopy, "ApplicationRelationship");

  if (v31)
  {
    relatedApplications4 = [(BGSystemTaskRequest *)v30 relatedApplications];
    v57 = [relatedApplications4 count];

    if (!v57)
    {
      v70 = _log_0;
      if (os_log_type_enabled(_log_0, OS_LOG_TYPE_ERROR))
      {
        [BGSystemTaskRequest taskRequestWithDescriptor:v70 withIdentifier:v30];
      }

      goto LABEL_180;
    }

    [(BGSystemTaskRequest *)v30 setApplicationRelationship:xpc_dictionary_get_int64(descriptorCopy, "ApplicationRelationship")];
  }

  v58 = xpc_dictionary_get_value(descriptorCopy, "UserRequestedBackupTask");

  if (v58)
  {
    [(BGSystemTaskRequest *)v30 setUserRequestedBackupTask:xpc_BOOL_get_value(v58)];
  }

  v59 = xpc_dictionary_get_value(descriptorCopy, "RequestsImmediateRuntime");

  if (v59)
  {
    [(BGSystemTaskRequest *)v30 setRequestsImmediateRuntime:xpc_BOOL_get_value(v59)];
  }

  v60 = xpc_dictionary_get_dictionary(descriptorCopy, "NetworkEndpoint");

  if (v60 && MEMORY[0x1B27477C0](v60) == v8)
  {
    v61 = nw_endpoint_create_from_dictionary();
    [(BGSystemTaskRequest *)v30 setNetworkEndpointPrimitive:v61];
  }

  v62 = xpc_dictionary_get_dictionary(descriptorCopy, "NetworkParameters");

  if (v62 && MEMORY[0x1B27477C0](v62) == v8)
  {
    v63 = nw_parameters_create_from_dictionary();
    [(BGSystemTaskRequest *)v30 setNetworkParametersPrimitive:v63];
  }

  [(BGSystemTaskRequest *)v30 setRequiresBuddyComplete:xpc_dictionary_get_BOOL(descriptorCopy, "RequiresBuddyComplete")];
  v64 = xpc_dictionary_get_string(descriptorCopy, "GroupName");
  if (v64)
  {
    v65 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v64];
    [(BGSystemTaskRequest *)v30 setGroupName:v65];
  }

  groupName = [(BGSystemTaskRequest *)v30 groupName];
  v67 = groupName == 0;

  if (v67)
  {
    v68 = v62;
  }

  else
  {
    v68 = xpc_dictionary_get_value(descriptorCopy, "GroupConcurrencyLimit");

    if (v68)
    {
      int64 = xpc_dictionary_get_int64(descriptorCopy, "GroupConcurrencyLimit");
    }

    else
    {
      int64 = 1;
    }

    [(BGSystemTaskRequest *)v30 setGroupConcurrencyLimit:int64];
  }

  v71 = xpc_dictionary_get_string(descriptorCopy, "RateLimitConfigurationName");
  if (v71)
  {
    v72 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v71];
    [(BGSystemTaskRequest *)v30 setRateLimitConfigurationName:v72];
  }

  [(BGSystemTaskRequest *)v30 setRequiresSignificantUserInactivity:xpc_dictionary_get_BOOL(descriptorCopy, "RequiresSignificantUserInactivity")];
  [(BGSystemTaskRequest *)v30 setRequiresUserInactivity:xpc_dictionary_get_BOOL(descriptorCopy, "RequiresUserInactivity")];
  [(BGSystemTaskRequest *)v30 setAppRefresh:xpc_dictionary_get_BOOL(descriptorCopy, "AppRefresh")];
  [(BGSystemTaskRequest *)v30 setPowerNap:xpc_dictionary_get_BOOL(descriptorCopy, "PowerNap")];
  [(BGSystemTaskRequest *)v30 setPreventsDeviceSleep:xpc_dictionary_get_BOOL(descriptorCopy, "PreventsDeviceSleep")];
  [(BGSystemTaskRequest *)v30 setResourceIntensive:xpc_dictionary_get_BOOL(descriptorCopy, "ResourceIntensive")];
  v73 = xpc_dictionary_get_int64(descriptorCopy, "Resources");
  if (v73 <= 1)
  {
    v74 = 1;
  }

  else
  {
    v74 = v73;
  }

  [(BGSystemTaskRequest *)v30 setResources:v74];
  [(BGSystemTaskRequest *)v30 setRequiresInexpensiveNetworkConnectivity:xpc_dictionary_get_BOOL(descriptorCopy, "RequiresInexpensiveNetworkConnectivity")];
  [(BGSystemTaskRequest *)v30 setRequiresUnconstrainedNetworkConnectivity:xpc_dictionary_get_BOOL(descriptorCopy, "RequiresUnconstrainedNetworkConnectivity")];
  v75 = xpc_dictionary_get_BOOL(descriptorCopy, "RequiresNetworkConnectivity") || [(BGSystemTaskRequest *)v30 requiresInexpensiveNetworkConnectivity]|| [(BGSystemTaskRequest *)v30 requiresUnconstrainedNetworkConnectivity];
  [(BGSystemTaskRequest *)v30 setRequiresNetworkConnectivity:v75];
  [(BGSystemTaskRequest *)v30 setNetworkDownloadSize:xpc_dictionary_get_int64(descriptorCopy, "NetworkDownloadSize")];
  [(BGSystemTaskRequest *)v30 setNetworkUploadSize:xpc_dictionary_get_int64(descriptorCopy, "NetworkUploadSize")];
  [(BGSystemTaskRequest *)v30 setMayRebootDevice:xpc_dictionary_get_BOOL(descriptorCopy, "MayRebootDevice")];
  v76 = xpc_dictionary_get_array(descriptorCopy, "ProducedResultIdentifiers");

  if (v76 && MEMORY[0x1B27477C0](v76) == v32)
  {
    v77 = _CFXPCCreateCFObjectFromXPCObject();
    if (v77)
    {
      v78 = [MEMORY[0x1E695DFD8] setWithArray:v77];
      [(BGSystemTaskRequest *)v30 setProducedResultIdentifiers:v78];
    }
  }

  v10 = xpc_dictionary_get_array(descriptorCopy, "Dependencies");

  if (v10 && MEMORY[0x1B27477C0](v10) == v32)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v119 = __Block_byref_object_copy__1;
    v120 = __Block_byref_object_dispose__1;
    v121 = [MEMORY[0x1E695DFA8] set];
    v112 = MEMORY[0x1E69E9820];
    v113 = 3221225472;
    v114 = __64__BGSystemTaskRequest_taskRequestWithDescriptor_withIdentifier___block_invoke;
    v115 = &unk_1E7B244B0;
    v116 = identifierCopy;
    v117 = buf;
    if (!xpc_array_apply(v10, &v112))
    {

      _Block_object_dispose(buf, 8);
LABEL_130:
      v90 = 0;
      goto LABEL_182;
    }

    [(BGSystemTaskRequest *)v30 setDependencies:*(*&buf[8] + 40), v112, v113, v114, v115];

    _Block_object_dispose(buf, 8);
  }

  producedResultIdentifiers = [(BGSystemTaskRequest *)v30 producedResultIdentifiers];
  if (producedResultIdentifiers)
  {
    producedResultIdentifiers2 = [(BGSystemTaskRequest *)v30 producedResultIdentifiers];
    v81 = [producedResultIdentifiers2 count] == 0;

    if (v81)
    {
      v86 = _log_0;
      if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
      {
        +[BGSystemTaskRequest taskRequestWithDescriptor:withIdentifier:];
      }

      goto LABEL_130;
    }
  }

  v31 = xpc_dictionary_get_dictionary(descriptorCopy, "Context");

  if (v31 && MEMORY[0x1B27477C0](v31) == v8)
  {
    v82 = _CFXPCCreateCFObjectFromXPCObject();
    [(BGSystemTaskRequest *)v30 setContext:v82];
  }

  v83 = xpc_dictionary_get_string(descriptorCopy, "RunOnMotionState");
  if (v83)
  {
    v84 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v83];
    if ([v84 isEqualToString:@"Stationary"])
    {
      v85 = 1;
    }

    else if ([v84 isEqualToString:@"Walking"])
    {
      v85 = 2;
    }

    else if ([v84 isEqualToString:@"Running"])
    {
      v85 = 3;
    }

    else if ([v84 isEqualToString:@"Cycling"])
    {
      v85 = 4;
    }

    else if ([v84 isEqualToString:@"Automotive"])
    {
      v85 = 5;
    }

    else if ([v84 isEqualToString:@"AutomotiveMoving"])
    {
      v85 = 6;
    }

    else
    {
      if (![v84 isEqualToString:@"AutomotiveStationary"])
      {
LABEL_140:

        goto LABEL_141;
      }

      v85 = 7;
    }

    [(BGSystemTaskRequest *)v30 setRunOnMotionState:v85];
    goto LABEL_140;
  }

LABEL_141:
  [(BGSystemTaskRequest *)v30 setPowerBudgeted:xpc_dictionary_get_BOOL(descriptorCopy, "PowerBudgeted")];
  [(BGSystemTaskRequest *)v30 setDataBudgeted:xpc_dictionary_get_BOOL(descriptorCopy, "DataBudgeted")];
  v91 = xpc_dictionary_get_string(descriptorCopy, "DataBudgetName");
  if (v91)
  {
    if (![(BGSystemTaskRequest *)v30 dataBudgeted])
    {
      v96 = _log_0;
      if (os_log_type_enabled(v96, OS_LOG_TYPE_ERROR))
      {
        [BGSystemTaskRequest taskRequestWithDescriptor:v30 withIdentifier:?];
      }

      goto LABEL_180;
    }

    v92 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v91];
    [(BGSystemTaskRequest *)v30 setDataBudgetName:v92];
  }

  [(BGSystemTaskRequest *)v30 setShouldWakeDevice:xpc_dictionary_get_BOOL(descriptorCopy, "ShouldWakeDevice")];
  [(BGSystemTaskRequest *)v30 setRequiresProtectionClass:4];
  v93 = xpc_dictionary_get_string(descriptorCopy, "RequiresProtectionClass");
  if (v93)
  {
    v94 = *v93;
    if (v94 > 0x42)
    {
      if (v94 == 67)
      {
        if (v93[1] == 88)
        {
          v95 = 3;
        }

        else
        {
          v95 = 4;
        }

        goto LABEL_159;
      }

      if (v94 == 68)
      {
        v95 = 5;
        goto LABEL_159;
      }
    }

    else
    {
      if (v94 == 65)
      {
        v95 = 1;
        goto LABEL_159;
      }

      if (v94 == 66)
      {
        v95 = 2;
LABEL_159:
        [(BGSystemTaskRequest *)v30 setRequiresProtectionClass:v95];
      }
    }
  }

  [(BGSystemTaskRequest *)v30 setOverrideRateLimiting:xpc_dictionary_get_BOOL(descriptorCopy, "OverrideRateLimiting")];
  [(BGSystemTaskRequest *)v30 setMagneticInterferenceSensitivity:xpc_dictionary_get_BOOL(descriptorCopy, "MagneticInterferenceSensitivity")];
  [(BGSystemTaskRequest *)v30 setMailFetch:xpc_dictionary_get_BOOL(descriptorCopy, "MailFetch")];
  [(BGSystemTaskRequest *)v30 setBypassPeakPower:xpc_dictionary_get_BOOL(descriptorCopy, "BypassPeakPower")];
  [(BGSystemTaskRequest *)v30 setBypassBatteryAging:xpc_dictionary_get_BOOL(descriptorCopy, "BypassBatteryAging")];
  [(BGSystemTaskRequest *)v30 setBacklogged:xpc_dictionary_get_BOOL(descriptorCopy, "Backlogged")];
  [(BGSystemTaskRequest *)v30 setRequiresMinimumBatteryLevel:xpc_dictionary_get_int64(descriptorCopy, "RequiresMinimumBatteryLevel")];
  [(BGSystemTaskRequest *)v30 setBlockRebootActivitiesForSU:xpc_dictionary_get_BOOL(descriptorCopy, "BlockRebootActivitiesForSU")];
  [(BGSystemTaskRequest *)v30 setUseStatisticalModelForTriggersRestart:xpc_dictionary_get_BOOL(descriptorCopy, "UseStatisticalModelForTriggersRestart")];
  [(BGSystemTaskRequest *)v30 requiresMinimumBatteryLevel];
  if ([(BGSystemTaskRequest *)v30 requiresMinimumBatteryLevel]>= 0x65)
  {
    [(BGSystemTaskRequest *)v30 setRequiresMinimumBatteryLevel:0];
  }

  [(BGSystemTaskRequest *)v30 setRequiresMinimumDataBudgetPercentage:xpc_dictionary_get_int64(descriptorCopy, "RequiresMinimumDataBudgetPercentage")];
  [(BGSystemTaskRequest *)v30 requiresMinimumDataBudgetPercentage];
  if ([(BGSystemTaskRequest *)v30 requiresMinimumDataBudgetPercentage]>= 0x65)
  {
    [(BGSystemTaskRequest *)v30 setRequiresMinimumDataBudgetPercentage:0];
  }

  v97 = xpc_dictionary_get_string(descriptorCopy, "DiskVolume");
  if (!v97)
  {
    goto LABEL_168;
  }

  v98 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v97];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v100 = [defaultManager fileExistsAtPath:v98 isDirectory:0];

  if (v100)
  {
    if ([(BGSystemTaskRequest *)v30 networkDownloadSize])
    {
      [(BGSystemTaskRequest *)v30 setDiskVolume:v98];

LABEL_168:
      v101 = xpc_dictionary_get_string(descriptorCopy, "TargetDevice");
      v102 = v101;
      if (v101)
      {
        if (!strncmp(v101, "TargetDeviceDefaultPaired", 0x19uLL))
        {
          v103 = 1;
        }

        else if (!strncmp(v102, "TargetDeviceAllPaired", 0x15uLL))
        {
          v103 = 2;
        }

        else if (!strncmp(v102, "TargetDeviceRemote", 0x12uLL))
        {
          v103 = 3;
        }

        else
        {
          v103 = 0;
        }

        [(BGSystemTaskRequest *)v30 setTargetDevice:v103];
      }

      v107 = xpc_dictionary_get_BOOL(descriptorCopy, "CommunicatesWithPairedDevice");
      [(BGSystemTaskRequest *)v30 setCommunicatesWithPairedDevice:v107];
      targetDevice = [(BGSystemTaskRequest *)v30 targetDevice];
      v109 = !v107;
      if (targetDevice)
      {
        v109 = 1;
      }

      if ((v109 & 1) == 0)
      {
        [(BGSystemTaskRequest *)v30 setTargetDevice:1];
      }

      v110 = xpc_dictionary_get_string(descriptorCopy, "RemoteDeviceIdentifier");
      if (v110)
      {
        v111 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v110];
        [(BGSystemTaskRequest *)v30 setRemoteDevice:v111];
      }

      [(BGSystemTaskRequest *)v30 setRequiresRemoteDeviceWake:xpc_dictionary_get_BOOL(descriptorCopy, "RequiresRemoteDeviceWake")];
      v90 = v30;
      goto LABEL_181;
    }

    v104 = _log_0;
    if (os_log_type_enabled(v104, OS_LOG_TYPE_ERROR))
    {
      [BGSystemTaskRequest taskRequestWithDescriptor:v30 withIdentifier:?];
    }
  }

  else
  {
    v104 = _log_0;
    if (os_log_type_enabled(v104, OS_LOG_TYPE_ERROR))
    {
      [BGSystemTaskRequest taskRequestWithDescriptor:v30 withIdentifier:?];
    }
  }

LABEL_180:
  v90 = 0;
LABEL_181:
  v10 = v31;
LABEL_182:

  v105 = *MEMORY[0x1E69E9840];

  return v90;
}

uint64_t __64__BGSystemTaskRequest_taskRequestWithDescriptor_withIdentifier___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (MEMORY[0x1B27477C0]() == MEMORY[0x1E69E9E80])
  {
    string = xpc_dictionary_get_string(v4, "DependencyType");
    if (!string)
    {
      v12 = _log_0;
      if (os_log_type_enabled(_log_0, OS_LOG_TYPE_ERROR))
      {
        __64__BGSystemTaskRequest_taskRequestWithDescriptor_withIdentifier___block_invoke_cold_4(a1, v12, v13, v14, v15, v16, v17, v18);
      }

      goto LABEL_4;
    }

    v9 = string;
    v10 = xpc_dictionary_get_string(v4, "DependencyIdentifier");
    if (!v10)
    {
      v19 = _log_0;
      if (os_log_type_enabled(_log_0, OS_LOG_TYPE_ERROR))
      {
        __64__BGSystemTaskRequest_taskRequestWithDescriptor_withIdentifier___block_invoke_cold_3(a1, v19, v20, v21, v22, v23, v24, v25);
      }

      goto LABEL_4;
    }

    v11 = v10;
    if (!strncmp(v9, "DependencyTypeResult", 0x14uLL))
    {
      int64 = xpc_dictionary_get_int64(v4, "ResultDependencyBatchSize");
      v27 = [BGSystemTaskResultDependency alloc];
      v28 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v11];
      v29 = [(BGSystemTaskResultDependency *)v27 initWithIdentifier:v28 batchSize:int64];
    }

    else
    {
      if (strncmp(v9, "DependencyTypeCompletion", 0x18uLL))
      {
        if (os_log_type_enabled(_log_0, OS_LOG_TYPE_ERROR))
        {
          __64__BGSystemTaskRequest_taskRequestWithDescriptor_withIdentifier___block_invoke_cold_2();
        }

        goto LABEL_4;
      }

      v30 = [BGSystemTaskCompletionDependency alloc];
      v28 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v11];
      v29 = [(BGSystemTaskCompletionDependency *)v30 initWithIdentifier:v28];
    }

    v31 = v29;

    [*(*(*(a1 + 40) + 8) + 40) addObject:v31];
    v6 = 1;
    goto LABEL_5;
  }

  v5 = _log_0;
  if (os_log_type_enabled(_log_0, OS_LOG_TYPE_ERROR))
  {
    __64__BGSystemTaskRequest_taskRequestWithDescriptor_withIdentifier___block_invoke_cold_1(a1, v4, v5);
  }

LABEL_4:
  v6 = 0;
LABEL_5:

  return v6;
}

+ (id)descriptorWithTaskRequest:(id)request
{
  v153 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if ([requestCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = requestCopy;
    [v5 interval];
    if (v6 < 300.0)
    {
      v41 = _log_0;
      if (os_log_type_enabled(_log_0, OS_LOG_TYPE_ERROR))
      {
        [(BGSystemTaskRequest *)v41 descriptorWithTaskRequest:v5];
      }

      goto LABEL_130;
    }

    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v8 = MEMORY[0x1E696AD98];
    [v5 interval];
    v10 = [v8 numberWithLong:v9];
    [v7 setObject:v10 forKeyedSubscript:@"Interval"];

    [v5 minDurationBetweenInstances];
    if (v11 != 0.0)
    {
      v12 = MEMORY[0x1E696AD98];
      [v5 minDurationBetweenInstances];
      v14 = [v12 numberWithLong:v13];
      [v7 setObject:v14 forKeyedSubscript:@"MinDurationBetweenInstances"];
    }

    v15 = @"RepeatingTask";
    goto LABEL_17;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v42 = _log_0;
    if (os_log_type_enabled(_log_0, OS_LOG_TYPE_ERROR))
    {
      [BGSystemTaskRequest descriptorWithTaskRequest:v42];
    }

    goto LABEL_130;
  }

  v16 = requestCopy;
  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if ([v16 isMemberOfClass:objc_opt_class()])
  {
    v17 = v16;
    v18 = objc_alloc_init(MEMORY[0x1E695DF90]);
    processingTaskIdentifiers = [v17 processingTaskIdentifiers];
    v20 = [processingTaskIdentifiers count];

    if (v20)
    {
      processingTaskIdentifiers2 = [v17 processingTaskIdentifiers];
      [v18 setObject:processingTaskIdentifiers2 forKeyedSubscript:@"ProcessingTaskIdentifiers"];
    }

    v22 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v17, "semanticVersion")}];
    [v18 setObject:v22 forKeyedSubscript:@"SemanticVersion"];

    v23 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v17, "reRun")}];
    [v18 setObject:v23 forKeyedSubscript:@"ReRun"];

    [v7 setObject:v18 forKeyedSubscript:@"FastPassTask"];
    v24 = v17;
  }

  [v16 scheduleAfter];
  if (v25 != 0.0)
  {
    v26 = MEMORY[0x1E696AD98];
    [v16 scheduleAfter];
    v28 = [v26 numberWithLong:v27];
    [v7 setObject:v28 forKeyedSubscript:@"ScheduleAfter"];
  }

  [v16 trySchedulingBefore];
  if (v29 != 0.0)
  {
    v30 = MEMORY[0x1E696AD98];
    [v16 trySchedulingBefore];
    v32 = [v30 numberWithLong:v31];
    [v7 setObject:v32 forKeyedSubscript:@"TrySchedulingBefore"];
  }

  if ([v7 count])
  {
    v15 = @"NonRepeatingTask";
LABEL_17:
    [v4 setObject:v7 forKeyedSubscript:v15];
  }

  if ([requestCopy isMemberOfClass:objc_opt_class()])
  {
    featureCodes = [requestCopy featureCodes];
    v34 = [featureCodes count];

    if (!v34)
    {
      v43 = _log_0;
      if (os_log_type_enabled(_log_0, OS_LOG_TYPE_ERROR))
      {
        [(BGSystemTaskRequest *)v43 descriptorWithTaskRequest:requestCopy];
      }

      goto LABEL_130;
    }
  }

  featureCodes2 = [requestCopy featureCodes];
  v36 = [featureCodes2 count];

  if (v36)
  {
    featureCodes3 = [requestCopy featureCodes];
    [v4 setObject:featureCodes3 forKeyedSubscript:@"FeatureCodes"];
  }

  if ([requestCopy postInstall])
  {
    v38 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(requestCopy, "postInstall")}];
    [v4 setObject:v38 forKeyedSubscript:@"PostInstall"];
  }

  priority = [requestCopy priority];
  if (priority > 1)
  {
    if (priority == 2)
    {
      v40 = @"Utility";
    }

    else
    {
      if (priority != 3)
      {
        goto LABEL_43;
      }

      v40 = @"UserInitiated";
    }

    goto LABEL_42;
  }

  v40 = @"Maintenance";
  if (!priority)
  {
    if ([requestCopy isMemberOfClass:objc_opt_class()])
    {
      v40 = @"Utility";
    }

    goto LABEL_42;
  }

  if (priority == 1)
  {
LABEL_42:
    [v4 setObject:v40 forKeyedSubscript:@"Priority"];
  }

LABEL_43:
  if ([requestCopy requiresExternalPowerIsSetByUser])
  {
    v44 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(requestCopy, "requiresExternalPower")}];
    [v4 setObject:v44 forKeyedSubscript:@"RequiresExternalPower"];
  }

  [requestCopy randomInitialDelay];
  if (v45 != 0.0)
  {
    v46 = MEMORY[0x1E696AD98];
    [requestCopy randomInitialDelay];
    v48 = [v46 numberWithLong:v47];
    [v4 setObject:v48 forKeyedSubscript:@"RandomInitialDelay"];
  }

  [requestCopy expectedDuration];
  if (v49 != 0.0)
  {
    v50 = MEMORY[0x1E696AD98];
    [requestCopy expectedDuration];
    v52 = [v50 numberWithLong:v51];
    [v4 setObject:v52 forKeyedSubscript:@"ExpectedDuration"];
  }

  relatedApplications = [requestCopy relatedApplications];

  if (relatedApplications)
  {
    relatedApplications2 = [requestCopy relatedApplications];
    [v4 setObject:relatedApplications2 forKeyedSubscript:@"RelatedApplications"];
  }

  involvedProcesses = [requestCopy involvedProcesses];

  if (involvedProcesses)
  {
    involvedProcesses2 = [requestCopy involvedProcesses];
    [v4 setObject:involvedProcesses2 forKeyedSubscript:@"InvolvedProcesses"];
  }

  if ([requestCopy runOnAppForeground])
  {
    relatedApplications3 = [requestCopy relatedApplications];

    if (relatedApplications3)
    {
      v58 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(requestCopy, "runOnAppForeground")}];
      [v4 setObject:v58 forKeyedSubscript:@"RunOnAppForeground"];
    }
  }

  if ([requestCopy requestsApplicationLaunch])
  {
    relatedApplications4 = [requestCopy relatedApplications];

    if (relatedApplications4)
    {
      v60 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(requestCopy, "requestsApplicationLaunch")}];
      [v4 setObject:v60 forKeyedSubscript:@"RequestsApplicationLaunch"];
    }
  }

  relatedApplications5 = [requestCopy relatedApplications];

  if (relatedApplications5)
  {
    v62 = [requestCopy applicationRelationship] - 1;
    if (v62 <= 3)
    {
      v63 = qword_1E7B244F0[v62];
      v64 = qword_1E7B24510[v62];
      v65 = qword_1E7B24530[v62];
      [v4 setObject:qword_1E7B244D0[v62] forKeyedSubscript:@"RunOnAppForeground"];
      [v4 setObject:v63 forKeyedSubscript:@"RequestsApplicationLaunch"];
      [v4 setObject:v64 forKeyedSubscript:@"RunWhenAppLaunchUnlikely"];
      [v4 setObject:v65 forKeyedSubscript:@"BeforeApplicationLaunch"];
    }
  }

  if ([requestCopy beforeApplicationLaunch])
  {
    relatedApplications6 = [requestCopy relatedApplications];

    if (relatedApplications6)
    {
      v67 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(requestCopy, "beforeApplicationLaunch")}];
      [v4 setObject:v67 forKeyedSubscript:@"BeforeApplicationLaunch"];
    }
  }

  if ([requestCopy requestsImmediateRuntime])
  {
    v68 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(requestCopy, "requestsImmediateRuntime")}];
    [v4 setObject:v68 forKeyedSubscript:@"RequestsImmediateRuntime"];
  }

  if ([requestCopy userRequestedBackupTask])
  {
    v69 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(requestCopy, "userRequestedBackupTask")}];
    [v4 setObject:v69 forKeyedSubscript:@"UserRequestedBackupTask"];
  }

  if ([requestCopy requiresBuddyComplete])
  {
    v70 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(requestCopy, "requiresBuddyComplete")}];
    [v4 setObject:v70 forKeyedSubscript:@"RequiresBuddyComplete"];
  }

  groupName = [requestCopy groupName];

  if (groupName)
  {
    groupName2 = [requestCopy groupName];
    [v4 setObject:groupName2 forKeyedSubscript:@"GroupName"];
  }

  if ([requestCopy groupConcurrencyLimit])
  {
    groupName3 = [requestCopy groupName];

    if (groupName3)
    {
      v74 = [MEMORY[0x1E696AD98] numberWithLong:{objc_msgSend(requestCopy, "groupConcurrencyLimit")}];
      [v4 setObject:v74 forKeyedSubscript:@"GroupConcurrencyLimit"];
    }
  }

  rateLimitConfigurationName = [requestCopy rateLimitConfigurationName];

  if (rateLimitConfigurationName)
  {
    rateLimitConfigurationName2 = [requestCopy rateLimitConfigurationName];
    [v4 setObject:rateLimitConfigurationName2 forKeyedSubscript:@"RateLimitConfigurationName"];
  }

  if ([requestCopy requiresSignificantUserInactivity])
  {
    v77 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(requestCopy, "requiresSignificantUserInactivity")}];
    [v4 setObject:v77 forKeyedSubscript:@"RequiresSignificantUserInactivity"];
  }

  if ([requestCopy requiresUserInactivity])
  {
    v78 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(requestCopy, "requiresUserInactivity")}];
    [v4 setObject:v78 forKeyedSubscript:@"RequiresUserInactivity"];
  }

  if ([requestCopy powerNap])
  {
    v79 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(requestCopy, "powerNap")}];
    [v4 setObject:v79 forKeyedSubscript:@"PowerNap"];
  }

  if ([requestCopy appRefresh])
  {
    v80 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(requestCopy, "appRefresh")}];
    [v4 setObject:v80 forKeyedSubscript:@"AppRefresh"];
  }

  if ([requestCopy preventsDeviceSleep])
  {
    v81 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(requestCopy, "preventsDeviceSleep")}];
    [v4 setObject:v81 forKeyedSubscript:@"PreventsDeviceSleep"];
  }

  if ([requestCopy resourceIntensive])
  {
    v82 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(requestCopy, "resourceIntensive")}];
    [v4 setObject:v82 forKeyedSubscript:@"ResourceIntensive"];
  }

  if ([requestCopy resources])
  {
    v83 = [MEMORY[0x1E696AD98] numberWithLong:{objc_msgSend(requestCopy, "resources")}];
    [v4 setObject:v83 forKeyedSubscript:@"Resources"];
  }

  else
  {
    [v4 setObject:&unk_1F29A4D00 forKeyedSubscript:@"Resources"];
  }

  if ([requestCopy requiresInexpensiveNetworkConnectivity])
  {
    v84 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(requestCopy, "requiresInexpensiveNetworkConnectivity")}];
    [v4 setObject:v84 forKeyedSubscript:@"RequiresInexpensiveNetworkConnectivity"];
  }

  if ([requestCopy requiresUnconstrainedNetworkConnectivity])
  {
    v85 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(requestCopy, "requiresUnconstrainedNetworkConnectivity")}];
    [v4 setObject:v85 forKeyedSubscript:@"RequiresUnconstrainedNetworkConnectivity"];
  }

  if (([requestCopy requiresInexpensiveNetworkConnectivity] & 1) != 0 || (objc_msgSend(requestCopy, "requiresUnconstrainedNetworkConnectivity") & 1) != 0 || objc_msgSend(requestCopy, "requiresNetworkConnectivity"))
  {
    v86 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(requestCopy, "requiresNetworkConnectivity")}];
    [v4 setObject:v86 forKeyedSubscript:@"RequiresNetworkConnectivity"];
  }

  if ([requestCopy networkDownloadSize])
  {
    v87 = [MEMORY[0x1E696AD98] numberWithLong:{objc_msgSend(requestCopy, "networkDownloadSize")}];
    [v4 setObject:v87 forKeyedSubscript:@"NetworkDownloadSize"];
  }

  if ([requestCopy networkUploadSize])
  {
    v88 = [MEMORY[0x1E696AD98] numberWithLong:{objc_msgSend(requestCopy, "networkUploadSize")}];
    [v4 setObject:v88 forKeyedSubscript:@"NetworkUploadSize"];
  }

  if ([requestCopy mayRebootDevice])
  {
    v89 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(requestCopy, "mayRebootDevice")}];
    [v4 setObject:v89 forKeyedSubscript:@"MayRebootDevice"];
  }

  producedResultIdentifiers = [requestCopy producedResultIdentifiers];
  if (producedResultIdentifiers)
  {
    v91 = producedResultIdentifiers;
    producedResultIdentifiers2 = [requestCopy producedResultIdentifiers];
    v93 = [producedResultIdentifiers2 count];

    if (v93)
    {
      producedResultIdentifiers3 = [requestCopy producedResultIdentifiers];
      allObjects = [producedResultIdentifiers3 allObjects];
      [v4 setObject:allObjects forKeyedSubscript:@"ProducedResultIdentifiers"];
    }
  }

  dependencies = [requestCopy dependencies];
  if (dependencies)
  {
    v97 = dependencies;
    dependencies2 = [requestCopy dependencies];
    v99 = [dependencies2 count];

    if (v99)
    {
      array = [MEMORY[0x1E695DF70] array];
      v148 = 0u;
      v149 = 0u;
      v150 = 0u;
      v151 = 0u;
      dependencies3 = [requestCopy dependencies];
      v102 = [dependencies3 countByEnumeratingWithState:&v148 objects:v152 count:16];
      if (v102)
      {
        v103 = v102;
        v104 = *v149;
        do
        {
          for (i = 0; i != v103; ++i)
          {
            if (*v149 != v104)
            {
              objc_enumerationMutation(dependencies3);
            }

            asDictionary = [*(*(&v148 + 1) + 8 * i) asDictionary];
            [array addObject:asDictionary];
          }

          v103 = [dependencies3 countByEnumeratingWithState:&v148 objects:v152 count:16];
        }

        while (v103);
      }

      [v4 setObject:array forKeyedSubscript:@"Dependencies"];
    }
  }

  context = [requestCopy context];

  if (context)
  {
    context2 = [requestCopy context];
    v109 = _CFXPCCreateXPCObjectFromCFObject();

    if (v109)
    {
      context3 = [requestCopy context];
      [v4 setObject:context3 forKeyedSubscript:@"Context"];

      goto LABEL_123;
    }

    v112 = _log_0;
    if (os_log_type_enabled(v112, OS_LOG_TYPE_ERROR))
    {
      [BGSystemTaskRequest descriptorWithTaskRequest:requestCopy];
    }

LABEL_130:
    v113 = 0;
    goto LABEL_185;
  }

LABEL_123:
  [v4 setObject:@"TargetDeviceLocal" forKeyedSubscript:@"TargetDevice"];
  if ([requestCopy targetDevice] == 1)
  {
    v111 = @"TargetDeviceDefaultPaired";
  }

  else if ([requestCopy targetDevice] == 2)
  {
    v111 = @"TargetDeviceAllPaired";
  }

  else
  {
    if ([requestCopy targetDevice] != 3)
    {
      goto LABEL_134;
    }

    v111 = @"TargetDeviceRemote";
  }

  [v4 setObject:v111 forKeyedSubscript:@"TargetDevice"];
LABEL_134:
  if ([requestCopy communicatesWithPairedDevice])
  {
    v114 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(requestCopy, "communicatesWithPairedDevice")}];
    [v4 setObject:v114 forKeyedSubscript:@"CommunicatesWithPairedDevice"];
  }

  remoteDevice = [requestCopy remoteDevice];
  [v4 setObject:remoteDevice forKeyedSubscript:@"RemoteDeviceIdentifier"];

  v116 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(requestCopy, "requiresRemoteDeviceWake")}];
  [v4 setObject:v116 forKeyedSubscript:@"RequiresRemoteDeviceWake"];

  if ([requestCopy runOnMotionState])
  {
    v117 = [requestCopy runOnMotionState] - 1;
    if (v117 <= 6)
    {
      [v4 setObject:off_1E7B24550[v117] forKeyedSubscript:@"RunOnMotionState"];
    }
  }

  if ([requestCopy powerBudgeted])
  {
    v118 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(requestCopy, "powerBudgeted")}];
    [v4 setObject:v118 forKeyedSubscript:@"PowerBudgeted"];
  }

  if ([requestCopy dataBudgeted])
  {
    v119 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(requestCopy, "dataBudgeted")}];
    [v4 setObject:v119 forKeyedSubscript:@"DataBudgeted"];

    dataBudgetName = [requestCopy dataBudgetName];

    if (dataBudgetName)
    {
      dataBudgetName2 = [requestCopy dataBudgetName];
      [v4 setObject:dataBudgetName2 forKeyedSubscript:@"DataBudgetName"];
    }
  }

  if ([requestCopy shouldWakeDevice])
  {
    v122 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(requestCopy, "shouldWakeDevice")}];
    [v4 setObject:v122 forKeyedSubscript:@"ShouldWakeDevice"];
  }

  [v4 setObject:@"C" forKeyedSubscript:@"RequiresProtectionClass"];
  if ([requestCopy requiresProtectionClass] == 1)
  {
    v123 = @"A";
LABEL_154:
    [v4 setObject:v123 forKeyedSubscript:@"RequiresProtectionClass"];
    goto LABEL_155;
  }

  if ([requestCopy requiresProtectionClass] == 2)
  {
    v123 = @"B";
    goto LABEL_154;
  }

  if ([requestCopy requiresProtectionClass] == 5)
  {
    v123 = @"D";
    goto LABEL_154;
  }

  if ([requestCopy requiresProtectionClass] == 3)
  {
    v123 = @"CX";
    goto LABEL_154;
  }

LABEL_155:
  networkEndpoint = [requestCopy networkEndpoint];

  if (networkEndpoint)
  {
    networkEndpoint2 = [requestCopy networkEndpoint];
    [v4 setObject:networkEndpoint2 forKeyedSubscript:@"NetworkEndpoint"];
  }

  networkParameters = [requestCopy networkParameters];

  if (networkParameters)
  {
    networkParameters2 = [requestCopy networkParameters];
    [v4 setObject:networkParameters2 forKeyedSubscript:@"NetworkParameters"];
  }

  if ([requestCopy overrideRateLimiting])
  {
    v128 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(requestCopy, "overrideRateLimiting")}];
    [v4 setObject:v128 forKeyedSubscript:@"OverrideRateLimiting"];
  }

  if ([requestCopy magneticInterferenceSensitivity])
  {
    v129 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(requestCopy, "magneticInterferenceSensitivity")}];
    [v4 setObject:v129 forKeyedSubscript:@"MagneticInterferenceSensitivity"];
  }

  if ([requestCopy mailFetch])
  {
    v130 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(requestCopy, "mailFetch")}];
    [v4 setObject:v130 forKeyedSubscript:@"MailFetch"];
  }

  if ([requestCopy bypassPeakPower])
  {
    v131 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(requestCopy, "bypassPeakPower")}];
    [v4 setObject:v131 forKeyedSubscript:@"BypassPeakPower"];
  }

  if ([requestCopy bypassBatteryAging])
  {
    v132 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(requestCopy, "bypassBatteryAging")}];
    [v4 setObject:v132 forKeyedSubscript:@"BypassBatteryAging"];
  }

  if ([requestCopy backlogged])
  {
    v133 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(requestCopy, "backlogged")}];
    [v4 setObject:v133 forKeyedSubscript:@"Backlogged"];
  }

  if ([requestCopy requiresMinimumBatteryLevel])
  {
    v134 = [MEMORY[0x1E696AD98] numberWithLong:{objc_msgSend(requestCopy, "requiresMinimumBatteryLevel")}];
    [v4 setObject:v134 forKeyedSubscript:@"RequiresMinimumBatteryLevel"];
  }

  if ([requestCopy requiresMinimumDataBudgetPercentage])
  {
    v135 = [MEMORY[0x1E696AD98] numberWithLong:{objc_msgSend(requestCopy, "requiresMinimumDataBudgetPercentage")}];
    [v4 setObject:v135 forKeyedSubscript:@"RequiresMinimumDataBudgetPercentage"];
  }

  if ([requestCopy blockRebootActivitiesForSU])
  {
    v136 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(requestCopy, "blockRebootActivitiesForSU")}];
    [v4 setObject:v136 forKeyedSubscript:@"BlockRebootActivitiesForSU"];
  }

  diskVolume = [requestCopy diskVolume];

  if (diskVolume)
  {
    diskVolume2 = [requestCopy diskVolume];
    [v4 setObject:diskVolume2 forKeyedSubscript:@"DiskVolume"];
  }

  v139 = _CFXPCCreateXPCObjectFromCFObject();
  if (v139)
  {
    networkEndpointPrimitive = [requestCopy networkEndpointPrimitive];

    if (networkEndpointPrimitive)
    {
      networkEndpointPrimitive2 = [requestCopy networkEndpointPrimitive];
      v142 = nw_endpoint_copy_dictionary();
      xpc_dictionary_set_value(v139, "NetworkEndpoint", v142);
    }

    networkParametersPrimitive = [requestCopy networkParametersPrimitive];

    if (networkParametersPrimitive)
    {
      networkParametersPrimitive2 = [requestCopy networkParametersPrimitive];
      v145 = nw_parameters_copy_dictionary();
      xpc_dictionary_set_value(v139, "NetworkParameters", v145);
    }
  }

  v113 = v139;

LABEL_185:
  v146 = *MEMORY[0x1E69E9840];

  return v113;
}

- (BGSystemTaskRequest)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = BGSystemTaskRequest;
  v6 = [(BGSystemTaskRequest *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_identifier, identifier);
  }

  return v7;
}

- (unint64_t)hash
{
  identifier = [(BGSystemTaskRequest *)self identifier];
  v3 = [identifier hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      v6 = [BGSystemTaskRequest descriptorWithTaskRequest:self];
      if (v6)
      {
        v7 = [BGSystemTaskRequest descriptorWithTaskRequest:v5];
        if (v7)
        {
          v8 = xpc_equal(v6, v7);
        }

        else
        {
          v8 = 0;
        }
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (void)setRelatedApplications:(id)applications
{
  v4 = MEMORY[0x1E695DFB8];
  v8 = [applications copy];
  v5 = [v4 orderedSetWithArray:v8];
  array = [v5 array];
  relatedApplications = self->_relatedApplications;
  self->_relatedApplications = array;
}

- (void)setInvolvedProcesses:(id)processes
{
  v4 = MEMORY[0x1E695DFB8];
  v8 = [processes copy];
  v5 = [v4 orderedSetWithArray:v8];
  array = [v5 array];
  involvedProcesses = self->_involvedProcesses;
  self->_involvedProcesses = array;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_opt_class() allocWithZone:zone];
  identifier = [(BGSystemTaskRequest *)self identifier];
  v7 = [v5 initWithIdentifier:identifier];

  [v7 setRequiresNetworkConnectivity:{-[BGSystemTaskRequest requiresNetworkConnectivity](self, "requiresNetworkConnectivity")}];
  [v7 setRequiresExternalPower:{-[BGSystemTaskRequest requiresExternalPower](self, "requiresExternalPower")}];
  [v7 setPriority:{-[BGSystemTaskRequest priority](self, "priority")}];
  [v7 setRequiresProtectionClass:{-[BGSystemTaskRequest requiresProtectionClass](self, "requiresProtectionClass")}];
  [v7 setPreventsDeviceSleep:{-[BGSystemTaskRequest preventsDeviceSleep](self, "preventsDeviceSleep")}];
  [(BGSystemTaskRequest *)self randomInitialDelay];
  [v7 setRandomInitialDelay:?];
  [v7 setPostInstall:{-[BGSystemTaskRequest postInstall](self, "postInstall")}];
  [v7 setRequiresInexpensiveNetworkConnectivity:{-[BGSystemTaskRequest requiresInexpensiveNetworkConnectivity](self, "requiresInexpensiveNetworkConnectivity")}];
  [v7 setRequiresUnconstrainedNetworkConnectivity:{-[BGSystemTaskRequest requiresUnconstrainedNetworkConnectivity](self, "requiresUnconstrainedNetworkConnectivity")}];
  [v7 setAppRefresh:{-[BGSystemTaskRequest appRefresh](self, "appRefresh")}];
  [v7 setRequiresSignificantUserInactivity:{-[BGSystemTaskRequest requiresSignificantUserInactivity](self, "requiresSignificantUserInactivity")}];
  [v7 setRequiresUserInactivity:{-[BGSystemTaskRequest requiresUserInactivity](self, "requiresUserInactivity")}];
  [v7 setPowerNap:{-[BGSystemTaskRequest powerNap](self, "powerNap")}];
  [v7 setResourceIntensive:{-[BGSystemTaskRequest resourceIntensive](self, "resourceIntensive")}];
  [v7 setResources:{-[BGSystemTaskRequest resources](self, "resources")}];
  [v7 setMayRebootDevice:{-[BGSystemTaskRequest mayRebootDevice](self, "mayRebootDevice")}];
  [v7 setUserRequestedBackupTask:{-[BGSystemTaskRequest userRequestedBackupTask](self, "userRequestedBackupTask")}];
  [v7 setNetworkDownloadSize:{-[BGSystemTaskRequest networkDownloadSize](self, "networkDownloadSize")}];
  [v7 setNetworkUploadSize:{-[BGSystemTaskRequest networkUploadSize](self, "networkUploadSize")}];
  [v7 setCommunicatesWithPairedDevice:{-[BGSystemTaskRequest communicatesWithPairedDevice](self, "communicatesWithPairedDevice")}];
  [v7 setShouldWakeDevice:{-[BGSystemTaskRequest shouldWakeDevice](self, "shouldWakeDevice")}];
  groupName = [(BGSystemTaskRequest *)self groupName];
  v9 = [groupName copyWithZone:zone];
  [v7 setGroupName:v9];

  [v7 setGroupConcurrencyLimit:{-[BGSystemTaskRequest groupConcurrencyLimit](self, "groupConcurrencyLimit")}];
  rateLimitConfigurationName = [(BGSystemTaskRequest *)self rateLimitConfigurationName];
  v11 = [rateLimitConfigurationName copyWithZone:zone];
  [v7 setRateLimitConfigurationName:v11];

  [(BGSystemTaskRequest *)self expectedDuration];
  [v7 setExpectedDuration:?];
  [v7 setPowerBudgeted:{-[BGSystemTaskRequest powerBudgeted](self, "powerBudgeted")}];
  [v7 setDataBudgeted:{-[BGSystemTaskRequest dataBudgeted](self, "dataBudgeted")}];
  dataBudgetName = [(BGSystemTaskRequest *)self dataBudgetName];
  [v7 setDataBudgetName:dataBudgetName];

  relatedApplications = [(BGSystemTaskRequest *)self relatedApplications];
  v14 = [relatedApplications copyWithZone:zone];
  [v7 setRelatedApplications:v14];

  involvedProcesses = [(BGSystemTaskRequest *)self involvedProcesses];
  v16 = [involvedProcesses copyWithZone:zone];
  [v7 setInvolvedProcesses:v16];

  [v7 setRunOnAppForeground:{-[BGSystemTaskRequest runOnAppForeground](self, "runOnAppForeground")}];
  [v7 setRequestsApplicationLaunch:{-[BGSystemTaskRequest requestsApplicationLaunch](self, "requestsApplicationLaunch")}];
  [v7 setApplicationRelationship:{-[BGSystemTaskRequest applicationRelationship](self, "applicationRelationship")}];
  [v7 setBeforeApplicationLaunch:{-[BGSystemTaskRequest beforeApplicationLaunch](self, "beforeApplicationLaunch")}];
  [v7 setRequestsImmediateRuntime:{-[BGSystemTaskRequest requestsImmediateRuntime](self, "requestsImmediateRuntime")}];
  [v7 setRequiresBuddyComplete:{-[BGSystemTaskRequest requiresBuddyComplete](self, "requiresBuddyComplete")}];
  [v7 setTargetDevice:{-[BGSystemTaskRequest targetDevice](self, "targetDevice")}];
  remoteDevice = [(BGSystemTaskRequest *)self remoteDevice];
  [v7 setRemoteDevice:remoteDevice];

  [v7 setRequiresRemoteDeviceWake:{-[BGSystemTaskRequest requiresRemoteDeviceWake](self, "requiresRemoteDeviceWake")}];
  networkEndpoint = [(BGSystemTaskRequest *)self networkEndpoint];
  v19 = [networkEndpoint copyWithZone:zone];
  [v7 setNetworkEndpoint:v19];

  networkParameters = [(BGSystemTaskRequest *)self networkParameters];
  v21 = [networkParameters copyWithZone:zone];
  [v7 setNetworkParameters:v21];

  [v7 setRunOnMotionState:{objc_msgSend(v7, "runOnMotionState")}];
  producedResultIdentifiers = [(BGSystemTaskRequest *)self producedResultIdentifiers];
  v23 = [producedResultIdentifiers copyWithZone:zone];
  [v7 setProducedResultIdentifiers:v23];

  dependencies = [(BGSystemTaskRequest *)self dependencies];
  v25 = [dependencies copyWithZone:zone];
  [v7 setDependencies:v25];

  context = [(BGSystemTaskRequest *)self context];
  v27 = [context copyWithZone:zone];
  [v7 setContext:v27];

  [v7 setOverrideRateLimiting:{-[BGSystemTaskRequest overrideRateLimiting](self, "overrideRateLimiting")}];
  [v7 setMagneticInterferenceSensitivity:{-[BGSystemTaskRequest magneticInterferenceSensitivity](self, "magneticInterferenceSensitivity")}];
  [v7 setMailFetch:{-[BGSystemTaskRequest mailFetch](self, "mailFetch")}];
  [v7 setBypassBatteryAging:{-[BGSystemTaskRequest bypassBatteryAging](self, "bypassBatteryAging")}];
  [v7 setBypassPeakPower:{-[BGSystemTaskRequest bypassPeakPower](self, "bypassPeakPower")}];
  [v7 setBacklogged:{-[BGSystemTaskRequest backlogged](self, "backlogged")}];
  [v7 setRequiresMinimumBatteryLevel:{-[BGSystemTaskRequest requiresMinimumBatteryLevel](self, "requiresMinimumBatteryLevel")}];
  [v7 setRequiresMinimumDataBudgetPercentage:{-[BGSystemTaskRequest requiresMinimumDataBudgetPercentage](self, "requiresMinimumDataBudgetPercentage")}];
  [v7 setBlockRebootActivitiesForSU:{-[BGSystemTaskRequest blockRebootActivitiesForSU](self, "blockRebootActivitiesForSU")}];
  [v7 setUseStatisticalModelForTriggersRestart:{-[BGSystemTaskRequest useStatisticalModelForTriggersRestart](self, "useStatisticalModelForTriggersRestart")}];
  featureCodes = [(BGSystemTaskRequest *)self featureCodes];
  v29 = [featureCodes copyWithZone:zone];
  [v7 setFeatureCodes:v29];

  diskVolume = [(BGSystemTaskRequest *)self diskVolume];
  [v7 setDiskVolume:diskVolume];

  [v7 setRequiresExternalPowerIsSetByUser:{-[BGSystemTaskRequest requiresExternalPowerIsSetByUser](self, "requiresExternalPowerIsSetByUser")}];
  networkEndpointPrimitive = [(BGSystemTaskRequest *)self networkEndpointPrimitive];
  [v7 setNetworkEndpointPrimitive:networkEndpointPrimitive];

  networkParametersPrimitive = [(BGSystemTaskRequest *)self networkParametersPrimitive];
  [v7 setNetworkParametersPrimitive:networkParametersPrimitive];

  return v7;
}

+ (void)taskRequestWithDescriptor:withIdentifier:.cold.1()
{
  _os_assert_log();
  _os_crash();
  __break(1u);
}

+ (void)taskRequestWithDescriptor:withIdentifier:.cold.2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3(&dword_1B236A000, v0, v1, "%{public}@: Feature codes, if present, must have entries", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

+ (void)taskRequestWithDescriptor:(uint64_t)a1 withIdentifier:(uint64_t)a2 .cold.3(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a2];
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x20u);

  v7 = *MEMORY[0x1E69E9840];
}

+ (void)taskRequestWithDescriptor:(void *)a1 withIdentifier:(void *)a2 .cold.4(void *a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [a2 identifier];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0xCu);

  v10 = *MEMORY[0x1E69E9840];
}

+ (void)taskRequestWithDescriptor:(void *)a1 withIdentifier:(void *)a2 .cold.5(void *a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [a2 identifier];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0xCu);

  v10 = *MEMORY[0x1E69E9840];
}

+ (void)taskRequestWithDescriptor:(void *)a1 withIdentifier:(void *)a2 .cold.6(void *a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [a2 identifier];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0xCu);

  v10 = *MEMORY[0x1E69E9840];
}

+ (void)taskRequestWithDescriptor:(void *)a1 withIdentifier:(void *)a2 .cold.7(void *a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [a2 identifier];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0xCu);

  v10 = *MEMORY[0x1E69E9840];
}

+ (void)taskRequestWithDescriptor:withIdentifier:.cold.8()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3(&dword_1B236A000, v0, v1, "%{public}@: Non-consuming producer activities are not allowed to be submitted via plists", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

+ (void)taskRequestWithDescriptor:(void *)a1 withIdentifier:.cold.9(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 identifier];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

+ (void)taskRequestWithDescriptor:(void *)a1 withIdentifier:.cold.10(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 identifier];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

+ (void)taskRequestWithDescriptor:(void *)a1 withIdentifier:.cold.11(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 identifier];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

+ (void)taskRequestWithDescriptor:withIdentifier:.cold.12()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3(&dword_1B236A000, v0, v1, "%{public}@: Feature codes are mandatory for FastPass", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

+ (void)taskRequestWithDescriptor:withIdentifier:.cold.13()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3(&dword_1B236A000, v0, v1, "%{public}@: Could not form task request", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __64__BGSystemTaskRequest_taskRequestWithDescriptor_withIdentifier___block_invoke_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v4 = 138543618;
  *&v4[4] = *(a1 + 32);
  *&v4[12] = 2114;
  *&v4[14] = a2;
  OUTLINED_FUNCTION_3_0(&dword_1B236A000, a2, a3, "%{public}@: %{public}@ is an invalid dependency form, must be a dictionary", *v4, *&v4[8], *&v4[16], *MEMORY[0x1E69E9840]);
  v3 = *MEMORY[0x1E69E9840];
}

void __64__BGSystemTaskRequest_taskRequestWithDescriptor_withIdentifier___block_invoke_cold_2()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3_0(&dword_1B236A000, v0, v1, "%{public}@: Dependency type is of invalid form: %s");
  v2 = *MEMORY[0x1E69E9840];
}

void __64__BGSystemTaskRequest_taskRequestWithDescriptor_withIdentifier___block_invoke_cold_3(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = HIDWORD(*(a1 + 32));
  OUTLINED_FUNCTION_3(&dword_1B236A000, a2, a3, "%{public}@: Dependencies require a valid identifier", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void __64__BGSystemTaskRequest_taskRequestWithDescriptor_withIdentifier___block_invoke_cold_4(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = HIDWORD(*(a1 + 32));
  OUTLINED_FUNCTION_3(&dword_1B236A000, a2, a3, "%{public}@: Dependencies require a valid object type", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

+ (void)descriptorWithTaskRequest:(void *)a1 .cold.2(void *a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [a2 identifier];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4_0(&dword_1B236A000, v5, v6, "%{public}@: Repeating activites must have an interval of more than 300 sec", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x1E69E9840];
}

+ (void)descriptorWithTaskRequest:(void *)a1 .cold.3(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 identifier];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

+ (void)descriptorWithTaskRequest:(void *)a1 .cold.4(void *a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [a2 identifier];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4_0(&dword_1B236A000, v5, v6, "%{public}@: Feature codes are mandatory for FastPass", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x1E69E9840];
}

@end