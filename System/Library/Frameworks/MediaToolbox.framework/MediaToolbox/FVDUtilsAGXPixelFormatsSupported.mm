@interface FVDUtilsAGXPixelFormatsSupported
@end

@implementation FVDUtilsAGXPixelFormatsSupported

const __CFDictionary *__FVDUtilsAGXPixelFormatsSupported_block_invoke()
{
  result = CVPixelFormatDescriptionGetDescriptionWithPixelFormatType();
  if (result)
  {
    result = CFDictionaryGetValue(result, *MEMORY[0x1E69662D8]);
    if (result)
    {
      v1 = result;
      v2 = CFGetTypeID(result);
      result = CFArrayGetTypeID();
      if (v2 == result)
      {
        CFArrayGetValueAtIndex(v1, 0);
        return FigCFDictionaryGetInt32IfPresent();
      }
    }
  }

  return result;
}

@end