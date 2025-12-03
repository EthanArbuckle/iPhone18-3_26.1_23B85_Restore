@interface HSKeylineLabel
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (HSKeylineLabel)init;
- (NSAttributedString)attributedText;
- (NSString)text;
- (id)firstBaselineAnchor;
- (id)lastBaselineAnchor;
- (void)layoutSubviews;
- (void)setAttributedText:(id)text;
- (void)setBackgroundColor:(id)color;
- (void)setText:(id)text;
@end

@implementation HSKeylineLabel

- (HSKeylineLabel)init
{
  v32.receiver = self;
  v32.super_class = HSKeylineLabel;
  v2 = [(HSKeylineLabel *)&v32 init];
  if (v2)
  {
    v3 = objc_opt_new();
    [(HSKeylineLabel *)v2 setLeadingKeylineLayer:v3];

    v4 = objc_opt_new();
    [(HSKeylineLabel *)v2 setTrailingKeylineLayer:v4];

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    leadingKeylineLayer = [(HSKeylineLabel *)v2 leadingKeylineLayer];
    v33[0] = leadingKeylineLayer;
    trailingKeylineLayer = [(HSKeylineLabel *)v2 trailingKeylineLayer];
    v33[1] = trailingKeylineLayer;
    v7 = [NSArray arrayWithObjects:v33 count:2];

    v8 = [v7 countByEnumeratingWithState:&v28 objects:v34 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v29;
      do
      {
        v11 = 0;
        do
        {
          if (*v29 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v28 + 1) + 8 * v11);
          v13 = +[UIColor _externalSystemGrayColor];
          [v12 setBackgroundColor:{objc_msgSend(v13, "CGColor")}];

          layer = [(HSKeylineLabel *)v2 layer];
          [layer addSublayer:v12];

          v11 = v11 + 1;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v28 objects:v34 count:16];
      }

      while (v9);
    }

    v15 = objc_opt_new();
    [(HSKeylineLabel *)v2 setLabel:v15];

    label = [(HSKeylineLabel *)v2 label];
    [label setTranslatesAutoresizingMaskIntoConstraints:0];

    label2 = [(HSKeylineLabel *)v2 label];
    [label2 setNumberOfLines:1];

    label3 = [(HSKeylineLabel *)v2 label];
    [(HSKeylineLabel *)v2 addSubview:label3];

    label4 = [(HSKeylineLabel *)v2 label];
    centerXAnchor = [label4 centerXAnchor];
    centerXAnchor2 = [(HSKeylineLabel *)v2 centerXAnchor];
    v22 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    [v22 setActive:1];

    label5 = [(HSKeylineLabel *)v2 label];
    centerYAnchor = [label5 centerYAnchor];
    centerYAnchor2 = [(HSKeylineLabel *)v2 centerYAnchor];
    v26 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    [v26 setActive:1];

    [(HSKeylineLabel *)v2 setMargin:8.0];
  }

  return v2;
}

- (void)layoutSubviews
{
  v29.receiver = self;
  v29.super_class = HSKeylineLabel;
  [(HSKeylineLabel *)&v29 layoutSubviews];
  window = [(HSKeylineLabel *)self window];
  screen = [window screen];
  [screen scale];
  v28 = 1.0 / v5;

  label = [(HSKeylineLabel *)self label];
  [label frame];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v30.origin.x = v8;
  v30.origin.y = v10;
  v30.size.width = v12;
  v30.size.height = v14;
  MidY = CGRectGetMidY(v30);
  [(HSKeylineLabel *)self margin];
  v16 = v8 - v15;
  [(HSKeylineLabel *)self margin];
  v18 = v17;
  v31.origin.x = v8;
  v31.origin.y = v10;
  v31.size.width = v12;
  v31.size.height = v14;
  v19 = v18 + CGRectGetMaxX(v31);
  v32.origin.x = v8;
  v32.origin.y = v10;
  v32.size.width = v12;
  v32.size.height = v14;
  v20 = CGRectGetMidY(v32);
  [(HSKeylineLabel *)self bounds];
  MaxX = CGRectGetMaxX(v33);
  v34.origin.x = v8;
  v34.origin.y = v10;
  v34.size.width = v12;
  v34.size.height = v14;
  v22 = MaxX - CGRectGetMaxX(v34);
  [(HSKeylineLabel *)self margin];
  v24 = v22 - v23;
  leadingKeylineLayer = [(HSKeylineLabel *)self leadingKeylineLayer];
  [leadingKeylineLayer setFrame:{0.0, MidY, v16, v28}];

  trailingKeylineLayer = [(HSKeylineLabel *)self trailingKeylineLayer];
  [trailingKeylineLayer setFrame:{v19, v20, v24, v28}];
}

- (CGSize)intrinsicContentSize
{
  label = [(HSKeylineLabel *)self label];
  [label intrinsicContentSize];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  label = [(HSKeylineLabel *)self label];
  [label sizeThatFits:{width, height}];
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (void)setBackgroundColor:(id)color
{
  colorCopy = color;
  v17.receiver = self;
  v17.super_class = HSKeylineLabel;
  [(HSKeylineLabel *)&v17 setBackgroundColor:colorCopy];
  label = [(HSKeylineLabel *)self label];
  [label setBackgroundColor:colorCopy];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  leadingKeylineLayer = [(HSKeylineLabel *)self leadingKeylineLayer];
  v18[0] = leadingKeylineLayer;
  trailingKeylineLayer = [(HSKeylineLabel *)self trailingKeylineLayer];
  v18[1] = trailingKeylineLayer;
  v8 = [NSArray arrayWithObjects:v18 count:2];

  v9 = [v8 countByEnumeratingWithState:&v13 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
    do
    {
      v12 = 0;
      do
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v13 + 1) + 8 * v12) setBackgroundColor:{objc_msgSend(colorCopy, "CGColor")}];
        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v13 objects:v19 count:16];
    }

    while (v10);
  }
}

- (id)firstBaselineAnchor
{
  label = [(HSKeylineLabel *)self label];
  firstBaselineAnchor = [label firstBaselineAnchor];

  return firstBaselineAnchor;
}

- (id)lastBaselineAnchor
{
  label = [(HSKeylineLabel *)self label];
  lastBaselineAnchor = [label lastBaselineAnchor];

  return lastBaselineAnchor;
}

- (NSString)text
{
  attributedText = [(HSKeylineLabel *)self attributedText];
  string = [attributedText string];

  return string;
}

- (void)setText:(id)text
{
  textCopy = text;
  v5 = [[NSAttributedString alloc] initWithString:textCopy];

  [(HSKeylineLabel *)self setAttributedText:v5];
}

- (NSAttributedString)attributedText
{
  label = [(HSKeylineLabel *)self label];
  attributedText = [label attributedText];

  return attributedText;
}

- (void)setAttributedText:(id)text
{
  textCopy = text;
  label = [(HSKeylineLabel *)self label];
  [label setAttributedText:textCopy];

  label2 = [(HSKeylineLabel *)self label];
  [label2 sizeToFit];

  [(HSKeylineLabel *)self invalidateIntrinsicContentSize];

  [(HSKeylineLabel *)self setNeedsLayout];
}

@end