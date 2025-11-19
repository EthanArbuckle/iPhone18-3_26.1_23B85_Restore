@interface AMSKeepAlive
+ (id)keepAliveWithFormat:(id)a3;
+ (id)keepAliveWithName:(id)a3;
+ (id)keepAliveWithName:(id)a3 style:(int64_t)a4;
+ (id)rbs_keepAliveWithName:(id)a3;
+ (id)rbs_keepAliveWithName:(id)a3 style:(int64_t)a4;
+ (void)keepAliveWithName:(id)a3 style:(int64_t)a4 block:(id)a5;
- (AMSKeepAlive)initWithName:(id)a3 style:(int64_t)a4;
- (id)initRBSWithName:(id)a3 style:(int64_t)a4;
@end

@implementation AMSKeepAlive

+ (id)keepAliveWithFormat:(id)a3
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = a3;
  v5 = [[v3 alloc] initWithFormat:v4 locale:0 arguments:&v9];

  v6 = [[AMSKeepAlive alloc] initWithName:v5];

  return v6;
}

+ (id)keepAliveWithName:(id)a3
{
  v3 = a3;
  v4 = [[AMSKeepAlive alloc] initWithName:v3];

  return v4;
}

+ (id)keepAliveWithName:(id)a3 style:(int64_t)a4
{
  v5 = a3;
  v6 = [[AMSKeepAlive alloc] initWithName:v5 style:a4];

  return v6;
}

+ (void)keepAliveWithName:(id)a3 style:(int64_t)a4 block:(id)a5
{
  v7 = a5;
  v8 = [AMSKeepAlive keepAliveWithName:a3 style:a4];
  v7[2](v7);

  [v8 invalidate];
}

+ (id)rbs_keepAliveWithName:(id)a3
{
  v3 = a3;
  v4 = [[AMSKeepAlive alloc] initRBSWithName:v3];

  return v4;
}

+ (id)rbs_keepAliveWithName:(id)a3 style:(int64_t)a4
{
  v5 = a3;
  v6 = [[AMSKeepAlive alloc] initRBSWithName:v5 style:a4];

  return v6;
}

- (AMSKeepAlive)initWithName:(id)a3 style:(int64_t)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = AMSKeepAlive;
  v7 = [(AMSKeepAlive *)&v11 init];
  if (v7)
  {
    v8 = [AMSRBSKeepAlive keepAliveWithName:v6 style:a4];
    rbsKeepAlive = v7->_rbsKeepAlive;
    v7->_rbsKeepAlive = v8;
  }

  return v7;
}

- (id)initRBSWithName:(id)a3 style:(int64_t)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = AMSKeepAlive;
  v7 = [(AMSKeepAlive *)&v11 init];
  if (v7)
  {
    v8 = [AMSRBSKeepAlive keepAliveWithName:v6 style:a4];
    rbsKeepAlive = v7->_rbsKeepAlive;
    v7->_rbsKeepAlive = v8;
  }

  return v7;
}

@end