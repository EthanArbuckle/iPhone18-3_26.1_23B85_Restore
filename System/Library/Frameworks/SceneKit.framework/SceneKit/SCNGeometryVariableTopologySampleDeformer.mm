@interface SCNGeometryVariableTopologySampleDeformer
- (SCNGeometryVariableTopologySampleDeformer)init;
- (SCNGeometryVariableTopologySampleDeformer)initWithCoder:(id)a3;
- (id)newDeformerInstanceForNode:(id)a3 outputs:(unint64_t)a4 computeVertexCount:(unint64_t)a5 context:(id)a6;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
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

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = SCNGeometryVariableTopologySampleDeformer;
  [(SCNGeometryDeformer *)&v3 encodeWithCoder:a3];
}

- (SCNGeometryVariableTopologySampleDeformer)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = SCNGeometryVariableTopologySampleDeformer;
  return [(SCNGeometryDeformer *)&v4 initWithCoder:a3];
}

- (id)newDeformerInstanceForNode:(id)a3 outputs:(unint64_t)a4 computeVertexCount:(unint64_t)a5 context:(id)a6
{
  v8 = [SCNGeometryVariableTopologySampleDeformerInstance alloc];

  return [(SCNGeometryVariableTopologySampleDeformerInstance *)v8 initWithNode:a3 deformer:v9 outputs:v10 computeVertexCount:v11 context:a6];
}

@end