@interface ICDrawingRegressionTestDataCollectionViewCell
- (void)layoutSubviews;
- (void)setSelected:(BOOL)a3;
@end

@implementation ICDrawingRegressionTestDataCollectionViewCell

- (void)layoutSubviews
{
  if (!self->_selectedImageView)
  {
    v3 = objc_alloc_init(UIImageView);
    selectedImageView = self->_selectedImageView;
    self->_selectedImageView = v3;

    v5 = [UIImage systemImageNamed:@"checkmark.circle"];
    v6 = [v5 imageWithRenderingMode:2];

    [(UIImageView *)self->_selectedImageView setImage:v6];
    [(UIImageView *)self->_selectedImageView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(ICDrawingRegressionTestDataCollectionViewCell *)self addSubview:self->_selectedImageView];
    v7 = [NSMutableArray arrayWithCapacity:4];
    v8 = [(UIImageView *)self->_selectedImageView trailingAnchor];
    v9 = [(ICDrawingRegressionTestDataCollectionViewCell *)self contentView];
    v10 = [v9 trailingAnchor];
    v11 = [v8 constraintEqualToAnchor:v10];
    [v7 addObject:v11];

    v12 = [(UIImageView *)self->_selectedImageView bottomAnchor];
    v13 = [(ICDrawingRegressionTestDataCollectionViewCell *)self contentView];
    v14 = [v13 bottomAnchor];
    v15 = [v12 constraintEqualToAnchor:v14];
    [v7 addObject:v15];

    v16 = [(UIImageView *)self->_selectedImageView widthAnchor];
    v17 = [v16 constraintEqualToConstant:38.0];
    [v7 addObject:v17];

    v18 = [(UIImageView *)self->_selectedImageView heightAnchor];
    v19 = [v18 constraintEqualToConstant:38.0];
    [v7 addObject:v19];

    [(UIImageView *)self->_selectedImageView setHidden:[(ICDrawingRegressionTestDataCollectionViewCell *)self isSelected]^ 1];
    [NSLayoutConstraint activateConstraints:v7];
  }

  v20.receiver = self;
  v20.super_class = ICDrawingRegressionTestDataCollectionViewCell;
  [(ICDrawingRegressionTestDataCollectionViewCell *)&v20 layoutSubviews];
}

- (void)setSelected:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = ICDrawingRegressionTestDataCollectionViewCell;
  [(ICDrawingRegressionTestDataCollectionViewCell *)&v5 setSelected:?];
  [(UIImageView *)self->_selectedImageView setHidden:!v3];
}

@end