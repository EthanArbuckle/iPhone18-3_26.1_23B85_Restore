@interface _MLCGPUArithmetic
+ (BOOL)compileWithDevice:(id)device deviceOps:(id)ops sourceTensors:(id)tensors resultTensor:(id)tensor;
@end

@implementation _MLCGPUArithmetic

+ (BOOL)compileWithDevice:(id)device deviceOps:(id)ops sourceTensors:(id)tensors resultTensor:(id)tensor
{
  deviceCopy = device;
  opsCopy = ops;
  tensorsCopy = tensors;
  tensorCopy = tensor;
  v11 = [tensorsCopy objectAtIndexedSubscript:0];
  descriptor = [v11 descriptor];
  shape = [descriptor shape];
  v14 = [shape count];

  if ([tensorsCopy count] >= 2)
  {
    v15 = [tensorsCopy objectAtIndexedSubscript:1];
    descriptor2 = [v15 descriptor];
    shape2 = [descriptor2 shape];
    v18 = [shape2 count];

    if (v18 > v14)
    {
      v19 = [tensorsCopy objectAtIndexedSubscript:1];
      descriptor3 = [v19 descriptor];
      shape3 = [descriptor3 shape];
      v14 = [shape3 count];
    }
  }

  deviceList = [deviceCopy deviceList];
  v23 = [deviceList count];

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
        neuronDescriptor = [v25 neuronDescriptor];
        [v25 setSourceOfForwardNeededForGradient:neuronDescriptor != 0];

        [v25 setResultOfForwardNeededForGradient:0];
      }

      if (![v25 arithmeticOp] || objc_msgSend(v25, "arithmeticOp") == 1)
      {
        v27 = [tensorsCopy objectAtIndexedSubscript:0];
        v28 = [tensorCopy doesShapeMatchWithTensor:v27];

        if (v28)
        {
          [v25 setUseSourceGradientDeviceMemoryForResultGradientTensor:1];
        }
      }

      if (![v25 arithmeticOp])
      {
        v29 = [tensorsCopy objectAtIndexedSubscript:1];
        v30 = [tensorCopy doesShapeMatchWithTensor:v29];

        if (v30)
        {
          [v25 setUseSourceGradientDeviceMemoryForSecondaryResultGradientTensor:1];
        }
      }

      if ([tensorsCopy count] >= 2)
      {
        v31 = [tensorsCopy objectAtIndexedSubscript:0];
        descriptor4 = [v31 descriptor];
        v33 = [descriptor4 newShapeWithCount:v14];
        [v25 setSource0Shape:v33];

        v34 = [tensorsCopy objectAtIndexedSubscript:1];
        descriptor5 = [v34 descriptor];
        v36 = [descriptor5 newShapeWithCount:v14];
        [v25 setSource1Shape:v36];

        if ([tensorsCopy count] == 3)
        {
          v37 = [tensorsCopy objectAtIndexedSubscript:2];
          descriptor6 = [v37 descriptor];
          descriptor7 = [tensorCopy descriptor];
          shape4 = [descriptor7 shape];
          v41 = [descriptor6 newShapeWithCount:{objc_msgSend(shape4, "count")}];
          [v25 setSource2Shape:v41];
        }
      }

      v42 = [tensorsCopy objectAtIndexedSubscript:0];
      [v25 setConstantArithmeticSourcesFlags:{(objc_msgSend(v42, "computeFlags") >> 1) & 1}];

      if ([tensorsCopy count] == 2)
      {
        v43 = [tensorsCopy objectAtIndexedSubscript:1];
        [v25 setConstantArithmeticSourcesFlags:{objc_msgSend(v25, "constantArithmeticSourcesFlags") | objc_msgSend(v43, "computeFlags") & 2}];

        v44 = [tensorsCopy objectAtIndexedSubscript:0];
        v45 = [tensorsCopy objectAtIndexedSubscript:1];
        v46 = v45;
        if (v44 == v45)
        {
          v47 = [tensorsCopy objectAtIndexedSubscript:0];
          parentLayers = [v47 parentLayers];
          v49 = [parentLayers count];

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
      deviceList2 = [deviceCopy deviceList];
      v51 = [deviceList2 count];
    }

    while (v24 < v51);
  }

  return 1;
}

@end