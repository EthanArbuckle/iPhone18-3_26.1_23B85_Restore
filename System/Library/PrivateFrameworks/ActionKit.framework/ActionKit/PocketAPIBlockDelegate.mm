@interface PocketAPIBlockDelegate
+ (id)delegateWithLoginHandler:(id)handler;
+ (id)delegateWithResponseHandler:(id)handler;
+ (id)delegateWithSaveHandler:(id)handler;
- (void)dealloc;
- (void)pocketAPI:(id)i failedToSaveURL:(id)l error:(id)error;
- (void)pocketAPI:(id)i hadLoginError:(id)error;
- (void)pocketAPI:(id)i receivedResponse:(id)response forAPIMethod:(id)method error:(id)error;
- (void)pocketAPI:(id)i savedURL:(id)l;
- (void)pocketAPILoggedIn:(id)in;
@end

@implementation PocketAPIBlockDelegate

- (void)dealloc
{
  self->loginHandler = 0;

  self->saveHandler = 0;
  self->responseHandler = 0;
  v3.receiver = self;
  v3.super_class = PocketAPIBlockDelegate;
  [(PocketAPIBlockDelegate *)&v3 dealloc];
}

- (void)pocketAPI:(id)i receivedResponse:(id)response forAPIMethod:(id)method error:(id)error
{
  if ([(PocketAPIBlockDelegate *)self responseHandler])
  {
    v7 = *([(PocketAPIBlockDelegate *)self responseHandler]+ 16);

    v7();
  }
}

- (void)pocketAPI:(id)i failedToSaveURL:(id)l error:(id)error
{
  if ([(PocketAPIBlockDelegate *)self saveHandler])
  {
    v6 = *([(PocketAPIBlockDelegate *)self saveHandler]+ 16);

    v6();
  }
}

- (void)pocketAPI:(id)i savedURL:(id)l
{
  if ([(PocketAPIBlockDelegate *)self saveHandler])
  {
    v5 = *([(PocketAPIBlockDelegate *)self saveHandler]+ 16);

    v5();
  }
}

- (void)pocketAPI:(id)i hadLoginError:(id)error
{
  if ([(PocketAPIBlockDelegate *)self loginHandler])
  {
    v5 = *([(PocketAPIBlockDelegate *)self loginHandler]+ 16);

    v5();
  }
}

- (void)pocketAPILoggedIn:(id)in
{
  if ([(PocketAPIBlockDelegate *)self loginHandler])
  {
    v4 = *([(PocketAPIBlockDelegate *)self loginHandler]+ 16);

    v4();
  }
}

+ (id)delegateWithResponseHandler:(id)handler
{
  v4 = objc_alloc_init(self);
  [v4 setResponseHandler:{objc_msgSend(handler, "copy")}];
  return v4;
}

+ (id)delegateWithSaveHandler:(id)handler
{
  v4 = objc_alloc_init(self);
  [v4 setSaveHandler:{objc_msgSend(handler, "copy")}];
  return v4;
}

+ (id)delegateWithLoginHandler:(id)handler
{
  v4 = objc_alloc_init(self);
  [v4 setLoginHandler:{objc_msgSend(handler, "copy")}];
  return v4;
}

@end