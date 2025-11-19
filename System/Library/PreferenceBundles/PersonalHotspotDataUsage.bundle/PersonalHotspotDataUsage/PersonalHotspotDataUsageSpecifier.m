@interface PersonalHotspotDataUsageSpecifier
- (PersonalHotspotDataUsageSpecifier)initWithDeviceID:(id)a3 info:(id)a4 unknownDevicesDataUsage:(unint64_t)a5;
- (id)_iconURLForDevice:(id)a3;
- (id)dataUsageString;
- (id)enclosureColorFromUTTypeIdentifier:(id)a3;
- (id)productClassFromModel:(id)a3 utIdentifier:(id)a4;
- (unint64_t)dataUsage;
@end

@implementation PersonalHotspotDataUsageSpecifier

- (PersonalHotspotDataUsageSpecifier)initWithDeviceID:(id)a3 info:(id)a4 unknownDevicesDataUsage:(unint64_t)a5
{
  v9 = a3;
  v10 = a4;
  v11 = objc_alloc_init(NSDateFormatter);
  [v11 setDateFormat:@"yyyy-MM-dd HH:mm:ss Z"];
  v12 = [v10 objectForKeyedSubscript:kWiFiSettingDataUsageInterfacePeerDisplayNameKey];
  if (!v12)
  {
    v13 = [v10 objectForKeyedSubscript:kWiFiSettingDataUsageMACAddressessKey];
    v14 = [v13 lastObject];
    v12 = zeroPaddedMACAddress(v14);
  }

  v15 = [v10 objectForKeyedSubscript:kWiFiDataUsageInterfacePeerIDKey];
  v16 = [v15 isEqualToString:@"Others"];

  v34.receiver = self;
  v34.super_class = PersonalHotspotDataUsageSpecifier;
  v17 = [(PersonalHotspotDataUsageSpecifier *)&v34 initWithName:v12 target:0 set:0 get:0 detail:0 cell:4 edit:0];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_deviceID, a3);
    v18->_unknownDevicesDataUsage = a5;
    [(PersonalHotspotDataUsageSpecifier *)v18 setTarget:v18];
    v33 = 0;
    v19 = [NSRegularExpression regularExpressionWithPattern:@"\\d+ options:\\d+$" error:0, &v33];
    if (!v33)
    {
      [(PersonalHotspotDataUsageSpecifier *)v18 setRegex:v19];
    }

    [(PersonalHotspotDataUsageSpecifier *)v18 setProperty:&__kCFBooleanTrue forKey:PSPrioritizeValueTextDisplayKey];
    v20 = [v10 objectForKeyedSubscript:kWiFiSettingDataUsageProductMarketingNameKey];
    v21 = [v10 objectForKeyedSubscript:kWiFiSettingDataUsageDateKey];
    if (v21)
    {
      v32 = v11;
      v22 = v16;
      v23 = v19;
      v24 = v9;
      if (v20)
      {
        v25 = [NSString stringWithFormat:@"%@・", v20];
      }

      else
      {
        v25 = &stru_C668;
      }

      v26 = [NSString stringWithFormat:@"%@%@", v25, v21];

      v20 = v26;
      v9 = v24;
      v19 = v23;
      v16 = v22;
      v11 = v32;
    }

    [(PersonalHotspotDataUsageSpecifier *)v18 setProperty:objc_opt_class() forKey:PSCellClassKey];
    [(PersonalHotspotDataUsageSpecifier *)v18 setProperty:v12 forKey:PSTitleKey];
    v27 = [NSNumber numberWithDouble:UITableViewAutomaticDimension];
    [(PersonalHotspotDataUsageSpecifier *)v18 setProperty:v27 forKey:PSTableCellHeightKey];

    [(PersonalHotspotDataUsageSpecifier *)v18 setProperty:v20 forKey:PSTableCellSubtitleTextKey];
    [(PersonalHotspotDataUsageSpecifier *)v18 setProperty:&__kCFBooleanTrue forKey:PSEnabledKey];
    v28 = [(PersonalHotspotDataUsageSpecifier *)v18 dataUsageString];
    [(PersonalHotspotDataUsageSpecifier *)v18 setProperty:v28 forKey:PSValueKey];

    if ((v16 & 1) == 0)
    {
      v29 = [(PersonalHotspotDataUsageSpecifier *)v18 _iconURLForDevice:v10];
      [(PersonalHotspotDataUsageSpecifier *)v18 setProperty:v29 forKey:PSLazyIconURL];

      [(PersonalHotspotDataUsageSpecifier *)v18 setProperty:&__kCFBooleanTrue forKey:PSLazyIconLoading];
    }

    v30 = v18;
  }

  return v18;
}

