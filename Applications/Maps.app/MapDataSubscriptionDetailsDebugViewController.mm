@interface MapDataSubscriptionDetailsDebugViewController
- (MapDataSubscriptionDetailsDebugViewController)initWithSubscription:(id)subscription;
- (double)tableView:(id)view heightForRowAtIndexPath:(id)path;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)viewDidLoad;
@end

@implementation MapDataSubscriptionDetailsDebugViewController

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if (![pathCopy section])
  {
    if (![pathCopy row])
    {
      v8 = [viewCopy dequeueReusableCellWithIdentifier:@"map"];
      v17 = [MapDataSubscriptionMapContentConfiguration alloc];
      subscriptionInfo = self->_subscriptionInfo;
      v18 = [NSArray arrayWithObjects:&subscriptionInfo count:1];
      v19 = [(MapDataSubscriptionMapContentConfiguration *)v17 initWithSubscriptions:v18];
      [v8 setContentConfiguration:v19];

      [v8 setSelectionStyle:0];
      goto LABEL_20;
    }

    v8 = [viewCopy dequeueReusableCellWithIdentifier:@"text"];
    v9 = +[UIListContentConfiguration valueCellConfiguration];
    v10 = [pathCopy row];
    if (v10 <= 2)
    {
      if (v10 == 1)
      {
        [v9 setText:@"Identifier"];
        subscription = [(MapDataSubscriptionInfo *)self->_subscriptionInfo subscription];
        identifier = [subscription identifier];
      }

      else
      {
        if (v10 != 2)
        {
          goto LABEL_19;
        }

        [v9 setText:@"App"];
        subscription = [(MapDataSubscriptionInfo *)self->_subscriptionInfo subscription];
        identifier = [subscription _originatingBundleIdentifier];
      }
    }

    else
    {
      switch(v10)
      {
        case 3:
          [v9 setText:@"Data"];
          subscription = [(MapDataSubscriptionInfo *)self->_subscriptionInfo subscription];
          [subscription dataTypes];
          identifier = GEOMapDataSubscriptionDataTypeAsString();
          break;
        case 4:
          [v9 setText:@"Policy"];
          subscription = [(MapDataSubscriptionInfo *)self->_subscriptionInfo subscription];
          [subscription policy];
          identifier = GEOMapDataSubscriptionPolicyAsString();
          break;
        case 5:
          [v9 setText:@"Expires"];
          subscription = [(MapDataSubscriptionInfo *)self->_subscriptionInfo subscription];
          expirationDate = [subscription expirationDate];
          if (expirationDate)
          {
            dateFormatter = self->_dateFormatter;
            subscription2 = [(MapDataSubscriptionInfo *)self->_subscriptionInfo subscription];
            expirationDate2 = [subscription2 expirationDate];
            v16 = [(NSDateFormatter *)dateFormatter stringFromDate:expirationDate2];
            [v9 setSecondaryText:v16];

LABEL_18:
            goto LABEL_19;
          }

          v22 = @"Never";
          v21 = v9;
LABEL_17:
          [v21 setSecondaryText:v22];
          goto LABEL_18;
        default:
LABEL_19:
          [v8 setContentConfiguration:v9];
          [v8 setSelectionStyle:0];

          goto LABEL_20;
      }
    }

    expirationDate = identifier;
    v21 = v9;
    v22 = expirationDate;
    goto LABEL_17;
  }

  v8 = 0;
LABEL_20:

  return v8;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  if (section)
  {
    return 0;
  }

  else
  {
    return 6;
  }
}

- (double)tableView:(id)view heightForRowAtIndexPath:(id)path
{
  pathCopy = path;
  if ([pathCopy section] || objc_msgSend(pathCopy, "row"))
  {
    v5 = UITableViewAutomaticDimension;
  }

  else
  {
    v5 = 200.0;
  }

  return v5;
}

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = MapDataSubscriptionDetailsDebugViewController;
  [(MapDataSubscriptionDetailsDebugViewController *)&v7 viewDidLoad];
  tableView = [(MapDataSubscriptionDetailsDebugViewController *)self tableView];
  [tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"map"];

  tableView2 = [(MapDataSubscriptionDetailsDebugViewController *)self tableView];
  [tableView2 registerClass:objc_opt_class() forCellReuseIdentifier:@"text"];

  subscription = [(MapDataSubscriptionInfo *)self->_subscriptionInfo subscription];
  identifier = [subscription identifier];
  [(MapDataSubscriptionDetailsDebugViewController *)self setTitle:identifier];
}

- (MapDataSubscriptionDetailsDebugViewController)initWithSubscription:(id)subscription
{
  subscriptionCopy = subscription;
  v6 = [(MapDataSubscriptionDetailsDebugViewController *)self initWithStyle:2];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_subscriptionInfo, subscription);
    v8 = objc_alloc_init(NSDateFormatter);
    dateFormatter = v7->_dateFormatter;
    v7->_dateFormatter = v8;

    [(NSDateFormatter *)v7->_dateFormatter setDateStyle:1];
    [(NSDateFormatter *)v7->_dateFormatter setTimeStyle:0];
    v10 = v7;
  }

  return v7;
}

@end