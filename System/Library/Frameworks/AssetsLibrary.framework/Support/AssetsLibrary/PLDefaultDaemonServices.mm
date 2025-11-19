@interface PLDefaultDaemonServices
- (id)_captureSessionIdentifierFromRunningBoardTags:(id)a3;
- (id)_captureSessionStateFromProcessStates:(id)a3;
- (id)_isSecureCaptureExtensionFromAuditToken:(id *)a3;
- (id)captureSessionStateFromAuditToken:(id *)a3;
@end

@implementation PLDefaultDaemonServices

- (id)_captureSessionIdentifierFromRunningBoardTags:(id)a3
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = a3;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        if ([v8 hasPrefix:{@"com.apple.securecapture-", v11}])
        {
          v9 = [v8 substringFromIndex:{objc_msgSend(@"com.apple.securecapture-", "length")}];
          goto LABEL_11;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_11:

  return v9;
}

- (id)_captureSessionStateFromProcessStates:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    if ([v4 count])
    {
      v6 = 0;
      v7 = 0;
      v8 = 0;
      *&v5 = 138412290;
      v26 = v5;
      do
      {
        v9 = [v4 objectAtIndexedSubscript:{v8, v26}];
        v10 = [v9 tags];
        v11 = PLBackendGetLog();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134218754;
          v28 = v8;
          v29 = 2112;
          v30 = v9;
          v31 = 2048;
          v32 = v8;
          v33 = 2112;
          v34 = v10;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "Capture Session:\nState[%zu]: %@\nTags[%zu]: %@---", buf, 0x2Au);
        }

        v12 = [(PLDefaultDaemonServices *)self _captureSessionIdentifierFromRunningBoardTags:v10];
        v13 = v12;
        if (v12 && (v14 = [v12 isEqualToString:&stru_10002E038], v13, (v14 & 1) == 0))
        {
          v15 = v13;

          v16 = PLBackendGetLog();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
          {
            *buf = v26;
            v28 = v15;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "Capture Session: Found identifier in running board tag: %@", buf, 0xCu);
          }
        }

        else
        {
          v15 = v6;
        }

        v7 |= [v10 containsObject:@"com.apple.securecapture.unlocked"];

        ++v8;
        v6 = v15;
      }

      while (v8 < [v4 count]);
    }

    else
    {
      LOBYTE(v7) = 0;
      v15 = 0;
    }

    v19 = +[PLCaptureSessionState unknown];
    if (v15)
    {
      if (v7)
      {
        [PLCaptureSessionState unlockedWithSessionIdentifier:v15];
      }

      else
      {
        [PLCaptureSessionState lockedWithSessionIdentifier:v15];
      }
      v24 = ;

      v19 = v24;
      v18 = v19;
    }

    else
    {
      v20 = [v4 _pl_map:&stru_10002D390];
      v21 = PLBackendGetLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v22 = [v20 _pl_prettyDescription];
        v23 = [v4 _pl_prettyDescription];
        *buf = 138543618;
        v28 = v22;
        v29 = 2112;
        v30 = v23;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Capture Session: Did not find capture session identifier in RBSProcessState tags: %{public}@, all states: %@", buf, 0x16u);
      }

      v18 = +[PLCaptureSessionState unknown];
    }
  }

  else
  {
    v17 = PLBackendGetLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Capture Session: processStates is unexpectedly empty", buf, 2u);
    }

    v18 = +[PLCaptureSessionState unknown];
  }

  return v18;
}

