@interface CIPortraitEffectSpillCorrectionProcessor
+ (BOOL)hasValidPipelines;
+ (BOOL)processWithInputs:(id)a3 arguments:(id)a4 output:(id)a5 error:(id *)a6;
+ (int)formatForInputAtIndex:(int)a3;
+ (void)compilePipelines:(id)a3;
+ (void)compilePipelinesIfNeeded:(id)a3;
+ (void)releasePipelines;
@end

@implementation CIPortraitEffectSpillCorrectionProcessor

+ (BOOL)hasValidPipelines
{
  if (qword_8CE78)
  {
    v2 = qword_8CE80 == 0;
  }

  else
  {
    v2 = 1;
  }

  return !v2;
}

+ (void)compilePipelines:(id)a3
{
  v9 = 0;
  v4 = [a3 newDefaultLibraryWithBundle:+[NSBundle bundleForClass:](NSBundle error:{"bundleForClass:", objc_opt_class()), 0}];
  v5 = [v4 newFunctionWithName:@"spillCorrectionPreProcess"];
  qword_8CE78 = [a3 newComputePipelineStateWithFunction:v5 error:&v9];
  if (v9)
  {
    v6 = [v9 localizedDescription];
    NSLog(@"Failed to initialize shaderSplit: %@; %@", v6, [v9 localizedFailureReason]);
  }

  v7 = [v4 newFunctionWithName:@"spillCorrectionPostProcess"];
  qword_8CE80 = [a3 newComputePipelineStateWithFunction:v7 error:&v9];
  if (v9)
  {
    v8 = [v9 localizedDescription];
    NSLog(@"Failed to initialize shaderApplyConstraintAndComposite: %@; %@", v8, [v9 localizedFailureReason]);
  }
}

+ (void)releasePipelines
{
  v2 = qword_8CE80;
}

+ (void)compilePipelinesIfNeeded:(id)a3
{
  v5 = qword_8CE88;
  if (qword_8CE88 == a3)
  {
    if ([a1 hasValidPipelines])
    {
      return;
    }

    v5 = qword_8CE88;
  }

  if (v5 != a3)
  {
    [a1 releasePipelines];
    qword_8CE88 = a3;
  }

  if (([a1 hasValidPipelines] & 1) == 0)
  {

    [a1 compilePipelines:a3];
  }
}

