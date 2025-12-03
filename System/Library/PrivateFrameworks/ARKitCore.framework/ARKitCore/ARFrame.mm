@interface ARFrame
- (ARBody2D)detectedBody;
- (ARFrame)initWithCamera:(id)camera timestamp:(double)timestamp;
- (ARFrame)initWithCoder:(id)coder;
- (ARFrame)initWithTimestamp:(double)timestamp context:(id)context;
- (ARHitTestResult)_hitTestFromOrigin:(float32x4_t)origin withDirection:(float32x4_t)direction planeAlignment:(float32x4_t)alignment forPlanes:(float32x4_t)planes referenceOriginTransform:(uint64_t)transform;
- (ARRaycastQuery)raycastQueryFromPoint:(CGPoint)point allowingTarget:(ARRaycastTarget)target alignment:(ARRaycastTargetAlignment)alignment;
- (BOOL)isEqual:(id)equal;
- (BOOL)useHittestRaycasting;
- (CGAffineTransform)displayTransformForOrientation:(SEL)orientation viewportSize:(UIInterfaceOrientation)orientation;
- (NSArray)hitTest:(CGPoint)point types:(ARHitTestResultType)types;
- (__n128)gravityAlignedReferenceOriginTransform;
- (__n128)setReferenceOriginDelta:(__n128)delta;
- (__n128)setReferenceOriginTransform:(__n128)transform;
- (__n128)setSessionOriginTransform:(__n128)transform;
- (__n128)setWorldAlignmentTransform:(__n128)transform;
- (double)transformPointToNDCSpace:(double)space;
- (id)_hitTestEstimatedPlanesFromOrigin:(ARFrame *)self withDirection:(SEL)direction planeAlignment:(int64_t)alignment;
- (id)_hitTestFromOrigin:(ARFrame *)self withDirection:(SEL)direction types:(unint64_t)types;
- (id)_horizontalPlaneEstimateFromFeaturePoint:(ARFrame *)self fromOrigin:(SEL)origin withDirection:;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)setCapturedImage:(__CVBuffer *)image;
- (void)setDepthConfidenceData:(__CVBuffer *)data;
- (void)setDepthNormalData:(__CVBuffer *)data;
- (void)setDownSampledMattingPixelBuffer:(__CVBuffer *)buffer;
- (void)setEstimatedDepthData:(__CVBuffer *)data;
- (void)setMattingScaleImagePixelBuffer:(__CVBuffer *)buffer;
- (void)setReferenceOriginChanged:(BOOL)changed;
- (void)setReferenceOriginTransformUpdated:(BOOL)updated;
- (void)setSegmentationBuffer:(__CVBuffer *)buffer;
- (void)setSemanticSegmentationBuffer:(__CVBuffer *)buffer;
@end

@implementation ARFrame

- (ARFrame)initWithCamera:(id)camera timestamp:(double)timestamp
{
  cameraCopy = camera;
  v21.receiver = self;
  v21.super_class = ARFrame;
  v8 = [(ARFrame *)&v21 init];
  v9 = v8;
  if (v8)
  {
    v8->_timestamp = timestamp;
    objc_storeStrong(&v8->_camera, camera);
    anchors = v9->_anchors;
    v11 = MEMORY[0x1E695E0F0];
    v9->_anchors = MEMORY[0x1E695E0F0];

    privateAnchors = v9->_privateAnchors;
    v9->_privateAnchors = v11;

    v9->_worldMappingStatus = 0;
    v13 = MEMORY[0x1E69E9B18];
    v14 = *MEMORY[0x1E69E9B18];
    v15 = *(MEMORY[0x1E69E9B18] + 16);
    *v9->_anon_1f0 = *MEMORY[0x1E69E9B18];
    *&v9->_anon_1f0[16] = v15;
    v16 = *(v13 + 32);
    v17 = *(v13 + 48);
    *&v9->_anon_1f0[32] = v16;
    *&v9->_anon_1f0[48] = v17;
    *v9->_anon_230 = v14;
    *&v9->_anon_230[16] = v15;
    *&v9->_anon_230[32] = v16;
    *&v9->_anon_230[48] = v17;
    *v9->_anon_270 = v14;
    *&v9->_anon_270[16] = v15;
    *&v9->_anon_270[32] = v16;
    *&v9->_anon_270[48] = v17;
    *&v9[1]._shouldRestrictFrameRate = v16;
    *&v9[1]._segmentationBuffer = v17;
    *&v9[1].super.isa = v14;
    *&v9[1]._cachedVerticalPlaneAnchors = v15;
    detectedBodies = v9->_detectedBodies;
    v9->_detectedBodies = v11;

    detectedPersonMetadata = v9->_detectedPersonMetadata;
    v9->_detectedPersonMetadata = v11;

    kdebug_trace();
  }

  return v9;
}

