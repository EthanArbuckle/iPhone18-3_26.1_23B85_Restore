@interface LabelListView
+ (double)heightForWidth:(double)width strings:(id)strings fonts:(id)fonts;
+ (double)heightForWidth:(double)width strings:(id)strings fonts:(id)fonts spacings:(id)spacings;
+ (id)spacingForNumberOfStrings:(unint64_t)strings;
- (LabelListView)initWithFrame:(CGRect)frame;
- (void)addLabelWithText:(id)text attributedText:(id)attributedText accessibilityText:(id)accessibilityText font:(id)font color:(id)color;
- (void)layoutToFitSize:(CGSize)size;
- (void)layoutToFitSize:(CGSize)size spacings:(id)spacings;
- (void)removeAllLabels;
- (void)setShadowColor:(id)color;
- (void)setTextAlignment:(int64_t)alignment;
- (void)setTextColor:(id)color;
@end

@implementation LabelListView

- (void)setTextAlignment:(int64_t)alignment
{
  if (self->_textAlignment != alignment)
  {
    self->_textAlignment = alignment;
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v4 = self->_labels;
    v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v10;
      do
      {
        v8 = 0;
        do
        {
          if (*v10 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [*(*(&v9 + 1) + 8 * v8) setTextAlignment:{self->_textAlignment, v9}];
          v8 = v8 + 1;
        }

        while (v6 != v8);
        v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v6);
    }
  }
}

- (void)setShadowColor:(id)color
{
  colorCopy = color;
  if (self->_shadowColor != colorCopy)
  {
    v6 = colorCopy;
    objc_storeStrong(&self->_shadowColor, color);
    [(NSMutableArray *)self->_labels makeObjectsPerformSelector:"setShadowColor:" withObject:self->_shadowColor];
    colorCopy = v6;
  }
}

- (void)setTextColor:(id)color
{
  colorCopy = color;
  textColor = self->_textColor;
  v7 = colorCopy;
  if (textColor != colorCopy)
  {
    objc_storeStrong(&self->_textColor, color);
    textColor = self->_textColor;
  }

  [(NSMutableArray *)self->_labels makeObjectsPerformSelector:"setTextColor:" withObject:textColor];
}

- (void)removeAllLabels
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = self->_labels;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7) removeFromSuperview];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }

  [(NSMutableArray *)self->_labels removeAllObjects];
}

- (void)layoutToFitSize:(CGSize)size spacings:(id)spacings
{
  width = size.width;
  spacingsCopy = spacings;
  [(LabelListView *)self frame];
  v7 = v6;
  v9 = v8;
  v10 = [(NSMutableArray *)self->_labels count];
  if (v10)
  {
    v11 = v10;
    v12 = 0;
    MaxY = 0.0;
    do
    {
      v14 = [(NSMutableArray *)self->_labels objectAtIndexedSubscript:v12];
      [v14 textRectForBounds:0 limitedToNumberOfLines:{0.0, 0.0, width, 1.79769313e308}];
      v16 = v15;
      if (v12 && v12 - 1 < [spacingsCopy count])
      {
        v17 = [spacingsCopy objectAtIndexedSubscript:v12 - 1];
        [v17 floatValue];
        MaxY = MaxY + v18;
      }

      [v14 setFrame:{0.0, MaxY, width, v16}];
      v21.origin.x = 0.0;
      v21.origin.y = MaxY;
      v21.size.width = width;
      v21.size.height = v16;
      MaxY = CGRectGetMaxY(v21);

      ++v12;
    }

    while (v11 != v12);
  }

  else
  {
    MaxY = 0.0;
  }

  [(LabelListView *)self setFrame:v7, v9, width, MaxY];
}

- (void)layoutToFitSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v6 = [objc_opt_class() spacingForNumberOfStrings:{-[NSMutableArray count](self->_labels, "count")}];
  [(LabelListView *)self layoutToFitSize:v6 spacings:width, height];
}

