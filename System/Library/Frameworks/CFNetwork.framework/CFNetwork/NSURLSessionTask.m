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
  v2 = [(NSURLSessionTask *)self _taskGroup];

  return [(__NSURLSessionTaskGroupForConfiguration *)v2 _groupSession];
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
  v3 = [(NSURLSessionTask *)self _priorityValue];
  [(NSURLSessionTask *)self _loadingPriorityValue];
  return (v3 + (0.5 - v4) * 50.0);
}

- (NSString)_description
{
  v3 = [(NSURLSessionTask *)self session];
  if (v3)
  {
    v4 = @"Local";
    if (CFEqual([(NSURLSessionConfiguration *)v3->_local_immutable_configuration_ivar disposition], &unk_1EE5B0C00))
    {
      v5 = [(NSURLSessionTask *)self session];
      if (v5)
      {
        if (![(NSURLSessionConfiguration *)v5->_local_immutable_configuration_ivar _isProxySession])
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
    v3 = [(NSURLSessionTask *)self session];
    if (v3 && [(NSURLSessionConfiguration *)v3->_local_immutable_configuration_ivar _isProxySession])
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
  v2 = [(NSURLSessionTask *)self currentRequest];

  return [(NSURLRequest *)v2 URL];
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
    v4 = [(NSURLSessionTask *)self _loggableDescription];
    [(NSURLSessionTask *)self _timeoutInterval];
    v6 = v5;
    [(NSURLSessionTask *)self _timeoutIntervalForResource];
    *buf = 138544898;
    *v70 = v4;
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

  v8 = self;
  v9 = [(NSURLSessionTask *)v8 _effectiveConfiguration];
  v10 = HARLoggingEnabled([v9 _pidForHAR]);

  if (!v10 || [(NSURLSessionTask *)v8 _isAVAssetTask])
  {
    goto LABEL_32;
  }

  v11 = instrumentsTaskLog();
  v12 = [(NSURLSessionTask *)v8 _uniqueIdentifier];
  spid = os_signpost_id_make_with_pointer(v11, v12);

  v13 = v8;
  v14 = [(NSURLSessionTask *)v13 session];
  v15 = v14;
  if (v14)
  {
    v16 = *(v14 + 112);
  }

  else
  {
    v16 = 0;
  }

  v17 = v16;
  v18 = [MEMORY[0x1E695DF90] dictionary];
  v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[NSURLSessionTask taskIdentifier](v13, "taskIdentifier")}];
  [v18 setObject:v19 forKeyedSubscript:@"taskIdentifier"];

  v20 = [(NSURLSessionTask *)v13 taskDescription];
  [v18 setObject:v20 forKeyedSubscript:@"taskDescription"];

  v21 = [(NSURLSessionTask *)v13 originalRequest];
  v22 = [v21 URL];
  v23 = [v22 absoluteString];
  [v18 setObject:v23 forKeyedSubscript:@"url"];

  v24 = [(NSURLSessionTask *)v13 originalRequest];
  v25 = [v24 HTTPMethod];
  [v18 setObject:v25 forKeyedSubscript:@"method"];

  v26 = MEMORY[0x1E696AD98];
  v27 = [(NSURLSessionTask *)v13 originalRequest];
  v28 = [v26 numberWithUnsignedInteger:{objc_msgSend(v27, "attribution")}];
  [v18 setObject:v28 forKeyedSubscript:@"attribution"];

  if (v15)
  {
    v29 = v15[68];
  }

  else
  {
    v29 = 0;
  }

  v30 = [MEMORY[0x1E696AD98] numberWithBool:{v29 & 1, spid}];
  [v18 setObject:v30 forKeyedSubscript:@"isSharedSession"];

  v31 = [v15 sessionDescription];
  [v18 setObject:v31 forKeyedSubscript:@"sessionDescription"];

  v32 = MEMORY[0x1E696AD98];
  v33 = [v17 disposition];
  v34 = [v32 numberWithBool:{objc_msgSend(v33, "isEqualToString:", 0x1EE5B0CA8)}];
  [v18 setObject:v34 forKeyedSubscript:@"isEphemeralSession"];

  v35 = [v17 identifier];
  [v18 setObject:v35 forKeyedSubscript:@"backgroundIdentifier"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v36 = @"Data";
LABEL_25:
    [v18 setObject:v36 forKeyedSubscript:@"taskType"];
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
  v37 = [(NSURLSessionTask *)v13 _effectiveConfiguration];
  v38 = [v37 _sourceApplicationBundleIdentifier];
  [v18 setObject:v38 forKeyedSubscript:@"sourceApplicationBundleIdentifier"];

  v39 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v18 options:0 error:0];
  v79[0] = 0;
  v79[1] = 0;
  v40 = [(NSURLSessionTask *)v13 _uniqueIdentifier];
  [v40 getUUIDBytes:v79];

  v78[0] = 0;
  v78[1] = 0;
  v41 = [(NSURLSessionTask *)v13 session];
  v42 = v41;
  if (v41)
  {
    v43 = *(v41 + 128);
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
    v49 = [v39 bytes];
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
    *&v73[2] = v49;
    _os_signpost_emit_with_name_impl(&dword_197BA3000, v46, OS_SIGNPOST_EVENT, spida, "Task Resume", "Task UUID: %{public,uuid_t}.16P, Session UUID: %{public,uuid_t}.16P, Additional Info: %{public,xcode:data}.*s", buf, 0x32u);
  }

LABEL_32:
  objc_sync_enter(v8);
  progress = v8->_progress;
  if (progress && ![(NSProgress *)progress isCancelled]&& [(NSProgress *)v8->_progress isPaused])
  {
    [(NSProgress *)v8->_progress resume];
  }

  if (v8->_seenFirstResume)
  {
    goto LABEL_74;
  }

  v8->_seenFirstResume = 1;
  v51 = [(NSURLSessionTask *)v8 session];
  if (v51 && CFEqual([*(v51 + 112) disposition], &unk_1EE5B0C00) || (-[NSURLSessionTask set_private_nw_activity:](v8, "set_private_nw_activity:", -[NSURLSessionTask _nw_activity](v8, "_nw_activity")), !-[NSURLSessionTask _nw_activity](v8, "_nw_activity")))
  {
    [(NSURLSessionTask *)v8 set_private_nw_activity:nw_activity_create()];
  }

  if ([(NSURLSessionTask *)v8 _nw_activity])
  {
    v52 = [(NSURLSessionTask *)v8 session];
    if (v52)
    {
      if (CFEqual([*(v52 + 112) disposition], &unk_1EE5B0C00))
      {
        [(NSURLSessionTask *)v8 _private_nw_activity];
        [(NSURLSessionTask *)v8 _nw_activity];
        nw_activity_set_parent_activity();
      }
    }
  }

  if ([(NSURLSessionTask *)v8 _private_nw_activity])
  {
    [(NSURLSessionTask *)v8 _private_nw_activity];
    nw_activity_activate();
    [(NSURLSessionTask *)v8 _private_nw_activity];
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
        v58 = [(NSURLSessionTask *)v8 _private_nw_activity];
        v59 = [(NSURLSessionTask *)v8 _loggableDescription];
        *buf = 138543618;
        *v70 = v58;
        *&v70[8] = 2114;
        *&v70[10] = v59;
        _os_log_debug_impl(&dword_197BA3000, v54, OS_LOG_TYPE_DEBUG, "[Telemetry]: Activity %{public}@ on %{public}@ was not selected for reporting", buf, 0x16u);
      }

      goto LABEL_67;
    }

    if (v55)
    {
      v64 = [(NSURLSessionTask *)v8 _private_nw_activity];
      v65 = [(NSURLSessionTask *)v8 _loggableDescription];
      *buf = 138543618;
      *v70 = v64;
      *&v70[8] = 2114;
      *&v70[10] = v65;
      _os_log_debug_impl(&dword_197BA3000, v54, OS_LOG_TYPE_DEBUG, "[Telemetry]: Activity %{public}@ on %{public}@ was selected for reporting", buf, 0x16u);
    }

    if ([(NSURLSessionTask *)v8 _DuetActivityProperties])
    {
      if ([-[NSDictionary objectForKeyedSubscript:](-[NSURLSessionTask _legacySocketStreamProperties](v8 "_legacySocketStreamProperties")])
      {
        v56 = [(NSURLSessionTask *)v8 _metrics];
        if (v56)
        {
          v57 = 5;
LABEL_66:
          *(v56 + 13) = v57;
        }
      }

      else
      {
        if ([(NSURLSessionConfiguration *)v8->_effectiveConfiguration isDiscretionary])
        {
          if ([(NSURLSessionConfiguration *)v8->_effectiveConfiguration _clientIsNotExplicitlyDiscretionary])
          {
            v60 = 3;
          }

          else
          {
            v60 = 2;
          }

          v61 = [(NSURLSessionTask *)v8 _metrics];
          if (v61)
          {
            *(v61 + 13) = v60;
          }

          goto LABEL_67;
        }

        v56 = [(NSURLSessionTask *)v8 _metrics];
        if (v56)
        {
          v57 = 4;
          goto LABEL_66;
        }
      }
    }
  }

LABEL_67:
  if (![(NSURLSessionTask *)v8 _isAVAssetTask]&& [(NSURLSessionTask *)v8 originalRequest]&& ![(NSURLSessionTask *)v8 currentRequest_URL])
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
  objc_sync_exit(v8);
  if (nw_settings_get_signposts_enabled())
  {
    kdebug_trace();
  }

  v63 = [(NSURLSessionTask *)v8 workQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __26__NSURLSessionTask_resume__block_invoke;
  block[3] = &unk_1E74D6B30;
  block[4] = v8;
  dispatch_async(v63, block);
}

@end