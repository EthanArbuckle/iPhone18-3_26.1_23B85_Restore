@interface BSUIVibrancyLUT
+ (void)initialize;
- (BOOL)canReuseInterpolatedLUTWithBlend:(double)a3 toIdentifier:(id)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)shouldUseInterpolatedLUTForBlend:(double)a3 toIdentifier:(id)a4;
- (BSUIVibrancyLUT)initWithIdentifier:(id)a3 bundleURL:(id)a4 blend:(double)a5 toIdentifier:(id)a6;
- (CAFilter)resolvedLUTFilter;
- (NSString)groupName;
- (id)copyWithBlend:(double)a3 toIdentifier:(id)a4;
- (id)copyWithLuminanceReduced:(BOOL)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)interpolatedImageWithFirstImage:(id)a3 secondImage:(id)a4 blend:(double)a5;
- (id)membersForCoder;
- (unint64_t)hash;
- (void)appendDescriptionToFormatter:(id)a3;
@end

@implementation BSUIVibrancyLUT

- (BSUIVibrancyLUT)initWithIdentifier:(id)a3 bundleURL:(id)a4 blend:(double)a5 toIdentifier:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a6;
  v19.receiver = self;
  v19.super_class = BSUIVibrancyLUT;
  v12 = [(BSUIVibrancyLUT *)&v19 init];
  if (v12)
  {
    v13 = [v9 copy];
    lutIdentifier = v12->_lutIdentifier;
    v12->_lutIdentifier = v13;

    v15 = [v10 copy];
    bundleURL = v12->_bundleURL;
    v12->_bundleURL = v15;

    BSIntervalClip();
    v12->_blend = v17;
    objc_storeStrong(&v12->_toIdentifier, a6);
  }

  return v12;
}

