@interface NPHCSDataPolicySelectionViewController
- (BOOL)_isMusicApp;
- (BOOL)_isStreamingAllowedForRow:(int64_t)a3;
- (NPHCSDataPolicySelectionViewController)init;
- (id)headerForSection:(int64_t)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)numberOfSections;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_streamingSwitchFlipped:(id)a3;
- (void)selectItemAtIndexPath:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
@end

@implementation NPHCSDataPolicySelectionViewController

- (NPHCSDataPolicySelectionViewController)init
{
  v5.receiver = self;
  v5.super_class = NPHCSDataPolicySelectionViewController;
  v2 = [(NPHCSDataPolicySelectionViewController *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(NPHCSDataPolicySelectionViewController *)v2 setCellularSetup:0];
  }

  return v3;
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = NPHCSDataPolicySelectionViewController;
  [(NPHCSDataPolicySelectionViewController *)&v5 viewDidLoad];
  v3 = [(NPHCSDataPolicySelectionViewController *)self appDataUsageItem];
  v4 = [v3 displayName];
  [(NPHCSDataPolicySelectionViewController *)self setTitle:v4];
}

- (id)headerForSection:(int64_t)a3
{
  if (a3)
  {
    v3 = 0;
  }

  else
  {
    v4 = [(NPHCSDataPolicySelectionViewController *)self appDataUsageItem];
    v5 = [v4 displayName];

    if ([v5 length])
    {
      v6 = [NSBundle bundleForClass:objc_opt_class()];
      v7 = [v6 localizedStringForKey:@"ALLOW_DATA_ACCESS_FORMAT" value:&stru_1CD90 table:0];
      v3 = [NSString stringWithFormat:v7, v5];
    }

    else
    {
      v6 = [NSBundle bundleForClass:objc_opt_class()];
      v3 = [v6 localizedStringForKey:@"ALLOW_DATA_ACCESS" value:&stru_1CD90 table:0];
    }
  }

  return v3;
}

- (void)selectItemAtIndexPath:(id)a3
{
  v8 = a3;
  if (![v8 section])
  {
    v4 = [v8 row];
    v5 = v4 != &dword_0 + 1 && v4 == &dword_0 + 2;
    v6 = v4 == &dword_0 + 1 || v4 == &dword_0 + 2;
    v7 = [(NPHCSDataPolicySelectionViewController *)self appDataUsageItem];
    [v7 setUsagePoliciesForCellular:v5 andWifi:v6];
  }
}

