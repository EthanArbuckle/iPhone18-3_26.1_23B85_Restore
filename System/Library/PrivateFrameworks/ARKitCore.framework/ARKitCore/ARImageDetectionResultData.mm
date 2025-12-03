@interface ARImageDetectionResultData
- (BOOL)isEqual:(id)equal;
- (NSDictionary)tracingEntry;
- (NSString)description;
- (id)anchorsForCameraWithTransform:(float32x4_t)transform referenceOriginTransform:(float32x4_t)originTransform existingAnchors:(float32x4_t)anchors anchorsToRemove:(float32x4_t)remove;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation ARImageDetectionResultData

- (id)anchorsForCameraWithTransform:(float32x4_t)transform referenceOriginTransform:(float32x4_t)originTransform existingAnchors:(float32x4_t)anchors anchorsToRemove:(float32x4_t)remove
{
  v202 = *MEMORY[0x1E69E9840];
  v14 = a11;
  v136 = a12;
  if (anchorsForCameraWithTransform_referenceOriginTransform_existingAnchors_anchorsToRemove__onceToken != -1)
  {
    [ARImageDetectionResultData anchorsForCameraWithTransform:referenceOriginTransform:existingAnchors:anchorsToRemove:];
  }

  v153 = objc_opt_new();
  v188 = 0u;
  v189 = 0u;
  v190 = 0u;
  v191 = 0u;
  v15 = v14;
  v16 = [v15 countByEnumeratingWithState:&v188 objects:v194 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v189;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v189 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v188 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          identifier = [v20 identifier];
          [v153 setObject:v20 forKey:identifier];
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v188 objects:v194 count:16];
    }

    while (v17);
  }

  v135 = v15;

  v150 = objc_opt_new();
  v184 = 0u;
  v185 = 0u;
  v186 = 0u;
  v187 = 0u;
  obj = [self detectedImages];
  v22 = v153;
  v154 = [obj countByEnumeratingWithState:&v184 objects:v193 count:16];
  if (v154)
  {
    v152 = *v185;
    v143 = *(MEMORY[0x1E69E9B18] + 16);
    v144 = *MEMORY[0x1E69E9B18];
    v141 = *(MEMORY[0x1E69E9B18] + 48);
    v142 = *(MEMORY[0x1E69E9B18] + 32);
    do
    {
      for (j = 0; j != v154; ++j)
      {
        if (*v185 != v152)
        {
          objc_enumerationMutation(obj);
        }

        v24 = *(*(&v184 + 1) + 8 * j);
        referenceImage = [v24 referenceImage];
        identifier2 = [referenceImage identifier];
        v27 = [v22 objectForKeyedSubscript:identifier2];

        if (v27)
        {
          v28 = [v27 copyWithTrackedState:1];
        }

        else
        {
          detectionOnly = [self detectionOnly];
          if (ARLinkedOnOrAfterAzulE())
          {
            v30 = 0x1E817A000;
          }

          else
          {
            v30 = 0x1E817A000uLL;
            if ([self detectionOnly])
            {
              detectionOnly = 1;
            }

            else
            {
              detectionOnly = [self providesWorldTrackingCameraPose];
            }
          }

          v31 = objc_alloc(*(v30 + 2128));
          referenceImage2 = [v24 referenceImage];
          v28 = [v31 initWithReferenceImage:referenceImage2 transform:detectionOnly detectionOnly:1 tracked:{*&v144, *&v143, *&v142, *&v141}];
        }

        identifier3 = [v28 identifier];
        [v22 removeObjectForKey:identifier3];

        *v34.i64 = ARVisionCameraToRenderingCoordinateTransform();
        v171 = v35;
        v176 = v34;
        v165 = v37;
        v168 = v36;
        [v24 visionTransform];
        v38 = 0;
        *buf = v39;
        *&buf[16] = v40;
        v196 = v41;
        v197 = v42;
        v198 = 0u;
        v199 = 0u;
        v200 = 0u;
        v201 = 0u;
        do
        {
          *(&v198 + v38) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v176, COERCE_FLOAT(*&buf[v38])), v171, *&buf[v38], 1), v168, *&buf[v38], 2), v165, *&buf[v38], 3);
          v38 += 16;
        }

        while (v38 != 64);
        v43 = 0;
        v44 = v198;
        v45 = v199;
        v46 = v200;
        v47 = v201;
        *buf = anchorsForCameraWithTransform_referenceOriginTransform_existingAnchors_anchorsToRemove__renderingToImageCoordinateTransform_0;
        *&buf[16] = anchorsForCameraWithTransform_referenceOriginTransform_existingAnchors_anchorsToRemove__renderingToImageCoordinateTransform_1;
        v196 = anchorsForCameraWithTransform_referenceOriginTransform_existingAnchors_anchorsToRemove__renderingToImageCoordinateTransform_2;
        v197 = anchorsForCameraWithTransform_referenceOriginTransform_existingAnchors_anchorsToRemove__renderingToImageCoordinateTransform_3;
        v198 = 0u;
        v199 = 0u;
        v200 = 0u;
        v201 = 0u;
        do
        {
          *(&v198 + v43) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v44, COERCE_FLOAT(*&buf[v43])), v45, *&buf[v43], 1), v46, *&buf[v43], 2), v47, *&buf[v43], 3);
          v43 += 16;
        }

        while (v43 != 64);
        v166 = v198;
        v169 = v199;
        v172 = v200;
        v177 = v201;
        detectionOnly2 = [self detectionOnly];
        if (!v27 || !detectionOnly2 || (LODWORD(v49) = anchorsForCameraWithTransform_referenceOriginTransform_existingAnchors_anchorsToRemove__s_percentThreshold, *&anchorsForCameraWithTransform_referenceOriginTransform_existingAnchors_anchorsToRemove__s_percentThreshold <= 0.0))
        {
          if ([self providesWorldTrackingCameraPose])
          {
            [v24 worldTrackingCameraTransformAtDetection];
            v113 = 0;
            *buf = v114;
            *&buf[16] = v115;
            v196 = v116;
            v197 = v117;
            v198 = 0u;
            v199 = 0u;
            v200 = 0u;
            v201 = 0u;
            do
            {
              *(&v198 + v113) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(remove, COERCE_FLOAT(*&buf[v113])), a7, *&buf[v113], 1), a8, *&buf[v113], 2), a9, *&buf[v113], 3);
              v113 += 16;
            }

            while (v113 != 64);
            v118 = 0;
            v119 = v198;
            v120 = v199;
            v121 = v200;
            v122 = v201;
            *buf = v166;
            *&buf[16] = v169;
            v196 = v172;
            v197 = v177;
            v198 = 0u;
            v199 = 0u;
            v200 = 0u;
            v201 = 0u;
            do
            {
              *(&v198 + v118) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v119, COERCE_FLOAT(*&buf[v118])), v120, *&buf[v118], 1), v121, *&buf[v118], 2), v122, *&buf[v118], 3);
              v118 += 16;
            }

            while (v118 != 64);
          }

          else
          {
            v123 = 0;
            *buf = v166;
            *&buf[16] = v169;
            v196 = v172;
            v197 = v177;
            v198 = 0u;
            v199 = 0u;
            v200 = 0u;
            v201 = 0u;
            do
            {
              *(&v198 + v123) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a2, COERCE_FLOAT(*&buf[v123])), transform, *&buf[v123], 1), originTransform, *&buf[v123], 2), anchors, *&buf[v123], 3);
              v123 += 16;
            }

            while (v123 != 64);
          }

          v109 = *v198.i64;
          v110 = *v199.i64;
          v111 = *&v200;
          v112 = *&v201;
          v108 = v28;
