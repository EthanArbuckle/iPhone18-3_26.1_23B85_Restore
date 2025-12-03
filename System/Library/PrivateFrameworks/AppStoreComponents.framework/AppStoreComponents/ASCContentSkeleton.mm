@interface ASCContentSkeleton
+ (id)absoluteSkeleton:(double)skeleton;
+ (id)fractionalSkeleton:(double)skeleton;
- (ASCContentSkeleton)initWithType:(int64_t)type rawValue:(double)value;
- (BOOL)isEqual:(id)equal;
- (CGRect)skeletonRectForBounds:(CGRect)bounds forLineNumber:(unint64_t)number usingSkeletonContext:(id)context;
- (double)skeletonHeightFromContext:(id)context;
- (double)widthThatFits:(CGSize)fits;
- (id)description;
- (int64_t)effectiveSkeletonAlignmentFromContext:(id)context;
- (unint64_t)hash;
- (void)drawSkeletonInRect:(CGRect)rect usingSkeletonContext:(id)context;
@end

@implementation ASCContentSkeleton

+ (id)absoluteSkeleton:(double)skeleton
{
  v3 = [[self alloc] initWithType:0 rawValue:skeleton];

  return v3;
}

+ (id)fractionalSkeleton:(double)skeleton
{
  v3 = [[self alloc] initWithType:1 rawValue:skeleton];

  return v3;
}

- (ASCContentSkeleton)initWithType:(int64_t)type rawValue:(double)value
{
  v7.receiver = self;
  v7.super_class = ASCContentSkeleton;
  result = [(ASCContentSkeleton *)&v7 init];
  if (result)
  {
    result->_type = type;
    result->_rawValue = value;
  }

  return result;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(ASCHasher);
  [(ASCHasher *)v3 combineInteger:[(ASCContentSkeleton *)self type]];
  [(ASCContentSkeleton *)self rawValue];
  [(ASCHasher *)v3 combineDouble:?];
  finalizeHash = [(ASCHasher *)v3 finalizeHash];

  return finalizeHash;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = equalCopy;
  if (v5)
  {
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7 && (v8 = -[ASCContentSkeleton type](self, "type"), v8 == [v7 type]))
  {
    [(ASCContentSkeleton *)self rawValue];
    v10 = v9;
    [v7 rawValue];
    v12 = v10 == v11;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)description
{
  v3 = [[ASCDescriber alloc] initWithObject:self];
  type = [(ASCContentSkeleton *)self type];
  if (type)
  {
    if (type != 1)
    {
      goto LABEL_6;
    }

    v5 = @"fractional";
  }

  else
  {
    v5 = @"absolute";
  }

  [(ASCContentSkeleton *)self rawValue];
  [(ASCDescriber *)v3 addDouble:v5 withName:?];
LABEL_6:
  finalizeDescription = [(ASCDescriber *)v3 finalizeDescription];

  return finalizeDescription;
}

- (double)widthThatFits:(CGSize)fits
{
  width = fits.width;
  v5 = [(ASCContentSkeleton *)self type:fits.width];
  if (v5 == 1)
  {
    [(ASCContentSkeleton *)self rawValue];
    return ceil(width * v7);
  }

  else if (!v5)
  {
    [(ASCContentSkeleton *)self rawValue];
    if (width < result)
    {
      return width;
    }
  }

  return result;
}

- (double)skeletonHeightFromContext:(id)context
{
  contextCopy = context;
  font = [contextCopy font];
  [font lineHeight];
  v6 = v5;
  skeletonNumberOfLines = [contextCopy skeletonNumberOfLines];

  if (skeletonNumberOfLines <= 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = skeletonNumberOfLines;
  }

  v9 = v6 * v8;

  return v9;
}

- (int64_t)effectiveSkeletonAlignmentFromContext:(id)context
{
  contextCopy = context;
  textAlignment = [contextCopy textAlignment];
  if (textAlignment == 4)
  {
    v5 = 2 * ([contextCopy effectiveUserInterfaceLayoutDirection] != 0);
  }

  else if (textAlignment == 2)
  {
    v5 = 2;
  }

  else
  {
    v5 = textAlignment == 1;
  }

  return v5;
}

- (CGRect)skeletonRectForBounds:(CGRect)bounds forLineNumber:(unint64_t)number usingSkeletonContext:(id)context
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  contextCopy = context;
  MinX = *MEMORY[0x277CBF3A0];
  v12 = *(MEMORY[0x277CBF3A0] + 8);
  [(ASCContentSkeleton *)self widthThatFits:width, height];
  v15 = v14;
  font = [contextCopy font];
  [font capHeight];
  v18 = ceil(v17);

  v19 = [(ASCContentSkeleton *)self effectiveSkeletonAlignmentFromContext:contextCopy];
  switch(v19)
  {
    case 2:
      v40.origin.x = x;
      v40.origin.y = y;
      v40.size.width = width;
      v40.size.height = height;
      MaxX = CGRectGetMaxX(v40);
      v41.origin.x = MinX;
      v41.origin.y = v12;
      v41.size.width = v15;
      v41.size.height = v18;
      MinX = MaxX - CGRectGetWidth(v41);
      break;
    case 1:
      v38.origin.x = x;
      v38.origin.y = y;
      v38.size.width = width;
      v38.size.height = height;
      MidX = CGRectGetMidX(v38);
      v39.origin.x = MinX;
      v39.origin.y = v12;
      v39.size.width = v15;
      v39.size.height = v18;
      MinX = floor(MidX + CGRectGetWidth(v39) * -0.5);
      break;
    case 0:
      v37.origin.x = x;
      v37.origin.y = y;
      v37.size.width = width;
      v37.size.height = height;
      MinX = CGRectGetMinX(v37);
      break;
  }

  v42.origin.x = x;
  v42.origin.y = y;
  v42.size.width = width;
  v42.size.height = height;
  MinY = CGRectGetMinY(v42);
  numberCopy = number;
  font2 = [contextCopy font];
  [font2 lineHeight];
  v24 = floor(MinY + numberCopy * v23);

  font3 = [contextCopy font];
  [font3 ascender];
  v27 = v26;
  font4 = [contextCopy font];
  [font4 capHeight];
  v30 = ceil(v27 - v29);

  v31 = MinX;
  v32 = v24 + v30;
  v33 = v15;
  v34 = v18;
  result.size.height = v34;
  result.size.width = v33;
  result.origin.y = v32;
  result.origin.x = v31;
  return result;
}

