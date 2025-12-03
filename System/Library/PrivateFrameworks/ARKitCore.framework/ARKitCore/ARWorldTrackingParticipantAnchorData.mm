@interface ARWorldTrackingParticipantAnchorData
- (ARWorldTrackingParticipantAnchorData)initWithAnchors:(id)anchors;
- (id)anchorsForCameraWithTransform:(double)transform referenceOriginTransform:(double)originTransform existingAnchors:(double)anchors anchorsToRemove:(float32x4_t)remove;
@end

@implementation ARWorldTrackingParticipantAnchorData

- (ARWorldTrackingParticipantAnchorData)initWithAnchors:(id)anchors
{
  anchorsCopy = anchors;
  v9.receiver = self;
  v9.super_class = ARWorldTrackingParticipantAnchorData;
  v5 = [(ARWorldTrackingParticipantAnchorData *)&v9 init];
  if (v5)
  {
    v6 = [anchorsCopy copy];
    anchors = v5->_anchors;
    v5->_anchors = v6;
  }

  return v5;
}

- (id)anchorsForCameraWithTransform:(double)transform referenceOriginTransform:(double)originTransform existingAnchors:(double)anchors anchorsToRemove:(float32x4_t)remove
{
  v38 = *MEMORY[0x1E69E9840];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  anchors = [self anchors];
  v11 = [anchors countByEnumeratingWithState:&v28 objects:v37 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v29;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v29 != v13)
        {
          objc_enumerationMutation(anchors);
        }

        v15 = *(*(&v28 + 1) + 8 * i);
        [v15 transform];
        v16 = 0;
        v32[0] = v17;
        v32[1] = v18;
        v32[2] = v19;
        v32[3] = v20;
        v33 = 0u;
        v34 = 0u;
        v35 = 0u;
        *v36 = 0u;
        do
        {
          *(&v33 + v16 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(remove, COERCE_FLOAT(v32[v16])), a7, *&v32[v16], 1), a8, v32[v16], 2), a9, v32[v16], 3);
          ++v16;
        }

        while (v16 != 4);
        [v15 setTransform:{*&v33, *&v34, *&v35, v36[0]}];
      }

      v12 = [anchors countByEnumeratingWithState:&v28 objects:v37 count:16];
    }

    while (v12);
  }

  anchors2 = [self anchors];
  allObjects = [anchors2 allObjects];

  return allObjects;
}

@end