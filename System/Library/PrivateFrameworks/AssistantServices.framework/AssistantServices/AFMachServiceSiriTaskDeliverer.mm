@interface AFMachServiceSiriTaskDeliverer
+ (id)machServiceSiriTaskDelivererForAppWithBundleIdentifier:(id)identifier;
- (AFMachServiceSiriTaskDeliverer)initWithMachServiceName:(id)name;
- (NSString)description;
- (void)deliverSiriTask:(id)task completionHandler:(id)handler;
@end

@implementation AFMachServiceSiriTaskDeliverer

- (void)deliverSiriTask:(id)task completionHandler:(id)handler
{
  v58 = *MEMORY[0x1E69E9840];
  taskCopy = task;
  handlerCopy = handler;
  v44 = 0;
  v45 = &v44;
  v46 = 0x3032000000;
  v47 = __Block_byref_object_copy__35053;
  v48 = __Block_byref_object_dispose__35054;
  v49 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:self->_machServiceName options:0];
  v8 = v45[5];
  af_siriTaskDeliveringInterface = [MEMORY[0x1E696B0D0] af_siriTaskDeliveringInterface];
  [v8 setRemoteObjectInterface:af_siriTaskDeliveringInterface];

  v42[0] = 0;
  v42[1] = v42;
  v42[2] = 0x2020000000;
  v43 = 0;
  v40[0] = 0;
  v40[1] = v40;
  v40[2] = 0x3032000000;
  v40[3] = __Block_byref_object_copy__35053;
  v40[4] = __Block_byref_object_dispose__35054;
  v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v41 = dispatch_queue_create("Mach Service Task Delivery Completion Handler", v10);

  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __68__AFMachServiceSiriTaskDeliverer_deliverSiriTask_completionHandler___block_invoke;
  v35[3] = &unk_1E73472A0;
  v37 = v40;
  v38 = v42;
  v11 = handlerCopy;
  v36 = v11;
  v39 = &v44;
  v12 = MEMORY[0x193AFB7B0](v35);
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __68__AFMachServiceSiriTaskDeliverer_deliverSiriTask_completionHandler___block_invoke_3;
  v33[3] = &unk_1E73494D8;
  v13 = v12;
  v34 = v13;
  v14 = MEMORY[0x193AFB7B0](v33);
  v15 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 136315906;
    v51 = "[AFMachServiceSiriTaskDeliverer deliverSiriTask:completionHandler:]";
    v52 = 2112;
    selfCopy = self;
    v54 = 2080;
    v55 = "[AFMachServiceSiriTaskDeliverer deliverSiriTask:completionHandler:]";
    v56 = 2112;
    v57 = taskCopy;
    _os_log_impl(&dword_1912FE000, v15, OS_LOG_TYPE_INFO, "%s %@ %s %@", buf, 0x2Au);
  }

  v16 = v45[5];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __68__AFMachServiceSiriTaskDeliverer_deliverSiriTask_completionHandler___block_invoke_36;
  v31[3] = &unk_1E7349838;
  v31[4] = self;
  v17 = v14;
  v32 = v17;
  [v16 setInvalidationHandler:v31];
  v18 = v45[5];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __68__AFMachServiceSiriTaskDeliverer_deliverSiriTask_completionHandler___block_invoke_37;
  v29[3] = &unk_1E7349838;
  v29[4] = self;
  v19 = v17;
  v30 = v19;
  [v18 setInterruptionHandler:v29];
  [v45[5] resume];
  v20 = v45[5];
  v24 = MEMORY[0x1E69E9820];
  v25 = 3221225472;
  v26 = __68__AFMachServiceSiriTaskDeliverer_deliverSiriTask_completionHandler___block_invoke_38;
  v27 = &unk_1E7348AA8;
  v21 = v13;
  v28 = v21;
  v22 = [v20 remoteObjectProxyWithErrorHandler:&v24];
  [v22 deliverSiriTask:taskCopy completionHandler:{v21, v24, v25, v26, v27}];

  _Block_object_dispose(v40, 8);
  _Block_object_dispose(v42, 8);
  _Block_object_dispose(&v44, 8);

  v23 = *MEMORY[0x1E69E9840];
}

