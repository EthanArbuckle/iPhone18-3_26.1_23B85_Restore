@interface SCNGeometryVDMCDeformer
- (SCNGeometryVDMCDeformer)init;
- (SCNGeometryVDMCDeformer)initWithCoder:(id)a3;
- (id)newDeformerInstanceForNode:(id)a3 outputs:(unint64_t)a4 computeVertexCount:(unint64_t)a5 context:(id)a6;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
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

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = SCNGeometryVDMCDeformer;
  [(SCNGeometryDeformer *)&v3 encodeWithCoder:a3];
}

- (SCNGeometryVDMCDeformer)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = SCNGeometryVDMCDeformer;
  return [(SCNGeometryDeformer *)&v4 initWithCoder:a3];
}

- (id)newDeformerInstanceForNode:(id)a3 outputs:(unint64_t)a4 computeVertexCount:(unint64_t)a5 context:(id)a6
{
  v8 = [SCNGeometryVDMCDeformerInstance alloc];

  return [(SCNGeometryVDMCDeformerInstance *)v8 initWithNode:a3 deformer:v9 outputs:v10 computeVertexCount:v11 context:a6];
}

@end