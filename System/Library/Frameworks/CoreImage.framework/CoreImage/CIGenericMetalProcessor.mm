@interface CIGenericMetalProcessor
+ (BOOL)processWithInputs:(id)a3 arguments:(id)a4 output:(id)a5 error:(id *)a6;
+ (CGRect)roiForInput:(int)a3 arguments:(id)a4 outputRect:(CGRect)a5;
+ (id)applyWithExtent:(CGRect)a3 inputs:(id)a4 arguments:(id)a5 error:(id *)a6;
+ (id)applyWithExtent:(CGRect)a3 shader:(id)a4 inputs:(id)a5 arguments:(id)a6 error:(id *)a7;
+ (id)applyWithExtent:(CGRect)a3 shader:(id)a4 inputs:(id)a5 className:(id)a6 arguments:(id)a7 error:(id *)a8;
+ (id)applyWithExtent:(CGRect)a3 shader:(id)a4 inputs:(id)a5 insetRects:(id)a6 arguments:(id)a7 error:(id *)a8;
+ (id)applyWithExtent:(CGRect)a3 shader:(id)a4 inputs:(id)a5 roiMethods:(id)a6 insetRects:(id)a7 scaleFactors:(id)a8 arguments:(id)a9 error:(id *)a10;
+ (id)applyWithExtent:(CGRect)a3 shader:(id)a4 inputs:(id)a5 scaleFactors:(id)a6 arguments:(id)a7 error:(id *)a8;
+ (id)logDescription:(id)a3;
@end

@implementation CIGenericMetalProcessor

+ (id)logDescription:(id)a3
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [a3 objectForKeyedSubscript:@"_shader"];
  v5 = @"nil";
  if (v4)
  {
    v5 = v4;
  }

  return [v3 stringWithFormat:@"CIGenericMetalProcessor-%@", v5];
}

+ (id)applyWithExtent:(CGRect)a3 shader:(id)a4 inputs:(id)a5 roiMethods:(id)a6 insetRects:(id)a7 scaleFactors:(id)a8 arguments:(id)a9 error:(id *)a10
{
  if (a4)
  {
    height = a3.size.height;
    width = a3.size.width;
    y = a3.origin.y;
    x = a3.origin.x;
    v20 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:a9];
    [v20 setObject:a4 forKeyedSubscript:@"_shader"];
    if (a6)
    {
      [v20 setObject:a6 forKeyedSubscript:@"_roiMethods"];
    }

    if (a7)
    {
      [v20 setObject:a7 forKeyedSubscript:@"_insetRects"];
    }

    if (a8)
    {
      [v20 setObject:a8 forKeyedSubscript:@"_scaleFactors"];
    }

    v21 = objc_opt_class();

    return [v21 applyWithExtent:a5 inputs:v20 arguments:a10 error:{x, y, width, height}];
  }

  else
  {

    return [CIImage emptyImage:a3.origin.x];
  }
}

+ (id)applyWithExtent:(CGRect)a3 shader:(id)a4 inputs:(id)a5 insetRects:(id)a6 arguments:(id)a7 error:(id *)a8
{
  if (a4)
  {
    height = a3.size.height;
    width = a3.size.width;
    y = a3.origin.y;
    x = a3.origin.x;
    v17 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:a7];
    [v17 setObject:a4 forKeyedSubscript:@"_shader"];
    if (a6)
    {
      [v17 setObject:a6 forKeyedSubscript:@"_insetRects"];
    }

    v18 = objc_opt_class();

    return [v18 applyWithExtent:a5 inputs:v17 arguments:a8 error:{x, y, width, height}];
  }

  else
  {

    return [CIImage emptyImage:a3.origin.x];
  }
}

+ (id)applyWithExtent:(CGRect)a3 shader:(id)a4 inputs:(id)a5 scaleFactors:(id)a6 arguments:(id)a7 error:(id *)a8
{
  if (a4)
  {
    height = a3.size.height;
    width = a3.size.width;
    y = a3.origin.y;
    x = a3.origin.x;
    v17 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:a7];
    [v17 setObject:a4 forKeyedSubscript:@"_shader"];
    if (a6)
    {
      [v17 setObject:a6 forKeyedSubscript:@"_scaleFactors"];
    }

    v18 = objc_opt_class();

    return [v18 applyWithExtent:a5 inputs:v17 arguments:a8 error:{x, y, width, height}];
  }

  else
  {

    return [CIImage emptyImage:a3.origin.x];
  }
}

