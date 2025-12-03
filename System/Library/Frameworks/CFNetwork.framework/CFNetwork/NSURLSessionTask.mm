@interface NSURLSessionTask
- (NSString)_description;
- (NSString)_loggableDescription;
- (NSURL)currentRequest_URL;
- (NSURLSession)session;
- (OS_dispatch_queue)workQueue;
- (int64_t)computeAdjustedPoolPriority;
- (void)resume;
@end

@implementation NSURLSessionTask

- (NSURLSession)session
{
  _taskGroup = [(NSURLSessionTask *)self _taskGroup];

  return [(__NSURLSessionTaskGroupForConfiguration *)_taskGroup _groupSession];
}

- (OS_dispatch_queue)workQueue
{
  result = [(NSURLSessionTask *)self session];
  if (result)
  {
    return *(result + 15);
  }

  return result;
}

- (int64_t)computeAdjustedPoolPriority
{
  _priorityValue = [(NSURLSessionTask *)self _priorityValue];
  [(NSURLSessionTask *)self _loadingPriorityValue];
  return (_priorityValue + (0.5 - v4) * 50.0);
}

- (NSString)_description
{
  session = [(NSURLSessionTask *)self session];
  if (session)
  {
    v4 = @"Local";
    if (CFEqual([(NSURLSessionConfiguration *)session->_local_immutable_configuration_ivar disposition], &unk_1EE5B0C00))
    {
      session2 = [(NSURLSessionTask *)self session];
      if (session2)
      {
        if (![(NSURLSessionConfiguration *)session2->_local_immutable_configuration_ivar _isProxySession])
        {
          v4 = @"Background";
        }
      }

      else
      {
        v4 = @"Background";
      }
    }
  }

  else
  {
    v4 = @"Local";
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = @"Upload";
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = @"WebSocket";
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = @"Data";
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v6 = @"Download";
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v6 = @"Stream";
          }

          else
          {
            v6 = &stru_1F0C499B8;
            if (objc_opt_class())
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v6 = @"AVAssetDownload";
              }

              else
              {
                gotLoadHelper_x8__OBJC_CLASS___AVAggregateAssetDownloadTask(v7);
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v6 = @"AVAggregateAssetDownload";
                }
              }
            }
          }
        }
      }
    }
  }

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@%@", v4, v6, -[NSURLSessionTask _loggableDescription](self, "_loggableDescription")];
}

- (NSString)_loggableDescription
{
  v9 = *MEMORY[0x1E69E9840];
  objc_sync_enter(self);
  if (!self->_loggableDescription)
  {
    session = [(NSURLSessionTask *)self session];
    if (session && [(NSURLSessionConfiguration *)session->_local_immutable_configuration_ivar _isProxySession])
    {
      v7 = 0;
      v8 = 0;
      strcpy(v6, "PDTask <00000000-0000-0000-0000-000000000000>.<0>");
      [(NSURLSessionTask *)self fillTaskDescriptionWithTaskIdentifier:[(NSURLSessionTask *)self _uniqueIdentifier] uniqueIdentifier:&v6[7] FixedTemplate:?];
      v4 = [MEMORY[0x1E696AEC0] stringWithCString:v6 encoding:1];
    }

    else
    {
      strcpy(v6, "Task <00000000-0000-0000-0000-000000000000>.<0>");
      [(NSURLSessionTask *)self fillTaskDescriptionWithTaskIdentifier:[(NSURLSessionTask *)self _uniqueIdentifier] uniqueIdentifier:&v6[5] FixedTemplate:?];
      v4 = [MEMORY[0x1E696AEC0] stringWithCString:v6 encoding:1];
    }

    self->_loggableDescription = v4;
  }

  objc_sync_exit(self);
  return self->_loggableDescription;
}

void __26__NSURLSessionTask_resume__block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) _metrics];
  if (v3)
  {
    v4 = *(v3 + 56);
  }

  [*(a1 + 32) _onqueue_resume];

  objc_autoreleasePoolPop(v2);
}

- (NSURL)currentRequest_URL
{
  currentRequest = [(NSURLSessionTask *)self currentRequest];

  return [(NSURLRequest *)currentRequest URL];
}

