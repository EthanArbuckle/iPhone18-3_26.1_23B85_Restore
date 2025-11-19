@interface AFSiriTask
+ (void)initialize;
- (AFSiriTask)initWithBSXPCCoder:(id)a3;
- (AFSiriTask)initWithCoder:(id)a3;
- (NSString)description;
- (id)_initWithRequest:(id)a3 remoteResponseListenerEndpoint:(id)a4 usageResultListenerEndpoint:(id)a5;
- (id)_responseHandlerConnection;
- (id)_usageResultHandlerConnection;
- (void)_invalidateConnectionAfterMessageSent:(id)a3;
- (void)completeWithResponse:(id)a3;
- (void)dealloc;
- (void)encodeWithBSXPCCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)failWithError:(id)a3;
- (void)reportUsageResult:(id)a3;
@end

@implementation AFSiriTask

- (AFSiriTask)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Request"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"RemoteResponseListenerEndpoint"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"RemoteUsageResultListenerEndpoint"];

  v8 = [(AFSiriTask *)self _initWithRequest:v5 remoteResponseListenerEndpoint:v6 usageResultListenerEndpoint:v7];
  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  request = self->_request;
  v5 = a3;
  [v5 encodeObject:request forKey:@"Request"];
  [v5 encodeObject:self->_remoteResponseListenerEndpoint forKey:@"RemoteResponseListenerEndpoint"];
  [v5 encodeObject:self->_usageResultListenerEndpoint forKey:@"RemoteUsageResultListenerEndpoint"];
}

- (AFSiriTask)initWithBSXPCCoder:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Request"];
  if (!v5)
  {
    v6 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      *v26 = 136315138;
      *&v26[4] = "[AFSiriTask initWithBSXPCCoder:]";
      _os_log_error_impl(&dword_1912FE000, v6, OS_LOG_TYPE_ERROR, "%s the encoded request failed to decode", v26, 0xCu);
    }
  }

  v7 = MEMORY[0x1E69E9E90];
  v8 = [v4 decodeXPCObjectOfType:MEMORY[0x1E69E9E90] forKey:@"RemoteResponseListenerEndpoint"];
  v9 = v8;
  if (!v8)
  {
    v10 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      *v26 = 136315394;
      *&v26[4] = "[AFSiriTask initWithBSXPCCoder:]";
      *&v26[12] = 2114;
      *&v26[14] = 0;
      v11 = "%s no encoded response endpoint: %{public}@";
      goto LABEL_20;
    }

LABEL_9:
    v12 = 0;
    goto LABEL_11;
  }

  if (MEMORY[0x193AFBC20](v8) != v7)
  {
    v10 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      *v26 = 136315394;
      *&v26[4] = "[AFSiriTask initWithBSXPCCoder:]";
      *&v26[12] = 2114;
      *&v26[14] = v9;
      v11 = "%s the encoded response endpoint is in an unexpected format: %{public}@";
LABEL_20:
      _os_log_error_impl(&dword_1912FE000, v10, OS_LOG_TYPE_ERROR, v11, v26, 0x16u);
      goto LABEL_9;
    }

    goto LABEL_9;
  }

  v13 = MEMORY[0x1E696B0E0];
  v14 = v9;
  v12 = objc_alloc_init(v13);
  [v12 _setEndpoint:v14];

LABEL_11:
  v15 = MEMORY[0x1E69E9E90];
  v16 = [v4 decodeXPCObjectOfType:MEMORY[0x1E69E9E90] forKey:{@"RemoteUsageResultListenerEndpoint", *v26, *&v26[16], v27}];
  v17 = v16;
  if (v16)
  {
    if (MEMORY[0x193AFBC20](v16) == v15)
    {
      v21 = MEMORY[0x1E696B0E0];
      v22 = v17;
      v20 = objc_alloc_init(v21);
      [v20 _setEndpoint:v22];

      goto LABEL_18;
    }

    v18 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      *v26 = 136315394;
      *&v26[4] = "[AFSiriTask initWithBSXPCCoder:]";
      *&v26[12] = 2114;
      *&v26[14] = v17;
      v19 = "%s the encoded usage results endpoint is in an unexpected format: %{public}@";
LABEL_22:
      _os_log_error_impl(&dword_1912FE000, v18, OS_LOG_TYPE_ERROR, v19, v26, 0x16u);
    }
  }

  else
  {
    v18 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      *v26 = 136315394;
      *&v26[4] = "[AFSiriTask initWithBSXPCCoder:]";
      *&v26[12] = 2114;
      *&v26[14] = 0;
      v19 = "%s no encoded usage results endpoint: %{public}@";
      goto LABEL_22;
    }
  }

  v20 = 0;