- (id)_isSecureCaptureExtensionFromAuditToken:(id *)a3
{
  v21 = 0;
  v3 = *&a3->var0[4];
  *buf = *a3->var0;
  v23 = v3;
  v4 = [LSBundleRecord bundleRecordForAuditToken:buf error:&v21];
  v5 = v21;
  v6 = PLBackendGetLog();
  v7 = v6;
  if (v4)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      *&buf[4] = v4;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Capture Session: bundle record: %@", buf, 0xCu);
    }

    objc_opt_class();
    v8 = v4;
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    v7 = v9;

    v10 = PLBackendGetLog();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);
    if (!v7)
    {
      if (v11)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Capture Session: client is not an extension", buf, 2u);
      }

      v18 = &__kCFBooleanFalse;
      goto LABEL_34;
    }

    if (v11)
    {
      *buf = 138412290;
      *&buf[4] = v8;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Capture Session: extension record: %@", buf, 0xCu);
    }

    v10 = [v7 extensionPointRecord];
    v12 = PLBackendGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      *&buf[4] = v10;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Capture Session: extension point record: %@", buf, 0xCu);
    }

    if (v10)
    {
      v13 = [v10 identifier];
      v14 = PLBackendGetLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        *&buf[4] = v13;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Capture Session: extension point identifier: %@", buf, 0xCu);
      }

      if (v13)
      {
        v15 = [v13 isEqual:PLSecureCaptureExtensionIdentifier];
        v16 = PLBackendGetLog();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          v17 = @"is not";
          if (v15)
          {
            v17 = @"is";
          }

          *buf = 138543362;
          *&buf[4] = v17;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Capture Session: extension point %{public}@ a secure capture extension", buf, 0xCu);
        }

        v18 = [NSNumber numberWithBool:v15];
        goto LABEL_33;
      }

      v19 = PLBackendGetLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Capture Session: extension point identifier is unexpectedly nil", buf, 2u);
      }

      v13 = 0;
    }

    else
    {
      v13 = PLBackendGetLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Capture Session: extension point record is unexpectedly nil", buf, 2u);
      }
    }

    v18 = 0;
LABEL_33:

LABEL_34:
    goto LABEL_35;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *&buf[4] = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Capture Session: Client is not a bundled executable: %@", buf, 0xCu);
  }

  v18 = &__kCFBooleanFalse;
LABEL_35:

  return v18;
}

- (id)captureSessionStateFromAuditToken:(id *)a3
{
  if ((PLIsCaptureSessionEnabled() & 1) == 0)
  {
    v22 = +[PLCaptureSessionState none];
    goto LABEL_30;
  }

  v5 = *&a3->var0[4];
  *buf = *a3->var0;
  *&buf[16] = v5;
  v6 = [(PLDefaultDaemonServices *)self _isSecureCaptureExtensionFromAuditToken:buf];
  v7 = v6;
  if (v6)
  {
    if ([v6 BOOLValue])
    {
      v8 = +[FBProcessManager sharedInstance];
      v9 = *&a3->var0[4];
      *buf = *a3->var0;
      *&buf[16] = v9;
      v10 = [v8 registerProcessForAuditToken:buf];
      v11 = PLBackendGetLog();
      v12 = v11;
      if (v10)
      {
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          *&buf[4] = v10;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Capture Session: FBProcess: %@", buf, 0xCu);
        }

        v13 = [v10 identity];
        v14 = PLBackendGetLog();
        v15 = v14;
        if (v13)
        {
          if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            *&buf[4] = v13;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Capture Session: RBSProcessIdentity: %@", buf, 0xCu);
          }

          v16 = [RBSProcessPredicate predicateMatchingIdentity:v13];
          v17 = PLBackendGetLog();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            *&buf[4] = v16;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Capture Session: RBSProcessPredicate: %@", buf, 0xCu);
          }

          v26 = 0;
          v18 = [RBSProcessState statesForPredicate:v16 withDescriptor:0 error:&v26];
          v19 = v26;
          v20 = PLBackendGetLog();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
          {
            v21 = [v18 count];
            *buf = 134218242;
            *&buf[4] = v21;
            *&buf[12] = 2112;
            *&buf[14] = v19;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "Capture Session: RBSProcessStates.count: %zu, error: %@", buf, 0x16u);
          }

          v22 = [(PLDefaultDaemonServices *)self _captureSessionStateFromProcessStates:v18];
          v23 = PLBackendGetLog();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            *&buf[4] = v22;
            _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "Capture Session: capture session state: %@", buf, 0xCu);
          }
        }

        else
        {
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Capture Session: Unable to get process identity for audit token", buf, 2u);
          }

          v22 = +[PLCaptureSessionState unknown];
        }
      }

      else
      {
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Capture Session: Unable to get process for audit token", buf, 2u);
        }

        v22 = +[PLCaptureSessionState unknown];
      }

      goto LABEL_29;
    }

    v24 = +[PLCaptureSessionState none];
  }

  else
  {
    v24 = +[PLCaptureSessionState unknown];
  }

  v22 = v24;
LABEL_29:

LABEL_30:

  return v22;
}

@end