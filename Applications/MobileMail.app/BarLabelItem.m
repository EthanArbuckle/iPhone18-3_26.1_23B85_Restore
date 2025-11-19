@interface BarLabelItem
+ (id)_boldAttributes;
+ (id)_defaultAttributes;
- (BarLabelItem)initWithTitle:(id)a3 width:(double)a4 style:(int64_t)a5;
- (void)setTitle:(id)a3;
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

- (BarLabelItem)initWithTitle:(id)a3 width:(double)a4 style:(int64_t)a5
{
  v7 = a3;
  v8 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  v12.receiver = self;
  v12.super_class = BarLabelItem;
  v9 = [(BarLabelItem *)&v12 initWithCustomView:v8];
  v10 = v9;
  if (v9)
  {
    v9->_itemStyle = a5;
    [(BarLabelItem *)v9 setTitle:v7];
  }

  return v10;
}

- (void)setTitle:(id)a3
{
  v9 = a3;
  v4 = [(BarLabelItem *)self customView];
  if (!v9)
  {
    [v4 setText:0];
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

    v6 = [objc_opt_class() _boldAttributes];
  }

  else
  {
    v6 = [objc_opt_class() _defaultAttributes];
  }

  v7 = v6;
LABEL_9:
  v8 = [[NSAttributedString alloc] initWithString:v9 attributes:v7];
  [v4 setAttributedText:v8];
  [v4 sizeToFit];

LABEL_10:
}

@end