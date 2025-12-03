@interface SCNGeometryVDMCDeformer
- (SCNGeometryVDMCDeformer)init;
- (SCNGeometryVDMCDeformer)initWithCoder:(id)coder;
- (id)newDeformerInstanceForNode:(id)node outputs:(unint64_t)outputs computeVertexCount:(unint64_t)count context:(id)context;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SCNGeometryVDMCDeformer

- (SCNGeometryVDMCDeformer)init
{
  v3.receiver = self;
  v3.super_class = SCNGeometryVDMCDeformer;
  return [(SCNGeometryVDMCDeformer *)&v3 init];
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = SCNGeometryVDMCDeformer;
  [(SCNGeometryVDMCDeformer *)&v2 dealloc];
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = SCNGeometryVDMCDeformer;
  [(SCNGeometryDeformer *)&v3 encodeWithCoder:coder];
}

- (SCNGeometryVDMCDeformer)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = SCNGeometryVDMCDeformer;
  return [(SCNGeometryDeformer *)&v4 initWithCoder:coder];
}

- (id)newDeformerInstanceForNode:(id)node outputs:(unint64_t)outputs computeVertexCount:(unint64_t)count context:(id)context
{
  v8 = [SCNGeometryVDMCDeformerInstance alloc];

  return [(SCNGeometryVDMCDeformerInstance *)v8 initWithNode:node deformer:v9 outputs:v10 computeVertexCount:v11 context:context];
}

@end