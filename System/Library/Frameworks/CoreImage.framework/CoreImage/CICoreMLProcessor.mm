@interface CICoreMLProcessor
+ (BOOL)processWithInputs:(id)inputs arguments:(id)arguments output:(id)output error:(id *)error;
+ (CGRect)roiForInput:(int)input arguments:(id)arguments outputRect:(CGRect)rect;
+ (id)logDescription:(id)description;
+ (int)formatForInputAtIndex:(int)index arguments:(id)arguments;
+ (int)outputFormatWithArguments:(id)arguments;
@end

@implementation CICoreMLProcessor

+ (id)logDescription:(id)description
{
  v3 = [description objectForKeyedSubscript:@"logName"];
  if (v3)
  {
    v4 = v3;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([v4 length])
      {
        return [MEMORY[0x1E696AEC0] stringWithFormat:@"CICoreMLProcessor-%@", v4];
      }
    }
  }

  v6 = MEMORY[0x1E696AEC0];

  return [v6 stringWithFormat:@"CICoreMLProcessor"];
}

+ (CGRect)roiForInput:(int)input arguments:(id)arguments outputRect:(CGRect)rect
{
  v7 = [objc_msgSend(arguments objectForKeyedSubscript:{@"inputWidths", rect.origin.x, rect.origin.y, rect.size.width, rect.size.height), "objectAtIndex:", input}];
  v8 = [objc_msgSend(arguments objectForKeyedSubscript:{@"inputHeights", "objectAtIndex:", input}];
  v9 = [objc_msgSend(arguments objectForKeyedSubscript:{@"inputChans", "objectAtIndex:", input}];
  intValue = [v7 intValue];
  intValue2 = [v8 intValue];
  v12 = ([v9 intValue] * intValue2);
  v13 = 0.0;
  v14 = 0.0;
  v15 = intValue;
  result.size.height = v12;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

+ (BOOL)processWithInputs:(id)inputs arguments:(id)arguments output:(id)output error:(id *)error
{
  v161 = *MEMORY[0x1E69E9840];
  v148 = 0;
  v141 = [arguments objectForKeyedSubscript:@"model"];
  v122 = [arguments objectForKeyedSubscript:@"headName"];
  v120 = [objc_msgSend(objc_msgSend(objc_msgSend(v141 "modelDescription")];
  v118 = [objc_msgSend(arguments objectForKeyedSubscript:{@"softmax", "BOOLValue"}];
  v126 = objc_alloc_init(CIMLFeatureProvider);
  v136 = [arguments objectForKeyedSubscript:@"inputWidths"];
  v134 = [arguments objectForKeyedSubscript:@"inputHeights"];
  v132 = [arguments objectForKeyedSubscript:@"inputChans"];
  v130 = [arguments objectForKeyedSubscript:@"inputFormats"];
  v7 = [arguments objectForKeyedSubscript:@"inputNames"];
  v144 = 0u;
  v145 = 0u;
  v146 = 0u;
  v147 = 0u;
  v140 = [v7 countByEnumeratingWithState:&v144 objects:v160 count:16];
  if (v140)
  {
    v128 = *v145;
    do
    {
      for (i = 0; i != v140; ++i)
      {
        if (*v145 != v128)
        {
          objc_enumerationMutation(v7);
        }

        v9 = *(*(&v144 + 1) + 8 * i);
        v10 = [objc_msgSend(objc_msgSend(objc_msgSend(v141 "modelDescription")];
        v11 = [objc_msgSend(objc_msgSend(v141 "modelDescription")];
        v13 = v11 && (v12 = [objc_msgSend(v11 "multiArrayConstraint")], objc_msgSend(v12, "type") == 2) && objc_msgSend(objc_msgSend(objc_msgSend(v12, "enumeratedShapes"), "objectAtIndexedSubscript:", 0), "count") == 3;
        v14 = [v7 indexOfObject:v9];
        v15 = [inputs objectAtIndexedSubscript:v14];
        v16 = [objc_msgSend(v136 objectAtIndexedSubscript:{v14), "unsignedLongValue"}];
        v17 = [objc_msgSend(v134 objectAtIndexedSubscript:{v14), "unsignedLongValue"}];
        v18 = [objc_msgSend(v132 objectAtIndexedSubscript:{v14), "intValue"}];
        v19 = [objc_msgSend(v130 objectAtIndexedSubscript:{v14), "unsignedLongValue"}];
        if (v10 == 5)
        {
          v21 = copyProcessorInput(v15, 0x4C303068u);
          if (v13)
          {
            v159[0] = [MEMORY[0x1E696AD98] numberWithInt:v18];
            v159[1] = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v17];
            v159[2] = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v16];
            v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v159 count:3];
          }

          else
          {
            v158[0] = &unk_1F1081A70;
            v158[1] = [MEMORY[0x1E696AD98] numberWithInt:v18];
            v158[2] = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v17];
            v158[3] = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v16];
            v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v158 count:4];
          }

          v23 = [objc_alloc(getMLMultiArrayClass()) initWithPixelBuffer:v21 shape:v22];
          CFRelease(v21);
          [(CIMLFeatureProvider *)v126 addOject:v23 forName:v9];
        }

        else if (v10 == 4)
        {
          v20 = copyProcessorInput(v15, v19);
          [(CIMLFeatureProvider *)v126 addOject:v20 forName:v9];
          CFRelease(v20);
        }
      }

      v140 = [v7 countByEnumeratingWithState:&v144 objects:v160 count:16];
    }

    while (v140);
  }

  if (v120 == 4 && (shapeForLayer(v141, v122, 1), v25 = v24, v27 = v26, [output region], v163.origin.x = 0.0, v163.origin.y = 0.0, v163.size.width = v25, v163.size.height = v27, CGRectEqualToRect(v162, v163)) && ((v28 = objc_msgSend(objc_msgSend(objc_msgSend(v141, "modelDescription"), "outputDescriptionsByName"), "objectForKey:", v122)) == 0 ? (v29 = 0) : (v29 = objc_msgSend(objc_msgSend(v28, "imageConstraint"), "pixelFormatType")), (v30 = objc_msgSend(output, "pixelBuffer"), (v31 = v30) != 0) && CVPixelBufferGetPixelFormatType(v30) == v29))
  {
    v150 = 0;
    v151 = &v150;
    v152 = 0x3052000000;
    v153 = __Block_byref_object_copy__2;
    v32 = getMLPredictionOptionsClass(void)::softClass;
    v154 = __Block_byref_object_dispose__2;
    v155 = getMLPredictionOptionsClass(void)::softClass;
    if (!getMLPredictionOptionsClass(void)::softClass)
    {
      v149[0] = MEMORY[0x1E69E9820];
      v149[1] = 3221225472;
      v149[2] = ___ZL27getMLPredictionOptionsClassv_block_invoke;
      v149[3] = &unk_1E75C1E10;
      v149[4] = &v150;
      ___ZL27getMLPredictionOptionsClassv_block_invoke(v149);
      v32 = v151[5];
    }

    _Block_object_dispose(&v150, 8);
    v33 = objc_alloc_init(v32);
    v156 = v122;
    v157 = v31;
    [v33 setOutputBackings:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v157, &v156, 1)}];
  }

  else
  {
    v33 = 0;
  }

  v34 = [v141 predictionFromFeatures:v126 options:v33 error:&v148];

  if (v148)
  {
    _ZF = 1;
  }

  else
  {
    _ZF = v34 == 0;
  }

  v36 = !_ZF;
  if (_ZF)
  {
    if (error && v148)
    {
      *error = v148;
    }

    v38 = ci_logger_api();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      [CICoreMLProcessor processWithInputs:v38 arguments:? output:? error:?];
    }
  }

  else
  {
    v37 = [v34 featureValueForName:v122];
    if ([v37 type] == 4)
    {
      [v37 imageBufferValue];
    }

    else if ([v37 type] == 5)
    {
      multiArrayValue = [v37 multiArrayValue];
      if ((([multiArrayValue dataType] == 65600) & v118) == 1)
      {
        dataPointer = [multiArrayValue dataPointer];
        shape = [multiArrayValue shape];
        v41 = [shape count];
        v142 = [objc_msgSend(shape objectAtIndexedSubscript:{v41 - 3), "intValue"}];
        v131 = [objc_msgSend(shape objectAtIndexedSubscript:{v41 - 2), "intValue"}];
        v42 = [objc_msgSend(shape objectAtIndexedSubscript:{v41 - 1), "intValue"}];
        baseAddress = [output baseAddress];
        bytesPerRow = [output bytesPerRow];
        [output region];
        v45 = v44;
        v47 = v46;
        v49 = v48;
        v51 = v50;
        v52 = [objc_msgSend(objc_msgSend(multiArrayValue "strides")];
        v53 = [objc_msgSend(objc_msgSend(multiArrayValue "strides")];
        v54 = [objc_msgSend(objc_msgSend(multiArrayValue "strides")];
        [output region];
        v56 = v55;
        bytesPerRow2 = [output bytesPerRow];
        [output region];
        bzero([output baseAddress], bytesPerRow2 * (v56 - 1) + 2 * v58);
        v133 = malloc_type_calloc(v42 * v131, 4uLL, 0x100004052888210uLL);
        v127 = v36;
        v137 = 8 * v53;
        v59 = 8 * v54;
        v60 = 8 * v52;
        if (v131 >= 1)
        {
          v121 = v54;
          v125 = bytesPerRow;
          v61 = 0;
          v62 = v42;
          v139 = dataPointer;
          v135 = v42;
          do
          {
            if (v42 >= 1)
            {
              v63 = 0;
              v64 = v139;
              v65 = &v133[v61 * v131];
              do
              {
                if (v142 >= 1)
                {
                  v66 = *&v65[4 * v63];
                  v67 = v64;
                  v68 = v142;
                  do
                  {
                    v69 = exp(*v67);
                    v66 = v66 + v69;
                    v67 = (v67 + v60);
                    --v68;
                  }

                  while (v68);
                  *&v65[4 * v63] = v66;
                }

                ++v63;
                v64 = (v64 + v59);
              }

              while (v63 != v62);
            }

            ++v61;
            v139 += v137;
            v42 = v135;
          }

          while (v61 != v131);
          v70 = 0;
          v71 = v133;
          bytesPerRow = v125;
          v54 = v121;
          do
          {
            v72 = v71;
            v73 = v62;
            if (v135 >= 1)
            {
              do
              {
                *v72 = 1.0 / *v72;
                ++v72;
                --v73;
              }

              while (v73);
            }

            ++v70;
            v71 += v131;
          }

          while (v70 != v131);
        }

        if (v51 > 0.0)
        {
          v74 = 0;
          v143 = v47;
          v75 = v45;
          v76 = 2 * (bytesPerRow >> 1);
          v77 = &v133[v75];
          v78 = dataPointer + 8 * v54 * v75;
          v79 = baseAddress;
          do
          {
            if (v49 > 0.0)
            {
              v80 = 0;
              v81 = v79;
              v82 = (v74 + v143) % v131;
              v83 = &v77[4 * v82 * v131];
              v84 = (v78 + v137 * v82 + v60 * ((v74 + v143) / v131));
              do
              {
                v85 = exp(*v84);
                v79 = v81;
                _D0 = v85 * *&v83[4 * v80];
                __asm { FCVT            H0, D0 }

                *(v81 + 2 * v80++) = LOWORD(_D0);
                v84 = (v84 + v59);
              }

              while (v49 > v80);
            }

            ++v74;
            v79 += v76;
          }

          while (v51 > v74);
        }

        free(v133);
        return v127;
      }

      else if ([multiArrayValue dataType] == 65600)
      {
        dataPointer2 = [multiArrayValue dataPointer];
        shape2 = [multiArrayValue shape];
        v92 = [shape2 count];
        v93 = [objc_msgSend(shape2 objectAtIndexedSubscript:{v92 - 2), "intValue"}];
        baseAddress2 = [output baseAddress];
        bytesPerRow3 = [output bytesPerRow];
        [output region];
        v97 = v96;
        v99 = v98;
        v101 = v100;
        v103 = v102;
        v104 = [objc_msgSend(objc_msgSend(multiArrayValue "strides")];
        v105 = [objc_msgSend(objc_msgSend(multiArrayValue "strides")];
        v106 = [objc_msgSend(objc_msgSend(multiArrayValue "strides")];
        [output region];
        v108 = v107;
        bytesPerRow4 = [output bytesPerRow];
        [output region];
        bzero([output baseAddress], bytesPerRow4 * (v108 - 1) + 2 * v110);
        if (v103 > 0.0)
        {
          v111 = 0;
          do
          {
            if (v101 > 0.0)
            {
              v112 = (dataPointer2 + 8 * v106 * v97 + 8 * v105 * ((v111 + v99) % v93) + 8 * v104 * ((v111 + v99) / v93));
              v113 = 1;
              v114 = baseAddress2;
              do
              {
                _D0 = *v112;
                __asm { FCVT            H0, D0 }

                *v114++ = _D0;
                v116 = v113++;
                v112 += v106;
              }

              while (v101 > v116);
            }

            ++v111;
            baseAddress2 += 2 * (bytesPerRow3 >> 1);
          }

          while (v103 > v111);
        }
      }

      else if ([multiArrayValue dataType] == 65568)
      {
        fillMultiArrayFloatToRh<float>(output, multiArrayValue);
      }

      else if ([multiArrayValue dataType] == 65552)
      {
        _ZL23fillMultiArrayFloatToRhIDF16_EvPU33objcproto22CIImageProcessorOutput11objc_objectP12MLMultiArray(output, multiArrayValue);
      }
    }
  }

  return v36;
}

+ (int)formatForInputAtIndex:(int)index arguments:(id)arguments
{
  v4 = [arguments objectForKeyedSubscript:@"inputCIFormat"];

  return [v4 intValue];
}

+ (int)outputFormatWithArguments:(id)arguments
{
  v3 = [arguments objectForKeyedSubscript:@"outputCIFormat"];

  return [v3 intValue];
}

+ (void)processWithInputs:(os_log_t)log arguments:output:error:.cold.1(os_log_t log)
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = 136446210;
  v2 = "+[CICoreMLProcessor processWithInputs:arguments:output:error:]";
  _os_log_error_impl(&dword_19CC36000, log, OS_LOG_TYPE_ERROR, "%{public}s prediction error", &v1, 0xCu);
}

@end