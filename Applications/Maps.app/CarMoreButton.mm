@interface CarMoreButton
- (CarMoreButton)initWithFrame:(CGRect)frame;
- (void)_updateImage;
- (void)didMoveToWindow;
- (void)setOptions:(unint64_t)options;
@end

@implementation CarMoreButton

- (void)didMoveToWindow
{
  v4.receiver = self;
  v4.super_class = CarMoreButton;
  [(CarFocusableButton *)&v4 didMoveToWindow];
  window = [(CarMoreButton *)self window];

  if (window)
  {
    [(CarMoreButton *)self _updateImage];
  }
}

- (void)_updateImage
{
  if ((~[(CarMoreButton *)self options]& 6) == 0)
  {
    v3 = UIFontTextStyleFootnote;
    v4 = @"ellipsis";
LABEL_7:
    v6 = [UIImage _mapsCar_systemImageNamed:v4 textStyle:v3];
    goto LABEL_8;
  }

  if (([(CarMoreButton *)self options]& 2) != 0)
  {
    v3 = UIFontTextStyleFootnote;
    v4 = @"phone.fill";
    goto LABEL_7;
  }

  if (([(CarMoreButton *)self options]& 4) == 0)
  {
    v5 = 0;
    goto LABEL_9;
  }

  v6 = [UIImage _mapsCar_systemImageNamed:@"square.and.arrow.up" textStyle:UIFontTextStyleCallout weight:6];
LABEL_8:
  v5 = v6;
LABEL_9:
  v7 = v5;
  [(CarMoreButton *)self setImage:v5 forState:0];
  [(CarMoreButton *)self setImageEdgeInsets:-2.0, 0.0, 0.0, 0.0];
}

- (void)setOptions:(unint64_t)options
{
  if (self->_options != options)
  {
    self->_options = options;
    [(CarMoreButton *)self _updateImage];
  }
}

- (CarMoreButton)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = CarMoreButton;
  v3 = [(CarCardRoundedButton *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    layer = [(CarMoreButton *)v3 layer];
    [layer setCornerRadius:15.0];
  }

  return v4;
}

@end