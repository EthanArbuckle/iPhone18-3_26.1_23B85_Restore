@interface ARAppClipCodeResultData
- (ARAppClipCodeResultData)initWithCoder:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)anchorsForCameraWithTransform:(double)a3 referenceOriginTransform:(double)a4 existingAnchors:(double)a5 anchorsToRemove:(float32x4_t)a6;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation ARAppClipCodeResultData

- (id)anchorsForCameraWithTransform:(double)a3 referenceOriginTransform:(double)a4 existingAnchors:(double)a5 anchorsToRemove:(float32x4_t)a6
{
  v120 = *MEMORY[0x1E69E9840];
  v13 = a11;
  v77 = a12;
  v14 = objc_opt_new();
  v105 = 0u;
  v106 = 0u;
  v107 = 0u;
  v108 = 0u;
  v15 = v13;
  v16 = [v15 countByEnumeratingWithState:&v105 objects:v116 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v106;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v106 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v105 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v21 = v20;
          v22 = [v21 instanceID];
          [v14 setObject:v21 forKey:v22];
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v105 objects:v116 count:16];
    }

    while (v17);
  }

  v75 = v15;

  v86 = objc_opt_new();
  v101 = 0u;
  v102 = 0u;
  v103 = 0u;
  v104 = 0u;
  v23 = a1;
  obj = [*(a1 + 8) allKeys];
  v79 = v14;
  v85 = [obj countByEnumeratingWithState:&v101 objects:v115 count:16];
  if (v85)
  {
    v80 = *v102;
    do
    {
      v24 = 0;
      do
      {
        if (*v102 != v80)
        {
          objc_enumerationMutation(obj);
        }

        v25 = *(*(&v101 + 1) + 8 * v24);
        v26 = [*(v23 + 8) objectForKeyedSubscript:v25];
        v27 = [v14 objectForKeyedSubscript:v25];
        v28 = v27;
        if (v27)
        {
          v29 = [v27 url];
          if (v29)
          {
            v30 = v29;
            v31 = [v26 url];
            if (!v31)
            {
              goto LABEL_28;
            }

            v32 = v31;
            v33 = [v28 url];
            v34 = [v26 url];

            v35 = v33 == v34;
            v23 = a1;
            v14 = v79;
            if (!v35)
            {
              if (ARShouldUseLogTypeError_onceToken_28 != -1)
              {
                [ARAppClipCodeResultData anchorsForCameraWithTransform:referenceOriginTransform:existingAnchors:anchorsToRemove:];
              }

              v36 = ARShouldUseLogTypeError_internalOSVersion_28;
              v37 = _ARLogGeneral_16();
              v30 = v37;
              if (v36 == 1)
              {
                if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
                {
                  v38 = [v28 url];
                  v39 = [v26 url];
                  *buf = 138412546;
                  *&buf[4] = v38;
                  *&buf[12] = 2112;
                  *&buf[14] = v39;
                  v40 = v30;
                  v41 = OS_LOG_TYPE_ERROR;
                  v42 = "ARAppClipCodeResultData: URL of app clip code instance changed from %@ to %@. This should not happen.";
                  goto LABEL_27;
                }
              }

              else if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
              {
                v38 = [v28 url];
                v39 = [v26 url];
                *buf = 138412546;
                *&buf[4] = v38;
                *&buf[12] = 2112;
                *&buf[14] = v39;
                v40 = v30;
                v41 = OS_LOG_TYPE_INFO;
                v42 = "Error: ARAppClipCodeResultData: URL of app clip code instance changed from %@ to %@. This should not happen.";
LABEL_27:
                _os_log_impl(&dword_1C241C000, v40, v41, v42, buf, 0x16u);

                v23 = a1;
              }

LABEL_28:
            }
          }

          v43 = [v28 copyWithAppClipCodeResult:v26 isTracked:1];
          goto LABEL_30;
        }

        v43 = [[ARAppClipCodeAnchor alloc] initWithAppClipCodeResult:v26 instanceID:v25];
LABEL_30:
        v44 = v43;
        [v26 codeToWorldVisionTransform];
        v49 = 0;
        v109 = xmmword_1C25C9020;
        v110 = xmmword_1C25C9030;
        v111 = xmmword_1C25C9040;
        v112 = xmmword_1C25C8560;
        memset(buf, 0, sizeof(buf));
        v118 = 0u;
        v119 = 0u;
        do
        {
          *&buf[v49] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v45, COERCE_FLOAT(*(&v109 + v49))), v46, *(&v109 + v49), 1), v47, *(&v109 + v49), 2), v48, *(&v109 + v49), 3);
          v49 += 16;
        }

        while (v49 != 64);
        *v89 = *&buf[16];
        v91 = *buf;
        v87 = v119;
        v88 = v118;
        *&v50 = ARVisionToRenderingCoordinateTransform();
        v51 = 0;
        v109 = v50;
        v110 = v52;
        v111 = v53;
        v112 = v54;
        memset(buf, 0, sizeof(buf));
        v118 = 0u;
        v119 = 0u;
        do
        {
          *&buf[v51] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a6, COERCE_FLOAT(*(&v109 + v51))), a7, *(&v109 + v51), 1), a8, *(&v109 + v51), 2), a9, *(&v109 + v51), 3);
          v51 += 16;
        }

        while (v51 != 64);
        v55 = 0;
        v56 = *buf;
        v57 = *&buf[16];
        v58 = v118;
        v59 = v119;
        v109 = v91;
        v110 = *v89;
        v111 = v88;
        v112 = v87;
        memset(buf, 0, sizeof(buf));
        v118 = 0u;
        v119 = 0u;
        do
        {
          *&buf[v55] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v56, COERCE_FLOAT(*(&v109 + v55))), v57, *(&v109 + v55), 1), v58, *(&v109 + v55), 2), v59, *(&v109 + v55), 3);
          v55 += 16;
        }

        while (v55 != 64);
        [(ARAnchor *)v44 setTransform:*buf, *&buf[16], *v118.i64, *v119.i64];
        if (v44)
        {
          [v86 addObject:v44];
          [v14 removeObjectForKey:v25];
        }

        ++v24;
      }

      while (v24 != v85);
      v85 = [obj countByEnumeratingWithState:&v101 objects:v115 count:16];
    }

    while (v85);
  }

  v92 = [v86 copy];
  v97 = 0u;
  v98 = 0u;
  v99 = 0u;
  v100 = 0u;
  v90 = [v14 allValues];
  v60 = [v90 countByEnumeratingWithState:&v97 objects:v114 count:16];
  if (v60)
  {
    v61 = v60;
    v62 = *v98;
    do
    {
      for (j = 0; j != v61; ++j)
      {
        if (*v98 != v62)
        {
          objc_enumerationMutation(v90);
        }

        v64 = *(*(&v97 + 1) + 8 * j);
        v65 = [v64 url];

        if (v65)
        {
          v95 = 0u;
          v96 = 0u;
          v93 = 0u;
          v94 = 0u;
          v66 = v92;
          v67 = [v66 countByEnumeratingWithState:&v93 objects:v113 count:16];
          if (v67)
          {
            v68 = v67;
            v69 = *v94;
            while (2)
            {
              for (k = 0; k != v68; ++k)
              {
                if (*v94 != v69)
                {
                  objc_enumerationMutation(v66);
                }

                v71 = [*(*(&v93 + 1) + 8 * k) url];
                v72 = [v64 url];

                if (v71 == v72)
                {

                  [v77 addObject:v64];
                  v14 = v79;
                  goto LABEL_57;
                }
              }

              v68 = [v66 countByEnumeratingWithState:&v93 objects:v113 count:16];
              if (v68)
              {
                continue;
              }

              break;
            }
          }

          v14 = v79;
        }

        v73 = [v64 copyWithTrackedState:0];
        [v86 addObject:v73];

LABEL_57:
        ;
      }

      v61 = [v90 countByEnumeratingWithState:&v97 objects:v114 count:16];
    }

    while (v61);
  }

  return v86;
}

- (ARAppClipCodeResultData)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = ARAppClipCodeResultData;
  v5 = [(ARAppClipCodeResultData *)&v13 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [v6 setWithObjects:{v7, v8, objc_opt_class(), 0}];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"trackedAppClipCodes"];
    trackedAppClipCodes = v5->_trackedAppClipCodes;
    v5->_trackedAppClipCodes = v10;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSDictionary *)self->_trackedAppClipCodes copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 trackedAppClipCodes];
    v6 = [(ARAppClipCodeResultData *)self trackedAppClipCodes];
    v7 = [v5 isEqual:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end