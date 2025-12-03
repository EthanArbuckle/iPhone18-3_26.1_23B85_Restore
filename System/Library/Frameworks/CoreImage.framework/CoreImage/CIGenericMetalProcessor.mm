@interface CIGenericMetalProcessor
+ (BOOL)processWithInputs:(id)inputs arguments:(id)arguments output:(id)output error:(id *)error;
+ (CGRect)roiForInput:(int)input arguments:(id)arguments outputRect:(CGRect)rect;
+ (id)applyWithExtent:(CGRect)extent inputs:(id)inputs arguments:(id)arguments error:(id *)error;
+ (id)applyWithExtent:(CGRect)extent shader:(id)shader inputs:(id)inputs arguments:(id)arguments error:(id *)error;
+ (id)applyWithExtent:(CGRect)extent shader:(id)shader inputs:(id)inputs className:(id)name arguments:(id)arguments error:(id *)error;
+ (id)applyWithExtent:(CGRect)extent shader:(id)shader inputs:(id)inputs insetRects:(id)rects arguments:(id)arguments error:(id *)error;
+ (id)applyWithExtent:(CGRect)extent shader:(id)shader inputs:(id)inputs roiMethods:(id)methods insetRects:(id)rects scaleFactors:(id)factors arguments:(id)arguments error:(id *)self0;
+ (id)applyWithExtent:(CGRect)extent shader:(id)shader inputs:(id)inputs scaleFactors:(id)factors arguments:(id)arguments error:(id *)error;
+ (id)logDescription:(id)description;
@end

@implementation CIGenericMetalProcessor

+ (id)logDescription:(id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [description objectForKeyedSubscript:@"_shader"];
  v5 = @"nil";
  if (v4)
  {
    v5 = v4;
  }

  return [v3 stringWithFormat:@"CIGenericMetalProcessor-%@", v5];
}

+ (id)applyWithExtent:(CGRect)extent shader:(id)shader inputs:(id)inputs roiMethods:(id)methods insetRects:(id)rects scaleFactors:(id)factors arguments:(id)arguments error:(id *)self0
{
  if (shader)
  {
    height = extent.size.height;
    width = extent.size.width;
    y = extent.origin.y;
    x = extent.origin.x;
    v20 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:arguments];
    [v20 setObject:shader forKeyedSubscript:@"_shader"];
    if (methods)
    {
      [v20 setObject:methods forKeyedSubscript:@"_roiMethods"];
    }

    if (rects)
    {
      [v20 setObject:rects forKeyedSubscript:@"_insetRects"];
    }

    if (factors)
    {
      [v20 setObject:factors forKeyedSubscript:@"_scaleFactors"];
    }

    v21 = objc_opt_class();

    return [v21 applyWithExtent:inputs inputs:v20 arguments:error error:{x, y, width, height}];
  }

  else
  {

    return [CIImage emptyImage:extent.origin.x];
  }
}

+ (id)applyWithExtent:(CGRect)extent shader:(id)shader inputs:(id)inputs insetRects:(id)rects arguments:(id)arguments error:(id *)error
{
  if (shader)
  {
    height = extent.size.height;
    width = extent.size.width;
    y = extent.origin.y;
    x = extent.origin.x;
    v17 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:arguments];
    [v17 setObject:shader forKeyedSubscript:@"_shader"];
    if (rects)
    {
      [v17 setObject:rects forKeyedSubscript:@"_insetRects"];
    }

    v18 = objc_opt_class();

    return [v18 applyWithExtent:inputs inputs:v17 arguments:error error:{x, y, width, height}];
  }

  else
  {

    return [CIImage emptyImage:extent.origin.x];
  }
}

+ (id)applyWithExtent:(CGRect)extent shader:(id)shader inputs:(id)inputs scaleFactors:(id)factors arguments:(id)arguments error:(id *)error
{
  if (shader)
  {
    height = extent.size.height;
    width = extent.size.width;
    y = extent.origin.y;
    x = extent.origin.x;
    v17 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:arguments];
    [v17 setObject:shader forKeyedSubscript:@"_shader"];
    if (factors)
    {
      [v17 setObject:factors forKeyedSubscript:@"_scaleFactors"];
    }

    v18 = objc_opt_class();

    return [v18 applyWithExtent:inputs inputs:v17 arguments:error error:{x, y, width, height}];
  }

  else
  {

    return [CIImage emptyImage:extent.origin.x];
  }
}

