@interface AutolayoutImageView
- (AutolayoutImageView)initWithCoder:(id)coder;
- (AutolayoutImageView)initWithFrame:(CGRect)frame;
- (AutolayoutImageView)initWithImage:(id)image;
- (void)setAspectRatioConstraintPriority:(float)priority;
- (void)setImage:(id)image;
@end

@implementation AutolayoutImageView

- (void)setAspectRatioConstraintPriority:(float)priority
{
  if (self->_aspectRatioConstraintPriority != priority)
  {
    self->_aspectRatioConstraintPriority = priority;
    image = [(AutolayoutImageView *)self image];
    [(AutolayoutImageView *)self setImage:image];
  }
}

- (void)setImage:(id)image
{
  imageCopy = image;
  if (self->_aspectConstraint)
  {
    [(AutolayoutImageView *)self removeConstraint:?];
    aspectConstraint = self->_aspectConstraint;
    self->_aspectConstraint = 0;
  }

  v16.receiver = self;
  v16.super_class = AutolayoutImageView;
  [(AutolayoutImageView *)&v16 setImage:imageCopy];
  if (imageCopy)
  {
    heightAnchor = [(AutolayoutImageView *)self heightAnchor];
    widthAnchor = [(AutolayoutImageView *)self widthAnchor];
    [imageCopy size];
    v9 = v8;
    [imageCopy size];
    v11 = v9 / v10;
    [(AutolayoutImageView *)self aspectRatioConstraintPriority];
    LODWORD(v13) = v12;
    v14 = [heightAnchor constraintEqualToAnchor:widthAnchor multiplier:v11 priority:v13];
    v15 = self->_aspectConstraint;
    self->_aspectConstraint = v14;

    [(AutolayoutImageView *)self addConstraint:self->_aspectConstraint];
  }
}

- (AutolayoutImageView)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = AutolayoutImageView;
  result = [(AutolayoutImageView *)&v4 initWithCoder:coder];
  if (result)
  {
    result->_aspectRatioConstraintPriority = 1000.0;
  }

  return result;
}

- (AutolayoutImageView)initWithFrame:(CGRect)frame
{
  v4.receiver = self;
  v4.super_class = AutolayoutImageView;
  result = [(AutolayoutImageView *)&v4 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (result)
  {
    result->_aspectRatioConstraintPriority = 1000.0;
  }

  return result;
}

- (AutolayoutImageView)initWithImage:(id)image
{
  v4.receiver = self;
  v4.super_class = AutolayoutImageView;
  result = [(AutolayoutImageView *)&v4 initWithImage:image];
  if (result)
  {
    result->_aspectRatioConstraintPriority = 1000.0;
  }

  return result;
}

@end