void __68__AFMachServiceSiriTaskDeliverer_deliverSiriTask_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(*(a1 + 40) + 8) + 40);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __68__AFMachServiceSiriTaskDeliverer_deliverSiriTask_completionHandler___block_invoke_2;
  v7[3] = &unk_1E7347278;
  v10 = *(a1 + 48);
  v5 = *(a1 + 32);
  v8 = v3;
  v9 = v5;
  v11 = *(a1 + 56);
  v6 = v3;
  dispatch_async(v4, v7);
}

void __68__AFMachServiceSiriTaskDeliverer_deliverSiriTask_completionHandler___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [AFError errorWithCode:701];
  (*(v1 + 16))(v1, v2);
}

uint64_t __68__AFMachServiceSiriTaskDeliverer_deliverSiriTask_completionHandler___block_invoke_36(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v5 = *(*(a1 + 32) + 8);
    v6 = 136315394;
    v7 = "[AFMachServiceSiriTaskDeliverer deliverSiriTask:completionHandler:]_block_invoke";
    v8 = 2114;
    v9 = v5;
    _os_log_error_impl(&dword_1912FE000, v2, OS_LOG_TYPE_ERROR, "%s connection to task service %{public}@ was invalidated", &v6, 0x16u);
  }

  result = (*(*(a1 + 40) + 16))();
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __68__AFMachServiceSiriTaskDeliverer_deliverSiriTask_completionHandler___block_invoke_37(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v5 = *(*(a1 + 32) + 8);
    v6 = 136315394;
    v7 = "[AFMachServiceSiriTaskDeliverer deliverSiriTask:completionHandler:]_block_invoke";
    v8 = 2114;
    v9 = v5;
    _os_log_error_impl(&dword_1912FE000, v2, OS_LOG_TYPE_ERROR, "%s connection to task service %{public}@ was interrupted", &v6, 0x16u);
  }

  result = (*(*(a1 + 40) + 16))();
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

void __68__AFMachServiceSiriTaskDeliverer_deliverSiriTask_completionHandler___block_invoke_38(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v6 = 136315394;
    v7 = "[AFMachServiceSiriTaskDeliverer deliverSiriTask:completionHandler:]_block_invoke";
    v8 = 2114;
    v9 = v3;
    _os_log_error_impl(&dword_1912FE000, v4, OS_LOG_TYPE_ERROR, "%s task service was unable to deliver task: %{public}@", &v6, 0x16u);
  }

  (*(*(a1 + 32) + 16))();

  v5 = *MEMORY[0x1E69E9840];
}

void __68__AFMachServiceSiriTaskDeliverer_deliverSiriTask_completionHandler___block_invoke_2(void *a1)
{
  v2 = *(a1[6] + 8);
  if ((*(v2 + 24) & 1) == 0)
  {
    *(v2 + 24) = 1;
    v4 = a1[4];
    (*(a1[5] + 16))();
    [*(*(a1[7] + 8) + 40) setInvalidationHandler:0];
    [*(*(a1[7] + 8) + 40) setInterruptionHandler:0];
    [*(*(a1[7] + 8) + 40) invalidate];
    v5 = *(a1[7] + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = 0;
  }
}

- (NSString)description
{
  v3 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:@"<"];
  [v3 appendFormat:@"%@: %p; ", objc_opt_class(), self];
  [v3 appendString:@"machServiceName="];
  [v3 appendString:self->_machServiceName];
  [v3 appendString:@">"];

  return v3;
}

- (AFMachServiceSiriTaskDeliverer)initWithMachServiceName:(id)name
{
  nameCopy = name;
  v9.receiver = self;
  v9.super_class = AFMachServiceSiriTaskDeliverer;
  v5 = [(AFMachServiceSiriTaskDeliverer *)&v9 init];
  if (v5)
  {
    v6 = [nameCopy copy];
    machServiceName = v5->_machServiceName;
    v5->_machServiceName = v6;
  }

  return v5;
}

+ (id)machServiceSiriTaskDelivererForAppWithBundleIdentifier:(id)identifier
{
  v4 = [AFSiriTaskService _machServiceNameForAppTaskServiceWithBundleIdentifier:identifier];
  v5 = [[self alloc] initWithMachServiceName:v4];

  return v5;
}

@end