- (void)resume
{
  v79[2] = *MEMORY[0x1E69E9840];
  if ([(NSURLSessionTask *)self state]> NSURLSessionTaskStateSuspended || ![(NSURLSessionTask *)self workQueue])
  {
    return;
  }

  [(NSURLSessionTask *)self setState:0];
  [(NSURLSessionTask *)self set_qos:qos_class_self()];
  [(NSURLSessionTask *)self set_voucher:voucher_copy()];
  v77[0] = 0;
  v77[1] = 0;
  if ([(NSURLSessionTask *)self _nw_activity])
  {
    [(NSURLSessionTask *)self _nw_activity];
    nw_activity_activate();
    [(NSURLSessionTask *)self _nw_activity];
    nw_activity_get_token();
  }

  if (CFNLog::onceToken != -1)
  {
    dispatch_once(&CFNLog::onceToken, &__block_literal_global_2_5525);
  }

  v3 = CFNLog::logger;
  if (os_log_type_enabled(CFNLog::logger, OS_LOG_TYPE_DEFAULT))
  {
    _loggableDescription = [(NSURLSessionTask *)self _loggableDescription];
    [(NSURLSessionTask *)self _timeoutInterval];
    v6 = v5;
    [(NSURLSessionTask *)self _timeoutIntervalForResource];
    *buf = 138544898;
    *v70 = _loggableDescription;
    *&v70[8] = 2048;
    *&v70[10] = v6;
    *&v70[18] = 2048;
    *v71 = v7;
    *&v71[8] = 1024;
    *v72 = [(NSURLSessionTask *)self _qos];
    *&v72[4] = 2112;
    *v73 = [(NSURLSessionTask *)self _voucher];
    *&v73[8] = 1042;
    v74 = 16;
    v75 = 2098;
    v76 = v77;
    _os_log_impl(&dword_197BA3000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ resuming, timeouts(%.1f, %.1f) qos(0x%x) voucher(%@) activity(%{public,uuid_t}.16P)", buf, 0x40u);
  }

  selfCopy = self;
  _effectiveConfiguration = [(NSURLSessionTask *)selfCopy _effectiveConfiguration];
  v10 = HARLoggingEnabled([_effectiveConfiguration _pidForHAR]);

  if (!v10 || [(NSURLSessionTask *)selfCopy _isAVAssetTask])
  {
    goto LABEL_32;
  }

  v11 = instrumentsTaskLog();
  _uniqueIdentifier = [(NSURLSessionTask *)selfCopy _uniqueIdentifier];
  spid = os_signpost_id_make_with_pointer(v11, _uniqueIdentifier);

  v13 = selfCopy;
  session = [(NSURLSessionTask *)v13 session];
  v15 = session;
  if (session)
  {
    v16 = *(session + 112);
  }

  else
  {
    v16 = 0;
  }

  v17 = v16;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[NSURLSessionTask taskIdentifier](v13, "taskIdentifier")}];
  [dictionary setObject:v19 forKeyedSubscript:@"taskIdentifier"];

  taskDescription = [(NSURLSessionTask *)v13 taskDescription];
  [dictionary setObject:taskDescription forKeyedSubscript:@"taskDescription"];

  originalRequest = [(NSURLSessionTask *)v13 originalRequest];
  v22 = [originalRequest URL];
  absoluteString = [v22 absoluteString];
  [dictionary setObject:absoluteString forKeyedSubscript:@"url"];

  originalRequest2 = [(NSURLSessionTask *)v13 originalRequest];
  hTTPMethod = [originalRequest2 HTTPMethod];
  [dictionary setObject:hTTPMethod forKeyedSubscript:@"method"];

  v26 = MEMORY[0x1E696AD98];
  originalRequest3 = [(NSURLSessionTask *)v13 originalRequest];
  v28 = [v26 numberWithUnsignedInteger:{objc_msgSend(originalRequest3, "attribution")}];
  [dictionary setObject:v28 forKeyedSubscript:@"attribution"];

  if (v15)
  {
    v29 = v15[68];
  }

  else
  {
    v29 = 0;
  }

  v30 = [MEMORY[0x1E696AD98] numberWithBool:{v29 & 1, spid}];
  [dictionary setObject:v30 forKeyedSubscript:@"isSharedSession"];

  sessionDescription = [v15 sessionDescription];
  [dictionary setObject:sessionDescription forKeyedSubscript:@"sessionDescription"];

  v32 = MEMORY[0x1E696AD98];
  disposition = [v17 disposition];
  v34 = [v32 numberWithBool:{objc_msgSend(disposition, "isEqualToString:", 0x1EE5B0CA8)}];
  [dictionary setObject:v34 forKeyedSubscript:@"isEphemeralSession"];

  identifier = [v17 identifier];
  [dictionary setObject:identifier forKeyedSubscript:@"backgroundIdentifier"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v36 = @"Data";
LABEL_25:
    [dictionary setObject:v36 forKeyedSubscript:@"taskType"];
    goto LABEL_26;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v36 = @"Upload";
    goto LABEL_25;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v36 = @"Download";
    goto LABEL_25;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v36 = @"Stream";
    goto LABEL_25;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v36 = @"WebSocket";
    goto LABEL_25;
  }

