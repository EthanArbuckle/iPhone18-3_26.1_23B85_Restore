@interface CIImageWriter
+ (id)customAttributes;
- (id)outputImage;
@end

@implementation CIImageWriter

+ (id)customAttributes
{
  v9[2] = *MEMORY[0x1E69E9840];
  v8[0] = @"inputFilename";
  v6 = @"CIAttributeDefault";
  v7 = &stru_1F1040378;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v7 forKeys:&v6 count:1];
  v8[1] = @"inputShouldDumpInputValues";
  v9[0] = v2;
  v4[0] = @"CIAttributeType";
  v4[1] = @"CIAttributeDefault";
  v5[0] = @"CIAttributeTypeBoolean";
  v5[1] = &unk_1F1081E18;
  v4[2] = @"CIAttributeIdentity";
  v5[2] = &unk_1F1081E18;
  v9[1] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:v4 count:3];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:2];
}

- (id)outputImage
{
  v19[1] = *MEMORY[0x1E69E9840];
  inputImage = self->inputImage;
  if (self->inputFilename)
  {
    if (inputImage)
    {
      if ([MEMORY[0x1E695DFF8] fileURLWithPath:?])
      {
        v16 = 0;
        [(CIImage *)self->inputImage extent];
        v5 = v4;
        v7 = v6;
        v9 = v8;
        v11 = v10;
        v19[0] = self->inputImage;
        v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
        inputFilename = self->inputFilename;
        v17 = @"filename";
        v18 = inputFilename;
        inputImage = +[CIImageProcessorKernel applyWithExtent:inputs:arguments:error:](CIFileSaverProcessor, "applyWithExtent:inputs:arguments:error:", v12, [MEMORY[0x1E695DF20] dictionaryWithObjects:&v18 forKeys:&v17 count:1], &v16, v5, v7, v9, v11);
        if (self->inputOriginalFilter)
        {
          if ([(NSNumber *)[(CIImageWriter *)self inputShouldDumpInputValues] BOOLValue])
          {
            v14 = [(CIFilter *)self->inputOriginalFilter description];
            [v14 writeToURL:objc_msgSend(MEMORY[0x1E695DFF8] atomically:"fileURLWithPath:" encoding:-[NSString stringByAppendingString:](self->inputFilename error:{"stringByAppendingString:", @".txt", 1, 1, &v16}];
          }
        }
      }
    }
  }

  return inputImage;
}

@end