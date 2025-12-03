@interface Request
+ (id)localRequest;
+ (id)requestFromCurrentConnection;
+ (void)requestFromCurrentConnection;
- (Request)initWithCaller:(id)caller;
- (Request)initWithID:(unsigned int)d caller:(id)caller received:(id)received;
- (void)dealloc;
- (void)holdObject:(id)object;
@end

@implementation Request

+ (id)requestFromCurrentConnection
{
  currentConnection = [MEMORY[0x277CCAE80] currentConnection];
  if (!currentConnection || (v3 = [[Caller alloc] initWithConnection:currentConnection], v4 = [[Request alloc] initWithCaller:v3], v5 = _currentRequest, _currentRequest = v4, v5, v3, !v4))
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

- (Request)initWithCaller:(id)caller
{
  callerCopy = caller;
  v13.receiver = self;
  v13.super_class = Request;
  v6 = [(Request *)&v13 init];
  if (v6)
  {
    date = [MEMORY[0x277CBEAA8] date];
    received = v6->_received;
    v6->_received = date;

    objc_storeStrong(&v6->_caller, caller);
    v9 = _lastRequestId++;
    v6->_identifier = v9;
    v10 = LALogForCategory();
    log = v6->_log;
    v6->_log = v10;

    objc_storeStrong(&_currentRequest, v6);
  }

  return v6;
}

- (Request)initWithID:(unsigned int)d caller:(id)caller received:(id)received
{
  callerCopy = caller;
  receivedCopy = received;
  v16.receiver = self;
  v16.super_class = Request;
  v11 = [(Request *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_received, received);
    objc_storeStrong(&v12->_caller, caller);
    v12->_identifier = d;
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

- (void)holdObject:(id)object
{
  v11 = *MEMORY[0x277D85DE8];
  objectCopy = object;
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
    v10 = objectCopy;
    _os_log_impl(&dword_238B7F000, v7, OS_LOG_TYPE_DEFAULT, "Holding %{public}@", &v9, 0xCu);
  }

  [(NSMutableArray *)self->_heldObjects addObject:objectCopy];
  v8 = *MEMORY[0x277D85DE8];
}

+ (void)requestFromCurrentConnection
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = MEMORY[0x277CCACC8];
  selfCopy = self;
  callStackSymbols = [v1 callStackSymbols];
  v5 = 138412290;
  v6 = callStackSymbols;
  _os_log_error_impl(&dword_238B7F000, selfCopy, OS_LOG_TYPE_ERROR, "Unable to determine request: %@", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

@end