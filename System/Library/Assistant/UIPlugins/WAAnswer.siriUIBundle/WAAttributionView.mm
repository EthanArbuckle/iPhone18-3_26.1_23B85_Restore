@interface WAAttributionView
- (CGSize)sizeThatFits:(CGSize)result;
- (WAAttributionView)initWithFrame:(CGRect)frame;
- (WAAttributionViewDelegate)delegate;
- (void)attributionButtonTapped;
- (void)layoutSubviews;
@end

@implementation WAAttributionView

- (WAAttributionView)initWithFrame:(CGRect)frame
{
  v14.receiver = self;
  v14.super_class = WAAttributionView;
  v3 = [(WAAttributionView *)&v14 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [NSBundle bundleForClass:objc_opt_class()];
    [(WAAttributionView *)v3 setKeylineType:0];
    v5 = [UIImage imageNamed:@"WolframLogo" inBundle:v4];
    v6 = +[UIColor siriui_maskingColor];
    v7 = [v5 _flatImageWithColor:v6];
    logoImage = v3->_logoImage;
    v3->_logoImage = v7;

    v9 = [[UIImageView alloc] initWithImage:v3->_logoImage];
    v10 = [[UIButton alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    attributionButton = v3->_attributionButton;
    v3->_attributionButton = v10;

    [(UIButton *)v3->_attributionButton addSubview:v9];
    LODWORD(v12) = -1097229926;
    [(UIButton *)v3->_attributionButton setCharge:v12];
    [(UIButton *)v3->_attributionButton addTarget:v3 action:"attributionButtonTapped" forControlEvents:64];
    [(WAAttributionView *)v3 addSubview:v3->_attributionButton];
  }

  return v3;
}

- (CGSize)sizeThatFits:(CGSize)result
{
  v3 = 44.0;
  result.height = v3;
  return result;
}

- (void)layoutSubviews
{
  v13.receiver = self;
  v13.super_class = WAAttributionView;
  [(WAAttributionView *)&v13 layoutSubviews];
  y = CGPointZero.y;
  [(UIImage *)self->_logoImage size];
  [(WAAttributionView *)self bounds];
  UIRectCenteredYInRect();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [(WAAttributionView *)self bounds];
  Width = CGRectGetWidth(v14);
  v15.origin.x = v5;
  v15.origin.y = v7;
  v15.size.width = v9;
  v15.size.height = v11;
  [(UIButton *)self->_attributionButton setFrame:Width - CGRectGetWidth(v15) - SiriUIPlatterStyle[34], v7, v9, v11];
}

- (void)attributionButtonTapped
{
  delegate = [(WAAttributionView *)self delegate];
  [delegate attributionViewTapped:self];
}

- (WAAttributionViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end