@interface Request
+ (id)localRequest;
+ (id)requestFromCurrentConnection;
+ (void)requestFromCurrentConnection;
- (Request)initWithCaller:(id)a3;
- (Request)initWithID:(unsigned int)a3 caller:(id)a4 received:(id)a5;
- (void)dealloc;
- (void)holdObject:(id)a3;
@end

@implementation Request

+ (id)requestFromCurrentConnection
{
  v2 = [MEMORY[0x277CCAE80] currentConnection];
  if (!v2 || (v3 = [[Caller alloc] initWithConnection:v2], v4 = [[Request alloc] initWithCaller:v3], v5 = _currentRequest, _currentRequest = v4, v5, v3, !v4))
  {
    if (_currentRequest)
    {
      v4 = _currentRequest;
    }

    else
    {
      if (LA_LOG_Request_once != -1)
      {
        +[Request requestFromCurrentConnection];
      }

      v6 = LA_LOG_Request_log;
      if (os_log_type_enabled(LA_LOG_Request_log, OS_LOG_TYPE_ERROR))
      {
        +[(Request *)v6];
      }

      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:@"Unable to determine request."];
      v4 = 0;
    }
  }

  return v4;
}

- (void)dealloc
{
  v9 = *MEMORY[0x277D85DE8];
  if (self->_heldObjects)
  {
    v3 = [(Request *)self log];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      heldObjects = self->_heldObjects;
      *buf = 138543362;
      v8 = heldObjects;
      _os_log_impl(&dword_238B7F000, v3, OS_LOG_TYPE_DEFAULT, "Releasing %{public}@", buf, 0xCu);
    }
  }

  v6.receiver = self;
  v6.super_class = Request;
  [(Request *)&v6 dealloc];
  v5 = *MEMORY[0x277D85DE8];
}

- (Request)initWithCaller:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = Request;
  v6 = [(Request *)&v13 init];
  if (v6)
  {
    v7 = [MEMORY[0x277CBEAA8] date];
    received = v6->_received;
    v6->_received = v7;

    objc_storeStrong(&v6->_caller, a3);
    v9 = _lastRequestId++;
    v6->_identifier = v9;
    v10 = LALogForCategory();
    log = v6->_log;
    v6->_log = v10;

    objc_storeStrong(&_currentRequest, v6);
  }

  return v6;
}

- (Request)initWithID:(unsigned int)a3 caller:(id)a4 received:(id)a5
{
  v9 = a4;
  v10 = a5;
  v16.receiver = self;
  v16.super_class = Request;
  v11 = [(Request *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_received, a5);
    objc_storeStrong(&v12->_caller, a4);
    v12->_identifier = a3;
    v13 = LALogForCategory();
    log = v12->_log;
    v12->_log = v13;
  }

  return v12;
}

+ (id)localRequest
{
  v2 = [Request alloc];
  v3 = objc_opt_new();
  v4 = [(Request *)v2 initWithCaller:v3];

  objc_storeStrong(&_currentRequest, v4);

  return v4;
}

- (void)holdObject:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!self->_heldObjects)
  {
    v5 = objc_opt_new();
    heldObjects = self->_heldObjects;
    self->_heldObjects = v5;
  }

  v7 = [(Request *)self log];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543362;
    v10 = v4;
    _os_log_impl(&dword_238B7F000, v7, OS_LOG_TYPE_DEFAULT, "Holding %{public}@", &v9, 0xCu);
  }

  [(NSMutableArray *)self->_heldObjects addObject:v4];
  v8 = *MEMORY[0x277D85DE8];
}

+ (void)requestFromCurrentConnection
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = MEMORY[0x277CCACC8];
  v2 = a1;
  v3 = [v1 callStackSymbols];
  v5 = 138412290;
  v6 = v3;
  _os_log_error_impl(&dword_238B7F000, v2, OS_LOG_TYPE_ERROR, "Unable to determine request: %@", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

@end