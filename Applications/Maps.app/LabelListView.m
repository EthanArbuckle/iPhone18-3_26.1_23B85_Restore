@interface LabelListView
+ (double)heightForWidth:(double)a3 strings:(id)a4 fonts:(id)a5;
+ (double)heightForWidth:(double)a3 strings:(id)a4 fonts:(id)a5 spacings:(id)a6;
+ (id)spacingForNumberOfStrings:(unint64_t)a3;
- (LabelListView)initWithFrame:(CGRect)a3;
- (void)addLabelWithText:(id)a3 attributedText:(id)a4 accessibilityText:(id)a5 font:(id)a6 color:(id)a7;
- (void)layoutToFitSize:(CGSize)a3;
- (void)layoutToFitSize:(CGSize)a3 spacings:(id)a4;
- (void)removeAllLabels;
- (void)setShadowColor:(id)a3;
- (void)setTextAlignment:(int64_t)a3;
- (void)setTextColor:(id)a3;
@end

@implementation LabelListView

- (void)setTextAlignment:(int64_t)a3
{
  if (self->_textAlignment != a3)
  {
    self->_textAlignment = a3;
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

- (void)setShadowColor:(id)a3
{
  v5 = a3;
  if (self->_shadowColor != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_shadowColor, a3);
    [(NSMutableArray *)self->_labels makeObjectsPerformSelector:"setShadowColor:" withObject:self->_shadowColor];
    v5 = v6;
  }
}

- (void)setTextColor:(id)a3
{
  v5 = a3;
  textColor = self->_textColor;
  v7 = v5;
  if (textColor != v5)
  {
    objc_storeStrong(&self->_textColor, a3);
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

- (void)layoutToFitSize:(CGSize)a3 spacings:(id)a4
{
  width = a3.width;
  v19 = a4;
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
      if (v12 && v12 - 1 < [v19 count])
      {
        v17 = [v19 objectAtIndexedSubscript:v12 - 1];
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

- (void)layoutToFitSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [objc_opt_class() spacingForNumberOfStrings:{-[NSMutableArray count](self->_labels, "count")}];
  [(LabelListView *)self layoutToFitSize:v6 spacings:width, height];
}

- (void)addLabelWithText:(id)a3 attributedText:(id)a4 accessibilityText:(id)a5 font:(id)a6 color:(id)a7
{
  v18 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a7;
  if (!v18)
  {
    goto LABEL_10;
  }

  v15 = [UILabel newStandardTextLabelWithFont:a6];
  [v15 setLineBreakMode:0];
  [v15 setTextAlignment:self->_textAlignment];
  [v15 setNumberOfLines:0];
  if (!v12)
  {
    [v15 setText:v18];
    if (!v13)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  [v15 setAttributedText:v12];
  if (v13)
  {
LABEL_4:
    [v15 setAccessibilityLabel:v13];
  }

LABEL_5:
  textColor = v14;
  if (!v14)
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

- (LabelListView)initWithFrame:(CGRect)a3
{
  v10.receiver = self;
  v10.super_class = LabelListView;
  v3 = [(LabelListView *)&v10 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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

+ (id)spacingForNumberOfStrings:(unint64_t)a3
{
  if (a3)
  {
    v4 = a3 - 1;
  }

  else
  {
    v4 = 0;
  }

  v5 = [NSMutableArray arrayWithCapacity:v4];
  if (a3 >= 2)
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

+ (double)heightForWidth:(double)a3 strings:(id)a4 fonts:(id)a5 spacings:(id)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v12 = [v9 count];
  if (v12)
  {
    v13 = v12;
    v14 = 0;
    v15 = 0.0;
    do
    {
      v16 = [v9 objectAtIndexedSubscript:v14];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v17 = [v10 objectAtIndexedSubscript:v14];
        [v16 _maps_sizeWithFont:v17 constrainedToSize:1 options:{a3, 3.40282347e38}];
        v15 = v18 + v15;

        if (v14 < [v11 count])
        {
          v19 = [v11 objectAtIndexedSubscript:v14];
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

+ (double)heightForWidth:(double)a3 strings:(id)a4 fonts:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [a1 spacingForNumberOfStrings:{objc_msgSend(v9, "count")}];
  [a1 heightForWidth:v9 strings:v8 fonts:v10 spacings:a3];
  v12 = v11;

  return v12;
}

@end