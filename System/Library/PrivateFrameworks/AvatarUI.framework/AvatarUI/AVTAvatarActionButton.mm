@interface AVTAvatarActionButton
+ (id)defaultButtonWithAction:(id)action;
+ (id)destructiveButtonWithAction:(id)action;
- (AVTAvatarActionButton)initWithFrame:(CGRect)frame;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setIsDestructive:(BOOL)destructive;
@end

@implementation AVTAvatarActionButton

+ (id)defaultButtonWithAction:(id)action
{
  v3 = [AVTAvatarActionButton buttonWithAction:action];
  v4 = +[AVTUIFontRepository avatarActionButtonTitleFont];
  titleLabel = [v3 titleLabel];
  [titleLabel setFont:v4];

  return v3;
}

+ (id)destructiveButtonWithAction:(id)action
{
  v3 = [AVTAvatarActionButton buttonWithAction:action];
  v4 = +[AVTUIFontRepository avatarActionButtonTitleFont];
  titleLabel = [v3 titleLabel];
  [titleLabel setFont:v4];

  [v3 setIsDestructive:1];

  return v3;
}

- (AVTAvatarActionButton)initWithFrame:(CGRect)frame
{
  v8.receiver = self;
  v8.super_class = AVTAvatarActionButton;
  v3 = [(AVTAvatarActionButton *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    if (_UISolariumEnabled())
    {
      grayButtonConfiguration = [MEMORY[0x1E69DC740] grayButtonConfiguration];
      [grayButtonConfiguration setCornerStyle:4];
      [(AVTAvatarActionButton *)v3 setConfiguration:grayButtonConfiguration];
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

- (void)setIsDestructive:(BOOL)destructive
{
  if (self->_isDestructive != destructive)
  {
    self->_isDestructive = destructive;
    if (_UISolariumEnabled())
    {
      configuration = [(AVTAvatarActionButton *)self configuration];
      v8 = [configuration copy];

      if (destructive)
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
      if (destructive)
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

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  v7.receiver = self;
  v7.super_class = AVTAvatarActionButton;
  [(AVTAvatarActionButton *)&v7 setHighlighted:?];
  if (highlightedCopy)
  {
    v5 = 0.2;
  }

  else
  {
    v5 = 1.0;
  }

  titleLabel = [(AVTAvatarActionButton *)self titleLabel];
  [titleLabel setAlpha:v5];
}

@end