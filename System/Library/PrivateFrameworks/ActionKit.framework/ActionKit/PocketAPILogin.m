@interface PocketAPILogin
- (PocketAPILogin)init;
- (PocketAPILogin)initWithAPI:(id)a3 delegate:(id)a4;
- (PocketAPILogin)initWithCoder:(id)a3;
- (id)redirectURL;
- (void)_setRequestToken:(id)a3;
- (void)convertRequestTokenToAccessToken;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)fetchRequestToken;
- (void)loginDidFinish:(BOOL)a3;
- (void)loginDidStart;
- (void)pocketAPI:(id)a3 hadLoginError:(id)a4;
- (void)pocketAPI:(id)a3 receivedRequestToken:(id)a4;
- (void)pocketAPILoggedIn:(id)a3;
@end

@implementation PocketAPILogin

- (void)loginDidFinish:(BOOL)a3
{
  if (!self->didFinish)
  {
    v3 = a3;
    self->didFinish = 1;
    if (self->delegate && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [(PocketAPIDelegate *)self->delegate pocketAPIDidFinishLogin:[(PocketAPILogin *)self API]];
    }

    v5 = [MEMORY[0x277CCAB98] defaultCenter];
    [v5 postNotificationName:PocketAPILoginFinishedNotification object:0];
    if (self->reverseAuth)
    {
      v6 = MEMORY[0x277CCACA8];
      v7 = +[PocketAPI pocketAppURLScheme];
      if (v3)
      {
        v8 = @"success";
      }

      else
      {
        v8 = @"failed";
      }

      v9 = [v6 stringWithFormat:@"%@://reverse/%@/%i", v7, v8, -[PocketAPI appID](-[PocketAPILogin API](self, "API"), "appID")];
      v10 = [MEMORY[0x277CBEBC0] URLWithString:v9];
      delegate = self->delegate;
      v12 = [(PocketAPILogin *)self API];

      [(PocketAPIDelegate *)delegate pocketAPI:v12 requestedOpenURL:v10 completionHandler:0];
    }
  }
}

- (void)loginDidStart
{
  if (!self->didStart)
  {
    v9 = v2;
    self->didStart = 1;
    if (self->delegate && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [(PocketAPIDelegate *)self->delegate pocketAPIDidStartLogin:[(PocketAPILogin *)self API]];
    }

    v7 = [MEMORY[0x277CCAB98] defaultCenter];
    v8 = PocketAPILoginStartedNotification;

    [v7 postNotificationName:v8 object:0];
  }
}

- (void)pocketAPI:(id)a3 hadLoginError:(id)a4
{
  if (self->delegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [(PocketAPIDelegate *)self->delegate pocketAPI:a3 hadLoginError:a4];
  }

  [(PocketAPILogin *)self loginDidFinish:0, a4];

  self->delegate = 0;
}

- (void)pocketAPILoggedIn:(id)a3
{
  if (self->delegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [(PocketAPIDelegate *)self->delegate pocketAPILoggedIn:[(PocketAPILogin *)self API]];
  }

  [(PocketAPILogin *)self loginDidFinish:1];

  self->delegate = 0;
}

- (void)pocketAPI:(id)a3 receivedRequestToken:(id)a4
{
  [(PocketAPILogin *)self _setRequestToken:a4];
  v6 = +[PocketAPIOperation encodeForURL:](PocketAPIOperation, "encodeForURL:", [-[PocketAPILogin redirectURL](self "redirectURL")]);
  delegate = self->delegate;
  v8 = [MEMORY[0x277CBEBC0] URLWithString:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"pocket-oauth-v1:///authorize?request_token=%@&redirect_uri=%@", self->requestToken, v6)}];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __49__PocketAPILogin_pocketAPI_receivedRequestToken___block_invoke;
  v9[3] = &unk_278C1FF80;
  v9[4] = self;
  v9[5] = a3;
  v9[6] = v6;
  [(PocketAPIDelegate *)delegate pocketAPI:a3 requestedOpenURL:v8 completionHandler:v9];
}

void *__49__PocketAPILogin_pocketAPI_receivedRequestToken___block_invoke(void *result, char a2)
{
  if ((a2 & 1) == 0)
  {
    v2 = result;
    v3 = result[4];
    v4 = result[5];
    v5 = *(v3 + 48);
    v6 = [MEMORY[0x277CBEBC0] URLWithString:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"https://getpocket.com/auth/authorize?request_token=%@&redirect_uri=%@", *(v3 + 24), result[6])}];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __49__PocketAPILogin_pocketAPI_receivedRequestToken___block_invoke_2;
    v7[3] = &unk_278C1A600;
    v8 = *(v2 + 2);
    return [v5 pocketAPI:v4 requestedOpenURL:v6 completionHandler:v7];
  }

  return result;
}

