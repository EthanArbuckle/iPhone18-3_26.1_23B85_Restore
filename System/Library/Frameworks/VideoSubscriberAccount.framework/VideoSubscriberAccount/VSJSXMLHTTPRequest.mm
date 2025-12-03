@interface VSJSXMLHTTPRequest
- (VSJSXMLHTTPRequest)init;
- (VSJSXMLHTTPRequest)initWithContext:(id)context;
- (id)getAllResponseHeaders;
- (id)getResponseHeader:(id)header;
- (void)_cancelCurrentRequestAndNotify:(BOOL)notify;
- (void)_notifyWithFunctionName:(id)name eventName:(id)eventName info:(id)info;
- (void)open:(id)open :(id)a4 :(id)a5 :(id)a6 :(id)a7;
- (void)send:(id)send;
- (void)setReadyState:(unint64_t)state;
- (void)setRequestHeader:(id)header :(id)a4;
@end

@implementation VSJSXMLHTTPRequest

- (VSJSXMLHTTPRequest)init
{
  v5.receiver = self;
  v5.super_class = VSJSXMLHTTPRequest;
  v2 = [(VSJSObject *)&v5 init];
  v3 = v2;
  if (v2)
  {
    commonInit(v2);
  }

  return v3;
}

- (VSJSXMLHTTPRequest)initWithContext:(id)context
{
  v6.receiver = self;
  v6.super_class = VSJSXMLHTTPRequest;
  v3 = [(VSJSEventTargetObject *)&v6 initWithContext:context];
  v4 = v3;
  if (v3)
  {
    commonInit(v3);
  }

  return v4;
}

- (void)open:(id)open :(id)a4 :(id)a5 :(id)a6 :(id)a7
{
  openCopy = open;
  v10 = a4;
  v11 = a5;
  v12 = [MEMORY[0x277CBEBC0] URLWithString:v10];
  if (v12)
  {
    if (v11 && ([v11 BOOLValue] & 1) == 0)
    {
      context = [(VSJSObject *)self context];
      [context setExceptionWithMessage:{@"XMLHTTPRequest.open does not support synchronous invocation", v14}];
    }

    else
    {
      context = [objc_alloc(MEMORY[0x277CCAB70]) initWithURL:v12];
      [context setHTTPMethod:openCopy];
      [(VSJSXMLHTTPRequest *)self _cancelCurrentRequestAndNotify:0];
      [(VSJSXMLHTTPRequest *)self setRequest:context];
      [(VSJSXMLHTTPRequest *)self setReadyState:1];
    }
  }

  else
  {
    context = [(VSJSObject *)self context];
    [context setExceptionWithMessage:{@"XMLHTTPRequest.open invoked with invalid URL %@", v10}];
  }
}

- (void)send:(id)send
{
  v20 = *MEMORY[0x277D85DE8];
  sendCopy = send;
  v5 = VSDefaultLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v19 = "[VSJSXMLHTTPRequest send:]";
    _os_log_impl(&dword_23AB8E000, v5, OS_LOG_TYPE_DEFAULT, "Entering %s", buf, 0xCu);
  }

  if ([(VSJSXMLHTTPRequest *)self readyState]== 1)
  {
    if (!sendCopy || ([sendCopy isNull] & 1) != 0 || (objc_msgSend(sendCopy, "isUndefined") & 1) != 0)
    {
      context = 0;
    }

    else
    {
      if (([sendCopy isString] & 1) == 0)
      {
        context = [(VSJSObject *)self context];
        [context setExceptionWithMessage:@"XMLHTTPRequest.send only supports string data"];
        goto LABEL_14;
      }

      context = [sendCopy toString];
      if (context)
      {
        request = [(VSJSXMLHTTPRequest *)self request];
        v14 = [context dataUsingEncoding:4];
        [request setHTTPBody:v14];
      }
    }

    request2 = [(VSJSXMLHTTPRequest *)self request];
    v8 = request2 == 0;

    if (v8)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The [self request] parameter must not be nil."];
    }

    request3 = [(VSJSXMLHTTPRequest *)self request];
    objc_initWeak(&location, self);
    session = [(VSJSXMLHTTPRequest *)self session];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __27__VSJSXMLHTTPRequest_send___block_invoke;
    v15[3] = &unk_278B74F80;
    objc_copyWeak(&v16, &location);
    v15[4] = self;
    v11 = [session dataTaskWithRequest:request3 completionHandler:v15];

    [(VSJSXMLHTTPRequest *)self setSessionTask:v11];
    [v11 resume];
    [(VSJSXMLHTTPRequest *)self setRequestSent:1];
    [(VSJSXMLHTTPRequest *)self setReadyState:3];
    v12 = VSDefaultLogObject();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v19 = "[VSJSXMLHTTPRequest send:]";
      _os_log_impl(&dword_23AB8E000, v12, OS_LOG_TYPE_DEFAULT, "Will exit %s", buf, 0xCu);
    }

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  else
  {
    context = [(VSJSObject *)self context];
    [context setExceptionWithMessage:@"XMLHTTPRequest.setRequestHeader invoked in non-open state"];
  }

