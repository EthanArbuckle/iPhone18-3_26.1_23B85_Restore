@interface NPHCSCellularPlanCell
+ (id)_planStatusDescriptionForPlanPropertyStatus:(int)status;
+ (id)cellForTableView:(id)view reuseIdentifier:(id)identifier cellularPlanItem:(id)item hasMultipleActiveSIM:(BOOL)m;
- (NPHCSCellularPlanCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)prepareForReuse;
@end

@implementation NPHCSCellularPlanCell

- (NPHCSCellularPlanCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v5.receiver = self;
  v5.super_class = NPHCSCellularPlanCell;
  return [(NPHCSCellularPlanCell *)&v5 initWithStyle:style reuseIdentifier:identifier];
}

+ (id)cellForTableView:(id)view reuseIdentifier:(id)identifier cellularPlanItem:(id)item hasMultipleActiveSIM:(BOOL)m
{
  mCopy = m;
  identifierCopy = identifier;
  itemCopy = item;
  v11 = [view dequeueReusableCellWithIdentifier:identifierCopy];
  if (!v11)
  {
    v11 = [[NPHCSCellularPlanCell alloc] initWithStyle:3 reuseIdentifier:identifierCopy];
  }

  v12 = +[NPHCellularBridgeUIManager sharedInstance];
  v13 = [v12 displayNameForCellularPlan:itemCopy];

  v14 = v13;
  if (!v13)
  {
    v12 = [NSBundle bundleForClass:objc_opt_class()];
    v14 = [v12 localizedStringForKey:@"WAITING_FOR_CARRIER_NAME" value:&stru_1CD90 table:0];
  }

  textLabel = [(NPHCSCellularPlanCell *)v11 textLabel];
  [textLabel setText:v14];

  if (v13)
  {
    if (!itemCopy)
    {
      goto LABEL_10;
    }
  }

  else
  {

    if (!itemCopy)
    {
LABEL_10:
      v18 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:100];
      [v18 startAnimating];
      [(NPHCSCellularPlanCell *)v11 setAccessoryView:v18];

      v19 = 1;
      goto LABEL_12;
    }
  }

  plan = [itemCopy plan];
  v17 = +[NPHCSCellularPlanCell _showStatusSpinnerForPlanStatus:](NPHCSCellularPlanCell, "_showStatusSpinnerForPlanStatus:", [plan status]);

  if (v17)
  {
    goto LABEL_10;
  }

  [(NPHCSCellularPlanCell *)v11 setAccessoryType:4];
  v19 = 0;
LABEL_12:
  plan2 = [itemCopy plan];
  v21 = +[NPHCSCellularPlanCell _planStatusDescriptionForPlanPropertyStatus:](NPHCSCellularPlanCell, "_planStatusDescriptionForPlanPropertyStatus:", [plan2 status]);

  if (itemCopy)
  {
    if (((v21 == 0) & ~v19) != 0)
    {
      if (!mCopy)
      {
        goto LABEL_24;
      }

      phoneNumber = [itemCopy phoneNumber];
      detailTextLabel = [(NPHCSCellularPlanCell *)v11 detailTextLabel];
      [detailTextLabel setText:phoneNumber];

LABEL_20:
      v27 = [UIImage systemImageNamed:@"checkmark"];
      imageView = [(NPHCSCellularPlanCell *)v11 imageView];
      [imageView setImage:v27];

      if ([itemCopy isSelected])
      {
        v29 = 1.0;
      }

      else
      {
        v29 = 0.0;
      }

      imageView2 = [(NPHCSCellularPlanCell *)v11 imageView];
      [imageView2 setAlpha:v29];

      goto LABEL_24;
    }

    detailTextLabel2 = [(NPHCSCellularPlanCell *)v11 detailTextLabel];
    [detailTextLabel2 setText:v21];
  }

  else
  {
    detailTextLabel2 = [NSBundle bundleForClass:objc_opt_class()];
    v23 = [detailTextLabel2 localizedStringForKey:@"WAITING_FOR_CARRIER_LOADING_PLAN_INFORMATION" value:&stru_1CD90 table:0];
    detailTextLabel3 = [(NPHCSCellularPlanCell *)v11 detailTextLabel];
    [detailTextLabel3 setText:v23];
  }

  if (mCopy)
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
  imageView = [(NPHCSCellularPlanCell *)self imageView];
  [imageView setImage:0];

  textLabel = [(NPHCSCellularPlanCell *)self textLabel];
  [textLabel setText:0];

  detailTextLabel = [(NPHCSCellularPlanCell *)self detailTextLabel];
  [detailTextLabel setText:0];
}

+ (id)_planStatusDescriptionForPlanPropertyStatus:(int)status
{
  if (status > 5)
  {
    if (status > 9)
    {
      switch(status)
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

    if ((status - 6) >= 2)
    {
      if (status == 8)
      {
        v3 = @"CELLULAR_PLAN_STATUS_DELETING";
        goto LABEL_26;
      }

      if (status == 9)
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
  if (status <= 2)
  {
    if (!status)
    {
      goto LABEL_27;
    }

    if (status == 1)
    {
      v3 = @"CELLULAR_PLAN_STATUS_EXPIRED";
      goto LABEL_26;
    }

    if (status != 2)
    {
      goto LABEL_19;
    }

    goto LABEL_11;
  }

  if (status == 3)
  {
    v3 = @"CELLULAR_PLAN_STATUS_DEVICE_MISMATCH";
    goto LABEL_26;
  }

  if (status == 4)
  {
    v3 = @"CELLULAR_PLAN_STATUS_PROVISIONING_ERROR";
    goto LABEL_26;
  }

LABEL_27:

  return v4;
}

@end