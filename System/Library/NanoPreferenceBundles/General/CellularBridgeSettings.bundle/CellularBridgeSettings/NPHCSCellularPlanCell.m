@interface NPHCSCellularPlanCell
+ (id)_planStatusDescriptionForPlanPropertyStatus:(int)a3;
+ (id)cellForTableView:(id)a3 reuseIdentifier:(id)a4 cellularPlanItem:(id)a5 hasMultipleActiveSIM:(BOOL)a6;
- (NPHCSCellularPlanCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)prepareForReuse;
@end

@implementation NPHCSCellularPlanCell

- (NPHCSCellularPlanCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v5.receiver = self;
  v5.super_class = NPHCSCellularPlanCell;
  return [(NPHCSCellularPlanCell *)&v5 initWithStyle:a3 reuseIdentifier:a4];
}

+ (id)cellForTableView:(id)a3 reuseIdentifier:(id)a4 cellularPlanItem:(id)a5 hasMultipleActiveSIM:(BOOL)a6
{
  v6 = a6;
  v9 = a4;
  v10 = a5;
  v11 = [a3 dequeueReusableCellWithIdentifier:v9];
  if (!v11)
  {
    v11 = [[NPHCSCellularPlanCell alloc] initWithStyle:3 reuseIdentifier:v9];
  }

  v12 = +[NPHCellularBridgeUIManager sharedInstance];
  v13 = [v12 displayNameForCellularPlan:v10];

  v14 = v13;
  if (!v13)
  {
    v12 = [NSBundle bundleForClass:objc_opt_class()];
    v14 = [v12 localizedStringForKey:@"WAITING_FOR_CARRIER_NAME" value:&stru_1CD90 table:0];
  }

  v15 = [(NPHCSCellularPlanCell *)v11 textLabel];
  [v15 setText:v14];

  if (v13)
  {
    if (!v10)
    {
      goto LABEL_10;
    }
  }

  else
  {

    if (!v10)
    {
LABEL_10:
      v18 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:100];
      [v18 startAnimating];
      [(NPHCSCellularPlanCell *)v11 setAccessoryView:v18];

      v19 = 1;
      goto LABEL_12;
    }
  }

  v16 = [v10 plan];
  v17 = +[NPHCSCellularPlanCell _showStatusSpinnerForPlanStatus:](NPHCSCellularPlanCell, "_showStatusSpinnerForPlanStatus:", [v16 status]);

  if (v17)
  {
    goto LABEL_10;
  }

  [(NPHCSCellularPlanCell *)v11 setAccessoryType:4];
  v19 = 0;
LABEL_12:
  v20 = [v10 plan];
  v21 = +[NPHCSCellularPlanCell _planStatusDescriptionForPlanPropertyStatus:](NPHCSCellularPlanCell, "_planStatusDescriptionForPlanPropertyStatus:", [v20 status]);

  if (v10)
  {
    if (((v21 == 0) & ~v19) != 0)
    {
      if (!v6)
      {
        goto LABEL_24;
      }

      v25 = [v10 phoneNumber];
      v26 = [(NPHCSCellularPlanCell *)v11 detailTextLabel];
      [v26 setText:v25];

LABEL_20:
      v27 = [UIImage systemImageNamed:@"checkmark"];
      v28 = [(NPHCSCellularPlanCell *)v11 imageView];
      [v28 setImage:v27];

      if ([v10 isSelected])
      {
        v29 = 1.0;
      }

      else
      {
        v29 = 0.0;
      }

      v30 = [(NPHCSCellularPlanCell *)v11 imageView];
      [v30 setAlpha:v29];

      goto LABEL_24;
    }

    v22 = [(NPHCSCellularPlanCell *)v11 detailTextLabel];
    [v22 setText:v21];
  }

  else
  {
    v22 = [NSBundle bundleForClass:objc_opt_class()];
    v23 = [v22 localizedStringForKey:@"WAITING_FOR_CARRIER_LOADING_PLAN_INFORMATION" value:&stru_1CD90 table:0];
    v24 = [(NPHCSCellularPlanCell *)v11 detailTextLabel];
    [v24 setText:v23];
  }

  if (v6)
  {
    goto LABEL_20;
  }

LABEL_24:

  return v11;
}

- (void)prepareForReuse
{
  v6.receiver = self;
  v6.super_class = NPHCSCellularPlanCell;
  [(NPHCSCellularPlanCell *)&v6 prepareForReuse];
  [(NPHCSCellularPlanCell *)self setAccessoryView:0];
  v3 = [(NPHCSCellularPlanCell *)self imageView];
  [v3 setImage:0];

  v4 = [(NPHCSCellularPlanCell *)self textLabel];
  [v4 setText:0];

  v5 = [(NPHCSCellularPlanCell *)self detailTextLabel];
  [v5 setText:0];
}

+ (id)_planStatusDescriptionForPlanPropertyStatus:(int)a3
{
  if (a3 > 5)
  {
    if (a3 > 9)
    {
      switch(a3)
      {
        case 10:
          v3 = @"CELLULAR_PLAN_STATUS_SWITCHING";
          goto LABEL_26;
        case 11:
          v3 = @"CELLULAR_PLAN_STATUS_TRANSFERRING";
          goto LABEL_26;
        case 13:
          v3 = @"CELLULAR_PLAN_STATUS_PENDING";
          goto LABEL_26;
      }

      goto LABEL_19;
    }

    if ((a3 - 6) >= 2)
    {
      if (a3 == 8)
      {
        v3 = @"CELLULAR_PLAN_STATUS_DELETING";
        goto LABEL_26;
      }

      if (a3 == 9)
      {
        v3 = @"CELLULAR_PLAN_STATUS_WAITING";
LABEL_26:
        v5 = [NSBundle bundleForClass:objc_opt_class()];
        v4 = [v5 localizedStringForKey:v3 value:&stru_1CD90 table:0];

        goto LABEL_27;
      }

LABEL_19:
      v3 = @"CELLULAR_PLAN_STATUS_OTHER";
      goto LABEL_26;
    }

LABEL_11:
    v3 = @"CELLULAR_PLAN_STATUS_ACTIVATING";
    goto LABEL_26;
  }

  v4 = 0;
  if (a3 <= 2)
  {
    if (!a3)
    {
      goto LABEL_27;
    }

    if (a3 == 1)
    {
      v3 = @"CELLULAR_PLAN_STATUS_EXPIRED";
      goto LABEL_26;
    }

    if (a3 != 2)
    {
      goto LABEL_19;
    }

    goto LABEL_11;
  }

  if (a3 == 3)
  {
    v3 = @"CELLULAR_PLAN_STATUS_DEVICE_MISMATCH";
    goto LABEL_26;
  }

  if (a3 == 4)
  {
    v3 = @"CELLULAR_PLAN_STATUS_PROVISIONING_ERROR";
    goto LABEL_26;
  }

LABEL_27:

  return v4;
}

@end