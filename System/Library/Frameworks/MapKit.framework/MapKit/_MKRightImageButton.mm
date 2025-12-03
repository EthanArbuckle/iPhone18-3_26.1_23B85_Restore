@interface _MKRightImageButton
- (CGSize)intrinsicContentSize;
- (_MKRightImageButton)initWithFrame:(CGRect)frame;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setImage:(id)image;
- (void)setTarget:(id)target action:(SEL)action;
- (void)setTitle:(id)title;
- (void)updateConstraints;
@end

@implementation _MKRightImageButton

- (CGSize)intrinsicContentSize
{
  titleLabel = self->_titleLabel;
  imageView = self->_imageView;
  if (titleLabel)
  {
    if (imageView)
    {
      [(_MKUILabel *)titleLabel intrinsicContentSize];
      v6 = v5;
      v8 = v7;
      [(UIImageView *)self->_imageView intrinsicContentSize];
      if (v6 > v9)
      {
        v9 = v6;
      }

      if (v8 > v10)
      {
        v10 = v8;
      }

      goto LABEL_12;
    }

    imageView = titleLabel;
  }

  [(UIImageView *)imageView intrinsicContentSize];
LABEL_12:
  result.height = v10;
  result.width = v9;
  return result;
}

- (void)setImage:(id)image
{
  [(UIImageView *)self->_imageView setImage:?];
  [(UIImageView *)self->_imageView setHidden:image == 0];
  [(_MKUILabel *)self->_titleLabel setText:0];
  if ([(UIImageView *)self->_imageView isHidden])
  {
    [(UIImageView *)self->_imageView removeFromSuperview];
  }

  else
  {
    [(_MKRightImageButton *)self addSubview:self->_imageView];
  }

  [(UIView *)self _mapkit_setNeedsUpdateConstraints];
}

- (void)setTitle:(id)title
{
  [(_MKUILabel *)self->_titleLabel setText:title];

  [(UIView *)self _mapkit_setNeedsUpdateConstraints];
}

- (void)updateConstraints
{
  v15[2] = *MEMORY[0x1E69E9840];
  if (!self->_titleConstraintsAdded)
  {
    self->_titleConstraintsAdded = 1;
    v3 = MEMORY[0x1E696ACD8];
    leadingAnchor = [(_MKUILabel *)self->_titleLabel leadingAnchor];
    leadingAnchor2 = [(_MKRightImageButton *)self leadingAnchor];
    v6 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v15[0] = v6;
    centerYAnchor = [(_MKUILabel *)self->_titleLabel centerYAnchor];
    centerYAnchor2 = [(_MKRightImageButton *)self centerYAnchor];
    v9 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v15[1] = v9;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:2];
    [v3 activateConstraints:v10];
  }

  isHidden = [(UIImageView *)self->_imageView isHidden];
  if (isHidden)
  {
    v12 = &OBJC_IVAR____MKRightImageButton__titleAndImageConstraints;
  }

  else
  {
    v12 = &OBJC_IVAR____MKRightImageButton__titleOnlyConstraints;
  }

  if (isHidden)
  {
    v13 = &OBJC_IVAR____MKRightImageButton__titleOnlyConstraints;
  }

  else
  {
    v13 = &OBJC_IVAR____MKRightImageButton__titleAndImageConstraints;
  }

  [MEMORY[0x1E696ACD8] deactivateConstraints:*(&self->super.super.super.super.isa + *v12)];
  [MEMORY[0x1E696ACD8] activateConstraints:*(&self->super.super.super.super.isa + *v13)];
  v14.receiver = self;
  v14.super_class = _MKRightImageButton;
  [(_MKRightImageButton *)&v14 updateConstraints];
}

