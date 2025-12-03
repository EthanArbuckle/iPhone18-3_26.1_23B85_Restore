@interface AAFAnalyticsTransportInProcessRTC
+ (id)analyticsTransportRTCWithClientType:(id)type clientBundleId:(id)id clientName:(id)name;
- (AAFAnalyticsTransportInProcessRTC)initWithClientType:(id)type clientBundleId:(id)id clientName:(id)name;
- (BOOL)_sendMessageWithCategory:(id)category payload:(id)payload error:(id *)error;
- (NSString)debugDescription;
- (id)_createPayloadWith:(id)with;
- (void)configureReportingSessionWithCompletion:(id)completion;
- (void)dealloc;
- (void)sendEvent:(id)event;
@end

@implementation AAFAnalyticsTransportInProcessRTC

- (AAFAnalyticsTransportInProcessRTC)initWithClientType:(id)type clientBundleId:(id)id clientName:(id)name
{
  typeCopy = type;
  idCopy = id;
  nameCopy = name;
  v70.receiver = self;
  v70.super_class = AAFAnalyticsTransportInProcessRTC;
  v12 = [(AAFAnalyticsTransportInProcessRTC *)&v70 init];
  v13 = v12;
  if (!v12)
  {
    goto LABEL_59;
  }

  objc_storeStrong(&v12->_clientType, type);
  objc_storeStrong(&v13->_clientBundleId, id);
  objc_storeStrong(&v13->_clientName, name);
  v14 = objc_alloc_init(MEMORY[0x1E695DF20]);
  sessionInfo = v13->_sessionInfo;
  v13->_sessionInfo = v14;

  v16 = objc_alloc_init(MEMORY[0x1E695DF20]);
  userInfo = v13->_userInfo;
  v13->_userInfo = v16;

  v18 = [(NSDictionary *)v13->_sessionInfo mutableCopy];
  clientType = v13->_clientType;
  if (RTCReportingLibraryCore())
  {
    v76 = 0;
    v77 = &v76;
    v78 = 0x2020000000;
    v20 = getkRTCReportingSessionInfoClientTypeSymbolLoc_ptr;
    v79 = getkRTCReportingSessionInfoClientTypeSymbolLoc_ptr;
    if (!getkRTCReportingSessionInfoClientTypeSymbolLoc_ptr)
    {
      v71 = MEMORY[0x1E69E9820];
      v72 = 3221225472;
      v73 = __getkRTCReportingSessionInfoClientTypeSymbolLoc_block_invoke;
      v74 = &unk_1E831BCB8;
      v75 = &v76;
      v21 = RTCReportingLibrary();
      v22 = dlsym(v21, "kRTCReportingSessionInfoClientType");
      *(v75[1] + 24) = v22;
      getkRTCReportingSessionInfoClientTypeSymbolLoc_ptr = *(v75[1] + 24);
      v20 = v77[3];
    }

    _Block_object_dispose(&v76, 8);
    if (!v20)
    {
      [AAFAnalyticsTransportInProcessRTC initWithClientType:clientBundleId:clientName:];
      goto LABEL_61;
    }

    [v18 setObject:clientType forKeyedSubscript:*v20];
  }

  else
  {
    null = [MEMORY[0x1E695DFB0] null];
    [v18 setObject:clientType forKeyedSubscript:null];
  }

  if (RTCReportingLibraryCore())
  {
    v76 = 0;
    v77 = &v76;
    v78 = 0x2020000000;
    v24 = getkRTCReportingSessionInfoClientVersionSymbolLoc_ptr;
    v79 = getkRTCReportingSessionInfoClientVersionSymbolLoc_ptr;
    if (!getkRTCReportingSessionInfoClientVersionSymbolLoc_ptr)
    {
      v71 = MEMORY[0x1E69E9820];
      v72 = 3221225472;
      v73 = __getkRTCReportingSessionInfoClientVersionSymbolLoc_block_invoke;
      v74 = &unk_1E831BCB8;
      v75 = &v76;
      v25 = RTCReportingLibrary();
      v26 = dlsym(v25, "kRTCReportingSessionInfoClientVersion");
      *(v75[1] + 24) = v26;
      getkRTCReportingSessionInfoClientVersionSymbolLoc_ptr = *(v75[1] + 24);
      v24 = v77[3];
    }

    _Block_object_dispose(&v76, 8);
    if (v24)
    {
      [v18 setObject:&unk_1F48489A0 forKeyedSubscript:*v24];
      goto LABEL_14;
    }

LABEL_61:
    [AAFAnalyticsTransportInProcessRTC initWithClientType:clientBundleId:clientName:];
    goto LABEL_62;
  }

  null2 = [MEMORY[0x1E695DFB0] null];
  [v18 setObject:&unk_1F48489A0 forKeyedSubscript:null2];

LABEL_14:
  if (RTCReportingLibraryCore())
  {
    v76 = 0;
    v77 = &v76;
    v78 = 0x2020000000;
    v28 = getkRTCReportingSessionInfoSessionIDSymbolLoc_ptr;
    v79 = getkRTCReportingSessionInfoSessionIDSymbolLoc_ptr;
    if (!getkRTCReportingSessionInfoSessionIDSymbolLoc_ptr)
    {
      v71 = MEMORY[0x1E69E9820];
      v72 = 3221225472;
      v73 = __getkRTCReportingSessionInfoSessionIDSymbolLoc_block_invoke;
      v74 = &unk_1E831BCB8;
      v75 = &v76;
      v29 = RTCReportingLibrary();
      v30 = dlsym(v29, "kRTCReportingSessionInfoSessionID");
      *(v75[1] + 24) = v30;
      getkRTCReportingSessionInfoSessionIDSymbolLoc_ptr = *(v75[1] + 24);
      v28 = v77[3];
    }

    _Block_object_dispose(&v76, 8);
    if (v28)
    {
      [v18 setObject:&unk_1F48489A0 forKeyedSubscript:*v28];
      goto LABEL_20;
    }

LABEL_62:
    [AAFAnalyticsTransportInProcessRTC initWithClientType:clientBundleId:clientName:];
    goto LABEL_63;
  }

  null3 = [MEMORY[0x1E695DFB0] null];
  [v18 setObject:&unk_1F48489A0 forKeyedSubscript:null3];

LABEL_20:
  if (RTCReportingLibraryCore())
  {
    v76 = 0;
    v77 = &v76;
    v78 = 0x2020000000;
    v32 = getkRTCReportingSessionInfoBatchEventSymbolLoc_ptr;
    v79 = getkRTCReportingSessionInfoBatchEventSymbolLoc_ptr;
    if (!getkRTCReportingSessionInfoBatchEventSymbolLoc_ptr)
    {
      v71 = MEMORY[0x1E69E9820];
      v72 = 3221225472;
      v73 = __getkRTCReportingSessionInfoBatchEventSymbolLoc_block_invoke;
      v74 = &unk_1E831BCB8;
      v75 = &v76;
      v33 = RTCReportingLibrary();
      v34 = dlsym(v33, "kRTCReportingSessionInfoBatchEvent");
      *(v75[1] + 24) = v34;
      getkRTCReportingSessionInfoBatchEventSymbolLoc_ptr = *(v75[1] + 24);
      v32 = v77[3];
    }

    _Block_object_dispose(&v76, 8);
    if (v32)
    {
      [v18 setObject:MEMORY[0x1E695E110] forKeyedSubscript:*v32];
      goto LABEL_26;
    }

LABEL_63:
    [AAFAnalyticsTransportInProcessRTC initWithClientType:clientBundleId:clientName:];
    goto LABEL_64;
  }

  null4 = [MEMORY[0x1E695DFB0] null];
  [v18 setObject:MEMORY[0x1E695E110] forKeyedSubscript:null4];

LABEL_26:
  clientBundleId = v13->_clientBundleId;
  if (!RTCReportingLibraryCore())
  {
    null5 = [MEMORY[0x1E695DFB0] null];
    [v18 setObject:clientBundleId forKeyedSubscript:null5];

    goto LABEL_32;
  }

  v76 = 0;
  v77 = &v76;
  v78 = 0x2020000000;
  v37 = getkRTCReportingSessionInfoClientBundleIDSymbolLoc_ptr;
  v79 = getkRTCReportingSessionInfoClientBundleIDSymbolLoc_ptr;
  if (!getkRTCReportingSessionInfoClientBundleIDSymbolLoc_ptr)
  {
    v71 = MEMORY[0x1E69E9820];
    v72 = 3221225472;
    v73 = __getkRTCReportingSessionInfoClientBundleIDSymbolLoc_block_invoke;
    v74 = &unk_1E831BCB8;
    v75 = &v76;
    v38 = RTCReportingLibrary();
    v39 = dlsym(v38, "kRTCReportingSessionInfoClientBundleID");
    *(v75[1] + 24) = v39;
    getkRTCReportingSessionInfoClientBundleIDSymbolLoc_ptr = *(v75[1] + 24);
    v37 = v77[3];
  }

  _Block_object_dispose(&v76, 8);
  if (!v37)
  {
LABEL_64:
    [AAFAnalyticsTransportInProcessRTC initWithClientType:clientBundleId:clientName:];
    goto LABEL_65;
  }

  [v18 setObject:clientBundleId forKeyedSubscript:*v37];
LABEL_32:
  if (+[AFUtilities isInternalBuild])
  {
    keyExistsAndHasValidFormat = 0;
    AppBooleanValue = CFPreferencesGetAppBooleanValue(@"realTimeEvents", @"com.apple.aaafoundation", &keyExistsAndHasValidFormat);
    if (keyExistsAndHasValidFormat)
    {
      if (AppBooleanValue)
      {
        if (RTCReportingLibraryCore())
        {
          v76 = 0;
          v77 = &v76;
          v78 = 0x2020000000;
          v42 = getkRTCReportingSessionInfoContainsRealtimeEventsSymbolLoc_ptr;
          v79 = getkRTCReportingSessionInfoContainsRealtimeEventsSymbolLoc_ptr;
          if (!getkRTCReportingSessionInfoContainsRealtimeEventsSymbolLoc_ptr)
          {
            v71 = MEMORY[0x1E69E9820];
            v72 = 3221225472;
            v73 = __getkRTCReportingSessionInfoContainsRealtimeEventsSymbolLoc_block_invoke;
            v74 = &unk_1E831BCB8;
            v75 = &v76;
            v43 = RTCReportingLibrary();
            v44 = dlsym(v43, "kRTCReportingSessionInfoContainsRealtimeEvents");
            *(v75[1] + 24) = v44;
            getkRTCReportingSessionInfoContainsRealtimeEventsSymbolLoc_ptr = *(v75[1] + 24);
            v42 = v77[3];
          }

          _Block_object_dispose(&v76, 8);
          if (!v42)
          {
LABEL_67:
            v68 = [AAFAnalyticsTransportInProcessRTC initWithClientType:clientBundleId:clientName:];
            _Block_object_dispose(&v76, 8);
            _Unwind_Resume(v68);
          }

          [v18 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*v42];
        }

        else
        {
          null6 = [MEMORY[0x1E695DFB0] null];
          [v18 setObject:MEMORY[0x1E695E118] forKeyedSubscript:null6];
        }
      }
    }
  }

  v46 = [v18 copy];
  v47 = v13->_sessionInfo;
  v13->_sessionInfo = v46;

  v48 = [(NSDictionary *)v13->_userInfo mutableCopy];
  if (RTCReportingLibraryCore())
  {
    v76 = 0;
    v77 = &v76;
    v78 = 0x2020000000;
    v49 = getkRTCReportingUserInfoServiceNameSymbolLoc_ptr;
    v79 = getkRTCReportingUserInfoServiceNameSymbolLoc_ptr;
    if (!getkRTCReportingUserInfoServiceNameSymbolLoc_ptr)
    {
      v71 = MEMORY[0x1E69E9820];
      v72 = 3221225472;
      v73 = __getkRTCReportingUserInfoServiceNameSymbolLoc_block_invoke;
      v74 = &unk_1E831BCB8;
      v75 = &v76;
      v50 = RTCReportingLibrary();
      v51 = dlsym(v50, "kRTCReportingUserInfoServiceName");
      *(v75[1] + 24) = v51;
      getkRTCReportingUserInfoServiceNameSymbolLoc_ptr = *(v75[1] + 24);
      v49 = v77[3];
    }

    _Block_object_dispose(&v76, 8);
    if (v49)
    {
      [v48 setObject:@"default" forKeyedSubscript:*v49];
      goto LABEL_47;
    }

LABEL_65:
    [AAFAnalyticsTransportInProcessRTC initWithClientType:clientBundleId:clientName:];
LABEL_66:
    [AAFAnalyticsTransportInProcessRTC initWithClientType:clientBundleId:clientName:];
    goto LABEL_67;
  }

  null7 = [MEMORY[0x1E695DFB0] null];
  [v48 setObject:@"default" forKeyedSubscript:null7];

LABEL_47:
  clientName = v13->_clientName;
  if (!RTCReportingLibraryCore())
  {
    null8 = [MEMORY[0x1E695DFB0] null];
    [v48 setObject:clientName forKeyedSubscript:null8];

    goto LABEL_53;
  }

  v76 = 0;
  v77 = &v76;
  v78 = 0x2020000000;
  v54 = getkRTCReportingUserInfoClientNameSymbolLoc_ptr;
  v79 = getkRTCReportingUserInfoClientNameSymbolLoc_ptr;
  if (!getkRTCReportingUserInfoClientNameSymbolLoc_ptr)
  {
    v71 = MEMORY[0x1E69E9820];
    v72 = 3221225472;
    v73 = __getkRTCReportingUserInfoClientNameSymbolLoc_block_invoke;
    v74 = &unk_1E831BCB8;
    v75 = &v76;
    v55 = RTCReportingLibrary();
    v56 = dlsym(v55, "kRTCReportingUserInfoClientName");
    *(v75[1] + 24) = v56;
    getkRTCReportingUserInfoClientNameSymbolLoc_ptr = *(v75[1] + 24);
    v54 = v77[3];
  }

  _Block_object_dispose(&v76, 8);
  if (!v54)
  {
    goto LABEL_66;
  }

  [v48 setObject:clientName forKeyedSubscript:*v54];
LABEL_53:
  v58 = [v48 copy];
  v59 = v13->_userInfo;
  v13->_userInfo = v58;

  *&v13->_sessionState = xmmword_1C8656AC0;
  array = [MEMORY[0x1E695DF70] array];
  eventQueue = v13->_eventQueue;
  v13->_eventQueue = array;

  if (RTCReportingLibraryCore())
  {
    v76 = 0;
    v77 = &v76;
    v78 = 0x2050000000;
    v62 = getRTCReportingClass_softClass;
    v79 = getRTCReportingClass_softClass;
    if (!getRTCReportingClass_softClass)
    {
      v71 = MEMORY[0x1E69E9820];
      v72 = 3221225472;
      v73 = __getRTCReportingClass_block_invoke;
      v74 = &unk_1E831BCB8;
      v75 = &v76;
      RTCReportingLibraryCore();
      Class = objc_getClass("RTCReporting");
      *(v75[1] + 24) = Class;
      getRTCReportingClass_softClass = *(v75[1] + 24);
      v62 = v77[3];
    }

    v64 = v62;
    _Block_object_dispose(&v76, 8);
  }

  else
  {
    v62 = 0;
  }

  v65 = [[v62 alloc] initWithSessionInfo:v13->_sessionInfo userInfo:v13->_userInfo frameworksToCheck:0];
  rtcReportingSession = v13->_rtcReportingSession;
  v13->_rtcReportingSession = v65;

LABEL_59:
  return v13;
}

