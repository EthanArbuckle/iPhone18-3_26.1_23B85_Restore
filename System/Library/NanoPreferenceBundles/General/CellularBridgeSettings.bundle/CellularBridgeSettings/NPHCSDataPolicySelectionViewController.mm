@interface NPHCSDataPolicySelectionViewController
- (BOOL)_isMusicApp;
- (BOOL)_isStreamingAllowedForRow:(int64_t)row;
- (NPHCSDataPolicySelectionViewController)init;
- (id)headerForSection:(int64_t)section;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)numberOfSections;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_streamingSwitchFlipped:(id)flipped;
- (void)selectItemAtIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
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
  appDataUsageItem = [(NPHCSDataPolicySelectionViewController *)self appDataUsageItem];
  displayName = [appDataUsageItem displayName];
  [(NPHCSDataPolicySelectionViewController *)self setTitle:displayName];
}

- (id)headerForSection:(int64_t)section
{
  if (section)
  {
    v3 = 0;
  }

  else
  {
    appDataUsageItem = [(NPHCSDataPolicySelectionViewController *)self appDataUsageItem];
    displayName = [appDataUsageItem displayName];

    if ([displayName length])
    {
      v6 = [NSBundle bundleForClass:objc_opt_class()];
      v7 = [v6 localizedStringForKey:@"ALLOW_DATA_ACCESS_FORMAT" value:&stru_1CD90 table:0];
      v3 = [NSString stringWithFormat:v7, displayName];
    }

    else
    {
      v6 = [NSBundle bundleForClass:objc_opt_class()];
      v3 = [v6 localizedStringForKey:@"ALLOW_DATA_ACCESS" value:&stru_1CD90 table:0];
    }
  }

  return v3;
}

- (void)selectItemAtIndexPath:(id)path
{
  pathCopy = path;
  if (![pathCopy section])
  {
    v4 = [pathCopy row];
    v5 = v4 != &dword_0 + 1 && v4 == &dword_0 + 2;
    v6 = v4 == &dword_0 + 1 || v4 == &dword_0 + 2;
    appDataUsageItem = [(NPHCSDataPolicySelectionViewController *)self appDataUsageItem];
    [appDataUsageItem setUsagePoliciesForCellular:v5 andWifi:v6];
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

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  viewCopy = view;
  if (section == 1)
  {
    v7 = 2;
  }

  else if (section)
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

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if ([pathCopy section])
  {
    if ([pathCopy section] != &dword_0 + 1)
    {
      v8 = 0;
      goto LABEL_34;
    }

    v8 = [viewCopy dequeueReusableCellWithIdentifier:@"StreamingDataPolicyCell"];
    if (v8)
    {
      goto LABEL_34;
    }

    v8 = [[UITableViewCell alloc] initWithStyle:0 reuseIdentifier:@"StreamingDataPolicyCell"];
    v9 = objc_alloc_init(UISwitch);
    [v9 addTarget:self action:"_streamingSwitchFlipped:" forEvents:4096];
    [v9 setTag:{objc_msgSend(pathCopy, "row")}];
    [v9 setOn:{-[NPHCSDataPolicySelectionViewController _isStreamingAllowedForRow:](self, "_isStreamingAllowedForRow:", objc_msgSend(pathCopy, "row"))}];
    [v8 setAccessoryView:v9];
    if ([pathCopy row])
    {
      if ([pathCopy row] != &dword_0 + 1)
      {
        textLabel2 = 0;
        goto LABEL_32;
      }

      v10 = @"HQ_STREAMING";
    }

    else
    {
      v10 = @"STREAMING";
    }

    v20 = [NSBundle bundleForClass:objc_opt_class()];
    textLabel2 = [v20 localizedStringForKey:v10 value:&stru_1CD90 table:0];

LABEL_32:
    textLabel = [v8 textLabel];
    [textLabel setText:textLabel2];

    goto LABEL_33;
  }

  v8 = [viewCopy dequeueReusableCellWithIdentifier:@"WirelessDataPolicySubtitleCell"];
  if (!v8)
  {
    v8 = [[UITableViewCell alloc] initWithStyle:3 reuseIdentifier:@"WirelessDataPolicySubtitleCell"];
  }

  appDataUsageItem = [(NPHCSDataPolicySelectionViewController *)self appDataUsageItem];
  isWiFiDataEnabled = [appDataUsageItem isWiFiDataEnabled];

  if (isWiFiDataEnabled)
  {
    appDataUsageItem2 = [(NPHCSDataPolicySelectionViewController *)self appDataUsageItem];
    if ([appDataUsageItem2 isCellularDataEnabled])
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

  if ([pathCopy row] == v14)
  {
    v15 = 3;
  }

  else
  {
    v15 = 0;
  }

  [v8 setAccessoryType:v15];
  if ([pathCopy row])
  {
    if ([pathCopy row] == &dword_0 + 1)
    {
      v16 = [NSBundle bundleForClass:objc_opt_class()];
      v17 = @"WIFI_ON";
    }

    else
    {
      if ([pathCopy row] != &dword_0 + 2)
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
  textLabel2 = [v8 textLabel];
  [textLabel2 setText:v9];
LABEL_33:

LABEL_34:

  return v8;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  [(NPHCSDataPolicySelectionViewController *)self selectItemAtIndexPath:path];
  tableView = [(NPHCSDataPolicySelectionViewController *)self tableView];
  [tableView reloadData];
}

- (BOOL)_isMusicApp
{
  appDataUsageItem = [(NPHCSDataPolicySelectionViewController *)self appDataUsageItem];
  bundleID = [appDataUsageItem bundleID];
  v4 = [bundleID isEqualToString:@"com.apple.NanoMusic"];

  return v4;
}

- (void)_streamingSwitchFlipped:(id)flipped
{
  flippedCopy = flipped;
  v4 = nph_general_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "[NPHCSDataPolicySelectionViewController _streamingSwitchFlipped:]";
    v8 = 2112;
    v9 = flippedCopy;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "%s: %@", &v6, 0x16u);
  }

  if (![flippedCopy tag])
  {
    v5 = +[NMSGreenTeaStreamingDefaults sharedInstance];
    [v5 setGreenTeaMusicAllowCellularForStreaming:{objc_msgSend(flippedCopy, "isOn")}];
    goto LABEL_7;
  }

  if ([flippedCopy tag] == &dword_0 + 1)
  {
    v5 = +[NMSGreenTeaStreamingDefaults sharedInstance];
    [v5 setGreenTeaMusicAllowCellularForHighQualityStreaming:{objc_msgSend(flippedCopy, "isOn")}];
LABEL_7:
  }
}

- (BOOL)_isStreamingAllowedForRow:(int64_t)row
{
  if (row == 1)
  {
    v4 = +[NMSGreenTeaStreamingDefaults sharedInstance];
    greenTeaMusicAllowCellularForHighQualityStreaming = [v4 greenTeaMusicAllowCellularForHighQualityStreaming];
    goto LABEL_5;
  }

  if (!row)
  {
    v4 = +[NMSGreenTeaStreamingDefaults sharedInstance];
    greenTeaMusicAllowCellularForHighQualityStreaming = [v4 greenTeaMusicAllowCellularForStreaming];
LABEL_5:
    v6 = greenTeaMusicAllowCellularForHighQualityStreaming;

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
    rowCopy = row;
    v13 = 1024;
    v14 = v6;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "%s: %ld - %d", &v9, 0x1Cu);
  }

  return v6;
}

@end