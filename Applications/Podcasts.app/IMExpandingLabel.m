@interface IMExpandingLabel
- (id)_font;
- (unint64_t)maximumNumberOfLinesThatFitHeight:(double)a3;
- (void)setFont:(id)a3;
- (void)setMoreButtonFont:(id)a3;
@end

@implementation IMExpandingLabel

- (void)setFont:(id)a3
{
  v7 = a3;
  v4 = [(IMExpandingLabel *)self textAttributes];
  v5 = [v4 mutableCopy];

  if (!v5)
  {
    v5 = +[NSMutableDictionary dictionary];
  }

  [v5 setObject:v7 forKeyedSubscript:NSFontAttributeName];
  [(IMExpandingLabel *)self setTextAttributes:v5];
  v6 = [(IMExpandingLabel *)self text];
  [(IMExpandingLabel *)self setText:0];
  [(IMExpandingLabel *)self setText:v6];
}

- (void)setMoreButtonFont:(id)a3
{
  v4 = a3;
  v6 = [(IMExpandingLabel *)self moreButton];
  v5 = [v6 titleLabel];
  [v5 setFont:v4];

  [v6 sizeToFit];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v6 setTouchInsets:{-8.0, -8.0, -8.0, -8.0}];
    [v6 frame];
    v9 = CGRectInset(v8, 0.0, 6.0);
    [v6 setFrame:{v9.origin.x, v9.origin.y, v9.size.width + 10.0, v9.size.height}];
  }
}

- (unint64_t)maximumNumberOfLinesThatFitHeight:(double)a3
{
  v4 = [(IMExpandingLabel *)self _font];
  [v4 lineHeight];
  v6 = (a3 / v5);

  return v6;
}

- (id)_font
{
  v2 = [(IMExpandingLabel *)self textAttributes];
  v3 = [v2 objectForKey:NSFontAttributeName];

  return v3;
}

@end