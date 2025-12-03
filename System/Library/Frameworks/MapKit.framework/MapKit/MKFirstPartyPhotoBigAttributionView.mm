@interface MKFirstPartyPhotoBigAttributionView
- (MKFirstPartyPhotoBigAttributionView)initWithContext:(int64_t)context;
- (NSString)titleText;
- (UIImage)glyphImage;
- (void)_setupConstraints;
- (void)_setupSubviews;
- (void)didUpdateAttributionViewType;
@end

@implementation MKFirstPartyPhotoBigAttributionView

- (void)didUpdateAttributionViewType
{
  titleText = [(MKFirstPartyPhotoBigAttributionView *)self titleText];
  [(UILabel *)self->_titleLabel setText:titleText];

  glyphView = self->_glyphView;
  glyphImage = [(MKFirstPartyPhotoBigAttributionView *)self glyphImage];
  [(UIImageView *)glyphView setImage:glyphImage];
}

- (UIImage)glyphImage
{
  type = [(MKPhotoBigAttributionView *)self type];
  v3 = &stru_1F15B23C0;
  if (type == 1)
  {
    v3 = @"photo.fill.on.rectangle.fill";
  }

  if (type)
  {
    v4 = v3;
  }

  else
  {
    v4 = @"camera.fill";
  }

  v5 = MEMORY[0x1E69DCAD8];
  v6 = [MEMORY[0x1E69DB878] systemFontOfSize:20.0];
  v7 = [v5 configurationWithFont:v6];

  v8 = [MEMORY[0x1E69DCAB8] systemImageNamed:v4];
  v9 = [v8 imageWithConfiguration:v7];

  return v9;
}

- (NSString)titleText
{
  type = [(MKPhotoBigAttributionView *)self type];
  if (type)
  {
    if (type != 1)
    {
      goto LABEL_6;
    }

    v3 = @"More Photos [UGC]";
  }

  else
  {
    v3 = @"Add Photo [UGC]";
  }

  type = _MKLocalizedStringFromThisBundle(v3);
LABEL_6:

  return type;
}

- (void)_setupConstraints
{
  v36[9] = *MEMORY[0x1E69E9840];
  contentView = [(MKPhotoBigAttributionView *)self contentView];
  v24 = MEMORY[0x1E696ACD8];
  centerXAnchor = [(UIImageView *)self->_glyphView centerXAnchor];
  centerXAnchor2 = [contentView centerXAnchor];
  v33 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v36[0] = v33;
  topAnchor = [(UIImageView *)self->_glyphView topAnchor];
  topAnchor2 = [contentView topAnchor];
  v30 = [topAnchor constraintGreaterThanOrEqualToAnchor:topAnchor2];
  v36[1] = v30;
  bottomAnchor = [(UIImageView *)self->_glyphView bottomAnchor];
  v22 = contentView;
  centerYAnchor = [contentView centerYAnchor];
  v27 = [bottomAnchor constraintEqualToAnchor:centerYAnchor];
  v36[2] = v27;
  topAnchor3 = [(UILabel *)self->_titleLabel topAnchor];
  bottomAnchor2 = [(UIImageView *)self->_glyphView bottomAnchor];
  v23 = [topAnchor3 constraintEqualToAnchor:bottomAnchor2 constant:4.0];
  v36[3] = v23;
  leadingAnchor = [(UILabel *)self->_titleLabel leadingAnchor];
  leadingAnchor2 = [contentView leadingAnchor];
  v19 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:4.0];
  v36[4] = v19;
  trailingAnchor = [(UILabel *)self->_titleLabel trailingAnchor];
  trailingAnchor2 = [contentView trailingAnchor];
  v16 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-4.0];
  v36[5] = v16;
  bottomAnchor3 = [(UILabel *)self->_titleLabel bottomAnchor];
  bottomAnchor4 = [contentView bottomAnchor];
  v4 = [bottomAnchor3 constraintLessThanOrEqualToAnchor:bottomAnchor4 constant:-4.0];
  v36[6] = v4;
  spinner = [(MKPhotoBigAttributionView *)self spinner];
  centerXAnchor3 = [spinner centerXAnchor];
  centerXAnchor4 = [(UIImageView *)self->_glyphView centerXAnchor];
  v8 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
  v36[7] = v8;
  spinner2 = [(MKPhotoBigAttributionView *)self spinner];
  centerYAnchor2 = [spinner2 centerYAnchor];
  centerYAnchor3 = [(UIImageView *)self->_glyphView centerYAnchor];
  v12 = [centerYAnchor2 constraintEqualToAnchor:centerYAnchor3];
  v36[8] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:9];
  [v24 activateConstraints:v13];
}

- (void)_setupSubviews
{
  v3 = objc_alloc(MEMORY[0x1E69DCAE0]);
  v4 = *MEMORY[0x1E695F058];
  v5 = *(MEMORY[0x1E695F058] + 8);
  v6 = *(MEMORY[0x1E695F058] + 16);
  v7 = *(MEMORY[0x1E695F058] + 24);
  v8 = [v3 initWithFrame:{*MEMORY[0x1E695F058], v5, v6, v7}];
  glyphView = self->_glyphView;
  self->_glyphView = v8;

  [(UIImageView *)self->_glyphView setTranslatesAutoresizingMaskIntoConstraints:0];
  whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  [(UIImageView *)self->_glyphView setTintColor:whiteColor];

  v11 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v4, v5, v6, v7}];
  titleLabel = self->_titleLabel;
  self->_titleLabel = v11;

  [(UILabel *)self->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  v13 = [MEMORY[0x1E69DB878] systemFontOfSize:12.0];
  [(UILabel *)self->_titleLabel setFont:v13];

  whiteColor2 = [MEMORY[0x1E69DC888] whiteColor];
  [(UILabel *)self->_titleLabel setTextColor:whiteColor2];

  [(UILabel *)self->_titleLabel setNumberOfLines:1];
  [(UILabel *)self->_titleLabel setTextAlignment:1];
  contentView = [(MKPhotoBigAttributionView *)self contentView];
  [contentView addSubview:self->_glyphView];

  contentView2 = [(MKPhotoBigAttributionView *)self contentView];
  [contentView2 addSubview:self->_titleLabel];
}

- (MKFirstPartyPhotoBigAttributionView)initWithContext:(int64_t)context
{
  v6.receiver = self;
  v6.super_class = MKFirstPartyPhotoBigAttributionView;
  v3 = [(MKPhotoBigAttributionView *)&v6 initWithContext:context];
  v4 = v3;
  if (v3)
  {
    [(MKFirstPartyPhotoBigAttributionView *)v3 _setupSubviews];
    [(MKFirstPartyPhotoBigAttributionView *)v4 _setupConstraints];
    [(MKFirstPartyPhotoBigAttributionView *)v4 didUpdateAttributionViewType];
  }

  return v4;
}

@end