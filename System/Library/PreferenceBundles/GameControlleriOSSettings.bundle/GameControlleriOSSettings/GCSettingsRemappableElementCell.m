@interface GCSettingsRemappableElementCell
- (GCSettingsRemappableElementCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)awakeFromNib;
- (void)setSelected:(BOOL)a3 animated:(BOOL)a4;
- (void)setup;
@end

@implementation GCSettingsRemappableElementCell

- (GCSettingsRemappableElementCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v7.receiver = self;
  v7.super_class = GCSettingsRemappableElementCell;
  v4 = [(GCSettingsRemappableElementCell *)&v7 initWithStyle:a3 reuseIdentifier:a4];
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
  v6 = [(GCSettingsRemappableElementCell *)self contentView];
  [v6 addSubview:self->_remappedElementView];

  [(UIImageView *)self->_remappedElementView setTranslatesAutoresizingMaskIntoConstraints:0];
  v7 = self->_remappedElementView;
  v8 = [(GCSettingsRemappableElementCell *)self contentView];
  v9 = [NSLayoutConstraint constraintWithItem:v7 attribute:6 relatedBy:0 toItem:v8 attribute:6 multiplier:1.0 constant:-3.0];
  [(GCSettingsRemappableElementCell *)self addConstraint:v9];

  v10 = self->_remappedElementView;
  v11 = [(GCSettingsRemappableElementCell *)self imageView];
  v12 = [v11 image];
  if (v12)
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
  v19 = [(GCSettingsRemappableElementCell *)self imageView];
  v16 = [v19 image];
  if (v16)
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

- (void)setSelected:(BOOL)a3 animated:(BOOL)a4
{
  v4.receiver = self;
  v4.super_class = GCSettingsRemappableElementCell;
  [(GCSettingsRemappableElementCell *)&v4 setSelected:a3 animated:a4];
}

@end