- (int64_t)numberOfSections
{
  if ([(NPHCSDataPolicySelectionViewController *)self _isMusicApp])
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v6 = a3;
  if (a4 == 1)
  {
    v7 = 2;
  }

  else if (a4)
  {
    v7 = 0;
  }

  else if ([(NPHCSDataPolicySelectionViewController *)self isCellularSetup])
  {
    v7 = 3;
  }

  else
  {
    v7 = 2;
  }

  return v7;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v7 section])
  {
    if ([v7 section] != &dword_0 + 1)
    {
      v8 = 0;
      goto LABEL_34;
    }

    v8 = [v6 dequeueReusableCellWithIdentifier:@"StreamingDataPolicyCell"];
    if (v8)
    {
      goto LABEL_34;
    }

    v8 = [[UITableViewCell alloc] initWithStyle:0 reuseIdentifier:@"StreamingDataPolicyCell"];
    v9 = objc_alloc_init(UISwitch);
    [v9 addTarget:self action:"_streamingSwitchFlipped:" forEvents:4096];
    [v9 setTag:{objc_msgSend(v7, "row")}];
    [v9 setOn:{-[NPHCSDataPolicySelectionViewController _isStreamingAllowedForRow:](self, "_isStreamingAllowedForRow:", objc_msgSend(v7, "row"))}];
    [v8 setAccessoryView:v9];
    if ([v7 row])
    {
      if ([v7 row] != &dword_0 + 1)
      {
        v19 = 0;
        goto LABEL_32;
      }

      v10 = @"HQ_STREAMING";
    }

    else
    {
      v10 = @"STREAMING";
    }

    v20 = [NSBundle bundleForClass:objc_opt_class()];
    v19 = [v20 localizedStringForKey:v10 value:&stru_1CD90 table:0];

LABEL_32:
    v21 = [v8 textLabel];
    [v21 setText:v19];

    goto LABEL_33;
  }

  v8 = [v6 dequeueReusableCellWithIdentifier:@"WirelessDataPolicySubtitleCell"];
  if (!v8)
  {
    v8 = [[UITableViewCell alloc] initWithStyle:3 reuseIdentifier:@"WirelessDataPolicySubtitleCell"];
  }

  v11 = [(NPHCSDataPolicySelectionViewController *)self appDataUsageItem];
  v12 = [v11 isWiFiDataEnabled];

  if (v12)
  {
    v13 = [(NPHCSDataPolicySelectionViewController *)self appDataUsageItem];
    if ([v13 isCellularDataEnabled])
    {
      v14 = &dword_0 + 2;
    }

    else
    {
      v14 = &dword_0 + 1;
    }
  }

  else
  {
    v14 = 0;
  }

  if ([v7 row] == v14)
  {
    v15 = 3;
  }

  else
  {
    v15 = 0;
  }

  [v8 setAccessoryType:v15];
  if ([v7 row])
  {
    if ([v7 row] == &dword_0 + 1)
    {
      v16 = [NSBundle bundleForClass:objc_opt_class()];
      v17 = @"WIFI_ON";
    }

    else
    {
      if ([v7 row] != &dword_0 + 2)
      {
        v9 = 0;
        goto LABEL_27;
      }

      v16 = [NSBundle bundleForClass:objc_opt_class()];
      v17 = @"ALL_ON";
    }

    v18 = NPHWiFiStringKey(v17);
    v9 = [v16 localizedStringForKey:v18 value:&stru_1CD90 table:0];
  }

  else
  {
    v16 = [NSBundle bundleForClass:objc_opt_class()];
    v9 = [v16 localizedStringForKey:@"DATA_OFF" value:&stru_1CD90 table:0];
  }

LABEL_27:
  v19 = [v8 textLabel];
  [v19 setText:v9];
LABEL_33:

LABEL_34:

  return v8;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  [(NPHCSDataPolicySelectionViewController *)self selectItemAtIndexPath:a4];
  v5 = [(NPHCSDataPolicySelectionViewController *)self tableView];
  [v5 reloadData];
}

- (BOOL)_isMusicApp
{
  v2 = [(NPHCSDataPolicySelectionViewController *)self appDataUsageItem];
  v3 = [v2 bundleID];
  v4 = [v3 isEqualToString:@"com.apple.NanoMusic"];

  return v4;
}

- (void)_streamingSwitchFlipped:(id)a3
{
  v3 = a3;
  v4 = nph_general_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "[NPHCSDataPolicySelectionViewController _streamingSwitchFlipped:]";
    v8 = 2112;
    v9 = v3;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "%s: %@", &v6, 0x16u);
  }

  if (![v3 tag])
  {
    v5 = +[NMSGreenTeaStreamingDefaults sharedInstance];
    [v5 setGreenTeaMusicAllowCellularForStreaming:{objc_msgSend(v3, "isOn")}];
    goto LABEL_7;
  }

  if ([v3 tag] == &dword_0 + 1)
  {
    v5 = +[NMSGreenTeaStreamingDefaults sharedInstance];
    [v5 setGreenTeaMusicAllowCellularForHighQualityStreaming:{objc_msgSend(v3, "isOn")}];
LABEL_7:
  }
}

- (BOOL)_isStreamingAllowedForRow:(int64_t)a3
{
  if (a3 == 1)
  {
    v4 = +[NMSGreenTeaStreamingDefaults sharedInstance];
    v5 = [v4 greenTeaMusicAllowCellularForHighQualityStreaming];
    goto LABEL_5;
  }

  if (!a3)
  {
    v4 = +[NMSGreenTeaStreamingDefaults sharedInstance];
    v5 = [v4 greenTeaMusicAllowCellularForStreaming];
LABEL_5:
    v6 = v5;

    goto LABEL_7;
  }

  v6 = 0;
LABEL_7:
  v7 = nph_general_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315650;
    v10 = "[NPHCSDataPolicySelectionViewController _isStreamingAllowedForRow:]";
    v11 = 2048;
    v12 = a3;
    v13 = 1024;
    v14 = v6;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "%s: %ld - %d", &v9, 0x1Cu);
  }

  return v6;
}

@end