LABEL_26:
  _effectiveConfiguration2 = [(NSURLSessionTask *)v13 _effectiveConfiguration];
  _sourceApplicationBundleIdentifier = [_effectiveConfiguration2 _sourceApplicationBundleIdentifier];
  [dictionary setObject:_sourceApplicationBundleIdentifier forKeyedSubscript:@"sourceApplicationBundleIdentifier"];

  v39 = [MEMORY[0x1E696ACB0] dataWithJSONObject:dictionary options:0 error:0];
  v79[0] = 0;
  v79[1] = 0;
  _uniqueIdentifier2 = [(NSURLSessionTask *)v13 _uniqueIdentifier];
  [_uniqueIdentifier2 getUUIDBytes:v79];

  v78[0] = 0;
  v78[1] = 0;
  session2 = [(NSURLSessionTask *)v13 session];
  v42 = session2;
  if (session2)
  {
    v43 = *(session2 + 128);
  }

  else
  {
    v43 = 0;
  }

  v44 = v43;
  [v44 getUUIDBytes:v78];

  v45 = instrumentsTaskLog();
  v46 = v45;
  if (spida - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v45))
  {
    v47 = [v39 length];
    v48 = v39;
    bytes = [v39 bytes];
    *buf = 68290050;
    *v70 = 16;
    *&v70[4] = 2098;
    *&v70[6] = v79;
    *&v70[14] = 1042;
    *&v70[16] = 16;
    *v71 = 2098;
    *&v71[2] = v78;
    *v72 = 1040;
    *&v72[2] = v47;
    *v73 = 2082;
    *&v73[2] = bytes;
    _os_signpost_emit_with_name_impl(&dword_197BA3000, v46, OS_SIGNPOST_EVENT, spida, "Task Resume", "Task UUID: %{public,uuid_t}.16P, Session UUID: %{public,uuid_t}.16P, Additional Info: %{public,xcode:data}.*s", buf, 0x32u);
  }

