@interface PKMetal3DObject
- (id)initWithCommandQueue:(void *)a3 modelFile:(void *)a4 library:(double)a5 pixelSize:(double)a6 maxTextureBlur:(double)a7;
- (void)_findMeshes:(void *)a1 meshes:(void *)a2;
- (void)renderIntoTexture:(void *)a3 commandBuffer:(int)a4 rollAngle:(double)a5 altitudeAngle:(double)a6 blendFactor:(double)a7 clear:;
@end

@implementation PKMetal3DObject

- (id)initWithCommandQueue:(void *)a3 modelFile:(void *)a4 library:(double)a5 pixelSize:(double)a6 maxTextureBlur:(double)a7
{
  v134 = *MEMORY[0x1E69E9840];
  v104 = a2;
  v105 = a3;
  v102 = a4;
  if (a1 && (v116.receiver = a1, v116.super_class = PKMetal3DObject, v106 = objc_msgSendSuper2(&v116, sel_init), (v14 = v106) != 0))
  {
    v15 = [v104 device];
    v16 = *(v106 + 1);
    v115 = v106;
    *(v106 + 1) = v15;

    objc_storeStrong(v106 + 2, a2);
    objc_storeStrong(v106 + 7, a4);
    v17 = [v105 copy];
    v18 = *(v106 + 17);
    *(v106 + 17) = v17;

    *(v106 + 12) = a5;
    *(v106 + 13) = a6;
    *(v106 + 14) = a7;
    *(v106 + 120) = 0;
    *(v106 + 122) = 0;
    v19 = [v105 isEqualToString:@"Highlighter"];
    v20 = 1.57079633;
    if (!v19)
    {
      v20 = 0.0;
    }

    *(v106 + 21) = v20;
    if ([v105 isEqualToString:@"Highlighter"])
    {
      v21 = 1;
    }

    else
    {
      v21 = [v105 isEqualToString:@"FountainV3Pen"];
    }

    *(v106 + 121) = v21;
    *(v106 + 16) = 0;
    v100 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v103 = [v100 URLForResource:*(v106 + 17) withExtension:@"usdz"];
    if (!*(v106 + 4))
    {
      v22 = objc_alloc_init(MEMORY[0x1E69741E0]);
      v23 = *(v106 + 3);
      *(v106 + 3) = v22;

      v24 = [*(v106 + 3) attributes];
      v25 = [v24 objectAtIndexedSubscript:0];
      [v25 setFormat:30];

      v26 = [*(v106 + 3) attributes];
      v27 = [v26 objectAtIndexedSubscript:0];
      [v27 setOffset:0];

      v28 = [*(v106 + 3) attributes];
      v29 = [v28 objectAtIndexedSubscript:0];
      [v29 setBufferIndex:0];

      v30 = [*(v106 + 3) layouts];
      v31 = [v30 objectAtIndexedSubscript:0];
      [v31 setStride:12];

      v32 = [*(v106 + 3) layouts];
      v33 = [v32 objectAtIndexedSubscript:0];
      [v33 setStepRate:1];

      v34 = [*(v106 + 3) layouts];
      v35 = [v34 objectAtIndexedSubscript:0];
      [v35 setStepFunction:1];

      v36 = [*(v106 + 7) newFunctionWithName:@"shadowProjectVertex"];
      v37 = [*(v106 + 7) newFunctionWithName:@"shadowProjectFragment"];
      v38 = objc_alloc_init(MEMORY[0x1E6974148]);
      [v38 setLabel:@"PencilShadowProject"];
      [v38 setRasterSampleCount:1];
      [v38 setVertexFunction:v36];
      [v38 setFragmentFunction:v37];
      [v38 setVertexDescriptor:*(v106 + 3)];
      v39 = [v38 colorAttachments];
      v40 = [v39 objectAtIndexedSubscript:0];

      [v40 setPixelFormat:10];
      v41 = *(v106 + 1);
      v131[0] = 0;
      v42 = [v41 newRenderPipelineStateWithDescriptor:v38 error:v131];
      v43 = v131[0];
      v44 = *(v106 + 4);
      *(v106 + 4) = v42;

      if (!*(v106 + 4))
      {
        v45 = os_log_create("com.apple.pencilkit", "");
        if (os_log_type_enabled(v45, OS_LOG_TYPE_FAULT))
        {
          v98 = [v43 localizedDescription];
          *buf = 138412290;
          v133 = v98;
          _os_log_fault_impl(&dword_1C7CCA000, v45, OS_LOG_TYPE_FAULT, "Failed to create pipeline state: %@", buf, 0xCu);
        }
      }

      [v40 setBlendingEnabled:1];
      [v40 setRgbBlendOperation:0];
      [v40 setAlphaBlendOperation:0];
      [v40 setSourceRGBBlendFactor:1];
      [v40 setSourceAlphaBlendFactor:1];
      [v40 setDestinationRGBBlendFactor:1];
      [v40 setDestinationAlphaBlendFactor:1];
      v46 = *(v106 + 1);
      v130[0] = v43;
      v47 = [v46 newRenderPipelineStateWithDescriptor:v38 error:v130];
      v48 = v130[0];

      v49 = *(v106 + 5);
      *(v106 + 5) = v47;

      if (!*(v106 + 5))
      {
        v50 = os_log_create("com.apple.pencilkit", "");
        if (os_log_type_enabled(v50, OS_LOG_TYPE_FAULT))
        {
          v99 = [v48 localizedDescription];
          *buf = 138412290;
          v133 = v99;
          _os_log_fault_impl(&dword_1C7CCA000, v50, OS_LOG_TYPE_FAULT, "Failed to create pipeline state: %@", buf, 0xCu);
        }
      }

      v14 = v106;
    }

    v101 = [objc_alloc(MEMORY[0x1E6974428]) initWithDevice:*(v14 + 1)];
    if (!v101)
    {
      v51 = os_log_create("com.apple.pencilkit", "");
      if (os_log_type_enabled(v51, OS_LOG_TYPE_FAULT))
      {
        v97 = [0 localizedDescription];
        *buf = 138412290;
        v133 = v97;
        _os_log_fault_impl(&dword_1C7CCA000, v51, OS_LOG_TYPE_FAULT, "Failed to create buffer allocator: %@", buf, 0xCu);
      }

      v14 = v106;
    }

    v52 = MTKModelIOVertexDescriptorFromMetal(*(v14 + 3));
    v53 = [v52 attributes];
    v54 = [v53 objectAtIndexedSubscript:0];
    [v54 setName:*MEMORY[0x1E6974B28]];

    v55 = [objc_alloc(MEMORY[0x1E6974B48]) initWithURL:v103 vertexDescriptor:v52 bufferAllocator:v101];
    v114 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v109 = [MEMORY[0x1E695DF70] array];
    v125 = 0u;
    v123 = 0u;
    v124 = 0u;
    v122 = 0u;
    obj = v55;
    v56 = [obj countByEnumeratingWithState:&v122 objects:v131 count:16];
    if (v56)
    {
      v110 = v56;
      v57 = 0;
      v108 = *v123;
      do
      {
        for (i = 0; i != v110; ++i)
        {
          if (*v123 != v108)
          {
            objc_enumerationMutation(obj);
          }

          v58 = *(*(&v122 + 1) + 8 * i);
          [v109 removeAllObjects];
          [PKMetal3DObject _findMeshes:v58 meshes:v109];
          v120 = 0u;
          v121 = 0u;
          v118 = 0u;
          v119 = 0u;
          v59 = v109;
          v60 = [v59 countByEnumeratingWithState:&v118 objects:v130 count:16];
          if (v60)
          {
            v61 = *v119;
            do
            {
              v62 = 0;
              v63 = v57;
              do
              {
                if (*v119 != v61)
                {
                  objc_enumerationMutation(v59);
                }

                v64 = *(*(&v118 + 1) + 8 * v62);
                [v64 setVertexDescriptor:v52];
                v65 = objc_alloc(MEMORY[0x1E6974420]);
                v66 = *(v106 + 1);
                v117 = v63;
                v67 = [v65 initWithMesh:v64 device:v66 error:&v117];
                v57 = v117;

                if (v67)
                {
                  [v114 addObject:v67];
                }

                else
                {
                  v68 = os_log_create("com.apple.pencilkit", "");
                  if (os_log_type_enabled(v68, OS_LOG_TYPE_FAULT))
                  {
                    v69 = [v57 localizedDescription];
                    *buf = 138412290;
                    v133 = v69;
                    _os_log_fault_impl(&dword_1C7CCA000, v68, OS_LOG_TYPE_FAULT, "Failed to create MTK mesh: %@", buf, 0xCu);
                  }
                }

                ++v62;
                v63 = v57;
              }

              while (v60 != v62);
              v60 = [v59 countByEnumeratingWithState:&v118 objects:v130 count:16];
            }

            while (v60);
          }
        }

        v110 = [obj countByEnumeratingWithState:&v122 objects:v131 count:16];
      }

      while (v110);
    }

    else
    {
      v57 = 0;
    }

    v70 = [v114 copy];
    v71 = *(v106 + 6);
    *(v106 + 6) = v70;

    v72 = *(v106 + 6);
    v126 = 0u;
    v127 = 0u;
    v128 = 0u;
    v129 = 0u;
    v73 = v72;
    v74 = [v73 countByEnumeratingWithState:&v126 objects:buf count:16];
    if (v74)
    {
      v75.i64[0] = 0x80000000800000;
      v75.i64[1] = 0x80000000800000;
      v76.i64[0] = 0x80000000800000;
      v76.i64[1] = 0x80000000800000;
      v112 = vnegq_f32(v75);
      v113 = v76;
      v77 = *v127;
      do
      {
        for (j = 0; j != v74; ++j)
        {
          if (*v127 != v77)
          {
            objc_enumerationMutation(v73);
          }

          v79 = [*(*(&v126 + 1) + 8 * j) vertexBuffers];
          v80 = [v79 objectAtIndexedSubscript:0];

          if (v80 && (v81 = [v80 length], objc_msgSend(v80, "buffer"), v82 = objc_claimAutoreleasedReturnValue(), v83 = v82, v84 = objc_msgSend(v82, "contents"), v82, v81 >= 0xC))
          {
            v87 = v81 / 0xC;
            v88 = (v84 + 8);
            v86 = v112;
            v85 = v113;
            do
            {
              v89.i64[0] = *(v88 - 1);
              v86.i32[3] = 0;
              v89.i64[1] = *v88;
              v86 = vminnmq_f32(v86, v89);
              v85.i32[3] = 0;
              v85 = vmaxnmq_f32(v85, v89);
              v88 += 3;
              --v87;
            }

            while (v87);
          }

          else
          {
            v86 = v112;
            v85 = v113;
          }

          v112 = v86;
          v113 = v85;
        }

        v74 = [v73 countByEnumeratingWithState:&v126 objects:buf count:16];
      }

      while (v74);
    }

    else
    {
      v90.i64[0] = 0x80000000800000;
      v90.i64[1] = 0x80000000800000;
      v91.i64[0] = 0x80000000800000;
      v91.i64[1] = 0x80000000800000;
      v112 = vnegq_f32(v90);
      v113 = v91;
    }

    *(v106 + 18) = v112.i32[2];
    *(v106 + 8) = v112.i64[0];
    *(v106 + 22) = v113.i32[2];
    *(v106 + 10) = v113.i64[0];
    v92 = *(v106 + 12);
    v93 = vsubq_f32(v113, v112).f32[0];
    v94 = (v92 + *(v106 + 14) * 2.0) * v93 / v92;
    v95 = *(v106 + 13) * v94 / v92;
    *(v106 + 18) = v94;
    *(v106 + 19) = v95;
    *(v106 + 20) = (v94 - v93) * 0.75;
  }

  else
  {
    v115 = 0;
  }

  return v115;
}