- (ARFrame)initWithTimestamp:(double)timestamp context:(id)context
{
  contextCopy = context;
  imageData = [contextCopy imageData];
  v8 = [[ARCamera alloc] initFromImageData:imageData];
  v9 = [(ARFrame *)self initWithCamera:v8 timestamp:timestamp];
  if (v9)
  {
    v9->_capturedImage = CVPixelBufferRetain([imageData pixelBuffer]);
    exifData = [imageData exifData];
    v11 = [exifData copy];
    v12 = v11;
    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = MEMORY[0x1E695E0F8];
    }

    objc_storeStrong(&v9->_exifData, v13);

    tiffData = [imageData tiffData];
    v15 = [tiffData copy];
    tiffData = v9->_tiffData;
    v9->_tiffData = v15;

    v9->_highResolution = [imageData isHighResolution];
    v9->_deviceOrientation = [imageData deviceOrientation];
    [imageData currentCaptureTimestamp];
    v9->_currentCaptureTimestamp = v17;
    captureDate = [imageData captureDate];
    captureDate = v9->_captureDate;
    v9->_captureDate = captureDate;

    depthData = [imageData depthData];
    capturedDepthData = v9->_capturedDepthData;
    v9->_capturedDepthData = depthData;

    pointCloud = [imageData pointCloud];
    capturedPointCloudData = v9->_capturedPointCloudData;
    v9->_capturedPointCloudData = pointCloud;

    [imageData depthDataTimestamp];
    v9->_capturedDepthDataTimestamp = v24;
    faceData = [imageData faceData];
    faceData = v9->_faceData;
    v9->_faceData = faceData;

    v9->_renderFramesPerSecond = [imageData captureFramesPerSecond];
    v9->_worldAlignment = [contextCopy worldAlignment];
    if ([imageData pixelBuffer] && (objc_msgSend(imageData, "isHighResolution") & 1) == 0)
    {
      [v8 imageResolution];
      v28 = v27;
      [v8 imageResolution];
      v30 = +[ARImageNoiseTexture sharedInstanceForCameraPosition:longEdgeImageResolution:](ARImageNoiseTexture, "sharedInstanceForCameraPosition:longEdgeImageResolution:", [imageData cameraPosition], fmax(v28, v29));
      [imageData signalToNoiseRatio];
      [v30 snrToNoiseIntensity:?];
      v9->_cameraGrainIntensity = v31;
      texture = [v30 texture];
      cameraGrainTexture = v9->_cameraGrainTexture;
      v9->_cameraGrainTexture = texture;

      v9->_imageNoiseIntensity = v9->_cameraGrainIntensity;
      objc_storeStrong(&v9->_imageNoiseTexture, v9->_cameraGrainTexture);
    }

    latestUltraWideImage = [imageData latestUltraWideImage];
    v35 = latestUltraWideImage;
    if (latestUltraWideImage)
    {
      v9->_capturedUltraWideImage = CVPixelBufferRetain([latestUltraWideImage pixelBuffer]);
      [v35 timestamp];
      v9->_ultraWideImageTimestamp = v36;
      v37 = [[ARCamera alloc] initFromImageData:v35];
      ultraWideCamera = v9->_ultraWideCamera;
      v9->_ultraWideCamera = v37;
    }

    if ([imageData visionDataWasDelivered])
    {
      visionDataWasDelivered = 1;
    }

    else
    {
      visionDataWasDelivered = [v35 visionDataWasDelivered];
    }

    v9->_visionDataWasDelivered = visionDataWasDelivered;
  }

  return v9;
}

- (void)setCapturedImage:(__CVBuffer *)image
{
  capturedImage = self->_capturedImage;
  if (capturedImage != image)
  {
    CVPixelBufferRelease(capturedImage);
    self->_capturedImage = CVPixelBufferRetain(image);
  }
}

- (void)setSegmentationBuffer:(__CVBuffer *)buffer
{
  segmentationBuffer = self->_segmentationBuffer;
  if (segmentationBuffer != buffer)
  {
    CVPixelBufferRelease(segmentationBuffer);
    self->_segmentationBuffer = buffer;

    CVPixelBufferRetain(buffer);
  }
}

- (void)setEstimatedDepthData:(__CVBuffer *)data
{
  estimatedDepthData = self->_estimatedDepthData;
  if (estimatedDepthData != data)
  {
    CVPixelBufferRelease(estimatedDepthData);
    self->_estimatedDepthData = data;

    CVPixelBufferRetain(data);
  }
}

- (void)setDepthConfidenceData:(__CVBuffer *)data
{
  depthConfidenceData = self->_depthConfidenceData;
  if (depthConfidenceData != data)
  {
    CVPixelBufferRelease(depthConfidenceData);
    self->_depthConfidenceData = data;

    CVPixelBufferRetain(data);
  }
}

- (void)setDepthNormalData:(__CVBuffer *)data
{
  depthNormalData = self->_depthNormalData;
  if (depthNormalData != data)
  {
    CVPixelBufferRelease(depthNormalData);
    self->_depthNormalData = data;

    CVPixelBufferRetain(data);
  }
}

- (void)setSemanticSegmentationBuffer:(__CVBuffer *)buffer
{
  semanticSegmentationBuffer = self->_semanticSegmentationBuffer;
  if (semanticSegmentationBuffer != buffer)
  {
    CVPixelBufferRelease(semanticSegmentationBuffer);
    self->_semanticSegmentationBuffer = buffer;

    CVPixelBufferRetain(buffer);
  }
}

- (void)setDownSampledMattingPixelBuffer:(__CVBuffer *)buffer
{
  downSampledMattingPixelBuffer = self->_downSampledMattingPixelBuffer;
  if (downSampledMattingPixelBuffer != buffer)
  {
    CVPixelBufferRelease(downSampledMattingPixelBuffer);
    self->_downSampledMattingPixelBuffer = buffer;

    CVPixelBufferRetain(buffer);
  }
}

- (void)setMattingScaleImagePixelBuffer:(__CVBuffer *)buffer
{
  mattingScaleImagePixelBuffer = self->_mattingScaleImagePixelBuffer;
  if (mattingScaleImagePixelBuffer != buffer)
  {
    CVPixelBufferRelease(mattingScaleImagePixelBuffer);
    self->_mattingScaleImagePixelBuffer = buffer;

    CVPixelBufferRetain(buffer);
  }
}

- (ARBody2D)detectedBody
{
  detectedBodies = [(ARFrame *)self detectedBodies];
  firstObject = [detectedBodies firstObject];

  return firstObject;
}

