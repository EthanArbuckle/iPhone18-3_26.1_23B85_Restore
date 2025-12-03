@interface NSConcreteProtocolChecker
- (NSConcreteProtocolChecker)initWithTarget:(id)target protocol:(id)protocol;
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

- (NSConcreteProtocolChecker)initWithTarget:(id)target protocol:(id)protocol
{
  self->_target = target;
  self->_protocol = protocol;
  return self;
}

@end