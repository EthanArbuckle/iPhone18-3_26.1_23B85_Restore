@interface CIPortraitEffectSpillCorrectionProcessor
+ (BOOL)hasValidPipelines;
+ (BOOL)processWithInputs:(id)inputs arguments:(id)arguments output:(id)output error:(id *)error;
+ (int)formatForInputAtIndex:(int)index;
+ (void)compilePipelines:(id)pipelines;
+ (void)compilePipelinesIfNeeded:(id)needed;
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

+ (void)compilePipelines:(id)pipelines
{
  v9 = 0;
  v4 = [pipelines newDefaultLibraryWithBundle:+[NSBundle bundleForClass:](NSBundle error:{"bundleForClass:", objc_opt_class()), 0}];
  v5 = [v4 newFunctionWithName:@"spillCorrectionPreProcess"];
  qword_8CE78 = [pipelines newComputePipelineStateWithFunction:v5 error:&v9];
  if (v9)
  {
    localizedDescription = [v9 localizedDescription];
    NSLog(@"Failed to initialize shaderSplit: %@; %@", localizedDescription, [v9 localizedFailureReason]);
  }

  v7 = [v4 newFunctionWithName:@"spillCorrectionPostProcess"];
  qword_8CE80 = [pipelines newComputePipelineStateWithFunction:v7 error:&v9];
  if (v9)
  {
    localizedDescription2 = [v9 localizedDescription];
    NSLog(@"Failed to initialize shaderApplyConstraintAndComposite: %@; %@", localizedDescription2, [v9 localizedFailureReason]);
  }
}

+ (void)releasePipelines
{
  v2 = qword_8CE80;
}

+ (void)compilePipelinesIfNeeded:(id)needed
{
  v5 = qword_8CE88;
  if (qword_8CE88 == needed)
  {
    if ([self hasValidPipelines])
    {
      return;
    }

    v5 = qword_8CE88;
  }

  if (v5 != needed)
  {
    [self releasePipelines];
    qword_8CE88 = needed;
  }

  if (([self hasValidPipelines] & 1) == 0)
  {

    [self compilePipelines:needed];
  }
}

