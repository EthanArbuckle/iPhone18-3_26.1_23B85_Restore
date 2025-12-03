@interface PKMathContextMenuPreviewView
+ (UIFont)footnoteBoldFont;
- (PKMathContextMenuPreviewView)initWithImage:(id)image label:(id)label attributionImage:(id)attributionImage lastRefreshDate:(id)date;
- (double)p_attributionImageHeight;
- (double)p_layoutSubviews;
- (void)layoutSubviews;
@end

@implementation PKMathContextMenuPreviewView

- (PKMathContextMenuPreviewView)initWithImage:(id)image label:(id)label attributionImage:(id)attributionImage lastRefreshDate:(id)date
{
  imageCopy = image;
  labelCopy = label;
  attributionImageCopy = attributionImage;
  dateCopy = date;
  v36.receiver = self;
  v36.super_class = PKMathContextMenuPreviewView;
  v14 = [(PKMathContextMenuPreviewView *)&v36 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v15 = v14;
  if (v14)
  {
    [(UIView *)v14 pk_setDefaultCapsuleConfiguration];
    if (imageCopy)
    {
      v16 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:imageCopy];
    }

    else
    {
      v16 = 0;
    }

    objc_storeStrong(&v15->_imageView, v16);
    if (imageCopy)
    {
    }

    objc_storeStrong(&v15->_label, label);
    [labelCopy frame];
    v15->_labelSize.width = v17;
    v15->_labelSize.height = v18;
    if (dateCopy)
    {
      v19 = objc_alloc_init(MEMORY[0x1E69DCC10]);
      dateLabel = v15->_dateLabel;
      v15->_dateLabel = v19;

      v21 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD28]];
      [(UILabel *)v15->_dateLabel setFont:v21];

      secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
      [(UILabel *)v15->_dateLabel setTextColor:secondaryLabelColor];

      [(UILabel *)v15->_dateLabel setTextAlignment:1];
      [(UILabel *)v15->_dateLabel setNumberOfLines:1];
      v23 = objc_alloc_init(MEMORY[0x1E696AE78]);
      date = [MEMORY[0x1E695DF00] date];
      [v23 localizedStringForDate:dateCopy relativeToDate:date];
      v25 = imageCopy;
      v26 = attributionImageCopy;
      v27 = dateCopy;
      v29 = v28 = labelCopy;
      [(UILabel *)v15->_dateLabel setText:v29];

      labelCopy = v28;
      dateCopy = v27;
      attributionImageCopy = v26;
      imageCopy = v25;

      [(UILabel *)v15->_dateLabel sizeToFit];
    }

    if (attributionImageCopy)
    {
      [attributionImageCopy size];
      if (v30 > 0.0)
      {
        v31 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:attributionImageCopy];
        attrImageView = v15->_attrImageView;
        v15->_attrImageView = v31;

        [(UIImageView *)v15->_attrImageView setContentMode:0];
      }
    }

    [(PKMathContextMenuPreviewView *)v15 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIImageView *)v15->_imageView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v15->_label setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIImageView *)v15->_attrImageView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v15->_dateLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    if (v15->_imageView)
    {
      [(PKMathContextMenuPreviewView *)v15 addSubview:?];
    }

    if (v15->_label)
    {
      [(PKMathContextMenuPreviewView *)v15 addSubview:?];
    }

    if (v15->_attrImageView)
    {
      [(PKMathContextMenuPreviewView *)v15 addSubview:?];
    }

    if (v15->_dateLabel)
    {
      [(PKMathContextMenuPreviewView *)v15 addSubview:?];
    }

    p_layoutSubviews = [(PKMathContextMenuPreviewView *)&v15->super.super.super.isa p_layoutSubviews];
    [(PKMathContextMenuPreviewView *)v15 setFrame:0.0, 0.0, p_layoutSubviews, v34];
  }

  return v15;
}

