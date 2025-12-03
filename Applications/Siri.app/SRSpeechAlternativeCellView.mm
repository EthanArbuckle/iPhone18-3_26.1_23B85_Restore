@interface SRSpeechAlternativeCellView
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (CGSize)sizeThatFits:(CGSize)fits;
- (SRSpeechAlternativeCellView)initWithTitle:(id)title;
- (UIEdgeInsets)edgeInsets;
- (void)updateConstraints;
@end

@implementation SRSpeechAlternativeCellView

- (SRSpeechAlternativeCellView)initWithTitle:(id)title
{
  titleCopy = title;
  v15.receiver = self;
  v15.super_class = SRSpeechAlternativeCellView;
  v6 = [(SRSpeechAlternativeCellView *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_titleString, title);
    v8 = objc_alloc_init(UIView);
    containerView = v7->_containerView;
    v7->_containerView = v8;

    [(SRSpeechAlternativeCellView *)v7 addSubview:v7->_containerView];
    [(UIView *)v7->_containerView setTranslatesAutoresizingMaskIntoConstraints:0];
    v10 = +[SiriSharedUIContentLabel label];
    displayTextLabel = v7->_displayTextLabel;
    v7->_displayTextLabel = v10;

    [(UILabel *)v7->_displayTextLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v12 = v7->_displayTextLabel;
    v13 = [UIFont preferredFontForTextStyle:UIFontTextStyleTitle3];
    [(UILabel *)v12 setFont:v13];

    [(UILabel *)v7->_displayTextLabel setAttributedText:titleCopy];
    [(UILabel *)v7->_displayTextLabel setNumberOfLines:0];
    [(UIView *)v7->_containerView addSubview:v7->_displayTextLabel];
    [(SRSpeechAlternativeCellView *)v7 setNeedsUpdateConstraints];
  }

  return v7;
}

- (UIEdgeInsets)edgeInsets
{
  IsRTL = SiriLanguageIsRTL();
  v4 = SiriUIPlatterStyle[24];
  v3 = SiriUIPlatterStyle[25];
  v5 = SiriUIPlatterStyle[22];
  if (IsRTL)
  {
    v6 = SiriUIPlatterStyle[23];
  }

  else
  {
    v6 = SiriUIPlatterStyle[25];
  }

  if (!IsRTL)
  {
    v3 = SiriUIPlatterStyle[23];
  }

  result.right = v6;
  result.bottom = v4;
  result.left = v3;
  result.top = v5;
  return result;
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  [(SRSpeechAlternativeCellView *)self bounds];
  v10 = x;
  v11 = y;

  return CGRectContainsPoint(*&v6, *&v10);
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  [(UILabel *)self->_displayTextLabel sizeThatFits:fits.width - (SiriUIPlatterStyle[23] + SiriUIPlatterStyle[25]), 1.79769313e308];
  v5 = v4 + SiriUIPlatterStyle[22] + SiriUIPlatterStyle[24];
  v6 = SiriUIPlatterStyle[26];
  if (v5 >= v6)
  {
    v6 = v5;
  }

  v7 = width;
  result.height = v6;
  result.width = v7;
  return result;
}

- (void)updateConstraints
{
  v13.receiver = self;
  v13.super_class = SRSpeechAlternativeCellView;
  [(SRSpeechAlternativeCellView *)&v13 updateConstraints];
  if (!self->_hasSetUpConstraints)
  {
    v3 = _NSDictionaryOfVariableBindings(@"_containerView", self->_containerView, 0);
    v4 = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|[_containerView]|" options:0 metrics:0 views:v3];
    [(SRSpeechAlternativeCellView *)self addConstraints:v4];

    v5 = _NSDictionaryOfVariableBindings(@"_containerView", self->_containerView, 0);
    v6 = [NSLayoutConstraint constraintsWithVisualFormat:@"V:|[_containerView]|" options:0 metrics:0 views:v5];
    [(SRSpeechAlternativeCellView *)self addConstraints:v6];

    displayTextLabel = self->_displayTextLabel;
    if (displayTextLabel)
    {
      containerView = self->_containerView;
      v9 = _NSDictionaryOfVariableBindings(@"_displayTextLabel", displayTextLabel, 0);
      v10 = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|[_displayTextLabel]|" options:0 metrics:0 views:v9];
      [(UIView *)containerView addConstraints:v10];

      v11 = self->_displayTextLabel;
      if (v11)
      {
        v12 = [NSLayoutConstraint constraintWithItem:v11 attribute:10 relatedBy:0 toItem:self->_containerView attribute:10 multiplier:1.0 constant:0.0];
        [(SRSpeechAlternativeCellView *)self addConstraint:v12];
      }
    }

    self->_hasSetUpConstraints = 1;
  }
}

@end