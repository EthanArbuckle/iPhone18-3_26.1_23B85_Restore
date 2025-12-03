@interface CKTapToRadarManager
+ (id)sharedManager;
- (CKTapToRadarManager)init;
- (id)_hashForMessage:(id)message;
- (id)_lastPromptDateForMessage:(id)message;
- (id)initInternal;
- (void)_launchTTRWithRequest:(id)request;
- (void)_lockedTriggerTapToRadarWithRequest:(id)request;
- (void)_notePromptAttemptForMessage:(id)message;
- (void)triggerTapToRadarWithRequest:(id)request;
@end

@implementation CKTapToRadarManager

- (CKTapToRadarManager)init
{
  v5 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, v2);
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v5, v6, a2, self, @"CKTapToRadarManager.m", 32, @"Please use +[CKTapToRadarManager sharedManager]");

  return 0;
}

- (id)initInternal
{
  v35 = *MEMORY[0x1E69E9840];
  v33.receiver = self;
  v33.super_class = CKTapToRadarManager;
  v2 = [(CKTapToRadarManager *)&v33 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_USER_INITIATED, 0);
    v5 = dispatch_queue_create("com.apple.cloudkit.taptoradar.alertQueue", v4);
    alertQueue = v2->_alertQueue;
    v2->_alertQueue = v5;

    v7 = objc_opt_new();
    lastPromptDateByMessageHash = v2->_lastPromptDateByMessageHash;
    v2->_lastPromptDateByMessageHash = v7;

    v9 = objc_alloc(MEMORY[0x1E695E000]);
    v11 = objc_msgSend_initWithSuiteName_(v9, v10, @"com.apple.cloudd");
    userDefaults = v2->_userDefaults;
    v2->_userDefaults = v11;

    v14 = objc_msgSend_objectForKey_(v2->_userDefaults, v13, @"LastTTRPromptDates");
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v17 = objc_msgSend_allKeys(v14, v15, v16, 0);
      v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v18, &v29, v34, 16);
      if (v19)
      {
        v20 = v19;
        v21 = *v30;
        do
        {
          v22 = 0;
          do
          {
            if (*v30 != v21)
            {
              objc_enumerationMutation(v17);
            }

            v23 = *(*(&v29 + 1) + 8 * v22);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v25 = objc_msgSend_objectForKeyedSubscript_(v14, v24, v23);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                objc_msgSend_setObject_forKeyedSubscript_(v2->_lastPromptDateByMessageHash, v26, v25, v23);
              }
            }

            ++v22;
          }

          while (v20 != v22);
          v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v24, &v29, v34, 16);
        }

        while (v20);
      }
    }
  }

  v27 = *MEMORY[0x1E69E9840];
  return v2;
}

+ (id)sharedManager
{
  if (qword_1ED4B65C0 != -1)
  {
    dispatch_once(&qword_1ED4B65C0, &unk_1EFA308F0);
  }

  v3 = qword_1ED4B65B8;

  return v3;
}

- (id)_hashForMessage:(id)message
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_msgSend_hash(message, a2, message);
  return objc_msgSend_stringWithFormat_(v3, v5, @"%lu", v4);
}

- (id)_lastPromptDateForMessage:(id)message
{
  messageCopy = message;
  v7 = objc_msgSend_alertQueue(self, v5, v6);
  dispatch_assert_queue_V2(v7);

  v10 = objc_msgSend_lastPromptDateByMessageHash(self, v8, v9);
  v12 = objc_msgSend__hashForMessage_(self, v11, messageCopy);

  v14 = objc_msgSend_objectForKeyedSubscript_(v10, v13, v12);

  if (!v14)
  {
    v14 = objc_msgSend_distantPast(MEMORY[0x1E695DF00], v15, v16);
  }

  return v14;
}

