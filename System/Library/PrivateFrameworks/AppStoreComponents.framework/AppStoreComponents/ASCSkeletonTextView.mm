@interface ASCSkeletonTextView
- (ASCSkeletonTextView)initWithCoder:(id)coder;
- (ASCSkeletonTextView)initWithFrame:(CGRect)frame textContainer:(id)container;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (UIColor)skeletonColor;
- (void)drawRect:(CGRect)rect;
- (void)setSkeleton:(id)skeleton;
- (void)setSkeletonColor:(id)color;
- (void)setSkeletonNumberOfLines:(int64_t)lines;
@end

@implementation ASCSkeletonTextView

- (ASCSkeletonTextView)initWithFrame:(CGRect)frame textContainer:(id)container
{
  v5.receiver = self;
  v5.super_class = ASCSkeletonTextView;
  result = [(ASCSkeletonTextView *)&v5 initWithFrame:container textContainer:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (result)
  {
    result->_skeletonNumberOfLines = 1;
  }

  return result;
}

- (ASCSkeletonTextView)initWithCoder:(id)coder
{
  [(ASCSkeletonTextView *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (void)setSkeletonNumberOfLines:(int64_t)lines
{
  if (self->_skeletonNumberOfLines != lines)
  {
    self->_skeletonNumberOfLines = lines;
    [(ASCSkeletonTextView *)self invalidateIntrinsicContentSize];

    [(ASCSkeletonTextView *)self setNeedsDisplay];
  }
}

- (UIColor)skeletonColor
{
  skeletonColor = self->_skeletonColor;
  if (skeletonColor)
  {
    textColor = skeletonColor;
  }

  else
  {
    textColor = [(ASCSkeletonTextView *)self textColor];
  }

  return textColor;
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

    [(ASCSkeletonTextView *)self setNeedsDisplay];
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

    [(ASCSkeletonTextView *)self invalidateIntrinsicContentSize];
    [(ASCSkeletonTextView *)self setNeedsDisplay];
  }

LABEL_7:

  MEMORY[0x2821F96F8]();
}

- (CGSize)intrinsicContentSize
{
  skeleton = [(ASCSkeletonTextView *)self skeleton];

  if (skeleton)
  {
    v4 = *MEMORY[0x277D77260];
    skeleton2 = [(ASCSkeletonTextView *)self skeleton];
    [skeleton2 skeletonHeightFromContext:self];
    v7 = v6;
  }

  else
  {
    v12.receiver = self;
    v12.super_class = ASCSkeletonTextView;
    [(ASCSkeletonTextView *)&v12 intrinsicContentSize];
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
  skeleton = [(ASCSkeletonTextView *)self skeleton];

  if (skeleton)
  {
    skeleton2 = [(ASCSkeletonTextView *)self skeleton];
    [skeleton2 skeletonHeightFromContext:self];
    v9 = v8;
  }

  else
  {
    v14.receiver = self;
    v14.super_class = ASCSkeletonTextView;
    [(ASCSkeletonTextView *)&v14 sizeThatFits:width, height];
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
  skeleton = [(ASCSkeletonTextView *)self skeleton];

  if (skeleton)
  {
    skeleton2 = [(ASCSkeletonTextView *)self skeleton];
    [skeleton2 drawSkeletonInRect:self usingSkeletonContext:{x, y, width, height}];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = ASCSkeletonTextView;
    [(ASCSkeletonTextView *)&v10 drawRect:x, y, width, height];
  }
}

@end