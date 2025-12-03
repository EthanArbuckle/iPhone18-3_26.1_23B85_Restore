@interface ICDrawingRegressionTestDataCollectionViewCell
- (void)layoutSubviews;
- (void)setSelected:(BOOL)selected;
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
    trailingAnchor = [(UIImageView *)self->_selectedImageView trailingAnchor];
    contentView = [(ICDrawingRegressionTestDataCollectionViewCell *)self contentView];
    trailingAnchor2 = [contentView trailingAnchor];
    v11 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    [v7 addObject:v11];

    bottomAnchor = [(UIImageView *)self->_selectedImageView bottomAnchor];
    contentView2 = [(ICDrawingRegressionTestDataCollectionViewCell *)self contentView];
    bottomAnchor2 = [contentView2 bottomAnchor];
    v15 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    [v7 addObject:v15];

    widthAnchor = [(UIImageView *)self->_selectedImageView widthAnchor];
    v17 = [widthAnchor constraintEqualToConstant:38.0];
    [v7 addObject:v17];

    heightAnchor = [(UIImageView *)self->_selectedImageView heightAnchor];
    v19 = [heightAnchor constraintEqualToConstant:38.0];
    [v7 addObject:v19];

    [(UIImageView *)self->_selectedImageView setHidden:[(ICDrawingRegressionTestDataCollectionViewCell *)self isSelected]^ 1];
    [NSLayoutConstraint activateConstraints:v7];
  }

  v20.receiver = self;
  v20.super_class = ICDrawingRegressionTestDataCollectionViewCell;
  [(ICDrawingRegressionTestDataCollectionViewCell *)&v20 layoutSubviews];
}

- (void)setSelected:(BOOL)selected
{
  selectedCopy = selected;
  v5.receiver = self;
  v5.super_class = ICDrawingRegressionTestDataCollectionViewCell;
  [(ICDrawingRegressionTestDataCollectionViewCell *)&v5 setSelected:?];
  [(UIImageView *)self->_selectedImageView setHidden:!selectedCopy];
}

@end