- (void)addLabelWithText:(id)text attributedText:(id)attributedText accessibilityText:(id)accessibilityText font:(id)font color:(id)color
{
  textCopy = text;
  attributedTextCopy = attributedText;
  accessibilityTextCopy = accessibilityText;
  colorCopy = color;
  if (!textCopy)
  {
    goto LABEL_10;
  }

  v15 = [UILabel newStandardTextLabelWithFont:font];
  [v15 setLineBreakMode:0];
  [v15 setTextAlignment:self->_textAlignment];
  [v15 setNumberOfLines:0];
  if (!attributedTextCopy)
  {
    [v15 setText:textCopy];
    if (!accessibilityTextCopy)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  [v15 setAttributedText:attributedTextCopy];
  if (accessibilityTextCopy)
  {
LABEL_4:
    [v15 setAccessibilityLabel:accessibilityTextCopy];
  }

LABEL_5:
  textColor = colorCopy;
  if (!colorCopy)
  {
    textColor = self->_textColor;
  }

  [v15 setTextColor:textColor];
  if (sub_10000FA08(self) == 5)
  {
    v17 = +[UIColor systemWhiteColor];
    [v15 setHighlightedTextColor:v17];
  }

  [v15 setShadowColor:self->_shadowColor];
  [(LabelListView *)self addSubview:v15];
  [(NSMutableArray *)self->_labels addObject:v15];

LABEL_10:
}

- (LabelListView)initWithFrame:(CGRect)frame
{
  v10.receiver = self;
  v10.super_class = LabelListView;
  v3 = [(LabelListView *)&v10 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(NSMutableArray);
    labels = v3->_labels;
    v3->_labels = v4;

    v6 = +[UIColor whiteColor];
    textColor = v3->_textColor;
    v3->_textColor = v6;

    v3->_textAlignment = 0;
    v8 = v3;
  }

  return v3;
}

+ (id)spacingForNumberOfStrings:(unint64_t)strings
{
  if (strings)
  {
    v4 = strings - 1;
  }

  else
  {
    v4 = 0;
  }

  v5 = [NSMutableArray arrayWithCapacity:v4];
  if (strings >= 2)
  {
    v6 = 0;
    do
    {
      if (v6)
      {
        v7 = &off_1016E65F0;
      }

      else
      {
        v7 = &off_1016E65D8;
      }

      [v5 addObject:v7];
      ++v6;
    }

    while (v6 < v4);
  }

  return v5;
}

+ (double)heightForWidth:(double)width strings:(id)strings fonts:(id)fonts spacings:(id)spacings
{
  stringsCopy = strings;
  fontsCopy = fonts;
  spacingsCopy = spacings;
  v12 = [stringsCopy count];
  if (v12)
  {
    v13 = v12;
    v14 = 0;
    v15 = 0.0;
    do
    {
      v16 = [stringsCopy objectAtIndexedSubscript:v14];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v17 = [fontsCopy objectAtIndexedSubscript:v14];
        [v16 _maps_sizeWithFont:v17 constrainedToSize:1 options:{width, 3.40282347e38}];
        v15 = v18 + v15;

        if (v14 < [spacingsCopy count])
        {
          v19 = [spacingsCopy objectAtIndexedSubscript:v14];
          [v19 floatValue];
          v15 = v15 + v20;
        }
      }

      ++v14;
    }

    while (v13 != v14);
  }

  else
  {
    v15 = 0.0;
  }

  return v15;
}

+ (double)heightForWidth:(double)width strings:(id)strings fonts:(id)fonts
{
  fontsCopy = fonts;
  stringsCopy = strings;
  v10 = [self spacingForNumberOfStrings:{objc_msgSend(stringsCopy, "count")}];
  [self heightForWidth:stringsCopy strings:fontsCopy fonts:v10 spacings:width];
  v12 = v11;

  return v12;
}

@end