LABEL_32:
  objc_sync_enter(selfCopy);
  progress = selfCopy->_progress;
  if (progress && ![(NSProgress *)progress isCancelled]&& [(NSProgress *)selfCopy->_progress isPaused])
  {
    [(NSProgress *)selfCopy->_progress resume];
  }

  if (selfCopy->_seenFirstResume)
  {
    goto LABEL_74;
  }

  selfCopy->_seenFirstResume = 1;
  session3 = [(NSURLSessionTask *)selfCopy session];
  if (session3 && CFEqual([*(session3 + 112) disposition], &unk_1EE5B0C00) || (-[NSURLSessionTask set_private_nw_activity:](selfCopy, "set_private_nw_activity:", -[NSURLSessionTask _nw_activity](selfCopy, "_nw_activity")), !-[NSURLSessionTask _nw_activity](selfCopy, "_nw_activity")))
  {
    [(NSURLSessionTask *)selfCopy set_private_nw_activity:nw_activity_create()];
  }

  if ([(NSURLSessionTask *)selfCopy _nw_activity])
  {
    session4 = [(NSURLSessionTask *)selfCopy session];
    if (session4)
    {
      if (CFEqual([*(session4 + 112) disposition], &unk_1EE5B0C00))
      {
        [(NSURLSessionTask *)selfCopy _private_nw_activity];
        [(NSURLSessionTask *)selfCopy _nw_activity];
        nw_activity_set_parent_activity();
      }
    }
  }

  if ([(NSURLSessionTask *)selfCopy _private_nw_activity])
  {
    [(NSURLSessionTask *)selfCopy _private_nw_activity];
    nw_activity_activate();
    [(NSURLSessionTask *)selfCopy _private_nw_activity];
    is_selected_for_reporting = nw_activity_is_selected_for_reporting();
    if (CFNLog::onceToken != -1)
    {
      dispatch_once(&CFNLog::onceToken, &__block_literal_global_2_5525);
    }

    v54 = CFNLog::logger;
    v55 = os_log_type_enabled(CFNLog::logger, OS_LOG_TYPE_DEBUG);
    if (!is_selected_for_reporting)
    {
      if (v55)
      {
        _private_nw_activity = [(NSURLSessionTask *)selfCopy _private_nw_activity];
        _loggableDescription2 = [(NSURLSessionTask *)selfCopy _loggableDescription];
        *buf = 138543618;
        *v70 = _private_nw_activity;
        *&v70[8] = 2114;
        *&v70[10] = _loggableDescription2;
        _os_log_debug_impl(&dword_197BA3000, v54, OS_LOG_TYPE_DEBUG, "[Telemetry]: Activity %{public}@ on %{public}@ was not selected for reporting", buf, 0x16u);
      }

      goto LABEL_67;
    }

    if (v55)
    {
      _private_nw_activity2 = [(NSURLSessionTask *)selfCopy _private_nw_activity];
      _loggableDescription3 = [(NSURLSessionTask *)selfCopy _loggableDescription];
      *buf = 138543618;
      *v70 = _private_nw_activity2;
      *&v70[8] = 2114;
      *&v70[10] = _loggableDescription3;
      _os_log_debug_impl(&dword_197BA3000, v54, OS_LOG_TYPE_DEBUG, "[Telemetry]: Activity %{public}@ on %{public}@ was selected for reporting", buf, 0x16u);
    }

    if ([(NSURLSessionTask *)selfCopy _DuetActivityProperties])
    {
      if ([-[NSDictionary objectForKeyedSubscript:](-[NSURLSessionTask _legacySocketStreamProperties](selfCopy "_legacySocketStreamProperties")])
      {
        _metrics = [(NSURLSessionTask *)selfCopy _metrics];
        if (_metrics)
        {
          v57 = 5;
LABEL_66:
          *(_metrics + 13) = v57;
        }
      }

      else
      {
        if ([(NSURLSessionConfiguration *)selfCopy->_effectiveConfiguration isDiscretionary])
        {
          if ([(NSURLSessionConfiguration *)selfCopy->_effectiveConfiguration _clientIsNotExplicitlyDiscretionary])
          {
            v60 = 3;
          }

          else
          {
            v60 = 2;
          }

          _metrics2 = [(NSURLSessionTask *)selfCopy _metrics];
          if (_metrics2)
          {
            *(_metrics2 + 13) = v60;
          }

          goto LABEL_67;
        }

        _metrics = [(NSURLSessionTask *)selfCopy _metrics];
        if (_metrics)
        {
          v57 = 4;
          goto LABEL_66;
        }
      }
    }
  }

LABEL_67:
  if (![(NSURLSessionTask *)selfCopy _isAVAssetTask]&& [(NSURLSessionTask *)selfCopy originalRequest]&& ![(NSURLSessionTask *)selfCopy currentRequest_URL])
  {
    if (__CFNAPIMisuseFaultLogHandle::onceToken != -1)
    {
      dispatch_once(&__CFNAPIMisuseFaultLogHandle::onceToken, &__block_literal_global_10_5537);
    }

    v62 = __CFNAPIMisuseFaultLogHandle::logger;
    if (os_log_type_enabled(__CFNAPIMisuseFaultLogHandle::logger, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_197BA3000, v62, OS_LOG_TYPE_FAULT, "API MISUSE: Resuming an NSURLSessionTask with nil URL.", buf, 2u);
    }
  }

LABEL_74:
  objc_sync_exit(selfCopy);
  if (nw_settings_get_signposts_enabled())
  {
    kdebug_trace();
  }

  workQueue = [(NSURLSessionTask *)selfCopy workQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __26__NSURLSessionTask_resume__block_invoke;
  block[3] = &unk_1E74D6B30;
  block[4] = selfCopy;
  dispatch_async(workQueue, block);
}

@end