- (id)_createPayloadWith:(id)with
{
  withCopy = with;
  reportData = [withCopy reportData];
  v5 = [reportData mutableCopy];

  eventName = [withCopy eventName];

  if (eventName)
  {
    eventName2 = [withCopy eventName];
    [v5 setObject:eventName2 forKeyedSubscript:@"eventName"];
  }

  return v5;
}

- (void)configureReportingSessionWithCompletion:(id)completion
{
  completionCopy = completion;
  rtcReportingSession = [(AAFAnalyticsTransportInProcessRTC *)self rtcReportingSession];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __77__AAFAnalyticsTransportInProcessRTC_configureReportingSessionWithCompletion___block_invoke;
  v7[3] = &unk_1E831BD00;
  v8 = completionCopy;
  v6 = completionCopy;
  [rtcReportingSession startConfigurationWithCompletionHandler:v7];
}

- (BOOL)_sendMessageWithCategory:(id)category payload:(id)payload error:(id *)error
{
  rtcReportingSession = self->_rtcReportingSession;
  payloadCopy = payload;
  LOBYTE(error) = -[RTCReporting sendMessageWithCategory:type:payload:error:](rtcReportingSession, "sendMessageWithCategory:type:payload:error:", [category unsignedIntValue], 0, payloadCopy, error);

  return error;
}

