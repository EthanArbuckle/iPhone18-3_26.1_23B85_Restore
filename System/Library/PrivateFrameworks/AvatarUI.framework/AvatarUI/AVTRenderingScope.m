@interface AVTRenderingScope
+ (double)extraMagnifyingFactorForFramingMode:(id)a3;
+ (double)thumbnailHeightRatioForFramingMode:(id)a3;
+ (double)widthForRenderingType:(int64_t)a3 options:(unint64_t)a4;
+ (id)funCamCarouselThumbnailScope;
+ (id)gridThumbnailScope;
+ (id)largeThumbnailScope;
+ (id)listControllerThumbnailScope;
+ (id)simplePickerThumbnailScope;
+ (id)thumbnailScope;
+ (unint64_t)scopeOptionsForEnvironment:(id)a3;
- (AVTRenderingScope)initWithCoder:(id)a3;
- (AVTRenderingScope)initWithRenderingType:(int64_t)a3 scale:(double)a4 options:(unint64_t)a5 framingMode:(id)a6 pose:(id)a7 size:(CGSize)a8;
- (AVTRenderingScope)initWithRenderingType:(int64_t)a3 scale:(double)a4 options:(unint64_t)a5 framingMode:(id)a6 pose:(id)a7 sizeModifier:(float)a8;
- (BOOL)isEqual:(id)a3;
- (CGSize)size;
- (id)adaptedFramingModeForObjectType:(int64_t)a3;
- (id)cacheableResourceAssociatedIdentifier;
- (id)copyApplyingPoseOverride:(id)a3;
- (id)copyWithFramingMode:(id)a3;
- (id)copyWithPose:(id)a3;
- (id)copyWithSize:(CGSize)a3 framingMode:(id)a4;
- (id)copyWithSizeModifier:(float)a3;
- (id)description;
- (id)framingModeIdentifier;
- (unint64_t)cacheableResourceAssociatedCost;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AVTRenderingScope

- (id)cacheableResourceAssociatedIdentifier
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v4 = [(AVTRenderingScope *)self framingModeIdentifier];

  if (v4)
  {
    v5 = [(AVTRenderingScope *)self framingModeIdentifier];
    v6 = [MEMORY[0x1E696AB08] URLPathAllowedCharacterSet];
    v7 = [v5 stringByAddingPercentEncodingWithAllowedCharacters:v6];

    [v3 appendFormat:@"_%@", v7];
  }

  v8 = [(AVTRenderingScope *)self pose];

  if (v8)
  {
    v9 = [(AVTRenderingScope *)self pose];
    v10 = [v9 _avtui_identifier];

    [v3 appendFormat:@"_%@", v10];
  }

  v11 = [(AVTRenderingScope *)self options];
  [(AVTRenderingScope *)self size];
  v13 = v12;
  [(AVTRenderingScope *)self size];
  v15 = v14;
  [(AVTRenderingScope *)self scale];
  [v3 appendFormat:@"_e%0.2g_o%lu_%2.2fx%2.2fAt%2.2fx", 0x3FF0000000000000, v11, v13, v15, v16];
  v17 = [v3 copy];

  return v17;
}

- (unint64_t)cacheableResourceAssociatedCost
{
  [(AVTRenderingScope *)self size];
  v4 = v3;
  [(AVTRenderingScope *)self size];
  return (v4 * v5);
}

