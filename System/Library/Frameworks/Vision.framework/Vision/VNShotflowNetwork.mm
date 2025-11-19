@interface VNShotflowNetwork
+ (const)defaultBoxesSides;
+ (const)strides;
+ (float)inputImageAspectRatio;
+ (float)inputImageMaxDimension;
+ (float)inputImageMinDimension;
+ (id)processingDeviceDetectorWithEspressoNetwork:(id)a3 espressoPlan:(void *)a4 threshold:(float)a5;
+ (id)processingDeviceNetworkWithModelPath:(id)a3 threshold:(float)a4 preferredDeviceID:(int)a5 engineID:(int)a6 storageType:(int)a7;
+ (tuple<float,)inputBiasRGB;
- (VNShotflowNetwork)initWithEspressoNetwork:(id)a3 espressoPlan:(void *)a4 threshold:(float)a5;
- (VNShotflowNetwork)initWithModelPath:(id)a3 espressoEngineID:(int)a4 espressoDeviceID:(int)a5 espressoStorageType:(int)a6 threshold:(float)a7;
- (id).cxx_construct;
- (id)processVImage:(vImage_Buffer *)a3 inputIsBGR:(BOOL)a4;
- (id)resizeAndProcessVImage:(vImage_Buffer *)a3 inputIsBGR:(BOOL)a4;
- (int)setInputShape:(unint64_t)a3 height:(unint64_t)a4;
- (void)dealloc;
- (void)initializeBuffers;
- (void)initializeEspressoResourcesWithModelPath:(id)a3 espressoEngineID:(int)a4 espressoDeviceID:(int)a5 espressoStorageType:(int)a6;
- (void)runNetwork:(vImage_Buffer *)a3 inputIsBGR:(BOOL)a4;
@end

@implementation VNShotflowNetwork

- (id).cxx_construct
{
  *(self + 19) = 0;
  *(self + 136) = 0u;
  *(self + 120) = 0u;
  *(self + 104) = 0u;
  *(self + 88) = 0u;
  *(self + 72) = 0u;
  *(self + 56) = 0u;
  *(self + 40) = 0u;
  return self;
}

