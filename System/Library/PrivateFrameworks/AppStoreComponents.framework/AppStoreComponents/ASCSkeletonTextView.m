@interface ASCSkeletonTextView
- (ASCSkeletonTextView)initWithCoder:(id)a3;
- (ASCSkeletonTextView)initWithFrame:(CGRect)a3 textContainer:(id)a4;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (UIColor)skeletonColor;
- (void)drawRect:(CGRect)a3;
- (void)setSkeleton:(id)a3;
- (void)setSkeletonColor:(id)a3;
- (void)setSkeletonNumberOfLines:(int64_t)a3;
@end

@implementation ASCSkeletonTextView

- (ASCSkeletonTextView)initWithFrame:(CGRect)a3 textContainer:(id)a4
{
  v5.receiver = self;
  v5.super_class = ASCSkeletonTextView;
  result = [(ASCSkeletonTextView *)&v5 initWithFrame:a4 textContainer:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (result)
  {
    result->_skeletonNumberOfLines = 1;
  }

  return result;
}

- (ASCSkeletonTextView)initWithCoder:(id)a3
{
  [(ASCSkeletonTextView *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (void)setSkeletonNumberOfLines:(int64_t)a3
{
  if (self->_skeletonNumberOfLines != a3)
  {
    self->_skeletonNumberOfLines = a3;
    [(ASCSkeletonTextView *)self invalidateIntrinsicContentSize];

    [(ASCSkeletonTextView *)self setNeedsDisplay];
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
    v3 = [(ASCSkeletonTextView *)self textColor];
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

    [(ASCSkeletonTextView *)self setNeedsDisplay];
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

    [(ASCSkeletonTextView *)self invalidateIntrinsicContentSize];
    [(ASCSkeletonTextView *)self setNeedsDisplay];
  }

LABEL_7:

  MEMORY[0x2821F96F8]();
}

- (CGSize)intrinsicContentSize
{
  v3 = [(ASCSkeletonTextView *)self skeleton];

  if (v3)
  {
    v4 = *MEMORY[0x277D77260];
    v5 = [(ASCSkeletonTextView *)self skeleton];
    [v5 skeletonHeightFromContext:self];
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

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [(ASCSkeletonTextView *)self skeleton];

  if (v6)
  {
    v7 = [(ASCSkeletonTextView *)self skeleton];
    [v7 skeletonHeightFromContext:self];
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

- (void)drawRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [(ASCSkeletonTextView *)self skeleton];

  if (v8)
  {
    v9 = [(ASCSkeletonTextView *)self skeleton];
    [v9 drawSkeletonInRect:self usingSkeletonContext:{x, y, width, height}];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = ASCSkeletonTextView;
    [(ASCSkeletonTextView *)&v10 drawRect:x, y, width, height];
  }
}

@end