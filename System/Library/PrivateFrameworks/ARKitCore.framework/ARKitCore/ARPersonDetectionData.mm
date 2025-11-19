@interface ARPersonDetectionData
- (NSString)description;
- (id)mergeOverlappingDetectionsWithThreshold:(float)a3;
- (id)transformToCVPixelBuffer:(__CVBuffer *)a3 depthBuffer:(__CVBuffer *)a4;
@end

@implementation ARPersonDetectionData

- (id)transformToCVPixelBuffer:(__CVBuffer *)a3 depthBuffer:(__CVBuffer *)a4
{
  v84 = *MEMORY[0x1E69E9840];
  v7 = [(ARPersonDetectionData *)self detectedObjects];
  v8 = [v7 count];

  if (!v8)
  {
    goto LABEL_48;
  }

  CVPixelBufferLockBaseAddress(a3, 0);
  CVPixelBufferLockBaseAddress(a4, 0);
  memset(v82, 0, sizeof(v82));
  ARWrapCVPixelBufferVImage(a4, v82);
  memset(v81, 0, sizeof(v81));
  ARWrapCVPixelBufferVImage(a3, v81);
  if (*(v82 + 8) != *(v81 + 8) || CVPixelBufferGetPixelFormatType(a3) != 1278226488 || CVPixelBufferGetPixelFormatType(a4) != 1717855600)
  {
    CVPixelBufferUnlockBaseAddress(a4, 0);
    CVPixelBufferUnlockBaseAddress(a3, 0);
LABEL_48:
    v70 = MEMORY[0x1E695E0F0];
    goto LABEL_49;
  }

  pixelBuffer = a4;
  v9 = objc_opt_new();
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  v10 = [(ARPersonDetectionData *)self detectedObjects];
  v11 = [v10 countByEnumeratingWithState:&v77 objects:v83 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v78;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v78 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v77 + 1) + 8 * i);
        v16 = [ARDepthBasedPersonDetectionResult alloc];
        [v15 boundingBox];
        v17 = [(ARDepthBasedPersonDetectionResult *)v16 initWithBoundingBox:?];
        [v9 addObject:v17];
      }

      v12 = [v10 countByEnumeratingWithState:&v77 objects:v83 count:16];
    }

    while (v12);
  }

  v18 = *(&v81[0] + 1);
  if (*(&v81[0] + 1))
  {
    v19 = 0;
    v20 = *&v81[1];
    v21 = *&v81[1];
    do
    {
      if (v21)
      {
        v22 = 0;
        v23 = *&v81[0] + *(&v81[1] + 1) * v19;
        v24 = *&v82[0] + *(&v82[1] + 1) * v19;
        v25 = v19;
        v73 = v19;
        v76 = v19;
        do
        {
          if (*(v23 + v22))
          {
            if ([v9 count])
            {
              v26 = 0;
              v27 = 0;
              v75 = v22;
              v28.f32[0] = v22;
              v28.f32[1] = v76;
              v74 = v28;
              v29 = -1;
              v30 = 3.4028e38;
              while (1)
              {
                v31 = [v9 objectAtIndexedSubscript:{v27, pixelBuffer}];
                [v31 rectScaledToSizeOfPixelBuffer:a3];
                x = v87.origin.x;
                y = v87.origin.y;
                width = v87.size.width;
                height = v87.size.height;
                v86.x = v22;
                v86.y = v25;
                if (CGRectContainsPoint(v87, v86))
                {
                  break;
                }

                *&v36 = x;
                v37 = y;
                v40 = v75 < *&v36;
                v41 = v36;
                v42.f32[0] = v22;
                if (v40)
                {
                  v42 = v41;
                }

                v38 = x + width;
                if (v38 < v75)
                {
                  v43 = x + width;
                  v42.f32[0] = v43;
                }

                v39 = y + height;
                if (v76 <= v39)
                {
                  v44 = v76;
                }

                else
                {
                  v44 = y + height;
                }

                if (v37 <= v76)
                {
                  v37 = v44;
                }

                v42.f32[1] = v37;
                v45 = vsub_f32(v74, v42);
                v46 = sqrtf(vaddv_f32(vmul_f32(v45, v45)));
                if (v46 < v30)
                {
                  v30 = v46;
                  v29 = v27;
                }

                ++v27;
                v26 += 0x100000000;
                if ([v9 count] <= v27)
                {
                  v47 = v29;
                  v48 = v30;
                  goto LABEL_35;
                }
              }

              v47 = v26 >> 32;
            }

            else
            {
              v47 = -1;
              v48 = 3.40282347e38;
LABEL_35:
              v49 = [v9 objectAtIndexedSubscript:{v47, pixelBuffer}];
              [v49 rectScaledToSizeOfPixelBuffer:a3];
              if (v50 >= v51)
              {
                v52 = v51;
              }

              else
              {
                v52 = v50;
              }

              if (v52 * 0.5 > v48)
              {
                v53 = (v22 / *&v81[1]);
                v54 = (v76 / *(&v81[0] + 1));
                [v49 boundingBox];
                v56 = v55;
                [v49 boundingBox];
                v58 = v56 + v57;
                [v49 boundingBox];
                v88.size.width = v58 - v53;
                v88.size.height = v59 - v54;
                v88.origin.x = v53;
                v88.origin.y = v54;
                v89 = CGRectStandardize(v88);
                v60 = v89.origin.x;
                v61 = v89.origin.y;
                v62 = v89.size.width;
                v63 = v89.size.height;
                [v49 boundingBox];
                v92.origin.x = v64;
                v92.origin.y = v65;
                v92.size.width = v66;
                v92.size.height = v67;
                v90.origin.x = v60;
                v90.origin.y = v61;
                v90.size.width = v62;
                v90.size.height = v63;
                v91 = CGRectUnion(v90, v92);
                [v49 setBoundingBox:{v91.origin.x, v91.origin.y, v91.size.width, v91.size.height}];
              }
            }

            v68 = [v9 objectAtIndexedSubscript:v47];
            LODWORD(v69) = *(v24 + 4 * v22);
            [v68 addSampleValue:v69];

            v20 = *&v81[1];
          }

          ++v22;
        }

        while (v20 > v22);
        v18 = *(&v81[0] + 1);
        v21 = v20;
        v19 = v73;
      }

      ++v19;
    }

    while (v18 > v19);
  }

  CVPixelBufferUnlockBaseAddress(pixelBuffer, 0);
  CVPixelBufferUnlockBaseAddress(a3, 0);
  v70 = [v9 sortedArrayUsingComparator:&__block_literal_global_66];

