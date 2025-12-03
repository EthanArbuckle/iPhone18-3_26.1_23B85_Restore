@interface BKTOCBookmarksDescription
- (UILabel)descriptionLabel;
- (UILabel)titleLabel;
- (void)layoutSubviews;
- (void)setBackgroundColor:(id)color;
@end

@implementation BKTOCBookmarksDescription

- (void)layoutSubviews
{
  [(BKTOCBookmarksDescription *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = v7 + -50.0;
  v12 = objc_alloc_init(NSStringDrawingContext);
  v29 = NSFontAttributeName;
  font = [(UILabel *)self->_titleLabel font];
  v30 = font;
  v14 = [NSDictionary dictionaryWithObjects:&v30 forKeys:&v29 count:1];

  text = [(UILabel *)self->_titleLabel text];
  [text boundingRectWithSize:3 options:v14 attributes:v12 context:{v11, 200.0}];
  v17 = v16;

  text2 = [(UILabel *)self->_descriptionLabel text];
  v27 = NSFontAttributeName;
  font2 = [(UILabel *)self->_descriptionLabel font];
  v28 = font2;
  v20 = [NSDictionary dictionaryWithObjects:&v28 forKeys:&v27 count:1];
  [text2 boundingRectWithSize:3 options:v20 attributes:v12 context:{v11, v10 - v17}];
  v22 = v21;

  v23 = ceil(v17);
  v24 = ceil(v22);
  if (isPad())
  {
    v25 = 11.0;
  }

  else
  {
    v25 = 15.0;
  }

  v31.origin.x = v4;
  v31.origin.y = v6;
  v31.size.width = v8;
  v31.size.height = v10;
  v26 = round((CGRectGetHeight(v31) - (v24 + v23 + v25)) * 0.5);
  [(UILabel *)self->_titleLabel setFrame:25.0, v26, v11, v23];
  [(UILabel *)self->_descriptionLabel setFrame:25.0, v23 + v25 + v26, v11, v24];
}

- (void)setBackgroundColor:(id)color
{
  colorCopy = color;
  backgroundColor = [(BKTOCBookmarksDescription *)self backgroundColor];

  if (backgroundColor != colorCopy)
  {
    v6.receiver = self;
    v6.super_class = BKTOCBookmarksDescription;
    [(BKTOCBookmarksDescription *)&v6 setBackgroundColor:colorCopy];
    [(UILabel *)self->_titleLabel setBackgroundColor:colorCopy];
    [(UILabel *)self->_descriptionLabel setBackgroundColor:colorCopy];
  }
}

- (UILabel)titleLabel
{
  titleLabel = self->_titleLabel;
  if (!titleLabel)
  {
    v4 = objc_alloc_init(UILabel);
    v5 = self->_titleLabel;
    self->_titleLabel = v4;

    v6 = [UIFont systemFontOfSize:26.0];
    [(UILabel *)self->_titleLabel setFont:v6];

    [(UILabel *)self->_titleLabel setNumberOfLines:2];
    [(UILabel *)self->_titleLabel setTextAlignment:1];
    [(UILabel *)self->_titleLabel setLineBreakMode:0];
    backgroundColor = [(BKTOCBookmarksDescription *)self backgroundColor];
    [(UILabel *)self->_titleLabel setBackgroundColor:backgroundColor];

    [(BKTOCBookmarksDescription *)self addSubview:self->_titleLabel];
    titleLabel = self->_titleLabel;
  }

  return titleLabel;
}

- (UILabel)descriptionLabel
{
  descriptionLabel = self->_descriptionLabel;
  if (!descriptionLabel)
  {
    v4 = objc_alloc_init(UILabel);
    v5 = self->_descriptionLabel;
    self->_descriptionLabel = v4;

    v6 = [UIFont systemFontOfSize:16.0];
    [(UILabel *)self->_descriptionLabel setFont:v6];

    [(UILabel *)self->_descriptionLabel setNumberOfLines:10];
    [(UILabel *)self->_descriptionLabel setTextAlignment:1];
    [(UILabel *)self->_descriptionLabel setLineBreakMode:0];
    backgroundColor = [(BKTOCBookmarksDescription *)self backgroundColor];
    [(UILabel *)self->_descriptionLabel setBackgroundColor:backgroundColor];

    [(BKTOCBookmarksDescription *)self addSubview:self->_descriptionLabel];
    descriptionLabel = self->_descriptionLabel;
  }

  return descriptionLabel;
}

@end