- (void)dealloc
{
  kdebug_trace();
  CVPixelBufferRelease(self->_capturedImage);
  CVPixelBufferRelease(self->_capturedUltraWideImage);
  CVPixelBufferRelease(self->_segmentationBuffer);
  CVPixelBufferRelease(self->_estimatedDepthData);
  CVPixelBufferRelease(self->_downSampledMattingPixelBuffer);
  CVPixelBufferRelease(self->_mattingScaleImagePixelBuffer);
  CVPixelBufferRelease(self->_depthConfidenceData);
  CVPixelBufferRelease(self->_depthNormalData);
  CVPixelBufferRelease(self->_semanticSegmentationBuffer);
  v3.receiver = self;
  v3.super_class = ARFrame;
  [(ARFrame *)&v3 dealloc];
}

- (double)transformPointToNDCSpace:(double)space
{
  v3 = a2;
  v13 = (v3 * 2.0) + -1.0;
  spaceCopy = space;
  v12 = (spaceCopy * -2.0) + 1.0;
  camera = [self camera];
  [camera projectionMatrix];
  v15 = __invert_f4(v14);
  v8 = v15.columns[0];
  v9 = v15.columns[1];
  v10 = v15.columns[3];
  v11 = v15.columns[2];

  v6 = vaddq_f32(v10, vmlaq_f32(vmlaq_n_f32(vmulq_n_f32(v8, v13), v9, v12), 0, v11));
  *&result = vdivq_f32(v6, vdupq_laneq_s32(v6, 3)).u64[0];
  return result;
}

- (NSArray)hitTest:(CGPoint)point types:(ARHitTestResultType)types
{
  [(ARFrame *)self transformPointToNDCSpace:point.x, point.y];
  camera = [(ARFrame *)self camera];
  [camera transform];

  camera2 = [(ARFrame *)self camera];
  [camera2 transform];

  return [ARFrame _hitTestFromOrigin:"_hitTestFromOrigin:withDirection:types:" withDirection:types types:?];
}

- (ARRaycastQuery)raycastQueryFromPoint:(CGPoint)point allowingTarget:(ARRaycastTarget)target alignment:(ARRaycastTargetAlignment)alignment
{
  [(ARFrame *)self transformPointToNDCSpace:point.x, point.y];
  v24 = v8;
  camera = [(ARFrame *)self camera];
  [camera transform];
  v25 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v10, v24.f32[0]), v11, *v24.f32, 1), v12, v24, 2), v13, v24, 3);

  camera2 = [(ARFrame *)self camera];
  [camera2 transform];
  v26 = vsubq_f32(v25, v15);
  v16 = vmulq_f32(v26, v26);
  *&v17 = v16.f32[2] + vaddv_f32(*v16.f32);
  *v16.f32 = vrsqrte_f32(v17);
  *v16.f32 = vmul_f32(*v16.f32, vrsqrts_f32(v17, vmul_f32(*v16.f32, *v16.f32)));
  LODWORD(v23) = vmul_f32(*v16.f32, vrsqrts_f32(v17, vmul_f32(*v16.f32, *v16.f32))).u32[0];

  v18 = [ARRaycastQuery alloc];
  camera3 = [(ARFrame *)self camera];
  [camera3 transform];
  v21 = [(ARRaycastQuery *)v18 initWithOrigin:target direction:alignment allowingTarget:v20 alignment:*vmulq_n_f32(v26, v23).i64];

  return v21;
}

- (CGAffineTransform)displayTransformForOrientation:(SEL)orientation viewportSize:(UIInterfaceOrientation)orientation
{
  height = viewportSize.height;
  width = viewportSize.width;
  camera = [(ARFrame *)self camera];
  [camera imageResolution];
  ARCameraImageToViewTransform(orientation, 0, retstr, v9, v10, width, height);

  return result;
}

- (__n128)setReferenceOriginTransform:(__n128)transform
{
  result[31] = a2;
  result[32] = transform;
  result[33] = a4;
  result[34] = a5;
  result[1].n128_u64[1] |= 1uLL;
  return result;
}

- (void)setReferenceOriginTransformUpdated:(BOOL)updated
{
  v3 = 2;
  if (!updated)
  {
    v3 = 0;
  }

  self->_transformFlags = self->_transformFlags & 0xFFFFFFFFFFFFFFFDLL | v3;
}

- (void)setReferenceOriginChanged:(BOOL)changed
{
  v3 = 4;
  if (!changed)
  {
    v3 = 0;
  }

  self->_transformFlags = self->_transformFlags & 0xFFFFFFFFFFFFFFFBLL | v3;
}

- (__n128)setReferenceOriginDelta:(__n128)delta
{
  result[35] = a2;
  result[36] = delta;
  result[37] = a4;
  result[38] = a5;
  result[1].n128_u64[1] |= 8uLL;
  return result;
}

- (__n128)setSessionOriginTransform:(__n128)transform
{
  result[39] = a2;
  result[40] = transform;
  result[41] = a4;
  result[42] = a5;
  result[1].n128_u64[1] |= 0x10uLL;
  return result;
}

- (__n128)setWorldAlignmentTransform:(__n128)transform
{
  result[43] = a2;
  result[44] = transform;
  result[45] = a4;
  result[46] = a5;
  result[1].n128_u64[1] |= 0x20uLL;
  return result;
}

- (__n128)gravityAlignedReferenceOriginTransform
{
  if ([self sessionOriginTransformAvailable] && objc_msgSend(self, "worldAlignmentTransformAvailable"))
  {
    v10 = __invert_f4(*(self + 688));
    v2 = 0;
    v3 = *(self + 624);
    v4 = *(self + 640);
    v5 = *(self + 656);
    v6 = *(self + 672);
    v8 = v10;
    memset(v9, 0, sizeof(v9));
    do
    {
      v9[v2] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v3, COERCE_FLOAT(*&v8.columns[v2])), v4, *v8.columns[v2].f32, 1), v5, v8.columns[v2], 2), v6, v8.columns[v2], 3);
      ++v2;
    }

    while (v2 != 4);
    v10.columns[0].i64[0] = *&v9[0];
  }

  else if ([self worldAlignmentTransformAvailable])
  {
    v10.columns[0].i64[0] = __invert_f4(*(self + 688));
  }

  else if ([self sessionOriginTransformAvailable])
  {
    v10.columns[0] = *(self + 624);
  }

  else
  {
    v10.columns[0] = *MEMORY[0x1E69E9B18];
  }

  return v10.columns[0];
}

