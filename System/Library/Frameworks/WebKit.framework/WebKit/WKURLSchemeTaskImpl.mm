@interface WKURLSchemeTaskImpl
- (WKFrameInfo)_frame;
- (WKURLSchemeTaskImpl)init;
- (uint64_t)_didPerformRedirection:(WTF *)this newRequest:(void *)request;
- (uint64_t)_didPerformRedirection:(uint64_t)redirection newRequest:;
- (uint64_t)_willPerformRedirection:(uint64_t)redirection newRequest:completionHandler:;
- (uint64_t)_willPerformRedirection:newRequest:completionHandler:;
- (uint64_t)didFailWithError:(WTF *)this;
- (uint64_t)didFailWithError:(uint64_t)error;
- (uint64_t)didFinish;
- (uint64_t)didReceiveData:(WTF *)this;
- (uint64_t)didReceiveData:(uint64_t)data;
- (uint64_t)didReceiveResponse:(WTF *)this;
- (uint64_t)didReceiveResponse:(uint64_t)response;
- (void)_didPerformRedirection:(id)redirection newRequest:(id)request;
- (void)_didPerformRedirection:(void *)redirection newRequest:;
- (void)_willPerformRedirection:(id)redirection newRequest:(id)request completionHandler:(id)handler;
- (void)dealloc;
- (void)didFailWithError:(id)error;
- (void)didFailWithError:(void *)error;
- (void)didFinish;
- (void)didReceiveData:(id)data;
- (void)didReceiveData:(void *)data;
- (void)didReceiveResponse:(id)response;
- (void)didReceiveResponse:(void *)response;
@end

@implementation WKURLSchemeTaskImpl

- (WKURLSchemeTaskImpl)init
{
  result = 80;
  __break(0xC471u);
  return result;
}

- (void)dealloc
{
  v3 = objc_opt_class();
  if ((WebCoreObjCScheduleDeallocateOnMainRunLoop(v3, self) & 1) == 0)
  {
    WebKit::WebURLSchemeTask::~WebURLSchemeTask(&self->_urlSchemeTask, v4);
    v5.receiver = self;
    v5.super_class = WKURLSchemeTaskImpl;
    [(WKURLSchemeTaskImpl *)&v5 dealloc];
  }
}

- (void)_willPerformRedirection:(id)redirection newRequest:(id)request completionHandler:(id)handler
{
  if (self)
  {
    selfCopy = self;
  }

  if (redirection)
  {
    redirectionCopy = redirection;
  }

  if (request)
  {
    requestCopy = request;
  }

  v12 = _Block_copy(handler);
  v13 = WTF::fastMalloc(0x30);
  *v13 = &unk_1F10F8828;
  v13[1] = self;
  v13[2] = self;
  v13[3] = redirection;
  v13[4] = request;
  v13[5] = v12;
  v15 = v13;
  ExceptionTypeFromMainRunLoop = getExceptionTypeFromMainRunLoop(&v15);
  if (v15)
  {
    (*(*v15 + 8))(v15);
  }

  raiseExceptionIfNecessary(ExceptionTypeFromMainRunLoop);

  _Block_release(0);
}

- (void)didReceiveResponse:(id)response
{
  if (self)
  {
    selfCopy = self;
  }

  if (response)
  {
    responseCopy = response;
  }

  v7 = WTF::fastMalloc(0x20);
  *v7 = &unk_1F10F8878;
  v7[1] = self;
  v7[2] = self;
  v7[3] = response;
  v9 = v7;
  ExceptionTypeFromMainRunLoop = getExceptionTypeFromMainRunLoop(&v9);
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  raiseExceptionIfNecessary(ExceptionTypeFromMainRunLoop);
}

- (void)didReceiveData:(id)data
{
  if (self)
  {
    selfCopy = self;
  }

  if (data)
  {
    dataCopy = data;
  }

  v7 = WTF::fastMalloc(0x20);
  *v7 = &unk_1F10F88A0;
  v7[1] = self;
  v7[2] = self;
  v7[3] = data;
  v9 = v7;
  ExceptionTypeFromMainRunLoop = getExceptionTypeFromMainRunLoop(&v9);
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  raiseExceptionIfNecessary(ExceptionTypeFromMainRunLoop);
}

