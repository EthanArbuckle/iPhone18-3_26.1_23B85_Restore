@interface NSConcreteProtocolChecker
- (NSConcreteProtocolChecker)initWithTarget:(id)a3 protocol:(id)a4;
- (id)protocol;
- (id)target;
- (void)dealloc;
@end

@implementation NSConcreteProtocolChecker

- (id)protocol
{
  v2 = self->_protocol;

  return v2;
}

- (id)target
{
  v2 = self->_target;

  return v2;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = NSConcreteProtocolChecker;
  [(NSProxy *)&v3 dealloc];
}

- (NSConcreteProtocolChecker)initWithTarget:(id)a3 protocol:(id)a4
{
  self->_target = a3;
  self->_protocol = a4;
  return self;
}

@end