- (BOOL)useHittestRaycasting
{
  if (!ARDeviceSupportsJasper())
  {
    return 0;
  }

  capturedPointCloudData = [(ARFrame *)self capturedPointCloudData];
  if (capturedPointCloudData)
  {
    capturedPointCloudData2 = [(ARFrame *)self capturedPointCloudData];
    v5 = [capturedPointCloudData2 count] != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_hitTestFromOrigin:(ARFrame *)self withDirection:(SEL)direction types:(unint64_t)types
{
  v67 = v3;
  v68 = v4;
  v80 = *MEMORY[0x1E69E9840];
  [(ARFrame *)self timestamp];
  kdebug_trace();
  [ARSessionMetrics recordHitTest:types];
  v7 = objc_opt_new();
  if ((types & 0x38) != 0)
  {
    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
    anchors = [(ARFrame *)self anchors];
    v9 = [anchors countByEnumeratingWithState:&v69 objects:v79 count:16];
    if (!v9)
    {
      goto LABEL_23;
    }

    v10 = v9;
    v11 = *v70;
    while (1)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v70 != v11)
        {
          objc_enumerationMutation(anchors);
        }

        v13 = *(*(&v69 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if ((types & 0x20) != 0)
          {
            v14 = [v13 _hitTestFromOrigin:1 withDirection:1 usingExtent:v67 usingGeometry:v68];
            if (v14)
            {
              [v7 addObject:v14];
            }

            if ((types & 0x10) == 0)
            {
LABEL_10:
              if ((types & 8) == 0)
              {
                continue;
              }

LABEL_18:
              v16 = [v13 _hitTestFromOrigin:0 withDirection:0 usingExtent:v67 usingGeometry:v68];
              if (v16)
              {
                [v7 addObject:v16];
              }

              continue;
            }
          }

          else if ((types & 0x10) == 0)
          {
            goto LABEL_10;
          }

          v15 = [v13 _hitTestFromOrigin:1 withDirection:0 usingExtent:v67 usingGeometry:v68];
          if (v15)
          {
            [v7 addObject:v15];
          }

          if ((types & 8) != 0)
          {
            goto LABEL_18;
          }
        }
      }

      v10 = [anchors countByEnumeratingWithState:&v69 objects:v79 count:16];
      if (!v10)
      {
LABEL_23:

        break;
      }
    }
  }

  featurePoints = [(ARFrame *)self featurePoints];

  if (featurePoints)
  {
    v18 = [v7 count];
    if ((types & 2) != 0)
    {
      worldAlignment = [(ARFrame *)self worldAlignment];
      if (v18)
      {
        v20 = 0;
      }

      else
      {
        v20 = *(&v68 + 1) <= -0.00000011921;
      }

      typesCopy = types & 0xFD;
      if (v20)
      {
        typesCopy = types;
      }

      if (worldAlignment != 2)
      {
        LOBYTE(types) = typesCopy;
      }
    }

    if ((types & 1) == 0)
    {
      useHittestRaycasting = [(ARFrame *)self useHittestRaycasting];
      v23 = 0;
      if ((types & 2) == 0 || useHittestRaycasting)
      {
        goto LABEL_47;
      }
    }

    camera = [(ARFrame *)self camera];
    [camera intrinsics];
    v62 = v26;
    v64 = v25;
    v60 = v27;
    camera2 = [(ARFrame *)self camera];
    [camera2 imageResolution];
    LODWORD(v65) = ARCameraFieldOfViewFromIntrinsics(v64, v62, v60, v29, v30).u32[0];

    if ([(ARFrame *)self useHittestRaycasting])
    {
      camera3 = [(ARFrame *)self camera];
      [camera3 transform];
      v36 = 0;
      v73[0] = xmmword_1C25C9230;
      v73[1] = xmmword_1C25C9240;
      v73[2] = xmmword_1C25C9250;
      v73[3] = xmmword_1C25C8560;
      v74 = 0u;
      v75 = 0u;
      v76 = 0u;
      *v77 = 0u;
      do
      {
        *(&v74 + v36 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v32, COERCE_FLOAT(v73[v36])), v33, *&v73[v36], 1), v34, v73[v36], 2), v35, v73[v36], 3);
        ++v36;
      }

      while (v36 != 4);
      v61 = *&v76;
      v63 = v77[0];
      v58 = v74;
      v59 = v75;

      capturedPointCloudData = [(ARFrame *)self capturedPointCloudData];
      v38 = v65 * 0.5;
      *&v39 = v65 * 0.5;
      v23 = [capturedPointCloudData _hitTestPointFromOrigin:v67 withDirection:v68 maximumAngle:v39 cameraToWorldTransform:{*&v58, *&v59, v61, v63}];

      if (v23)
      {
        if ((types & 1) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_45;
      }
    }

    else
    {
      v38 = v65 * 0.5;
    }

    v40 = [(ARFrame *)self featurePoints:v58];
    *&v41 = v38;
    v23 = [v40 _hitTestPointFromOrigin:v67 withDirection:v68 maximumAngle:v41 cameraToWorldTransform:{*MEMORY[0x1E69E9B18], *(MEMORY[0x1E69E9B18] + 16), *(MEMORY[0x1E69E9B18] + 32), *(MEMORY[0x1E69E9B18] + 48)}];

    if ((types & 1) == 0)
    {
LABEL_47:
      if ((types & 2) != 0)
      {
        if ([(ARFrame *)self useHittestRaycasting])
        {
          [(ARFrame *)self referenceOriginTransform];
          [ARHitTestRaycasting hitTestFromOrigin:self resultType:2 origin:v67 withDirection:v68 referenceOriginTransform:v42, v43, v44, v45];
        }

        else
        {
          [(ARFrame *)self _hitTestEstimatedPlanesFromOrigin:0 withDirection:v67 planeAlignment:v68];
        }
        v46 = ;
        if (v46)
        {
          [v7 addObject:v46];
        }

        else if (v23 && ![(ARFrame *)self useHittestRaycasting])
        {
          [v23 worldTransform];
          v66 = v55;
          [v23 localTransform];
          v57 = [(ARFrame *)self _horizontalPlaneEstimateFromFeaturePoint:*vsubq_f32(v66 fromOrigin:v56).i64 withDirection:v67, v68];
          if (v57)
          {
            [v7 addObject:v57];
          }
        }
      }

      if (!v18 && (types & 4) != 0)
      {
        if ([(ARFrame *)self useHittestRaycasting])
        {
          [(ARFrame *)self referenceOriginTransform];
          [ARHitTestRaycasting hitTestFromOrigin:self resultType:4 origin:v67 withDirection:v68 referenceOriginTransform:v47, v48, v49, v50];
        }

        else
        {
          [(ARFrame *)self _hitTestEstimatedPlanesFromOrigin:1 withDirection:v67 planeAlignment:v68];
        }
        v51 = ;
        if (v51)
        {
          [v7 addObject:v51];
        }
      }

      goto LABEL_63;
    }

