@interface MKFirstPartyPhotoBigAttributionView
- (MKFirstPartyPhotoBigAttributionView)initWithContext:(int64_t)a3;
- (NSString)titleText;
- (UIImage)glyphImage;
- (void)_setupConstraints;
- (void)_setupSubviews;
- (void)didUpdateAttributionViewType;
@end

@implementation MKFirstPartyPhotoBigAttributionView

- (void)didUpdateAttributionViewType
{
  v3 = [(MKFirstPartyPhotoBigAttributionView *)self titleText];
  [(UILabel *)self->_titleLabel setText:v3];

  glyphView = self->_glyphView;
  v5 = [(MKFirstPartyPhotoBigAttributionView *)self glyphImage];
  [(UIImageView *)glyphView setImage:v5];
}

- (UIImage)glyphImage
{
  v2 = [(MKPhotoBigAttributionView *)self type];
  v3 = &stru_1F15B23C0;
  if (v2 == 1)
  {
    v3 = @"photo.fill.on.rectangle.fill";
  }

  if (v2)
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
  v2 = [(MKPhotoBigAttributionView *)self type];
  if (v2)
  {
    if (v2 != 1)
    {
      goto LABEL_6;
    }

    v3 = @"More Photos [UGC]";
  }

  else
  {
    v3 = @"Add Photo [UGC]";
  }

  v2 = _MKLocalizedStringFromThisBundle(v3);
LABEL_6:

  return v2;
}

- (void)_setupConstraints
{
  v36[9] = *MEMORY[0x1E69E9840];
  v3 = [(MKPhotoBigAttributionView *)self contentView];
  v24 = MEMORY[0x1E696ACD8];
  v35 = [(UIImageView *)self->_glyphView centerXAnchor];
  v34 = [v3 centerXAnchor];
  v33 = [v35 constraintEqualToAnchor:v34];
  v36[0] = v33;
  v32 = [(UIImageView *)self->_glyphView topAnchor];
  v31 = [v3 topAnchor];
  v30 = [v32 constraintGreaterThanOrEqualToAnchor:v31];
  v36[1] = v30;
  v29 = [(UIImageView *)self->_glyphView bottomAnchor];
  v22 = v3;
  v28 = [v3 centerYAnchor];
  v27 = [v29 constraintEqualToAnchor:v28];
  v36[2] = v27;
  v26 = [(UILabel *)self->_titleLabel topAnchor];
  v25 = [(UIImageView *)self->_glyphView bottomAnchor];
  v23 = [v26 constraintEqualToAnchor:v25 constant:4.0];
  v36[3] = v23;
  v21 = [(UILabel *)self->_titleLabel leadingAnchor];
  v20 = [v3 leadingAnchor];
  v19 = [v21 constraintEqualToAnchor:v20 constant:4.0];
  v36[4] = v19;
  v18 = [(UILabel *)self->_titleLabel trailingAnchor];
  v17 = [v3 trailingAnchor];
  v16 = [v18 constraintEqualToAnchor:v17 constant:-4.0];
  v36[5] = v16;
  v15 = [(UILabel *)self->_titleLabel bottomAnchor];
  v14 = [v3 bottomAnchor];
  v4 = [v15 constraintLessThanOrEqualToAnchor:v14 constant:-4.0];
  v36[6] = v4;
  v5 = [(MKPhotoBigAttributionView *)self spinner];
  v6 = [v5 centerXAnchor];
  v7 = [(UIImageView *)self->_glyphView centerXAnchor];
  v8 = [v6 constraintEqualToAnchor:v7];
  v36[7] = v8;
  v9 = [(MKPhotoBigAttributionView *)self spinner];
  v10 = [v9 centerYAnchor];
  v11 = [(UIImageView *)self->_glyphView centerYAnchor];
  v12 = [v10 constraintEqualToAnchor:v11];
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
  v10 = [MEMORY[0x1E69DC888] whiteColor];
  [(UIImageView *)self->_glyphView setTintColor:v10];

  v11 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v4, v5, v6, v7}];
  titleLabel = self->_titleLabel;
  self->_titleLabel = v11;

  [(UILabel *)self->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  v13 = [MEMORY[0x1E69DB878] systemFontOfSize:12.0];
  [(UILabel *)self->_titleLabel setFont:v13];

  v14 = [MEMORY[0x1E69DC888] whiteColor];
  [(UILabel *)self->_titleLabel setTextColor:v14];

  [(UILabel *)self->_titleLabel setNumberOfLines:1];
  [(UILabel *)self->_titleLabel setTextAlignment:1];
  v15 = [(MKPhotoBigAttributionView *)self contentView];
  [v15 addSubview:self->_glyphView];

  v16 = [(MKPhotoBigAttributionView *)self contentView];
  [v16 addSubview:self->_titleLabel];
}

- (MKFirstPartyPhotoBigAttributionView)initWithContext:(int64_t)a3
{
  v6.receiver = self;
  v6.super_class = MKFirstPartyPhotoBigAttributionView;
  v3 = [(MKPhotoBigAttributionView *)&v6 initWithContext:a3];
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