- (id)resizeAndProcessVImage:(vImage_Buffer *)a3 inputIsBGR:(BOOL)a4
{
  v87 = *MEMORY[0x1E69E9840];
  height = a3->height;
  width = a3->width;
  if (width)
  {
    v6 = height == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    exception = __cxa_allocate_exception(8uLL);
    *exception = 6012;
    __cxa_throw(exception, MEMORY[0x1E69E54B0], 0);
  }

  v7 = a4;
  v10 = width;
  v11 = height;
  if (height <= width)
  {
    v14 = *&a3->width;
    *&dest.data = *&a3->data;
    *&dest.width = v14;
    v13 = height;
    v12 = width;
  }

  else
  {
    LODWORD(backColor.data) = 0;
    if (MEMORY[0x1AC558890](&dest, v10, v11, 32, 0))
    {
      v75 = __cxa_allocate_exception(8uLL);
      *v75 = 6010;
      __cxa_throw(v75, MEMORY[0x1E69E54B0], 0);
    }

    vImageRotate90_ARGB8888(a3, &dest, 1u, &backColor, 0);
    v12 = dest.width;
    v13 = dest.height;
  }

  v15 = objc_opt_class();
  [v15 inputImageMaxDimension];
  v17 = v16;
  [v15 inputImageMinDimension];
  v19 = v18;
  [v15 inputImageAspectRatio];
  v21 = v17;
  v22 = v19;
  if ((v12 / v13) < v20)
  {
    v23 = ((v12 / v13) * v19);
  }

  else
  {
    v23 = v17;
  }

  if ((v12 / v13) < v20)
  {
    v24 = v19;
  }

  else
  {
    v24 = ((v13 / v12) * v17);
  }

  [objc_opt_class() inputImageSize];
  memset(&backColor, 0, sizeof(backColor));
  v26 = v25;
  v28 = v27;
  if (v12 == v26 && v13 == v28)
  {
    v77 = 0;
    backColor = dest;
    memset(&v83, 0, sizeof(v83));
  }

  else
  {
    if (MEMORY[0x1AC558890](&backColor, v24, v23, 32, 0))
    {
      v72 = __cxa_allocate_exception(8uLL);
      *v72 = 6010;
      __cxa_throw(v72, MEMORY[0x1E69E54B0], 0);
    }

    vImageScale_ARGB8888(&dest, &backColor, 0, 0x20u);
    memset(&v83, 0, sizeof(v83));
    if (v12 != v26)
    {
      v77 = 1;
      goto LABEL_25;
    }

    v77 = 1;
  }

  if (v13 == v28)
  {
    v76 = 0;
    v83 = backColor;
    goto LABEL_31;
  }

LABEL_25:
  if (MEMORY[0x1AC558890](&v83, v22, v21, 32, 0))
  {
    v73 = __cxa_allocate_exception(8uLL);
    *v73 = 6010;
    __cxa_throw(v73, MEMORY[0x1E69E54B0], 0);
  }

  LODWORD(color.data) = -16777216;
  if (vImageBufferFill_ARGB8888(&v83, &color, 0))
  {
    v74 = __cxa_allocate_exception(8uLL);
    *v74 = 6010;
    __cxa_throw(v74, MEMORY[0x1E69E54B0], 0);
  }

  if (SLODWORD(backColor.height) >= 1)
  {
    v30 = 0;
    do
    {
      memcpy(v83.data + v83.rowBytes * v30, backColor.data + backColor.rowBytes * v30, 4 * backColor.width);
      ++v30;
    }

    while (v30 < SLODWORD(backColor.height));
  }

  v76 = 1;
LABEL_31:
  v31 = MEMORY[0x1E695E0F0];
  if (v21 <= 0x4000 && v22 <= 0x4000)
  {
    color = v83;
    [(VNShotflowNetwork *)self processVImage:&color inputIsBGR:v7];
    v78 = 0u;
    v79 = 0u;
    v80 = 0u;
    v31 = v81 = 0u;
    v32 = [v31 countByEnumeratingWithState:&v78 objects:v86 count:16];
    if (v32)
    {
      v33 = *v79;
      do
      {
        for (i = 0; i != v32; ++i)
        {
          if (*v79 != v33)
          {
            objc_enumerationMutation(v31);
          }

          v35 = *(*(&v78 + 1) + 8 * i);
          [v35 box];
          v36 = v83.width / backColor.width;
          v38 = v37 * v36;
          v40 = 1.0 - (1.0 - v39) * v83.height / backColor.height;
          v42 = v41 * v36;
          v44 = v43 * (v83.height / backColor.height);
          v45 = 1.0 - (v38 + v41 * v36);
          if (v11 > v10)
          {
            v46 = v44;
          }

          else
          {
            v46 = v42;
          }

          if (v11 <= v10)
          {
            v47 = v40;
          }

          else
          {
            v44 = v42;
            v47 = v45;
          }

          if (v11 > v10)
          {
            v38 = v40;
          }

          [v35 setBox:{v38, v47, v46, v44, v45, v83.height, backColor.height, v40}];
          [v35 defaultBox];
          v48 = v83.width / backColor.width;
          v50 = v49 * v48;
          v52 = 1.0 - (1.0 - v51) * v83.height / backColor.height;
          v54 = v53 * v48;
          v56 = v55 * (v83.height / backColor.height);
          v57 = 1.0 - (v50 + v53 * v48);
          if (v11 > v10)
          {
            v58 = v56;
          }

          else
          {
            v58 = v54;
          }

          if (v11 <= v10)
          {
            v59 = v52;
          }

          else
          {
            v56 = v54;
            v59 = v57;
          }

          if (v11 > v10)
          {
            v50 = v52;
          }

          [v35 setDefaultBox:{v50, v59, v58, v56, v57, v83.height, backColor.height, v52}];
          if (v11 > v10 && [v15 hasPose])
          {
            [v35 rotationAngle];
            *&v61 = fmodf(((v60 + -90.0) + 180.0) + 360.0, 360.0) + -180.0;
            [v35 setRotationAngle:v61];
          }

          if ([v15 hasFaceBodyAssociation])
          {
            v62 = backColor.width;
            [v35 associatedX];
            v64 = v63 / v62;
            *&v64 = v64;
            [v35 setAssociatedX:v64];
            [v35 associatedY];
            v66 = 1.0 - v65 / backColor.height;
            *&v66 = v66;
            [v35 setAssociatedY:v66];
            if (v11 > v10)
            {
              [v35 associatedX];
              v68 = v67;
              [v35 associatedY];
              [v35 setAssociatedX:?];
              *&v69 = 1.0 - v68;
              [v35 setAssociatedY:v69];
            }
          }
        }

        v32 = [v31 countByEnumeratingWithState:&v78 objects:v86 count:16];
      }

      while (v32);
    }

    if (v76)
    {
      free(v83.data);
    }

    v83.data = 0;
    if (v77)
    {
      free(backColor.data);
    }

    backColor.data = 0;
    if (v11 > v10)
    {
      free(dest.data);
    }

    dest.data = 0;
  }

  return v31;
}