- (void)drawSkeletonInRect:(CGRect)rect usingSkeletonContext:(id)context
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  contextCopy = context;
  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextSaveGState(CurrentContext);
  skeletonNumberOfLines = [contextCopy skeletonNumberOfLines];
  v10 = 0;
  if (skeletonNumberOfLines <= 1)
  {
    v11 = 1;
  }

  else
  {
    v11 = skeletonNumberOfLines;
  }

  do
  {
    [(ASCContentSkeleton *)self skeletonRectForBounds:v10 forLineNumber:contextCopy usingSkeletonContext:x, y, width, height, *&height];
    v12 = v23.origin.x;
    v13 = v23.origin.y;
    v14 = v23.size.width;
    v15 = v23.size.height;
    v16 = CGRectGetWidth(v23);
    v24.origin.x = v12;
    v24.origin.y = v13;
    v24.size.width = v14;
    v24.size.height = v15;
    v17 = CGRectGetHeight(v24);
    if (v16 < v17)
    {
      v17 = v16;
    }

    v18 = [MEMORY[0x277D75208] bezierPathWithRoundedRect:v12 cornerRadius:{v13, v14, v15, v17 * 0.5}];
    skeletonColor = [contextCopy skeletonColor];
    [skeletonColor set];

    [v18 fill];
    ++v10;
  }

  while (v11 != v10);
  CGContextRestoreGState(CurrentContext);
}

@end