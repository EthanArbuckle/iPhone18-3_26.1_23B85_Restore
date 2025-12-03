@interface AVTRenderingScope
+ (double)extraMagnifyingFactorForFramingMode:(id)mode;
+ (double)thumbnailHeightRatioForFramingMode:(id)mode;
+ (double)widthForRenderingType:(int64_t)type options:(unint64_t)options;
+ (id)funCamCarouselThumbnailScope;
+ (id)gridThumbnailScope;
+ (id)largeThumbnailScope;
+ (id)listControllerThumbnailScope;
+ (id)simplePickerThumbnailScope;
+ (id)thumbnailScope;
+ (unint64_t)scopeOptionsForEnvironment:(id)environment;
- (AVTRenderingScope)initWithCoder:(id)coder;
- (AVTRenderingScope)initWithRenderingType:(int64_t)type scale:(double)scale options:(unint64_t)options framingMode:(id)mode pose:(id)pose size:(CGSize)size;
- (AVTRenderingScope)initWithRenderingType:(int64_t)type scale:(double)scale options:(unint64_t)options framingMode:(id)mode pose:(id)pose sizeModifier:(float)modifier;
- (BOOL)isEqual:(id)equal;
- (CGSize)size;
- (id)adaptedFramingModeForObjectType:(int64_t)type;
- (id)cacheableResourceAssociatedIdentifier;
- (id)copyApplyingPoseOverride:(id)override;
- (id)copyWithFramingMode:(id)mode;
- (id)copyWithPose:(id)pose;
- (id)copyWithSize:(CGSize)size framingMode:(id)mode;
- (id)copyWithSizeModifier:(float)modifier;
- (id)description;
- (id)framingModeIdentifier;
- (unint64_t)cacheableResourceAssociatedCost;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AVTRenderingScope

- (id)cacheableResourceAssociatedIdentifier
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  framingModeIdentifier = [(AVTRenderingScope *)self framingModeIdentifier];

  if (framingModeIdentifier)
  {
    framingModeIdentifier2 = [(AVTRenderingScope *)self framingModeIdentifier];
    uRLPathAllowedCharacterSet = [MEMORY[0x1E696AB08] URLPathAllowedCharacterSet];
    v7 = [framingModeIdentifier2 stringByAddingPercentEncodingWithAllowedCharacters:uRLPathAllowedCharacterSet];

    [v3 appendFormat:@"_%@", v7];
  }

  pose = [(AVTRenderingScope *)self pose];

  if (pose)
  {
    pose2 = [(AVTRenderingScope *)self pose];
    _avtui_identifier = [pose2 _avtui_identifier];

    [v3 appendFormat:@"_%@", _avtui_identifier];
  }

  options = [(AVTRenderingScope *)self options];
  [(AVTRenderingScope *)self size];
  v13 = v12;
  [(AVTRenderingScope *)self size];
  v15 = v14;
  [(AVTRenderingScope *)self scale];
  [v3 appendFormat:@"_e%0.2g_o%lu_%2.2fx%2.2fAt%2.2fx", 0x3FF0000000000000, options, v13, v15, v16];
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

- (AVTRenderingScope)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"renderingType"];
  integerValue = [v5 integerValue];

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"scale"];
  [v7 doubleValue];
  v9 = v8;

  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"framingMode"];
  v11 = MEMORY[0x1E695DFD8];
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v15 = [v11 setWithObjects:{v12, v13, v14, objc_opt_class(), 0}];
  v16 = [coderCopy decodeObjectOfClasses:v15 forKey:@"pose"];
  v17 = [objc_alloc(MEMORY[0x1E698E288]) initWithDictionaryRepresentation:v16];
  [coderCopy decodeCGSizeForKey:@"size"];
  v19 = v18;
  v21 = v20;

  v22 = +[AVTUIEnvironment defaultEnvironment];
  v23 = [(AVTRenderingScope *)self initWithRenderingType:integerValue scale:[AVTRenderingScope scopeOptionsForEnvironment:?]pose:v10 size:v17, v9, v19, v21];

  return v23;
}

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x1E696AD98];
  coderCopy = coder;
  v5 = [v4 numberWithInt:{-[AVTRenderingScope renderingType](self, "renderingType")}];
  [coderCopy encodeObject:v5 forKey:@"renderingType"];

  v6 = MEMORY[0x1E696AD98];
  [(AVTRenderingScope *)self scale];
  *&v7 = v7;
  v8 = [v6 numberWithFloat:v7];
  [coderCopy encodeObject:v8 forKey:@"scale"];

  framingMode = [(AVTRenderingScope *)self framingMode];
  [coderCopy encodeObject:framingMode forKey:@"framingMode"];

  pose = [(AVTRenderingScope *)self pose];
  dictionaryRepresentation = [pose dictionaryRepresentation];
  [coderCopy encodeObject:dictionaryRepresentation forKey:@"pose"];

  [(AVTRenderingScope *)self size];
  [coderCopy encodeCGSize:@"size" forKey:?];
}