- (void)sendEvent:(id)event
{
  eventCopy = event;
  eventCategory = [eventCopy eventCategory];

  if (eventCategory)
  {
    v6 = [(AAFAnalyticsTransportInProcessRTC *)self _createPayloadWith:eventCopy];
    eventCategory2 = [eventCopy eventCategory];
    v12 = 0;
    v8 = [(AAFAnalyticsTransportInProcessRTC *)self _sendMessageWithCategory:eventCategory2 payload:v6 error:&v12];
    v9 = v12;

    v10 = _AAFLogSystem();
    v11 = v10;
    if (v8)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        [(AAFAnalyticsTransportInProcessRTC *)self sendEvent:v11];
      }
    }

    else if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(AAFAnalyticsTransportInProcessRTC *)self sendEvent:v9, v11];
    }
  }

  else
  {
    v6 = _AAFLogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(AAFAnalyticsTransportInProcessRTC *)eventCopy sendEvent:v6];
    }
  }
}

- (void)dealloc
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(&dword_1C8644000, v0, OS_LOG_TYPE_DEBUG, "%@ deallocated", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  clientType = [(AAFAnalyticsTransportInProcessRTC *)self clientType];
  clientBundleId = [(AAFAnalyticsTransportInProcessRTC *)self clientBundleId];
  clientName = [(AAFAnalyticsTransportInProcessRTC *)self clientName];
  sessionInfo = [(AAFAnalyticsTransportInProcessRTC *)self sessionInfo];
  userInfo = [(AAFAnalyticsTransportInProcessRTC *)self userInfo];
  v10 = [v3 stringWithFormat:@"<%@: %p> ClientType: [%@], ClientBundleId: [%@], ClientName: [%@], SessionInfo: %@, UserInfo: %@", v4, self, clientType, clientBundleId, clientName, sessionInfo, userInfo];

  return v10;
}