- (id)processVImage:(vImage_Buffer *)a3 inputIsBGR:(BOOL)a4
{
  v4 = a4;
  v6 = self;
  height = a3->height;
  width = a3->width;
  if ([(VNShotflowNetwork *)self setInputShape:width height:height])
  {
    exception = __cxa_allocate_exception(8uLL);
    *exception = 6014;
    __cxa_throw(exception, MEMORY[0x1E69E54B0], 0);
  }

  v9 = *&a3->width;
  v121 = *&a3->data;
  v122 = v9;
  [(VNShotflowNetwork *)v6 runNetwork:&v121 inputIsBGR:v4];
  v100 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [(VNShotflowNetwork *)v6 threshold];
  v11 = v10;
  if (v10 == 1.0)
  {
    v77 = __cxa_allocate_exception(8uLL);
    *v77 = 6012;
    __cxa_throw(v77, MEMORY[0x1E69E54B0], 0);
  }

  v112 = objc_opt_class();
  v92 = [v112 numberMaxoutLayers];
  v12 = 0;
  v108 = width;
  v107 = height;
  defaultBoxSizes = v6->_defaultBoxSizes;
  isAnchorSquare = v6->isAnchorSquare;
  v80 = v6;
  v117 = v11;
  do
  {
    v13 = 16 * v12;
    begin = v6->_rollOutputs.__begin_;
    if (v6->_rollOutputs.__end_ == begin)
    {
      v15 = 0;
    }

    else
    {
      v15 = begin[2 * v12];
    }

    v16 = v6->_yawOutputs.__begin_;
    if (v6->_yawOutputs.__end_ == v16)
    {
      v17 = 0;
    }

    else
    {
      v17 = v16[2 * v12];
    }

    v18 = *(v6->_logitsPosOutputs.__begin_ + 2 * v12);
    v19 = *v18;
    if (v12 >= v92)
    {
      v23 = v18[17];
      v22 = *v18;
      v19 += v23;
      v20 = v23;
      if (v15)
      {
LABEL_12:
        v110 = *v15;
        goto LABEL_15;
      }
    }

    else
    {
      v20 = 0;
      v21 = *(v6->_logitsNegOutputs.__begin_ + 2 * v12);
      v22 = *v21;
      v23 = v21[17];
      if (v15)
      {
        goto LABEL_12;
      }
    }

    v110 = 0;
LABEL_15:
    v109 = v12;
    v113 = v20;
    v115 = v23;
    if (v17)
    {
      v24 = *v17;
    }

    else
    {
      v24 = 0;
    }

    v25 = *(v6->_offsetsOutputs.__begin_ + v13);
    v26 = *v25;
    v94 = v18[10];
    v85 = v18[11];
    v27 = [v112 strides];
    v121 = 0uLL;
    *&v122 = 0;
    std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v121, *v27, v27[1], (v27[1] - *v27) >> 2);
    v106 = v121;
    v90 = *(v121 + 4 * v109);
    v84 = *(*[v112 cellStartsY] + 4 * v109);
    v89 = *(*[v112 cellStartsX] + 4 * v109);
    v28 = [v112 ratios];
    v29 = v109 != 5;
    v30 = v106;
    if (v15)
    {
      v105 = v15[17];
    }

    else
    {
      v105 = 0;
    }

    if (v17)
    {
      v102 = v17[17];
    }

    else
    {
      v102 = 0;
    }

    v32 = *v28;
    v31 = v28[1];
    v104 = *(v25 + 136);
    v103 = [v112 numberBinsRoll];
    v101 = [v112 numberBinsYaw];
    v93 = [v112 mumberBinsNegativeMaxout];
    v87 = [v112 mumberPosClasses];
    v111 = [v112 poseSquare];
    std::vector<float>::vector[abi:ne200100](v120, v87 + 1);
    if (v31 != v32)
    {
      v99 = 0;
      v33 = v93 - 1;
      v88 = v111 ^ 1;
      if (v109 >= v92)
      {
        v33 = v87;
      }

      v83 = v33 * v115;
      v82 = ((__PAIR128__(v87, v109) - v92) >> 64) * v113;
      if (((v31 - v32) >> 2 << v29) <= 1)
      {
        v34 = 1;
      }

      else
      {
        v34 = (v31 - v32) >> 2 << v29;
      }

      v35 = 4 * v115;
      v36 = 4 * v113;
      v81 = v34;
      v91 = 4 * v115;
      do
      {
        if (v85)
        {
          v86 = 0;
          v37 = defaultBoxSizes[v109][v99];
          v39 = v87 + 1;
          v38 = v93;
          while (!v94)
          {
LABEL_73:
            if (++v86 == v85)
            {
              goto LABEL_74;
            }
          }

          v97 = 0;
          while (2)
          {
            if (v109 >= v92)
            {
              v40 = *v22;
            }

            else
            {
              v40 = 1.1755e-38;
              if (v38)
              {
                v41 = v22;
                v42 = v38;
                do
                {
                  v40 = fmaxf(v40, *v41);
                  v41 = (v41 + v35);
                  --v42;
                }

                while (v42);
              }
            }

            v43 = v120[0];
            *v120[0] = v40;
            if (v39 >= 2)
            {
              v44 = v43 + 1;
              v45 = v19;
              v46 = v87;
              do
              {
                v40 = fmaxf(v40, *v45);
                *v44++ = *v45;
                v45 = (v45 + v36);
                --v46;
              }

              while (v46);
            }

            v96 = v22;
            v47 = 0.0;
            if (v39)
            {
              v48 = v39;
              do
              {
                v49 = expf(*v43 - v40);
                *v43++ = v49;
                v47 = v47 + v49;
                --v48;
              }

              while (v48);
            }

            v50 = [v112 importantClasses];
            v95 = v19;
            v52 = *v50;
            v51 = *(v50 + 8);
            if (*v50 != v51)
            {
              do
              {
                v53 = *v52;
                v54 = *(v120[0] + (*v52 << 32 >> 30)) / v47;
                if (v54 > v117)
                {
                  v55 = v37[1];
                  v114 = *v37;
                  v116 = v26[v104];
                  v56 = v26[2 * v104];
                  v57 = v26[3 * v104];
                  v58 = *v26;
                  aBlock[0] = MEMORY[0x1E69E9820];
                  aBlock[1] = 3221225472;
                  aBlock[2] = __46__VNShotflowNetwork_processVImage_inputIsBGR___block_invoke;
                  aBlock[3] = &__block_descriptor_56_e5_f8__0l;
                  aBlock[4] = v103;
                  aBlock[5] = v110;
                  aBlock[6] = v105;
                  v59 = _Block_copy(aBlock);
                  v60 = v59;
                  v61 = 0;
                  v62 = 0;
                  if (v110)
                  {
                    if (v111 && !isAnchorSquare[v99])
                    {
                      [v112 nonSquareRollDefault];
                    }

                    else
                    {
                      (*(v59 + 2))(v59);
                    }

                    v62 = v63;
                  }

                  v64 = v36;
                  v118[0] = MEMORY[0x1E69E9820];
                  v118[1] = 3221225472;
                  v118[2] = __46__VNShotflowNetwork_processVImage_inputIsBGR___block_invoke_2;
                  v118[3] = &__block_descriptor_56_e5_f8__0l;
                  v118[4] = v101;
                  v118[5] = v24;
                  v118[6] = v102;
                  v65 = _Block_copy(v118);
                  v66 = v65;
                  if (v24)
                  {
                    if (v111 && !isAnchorSquare[v99])
                    {
                      [v112 nonSquareYawDefault];
                    }

                    else
                    {
                      (*(v65 + 2))(v65);
                    }

                    v61 = v67;
                  }

                  v68 = expf(v56);
                  v69 = expf(v57);
                  v70 = [VNShotflowDetection alloc];
                  v71 = [v112 importantClasses];
                  LODWORD(v78) = v61;
                  v72 = [(VNShotflowDetection *)v70 initWithBox:v109 defaultBox:v71[1] - *v71 > 8uLL confidence:v53 scale:(((v89 + (v97 * v90)) / v108) + (v58 * (v114 / v108))) - ((v114 / v108) * v68) * 0.5 rotationAngle:1.0 - (((v84 + (v86 * v90)) / v107) + (v116 * (v55 / v107))) - ((v55 / v107) * v69) * 0.5 yawAngle:__PAIR64__(v62 hasLabel:LODWORD(v54)) label:v78];
                  [v100 addObject:v72];

                  v30 = v106;
                  v36 = v64;
                }

                ++v52;
              }

              while (v52 != v51);
            }

            v35 = v91;
            if (v110)
            {
              v74 = v95;
              v73 = v96;
              v39 = v87 + 1;
              v38 = v93;
              if (v111 && ((isAnchorSquare[v99] | v88) & 1) == 0)
              {
                goto LABEL_72;
              }

              v110 += 4;
              if (!v24)
              {
                goto LABEL_72;
              }
            }

            else
            {
              v110 = 0;
              v74 = v95;
              v73 = v96;
              v39 = v87 + 1;
              v38 = v93;
              if (!v24)
              {
                goto LABEL_72;
              }
            }

            if (!v111 || ((isAnchorSquare[v99] | v88) & 1) != 0)
            {
              v24 += 4;
            }

LABEL_72:
            v19 = v74 + 1;
            v22 = v73 + 1;
            ++v26;
            if (++v97 == v94)
            {
              goto LABEL_73;
            }

            continue;
          }
        }

LABEL_74:
        if (v110)
        {
          if (!v111 || ((isAnchorSquare[v99] | v88) & 1) != 0)
          {
            v110 += 4 * (v103 - 1) * v105;
            if (v24)
            {
LABEL_80:
              if (!v111 || ((isAnchorSquare[v99] | v88) & 1) != 0)
              {
                v24 += 4 * (v101 - 1) * v102;
              }
            }
          }
        }

        else
        {
          v110 = 0;
          if (v24)
          {
            goto LABEL_80;
          }
        }

        v22 += v83;
        v19 += v82;
        v26 += 3 * v104;
        ++v99;
      }

      while (v99 != v81);
    }

    if (v120[0])
    {
      v120[1] = v120[0];
      operator delete(v120[0]);
    }

    v6 = v80;
    if (v30)
    {
      operator delete(v30);
    }

    v12 = v109 + 1;
  }

  while (v109 != 5);

  return v100;
}

