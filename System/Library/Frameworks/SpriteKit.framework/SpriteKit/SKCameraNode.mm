@interface SKCameraNode
- (BOOL)containsNode:(SKNode *)node;
- (NSSet)containedNodeSet;
- (__n128)cameraBoundingBox;
- (double)cameraBoundingBoxOverridingSceneSize:(double)size;
@end

@implementation SKCameraNode

- (BOOL)containsNode:(SKNode *)node
{
  v4 = node;
  scene = [(SKNode *)self scene];
  if (scene && ([(SKNode *)v4 scene], v6 = objc_claimAutoreleasedReturnValue(), [(SKNode *)self scene], v7 = objc_claimAutoreleasedReturnValue(), v7, v6, scene, v6 == v7))
  {
    _backingNode = [(SKNode *)v4 _backingNode];
    [(SKCameraNode *)self cameraBoundingBox];
    v19 = v11;
    v20 = v10;
    v18 = v12;
    *v13.i64 = SKCNode::getWorldBoundingBox(_backingNode);
    v22.columns[0] = v13;
    v22.columns[1] = v14;
    v22.columns[2] = v15;
    v22.columns[3] = v16;
    *v15.f32 = vmul_f32(vsub_f32(v18, *v20.f32), 0x3F0000003F000000);
    v15.i64[1] = 0x3F80000000000000;
    *v13.f32 = vmul_f32(vsub_f32(v19, *v20.f32), 0x3F0000003F000000);
    v13.i64[1] = 0x3F80000000000000;
    v21.columns[0] = vaddq_f32(v13, vaddq_f32(v20, v15));
    v21.columns[1] = v15;
    v21.columns[2] = v13;
    v21.columns[3] = 0uLL;
    v8 = SKCBoundingBoxIntersectsBoundingBox(&v21, &v22);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (NSSet)containedNodeSet
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__0;
  v12 = __Block_byref_object_dispose__0;
  v13 = [MEMORY[0x277CBEB58] set];
  scene = [(SKNode *)self scene];
  v4 = scene;
  if (scene)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __32__SKCameraNode_containedNodeSet__block_invoke;
    v7[3] = &unk_27830FDF0;
    v7[4] = self;
    v7[5] = &v8;
    [scene enumerateChildNodesWithName:@"//SKNode" usingBlock:v7];
  }

  v5 = v9[5];

  _Block_object_dispose(&v8, 8);

  return v5;
}

void __32__SKCameraNode_containedNodeSet__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) containsNode:?])
  {
    [*(*(*(a1 + 40) + 8) + 40) addObject:v3];
  }
}

- (__n128)cameraBoundingBox
{
  scene = [self scene];
  [scene frame];
  [self cameraBoundingBoxOverridingSceneSize:{v3, v4}];
  v7 = v5;

  return v7;
}

- (double)cameraBoundingBoxOverridingSceneSize:(double)size
{
  v3 = a2 * -0.5;
  v4 = size * -0.5;
  v5 = a2 * 0.5;
  v6 = size * 0.5;
  v7 = xmmword_21C4B84C0;
  v8 = xmmword_21C4B84C0;
  *&v8 = v3;
  v9 = v8;
  *(&v9 + 1) = v4;
  *&v7 = v5;
  v10 = v7;
  *(&v10 + 1) = v4;
  *(&v7 + 1) = v6;
  v19 = v9;
  v20 = v7;
  *(&v8 + 1) = v6;
  v17 = v10;
  v18 = v8;
  ConversionMatrixToWorld = SKCNode::getConversionMatrixToWorld([self _backingNode]);
  v15 = 0;
  v21[0] = v19;
  v21[1] = v17;
  v21[2] = v20;
  v21[3] = v18;
  do
  {
    *(&v22 + v15 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(ConversionMatrixToWorld, COERCE_FLOAT(v21[v15])), v12, *&v21[v15], 1), v13, v21[v15], 2), v14, v21[v15], 3);
    ++v15;
  }

  while (v15 != 4);
  return *&v22;
}

@end