@interface GCSettingsRemappableElementCell
- (GCSettingsRemappableElementCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)awakeFromNib;
- (void)setSelected:(BOOL)selected animated:(BOOL)animated;
- (void)setup;
@end

@implementation GCSettingsRemappableElementCell

- (GCSettingsRemappableElementCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v7.receiver = self;
  v7.super_class = GCSettingsRemappableElementCell;
  v4 = [(GCSettingsRemappableElementCell *)&v7 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(GCSettingsRemappableElementCell *)v4 setup];
  }

  return v5;
}

- (void)setup
{
  v3 = objc_alloc_init(UIImageView);
  remappedElementView = self->_remappedElementView;
  self->_remappedElementView = v3;

  v5 = +[UIColor systemGrayColor];
  [(UIImageView *)self->_remappedElementView setTintColor:v5];

  [(UIImageView *)self->_remappedElementView setContentMode:1];
  contentView = [(GCSettingsRemappableElementCell *)self contentView];
  [contentView addSubview:self->_remappedElementView];

  [(UIImageView *)self->_remappedElementView setTranslatesAutoresizingMaskIntoConstraints:0];
  v7 = self->_remappedElementView;
  contentView2 = [(GCSettingsRemappableElementCell *)self contentView];
  v9 = [NSLayoutConstraint constraintWithItem:v7 attribute:6 relatedBy:0 toItem:contentView2 attribute:6 multiplier:1.0 constant:-3.0];
  [(GCSettingsRemappableElementCell *)self addConstraint:v9];

  v10 = self->_remappedElementView;
  imageView = [(GCSettingsRemappableElementCell *)self imageView];
  image = [imageView image];
  if (image)
  {
    [(GCSettingsRemappableElementCell *)self imageView];
  }

  else
  {
    [(GCSettingsRemappableElementCell *)self textLabel];
  }
  v13 = ;
  v14 = [NSLayoutConstraint constraintWithItem:v10 attribute:3 relatedBy:0 toItem:v13 attribute:3 multiplier:1.0 constant:0.0];
  [(GCSettingsRemappableElementCell *)self addConstraint:v14];

  v15 = self->_remappedElementView;
  imageView2 = [(GCSettingsRemappableElementCell *)self imageView];
  image2 = [imageView2 image];
  if (image2)
  {
    [(GCSettingsRemappableElementCell *)self imageView];
  }

  else
  {
    [(GCSettingsRemappableElementCell *)self textLabel];
  }
  v17 = ;
  v18 = [NSLayoutConstraint constraintWithItem:v15 attribute:4 relatedBy:0 toItem:v17 attribute:4 multiplier:1.0 constant:0.0];
  [(GCSettingsRemappableElementCell *)self addConstraint:v18];
}

- (void)awakeFromNib
{
  v2.receiver = self;
  v2.super_class = GCSettingsRemappableElementCell;
  [(GCSettingsRemappableElementCell *)&v2 awakeFromNib];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
  v4.receiver = self;
  v4.super_class = GCSettingsRemappableElementCell;
  [(GCSettingsRemappableElementCell *)&v4 setSelected:selected animated:animated];
}

@end