@interface HMSettingsMessageHandler
- (void)configureWithContext:(id)a3;
- (void)sendUpdateValueMessage:(id)a3 value:(id)a4 completionHandler:(id)a5;
@end

@implementation HMSettingsMessageHandler

- (void)sendUpdateValueMessage:(id)a3 value:(id)a4 completionHandler:(id)a5
{
  v60 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v12 = v10;
  if (!self)
  {
    if (v10)
    {
      goto LABEL_6;
    }

LABEL_10:
    v40 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMSettingsMessageHandler sendUpdateValueMessage:value:completionHandler:]", @"completionHandler"];
    v41 = objc_autoreleasePoolPush();
    v42 = self;
    v43 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      v44 = HMFGetLogIdentifier();
      *buf = 138543618;
      v57 = v44;
      v58 = 2112;
      v59 = v40;
      _os_log_impl(&dword_19BB39000, v43, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v41);
    v45 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v40 userInfo:0];
    objc_exception_throw(v45);
  }

  v13 = objc_getProperty(self, v11, 8, 1);
  if (!v12)
  {
    goto LABEL_10;
  }

  v15 = v13;
  if (v13)
  {
    v52[0] = @"value";
    v52[1] = @"keyPath";
    v53[0] = v9;
    v53[1] = v8;
    v52[2] = @"SettingTargetType";
    Property = objc_getProperty(self, v14, 32, 1);
    v52[3] = @"kUserUUIDKey";
    v16 = Property;
    v55 = objc_getProperty(self, v17, 24, 1);
    v18 = MEMORY[0x1E695DF20];
    v19 = v55;
    v20 = [v18 dictionaryWithObjects:v53 forKeys:v52 count:4];

    v21 = MEMORY[0x1E69A2A10];
    v22 = objc_alloc(MEMORY[0x1E69A2A00]);
    v24 = [v22 initWithTarget:{objc_getProperty(self, v23, 16, 1)}];
    v25 = [v21 messageWithName:@"HMS.uv" destination:v24 payload:v20];

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __75__HMSettingsMessageHandler_sendUpdateValueMessage_value_completionHandler___block_invoke;
    aBlock[3] = &unk_1E75487B8;
    v51 = v12;
    v26 = _Block_copy(aBlock);
    v28 = [objc_getProperty(self v27];
    v29 = [v25 identifier];
    v30 = _Block_copy(v26);
    [v28 addCompletionBlock:v30 forIdentifier:v29];

    v46[0] = MEMORY[0x1E69E9820];
    v46[1] = 3221225472;
    v46[2] = __75__HMSettingsMessageHandler_sendUpdateValueMessage_value_completionHandler___block_invoke_2;
    v46[3] = &unk_1E754E480;
    v47 = v28;
    v48 = v29;
    v49 = v26;
    v31 = v26;
    v32 = v29;
    v33 = v28;
    [v25 setResponseHandler:v46];
    v34 = [v15 messageDispatcher];
    [v34 sendMessage:v25 completionHandler:0];

    goto LABEL_9;
  }

LABEL_6:
  v35 = objc_autoreleasePoolPush();
  v36 = self;
  v37 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
  {
    v38 = HMFGetLogIdentifier();
    *buf = 138543618;
    v57 = v38;
    v58 = 2080;
    v59 = "[HMSettingsMessageHandler sendUpdateValueMessage:value:completionHandler:]";
    _os_log_impl(&dword_19BB39000, v37, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v35);
  v15 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
  (v12)[2](v12, v15);
LABEL_9:

  v39 = *MEMORY[0x1E69E9840];
}

void __75__HMSettingsMessageHandler_sendUpdateValueMessage_value_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [*(a1 + 32) removeCompletionBlockForIdentifier:*(a1 + 40)];
  if (v3)
  {
    (*(*(a1 + 48) + 16))();
  }
}

- (void)configureWithContext:(id)a3
{
  if (self)
  {
    objc_setProperty_atomic(self, a2, a3, 8);
  }
}

@end