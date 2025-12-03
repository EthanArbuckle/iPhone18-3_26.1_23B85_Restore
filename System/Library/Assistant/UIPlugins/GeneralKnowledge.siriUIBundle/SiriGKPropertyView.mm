@interface SiriGKPropertyView
- (CGSize)_sizeThatFits:(CGSize)fits setFrames:(BOOL)frames;
- (CGSize)sizeThatFits:(CGSize)fits;
- (SiriGKPropertyView)initWithAnswerProperty:(id)property;
- (double)_lineHeight;
- (id)_decoratedString:(id)string forRegions:(id)regions;
- (id)_labelFontForHighlighted:(BOOL)highlighted;
- (void)updateConstraints;
@end

@implementation SiriGKPropertyView

- (double)_lineHeight
{
  v2 = SiriUIIsCompactWidth();
  result = 20.0;
  if (v2)
  {
    return 15.0;
  }

  return result;
}

- (SiriGKPropertyView)initWithAnswerProperty:(id)property
{
  propertyCopy = property;
  v55.receiver = self;
  v55.super_class = SiriGKPropertyView;
  v5 = [(SiriGKPropertyView *)&v55 init];
  p_isa = &v5->super.super.super.super.isa;
  if (!v5)
  {
    goto LABEL_23;
  }

  [(SiriGKView *)v5 setEdgeInsets:0.0, SiriUIPlatterStyle[32], 0.0, SiriUIPlatterStyle[34]];
  command = [propertyCopy command];
  [p_isa setCommand:command];

  command2 = [p_isa command];
  if (!command2)
  {
    punchOut = [propertyCopy punchOut];

    if (!punchOut)
    {
      goto LABEL_6;
    }

    command2 = [propertyCopy punchOut];
    [p_isa setCommand:command2];
  }

LABEL_6:
  v10 = objc_alloc_init(NSMutableParagraphStyle);
  [p_isa _lineHeight];
  [v10 setMinimumLineHeight:?];
  [p_isa _lineHeight];
  [v10 setMaximumLineHeight:?];
  name = [propertyCopy name];
  if (name)
  {
    v12 = name;
    name2 = [propertyCopy name];
    v14 = [name2 isEqualToString:&stru_188B0];

    if ((v14 & 1) == 0)
    {
      v15 = +[SiriSharedUIContentLabel label];
      v16 = p_isa[6];
      p_isa[6] = v15;

      [p_isa[6] setTranslatesAutoresizingMaskIntoConstraints:0];
      v17 = p_isa[6];
      selected = [propertyCopy selected];
      v19 = [p_isa _labelFontForHighlighted:{objc_msgSend(selected, "BOOLValue")}];
      [v17 setFont:v19];

      v20 = [NSAttributedString alloc];
      name3 = [propertyCopy name];
      v56 = NSParagraphStyleAttributeName;
      v57 = v10;
      v22 = [NSDictionary dictionaryWithObjects:&v57 forKeys:&v56 count:1];
      v23 = [v20 initWithString:name3 attributes:v22];

      [p_isa[6] setAttributedText:v23];
      [p_isa[6] setNumberOfLines:0];
      [p_isa addSubview:p_isa[6]];
    }
  }

  v24 = objc_alloc_init(NSMutableAttributedString);
  decoratedValue = [propertyCopy decoratedValue];
  if (decoratedValue)
  {
    v26 = decoratedValue;
    decoratedValue2 = [propertyCopy decoratedValue];
    text = [decoratedValue2 text];
    v29 = [text isEqualToString:&stru_188B0];

    if ((v29 & 1) == 0)
    {
      decoratedValue3 = [propertyCopy decoratedValue];
      text2 = [decoratedValue3 text];
      decoratedValue4 = [propertyCopy decoratedValue];
      regions = [decoratedValue4 regions];
      v34 = [p_isa _decoratedString:text2 forRegions:regions];
      [v24 appendAttributedString:v34];
    }
  }

  decoratedValueAnnotation = [propertyCopy decoratedValueAnnotation];
  if (decoratedValueAnnotation)
  {
    v36 = decoratedValueAnnotation;
    decoratedValueAnnotation2 = [propertyCopy decoratedValueAnnotation];
    text3 = [decoratedValueAnnotation2 text];
    v39 = [text3 isEqualToString:&stru_188B0];

    if ((v39 & 1) == 0)
    {
      decoratedValueAnnotation3 = [propertyCopy decoratedValueAnnotation];
      text4 = [decoratedValueAnnotation3 text];
      v42 = [NSString stringWithFormat:@" %@", text4];

      decoratedValueAnnotation4 = [propertyCopy decoratedValueAnnotation];
      regions2 = [decoratedValueAnnotation4 regions];
      v45 = [p_isa _decoratedString:v42 forRegions:regions2];
      [v24 appendAttributedString:v45];
    }
  }

  if ([v24 length])
  {
    v46 = +[SiriSharedUIContentLabel label];
    v47 = p_isa[7];
    p_isa[7] = v46;

    [p_isa[7] setTranslatesAutoresizingMaskIntoConstraints:0];
    v48 = p_isa[7];
    selected2 = [propertyCopy selected];
    v50 = [p_isa _labelFontForHighlighted:{objc_msgSend(selected2, "BOOLValue")}];
    [v48 setFont:v50];

    [p_isa[7] setNumberOfLines:0];
    v51 = objc_alloc_init(NSMutableParagraphStyle);
    [p_isa _lineHeight];
    [v51 setMinimumLineHeight:?];
    [p_isa _lineHeight];
    [v51 setMaximumLineHeight:?];
    if (SiriLanguageIsRTL())
    {
      v52 = 0;
    }

    else
    {
      v52 = 2;
    }

    [v51 setAlignment:v52];
    [v24 addAttribute:NSParagraphStyleAttributeName value:v51 range:{0, objc_msgSend(v24, "length")}];
    [p_isa[7] setAttributedText:v24];
    [p_isa addSubview:p_isa[7]];
  }

  [p_isa setNeedsUpdateConstraints];
  if (!p_isa[6] && !p_isa[7])
  {

    v53 = 0;
    goto LABEL_24;
  }

LABEL_23:
  v53 = p_isa;
LABEL_24:

  return v53;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  [(SiriGKView *)self edgeInsets];
  v10 = width - v8 - v9;

  [(SiriGKPropertyView *)self _sizeThatFits:0 setFrames:v10, height - v6 - v7];
  result.height = v12;
  result.width = v11;
  return result;
}