- (BOOL)shouldUseInterpolatedLUTForBlend:(double)a3 toIdentifier:(id)a4
{
  if (BSFloatIsZero())
  {
    return 0;
  }

  v6 = BSFloatIsOne() ^ 1;
  if (a4)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

- (BOOL)canReuseInterpolatedLUTWithBlend:(double)a3 toIdentifier:(id)a4
{
  v5 = a4;
  [(BSUIVibrancyLUT *)self blend];
  if (BSFloatEqualToFloat())
  {
    v6 = [(BSUIVibrancyLUT *)self toIdentifier];
    if ([v6 isEqualToString:v5])
    {
      v7 = [(BSUIVibrancyLUT *)self interpolatedLutImage];
      v8 = v7 != 0;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (CAFilter)resolvedLUTFilter
{
  [(BSUIVibrancyLUT *)self blend];
  v4 = v3;
  v5 = [(BSUIVibrancyLUT *)self toIdentifier];
  v6 = [(BSUIVibrancyLUT *)self shouldUseInterpolatedLUTForBlend:v5 toIdentifier:v4];

  if (v6)
  {
    v7 = [(BSUIVibrancyLUT *)self lutIdentifier];
    v8 = [(BSUIVibrancyLUT *)self toIdentifier];
    [(BSUIVibrancyLUT *)self blend];
    [(BSUIVibrancyLUT *)self interpolatedImageWithFirstImage:v7 secondImage:v8 blend:?];
    v10 = v9 = v7;
  }

  else
  {
    [(BSUIVibrancyLUT *)self blend];
    if (BSFloatIsOne() && ([(BSUIVibrancyLUT *)self toIdentifier], v11 = objc_claimAutoreleasedReturnValue(), v11, v11))
    {
      v12 = MEMORY[0x1E69DCAB8];
      v13 = [(BSUIVibrancyLUT *)self toIdentifier];
      v14 = MEMORY[0x1E696AAE8];
      v8 = [(BSUIVibrancyLUT *)self bundleURL];
      v15 = [v14 bundleWithURL:v8];
      v16 = [v12 imageNamed:v13 inBundle:v15];
    }

    else
    {
      v17 = MEMORY[0x1E69DCAB8];
      v13 = [(BSUIVibrancyLUT *)self lutIdentifier];
      v18 = MEMORY[0x1E696AAE8];
      v8 = [(BSUIVibrancyLUT *)self bundleURL];
      v15 = [v18 bundleWithURL:v8];
      v16 = [v17 imageNamed:v13 inBundle:v15];
    }

    v19 = v16;

    v9 = v13;
    v10 = v19;
  }

  if (v10)
  {
    v20 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979C80]];
    [(BSUIVibrancyLUT *)self blend];
    IsOne = BSFloatIsOne();
    if (IsOne && ([(BSUIVibrancyLUT *)self toIdentifier], (v22 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v23 = [(BSUIVibrancyLUT *)self toIdentifier];
      v24 = 0;
      v25 = 1;
    }

    else
    {
      v23 = [(BSUIVibrancyLUT *)self lutIdentifier];
      v22 = 0;
      v25 = 0;
      v24 = 1;
    }

    [v20 setName:v23];
    if (v24)
    {

      if (!v25)
      {
        goto LABEL_15;
      }
    }

    else if (!v25)
    {
LABEL_15:
      if (!IsOne)
      {
LABEL_17:
        v26 = [v10 CGImage];
        [v20 setValue:v26 forKey:*MEMORY[0x1E6979AB8]];
        goto LABEL_22;
      }

LABEL_16:

      goto LABEL_17;
    }

    if (!IsOne)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  v20 = 0;
LABEL_22:

  return v20;
}

- (id)interpolatedImageWithFirstImage:(id)a3 secondImage:(id)a4 blend:(double)a5
{
  v8 = a3;
  v9 = a4;
  if ([(BSUIVibrancyLUT *)self canReuseInterpolatedLUTWithBlend:v9 toIdentifier:a5])
  {
    v10 = [(BSUIVibrancyLUT *)self interpolatedLutImage];
  }

  else
  {
    v11 = MEMORY[0x1E69DCAB8];
    v12 = MEMORY[0x1E696AAE8];
    v13 = [(BSUIVibrancyLUT *)self bundleURL];
    v14 = [v12 bundleWithURL:v13];
    v15 = [v11 imageNamed:v8 inBundle:v14];

    v16 = MEMORY[0x1E69DCAB8];
    v17 = MEMORY[0x1E696AAE8];
    v18 = [(BSUIVibrancyLUT *)self bundleURL];
    v19 = [v17 bundleWithURL:v18];
    v20 = [v16 imageNamed:v9 inBundle:v19];

    v10 = 0;
    if (v15 && v20)
    {
      [v15 size];
      v22 = v21;
      [v15 size];
      v24 = v23;
      [v15 size];
      UIGraphicsBeginImageContext(v31);
      v25 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EB8]];
      *&v26 = a5;
      [v25 _solveForInput:v26];
      v28 = v27;
      [v15 drawInRect:0 blendMode:0.0 alpha:{0.0, v22, v24, 1.0}];
      [v20 drawInRect:0 blendMode:0.0 alpha:{0.0, v22, v24, v28}];
      v10 = UIGraphicsGetImageFromCurrentImageContext();
      UIGraphicsEndImageContext();
      [(BSUIVibrancyLUT *)self setInterpolatedLutImage:v10];
    }
  }

  return v10;
}

- (NSString)groupName
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(BSUIVibrancyLUT *)self lutIdentifier];
  v5 = [(BSUIVibrancyLUT *)self bundleURL];
  v6 = [v3 stringWithFormat:@"%@%@", v4, v5];

  return v6;
}

- (id)copyWithLuminanceReduced:(BOOL)a3
{
  v3 = a3;
  v5 = self->_lutIdentifier;
  lutIdentifier = self->_lutIdentifier;
  if (lutIdentifier)
  {
    v7 = [(NSString *)lutIdentifier hasPrefix:@"luminance_reduced_"];
    if (v7 != v3)
    {
      v8 = self->_lutIdentifier;
      if (v7)
      {
        v9 = -[NSString substringFromIndex:](v8, "substringFromIndex:", [@"luminance_reduced_" length]);
      }

      else
      {
        v9 = v8;
      }

      v10 = v9;
      v11 = BSLutIdentifierForName(v9, v3);

      v5 = v11;
    }
  }

  v12 = self->_toIdentifier;
  toIdentifier = self->_toIdentifier;
  if (toIdentifier)
  {
    v14 = [(NSString *)toIdentifier hasPrefix:@"luminance_reduced_"];
    if (v14 != v3)
    {
      v15 = self->_toIdentifier;
      if (v14)
      {
        v16 = -[NSString substringFromIndex:](v15, "substringFromIndex:", [@"luminance_reduced_" length]);
      }

      else
      {
        v16 = v15;
      }

      v17 = v16;
      v18 = BSLutIdentifierForName(v16, v3);

      v12 = v18;
    }
  }

  v19 = [BSUIVibrancyLUT alloc];
  v20 = [(BSUIVibrancyLUT *)self bundleURL];
  [(BSUIVibrancyLUT *)self blend];
  v21 = [(BSUIVibrancyLUT *)v19 initWithIdentifier:v5 bundleURL:v20 blend:v12 toIdentifier:?];

  return v21;
}

- (id)copyWithBlend:(double)a3 toIdentifier:(id)a4
{
  v6 = a4;
  v7 = [BSUIVibrancyLUT alloc];
  v8 = [(BSUIVibrancyLUT *)self lutIdentifier];
  v9 = [(BSUIVibrancyLUT *)self bundleURL];
  v10 = [(BSUIVibrancyLUT *)v7 initWithIdentifier:v8 bundleURL:v9 blend:v6 toIdentifier:a3];

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v20 = 1;
  }

  else
  {
    v6 = v4;
    v7 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) != 0 && ([(BSUIVibrancyLUT *)self lutIdentifier], v9 = objc_claimAutoreleasedReturnValue(), [(BSUIVibrancyLUT *)v6 lutIdentifier], v10 = objc_claimAutoreleasedReturnValue(), v11 = BSEqualObjects(), v10, v9, v11) && ([(BSUIVibrancyLUT *)self bundleURL], v12 = objc_claimAutoreleasedReturnValue(), [(BSUIVibrancyLUT *)v6 bundleURL], v13 = objc_claimAutoreleasedReturnValue(), v14 = BSEqualObjects(), v13, v12, v14) && ([(BSUIVibrancyLUT *)self blend], [(BSUIVibrancyLUT *)v6 blend], BSFloatEqualToFloat()) && ([(BSUIVibrancyLUT *)self toIdentifier], v15 = objc_claimAutoreleasedReturnValue(), [(BSUIVibrancyLUT *)v6 toIdentifier], v16 = objc_claimAutoreleasedReturnValue(), v17 = BSEqualObjects(), v16, v15, v17))
    {
      v18 = [(BSUIVibrancyLUT *)self interpolatedLutImage];
      v19 = [(BSUIVibrancyLUT *)v6 interpolatedLutImage];
      v20 = BSEqualObjects();
    }

    else
    {
      v20 = 0;
    }
  }

  return v20;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E698E6B8] builder];
  v4 = [v3 appendString:self->_lutIdentifier];
  v5 = [v4 appendObject:self->_bundleURL];
  blend = self->_blend;
  *&blend = blend;
  v7 = [v5 appendFloat:blend];
  v8 = [v7 appendString:self->_toIdentifier];
  v9 = [v8 hash];

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [BSUIVibrancyLUT alloc];
  lutIdentifier = self->_lutIdentifier;
  bundleURL = self->_bundleURL;
  blend = self->_blend;
  toIdentifier = self->_toIdentifier;

  return [(BSUIVibrancyLUT *)v4 initWithIdentifier:lutIdentifier bundleURL:bundleURL blend:toIdentifier toIdentifier:blend];
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {

    MEMORY[0x1EEDF0408](a1, 0);
  }
}

