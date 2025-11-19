@interface CNContactPosterDataService
- (CNContactPosterDataService)init;
- (CNContactPosterDataService)initWithListener:(id)a3 store:(id)a4;
- (void)beginListening;
- (void)invalidate;
@end

@implementation CNContactPosterDataService

- (CNContactPosterDataService)init
{
  v3 = [objc_alloc(MEMORY[0x1E696B0D8]) initWithMachServiceName:@"com.apple.contacts.poster.api"];
  v4 = +[CNContactPosterDataStore inProcessStore];
  v5 = [(CNContactPosterDataService *)self initWithListener:v3 store:v4];

  return v5;
}

- (CNContactPosterDataService)initWithListener:(id)a3 store:(id)a4
{
  v7 = a3;
  v8 = a4;
  v17.receiver = self;
  v17.super_class = CNContactPosterDataService;
  v9 = [(CNContactPosterDataService *)&v17 init];
  if (v9)
  {
    v10 = dispatch_workloop_create("com.apple.contacts.posters.api");
    queue = v9->_queue;
    v9->_queue = v10;

    v12 = [[_ListenerStoreAdapter alloc] initWithStore:v8];
    v13 = [[_ListenerDelegate alloc] initWithService:v12 queue:v9->_queue];
    listenerDelegate = v9->_listenerDelegate;
    v9->_listenerDelegate = v13;

    objc_storeStrong(&v9->_listener, a3);
    [(NSXPCListener *)v9->_listener setDelegate:v9->_listenerDelegate];
    v15 = v9;
  }

  return v9;
}

- (void)beginListening
{
  v2 = [(CNContactPosterDataService *)self listener];
  [v2 resume];
}

- (void)invalidate
{
  v2 = [(CNContactPosterDataService *)self listener];
  [v2 invalidate];
}

@end