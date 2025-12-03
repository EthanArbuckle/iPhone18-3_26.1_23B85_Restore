@interface FBSProcessorGPU
+ (BOOL)processWithInputs:(id)inputs arguments:(id)arguments output:(id)output error:(id *)error;
@end

@implementation FBSProcessorGPU

+ (BOOL)processWithInputs:(id)inputs arguments:(id)arguments output:(id)output error:(id *)error
{
  v61 = *MEMORY[0x1E69E9840];
  [objc_msgSend(arguments objectForKeyedSubscript:{@"fullROI", "CGRectValue"}];
  v10 = v9;
  v12 = v11;
  v13 = [objc_msgSend(arguments objectForKeyedSubscript:{@"inputMaxNumVertices", "intValue"}];
  v14 = [objc_msgSend(arguments objectForKeyedSubscript:{@"inputSigmaS", "intValue"}];
  v15 = [objc_msgSend(arguments objectForKeyedSubscript:{@"inputSigmaRLuma", "intValue"}];
  v16 = [objc_msgSend(arguments objectForKeyedSubscript:{@"inputSigmaRChroma", "intValue"}];
  [objc_msgSend(arguments objectForKeyedSubscript:{@"inputLambda", "floatValue"}];
  v18 = v17;
  v19 = [objc_msgSend(arguments objectForKeyedSubscript:{@"inputMaxNumIterations", "intValue"}];
  if (v13 <= 1000)
  {
    +[FBSProcessorGPU processWithInputs:arguments:output:error:];
  }

  if (!v14)
  {
    +[FBSProcessorGPU processWithInputs:arguments:output:error:];
  }

  if (!v15)
  {
    +[FBSProcessorGPU processWithInputs:arguments:output:error:];
  }

  if (!v16)
  {
    +[FBSProcessorGPU processWithInputs:arguments:output:error:];
  }

  if (v18 == 0.0)
  {
    +[FBSProcessorGPU processWithInputs:arguments:output:error:];
  }

  if (!v19)
  {
    +[FBSProcessorGPU processWithInputs:arguments:output:error:];
  }

  v56 = v19;
  v20 = [inputs objectAtIndexedSubscript:0];
  v55 = [inputs objectAtIndexedSubscript:1];
  v21 = [inputs objectAtIndexedSubscript:2];
  v22 = -[CIBilateralSolverGPU initWithWidth:height:maxVertices:commandBuffer:]([CIBilateralSolverGPU alloc], "initWithWidth:height:maxVertices:commandBuffer:", v10, v12, v13, [output metalCommandBuffer]);
  v23 = [[CIBilateralGridHash alloc] initWithWidth:v10 height:v12 maxHashTableSize:v13];
  surface = [v20 surface];
  [v20 region];
  if ([CIBilateralGridHash createWithSurface:v23 region:"createWithSurface:region:cropRect:sigma_s:sigma_r_luma:sigma_r_chroma:" cropRect:surface sigma_s:v14 sigma_r_luma:v15 sigma_r_chroma:v16])
  {
    v25 = ci_logger_performance();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      *buf = 136446210;
      v58 = "+[FBSProcessorGPU processWithInputs:arguments:output:error:]";
      _os_log_impl(&dword_19CC36000, v25, OS_LOG_TYPE_INFO, "%{public}s Returning disparity image; unable to create 3D bilateral grid hash. Please file a radar.", buf, 0xCu);
    }
  }

  surface2 = [v20 surface];
  v27 = [objc_msgSend(output "metalCommandBuffer")];
  Width = IOSurfaceGetWidth(surface2);
  v29 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:70 width:Width height:IOSurfaceGetHeight(surface2) mipmapped:0];
  [v29 setUsage:23];
  v30 = [v27 newTextureWithDescriptor:v29 iosurface:surface2 plane:0];
  [v20 region];
  v53 = v31;
  [v20 region];
  v32.f64[0] = v53;
  v32.f64[1] = v33;
  v54 = vmovn_s64(vcvtq_s64_f64(vnegq_f64(v32)));
  [v55 region];
  v51 = v34;
  [v55 region];
  v35.f64[0] = v51;
  v35.f64[1] = v36;
  v52 = vmovn_s64(vcvtq_s64_f64(vnegq_f64(v35)));
  [v21 region];
  v49 = v37;
  [v21 region];
  v38.f64[0] = v49;
  v38.f64[1] = v39;
  v50 = vmovn_s64(vcvtq_s64_f64(vnegq_f64(v38)));
  [output region];
  v48 = v40;
  [output region];
  v41.f64[0] = v48;
  v41.f64[1] = v42;
  *&v41.f64[0] = vmovn_s64(vcvtq_s64_f64(vnegq_f64(v41)));
  *&buf[2] = v54.i16[2];
  *buf = v54.i16[0];
  WORD1(v58) = v52.i16[2];
  LOWORD(v58) = v52.i16[0];
  HIWORD(v58) = v50.i16[2];
  WORD2(v58) = v50.i16[0];
  v60 = WORD2(v41.f64[0]);
  v59 = LOWORD(v41.f64[0]);
  metalTexture = [v21 metalTexture];
  metalTexture2 = [v55 metalTexture];
  metalTexture3 = [output metalTexture];
  *&v46 = v18;
  [(CIBilateralSolverGPU *)v22 doSolveWithBilateralGridhash:v23 reference:v30 disparity:metalTexture confidence:metalTexture2 output:metalTexture3 lambda:v56 maxIterations:v46 offsets:buf];

  return 1;
}

@end