+ (id)applyWithExtent:(CGRect)extent shader:(id)shader inputs:(id)inputs arguments:(id)arguments error:(id *)error
{
  if (shader)
  {
    height = extent.size.height;
    width = extent.size.width;
    y = extent.origin.y;
    x = extent.origin.x;
    v15 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:arguments];
    [v15 setObject:shader forKeyedSubscript:@"_shader"];
    v16 = objc_opt_class();

    return [v16 applyWithExtent:inputs inputs:v15 arguments:error error:{x, y, width, height}];
  }

  else
  {

    return [CIImage emptyImage:extent.origin.x];
  }
}

+ (id)applyWithExtent:(CGRect)extent shader:(id)shader inputs:(id)inputs className:(id)name arguments:(id)arguments error:(id *)error
{
  if (shader)
  {
    height = extent.size.height;
    width = extent.size.width;
    y = extent.origin.y;
    x = extent.origin.x;
    v17 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:arguments];
    [v17 setObject:shader forKeyedSubscript:@"_shader"];
    if (name)
    {
      [v17 setObject:name forKeyedSubscript:@"_class"];
    }

    v18 = objc_opt_class();

    return [v18 applyWithExtent:inputs inputs:v17 arguments:error error:{x, y, width, height}];
  }

  else
  {

    return [CIImage emptyImage:extent.origin.x];
  }
}

