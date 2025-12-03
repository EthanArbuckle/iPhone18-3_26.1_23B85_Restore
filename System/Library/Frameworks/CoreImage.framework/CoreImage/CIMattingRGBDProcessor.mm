@interface CIMattingRGBDProcessor
+ (BOOL)processWithInputs:(id)inputs arguments:(id)arguments output:(id)output error:(id *)error;
+ (CGRect)roiForInput:(int)input arguments:(id)arguments outputRect:(CGRect)rect;
+ (int)formatForInputAtIndex:(int)index;
@end

@implementation CIMattingRGBDProcessor

+ (BOOL)processWithInputs:(id)inputs arguments:(id)arguments output:(id)output error:(id *)error
{
  metalCommandBuffer = [output metalCommandBuffer];
  device = [metalCommandBuffer device];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__CIMattingRGBDProcessor_processWithInputs_arguments_output_error___block_invoke;
  block[3] = &unk_1E75C20F8;
  block[4] = self;
  block[5] = device;
  if (processWithInputs_arguments_output_error__onceToken_0 != -1)
  {
    dispatch_once(&processWithInputs_arguments_output_error__onceToken_0, block);
  }

  if (processWithInputs_arguments_output_error__library && [processWithInputs_arguments_output_error__library device] != device)
  {
    processWithInputs_arguments_output_error__library = [device newDefaultLibraryWithBundle:objc_msgSend(MEMORY[0x1E696AAE8] error:{"bundleForClass:", objc_opt_class()), 0}];
  }

  v11 = [XMattingSolver alloc];
  v12 = [(XMattingSolver *)v11 initWithDevice:device library:processWithInputs_arguments_output_error__library];
  v13 = [objc_msgSend(arguments objectForKeyedSubscript:{@"inputRadius", "intValue"}];
  v14 = [objc_msgSend(arguments objectForKeyedSubscript:{@"inputSubsampling", "intValue"}];
  [objc_msgSend(arguments objectForKeyedSubscript:{@"inputEPS", "doubleValue"}];
  v16 = v15;
  v17 = [objc_msgSend(arguments objectForKeyedSubscript:{@"inputNumIterations", "intValue"}];
  [objc_msgSend(arguments objectForKeyedSubscript:{@"fgThresholdValue", "floatValue"}];
  v19 = v18;
  [objc_msgSend(arguments objectForKeyedSubscript:{@"bgThresholdValue", "floatValue"}];
  v21 = v20;
  v22 = [objc_msgSend(arguments objectForKeyedSubscript:{@"erosionKernelSize", "intValue"}];
  v23 = [objc_msgSend(arguments objectForKeyedSubscript:{@"useDepthFilter", "BOOLValue"}];
  v24 = [objc_msgSend(arguments objectForKeyedSubscript:{@"resolutionMode", "intValue"}];
  [objc_msgSend(inputs objectAtIndexedSubscript:{2), "region"}];
  v26 = v25;
  [objc_msgSend(inputs objectAtIndexedSubscript:{2), "region"}];
  v32[0] = v26;
  v32[1] = v27;
  v32[2] = v13;
  v32[3] = v14;
  *&v32[4] = v16;
  v32[5] = v17;
  v33 = v23;
  v34 = 0;
  v35 = 0;
  v36 = v19;
  v37 = v21;
  v38 = v22;
  v39 = v24;
  if ([(XMattingSolver *)v12 allocateResources:v32])
  {
    NSLog(&cfstr_UnableToAlloca.isa);
    v28 = 0;
  }

  else
  {
    v28 = -[XMattingSolver enqueueSolveOn:constraints:colorGuide:extraGuide:inputTexture:outputTexture:](v12, "enqueueSolveOn:constraints:colorGuide:extraGuide:inputTexture:outputTexture:", [metalCommandBuffer commandQueue], 0, objc_msgSend(objc_msgSend(inputs, "objectAtIndexedSubscript:", 1), "metalTexture"), objc_msgSend(objc_msgSend(inputs, "objectAtIndexedSubscript:", 0), "metalTexture"), objc_msgSend(objc_msgSend(inputs, "objectAtIndexedSubscript:", 2), "metalTexture"), objc_msgSend(output, "metalTexture")) == 0;
  }

  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __67__CIMattingRGBDProcessor_processWithInputs_arguments_output_error___block_invoke_2;
  v31[3] = &unk_1E75C1D88;
  v31[4] = v12;
  [metalCommandBuffer addCompletedHandler:v31];
  return v28;
}

uint64_t __67__CIMattingRGBDProcessor_processWithInputs_arguments_output_error___block_invoke(uint64_t a1)
{
  result = [*(a1 + 40) newDefaultLibraryWithBundle:objc_msgSend(MEMORY[0x1E696AAE8] error:{"bundleForClass:", objc_opt_class()), 0}];
  processWithInputs_arguments_output_error__library = result;
  return result;
}

+ (int)formatForInputAtIndex:(int)index
{
  if (index >= 3)
  {
    +[CIMattingRGBDProcessor formatForInputAtIndex:];
  }

  return *off_1E75C3538[index];
}

+ (CGRect)roiForInput:(int)input arguments:(id)arguments outputRect:(CGRect)rect
{
  if (![arguments objectForKeyedSubscript:{@"imageExtents", rect.origin.x, rect.origin.y, rect.size.width, rect.size.height}])
  {
    +[CIMattingRGBDProcessor roiForInput:arguments:outputRect:];
  }

  if ([objc_msgSend(arguments objectForKeyedSubscript:{@"imageExtents", "count"}] <= input)
  {
    +[CIMattingRGBDProcessor roiForInput:arguments:outputRect:];
  }

  v7 = [objc_msgSend(arguments objectForKeyedSubscript:{@"imageExtents", "objectAtIndexedSubscript:", input}];

  [v7 CGRectValue];
  result.size.height = v11;
  result.size.width = v10;
  result.origin.y = v9;
  result.origin.x = v8;
  return result;
}

@end