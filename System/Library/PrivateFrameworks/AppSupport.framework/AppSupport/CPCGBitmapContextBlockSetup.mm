@interface CPCGBitmapContextBlockSetup
@end

@implementation CPCGBitmapContextBlockSetup

uint64_t ____CPCGBitmapContextBlockSetup_block_invoke(void *a1)
{
  v2 = *(*(a1[4] + 8) + 24);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(*(a1[5] + 8) + 24);
  if (v3)
  {
    free(v3);
  }

  v4 = *(*(a1[6] + 8) + 24);
  if (v4)
  {
    CGColorSpaceRelease(*v4);
    CGColorSpaceRelease(*(*(*(a1[6] + 8) + 24) + 8));
    free(*(*(a1[6] + 8) + 24));
  }

  return 1;
}

uint64_t ____CPCGBitmapContextBlockSetup_block_invoke_2(uint64_t a1, uint64_t a2, CGImageRef image, CFErrorRef *a4)
{
  if (*(a1 + 88) == 1 && (v8 = **(*(*(a1 + 32) + 8) + 24), CGImageGetColorSpace(image), (CGColorSpaceEqualToColorSpace() & 1) == 0))
  {
    if (a4)
    {
      v21 = @"CPBitmapErrorDomain";
      v22 = "Mismatched colorSpaces";
      v23 = a4;
      v24 = 7;
LABEL_15:
      __CPBitmapSetErrorIfNecessary(v23, v21, v24, v22);
    }
  }

  else
  {
    v9 = *(a1 + 56);
    if (!v9)
    {
      return 1;
    }

    v10 = 0;
    v11 = 0;
    v12 = *(a1 + 64);
    while (1)
    {
      v13 = v9 - v11;
      v14 = v13 >= v12 ? v12 : v13;
      v26.origin.y = v11;
      v15 = *(a1 + 72);
      v16 = (v12 - v14);
      v26.origin.x = 0.0;
      v26.size.width = v15;
      v26.size.height = v14;
      v17 = CGImageCreateWithImageInRect(image, v26);
      bzero(*(*(*(a1 + 40) + 8) + 24), *(a1 + 80));
      v27.origin.x = 0.0;
      v27.origin.y = v16;
      v27.size.width = v15;
      v27.size.height = v14;
      CGContextDrawImage(*(*(*(a1 + 48) + 8) + 24), v27, v17);
      CGImageRelease(v17);
      v18 = *(*(*(a1 + 32) + 8) + 24);
      v19 = *(v18 + 32) * v14;
      if (pwrite(*(a2 + 24), *(*(*(a1 + 40) + 8) + 24), v19, v10 + *(v18 + 40) * *(a2 + 88)) == -1)
      {
        break;
      }

      v10 += v19;
      v9 = *(a1 + 56);
      v12 = *(a1 + 64);
      v11 += v12;
      if (v11 >= v9)
      {
        return 1;
      }
    }

    if (a4)
    {
      v25 = *MEMORY[0x1E695E640];
      v24 = *__error();
      v22 = "Could not write bitmap to disk";
      v23 = a4;
      v21 = v25;
      goto LABEL_15;
    }
  }

  return 0;
}

@end