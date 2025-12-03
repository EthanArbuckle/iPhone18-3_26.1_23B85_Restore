@interface UIImage(MPUtilities)
- (id)imageWithEtchedBorderOfColor:()MPUtilities radius:;
- (id)imageWithRoundedCornersOfRadius:()MPUtilities;
- (id)imageWithShadow:()MPUtilities;
- (uint64_t)initWithContentsOfExactFilePath:()MPUtilities;
@end

@implementation UIImage(MPUtilities)

- (id)imageWithRoundedCornersOfRadius:()MPUtilities
{
  v4 = objc_alloc(MEMORY[0x1E69DCA78]);
  [self size];
  v5 = [v4 initWithSize:?];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __56__UIImage_MPUtilities__imageWithRoundedCornersOfRadius___block_invoke;
  v8[3] = &unk_1E7677E58;
  v8[4] = self;
  *&v8[5] = a2;
  v6 = [v5 imageWithActions:v8];

  return v6;
}

- (id)imageWithShadow:()MPUtilities
{
  v4 = a3;
  selfCopy = self;
  [v4 shadowOffset];
  v7 = v6;
  v9 = v8;
  v10 = -v8;
  [v4 shadowBlurRadius];
  v12 = v11;
  [selfCopy scale];
  v14 = v13;
  [selfCopy size];
  v17 = v16 + v12 * 2.0;
  v18 = fabs(v9);
  if (v9 <= 0.0)
  {
    v18 = 0.0;
  }

  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __40__UIImage_MPUtilities__imageWithShadow___block_invoke;
  v24[3] = &unk_1E7677E30;
  v27 = v12;
  v28 = v14;
  v29 = v7;
  v30 = v10;
  v19 = v15 + v18 + v12 * 2.0;
  v25 = v4;
  v26 = selfCopy;
  v20 = selfCopy;
  v21 = v4;
  v22 = MPCreateImageWithDrawing(v24, v17, v19, v14);

  return v22;
}

- (id)imageWithEtchedBorderOfColor:()MPUtilities radius:
{
  v6 = a4;
  [self size];
  v9 = v8 + a2 * 2.0;
  v10 = a2 <= 0.0;
  if (a2 <= 0.0)
  {
    v11 = v7;
  }

  else
  {
    v11 = v7 + a2 * 2.0;
  }

  if (v10)
  {
    v12 = v8;
  }

  else
  {
    v12 = v9;
  }

  [self scale];
  v14 = v13;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __60__UIImage_MPUtilities__imageWithEtchedBorderOfColor_radius___block_invoke;
  v18[3] = &unk_1E7677E08;
  v18[4] = self;
  v19 = v6;
  v15 = v6;
  v16 = MPCreateImageWithDrawing(v18, v11, v12, v14);

  return v16;
}

- (uint64_t)initWithContentsOfExactFilePath:()MPUtilities
{
  v19[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (_os_feature_enabled_impl())
  {
    v5 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:v4 options:1 error:0];
    selfCopy = [MEMORY[0x1E69DCAB8] imageWithData:v5];
  }

  else
  {
    if (initWithContentsOfExactFilePath__onceToken != -1)
    {
      dispatch_once(&initWithContentsOfExactFilePath__onceToken, &__block_literal_global_11982);
    }

    v7 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:v4 options:1 error:0];
    v8 = v7;
    if (v7)
    {
      if ((initWithContentsOfExactFilePath__deviceSupportsASTC & 1) == 0 || (v9 = [(__CFData *)v7 bytes], [(__CFData *)v8 length]>= 4) && (*v9 == 55551 ? (v10 = *(v9 + 2) == 255) : (v10 = 0), v10))
      {
        v16 = [self _initWithData:v8 immediateLoadWithMaxSize:0 scale:0 renderingIntent:*MEMORY[0x1E695F060] cache:{*(MEMORY[0x1E695F060] + 8), 1.0}];
      }

      else
      {
        v11 = *MEMORY[0x1E696E0E8];
        v18[0] = *MEMORY[0x1E696E0A8];
        v18[1] = v11;
        v19[0] = MEMORY[0x1E695E110];
        v19[1] = MEMORY[0x1E695E118];
        v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:2];
        v13 = CGImageSourceCreateWithData(v8, v12);
        if (v13)
        {
          v14 = v13;
          if (CGImageSourceGetCount(v13))
          {
            ImageAtIndex = CGImageSourceCreateImageAtIndex(v14, 0, v12);
          }

          else
          {
            ImageAtIndex = 0;
          }

          CFRelease(v14);
        }

        else
        {
          ImageAtIndex = 0;
        }

        v16 = [self initWithCGImage:ImageAtIndex];
        CGImageRelease(ImageAtIndex);
      }
    }

    else
    {

      v16 = 0;
    }

    self = v16;

    selfCopy = self;
  }

  return selfCopy;
}

@end