- (id)_iconURLForDevice:(id)a3
{
  v4 = a3;
  v5 = [NSURL URLWithString:@"https://statici.icloud.com/fmipmobile/deviceImages-9.0"];
  v6 = [v4 objectForKeyedSubscript:kWiFiSettingDataUsageProductTypeKey];
  if (v6)
  {
    v7 = [UTType _typeWithDeviceModelCode:v6];
    v8 = [v7 identifier];
  }

  else
  {
    v8 = 0;
  }

  v9 = [(PersonalHotspotDataUsageSpecifier *)self productClassFromModel:v6 utIdentifier:v8];
  v10 = v9;
  if (v6)
  {
    v11 = v9 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    v12 = [NSURL URLWithString:@"https://appleid.cdn-apple.com/static/bin/cb2625518626/images/deviceLoading@3x.png"];
    goto LABEL_35;
  }

  v13 = [v4 objectForKeyedSubscript:kWiFiSettingDataUsageProductColorKey];
  if (v8)
  {
    v14 = [(PersonalHotspotDataUsageSpecifier *)self enclosureColorFromUTTypeIdentifier:v8];
    v15 = v14;
    if (v14)
    {
      v16 = v14;
    }

    else
    {
      if (![v13 containsString:@"unknown"])
      {
LABEL_16:

        goto LABEL_17;
      }

      v16 = 0;
    }

    v13 = v16;
    goto LABEL_16;
  }

LABEL_17:
  v17 = [v4 objectForKeyedSubscript:kWiFiDataUsageRapportPeerIDKey];
  if ([v17 isEqualToString:@"Others"])
  {
    v12 = 0;
  }

  else
  {
    v18 = +[UIScreen mainScreen];
    [v18 scale];
    v20 = v19;

    if ([(__CFString *)v6 isEqualToString:@"AudioAccessory1, 2"])
    {

      v6 = @"AudioAccessory1,1";
    }

    if ([(__CFString *)v6 isEqualToString:@"RealityDevice14, 1"])
    {
      v21 = [NSURL URLWithString:@"https://appleid.cdn-apple.com/static/deviceImages-12.0/RealityDevice/RealityDevice14, 1"];
    }

    else
    {
      v21 = [v5 URLByAppendingPathComponent:v10];

      v5 = [NSMutableString stringWithString:v6];
      if (v13)
      {
        v22 = [NSString stringWithFormat:@"-%@-0", v13];
        [v5 appendString:v22];
      }

      if (v5)
      {
        v23 = [v21 URLByAppendingPathComponent:v5];

        v21 = v23;
      }
    }

    v24 = [NSMutableString stringWithString:@"online-sourcelist"];
    if (v20 > 1.0)
    {
      v25 = [NSString stringWithFormat:@"__%lux", v20];
      [v24 appendString:v25];
    }

    [v24 appendString:@".png"];
    if (v24)
    {
      v26 = [v21 URLByAppendingPathComponent:v24];

      v21 = v26;
    }

    v27 = logger();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      sub_5954(v21, v4, v27);
    }

    v5 = v21;
    v12 = v5;
  }

LABEL_35:

  return v12;
}

- (id)enclosureColorFromUTTypeIdentifier:(id)a3
{
  v3 = a3;
  if ([v3 containsString:@"apple-tv"])
  {
    goto LABEL_2;
  }

  if ([v3 containsString:@"space-gray"])
  {
    v4 = @"spacegray";
    goto LABEL_7;
  }

  if ([v3 containsString:@"space-black"])
  {
    v4 = @"spaceblack";
    goto LABEL_7;
  }

  v6 = [v3 rangeOfString:@"-" options:4];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_2:
    v4 = 0;
    goto LABEL_7;
  }

  v7 = [v3 substringFromIndex:v6];
  v4 = [v7 stringByReplacingOccurrencesOfString:@"-" withString:&stru_C668];

  if ([(__CFString *)v4 integerValue]!= 0x7FFFFFFFFFFFFFFFLL)
  {

    goto LABEL_2;
  }

LABEL_7:

  return v4;
}

- (id)productClassFromModel:(id)a3 utIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (![v6 length] || (-[PersonalHotspotDataUsageSpecifier regex](self, "regex"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "rangeOfFirstMatchInString:options:range:", v6, 0, 0, objc_msgSend(v6, "length")), v8, v9 == 0x7FFFFFFFFFFFFFFFLL))
  {
    v10 = 0;
LABEL_4:
    v10 = v10;
    v11 = v10;
    goto LABEL_5;
  }

  v10 = [v6 substringToIndex:v9];
  if (([(__CFString *)v10 isEqualToString:@"AudioAccessory"]& 1) != 0)
  {
    v11 = @"HomePod";
  }

  else
  {
    v11 = @"iMac";
    if (([(__CFString *)v10 hasPrefix:@"iMac"]& 1) == 0)
    {
      if ([&off_CF58 containsObject:v6])
      {
        v11 = @"Vision";
      }

      else
      {
        if (!v7)
        {
          goto LABEL_4;
        }

        if ([v7 containsString:@"macbookpro"])
        {
          v11 = @"MacBookPro";
        }

        else if ([v7 containsString:@"macbookair"])
        {
          v11 = @"MacBookAir";
        }

        else if ([v7 containsString:@"macbook"])
        {
          v11 = @"MacBook";
        }

        else if (([v7 containsString:@"imac"] & 1) == 0)
        {
          if ([v7 containsString:@"macmini"])
          {
            v11 = @"Macmini";
          }

          else if ([v7 containsString:@"macpro"])
          {
            v11 = @"MacPro";
          }

          else
          {
            if (([v7 containsString:@"macstudio"] & 1) == 0)
            {
              goto LABEL_4;
            }

            v11 = @"MacStudio";
          }
        }
      }
    }
  }

LABEL_5:

  return v11;
}

- (unint64_t)dataUsage
{
  v3 = +[PersonalHotspotDataUsageCache sharedInstance];
  v4 = [v3 usageForHotspotClientID:self->_deviceID inPeriod:0];
  v5 = [(PersonalHotspotDataUsageSpecifier *)self unknownDevicesDataUsage];

  return v4 + v5;
}

- (id)dataUsageString
{
  v2 = [(PersonalHotspotDataUsageSpecifier *)self dataUsage];
  if (v2)
  {
    v3 = usageSizeString(v2);
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = &stru_C668;
  }

  v5 = v4;

  return v4;
}

@end