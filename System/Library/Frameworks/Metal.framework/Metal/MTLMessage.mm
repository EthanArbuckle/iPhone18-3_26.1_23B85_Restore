@interface MTLMessage
- (id)init:(unint64_t)a3 message:(id)a4;
- (void)dealloc;
@end

@implementation MTLMessage

- (id)init:(unint64_t)a3 message:(id)a4
{
  v8.receiver = self;
  v8.super_class = MTLMessage;
  v6 = [(MTLMessage *)&v8 init];
  v6->_type = a3;
  v6->_string = a4;
  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MTLMessage;
  [(MTLMessage *)&v3 dealloc];
}

@end