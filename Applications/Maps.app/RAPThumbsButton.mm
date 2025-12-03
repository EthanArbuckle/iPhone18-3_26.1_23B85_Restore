@interface RAPThumbsButton
+ (id)buttonWithType:(int64_t)type;
- (void)_updateColors;
- (void)layoutSubviews;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setSelected:(BOOL)selected;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation RAPThumbsButton

+ (id)buttonWithType:(int64_t)type
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___RAPThumbsButton;
  v3 = objc_msgSendSuper2(&v5, "buttonWithType:", type);
  [v3 _updateColors];

  return v3;
}

- (void)_updateColors
{
  if (([(RAPThumbsButton *)self isHighlighted]& 1) != 0 || ([(RAPThumbsButton *)self isSelected]& 1) != 0)
  {
    theme = [(RAPThumbsButton *)self theme];
    keyColor = [theme keyColor];
    [(RAPThumbsButton *)self setBackgroundColor:keyColor];

    v5 = +[UIColor whiteColor];
  }

  else
  {
    v6 = +[UIColor tertiarySystemFillColor];
    [(RAPThumbsButton *)self setBackgroundColor:v6];

    v5 = +[UIColor secondaryLabelColor];
  }

  v8 = v5;
  imageView = [(RAPThumbsButton *)self imageView];
  [imageView setTintColor:v8];
}

- (void)traitCollectionDidChange:(id)change
{
  v8.receiver = self;
  v8.super_class = RAPThumbsButton;
  changeCopy = change;
  [(RAPThumbsButton *)&v8 traitCollectionDidChange:changeCopy];
  v5 = [(RAPThumbsButton *)self traitCollection:v8.receiver];
  userInterfaceStyle = [v5 userInterfaceStyle];
  userInterfaceStyle2 = [changeCopy userInterfaceStyle];

  if (userInterfaceStyle != userInterfaceStyle2)
  {
    [(RAPThumbsButton *)self _updateColors];
  }
}

- (void)setHighlighted:(BOOL)highlighted
{
  v4.receiver = self;
  v4.super_class = RAPThumbsButton;
  [(RAPThumbsButton *)&v4 setHighlighted:highlighted];
  [(RAPThumbsButton *)self _updateColors];
}

- (void)setSelected:(BOOL)selected
{
  v4.receiver = self;
  v4.super_class = RAPThumbsButton;
  [(RAPThumbsButton *)&v4 setSelected:selected];
  [(RAPThumbsButton *)self _updateColors];
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = RAPThumbsButton;
  [(RAPThumbsButton *)&v4 layoutSubviews];
  [(RAPThumbsButton *)self frame];
  [(RAPThumbsButton *)self _setCornerRadius:v3 * 0.5];
}

@end