- (void)_findMeshes:(void *)a1 meshes:(void *)a2
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v4 addObject:v3];
  }

  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v5 = [v3 children];
  v6 = [v5 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v6)
  {
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v5);
        }

        [PKMetal3DObject _findMeshes:v4 meshes:?];
      }

      while (v6 != v8);
      v6 = [v5 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)renderIntoTexture:(void *)a3 commandBuffer:(int)a4 rollAngle:(double)a5 altitudeAngle:(double)a6 blendFactor:(double)a7 clear:
{
  v125 = *MEMORY[0x1E69E9840];
  v101 = a2;
  v100 = a3;
  if (a1)
  {
    v102 = objc_alloc_init(MEMORY[0x1E6974128]);
    v13 = [v102 colorAttachments];
    v14 = [v13 objectAtIndexedSubscript:0];
    [v14 setTexture:v101];

    v15 = [v102 colorAttachments];
    [v15 objectAtIndexedSubscript:0];
    if (a4)
      v16 = {;
      [v16 setLoadAction:2];

      v15 = [v102 colorAttachments];
      v17 = [v15 objectAtIndexedSubscript:0];
      [v17 setClearColor:{0.0, 0.0, 0.0, 0.0}];
    }

    else
      v17 = {;
      [v17 setLoadAction:1];
    }

    v18 = [v102 colorAttachments];
    v19 = [v18 objectAtIndexedSubscript:0];
    [v19 setStoreAction:1];

    v99 = *(a1 + 48);
    v20 = v102;
    v88 = v100;
    v89 = v20;
    v21 = [v88 renderCommandEncoderWithDescriptor:v20];
    v112 = v21;
    [v21 setLabel:@"PencilShadowRenderEncoder"];
    [v21 pushDebugGroup:@"PencilShadowDrawMeshes"];
    [v21 setFrontFacingWinding:1];
    if (*(a1 + 120))
    {
      v22 = 2;
    }

    else
    {
      v22 = 0;
    }

    [v21 setCullMode:v22];
    v23 = 40;
    if (a4)
    {
      v23 = 32;
    }

    [v21 setRenderPipelineState:*(a1 + v23)];
    v24 = a7;
    v121 = v24;
    v25 = *(a1 + 84);
    v26 = *(a1 + 160);
    v27 = *(a1 + 128) - v25 - v26;
    v28.i32[0] = 0;
    v28.f32[1] = v27;
    v28.i32[2] = 0;
    v109 = v28;
    v29 = 0.0;
    if (*(a1 + 121))
    {
      v29 = a5;
    }

    v30 = *(a1 + 168) - v29;
    *v31.i64 = matrix4x4_rotation(v30, xmmword_1C801E950);
    v97 = v32;
    v98 = v31;
    *obj = v34;
    v105 = v33;
    v35 = 0.0;
    if (*(a1 + 122) == 1)
    {
      v35 = *(a1 + 72);
    }

    v36 = v109;
    v36.i32[3] = 1.0;
    v110 = v36;
    v36.f32[0] = v25 - v26;
    v37.i32[0] = 0;
    v37.i32[1] = v36.i32[0];
    v37.f32[2] = -v35;
    v37.i32[3] = 1.0;
    v95 = v37;
    v38 = a6 * -0.8;
    *v56.columns[0].i64 = matrix4x4_rotation(v38, xmmword_1C801DE50);
    v39 = 0;
    v41 = *(a1 + 144);
    v40 = *(a1 + 152);
    v42 = v41 * -0.5;
    *&v41 = v41 * 0.5;
    v43 = -v40 - v26;
    v44 = v26;
    v45 = -v40;
    v46 = *&v41 - v42;
    v47 = v44 - v43;
    *&v41 = v42 + *&v41;
    v48 = v44 + v43;
    v96 = 2.0 / v46;
    v49 = -*&v41 / v46;
    v50 = -v48 / v47;
    __asm { FMOV            V7.4S, #1.0 }

    _Q7.f32[0] = v49;
    v123[0] = v56;
    v56.columns[3] = v95;
    do
    {
      v124[0].columns[v39] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1C801DE50, COERCE_FLOAT(*&v123[0].columns[v39])), xmmword_1C801E950, *v123[0].columns[v39].f32, 1), xmmword_1C801E960, v123[0].columns[v39], 2), v95, v123[0].columns[v39], 3);
      ++v39;
    }

    while (v39 != 4);
    v56.columns[0].f32[0] = v40;
    v57 = v56.columns[0].f32[0] - v45;
    _Q7.f32[1] = v50;
    v107 = _Q7;
    v94 = -v45 / (v56.columns[0].f32[0] - v45);
    v56.columns[0] = _PromotedConst;
    v56.columns[1] = unk_1C801E990;
    v56.columns[2] = xmmword_1C801E9A0;
    v92 = v124[0].columns[0];
    v93 = v124[0].columns[1];
    v90 = v124[0].columns[3];
    v91 = v124[0].columns[2];
    v127 = __invert_f4(v56);
    v58 = 0;
    v123[0] = v127;
    do
    {
      v124[0].columns[v58] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v92, COERCE_FLOAT(*&v123[0].columns[v58])), v93, *v123[0].columns[v58].f32, 1), v91, v123[0].columns[v58], 2), v90, v123[0].columns[v58], 3);
      ++v58;
    }

    while (v58 != 4);
    v59 = 0;
    v60 = v107;
    v60.f32[2] = v94;
    v61 = v124[0].columns[0];
    v62 = v124[0].columns[1];
    v63 = v124[0].columns[2];
    v64 = v124[0].columns[3];
    v123[0].columns[0] = v98;
    v123[0].columns[1] = v97;
    v123[0].columns[2] = v105;
    v123[0].columns[3] = *obj;
    do
    {
      v124[0].columns[v59] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v61, COERCE_FLOAT(*&v123[0].columns[v59])), v62, *v123[0].columns[v59].f32, 1), v63, v123[0].columns[v59], 2), v64, v123[0].columns[v59], 3);
      ++v59;
    }

    while (v59 != 4);
    v65 = 0;
    v66.i32[0] = 0;
    v66.i64[1] = 0;
    v123[0] = v124[0];
    do
    {
      v124[0].columns[v65] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1C801DE50, COERCE_FLOAT(*&v123[0].columns[v65])), xmmword_1C801E950, *v123[0].columns[v65].f32, 1), xmmword_1C801E960, v123[0].columns[v65], 2), v110, v123[0].columns[v65], 3);
      ++v65;
    }

    while (v65 != 4);
    v67 = 0;
    v68.i64[0] = 0;
    v68.i32[3] = 0;
    v123[0] = v124[0];
    do
    {
      v66.f32[1] = 2.0 / v47;
      v68.f32[2] = -1.0 / v57;
      v124[0].columns[v67] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(LODWORD(v96), COERCE_FLOAT(*&v123[0].columns[v67])), v66, *v123[0].columns[v67].f32, 1), v68, v123[0].columns[v67], 2), v60, v123[0].columns[v67], 3);
      ++v67;
    }

    while (v67 != 4);
    v122 = v124[0];
    [v21 setVertexBytes:&v122 length:64 atIndex:1];
    [v21 setFragmentBytes:&v121 length:4 atIndex:0];
    v119 = 0u;
    v120 = 0u;
    v117 = 0u;
    v118 = 0u;
    obja = v99;
    v108 = [obja countByEnumeratingWithState:&v117 objects:v124 count:16];
    if (v108)
    {
      v106 = *v118;
      do
      {
        for (i = 0; i != v108; ++i)
        {
          if (*v118 != v106)
          {
            objc_enumerationMutation(obja);
          }

          v69 = 0;
          v70 = *(*(&v117 + 1) + 8 * i);
          while (1)
          {
            v71 = [v70 vertexBuffers];
            v72 = v69 < [v71 count];

            if (!v72)
            {
              break;
            }

            v73 = [v70 vertexBuffers];
            v74 = [v73 objectAtIndexedSubscript:v69];

            v75 = [MEMORY[0x1E695DFB0] null];
            LOBYTE(v73) = v74 == v75;

            if ((v73 & 1) == 0)
            {
              v76 = [v74 buffer];
              [v112 setVertexBuffer:v76 offset:objc_msgSend(v74 atIndex:{"offset"), v69}];
            }

            ++v69;
          }

          v115 = 0u;
          v116 = 0u;
          v113 = 0u;
          v114 = 0u;
          v77 = [v70 submeshes];
          v78 = [v77 countByEnumeratingWithState:&v113 objects:v123 count:16];
          if (v78)
          {
            v79 = *v114;
            do
            {
              for (j = 0; j != v78; ++j)
              {
                if (*v114 != v79)
                {
                  objc_enumerationMutation(v77);
                }

                v81 = *(*(&v113 + 1) + 8 * j);
                v82 = [v81 primitiveType];
                v83 = [v81 indexCount];
                v84 = [v81 indexType];
                v85 = [v81 indexBuffer];
                v86 = [v85 buffer];
                v87 = [v81 indexBuffer];
                [v112 drawIndexedPrimitives:v82 indexCount:v83 indexType:v84 indexBuffer:v86 indexBufferOffset:{objc_msgSend(v87, "offset")}];
              }

              v78 = [v77 countByEnumeratingWithState:&v113 objects:v123 count:16];
            }

            while (v78);
          }
        }

        v108 = [obja countByEnumeratingWithState:&v117 objects:v124 count:16];
      }

      while (v108);
    }

    [v112 popDebugGroup];
    [v112 endEncoding];
  }
}

@end