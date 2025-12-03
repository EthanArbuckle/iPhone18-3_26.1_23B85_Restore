@interface SCNGeometryDeformer
- (SCNGeometryDeformer)initWithCoder:(id)coder;
- (void)_enumerateDependencyNodesUsingBlock:(id)block;
@end

@implementation SCNGeometryDeformer

- (SCNGeometryDeformer)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = SCNGeometryDeformer;
  return [(SCNGeometryDeformer *)&v4 init];
}

- (void)_enumerateDependencyNodesUsingBlock:(id)block
{
  v6 = 0;
  requiredInputs = [(SCNGeometryDeformer *)self requiredInputs];
  if ((requiredInputs & 0x38) != 0)
  {
    (*(block + 2))(block, 0, [(SCNGeometryDeformer *)self dependencyNodeAtIndex:0], requiredInputs, &v6);
  }

  if ((requiredInputs & 0x1C0) != 0)
  {
    (*(block + 2))(block, 1, [(SCNGeometryDeformer *)self dependencyNodeAtIndex:1], requiredInputs, &v6);
  }
}

@end