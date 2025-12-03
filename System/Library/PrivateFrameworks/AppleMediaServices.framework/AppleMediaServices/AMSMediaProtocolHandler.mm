@interface AMSMediaProtocolHandler
- (AMSMediaProtocolHandler)initWithTokenService:(id)service;
- (void)handleResponse:(id)response task:(id)task completionHandler:(id)handler;
- (void)reconfigureNewRequest:(id)request originalTask:(id)task redirect:(BOOL)redirect completionHandler:(id)handler;
@end

@implementation AMSMediaProtocolHandler

- (AMSMediaProtocolHandler)initWithTokenService:(id)service
{
  v28 = *MEMORY[0x1E69E9840];
  serviceCopy = service;
  if (!serviceCopy)
  {
    v7 = +[AMSUnitTests isRunningUnitTests];
    v8 = +[AMSLogConfig sharedMediaConfig];
    defaultCenter = v8;
    if (v7)
    {
      if (!v8)
      {
        defaultCenter = +[AMSLogConfig sharedConfig];
      }

      oSLogObject = [defaultCenter OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
      {
        v11 = AMSLogKey();
        v12 = MEMORY[0x1E696AEC0];
        objc_opt_class();
        v13 = objc_opt_class();
        v14 = v13;
        if (v11)
        {
          v3 = AMSLogKey();
          [v12 stringWithFormat:@"%@: [%@] ", v14, v3];
        }

        else
        {
          [v12 stringWithFormat:@"%@: ", v13];
        }
        v15 = ;
        *buf = 138543362;
        v27 = v15;
        _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@Expected a token service to be provided. The initialized instance will be unable to fetch media tokens.", buf, 0xCu);
        if (v11)
        {

          v15 = v3;
        }
      }

      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      oSLogObject2 = +[AMSLogConfig sharedMediaConfig];
      [defaultCenter postNotificationName:@"com.apple.AppleMediaServicesTests.FaultLogged" object:oSLogObject2 userInfo:0];
    }

    else
    {
      if (!v8)
      {
        defaultCenter = +[AMSLogConfig sharedConfig];
      }

      oSLogObject2 = [defaultCenter OSLogObject];
      if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_FAULT))
      {
        v17 = AMSLogKey();
        v18 = MEMORY[0x1E696AEC0];
        objc_opt_class();
        v19 = objc_opt_class();
        v20 = v19;
        if (v17)
        {
          v3 = AMSLogKey();
          [v18 stringWithFormat:@"%@: [%@] ", v20, v3];
        }

        else
        {
          [v18 stringWithFormat:@"%@: ", v19];
        }
        v21 = ;
        *buf = 138543362;
        v27 = v21;
        _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_FAULT, "%{public}@Expected a token service to be provided. The initialized instance will be unable to fetch media tokens.", buf, 0xCu);
        if (v17)
        {

          v21 = v3;
        }
      }
    }
  }

  v25.receiver = self;
  v25.super_class = AMSMediaProtocolHandler;
  v22 = [(AMSURLProtocolHandler *)&v25 init];
  v23 = v22;
  if (v22)
  {
    objc_storeStrong(&v22->_tokenService, service);
  }

  return v23;
}

- (void)handleResponse:(id)response task:(id)task completionHandler:(id)handler
{
  responseCopy = response;
  taskCopy = task;
  handlerCopy = handler;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __65__AMSMediaProtocolHandler_handleResponse_task_completionHandler___block_invoke;
  v15[3] = &unk_1E73B8D70;
  v16 = taskCopy;
  v17 = responseCopy;
  selfCopy = self;
  v19 = handlerCopy;
  v14.receiver = self;
  v14.super_class = AMSMediaProtocolHandler;
  v11 = handlerCopy;
  v12 = responseCopy;
  v13 = taskCopy;
  [(AMSURLProtocolHandler *)&v14 handleResponse:v12 task:v13 completionHandler:v15];
}

void __65__AMSMediaProtocolHandler_handleResponse_task_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [AMSURLTaskInfo taskInfoForTask:*(a1 + 32)];
  v5 = v4;
  if (v3 || ([v4 properties], v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "userInfo"), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "objectForKeyedSubscript:", 0x1F072E758), v10 = objc_claimAutoreleasedReturnValue(), v10, v9, v8, !v10))
  {
    v6 = [[AMSOptional alloc] initWithValue:v3];
    v7 = [AMSPromise promiseWithResult:v6];
  }

  else
  {
    v11 = *(a1 + 40);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v11;
    }

    else
    {
      v6 = 0;
    }

    v12 = [*(a1 + 40) ams_valueForHTTPHeaderField:@"WWW-Authenticate"];
    v13 = [*(a1 + 40) ams_valueForHTTPHeaderField:@"X-Apple-Invoke-Auth"];

    if (v13)
    {
      v14 = +[AMSMediaInvokeAuthenticationCoordinator sharedInstance];
      v7 = [v14 performAuthFromResponse:*(a1 + 40) taskInfo:v5];
    }

    else if ([(AMSOptional *)v6 statusCode]== 401 || [(AMSOptional *)v6 statusCode]== 403)
    {
      v15 = [*(a1 + 48) tokenService];
      [v15 invalidateMediaToken];

      v16 = [*(a1 + 48) tokenService];
      if ([v16 conformsToProtocol:&unk_1F07A3F50])
      {
        v14 = v16;
      }

      else
      {
        v14 = 0;
      }

      v17 = _os_feature_enabled_impl();
      if (v14 && v17)
      {
        [v14 invalidatePATMediaToken];
        [v14 setPrivateAccessTokenChallenge:v12];
      }

      v18 = +[AMSURLAction retryAction];
      v19 = [AMSOptional optionalWithValue:v18];
      v7 = [AMSPromise promiseWithResult:v19];
    }

    else
    {
      v20 = [[AMSOptional alloc] initWithValue:0];
      v7 = [AMSPromise promiseWithResult:v20];

      v21 = [*(a1 + 48) tokenService];
      v14 = 0;
      if ([v21 conformsToProtocol:&unk_1F07A3F50])
      {
        v14 = v21;
      }

      v22 = _os_feature_enabled_impl();
      if (v14 && v22 && v12)
      {
        [v14 setPrivateAccessTokenChallenge:v12];
        v23 = [v14 fetchMediaToken:1];
      }
    }
  }

  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __65__AMSMediaProtocolHandler_handleResponse_task_completionHandler___block_invoke_2;
  v24[3] = &unk_1E73B7FF8;
  v25 = *(a1 + 56);
  [v7 addFinishBlock:v24];
}

