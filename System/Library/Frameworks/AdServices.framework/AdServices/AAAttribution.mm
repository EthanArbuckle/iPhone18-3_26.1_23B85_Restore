@interface AAAttribution
+ (NSString)attributionTokenWithError:(NSError *)error;
+ (id)setupXPCConnection;
@end

@implementation AAAttribution

+ (NSString)attributionTokenWithError:(NSError *)error
{
  v45 = *MEMORY[0x277D85DE8];
  v4 = sub_236A43010();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_236A42000, v4, OS_LOG_TYPE_INFO, "Attribution Token request", buf, 2u);
  }

  v11 = objc_msgSend_now(MEMORY[0x277CBEAA8], v5, v6, v7, v8, v9, v10);
  v12 = [AAAttributionRequester alloc];
  v19 = objc_msgSend_setupXPCConnection(AAAttribution, v13, v14, v15, v16, v17, v18);
  isMainThread = objc_msgSend_isMainThread(MEMORY[0x277CCACC8], v20, v21, v22, v23, v24, v25);
  v27 = sub_236A44770(&v12->super.isa, v19, isMainThread, v11);

  v42 = 0;
  v28 = sub_236A43120(v27, &v42);
  v29 = v42;
  v30 = sub_236A43010();
  v31 = os_log_type_enabled(v30, OS_LOG_TYPE_INFO);
  if (v28 || !v29)
  {
    if (v31)
    {
      *buf = 138543362;
      v44 = v28;
      _os_log_impl(&dword_236A42000, v30, OS_LOG_TYPE_INFO, "Returning token to caller: %{public}@", buf, 0xCu);
    }
  }

  else
  {
    if (v31)
    {
      v38 = objc_msgSend_localizedDescription(v29, v32, v33, v34, v35, v36, v37);
      *buf = 138543362;
      v44 = v38;
      _os_log_impl(&dword_236A42000, v30, OS_LOG_TYPE_INFO, "Returning error to caller: %{public}@", buf, 0xCu);
    }

    if (error)
    {
      v39 = v29;
      *error = v29;
    }
  }

  v40 = *MEMORY[0x277D85DE8];

  return v28;
}

+ (id)setupXPCConnection
{
  v2 = objc_alloc(MEMORY[0x277CCAE80]);
  v7 = objc_msgSend_initWithMachServiceName_options_(v2, v3, @"com.apple.ap.promotedcontent.attributionservice", 4096, v4, v5, v6);
  v13 = objc_msgSend_interfaceWithProtocol_(MEMORY[0x277CCAE90], v8, &unk_2849A8EB8, v9, v10, v11, v12);
  objc_msgSend_setRemoteObjectInterface_(v7, v14, v13, v15, v16, v17, v18);

  objc_msgSend_resume(v7, v19, v20, v21, v22, v23, v24);

  return v7;
}

@end