@interface BKTOCBookmarksDescription
- (UILabel)descriptionLabel;
- (UILabel)titleLabel;
- (void)layoutSubviews;
- (void)setBackgroundColor:(id)a3;
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
  v13 = [(UILabel *)self->_titleLabel font];
  v30 = v13;
  v14 = [NSDictionary dictionaryWithObjects:&v30 forKeys:&v29 count:1];

  v15 = [(UILabel *)self->_titleLabel text];
  [v15 boundingRectWithSize:3 options:v14 attributes:v12 context:{v11, 200.0}];
  v17 = v16;

  v18 = [(UILabel *)self->_descriptionLabel text];
  v27 = NSFontAttributeName;
  v19 = [(UILabel *)self->_descriptionLabel font];
  v28 = v19;
  v20 = [NSDictionary dictionaryWithObjects:&v28 forKeys:&v27 count:1];
  [v18 boundingRectWithSize:3 options:v20 attributes:v12 context:{v11, v10 - v17}];
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

- (void)setBackgroundColor:(id)a3
{
  v4 = a3;
  v5 = [(BKTOCBookmarksDescription *)self backgroundColor];

  if (v5 != v4)
  {
    v6.receiver = self;
    v6.super_class = BKTOCBookmarksDescription;
    [(BKTOCBookmarksDescription *)&v6 setBackgroundColor:v4];
    [(UILabel *)self->_titleLabel setBackgroundColor:v4];
    [(UILabel *)self->_descriptionLabel setBackgroundColor:v4];
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
    v7 = [(BKTOCBookmarksDescription *)self backgroundColor];
    [(UILabel *)self->_titleLabel setBackgroundColor:v7];

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
    v7 = [(BKTOCBookmarksDescription *)self backgroundColor];
    [(UILabel *)self->_descriptionLabel setBackgroundColor:v7];

    [(BKTOCBookmarksDescription *)self addSubview:self->_descriptionLabel];
    descriptionLabel = self->_descriptionLabel;
  }

  return descriptionLabel;
}

@end