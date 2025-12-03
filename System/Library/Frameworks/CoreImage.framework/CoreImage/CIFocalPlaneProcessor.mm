@interface CIFocalPlaneProcessor
+ (BOOL)processWithInputs:(id)inputs arguments:(id)arguments output:(id)output error:(id *)error;
+ (CGRect)roiForInput:(int)input arguments:(id)arguments outputRect:(CGRect)rect;
+ (int)formatForInputAtIndex:(int)index;
@end

@implementation CIFocalPlaneProcessor

+ (BOOL)processWithInputs:(id)inputs arguments:(id)arguments output:(id)output error:(id *)error
{
  metalCommandBuffer = [output metalCommandBuffer];
  device = [metalCommandBuffer device];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__CIFocalPlaneProcessor_processWithInputs_arguments_output_error___block_invoke;
  block[3] = &unk_1E75C20F8;
  block[4] = self;
  block[5] = device;
  if (+[CIFocalPlaneProcessor processWithInputs:arguments:output:error:]::onceToken != -1)
  {
    dispatch_once(&+[CIFocalPlaneProcessor processWithInputs:arguments:output:error:]::onceToken, block);
  }

  v12 = [XFocalPlane alloc];
  v13 = [(XFocalPlane *)v12 initWithDevice:device library:+[CIFocalPlaneProcessor processWithInputs:arguments:output:error:]::library];
  v14 = [arguments objectForKeyedSubscript:@"inputFocusRect"];
  [v14 X];
  *&v16 = v15;
  [v14 Y];
  *&v18 = v17;
  [v14 Z];
  *&v20 = v19;
  [v14 W];
  *&v22 = v21;
  [objc_msgSend(arguments objectForKeyedSubscript:{@"inputZeroShiftPercentile", "floatValue"}];
  v24 = v23;
  v66 = __PAIR64__(v18, v16);
  v67 = __PAIR64__(v22, v20);
  LODWORD(v68) = v23;
  [(XFocalPlane *)v13 setConfig:&v66];
  [objc_msgSend(arguments objectForKeyedSubscript:{@"inputAlphaThreshold", "floatValue"}];
  v26 = v25;
  [objc_msgSend(arguments objectForKeyedSubscript:{@"inputAmplitude", "floatValue"}];
  v28 = v27;
  [objc_msgSend(arguments objectForKeyedSubscript:{@"inputExponent", "floatValue"}];
  v30 = v29;
  [objc_msgSend(arguments objectForKeyedSubscript:{@"inputGamma", "floatValue"}];
  v32 = v31;
  [objc_msgSend(arguments objectForKeyedSubscript:{@"inputMinFactor", "floatValue"}];
  v34 = v33;
  [objc_msgSend(arguments objectForKeyedSubscript:{@"inputMaxFactor", "floatValue"}];
  v36 = v35;
  if ([(XFocalPlane *)v13 allocateResources])
  {
    v37 = 0;
  }

  else
  {
    v64 = v26;
    v38 = [objc_msgSend(metalCommandBuffer "commandQueue")];
    blitCommandEncoder = [v38 blitCommandEncoder];
    [output region];
    v41 = v40;
    [objc_msgSend(inputs objectAtIndexedSubscript:{0), "region"}];
    outputCopy = output;
    if (v41 >= v43)
    {
      outputCopy = [inputs objectAtIndexedSubscript:0];
    }

    [outputCopy region];
    v45 = v44;
    [output region];
    v47 = v46;
    [objc_msgSend(inputs objectAtIndexedSubscript:{0), "region"}];
    outputCopy2 = output;
    if (v47 >= v49)
    {
      outputCopy2 = [inputs objectAtIndexedSubscript:0];
    }

    [outputCopy2 region];
    v51 = v50;
    v52 = [objc_msgSend(inputs objectAtIndexedSubscript:{0), "metalTexture"}];
    [objc_msgSend(inputs objectAtIndexedSubscript:{0), "region"}];
    v54 = v53;
    [objc_msgSend(inputs objectAtIndexedSubscript:{0), "region"}];
    v66 = v54;
    v67 = v55;
    v68 = 0;
    v73[0] = v45;
    v73[1] = v51;
    v73[2] = 1;
    metalTexture = [output metalTexture];
    [output region];
    v58 = v57;
    [output region];
    v72[0] = v58;
    v72[1] = v59;
    v72[2] = 0;
    [blitCommandEncoder copyFromTexture:v52 sourceSlice:0 sourceLevel:0 sourceOrigin:&v66 sourceSize:v73 toTexture:metalTexture destinationSlice:0 destinationLevel:0 destinationOrigin:v72];
    [blitCommandEncoder endEncoding];
    [v38 commit];
    v60 = [objc_msgSend(inputs objectAtIndexedSubscript:{1), "metalTexture"}];
    metalTexture2 = [output metalTexture];
    metalTexture3 = [output metalTexture];
    v66 = __PAIR64__(v64, v24);
    v67 = __PAIR64__(v30, v28);
    v68 = __PAIR64__(v34, v32);
    v69 = v36;
    v71 = 0;
    v70 = 0;
    v37 = [(XFocalPlane *)v13 encodeDisparityRefinementPreprocessingOn:metalCommandBuffer alphaTexture:v60 inputDisparityTexture:metalTexture2 outputDisparityTexture:metalTexture3 configuration:&v66]== 0;
  }

  v65[0] = MEMORY[0x1E69E9820];
  v65[1] = 3221225472;
  v65[2] = __66__CIFocalPlaneProcessor_processWithInputs_arguments_output_error___block_invoke_2;
  v65[3] = &unk_1E75C1D88;
  v65[4] = v13;
  [metalCommandBuffer addCompletedHandler:v65];
  return v37;
}

uint64_t __66__CIFocalPlaneProcessor_processWithInputs_arguments_output_error___block_invoke(uint64_t a1)
{
  result = [*(a1 + 40) newDefaultLibraryWithBundle:objc_msgSend(MEMORY[0x1E696AAE8] error:{"bundleForClass:", objc_opt_class()), 0}];
  +[CIFocalPlaneProcessor processWithInputs:arguments:output:error:]::library = result;
  return result;
}

+ (int)formatForInputAtIndex:(int)index
{
  v3 = &kCIFormatRh;
  if (index)
  {
    v3 = &kCIFormatR8;
  }

  return *v3;
}

+ (CGRect)roiForInput:(int)input arguments:(id)arguments outputRect:(CGRect)rect
{
  v5 = [objc_msgSend(arguments objectForKeyedSubscript:{@"imageExtents", rect.origin.x, rect.origin.y, rect.size.width, rect.size.height), "objectAtIndexedSubscript:", input}];

  [v5 CGRectValue];
  result.size.height = v9;
  result.size.width = v8;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

@end