+ (id)analyticsTransportRTCWithClientType:(id)type clientBundleId:(id)id clientName:(id)name
{
  typeCopy = type;
  idCopy = id;
  nameCopy = name;
  v11 = nameCopy;
  if (typeCopy && idCopy && nameCopy)
  {
    v12 = [[self alloc] initWithClientType:typeCopy clientBundleId:idCopy clientName:nameCopy];
  }

  else
  {
    v13 = _AAFLogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [AAFAnalyticsTransportInProcessRTC analyticsTransportRTCWithClientType:v13 clientBundleId:? clientName:?];
    }

    v12 = 0;
  }

  return v12;
}

- (uint64_t)initWithClientType:clientBundleId:clientName:.cold.1()
{
  dlerror();
  v0 = abort_report_np();
  return [AAFAnalyticsTransportInProcessRTC sendEvent:v0];
}

- (void)sendEvent:(NSObject *)a3 .cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  OUTLINED_FUNCTION_1_0();
  v10 = 2048;
  v11 = a1;
  v12 = 2114;
  v13 = a2;
  v7 = v6;
  _os_log_error_impl(&dword_1C8644000, a3, OS_LOG_TYPE_ERROR, "<%@: %p> RTCReporting send failed with error: %{public}@", v9, 0x20u);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)sendEvent:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  OUTLINED_FUNCTION_1_0();
  v8 = 2048;
  v9 = a1;
  v5 = v4;
  _os_log_debug_impl(&dword_1C8644000, a2, OS_LOG_TYPE_DEBUG, "<%@: %p> RTCReporting send success!", v7, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)sendEvent:(void *)a1 .cold.3(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = [a1 eventName];
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(&dword_1C8644000, a2, OS_LOG_TYPE_ERROR, "Error sending report for event (%@). RTC event needs a category.", v5, 0xCu);

  v4 = *MEMORY[0x1E69E9840];
}

@end