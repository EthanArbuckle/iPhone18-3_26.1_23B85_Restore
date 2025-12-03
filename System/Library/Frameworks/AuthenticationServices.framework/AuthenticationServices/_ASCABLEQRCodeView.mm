@interface _ASCABLEQRCodeView
- (CGSize)intrinsicContentSize;
- (_ASCABLEQRCodeView)initWithMessage:(id)message;
- (double)_edgeLength;
- (id)_qrCodeASImage;
- (id)_qrCodeCIImage;
- (id)_qrCodeColor;
- (void)_updatePlatterBorderStyle;
- (void)_updateQRCodeImage;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation _ASCABLEQRCodeView

- (_ASCABLEQRCodeView)initWithMessage:(id)message
{
  v66[14] = *MEMORY[0x1E69E9840];
  messageCopy = message;
  v65.receiver = self;
  v65.super_class = _ASCABLEQRCodeView;
  v5 = [(_ASCABLEQRCodeView *)&v65 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  if (v5)
  {
    v6 = [messageCopy copy];
    message = v5->_message;
    v5->_message = v6;

    v8 = objc_alloc_init(MEMORY[0x1E69DD250]);
    platterView = v5->_platterView;
    v5->_platterView = v8;

    [(UIView *)v5->_platterView setTranslatesAutoresizingMaskIntoConstraints:0];
    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    [(UIView *)v5->_platterView setBackgroundColor:whiteColor];

    layer = [(UIView *)v5->_platterView layer];
    [layer setCornerRadius:8.0];

    v12 = *MEMORY[0x1E69796E8];
    [(UIView *)v5->_platterView layer];
    v13 = v64 = messageCopy;
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
    leadingAnchor = [(UIView *)v5->_platterView leadingAnchor];
    leadingAnchor2 = [(_ASCABLEQRCodeView *)v5 leadingAnchor];
    v61 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v66[0] = v61;
    trailingAnchor = [(UIView *)v5->_platterView trailingAnchor];
    trailingAnchor2 = [(_ASCABLEQRCodeView *)v5 trailingAnchor];
    v58 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v66[1] = v58;
    topAnchor = [(UIView *)v5->_platterView topAnchor];
    topAnchor2 = [(_ASCABLEQRCodeView *)v5 topAnchor];
    v55 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v66[2] = v55;
    bottomAnchor = [(UIView *)v5->_platterView bottomAnchor];
    bottomAnchor2 = [(_ASCABLEQRCodeView *)v5 bottomAnchor];
    v52 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v66[3] = v52;
    leadingAnchor3 = [(_ASCABLEQRCodeImageView *)v5->_imageView leadingAnchor];
    leadingAnchor4 = [(UIView *)v5->_platterView leadingAnchor];
    v49 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:10.0];
    v66[4] = v49;
    trailingAnchor3 = [(UIView *)v5->_platterView trailingAnchor];
    trailingAnchor4 = [(_ASCABLEQRCodeImageView *)v5->_imageView trailingAnchor];
    v45 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:10.0];
    v66[5] = v45;
    topAnchor3 = [(_ASCABLEQRCodeImageView *)v5->_imageView topAnchor];
    topAnchor4 = [(UIView *)v5->_platterView topAnchor];
    v42 = [topAnchor3 constraintEqualToAnchor:topAnchor4 constant:10.0];
    v66[6] = v42;
    bottomAnchor3 = [(UIView *)v5->_platterView bottomAnchor];
    bottomAnchor4 = [(_ASCABLEQRCodeImageView *)v5->_imageView bottomAnchor];
    v39 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4 constant:10.0];
    v66[7] = v39;
    widthAnchor = [(_ASCABLEQRCodeBadgeView *)v5->_badgeView widthAnchor];
    widthAnchor2 = [(_ASCABLEQRCodeImageView *)v5->_imageView widthAnchor];
    v36 = [widthAnchor constraintEqualToAnchor:widthAnchor2 multiplier:0.3];
    v66[8] = v36;
    heightAnchor = [(_ASCABLEQRCodeBadgeView *)v5->_badgeView heightAnchor];
    heightAnchor2 = [(_ASCABLEQRCodeImageView *)v5->_imageView heightAnchor];
    v33 = [heightAnchor constraintEqualToAnchor:heightAnchor2 multiplier:0.3];
    v66[9] = v33;
    centerXAnchor = [(_ASCABLEQRCodeBadgeView *)v5->_badgeView centerXAnchor];
    centerXAnchor2 = [(_ASCABLEQRCodeImageView *)v5->_imageView centerXAnchor];
    v30 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v66[10] = v30;
    centerYAnchor = [(_ASCABLEQRCodeBadgeView *)v5->_badgeView centerYAnchor];
    centerYAnchor2 = [(_ASCABLEQRCodeImageView *)v5->_imageView centerYAnchor];
    v20 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v66[11] = v20;
    heightAnchor3 = [(_ASCABLEQRCodeView *)v5 heightAnchor];
    [(_ASCABLEQRCodeView *)v5 _edgeLength];
    v22 = [heightAnchor3 constraintEqualToConstant:?];
    v66[12] = v22;
    widthAnchor3 = [(_ASCABLEQRCodeView *)v5 widthAnchor];
    heightAnchor4 = [(_ASCABLEQRCodeView *)v5 heightAnchor];
    v25 = [widthAnchor3 constraintEqualToAnchor:heightAnchor4];
    v66[13] = v25;
    v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v66 count:14];
    [v48 activateConstraints:v26];

    messageCopy = v64;
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
  isPad = [MEMORY[0x1E698E020] isPad];
  result = 220.0;
  if (isPad)
  {
    return 250.0;
  }

  return result;
}