LABEL_54:
          [v108 setTransform:{v109, v110, v111, v112}];
          [v24 estimatedScaleFactor];
          [v28 setEstimatedScaleFactor:?];
          [v150 addObject:v28];
          goto LABEL_58;
        }

        [v24 worldTrackingCameraTransformAtDetection];
        v50 = 0;
        *buf = v51;
        *&buf[16] = v52;
        v196 = v53;
        v197 = v54;
        v198 = 0u;
        v199 = 0u;
        v200 = 0u;
        v201 = 0u;
        do
        {
          *(&v198 + v50) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(remove, COERCE_FLOAT(*&buf[v50])), a7, *&buf[v50], 1), a8, *&buf[v50], 2), a9, *&buf[v50], 3);
          v50 += 16;
        }

        while (v50 != 64);
        v161 = v198;
        v163 = v199;
        v159 = v200;
        v151 = v201;
        [v27 transform];
        v157 = v56;
        v158 = v55;
        v155 = v58;
        v156 = v57;
        v59 = 0;
        *buf = v166;
        *&buf[16] = v169;
        v196 = v172;
        v197 = v177;
        v198 = 0u;
        v199 = 0u;
        v200 = 0u;
        v201 = 0u;
        do
        {
          *(&v198 + v59) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v161, COERCE_FLOAT(*&buf[v59])), v163, *&buf[v59], 1), v159, *&buf[v59], 2), v151, *&buf[v59], 3);
          v59 += 16;
        }

        while (v59 != 64);
        v164 = v199;
        v167 = v198;
        v160 = v201;
        v162 = v200;
        referenceImage3 = [v27 referenceImage];
        [referenceImage3 physicalSize];
        v62 = v61;

        referenceImage4 = [v27 referenceImage];
        [referenceImage4 physicalSize];
        v65 = v64;

        v66 = 0;
        v67 = v62 * -0.5;
        v68 = xmmword_1C25C8560;
        v69 = xmmword_1C25C8560;
        *&v69 = v67;
        v70 = v65 * -0.5;
        v71 = v69;
        *(&v71 + 2) = v70;
        v72 = v62 * 0.5;
        *&v68 = v72;
        v73 = v68;
        *(&v73 + 2) = v70;
        v74 = v65 * 0.5;
        *(&v68 + 2) = v74;
        v198 = v71;
        v199 = v73;
        *(&v69 + 2) = v74;
        v200 = v68;
        v201 = v69;
        v75 = 0.0;
        do
        {
          v76 = *(&v198 + v66);
          v77 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v158, v76.f32[0]), v157, *v76.f32, 1), v156, v76, 2), v155, v76, 3);
          v78 = vdivq_f32(v77, vdupq_laneq_s32(v77, 3)).u64[0];
          v79 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v167, v76.f32[0]), v164, *v76.f32, 1), v162, v76, 2), v160, v76, 3);
          v173 = *&v78;
          *&v178 = vdivq_f32(v79, vdupq_laneq_s32(v79, 3)).u64[0];
          currentCamera = [self currentCamera];
          currentCamera2 = [self currentCamera];
          [currentCamera2 imageResolution];
          [currentCamera projectPoint:3 orientation:v173 viewportSize:{v82, v83}];
          v170 = v85;
          v174 = v84;

          v86.f64[0] = v174;
          v86.f64[1] = v170;
          v87 = vcvt_f32_f64(v86);
          currentCamera3 = [self currentCamera];
          currentCamera4 = [self currentCamera];
          [currentCamera4 imageResolution];
          [currentCamera3 projectPoint:3 orientation:v178 viewportSize:{v90, v91}];
          v175 = v93;
          v179 = v92;

          v94.f64[0] = v179;
          v94.f64[1] = v175;
          *&v94.f64[0] = vsub_f32(v87, vcvt_f32_f64(v94));
          v75 = v75 + sqrtf(vaddv_f32(vmul_f32(*&v94.f64[0], *&v94.f64[0])));
          v66 += 16;
        }

        while (v66 != 64);
        currentCamera5 = [self currentCamera];
        [currentCamera5 imageResolution];
        v97 = v96;

        currentCamera6 = [self currentCamera];
        [currentCamera6 imageResolution];
        v100 = v99;

        if (v97 >= v100)
        {
          v101 = v100;
        }

        else
        {
          v101 = v97;
        }

        v102 = v101;
        v103 = *&anchorsForCameraWithTransform_referenceOriginTransform_existingAnchors_anchorsToRemove__s_percentThreshold * v102;
        v104 = _ARLogGeneral_18();
        v105 = os_log_type_enabled(v104, OS_LOG_TYPE_DEBUG);
        v22 = v153;
        if (v75 > v103)
        {
          if (v105)
          {
            v106 = objc_opt_class();
            v107 = NSStringFromClass(v106);
            *buf = 138544130;
            *&buf[4] = v107;
            *&buf[12] = 2048;
            *&buf[14] = self;
            *&buf[22] = 2048;
            *&buf[24] = v75;
            LOWORD(v196) = 2048;
            *(&v196 + 2) = v103;
            _os_log_impl(&dword_1C241C000, v104, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Updated transform of image anchor as the sum of differences of image corners was greater than threshold. (%f > %f)", buf, 0x2Au);
          }

          v108 = v28;
          v110 = *v164.i64;
          v109 = *v167.i64;
          v112 = *v160.i64;
          v111 = *v162.i64;
          goto LABEL_54;
        }

        if (v105)
        {
          v124 = objc_opt_class();
          v125 = NSStringFromClass(v124);
          *buf = 138543618;
          *&buf[4] = v125;
          *&buf[12] = 2048;
          *&buf[14] = self;
          _os_log_impl(&dword_1C241C000, v104, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Did not update transform of image anchor", buf, 0x16u);
        }

LABEL_58:
      }

      v154 = [obj countByEnumeratingWithState:&v184 objects:v193 count:16];
    }

    while (v154);
  }

  v182 = 0u;
  v183 = 0u;
  v180 = 0u;
  v181 = 0u;
  allValues = [v22 allValues];
  v127 = [allValues countByEnumeratingWithState:&v180 objects:v192 count:16];
  v128 = v135;
  if (v127)
  {
    v129 = v127;
    v130 = *v181;
    do
    {
      for (k = 0; k != v129; ++k)
      {
        if (*v181 != v130)
        {
          objc_enumerationMutation(allValues);
        }

        v132 = *(*(&v180 + 1) + 8 * k);
        if ([v132 isTracked])
        {
          v133 = [v132 copyWithTrackedState:0];
          [v150 addObject:v133];
        }
      }

      v129 = [allValues countByEnumeratingWithState:&v180 objects:v192 count:16];
    }

    while (v129);
  }

  [v153 count];
  [v150 count];
  [v150 count];
  kdebug_trace();

  return v150;
}