- (void)updateConstraints
{
  v13.receiver = self;
  v13.super_class = SiriGKPropertyView;
  [(SiriGKPropertyView *)&v13 updateConstraints];
  if (!self->_hasSetUpConstraints)
  {
    leftLabel = self->_leftLabel;
    if (!leftLabel)
    {
      leftLabel = self->_rightLabel;
    }

    v4 = leftLabel;
    rightLabel = self->_rightLabel;
    if (!rightLabel)
    {
      rightLabel = self->_leftLabel;
    }

    v6 = rightLabel;
    if (self->_leftLabel)
    {
      if (self->_rightLabel)
      {
        v7 = [NSLayoutConstraint constraintWithItem:v4 attribute:6 relatedBy:0 toItem:v6 attribute:5 multiplier:1.0 constant:-10.0];
        [(SiriGKPropertyView *)self addConstraint:v7];

        v8 = [NSLayoutConstraint constraintWithItem:v4 attribute:10 relatedBy:0 toItem:v6 attribute:10 multiplier:1.0 constant:0.0];
        [(SiriGKPropertyView *)self addConstraint:v8];

        v9 = [NSLayoutConstraint constraintWithItem:v4 attribute:7 relatedBy:0 toItem:v6 attribute:7 multiplier:1.0 constant:0.0];
        [(SiriGKPropertyView *)self addConstraint:v9];
      }
    }

    v10 = [NSLayoutConstraint constraintWithItem:v4 attribute:5 relatedBy:0 toItem:self attribute:5 multiplier:1.0 constant:0.0];
    [(SiriGKPropertyView *)self addConstraint:v10];

    v11 = [NSLayoutConstraint constraintWithItem:v6 attribute:6 relatedBy:0 toItem:self attribute:6 multiplier:1.0 constant:0.0];
    [(SiriGKPropertyView *)self addConstraint:v11];

    v12 = [NSLayoutConstraint constraintWithItem:v4 attribute:10 relatedBy:0 toItem:self attribute:10 multiplier:1.0 constant:0.0];
    [(SiriGKPropertyView *)self addConstraint:v12];

    self->_hasSetUpConstraints = 1;
  }
}

