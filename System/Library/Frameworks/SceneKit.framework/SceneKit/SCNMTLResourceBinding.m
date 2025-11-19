@interface SCNMTLResourceBinding
- (NSMutableArray)usedResources;
- (SCNMTLResourceBinding)init;
- (id)description;
- (void)dealloc;
@end

@implementation SCNMTLResourceBinding

- (SCNMTLResourceBinding)init
{
  v3.receiver = self;
  v3.super_class = SCNMTLResourceBinding;
  result = [(SCNMTLResourceBinding *)&v3 init];
  *&result->_indices.vertexIndex = -1;
  result->_usedResources = 0;
  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SCNMTLResourceBinding;
  [(SCNMTLResourceBinding *)&v3 dealloc];
}

- (id)description
{
  v3 = [MEMORY[0x277CCAB68] string];
  v4 = objc_opt_class();
  [v3 appendFormat:@"<%@: %p> %@", NSStringFromClass(v4), self, -[MTLArgument name](self->_argument, "name")];
  return v3;
}

- (NSMutableArray)usedResources
{
  result = self->_usedResources;
  if (!result)
  {
    result = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:0];
    self->_usedResources = result;
  }

  return result;
}

@end