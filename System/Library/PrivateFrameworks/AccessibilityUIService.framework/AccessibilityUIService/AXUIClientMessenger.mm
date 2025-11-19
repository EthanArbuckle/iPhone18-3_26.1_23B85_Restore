@interface AXUIClientMessenger
+ (id)clientMessengerWithIdentifier:(id)a3;
- (AXUIClientMessenger)init;
- (AXUIClientMessenger)initWithClientIdentifier:(id)a3 connection:(id)a4;
- (id)description;
- (id)sendSynchronousMessage:(id)a3 withIdentifier:(unint64_t)a4 error:(id *)a5;
@end

@implementation AXUIClientMessenger

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(AXUIClientMessenger *)self clientIdentifier];
  v7 = [v3 stringWithFormat:@"<%@: %p clientIdentifier = %@>", v5, self, v6];;

  return v7;
}

+ (id)clientMessengerWithIdentifier:(id)a3
{
  v3 = a3;
  v4 = +[AXUIServiceManager sharedServiceManager];
  v5 = [v4 _clientMessengerWithIdentifier:v3];

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

- (AXUIClientMessenger)initWithClientIdentifier:(id)a3 connection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = AXUIClientMessenger;
  v8 = [(AXUIClientMessenger *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(AXUIClientMessenger *)v8 setClientIdentifier:v6];
    [(AXUIClientMessenger *)v9 setConnection:v7];
  }

  return v9;
}

- (id)sendSynchronousMessage:(id)a3 withIdentifier:(unint64_t)a4 error:(id *)a5
{
  v8 = a3;
  v9 = +[AXUIServiceManager sharedServiceManager];
  v10 = [v9 _sendSynchronousMessage:v8 withIdentifier:a4 toClientWithMessenger:self error:a5];

  return v10;
}

@end