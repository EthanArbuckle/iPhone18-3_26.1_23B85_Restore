@interface _ASCABLEQRCodeView
- (CGSize)intrinsicContentSize;
- (_ASCABLEQRCodeView)initWithMessage:(id)a3;
- (double)_edgeLength;
- (id)_qrCodeASImage;
- (id)_qrCodeCIImage;
- (id)_qrCodeColor;
- (void)_updatePlatterBorderStyle;
- (void)_updateQRCodeImage;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation _ASCABLEQRCodeView

- (_ASCABLEQRCodeView)initWithMessage:(id)a3
{
  v66[14] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v65.receiver = self;
  v65.super_class = _ASCABLEQRCodeView;
  v5 = [(_ASCABLEQRCodeView *)&v65 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  if (v5)
  {
    v6 = [v4 copy];
    message = v5->_message;
    v5->_message = v6;

    v8 = objc_alloc_init(MEMORY[0x1E69DD250]);
    platterView = v5->_platterView;
    v5->_platterView = v8;

    [(UIView *)v5->_platterView setTranslatesAutoresizingMaskIntoConstraints:0];
    v10 = [MEMORY[0x1E69DC888] whiteColor];
    [(UIView *)v5->_platterView setBackgroundColor:v10];

    v11 = [(UIView *)v5->_platterView layer];
    [v11 setCornerRadius:8.0];

    v12 = *MEMORY[0x1E69796E8];
    [(UIView *)v5->_platterView layer];
    v13 = v64 = v4;
    [v13 setCornerCurve:v12];

    [(_ASCABLEQRCodeView *)v5 addSubview:v5->_platterView];
    v14 = objc_alloc_init(_ASCABLEQRCodeImageView);
    imageView = v5->_imageView;
    v5->_imageView = v14;

    [(_ASCABLEQRCodeImageView *)v5->_imageView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(_ASCABLEQRCodeView *)v5 addSubview:v5->_imageView];
    v16 = objc_alloc_init(_ASCABLEQRCodeBadgeView);
    badgeView = v5->_badgeView;
    v5->_badgeView = v16;

    [(_ASCABLEQRCodeBadgeView *)v5->_badgeView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(_ASCABLEQRCodeView *)v5 addSubview:v5->_badgeView];
    v48 = MEMORY[0x1E696ACD8];
    v63 = [(UIView *)v5->_platterView leadingAnchor];
    v62 = [(_ASCABLEQRCodeView *)v5 leadingAnchor];
    v61 = [v63 constraintEqualToAnchor:v62];
    v66[0] = v61;
    v60 = [(UIView *)v5->_platterView trailingAnchor];
    v59 = [(_ASCABLEQRCodeView *)v5 trailingAnchor];
    v58 = [v60 constraintEqualToAnchor:v59];
    v66[1] = v58;
    v57 = [(UIView *)v5->_platterView topAnchor];
    v56 = [(_ASCABLEQRCodeView *)v5 topAnchor];
    v55 = [v57 constraintEqualToAnchor:v56];
    v66[2] = v55;
    v54 = [(UIView *)v5->_platterView bottomAnchor];
    v53 = [(_ASCABLEQRCodeView *)v5 bottomAnchor];
    v52 = [v54 constraintEqualToAnchor:v53];
    v66[3] = v52;
    v51 = [(_ASCABLEQRCodeImageView *)v5->_imageView leadingAnchor];
    v50 = [(UIView *)v5->_platterView leadingAnchor];
    v49 = [v51 constraintEqualToAnchor:v50 constant:10.0];
    v66[4] = v49;
    v47 = [(UIView *)v5->_platterView trailingAnchor];
    v46 = [(_ASCABLEQRCodeImageView *)v5->_imageView trailingAnchor];
    v45 = [v47 constraintEqualToAnchor:v46 constant:10.0];
    v66[5] = v45;
    v44 = [(_ASCABLEQRCodeImageView *)v5->_imageView topAnchor];
    v43 = [(UIView *)v5->_platterView topAnchor];
    v42 = [v44 constraintEqualToAnchor:v43 constant:10.0];
    v66[6] = v42;
    v41 = [(UIView *)v5->_platterView bottomAnchor];
    v40 = [(_ASCABLEQRCodeImageView *)v5->_imageView bottomAnchor];
    v39 = [v41 constraintEqualToAnchor:v40 constant:10.0];
    v66[7] = v39;
    v38 = [(_ASCABLEQRCodeBadgeView *)v5->_badgeView widthAnchor];
    v37 = [(_ASCABLEQRCodeImageView *)v5->_imageView widthAnchor];
    v36 = [v38 constraintEqualToAnchor:v37 multiplier:0.3];
    v66[8] = v36;
    v35 = [(_ASCABLEQRCodeBadgeView *)v5->_badgeView heightAnchor];
    v34 = [(_ASCABLEQRCodeImageView *)v5->_imageView heightAnchor];
    v33 = [v35 constraintEqualToAnchor:v34 multiplier:0.3];
    v66[9] = v33;
    v32 = [(_ASCABLEQRCodeBadgeView *)v5->_badgeView centerXAnchor];
    v31 = [(_ASCABLEQRCodeImageView *)v5->_imageView centerXAnchor];
    v30 = [v32 constraintEqualToAnchor:v31];
    v66[10] = v30;
    v18 = [(_ASCABLEQRCodeBadgeView *)v5->_badgeView centerYAnchor];
    v19 = [(_ASCABLEQRCodeImageView *)v5->_imageView centerYAnchor];
    v20 = [v18 constraintEqualToAnchor:v19];
    v66[11] = v20;
    v21 = [(_ASCABLEQRCodeView *)v5 heightAnchor];
    [(_ASCABLEQRCodeView *)v5 _edgeLength];
    v22 = [v21 constraintEqualToConstant:?];
    v66[12] = v22;
    v23 = [(_ASCABLEQRCodeView *)v5 widthAnchor];
    v24 = [(_ASCABLEQRCodeView *)v5 heightAnchor];
    v25 = [v23 constraintEqualToAnchor:v24];
    v66[13] = v25;
    v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v66 count:14];
    [v48 activateConstraints:v26];

    v4 = v64;
    [(_ASCABLEQRCodeView *)v5 _updatePlatterBorderStyle];
    [(_ASCABLEQRCodeView *)v5 _updateQRCodeImage];
    v27 = v5;
  }

  v28 = *MEMORY[0x1E69E9840];
  return v5;
}