- (AVTRenderingScope)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"renderingType"];
  v6 = [v5 integerValue];

  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"scale"];
  [v7 doubleValue];
  v9 = v8;

  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"framingMode"];
  v11 = MEMORY[0x1E695DFD8];
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v15 = [v11 setWithObjects:{v12, v13, v14, objc_opt_class(), 0}];
  v16 = [v4 decodeObjectOfClasses:v15 forKey:@"pose"];
  v17 = [objc_alloc(MEMORY[0x1E698E288]) initWithDictionaryRepresentation:v16];
  [v4 decodeCGSizeForKey:@"size"];
  v19 = v18;
  v21 = v20;

  v22 = +[AVTUIEnvironment defaultEnvironment];
  v23 = [(AVTRenderingScope *)self initWithRenderingType:v6 scale:[AVTRenderingScope scopeOptionsForEnvironment:?]pose:v10 size:v17, v9, v19, v21];

  return v23;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x1E696AD98];
  v12 = a3;
  v5 = [v4 numberWithInt:{-[AVTRenderingScope renderingType](self, "renderingType")}];
  [v12 encodeObject:v5 forKey:@"renderingType"];

  v6 = MEMORY[0x1E696AD98];
  [(AVTRenderingScope *)self scale];
  *&v7 = v7;
  v8 = [v6 numberWithFloat:v7];
  [v12 encodeObject:v8 forKey:@"scale"];

  v9 = [(AVTRenderingScope *)self framingMode];
  [v12 encodeObject:v9 forKey:@"framingMode"];

  v10 = [(AVTRenderingScope *)self pose];
  v11 = [v10 dictionaryRepresentation];
  [v12 encodeObject:v11 forKey:@"pose"];

  [(AVTRenderingScope *)self size];
  [v12 encodeCGSize:@"size" forKey:?];
}

+ (id)thumbnailScope
{
  v3 = +[AVTUIEnvironment defaultEnvironment];
  [v3 mainScreenScale];
  v5 = v4;

  v6 = [a1 alloc];
  v7 = +[AVTUIEnvironment defaultEnvironment];
  v8 = [v6 initWithRenderingType:1 scale:objc_msgSend(a1 options:{"scopeOptionsForEnvironment:", v7), v5}];

  return v8;
}

+ (id)largeThumbnailScope
{
  v3 = +[AVTUIEnvironment defaultEnvironment];
  [v3 mainScreenScale];
  v5 = v4;

  v6 = [a1 alloc];
  v7 = +[AVTUIEnvironment defaultEnvironment];
  v8 = [v6 initWithRenderingType:2 scale:objc_msgSend(a1 options:{"scopeOptionsForEnvironment:", v7), v5}];

  return v8;
}

+ (id)gridThumbnailScope
{
  v3 = +[AVTUIEnvironment defaultEnvironment];
  [v3 mainScreenScale];
  v5 = v4;

  v6 = [a1 alloc];
  v7 = +[AVTUIEnvironment defaultEnvironment];
  v8 = [a1 scopeOptionsForEnvironment:v7];
  v9 = *MEMORY[0x1E698E240];
  v10 = [MEMORY[0x1E698E288] friendlyPose];
  v11 = [v6 initWithRenderingType:3 scale:v8 options:v9 framingMode:v10 pose:v5];

  return v11;
}

+ (id)listControllerThumbnailScope
{
  v3 = +[AVTUIEnvironment defaultEnvironment];
  [v3 mainScreenScale];
  v5 = v4;

  v6 = [AVTRenderingScope alloc];
  v7 = +[AVTUIEnvironment defaultEnvironment];
  v8 = [a1 scopeOptionsForEnvironment:v7];
  v9 = *MEMORY[0x1E698E228];
  v10 = [MEMORY[0x1E698E288] friendlyPose];
  v11 = [(AVTRenderingScope *)v6 initWithRenderingType:2 scale:v8 options:v9 framingMode:v10 pose:v5];

  return v11;
}

+ (id)funCamCarouselThumbnailScope
{
  v3 = +[AVTUIEnvironment defaultEnvironment];
  [v3 mainScreenScale];
  v5 = v4;

  v6 = [AVTRenderingScope alloc];
  v7 = +[AVTUIEnvironment defaultEnvironment];
  v8 = [a1 scopeOptionsForEnvironment:v7];
  v9 = *MEMORY[0x1E698E238];
  v10 = [MEMORY[0x1E698E288] friendlyPose];
  v11 = [(AVTRenderingScope *)v6 initWithRenderingType:102 scale:v8 options:v9 framingMode:v10 pose:v5];

  return v11;
}

