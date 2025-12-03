@interface VNCIContext
- (uint64_t)renderCIImage:(void *)image buffer:(int)buffer format:(void *)format error:;
@end

@implementation VNCIContext

- (uint64_t)renderCIImage:(void *)image buffer:(int)buffer format:(void *)format error:
{
  v9 = a2;
  if (!self)
  {
    goto LABEL_19;
  }

  if (buffer <= 1278226533)
  {
    if (buffer == 1111970369)
    {
      v10 = MEMORY[0x1E695F8A8];
      goto LABEL_14;
    }

    if (buffer != 1278226488)
    {
      goto LABEL_17;
    }

    v11 = MEMORY[0x1E695F8B8];
  }

  else
  {
    switch(buffer)
    {
      case 1278226534:
        v11 = MEMORY[0x1E695F8C8];
        break;
      case 1278226536:
        v11 = MEMORY[0x1E695F8D0];
        break;
      case 1380401729:
        v10 = MEMORY[0x1E695F910];
LABEL_14:
        v12 = *v10;
        v13 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
        goto LABEL_15;
      default:
LABEL_17:
        if (format)
        {
          [VNError errorForInternalErrorWithLocalizedDescription:@"unsupported pixel format"];
          *format = v15 = 0;
          goto LABEL_16;
        }

LABEL_19:
        v15 = 0;
        goto LABEL_16;
    }
  }

  v12 = *v11;
  v13 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F128]);
LABEL_15:
  v14 = v13;
  [*(self + 8) render:v9 toBitmap:*image rowBytes:image[3] bounds:v12 format:v13 colorSpace:{0.0, 0.0, image[2], image[1]}];
  CGColorSpaceRelease(v14);
  v15 = 1;
LABEL_16:

  return v15;
}

@end