float __46__VNShotflowNetwork_processVImage_inputIsBGR___block_invoke(void *a1)
{
  v1 = a1[4];
  if (v1)
  {
    v2 = 0;
    v3 = a1[5];
    v4 = -1;
    v5 = 1.1755e-38;
    do
    {
      if (*v3 > v5)
      {
        v4 = v2;
        v5 = *v3;
      }

      ++v2;
      v3 += a1[6];
    }

    while (v1 != v2);
    v6 = v4;
  }

  else
  {
    v6 = 1.8447e19;
  }

  return ((360.0 / v1) * v6) + -180.0;
}

float __46__VNShotflowNetwork_processVImage_inputIsBGR___block_invoke_2(void *a1)
{
  v1 = a1[4];
  if (v1)
  {
    v2 = 0;
    v3 = a1[5];
    v4 = -1;
    v5 = 1.1755e-38;
    do
    {
      if (*v3 > v5)
      {
        v4 = v2;
        v5 = *v3;
      }

      ++v2;
      v3 += a1[6];
    }

    while (v1 != v2);
    v6 = v4;
  }

  else
  {
    v6 = 1.8447e19;
  }

  return ((225.0 / v1) * v6) + -90.0;
}

- (void)runNetwork:(vImage_Buffer *)a3 inputIsBGR:(BOOL)a4
{
  v4 = objc_opt_class();
  [v4 inputBiasRGB];
  [v4 inputScale];
  [v4 inputBGR];
  v5 = [v4 inputLayerName];
  [v5 UTF8String];
  v6 = espresso_network_bind_input_vimagebuffer_bgra8();

  if (v6 || espresso_plan_execute_sync())
  {
    exception = __cxa_allocate_exception(8uLL);
    *exception = 6014;
    __cxa_throw(exception, MEMORY[0x1E69E54B0], 0);
  }
}