+ (id)thumbnailScope
{
  v3 = +[AVTUIEnvironment defaultEnvironment];
  [v3 mainScreenScale];
  v5 = v4;

  v6 = [self alloc];
  v7 = +[AVTUIEnvironment defaultEnvironment];
  v8 = [v6 initWithRenderingType:1 scale:objc_msgSend(self options:{"scopeOptionsForEnvironment:", v7), v5}];

  return v8;
}

+ (id)largeThumbnailScope
{
  v3 = +[AVTUIEnvironment defaultEnvironment];
  [v3 mainScreenScale];
  v5 = v4;

  v6 = [self alloc];
  v7 = +[AVTUIEnvironment defaultEnvironment];
  v8 = [v6 initWithRenderingType:2 scale:objc_msgSend(self options:{"scopeOptionsForEnvironment:", v7), v5}];

  return v8;
}

+ (id)gridThumbnailScope
{
  v3 = +[AVTUIEnvironment defaultEnvironment];
  [v3 mainScreenScale];
  v5 = v4;

  v6 = [self alloc];
  v7 = +[AVTUIEnvironment defaultEnvironment];
  v8 = [self scopeOptionsForEnvironment:v7];
  v9 = *MEMORY[0x1E698E240];
  friendlyPose = [MEMORY[0x1E698E288] friendlyPose];
  v11 = [v6 initWithRenderingType:3 scale:v8 options:v9 framingMode:friendlyPose pose:v5];

  return v11;
}

+ (id)listControllerThumbnailScope
{
  v3 = +[AVTUIEnvironment defaultEnvironment];
  [v3 mainScreenScale];
  v5 = v4;

  v6 = [AVTRenderingScope alloc];
  v7 = +[AVTUIEnvironment defaultEnvironment];
  v8 = [self scopeOptionsForEnvironment:v7];
  v9 = *MEMORY[0x1E698E228];
  friendlyPose = [MEMORY[0x1E698E288] friendlyPose];
  v11 = [(AVTRenderingScope *)v6 initWithRenderingType:2 scale:v8 options:v9 framingMode:friendlyPose pose:v5];

  return v11;
}

+ (id)funCamCarouselThumbnailScope
{
  v3 = +[AVTUIEnvironment defaultEnvironment];
  [v3 mainScreenScale];
  v5 = v4;

  v6 = [AVTRenderingScope alloc];
  v7 = +[AVTUIEnvironment defaultEnvironment];
  v8 = [self scopeOptionsForEnvironment:v7];
  v9 = *MEMORY[0x1E698E238];
  friendlyPose = [MEMORY[0x1E698E288] friendlyPose];
  v11 = [(AVTRenderingScope *)v6 initWithRenderingType:102 scale:v8 options:v9 framingMode:friendlyPose pose:v5];

  return v11;
}

+ (id)simplePickerThumbnailScope
{
  v3 = +[AVTUIEnvironment defaultEnvironment];
  [v3 mainScreenScale];
  v5 = v4;

  v6 = [AVTRenderingScope alloc];
  v7 = +[AVTUIEnvironment defaultEnvironment];
  v8 = [self scopeOptionsForEnvironment:v7];
  v9 = *MEMORY[0x1E698E240];
  friendlyPose = [MEMORY[0x1E698E288] friendlyPose];
  v11 = [(AVTRenderingScope *)v6 initWithRenderingType:103 scale:v8 options:v9 framingMode:friendlyPose pose:v5];

  return v11;
}

+ (unint64_t)scopeOptionsForEnvironment:(id)environment
{
  environmentCopy = environment;
  v4 = ([environmentCopy deviceIsPad] & 1) != 0 || objc_msgSend(environmentCopy, "deviceIsMac");
  [environmentCopy mainScreenSize];
  if (v5 <= 375.0)
  {
    v4 |= 2uLL;
  }

  return v4;
}

