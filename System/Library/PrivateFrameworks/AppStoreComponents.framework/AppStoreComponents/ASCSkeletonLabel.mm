@interface ASCSkeletonLabel
- (ASCSkeletonLabel)initWithCoder:(id)coder;
- (ASCSkeletonLabel)initWithFrame:(CGRect)frame;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (UIColor)skeletonColor;
- (double)_baselineOffsetFromBottom;
- (double)_firstBaselineOffsetFromTop;
- (void)drawRect:(CGRect)rect;
- (void)setSkeleton:(id)skeleton;
- (void)setSkeletonColor:(id)color;
- (void)setSkeletonNumberOfLines:(int64_t)lines;
@end

@implementation ASCSkeletonLabel

- (ASCSkeletonLabel)initWithFrame:(CGRect)frame
{
  v4.receiver = self;
  v4.super_class = ASCSkeletonLabel;
  result = [(ASCSkeletonLabel *)&v4 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (result)
  {
    result->_skeletonNumberOfLines = 1;
  }

  return result;
}

- (ASCSkeletonLabel)initWithCoder:(id)coder
{
  [(ASCSkeletonLabel *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (double)_firstBaselineOffsetFromTop
{
  skeleton = [(ASCSkeletonLabel *)self skeleton];

  if (skeleton)
  {
    font = [(ASCSkeletonLabel *)self font];
    [font ascender];
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
  skeleton = [(ASCSkeletonLabel *)self skeleton];

  if (skeleton)
  {
    font = [(ASCSkeletonLabel *)self font];
    [font descender];

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

- (void)setSkeletonNumberOfLines:(int64_t)lines
{
  if (self->_skeletonNumberOfLines != lines)
  {
    self->_skeletonNumberOfLines = lines;
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

- (void)setSkeletonColor:(id)color
{
  colorCopy = color;
  skeletonColor = self->_skeletonColor;
  v9 = colorCopy;
  if (!colorCopy || !skeletonColor)
  {
    if (skeletonColor == colorCopy)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v6 = [(UIColor *)skeletonColor isEqual:colorCopy];
  colorCopy = v9;
  if ((v6 & 1) == 0)
  {
LABEL_6:
    v7 = [(UIColor *)colorCopy copy];
    v8 = self->_skeletonColor;
    self->_skeletonColor = v7;

    [(ASCSkeletonLabel *)self setNeedsDisplay];
  }

LABEL_7:

  MEMORY[0x2821F96F8]();
}

- (void)setSkeleton:(id)skeleton
{
  skeletonCopy = skeleton;
  skeleton = self->_skeleton;
  v9 = skeletonCopy;
  if (!skeletonCopy || !skeleton)
  {
    if (skeleton == skeletonCopy)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v6 = [(ASCContentSkeleton *)skeleton isEqual:skeletonCopy];
  skeletonCopy = v9;
  if (!v6)
  {
LABEL_6:
    v7 = [(ASCContentSkeleton *)skeletonCopy copy];
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
  skeleton = [(ASCSkeletonLabel *)self skeleton];

  if (skeleton)
  {
    v4 = *MEMORY[0x277D77260];
    skeleton2 = [(ASCSkeletonLabel *)self skeleton];
    [skeleton2 skeletonHeightFromContext:self];
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

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  skeleton = [(ASCSkeletonLabel *)self skeleton];

  if (skeleton)
  {
    skeleton2 = [(ASCSkeletonLabel *)self skeleton];
    [skeleton2 skeletonHeightFromContext:self];
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

- (void)drawRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  skeleton = [(ASCSkeletonLabel *)self skeleton];

  if (skeleton)
  {
    skeleton2 = [(ASCSkeletonLabel *)self skeleton];
    [skeleton2 drawSkeletonInRect:self usingSkeletonContext:{x, y, width, height}];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = ASCSkeletonLabel;
    [(ASCSkeletonLabel *)&v10 drawRect:x, y, width, height];
  }
}

@end