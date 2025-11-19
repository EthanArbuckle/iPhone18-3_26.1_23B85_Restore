@interface _MLCGPUArithmetic
+ (BOOL)compileWithDevice:(id)a3 deviceOps:(id)a4 sourceTensors:(id)a5 resultTensor:(id)a6;
@end

@implementation _MLCGPUArithmetic

+ (BOOL)compileWithDevice:(id)a3 deviceOps:(id)a4 sourceTensors:(id)a5 resultTensor:(id)a6
{
  v55 = a3;
  v53 = a4;
  v9 = a5;
  v10 = a6;
  v11 = [v9 objectAtIndexedSubscript:0];
  v12 = [v11 descriptor];
  v13 = [v12 shape];
  v14 = [v13 count];

  if ([v9 count] >= 2)
  {
    v15 = [v9 objectAtIndexedSubscript:1];
    v16 = [v15 descriptor];
    v17 = [v16 shape];
    v18 = [v17 count];

    if (v18 > v14)
    {
      v19 = [v9 objectAtIndexedSubscript:1];
      v20 = [v19 descriptor];
      v21 = [v20 shape];
      v14 = [v21 count];
    }
  }

  v22 = [v55 deviceList];
  v23 = [v22 count];

  if (v23)
  {
    v24 = 0;
    do
    {
      v25 = [v54 objectAtIndexedSubscript:v24];
      if ([v25 arithmeticOp] > 1)
      {
        [v25 setSourceOfForwardNeededForGradient:1];
      }

      else
      {
        v26 = [v25 neuronDescriptor];
        [v25 setSourceOfForwardNeededForGradient:v26 != 0];

        [v25 setResultOfForwardNeededForGradient:0];
      }

      if (![v25 arithmeticOp] || objc_msgSend(v25, "arithmeticOp") == 1)
      {
        v27 = [v9 objectAtIndexedSubscript:0];
        v28 = [v10 doesShapeMatchWithTensor:v27];

        if (v28)
        {
          [v25 setUseSourceGradientDeviceMemoryForResultGradientTensor:1];
        }
      }

      if (![v25 arithmeticOp])
      {
        v29 = [v9 objectAtIndexedSubscript:1];
        v30 = [v10 doesShapeMatchWithTensor:v29];

        if (v30)
        {
          [v25 setUseSourceGradientDeviceMemoryForSecondaryResultGradientTensor:1];
        }
      }

      if ([v9 count] >= 2)
      {
        v31 = [v9 objectAtIndexedSubscript:0];
        v32 = [v31 descriptor];
        v33 = [v32 newShapeWithCount:v14];
        [v25 setSource0Shape:v33];

        v34 = [v9 objectAtIndexedSubscript:1];
        v35 = [v34 descriptor];
        v36 = [v35 newShapeWithCount:v14];
        [v25 setSource1Shape:v36];

        if ([v9 count] == 3)
        {
          v37 = [v9 objectAtIndexedSubscript:2];
          v38 = [v37 descriptor];
          v39 = [v10 descriptor];
          v40 = [v39 shape];
          v41 = [v38 newShapeWithCount:{objc_msgSend(v40, "count")}];
          [v25 setSource2Shape:v41];
        }
      }

      v42 = [v9 objectAtIndexedSubscript:0];
      [v25 setConstantArithmeticSourcesFlags:{(objc_msgSend(v42, "computeFlags") >> 1) & 1}];

      if ([v9 count] == 2)
      {
        v43 = [v9 objectAtIndexedSubscript:1];
        [v25 setConstantArithmeticSourcesFlags:{objc_msgSend(v25, "constantArithmeticSourcesFlags") | objc_msgSend(v43, "computeFlags") & 2}];

        v44 = [v9 objectAtIndexedSubscript:0];
        v45 = [v9 objectAtIndexedSubscript:1];
        v46 = v45;
        if (v44 == v45)
        {
          v47 = [v9 objectAtIndexedSubscript:0];
          v48 = [v47 parentLayers];
          v49 = [v48 count];

          if (v49)
          {
            [v25 setConstantArithmeticSourcesFlags:{objc_msgSend(v25, "constantArithmeticSourcesFlags") | 4}];
          }
        }

        else
        {
        }
      }

      ++v24;
      v50 = [v55 deviceList];
      v51 = [v50 count];
    }

    while (v24 < v51);
  }

  return 1;
}

@end