LABEL_45:
    if (v23)
    {
      [v7 addObject:v23];
    }

    goto LABEL_47;
  }

LABEL_63:
  if ([v7 count] >= 2)
  {
    v52 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"distance" ascending:1];
    v78 = v52;
    v53 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v78 count:1];
    [v7 sortUsingDescriptors:v53];
  }

  kdebug_trace();

  return v7;
}

- (id)_horizontalPlaneEstimateFromFeaturePoint:(ARFrame *)self fromOrigin:(SEL)origin withDirection:
{
  v36 = v4;
  v38 = v3;
  v34 = v2;
  [(ARFrame *)self referenceOriginTransform];
  v7 = fabsf(v6 + -1.0);
  if (v7 >= 0.00000011921)
  {
    [(ARFrame *)self referenceOriginTransform];
    v50 = __invert_f4(v49);
    v10 = vaddq_f32(v50.columns[3], vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v50.columns[0], v34.f32[0]), v50.columns[1], *v34.f32, 1), v50.columns[2], v34, 2));
    v9 = vaddq_f32(v50.columns[3], vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v50.columns[0], v38.f32[0]), v50.columns[1], *v38.f32, 1), v50.columns[2], v38, 2));
    v8 = vmlaq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v50.columns[0], v36.f32[0]), v50.columns[1], *v36.f32, 1), v50.columns[2], v36, 2), 0, v50.columns[3]);
  }

  else
  {
    v8 = v36;
    v9 = v38;
    v10 = v34;
  }

  v11 = vdivq_f32(vsubq_f32(v10, v9), v8).u64[0];
  v12 = v11.f32[1];
  if (v11.f32[1] >= 0.0)
  {
    v14 = vmlaq_lane_f32(v9, v8, v11, 1);
    v15 = *(MEMORY[0x1E69E9B18] + 16);
    v16 = *(MEMORY[0x1E69E9B18] + 32);
    v17 = vsubq_f32(v14, v10);
    v14.i32[3] = 1.0;
    v17.i32[3] = 1.0;
    v37 = *MEMORY[0x1E69E9B18];
    v39 = v14;
    v33 = v16;
    v35 = v15;
    v32 = v17;
    if (v7 >= 0.00000011921)
    {
      [(ARFrame *)self referenceOriginTransform];
      v22 = 0;
      v40 = v37;
      v41 = v35;
      v42 = v33;
      v43 = v39;
      v44 = 0u;
      v45 = 0u;
      v46 = 0u;
      v47 = 0u;
      do
      {
        *(&v44 + v22) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v18, COERCE_FLOAT(*(&v40 + v22))), v19, *(&v40 + v22), 1), v20, *(&v40 + v22), 2), v21, *(&v40 + v22), 3);
        v22 += 16;
      }

      while (v22 != 64);
      v30 = *&v45;
      v31 = *&v44;
      v29 = *&v46;
      v39.i64[0] = v47;
      [(ARFrame *)self referenceOriginTransform];
      v27 = 0;
      v40 = v37;
      v41 = v35;
      v42 = v33;
      v43 = v32;
      v44 = 0u;
      v45 = 0u;
      v46 = 0u;
      v47 = 0u;
      do
      {
        *(&v44 + v27) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v23, COERCE_FLOAT(*(&v40 + v27))), v24, *(&v40 + v27), 1), v25, *(&v40 + v27), 2), v26, *(&v40 + v27), 3);
        v27 += 16;
      }

      while (v27 != 64);
      *&v35 = v45;
      *&v37 = v44;
      v32.i64[0] = v47;
      *&v33 = v46;
    }

    else
    {
      v30 = *&v15;
      v31 = *MEMORY[0x1E69E9B18];
      v29 = *&v16;
    }

    v13 = [[ARHitTestResult alloc] initWithType:2];
    [(ARHitTestResult *)v13 setDistance:v12];
    [(ARHitTestResult *)v13 setWorldTransform:v31, v30, v29, *v39.i64];
    [(ARHitTestResult *)v13 setLocalTransform:*&v37, *&v35, *&v33, *v32.i64];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (ARHitTestResult)_hitTestFromOrigin:(float32x4_t)origin withDirection:(float32x4_t)direction planeAlignment:(float32x4_t)alignment forPlanes:(float32x4_t)planes referenceOriginTransform:(uint64_t)transform
{
  v11 = a10;
  v12 = 0;
  if ([v11 count])
  {
    v13 = 0;
    v14 = fabsf(direction.f32[1] + -1.0);
    v15 = 2;
    if (a9)
    {
      v15 = 4;
    }

    v40 = v15;
    v16 = v14 >= 0.00000011921 || a9 != 0;
    v17 = -0.00000011921;
    do
    {
      v18 = [v11 objectAtIndexedSubscript:v13];
      if ([v18 alignment] == a9)
      {
        [v18 transform];
        v19 = 0;
        v51[0] = v20;
        v51[1] = v21;
        v51[2] = v22;
        v51[3] = v23;
        v52 = 0u;
        v53 = 0u;
        v54 = 0u;
        v55 = 0u;
        do
        {
          *(&v52 + v19 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(origin, COERCE_FLOAT(v51[v19])), direction, *&v51[v19], 1), alignment, v51[v19], 2), planes, v51[v19], 3);
          ++v19;
        }

        while (v19 != 4);
        v24 = v55;
        if (v16)
        {
          v25 = *&v52;
          v26 = *&v53;
          v27 = *&v54;
        }

        else
        {
          ARMatrix4x4FromRotationAndTranslation();
        }

        v28 = vsubq_f32(v24, self);
        v29 = vmulq_f32(v28, v28);
        *&v30 = v29.f32[2] + vaddv_f32(*v29.f32);
        v31 = vrsqrte_f32(v30);
        v32 = vmul_f32(v31, vrsqrts_f32(v30, vmul_f32(v31, v31)));
        v33 = vmulq_f32(vmulq_n_f32(v28, vmul_f32(v32, vrsqrts_f32(v30, vmul_f32(v32, v32))).f32[0]), a2);
        v34 = v33.f32[2] + vaddv_f32(*v33.f32);
        if (v34 > v17)
        {
          v43 = v27;
          v44 = *v24.i64;
          v41 = v25;
          v42 = v26;
          v35 = [ARPlaneAnchor alloc];
          identifier = [v18 identifier];
          v37 = [(ARPlaneAnchor *)v35 initWithIdentifier:identifier transform:a9 alignment:v41, v42, v43, v44];

          v38 = [(ARPlaneAnchor *)v37 _hitTestFromOrigin:0 withDirection:0 usingExtent:*self.i64 usingGeometry:*a2.i64];
          if (v38)
          {
            if (!v12)
            {
              v12 = [[ARHitTestResult alloc] initWithType:v40];
            }

            [v38 distance];
            [(ARHitTestResult *)v12 setDistance:?];
            [v38 worldTransform];
            [(ARHitTestResult *)v12 setWorldTransform:?];
            [v38 localTransform];
            [(ARHitTestResult *)v12 setLocalTransform:?];
            v17 = v34;
          }
        }
      }

      ++v13;
    }

    while (v13 < [v11 count]);
  }

  return v12;
}