- (int)setInputShape:(unint64_t)a3 height:(unint64_t)a4
{
  v4 = a4;
  v5 = a3;
  if (*&self->_currentNetworkWidth == __PAIR128__(a4, a3))
  {
    return 0;
  }

  v8 = objc_opt_class();
  v9 = [v8 inputLayerName];
  [v9 UTF8String];

  [objc_opt_class() inputImageSize];
  if (v4 != v11 || v5 != v10)
  {
    exception = __cxa_allocate_exception(8uLL);
    *exception = 6005;
    __cxa_throw(exception, MEMORY[0x1E69E54B0], 0);
  }

  v12 = espresso_plan_build_clean();
  if (v12)
  {
    return v12;
  }

  v12 = espresso_network_change_input_blob_shapes();
  if (v12)
  {
    return v12;
  }

  v12 = espresso_plan_build();
  if (v12)
  {
    return v12;
  }

  v21 = [v8 numberMaxoutLayers];
  v14 = 0;
  v15 = 0;
  while (1)
  {
    if (v15 >= v21)
    {
      v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"logits_%ld", v15];
      [v16 UTF8String];
      v18 = espresso_network_bind_buffer();
    }

    else
    {
      v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"logits_pos_%ld", v15];
      [v16 UTF8String];
      v7 = espresso_network_bind_buffer();
      if (v7)
      {
        break;
      }

      v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"logits_neg_%ld", v15];

      v16 = v17;
      [v17 UTF8String];
      v18 = espresso_network_bind_buffer();
    }

    v7 = v18;
    if (v18)
    {
      break;
    }

    v19 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"offsets_%ld", v15];

    [v19 UTF8String];
    v7 = espresso_network_bind_buffer();

    if (v7)
    {
      return v7;
    }

    ++v15;
    v14 += 16;
    if (v15 == 6)
    {
      v7 = 0;
      self->_currentNetworkWidth = v5;
      self->_currentNetworkHeight = v4;
      return v7;
    }
  }

  return v7;
}