LABEL_18:
  v23 = [(AFSiriTask *)self _initWithRequest:v5 remoteResponseListenerEndpoint:v12 usageResultListenerEndpoint:v20, *v26, *&v26[8]];

  v24 = *MEMORY[0x1E69E9840];
  return v23;
}

- (void)encodeWithBSXPCCoder:(id)a3
{
  v4 = a3;
  request = self->_request;
  v11 = v4;
  if (request)
  {
    [v4 encodeObject:request forKey:@"Request"];
  }

  remoteResponseListenerEndpoint = self->_remoteResponseListenerEndpoint;
  if (remoteResponseListenerEndpoint)
  {
    v7 = [(NSXPCListenerEndpoint *)remoteResponseListenerEndpoint _endpoint];
    [v11 encodeXPCObject:v7 forKey:@"RemoteResponseListenerEndpoint"];
  }

  usageResultListenerEndpoint = self->_usageResultListenerEndpoint;
  v9 = v11;
  if (usageResultListenerEndpoint)
  {
    v10 = [(NSXPCListenerEndpoint *)usageResultListenerEndpoint _endpoint];
    [v11 encodeXPCObject:v10 forKey:@"RemoteUsageResultListenerEndpoint"];

    v9 = v11;
  }
}

- (void)reportUsageResult:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v13 = "[AFSiriTask reportUsageResult:]";
    v14 = 2112;
    v15 = v4;
    _os_log_impl(&dword_1912FE000, v5, OS_LOG_TYPE_INFO, "%s %@", buf, 0x16u);
  }

  v6 = [(AFSiriTask *)self _usageResultHandlerConnection];
  objc_initWeak(buf, self);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __32__AFSiriTask_reportUsageResult___block_invoke;
  v10[3] = &unk_1E7349738;
  objc_copyWeak(&v11, buf);
  v7 = [v6 remoteObjectProxyWithErrorHandler:v10];
  [v7 handleSiriTaskUsageResult:v4 fromRequest:self->_request];
  [(AFSiriTask *)self _invalidateConnectionAfterMessageSent:v6];
  usageResultListenerEndpoint = self->_usageResultListenerEndpoint;
  self->_usageResultListenerEndpoint = 0;

  objc_destroyWeak(&v11);
  objc_destroyWeak(buf);

  v9 = *MEMORY[0x1E69E9840];
}

void __32__AFSiriTask_reportUsageResult___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v6 = v4;
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v8 = 136315650;
    v9 = "[AFSiriTask reportUsageResult:]_block_invoke";
    v10 = 2112;
    v11 = WeakRetained;
    v12 = 2114;
    v13 = v3;
    _os_log_error_impl(&dword_1912FE000, v6, OS_LOG_TYPE_ERROR, "%s Task %@ unable to communicate usage results to handler: %{public}@", &v8, 0x20u);
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (id)_usageResultHandlerConnection
{
  v2 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithListenerEndpoint:self->_usageResultListenerEndpoint];
  v3 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F059A298];
  [v2 setRemoteObjectInterface:v3];

  [v2 resume];

  return v2;
}

- (void)completeWithResponse:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = mach_absolute_time();
  v6 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v14 = "[AFSiriTask completeWithResponse:]";
    v15 = 2112;
    v16 = v4;
    _os_log_impl(&dword_1912FE000, v6, OS_LOG_TYPE_INFO, "%s %@", buf, 0x16u);
  }

  v7 = [(AFSiriTask *)self _responseHandlerConnection];
  objc_initWeak(buf, self);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __35__AFSiriTask_completeWithResponse___block_invoke;
  v11[3] = &unk_1E7349738;
  objc_copyWeak(&v12, buf);
  v8 = [v7 remoteObjectProxyWithErrorHandler:v11];
  [v8 handleSiriResponse:v4 atTime:v5];
  [(AFSiriTask *)self _invalidateConnectionAfterMessageSent:v7];
  remoteResponseListenerEndpoint = self->_remoteResponseListenerEndpoint;
  self->_remoteResponseListenerEndpoint = 0;

  objc_destroyWeak(&v12);
  objc_destroyWeak(buf);

  v10 = *MEMORY[0x1E69E9840];
}

