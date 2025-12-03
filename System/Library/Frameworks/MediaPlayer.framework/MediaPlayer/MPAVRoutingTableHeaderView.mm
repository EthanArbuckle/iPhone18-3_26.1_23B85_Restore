@interface MPAVRoutingTableHeaderView
- (CGSize)sizeThatFits:(CGSize)fits;
- (MPAVRoutingTableHeaderView)initWithCoder:(id)coder;
- (MPAVRoutingTableHeaderView)initWithFrame:(CGRect)frame;
- (id)_mirroringCompactDescription;
- (id)_mirroringCompactDescriptionTextAttributes;
- (id)_mirroringTitleTextAttributes;
- (void)_init;
- (void)layoutSubviews;
@end

@implementation MPAVRoutingTableHeaderView

- (id)_mirroringCompactDescriptionTextAttributes
{
  v8[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E69DB7C8]);
  [v2 setAlignment:1];
  [v2 setLineBreakMode:0];
  v7[0] = *MEMORY[0x1E69DB648];
  v3 = [MEMORY[0x1E69DB878] defaultFontForTextStyle:*MEMORY[0x1E69DDD28]];
  v8[0] = v3;
  v7[1] = *MEMORY[0x1E69DB650];
  tableCellGrayTextColor = [MEMORY[0x1E69DC888] tableCellGrayTextColor];
  v7[2] = *MEMORY[0x1E69DB688];
  v8[1] = tableCellGrayTextColor;
  v8[2] = v2;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:3];

  return v5;
}

- (id)_mirroringCompactDescription
{
  v14[3] = *MEMORY[0x1E69E9840];
  v13[0] = @"iPhone";
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.MediaPlayer"];
  v3 = [v2 localizedStringForKey:@"AIRPLAY_MIRRORING_COMPACT_DESCRIPTION_IPHONE" value:&stru_1F149ECA8 table:@"MediaPlayer"];
  v14[0] = v3;
  v13[1] = @"iPad";
  v4 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.MediaPlayer"];
  v5 = [v4 localizedStringForKey:@"AIRPLAY_MIRRORING_COMPACT_DESCRIPTION_IPAD" value:&stru_1F149ECA8 table:@"MediaPlayer"];
  v14[1] = v5;
  v13[2] = @"iPod";
  v6 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.MediaPlayer"];
  v7 = [v6 localizedStringForKey:@"AIRPLAY_MIRRORING_COMPACT_DESCRIPTION_IPOD" value:&stru_1F149ECA8 table:@"MediaPlayer"];
  v14[2] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:3];

  v9 = MGCopyAnswer();
  if (v9)
  {
    v10 = [v8 objectForKey:v9];
  }

  else
  {
    v11 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.MediaPlayer"];
    v10 = [v11 localizedStringForKey:@"AIRPLAY_MIRRORING_COMPACT_DESCRIPTION_IPHONE" value:&stru_1F149ECA8 table:@"MediaPlayer"];
  }

  return v10;
}

- (id)_mirroringTitleTextAttributes
{
  v8[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E69DB7C8]);
  [v2 setAlignment:1];
  [v2 setLineBreakMode:0];
  v7[0] = *MEMORY[0x1E69DB648];
  v3 = [MEMORY[0x1E69DB878] defaultFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  v8[0] = v3;
  v7[1] = *MEMORY[0x1E69DB650];
  blackColor = [MEMORY[0x1E69DC888] blackColor];
  v7[2] = *MEMORY[0x1E69DB688];
  v8[1] = blackColor;
  v8[2] = v2;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:3];

  return v5;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  v6 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.MediaPlayer"];
  v7 = [v6 localizedStringForKey:@"AIRPLAY_MIRRORING_TITLE" value:&stru_1F149ECA8 table:@"MediaPlayer"];

  _mirroringTitleTextAttributes = [(MPAVRoutingTableHeaderView *)self _mirroringTitleTextAttributes];
  _mirroringCompactDescription = [(MPAVRoutingTableHeaderView *)self _mirroringCompactDescription];
  _mirroringCompactDescriptionTextAttributes = [(MPAVRoutingTableHeaderView *)self _mirroringCompactDescriptionTextAttributes];
  p_edgeInsets = &self->_edgeInsets;
  v12 = width - (p_edgeInsets->f64[1] + p_edgeInsets[1].f64[1]);
  v13 = height - (p_edgeInsets->f64[0] + p_edgeInsets[1].f64[0]);
  [v7 boundingRectWithSize:1 options:_mirroringTitleTextAttributes attributes:0 context:{v12, v13}];
  v15 = v14;
  v17 = v16;
  [_mirroringCompactDescription boundingRectWithSize:1 options:_mirroringCompactDescriptionTextAttributes attributes:0 context:{v12, v13}];
  if (v15 >= v18)
  {
    v20 = v15;
  }

  else
  {
    v20 = v18;
  }

  v21.f64[0] = v17 + 2.0 + v19;
  v21.f64[1] = v20;
  v24 = vrndxq_f64(vaddq_f64(p_edgeInsets[1], vaddq_f64(*p_edgeInsets, v21)));

  v22 = v24.f64[1];
  v23 = v24.f64[0];
  result.height = v23;
  result.width = v22;
  return result;
}

