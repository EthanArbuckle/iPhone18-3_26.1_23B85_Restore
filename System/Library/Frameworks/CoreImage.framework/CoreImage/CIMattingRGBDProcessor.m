@interface CIMattingRGBDProcessor
+ (BOOL)processWithInputs:(id)a3 arguments:(id)a4 output:(id)a5 error:(id *)a6;
+ (CGRect)roiForInput:(int)a3 arguments:(id)a4 outputRect:(CGRect)a5;
+ (int)formatForInputAtIndex:(int)a3;
@end

@implementation CIMattingRGBDProcessor

+ (BOOL)processWithInputs:(id)a3 arguments:(id)a4 output:(id)a5 error:(id *)a6
{
  v9 = [a5 metalCommandBuffer];
  v10 = [v9 device];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__CIMattingRGBDProcessor_processWithInputs_arguments_output_error___block_invoke;
  block[3] = &unk_1E75C20F8;
  block[4] = a1;
  block[5] = v10;
  if (processWithInputs_arguments_output_error__onceToken_0 != -1)
  {
    dispatch_once(&processWithInputs_arguments_output_error__onceToken_0, block);
  }

  if (processWithInputs_arguments_output_error__library && [processWithInputs_arguments_output_error__library device] != v10)
  {
    processWithInputs_arguments_output_error__library = [v10 newDefaultLibraryWithBundle:objc_msgSend(MEMORY[0x1E696AAE8] error:{"bundleForClass:", objc_opt_class()), 0}];
  }

  v11 = [XMattingSolver alloc];
  v12 = [(XMattingSolver *)v11 initWithDevice:v10 library:processWithInputs_arguments_output_error__library];
  v13 = [objc_msgSend(a4 objectForKeyedSubscript:{@"inputRadius", "intValue"}];
  v14 = [objc_msgSend(a4 objectForKeyedSubscript:{@"inputSubsampling", "intValue"}];
  [objc_msgSend(a4 objectForKeyedSubscript:{@"inputEPS", "doubleValue"}];
  v16 = v15;
  v17 = [objc_msgSend(a4 objectForKeyedSubscript:{@"inputNumIterations", "intValue"}];
  [objc_msgSend(a4 objectForKeyedSubscript:{@"fgThresholdValue", "floatValue"}];
  v19 = v18;
  [objc_msgSend(a4 objectForKeyedSubscript:{@"bgThresholdValue", "floatValue"}];
  v21 = v20;
  v22 = [objc_msgSend(a4 objectForKeyedSubscript:{@"erosionKernelSize", "intValue"}];
  v23 = [objc_msgSend(a4 objectForKeyedSubscript:{@"useDepthFilter", "BOOLValue"}];
  v24 = [objc_msgSend(a4 objectForKeyedSubscript:{@"resolutionMode", "intValue"}];
  [objc_msgSend(a3 objectAtIndexedSubscript:{2), "region"}];
  v26 = v25;
  [objc_msgSend(a3 objectAtIndexedSubscript:{2), "region"}];
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
    v28 = -[XMattingSolver enqueueSolveOn:constraints:colorGuide:extraGuide:inputTexture:outputTexture:](v12, "enqueueSolveOn:constraints:colorGuide:extraGuide:inputTexture:outputTexture:", [v9 commandQueue], 0, objc_msgSend(objc_msgSend(a3, "objectAtIndexedSubscript:", 1), "metalTexture"), objc_msgSend(objc_msgSend(a3, "objectAtIndexedSubscript:", 0), "metalTexture"), objc_msgSend(objc_msgSend(a3, "objectAtIndexedSubscript:", 2), "metalTexture"), objc_msgSend(a5, "metalTexture")) == 0;
  }

  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __67__CIMattingRGBDProcessor_processWithInputs_arguments_output_error___block_invoke_2;
  v31[3] = &unk_1E75C1D88;
  v31[4] = v12;
  [v9 addCompletedHandler:v31];
  return v28;
}

uint64_t __67__CIMattingRGBDProcessor_processWithInputs_arguments_output_error___block_invoke(uint64_t a1)
{
  result = [*(a1 + 40) newDefaultLibraryWithBundle:objc_msgSend(MEMORY[0x1E696AAE8] error:{"bundleForClass:", objc_opt_class()), 0}];
  processWithInputs_arguments_output_error__library = result;
  return result;
}

+ (int)formatForInputAtIndex:(int)a3
{
  if (a3 >= 3)
  {
    +[CIMattingRGBDProcessor formatForInputAtIndex:];
  }

  return *off_1E75C3538[a3];
}

+ (CGRect)roiForInput:(int)a3 arguments:(id)a4 outputRect:(CGRect)a5
{
  if (![a4 objectForKeyedSubscript:{@"imageExtents", a5.origin.x, a5.origin.y, a5.size.width, a5.size.height}])
  {
    +[CIMattingRGBDProcessor roiForInput:arguments:outputRect:];
  }

  if ([objc_msgSend(a4 objectForKeyedSubscript:{@"imageExtents", "count"}] <= a3)
  {
    +[CIMattingRGBDProcessor roiForInput:arguments:outputRect:];
  }

  v7 = [objc_msgSend(a4 objectForKeyedSubscript:{@"imageExtents", "objectAtIndexedSubscript:", a3}];

  [v7 CGRectValue];
  result.size.height = v11;
  result.size.width = v10;
  result.origin.y = v9;
  result.origin.x = v8;
  return result;
}

@end