- (void)didFinish
{
  v2 = self[1];
  *self = &unk_1F10F88C8;
  self[1] = 0;
  if (v2)
  {
  }

  return self;
}

- (void)didFailWithError:(id)error
{
  if (self)
  {
    selfCopy = self;
  }

  if (error)
  {
    errorCopy = error;
  }

  v6 = WTF::fastMalloc(0x20);
  *v6 = &unk_1F10F88F0;
  v6[1] = self;
  v6[2] = self;
  v6[3] = error;
  v9 = v6;
  ExceptionTypeFromMainRunLoop = getExceptionTypeFromMainRunLoop(&v9);
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  raiseExceptionIfNecessary(ExceptionTypeFromMainRunLoop);
}

- (void)_didPerformRedirection:(id)redirection newRequest:(id)request
{
  if (self)
  {
    selfCopy = self;
  }

  if (redirection)
  {
    redirectionCopy = redirection;
  }

  if (request)
  {
    requestCopy = request;
  }

  v10 = WTF::fastMalloc(0x28);
  *v10 = &unk_1F10F8918;
  v10[1] = self;
  v10[2] = self;
  v10[3] = redirection;
  v10[4] = request;
  v12 = v10;
  ExceptionTypeFromMainRunLoop = getExceptionTypeFromMainRunLoop(&v12);
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

  raiseExceptionIfNecessary(ExceptionTypeFromMainRunLoop);
}

- (WKFrameInfo)_frame
{
  v2 = *(*&self[4]._urlSchemeTask.m_storage.data[32] + 8);
  if (!v2)
  {
    return v2;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return v2;
  }

  result = 117;
  __break(0xC471u);
  return result;
}

- (uint64_t)_willPerformRedirection:(uint64_t)redirection newRequest:completionHandler:
{
  v2 = *(redirection + 16);
  WebCore::ResourceResponse::ResourceResponse(v12, *(redirection + 24));
  MEMORY[0x19EB06210](v11, *(redirection + 32));
  v3 = *(redirection + 40);
  *(redirection + 40) = 0;
  v4 = WTF::fastMalloc(0x10);
  *v4 = &unk_1F10F8850;
  v4[1] = v3;
  v10 = v4;
  v5 = WebKit::WebURLSchemeTask::willPerformRedirection(v2 + 8, v12, v11, &v10);
  v6 = v10;
  v10 = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  _Block_release(0);
  WebCore::ResourceRequest::~ResourceRequest(v11);
  v8 = v13;
  v13 = 0;
  if (v8)
  {
  }

  WebCore::ResourceResponseBase::~ResourceResponseBase(v12, v7);
  return v5;
}

- (uint64_t)_willPerformRedirection:newRequest:completionHandler:
{
  v1 = *(self + 8);
  v2 = WebCore::ResourceRequest::nsURLRequest();
  v3 = *(v1 + 16);

  return v3(v1, v2);
}

- (void)didReceiveResponse:(void *)response
{
  *response = &unk_1F10F8878;
  v2 = response[3];
  response[3] = 0;
  if (v2)
  {
  }

  v3 = response[1];
  response[1] = 0;
  if (v3)
  {
  }

  return response;
}

- (uint64_t)didReceiveResponse:(WTF *)this
{
  *this = &unk_1F10F8878;
  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4)
  {
  }

  return WTF::fastFree(this, a2);
}

- (uint64_t)didReceiveResponse:(uint64_t)response
{
  v1 = *(response + 16);
  WebCore::ResourceResponse::ResourceResponse(v6, *(response + 24));
  v3 = WebKit::WebURLSchemeTask::didReceiveResponse(v1 + 8, v6);
  v4 = v7;
  v7 = 0;
  if (v4)
  {
  }

  WebCore::ResourceResponseBase::~ResourceResponseBase(v6, v2);
  return v3;
}

