@interface VPNPrimaryTableCell
- (VPNPrimaryTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)layoutSubviews;
- (void)setAlert:(id)a3;
- (void)setDisabled:(BOOL)a3;
- (void)setSubtitle:(id)a3;
- (void)setVpnPrimaryTableCellStatus:(id)a3;
- (void)updateDetail;
@end

@implementation VPNPrimaryTableCell

- (VPNPrimaryTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v12.receiver = self;
  v12.super_class = VPNPrimaryTableCell;
  v4 = [(VPNPrimaryTableCell *)&v12 initWithStyle:3 reuseIdentifier:a4];
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
    v7 = [(VPNPrimaryTableCell *)&v22 detailTextLabel];
    [v7 setText:self->_detailText];
    v21.receiver = self;
    v21.super_class = VPNPrimaryTableCell;
    v8 = [(VPNPrimaryTableCell *)&v21 detailTextLabel];
    [v8 frame];
    v10 = v9;
    v12 = v11;
    v14 = v13;

    v15 = [(VPNPrimaryTableCell *)self contentView];
    [v15 size];
    v17 = v16 + -30.0;

    v20.receiver = self;
    v20.super_class = VPNPrimaryTableCell;
    v18 = [(VPNPrimaryTableCell *)&v20 detailTextLabel];
    [v18 setFrame:{v10, v12, v17, v14}];

    if (v6)
    {
      +[UIColor redColor];
    }

    else
    {
      +[UIColor secondaryLabelColor];
    }
    v19 = ;
    [v7 setTextColor:v19];
  }
}

- (void)setSubtitle:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    v5 = [(NSString *)self->_subtitle isEqualToString:v5];
    v6 = v7;
    if ((v5 & 1) == 0)
    {
      objc_storeStrong(&self->_subtitle, a3);
      [(VPNPrimaryTableCell *)self updateDetail];
      v5 = [(VPNPrimaryTableCell *)self setNeedsLayout];
      v6 = v7;
    }
  }

  _objc_release_x1(v5, v6);
}

- (void)setVpnPrimaryTableCellStatus:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    v5 = [(NSString *)self->_vpnPrimaryTableCellStatus isEqualToString:v5];
    v6 = v7;
    if ((v5 & 1) == 0)
    {
      objc_storeStrong(&self->_vpnPrimaryTableCellStatus, a3);
      [(VPNPrimaryTableCell *)self updateDetail];
      v5 = [(VPNPrimaryTableCell *)self setNeedsLayout];
      v6 = v7;
    }
  }

  _objc_release_x1(v5, v6);
}

- (void)setAlert:(id)a3
{
  v4 = a3;
  alert = self->_alert;
  v7 = v4;
  if (v4)
  {
    if ([(NSString *)alert isEqualToString:v4])
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

- (void)setDisabled:(BOOL)a3
{
  if (self->_disabled != a3)
  {
    self->_disabled = a3;
    [(VPNPrimaryTableCell *)self updateDetail];

    [(VPNPrimaryTableCell *)self setNeedsLayout];
  }
}

- (void)layoutSubviews
{
  v43.receiver = self;
  v43.super_class = VPNPrimaryTableCell;
  v3 = [(VPNPrimaryTableCell *)&v43 titleLabel];
  [v3 setAdjustsFontSizeToFitWidth:1];
  if ([(VPNPrimaryTableCell *)self disabled])
  {
    +[UIColor secondaryLabelColor];
  }

  else
  {
    +[UIColor labelColor];
  }
  v4 = ;
  [v3 setTextColor:v4];

  v42.receiver = self;
  v42.super_class = VPNPrimaryTableCell;
  [(VPNPrimaryTableCell *)&v42 layoutSubviews];
  v5 = OBJC_IVAR___PSTableCell__specifier;
  WeakRetained = objc_loadWeakRetained(&self->PSTableCell_opaque[OBJC_IVAR___PSTableCell__specifier]);
  v7 = [WeakRetained userInfo];
  v8 = [v7 objectForKey:@"vpn-status"];

  if (v8)
  {
    v9 = [(VPNPrimaryTableCell *)self specialStatusLabel];

    if (!v9)
    {
      v10 = objc_alloc_init(UILabel);
      [(VPNPrimaryTableCell *)self setSpecialStatusLabel:v10];

      v11 = [(VPNPrimaryTableCell *)self contentView];
      v12 = [(VPNPrimaryTableCell *)self specialStatusLabel];
      [v11 addSubview:v12];
    }

    v13 = [(VPNPrimaryTableCell *)self specialStatusLabel];
    v14 = [(VPNPrimaryTableCell *)self vpnPrimaryTableCellStatus];
    [v13 setText:v14];

    [v13 setTextAlignment:2];
    v15 = +[UIColor secondaryLabelColor];
    [v13 setTextColor:v15];

    v16 = [(VPNPrimaryTableCell *)self contentView];
    [v16 size];
    v18 = v17;
    v19 = [(VPNPrimaryTableCell *)self contentView];
    [v19 size];
    [v13 setFrame:{0.0, 0.0, v18, v20}];

    [v13 sizeToFit];
    v21 = [(VPNPrimaryTableCell *)self contentView];
    [v21 size];
    v23 = v22;
    [v13 frame];
    v25 = v23 - v24;

    v26 = objc_loadWeakRetained(&self->PSTableCell_opaque[v5]);
    v27 = [v26 cellType];

    if (v27 == &dword_0 + 3)
    {
      v28 = objc_loadWeakRetained(&self->PSTableCell_opaque[v5]);
      v29 = [v28 propertyForKey:PSAccessoryKey];
      v30 = [v29 intValue];

      if (!v30)
      {
        v25 = v25 + -40.0;
      }
    }

    [v13 frame];
    v32 = v31;
    v33 = [(VPNPrimaryTableCell *)self contentView];
    [v33 size];
    [v13 setFrame:{v25, 0.0, v32, v34}];

    [v3 setAdjustsFontSizeToFitWidth:0];
    [v3 frame];
    v36 = v35;
    v38 = v37;
    v40 = v39;
    [v3 origin];
    [v3 setFrame:{v36, v38, v25 - v41, v40}];
  }
}

@end