LABEL_14:
}

void __27__VSJSXMLHTTPRequest_send___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v24 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = VSDefaultLogObject();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 138412546;
    v21 = v8;
    v22 = 2112;
    v23 = v9;
    _os_log_impl(&dword_23AB8E000, v10, OS_LOG_TYPE_DEFAULT, "Received XHR response: %@ error: %@", &v20, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v12 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained setUrlResponse:v8];
    v13 = [*(a1 + 32) urlResponse];
    [v12 setStatus:{objc_msgSend(v13, "statusCode")}];

    if (!v9)
    {
      if ([v7 length])
      {
        v18 = objc_alloc(MEMORY[0x277CCACA8]);
        if (!v7)
        {
          [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The taskResponseData parameter must not be nil."];
        }

        v19 = [v18 initWithData:v7 encoding:4];
        [v12 setResponseText:v19];
      }

      v16 = @"onload";
      v17 = @"load";
      goto LABEL_15;
    }

    v14 = [v9 domain];
    if ([v14 isEqual:*MEMORY[0x277CCA738]])
    {
      v15 = [v9 code];

      if (v15 == -1001)
      {
        v16 = @"ontimeout";
        v17 = @"timeout";
LABEL_15:
        [v12 _notifyWithFunctionName:v16 eventName:v17 info:MEMORY[0x277CBEC10]];
        [v12 setRequest:0];
        [v12 setRequestSent:0];
        [v12 setSessionTask:0];
        [v12 setReadyState:4];
        goto LABEL_16;
      }
    }

    else
    {
    }

    v16 = @"onerror";
    v17 = @"error";
    goto LABEL_15;
  }

LABEL_16:
}

- (id)getAllResponseHeaders
{
  if ([(VSJSXMLHTTPRequest *)self readyState]== 4)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    urlResponse = [(VSJSXMLHTTPRequest *)self urlResponse];
    allHeaderFields = [urlResponse allHeaderFields];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __43__VSJSXMLHTTPRequest_getAllResponseHeaders__block_invoke;
    v10[3] = &unk_278B74FA8;
    v11 = v3;
    v6 = v3;
    [allHeaderFields enumerateKeysAndObjectsUsingBlock:v10];

    v7 = [v6 componentsJoinedByString:@"\r\n"];
  }

  else
  {
    context = [(VSJSObject *)self context];
    [context setExceptionWithMessage:@"XMLHTTPRequest.getAllResponseHeaders invoked before request completed"];

    v7 = 0;
  }

  return v7;
}

void __43__VSJSXMLHTTPRequest_getAllResponseHeaders__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = MEMORY[0x277CCACA8];
  v6 = a3;
  v8 = [a2 lowercaseString];
  v7 = [v5 stringWithFormat:@"%@: %@", v8, v6];

  [v4 addObject:v7];
}

- (id)getResponseHeader:(id)header
{
  headerCopy = header;
  if ([(VSJSXMLHTTPRequest *)self readyState]== 4)
  {
    urlResponse = [(VSJSXMLHTTPRequest *)self urlResponse];
    allHeaderFields = [urlResponse allHeaderFields];
    v7 = [allHeaderFields objectForKey:headerCopy];
  }

  else
  {
    urlResponse = [(VSJSObject *)self context];
    [urlResponse setExceptionWithMessage:@"XMLHTTPRequest.getResponseHeader invoked before request completed"];
    v7 = 0;
  }

  return v7;
}