- (CGSize)intrinsicContentSize
{
  [(_ASCABLEQRCodeView *)self _edgeLength];
  v3 = v2;
  result.height = v3;
  result.width = v2;
  return result;
}

- (double)_edgeLength
{
  v2 = [MEMORY[0x1E698E020] isPad];
  result = 220.0;
  if (v2)
  {
    return 250.0;
  }

  return result;
}

- (void)traitCollectionDidChange:(id)a3
{
  v4.receiver = self;
  v4.super_class = _ASCABLEQRCodeView;
  [(_ASCABLEQRCodeView *)&v4 traitCollectionDidChange:a3];
  [(_ASCABLEQRCodeView *)self _updatePlatterBorderStyle];
  [(_ASCABLEQRCodeView *)self _updateQRCodeImage];
}

- (id)_qrCodeASImage
{
  v2 = [(_ASCABLEQRCodeView *)self _qrCodeCIImage];
  [v2 extent];
  v14 = CGRectInset(v13, 1.0, 1.0);
  x = v14.origin.x;
  y = v14.origin.y;
  width = v14.size.width;
  height = v14.size.height;
  v7 = [MEMORY[0x1E695F620] context];
  v8 = [v7 createCGImage:v2 fromRect:{x, y, width, height}];

  if (v8)
  {
    v9 = objc_alloc_init(MEMORY[0x1E69C8A40]);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __36___ASCABLEQRCodeView__qrCodeASImage__block_invoke;
    v11[3] = &__block_descriptor_40_e5_v8__0l;
    v11[4] = v8;
    [v9 setHandler:v11];
    v8 = [MEMORY[0x1E69DCAB8] imageWithCGImage:v8];
  }

  return v8;
}

- (id)_qrCodeCIImage
{
  v3 = [MEMORY[0x1E695F648] QRCodeGenerator];
  v4 = [(NSString *)self->_message dataUsingEncoding:4];
  [v3 setMessage:v4];

  v5 = [v3 outputImage];
  [v5 extent];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = [MEMORY[0x1E695F648] blendWithMaskFilter];
  v15 = MEMORY[0x1E695F658];
  v16 = [(_ASCABLEQRCodeView *)self _qrCodeColor];
  v17 = [v15 imageWithColor:v16];
  [v14 setBackgroundImage:v17];

  v18 = MEMORY[0x1E695F658];
  v19 = [MEMORY[0x1E695F610] clearColor];
  v20 = [v18 imageWithColor:v19];
  [v14 setInputImage:v20];

  [v14 setMaskImage:v5];
  v21 = [v14 outputImage];
  v22 = [v21 imageByCroppingToRect:{v7, v9, v11, v13}];

  return v22;
}

- (void)_updateQRCodeImage
{
  v3 = [(_ASCABLEQRCodeView *)self _qrCodeASImage];
  [(_ASCABLEQRCodeImageView *)self->_imageView setImage:v3];
}

- (void)_updatePlatterBorderStyle
{
  v3 = [(_ASCABLEQRCodeView *)self traitCollection];
  [v3 displayScale];
  v5 = 1.0 / v4;
  v6 = [(UIView *)self->_platterView layer];
  [v6 setBorderWidth:v5];

  v10 = [MEMORY[0x1E69DC888] separatorColor];
  v7 = v10;
  v8 = [v10 CGColor];
  v9 = [(UIView *)self->_platterView layer];
  [v9 setBorderColor:v8];
}

- (id)_qrCodeColor
{
  v2 = MEMORY[0x1E695F610];
  v3 = qrCodeContentsColor();
  v4 = [v2 colorWithCGColor:{objc_msgSend(v3, "CGColor")}];

  return v4;
}

@end