void __65__AMSMediaProtocolHandler_handleResponse_task_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 value];
  (*(v2 + 16))(v2, v3);
}

- (void)reconfigureNewRequest:(id)request originalTask:(id)task redirect:(BOOL)redirect completionHandler:(id)handler
{
  redirectCopy = redirect;
  taskCopy = task;
  handlerCopy = handler;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __89__AMSMediaProtocolHandler_reconfigureNewRequest_originalTask_redirect_completionHandler___block_invoke;
  v15[3] = &unk_1E73B8DC0;
  v16 = taskCopy;
  selfCopy = self;
  v18 = handlerCopy;
  v14.receiver = self;
  v14.super_class = AMSMediaProtocolHandler;
  v12 = handlerCopy;
  v13 = taskCopy;
  [(AMSURLProtocolHandler *)&v14 reconfigureNewRequest:request originalTask:v13 redirect:redirectCopy completionHandler:v15];
}

void __89__AMSMediaProtocolHandler_reconfigureNewRequest_originalTask_redirect_completionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [AMSURLTaskInfo taskInfoForTask:*(a1 + 32)];
  v7 = [AMSPromise promiseWithResult:v5];
  if (!a3)
  {
    v8 = [v6 properties];
    v9 = [v8 userInfo];
    v10 = [v9 objectForKeyedSubscript:0x1F072E758];

    if (v10)
    {
      v11 = [*(a1 + 40) tokenService];

      if (v11)
      {
        v12 = [*(a1 + 40) tokenService];
        v13 = [v12 fetchMediaToken];
        v14 = [v13 promiseWithTimeout:60.0];
        v20[0] = MEMORY[0x1E69E9820];
        v20[1] = 3221225472;
        v20[2] = __89__AMSMediaProtocolHandler_reconfigureNewRequest_originalTask_redirect_completionHandler___block_invoke_2;
        v20[3] = &unk_1E73B8D98;
        v15 = v6;
        v16 = *(a1 + 40);
        v21 = v15;
        v22 = v16;
        v23 = v5;
        v17 = [v14 continueWithBlock:v20];

        v7 = v17;
      }

      else
      {
        v18 = AMSError(0, @"Could not fetch media token", @"No token service was available", 0);
        v19 = [AMSPromise promiseWithError:v18];

        v7 = v19;
      }
    }
  }

  [v7 addFinishBlock:*(a1 + 48)];
}

id __89__AMSMediaProtocolHandler_reconfigureNewRequest_originalTask_redirect_completionHandler___block_invoke_2(id *a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (a2)
  {
    v7 = [a2 tokenString];
    v8 = [@"Bearer " stringByAppendingString:v7];

    v9 = [a1[6] mutableCopy];
    [v9 setValue:v8 forHTTPHeaderField:0x1F072F1B8];
    v10 = [AMSPromise promiseWithResult:v9];
  }

  else
  {
    v11 = +[AMSLogConfig sharedMediaConfig];
    if (!v11)
    {
      v11 = +[AMSLogConfig sharedConfig];
    }

    v12 = [v11 OSLogObject];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [a1[4] properties];
      v14 = [v13 logUUID];
      v15 = MEMORY[0x1E696AEC0];
      v16 = objc_opt_class();
      v17 = v16;
      if (v14)
      {
        a1 = [a1[4] properties];
        v3 = [a1 logUUID];
        [v15 stringWithFormat:@"%@: [%@] ", v17, v3];
      }

      else
      {
        [v15 stringWithFormat:@"%@: ", v16];
      }
      v18 = ;
      *buf = 138543618;
      v21 = v18;
      v22 = 2048;
      v23 = [v6 code];
      _os_log_impl(&dword_192869000, v12, OS_LOG_TYPE_ERROR, "%{public}@We weren't provided a media token. Error code: %ld.", buf, 0x16u);
      if (v14)
      {

        v18 = a1;
      }
    }

    v10 = [AMSPromise promiseWithError:v6];
  }

  return v10;
}

@end