- (void)didReceiveData:(void *)data
{
  *data = &unk_1F10F88A0;
  v2 = data[3];
  data[3] = 0;
  if (v2)
  {
  }

  v3 = data[1];
  data[1] = 0;
  if (v3)
  {
  }

  return data;
}

- (uint64_t)didReceiveData:(WTF *)this
{
  *this = &unk_1F10F88A0;
  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4)
  {
  }

  return WTF::fastFree(this, a2);
}

- (uint64_t)didReceiveData:(uint64_t)data
{
  v2 = *(data + 16);
  v6 = *(data + 24);
  WebCore::SharedBuffer::create<NSData *>(&v6, a2, &v7);
  v3 = WebKit::WebURLSchemeTask::didReceiveData(v2 + 8, &v7);
  v4 = v7;
  v7 = 0;
  if (v4 && atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4 + 2);
    (*(*v4 + 8))(v4);
  }

  return v3;
}

- (uint64_t)didFinish
{
  v1 = *(self + 16);
  WebCore::ResourceErrorBase::ResourceErrorBase(&v9, 0);
  v12 = 0;
  v13 = 1;
  v3 = WebKit::WebURLSchemeTask::didComplete((v1 + 8), &v9);
  v4 = v12;
  v12 = 0;
  if (v4)
  {
  }

  v5 = v11;
  v11 = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, v2);
  }

  v6 = v10;
  v10 = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, v2);
  }

  v7 = v9;
  v9 = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, v2);
  }

  return v3;
}

- (void)didFailWithError:(void *)error
{
  *error = &unk_1F10F88F0;
  v2 = error[3];
  error[3] = 0;
  if (v2)
  {
  }

  v3 = error[1];
  error[1] = 0;
  if (v3)
  {
  }

  return error;
}

- (uint64_t)didFailWithError:(WTF *)this
{
  *this = &unk_1F10F88F0;
  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4)
  {
  }

  return WTF::fastFree(this, a2);
}

- (uint64_t)didFailWithError:(uint64_t)error
{
  v1 = *(error + 16);
  MEMORY[0x19EB04D40](&v9, *(error + 24));
  v3 = WebKit::WebURLSchemeTask::didComplete((v1 + 8), &v9);
  v4 = v12;
  v12 = 0;
  if (v4)
  {
  }

  v5 = v11;
  v11 = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, v2);
  }

  v6 = v10;
  v10 = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, v2);
  }

  v7 = v9;
  v9 = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, v2);
  }

  return v3;
}

- (void)_didPerformRedirection:(void *)redirection newRequest:
{
  *redirection = &unk_1F10F8918;
  v2 = redirection[4];
  redirection[4] = 0;
  if (v2)
  {
  }

  v3 = redirection[3];
  redirection[3] = 0;
  if (v3)
  {
  }

  v4 = redirection[1];
  redirection[1] = 0;
  if (v4)
  {
  }

  return redirection;
}

- (uint64_t)_didPerformRedirection:(WTF *)this newRequest:(void *)request
{
  *this = &unk_1F10F8918;
  v3 = *(this + 4);
  *(this + 4) = 0;
  if (v3)
  {
  }

  v4 = *(this + 3);
  *(this + 3) = 0;
  if (v4)
  {
  }

  v5 = *(this + 1);
  *(this + 1) = 0;
  if (v5)
  {
  }

  return WTF::fastFree(this, request);
}

- (uint64_t)_didPerformRedirection:(uint64_t)redirection newRequest:
{
  v2 = *(redirection + 16);
  WebCore::ResourceResponse::ResourceResponse(v8, *(redirection + 24));
  MEMORY[0x19EB06210](v7, *(redirection + 32));
  v3 = WebKit::WebURLSchemeTask::didPerformRedirection(v2 + 8, v8, v7);
  WebCore::ResourceRequest::~ResourceRequest(v7);
  v5 = v9;
  v9 = 0;
  if (v5)
  {
  }

  WebCore::ResourceResponseBase::~ResourceResponseBase(v8, v4);
  return v3;
}

@end