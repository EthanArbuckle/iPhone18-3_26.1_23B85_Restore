@interface AMSKeepAlive
+ (id)keepAliveWithFormat:(id)format;
+ (id)keepAliveWithName:(id)name;
+ (id)keepAliveWithName:(id)name style:(int64_t)style;
+ (id)rbs_keepAliveWithName:(id)name;
+ (id)rbs_keepAliveWithName:(id)name style:(int64_t)style;
+ (void)keepAliveWithName:(id)name style:(int64_t)style block:(id)block;
- (AMSKeepAlive)initWithName:(id)name style:(int64_t)style;
- (id)initRBSWithName:(id)name style:(int64_t)style;
@end

@implementation AMSKeepAlive

+ (id)keepAliveWithFormat:(id)format
{
  v3 = MEMORY[0x1E696AEC0];
  formatCopy = format;
  v5 = [[v3 alloc] initWithFormat:formatCopy locale:0 arguments:&v9];

  v6 = [[AMSKeepAlive alloc] initWithName:v5];

  return v6;
}

+ (id)keepAliveWithName:(id)name
{
  nameCopy = name;
  v4 = [[AMSKeepAlive alloc] initWithName:nameCopy];

  return v4;
}

+ (id)keepAliveWithName:(id)name style:(int64_t)style
{
  nameCopy = name;
  v6 = [[AMSKeepAlive alloc] initWithName:nameCopy style:style];

  return v6;
}

+ (void)keepAliveWithName:(id)name style:(int64_t)style block:(id)block
{
  blockCopy = block;
  v8 = [AMSKeepAlive keepAliveWithName:name style:style];
  blockCopy[2](blockCopy);

  [v8 invalidate];
}

+ (id)rbs_keepAliveWithName:(id)name
{
  nameCopy = name;
  v4 = [[AMSKeepAlive alloc] initRBSWithName:nameCopy];

  return v4;
}

+ (id)rbs_keepAliveWithName:(id)name style:(int64_t)style
{
  nameCopy = name;
  v6 = [[AMSKeepAlive alloc] initRBSWithName:nameCopy style:style];

  return v6;
}

- (AMSKeepAlive)initWithName:(id)name style:(int64_t)style
{
  nameCopy = name;
  v11.receiver = self;
  v11.super_class = AMSKeepAlive;
  v7 = [(AMSKeepAlive *)&v11 init];
  if (v7)
  {
    v8 = [AMSRBSKeepAlive keepAliveWithName:nameCopy style:style];
    rbsKeepAlive = v7->_rbsKeepAlive;
    v7->_rbsKeepAlive = v8;
  }

  return v7;
}

- (id)initRBSWithName:(id)name style:(int64_t)style
{
  nameCopy = name;
  v11.receiver = self;
  v11.super_class = AMSKeepAlive;
  v7 = [(AMSKeepAlive *)&v11 init];
  if (v7)
  {
    v8 = [AMSRBSKeepAlive keepAliveWithName:nameCopy style:style];
    rbsKeepAlive = v7->_rbsKeepAlive;
    v7->_rbsKeepAlive = v8;
  }

  return v7;
}

@end