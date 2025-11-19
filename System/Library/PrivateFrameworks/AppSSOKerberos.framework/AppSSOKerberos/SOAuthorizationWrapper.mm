@interface SOAuthorizationWrapper
- (SOAuthorizationWrapper)init;
- (void)authorization:(id)a3 didCompleteWithError:(id)a4;
- (void)authorization:(id)a3 didCompleteWithHTTPAuthorizationHeaders:(id)a4;
- (void)authorization:(id)a3 didCompleteWithHTTPResponse:(id)a4 httpBody:(id)a5;
- (void)authorizationDidCancel:(id)a3;
- (void)authorizationDidComplete:(id)a3;
- (void)authorizationDidNotHandle:(id)a3;
- (void)beginAuthorizationWithOperation:(id)a3 url:(id)a4 httpHeaders:(id)a5 httpBody:(id)a6 andCompletion:(id)a7;
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

- (void)beginAuthorizationWithOperation:(id)a3 url:(id)a4 httpHeaders:(id)a5 httpBody:(id)a6 andCompletion:(id)a7
{
  v12 = a6;
  v13 = a5;
  v14 = a4;
  v17 = a3;
  v15 = MEMORY[0x245CB7C20](a7);
  authorizationCompletion = self->_authorizationCompletion;
  self->_authorizationCompletion = v15;

  [(SOAuthorizationCore *)self->_authorization beginAuthorizationWithOperation:v17 url:v14 httpHeaders:v13 httpBody:v12];
}

- (void)authorizationDidNotHandle:(id)a3
{
  (*(self->_authorizationCompletion + 2))();
  authorizationCompletion = self->_authorizationCompletion;
  self->_authorizationCompletion = 0;
}

- (void)authorizationDidCancel:(id)a3
{
  (*(self->_authorizationCompletion + 2))();
  authorizationCompletion = self->_authorizationCompletion;
  self->_authorizationCompletion = 0;
}

- (void)authorizationDidComplete:(id)a3
{
  (*(self->_authorizationCompletion + 2))();
  authorizationCompletion = self->_authorizationCompletion;
  self->_authorizationCompletion = 0;
}

- (void)authorization:(id)a3 didCompleteWithHTTPAuthorizationHeaders:(id)a4
{
  (*(self->_authorizationCompletion + 2))();
  authorizationCompletion = self->_authorizationCompletion;
  self->_authorizationCompletion = 0;
}

- (void)authorization:(id)a3 didCompleteWithHTTPResponse:(id)a4 httpBody:(id)a5
{
  authorizationCompletion = self->_authorizationCompletion;
  v7 = [a4 allHeaderFields];
  authorizationCompletion[2](authorizationCompletion, 1, v7, 0);

  v8 = self->_authorizationCompletion;
  self->_authorizationCompletion = 0;
}

- (void)authorization:(id)a3 didCompleteWithError:(id)a4
{
  (*(self->_authorizationCompletion + 2))();
  authorizationCompletion = self->_authorizationCompletion;
  self->_authorizationCompletion = 0;
}

@end