- (void)initializeBuffers
{
  v2 = objc_opt_class();
  std::vector<unsigned long>::vector[abi:ne200100](&v6, 4uLL);
  v3 = [v2 inputLayerName];
  [v3 UTF8String];
  blob_dimensions = espresso_network_query_blob_dimensions();

  if (!blob_dimensions)
  {
    if ([v2 numberMaxoutLayers])
    {
      operator new();
    }

    operator new();
  }

  exception = __cxa_allocate_exception(8uLL);
  *exception = 6014;
  __cxa_throw(exception, MEMORY[0x1E69E54B0], 0);
}

- (void)initializeEspressoResourcesWithModelPath:(id)a3 espressoEngineID:(int)a4 espressoDeviceID:(int)a5 espressoStorageType:(int)a6
{
  v13 = a3;
  context = espresso_create_context();
  self->_espressoContext = context;
  if (!context)
  {
    exception = __cxa_allocate_exception(8uLL);
    *exception = 6013;
    __cxa_throw(exception, MEMORY[0x1E69E54B0], 0);
  }

  self->_releaseEspressoContext = 1;
  plan = espresso_create_plan();
  self->_espressoPlan = plan;
  if (!plan)
  {
    v10 = __cxa_allocate_exception(8uLL);
    *v10 = 6013;
    __cxa_throw(v10, MEMORY[0x1E69E54B0], 0);
  }

  self->_releaseEspressoPlan = 1;
  [v13 UTF8String];
  if (espresso_plan_add_network())
  {
    v11 = __cxa_allocate_exception(8uLL);
    *v11 = 6014;
    __cxa_throw(v11, MEMORY[0x1E69E54B0], 0);
  }

  if (espresso_plan_build())
  {
    v12 = __cxa_allocate_exception(8uLL);
    *v12 = 6014;
    __cxa_throw(v12, MEMORY[0x1E69E54B0], 0);
  }
}

- (void)dealloc
{
  if (self->_releaseEspressoPlan)
  {
    espresso_plan_destroy();
  }

  if (self->_releaseEspressoContext)
  {
    espresso_context_destroy();
  }

  v3.receiver = self;
  v3.super_class = VNShotflowNetwork;
  [(VNShotflowNetwork *)&v3 dealloc];
}