void __35__AFSiriTask_completeWithResponse___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v6 = v4;
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v8 = 136315650;
    v9 = "[AFSiriTask completeWithResponse:]_block_invoke";
    v10 = 2112;
    v11 = WeakRetained;
    v12 = 2114;
    v13 = v3;
    _os_log_error_impl(&dword_1912FE000, v6, OS_LOG_TYPE_ERROR, "%s Task %@ completed, but was unable to communicate that to the response handler: %{public}@", &v8, 0x20u);
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (void)failWithError:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = mach_absolute_time();
  v6 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    *location = 136315394;
    *&location[4] = "[AFSiriTask failWithError:]";
    v19 = 2114;
    v20 = v4;
    _os_log_error_impl(&dword_1912FE000, v6, OS_LOG_TYPE_ERROR, "%s %{public}@", location, 0x16u);
  }

  v7 = [(AFSiriTask *)self _responseHandlerConnection];
  objc_initWeak(location, self);
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __28__AFSiriTask_failWithError___block_invoke;
  v15 = &unk_1E7349710;
  objc_copyWeak(&v17, location);
  v8 = v4;
  v16 = v8;
  v9 = [v7 remoteObjectProxyWithErrorHandler:&v12];
  [v9 handleFailureOfRequest:self->_request error:v8 atTime:{v5, v12, v13, v14, v15}];
  [(AFSiriTask *)self _invalidateConnectionAfterMessageSent:v7];
  remoteResponseListenerEndpoint = self->_remoteResponseListenerEndpoint;
  self->_remoteResponseListenerEndpoint = 0;

  objc_destroyWeak(&v17);
  objc_destroyWeak(location);

  v11 = *MEMORY[0x1E69E9840];
}

void __28__AFSiriTask_failWithError___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v6 = v4;
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v8 = *(a1 + 32);
    v9 = 136315906;
    v10 = "[AFSiriTask failWithError:]_block_invoke";
    v11 = 2112;
    v12 = WeakRetained;
    v13 = 2114;
    v14 = v8;
    v15 = 2114;
    v16 = v3;
    _os_log_error_impl(&dword_1912FE000, v6, OS_LOG_TYPE_ERROR, "%s Task %@ failed with error %{public}@, but was unable to communicate that to the response handler: %{public}@", &v9, 0x2Au);
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (void)_invalidateConnectionAfterMessageSent:(id)a3
{
  v3 = a3;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __52__AFSiriTask__invalidateConnectionAfterMessageSent___block_invoke;
  v5[3] = &unk_1E73497C8;
  v6 = v3;
  v4 = v3;
  [v4 addBarrierBlock:v5];
}

- (id)_responseHandlerConnection
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithListenerEndpoint:self->_remoteResponseListenerEndpoint];
  v4 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F0578F48];
  [v3 setRemoteObjectInterface:v4];

  [v3 resume];
  if (!v3)
  {
    v5 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      remoteResponseListenerEndpoint = self->_remoteResponseListenerEndpoint;
      v9 = 136315394;
      v10 = "[AFSiriTask _responseHandlerConnection]";
      v11 = 2112;
      v12 = remoteResponseListenerEndpoint;
      _os_log_error_impl(&dword_1912FE000, v5, OS_LOG_TYPE_ERROR, "%s Fatal error sending response - couldn't make XPC connection from endpoint: %@", &v9, 0x16u);
    }
  }

  v6 = *MEMORY[0x1E69E9840];

  return v3;
}

- (NSString)description
{
  v3 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:@"<"];
  v4 = [objc_opt_class() description];
  [v3 appendString:v4];

  [v3 appendFormat:@": %p;", self];
  [v3 appendString:@" request="];
  v5 = [(AFSiriRequest *)self->_request description];
  [v3 appendString:v5];

  [v3 appendString:@">"];

  return v3;
}

- (void)dealloc
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v7 = "[AFSiriTask dealloc]";
    v8 = 2048;
    v9 = self;
    _os_log_impl(&dword_1912FE000, v3, OS_LOG_TYPE_INFO, "%s <AFSiriTask %p>", buf, 0x16u);
  }

  v5.receiver = self;
  v5.super_class = AFSiriTask;
  [(AFSiriTask *)&v5 dealloc];
  v4 = *MEMORY[0x1E69E9840];
}

- (id)_initWithRequest:(id)a3 remoteResponseListenerEndpoint:(id)a4 usageResultListenerEndpoint:(id)a5
{
  v22 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v19 = "[AFSiriTask _initWithRequest:remoteResponseListenerEndpoint:usageResultListenerEndpoint:]";
    v20 = 2048;
    v21 = self;
    _os_log_impl(&dword_1912FE000, v12, OS_LOG_TYPE_INFO, "%s <AFSiriTask %p>", buf, 0x16u);
  }

  v17.receiver = self;
  v17.super_class = AFSiriTask;
  v13 = [(AFSiriTask *)&v17 init];
  p_isa = &v13->super.isa;
  if (v13)
  {
    objc_storeStrong(&v13->_request, a3);
    objc_storeStrong(p_isa + 2, a4);
    objc_storeStrong(p_isa + 3, a5);
  }

  v15 = *MEMORY[0x1E69E9840];
  return p_isa;
}

+ (void)initialize
{
  if (AFLogInitIfNeeded_once != -1)
  {
    dispatch_once(&AFLogInitIfNeeded_once, &__block_literal_global_2942);
  }
}

@end