- (id)membersForCoder
{
  v16[4] = *MEMORY[0x1E69E9840];
  if (objc_opt_class())
  {
    if (objc_opt_isKindOfClass())
    {
      v2 = @"_lutIdentifier";
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
  v4 = _BSAutoMember();
  v16[0] = v4;
  if (objc_opt_class())
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = @"_bundleURL";
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  v7 = _BSAutoMember();
  v16[1] = v7;
  if (objc_opt_class())
  {
    if (objc_opt_isKindOfClass())
    {
      v8 = @"_blend";
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  v10 = _BSAutoMember();
  v16[2] = v10;
  if (objc_opt_class())
  {
    if (objc_opt_isKindOfClass())
    {
      v11 = @"_toIdentifier";
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;
  v13 = _BSAutoMember();
  v16[3] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:{4, 0}];

  return v14;
}

- (void)appendDescriptionToFormatter:(id)a3
{
  v9 = a3;
  v4 = [(BSUIVibrancyLUT *)self lutIdentifier];
  [v9 appendString:v4 withName:@"lutIdentifier"];

  v5 = [(BSUIVibrancyLUT *)self bundleURL];
  v6 = [v9 appendObject:v5 withName:@"bundleURL"];

  [(BSUIVibrancyLUT *)self blend];
  v7 = [v9 appendFloat:@"blend" withName:?];
  v8 = [(BSUIVibrancyLUT *)self toIdentifier];
  [v9 appendString:v8 withName:@"toIdentifier"];
}

@end