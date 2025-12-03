@interface AVTView(AvatarUI)
+ (id)snapshotAVTView:()AvatarUI matchingViewSize:highQuality:logger:;
@end

@implementation AVTView(AvatarUI)

+ (id)snapshotAVTView:()AvatarUI matchingViewSize:highQuality:logger:
{
  v29[1] = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a6;
  window = [v10 window];

  if (window)
  {
    v13 = objc_autoreleasePoolPush();
    [v10 bounds];
    v15 = v14;
    v17 = v16;
    window2 = [v10 window];
    screen = [window2 screen];
    [screen scale];
    v21 = v20;

    if (a5)
    {
      *&v22 = v21;
      v23 = [v9 snapshotWithSize:v15 scaleFactor:{v17, v22}];
    }

    else
    {
      v28 = *MEMORY[0x1E698E270];
      v24 = [MEMORY[0x1E696AD98] numberWithInt:1];
      v29[0] = v24;
      v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:&v28 count:1];

      *&v26 = v21;
      v23 = [v9 snapshotWithSize:v25 scaleFactor:v15 options:{v17, v26}];
    }

    objc_autoreleasePoolPop(v13);
  }

  else
  {
    [v11 logErrorSnapshottingAVTView:@"Can't determine snapshot pixel size without a window"];
    v23 = 0;
  }

  return v23;
}

@end