+ (double)widthForRenderingType:(int64_t)type options:(unint64_t)options
{
  if (type > 100)
  {
    switch(type)
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

  if (type == 2)
  {
    v5 = (options & 1) == 0;
    v6 = &unk_1BB4164C0;
    return v6[v5];
  }

  if (type == 3)
  {
    v5 = (options & 1) == 0;
    v6 = &unk_1BB4164B0;
    return v6[v5];
  }

  if (type != 100)
  {
    return 166.0;
  }

  result = 84.0;
  if ((options & 1) == 0)
  {
    result = 114.0;
  }

  if ((options & 2) != 0)
  {
    return 83.0;
  }

  return result;
}

+ (double)thumbnailHeightRatioForFramingMode:(id)mode
{
  modeCopy = mode;
  v4 = 1.2;
  if (([modeCopy isEqual:*MEMORY[0x1E698E248]] & 1) == 0 && (objc_msgSend(modeCopy, "isEqual:", *MEMORY[0x1E698E250]) & 1) == 0)
  {
    if ([modeCopy isEqual:*MEMORY[0x1E698E238]])
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

+ (double)extraMagnifyingFactorForFramingMode:(id)mode
{
  v3 = [mode isEqual:*MEMORY[0x1E698E238]];
  result = 1.2;
  if (!v3)
  {
    return 1.0;
  }

  return result;
}

- (AVTRenderingScope)initWithRenderingType:(int64_t)type scale:(double)scale options:(unint64_t)options framingMode:(id)mode pose:(id)pose sizeModifier:(float)modifier
{
  poseCopy = pose;
  modeCopy = mode;
  [objc_opt_class() widthForRenderingType:type options:options];
  v17 = v16;
  [objc_opt_class() thumbnailHeightRatioForFramingMode:modeCopy];
  v19 = [(AVTRenderingScope *)self initWithRenderingType:type scale:options options:modeCopy framingMode:poseCopy pose:scale size:v17 * modifier, v17 * modifier * v18];

  return v19;
}

- (AVTRenderingScope)initWithRenderingType:(int64_t)type scale:(double)scale options:(unint64_t)options framingMode:(id)mode pose:(id)pose size:(CGSize)size
{
  height = size.height;
  width = size.width;
  modeCopy = mode;
  poseCopy = pose;
  v20.receiver = self;
  v20.super_class = AVTRenderingScope;
  v17 = [(AVTRenderingScope *)&v20 init];
  v18 = v17;
  if (v17)
  {
    v17->_scale = scale;
    v17->_framingMode = modeCopy;
    v17->_renderingType = type;
    v17->_options = options;
    objc_storeStrong(&v17->_pose, pose);
    v18->_size.width = width;
    v18->_size.height = height;
  }

  return v18;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v11 = 1;
    goto LABEL_23;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_22;
  }

  renderingType = [(AVTRenderingScope *)self renderingType];
  if (renderingType != [(AVTRenderingScope *)equalCopy renderingType])
  {
    goto LABEL_22;
  }

  framingMode = [(AVTRenderingScope *)self framingMode];
  if (framingMode || ([(AVTRenderingScope *)equalCopy framingMode], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    framingMode2 = [(AVTRenderingScope *)self framingMode];
    framingMode3 = [(AVTRenderingScope *)equalCopy framingMode];
    v10 = [framingMode2 isEqual:framingMode3];

    if (framingMode)
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

  pose = [(AVTRenderingScope *)self pose];
  if (pose || ([(AVTRenderingScope *)equalCopy pose], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    pose2 = [(AVTRenderingScope *)self pose];
    pose3 = [(AVTRenderingScope *)equalCopy pose];
    v15 = [pose2 isEqual:pose3];

    if (pose)
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
  [(AVTRenderingScope *)equalCopy scale];
  if (v17 != v18)
  {
    goto LABEL_22;
  }

  options = [(AVTRenderingScope *)self options];
  if (options != [(AVTRenderingScope *)equalCopy options])
  {
    goto LABEL_22;
  }

  [(AVTRenderingScope *)self size];
  v21 = v20;
  v23 = v22;
  [(AVTRenderingScope *)equalCopy size];
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
  framingMode = [(AVTRenderingScope *)self framingMode];
  v14 = [framingMode hash];
  framingMode2 = [(AVTRenderingScope *)self framingMode];
  *(&v4 + 1) = v14;
  *&v4 = [framingMode2 hash];
  pose = [(AVTRenderingScope *)self pose];
  v17 = v8 ^ (v4 >> 32) ^ [pose hash];

  return v17 ^ v12;
}

- (id)copyWithSize:(CGSize)size framingMode:(id)mode
{
  height = size.height;
  width = size.width;
  modeCopy = mode;
  v8 = objc_alloc(objc_opt_class());
  renderingType = [(AVTRenderingScope *)self renderingType];
  [(AVTRenderingScope *)self scale];
  v11 = v10;
  options = [(AVTRenderingScope *)self options];
  pose = [(AVTRenderingScope *)self pose];
  v14 = [v8 initWithRenderingType:renderingType scale:options options:modeCopy framingMode:pose pose:v11 size:{width, height}];

  return v14;
}

- (id)copyWithPose:(id)pose
{
  poseCopy = pose;
  v5 = objc_alloc(objc_opt_class());
  renderingType = [(AVTRenderingScope *)self renderingType];
  [(AVTRenderingScope *)self scale];
  v8 = v7;
  options = [(AVTRenderingScope *)self options];
  framingMode = [(AVTRenderingScope *)self framingMode];
  [(AVTRenderingScope *)self size];
  v13 = [v5 initWithRenderingType:renderingType scale:options options:framingMode framingMode:poseCopy pose:v8 size:{v11, v12}];

  return v13;
}

- (id)copyWithFramingMode:(id)mode
{
  modeCopy = mode;
  v5 = objc_alloc(objc_opt_class());
  renderingType = [(AVTRenderingScope *)self renderingType];
  [(AVTRenderingScope *)self scale];
  v8 = v7;
  options = [(AVTRenderingScope *)self options];
  pose = [(AVTRenderingScope *)self pose];
  v11 = [v5 initWithRenderingType:renderingType scale:options options:modeCopy framingMode:pose pose:v8];

  return v11;
}

- (id)copyWithSizeModifier:(float)modifier
{
  modifierCopy = modifier;
  if (modifierCopy > 1.0)
  {
    modifierCopy = 1.0;
  }

  if (modifierCopy < 0.0)
  {
    modifierCopy = 0.0;
  }

  v5 = modifierCopy;
  v6 = objc_alloc(objc_opt_class());
  renderingType = [(AVTRenderingScope *)self renderingType];
  [(AVTRenderingScope *)self scale];
  v9 = v8;
  options = [(AVTRenderingScope *)self options];
  framingMode = [(AVTRenderingScope *)self framingMode];
  pose = [(AVTRenderingScope *)self pose];
  *&v13 = v5;
  v14 = [v6 initWithRenderingType:renderingType scale:options options:framingMode framingMode:pose pose:v9 sizeModifier:v13];

  return v14;
}

- (id)copyApplyingPoseOverride:(id)override
{
  overrideCopy = override;
  pose = [(AVTRenderingScope *)self pose];
  if (pose)
  {
    pose2 = [(AVTRenderingScope *)self pose];
    v7 = [pose2 poseByMergingPose:overrideCopy];
  }

  else
  {
    v7 = overrideCopy;
  }

  v8 = objc_alloc(objc_opt_class());
  renderingType = [(AVTRenderingScope *)self renderingType];
  [(AVTRenderingScope *)self scale];
  v11 = v10;
  options = [(AVTRenderingScope *)self options];
  framingMode = [(AVTRenderingScope *)self framingMode];
  v14 = [v8 initWithRenderingType:renderingType scale:options options:framingMode framingMode:v7 pose:v11];

  return v14;
}

- (id)adaptedFramingModeForObjectType:(int64_t)type
{
  framingMode = [(AVTRenderingScope *)self framingMode];
  v6 = [framingMode isEqualToString:*MEMORY[0x1E698E240]];

  if (type == 3 && v6)
  {
    framingMode2 = *MEMORY[0x1E698E228];
  }

  else
  {
    framingMode2 = [(AVTRenderingScope *)self framingMode];
  }

  return framingMode2;
}

- (id)framingModeIdentifier
{
  framingMode = [(AVTRenderingScope *)self framingMode];
  v3 = [framingMode description];

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

  framingMode = [(AVTRenderingScope *)self framingMode];

  if (framingMode)
  {
    framingMode2 = [(AVTRenderingScope *)self framingMode];
    [v4 appendFormat:@" framingMode: %@", framingMode2];
  }

  pose = [(AVTRenderingScope *)self pose];

  if (pose)
  {
    pose2 = [(AVTRenderingScope *)self pose];
    _avtui_identifier = [pose2 _avtui_identifier];
    [v4 appendFormat:@" pose: %@", _avtui_identifier];
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