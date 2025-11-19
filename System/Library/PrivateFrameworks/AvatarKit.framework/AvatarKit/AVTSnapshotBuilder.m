@interface AVTSnapshotBuilder
+ (CGImage)copyRescaledCGImage:(CGImage *)a3 by:(float)a4;
+ (id)sharedInstance;
- (AVTSnapshotBuilder)init;
- (double)deprecated_avtui_fieldOfViewForFramingMode:(id)a3;
- (id)_imageWithSize:(CGSize)a3 scale:(double)a4 options:(id)a5;
- (id)animatedImageWithSize:(CGSize)a3 scale:(double)a4 options:(id)a5;
- (id)imageWithSize:(CGSize)a3 scale:(double)a4 options:(id)a5;
- (void)_applyOptions:(id)a3;
- (void)dealloc;
- (void)deprecated_avtui_applyModificationsForFramingMode:(id)a3 projectionDirectionModification:(int64_t)a4 fieldOfViewModification:(double)a5 lensShiftModification:;
- (void)setAvatar:(id)a3;
- (void)setupAvatarWithOptions:(id)a3 useACopy:(BOOL)a4;
@end

@implementation AVTSnapshotBuilder

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[AVTSnapshotBuilder sharedInstance];
  }

  v3 = sharedInstance_snapshotter;

  return v3;
}

uint64_t __36__AVTSnapshotBuilder_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(AVTSnapshotBuilder);
  v1 = sharedInstance_snapshotter;
  sharedInstance_snapshotter = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (void)setAvatar:(id)a3
{
  v5 = a3;
  p_avatar = &self->_avatar;
  if (self->_avatar != v5)
  {
    v8 = v5;
    objc_storeStrong(p_avatar, a3);
    snapshotedAvatar = self->_snapshotedAvatar;
    self->_snapshotedAvatar = 0;

    v5 = v8;
  }

  MEMORY[0x1EEE66BB8](p_avatar, v5);
}

- (AVTSnapshotBuilder)init
{
  v12[1] = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = AVTSnapshotBuilder;
  v2 = [(AVTSnapshotBuilder *)&v10 init];
  if (v2)
  {
    v11 = @"AVTRendererOptionInitiallyConfigureForARMode";
    v12[0] = MEMORY[0x1E695E110];
    v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    v4 = [(VFXRenderer *)AVTRenderer rendererWithDevice:0 options:v3];
    renderer = v2->_renderer;
    v2->_renderer = v4;

    [(AVTRenderer *)v2->_renderer setFramingMode:@"cameraDefault"];
    v6 = objc_alloc_init(AVTSnapshotHelper);
    snapshotHelper = v2->_snapshotHelper;
    v2->_snapshotHelper = v6;
  }

  v8 = *MEMORY[0x1E69E9840];
  return v2;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = AVTSnapshotBuilder;
  [(AVTSnapshotBuilder *)&v2 dealloc];
}

- (void)_applyOptions:(id)a3
{
  v4 = [a3 objectForKeyedSubscript:@"AVTSnapshotFramingMode"];
  v5 = v4;
  v6 = @"cameraHead";
  if (v4)
  {
    v6 = v4;
  }

  v7 = v6;

  [(AVTRenderer *)self->_renderer setFramingMode:v7];
}

