@interface AXUIClientMessenger
+ (id)clientMessengerWithIdentifier:(id)identifier;
- (AXUIClientMessenger)init;
- (AXUIClientMessenger)initWithClientIdentifier:(id)identifier connection:(id)connection;
- (id)description;
- (id)sendSynchronousMessage:(id)message withIdentifier:(unint64_t)identifier error:(id *)error;
@end

@implementation AXUIClientMessenger

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  clientIdentifier = [(AXUIClientMessenger *)self clientIdentifier];
  v7 = [v3 stringWithFormat:@"<%@: %p clientIdentifier = %@>", v5, self, clientIdentifier];;

  return v7;
}

+ (id)clientMessengerWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = +[AXUIServiceManager sharedServiceManager];
  v5 = [v4 _clientMessengerWithIdentifier:identifierCopy];

  return v5;
}

- (AXUIClientMessenger)init
{
  v4.receiver = self;
  v4.super_class = AXUIClientMessenger;
  v2 = [(AXUIClientMessenger *)&v4 init];
  if (v2)
  {
  }

  return 0;
}

- (AXUIClientMessenger)initWithClientIdentifier:(id)identifier connection:(id)connection
{
  identifierCopy = identifier;
  connectionCopy = connection;
  v11.receiver = self;
  v11.super_class = AXUIClientMessenger;
  v8 = [(AXUIClientMessenger *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(AXUIClientMessenger *)v8 setClientIdentifier:identifierCopy];
    [(AXUIClientMessenger *)v9 setConnection:connectionCopy];
  }

  return v9;
}

- (id)sendSynchronousMessage:(id)message withIdentifier:(unint64_t)identifier error:(id *)error
{
  messageCopy = message;
  v9 = +[AXUIServiceManager sharedServiceManager];
  v10 = [v9 _sendSynchronousMessage:messageCopy withIdentifier:identifier toClientWithMessenger:self error:error];

  return v10;
}

@end