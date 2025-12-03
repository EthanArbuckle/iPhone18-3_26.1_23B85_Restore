@interface CIPersonSegmentationKernel
+ (BOOL)processWithInputs:(id)inputs arguments:(id)arguments output:(id)output error:(id *)error;
+ (CGRect)roiForInput:(int)input arguments:(id)arguments outputRect:(CGRect)rect;
@end

@implementation CIPersonSegmentationKernel

+ (CGRect)roiForInput:(int)input arguments:(id)arguments outputRect:(CGRect)rect
{
  v5 = [arguments objectForKeyedSubscript:{@"rect", rect.origin.x, rect.origin.y, rect.size.width, rect.size.height}];

  [v5 CGRectValue];
  result.size.height = v9;
  result.size.width = v8;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

+ (BOOL)processWithInputs:(id)inputs arguments:(id)arguments output:(id)output error:(id *)error
{
  v10 = objc_autoreleasePoolPush();
  v11 = [objc_msgSend(inputs objectAtIndexedSubscript:{0), "pixelBuffer"}];
  if (!v11)
  {
    v19 = @"CIPersonSegmentationFilter";
    v20 = &off_4578;
LABEL_26:
    v21 = 1;
LABEL_27:
    v35 = [NSError errorWithDomain:v19 code:v21 userInfo:v20];
    v36 = v35;
    objc_autoreleasePoolPop(v10);
    v37 = v35;
    v34 = 0;
    if (error)
    {
      *error = v35;
    }

    return v34;
  }

  v12 = v11;
  v13 = objc_alloc_init(VNGeneratePersonSegmentationRequest);
  [v13 setQualityLevel:{objc_msgSend(objc_msgSend(arguments, "objectForKeyedSubscript:", @"q", "unsignedIntValue")}];
  v39 = 0;
  v44 = v13;
  if (([objc_msgSend([VNImageRequestHandler alloc] initWithCVPixelBuffer:v12 options:{&__NSDictionary0__struct), "performRequests:error:", +[NSArray arrayWithObjects:count:](NSArray, "arrayWithObjects:count:", &v44, 1), &v39}] & 1) == 0)
  {
    if (v39)
    {
      v42[0] = @"CINonLocalizedDescriptionKey";
      v42[1] = NSUnderlyingErrorKey;
      v43[0] = @"Could not perform the Vision request";
      v43[1] = v39;
      v20 = [NSDictionary dictionaryWithObjects:v43 forKeys:v42 count:2];
      v19 = @"CIPersonSegmentationFilter";
    }

    else
    {
      v19 = @"CIPersonSegmentationFilter";
      v20 = &off_45A0;
    }

    v21 = 2;
    goto LABEL_27;
  }

  v14 = [objc_msgSend(objc_msgSend(v13 "results")];
  if (!v14)
  {
    v18 = @"Couldn't get the output pixelBuffer from Vision request result";
    goto LABEL_25;
  }

  v15 = v14;
  Width = CVPixelBufferGetWidth(v14);
  [output region];
  if (v17 != Width)
  {
    v18 = @"The output pixelBuffer from Vision is not the expected width.";
LABEL_25:
    v40 = @"CINonLocalizedDescriptionKey";
    v41 = v18;
    v20 = [NSDictionary dictionaryWithObjects:&v41 forKeys:&v40 count:1];
    v19 = @"CIPersonSegmentationKernel";
    goto LABEL_26;
  }

  Height = CVPixelBufferGetHeight(v15);
  [output region];
  if (v23 != Height)
  {
    v18 = @"The output pixelBuffer from Vision is not the expected height.";
    goto LABEL_25;
  }

  if (CVPixelBufferGetPixelFormatType(v15) != 1278226488)
  {
    v18 = @"The output pixelBuffer from Vision is not the expected format.";
    goto LABEL_25;
  }

  CVPixelBufferLockBaseAddress(v15, 1uLL);
  baseAddress = [output baseAddress];
  [output region];
  v25 = CGRectGetHeight(v45);
  bytesPerRow = [output bytesPerRow];
  v27 = CVPixelBufferGetHeight(v15);
  BytesPerRow = CVPixelBufferGetBytesPerRow(v15);
  BaseAddress = CVPixelBufferGetBaseAddress(v15);
  if (v27 < v25)
  {
    v25 = v27;
  }

  if (BytesPerRow >= bytesPerRow)
  {
    v30 = bytesPerRow;
  }

  else
  {
    v30 = BytesPerRow;
  }

  if (v25)
  {
    v31 = BaseAddress;
    v32 = 1;
    do
    {
      memmove(baseAddress, v31, v30);
      baseAddress = &bytesPerRow[baseAddress];
      v31 += BytesPerRow;
    }

    while (v25 > v32++);
  }

  v34 = 1;
  CVPixelBufferUnlockBaseAddress(v15, 1uLL);
  objc_autoreleasePoolPop(v10);
  return v34;
}

@end