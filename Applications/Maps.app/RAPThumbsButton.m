@interface RAPThumbsButton
+ (id)buttonWithType:(int64_t)a3;
- (void)_updateColors;
- (void)layoutSubviews;
- (void)setHighlighted:(BOOL)a3;
- (void)setSelected:(BOOL)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation RAPThumbsButton

+ (id)buttonWithType:(int64_t)a3
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___RAPThumbsButton;
  v3 = objc_msgSendSuper2(&v5, "buttonWithType:", a3);
  [v3 _updateColors];

  return v3;
}

- (void)_updateColors
{
  if (([(RAPThumbsButton *)self isHighlighted]& 1) != 0 || ([(RAPThumbsButton *)self isSelected]& 1) != 0)
  {
    v3 = [(RAPThumbsButton *)self theme];
    v4 = [v3 keyColor];
    [(RAPThumbsButton *)self setBackgroundColor:v4];

    v5 = +[UIColor whiteColor];
  }

  else
  {
    v6 = +[UIColor tertiarySystemFillColor];
    [(RAPThumbsButton *)self setBackgroundColor:v6];

    v5 = +[UIColor secondaryLabelColor];
  }

  v8 = v5;
  v7 = [(RAPThumbsButton *)self imageView];
  [v7 setTintColor:v8];
}

- (void)traitCollectionDidChange:(id)a3
{
  v8.receiver = self;
  v8.super_class = RAPThumbsButton;
  v4 = a3;
  [(RAPThumbsButton *)&v8 traitCollectionDidChange:v4];
  v5 = [(RAPThumbsButton *)self traitCollection:v8.receiver];
  v6 = [v5 userInterfaceStyle];
  v7 = [v4 userInterfaceStyle];

  if (v6 != v7)
  {
    [(RAPThumbsButton *)self _updateColors];
  }
}

- (void)setHighlighted:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = RAPThumbsButton;
  [(RAPThumbsButton *)&v4 setHighlighted:a3];
  [(RAPThumbsButton *)self _updateColors];
}

- (void)setSelected:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = RAPThumbsButton;
  [(RAPThumbsButton *)&v4 setSelected:a3];
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