+ (id)applyWithExtent:(CGRect)a3 shader:(id)a4 inputs:(id)a5 arguments:(id)a6 error:(id *)a7
{
  if (a4)
  {
    height = a3.size.height;
    width = a3.size.width;
    y = a3.origin.y;
    x = a3.origin.x;
    v15 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:a6];
    [v15 setObject:a4 forKeyedSubscript:@"_shader"];
    v16 = objc_opt_class();

    return [v16 applyWithExtent:a5 inputs:v15 arguments:a7 error:{x, y, width, height}];
  }

  else
  {

    return [CIImage emptyImage:a3.origin.x];
  }
}

+ (id)applyWithExtent:(CGRect)a3 shader:(id)a4 inputs:(id)a5 className:(id)a6 arguments:(id)a7 error:(id *)a8
{
  if (a4)
  {
    height = a3.size.height;
    width = a3.size.width;
    y = a3.origin.y;
    x = a3.origin.x;
    v17 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:a7];
    [v17 setObject:a4 forKeyedSubscript:@"_shader"];
    if (a6)
    {
      [v17 setObject:a6 forKeyedSubscript:@"_class"];
    }

    v18 = objc_opt_class();

    return [v18 applyWithExtent:a5 inputs:v17 arguments:a8 error:{x, y, width, height}];
  }

  else
  {

    return [CIImage emptyImage:a3.origin.x];
  }
}

+ (BOOL)processWithInputs:(id)a3 arguments:(id)a4 output:(id)a5 error:(id *)a6
{
  v90 = *MEMORY[0x1E69E9840];
  v10 = [a5 metalCommandBuffer];
  v11 = [v10 device];
  v77 = a4;
  v12 = [a4 objectForKeyedSubscript:@"_shader"];
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
    if (!v11)
    {
      v15 = 0;
      goto LABEL_5;
    }

    v64 = [v11 newDefaultLibraryWithBundle:objc_msgSend(MEMORY[0x1E696AAE8] error:{"bundleForClass:", objc_opt_class()), 0}];
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
        v68 = [v82[0] arguments];
        [processWithInputs_arguments_output_error__reflectionDict setObject:v68 forKeyedSubscript:v13];
        obj = [v82[0] arguments];
      }

      objc_sync_exit(v67);

      goto LABEL_5;
    }

    v69 = [v83[0] localizedDescription];
    NSLog(&cfstr_FailedToInitia_0.isa, v13, v69, [v83[0] localizedFailureReason]);
    if (v15)
    {
    }

    return 0;
  }

