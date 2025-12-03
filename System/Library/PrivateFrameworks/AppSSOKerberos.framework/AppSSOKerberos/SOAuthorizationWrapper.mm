@interface SOAuthorizationWrapper
- (SOAuthorizationWrapper)init;
- (void)authorization:(id)authorization didCompleteWithError:(id)error;
- (void)authorization:(id)authorization didCompleteWithHTTPAuthorizationHeaders:(id)headers;
- (void)authorization:(id)authorization didCompleteWithHTTPResponse:(id)response httpBody:(id)body;
- (void)authorizationDidCancel:(id)cancel;
- (void)authorizationDidComplete:(id)complete;
- (void)authorizationDidNotHandle:(id)handle;
- (void)beginAuthorizationWithOperation:(id)operation url:(id)url httpHeaders:(id)headers httpBody:(id)body andCompletion:(id)completion;
@end

@implementation SOAuthorizationWrapper

- (SOAuthorizationWrapper)init
{
  v7.receiver = self;
  v7.super_class = SOAuthorizationWrapper;
  v2 = [(SOAuthorizationWrapper *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CEBF00]);
    authorization = v2->_authorization;
    v2->_authorization = v3;

    v5 = dispatch_queue_create("com.apple.AppSSO.wrapper", 0);
    [(SOAuthorizationCore *)v2->_authorization setDelegateDispatchQueue:v5];

    [(SOAuthorizationCore *)v2->_authorization setDelegate:v2];
  }

  return v2;
}

- (void)beginAuthorizationWithOperation:(id)operation url:(id)url httpHeaders:(id)headers httpBody:(id)body andCompletion:(id)completion
{
  bodyCopy = body;
  headersCopy = headers;
  urlCopy = url;
  operationCopy = operation;
  v15 = MEMORY[0x245CB7C20](completion);
  authorizationCompletion = self->_authorizationCompletion;
  self->_authorizationCompletion = v15;

  [(SOAuthorizationCore *)self->_authorization beginAuthorizationWithOperation:operationCopy url:urlCopy httpHeaders:headersCopy httpBody:bodyCopy];
}

- (void)authorizationDidNotHandle:(id)handle
{
  (*(self->_authorizationCompletion + 2))();
  authorizationCompletion = self->_authorizationCompletion;
  self->_authorizationCompletion = 0;
}

- (void)authorizationDidCancel:(id)cancel
{
  (*(self->_authorizationCompletion + 2))();
  authorizationCompletion = self->_authorizationCompletion;
  self->_authorizationCompletion = 0;
}

- (void)authorizationDidComplete:(id)complete
{
  (*(self->_authorizationCompletion + 2))();
  authorizationCompletion = self->_authorizationCompletion;
  self->_authorizationCompletion = 0;
}

- (void)authorization:(id)authorization didCompleteWithHTTPAuthorizationHeaders:(id)headers
{
  (*(self->_authorizationCompletion + 2))();
  authorizationCompletion = self->_authorizationCompletion;
  self->_authorizationCompletion = 0;
}

- (void)authorization:(id)authorization didCompleteWithHTTPResponse:(id)response httpBody:(id)body
{
  authorizationCompletion = self->_authorizationCompletion;
  allHeaderFields = [response allHeaderFields];
  authorizationCompletion[2](authorizationCompletion, 1, allHeaderFields, 0);

  v8 = self->_authorizationCompletion;
  self->_authorizationCompletion = 0;
}

- (void)authorization:(id)authorization didCompleteWithError:(id)error
{
  (*(self->_authorizationCompletion + 2))();
  authorizationCompletion = self->_authorizationCompletion;
  self->_authorizationCompletion = 0;
}

@end