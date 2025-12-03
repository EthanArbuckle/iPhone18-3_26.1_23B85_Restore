@interface BSColor
+ (id)colorWithRed:(double)red green:(double)green blue:(double)blue alpha:(double)alpha;
+ (void)initialize;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToColor:(id)color;
- (CGColor)CGColor;
- (NSString)description;
- (id)membersForCoder;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation BSColor

+ (void)initialize
{
  if (objc_opt_class() == self)
  {

    BSXPCAutoCodingInitialize(self, &__block_literal_global_14);
  }
}

void __21__BSColor_initialize__block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v2 = &unk_1F03BA3C0;
  [v4 addSupportedCoding:v2];

  v3 = &unk_1F03BA528;
  [v4 addSupportedCoding:v3];
}

+ (id)colorWithRed:(double)red green:(double)green blue:(double)blue alpha:(double)alpha
{
  v10 = objc_alloc_init(BSColor);
  v10->_red = red;
  v10->_green = green;
  v10->_blue = blue;
  v10->_alpha = alpha;

  return v10;
}

- (void)dealloc
{
  CGColorRelease(self->_colorRef);
  v3.receiver = self;
  v3.super_class = BSColor;
  [(BSColor *)&v3 dealloc];
}

- (CGColor)CGColor
{
  v8 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_colorRef)
  {
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
    v4 = DeviceRGB;
    if (DeviceRGB)
    {
      v5 = *&selfCopy->_blue;
      v7[0] = *&selfCopy->_red;
      v7[1] = v5;
      selfCopy->_colorRef = CGColorCreate(DeviceRGB, v7);
      CGColorSpaceRelease(v4);
    }
  }

  objc_sync_exit(selfCopy);

  return selfCopy->_colorRef;
}

- (BOOL)isEqualToColor:(id)color
{
  colorCopy = color;
  v5 = [BSEqualsBuilder builderWithObject:colorCopy ofExpectedClass:objc_opt_class()];
  red = self->_red;
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __26__BSColor_isEqualToColor___block_invoke;
  v28[3] = &unk_1E72CB470;
  v7 = colorCopy;
  v29 = v7;
  v8 = [v5 appendCGFloat:v28 counterpart:red];
  green = self->_green;
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __26__BSColor_isEqualToColor___block_invoke_2;
  v26[3] = &unk_1E72CB470;
  v10 = v7;
  v27 = v10;
  v11 = [v5 appendCGFloat:v26 counterpart:green];
  blue = self->_blue;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __26__BSColor_isEqualToColor___block_invoke_3;
  v24[3] = &unk_1E72CB470;
  v13 = v10;
  v25 = v13;
  v14 = [v5 appendCGFloat:v24 counterpart:blue];
  alpha = self->_alpha;
  v19 = MEMORY[0x1E69E9820];
  v20 = 3221225472;
  v21 = __26__BSColor_isEqualToColor___block_invoke_4;
  v22 = &unk_1E72CB470;
  v16 = v13;
  v23 = v16;
  v17 = [v5 appendCGFloat:&v19 counterpart:alpha];
  LOBYTE(v13) = [v5 isEqual];

  return v13;
}

- (id)membersForCoder
{
  v44[4] = *MEMORY[0x1E69E9840];
  if (objc_opt_class())
  {
    if (objc_opt_isKindOfClass())
    {
      v2 = @"_red";
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;
  v11 = _BSAutoMember(v3, v4, v5, v6, v7, v8, v9, v10, @"r", 0);
  v44[0] = v11;
  if (objc_opt_class())
  {
    if (objc_opt_isKindOfClass())
    {
      v12 = @"_green";
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;
  v21 = _BSAutoMember(v13, v14, v15, v16, v17, v18, v19, v20, @"g", 0);
  v44[1] = v21;
  if (objc_opt_class())
  {
    if (objc_opt_isKindOfClass())
    {
      v22 = @"_blue";
    }

    else
    {
      v22 = 0;
    }
  }

  else
  {
    v22 = 0;
  }

  v23 = v22;
  v31 = _BSAutoMember(v23, v24, v25, v26, v27, v28, v29, v30, @"b", 0);
  v44[2] = v31;
  if (objc_opt_class())
  {
    if (objc_opt_isKindOfClass())
    {
      v32 = @"_alpha";
    }

    else
    {
      v32 = 0;
    }
  }

  else
  {
    v32 = 0;
  }

  v33 = v32;
  v41 = _BSAutoMember(v33, v34, v35, v36, v37, v38, v39, v40, @"a", 0);
  v44[3] = v41;
  v42 = [MEMORY[0x1E695DEC8] arrayWithObjects:v44 count:4];

  return v42;
}

- (NSString)description
{
  v3 = [BSDescriptionBuilder builderWithObject:self];
  v4 = [v3 appendFloat:@"r" withName:2 decimalPrecision:self->_red];
  v5 = [v3 appendFloat:@"g" withName:2 decimalPrecision:self->_green];
  v6 = [v3 appendFloat:@"b" withName:2 decimalPrecision:self->_blue];
  v7 = [v3 appendFloat:@"a" withName:2 decimalPrecision:self->_alpha];
  build = [v3 build];

  return build;
}

- (unint64_t)hash
{
  v3 = +[BSHashBuilder builder];
  v4 = [v3 appendCGFloat:self->_red];
  v5 = [v4 appendCGFloat:self->_green];
  v6 = [v5 appendCGFloat:self->_blue];
  v7 = [v6 appendCGFloat:self->_alpha];
  v8 = [v7 hash];

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(BSColor *)self isEqualToColor:equalCopy];

  return v5;
}

@end