- (void)setHighlighted:(BOOL)highlighted
{
  if (self->_highlighted != highlighted)
  {
    self->_highlighted = highlighted;
    titleLabel = self->_titleLabel;
    if (highlighted)
    {
      v4 = &__block_literal_global_5;
    }

    else
    {
      v4 = &__block_literal_global_7_18026;
    }

    [(_MKUILabel *)titleLabel set_mapkit_themeColorProvider:v4];
  }
}

- (void)setTarget:(id)target action:(SEL)action
{
  targetCopy = target;
  v7 = targetCopy;
  gestureRecognizer = self->_gestureRecognizer;
  if (targetCopy && action)
  {
    v12 = targetCopy;
    if (!gestureRecognizer)
    {
      v9 = objc_alloc_init(MEMORY[0x1E69DD060]);
      v10 = self->_gestureRecognizer;
      self->_gestureRecognizer = v9;

      [(_MKRightImageButton *)self addGestureRecognizer:self->_gestureRecognizer];
      v7 = v12;
      gestureRecognizer = self->_gestureRecognizer;
    }

    [(UITapGestureRecognizer *)gestureRecognizer addTarget:v7 action:action];
  }

  else
  {
    if (!gestureRecognizer)
    {
      goto LABEL_9;
    }

    v12 = targetCopy;
    [(_MKRightImageButton *)self removeGestureRecognizer:?];
    v11 = self->_gestureRecognizer;
    self->_gestureRecognizer = 0;
  }

  v7 = v12;
LABEL_9:
}

- (_MKRightImageButton)initWithFrame:(CGRect)frame
{
  v29[1] = *MEMORY[0x1E69E9840];
  v27.receiver = self;
  v27.super_class = _MKRightImageButton;
  v3 = [(_MKRightImageButton *)&v27 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(_MKUILabel);
    titleLabel = v3->_titleLabel;
    v3->_titleLabel = v4;

    [(_MKUILabel *)v3->_titleLabel setAdjustsFontSizeToFitWidth:1];
    [(_MKUILabel *)v3->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(_MKRightImageButton *)v3 addSubview:v3->_titleLabel];
    v6 = objc_alloc(MEMORY[0x1E69DCAE0]);
    v7 = [v6 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    imageView = v3->_imageView;
    v3->_imageView = v7;

    [(UIImageView *)v3->_imageView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIImageView *)v3->_imageView setHidden:1];
    [(UIImageView *)v3->_imageView setContentMode:1];
    leadingAnchor = [(UIImageView *)v3->_imageView leadingAnchor];
    trailingAnchor = [(_MKUILabel *)v3->_titleLabel trailingAnchor];
    v11 = [leadingAnchor constraintEqualToAnchor:trailingAnchor constant:4.0];

    LODWORD(v12) = 1148829696;
    [v11 setPriority:v12];
    trailingAnchor2 = [(_MKUILabel *)v3->_titleLabel trailingAnchor];
    trailingAnchor3 = [(_MKRightImageButton *)v3 trailingAnchor];
    v15 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3];
    v29[0] = v15;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:1];
    titleOnlyConstraints = v3->_titleOnlyConstraints;
    v3->_titleOnlyConstraints = v16;

    v28[0] = v11;
    centerYAnchor = [(UIImageView *)v3->_imageView centerYAnchor];
    centerYAnchor2 = [(_MKUILabel *)v3->_titleLabel centerYAnchor];
    v20 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v28[1] = v20;
    trailingAnchor4 = [(UIImageView *)v3->_imageView trailingAnchor];
    trailingAnchor5 = [(_MKRightImageButton *)v3 trailingAnchor];
    v23 = [trailingAnchor4 constraintEqualToAnchor:trailingAnchor5];
    v28[2] = v23;
    v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:3];
    titleAndImageConstraints = v3->_titleAndImageConstraints;
    v3->_titleAndImageConstraints = v24;

    [(_MKUILabel *)v3->_titleLabel set_mapkit_themeColorProvider:&__block_literal_global_18032];
    [(UIView *)v3 _mapkit_setNeedsUpdateConstraints];
  }

  return v3;
}

@end