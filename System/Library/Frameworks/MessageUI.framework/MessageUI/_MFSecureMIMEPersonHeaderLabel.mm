@interface _MFSecureMIMEPersonHeaderLabel
- (CGSize)sizeThatFits:(CGSize)fits;
- (_MFSecureMIMEPersonHeaderLabel)initWithImage:(id)image text:(id)text textColor:(id)color;
- (void)layoutSubviews;
- (void)setText:(id)text;
@end

@implementation _MFSecureMIMEPersonHeaderLabel

- (_MFSecureMIMEPersonHeaderLabel)initWithImage:(id)image text:(id)text textColor:(id)color
{
  imageCopy = image;
  textCopy = text;
  colorCopy = color;
  v26.receiver = self;
  v26.super_class = _MFSecureMIMEPersonHeaderLabel;
  v11 = *MEMORY[0x1E695F058];
  v12 = *(MEMORY[0x1E695F058] + 8);
  v13 = *(MEMORY[0x1E695F058] + 16);
  v14 = *(MEMORY[0x1E695F058] + 24);
  v15 = [(_MFSecureMIMEPersonHeaderLabel *)&v26 initWithFrame:*MEMORY[0x1E695F058], v12, v13, v14];
  v16 = v15;
  if (v15)
  {
    [(_MFSecureMIMEPersonHeaderLabel *)v15 setAutoresizesSubviews:1];
    [(_MFSecureMIMEPersonHeaderLabel *)v16 setAutoresizingMask:2];
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(_MFSecureMIMEPersonHeaderLabel *)v16 setBackgroundColor:clearColor];

    v18 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:imageCopy];
    imageView = v16->_imageView;
    v16->_imageView = v18;

    [(_MFSecureMIMEPersonHeaderLabel *)v16 addSubview:v16->_imageView];
    v20 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDCF8] addingSymbolicTraits:0 options:1];
    v21 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v11, v12, v13, v14}];
    label = v16->_label;
    v16->_label = v21;

    clearColor2 = [MEMORY[0x1E69DC888] clearColor];
    [(UILabel *)v16->_label setBackgroundColor:clearColor2];

    [(UILabel *)v16->_label setText:textCopy];
    [(UILabel *)v16->_label setTextColor:colorCopy];
    v24 = [MEMORY[0x1E69DB878] fontWithDescriptor:v20 size:0.0];
    [(UILabel *)v16->_label setFont:v24];

    [(_MFSecureMIMEPersonHeaderLabel *)v16 addSubview:v16->_label];
  }

  return v16;
}

- (void)setText:(id)text
{
  textCopy = text;
  [(UILabel *)self->_label setText:?];
  [(_MFSecureMIMEPersonHeaderLabel *)self setNeedsLayout];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  imageView = self->_imageView;
  [(UIImageView *)imageView bounds:fits.width];
  [(UIImageView *)imageView sizeThatFits:v6, v7];
  v9 = v8;
  text = [(UILabel *)self->_label text];
  font = [(UILabel *)self->_label font];
  [text _legacy_sizeWithFont:font];
  v13 = v12;

  if (v9 >= v13)
  {
    v14 = v9;
  }

  else
  {
    v14 = v13;
  }

  v15 = width;
  result.height = v14;
  result.width = v15;
  return result;
}

- (void)layoutSubviews
{
  [(_MFSecureMIMEPersonHeaderLabel *)self bounds];
  v4 = v3;
  v6 = v5;
  [(UIImageView *)self->_imageView sizeToFit];
  [(UIImageView *)self->_imageView frame];
  [(UIImageView *)self->_imageView setFrame:0.0, (v6 - v7) * 0.5];
  [(UILabel *)self->_label sizeToFit];
  [(UILabel *)self->_label frame];
  [(_MFSecureMIMEPersonHeaderLabel *)self bounds];
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen scale];
  UIRectCenteredYInRectScale();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  label = self->_label;
  if (v14 <= v4 - v10)
  {
    v18 = v14;
  }

  else
  {
    v18 = v4 - v10;
  }

  [(UILabel *)label setFrame:v10, v12, v18, v16];
}

@end