+ (BOOL)processWithInputs:(id)a3 arguments:(id)a4 output:(id)a5 error:(id *)a6
{
  v9 = [a5 metalCommandBuffer];
  if (!v9)
  {
    sub_4AD94();
  }

  v10 = v9;
  v11 = [v9 device];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_29770;
  block[3] = &unk_75610;
  block[4] = a1;
  block[5] = v11;
  v73 = a4;
  if (qword_8CE98 != -1)
  {
    dispatch_once(&qword_8CE98, block);
  }

  [a1 compilePipelinesIfNeeded:v11];
  v78 = [a1 hasValidPipelines];
  if (v78)
  {
    [objc_msgSend(a3 objectAtIndexedSubscript:{0), "region"}];
    v13 = v12;
    [objc_msgSend(a3 objectAtIndexedSubscript:{0), "region"}];
    v15 = v14;
    [objc_msgSend(a3 objectAtIndexedSubscript:{1), "region"}];
    v76 = v13;
    v16 = v13;
    if (v17 != v16 || ([objc_msgSend(a3 objectAtIndexedSubscript:{1), "region"}], v75 = v15, v18 = v15, v19 != v18))
    {
      sub_4AD68();
    }

    [a5 region];
    if (v20 != v16 || ([a5 region], v21 != v18))
    {
      sub_4AD3C();
    }

    v22 = [qword_8CE78 maxTotalThreadsPerThreadgroup];
    v23 = [qword_8CE78 threadExecutionWidth];
    v25 = v75;
    v24 = v76;
    v26 = 1;
    if (((v22 | v23 | v76) & 1) == 0)
    {
      v27 = v22;
      do
      {
        v28 = v24;
        v24 >>= 1;
        v22 = v27 >> 1;
        v29 = v23;
        v23 >>= 1;
        v26 *= 2;
        if ((v28 & 2) != 0)
        {
          break;
        }

        if ((v27 & 2) != 0)
        {
          break;
        }

        v27 >>= 1;
      }

      while ((v29 & 2) == 0);
    }

    v30 = 1;
    if (((v75 | v22) & 1) == 0)
    {
      v31 = v75;
      v32 = v22;
      do
      {
        v25 = v31 >> 1;
        v22 = v32 >> 1;
        v30 *= 2;
        v33 = v31 | v32;
        v31 >>= 1;
        v32 >>= 1;
      }

      while ((v33 & 2) == 0);
    }

    if (v23 >= v22)
    {
      v34 = v22;
    }

    else
    {
      v34 = v23;
    }

    if (v34)
    {
      if (v34 + 1 > 2)
      {
        v35 = v34 + 1;
      }

      else
      {
        v35 = 2;
      }

      v36 = 1;
      v37 = 1;
      v38 = 1;
      do
      {
        if (!(v24 % v36))
        {
          v39 = 1;
          for (i = v25; ; i /= 7u)
          {
            while (1)
            {
              while (1)
              {
                while ((i & 1) == 0 && 2 * v36 * v39 <= v22)
                {
                  i >>= 1;
                  v39 *= 2;
                }

                if (i != 3 * (i / 3) || 3 * v36 * v39 > v22)
                {
                  break;
                }

                v39 *= 3;
                i /= 3u;
              }

              if (i != 5 * (i / 5) || 5 * v36 * v39 > v22)
              {
                break;
              }

              v39 *= 5;
              i /= 5u;
            }

            if (i % 7 || 7 * v36 * v39 > v22)
            {
              break;
            }

            v39 *= 7;
          }

          v44 = v38 * v37;
          if (v39 * v36 >= v38 * v37)
          {
            v38 = v36;
          }

          if (v39 * v36 >= v44)
          {
            v37 = v39;
          }
        }

        ++v36;
      }

      while (v36 != v35);
    }

    else
    {
      v38 = 1;
      v37 = 1;
    }

    [objc_msgSend(a3 objectAtIndexedSubscript:{0), "region"}];
    v46 = v45;
    [objc_msgSend(a3 objectAtIndexedSubscript:{0), "region"}];
    v48 = v47;
    v49 = objc_opt_new();
    v50 = objc_opt_new();
    v51 = [MTLTextureDescriptor texture2DDescriptorWithPixelFormat:10 width:v46 height:v48 mipmapped:0];
    [(MTLTextureDescriptor *)v51 setUsage:3];
    v52 = (v38 * v26);
    v53 = 3;
    v71 = v76 / v52;
    v72 = v52;
    do
    {
      [v50 addObject:{objc_msgSend(v11, "newTextureWithDescriptor:", v51)}];
      [v49 addObject:{objc_msgSend(v11, "newTextureWithDescriptor:", v51)}];
      --v53;
    }

    while (v53);
    v54 = [v11 newTextureWithDescriptor:v51];
    v55 = [v73 objectForKeyedSubscript:@"bgColor"];
    [v55 red];
    v74 = v56;
    [v55 green];
    v70 = v57;
    [v55 blue];
    v58.f64[0] = v74;
    v58.f64[1] = v70;
    *&v58.f64[0] = vcvt_f32_f64(v58);
    *&v59 = v59;
    LODWORD(v58.f64[1]) = LODWORD(v59);
    v91 = v58;
    v60 = [v10 computeCommandEncoder];
    [v60 setComputePipelineState:qword_8CE78];
    [v60 setTexture:objc_msgSend(v50 atIndex:{"objectAtIndexedSubscript:", 0), 0}];
    [v60 setTexture:objc_msgSend(v50 atIndex:{"objectAtIndexedSubscript:", 1), 1}];
    [v60 setTexture:objc_msgSend(v50 atIndex:{"objectAtIndexedSubscript:", 2), 2}];
    [v60 setTexture:v54 atIndex:3];
    [v60 setTexture:objc_msgSend(objc_msgSend(a3 atIndex:{"objectAtIndexedSubscript:", 0), "metalTexture"), 4}];
    [v60 setTexture:objc_msgSend(objc_msgSend(a3 atIndex:{"objectAtIndexedSubscript:", 1), "metalTexture"), 5}];
    [v60 setBytes:&v91 length:16 atIndex:0];
    v61 = (v37 * v30);
    v82 = v71;
    v83 = v75 / v61;
    v84 = 1;
    v88 = v72;
    v89 = v61;
    v90 = 1;
    [v60 dispatchThreadgroups:&v82 threadsPerThreadgroup:&v88];
    [v60 endEncoding];
    if (v76 < 0xA)
    {
      v63 = 1;
    }

    else
    {
      v63 = v76 / 0xA;
    }

    if (v75 < 0xA)
    {
      v64 = 1;
    }

    else
    {
      v64 = v75 / 0xA;
    }

    LOBYTE(v69) = 1;
    LODWORD(v62) = 953267991;
    v65 = [[MPSImageSpatioTemporalGuidedFilter alloc] initWithDevice:v11 filterDescriptor:{+[MPSImageSpatioTemporalGuidedFilterDescriptor filterDescriptorWithWidth:height:arrayLength:kernelSpatialDiameter:kernelTemporalDiameter:epsilon:sourceChannels:guideChannels:preallocateIntermediates:](MPSImageSpatioTemporalGuidedFilterDescriptor, "filterDescriptorWithWidth:height:arrayLength:kernelSpatialDiameter:kernelTemporalDiameter:epsilon:sourceChannels:guideChannels:preallocateIntermediates:", v63, v64, 1, 5, 1, 3, v62, 3, v69)}];
    v66 = [objc_msgSend(a3 objectAtIndexedSubscript:{0), "metalTexture"}];
    v93[0] = v54;
    v93[1] = v54;
    v93[2] = v54;
    [v65 encodeToCommandBuffer:v10 sourceTextureArray:v50 guidanceTexture:v66 constraintsTextureArray:+[NSArray arrayWithObjects:count:](NSArray numberOfIterations:"arrayWithObjects:count:" destinationTextureArray:{v93, 3), 30, v49}];
    v82 = 0;
    v83 = &v82;
    v84 = 0x3052000000;
    v85 = sub_297C4;
    v86 = sub_297D4;
    v87 = 0;
    v81[0] = _NSConcreteStackBlock;
    v81[1] = 3221225472;
    v81[2] = sub_297E0;
    v81[3] = &unk_75638;
    v81[4] = &v82;
    [v10 addScheduledHandler:v81];
    v80[0] = _NSConcreteStackBlock;
    v80[1] = 3221225472;
    v80[2] = sub_29818;
    v80[3] = &unk_75660;
    v80[4] = v65;
    [v10 addCompletedHandler:v80];
    v67 = [v10 computeCommandEncoder];
    [v67 setComputePipelineState:qword_8CE80];
    [v67 setTexture:objc_msgSend(a5 atIndex:{"metalTexture"), 0}];
    [v67 setTexture:objc_msgSend(v49 atIndex:{"objectAtIndexedSubscript:", 0), 1}];
    [v67 setTexture:objc_msgSend(v49 atIndex:{"objectAtIndexedSubscript:", 1), 2}];
    [v67 setTexture:objc_msgSend(v49 atIndex:{"objectAtIndexedSubscript:", 2), 3}];
    [v67 setTexture:objc_msgSend(objc_msgSend(a3 atIndex:{"objectAtIndexedSubscript:", 0), "metalTexture"), 4}];
    [v67 setTexture:objc_msgSend(objc_msgSend(a3 atIndex:{"objectAtIndexedSubscript:", 1), "metalTexture"), 5}];
    v88 = v71;
    v89 = v75 / v61;
    v90 = 1;
    v79[0] = v72;
    v79[1] = v61;
    v79[2] = 1;
    [v67 dispatchThreadgroups:&v88 threadsPerThreadgroup:v79];
    [v67 endEncoding];
    _Block_object_dispose(&v82, 8);
  }

  else
  {
    NSLog(@"SLOG: One or more shaders not available, cannot process image");
  }

  return v78;
}

+ (int)formatForInputAtIndex:(int)a3
{
  if (a3)
  {
    if (a3 != 1)
    {
      sub_4ADC0();
    }

    v3 = &kCIFormatR8;
  }

  else
  {
    v3 = &kCIFormatBGRA8;
  }

  return *v3;
}

@end