LABEL_49:

  return v70;
}

BOOL __62__ARPersonDetectionData_transformToCVPixelBuffer_depthBuffer___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  [a2 boundingBox];
  v6 = v5;
  [v4 boundingBox];
  v8 = v7;

  return v6 < v8;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [(ARPersonDetectionData *)self timestamp];
  v7 = [v3 stringWithFormat:@"%@(%p): %f", v5, self, v6];

  return v7;
}

- (id)mergeOverlappingDetectionsWithThreshold:(float)a3
{
  v115 = *MEMORY[0x1E69E9840];
  v110[0] = MEMORY[0x1E69E9820];
  v110[1] = 3221225472;
  v110[2] = __65__ARPersonDetectionData_mergeOverlappingDetectionsWithThreshold___block_invoke_2;
  v110[3] = &unk_1E817D3C8;
  v111 = &__block_literal_global_72;
  v94 = MEMORY[0x1C691B4C0](v110, a2);
  v5 = objc_opt_new();
  v6 = [(ARPersonDetectionData *)self detectedObjects];
  v7 = [v6 count];

  if (v7)
  {
    v8 = 0;
    obj = a3;
    v9 = 1;
    do
    {
      v10 = objc_opt_new();
      v11 = [(ARPersonDetectionData *)self detectedObjects];
      v12 = [v11 objectAtIndexedSubscript:v8];
      [v12 boundingBox];
      v14 = v13;
      v16 = v15;
      v18 = v17;
      v20 = v19;

      v21 = v8 + 1;
      v22 = [(ARPersonDetectionData *)self detectedObjects];
      v23 = [v22 count];

      if (v23 > v8 + 1)
      {
        v24 = v9;
        do
        {
          v25 = [(ARPersonDetectionData *)self detectedObjects];
          v26 = [v25 objectAtIndexedSubscript:v24];
          [v26 boundingBox];
          v28 = v27;
          v30 = v29;
          v32 = v31;
          v34 = v33;

          if (v94[2](v14, v16, v18, v20, v28, v30, v32, v34) > obj)
          {
            v35 = [MEMORY[0x1E696AD98] numberWithInt:v24];
            [v10 addObject:v35];
          }

          ++v24;
          v36 = [(ARPersonDetectionData *)self detectedObjects];
          v37 = [v36 count];
        }

        while (v37 > v24);
      }

      v38 = [MEMORY[0x1E696AD98] numberWithInt:v8];
      [v5 setObject:v10 forKey:v38];

      v39 = [(ARPersonDetectionData *)self detectedObjects];
      v40 = [v39 count];

      ++v9;
      v8 = v21;
    }

    while (v40 > v21);
  }

  v41 = [v5 allKeys];
  v42 = [v41 copy];

  v108 = 0u;
  v109 = 0u;
  v106 = 0u;
  v107 = 0u;
  obja = v42;
  v43 = [obja countByEnumeratingWithState:&v106 objects:v114 count:16];
  if (v43)
  {
    v44 = v43;
    v45 = *v107;
    do
    {
      for (i = 0; i != v44; ++i)
      {
        if (*v107 != v45)
        {
          objc_enumerationMutation(obja);
        }

        v47 = *(*(&v106 + 1) + 8 * i);
        v48 = [v5 allKeys];
        v49 = [v48 containsObject:v47];

        if (v49)
        {
          v50 = objc_opt_new();
          v51 = [v5 recursiveObjectForKey:v47 deleteKeys:v50];
          [v5 removeObjectsForKeys:v50];
          [v5 setObject:v51 forKey:v47];
        }
      }

      v44 = [obja countByEnumeratingWithState:&v106 objects:v114 count:16];
    }

    while (v44);
  }

  v92 = objc_opt_new();
  v102 = 0u;
  v103 = 0u;
  v104 = 0u;
  v105 = 0u;
  v95 = [v5 allKeys];
  v52 = [v95 countByEnumeratingWithState:&v102 objects:v113 count:16];
  if (v52)
  {
    v53 = v52;
    v54 = *v103;
    v91 = *v103;
    do
    {
      v55 = 0;
      v93 = v53;
      do
      {
        if (*v103 != v54)
        {
          objc_enumerationMutation(v95);
        }

        v56 = *(*(&v102 + 1) + 8 * v55);
        v57 = [v5 objectForKeyedSubscript:{v56, v91}];
        v58 = [v56 intValue];
        if ((v58 & 0x80000000) == 0)
        {
          v59 = v58;
          v60 = [(ARPersonDetectionData *)self detectedObjects];
          v61 = [v60 count] - 1;

          if (v61 >= v59)
          {
            v62 = [(ARPersonDetectionData *)self detectedObjects];
            v63 = [v62 objectAtIndexedSubscript:v59];
            [v63 boundingBox];
            x = v64;
            y = v66;
            width = v68;
            height = v70;

            v100 = 0u;
            v101 = 0u;
            v98 = 0u;
            v99 = 0u;
            v72 = v57;
            v73 = [v72 countByEnumeratingWithState:&v98 objects:v112 count:16];
            if (v73)
            {
              v74 = v73;
              v75 = *v99;
              do
              {
                for (j = 0; j != v74; ++j)
                {
                  if (*v99 != v75)
                  {
                    objc_enumerationMutation(v72);
                  }

                  v77 = *(*(&v98 + 1) + 8 * j);
                  v78 = [(ARPersonDetectionData *)self detectedObjects];
                  v79 = [v78 objectAtIndexedSubscript:{objc_msgSend(v77, "intValue")}];
                  [v79 boundingBox];
                  v81 = v80;
                  v83 = v82;
                  v85 = v84;
                  v87 = v86;

                  v117.origin.x = x;
                  v117.origin.y = y;
                  v117.size.width = width;
                  v117.size.height = height;
                  v119.origin.x = v81;
                  v119.origin.y = v83;
                  v119.size.width = v85;
                  v119.size.height = v87;
                  v118 = CGRectUnion(v117, v119);
                  x = v118.origin.x;
                  y = v118.origin.y;
                  width = v118.size.width;
                  height = v118.size.height;
                }

                v74 = [v72 countByEnumeratingWithState:&v98 objects:v112 count:16];
              }

              while (v74);
            }

            v88 = [[ARPersonDetectionResult alloc] initWithBoundingBox:x, y, width, height];
            [v92 addObject:v88];

            v54 = v91;
            v53 = v93;
          }
        }

        ++v55;
      }

      while (v55 != v53);
      v53 = [v95 countByEnumeratingWithState:&v102 objects:v113 count:16];
    }

    while (v53);
  }

  v89 = objc_opt_new();
  [(ARPersonDetectionData *)self timestamp];
  [v89 setTimestamp:?];
  [v89 setDetectedObjects:v92];

  return v89;
}

double __65__ARPersonDetectionData_mergeOverlappingDetectionsWithThreshold___block_invoke_2(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9)
{
  v18 = *(a1 + 32);
  v22 = CGRectIntersection(*&a2, *&a6);
  v21 = (*(v18 + 16))(v18, v22.origin, *&v22.origin.y, v22.size, *&v22.size.height);
  v19 = *(a1 + 32);
  v23.origin.x = a2;
  v23.origin.y = a3;
  v23.size.width = a4;
  v23.size.height = a5;
  v25.origin.x = a6;
  v25.origin.y = a7;
  v25.size.width = a8;
  v25.size.height = a9;
  v24 = CGRectUnion(v23, v25);
  return v21 / (*(v19 + 16))(v19, v24.origin, *&v24.origin.y, v24.size, *&v24.size.height);
}

@end