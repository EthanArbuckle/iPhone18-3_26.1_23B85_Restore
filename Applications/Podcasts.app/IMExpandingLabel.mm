@interface IMExpandingLabel
- (id)_font;
- (unint64_t)maximumNumberOfLinesThatFitHeight:(double)height;
- (void)setFont:(id)font;
- (void)setMoreButtonFont:(id)font;
@end

@implementation IMExpandingLabel

- (void)setFont:(id)font
{
  fontCopy = font;
  textAttributes = [(IMExpandingLabel *)self textAttributes];
  v5 = [textAttributes mutableCopy];

  if (!v5)
  {
    v5 = +[NSMutableDictionary dictionary];
  }

  [v5 setObject:fontCopy forKeyedSubscript:NSFontAttributeName];
  [(IMExpandingLabel *)self setTextAttributes:v5];
  text = [(IMExpandingLabel *)self text];
  [(IMExpandingLabel *)self setText:0];
  [(IMExpandingLabel *)self setText:text];
}

- (void)setMoreButtonFont:(id)font
{
  fontCopy = font;
  moreButton = [(IMExpandingLabel *)self moreButton];
  titleLabel = [moreButton titleLabel];
  [titleLabel setFont:fontCopy];

  [moreButton sizeToFit];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [moreButton setTouchInsets:{-8.0, -8.0, -8.0, -8.0}];
    [moreButton frame];
    v9 = CGRectInset(v8, 0.0, 6.0);
    [moreButton setFrame:{v9.origin.x, v9.origin.y, v9.size.width + 10.0, v9.size.height}];
  }
}

- (unint64_t)maximumNumberOfLinesThatFitHeight:(double)height
{
  _font = [(IMExpandingLabel *)self _font];
  [_font lineHeight];
  v6 = (height / v5);

  return v6;
}

- (id)_font
{
  textAttributes = [(IMExpandingLabel *)self textAttributes];
  v3 = [textAttributes objectForKey:NSFontAttributeName];

  return v3;
}

@end