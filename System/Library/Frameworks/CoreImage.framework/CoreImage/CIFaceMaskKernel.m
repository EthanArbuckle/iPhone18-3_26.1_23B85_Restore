@interface CIFaceMaskKernel
+ (BOOL)hasValidPipelines;
+ (BOOL)processWithInputs:(id)a3 arguments:(id)a4 output:(id)a5 error:(id *)a6;
+ (void)allocateBuffersIfNeeded:(id)a3;
+ (void)compilePipelines:(id)a3;
+ (void)compilePipelinesIfNeeded:(id)a3;
+ (void)releaseBuffers;
+ (void)releasePipelines;
@end

@implementation CIFaceMaskKernel

+ (BOOL)hasValidPipelines
{
  if (shaderCalc)
  {
    v2 = shaderApply == 0;
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
  v4 = [a3 newDefaultLibraryWithBundle:objc_msgSend(MEMORY[0x1E696AAE8] error:{"bundleForClass:", objc_opt_class()), 0}];
  v5 = [v4 newFunctionWithName:@"CIFaceMask_calc"];
  shaderCalc = [a3 newComputePipelineStateWithFunction:v5 error:&v9];
  if (v9)
  {
    v6 = [v9 localizedDescription];
    NSLog(&cfstr_FailedToInitia_0.isa, @"CIFaceMask_calc", v6, [v9 localizedFailureReason]);
  }

  v7 = [v4 newFunctionWithName:@"CIFaceMask_apply"];
  shaderApply = [a3 newComputePipelineStateWithFunction:v7 error:&v9];
  if (v9)
  {
    v8 = [v9 localizedDescription];
    NSLog(&cfstr_FailedToInitia_0.isa, @"CIFaceMask_apply", v8, [v9 localizedFailureReason]);
  }
}

+ (void)releasePipelines
{
  if (shaderCalc)
  {
  }

  if (shaderApply)
  {
  }

  shaderCalc = 0;
  shaderApply = 0;
}

+ (void)compilePipelinesIfNeeded:(id)a3
{
  v5 = +[CIFaceMaskKernel compilePipelinesIfNeeded:]::targetedDevice;
  if (+[CIFaceMaskKernel compilePipelinesIfNeeded:]::targetedDevice == a3)
  {
    if ([a1 hasValidPipelines])
    {
      return;
    }

    v5 = +[CIFaceMaskKernel compilePipelinesIfNeeded:]::targetedDevice;
  }

  if (v5 != a3)
  {
    [a1 releasePipelines];
    +[CIFaceMaskKernel compilePipelinesIfNeeded:]::targetedDevice = a3;
  }

  if (([a1 hasValidPipelines] & 1) == 0)
  {

    [a1 compilePipelines:a3];
  }
}

+ (void)releaseBuffers
{
  if (applyParams)
  {
  }

  applyParams = 0;
}

+ (void)allocateBuffersIfNeeded:(id)a3
{
  v5 = +[CIFaceMaskKernel allocateBuffersIfNeeded:]::targetedDevice;
  if (+[CIFaceMaskKernel allocateBuffersIfNeeded:]::targetedDevice == a3)
  {
    if ([a1 hasValidBuffers])
    {
      return;
    }

    v5 = +[CIFaceMaskKernel allocateBuffersIfNeeded:]::targetedDevice;
  }

  if (v5 != a3)
  {
    [a1 releaseBuffers];
    +[CIFaceMaskKernel allocateBuffersIfNeeded:]::targetedDevice = a3;
  }

  if (([a1 hasValidBuffers] & 1) == 0)
  {

    [a1 allocateBuffers:a3];
  }
}

+ (BOOL)processWithInputs:(id)a3 arguments:(id)a4 output:(id)a5 error:(id *)a6
{
  v10 = [a5 metalCommandBuffer];
  v11 = [v10 device];
  [a1 compilePipelinesIfNeeded:v11];
  [a1 allocateBuffersIfNeeded:v11];
  if (![a1 hasValidPipelines] || !objc_msgSend(a1, "hasValidBuffers"))
  {
    return 0;
  }

  v121[0] = 1022739087;
  if (a4)
  {
    v12 = [a4 objectForKey:@"face0CentreX"];
    v13 = -1.0;
    LODWORD(v14) = -1.0;
    if (v12)
    {
      [v12 floatValue];
    }

    LODWORD(v122) = LODWORD(v14);
    v15 = [a4 objectForKey:@"face0CentreY"];
    if (v15)
    {
      [v15 floatValue];
      v13 = v16;
    }

    *&v123 = v13;
    v17 = [a4 objectForKey:@"face0LeftEyeX"];
    v18 = -1.0;
    LODWORD(v19) = -1.0;
    if (v17)
    {
      [v17 floatValue];
    }

    LODWORD(v124) = LODWORD(v19);
    v20 = [a4 objectForKey:@"face0LeftEyeY"];
    if (v20)
    {
      [v20 floatValue];
      v18 = v21;
    }

    *&v125 = v18;
    v22 = [a4 objectForKey:@"face0RightEyeX"];
    v23 = -1.0;
    LODWORD(v24) = -1.0;
    if (v22)
    {
      [v22 floatValue];
    }

    LODWORD(v126) = LODWORD(v24);
    v25 = [a4 objectForKey:@"face0RightEyeY"];
    if (v25)
    {
      [v25 floatValue];
      v23 = v26;
    }

    *&v127 = v23;
    v27 = [a4 objectForKey:@"face0ChinX"];
    v28 = -1.0;
    LODWORD(v29) = -1.0;
    if (v27)
    {
      [v27 floatValue];
    }

    LODWORD(v128) = LODWORD(v29);
    v30 = [a4 objectForKey:@"face0ChinY"];
    if (v30)
    {
      [v30 floatValue];
      v28 = v31;
    }

    *&v129 = v28;
    v32 = [a4 objectForKey:@"face1CentreX"];
    v33 = -1.0;
    LODWORD(v34) = -1.0;
    if (v32)
    {
      [v32 floatValue];
    }

    DWORD1(v122) = LODWORD(v34);
    v35 = [a4 objectForKey:@"face1CentreY"];
    if (v35)
    {
      [v35 floatValue];
      v33 = v36;
    }

    *(&v123 + 1) = v33;
    v37 = [a4 objectForKey:@"face1LeftEyeX"];
    v38 = -1.0;
    LODWORD(v39) = -1.0;
    if (v37)
    {
      [v37 floatValue];
    }

    DWORD1(v124) = LODWORD(v39);
    v40 = [a4 objectForKey:@"face1LeftEyeY"];
    if (v40)
    {
      [v40 floatValue];
      v38 = v41;
    }

    *(&v125 + 1) = v38;
    v42 = [a4 objectForKey:@"face1RightEyeX"];
    v43 = -1.0;
    LODWORD(v44) = -1.0;
    if (v42)
    {
      [v42 floatValue];
    }

    DWORD1(v126) = LODWORD(v44);
    v45 = [a4 objectForKey:@"face1RightEyeY"];
    if (v45)
    {
      [v45 floatValue];
      v43 = v46;
    }

    *(&v127 + 1) = v43;
    v47 = [a4 objectForKey:@"face1ChinX"];
    v48 = -1.0;
    LODWORD(v49) = -1.0;
    if (v47)
    {
      [v47 floatValue];
    }

    DWORD1(v128) = LODWORD(v49);
    v50 = [a4 objectForKey:@"face1ChinY"];
    if (v50)
    {
      [v50 floatValue];
      v48 = v51;
    }

    *(&v129 + 1) = v48;
    v52 = [a4 objectForKey:@"face2CentreX"];
    v53 = -1.0;
    LODWORD(v54) = -1.0;
    if (v52)
    {
      [v52 floatValue];
    }

    DWORD2(v122) = LODWORD(v54);
    v55 = [a4 objectForKey:@"face2CentreY"];
    if (v55)
    {
      [v55 floatValue];
      v53 = v56;
    }

    *(&v123 + 2) = v53;
    v57 = [a4 objectForKey:@"face2LeftEyeX"];
    v58 = -1.0;
    LODWORD(v59) = -1.0;
    if (v57)
    {
      [v57 floatValue];
    }

    DWORD2(v124) = LODWORD(v59);
    v60 = [a4 objectForKey:@"face2LeftEyeY"];
    if (v60)
    {
      [v60 floatValue];
      v58 = v61;
    }

    *(&v125 + 2) = v58;
    v62 = [a4 objectForKey:@"face2RightEyeX"];
    v63 = -1.0;
    LODWORD(v64) = -1.0;
    if (v62)
    {
      [v62 floatValue];
    }

    DWORD2(v126) = LODWORD(v64);
    v65 = [a4 objectForKey:@"face2RightEyeY"];
    if (v65)
    {
      [v65 floatValue];
      v63 = v66;
    }

    *(&v127 + 2) = v63;
    v67 = [a4 objectForKey:@"face2ChinX"];
    v68 = -1.0;
    LODWORD(v69) = -1.0;
    if (v67)
    {
      [v67 floatValue];
    }

    DWORD2(v128) = LODWORD(v69);
    v70 = [a4 objectForKey:@"face2ChinY"];
    if (v70)
    {
      [v70 floatValue];
      v68 = v71;
    }

    v130 = LODWORD(v68);
    v72 = [a4 objectForKey:@"face3CentreX"];
    v73 = -1.0;
    LODWORD(v74) = -1.0;
    if (v72)
    {
      [v72 floatValue];
    }

    HIDWORD(v122) = LODWORD(v74);
    v75 = [a4 objectForKey:@"face3CentreY"];
    if (v75)
    {
      [v75 floatValue];
      v73 = v76;
    }

    *(&v123 + 3) = v73;
    v77 = [a4 objectForKey:@"face3LeftEyeX"];
    v78 = -1.0;
    LODWORD(v79) = -1.0;
    if (v77)
    {
      [v77 floatValue];
    }

    HIDWORD(v124) = LODWORD(v79);
    v80 = [a4 objectForKey:@"face3LeftEyeY"];
    if (v80)
    {
      [v80 floatValue];
      v78 = v81;
    }

    *(&v125 + 3) = v78;
    v82 = [a4 objectForKey:@"face3RightEyeX"];
    v83 = -1.0;
    LODWORD(v84) = -1.0;
    if (v82)
    {
      [v82 floatValue];
    }

    HIDWORD(v126) = LODWORD(v84);
    v85 = [a4 objectForKey:@"face3RightEyeY"];
    if (v85)
    {
      [v85 floatValue];
      v83 = v86;
    }

    *(&v127 + 3) = v83;
    v87 = [a4 objectForKey:@"face3ChinX"];
    v88 = -1.0;
    LODWORD(v89) = -1.0;
    if (v87)
    {
      [v87 floatValue];
    }

    HIDWORD(v128) = LODWORD(v89);
    v90 = [a4 objectForKey:@"face3ChinY"];
    if (v90)
    {
      [v90 floatValue];
      v88 = v91;
    }
  }

  else
  {
    __asm { FMOV            V0.2S, #-1.0 }

    v129 = _D0;
    v130 = -1082130432;
    __asm { FMOV            V0.4S, #-1.0 }

    v122 = _Q0;
    v123 = _Q0;
    v124 = _Q0;
    v125 = _Q0;
    v126 = _Q0;
    v88 = -1.0;
    v127 = _Q0;
    v128 = _Q0;
  }

  v131 = v88;
  v132 = xmmword_19CF266C0;
  v133 = xmmword_19CF266D0;
  v134 = 0x3F0000003E4CCCCDLL;
  [a5 region];
  v100 = v99;
  [a5 region];
  v102 = v100 / v101;
  v135 = v102;
  [a5 region];
  v104 = v103;
  v106 = v105;
  v107 = [objc_msgSend(a3 objectAtIndexedSubscript:{0), "metalTexture"}];
  v108 = [a5 metalTexture];
  v109 = [v10 computeCommandEncoder];
  [v109 setComputePipelineState:shaderCalc];
  [v109 setBytes:v121 length:192 atIndex:0];
  v92 = 1;
  [v109 setBuffer:0 offset:0 atIndex:1];
  [v109 setTexture:v107 atIndex:0];
  v119 = vdupq_n_s64(1uLL);
  v120 = 1;
  v117 = v119;
  v118 = 1;
  [v109 dispatchThreadgroups:&v119 threadsPerThreadgroup:&v117];
  v116 = 0;
  v110 = [shaderApply maxTotalThreadsPerThreadgroup];
  mtlutl_ComputeThreadGroupParameters(v110, [shaderApply threadExecutionWidth], &v116 + 1, &v116, v104, v106);
  v112 = v116;
  v111 = HIDWORD(v116);
  v113 = (v104 / HIDWORD(v116));
  v114 = (v106 / v116);
  [v109 setComputePipelineState:shaderApply];
  [v109 setBuffer:0 offset:0 atIndex:0];
  [v109 setTexture:v107 atIndex:0];
  [v109 setTexture:v108 atIndex:1];
  v119.i64[0] = v113;
  v119.i64[1] = v114;
  v120 = 1;
  v117.i64[0] = v111;
  v117.i64[1] = v112;
  v118 = 1;
  [v109 dispatchThreadgroups:&v119 threadsPerThreadgroup:&v117];
  [v109 endEncoding];
  [v10 addCompletedHandler:&__block_literal_global_335];
  return v92;
}

@end