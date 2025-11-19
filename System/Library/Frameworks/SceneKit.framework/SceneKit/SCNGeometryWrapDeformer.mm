@interface SCNGeometryWrapDeformer
- (BOOL)_getDeformedMeshBoundingBox:(id *)a3;
- (SCNGeometryWrapDeformer)initWithCoder:(id)a3;
- (SCNGeometryWrapDeformer)initWithDrivingNode:(id)a3 parameters:(id)a4;
- (SCNGeometryWrapDeformer)initWithInnerLayerNode:(id)a3 outerLayerNode:(id)a4 parameters:(id)a5;
- (SCNNode)drivingNode;
- (id)dependencyNodeAtIndex:(unint64_t)a3;
- (id)newDeformerInstanceForNode:(id)a3 outputs:(unint64_t)a4 computeVertexCount:(unint64_t)a5 context:(id)a6;
- (unint64_t)requiredInputs;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)initParametersIfNeededForDeformedNode:(id)a3;
@end

@implementation SCNGeometryWrapDeformer

- (SCNGeometryWrapDeformer)initWithDrivingNode:(id)a3 parameters:(id)a4
{
  v9.receiver = self;
  v9.super_class = SCNGeometryWrapDeformer;
  v6 = [(SCNGeometryWrapDeformer *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_isLegacySingleLayerDeformer = 1;
    objc_storeWeak(&v6->_legacyDrivingNode, a3);
    v7->_parameters = a4;
  }

  return v7;
}

- (SCNGeometryWrapDeformer)initWithInnerLayerNode:(id)a3 outerLayerNode:(id)a4 parameters:(id)a5
{
  v11.receiver = self;
  v11.super_class = SCNGeometryWrapDeformer;
  v8 = [(SCNGeometryWrapDeformer *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_innerLayerNode, a3);
    objc_storeWeak(&v9->_outerLayerNode, a4);
    v9->_parameters = a5;
  }

  return v9;
}

- (void)initParametersIfNeededForDeformedNode:(id)a3
{
  Weak = objc_loadWeak(&self->_innerLayerNode);
  v6 = objc_loadWeak(&self->_outerLayerNode);
  parameters = self->_parameters;
  v8 = [Weak nodeRef];
  v9 = [v6 nodeRef];
  v10 = [a3 nodeRef];

  [(SCNGeometryWrapDeformerParameters *)parameters initParametersIfNeededWithInnerLayerNodeRef:v8 outerLayerNodeRef:v9 deformedNodeRef:v10];
}

- (void)dealloc
{
  objc_storeWeak(&self->_innerLayerNode, 0);
  objc_storeWeak(&self->_outerLayerNode, 0);
  objc_storeWeak(&self->_legacyDrivingNode, 0);

  v3.receiver = self;
  v3.super_class = SCNGeometryWrapDeformer;
  [(SCNGeometryWrapDeformer *)&v3 dealloc];
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = SCNGeometryWrapDeformer;
  [(SCNGeometryDeformer *)&v5 encodeWithCoder:?];
  [(SCNGeometryWrapDeformer *)self initParametersIfNeededForDeformedNode:0];
  [a3 encodeObject:self->_parameters forKey:@"parameters"];
  [a3 encodeObject:objc_loadWeak(&self->_innerLayerNode) forKey:@"innerLayerNode"];
  [a3 encodeObject:objc_loadWeak(&self->_outerLayerNode) forKey:@"outerLayerNode"];
}

- (SCNGeometryWrapDeformer)initWithCoder:(id)a3
{
  v8.receiver = self;
  v8.super_class = SCNGeometryWrapDeformer;
  v4 = [(SCNGeometryDeformer *)&v8 initWithCoder:?];
  if (v4)
  {
    v4->_parameters = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"parameters"];
    v5 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"innerLayerNode"];
    objc_storeWeak(&v4->_innerLayerNode, v5);
    v6 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"outerLayerNode"];
    objc_storeWeak(&v4->_outerLayerNode, v6);
  }

  return v4;
}

