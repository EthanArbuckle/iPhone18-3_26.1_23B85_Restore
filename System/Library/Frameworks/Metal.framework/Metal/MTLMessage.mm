@interface MTLMessage
- (id)init:(unint64_t)init message:(id)message;
- (void)dealloc;
@end

@implementation MTLMessage

- (id)init:(unint64_t)init message:(id)message
{
  v8.receiver = self;
  v8.super_class = MTLMessage;
  v6 = [(MTLMessage *)&v8 init];
  v6->_type = init;
  v6->_string = message;
  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MTLMessage;
  [(MTLMessage *)&v3 dealloc];
}

@end