- (void)_notePromptAttemptForMessage:(id)message
{
  messageCopy = message;
  v7 = objc_msgSend_alertQueue(self, v5, v6);
  dispatch_assert_queue_V2(v7);

  v10 = objc_msgSend_date(MEMORY[0x1E695DF00], v8, v9);
  v13 = objc_msgSend_lastPromptDateByMessageHash(self, v11, v12);
  v15 = objc_msgSend__hashForMessage_(self, v14, messageCopy);

  objc_msgSend_setObject_forKeyedSubscript_(v13, v16, v10, v15);
  v23 = objc_msgSend_userDefaults(self, v17, v18);
  v21 = objc_msgSend_lastPromptDateByMessageHash(self, v19, v20);
  objc_msgSend_setObject_forKey_(v23, v22, v21, @"LastTTRPromptDates");
}

- (void)_launchTTRWithRequest:(id)request
{
  requestCopy = request;
  v3 = MEMORY[0x1E696AEC0];
  v4 = CKBuildVersion();
  v7 = objc_msgSend_title(requestCopy, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"%@: Tap-To-Radar: %@", v4, v7);

  if (objc_msgSend_length(v9, v10, v11) >= 0xF0)
  {
    v14 = objc_msgSend_substringToIndex_(v9, v12, 239);

    v9 = v14;
  }

  v15 = objc_msgSend_componentID(requestCopy, v12, v13);

  if (!v15)
  {
    objc_msgSend_setComponentID_(requestCopy, v16, @"552485");
  }

  v18 = objc_msgSend_componentName(requestCopy, v16, v17);

  if (!v18)
  {
    objc_msgSend_setComponentName_(requestCopy, v19, @"CloudKit");
  }

  v21 = objc_msgSend_componentVersion(requestCopy, v19, v20);

  if (!v21)
  {
    objc_msgSend_setComponentVersion_(requestCopy, v22, @"All");
  }

  v24 = objc_msgSend_radarDescription(requestCopy, v22, v23);

  if (!v24)
  {
    v27 = objc_msgSend_title(requestCopy, v25, v26);
    objc_msgSend_setRadarDescription_(requestCopy, v28, v27);
  }

  v29 = MEMORY[0x1E696AEC0];
  v30 = objc_msgSend_componentID(requestCopy, v25, v26);
  v33 = objc_msgSend_componentName(requestCopy, v31, v32);
  v36 = objc_msgSend_componentVersion(requestCopy, v34, v35);
  v39 = objc_msgSend_radarDescription(requestCopy, v37, v38);
  v44 = objc_msgSend_relatedRadar(requestCopy, v40, v41);
  if (v44)
  {
    v45 = @"\n";
  }

  else
  {
    v45 = &stru_1EFA32970;
  }

  v46 = objc_msgSend_relatedRadar(requestCopy, v42, v43);
  v48 = v46;
  if (v46)
  {
    objc_msgSend_stringWithFormat_(v29, v47, @"tap-to-radar://new?Title=%@&ComponentID=%@&ComponentName=%@&ComponentVersion=%@&Classification=Serious Bug&Description=%@%@%@&Reproducibility=I Didn't Try", v9, v30, v33, v36, v39, v45, v46);
  }

  else
  {
    objc_msgSend_stringWithFormat_(v29, v47, @"tap-to-radar://new?Title=%@&ComponentID=%@&ComponentName=%@&ComponentVersion=%@&Classification=Serious Bug&Description=%@%@%@&Reproducibility=I Didn't Try", v9, v30, v33, v36, v39, v45, &stru_1EFA32970);
  }
  v49 = ;

  v52 = objc_msgSend_URLQueryAllowedCharacterSet(MEMORY[0x1E696AB08], v50, v51);
  v54 = objc_msgSend_stringByAddingPercentEncodingWithAllowedCharacters_(v49, v53, v52);

  v56 = objc_msgSend_URLWithString_(MEMORY[0x1E695DFF8], v55, v54);
  v59 = objc_msgSend_defaultWorkspace(MEMORY[0x1E6963608], v57, v58);
  objc_msgSend_openURL_configuration_completionHandler_(v59, v60, v56, 0, 0);
}

