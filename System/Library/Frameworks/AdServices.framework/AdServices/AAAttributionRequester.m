@interface AAAttributionRequester
+ (id)_createInternalError;
+ (int64_t)_findBucketForDaemonRunningTime:(double)a3;
+ (int64_t)_tokenStatusFromTokenSource:(int64_t)a3;
- (void)_reportTokenStatus:(int64_t)a3 storeFront:(id)a4 daemonRunningTime:(double)a5;
- (void)_sendAnalyticsAndInvalidateConnection:(unint64_t)a3 end:(unint64_t)a4;
@end

@implementation AAAttributionRequester

+ (int64_t)_findBucketForDaemonRunningTime:(double)a3
{
  for (result = 0; result != 10; ++result)
  {
    if (qword_236A45108[result] >= (a3 * 1000.0))
    {
      break;
    }
  }

  return result;
}

- (void)_reportTokenStatus:(int64_t)a3 storeFront:(id)a4 daemonRunningTime:(double)a5
{
  v37 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = APPerfLogForCategory();
  v15 = objc_msgSend_intervalId(self, v9, v10, v11, v12, v13, v14);
  if ((v15 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v16 = v15;
    if (os_signpost_enabled(v8))
    {
      *buf = 134349312;
      v34 = objc_msgSend_intervalId(self, v17, v18, v19, v20, v21, v22);
      v35 = 2050;
      v36 = a3;
      _os_signpost_emit_with_name_impl(&dword_236A42000, v8, OS_SIGNPOST_EVENT, v16, "Token Status", "Token Status id=%{public, name=id}lld status=%{public, name=status}ld", buf, 0x16u);
    }
  }

  v29 = objc_msgSend_now(MEMORY[0x277CBEAA8], v23, v24, v25, v26, v27, v28);
  v30 = v7;
  v31 = v29;
  AnalyticsSendEventLazy();

  v32 = *MEMORY[0x277D85DE8];
}

+ (int64_t)_tokenStatusFromTokenSource:(int64_t)a3
{
  if ((a3 - 1) >= 3)
  {
    return 0;
  }

  else
  {
    return a3 + 2;
  }
}

+ (id)_createInternalError
{
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CCA9B8];
  v12 = *MEMORY[0x277CCA450];
  v13[0] = @"An internal error occurred";
  v5 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], a2, v13, &v12, 1, v2, v3);
  v9 = objc_msgSend_errorWithDomain_code_userInfo_(v4, v6, @"com.apple.ap.adservices.attributionError", 2, v5, v7, v8);

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (void)_sendAnalyticsAndInvalidateConnection:(unint64_t)a3 end:(unint64_t)a4
{
  v10 = objc_msgSend_remoteProxy(self, a2, a3, a4, v4, v5, v6);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_236A44948;
  v14[3] = &unk_278A03D48;
  v14[4] = self;
  objc_msgSend_attributionAnalytics_end_Handler_(v10, v11, a3, a4, v14, v12, v13);
}

@end