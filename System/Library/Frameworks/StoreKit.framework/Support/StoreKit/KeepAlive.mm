@interface KeepAlive
+ (KeepAlive)keepAliveWithFormat:(id)a3;
+ (KeepAlive)keepAliveWithName:(id)a3;
- (KeepAlive)initWithName:(id)a3;
- (void)dealloc;
@end

@implementation KeepAlive

+ (KeepAlive)keepAliveWithFormat:(id)a3
{
  v3 = a3;
  v4 = [[NSString alloc] initWithFormat:v3 locale:0 arguments:&v8];

  v5 = [[KeepAlive alloc] initWithName:v4];

  return v5;
}

+ (KeepAlive)keepAliveWithName:(id)a3
{
  v3 = a3;
  v4 = [[KeepAlive alloc] initWithName:v3];

  return v4;
}

- (KeepAlive)initWithName:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = KeepAlive;
  v5 = [(KeepAlive *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    name = v5->_name;
    v5->_name = v6;

    [OSTransactionStore takeKeepAliveTransaction:v5->_name];
  }

  return v5;
}

- (void)dealloc
{
  [OSTransactionStore releaseKeepAliveTransaction:self->_name];
  v3.receiver = self;
  v3.super_class = KeepAlive;
  [(KeepAlive *)&v3 dealloc];
}

@end