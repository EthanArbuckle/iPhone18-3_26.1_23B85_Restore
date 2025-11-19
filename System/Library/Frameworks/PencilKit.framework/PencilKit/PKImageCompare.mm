@interface PKImageCompare
+ ($1D51C095076032EFA7EEE424D0344599)compareImage:(SEL)a3 toMasterImage:(CGImage *)a4 filename:(CGImage *)a5 differenceImageOutputPath:(id)a6 diffWhite:(id)a7 stdDevThreshold:(BOOL)a8;
+ (BOOL)saveImage:(CGImage *)a3 toPath:(id)a4;
+ (id)filterImage:(CGImage *)a3;
@end

@implementation PKImageCompare

+ (id)filterImage:(CGImage *)a3
{
  v3 = [objc_alloc(MEMORY[0x1E695F658]) initWithCGImage:a3];
  v4 = [v3 imageByApplyingGaussianBlurWithSigma:2.0];

  return v4;
}

+ ($1D51C095076032EFA7EEE424D0344599)compareImage:(SEL)a3 toMasterImage:(CGImage *)a4 filename:(CGImage *)a5 differenceImageOutputPath:(id)a6 diffWhite:(id)a7 stdDevThreshold:(BOOL)a8
{
  v10 = a8;
  v40 = *MEMORY[0x1E69E9840];
  v16 = a6;
  v17 = a7;
  v18 = v16;
  if (!a5)
  {
    NSLog(&cfstr_NoValidMasterI.isa);
    if (a4)
    {
      goto LABEL_10;
    }

LABEL_9:
    NSLog(&cfstr_NoValidTestIma.isa);
    goto LABEL_10;
  }

  if (!a4)
  {
    goto LABEL_9;
  }

  v33 = 0;
  Width = CGImageGetWidth(a5);
  Height = CGImageGetHeight(a5);
  v21 = CGImageGetWidth(a4);
  v22 = CGImageGetHeight(a4);
  if (Width == v21 && Height == v22)
  {
    v28 = createDiffImageIfImageComparisonFails(a4, a5, v10, &v39, &v38, &v36, &v34, &v33, a9);
    v29 = v28;
    if (v33)
    {
      if (v33 == 2)
      {
        NSLog(&cfstr_EncounteredErr_0.isa);
      }

      else if (v33 == 1)
      {
        NSLog(&cfstr_EncounteredErr.isa);
      }

      else
      {
        NSLog(&cfstr_EncounteredErr_1.isa, v33);
      }
    }

    else
    {
      if (!v28)
      {
        NSLog(&cfstr_ImagesWereIden.isa);
        v26 = 0;
        goto LABEL_23;
      }

      NSLog(&cfstr_MismatchExceed.isa, 0, *&v36.f64[0], v34.i64[0], *&v36.f64[1], v34.i64[1], v37, v35, *(&v37 + 1), *(&v35 + 1), v39.u32[0], v38.u32[0], v39.u32[1], v38.u32[1], v39.u32[2], v38.u32[2], v39.u32[3], v38.u32[3]);
      if (v17)
      {
        if ([a2 saveImage:v29 toPath:v17])
        {
          NSLog(&cfstr_WroteDiffImage.isa, v17);
        }

        else
        {
          NSLog(&cfstr_ErrorWritingDi.isa, v17);
        }
      }
    }

    v26 = 1;
LABEL_23:
    v30 = v38;
    *retstr->var0 = v39;
    *retstr->var1 = v30;
    v31 = v37;
    *retstr->var2 = v36;
    *&retstr->var2[2] = v31;
    v32 = v35;
    *retstr->var3 = v34;
    *&retstr->var3[2] = v32;
    retstr->var4 = v29;
    *&retstr->var5 = 0;
    goto LABEL_11;
  }

  v24 = [PKImageCompare stringFromSize:v21];
  v25 = [PKImageCompare stringFromSize:Width, Height];
  NSLog(&cfstr_ImageSizeMisma.isa, 0, v24, v25);

LABEL_10:
  *&retstr->var4 = 0u;
  *retstr->var0 = 0u;
  *retstr->var1 = 0u;
  *retstr->var2 = xmmword_1C801F678;
  *&retstr->var2[2] = unk_1C801F688;
  *retstr->var3 = xmmword_1C801F678;
  *&retstr->var3[2] = unk_1C801F688;
  v26 = 1;
LABEL_11:
  retstr->var5 = v26;

  return result;
}

+ (BOOL)saveImage:(CGImage *)a3 toPath:(id)a4
{
  v21[2] = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E695DFF8] fileURLWithPath:a4];
  v6 = [*MEMORY[0x1E6982F28] identifier];
  v7 = CGImageDestinationCreateWithURL(v5, v6, 1uLL, 0);

  if (!v7)
  {
    return 0;
  }

  Mutable = CGImageMetadataCreateMutable();
  v9 = *MEMORY[0x1E696DF28];
  v10 = *MEMORY[0x1E696DF58];
  v11 = [MEMORY[0x1E696AD98] numberWithInt:1];
  CGImageMetadataSetValueMatchingImageProperty(Mutable, v9, v10, v11);

  v20[0] = *MEMORY[0x1E696DE78];
  v12 = [MEMORY[0x1E696AD98] numberWithInt:1];
  v20[1] = v9;
  v21[0] = v12;
  v18 = v20[0];
  v13 = [MEMORY[0x1E696AD98] numberWithInt:1];
  v19 = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
  v21[1] = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:2];

  if (Mutable)
  {
    CGImageDestinationAddImageAndMetadata(v7, a3, Mutable, v15);
    CFRelease(Mutable);
    v16 = CGImageDestinationFinalize(v7);
    CFRelease(v7);
  }

  else
  {
    NSLog(&cfstr_ErrorInvalidMu.isa);
    v16 = 0;
  }

  return v16;
}

@end