- (void)traitCollectionDidChange:(id)change
{
  v4.receiver = self;
  v4.super_class = _ASCABLEQRCodeView;
  [(_ASCABLEQRCodeView *)&v4 traitCollectionDidChange:change];
  [(_ASCABLEQRCodeView *)self _updatePlatterBorderStyle];
  [(_ASCABLEQRCodeView *)self _updateQRCodeImage];
}

- (id)_qrCodeASImage
{
  _qrCodeCIImage = [(_ASCABLEQRCodeView *)self _qrCodeCIImage];
  [_qrCodeCIImage extent];
  v14 = CGRectInset(v13, 1.0, 1.0);
  x = v14.origin.x;
  y = v14.origin.y;
  width = v14.size.width;
  height = v14.size.height;
  context = [MEMORY[0x1E695F620] context];
  v8 = [context createCGImage:_qrCodeCIImage fromRect:{x, y, width, height}];

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
  qRCodeGenerator = [MEMORY[0x1E695F648] QRCodeGenerator];
  v4 = [(NSString *)self->_message dataUsingEncoding:4];
  [qRCodeGenerator setMessage:v4];

  outputImage = [qRCodeGenerator outputImage];
  [outputImage extent];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  blendWithMaskFilter = [MEMORY[0x1E695F648] blendWithMaskFilter];
  v15 = MEMORY[0x1E695F658];
  _qrCodeColor = [(_ASCABLEQRCodeView *)self _qrCodeColor];
  v17 = [v15 imageWithColor:_qrCodeColor];
  [blendWithMaskFilter setBackgroundImage:v17];

  v18 = MEMORY[0x1E695F658];
  clearColor = [MEMORY[0x1E695F610] clearColor];
  v20 = [v18 imageWithColor:clearColor];
  [blendWithMaskFilter setInputImage:v20];

  [blendWithMaskFilter setMaskImage:outputImage];
  outputImage2 = [blendWithMaskFilter outputImage];
  v22 = [outputImage2 imageByCroppingToRect:{v7, v9, v11, v13}];

  return v22;
}

- (void)_updateQRCodeImage
{
  _qrCodeASImage = [(_ASCABLEQRCodeView *)self _qrCodeASImage];
  [(_ASCABLEQRCodeImageView *)self->_imageView setImage:_qrCodeASImage];
}

- (void)_updatePlatterBorderStyle
{
  traitCollection = [(_ASCABLEQRCodeView *)self traitCollection];
  [traitCollection displayScale];
  v5 = 1.0 / v4;
  layer = [(UIView *)self->_platterView layer];
  [layer setBorderWidth:v5];

  separatorColor = [MEMORY[0x1E69DC888] separatorColor];
  v7 = separatorColor;
  cGColor = [separatorColor CGColor];
  layer2 = [(UIView *)self->_platterView layer];
  [layer2 setBorderColor:cGColor];
}

- (id)_qrCodeColor
{
  v2 = MEMORY[0x1E695F610];
  v3 = qrCodeContentsColor();
  v4 = [v2 colorWithCGColor:{objc_msgSend(v3, "CGColor")}];

  return v4;
}

@end