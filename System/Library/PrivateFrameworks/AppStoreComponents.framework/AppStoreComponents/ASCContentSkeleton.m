@interface ASCContentSkeleton
+ (id)absoluteSkeleton:(double)a3;
+ (id)fractionalSkeleton:(double)a3;
- (ASCContentSkeleton)initWithType:(int64_t)a3 rawValue:(double)a4;
- (BOOL)isEqual:(id)a3;
- (CGRect)skeletonRectForBounds:(CGRect)a3 forLineNumber:(unint64_t)a4 usingSkeletonContext:(id)a5;
- (double)skeletonHeightFromContext:(id)a3;
- (double)widthThatFits:(CGSize)a3;
- (id)description;
- (int64_t)effectiveSkeletonAlignmentFromContext:(id)a3;
- (unint64_t)hash;
- (void)drawSkeletonInRect:(CGRect)a3 usingSkeletonContext:(id)a4;
@end

@implementation ASCContentSkeleton

+ (id)absoluteSkeleton:(double)a3
{
  v3 = [[a1 alloc] initWithType:0 rawValue:a3];

  return v3;
}

+ (id)fractionalSkeleton:(double)a3
{
  v3 = [[a1 alloc] initWithType:1 rawValue:a3];

  return v3;
}

- (ASCContentSkeleton)initWithType:(int64_t)a3 rawValue:(double)a4
{
  v7.receiver = self;
  v7.super_class = ASCContentSkeleton;
  result = [(ASCContentSkeleton *)&v7 init];
  if (result)
  {
    result->_type = a3;
    result->_rawValue = a4;
  }

  return result;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(ASCHasher);
  [(ASCHasher *)v3 combineInteger:[(ASCContentSkeleton *)self type]];
  [(ASCContentSkeleton *)self rawValue];
  [(ASCHasher *)v3 combineDouble:?];
  v4 = [(ASCHasher *)v3 finalizeHash];

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = v4;
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
  v4 = [(ASCContentSkeleton *)self type];
  if (v4)
  {
    if (v4 != 1)
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
  v6 = [(ASCDescriber *)v3 finalizeDescription];

  return v6;
}

- (double)widthThatFits:(CGSize)a3
{
  width = a3.width;
  v5 = [(ASCContentSkeleton *)self type:a3.width];
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

- (double)skeletonHeightFromContext:(id)a3
{
  v3 = a3;
  v4 = [v3 font];
  [v4 lineHeight];
  v6 = v5;
  v7 = [v3 skeletonNumberOfLines];

  if (v7 <= 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = v7;
  }

  v9 = v6 * v8;

  return v9;
}

- (int64_t)effectiveSkeletonAlignmentFromContext:(id)a3
{
  v3 = a3;
  v4 = [v3 textAlignment];
  if (v4 == 4)
  {
    v5 = 2 * ([v3 effectiveUserInterfaceLayoutDirection] != 0);
  }

  else if (v4 == 2)
  {
    v5 = 2;
  }

  else
  {
    v5 = v4 == 1;
  }

  return v5;
}

- (CGRect)skeletonRectForBounds:(CGRect)a3 forLineNumber:(unint64_t)a4 usingSkeletonContext:(id)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v11 = a5;
  MinX = *MEMORY[0x277CBF3A0];
  v12 = *(MEMORY[0x277CBF3A0] + 8);
  [(ASCContentSkeleton *)self widthThatFits:width, height];
  v15 = v14;
  v16 = [v11 font];
  [v16 capHeight];
  v18 = ceil(v17);

  v19 = [(ASCContentSkeleton *)self effectiveSkeletonAlignmentFromContext:v11];
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
  v21 = a4;
  v22 = [v11 font];
  [v22 lineHeight];
  v24 = floor(MinY + v21 * v23);

  v25 = [v11 font];
  [v25 ascender];
  v27 = v26;
  v28 = [v11 font];
  [v28 capHeight];
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

- (void)drawSkeletonInRect:(CGRect)a3 usingSkeletonContext:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v21 = a4;
  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextSaveGState(CurrentContext);
  v9 = [v21 skeletonNumberOfLines];
  v10 = 0;
  if (v9 <= 1)
  {
    v11 = 1;
  }

  else
  {
    v11 = v9;
  }

  do
  {
    [(ASCContentSkeleton *)self skeletonRectForBounds:v10 forLineNumber:v21 usingSkeletonContext:x, y, width, height, *&height];
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
    v19 = [v21 skeletonColor];
    [v19 set];

    [v18 fill];
    ++v10;
  }

  while (v11 != v10);
  CGContextRestoreGState(CurrentContext);
}

@end