- (void)setupAvatarWithOptions:(id)a3 useACopy:(BOOL)a4
{
  v60 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (!self->_snapshotedAvatar)
  {
    avatar = self->_avatar;
    if (a4)
    {
      v8 = [(AVTAvatar *)avatar copy];
    }

    else
    {
      v8 = avatar;
    }

    snapshotedAvatar = self->_snapshotedAvatar;
    self->_snapshotedAvatar = v8;

    [(AVTAvatar *)self->_snapshotedAvatar setOptimizeForSnapshot:1];
    [(AVTRenderer *)self->_renderer setAvatar:self->_snapshotedAvatar];
    v10 = self->_snapshotedAvatar;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = self->_avatar;
    v12 = self->_snapshotedAvatar;
    if (v12 != v11)
    {
      for (i = 0; i != 40; ++i)
      {
        v14 = [(AVTAvatar *)v11 presetForCategory:i];
        [(AVTAvatar *)v12 setPreset:v14 forCategory:i animated:0];
        for (j = 0; j != 3; ++j)
        {
          v16 = [(AVTAvatar *)v11 colorPresetForCategory:i colorIndex:j];
          [(AVTAvatar *)v12 setColorPreset:v16 forCategory:i colorIndex:j];
        }
      }

      if (a4)
      {
        [(AVTAvatar *)v12 setShowsBody:[(AVTAvatar *)v11 showsBody]];
        v17 = [(AVTAvatar *)v11 bodyPose];
        [(AVTAvatar *)v12 setBodyPose:v17];
      }
    }

    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v18 = [v6 objectForKeyedSubscript:@"AVTSnapshotMemojiPresetSubstitutions"];
    v19 = [v18 countByEnumeratingWithState:&v52 objects:v59 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v53;
      do
      {
        v22 = 0;
        do
        {
          if (*v53 != v21)
          {
            objc_enumerationMutation(v18);
          }

          -[AVTAvatar setPreset:forCategory:animated:](v12, "setPreset:forCategory:animated:", *(*(&v52 + 1) + 8 * v22), [*(*(&v52 + 1) + 8 * v22) category], 0);
          ++v22;
        }

        while (v20 != v22);
        v20 = [v18 countByEnumeratingWithState:&v52 objects:v59 count:16];
      }

      while (v20);
    }

    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v23 = [v6 objectForKeyedSubscript:@"AVTSnapshotMemojiColorPresetSubstitutions"];
    v24 = [v23 countByEnumeratingWithState:&v48 objects:v58 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v49;
      do
      {
        v27 = 0;
        do
        {
          if (*v49 != v26)
          {
            objc_enumerationMutation(v23);
          }

          -[AVTAvatar setColorPreset:forCategory:colorIndex:](v12, "setColorPreset:forCategory:colorIndex:", *(*(&v48 + 1) + 8 * v27), [*(*(&v48 + 1) + 8 * v27) category], 0);
          ++v27;
        }

        while (v25 != v27);
        v25 = [v23 countByEnumeratingWithState:&v48 objects:v58 count:16];
      }

      while (v25);
    }

    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v28 = [v6 objectForKeyedSubscript:@"AVTSnapshotMemojiSecondaryColorPresetSubstitutions"];
    v29 = [v28 countByEnumeratingWithState:&v44 objects:v57 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v45;
      do
      {
        v32 = 0;
        do
        {
          if (*v45 != v31)
          {
            objc_enumerationMutation(v28);
          }

          -[AVTAvatar setColorPreset:forCategory:colorIndex:](v12, "setColorPreset:forCategory:colorIndex:", *(*(&v44 + 1) + 8 * v32), [*(*(&v44 + 1) + 8 * v32) category], 1);
          ++v32;
        }

        while (v30 != v32);
        v30 = [v28 countByEnumeratingWithState:&v44 objects:v57 count:16];
      }

      while (v30);
    }

    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v33 = [v6 objectForKeyedSubscript:{@"AVTSnapshotMemojiThirdColorPresetSubstitutions", 0}];
    v34 = [v33 countByEnumeratingWithState:&v40 objects:v56 count:16];
    if (v34)
    {
      v35 = v34;
      v36 = *v41;
      do
      {
        v37 = 0;
        do
        {
          if (*v41 != v36)
          {
            objc_enumerationMutation(v33);
          }

          -[AVTAvatar setColorPreset:forCategory:colorIndex:](v12, "setColorPreset:forCategory:colorIndex:", *(*(&v40 + 1) + 8 * v37), [*(*(&v40 + 1) + 8 * v37) category], 2);
          ++v37;
        }

        while (v35 != v37);
        v35 = [v33 countByEnumeratingWithState:&v40 objects:v56 count:16];
      }

      while (v35);
    }
  }

  [(AVTAvatar *)self->_snapshotedAvatar updateWithOptions:1];
  v38 = [v6 objectForKeyedSubscript:@"AVTSnapshotPose"];
  if (v38)
  {
    [(AVTAvatar *)self->_snapshotedAvatar setPose:v38];
  }

  v39 = *MEMORY[0x1E69E9840];
}

+ (CGImage)copyRescaledCGImage:(CGImage *)a3 by:(float)a4
{
  v6 = (CGImageGetWidth(a3) * a4);
  v7 = (CGImageGetHeight(a3) * a4);
  BitsPerComponent = CGImageGetBitsPerComponent(a3);
  v9 = (CGImageGetBitsPerPixel(a3) >> 3) * v6;
  ColorSpace = CGImageGetColorSpace(a3);
  BitmapInfo = CGImageGetBitmapInfo(a3);
  result = CGBitmapContextCreate(0, v6, v7, BitsPerComponent, v9, ColorSpace, BitmapInfo);
  if (result)
  {
    v13 = result;
    v15.size.width = v6;
    v15.size.height = v7;
    v15.origin.x = 0.0;
    v15.origin.y = 0.0;
    CGContextDrawImage(result, v15, a3);
    Image = CGBitmapContextCreateImage(v13);
    CGContextRelease(v13);
    return Image;
  }

  return result;
}

- (id)imageWithSize:(CGSize)a3 scale:(double)a4 options:(id)a5
{
  height = a3.height;
  width = a3.width;
  v9 = a5;
  v10 = [v9 valueForKey:@"AVTSnapshotNoCopy"];
  v11 = [v10 BOOLValue];

  v12 = [(AVTSnapshotBuilder *)self _imageWithSize:v9 scale:v11 ^ 1u options:width useACopy:height, a4];

  return v12;
}

- (id)_imageWithSize:(CGSize)a3 scale:(double)a4 options:(id)a5
{
  height = a3.height;
  width = a3.width;
  v9 = a5;
  v10 = [v9 valueForKey:@"AVTSnapshotNoCopy"];
  v11 = [v10 BOOLValue];

  v12 = [(AVTSnapshotBuilder *)self _imageWithSize:v9 scale:v11 ^ 1u options:width useACopy:height, a4];

  return v12;
}

