@interface AXVoiceOverPunctuationPickerButtonSet
- (AXVoiceOverPunctuationPickerButtonSet)initWithFrame:(CGRect)frame;
- (id)accessibilityPath;
- (void)layoutSubviews;
@end

@implementation AXVoiceOverPunctuationPickerButtonSet

- (AXVoiceOverPunctuationPickerButtonSet)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v26.receiver = self;
  v26.super_class = AXVoiceOverPunctuationPickerButtonSet;
  v7 = [(AXVoiceOverPunctuationPickerButtonSet *)&v26 initWithFrame:?];
  v8 = [[UILabel alloc] initWithFrame:{0.0, 0.0, width, height}];
  label = v7->_label;
  v7->_label = v8;
  v10 = v8;

  v11 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleHeadline addingSymbolicTraits:0x8000 options:0];
  v27 = UIFontWeightTrait;
  v12 = [NSNumber numberWithDouble:UIFontWeightBold];
  v28 = v12;
  v13 = [NSDictionary dictionaryWithObjects:&v28 forKeys:&v27 count:1];
  v14 = [v11 fontDescriptorByAddingAttributes:v13];

  [v14 pointSize];
  v15 = [UIFont fontWithDescriptor:v14 size:?];
  [(UILabel *)v10 setFont:v15];
  v16 = settingsLocString(@"VOICEOVER_PUNCTUATION_PICKER_LABEL_SYMBOL", @"VoiceOverSettings");
  [(UILabel *)v10 setText:v16];

  [(UILabel *)v10 setTextAlignment:1];
  tintColor = [(AXVoiceOverPunctuationPickerButtonSet *)v7 tintColor];
  [(UILabel *)v10 setTextColor:tintColor];

  [(UILabel *)v10 sizeToFit];
  v18 = +[CAShapeLayer layer];
  circle = v7->_circle;
  v7->_circle = v18;

  v20 = +[UIColor clearColor];
  -[CAShapeLayer setFillColor:](v7->_circle, "setFillColor:", [v20 CGColor]);

  tintColor2 = [(AXVoiceOverPunctuationPickerButtonSet *)v7 tintColor];
  -[CAShapeLayer setStrokeColor:](v7->_circle, "setStrokeColor:", [tintColor2 CGColor]);

  layer = [(AXVoiceOverPunctuationPickerButtonSet *)v7 layer];
  [layer addSublayer:v7->_circle];

  [(AXVoiceOverPunctuationPickerButtonSet *)v7 addSubview:v10];
  [(UILabel *)v10 frame];
  v24 = v23;

  [(AXVoiceOverPunctuationPickerButtonSet *)v7 setFrame:x, y, width, v24];
  return v7;
}

- (void)layoutSubviews
{
  [(AXVoiceOverPunctuationPickerButtonSet *)self frame];
  v4 = v3;
  [(UILabel *)self->_label frame];
  v6 = v4 - (v5 + 5.0);
  [(UILabel *)self->_label frame];
  v8 = v7;
  [(UILabel *)self->_label frame];
  [(UILabel *)self->_label setFrame:v6, 0.0, v8];
  [(UILabel *)self->_label frame];
  v10 = v9 * 0.5;
  [(CAShapeLayer *)self->_circle setLineWidth:2.0];
  v12 = [UIBezierPath bezierPathWithRoundedRect:v6 + 1.0 - (v10 * 0.5 + 2.0) cornerRadius:0.0, v10 + v10, v10 + v10, v10];
  v11 = v12;
  -[CAShapeLayer setPath:](self->_circle, "setPath:", [v12 CGPath]);
}

- (id)accessibilityPath
{
  v3 = [UIBezierPath bezierPathWithCGPath:[(CAShapeLayer *)self->_circle path]];
  v4 = UIAccessibilityConvertPathToScreenCoordinates(v3, &self->super.super);

  return v4;
}

@end