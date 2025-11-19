@interface SCNMTLSemanticResourceBinding
- (void)dealloc;
@end

@implementation SCNMTLSemanticResourceBinding

- (void)dealloc
{
  free(self->_semantics);
  v3.receiver = self;
  v3.super_class = SCNMTLSemanticResourceBinding;
  [(SCNMTLResourceBinding *)&v3 dealloc];
}

@end