- (CGSize)_sizeThatFits:(CGSize)fits setFrames:(BOOL)frames
{
  framesCopy = frames;
  width = fits.width;
  v7 = (fits.width + -10.0) * 0.5;
  y = CGRectZero.origin.y;
  [(UILabel *)self->_leftLabel sizeThatFits:v7, 1.79769313e308];
  v10 = v9;
  v12 = v11;
  [(SiriGKPropertyView *)self _bottomMargin];
  v14 = v12 + v13;
  if (framesCopy)
  {
    [(UILabel *)self->_leftLabel setFrame:CGRectZero.origin.x, y, v10, v14];
  }

  [(UILabel *)self->_rightLabel sizeThatFits:v7, 1.79769313e308];
  v16 = v15;
  v18 = v17;
  [(SiriGKPropertyView *)self _bottomMargin];
  v20 = v18 + v19;
  if (framesCopy)
  {
    [(UILabel *)self->_rightLabel setFrame:width - v16, y, v16, v20];
  }

  v26.origin.x = CGRectZero.origin.x;
  v26.origin.y = y;
  v26.size.width = v10;
  v26.size.height = v14;
  MaxY = CGRectGetMaxY(v26);
  v27.origin.x = width - v16;
  v27.origin.y = y;
  v27.size.width = v16;
  v27.size.height = v20;
  v22 = CGRectGetMaxY(v27);
  if (MaxY >= v22)
  {
    v23 = MaxY;
  }

  else
  {
    v23 = v22;
  }

  v24 = width;
  result.height = v23;
  result.width = v24;
  return result;
}

- (id)_labelFontForHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  v4 = SiriUIIsCompactWidth();
  v5 = 18.0;
  if (v4)
  {
    v5 = 14.0;
  }

  if (highlightedCopy)
  {
    [UIFont siriui_mediumWeightFontWithSize:v5];
  }

  else
  {
    [UIFont siriui_lightWeightFontWithSize:v5];
  }
  v6 = ;

  return v6;
}

- (id)_decoratedString:(id)string forRegions:(id)regions
{
  stringCopy = string;
  regionsCopy = regions;
  v25 = stringCopy;
  v7 = [[NSMutableAttributedString alloc] initWithString:stringCopy];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = regionsCopy;
  v8 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v30;
    v11 = SARegionPropertySUPERSCRIPTValue;
    v26 = SARegionPropertySUBSCRIPTValue;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v30 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v29 + 1) + 8 * i);
        property = [v13 property];
        v15 = [property isEqualToString:v11];

        v16 = 0.3;
        if ((v15 & 1) == 0)
        {
          property2 = [v13 property];
          v18 = [property2 isEqualToString:v26];

          v16 = -0.3;
          if (!v18)
          {
            continue;
          }
        }

        [(SiriGKPropertyView *)self _lineHeight];
        v20 = [NSNumber numberWithDouble:v19 * v16];
        start = [v13 start];
        integerValue = [start integerValue];
        v23 = [v13 length];
        [v7 addAttribute:NSBaselineOffsetAttributeName value:v20 range:{integerValue, objc_msgSend(v23, "integerValue")}];
      }

      v9 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v9);
  }

  return v7;
}

@end