@interface NLCTableCell
- (NLCTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
- (void)layoutSubviews;
- (void)setAlert:(id)alert;
- (void)setChecked:(BOOL)checked;
- (void)setSubtitle:(id)subtitle;
@end

@implementation NLCTableCell

- (NLCTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  v12.receiver = self;
  v12.super_class = NLCTableCell;
  v5 = [(NLCTableCell *)&v12 initWithStyle:3 reuseIdentifier:identifier specifier:specifier];
  v6 = v5;
  if (v5)
  {
    alert = v5->_alert;
    v5->_alert = 0;

    subtitle = v6->_subtitle;
    v6->_subtitle = 0;

    v9 = objc_alloc_init(NSMutableString);
    detailText = v6->_detailText;
    v6->_detailText = v9;
  }

  return v6;
}

- (void)setChecked:(BOOL)checked
{
  v4 = OBJC_IVAR___PSTableCell__checked;
  if (self->PSTableCell_opaque[OBJC_IVAR___PSTableCell__checked] != checked)
  {
    self->PSTableCell_opaque[OBJC_IVAR___PSTableCell__checked] = checked;
    titleLabel = [(NLCTableCell *)self titleLabel];
    if (self->PSTableCell_opaque[v4])
    {
      +[UIColor tableCellBlueTextColor];
    }

    else
    {
      +[UIColor blackColor];
    }
    v6 = ;
    [titleLabel setColor:v6];

    detailTextLabel = [(NLCTableCell *)self detailTextLabel];
    if (self->PSTableCell_opaque[v4])
    {
      +[UIColor tableCellBlueTextColor];
    }

    else
    {
      +[UIColor lightGrayColor];
    }
    v8 = ;
    [detailTextLabel setColor:v8];
  }

  v9 = qword_49E68;
  if (!qword_49E68)
  {
    v10 = [NSBundle bundleForClass:objc_opt_class()];
    v11 = [UIImage imageNamed:@"BlueCheck.png" inBundle:v10];
    v12 = qword_49E68;
    qword_49E68 = v11;

    v13 = [NSBundle bundleForClass:objc_opt_class()];
    v14 = [UIImage imageNamed:@"spacer.png" inBundle:v13];
    v15 = qword_49E70;
    qword_49E70 = v14;

    v9 = qword_49E68;
  }

  if (self->PSTableCell_opaque[v4])
  {
    v16 = v9;
  }

  else
  {
    v16 = qword_49E70;
  }

  [(NLCTableCell *)self setIcon:v16];
}

- (void)setSubtitle:(id)subtitle
{
  subtitleCopy = subtitle;
  if (subtitleCopy && ![(NSString *)self->_subtitle isEqualToString:subtitleCopy])
  {
    objc_storeStrong(&self->_subtitle, subtitle);
    [(NLCTableCell *)self setNeedsLayout];
  }

  _objc_release_x1();
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
  [(NLCTableCell *)self setNeedsLayout];
}

- (void)layoutSubviews
{
  v29.receiver = self;
  v29.super_class = NLCTableCell;
  [(NLCTableCell *)&v29 layoutSubviews];
  v28.receiver = self;
  v28.super_class = NLCTableCell;
  titleLabel = [(NLCTableCell *)&v28 titleLabel];
  [titleLabel setAdjustsFontSizeToFitWidth:1];
  v4 = UISystemFontBoldForSize();
  [titleLabel setFont:v4];

  [(NSMutableString *)self->_detailText setString:&stru_3E0D8];
  subtitle = self->_subtitle;
  if (subtitle && ![(NSString *)subtitle isEqualToString:&stru_3E0D8])
  {
    [(NSMutableString *)self->_detailText setString:self->_subtitle];
    alert = self->_alert;
    if (alert && ![(NSString *)alert isEqualToString:&stru_3E0D8])
    {
      [(NSMutableString *)self->_detailText appendString:@" - "];
      [(NSMutableString *)self->_detailText appendString:self->_alert];
      goto LABEL_10;
    }

LABEL_8:
    v8 = 0;
    goto LABEL_11;
  }

  v6 = self->_alert;
  if (!v6 || [(NSString *)v6 isEqualToString:&stru_3E0D8])
  {
    goto LABEL_8;
  }

  [(NSMutableString *)self->_detailText setString:self->_alert];
LABEL_10:
  v8 = 1;
LABEL_11:
  if (([(NSMutableString *)self->_detailText isEqualToString:&stru_3E0D8]& 1) == 0)
  {
    v27.receiver = self;
    v27.super_class = NLCTableCell;
    detailTextLabel = [(NLCTableCell *)&v27 detailTextLabel];
    [detailTextLabel setText:self->_detailText];
    v26.receiver = self;
    v26.super_class = NLCTableCell;
    detailTextLabel2 = [(NLCTableCell *)&v26 detailTextLabel];
    [detailTextLabel2 frame];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;

    contentView = [(NLCTableCell *)self contentView];
    [contentView size];
    v21 = v20 + -30.0;

    if ([(NLCTableCell *)self _shouldReverseLayoutDirection])
    {
      v12 = v12 + v16 - v21;
    }

    v25.receiver = self;
    v25.super_class = NLCTableCell;
    detailTextLabel3 = [(NLCTableCell *)&v25 detailTextLabel];
    [detailTextLabel3 setFrame:{v12, v14, v21, v18}];

    if (v8)
    {
      v23 = +[UIColor redColor];
    }

    else
    {
      if (self->PSTableCell_opaque[OBJC_IVAR___PSTableCell__checked])
      {
        +[UIColor tableCellBlueTextColor];
      }

      else
      {
        +[UIColor lightGrayColor];
      }
      v23 = ;
    }

    v24 = v23;
    [detailTextLabel setColor:v23];
  }
}

@end