+ (id)simplePickerThumbnailScope
{
  v3 = +[AVTUIEnvironment defaultEnvironment];
  [v3 mainScreenScale];
  v5 = v4;

  v6 = [AVTRenderingScope alloc];
  v7 = +[AVTUIEnvironment defaultEnvironment];
  v8 = [a1 scopeOptionsForEnvironment:v7];
  v9 = *MEMORY[0x1E698E240];
  v10 = [MEMORY[0x1E698E288] friendlyPose];
  v11 = [(AVTRenderingScope *)v6 initWithRenderingType:103 scale:v8 options:v9 framingMode:v10 pose:v5];

  return v11;
}

+ (unint64_t)scopeOptionsForEnvironment:(id)a3
{
  v3 = a3;
  v4 = ([v3 deviceIsPad] & 1) != 0 || objc_msgSend(v3, "deviceIsMac");
  [v3 mainScreenSize];
  if (v5 <= 375.0)
  {
    v4 |= 2uLL;
  }

  return v4;
}

+ (double)widthForRenderingType:(int64_t)a3 options:(unint64_t)a4
{
  if (a3 > 100)
  {
    switch(a3)
    {
      case 'e':
        return 102.0;
      case 'f':
        return 130.0;
      case 'g':
        return 52.0;
    }

    return 166.0;
  }

  if (a3 == 2)
  {
    v5 = (a4 & 1) == 0;
    v6 = &unk_1BB4164C0;
    return v6[v5];
  }

  if (a3 == 3)
  {
    v5 = (a4 & 1) == 0;
    v6 = &unk_1BB4164B0;
    return v6[v5];
  }

  if (a3 != 100)
  {
    return 166.0;
  }

  result = 84.0;
  if ((a4 & 1) == 0)
  {
    result = 114.0;
  }

  if ((a4 & 2) != 0)
  {
    return 83.0;
  }

  return result;
}

+ (double)thumbnailHeightRatioForFramingMode:(id)a3
{
  v3 = a3;
  v4 = 1.2;
  if (([v3 isEqual:*MEMORY[0x1E698E248]] & 1) == 0 && (objc_msgSend(v3, "isEqual:", *MEMORY[0x1E698E250]) & 1) == 0)
  {
    if ([v3 isEqual:*MEMORY[0x1E698E238]])
    {
      v4 = 1.31;
    }

    else
    {
      v4 = 1.0;
    }
  }

  return v4;
}

+ (double)extraMagnifyingFactorForFramingMode:(id)a3
{
  v3 = [a3 isEqual:*MEMORY[0x1E698E238]];
  result = 1.2;
  if (!v3)
  {
    return 1.0;
  }

  return result;
}

- (AVTRenderingScope)initWithRenderingType:(int64_t)a3 scale:(double)a4 options:(unint64_t)a5 framingMode:(id)a6 pose:(id)a7 sizeModifier:(float)a8
{
  v14 = a7;
  v15 = a6;
  [objc_opt_class() widthForRenderingType:a3 options:a5];
  v17 = v16;
  [objc_opt_class() thumbnailHeightRatioForFramingMode:v15];
  v19 = [(AVTRenderingScope *)self initWithRenderingType:a3 scale:a5 options:v15 framingMode:v14 pose:a4 size:v17 * a8, v17 * a8 * v18];

  return v19;
}

