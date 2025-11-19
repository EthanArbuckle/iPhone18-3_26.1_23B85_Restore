@interface MapDataSubscriptionDetailsDebugViewController
- (MapDataSubscriptionDetailsDebugViewController)initWithSubscription:(id)a3;
- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)viewDidLoad;
@end

@implementation MapDataSubscriptionDetailsDebugViewController

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (![v7 section])
  {
    if (![v7 row])
    {
      v8 = [v6 dequeueReusableCellWithIdentifier:@"map"];
      v17 = [MapDataSubscriptionMapContentConfiguration alloc];
      subscriptionInfo = self->_subscriptionInfo;
      v18 = [NSArray arrayWithObjects:&subscriptionInfo count:1];
      v19 = [(MapDataSubscriptionMapContentConfiguration *)v17 initWithSubscriptions:v18];
      [v8 setContentConfiguration:v19];

      [v8 setSelectionStyle:0];
      goto LABEL_20;
    }

    v8 = [v6 dequeueReusableCellWithIdentifier:@"text"];
    v9 = +[UIListContentConfiguration valueCellConfiguration];
    v10 = [v7 row];
    if (v10 <= 2)
    {
      if (v10 == 1)
      {
        [v9 setText:@"Identifier"];
        v11 = [(MapDataSubscriptionInfo *)self->_subscriptionInfo subscription];
        v20 = [v11 identifier];
      }

      else
      {
        if (v10 != 2)
        {
          goto LABEL_19;
        }

        [v9 setText:@"App"];
        v11 = [(MapDataSubscriptionInfo *)self->_subscriptionInfo subscription];
        v20 = [v11 _originatingBundleIdentifier];
      }
    }

    else
    {
      switch(v10)
      {
        case 3:
          [v9 setText:@"Data"];
          v11 = [(MapDataSubscriptionInfo *)self->_subscriptionInfo subscription];
          [v11 dataTypes];
          v20 = GEOMapDataSubscriptionDataTypeAsString();
          break;
        case 4:
          [v9 setText:@"Policy"];
          v11 = [(MapDataSubscriptionInfo *)self->_subscriptionInfo subscription];
          [v11 policy];
          v20 = GEOMapDataSubscriptionPolicyAsString();
          break;
        case 5:
          [v9 setText:@"Expires"];
          v11 = [(MapDataSubscriptionInfo *)self->_subscriptionInfo subscription];
          v12 = [v11 expirationDate];
          if (v12)
          {
            dateFormatter = self->_dateFormatter;
            v14 = [(MapDataSubscriptionInfo *)self->_subscriptionInfo subscription];
            v15 = [v14 expirationDate];
            v16 = [(NSDateFormatter *)dateFormatter stringFromDate:v15];
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

    v12 = v20;
    v21 = v9;
    v22 = v12;
    goto LABEL_17;
  }

  v8 = 0;
LABEL_20:

  return v8;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  if (a4)
  {
    return 0;
  }

  else
  {
    return 6;
  }
}

- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4
{
  v4 = a4;
  if ([v4 section] || objc_msgSend(v4, "row"))
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
  v3 = [(MapDataSubscriptionDetailsDebugViewController *)self tableView];
  [v3 registerClass:objc_opt_class() forCellReuseIdentifier:@"map"];

  v4 = [(MapDataSubscriptionDetailsDebugViewController *)self tableView];
  [v4 registerClass:objc_opt_class() forCellReuseIdentifier:@"text"];

  v5 = [(MapDataSubscriptionInfo *)self->_subscriptionInfo subscription];
  v6 = [v5 identifier];
  [(MapDataSubscriptionDetailsDebugViewController *)self setTitle:v6];
}

- (MapDataSubscriptionDetailsDebugViewController)initWithSubscription:(id)a3
{
  v5 = a3;
  v6 = [(MapDataSubscriptionDetailsDebugViewController *)self initWithStyle:2];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_subscriptionInfo, a3);
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