- (id)_hitTestEstimatedPlanesFromOrigin:(ARFrame *)self withDirection:(SEL)direction planeAlignment:(int64_t)alignment
{
  v18 = v3;
  v19 = v4;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!alignment)
  {
    p_cachedHorizontalPlaneAnchors = &selfCopy->_cachedHorizontalPlaneAnchors;
    v8 = selfCopy->_cachedHorizontalPlaneAnchors;
    if (!v8)
    {
      v9 = [ARPlaneEstimationTechnique detectPlanes:1 withFrame:selfCopy];
      goto LABEL_7;
    }

LABEL_5:
    v10 = v8;
    goto LABEL_8;
  }

  p_cachedHorizontalPlaneAnchors = &selfCopy->_cachedVerticalPlaneAnchors;
  v8 = selfCopy->_cachedVerticalPlaneAnchors;
  if (v8)
  {
    goto LABEL_5;
  }

  v9 = [ARPlaneEstimationTechnique detectPlanes:2 withFrame:selfCopy];
LABEL_7:
  v10 = v9;
  v11 = *p_cachedHorizontalPlaneAnchors;
  *p_cachedHorizontalPlaneAnchors = v10;

LABEL_8:
  objc_sync_exit(selfCopy);

  [(ARFrame *)selfCopy referenceOriginTransform];
  v16 = [(ARFrame *)selfCopy _hitTestFromOrigin:alignment withDirection:v10 planeAlignment:v18 forPlanes:v19 referenceOriginTransform:v12, v13, v14, v15];

  return v16;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(ARFrame *)self timestamp];
    v6 = v5;
    [equalCopy timestamp];
    v8 = v6 == v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p", v5, self];

  [(ARFrame *)self timestamp];
  [v6 appendFormat:@" timestamp=%f", v7];
  [v6 appendFormat:@" capturedImage=%p", -[ARFrame capturedImage](self, "capturedImage")];
  camera = [(ARFrame *)self camera];
  [v6 appendFormat:@" camera=%p", camera];

  lightEstimate = [(ARFrame *)self lightEstimate];
  [v6 appendFormat:@" lightEstimate=%p", lightEstimate];

  anchors = [(ARFrame *)self anchors];
  if ([anchors count] == 1)
  {
    v11 = @"1 anchor";
  }

  else
  {
    v12 = MEMORY[0x1E696AEC0];
    anchors2 = [(ARFrame *)self anchors];
    v11 = [v12 stringWithFormat:@"%d anchors", objc_msgSend(anchors2, "count")];
  }

  [v6 appendFormat:@" | %@", v11];
  featurePoints = [(ARFrame *)self featurePoints];
  [v6 appendFormat:@", %d features", objc_msgSend(featurePoints, "count")];

  [v6 appendString:@">"];

  return v6;
}