- (void)layoutSubviews
{
  v21.receiver = self;
  v21.super_class = MPAVRoutingTableHeaderView;
  [(MPAVRoutingTableHeaderView *)&v21 layoutSubviews];
  [(MPAVRoutingTableHeaderView *)self bounds];
  v4 = v3;
  v6 = v5;
  v19 = v5;
  v20 = v7;
  v9 = v8;
  v10 = v7 - (self->_edgeInsets.left + self->_edgeInsets.right);
  v11 = v8 - (self->_edgeInsets.top + self->_edgeInsets.bottom);
  [(UILabel *)self->_titleLabel sizeThatFits:v10, v11];
  v13 = v12;
  v14 = v4 + self->_edgeInsets.left;
  v15 = v6 + self->_edgeInsets.top;
  [(UILabel *)self->_titleLabel setFrame:v14, v15, v10, v12];
  [(UILabel *)self->_detailLabel sizeThatFits:v10, v11];
  v17 = v16;
  v22.origin.x = v14;
  v22.origin.y = v15;
  v22.size.width = v10;
  v22.size.height = v13;
  [(UILabel *)self->_detailLabel setFrame:v4 + self->_edgeInsets.left, CGRectGetMaxY(v22) + 2.0, v10, v17];
  v18 = objc_alloc_init(MEMORY[0x1E69DC728]);
  [v18 moveToPoint:{v4, v19 + v9}];
  [v18 addLineToPoint:{v4 + v20, v19 + v9}];
  -[CAShapeLayer setPath:](self->_borderLayer, "setPath:", [v18 CGPath]);
}

- (MPAVRoutingTableHeaderView)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = MPAVRoutingTableHeaderView;
  v3 = [(MPAVRoutingTableHeaderView *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(MPAVRoutingTableHeaderView *)v3 _init];
  }

  return v4;
}

- (MPAVRoutingTableHeaderView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = MPAVRoutingTableHeaderView;
  v3 = [(MPAVRoutingTableHeaderView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(MPAVRoutingTableHeaderView *)v3 _init];
  }

  return v4;
}

- (void)_init
{
  whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  [(MPAVRoutingTableHeaderView *)self setBackgroundColor:whiteColor];

  *&self->_edgeInsets.top = xmmword_1A273DDE0;
  *&self->_edgeInsets.bottom = xmmword_1A273DDE0;
  v4 = objc_alloc(MEMORY[0x1E69DCC10]);
  v5 = *MEMORY[0x1E695F058];
  v6 = *(MEMORY[0x1E695F058] + 8);
  v7 = *(MEMORY[0x1E695F058] + 16);
  v8 = *(MEMORY[0x1E695F058] + 24);
  v9 = [v4 initWithFrame:{*MEMORY[0x1E695F058], v6, v7, v8}];
  titleLabel = self->_titleLabel;
  self->_titleLabel = v9;

  v11 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v5, v6, v7, v8}];
  detailLabel = self->_detailLabel;
  self->_detailLabel = v11;

  v13 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.MediaPlayer"];
  v24 = [v13 localizedStringForKey:@"AIRPLAY_MIRRORING_TITLE" value:&stru_1F149ECA8 table:@"MediaPlayer"];

  _mirroringTitleTextAttributes = [(MPAVRoutingTableHeaderView *)self _mirroringTitleTextAttributes];
  v15 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v24 attributes:_mirroringTitleTextAttributes];
  [(UILabel *)self->_titleLabel setAttributedText:v15];

  [(UILabel *)self->_titleLabel setNumberOfLines:1];
  [(MPAVRoutingTableHeaderView *)self addSubview:self->_titleLabel];
  _mirroringCompactDescription = [(MPAVRoutingTableHeaderView *)self _mirroringCompactDescription];
  _mirroringCompactDescriptionTextAttributes = [(MPAVRoutingTableHeaderView *)self _mirroringCompactDescriptionTextAttributes];
  v18 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:_mirroringCompactDescription attributes:_mirroringCompactDescriptionTextAttributes];
  [(UILabel *)self->_detailLabel setAttributedText:v18];

  [(UILabel *)self->_detailLabel setNumberOfLines:0];
  [(MPAVRoutingTableHeaderView *)self addSubview:self->_detailLabel];
  layer = [MEMORY[0x1E69794A0] layer];
  borderLayer = self->_borderLayer;
  self->_borderLayer = layer;

  v21 = [MEMORY[0x1E69DC888] colorWithWhite:0.8 alpha:1.0];
  -[CAShapeLayer setStrokeColor:](self->_borderLayer, "setStrokeColor:", [v21 CGColor]);

  [(CAShapeLayer *)self->_borderLayer setLineWidth:0.5];
  [(CAShapeLayer *)self->_borderLayer setFillColor:0];
  LODWORD(v22) = 1.0;
  [(CAShapeLayer *)self->_borderLayer setOpacity:v22];
  layer2 = [(MPAVRoutingTableHeaderView *)self layer];
  [layer2 addSublayer:self->_borderLayer];
}

@end