- (SCNNode)drivingNode
{
  v2 = 40;
  if (!self->_legacyDrivingNode)
  {
    v2 = 8;
  }

  return objc_loadWeak((&self->super.super.isa + v2));
}

- (unint64_t)requiredInputs
{
  if (self->_isLegacySingleLayerDeformer)
  {
    return 9;
  }

  else
  {
    return 73;
  }
}

- (BOOL)_getDeformedMeshBoundingBox:(id *)a3
{
  if (self->_isLegacySingleLayerDeformer)
  {
    v5 = [objc_loadWeak(&self->_legacyDrivingNode) nodeRef];

    LOBYTE(LocalBoundingBox) = C3DNodeGetLocalBoundingBox(v5, a3);
  }

  else
  {
    Weak = objc_loadWeak(&self->_innerLayerNode);
    v8 = objc_loadWeak(&self->_outerLayerNode);
    v9 = [Weak nodeRef];
    v10 = [v8 nodeRef];
    LocalBoundingBox = C3DNodeGetLocalBoundingBox(v9, &v23);
    if (LocalBoundingBox)
    {
      LOBYTE(LocalBoundingBox) = C3DNodeGetLocalBoundingBox(v10, v22);
      v12 = v22[0];
      v11 = v22[1];
    }

    v13 = vsubq_f32(v23, v24);
    v13.i32[3] = 0;
    v14 = vsubq_f32(v12, v11);
    v14.i32[3] = 0;
    v15 = vaddq_f32(v23, v24);
    v15.i32[3] = 0;
    v16 = vminnmq_f32(v13, v14);
    v17 = vaddq_f32(v12, v11);
    v17.i32[3] = 0;
    v18 = vmaxnmq_f32(v15, v17);
    v15.i64[0] = 0x3F0000003F000000;
    v15.i64[1] = 0x3F0000003F000000;
    v19 = vmulq_f32(vaddq_f32(v16, v18), v15);
    v19.i32[3] = 1.0;
    v20 = vmulq_f32(vsubq_f32(v18, v16), v15);
    v20.i32[3] = 0;
    *a3 = v19;
    *(a3 + 1) = v20;
  }

  return LocalBoundingBox;
}

- (id)dependencyNodeAtIndex:(unint64_t)a3
{
  if (a3 == 1)
  {
    v3 = &OBJC_IVAR___SCNGeometryWrapDeformer__outerLayerNode;
    return objc_loadWeak((&self->super.super.isa + *v3));
  }

  if (!a3)
  {
    if (self->_isLegacySingleLayerDeformer)
    {
      v3 = &OBJC_IVAR___SCNGeometryWrapDeformer__legacyDrivingNode;
    }

    else
    {
      v3 = &OBJC_IVAR___SCNGeometryWrapDeformer__innerLayerNode;
    }

    return objc_loadWeak((&self->super.super.isa + *v3));
  }

  return 0;
}

- (id)newDeformerInstanceForNode:(id)a3 outputs:(unint64_t)a4 computeVertexCount:(unint64_t)a5 context:(id)a6
{
  if (self->_isLegacySingleLayerDeformer)
  {
    Weak = objc_loadWeak(&self->_legacyDrivingNode);
    v11 = [SCNGeometryWrapDeformerInstance alloc];

    return [(SCNGeometryWrapDeformerInstance *)v11 initWithNode:a3 drivingNode:Weak deformer:self outputs:v12 computeVertexCount:a5 context:a6];
  }

  else
  {
    v14 = objc_loadWeak(&self->_innerLayerNode);
    v15 = objc_loadWeak(&self->_outerLayerNode);
    v16 = [SCNGeometryWrapDeformerInstance alloc];

    return [(SCNGeometryWrapDeformerInstance *)v16 initWithNode:a3 innerLayerNode:v14 outerLayerNode:v15 deformer:self outputs:v17 computeVertexCount:a5 context:a6];
  }
}

@end