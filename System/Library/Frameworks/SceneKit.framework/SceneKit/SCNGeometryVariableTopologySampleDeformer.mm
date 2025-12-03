@interface SCNGeometryVariableTopologySampleDeformer
- (SCNGeometryVariableTopologySampleDeformer)init;
- (SCNGeometryVariableTopologySampleDeformer)initWithCoder:(id)coder;
- (id)newDeformerInstanceForNode:(id)node outputs:(unint64_t)outputs computeVertexCount:(unint64_t)count context:(id)context;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SCNGeometryVariableTopologySampleDeformer

- (SCNGeometryVariableTopologySampleDeformer)init
{
  v3.receiver = self;
  v3.super_class = SCNGeometryVariableTopologySampleDeformer;
  return [(SCNGeometryVariableTopologySampleDeformer *)&v3 init];
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = SCNGeometryVariableTopologySampleDeformer;
  [(SCNGeometryVariableTopologySampleDeformer *)&v2 dealloc];
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = SCNGeometryVariableTopologySampleDeformer;
  [(SCNGeometryDeformer *)&v3 encodeWithCoder:coder];
}

- (SCNGeometryVariableTopologySampleDeformer)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = SCNGeometryVariableTopologySampleDeformer;
  return [(SCNGeometryDeformer *)&v4 initWithCoder:coder];
}

- (id)newDeformerInstanceForNode:(id)node outputs:(unint64_t)outputs computeVertexCount:(unint64_t)count context:(id)context
{
  v8 = [SCNGeometryVariableTopologySampleDeformerInstance alloc];

  return [(SCNGeometryVariableTopologySampleDeformerInstance *)v8 initWithNode:node deformer:v9 outputs:v10 computeVertexCount:v11 context:context];
}

@end