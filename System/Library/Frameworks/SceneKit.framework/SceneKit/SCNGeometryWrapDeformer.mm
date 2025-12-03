@interface SCNGeometryWrapDeformer
- (BOOL)_getDeformedMeshBoundingBox:(id *)box;
- (SCNGeometryWrapDeformer)initWithCoder:(id)coder;
- (SCNGeometryWrapDeformer)initWithDrivingNode:(id)node parameters:(id)parameters;
- (SCNGeometryWrapDeformer)initWithInnerLayerNode:(id)node outerLayerNode:(id)layerNode parameters:(id)parameters;
- (SCNNode)drivingNode;
- (id)dependencyNodeAtIndex:(unint64_t)index;
- (id)newDeformerInstanceForNode:(id)node outputs:(unint64_t)outputs computeVertexCount:(unint64_t)count context:(id)context;
- (unint64_t)requiredInputs;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)initParametersIfNeededForDeformedNode:(id)node;
@end

@implementation SCNGeometryWrapDeformer

- (SCNGeometryWrapDeformer)initWithDrivingNode:(id)node parameters:(id)parameters
{
  v9.receiver = self;
  v9.super_class = SCNGeometryWrapDeformer;
  v6 = [(SCNGeometryWrapDeformer *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_isLegacySingleLayerDeformer = 1;
    objc_storeWeak(&v6->_legacyDrivingNode, node);
    v7->_parameters = parameters;
  }

  return v7;
}

- (SCNGeometryWrapDeformer)initWithInnerLayerNode:(id)node outerLayerNode:(id)layerNode parameters:(id)parameters
{
  v11.receiver = self;
  v11.super_class = SCNGeometryWrapDeformer;
  v8 = [(SCNGeometryWrapDeformer *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_innerLayerNode, node);
    objc_storeWeak(&v9->_outerLayerNode, layerNode);
    v9->_parameters = parameters;
  }

  return v9;
}

- (void)initParametersIfNeededForDeformedNode:(id)node
{
  Weak = objc_loadWeak(&self->_innerLayerNode);
  v6 = objc_loadWeak(&self->_outerLayerNode);
  parameters = self->_parameters;
  nodeRef = [Weak nodeRef];
  nodeRef2 = [v6 nodeRef];
  nodeRef3 = [node nodeRef];

  [(SCNGeometryWrapDeformerParameters *)parameters initParametersIfNeededWithInnerLayerNodeRef:nodeRef outerLayerNodeRef:nodeRef2 deformedNodeRef:nodeRef3];
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

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = SCNGeometryWrapDeformer;
  [(SCNGeometryDeformer *)&v5 encodeWithCoder:?];
  [(SCNGeometryWrapDeformer *)self initParametersIfNeededForDeformedNode:0];
  [coder encodeObject:self->_parameters forKey:@"parameters"];
  [coder encodeObject:objc_loadWeak(&self->_innerLayerNode) forKey:@"innerLayerNode"];
  [coder encodeObject:objc_loadWeak(&self->_outerLayerNode) forKey:@"outerLayerNode"];
}

- (SCNGeometryWrapDeformer)initWithCoder:(id)coder
{
  v8.receiver = self;
  v8.super_class = SCNGeometryWrapDeformer;
  v4 = [(SCNGeometryDeformer *)&v8 initWithCoder:?];
  if (v4)
  {
    v4->_parameters = [coder decodeObjectOfClass:objc_opt_class() forKey:@"parameters"];
    v5 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"innerLayerNode"];
    objc_storeWeak(&v4->_innerLayerNode, v5);
    v6 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"outerLayerNode"];
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

- (BOOL)_getDeformedMeshBoundingBox:(id *)box
{
  if (self->_isLegacySingleLayerDeformer)
  {
    nodeRef = [objc_loadWeak(&self->_legacyDrivingNode) nodeRef];

    LOBYTE(LocalBoundingBox) = C3DNodeGetLocalBoundingBox(nodeRef, box);
  }

  else
  {
    Weak = objc_loadWeak(&self->_innerLayerNode);
    v8 = objc_loadWeak(&self->_outerLayerNode);
    nodeRef2 = [Weak nodeRef];
    nodeRef3 = [v8 nodeRef];
    LocalBoundingBox = C3DNodeGetLocalBoundingBox(nodeRef2, &v23);
    if (LocalBoundingBox)
    {
      LOBYTE(LocalBoundingBox) = C3DNodeGetLocalBoundingBox(nodeRef3, v22);
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
    *box = v19;
    *(box + 1) = v20;
  }

  return LocalBoundingBox;
}

- (id)dependencyNodeAtIndex:(unint64_t)index
{
  if (index == 1)
  {
    v3 = &OBJC_IVAR___SCNGeometryWrapDeformer__outerLayerNode;
    return objc_loadWeak((&self->super.super.isa + *v3));
  }

  if (!index)
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

- (id)newDeformerInstanceForNode:(id)node outputs:(unint64_t)outputs computeVertexCount:(unint64_t)count context:(id)context
{
  if (self->_isLegacySingleLayerDeformer)
  {
    Weak = objc_loadWeak(&self->_legacyDrivingNode);
    v11 = [SCNGeometryWrapDeformerInstance alloc];

    return [(SCNGeometryWrapDeformerInstance *)v11 initWithNode:node drivingNode:Weak deformer:self outputs:v12 computeVertexCount:count context:context];
  }

  else
  {
    v14 = objc_loadWeak(&self->_innerLayerNode);
    v15 = objc_loadWeak(&self->_outerLayerNode);
    v16 = [SCNGeometryWrapDeformerInstance alloc];

    return [(SCNGeometryWrapDeformerInstance *)v16 initWithNode:node innerLayerNode:v14 outerLayerNode:v15 deformer:self outputs:v17 computeVertexCount:count context:context];
  }
}

@end