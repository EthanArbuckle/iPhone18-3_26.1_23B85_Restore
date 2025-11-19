@interface SCNMTLPassResourceBinding
- (SCNMTLPassResourceBinding)init;
- (void)dealloc;
@end

@implementation SCNMTLPassResourceBinding

- (SCNMTLPassResourceBinding)init
{
  v3.receiver = self;
  v3.super_class = SCNMTLPassResourceBinding;
  return [(SCNMTLResourceBinding *)&v3 init];
}

- (void)dealloc
{
  free(self->_inputs);
  v3.receiver = self;
  v3.super_class = SCNMTLPassResourceBinding;
  [(SCNMTLResourceBinding *)&v3 dealloc];
}

@end