- (VNShotflowNetwork)initWithEspressoNetwork:(id)a3 espressoPlan:(void *)a4 threshold:(float)a5
{
  v7 = *&a3.var1;
  var0 = a3.var0;
  v14.receiver = self;
  v14.super_class = VNShotflowNetwork;
  v9 = [(VNShotflowNetwork *)&v14 init];
  v10 = v9;
  if (a5 == 1.0 || v9 == 0)
  {
    v12 = 0;
  }

  else
  {
    v9->_espressoNetwork.plan = var0;
    *&v9->_espressoNetwork.network_index = v7;
    v9->_espressoPlan = a4;
    *&v9->_releaseEspressoContext = 0;
    v9->_threshold = a5;
    [(VNShotflowNetwork *)v9 initializeBuffers];
    v12 = v10;
  }

  return v12;
}

- (VNShotflowNetwork)initWithModelPath:(id)a3 espressoEngineID:(int)a4 espressoDeviceID:(int)a5 espressoStorageType:(int)a6 threshold:(float)a7
{
  v8 = *&a6;
  v9 = *&a5;
  v10 = *&a4;
  v12 = a3;
  v18.receiver = self;
  v18.super_class = VNShotflowNetwork;
  v13 = [(VNShotflowNetwork *)&v18 init];
  v14 = v13;
  if (a7 == 1.0 || v13 == 0)
  {
    v16 = 0;
  }

  else
  {
    v13->_threshold = a7;
    [(VNShotflowNetwork *)v13 initializeEspressoResourcesWithModelPath:v12 espressoEngineID:v10 espressoDeviceID:v9 espressoStorageType:v8];
    [(VNShotflowNetwork *)v14 initializeBuffers];
    v16 = v14;
  }

  return v16;
}

+ (id)processingDeviceDetectorWithEspressoNetwork:(id)a3 espressoPlan:(void *)a4 threshold:(float)a5
{
  v7 = *&a3.var1;
  var0 = a3.var0;
  v9 = [a1 alloc];
  *&v10 = a5;
  v11 = [v9 initWithEspressoNetwork:var0 espressoPlan:v7 threshold:{a4, v10}];

  return v11;
}

+ (id)processingDeviceNetworkWithModelPath:(id)a3 threshold:(float)a4 preferredDeviceID:(int)a5 engineID:(int)a6 storageType:(int)a7
{
  v7 = *&a7;
  v8 = *&a6;
  v9 = *&a5;
  v12 = a3;
  v13 = [a1 alloc];
  *&v14 = a4;
  v15 = [v13 initWithModelPath:v12 espressoEngineID:v8 espressoDeviceID:v9 espressoStorageType:v7 threshold:v14];

  return v15;
}

+ (tuple<float,)inputBiasRGB
{
  v2 = 0.0;
  v3 = 0.0;
  v4 = 0.0;
  result.var0.var2 = v4;
  result.var0.var1 = v3;
  result.var0.var0 = v2;
  return result;
}

+ (const)defaultBoxesSides
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__VNShotflowNetwork_defaultBoxesSides__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (+[VNShotflowNetwork defaultBoxesSides]::onceToken != -1)
  {
    dispatch_once(&+[VNShotflowNetwork defaultBoxesSides]::onceToken, block);
  }

  return +[VNShotflowNetwork defaultBoxesSides]::defaultBoxesSides;
}

+ (const)strides
{
  if (+[VNShotflowNetwork strides]::onceToken != -1)
  {
    dispatch_once(&+[VNShotflowNetwork strides]::onceToken, &__block_literal_global_34301);
  }

  return +[VNShotflowNetwork strides]::strides;
}

+ (float)inputImageAspectRatio
{
  [a1 inputImageMaxDimension];
  v4 = v3;
  [a1 inputImageMinDimension];
  return v4 / v5;
}

+ (float)inputImageMaxDimension
{
  [a1 inputImageSize];
  if (v2 < v3)
  {
    return v3;
  }

  return v2;
}

+ (float)inputImageMinDimension
{
  [a1 inputImageSize];
  if (v3 < v2)
  {
    return v3;
  }

  return v2;
}

@end