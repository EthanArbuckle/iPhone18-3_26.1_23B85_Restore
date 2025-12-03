@interface KeepAlive
+ (KeepAlive)keepAliveWithFormat:(id)format;
+ (KeepAlive)keepAliveWithName:(id)name;
- (KeepAlive)initWithName:(id)name;
- (void)dealloc;
@end

@implementation KeepAlive

- (void)dealloc
{
  sub_1003205AC(TransactionStore, self->_name);
  v3.receiver = self;
  v3.super_class = KeepAlive;
  [(KeepAlive *)&v3 dealloc];
}

+ (KeepAlive)keepAliveWithFormat:(id)format
{
  formatCopy = format;
  v4 = [[NSString alloc] initWithFormat:formatCopy locale:0 arguments:&v8];

  v5 = [[KeepAlive alloc] initWithName:v4];

  return v5;
}

+ (KeepAlive)keepAliveWithName:(id)name
{
  nameCopy = name;
  v4 = [[KeepAlive alloc] initWithName:nameCopy];

  return v4;
}

- (KeepAlive)initWithName:(id)name
{
  nameCopy = name;
  v9.receiver = self;
  v9.super_class = KeepAlive;
  v5 = [(KeepAlive *)&v9 init];
  if (v5)
  {
    v6 = [nameCopy copy];
    name = v5->_name;
    v5->_name = v6;

    sub_1003204A0(TransactionStore, v5->_name);
  }

  return v5;
}

@end