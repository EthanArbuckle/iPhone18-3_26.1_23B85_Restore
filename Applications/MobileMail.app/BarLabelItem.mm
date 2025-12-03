@interface BarLabelItem
+ (id)_boldAttributes;
+ (id)_defaultAttributes;
- (BarLabelItem)initWithTitle:(id)title width:(double)width style:(int64_t)style;
- (void)setTitle:(id)title;
@end

@implementation BarLabelItem

+ (id)_boldAttributes
{
  if (qword_1006DCDA8 != -1)
  {
    sub_100482C70();
  }

  v3 = qword_1006DCDA0;

  return v3;
}

+ (id)_defaultAttributes
{
  if (qword_1006DCDB8 != -1)
  {
    sub_100482C84();
  }

  v3 = qword_1006DCDB0;

  return v3;
}

- (BarLabelItem)initWithTitle:(id)title width:(double)width style:(int64_t)style
{
  titleCopy = title;
  v8 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  v12.receiver = self;
  v12.super_class = BarLabelItem;
  v9 = [(BarLabelItem *)&v12 initWithCustomView:v8];
  v10 = v9;
  if (v9)
  {
    v9->_itemStyle = style;
    [(BarLabelItem *)v9 setTitle:titleCopy];
  }

  return v10;
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  customView = [(BarLabelItem *)self customView];
  if (!titleCopy)
  {
    [customView setText:0];
    goto LABEL_10;
  }

  itemStyle = self->_itemStyle;
  if (itemStyle)
  {
    if (itemStyle != 1)
    {
      v7 = 0;
      goto LABEL_9;
    }

    _boldAttributes = [objc_opt_class() _boldAttributes];
  }

  else
  {
    _boldAttributes = [objc_opt_class() _defaultAttributes];
  }

  v7 = _boldAttributes;
LABEL_9:
  v8 = [[NSAttributedString alloc] initWithString:titleCopy attributes:v7];
  [customView setAttributedText:v8];
  [customView sizeToFit];

LABEL_10:
}

@end