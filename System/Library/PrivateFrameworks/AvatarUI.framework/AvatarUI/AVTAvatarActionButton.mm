@interface AVTAvatarActionButton
+ (id)defaultButtonWithAction:(id)a3;
+ (id)destructiveButtonWithAction:(id)a3;
- (AVTAvatarActionButton)initWithFrame:(CGRect)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setIsDestructive:(BOOL)a3;
@end

@implementation AVTAvatarActionButton

+ (id)defaultButtonWithAction:(id)a3
{
  v3 = [AVTAvatarActionButton buttonWithAction:a3];
  v4 = +[AVTUIFontRepository avatarActionButtonTitleFont];
  v5 = [v3 titleLabel];
  [v5 setFont:v4];

  return v3;
}

+ (id)destructiveButtonWithAction:(id)a3
{
  v3 = [AVTAvatarActionButton buttonWithAction:a3];
  v4 = +[AVTUIFontRepository avatarActionButtonTitleFont];
  v5 = [v3 titleLabel];
  [v5 setFont:v4];

  [v3 setIsDestructive:1];

  return v3;
}

- (AVTAvatarActionButton)initWithFrame:(CGRect)a3
{
  v8.receiver = self;
  v8.super_class = AVTAvatarActionButton;
  v3 = [(AVTAvatarActionButton *)&v8 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    if (_UISolariumEnabled())
    {
      v4 = [MEMORY[0x1E69DC740] grayButtonConfiguration];
      [v4 setCornerStyle:4];
      [(AVTAvatarActionButton *)v3 setConfiguration:v4];
    }

    else
    {
      v5 = +[AVTUIColorRepository actionButtonBackgroundColor];
      [(AVTAvatarActionButton *)v3 setBackgroundColor:v5];

      v6 = +[AVTUIColorRepository actionButtonTextColor];
      [(AVTAvatarActionButton *)v3 setTitleColor:v6 forState:0];

      [(AVTAvatarActionButton *)v3 _setContinuousCornerRadius:8.0];
    }
  }

  return v3;
}

- (void)setIsDestructive:(BOOL)a3
{
  if (self->_isDestructive != a3)
  {
    self->_isDestructive = a3;
    if (_UISolariumEnabled())
    {
      v6 = [(AVTAvatarActionButton *)self configuration];
      v8 = [v6 copy];

      if (a3)
      {
        +[AVTUIColorRepository actionButtonDestructiveTextColor];
      }

      else
      {
        +[AVTUIColorRepository actionButtonTextColor];
      }
      v7 = ;
      [v8 setBaseForegroundColor:v7];
      [(AVTAvatarActionButton *)self setConfiguration:v8];
    }

    else
    {
      if (a3)
      {
        +[AVTUIColorRepository actionButtonDestructiveTextColor];
      }

      else
      {
        +[AVTUIColorRepository actionButtonTextColor];
      }
      v8 = ;
      [(AVTAvatarActionButton *)self setTitleColor:v8 forState:0];
    }
  }
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = AVTAvatarActionButton;
  [(AVTAvatarActionButton *)&v7 setHighlighted:?];
  if (v3)
  {
    v5 = 0.2;
  }

  else
  {
    v5 = 1.0;
  }

  v6 = [(AVTAvatarActionButton *)self titleLabel];
  [v6 setAlpha:v5];
}

@end