uint64_t __49__PocketAPILogin_pocketAPI_receivedRequestToken___block_invoke_2(uint64_t result, char a2)
{
  v7[1] = *MEMORY[0x277D85DE8];
  if ((a2 & 1) == 0)
  {
    v2 = *(result + 32);
    v3 = *(result + 40);
    v4 = *MEMORY[0x277CCA050];
    v6 = *MEMORY[0x277CCA450];
    v7[0] = @"Failed to open the Pocket authentication URL.";
    result = [v2 pocketAPI:v3 hadLoginError:{objc_msgSend(MEMORY[0x277CCA9B8], "errorWithDomain:code:userInfo:", v4, 3328, objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v7, &v6, 1))}];
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)convertRequestTokenToAccessToken
{
  v9 = objc_alloc_init(PocketAPIOperation);
  [(PocketAPIOperation *)v9 setAPI:self->API];
  [(PocketAPIOperation *)v9 setDelegate:self];
  [(PocketAPIOperation *)v9 setDomain:10];
  [(PocketAPIOperation *)v9 setHTTPMethod:1];
  [(PocketAPIOperation *)v9 setAPIMethod:@"authorize"];
  v3 = [objc_msgSend(MEMORY[0x277CBEAF8] "preferredLanguages")];
  v4 = [MEMORY[0x277CBEAF8] currentLocale];
  v5 = [v4 objectForKey:*MEMORY[0x277CBE690]];
  v6 = [objc_msgSend(MEMORY[0x277CBEBB0] "systemTimeZone")] / 60;
  v7 = MEMORY[0x277CBEAC0];
  v8 = [(PocketAPILogin *)self requestToken];
  -[PocketAPIOperation setArguments:](v9, "setArguments:", [v7 dictionaryWithObjectsAndKeys:{v8, @"code", v3, @"locale", v5, @"country", objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"%i", v6), @"timezone", 0}]);
  [(NSOperationQueue *)self->operationQueue addOperation:v9];
}

- (void)fetchRequestToken
{
  [(PocketAPILogin *)self loginDidStart];
  v4 = objc_alloc_init(PocketAPIOperation);
  [(PocketAPIOperation *)v4 setAPI:self->API];
  [(PocketAPIOperation *)v4 setDelegate:self];
  [(PocketAPIOperation *)v4 setDomain:10];
  [(PocketAPIOperation *)v4 setHTTPMethod:1];
  [(PocketAPIOperation *)v4 setAPIMethod:@"request"];
  v3 = [-[PocketAPILogin redirectURL](self "redirectURL")];
  -[PocketAPIOperation setArguments:](v4, "setArguments:", [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{-[PocketAPILogin uuid](self, "uuid"), @"state", v3, @"redirect_uri", 0}]);
  [(NSOperationQueue *)self->operationQueue addOperation:v4];
}

- (id)redirectURL
{
  v2 = MEMORY[0x277CBEBC0];
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:authorizationFinished", -[PocketAPI URLScheme](-[PocketAPILogin API](self, "API"), "URLScheme")];

  return [v2 URLWithString:v3];
}

- (PocketAPILogin)initWithAPI:(id)a3 delegate:(id)a4
{
  v6 = [(PocketAPILogin *)self init];
  if (v6)
  {
    v7 = a3;

    v6->API = a3;
    v6->delegate = a4;
  }

  return v6;
}

- (PocketAPILogin)init
{
  v5.receiver = self;
  v5.super_class = PocketAPILogin;
  v2 = [(PocketAPILogin *)&v5 init];
  if (v2)
  {
    v2->operationQueue = objc_alloc_init(MEMORY[0x277CCABD8]);
    v2->API = +[PocketAPI sharedAPI];
    v3 = CFUUIDCreate(0);
    v2->uuid = CFUUIDCreateString(0, v3);
    CFRelease(v3);
  }

  return v2;
}

- (void)dealloc
{
  [(NSOperationQueue *)self->operationQueue waitUntilAllOperationsAreFinished];

  self->operationQueue = 0;
  self->requestToken = 0;

  self->accessToken = 0;
  self->API = 0;

  self->delegate = 0;
  v3.receiver = self;
  v3.super_class = PocketAPILogin;
  [(PocketAPILogin *)&v3 dealloc];
}

- (void)_setRequestToken:(id)a3
{
  [(PocketAPILogin *)self willChangeValueForKey:@"requestToken"];
  v5 = self->requestToken;
  self->requestToken = [a3 copy];

  [(PocketAPILogin *)self didChangeValueForKey:@"requestToken"];
}

- (PocketAPILogin)initWithCoder:(id)a3
{
  v4 = [(PocketAPILogin *)self init];
  if (v4)
  {
    v4->requestToken = [a3 decodeObjectForKey:@"requestToken"];
    v4->accessToken = [a3 decodeObjectForKey:@"accessToken"];
    v4->uuid = [a3 decodeObjectForKey:@"uuid"];
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  [a3 encodeObject:-[PocketAPILogin requestToken](self forKey:{"requestToken"), @"requestToken"}];
  [a3 encodeObject:-[PocketAPILogin accessToken](self forKey:{"accessToken"), @"accessToken"}];
  v5 = [(PocketAPILogin *)self uuid];

  [a3 encodeObject:v5 forKey:@"uuid"];
}

@end