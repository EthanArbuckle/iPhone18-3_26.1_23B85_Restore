@interface VPNTableCell
- (VPNTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)layoutSubviews;
- (void)setAlert:(id)alert;
- (void)setChecked:(BOOL)checked;
- (void)setSubtitle:(id)subtitle;
- (void)updateDetail;
@end

@implementation VPNTableCell

- (VPNTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v11.receiver = self;
  v11.super_class = VPNTableCell;
  v4 = [(VPNTableCell *)&v11 initWithStyle:3 reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    alert = v4->_alert;
    v4->_alert = 0;

    subtitle = v5->_subtitle;
    v5->_subtitle = 0;

    v8 = objc_alloc_init(NSMutableString);
    detailText = v5->_detailText;
    v5->_detailText = v8;
  }

  return v5;
}

- (void)setChecked:(BOOL)checked
{
  v4 = OBJC_IVAR___PSTableCell__checked;
  if (self->PSTableCell_opaque[OBJC_IVAR___PSTableCell__checked] != checked)
  {
    self->PSTableCell_opaque[OBJC_IVAR___PSTableCell__checked] = checked;
  }

  v5 = +[UIColor labelColor];
  titleLabel = [(VPNTableCell *)self titleLabel];
  [titleLabel setTextColor:v5];

  v7 = +[UIColor secondaryLabelColor];
  detailTextLabel = [(VPNTableCell *)self detailTextLabel];
  [detailTextLabel setTextColor:v7];

  if (!qword_4A0B0)
  {
    v9 = [UIImage systemImageNamed:@"checkmark"];
    v10 = qword_4A0B0;
    qword_4A0B0 = v9;
  }

  [(VPNTableCell *)self setIcon:?];
  v11 = self->PSTableCell_opaque[v4] == 0;
  imageView = [(VPNTableCell *)self imageView];
  [imageView setHidden:v11];
}

- (void)updateDetail
{
  [(NSMutableString *)self->_detailText setString:&stru_411E8];
  subtitle = self->_subtitle;
  if (subtitle && ![(NSString *)subtitle isEqualToString:&stru_411E8])
  {
    [(NSMutableString *)self->_detailText setString:self->_subtitle];
    alert = self->_alert;
    if (alert && ![(NSString *)alert isEqualToString:&stru_411E8])
    {
      [(NSMutableString *)self->_detailText appendString:@" - "];
      [(NSMutableString *)self->_detailText appendString:self->_alert];
      goto LABEL_10;
    }

LABEL_8:
    v6 = 0;
    goto LABEL_11;
  }

  v4 = self->_alert;
  if (!v4 || [(NSString *)v4 isEqualToString:&stru_411E8])
  {
    goto LABEL_8;
  }

  [(NSMutableString *)self->_detailText setString:self->_alert];
LABEL_10:
  v6 = 1;
LABEL_11:
  if (([(NSMutableString *)self->_detailText isEqualToString:&stru_411E8]& 1) == 0)
  {
    v22.receiver = self;
    v22.super_class = VPNTableCell;
    detailTextLabel = [(VPNTableCell *)&v22 detailTextLabel];
    [detailTextLabel setText:self->_detailText];
    v21.receiver = self;
    v21.super_class = VPNTableCell;
    detailTextLabel2 = [(VPNTableCell *)&v21 detailTextLabel];
    [detailTextLabel2 frame];
    v10 = v9;
    v12 = v11;
    v14 = v13;

    contentView = [(VPNTableCell *)self contentView];
    [contentView size];
    v17 = v16 + -30.0;

    v20.receiver = self;
    v20.super_class = VPNTableCell;
    detailTextLabel3 = [(VPNTableCell *)&v20 detailTextLabel];
    [detailTextLabel3 setFrame:{v10, v12, v17, v14}];

    if (v6)
    {
      +[UIColor redColor];
    }

    else
    {
      +[UIColor secondaryLabelColor];
    }
    v19 = ;
    [detailTextLabel setTextColor:v19];
  }
}

- (void)setSubtitle:(id)subtitle
{
  subtitleCopy = subtitle;
  v6 = subtitleCopy;
  if (subtitleCopy)
  {
    v7 = subtitleCopy;
    subtitleCopy = [(NSString *)self->_subtitle isEqualToString:subtitleCopy];
    v6 = v7;
    if ((subtitleCopy & 1) == 0)
    {
      objc_storeStrong(&self->_subtitle, subtitle);
      [(VPNTableCell *)self updateDetail];
      subtitleCopy = [(VPNTableCell *)self setNeedsLayout];
      v6 = v7;
    }
  }

  _objc_release_x1(subtitleCopy, v6);
}

- (void)setAlert:(id)alert
{
  alertCopy = alert;
  alert = self->_alert;
  v7 = alertCopy;
  if (alertCopy)
  {
    if ([(NSString *)alert isEqualToString:alertCopy])
    {
      goto LABEL_6;
    }

    v6 = v7;
    alert = self->_alert;
  }

  else
  {
    v6 = 0;
  }

  self->_alert = v6;

LABEL_6:
  [(VPNTableCell *)self updateDetail];
  [(VPNTableCell *)self setNeedsLayout];
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = VPNTableCell;
  titleLabel = [(VPNTableCell *)&v5 titleLabel];
  [titleLabel setAdjustsFontSizeToFitWidth:1];
  v4.receiver = self;
  v4.super_class = VPNTableCell;
  [(VPNTableCell *)&v4 layoutSubviews];
}

@end