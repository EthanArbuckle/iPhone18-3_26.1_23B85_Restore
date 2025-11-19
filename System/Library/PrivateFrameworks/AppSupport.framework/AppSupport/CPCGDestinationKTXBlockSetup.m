@interface CPCGDestinationKTXBlockSetup
@end

@implementation CPCGDestinationKTXBlockSetup

uint64_t ____CPCGDestinationKTXBlockSetup_block_invoke(void *a1, int a2, CFErrorRef *a3)
{
  CGColorSpaceRelease(*(*(a1[4] + 8) + 24));
  v6 = *(*(a1[5] + 8) + 24);
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = *(*(a1[6] + 8) + 24);
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = *(*(a1[7] + 8) + 24);
  if (!v8)
  {
    v14 = 1;
    goto LABEL_16;
  }

  if (a2)
  {
    v9 = *(*(a1[8] + 8) + 24);
    if (v9)
    {
      v10 = *(v9 + 8);
      if (v10)
      {
        v11 = *MEMORY[0x1E695E640];
        v12 = "Could not write ATX/KTX to disk";
        v13 = a3;
LABEL_14:
        __CPBitmapSetErrorIfNecessary(v13, v11, v10, v12);
        v14 = 0;
        goto LABEL_15;
      }
    }

    if (!CGImageDestinationFinalize(v8))
    {
      v11 = *MEMORY[0x1E695E640];
      v12 = "ImageIO failed to write the image";
      v13 = a3;
      v10 = 5;
      goto LABEL_14;
    }
  }

  v14 = 1;
LABEL_15:
  CFRelease(*(*(a1[7] + 8) + 24));
LABEL_16:
  CGDataConsumerRelease(*(*(a1[9] + 8) + 24));
  v15 = *(*(a1[8] + 8) + 24);
  if (v15)
  {
    free(v15);
  }

  return v14;
}

uint64_t ____CPCGDestinationKTXBlockSetup_block_invoke_2(uint64_t a1, int a2, CGImageRef image, CFErrorRef *a4)
{
  if (*(a1 + 56) == 1 && (v7 = *(*(*(a1 + 32) + 8) + 24), CGImageGetColorSpace(image), (CGColorSpaceEqualToColorSpace() & 1) == 0))
  {
    if (a4)
    {
      __CPBitmapSetErrorIfNecessary(a4, @"CPBitmapErrorDomain", 7, "Mismatched colorSpaces");
    }

    return 0;
  }

  else
  {
    CGImageDestinationAddImage(*(*(*(a1 + 40) + 8) + 24), image, *(*(*(a1 + 48) + 8) + 24));
    return 1;
  }
}

@end