- (void)_lockedTriggerTapToRadarWithRequest:(id)request
{
  v70 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  v7 = objc_msgSend_alertQueue(self, v5, v6);
  dispatch_assert_queue_V2(v7);

  v10 = objc_msgSend_title(requestCopy, v8, v9);

  if (v10)
  {
    v13 = objc_msgSend_sharedOptions(CKBehaviorOptions, v11, v12);
    isAppleInternalInstall = objc_msgSend_isAppleInternalInstall(v13, v14, v15);

    if (isAppleInternalInstall)
    {
      v19 = objc_msgSend_title(requestCopy, v17, v18);
      v21 = objc_msgSend__lastPromptDateForMessage_(self, v20, v19);
      objc_msgSend_timeIntervalSinceNow(v21, v22, v23);
      v25 = fabs(v24);

      v28 = objc_msgSend_sharedOptions(CKBehaviorOptions, v26, v27);
      objc_msgSend_minTTRPromptInterval(v28, v29, v30);
      v32 = v31;

      if (v25 >= v32)
      {
        if (ck_log_initialization_predicate != -1)
        {
          dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
        }

        v38 = ck_log_facility_ck;
        if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
        {
          v61 = v38;
          v64 = objc_msgSend_title(requestCopy, v62, v63);
          *buf = 138412290;
          *&buf[4] = v64;
          _os_log_debug_impl(&dword_1883EA000, v61, OS_LOG_TYPE_DEBUG, "Creating a TTR prompt for %@", buf, 0xCu);
        }

        v41 = objc_msgSend_title(requestCopy, v39, v40);
        objc_msgSend__notePromptAttemptForMessage_(self, v42, v41);

        v43 = *MEMORY[0x1E695EE58];
        v66[0] = @"Tap-To-Radar";
        v44 = *MEMORY[0x1E695EE60];
        v65[0] = v43;
        v65[1] = v44;
        v45 = MEMORY[0x1E696AEC0];
        v48 = objc_msgSend_matterhornName(CKContainer, v46, v47);
        v51 = objc_msgSend_title(requestCopy, v49, v50);
        v53 = objc_msgSend_stringWithFormat_(v45, v52, @"A problem has been detected with your %@ account:\n\n%@\n\nWould you mind filing a Radar?", v48, v51);
        v54 = *MEMORY[0x1E695EE78];
        v66[1] = v53;
        v66[2] = @"File a Radar";
        v55 = *MEMORY[0x1E695EE70];
        v65[2] = v54;
        v65[3] = v55;
        v66[3] = @"Not Now";
        v57 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v56, v66, v65, 4);

        v58 = CFUserNotificationCreate(0, 0.0, 3uLL, 0, v57);
        *buf = 0;
        CFUserNotificationReceiveResponse(v58, 86400.0, buf);
        if ((buf[0] & 3) == 0)
        {
          objc_msgSend__launchTTRWithRequest_(self, v59, requestCopy);
        }

        if (v58)
        {
          CFRelease(v58);
        }
      }

      else
      {
        if (ck_log_initialization_predicate != -1)
        {
          dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
        }

        v33 = ck_log_facility_ck;
        if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
        {
          v34 = v33;
          v37 = objc_msgSend_title(requestCopy, v35, v36);
          *buf = 134218242;
          *&buf[4] = v25;
          v68 = 2112;
          v69 = v37;
          _os_log_debug_impl(&dword_1883EA000, v34, OS_LOG_TYPE_DEBUG, "Not creating a TTR notification because it hasn't been long enough since the last prompt (%0.1fs) for message %@", buf, 0x16u);
        }
      }
    }
  }

  v60 = *MEMORY[0x1E69E9840];
}

- (void)triggerTapToRadarWithRequest:(id)request
{
  requestCopy = request;
  objc_initWeak(&location, self);
  v7 = objc_msgSend_alertQueue(self, v5, v6);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1886C6FF0;
  block[3] = &unk_1E70BF2E0;
  objc_copyWeak(&v11, &location);
  v10 = requestCopy;
  v8 = requestCopy;
  dispatch_async(v7, block);

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

@end