LABEL_5:
  v16 = 0;
  if (v15 && obj)
  {
    v78 = [v10 computeCommandEncoder];
    [v78 setComputePipelineState:v15];
    v88 = 0;
    v17 = [v15 maxTotalThreadsPerThreadgroup];
    v18 = [v15 threadExecutionWidth];
    [a5 region];
    v20 = v19;
    [a5 region];
    mtlutl_ComputeThreadGroupParameters(v17, v18, &v88 + 1, &v88, v20, v21);
    v74 = HIDWORD(v88);
    v73 = v88;
    [a5 region];
    v23 = v22;
    LODWORD(v6) = HIDWORD(v88);
    [a5 region];
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
          v30 = [v29 type];
          if (v30 == 2)
          {
            if ([v29 access])
            {
              v46 = [v29 access];
              v47 = a5;
              if (v46 != 2)
              {
                NSLog(&cfstr_ReadWriteTextu.isa);
LABEL_59:
                v16 = 0;
                goto LABEL_60;
              }
            }

            else
            {
              v47 = [a3 objectAtIndexedSubscript:v76++];
            }

            v51 = [v47 metalTexture];
            v52 = [v29 index];
            if (!v51)
            {
              NSLog(&cfstr_CouldnTFindTex.isa, v52, [v29 name]);
              goto LABEL_59;
            }

            [v78 setTexture:v51 atIndex:v52];
          }

          else
          {
            if (v30)
            {
              goto LABEL_37;
            }

            v31 = [v77 objectForKeyedSubscript:{objc_msgSend(v29, "name")}];
            v32 = [objc_msgSend(v29 "name")];
            if (!((v31 != 0) | v32 & 1))
            {
              NSLog(&cfstr_CouldnTFindDat.isa, [v29 name]);
              goto LABEL_59;
            }

            if (v32)
            {
              v33 = [a3 count];
              v34 = 16 * (v33 + 1);
              v35 = malloc_type_malloc(v34, 0x100004052888210uLL);
              v75[v79] = v35;
              [a5 region];
              ++v79;
              *&v36 = v36;
              *&v37 = v37;
              v35->i32[0] = LODWORD(v36);
              v35->i32[1] = LODWORD(v37);
              *&v36 = v38;
              *&v37 = v39;
              v35[1].i32[0] = LODWORD(v36);
              v35[1].i32[1] = LODWORD(v37);
              if ((v33 + 1) >= 2)
              {
                v40 = 0;
                v41 = v35 + 3;
                do
                {
                  [objc_msgSend(a3 objectAtIndexedSubscript:{v40), "region"}];
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
                v35 = [v49 bytes];
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
                  v35 = malloc_type_malloc(4uLL, 0x23994744uLL);
                  v35->i32[0] = v56;
                  v75[v79++] = v35;
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
                  v35 = malloc_type_malloc(4 * v60, 0x189E1183uLL);
                  v75[v79] = v35;
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
                    v35->i32[i] = LODWORD(v62);
                  }
                }
              }
            }

            if (v34 && v35)
            {
              [v78 setBytes:v35 length:v34 atIndex:{objc_msgSend(v29, "index")}];
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
    [v78 dispatchThreadgroups:v83 threadsPerThreadgroup:v82];
    [v78 endEncoding];
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

+ (CGRect)roiForInput:(int)a3 arguments:(id)a4 outputRect:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v6 = *&a3;
  v7 = *MEMORY[0x1E695F050];
  v8 = *(MEMORY[0x1E695F050] + 8);
  v9 = *(MEMORY[0x1E695F050] + 16);
  v10 = *(MEMORY[0x1E695F050] + 24);
  v11 = [a4 objectForKeyedSubscript:@"_roiMethods"];
  v12 = [a4 objectForKeyedSubscript:@"_insetRects"];
  v13 = [a4 objectForKeyedSubscript:@"_scaleFactors"];
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

  v34 = [a4 objectForKeyedSubscript:@"_class"];
  if (v34 && (v35 = objc_alloc_init(NSClassFromString(v34))) != 0)
  {
    v36 = v35;
    NSSelectorFromString(&cfstr_RoiforinputArg.isa);
    objc_opt_class();
    if (objc_opt_respondsToSelector())
    {
      [objc_opt_class() roiForInput:v6 arguments:a4 outputRect:{x, y, width, height}];
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

  v47 = x;
  if (!v43)
  {
    v47 = rect;
  }

  result.size.height = v44;
  result.size.width = v45;
  result.origin.y = v46;
  result.origin.x = v47;
  return result;
}

+ (id)applyWithExtent:(CGRect)a3 inputs:(id)a4 arguments:(id)a5 error:(id *)a6
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v28 = *MEMORY[0x1E69E9840];
  v13 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(a5, "count")}];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v14 = [a5 countByEnumeratingWithState:&v23 objects:v27 count:16];
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
          objc_enumerationMutation(a5);
        }

        v18 = *(*(&v23 + 1) + 8 * i);
        v19 = [a5 objectForKey:v18];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v19 = archivedDataWithRootObject(v19);
        }

        [v13 setObject:v19 forKeyedSubscript:v18];
      }

      v15 = [a5 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v15);
  }

  v22.receiver = a1;
  v22.super_class = &OBJC_METACLASS___CIGenericMetalProcessor;
  return objc_msgSendSuper2(&v22, sel_applyWithExtent_inputs_arguments_error_, a4, v13, a6, x, y, width, height);
}

@end