@interface ASCSkeletonLabel
- (ASCSkeletonLabel)initWithCoder:(id)a3;
- (ASCSkeletonLabel)initWithFrame:(CGRect)a3;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (UIColor)skeletonColor;
- (double)_baselineOffsetFromBottom;
- (double)_firstBaselineOffsetFromTop;
- (void)drawRect:(CGRect)a3;
- (void)setSkeleton:(id)a3;
- (void)setSkeletonColor:(id)a3;
- (void)setSkeletonNumberOfLines:(int64_t)a3;
@end

@implementation ASCSkeletonLabel

- (ASCSkeletonLabel)initWithFrame:(CGRect)a3
{
  v4.receiver = self;
  v4.super_class = ASCSkeletonLabel;
  result = [(ASCSkeletonLabel *)&v4 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (result)
  {
    result->_skeletonNumberOfLines = 1;
  }

  return result;
}

- (ASCSkeletonLabel)initWithCoder:(id)a3
{
  [(ASCSkeletonLabel *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (double)_firstBaselineOffsetFromTop
{
  v3 = [(ASCSkeletonLabel *)self skeleton];

  if (v3)
  {
    v4 = [(ASCSkeletonLabel *)self font];
    [v4 ascender];
    UIRoundToViewScale();
    v6 = v5;

    return v6;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = ASCSkeletonLabel;
    [(ASCSkeletonLabel *)&v8 _firstBaselineOffsetFromTop];
  }

  return result;
}

- (double)_baselineOffsetFromBottom
{
  v3 = [(ASCSkeletonLabel *)self skeleton];

  if (v3)
  {
    v4 = [(ASCSkeletonLabel *)self font];
    [v4 descender];

    UIRoundToViewScale();
  }

  else
  {
    v6.receiver = self;
    v6.super_class = ASCSkeletonLabel;
    [(ASCSkeletonLabel *)&v6 _baselineOffsetFromBottom];
  }

  return result;
}

- (void)setSkeletonNumberOfLines:(int64_t)a3
{
  if (self->_skeletonNumberOfLines != a3)
  {
    self->_skeletonNumberOfLines = a3;
    [(ASCSkeletonLabel *)self invalidateIntrinsicContentSize];

    [(ASCSkeletonLabel *)self setNeedsDisplay];
  }
}

- (UIColor)skeletonColor
{
  skeletonColor = self->_skeletonColor;
  if (skeletonColor)
  {
    v3 = skeletonColor;
  }

  else
  {
    if ([(ASCSkeletonLabel *)self _textColorFollowsTintColor])
    {
      [(ASCSkeletonLabel *)self tintColor];
    }

    else
    {
      [(ASCSkeletonLabel *)self textColor];
    }
    v3 = ;
  }

  return v3;
}

- (void)setSkeletonColor:(id)a3
{
  v4 = a3;
  skeletonColor = self->_skeletonColor;
  v9 = v4;
  if (!v4 || !skeletonColor)
  {
    if (skeletonColor == v4)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v6 = [(UIColor *)skeletonColor isEqual:v4];
  v4 = v9;
  if ((v6 & 1) == 0)
  {
LABEL_6:
    v7 = [(UIColor *)v4 copy];
    v8 = self->_skeletonColor;
    self->_skeletonColor = v7;

    [(ASCSkeletonLabel *)self setNeedsDisplay];
  }

LABEL_7:

  MEMORY[0x2821F96F8]();
}

- (void)setSkeleton:(id)a3
{
  v4 = a3;
  skeleton = self->_skeleton;
  v9 = v4;
  if (!v4 || !skeleton)
  {
    if (skeleton == v4)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v6 = [(ASCContentSkeleton *)skeleton isEqual:v4];
  v4 = v9;
  if (!v6)
  {
LABEL_6:
    v7 = [(ASCContentSkeleton *)v4 copy];
    v8 = self->_skeleton;
    self->_skeleton = v7;

    [(ASCSkeletonLabel *)self invalidateIntrinsicContentSize];
    [(ASCSkeletonLabel *)self setNeedsDisplay];
  }

LABEL_7:

  MEMORY[0x2821F96F8]();
}

- (CGSize)intrinsicContentSize
{
  v3 = [(ASCSkeletonLabel *)self skeleton];

  if (v3)
  {
    v4 = *MEMORY[0x277D77260];
    v5 = [(ASCSkeletonLabel *)self skeleton];
    [v5 skeletonHeightFromContext:self];
    v7 = v6;
  }

  else
  {
    v12.receiver = self;
    v12.super_class = ASCSkeletonLabel;
    [(ASCSkeletonLabel *)&v12 intrinsicContentSize];
    v4 = v8;
    v7 = v9;
  }

  v10 = v4;
  v11 = v7;
  result.height = v11;
  result.width = v10;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [(ASCSkeletonLabel *)self skeleton];

  if (v6)
  {
    v7 = [(ASCSkeletonLabel *)self skeleton];
    [v7 skeletonHeightFromContext:self];
    v9 = v8;
  }

  else
  {
    v14.receiver = self;
    v14.super_class = ASCSkeletonLabel;
    [(ASCSkeletonLabel *)&v14 sizeThatFits:width, height];
    width = v10;
    v9 = v11;
  }

  v12 = width;
  v13 = v9;
  result.height = v13;
  result.width = v12;
  return result;
}

- (void)drawRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [(ASCSkeletonLabel *)self skeleton];

  if (v8)
  {
    v9 = [(ASCSkeletonLabel *)self skeleton];
    [v9 drawSkeletonInRect:self usingSkeletonContext:{x, y, width, height}];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = ASCSkeletonLabel;
    [(ASCSkeletonLabel *)&v10 drawRect:x, y, width, height];
  }
}

@end