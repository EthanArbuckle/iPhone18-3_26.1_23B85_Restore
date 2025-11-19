@interface MFMessageContentProgressLayer
- (MFMessageContentProgressLayer)initWithFrame:(CGRect)a3;
- (UIEdgeInsets)edgeInsets;
- (void)dealloc;
- (void)layoutSubviews;
@end

@implementation MFMessageContentProgressLayer

- (MFMessageContentProgressLayer)initWithFrame:(CGRect)a3
{
  v16.receiver = self;
  v16.super_class = MFMessageContentProgressLayer;
  v3 = [(MFMessageContentProgressLayer *)&v16 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x1E69DC888] systemBackgroundColor];
    [v3 setBackgroundColor:v4];

    v5 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
    v6 = *(v3 + 51);
    *(v3 + 51) = v5;

    v7 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    v8 = *(v3 + 52);
    *(v3 + 52) = v7;

    v9 = *(v3 + 52);
    v10 = [MEMORY[0x1E696AAE8] mainBundle];
    v11 = [v10 localizedStringForKey:@"LOADING" value:&stru_1F3CF3758 table:@"Main"];
    [v9 setText:v11];

    v12 = *(v3 + 52);
    v13 = [MEMORY[0x1E69DC888] grayColor];
    [v12 setTextColor:v13];

    [*(v3 + 52) sizeToFit];
    v14 = *(MEMORY[0x1E69DDCE0] + 16);
    *(v3 + 424) = *MEMORY[0x1E69DDCE0];
    *(v3 + 440) = v14;
    [v3 addSubview:*(v3 + 51)];
    [*(v3 + 51) startAnimating];
    [v3 addSubview:*(v3 + 52)];
  }

  return v3;
}

- (void)dealloc
{
  [(UIActivityIndicatorView *)self->_progressIndicator stopAnimating];
  v3.receiver = self;
  v3.super_class = MFMessageContentProgressLayer;
  [(MFMessageContentProgressLayer *)&v3 dealloc];
}

- (void)layoutSubviews
{
  [(MFMessageContentProgressLayer *)self bounds];
  v4 = v3;
  v6 = v5;
  [(UIActivityIndicatorView *)self->_progressIndicator frame];
  v8 = v7;
  v10 = v9;
  [(UILabel *)self->_loadingText frame];
  v12 = round(self->_edgeInsets.left * 0.5) + round((v4 - (v8 + 5.0 + v11)) * 0.5);
  v14 = round((v6 - v13) * 0.5) + round((self->_edgeInsets.top + self->_edgeInsets.bottom) * 0.5);
  [(UIActivityIndicatorView *)self->_progressIndicator setFrame:v12, v14, v8, v10];
  [(UILabel *)self->_loadingText frame];
  v16 = v15;
  v18 = v17;
  v23.origin.x = v12;
  v23.origin.y = v14;
  v23.size.width = v8;
  v23.size.height = v10;
  v19 = CGRectGetMaxX(v23) + 5.0;
  loadingText = self->_loadingText;
  v21 = v14 + round((v10 - v18) * 0.5);

  [(UILabel *)loadingText setFrame:v19, v21, v16, v18];
}

- (UIEdgeInsets)edgeInsets
{
  top = self->_edgeInsets.top;
  left = self->_edgeInsets.left;
  bottom = self->_edgeInsets.bottom;
  right = self->_edgeInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end