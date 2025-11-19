@interface PocketAPIBlockDelegate
+ (id)delegateWithLoginHandler:(id)a3;
+ (id)delegateWithResponseHandler:(id)a3;
+ (id)delegateWithSaveHandler:(id)a3;
- (void)dealloc;
- (void)pocketAPI:(id)a3 failedToSaveURL:(id)a4 error:(id)a5;
- (void)pocketAPI:(id)a3 hadLoginError:(id)a4;
- (void)pocketAPI:(id)a3 receivedResponse:(id)a4 forAPIMethod:(id)a5 error:(id)a6;
- (void)pocketAPI:(id)a3 savedURL:(id)a4;
- (void)pocketAPILoggedIn:(id)a3;
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

- (void)pocketAPI:(id)a3 receivedResponse:(id)a4 forAPIMethod:(id)a5 error:(id)a6
{
  if ([(PocketAPIBlockDelegate *)self responseHandler])
  {
    v7 = *([(PocketAPIBlockDelegate *)self responseHandler]+ 16);

    v7();
  }
}

- (void)pocketAPI:(id)a3 failedToSaveURL:(id)a4 error:(id)a5
{
  if ([(PocketAPIBlockDelegate *)self saveHandler])
  {
    v6 = *([(PocketAPIBlockDelegate *)self saveHandler]+ 16);

    v6();
  }
}

- (void)pocketAPI:(id)a3 savedURL:(id)a4
{
  if ([(PocketAPIBlockDelegate *)self saveHandler])
  {
    v5 = *([(PocketAPIBlockDelegate *)self saveHandler]+ 16);

    v5();
  }
}

- (void)pocketAPI:(id)a3 hadLoginError:(id)a4
{
  if ([(PocketAPIBlockDelegate *)self loginHandler])
  {
    v5 = *([(PocketAPIBlockDelegate *)self loginHandler]+ 16);

    v5();
  }
}

- (void)pocketAPILoggedIn:(id)a3
{
  if ([(PocketAPIBlockDelegate *)self loginHandler])
  {
    v4 = *([(PocketAPIBlockDelegate *)self loginHandler]+ 16);

    v4();
  }
}

+ (id)delegateWithResponseHandler:(id)a3
{
  v4 = objc_alloc_init(a1);
  [v4 setResponseHandler:{objc_msgSend(a3, "copy")}];
  return v4;
}

+ (id)delegateWithSaveHandler:(id)a3
{
  v4 = objc_alloc_init(a1);
  [v4 setSaveHandler:{objc_msgSend(a3, "copy")}];
  return v4;
}

+ (id)delegateWithLoginHandler:(id)a3
{
  v4 = objc_alloc_init(a1);
  [v4 setLoginHandler:{objc_msgSend(a3, "copy")}];
  return v4;
}

@end