- (double)p_layoutSubviews
{
  if (!self)
  {
    return 0.0;
  }

  v2 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  [v2 pointSize];
  v4 = v3;

  v5 = v4 * 0.5;
  image = [self[51] image];
  [image size];
  v8 = v7;
  v10 = v9;

  v11 = MEMORY[0x1E695EFF8];
  [self[52] frame];
  [self[52] setFrame:?];
  [self[54] sizeToFit];
  v12 = self[53];
  if (v12)
  {
    image2 = [v12 image];
    [image2 size];
    v15 = v14;
    v17 = v16;

    p_attributionImageHeight = [PKMathContextMenuPreviewView p_attributionImageHeight];
    [self[53] setFrame:{0.0, 0.0, p_attributionImageHeight * (v15 / v17), p_attributionImageHeight}];
  }

  v19 = v5 + 4.0;
  v21 = *v11;
  v20 = v11[1];
  if (self[51])
  {
    v22 = self[53];
    if (v22)
    {
      v23 = self[54];
      [v22 bounds];
      if (v23)
      {
        [self[54] bounds];
        [self[53] bounds];
        v26 = v25;
        [self[54] bounds];
        v28 = v26 + v27 + 96.0;
        if (v10 <= v19 + v19)
        {
          v29 = v10;
        }

        else
        {
          v29 = v10 - (v19 + -4.0);
        }

        if (v28 <= v8)
        {
          v30 = v8;
        }

        else
        {
          v21 = (v28 - v8) * 0.5;
          v30 = v28;
        }

        v31 = v29 + 6.0;
        [self[53] bounds];
        v33 = v32;
        [self[53] bounds];
        [self[53] setFrame:{24.0, v31, v33}];
        [self[54] bounds];
        [self[54] setFrame:{v30 - v34 + -24.0, v31 + -[PKMathContextMenuPreviewView p_attributionImageHeight]() * -0.15, v34, v35}];
        goto LABEL_40;
      }

      v46 = v24 + 48.0;
      if (v10 <= v19 + v19)
      {
        v47 = v10;
      }

      else
      {
        v47 = v10 - (v19 + -4.0);
      }

      if (v46 > v8)
      {
        v48 = 24.0;
      }

      else
      {
        v48 = (v8 - v46) * 0.5 + 24.0;
      }

      if (v46 <= v8)
      {
        v30 = v8;
      }

      else
      {
        v21 = (v46 - v8) * 0.5;
        v30 = v24 + 48.0;
      }

      [self[53] bounds];
      v39 = v47 + 6.0;
      v45 = self[53];
      v41 = v48;
      goto LABEL_39;
    }
  }

  v36 = self[52];
  if (v36)
  {
    [v36 bounds];
    v38 = v37 + 48.0;
    if (v10 <= v19 + v19)
    {
      v39 = v10;
    }

    else
    {
      v39 = v10 - (v19 + -4.0);
    }

    v40 = self[51];
    v41 = 0.0;
    v42 = (v8 - v38) * 0.5;
    v43 = (v38 - v8) * 0.5;
    if (v38 <= v8)
    {
      v43 = v21;
      v44 = v8;
    }

    else
    {
      v42 = 24.0;
      v44 = v37 + 48.0;
    }

    if (v40)
    {
      v41 = v42;
    }

    else
    {
      v39 = v5 + 4.0;
    }

    if (v40)
    {
      v21 = v43;
      v30 = v44;
    }

    else
    {
      v30 = v37 + 48.0;
    }

    v45 = self[52];
LABEL_39:
    [v45 setFrame:{v41, v39}];
    goto LABEL_40;
  }

  v30 = v8;
LABEL_40:
  [self[51] setFrame:{v21, v20, v8, v10}];
  return v30;
}

+ (UIFont)footnoteBoldFont
{
  v2 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD28]];
  v3 = MEMORY[0x1E69DB878];
  fontDescriptor = [v2 fontDescriptor];
  v5 = [fontDescriptor fontDescriptorWithSymbolicTraits:2];
  [v2 pointSize];
  v6 = [v3 fontWithDescriptor:v5 size:?];

  return v6;
}

- (double)p_attributionImageHeight
{
  v0 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD28]];
  [v0 pointSize];
  v2 = v1;

  return v2;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = PKMathContextMenuPreviewView;
  [(PKMathContextMenuPreviewView *)&v3 layoutSubviews];
  [(PKMathContextMenuPreviewView *)&self->super.super.super.isa p_layoutSubviews];
}

@end