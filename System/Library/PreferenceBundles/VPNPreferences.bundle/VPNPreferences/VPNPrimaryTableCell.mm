@interface VPNPrimaryTableCell
- (VPNPrimaryTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)layoutSubviews;
- (void)setAlert:(id)alert;
- (void)setDisabled:(BOOL)disabled;
- (void)setSubtitle:(id)subtitle;
- (void)setVpnPrimaryTableCellStatus:(id)status;
- (void)updateDetail;
@end

@implementation VPNPrimaryTableCell

- (VPNPrimaryTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v12.receiver = self;
  v12.super_class = VPNPrimaryTableCell;
  v4 = [(VPNPrimaryTableCell *)&v12 initWithStyle:3 reuseIdentifier:identifier];
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

    specialStatusLabel = v5->_specialStatusLabel;
    v5->_specialStatusLabel = 0;
  }

  return v5;
}

- (void)updateDetail
{
  [(NSMutableString *)self->_detailText setString:&stru_411E8];
  subtitle = self->_subtitle;
  if (subtitle && ![(NSString *)subtitle isEqualToString:&stru_411E8])
  {
    [(NSMutableString *)self->_detailText appendString:self->_subtitle];
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
    v22.super_class = VPNPrimaryTableCell;
    detailTextLabel = [(VPNPrimaryTableCell *)&v22 detailTextLabel];
    [detailTextLabel setText:self->_detailText];
    v21.receiver = self;
    v21.super_class = VPNPrimaryTableCell;
    detailTextLabel2 = [(VPNPrimaryTableCell *)&v21 detailTextLabel];
    [detailTextLabel2 frame];
    v10 = v9;
    v12 = v11;
    v14 = v13;

    contentView = [(VPNPrimaryTableCell *)self contentView];
    [contentView size];
    v17 = v16 + -30.0;

    v20.receiver = self;
    v20.super_class = VPNPrimaryTableCell;
    detailTextLabel3 = [(VPNPrimaryTableCell *)&v20 detailTextLabel];
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
      [(VPNPrimaryTableCell *)self updateDetail];
      subtitleCopy = [(VPNPrimaryTableCell *)self setNeedsLayout];
      v6 = v7;
    }
  }

  _objc_release_x1(subtitleCopy, v6);
}

- (void)setVpnPrimaryTableCellStatus:(id)status
{
  statusCopy = status;
  v6 = statusCopy;
  if (statusCopy)
  {
    v7 = statusCopy;
    statusCopy = [(NSString *)self->_vpnPrimaryTableCellStatus isEqualToString:statusCopy];
    v6 = v7;
    if ((statusCopy & 1) == 0)
    {
      objc_storeStrong(&self->_vpnPrimaryTableCellStatus, status);
      [(VPNPrimaryTableCell *)self updateDetail];
      statusCopy = [(VPNPrimaryTableCell *)self setNeedsLayout];
      v6 = v7;
    }
  }

  _objc_release_x1(statusCopy, v6);
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
  [(VPNPrimaryTableCell *)self updateDetail];
  [(VPNPrimaryTableCell *)self setNeedsLayout];
}

- (void)setDisabled:(BOOL)disabled
{
  if (self->_disabled != disabled)
  {
    self->_disabled = disabled;
    [(VPNPrimaryTableCell *)self updateDetail];

    [(VPNPrimaryTableCell *)self setNeedsLayout];
  }
}

- (void)layoutSubviews
{
  v43.receiver = self;
  v43.super_class = VPNPrimaryTableCell;
  titleLabel = [(VPNPrimaryTableCell *)&v43 titleLabel];
  [titleLabel setAdjustsFontSizeToFitWidth:1];
  if ([(VPNPrimaryTableCell *)self disabled])
  {
    +[UIColor secondaryLabelColor];
  }

  else
  {
    +[UIColor labelColor];
  }
  v4 = ;
  [titleLabel setTextColor:v4];

  v42.receiver = self;
  v42.super_class = VPNPrimaryTableCell;
  [(VPNPrimaryTableCell *)&v42 layoutSubviews];
  v5 = OBJC_IVAR___PSTableCell__specifier;
  WeakRetained = objc_loadWeakRetained(&self->PSTableCell_opaque[OBJC_IVAR___PSTableCell__specifier]);
  userInfo = [WeakRetained userInfo];
  v8 = [userInfo objectForKey:@"vpn-status"];

  if (v8)
  {
    specialStatusLabel = [(VPNPrimaryTableCell *)self specialStatusLabel];

    if (!specialStatusLabel)
    {
      v10 = objc_alloc_init(UILabel);
      [(VPNPrimaryTableCell *)self setSpecialStatusLabel:v10];

      contentView = [(VPNPrimaryTableCell *)self contentView];
      specialStatusLabel2 = [(VPNPrimaryTableCell *)self specialStatusLabel];
      [contentView addSubview:specialStatusLabel2];
    }

    specialStatusLabel3 = [(VPNPrimaryTableCell *)self specialStatusLabel];
    vpnPrimaryTableCellStatus = [(VPNPrimaryTableCell *)self vpnPrimaryTableCellStatus];
    [specialStatusLabel3 setText:vpnPrimaryTableCellStatus];

    [specialStatusLabel3 setTextAlignment:2];
    v15 = +[UIColor secondaryLabelColor];
    [specialStatusLabel3 setTextColor:v15];

    contentView2 = [(VPNPrimaryTableCell *)self contentView];
    [contentView2 size];
    v18 = v17;
    contentView3 = [(VPNPrimaryTableCell *)self contentView];
    [contentView3 size];
    [specialStatusLabel3 setFrame:{0.0, 0.0, v18, v20}];

    [specialStatusLabel3 sizeToFit];
    contentView4 = [(VPNPrimaryTableCell *)self contentView];
    [contentView4 size];
    v23 = v22;
    [specialStatusLabel3 frame];
    v25 = v23 - v24;

    v26 = objc_loadWeakRetained(&self->PSTableCell_opaque[v5]);
    cellType = [v26 cellType];

    if (cellType == &dword_0 + 3)
    {
      v28 = objc_loadWeakRetained(&self->PSTableCell_opaque[v5]);
      v29 = [v28 propertyForKey:PSAccessoryKey];
      intValue = [v29 intValue];

      if (!intValue)
      {
        v25 = v25 + -40.0;
      }
    }

    [specialStatusLabel3 frame];
    v32 = v31;
    contentView5 = [(VPNPrimaryTableCell *)self contentView];
    [contentView5 size];
    [specialStatusLabel3 setFrame:{v25, 0.0, v32, v34}];

    [titleLabel setAdjustsFontSizeToFitWidth:0];
    [titleLabel frame];
    v36 = v35;
    v38 = v37;
    v40 = v39;
    [titleLabel origin];
    [titleLabel setFrame:{v36, v38, v25 - v41, v40}];
  }
}

@end