+ (BOOL)processWithInputs:(id)inputs arguments:(id)arguments output:(id)output error:(id *)error
{
  v90 = *MEMORY[0x1E69E9840];
  metalCommandBuffer = [output metalCommandBuffer];
  device = [metalCommandBuffer device];
  argumentsCopy = arguments;
  v12 = [arguments objectForKeyedSubscript:@"_shader"];
  if (!v12)
  {
    NSLog(&cfstr_ShaderNameNotS.isa);
    return 0;
  }

  v13 = v12;
  if (processWithInputs_arguments_output_error__onceToken != -1)
  {
    +[CIGenericMetalProcessor processWithInputs:arguments:output:error:];
  }

  v14 = processWithInputs_arguments_output_error__shaderDict;
  objc_sync_enter(processWithInputs_arguments_output_error__shaderDict);
  v15 = [processWithInputs_arguments_output_error__shaderDict objectForKey:v13];
  obj = [processWithInputs_arguments_output_error__reflectionDict objectForKey:v13];
  objc_sync_exit(v14);
  if (!v15)
  {
    v83[0] = 0;
    if (!device)
    {
      v15 = 0;
      goto LABEL_5;
    }

    v64 = [device newDefaultLibraryWithBundle:objc_msgSend(MEMORY[0x1E696AAE8] error:{"bundleForClass:", objc_opt_class()), 0}];
    v65 = [v64 newFunctionWithName:v13];
    v82[0] = 0;
    v15 = [objc_msgSend(v64 "device")];

    if (!v83[0] && v82[0] && v15)
    {
      v66 = processWithInputs_arguments_output_error__shaderDict;
      objc_sync_enter(processWithInputs_arguments_output_error__shaderDict);
      [processWithInputs_arguments_output_error__shaderDict setObject:v15 forKeyedSubscript:v13];

      objc_sync_exit(v66);
      v67 = processWithInputs_arguments_output_error__reflectionDict;
      objc_sync_enter(processWithInputs_arguments_output_error__reflectionDict);
      if (v82[0])
      {
        arguments = [v82[0] arguments];
        [processWithInputs_arguments_output_error__reflectionDict setObject:arguments forKeyedSubscript:v13];
        obj = [v82[0] arguments];
      }

      objc_sync_exit(v67);

      goto LABEL_5;
    }

    localizedDescription = [v83[0] localizedDescription];
    NSLog(&cfstr_FailedToInitia_0.isa, v13, localizedDescription, [v83[0] localizedFailureReason]);
    if (v15)
    {
    }

    return 0;
  }

LABEL_5:
  v16 = 0;
  if (v15 && obj)
  {
    computeCommandEncoder = [metalCommandBuffer computeCommandEncoder];
    [computeCommandEncoder setComputePipelineState:v15];
    v88 = 0;
    maxTotalThreadsPerThreadgroup = [v15 maxTotalThreadsPerThreadgroup];
    threadExecutionWidth = [v15 threadExecutionWidth];
    [output region];
    v20 = v19;
    [output region];
    mtlutl_ComputeThreadGroupParameters(maxTotalThreadsPerThreadgroup, threadExecutionWidth, &v88 + 1, &v88, v20, v21);
    v74 = HIDWORD(v88);
    v73 = v88;
    [output region];
    v23 = v22;
    LODWORD(v6) = HIDWORD(v88);
    [output region];
    v25 = v24;
    LODWORD(v7) = v88;
    v75 = malloc_type_calloc(8uLL, [obj count] + 1, 0x80040B8603338uLL);
    v86 = 0u;
    v87 = 0u;
    v84 = 0u;
    v85 = 0u;
    v26 = [obj countByEnumeratingWithState:&v84 objects:v89 count:16];
    if (v26)
    {
      v76 = 0;
      v79 = 0;
      v27 = *v85;
      while (1)
      {
        v28 = 0;
        do
        {
          if (*v85 != v27)
          {
            objc_enumerationMutation(obj);
          }

          v29 = *(*(&v84 + 1) + 8 * v28);
          type = [v29 type];
          if (type == 2)
          {
            if ([v29 access])
            {
              access = [v29 access];
              outputCopy = output;
              if (access != 2)
              {
                NSLog(&cfstr_ReadWriteTextu.isa);
LABEL_59:
                v16 = 0;
                goto LABEL_60;
              }
            }

            else
            {
              outputCopy = [inputs objectAtIndexedSubscript:v76++];
            }

            metalTexture = [outputCopy metalTexture];
            index = [v29 index];
            if (!metalTexture)
            {
              NSLog(&cfstr_CouldnTFindTex.isa, index, [v29 name]);
              goto LABEL_59;
            }

            [computeCommandEncoder setTexture:metalTexture atIndex:index];
          }

          else
          {
            if (type)
            {
              goto LABEL_37;
            }

            v31 = [argumentsCopy objectForKeyedSubscript:{objc_msgSend(v29, "name")}];
            v32 = [objc_msgSend(v29 "name")];
            if (!((v31 != 0) | v32 & 1))
            {
              NSLog(&cfstr_CouldnTFindDat.isa, [v29 name]);
              goto LABEL_59;
            }

            if (v32)
            {
              v33 = [inputs count];
              v34 = 16 * (v33 + 1);
              bytes = malloc_type_malloc(v34, 0x100004052888210uLL);
              v75[v79] = bytes;
              [output region];
              ++v79;
              *&v36 = v36;
              *&v37 = v37;
              bytes->i32[0] = LODWORD(v36);
              bytes->i32[1] = LODWORD(v37);
              *&v36 = v38;
              *&v37 = v39;
              bytes[1].i32[0] = LODWORD(v36);
              bytes[1].i32[1] = LODWORD(v37);
              if ((v33 + 1) >= 2)
              {
                v40 = 0;
                v41 = bytes + 3;
                do
                {
                  [objc_msgSend(inputs objectAtIndexedSubscript:{v40), "region"}];
                  *&v42 = v42;
                  *&v43 = v43;
                  v45.f64[1] = v44;
                  v41[-1].i32[0] = LODWORD(v42);
                  v41[-1].i32[1] = LODWORD(v43);
                  *v41 = vcvt_f32_f64(v45);
                  v41 += 2;
                  ++v40;
                }

                while (v33 != v40);
              }
            }

            else
            {
              v48 = objc_opt_self();
              v49 = unarchiveObjectOfClass(v48, v31);
              v50 = v49;
              if (v49)
              {
                bytes = [v49 bytes];
                v34 = [v50 length];
              }

              else
              {
                v53 = objc_opt_self();
                v54 = unarchiveObjectOfClass(v53, v31);
                if (v54)
                {
                  [v54 floatValue];
                  v56 = v55;
                  bytes = malloc_type_malloc(4uLL, 0x23994744uLL);
                  bytes->i32[0] = v56;
                  v75[v79++] = bytes;
                  v34 = 4;
                }

                else
                {
                  v57 = objc_opt_self();
                  v58 = unarchiveObjectOfClass(v57, v31);
                  v59 = v58;
                  if (!v58)
                  {
                    NSLog(&cfstr_DonTKnowHowToD.isa, [v29 name]);
                    goto LABEL_59;
                  }

                  v60 = [v58 count];
                  v34 = 4 * v60;
                  bytes = malloc_type_malloc(4 * v60, 0x189E1183uLL);
                  v75[v79] = bytes;
                  if (!v60)
                  {
                    ++v79;
                    goto LABEL_37;
                  }

                  ++v79;
                  for (i = 0; i != v60; ++i)
                  {
                    [v59 valueAtIndex:i];
                    *&v62 = v62;
                    bytes->i32[i] = LODWORD(v62);
                  }
                }
              }
            }

            if (v34 && bytes)
            {
              [computeCommandEncoder setBytes:bytes length:v34 atIndex:{objc_msgSend(v29, "index")}];
            }
          }

LABEL_37:
          ++v28;
        }

        while (v28 != v26);
        v63 = [obj countByEnumeratingWithState:&v84 objects:v89 count:16];
        v26 = v63;
        if (!v63)
        {
          goto LABEL_52;
        }
      }
    }

    v79 = 0;
LABEL_52:
    v83[0] = (v23 / v6);
    v83[1] = (v25 / v7);
    v83[2] = 1;
    v82[0] = v74;
    v82[1] = v73;
    v82[2] = 1;
    [computeCommandEncoder dispatchThreadgroups:v83 threadsPerThreadgroup:v82];
    [computeCommandEncoder endEncoding];
    v16 = 1;
LABEL_60:
    if (v75)
    {
      if (v79)
      {
        v70 = v79;
        v71 = v75;
        do
        {
          if (*v71)
          {
            free(*v71);
          }

          ++v71;
          --v70;
        }

        while (v70);
      }

      free(v75);
    }
  }

  return v16;
}