- (AVTRenderingScope)initWithRenderingType:(int64_t)a3 scale:(double)a4 options:(unint64_t)a5 framingMode:(id)a6 pose:(id)a7 size:(CGSize)a8
{
  height = a8.height;
  width = a8.width;
  v15 = a6;
  v16 = a7;
  v20.receiver = self;
  v20.super_class = AVTRenderingScope;
  v17 = [(AVTRenderingScope *)&v20 init];
  v18 = v17;
  if (v17)
  {
    v17->_scale = a4;
    v17->_framingMode = v15;
    v17->_renderingType = a3;
    v17->_options = a5;
    objc_storeStrong(&v17->_pose, a7);
    v18->_size.width = width;
    v18->_size.height = height;
  }

  return v18;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  if (v5 == self)
  {
    v11 = 1;
    goto LABEL_23;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_22;
  }

  v6 = [(AVTRenderingScope *)self renderingType];
  if (v6 != [(AVTRenderingScope *)v5 renderingType])
  {
    goto LABEL_22;
  }

  v7 = [(AVTRenderingScope *)self framingMode];
  if (v7 || ([(AVTRenderingScope *)v5 framingMode], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v8 = [(AVTRenderingScope *)self framingMode];
    v9 = [(AVTRenderingScope *)v5 framingMode];
    v10 = [v8 isEqual:v9];

    if (v7)
    {

      if (!v10)
      {
        goto LABEL_22;
      }
    }

    else
    {

      if ((v10 & 1) == 0)
      {
        goto LABEL_22;
      }
    }
  }

  v12 = [(AVTRenderingScope *)self pose];
  if (v12 || ([(AVTRenderingScope *)v5 pose], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v13 = [(AVTRenderingScope *)self pose];
    v14 = [(AVTRenderingScope *)v5 pose];
    v15 = [v13 isEqual:v14];

    if (v12)
    {

      if (!v15)
      {
        goto LABEL_22;
      }

      goto LABEL_17;
    }

    if ((v15 & 1) == 0)
    {
LABEL_22:
      v11 = 0;
      goto LABEL_23;
    }
  }

LABEL_17:
  [(AVTRenderingScope *)self scale];
  v17 = v16;
  [(AVTRenderingScope *)v5 scale];
  if (v17 != v18)
  {
    goto LABEL_22;
  }

  v19 = [(AVTRenderingScope *)self options];
  if (v19 != [(AVTRenderingScope *)v5 options])
  {
    goto LABEL_22;
  }

  [(AVTRenderingScope *)self size];
  v21 = v20;
  v23 = v22;
  [(AVTRenderingScope *)v5 size];
  v11 = v23 == v25 && v21 == v24;
LABEL_23:

  return v11;
}

- (unint64_t)hash
{
  *(&v4 + 1) = [(AVTRenderingScope *)self options];
  *&v4 = [(AVTRenderingScope *)self options];
  v3 = v4 >> 54;
  [(AVTRenderingScope *)self size];
  v5 = NSStringFromCGSize(v19);
  [(AVTRenderingScope *)self size];
  v6 = NSStringFromCGSize(v20);
  *(&v4 + 1) = v5;
  *&v4 = v6;
  v7 = v4 >> 52;
  *(&v4 + 1) = [(AVTRenderingScope *)self renderingType];
  *&v4 = [(AVTRenderingScope *)self renderingType];
  v8 = v7 ^ v3 ^ (v4 >> 48);
  [(AVTRenderingScope *)self scale];
  v10 = v9;
  [(AVTRenderingScope *)self scale];
  *(&v4 + 1) = v10;
  *&v4 = v11;
  v12 = v4 >> 43;
  v13 = [(AVTRenderingScope *)self framingMode];
  v14 = [v13 hash];
  v15 = [(AVTRenderingScope *)self framingMode];
  *(&v4 + 1) = v14;
  *&v4 = [v15 hash];
  v16 = [(AVTRenderingScope *)self pose];
  v17 = v8 ^ (v4 >> 32) ^ [v16 hash];

  return v17 ^ v12;
}

- (id)copyWithSize:(CGSize)a3 framingMode:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  v8 = objc_alloc(objc_opt_class());
  v9 = [(AVTRenderingScope *)self renderingType];
  [(AVTRenderingScope *)self scale];
  v11 = v10;
  v12 = [(AVTRenderingScope *)self options];
  v13 = [(AVTRenderingScope *)self pose];
  v14 = [v8 initWithRenderingType:v9 scale:v12 options:v7 framingMode:v13 pose:v11 size:{width, height}];

  return v14;
}

- (id)copyWithPose:(id)a3
{
  v4 = a3;
  v5 = objc_alloc(objc_opt_class());
  v6 = [(AVTRenderingScope *)self renderingType];
  [(AVTRenderingScope *)self scale];
  v8 = v7;
  v9 = [(AVTRenderingScope *)self options];
  v10 = [(AVTRenderingScope *)self framingMode];
  [(AVTRenderingScope *)self size];
  v13 = [v5 initWithRenderingType:v6 scale:v9 options:v10 framingMode:v4 pose:v8 size:{v11, v12}];

  return v13;
}

- (id)copyWithFramingMode:(id)a3
{
  v4 = a3;
  v5 = objc_alloc(objc_opt_class());
  v6 = [(AVTRenderingScope *)self renderingType];
  [(AVTRenderingScope *)self scale];
  v8 = v7;
  v9 = [(AVTRenderingScope *)self options];
  v10 = [(AVTRenderingScope *)self pose];
  v11 = [v5 initWithRenderingType:v6 scale:v9 options:v4 framingMode:v10 pose:v8];

  return v11;
}

- (id)copyWithSizeModifier:(float)a3
{
  v4 = a3;
  if (v4 > 1.0)
  {
    v4 = 1.0;
  }

  if (v4 < 0.0)
  {
    v4 = 0.0;
  }

  v5 = v4;
  v6 = objc_alloc(objc_opt_class());
  v7 = [(AVTRenderingScope *)self renderingType];
  [(AVTRenderingScope *)self scale];
  v9 = v8;
  v10 = [(AVTRenderingScope *)self options];
  v11 = [(AVTRenderingScope *)self framingMode];
  v12 = [(AVTRenderingScope *)self pose];
  *&v13 = v5;
  v14 = [v6 initWithRenderingType:v7 scale:v10 options:v11 framingMode:v12 pose:v9 sizeModifier:v13];

  return v14;
}

- (id)copyApplyingPoseOverride:(id)a3
{
  v4 = a3;
  v5 = [(AVTRenderingScope *)self pose];
  if (v5)
  {
    v6 = [(AVTRenderingScope *)self pose];
    v7 = [v6 poseByMergingPose:v4];
  }

  else
  {
    v7 = v4;
  }

  v8 = objc_alloc(objc_opt_class());
  v9 = [(AVTRenderingScope *)self renderingType];
  [(AVTRenderingScope *)self scale];
  v11 = v10;
  v12 = [(AVTRenderingScope *)self options];
  v13 = [(AVTRenderingScope *)self framingMode];
  v14 = [v8 initWithRenderingType:v9 scale:v12 options:v13 framingMode:v7 pose:v11];

  return v14;
}

- (id)adaptedFramingModeForObjectType:(int64_t)a3
{
  v5 = [(AVTRenderingScope *)self framingMode];
  v6 = [v5 isEqualToString:*MEMORY[0x1E698E240]];

  if (a3 == 3 && v6)
  {
    v7 = *MEMORY[0x1E698E228];
  }

  else
  {
    v7 = [(AVTRenderingScope *)self framingMode];
  }

  return v7;
}

- (id)framingModeIdentifier
{
  v2 = [(AVTRenderingScope *)self framingMode];
  v3 = [v2 description];

  return v3;
}

- (id)description
{
  v16.receiver = self;
  v16.super_class = AVTRenderingScope;
  v3 = [(AVTRenderingScope *)&v16 description];
  v4 = [v3 mutableCopy];

  v5 = [MEMORY[0x1E696AD98] numberWithInteger:{-[AVTRenderingScope renderingType](self, "renderingType")}];
  [v4 appendFormat:@" type: %@", v5];

  [(AVTRenderingScope *)self size];
  v6 = NSStringFromCGSize(v18);
  [v4 appendFormat:@" size: %@", v6];

  v7 = MEMORY[0x1E696AD98];
  [(AVTRenderingScope *)self scale];
  v8 = [v7 numberWithDouble:?];
  [v4 appendFormat:@" scale: %@", v8];

  v9 = [(AVTRenderingScope *)self framingMode];

  if (v9)
  {
    v10 = [(AVTRenderingScope *)self framingMode];
    [v4 appendFormat:@" framingMode: %@", v10];
  }

  v11 = [(AVTRenderingScope *)self pose];

  if (v11)
  {
    v12 = [(AVTRenderingScope *)self pose];
    v13 = [v12 _avtui_identifier];
    [v4 appendFormat:@" pose: %@", v13];
  }

  v14 = [v4 copy];

  return v14;
}

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

@end