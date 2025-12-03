@interface CILumaMap
- (id)outputImage;
- (void)dealloc;
@end

@implementation CILumaMap

- (void)dealloc
{
  tableImage = self->_tableImage;
  if (tableImage)
  {
  }

  v4.receiver = self;
  v4.super_class = CILumaMap;
  [(CIFilter *)&v4 dealloc];
}

- (id)outputImage
{
  v16[3] = *MEMORY[0x1E69E9840];
  result = self->inputImage;
  if (result)
  {
    if (!self->_tableImage)
    {
      v15[0] = @"CIImageColorSpace";
      v16[0] = [MEMORY[0x1E695DFB0] null];
      v16[1] = MEMORY[0x1E695E110];
      v15[1] = @"CIImageFlipped";
      v15[2] = @"CIImageClampToEdge";
      v16[2] = MEMORY[0x1E695E118];
      v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:3];
      v5 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:-[CILumaMap lumaTable](self length:"lumaTable") freeWhenDone:{1024, 0}];
      self->_tableImage = +[CIImage imageWithBitmapData:bytesPerRow:size:format:options:](CIImage, "imageWithBitmapData:bytesPerRow:size:format:options:", v5, [v5 length], 266, v4, 256.0, 1.0);
      result = self->inputImage;
    }

    imageByUnpremultiplyingAlpha = [result imageByUnpremultiplyingAlpha];
    v7 = [CIVector vectorWithX:0.99609375 Y:0.001953125];
    _kernel = [(CILumaMap *)self _kernel];
    [(CIImage *)self->inputImage extent];
    tableImage = self->_tableImage;
    v14[0] = imageByUnpremultiplyingAlpha;
    v14[1] = tableImage;
    v14[2] = v7;
    return [objc_msgSend(_kernel applyWithExtent:objc_msgSend(MEMORY[0x1E695DEC8] arguments:{"arrayWithObjects:count:", v14, 3), v10, v11, v12, v13), "imageByPremultiplyingAlpha"}];
  }

  return result;
}

@end