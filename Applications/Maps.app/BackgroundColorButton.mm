@interface BackgroundColorButton
- (NSMutableDictionary)colorLookup;
- (id)backgroundColorForState:(unint64_t)a3;
- (void)_updateBackgroundColor;
- (void)setBackgroundColor:(id)a3;
- (void)setBackgroundColor:(id)a3 forState:(unint64_t)a4;
- (void)setEnabled:(BOOL)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setSelected:(BOOL)a3;
- (void)setTitle:(id)a3 subTitle:(id)a4;
- (void)setTitleColor:(id)a3;
@end

@implementation BackgroundColorButton

- (void)setTitle:(id)a3 subTitle:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v6 length];
  v9 = [NSMutableAttributedString alloc];
  if (v8)
  {
    v30 = NSFontAttributeName;
    v10 = _MKPlaceCardUseSmallerFont();
    v11 = UIFontTextStyleSubhead;
    if (v10)
    {
      v12 = UIFontTextStyleFootnote;
    }

    else
    {
      v12 = UIFontTextStyleSubhead;
    }

    v13 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:v12 addingSymbolicTraits:2 options:0];
    v14 = [UIFont fontWithDescriptor:v13 size:0.0];
    v31 = v14;
    v15 = [NSDictionary dictionaryWithObjects:&v31 forKeys:&v30 count:1];
    v16 = [v9 initWithString:v7 attributes:v15];

    v17 = [[NSAttributedString alloc] initWithString:@"\n"];
    [v16 appendAttributedString:v17];

    v18 = [NSAttributedString alloc];
    v28 = NSFontAttributeName;
    if (_MKPlaceCardUseSmallerFont())
    {
      v19 = UIFontTextStyleFootnote;
    }

    else
    {
      v19 = v11;
    }

    v20 = [UIFont preferredFontForTextStyle:v19];
    [v20 pointSize];
    v21 = [UIFont systemFontOfSize:"systemFontOfSize:weight:" weight:?];
    v29 = v21;
    v22 = [NSDictionary dictionaryWithObjects:&v29 forKeys:&v28 count:1];
    v7 = [v18 initWithString:v6 attributes:v22];
    [v16 appendAttributedString:v7];
  }

  else
  {
    v32 = NSFontAttributeName;
    v23 = _MKPlaceCardUseSmallerFont();
    v24 = &UIFontTextStyleFootnote;
    if (!v23)
    {
      v24 = &UIFontTextStyleSubhead;
    }

    v20 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:*v24 addingSymbolicTraits:2 options:0];
    v21 = [UIFont fontWithDescriptor:v20 size:0.0];
    v33 = v21;
    v22 = [NSDictionary dictionaryWithObjects:&v33 forKeys:&v32 count:1];
    v16 = [v9 initWithString:v7 attributes:v22];
  }

  v25 = +[NSParagraphStyle defaultParagraphStyle];
  v26 = [v25 mutableCopy];

  [v26 setAlignment:1];
  [v26 setParagraphSpacing:-3.0];
  [v26 setLineBreakMode:4];
  [v16 addAttribute:NSParagraphStyleAttributeName value:v26 range:{0, objc_msgSend(v16, "length")}];
  [(MapsThemeButton *)self setAttributedTitle:v16 forState:0];
  v27 = [(BackgroundColorButton *)self titleLabel];
  [v27 setNumberOfLines:2];
}

- (void)setTitleColor:(id)a3
{
  v4 = a3;
  v5 = [NSMutableAttributedString alloc];
  v6 = [(BackgroundColorButton *)self attributedTitleForState:0];
  v7 = [v5 initWithAttributedString:v6];

  [v7 addAttribute:NSForegroundColorAttributeName value:v4 range:{0, objc_msgSend(v7, "length")}];
  [(MapsThemeButton *)self setAttributedTitle:v7 forState:0];
}

- (void)_updateBackgroundColor
{
  v6 = [(BackgroundColorButton *)self backgroundColorForState:[(BackgroundColorButton *)self state]];
  v3 = [(BackgroundColorButton *)self backgroundColor];
  v4 = [v6 isEqual:v3];

  if ((v4 & 1) == 0 && v6)
  {
    v5 = objc_opt_new();
    [(BackgroundColorButton *)self setBackgroundImage:v5 forState:0];

    [(BackgroundColorButton *)self setBackgroundColor:v6];
    [(BackgroundColorButton *)self setNeedsDisplay];
  }
}

- (void)setBackgroundColor:(id)a3
{
  v4 = a3;
  v5 = [(BackgroundColorButton *)self backgroundColorForState:[(BackgroundColorButton *)self state]];
  v6 = v5;
  if (!v5 || [v5 isEqual:v4])
  {
    v7.receiver = self;
    v7.super_class = BackgroundColorButton;
    [(BackgroundColorButton *)&v7 setBackgroundColor:v4];
  }
}

- (void)setSelected:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = BackgroundColorButton;
  [(BackgroundColorButton *)&v4 setSelected:a3];
  [(BackgroundColorButton *)self _updateBackgroundColor];
}

- (void)setEnabled:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = BackgroundColorButton;
  [(BackgroundColorButton *)&v4 setEnabled:a3];
  [(BackgroundColorButton *)self _updateBackgroundColor];
}

- (void)setHighlighted:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = BackgroundColorButton;
  [(BackgroundColorButton *)&v4 setHighlighted:a3];
  [(BackgroundColorButton *)self _updateBackgroundColor];
}

- (NSMutableDictionary)colorLookup
{
  colorLookup = self->_colorLookup;
  if (!colorLookup)
  {
    v4 = objc_alloc_init(NSMutableDictionary);
    v5 = self->_colorLookup;
    self->_colorLookup = v4;

    colorLookup = self->_colorLookup;
  }

  return colorLookup;
}

- (void)setBackgroundColor:(id)a3 forState:(unint64_t)a4
{
  v10 = a3;
  v6 = [(BackgroundColorButton *)self backgroundColorForState:a4];
  if (([v10 isEqual:v6] & 1) == 0 && v10 | v6)
  {
    if (v10)
    {
      v7 = [(BackgroundColorButton *)self colorLookup];
      v8 = [NSNumber numberWithUnsignedInteger:a4];
      [v7 setObject:v10 forKeyedSubscript:v8];
    }

    else
    {
      colorLookup = self->_colorLookup;
      v7 = [NSNumber numberWithUnsignedInteger:a4];
      [(NSMutableDictionary *)colorLookup removeObjectForKey:v7];
    }

    [(BackgroundColorButton *)self _updateBackgroundColor];
  }
}

- (id)backgroundColorForState:(unint64_t)a3
{
  colorLookup = self->_colorLookup;
  v4 = [NSNumber numberWithUnsignedInteger:a3];
  v5 = [(NSMutableDictionary *)colorLookup objectForKeyedSubscript:v4];

  return v5;
}

@end