id __68__CIGenericMetalProcessor_processWithInputs_arguments_output_error___block_invoke()
{
  processWithInputs_arguments_output_error__shaderDict = [MEMORY[0x1E695DF90] dictionary];
  result = [MEMORY[0x1E695DF90] dictionary];
  processWithInputs_arguments_output_error__reflectionDict = result;
  return result;
}

+ (CGRect)roiForInput:(int)input arguments:(id)arguments outputRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v6 = *&input;
  v7 = *MEMORY[0x1E695F050];
  v8 = *(MEMORY[0x1E695F050] + 8);
  v9 = *(MEMORY[0x1E695F050] + 16);
  v10 = *(MEMORY[0x1E695F050] + 24);
  v11 = [arguments objectForKeyedSubscript:@"_roiMethods"];
  v12 = [arguments objectForKeyedSubscript:@"_insetRects"];
  v13 = [arguments objectForKeyedSubscript:@"_scaleFactors"];
  v14 = v10;
  v15 = v9;
  v16 = v8;
  rect = v7;
  if (!v11 || (v17 = objc_opt_self(), v18 = [unarchiveObjectOfClassAllowCommon(v17 v11)], v14 = v10, v15 = v9, v16 = v8, rect = v7, (objc_msgSend(v18, "isEqualToString:", @"halfInput") & 1) != 0))
  {
LABEL_8:
    if (!v13)
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  if ([v18 isEqualToString:@"halfOutput"])
  {
    rect = x * 0.5;
    v16 = y * 0.5;
    v15 = width * 0.5;
    v14 = height * 0.5;
    if (!v13)
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  if ([v18 isEqualToString:@"doubleOutput"])
  {
    rect = x + x;
    v16 = y + y;
    v15 = width + width;
    v14 = height + height;
    goto LABEL_8;
  }

  v48 = [v18 isEqualToString:@"identity"];
  if (v48)
  {
    v14 = height;
  }

  else
  {
    v14 = v10;
  }

  if (v48)
  {
    v15 = width;
  }

  else
  {
    v15 = v9;
  }

  v49 = x;
  if (v48)
  {
    v16 = y;
  }

  else
  {
    v16 = v8;
  }

  if (!v48)
  {
    v49 = v7;
  }

  rect = v49;
  if (v13)
  {
LABEL_9:
    v19 = objc_opt_self();
    v20 = [unarchiveObjectOfClassAllowCommon(v19 v13)];
    if (v20)
    {
      v21 = v20;
      [v20 X];
      rect = x * v22;
      [v21 Y];
      v16 = y * v23;
      [v21 X];
      v15 = width * v24;
      [v21 Y];
      v14 = height * v25;
    }
  }

LABEL_11:
  if (v12)
  {
    v26 = objc_opt_self();
    v27 = [unarchiveObjectOfClassAllowCommon(v26 v12)];
    [v27 X];
    v28 = v15;
    v29 = v16;
    v31 = v30;
    [v27 Y];
    v33 = v32;
    v55.origin.x = rect;
    v55.origin.y = v29;
    v55.size.width = v28;
    v55.size.height = v14;
    v56 = CGRectInset(v55, v31, v33);
    rect = v56.origin.x;
    v16 = v56.origin.y;
    v15 = v56.size.width;
    v14 = v56.size.height;
  }

  v34 = [arguments objectForKeyedSubscript:@"_class"];
  if (v34 && (v35 = objc_alloc_init(NSClassFromString(v34))) != 0)
  {
    v36 = v35;
    NSSelectorFromString(&cfstr_RoiforinputArg.isa);
    objc_opt_class();
    if (objc_opt_respondsToSelector())
    {
      [objc_opt_class() roiForInput:v6 arguments:arguments outputRect:{x, y, width, height}];
      rect = v37;
      v16 = v38;
      v15 = v39;
      v14 = v40;
    }

    v41 = v15;
    v42 = v16;
  }

  else
  {
    v41 = v15;
    v42 = v16;
  }

  v57.origin.x = rect;
  v57.origin.y = v42;
  v57.size.width = v41;
  v57.size.height = v14;
  v59.origin.x = v7;
  v59.origin.y = v8;
  v59.size.width = v9;
  v59.size.height = v10;
  v43 = CGRectEqualToRect(v57, v59);
  if (v43)
  {
    v44 = height;
  }

  else
  {
    v44 = v14;
  }

  if (v43)
  {
    v45 = width;
  }

  else
  {
    v45 = v41;
  }

  if (v43)
  {
    v46 = y;
  }

  else
  {
    v46 = v42;
  }

  rectCopy = x;
  if (!v43)
  {
    rectCopy = rect;
  }

  result.size.height = v44;
  result.size.width = v45;
  result.origin.y = v46;
  result.origin.x = rectCopy;
  return result;
}

+ (id)applyWithExtent:(CGRect)extent inputs:(id)inputs arguments:(id)arguments error:(id *)error
{
  height = extent.size.height;
  width = extent.size.width;
  y = extent.origin.y;
  x = extent.origin.x;
  v28 = *MEMORY[0x1E69E9840];
  v13 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(arguments, "count")}];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v14 = [arguments countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v24;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v24 != v16)
        {
          objc_enumerationMutation(arguments);
        }

        v18 = *(*(&v23 + 1) + 8 * i);
        v19 = [arguments objectForKey:v18];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v19 = archivedDataWithRootObject(v19);
        }

        [v13 setObject:v19 forKeyedSubscript:v18];
      }

      v15 = [arguments countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v15);
  }

  v22.receiver = self;
  v22.super_class = &OBJC_METACLASS___CIGenericMetalProcessor;
  return objc_msgSendSuper2(&v22, sel_applyWithExtent_inputs_arguments_error_, inputs, v13, error, x, y, width, height);
}

@end