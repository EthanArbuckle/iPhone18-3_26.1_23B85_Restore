@interface CarMoreButton
- (CarMoreButton)initWithFrame:(CGRect)a3;
- (void)_updateImage;
- (void)didMoveToWindow;
- (void)setOptions:(unint64_t)a3;
@end

@implementation CarMoreButton

- (void)didMoveToWindow
{
  v4.receiver = self;
  v4.super_class = CarMoreButton;
  [(CarFocusableButton *)&v4 didMoveToWindow];
  v3 = [(CarMoreButton *)self window];

  if (v3)
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

- (void)setOptions:(unint64_t)a3
{
  if (self->_options != a3)
  {
    self->_options = a3;
    [(CarMoreButton *)self _updateImage];
  }
}

- (CarMoreButton)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = CarMoreButton;
  v3 = [(CarCardRoundedButton *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = [(CarMoreButton *)v3 layer];
    [v5 setCornerRadius:15.0];
  }

  return v4;
}

@end