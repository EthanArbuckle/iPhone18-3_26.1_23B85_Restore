@interface BackgroundColorButton
- (NSMutableDictionary)colorLookup;
- (id)backgroundColorForState:(unint64_t)state;
- (void)_updateBackgroundColor;
- (void)setBackgroundColor:(id)color;
- (void)setBackgroundColor:(id)color forState:(unint64_t)state;
- (void)setEnabled:(BOOL)enabled;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setSelected:(BOOL)selected;
- (void)setTitle:(id)title subTitle:(id)subTitle;
- (void)setTitleColor:(id)color;
@end

@implementation BackgroundColorButton

- (void)setTitle:(id)title subTitle:(id)subTitle
{
  subTitleCopy = subTitle;
  titleCopy = title;
  v8 = [subTitleCopy length];
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
    v16 = [v9 initWithString:titleCopy attributes:v15];

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
    titleCopy = [v18 initWithString:subTitleCopy attributes:v22];
    [v16 appendAttributedString:titleCopy];
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
    v16 = [v9 initWithString:titleCopy attributes:v22];
  }

  v25 = +[NSParagraphStyle defaultParagraphStyle];
  v26 = [v25 mutableCopy];

  [v26 setAlignment:1];
  [v26 setParagraphSpacing:-3.0];
  [v26 setLineBreakMode:4];
  [v16 addAttribute:NSParagraphStyleAttributeName value:v26 range:{0, objc_msgSend(v16, "length")}];
  [(MapsThemeButton *)self setAttributedTitle:v16 forState:0];
  titleLabel = [(BackgroundColorButton *)self titleLabel];
  [titleLabel setNumberOfLines:2];
}

- (void)setTitleColor:(id)color
{
  colorCopy = color;
  v5 = [NSMutableAttributedString alloc];
  v6 = [(BackgroundColorButton *)self attributedTitleForState:0];
  v7 = [v5 initWithAttributedString:v6];

  [v7 addAttribute:NSForegroundColorAttributeName value:colorCopy range:{0, objc_msgSend(v7, "length")}];
  [(MapsThemeButton *)self setAttributedTitle:v7 forState:0];
}

- (void)_updateBackgroundColor
{
  v6 = [(BackgroundColorButton *)self backgroundColorForState:[(BackgroundColorButton *)self state]];
  backgroundColor = [(BackgroundColorButton *)self backgroundColor];
  v4 = [v6 isEqual:backgroundColor];

  if ((v4 & 1) == 0 && v6)
  {
    v5 = objc_opt_new();
    [(BackgroundColorButton *)self setBackgroundImage:v5 forState:0];

    [(BackgroundColorButton *)self setBackgroundColor:v6];
    [(BackgroundColorButton *)self setNeedsDisplay];
  }
}

- (void)setBackgroundColor:(id)color
{
  colorCopy = color;
  v5 = [(BackgroundColorButton *)self backgroundColorForState:[(BackgroundColorButton *)self state]];
  v6 = v5;
  if (!v5 || [v5 isEqual:colorCopy])
  {
    v7.receiver = self;
    v7.super_class = BackgroundColorButton;
    [(BackgroundColorButton *)&v7 setBackgroundColor:colorCopy];
  }
}

- (void)setSelected:(BOOL)selected
{
  v4.receiver = self;
  v4.super_class = BackgroundColorButton;
  [(BackgroundColorButton *)&v4 setSelected:selected];
  [(BackgroundColorButton *)self _updateBackgroundColor];
}

- (void)setEnabled:(BOOL)enabled
{
  v4.receiver = self;
  v4.super_class = BackgroundColorButton;
  [(BackgroundColorButton *)&v4 setEnabled:enabled];
  [(BackgroundColorButton *)self _updateBackgroundColor];
}

- (void)setHighlighted:(BOOL)highlighted
{
  v4.receiver = self;
  v4.super_class = BackgroundColorButton;
  [(BackgroundColorButton *)&v4 setHighlighted:highlighted];
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

- (void)setBackgroundColor:(id)color forState:(unint64_t)state
{
  colorCopy = color;
  v6 = [(BackgroundColorButton *)self backgroundColorForState:state];
  if (([colorCopy isEqual:v6] & 1) == 0 && colorCopy | v6)
  {
    if (colorCopy)
    {
      colorLookup = [(BackgroundColorButton *)self colorLookup];
      v8 = [NSNumber numberWithUnsignedInteger:state];
      [colorLookup setObject:colorCopy forKeyedSubscript:v8];
    }

    else
    {
      colorLookup = self->_colorLookup;
      colorLookup = [NSNumber numberWithUnsignedInteger:state];
      [(NSMutableDictionary *)colorLookup removeObjectForKey:colorLookup];
    }

    [(BackgroundColorButton *)self _updateBackgroundColor];
  }
}

- (id)backgroundColorForState:(unint64_t)state
{
  colorLookup = self->_colorLookup;
  v4 = [NSNumber numberWithUnsignedInteger:state];
  v5 = [(NSMutableDictionary *)colorLookup objectForKeyedSubscript:v4];

  return v5;
}

@end