- (ARFrame)initWithCoder:(id)coder
{
  coderCopy = coder;
  v49.receiver = self;
  v49.super_class = ARFrame;
  v5 = [(ARFrame *)&v49 init];
  if (v5)
  {
    [coderCopy decodeDoubleForKey:@"timestamp"];
    v5->_timestamp = v6;
    [coderCopy decodeDoubleForKey:@"currentCaptureTimestamp"];
    v5->_currentCaptureTimestamp = v7;
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"camera"];
    camera = v5->_camera;
    v5->_camera = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"location"];
    location = v5->_location;
    v5->_location = v10;

    [coderCopy decodeDoubleForKey:@"heading"];
    v5->_heading = v12;
    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"rawLocation"];
    rawLocation = v5->_rawLocation;
    v5->_rawLocation = v13;

    [coderCopy decodeDoubleForKey:@"rawHeading"];
    v5->_rawHeading = v15;
    [coderCopy decodeDoubleForKey:@"rawLocationTimestamp"];
    v5->_rawLocationTimestamp = v16;
    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"vlState"];
    vlState = v5->_vlState;
    v5->_vlState = v17;

    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"geoTrackingStatus"];
    geoTrackingStatus = v5->_geoTrackingStatus;
    v5->_geoTrackingStatus = v19;

    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"vlDebugInfo"];
    vlDebugInfo = v5->_vlDebugInfo;
    v5->_vlDebugInfo = v21;

    [coderCopy decodeDoubleForKey:@"undulation"];
    v5->_undulation = v23;
    [coderCopy decodeDoubleForKey:@"capturedDepthDataTimestamp"];
    v5->_capturedDepthDataTimestamp = v24;
    v25 = MEMORY[0x1E695DFD8];
    v26 = objc_opt_class();
    v27 = [v25 setWithObjects:{v26, objc_opt_class(), 0}];
    v28 = [coderCopy decodeObjectOfClasses:v27 forKey:@"anchors"];
    anchors = v5->_anchors;
    v5->_anchors = v28;

    v30 = MEMORY[0x1E695DFD8];
    v31 = objc_opt_class();
    v32 = [v30 setWithObjects:{v31, objc_opt_class(), 0}];
    v33 = [coderCopy decodeObjectOfClasses:v32 forKey:@"privateAnchors"];
    v34 = v33;
    if (v33)
    {
      v35 = v33;
    }

    else
    {
      v35 = MEMORY[0x1E695E0F0];
    }

    objc_storeStrong(&v5->_privateAnchors, v35);

    v36 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lightEstimate"];
    lightEstimate = v5->_lightEstimate;
    v5->_lightEstimate = v36;

    v38 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"featurePoints"];
    featurePoints = v5->_featurePoints;
    v5->_featurePoints = v38;

    v5->_renderFramesPerSecond = [coderCopy decodeIntegerForKey:@"renderFramesPerSecond"];
    v5->_shouldRestrictFrameRate = [coderCopy decodeBoolForKey:@"shouldRestrictFrameRate"];
    v5->_worldMappingStatus = [coderCopy decodeIntegerForKey:@"worldMappingStatus"];
    v40 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"faceData"];
    faceData = v5->_faceData;
    v5->_faceData = v40;

    v5->_highResolution = [coderCopy decodeBoolForKey:@"highResolution"];
    v42 = MEMORY[0x1E695DFD8];
    v43 = objc_opt_class();
    v44 = objc_opt_class();
    v45 = objc_opt_class();
    v46 = [v42 setWithObjects:{v43, v44, v45, objc_opt_class(), 0}];
    v47 = [coderCopy decodeObjectOfClasses:v46 forKey:@"exifData"];

    if (v47)
    {
      objc_storeStrong(&v5->_exifData, v47);
    }

    v5->_visionDataWasDelivered = [coderCopy decodeBoolForKey:@"visionDataWasDelivered"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  timestamp = self->_timestamp;
  coderCopy = coder;
  [coderCopy encodeDouble:@"timestamp" forKey:timestamp];
  [coderCopy encodeDouble:@"currentCaptureTimestamp" forKey:self->_currentCaptureTimestamp];
  [coderCopy encodeObject:self->_camera forKey:@"camera"];
  [coderCopy encodeObject:self->_location forKey:@"location"];
  [coderCopy encodeDouble:@"heading" forKey:self->_heading];
  [coderCopy encodeObject:self->_rawLocation forKey:@"rawLocation"];
  [coderCopy encodeDouble:@"rawHeading" forKey:self->_rawHeading];
  [coderCopy encodeDouble:@"rawLocationTimestamp" forKey:self->_rawLocationTimestamp];
  [coderCopy encodeObject:self->_vlState forKey:@"vlState"];
  [coderCopy encodeObject:self->_geoTrackingStatus forKey:@"geoTrackingStatus"];
  [coderCopy encodeObject:self->_vlDebugInfo forKey:@"vlDebugInfo"];
  [coderCopy encodeDouble:@"undulation" forKey:self->_undulation];
  [coderCopy encodeDouble:@"capturedDepthDataTimestamp" forKey:self->_capturedDepthDataTimestamp];
  [coderCopy encodeObject:self->_anchors forKey:@"anchors"];
  [coderCopy encodeObject:self->_privateAnchors forKey:@"privateAnchors"];
  [coderCopy encodeObject:self->_lightEstimate forKey:@"lightEstimate"];
  [coderCopy encodeObject:self->_featurePoints forKey:@"featurePoints"];
  [coderCopy encodeInteger:self->_renderFramesPerSecond forKey:@"renderFramesPerSecond"];
  [coderCopy encodeBool:self->_shouldRestrictFrameRate forKey:@"shouldRestrictFrameRate"];
  [coderCopy encodeInteger:self->_worldMappingStatus forKey:@"worldMappingStatus"];
  [coderCopy encodeObject:self->_faceData forKey:@"faceData"];
  [coderCopy encodeBool:self->_highResolution forKey:@"highResolution"];
  [coderCopy encodeObject:self->_exifData forKey:@"exifData"];
  [coderCopy encodeBool:self->_visionDataWasDelivered forKey:@"visionDataWasDelivered"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_opt_class() allocWithZone:zone];
  v6 = [(ARCamera *)self->_camera copyWithZone:zone];
  v7 = [v5 initWithCamera:v6 timestamp:self->_timestamp];

  if (v7)
  {
    *(v7 + 56) = CVPixelBufferRetain(self->_capturedImage);
    *(v7 + 33) = self->_highResolution;
    v8 = [(CLLocation *)self->_location copyWithZone:zone];
    v9 = *(v7 + 376);
    *(v7 + 376) = v8;

    *(v7 + 384) = self->_heading;
    v10 = [(CLLocation *)self->_rawLocation copyWithZone:zone];
    v11 = *(v7 + 392);
    *(v7 + 392) = v10;

    *(v7 + 400) = self->_rawHeading;
    *(v7 + 408) = self->_rawLocationTimestamp;
    v12 = [(ARVLStateData *)self->_vlState copyWithZone:zone];
    v13 = *(v7 + 416);
    *(v7 + 416) = v12;

    v14 = [(ARGeoTrackingStatus *)self->_geoTrackingStatus copyWithZone:zone];
    v15 = *(v7 + 152);
    *(v7 + 152) = v14;

    objc_storeStrong((v7 + 424), self->_vlDebugInfo);
    *(v7 + 432) = self->_undulation;
    v16 = [(NSArray *)self->_anchors copyWithZone:zone];
    v17 = *(v7 + 120);
    *(v7 + 120) = v16;

    v18 = [(NSArray *)self->_privateAnchors copyWithZone:zone];
    v19 = *(v7 + 184);
    *(v7 + 184) = v18;

    objc_storeStrong((v7 + 128), self->_lightEstimate);
    objc_storeStrong((v7 + 192), self->_featurePoints);
    *(v7 + 136) = self->_worldMappingStatus;
    objc_storeStrong((v7 + 200), self->_referenceFeaturePoints);
    v20 = *self->_anon_1f0;
    v21 = *&self->_anon_1f0[16];
    v22 = *&self->_anon_1f0[48];
    *(v7 + 528) = *&self->_anon_1f0[32];
    *(v7 + 544) = v22;
    *(v7 + 496) = v20;
    *(v7 + 512) = v21;
    v23 = *self->_anon_230;
    v24 = *&self->_anon_230[16];
    v25 = *&self->_anon_230[48];
    *(v7 + 592) = *&self->_anon_230[32];
    *(v7 + 608) = v25;
    *(v7 + 560) = v23;
    *(v7 + 576) = v24;
    v26 = *self->_anon_270;
    v27 = *&self->_anon_270[16];
    v28 = *&self->_anon_270[48];
    *(v7 + 656) = *&self->_anon_270[32];
    *(v7 + 672) = v28;
    *(v7 + 624) = v26;
    *(v7 + 640) = v27;
    v29 = *&self[1].super.isa;
    v30 = *&self[1]._cachedVerticalPlaneAnchors;
    v31 = *&self[1]._segmentationBuffer;
    *(v7 + 720) = *&self[1]._shouldRestrictFrameRate;
    *(v7 + 736) = v31;
    *(v7 + 688) = v29;
    *(v7 + 704) = v30;
    *(v7 + 24) = self->_transformFlags;
    *(v7 + 216) = self->_worldAlignment;
    objc_storeStrong((v7 + 224), self->_timingData);
    objc_storeStrong((v7 + 232), self->_worldTrackingErrorData);
    objc_storeStrong((v7 + 240), self->_worldTrackingLineCloud);
    *(v7 + 264) = self->_renderFramesPerSecond;
    *(v7 + 32) = self->_shouldRestrictFrameRate;
    *(v7 + 176) = self->_currentCaptureTimestamp;
    objc_storeStrong((v7 + 272), self->_captureDate);
    faceData = self->_faceData;
    if (faceData)
    {
      objc_storeStrong((v7 + 328), faceData);
    }

    *(v7 + 104) = self->_capturedDepthDataTimestamp;
    objc_storeStrong((v7 + 96), self->_capturedDepthData);
    *(v7 + 48) = CVPixelBufferRetain(self->_segmentationBuffer);
    *(v7 + 144) = CVPixelBufferRetain(self->_estimatedDepthData);
    *(v7 + 296) = CVPixelBufferRetain(self->_downSampledMattingPixelBuffer);
    *(v7 + 304) = CVPixelBufferRetain(self->_mattingScaleImagePixelBuffer);
    detectedBodies = [(ARFrame *)self detectedBodies];
    v34 = [detectedBodies copyWithZone:zone];
    v35 = *(v7 + 312);
    *(v7 + 312) = v34;

    detectedPersonMetadata = [(ARFrame *)self detectedPersonMetadata];
    v37 = [detectedPersonMetadata copyWithZone:zone];
    v38 = *(v7 + 320);
    *(v7 + 320) = v37;

    *(v7 + 352) = CVPixelBufferRetain(self->_depthConfidenceData);
    *(v7 + 360) = CVPixelBufferRetain(self->_depthNormalData);
    *(v7 + 368) = CVPixelBufferRetain(self->_semanticSegmentationBuffer);
    resultDatas = [(ARFrame *)self resultDatas];
    v40 = [resultDatas copyWithZone:zone];
    v41 = *(v7 + 280);
    *(v7 + 280) = v40;

    *(v7 + 288) = self->_deviceOrientation;
    objc_storeStrong((v7 + 160), self->_sceneDepth);
    objc_storeStrong((v7 + 168), self->_smoothedSceneDepth);
    exifData = [(ARFrame *)self exifData];
    v43 = [exifData copyWithZone:zone];
    v44 = *(v7 + 88);
    *(v7 + 88) = v43;

    *(v7 + 72) = self->_scheduledTimestamp;
    *(v7 + 34) = self->_visionDataWasDelivered;
  }

  return v7;
}

@end