- (void)setRequestHeader:(id)header :(id)a4
{
  headerCopy = header;
  v6 = a4;
  if ([(VSJSXMLHTTPRequest *)self readyState]!= 1)
  {
    context = [(VSJSObject *)self context];
    request = context;
    v9 = @"XMLHTTPRequest.setRequestHeader invoked in non-open state";
    goto LABEL_11;
  }

  if ([(VSJSXMLHTTPRequest *)self requestSent])
  {
    context = [(VSJSObject *)self context];
    request = context;
    v9 = @"XMLHTTPRequest.setRequestHeader invoked after send";
LABEL_11:
    [context setExceptionWithMessage:v9];
    goto LABEL_12;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    context = [(VSJSObject *)self context];
    request = context;
    v9 = @"XMLHTTPRequest.setRequestHeader invoked with invalid header or value";
    goto LABEL_11;
  }

  request = [(VSJSXMLHTTPRequest *)self request];
  if (!request)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The request parameter must not be nil."];
  }

  request2 = [(VSJSXMLHTTPRequest *)self request];
  [request2 setValue:v6 forHTTPHeaderField:headerCopy];

LABEL_12:
}

- (void)setReadyState:(unint64_t)state
{
  if (self->_readyState != state)
  {
    self->_readyState = state;
    [(VSJSXMLHTTPRequest *)self _notifyWithFunctionName:@"onreadystatechange" eventName:@"readystatechange" info:MEMORY[0x277CBEC10]];
  }
}

- (void)_cancelCurrentRequestAndNotify:(BOOL)notify
{
  notifyCopy = notify;
  sessionTask = [(VSJSXMLHTTPRequest *)self sessionTask];
  v6 = sessionTask;
  if (sessionTask)
  {
    [sessionTask cancel];
    [(VSJSXMLHTTPRequest *)self setRequest:0];
    [(VSJSXMLHTTPRequest *)self setRequestSent:0];
    [(VSJSXMLHTTPRequest *)self setSessionTask:0];
    if (notifyCopy)
    {
      objc_initWeak(&location, self);
      context = [(VSJSObject *)self context];
      v8 = MEMORY[0x277D85DD0];
      v9 = 3221225472;
      v10 = __53__VSJSXMLHTTPRequest__cancelCurrentRequestAndNotify___block_invoke;
      v11 = &unk_278B74FD0;
      objc_copyWeak(&v12, &location);
      [context evaluateWithBlock:&v8];

      objc_destroyWeak(&v12);
      objc_destroyWeak(&location);
    }

    [(VSJSXMLHTTPRequest *)self setReadyState:0, v8, v9, v10, v11];
  }
}

void __53__VSJSXMLHTTPRequest__cancelCurrentRequestAndNotify___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _notifyWithFunctionName:@"onerror" eventName:@"error" info:MEMORY[0x277CBEC10]];
    WeakRetained = v2;
  }
}

- (void)_notifyWithFunctionName:(id)name eventName:(id)eventName info:(id)info
{
  v23 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  eventNameCopy = eventName;
  infoCopy = info;
  v11 = VSDefaultLogObject();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v22 = "[VSJSXMLHTTPRequest _notifyWithFunctionName:eventName:info:]";
    _os_log_impl(&dword_23AB8E000, v11, OS_LOG_TYPE_DEFAULT, "Entering %s", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  context = [(VSJSObject *)self context];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __61__VSJSXMLHTTPRequest__notifyWithFunctionName_eventName_info___block_invoke;
  v16[3] = &unk_278B74FF8;
  objc_copyWeak(&v20, buf);
  v13 = eventNameCopy;
  v17 = v13;
  v14 = infoCopy;
  v18 = v14;
  v15 = nameCopy;
  v19 = v15;
  [context evaluateWithBlock:v16];

  objc_destroyWeak(&v20);
  objc_destroyWeak(buf);
}

void __61__VSJSXMLHTTPRequest__notifyWithFunctionName_eventName_info___block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained dispatchEvent:*(a1 + 32) withInfo:*(a1 + 40)];
    v6 = MEMORY[0x277CD4658];
    v7 = [v3 context];
    v8 = [v6 valueWithObject:v5 inContext:v7];

    if (!v8)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The thisValue parameter must not be nil."];
    }

    v9 = VSDefaultLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 48);
      v11 = *(a1 + 32);
      *buf = 138412546;
      v19 = v10;
      v20 = 2112;
      v21 = v11;
      _os_log_impl(&dword_23AB8E000, v9, OS_LOG_TYPE_DEFAULT, "Will invoke method %@ for event with name %@", buf, 0x16u);
    }

    v12 = [v8 objectForKeyedSubscript:*(a1 + 48)];
    v13 = v12;
    if (v12 && ([v12 isNull] & 1) == 0 && (objc_msgSend(v13, "isUndefined") & 1) == 0)
    {
      v14 = *(a1 + 48);
      v17 = *(a1 + 40);
      v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v17 count:1];
      v16 = [v8 invokeMethod:v14 withArguments:v15];
    }
  }
}

@end