- (id)animatedImageWithSize:(CGSize)a3 scale:(double)a4 options:(id)a5
{
  height = a3.height;
  width = a3.width;
  v8 = a5;
  context = objc_autoreleasePoolPush();
  [(AVTSnapshotBuilder *)self setupAvatarWithOptions:v8 useACopy:1];
  v9 = [v8 objectForKeyedSubscript:@"AVTSnapshotPoseAnimation"];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 addToAvatar:self->_snapshotedAvatar useStaticPhysicsState:0];
    [v10 duration];
    v13 = v12;
  }

  else
  {
    v13 = 2.0;
  }

  v14 = [v8 objectForKeyedSubscript:@"AVTSnapshotAntialiasedKey"];
  v52 = v10;
  if (v14)
  {
    v15 = [v8 objectForKeyedSubscript:@"AVTSnapshotAntialiasedKey"];
    if ([v15 BOOLValue])
    {
      v16 = 2;
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 2;
  }

  [(AVTRenderer *)self->_renderer setJitteringEnabled:0];
  v17 = [v8 objectForKeyedSubscript:@"AVTSnapshotUpscaleKey"];
  [v17 floatValue];
  v19 = v18;

  if (v19 == 0.0)
  {
    v20 = 1.5;
  }

  else
  {
    v20 = v19;
  }

  v21 = [v8 objectForKeyedSubscript:@"AVTSnapshotRateKey"];
  [v21 floatValue];
  v23 = v22;

  if (v23 == 0.0)
  {
    v24 = 60.0;
  }

  else
  {
    v24 = v23;
  }

  v25 = v13 * v24;
  v26 = vcvtps_s32_f32(v25);
  v54 = v8;
  [(AVTSnapshotBuilder *)self _applyOptions:v8, *&v13];
  [MEMORY[0x1E69DF378] flush];
  v55 = [MEMORY[0x1E695DF70] array];
  Current = CFAbsoluteTimeGetCurrent();
  if (v26 >= 1)
  {
    v28 = Current;
    v29 = 0;
    v30 = v20 * a4;
    v31 = (width * v30);
    v32 = (height * v30);
    do
    {
      v34 = objc_autoreleasePoolPush();
      v35 = [(AVTRenderer *)self->_renderer world];
      v36 = [v35 clock];
      [v36 setTime:(v29 / v24)];

      renderer = self->_renderer;
      v38 = [(AVTRenderer *)renderer world];
      v39 = [v38 clock];
      [v39 time];
      [(AVTRenderer *)renderer updateAtTime:v28 + v40];

      v33 = a4;
      v41 = [(AVTSnapshotHelper *)self->_snapshotHelper newImageWithRenderer:v16 antialiasingMode:v31 pixelWidth:v32 pixelHeight:0 imagePointSize:width contentScaleFactor:height error:v33];
      v42 = v41;
      if (v20 != 1.0)
      {
        v43 = [v41 CGImage];
        v44 = objc_opt_class();
        *&v45 = 1.0 / v20;
        v46 = [v44 copyRescaledCGImage:v43 by:v45];
        v47 = [MEMORY[0x1E69DCAB8] imageWithCGImage:v46];

        CGImageRelease(v46);
        v42 = v47;
      }

      if (a4 != 1.0)
      {
        v48 = [MEMORY[0x1E69DCAB8] imageWithCGImage:objc_msgSend(v42 scale:"CGImage") orientation:{0, a4}];

        v42 = v48;
      }

      if (v42)
      {
        [v55 addObject:v42];
      }

      objc_autoreleasePoolPop(v34);
      ++v29;
    }

    while (v26 != v29);
  }

  v49 = [MEMORY[0x1E69DCAB8] animatedImageWithImages:v55 duration:v51];

  objc_autoreleasePoolPop(context);

  return v49;
}

- (double)deprecated_avtui_fieldOfViewForFramingMode:(id)a3
{
  v4 = a3;
  v5 = [(AVTSnapshotBuilder *)self renderer];
  v6 = [v5 world];
  v7 = [v6 rootNode];
  v8 = [v7 childNodeWithName:v4 recursively:1];

  v9 = [v8 camera];
  [v9 fieldOfView];
  v11 = v10;

  return v11;
}

- (void)deprecated_avtui_applyModificationsForFramingMode:(id)a3 projectionDirectionModification:(int64_t)a4 fieldOfViewModification:(double)a5 lensShiftModification:
{
  v6 = v5;
  v10 = a3;
  v18 = [(AVTSnapshotBuilder *)self renderer];
  v11 = [v18 world];
  v12 = [v11 rootNode];
  v13 = [v12 childNodeWithName:v10 recursively:1];

  v14 = [v13 camera];
  *&a5 = a5;
  LODWORD(v15) = LODWORD(a5);
  [v14 setFieldOfView:v15];

  v16 = [v13 camera];
  [v16 setProjectionDirection:a4];

  v17 = [v13 camera];
  [v17 setFilmOffset:v6];
}

@end