float __117__ARImageDetectionResultData_anchorsForCameraWithTransform_referenceOriginTransform_existingAnchors_anchorsToRemove___block_invoke()
{
  anchorsForCameraWithTransform_referenceOriginTransform_existingAnchors_anchorsToRemove__renderingToImageCoordinateTransform_0 = xmmword_1C25C9020;
  anchorsForCameraWithTransform_referenceOriginTransform_existingAnchors_anchorsToRemove__renderingToImageCoordinateTransform_1 = xmmword_1C25C9030;
  anchorsForCameraWithTransform_referenceOriginTransform_existingAnchors_anchorsToRemove__renderingToImageCoordinateTransform_2 = xmmword_1C25C9040;
  anchorsForCameraWithTransform_referenceOriginTransform_existingAnchors_anchorsToRemove__renderingToImageCoordinateTransform_3 = xmmword_1C25C8560;
  [ARKitUserDefaults floatForKey:@"com.apple.arkit.imagedetection.percentageThresholdPixels"];
  result = v0 / 100.0;
  anchorsForCameraWithTransform_referenceOriginTransform_existingAnchors_anchorsToRemove__s_percentThreshold = LODWORD(result);
  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_opt_class() allocWithZone:zone];
  detectedImages = [(ARImageDetectionResultData *)self detectedImages];
  v7 = [detectedImages copyWithZone:zone];
  v8 = *(v5 + 32);
  *(v5 + 32) = v7;

  *(v5 + 10) = [(ARImageDetectionResultData *)self providesWorldTrackingCameraPose];
  *(v5 + 8) = [(ARImageDetectionResultData *)self detectionOnly];
  currentCamera = [(ARImageDetectionResultData *)self currentCamera];
  v10 = [currentCamera copyWithZone:zone];
  v11 = *(v5 + 24);
  *(v5 + 24) = v10;

  *(v5 + 9) = self->_predicted;
  *(v5 + 16) = self->_timestamp;
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    detectedImages = [v5 detectedImages];
    detectedImages2 = [(ARImageDetectionResultData *)self detectedImages];
    if ([detectedImages isEqual:detectedImages2] && (v8 = v5[8], v8 == -[ARImageDetectionResultData detectionOnly](self, "detectionOnly")) && (v9 = v5[10], v9 == -[ARImageDetectionResultData providesWorldTrackingCameraPose](self, "providesWorldTrackingCameraPose")))
    {
      currentCamera = [v5 currentCamera];
      currentCamera2 = [(ARImageDetectionResultData *)self currentCamera];
      if ([currentCamera isEqual:currentCamera2] && self->_predicted == objc_msgSend(v5, "predicted"))
      {
        [v5 timestamp];
        v13 = v12 == self->_timestamp;
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (NSString)description
{
  v2 = MEMORY[0x1E696AEC0];
  tracingEntry = [(ARImageDetectionResultData *)self tracingEntry];
  v4 = [v2 stringWithFormat:@"%@", tracingEntry];

  return v4;
}

- (NSDictionary)tracingEntry
{
  v42 = *MEMORY[0x1E69E9840];
  v3 = ARQATraceableDefaultEntryForResultData(self);
  v33 = [v3 mutableCopy];

  v35 = objc_opt_new();
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = [(ARImageDetectionResultData *)self detectedImages];
  v4 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v37;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v37 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v36 + 1) + 8 * i);
        v9 = objc_opt_new();
        v10 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v8, "odtObjectIdentifer")}];
        [v9 setObject:v10 forKeyedSubscript:@"odtObjectIdentifer"];

        referenceImage = [v8 referenceImage];
        identifier = [referenceImage identifier];
        uUIDString = [identifier UUIDString];
        [v9 setObject:uUIDString forKeyedSubscript:@"imageIdentifier"];

        [v8 visionTransform];
        v14 = [ARQAHelper arrayWithMatrix4x4:?];
        [v9 setObject:v14 forKeyedSubscript:@"transform"];

        [v8 visionTransform];
        v19 = ARMatrix4x4Description(0, v15, v16, v17, v18);
        [v9 setObject:v19 forKeyedSubscript:@"transformString"];

        referenceImage2 = [v8 referenceImage];
        name = [referenceImage2 name];
        [v9 setObject:name forKeyedSubscript:@"referenceImageName"];

        v22 = MEMORY[0x1E696AD98];
        referenceImage3 = [v8 referenceImage];
        [referenceImage3 physicalSize];
        *&v24 = v24;
        v25 = [v22 numberWithFloat:v24];
        v40[0] = v25;
        v26 = MEMORY[0x1E696AD98];
        referenceImage4 = [v8 referenceImage];
        [referenceImage4 physicalSize];
        *&v29 = v28;
        v30 = [v26 numberWithFloat:v29];
        v40[1] = v30;
        v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:2];
        [v9 setObject:v31 forKeyedSubscript:@"referenceImageSize"];

        [v35 addObject:v9];
      }

      v5 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
    }

    while (v5);
  }

  [v33 setObject:v35 forKeyedSubscript:@"detectedImages"];

  return v33;
}

@end