@interface SCNGeometryDeformer
- (SCNGeometryDeformer)initWithCoder:(id)a3;
- (void)_enumerateDependencyNodesUsingBlock:(id)a3;
@end

@implementation SCNGeometryDeformer

- (SCNGeometryDeformer)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = SCNGeometryDeformer;
  return [(SCNGeometryDeformer *)&v4 init];
}

- (void)_enumerateDependencyNodesUsingBlock:(id)a3
{
  v6 = 0;
  v5 = [(SCNGeometryDeformer *)self requiredInputs];
  if ((v5 & 0x38) != 0)
  {
    (*(a3 + 2))(a3, 0, [(SCNGeometryDeformer *)self dependencyNodeAtIndex:0], v5, &v6);
  }

  if ((v5 & 0x1C0) != 0)
  {
    (*(a3 + 2))(a3, 1, [(SCNGeometryDeformer *)self dependencyNodeAtIndex:1], v5, &v6);
  }
}

@end