+ (BOOL)processWithInputs:(id)inputs arguments:(id)arguments output:(id)output error:(id *)error
{
  metalCommandBuffer = [output metalCommandBuffer];
  if (!metalCommandBuffer)
  {
    sub_4AD94();
  }

  v10 = metalCommandBuffer;
  device = [metalCommandBuffer device];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_29770;
  block[3] = &unk_75610;
  block[4] = self;
  block[5] = device;
  argumentsCopy = arguments;
  if (qword_8CE98 != -1)
  {
    dispatch_once(&qword_8CE98, block);
  }

  [self compilePipelinesIfNeeded:device];
  hasValidPipelines = [self hasValidPipelines];
  if (hasValidPipelines)
  {
    [objc_msgSend(inputs objectAtIndexedSubscript:{0), "region"}];
    v13 = v12;
    [objc_msgSend(inputs objectAtIndexedSubscript:{0), "region"}];
    v15 = v14;
    [objc_msgSend(inputs objectAtIndexedSubscript:{1), "region"}];
    v76 = v13;
    v16 = v13;
    if (v17 != v16 || ([objc_msgSend(inputs objectAtIndexedSubscript:{1), "region"}], v75 = v15, v18 = v15, v19 != v18))
    {
      sub_4AD68();
    }

    [output region];
    if (v20 != v16 || ([output region], v21 != v18))
    {
      sub_4AD3C();
    }

    maxTotalThreadsPerThreadgroup = [qword_8CE78 maxTotalThreadsPerThreadgroup];
    threadExecutionWidth = [qword_8CE78 threadExecutionWidth];
    v25 = v75;
    v24 = v76;
    v26 = 1;
    if (((maxTotalThreadsPerThreadgroup | threadExecutionWidth | v76) & 1) == 0)
    {
      v27 = maxTotalThreadsPerThreadgroup;
      do
      {
        v28 = v24;
        v24 >>= 1;
        maxTotalThreadsPerThreadgroup = v27 >> 1;
        v29 = threadExecutionWidth;
        threadExecutionWidth >>= 1;
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
    if (((v75 | maxTotalThreadsPerThreadgroup) & 1) == 0)
    {
      v31 = v75;
      v32 = maxTotalThreadsPerThreadgroup;
      do
      {
        v25 = v31 >> 1;
        maxTotalThreadsPerThreadgroup = v32 >> 1;
        v30 *= 2;
        v33 = v31 | v32;
        v31 >>= 1;
        v32 >>= 1;
      }

      while ((v33 & 2) == 0);
    }

    if (threadExecutionWidth >= maxTotalThreadsPerThreadgroup)
    {
      v34 = maxTotalThreadsPerThreadgroup;
    }

    else
    {
      v34 = threadExecutionWidth;
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
                while ((i & 1) == 0 && 2 * v36 * v39 <= maxTotalThreadsPerThreadgroup)
                {
                  i >>= 1;
                  v39 *= 2;
                }

                if (i != 3 * (i / 3) || 3 * v36 * v39 > maxTotalThreadsPerThreadgroup)
                {
                  break;
                }

                v39 *= 3;
                i /= 3u;
              }

              if (i != 5 * (i / 5) || 5 * v36 * v39 > maxTotalThreadsPerThreadgroup)
              {
                break;
              }

              v39 *= 5;
              i /= 5u;
            }

            if (i % 7 || 7 * v36 * v39 > maxTotalThreadsPerThreadgroup)
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

    [objc_msgSend(inputs objectAtIndexedSubscript:{0), "region"}];
    v46 = v45;
    [objc_msgSend(inputs objectAtIndexedSubscript:{0), "region"}];
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
      [v50 addObject:{objc_msgSend(device, "newTextureWithDescriptor:", v51)}];
      [v49 addObject:{objc_msgSend(device, "newTextureWithDescriptor:", v51)}];
      --v53;
    }

    while (v53);
    v54 = [device newTextureWithDescriptor:v51];
    v55 = [argumentsCopy objectForKeyedSubscript:@"bgColor"];
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
    computeCommandEncoder = [v10 computeCommandEncoder];
    [computeCommandEncoder setComputePipelineState:qword_8CE78];
    [computeCommandEncoder setTexture:objc_msgSend(v50 atIndex:{"objectAtIndexedSubscript:", 0), 0}];
    [computeCommandEncoder setTexture:objc_msgSend(v50 atIndex:{"objectAtIndexedSubscript:", 1), 1}];
    [computeCommandEncoder setTexture:objc_msgSend(v50 atIndex:{"objectAtIndexedSubscript:", 2), 2}];
    [computeCommandEncoder setTexture:v54 atIndex:3];
    [computeCommandEncoder setTexture:objc_msgSend(objc_msgSend(inputs atIndex:{"objectAtIndexedSubscript:", 0), "metalTexture"), 4}];
    [computeCommandEncoder setTexture:objc_msgSend(objc_msgSend(inputs atIndex:{"objectAtIndexedSubscript:", 1), "metalTexture"), 5}];
    [computeCommandEncoder setBytes:&v91 length:16 atIndex:0];
    v61 = (v37 * v30);
    v82 = v71;
    v83 = v75 / v61;
    v84 = 1;
    v88 = v72;
    v89 = v61;
    v90 = 1;
    [computeCommandEncoder dispatchThreadgroups:&v82 threadsPerThreadgroup:&v88];
    [computeCommandEncoder endEncoding];
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
    v65 = [[MPSImageSpatioTemporalGuidedFilter alloc] initWithDevice:device filterDescriptor:{+[MPSImageSpatioTemporalGuidedFilterDescriptor filterDescriptorWithWidth:height:arrayLength:kernelSpatialDiameter:kernelTemporalDiameter:epsilon:sourceChannels:guideChannels:preallocateIntermediates:](MPSImageSpatioTemporalGuidedFilterDescriptor, "filterDescriptorWithWidth:height:arrayLength:kernelSpatialDiameter:kernelTemporalDiameter:epsilon:sourceChannels:guideChannels:preallocateIntermediates:", v63, v64, 1, 5, 1, 3, v62, 3, v69)}];
    v66 = [objc_msgSend(inputs objectAtIndexedSubscript:{0), "metalTexture"}];
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
    computeCommandEncoder2 = [v10 computeCommandEncoder];
    [computeCommandEncoder2 setComputePipelineState:qword_8CE80];
    [computeCommandEncoder2 setTexture:objc_msgSend(output atIndex:{"metalTexture"), 0}];
    [computeCommandEncoder2 setTexture:objc_msgSend(v49 atIndex:{"objectAtIndexedSubscript:", 0), 1}];
    [computeCommandEncoder2 setTexture:objc_msgSend(v49 atIndex:{"objectAtIndexedSubscript:", 1), 2}];
    [computeCommandEncoder2 setTexture:objc_msgSend(v49 atIndex:{"objectAtIndexedSubscript:", 2), 3}];
    [computeCommandEncoder2 setTexture:objc_msgSend(objc_msgSend(inputs atIndex:{"objectAtIndexedSubscript:", 0), "metalTexture"), 4}];
    [computeCommandEncoder2 setTexture:objc_msgSend(objc_msgSend(inputs atIndex:{"objectAtIndexedSubscript:", 1), "metalTexture"), 5}];
    v88 = v71;
    v89 = v75 / v61;
    v90 = 1;
    v79[0] = v72;
    v79[1] = v61;
    v79[2] = 1;
    [computeCommandEncoder2 dispatchThreadgroups:&v88 threadsPerThreadgroup:v79];
    [computeCommandEncoder2 endEncoding];
    _Block_object_dispose(&v82, 8);
  }

  else
  {
    NSLog(@"SLOG: One or more shaders not available, cannot process image");
  }

  return hasValidPipelines;
}

+ (int)formatForInputAtIndex:(int)index
{
  if (index)
  {
    if (index != 1)
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